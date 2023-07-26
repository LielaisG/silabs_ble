/******************************************************************************
 * @file    timer.h
 * @author  Gatis Fridenbergs
 * @brief   Header file for timer driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#ifndef CUSTOM_BOARD_DRIVERS_TIMER_H_
#define CUSTOM_BOARD_DRIVERS_TIMER_H_

#include "app.h"

/**
 * @defgroup Defines for timer configuration
 * @{
*/
#define PWM_FREQ        1000
#define BUFFER_SIZE     11
/**
 * @}
*/

/**
 * @defgroup Global variables
 * @{
*/
// static uint32_t         buffer[BUFFER_SIZE];
// static const uint32_t   dutyCyclePercentages[BUFFER_SIZE];
// uint32_t                timerFreq, topValue;
/**
 * @}
*/

/**
 * @defgroup Prototypes
 * @{
*/
void timer0_init(void);
/**
 * @}
*/

#endif /* CUSTOM_BOARD_DRIVERS_TIMEr_H_ */
