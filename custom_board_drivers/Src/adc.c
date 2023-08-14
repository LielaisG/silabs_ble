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
#include "stepper.h"

/******************************************************************************
 * Data types
 *****************************************************************************/
IADC_Result_t tmp, sample;
double temp, sensedCurrent;
int count;

/******************************************************************************
 * Extern
 *****************************************************************************/
extern bool direction;
extern int currentStep;

/******************************************************************************
 * Private Function Prototypes
 *****************************************************************************/
/**
 * @fn      void iadc_init(void)
 * @brief   Initialize IADC
 * @param   none
 * @return  None
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
    IADC_reset(IADC0);

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
 * @fn      double IADCAverageConversion(uint32_t)
 * @brief   Take several sequential samples and average the measurement
 *
 * @param   numSamples
 * @return  average
 */
double calcAvgADCValue(int32_t numSamples)
{
    double average;

    for(int i = 0; i < numSamples; i++)
    {
        average += (int32_t) iadc_start_diff_conv().data;
    }
    average /= NUM_SAMPLES;

    return average;
}

/**
 * @fn      void IADCRescale(uint32_t)
 * @brief   Re-scale ADC
 *
 * @param   newScale
 * @return  None
 */
void setADCScale(uint32_t newScale)
{
    // Disable the IADC
    IADC0->EN_CLR = IADC_EN_EN;

    // Wait for IADC to disable
    while((IADC0->EN & _IADC_EN_DISABLING_MASK) == IADC_EN_DISABLING);

    // Configure new scale settings
    IADC0->CFG[0].SCALE = newScale;

    // Enable IADC
    IADC0->EN_SET = IADC_EN_EN;
}

/**
 * @fn      void calibrateADC(void)
 * @brief   Calibrate ADC
 * @param   none
 * @return  None
 */
void calibrateADC(void)
{
    double calGain13lsb,
            resultFull,
            resultZero,
            resultOffset,
            gainCorrFactor,
            IADC_GAIN13LSB_LSB = 0.25 / 8192; // LSB Gain multiplication factor
    uint32_t scale, IADC_CALIBRATED_GAIN13LSB;
    int32_t IADC_CALIBRATED_OFFSET;

    /*Set initial offset to maximum negative and initial gain to 1.0*/
    scale = IADC_SCALE_GAIN3MSB_GAIN100 | IADC_SCALE_GAIN13LSB_DEFAULT | IADC_SCALE_OFFSET_MAX_NEG;

    /*Set ADC scale*/
    setADCScale(scale);

    /*Start stepper motor*/
    stepperStart();

    /*Do conversions and average to reduce system-level noise*/
    resultFull = calcAvgADCValue(NUM_SAMPLES);

    /*Stop stepper motor*/
    stepperStop();

    /*Do conversions and average to reduce system-level noise*/
    resultZero = calcAvgADCValue(NUM_SAMPLES);

    /**
     * Calculate gain correction factor.
     * In bipolar mode, expected positive full-scale is (2^11) - 1 = 2047
     */
    gainCorrFactor = 2047 / (resultFull - resultZero);

    /**
     * Set IADC correction gain and clear offset in order to calibrate offset
     * 3 MSB of gain represented by 1 bit;
     * 1 => 100 representing 1.00x to 1.2499x,
     * 0 => 011 representing 0.75x to .9999x
     */
    if (gainCorrFactor >= 1.0)
    {
        calGain13lsb = (gainCorrFactor - 1.0) / IADC_GAIN13LSB_LSB;
        IADC_CALIBRATED_GAIN13LSB = (uint32_t) (calGain13lsb + 0.5); // round
        scale = IADC_SCALE_GAIN3MSB_GAIN100 | (IADC_CALIBRATED_GAIN13LSB << _IADC_SCALE_GAIN13LSB_SHIFT) | IADC_SCALE_OFFSET_ZERO;
    }
    else
    {
        calGain13lsb = (gainCorrFactor - 0.75) / IADC_GAIN13LSB_LSB;
        IADC_CALIBRATED_GAIN13LSB = (uint32_t) (calGain13lsb + 0.5); // round
        scale = IADC_SCALE_GAIN3MSB_GAIN011 | (IADC_CALIBRATED_GAIN13LSB << _IADC_SCALE_GAIN13LSB_SHIFT) | IADC_SCALE_OFFSET_ZERO;
    }

    /*Set ADC scale*/
    setADCScale(scale);

    /**
     * Do conversions and calculate offset. OFFSET is encoded as a 2's complement,
     * 18-bit number with the LSB representing 1 / (2^20) of full scale.
     */
    resultOffset = calcAvgADCValue(NUM_SAMPLES);
    IADC_CALIBRATED_OFFSET = (int32_t) (resultOffset * -256);

    /*Boundary check*/
    if (IADC_CALIBRATED_OFFSET > 131071) IADC_CALIBRATED_OFFSET = 131071;
    if (IADC_CALIBRATED_OFFSET < -131072) IADC_CALIBRATED_OFFSET = -131072;

    /*Maintain previous gain correction. Apply offset correction*/
    if(gainCorrFactor >= 1.0)
    {
        scale = IADC_SCALE_GAIN3MSB_GAIN100 |
                (IADC_CALIBRATED_GAIN13LSB << _IADC_SCALE_GAIN13LSB_SHIFT) |
                (IADC_CALIBRATED_OFFSET & _IADC_SCALE_OFFSET_MASK);
    }
    else
    {
        scale = IADC_SCALE_GAIN3MSB_GAIN011 | (IADC_CALIBRATED_GAIN13LSB << _IADC_SCALE_GAIN13LSB_SHIFT)
                  | (IADC_CALIBRATED_OFFSET & _IADC_SCALE_OFFSET_MASK);
    }

    /*Set ADC scale*/
    setADCScale(scale);
}

/**
 * @fn      IADC_Result_t iadc_start_diff_conv(void)
 * @brief   Start differential conversions
 * @return  sample
 * @param   None
 */
IADC_Result_t iadc_start_diff_conv(void)
{
    /*Start IADC conversion*/
    IADC_command(IADC0, iadcCmdStartSingle);

    /*Wait for conversion to be complete*/
    while((IADC0->STATUS & (_IADC_STATUS_CONVERTING_MASK
          | _IADC_STATUS_SINGLEFIFODV_MASK)) != IADC_STATUS_SINGLEFIFODV); //while status bits 8 & 6 don't equal 1 and 0 respectively

    /*Get ADC result*/
    sample = IADC_pullSingleFifoResult(IADC0);

    return sample;
}

/**
 * @fn      void senseCurrent(void)
 * @brief   Calculate current on sense resistor
 * @return  None
 * @param   None
 */
void calculateCurrent(void)
{
  if ((direction == true) && (currentStep >= 100) && (currentStep <= 900))
  {
      /*Increment counter*/
      count++;

      /*Calculate average raw value*/
      temp += (int32_t) iadc_start_diff_conv().data;

      // Calculate input voltage:
      //  For differential inputs, the resultant range is from -Vref to +Vref, i.e.,
      //  (Vref * 2)/GAIN - full scale IADC range represented by 12 bits.
      sensedCurrent = (((temp / count) * ((1.21*2) / 4)) / 0xFFF) / 0.1;
  }
  else
  {
      count = 0;
      temp = 0;
      sensedCurrent = 0;
  }
}
