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

#ifndef CUSTOM_BOARD_DRIVERS_GPIO_H_
#define CUSTOM_BOARD_DRIVERS_GPIO_H_

#include "app.h"

/**
 * @defgroup    Defines for GPIO configuration
 * @{
*/
#define RED     5   /*LED red pin*/
#define GREEN   4   /*LED green pin*/
#define BLUE    0   /*LED blue pin*/
/**
 * @}
*/

/**
 * @defgroup Global variables
 * @{
*/

/**
 * @}
*/

/**
 * @defgroup Prototypes
 * @{
*/
void initAllGPIOs(void);
void led_turn_on(int color);
void led_turn_off(void);
void bridge_enable(void);
void bridge_disable(void);
/**
 * @}
*/

#endif /* CUSTOM_BOARD_DRIVERS_GPIO_H_ */