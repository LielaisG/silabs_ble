/******************************************************************************
 * @file    led.c
 * @author  Gatis Fridenbergs
 * @brief   LED driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include "led.h"
#include "em_gpio.h"

/**
 * @brief   Function to turn onboard LED on/off 
 * 
 * @retval  None
 * 
 * @param[in] color Colour of the LED
 * @param[in] state State of the LED
*/
void LED(int color, int state)
{
    GPIO_PinModeSet(gpioPortA, color, gpioModePushPull, state);
}