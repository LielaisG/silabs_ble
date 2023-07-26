/******************************************************************************
 * @file    gpio.c
 * @author  Gatis Fridenbergs
 * @brief   GPIO driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include "gpio.h"

/**
 * @brief   Initialize GPIOs as Push-Pull
 * @retval  None
*/
void initAllGPIOs(void)
{
    /*Enable GPIO clock*/
    CMU_ClockEnable(cmuClock_GPIO, true);

    /*LED pins*/
    GPIO_PinModeSet(gpioPortA, 5, gpioModePushPull, 0);     /*RED pin*/
    GPIO_PinModeSet(gpioPortA, 4, gpioModePushPull, 0);     /*GREEN pin*/
    GPIO_PinModeSet(gpioPortB, 0, gpioModePushPull, 0);     /*BLUE pin*/

    /*Motor driver pins*/
    GPIO_PinModeSet(gpioPortA, 9, gpioModePushPull, 0);     /*mSLEEP pin*/
    GPIO_PinModeSet(gpioPortC, 0, gpioModePushPull, 0);     /*mA1 pin*/
    GPIO_PinModeSet(gpioPortC, 1, gpioModePushPull, 0);     /*mA2 pin*/
    GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 0);     /*mB1 pin*/
    GPIO_PinModeSet(gpioPortC, 3, gpioModePushPull, 0);     /*mB2 pin*/
}

/**
 * @brief   Turn onboard LED on 
 * @retval  None
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

/**
 * @brief   Turn onboard LEDs off 
 * @retval  None
*/
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

/**
 * @brief   Enable H-Bridge driver
 * @retval  None
*/
void bridge_enable(void)
{
    GPIO_PinModeSet(gpioPortA, 9, gpioModePushPull, 1);
}

/**
 * @brief   Disable H-Bridge driver
 * @retval  None
*/
void bridge_disable(void)
{
    GPIO_PinModeSet(gpioPortA, 9, gpioModePushPull, 0);
}