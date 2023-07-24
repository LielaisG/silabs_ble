/******************************************************************************
 * @file    adc.h
 * @author  Gatis Fridenbergs
 * @brief   Header file for ADC driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#ifndef CUSTOM_BOARD_DRIVERS_ADC_H_
#define CUSTOM_BOARD_DRIVERS_ADC_H_

#include "app.h"

/**
 * @defgroup    Defines for ADC configuration
 * @{
*/
#define CLK_SRC_ADC_FREQ            20000000                    // CLK_SRC_ADC
#define CLK_ADC_FREQ                5000000                     // CLK_ADC - 5MHz max for analog gain of 2x
/*ADC Input 0*/
#define IADC_INPUT_0_PORT_PIN       iadcPosInputPortAPin7       //PA07 - OA_IN_P
#define IADC_INPUT_0_BUS            ABUSALLOC                   //A Bus allocation 
#define IADC_INPUT_0_BUSALLOC       GPIO_ABUSALLOC_AEVEN0_ADC0  //Mode ADC0 for GPIO_ABUSALLOC
/*ADC Input 1*/
#define IADC_INPUT_1_PORT_PIN       iadcNegInputPortAPin8       //PA08 - OA_IN_N
#define IADC_INPUT_1_BUS            ABUSALLOC                   //A Bus allocation 
#define IADC_INPUT_1_BUSALLOC       GPIO_ABUSALLOC_AODD0_ADC0   //Shifted mode ADC0 for GPIO_ABUSALLOC
/**
 * @}
*/

/**
 * @defgroup Global variables
 * @{
*/
static volatile int32_t     sample;
static volatile double      singleResult; // Volts
/**
 * @}
*/

/**
 * @defgroup Function declarations
 * @{
*/
void iadc_init(void);
void iadc_start_conv(void);
/**
 * @}
*/

#endif /* CUSTOM_BOARD_DRIVERS_ADC_H_ */