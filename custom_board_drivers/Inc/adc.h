/******************************************************************************
 * @file    adc.h
 * @brief   Header file for ADC driver module
 *
 * @author  Gatis Fridenbergs
 *          https://github.com/LielaisG
 *          fridenbergs.gatis@gmail.com
 * Created on:  August 10, 2023
 *
 * @note
 * @todo
 *****************************************************************************/

/******************************************************************************
 * Multiple include protection
 *****************************************************************************/
#ifndef CUSTOM_BOARD_DRIVERS_ADC_H_
#define CUSTOM_BOARD_DRIVERS_ADC_H_

/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "app.h"

/*******************************************************************************
 * Macros
 ******************************************************************************/
#define CLK_SRC_ADC_FREQ            20000000
#define CLK_ADC_FREQ                2500000                     // 2.5MHz max for 4x gain
#define IADC_INPUT_0_PORT_PIN       iadcPosInputPortAPin8       //PA08 - OA_IN_N
#define IADC_INPUT_0_BUS            ABUSALLOC                   //A Bus allocation
#define IADC_INPUT_0_BUSALLOC       GPIO_ABUSALLOC_AEVEN0_ADC0  //Mode ADC0 for GPIO_ABUSALLOC
#define IADC_INPUT_1_PORT_PIN       iadcNegInputPortAPin7       //PA07 - OA_IN_P
#define IADC_INPUT_1_BUS            ABUSALLOC                   //A Bus allocation
#define IADC_INPUT_1_BUSALLOC       GPIO_ABUSALLOC_AODD0_ADC0   //Shifted mode ADC0 for GPIO_ABUSALLOC
#define NUM_SAMPLES                 1024                        //Sample count
#define IADC_SCALE_OFFSET_MAX_NEG   0x00020000UL                // 18-bit 2's compliment
#define IADC_SCALE_OFFSET_ZERO      0x00000000UL

/*******************************************************************************
 * Local variables
 ******************************************************************************/
static volatile IADC_Result_t       sample;
static volatile IADC_Result_t       highestReading;
static volatile double              singleResult;

/*******************************************************************************
 * Functions
 ******************************************************************************/
double IADCAverageConversion(uint32_t numSamples);
void IADCRescale(uint32_t newScale);
void iadc_diff_init(void);
IADC_Result_t iadc_start_diff_conv(void);

/*******************************************************************************
 * END
 ******************************************************************************/
#endif /* CUSTOM_BOARD_DRIVERS_ADC_H_ */
