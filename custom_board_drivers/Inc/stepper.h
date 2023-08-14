/******************************************************************************
 * @file    stepper.h
 * @brief   Header file for stepper motor driver module
 *
 * @author  Gatis Fridenbergs
 *          https://github.com/LielaisG
 *          fridenbergs.gatis@gmail.com
 * Created on:  August 10, 2023
 *
 * @note
 * @todo
 *****************************************************************************/

/******************************************************************************
 * Multiple include protection
 *****************************************************************************/
#ifndef CUSTOM_BOARD_DRIVERS_STEPPER_H_
#define CUSTOM_BOARD_DRIVERS_STEPPER_H_

/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "app.h"
#include "gpio.h"

/*******************************************************************************
 * Macros
 ******************************************************************************/
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
#define ANGLE_PER_TRIGGER     180         /*180 degrees*/
#define FORWARD               1           /*Forward direction*/
#define BACKWARDS             0           /*Backwards direction*/

/*******************************************************************************
 * Functions
 ******************************************************************************/
void init_timer0(void);
void enable_timer0(void);
void disable_timer0(void);
void TIMER0_IRQHandler(void);
int calculateSteps(int angle);
void turn_coil_on(GPIO_Port_TypeDef gpioPort, int pin);
void turn_coil_off(GPIO_Port_TypeDef gpioPort, int pin);
void stepper_output(int coil);
void initStepper(int maxAngle);
void stepperStart(void);
void stepperStop(void);
void timer_callback(void);

/*******************************************************************************
 * END
 ******************************************************************************/
#endif /* CUSTOM_BOARD_DRIVERS_STEPPER_H_ */
