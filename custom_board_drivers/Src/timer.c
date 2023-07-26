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

#include "timer.h"

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
    
    




    /*Define struct for the timer with default values*/
    TIMER_Init_TypeDef myTimer = TIMER_INIT_DEFAULT;

    /*After initialization do not start the timer*/
    myTimer.enable = false;

    /*Enable clock for the timer*/
    CMU_ClockEnable(cmuClock_TIMER0, true);

    /*Initialize actual timer*/
    TIMER_Init(TIMER0, &myTimer);

    /*Set the timer frequency*/
    
}