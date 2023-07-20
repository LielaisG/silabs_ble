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
#define ON      0   /*Source to GND*/
#define OFF     1   /*No source to GND*/
/**
 * @}
*/

/**
 * @defgroup Function declarations
 * @{
*/
void LED(int color, int state);
/**
 * @}
*/

#endif /* CUSTOM_BOARD_DRIVERS_LED_H_ */
