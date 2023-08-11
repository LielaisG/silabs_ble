/******************************************************************************
 * @file    adc.c
 * @brief   ADC driver module
 *
 * @author  Gatis Fridenbergs
 *          https://github.com/LielaisG
 *          fridenbergs.gatis@gmail.com
 * Created on:  August 10, 2023
 *
 * @note
 * @todo
 *****************************************************************************/

/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "adc.h"

/******************************************************************************
 * Data types
 *****************************************************************************/


/******************************************************************************
 * Extern
 *****************************************************************************/


/******************************************************************************
 * Private Function Prototypes
 *****************************************************************************/
/**
 * @fn      double IADCAverageConversion(uint32_t numSamples)
 * @brief   Calculate average ADC value
 * @retval  average
 * @param   numSamples
 */
double IADCAverageConversion(uint32_t numSamples)
{
    int i;
    double average;
    IADC_Result_t sample;
    average = 0;

    for(i = 0; i < (int)numSamples; i++)
    {
      // Start IADC conversion
      IADC_command(IADC0, iadcCmdStartSingle);

      // Wait for conversion to be complete
      while((IADC0->STATUS & (_IADC_STATUS_CONVERTING_MASK
                  | _IADC_STATUS_SINGLEFIFODV_MASK)) != IADC_STATUS_SINGLEFIFODV); //while combined status bits 8 & 6 don't equal 1 and 0 respectively

      // Get ADC result
      sample = IADC_pullSingleFifoResult(IADC0);
      average += (int32_t) sample.data;
    }
    average /= NUM_SAMPLES;

    return average;
}

/**
 * @fn      void IADCRescale(uint32_t newScale)
 * @brief   Congigure ADC scale
 * @retval  None
 * @param   newScale
 */
void IADCRescale(uint32_t newScale)
{
    // Disable the IADC
    IADC0->EN_CLR = IADC_EN_EN;

    // wait for IADC to disable
    while((IADC0->EN & _IADC_EN_DISABLING_MASK) == IADC_EN_DISABLING);

    // configure new scale settings
    IADC0->CFG[0].SCALE = newScale;

    // Re-enable IADC
    IADC0->EN_SET = IADC_EN_EN;
}

/**
 * @fn      void iadc_init(void)
 * @brief   Initialize IADC in differential mode
 * @retval  None
 * @param   None
 */
void iadc_diff_init(void)
{
    /*Declare init structs for the IADC with default values*/
    IADC_Init_t init_iadc = IADC_INIT_DEFAULT;                      /** IADC init structure, common for single conversion and scan sequence. */
    IADC_AllConfigs_t initAllConfigs = IADC_ALLCONFIGS_DEFAULT;     /** Structure for all IADC configs. */
    IADC_InitSingle_t initSingle = IADC_INITSINGLE_DEFAULT;         /** IADC single init structure */
    IADC_SingleInput_t initSingleInput = IADC_SINGLEINPUT_DEFAULT;  /** IADC single input selection structure */

    /*Enable IADC and GPIO clocks*/
    CMU_ClockEnable(cmuClock_IADC0, true);

    /*Reset IADC configuration in case it has been modified earlier*/
    //IADC_reset(IADC0);

    /*Set FSRCO as IADC clock*/
    CMU_ClockSelectSet(cmuClock_IADCCLK, cmuSelect_FSRCO);          /** FSRCO = 20MHz*/

    /*Modify init struct and initialize*/
    init_iadc.warmup = iadcWarmupKeepWarm;                          /** ADC and reference selected for scan mode kept warmup, allowing continuous conversion. */

    /*Set source clock (HFSCLK) divider (prescale+1) which will be used if the calculated prescaler value is less*/
    init_iadc.srcClkPrescale = IADC_calcSrcClkPrescale(IADC0, CLK_SRC_ADC_FREQ, 0);

    /*Configure IADC. Configuration 0 is used by both scan and single conversions by default*/
    initAllConfigs.configs[0].reference = iadcCfgReferenceInt1V2;     /** Internal 1.2V Band Gap Reference (buffered) to ground */
    initAllConfigs.configs[0].vRef = 1210;                          /** Vref magnitude expressed in millivolts */
    initAllConfigs.configs[0].analogGain = iadcCfgAnalogGain4x;     /** Analog gain of 4x */

    /*Set the CLK_ADC frequency dividing CLK_SRC_ADC*/
    initAllConfigs.configs[0].adcClkPrescale = IADC_calcAdcClkPrescale(IADC0,                       /*IADC instance*/
                                                                       CLK_ADC_FREQ,                /*Desired ADC clock*/
                                                                       0,                           /*Use current CLK_CMU_ADC frequency*/
                                                                       iadcCfgModeNormal,           /*Mode NORMAL for IADC_CFG*/
                                                                       init_iadc.srcClkPrescale);   /*Use source clock divider we set earlier*/

    /*Force IADC to use bipolar inputs for conversion*/
    initAllConfigs.configs[0].twosComplement = iadcCfgTwosCompBipolar;

    /*Assign pins to positive and negative inputs in differential mode*/
    initSingleInput.posInput   = IADC_INPUT_0_PORT_PIN;     /*PA08*/
    initSingleInput.negInput   = IADC_INPUT_1_PORT_PIN;     /*PA07*/

    /*Initialize the IADC with configured settings*/
    IADC_init(IADC0, &init_iadc, &initAllConfigs);

    /*Initialize the Single conversion inputs*/
    IADC_initSingle(IADC0, &initSingle, &initSingleInput);

    /*Allocate the analog bus for ADC0 inputs*/
    GPIO->IADC_INPUT_0_BUS |= IADC_INPUT_0_BUSALLOC;
    GPIO->IADC_INPUT_1_BUS |= IADC_INPUT_1_BUSALLOC;
}

/**
 * @fn      void iadc_start_conv(void)
 * @brief   Start ADC conversion
 * @retval  None
 * @param   None
 */
IADC_Result_t iadc_start_diff_conv(void)
{
    IADC_Result_t sample;

    /*Start IADC conversion*/
    IADC_command(IADC0, iadcCmdStartSingle);

    /*Wait for conversion to be complete*/
    while((IADC0->STATUS & (_IADC_STATUS_CONVERTING_MASK
          | _IADC_STATUS_SINGLEFIFODV_MASK)) != IADC_STATUS_SINGLEFIFODV); //while status bits 8 & 6 don't equal 1 and 0 respectively

    /*Get ADC result*/
    sample = IADC_pullSingleFifoResult(IADC0);

    return sample;
}
