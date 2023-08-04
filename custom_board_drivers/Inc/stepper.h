/******************************************************************************
 * @file    stepper.h
 * @author  Gatis Fridenbergs
 * @brief   Header file for stepper motor driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#ifndef CUSTOM_BOARD_DRIVERS_STEPPER_H_
#define CUSTOM_BOARD_DRIVERS_STEPPER_H_

#include "app.h"

#define TIMER0_FREQUENCY      500         /*In Hz*/
#define NSLEEP_PORT           gpioPortA   /*Port A*/
#define NSLEEP_PIN            9           /*nSLEEP pin*/
#define M_PORT                gpioPortC   /*Port C*/
#define MA1_PIN               0           /*mA1 pin*/
#define MA2_PIN               1           /*mA2 pin*/
#define MB1_PIN               2           /*mB1 pin*/
#define MB2_PIN               3           /*mB2 pin*/
#define FULL_ROTATION_STEPS   2048        /*Total step count*/
#define COIL_CNT              4           /*Bipolar, 4 pins*/
#define ANGLE_PER_TRIGGER     180         /*90 degrees*/

void init_timer0(void);
void enable_timer0(void);
void disable_timer0(void);
void TIMER0_IRQHandler(void);
int calculateSteps(int angle);
void turn_coil_on(GPIO_Port_TypeDef gpioPort, int pin);
void turn_coil_off(GPIO_Port_TypeDef gpioPort, int pin);
void stepper_output(int coil);

#endif /* CUSTOM_BOARD_DRIVERS_STEPPER_H_ */
