/******************************************************************************
 * @file    timer.c
 * @author  Gatis Fridenbergs
 * @brief   Timer driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include <timer.h>

/**
 * @brief   Initialize Timer0
 * @retval  
 * @note    
 * 
 * @param[in] 
 * @param[in] 
*/
void timer0_init(void)
{
    // /*Array with percentages*/
    // dutyCyclePercentages[BUFFER_SIZE] = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};

    // /*Globally declared link descriptor*/
    // LDMA_Descriptor_t   descLink;
    
    // /*Enable clock for the timer*/
    // CMU_ClockEnable(cmuClock_TIMER0, true);

    // /*Define struct for the timer with default values*/
    // TIMER_Init_TypeDef tim = TIMER_INIT_DEFAULT;
    // TIMER_InitCC_TypeDef timCC = TIMER_INITCC_DEFAULT;

    // /*After initialization do not start the timer*/
    // tim.enable = false;

    // /*PWM mode sets/clears the output on compare/overflow events*/
    // timCC.mode = timerCCModePWM;

    // /*Initialize actual timer*/
    // TIMER_Init(TIMER0, &myTimer);

    // /*Route CC0 output to mA1, mA2, mB1, mB2*/
    // GPIO->TIMERROUTE[0].ROUTEEN = GPIO_TIMER_ROUTEEN_CC0PEN




    /*Set the timer frequency*/
    
}
