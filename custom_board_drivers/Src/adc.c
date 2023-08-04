/******************************************************************************
 * @file    adc.c
 * @author  Gatis Fridenbergs
 * @brief   ADC driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include "adc.h"

/**
 * @fn      void iadc_init(void)
 * @brief   Initialize IADC
 */
void iadc_init(void)
{
    /*Declare init structs for the IADC with default values*/
    IADC_Init_t init_iadc = IADC_INIT_DEFAULT;                      /** IADC init structure, common for single conversion and scan sequence. */
    IADC_AllConfigs_t initAllConfigs = IADC_ALLCONFIGS_DEFAULT;     /** Structure for all IADC configs. */
    IADC_InitSingle_t initSingle = IADC_INITSINGLE_DEFAULT;         /** IADC single init structure */
    IADC_SingleInput_t initSingleInput = IADC_SINGLEINPUT_DEFAULT;  /** IADC single input selection structure */

    /*Enable IADC and GPIO clocks*/
    CMU_ClockEnable(cmuClock_IADC0, true);

    /*Reset IADC configuration in case it has been modified earlier*/
    IADC_reset(IADC0);

    /*Set FSRCO as IADC clock*/
    CMU_ClockSelectSet(cmuClock_IADCCLK, cmuSelect_FSRCO);          /** FSRCO = 20MHz*/

    /*Modify init struct and initialize*/
    init_iadc.warmup = iadcWarmupKeepWarm;                          /** ADC and reference selected for scan mode kept warmup, allowing continuous conversion. */

    /*Set source clock (HFSCLK) divider (prescale+1) which will be used if the calculated prescaler value is less*/
    init_iadc.srcClkPrescale = IADC_calcSrcClkPrescale(IADC0, CLK_SRC_ADC_FREQ, 0);

    /*Configure IADC. Configuration 0 is used by both scan and single conversions by default*/
    /**
     * @note Full-scale reading should occur at 1.25 V / 2 = 0.625 V
    */
    initAllConfigs.configs[0].reference = iadcCfgReferenceInt1V2;   /** Internal 1.2V Band Gap Reference (buffered) to ground */
    initAllConfigs.configs[0].vRef = 1210;                          /** Vref magnitude expressed in millivolts */
    initAllConfigs.configs[0].analogGain = iadcCfgAnalogGain4x;     /** Analog gain of 4x */

    /*Set the CLK_ADC frequency dividing CLK_SRC_ADC*/
    initAllConfigs.configs[0].adcClkPrescale = IADC_calcAdcClkPrescale(IADC0,                       /*IADC instance*/
                                                                       CLK_ADC_FREQ,                /*Desired ADC clock*/
                                                                       0,                           /*Use current CLK_CMU_ADC frequency*/
                                                                       iadcCfgModeNormal,           /*Mode NORMAL for IADC_CFG*/
                                                                       init_iadc.srcClkPrescale);   /*Use source clock divider we set earlier*/

    /*Assign pins to positive and negative inputs in differential mode*/
    initSingleInput.posInput   = IADC_INPUT_0_PORT_PIN;     /*PA07*/
    initSingleInput.negInput   = IADC_INPUT_1_PORT_PIN;     /*PA08*/

    /*Initialize the IADC with configured settings*/
    IADC_init(IADC0, &init_iadc, &initAllConfigs);

    /*Initialize the Single conversion inputs*/
    IADC_initSingle(IADC0, &initSingle, &initSingleInput);

    /*Allocate the analog bus for ADC0 inputs*/
    GPIO->IADC_INPUT_0_BUS |= IADC_INPUT_0_BUSALLOC;
    GPIO->IADC_INPUT_1_BUS |= IADC_INPUT_1_BUSALLOC;
}

/**
 * @brief   Function to start IADC conversions
 * @retval  None
*/
void iadc_start_conv(void)
{
    /*Start IADC conversion*/
    IADC_command(IADC0, iadcCmdStartSingle);

    /*Wait for conversion to be complete*/
    while((IADC0->STATUS & (_IADC_STATUS_CONVERTING_MASK
                | _IADC_STATUS_SINGLEFIFODV_MASK)) != IADC_STATUS_SINGLEFIFODV); //while status bits 8 & 6 don't equal 1 and 0 respectively

    /*Get ADC result*/
    sample = IADC_pullSingleFifoResult(IADC0).data;
    if (sample > highestSample)
      {
        highestSample = sample;

        /*Calculate input voltage*/
        senseVoltage = (highestSample * 0.3125) / 0xFFF;

        /*Calculate input current*/
        senseCurrent = senseVoltage / 0.1;
      }
}
