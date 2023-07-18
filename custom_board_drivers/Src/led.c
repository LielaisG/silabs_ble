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
    if (color == 0)
    {
        GPIO_PinModeSet(gpioPortB, color, gpioModePushPull, state);
    }
    else 
    {
        GPIO_PinModeSet(gpioPortA, color, gpioModePushPull, state);
    }
}