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
 * @retval  None
 * @note    LEDR - PA05, LEDG - PA04, LEDB - PB00
 * 
 * @param[in] color Colour of the LED
 * @param[in] state State of the LED
*/
void led_turn_on(int color)
{
    if (color == 0)
    {
        GPIO_PinModeSet(gpioPortB, color, gpioModePushPull, 0);
    }
    else 
    {
        GPIO_PinModeSet(gpioPortA, color, gpioModePushPull, 0);
    }
}

void led_turn_off(void)
{
    if (GPIO_PinInGet(gpioPortB, BLUE))
    {
        GPIO_PinModeSet(gpioPortB, BLUE, gpioModePushPull, 1);
    }
    else if (GPIO_PinInGet(gpioPortA, GREEN))
    {
        GPIO_PinModeSet(gpioPortA, GREEN, gpioModePushPull, 1);
    }
    else if (GPIO_PinInGet(gpioPortA, RED))
    {
        GPIO_PinModeSet(gpioPortA, RED, gpioModePushPull, 1);
    }
}
