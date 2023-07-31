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

/*******************************************************************************
 *******************************   DEFINES   ***********************************
 ******************************************************************************/
#define NSLEEP_PORT     gpioPortA   /*Port A*/
#define NSLEEP_PIN      9           /*nSLEEP pin*/
#define MA_PORT         gpioPortC   /*Port C*/
#define MA1_PIN         0           /*mA1 pin*/
#define MA2_PIN         1           /*mA2 pin*/
#define MB1_PIN         2           /*mB1 pin*/
#define MB2_PIN         3           /*mB2 pin*/
#define STEPPER_STEPS   2048        /*The number of full steps required to rotate the motor by 360 degrees*/
#define STEPPER_FREQ    200         /*Stepper frquency in Hz*/
#define NUM_COILS       4           /*Number of motor coils*/
#define CW              1           /*Forward*/
#define CCW             0           /*Reverse*/

/*******************************************************************************
 ******************************   TYPEDEFS   ***********************************
 ******************************************************************************/
GPIO_Port_TypeDef coilPorts[NUM_COILS] = {
    MA_PORT,
    MA_PORT,
    MA_PORT,
    MA_PORT
};

/*******************************************************************************
 *****************************   PROTOTYPES   **********************************
 ******************************************************************************/
void timer0_init(void);
void stepper_enable(void);
void stepper_disable(void);

#endif /* CUSTOM_BOARD_DRIVERS_STEPPER_H_ */