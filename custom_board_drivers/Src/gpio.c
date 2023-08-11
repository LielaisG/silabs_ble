/******************************************************************************
 * @file    gpio.c
 * @brief   GPIO driver module
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
#include "gpio.h"

/******************************************************************************
 * Data types
 *****************************************************************************/


/******************************************************************************
 * Extern
 *****************************************************************************/


/******************************************************************************
 * Private Function Prototypes
 *****************************************************************************/
/**
 * @fn      void GPIO_init(void)
 * @brief   Initialize GPIOs as Push-Pull
 * @retval  None
 * @param   None
 */
void GPIO_init(void)
{
    /*Enable GPIO clock*/
    CMU_ClockEnable(cmuClock_GPIO, true);

    /*LED pins*/
    GPIO_PinModeSet(gpioPortA, 5, gpioModePushPull, 1);     /*RED pin*/
    GPIO_PinModeSet(gpioPortA, 4, gpioModePushPull, 1);     /*GREEN pin*/
    GPIO_PinModeSet(gpioPortB, 0, gpioModePushPull, 1);     /*BLUE pin*/

    /*Stepper pins*/
    GPIO_PinModeSet(gpioPortA, 9, gpioModePushPull, 0);     /*mSLEEP pin*/
    GPIO_PinModeSet(gpioPortC, 0, gpioModePushPull, 0);     /*mA1 pin*/
    GPIO_PinModeSet(gpioPortC, 1, gpioModePushPull, 0);     /*mA2 pin*/
    GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 0);     /*mB1 pin*/
    GPIO_PinModeSet(gpioPortC, 3, gpioModePushPull, 0);     /*mB2 pin*/
}

/**
 * @fn      void led_turn_on(int color)
 * @brief   Turn on-board LED on
 * @retval  None
 * @param[in] color of the LED
*/
void led_turn_on(int color)
{
    if (color == 0)
    {
        GPIO_PinOutClear(gpioPortB, color);/*BLUE*/
    }
    else
    {
        GPIO_PinOutClear(gpioPortA, color);/*GREEN & RED*/
    }
}

/**
 * @fn      void led_turn_off(void)
 * @brief   Turn off the LED
 * @retval  None
 * @param   None
 */
void led_turn_off(void)
{
  GPIO_PinModeSet(gpioPortB, BLUE, gpioModePushPull, 1);
  GPIO_PinModeSet(gpioPortA, GREEN, gpioModePushPull, 1);
  GPIO_PinModeSet(gpioPortA, RED, gpioModePushPull, 1);
}
