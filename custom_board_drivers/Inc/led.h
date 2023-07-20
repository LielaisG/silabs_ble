/******************************************************************************
 * @file    led.h
 * @author  Gatis Fridenbergs
 * @brief   Header file for LED driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#ifndef CUSTOM_BOARD_DRIVERS_LED_H_
#define CUSTOM_BOARD_DRIVERS_LED_H_

#include "app.h"

/**
 * @defgroup LED configuration parameters
 * @{
*/
#define RED     5   /*LED red pin*/
#define GREEN   4   /*LED green pin*/
#define BLUE    0   /*LED blue pin*/
/**
 * @}
*/

/**
 * @defgroup Function declarations
 * @{
*/
void led_turn_on(int color);
void led_turn_off(void);
/**
 * @}
*/

#endif /* CUSTOM_BOARD_DRIVERS_LED_H_ */
