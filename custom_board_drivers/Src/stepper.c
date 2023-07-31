/******************************************************************************
 * @file    stepper.c
 * @author  Gatis Fridenbergs
 * @brief   Stepper motor driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include "stepper.h"

/*******************************************************************************
 **************************   GLOBAL VARIBLES   ********************************
 ******************************************************************************/

int current_step = 0;
uint8_t coilPins[NUM_COILS] = 
{
    MA1_PIN,
    MA2_PIN,
    MB1_PIN,
    MB2_PIN
};

/*******************************************************************************
 **************************   GLOBAL FUNCTIONS   *******************************
 ******************************************************************************/
/**
 * @brief   Initialize Timer0
 * @retval  None
*/
void timer0_init(void)
{
    /*Enable clock for the timer*/
    CMU_ClockEnable(cmuClock_TIMER0, true);

    /*Define struct for the timer with default values*/
    TIMER_InitCC_TypeDef timCC = TIMER_INITCC_DEFAULT;
    TIMER_Init_TypeDef tim = TIMER_INIT_DEFAULT;

    /*Configure the timer*/
    timCC.mode = timerCCModeCompare;
    tim.enable = false;
    tim.prescale = timerPrescale1024;

    /*Initialize actual timer*/
    TIMER_InitCC(TIMER0, 0, &timCC);
    TIMER_Init(TIMER0, &tim);
    
    /*Set the timer overflow at motor frequency*/
    uint32_t topVal = CMU_ClockFreqGet(cmuClock_TIMER0) / 
                        (2*STEPPER_FREQ * (1 << timerPrescale1024))-1;
    TIMER_TopSet(TIMER0, topVal);

    /*Enable timer interrupts*/
    TIMER_IntEnable(TIMER0, TIMER_IEN_OF);
    NVIC_EnableIRQ(TIMER0_IRQn);
}

/**
 * @brief       Magnetize the coil
 * @retval      None
 * @param[in]   gpioPort[in]    - 
 *              pin[in]         - 
*/
void coilOn(GPIO_Port_TypeDef gpioPort, int pin)
{
    GPIO_PinOutSet(gpioPort, pin);
}

/**
 * @brief       Demagnetize the coil
 * @retval      None
 * @param[in]   gpioPort[in]    - 
 *              pin[in]         - 
*/
void coilOff(GPIO_Port_TypeDef gpioPort, int pin)
{
    GPIO_PinOutClear(gpioPort, pin);
}

/**
 * @brief       Turns on the specified coil, and turns off the remaining coils
 * @retval      None
 * @param[in]   coil - 
*/
void coilOutput(int coil)
{
    int i;

    for(i=0; i<coil; i++) {
        coilOff(coilPorts[i], coilPins[i]);
    }

    coilOn(coilPorts[coil], coilPins[coil]);

    for(i=coil+1; i<NUM_COILS; i++) {
        coilOff(coilPorts[i], coilPins[i]);
    }
}

/**
 * @brief   Handle Timer overflow event and increment step
 * @retval  None
*/
void TIMER0_IRQHandler(void)
{
    /*Acknowledge the interrupt*/
    uint32_t flags = TIMER_IntGet(TIMER0);
    TIMER_IntClear(TIMER0, flags);

    /*Rotate the motor by one full step*/
}

/**
 * @brief   Enable H-Bridge driver
 * @retval  None
*/
void stepper_enable(void)
{
    GPIO_PinOutSet(NSLEEP_PORT, NSLEEP_PIN);
}

/**
 * @brief   Disable H-Bridge driver
 * @retval  None
*/
void stepper_disable(void)
{
    GPIO_PinOutClear(NSLEEP_PORT, NSLEEP_PIN);
}

