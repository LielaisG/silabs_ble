/******************************************************************************
 * @file    stepper.c
 * @brief   Stepper motor driver module
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
#include "stepper.h"

/******************************************************************************
 * Data types
 *****************************************************************************/
bool Timer0_OverFlowFlag = false;
GPIO_Port_TypeDef coilPorts = M_PORT;
uint8_t coilPins[COIL_CNT] = { MA1_PIN, MB1_PIN, MA2_PIN, MB2_PIN};
int maxSteps, currentStep, direction;

/******************************************************************************
 * Extern
 *****************************************************************************/


/******************************************************************************
 * Private Function Prototypes
 *****************************************************************************/
/**
 * @fn      void init_timer0(void)
 * @brief   Initialize Timer0
 * @param   None
 * @return  none
 */
void init_timer0(void)
{
  /*Define timer struct with default values*/
  TIMER_Init_TypeDef timerInit = TIMER_INIT_DEFAULT;

  /*Disable timer when initialization completes*/
  timerInit.enable = false;

  /*Enable Timer0 clock*/
  CMU_ClockEnable(cmuClock_TIMER0, true);

  /*Init actual timer*/
  TIMER_Init(TIMER0, &timerInit);

  /*Set the timer prescaler to value 1*/
  timerInit.prescale = timerPrescale1 + 1;

  /*Calculate & set the timer TOP Value = given freq divided by desired freq*/
  uint32_t timerFreq = CMU_ClockFreqGet(cmuClock_TIMER0) / (timerInit.prescale);
  uint32_t timerTopVal = timerFreq / TIMER0_FREQUENCY;
  TIMER_TopSet(TIMER0, timerTopVal);

  /*Enable interrupts on timer overflow*/
  TIMER_IntEnable(TIMER0, TIMER_IEN_OF);
  NVIC_EnableIRQ(TIMER0_IRQn);
}

/**
 * @fn      void enable_timer0(void)
 * @brief   Enable Timer0
 * @param   None
 * @return  none
 */
void enable_timer0(void)
{
  /*Read active Interrupt flags*/
  uint32_t timerFlags = TIMER_IntGet(TIMER0);

  /*Clear interrupts before enabling the timer*/
  TIMER_IntClear(TIMER0, timerFlags);

  /*Enable timer*/
  TIMER_Enable(TIMER0, true);
}

/**
 * @fn      void disable_timer0(void)
 * @brief   Disable Timer0
 * @param   None
 * @return  none
 */
void disable_timer0(void)
{
  /*Read active Interrupt flags*/
  uint32_t timerFlags = TIMER_IntGet(TIMER0);

  /*Clear interrupts before enabling the timer*/
  TIMER_IntClear(TIMER0, timerFlags);

  /*Disable timer*/
  TIMER_Enable(TIMER0, false);
}



/**
 * @fn      int calculateSteps(int)
 * @brief   Returns the number of steps required to rotate a specified angle
 * @param   angle
 * @return  Number of steps
 */
int calculateSteps(int angle)
{
  return (angle * FULL_ROTATION_STEPS) / 360;
}

/**
 * @fn      void turn_coil_on(GPIO_Port_TypeDef, int)
 * @brief   Magnetize the coil
 * @param   gpioPort
 * @param   pin
 * @return  none
 */
void turn_coil_on(GPIO_Port_TypeDef gpioPort, int pin)
{
  /*Magnetize the coil*/
  GPIO_PinOutSet(gpioPort, pin);
}

/**
 * @fn      void turn_coil_off(GPIO_Port_TypeDef, int)
 * @brief   Demagnetize the coil
 * @param   gpioPort
 * @param   pin
 * @return  none
 */
void turn_coil_off(GPIO_Port_TypeDef gpioPort, int pin)
{
  /*Demagnetize the coil*/
  GPIO_PinOutClear(gpioPort, pin);
}

/**
 * @fn      void stepper_output(int)
 * @brief   Turns on the specified coil, and turns off the remaining coils
 * @param   coil
 * @return  None
 */
void stepper_output(int coil)
{
  /*Turn off all coils*/
  for(int i=0; i<coil; i++)
  {
      turn_coil_off(coilPorts, coilPins[i]);
  }

  /*Magnetize specific coil*/
  turn_coil_on(coilPorts, coilPins[coil]);

  /*Turn off all coils*/
  for(int i=coil+1; i<COIL_CNT; i++)
  {
      turn_coil_off(coilPorts, coilPins[i]);
  }
}

/**
 * @fn      void stepperStart(int, int)
 * @brief   Initialize stepper
 * @param   dir
 * @param   maxAngle
 * @return  none
 */
void initStepper(int maxAngle)
{
    /*Reset initial position and set direction*/
    currentStep = 0;

    /*Set max angle*/
    maxSteps = calculateSteps(maxAngle);
}

/**
 * @fn      void stepperStart(void)
 * @brief   Start rotation
 * @param   None
 * @return  None
 */
void stepperStart(void)
{
    /*Disable driver sleep mode*/
    GPIO_PinOutSet(NSLEEP_PORT, NSLEEP_PIN);

    /*Start timer*/
    enable_timer0();
}

/**
 * @fn      void stepperStop(void)
 * @brief   Stop rotation
 * @param   None
 * @return  None
 */
void stepperStop(void)
{
    /*Enable driver sleep mode*/
    GPIO_PinOutClear(NSLEEP_PORT, NSLEEP_PIN);

    /*Disable timer*/
    disable_timer0();
}

/**
 * @fn      void timer_callback(void)
 * @brief   Timer 0 callback function
 * @param   None
 * @return  None
 */
void timer_callback(void)
{
    if (Timer0_OverFlowFlag == true)
    {
        /*Reset flag*/
        Timer0_OverFlowFlag = false;

        /*Stepper has rotated one more step*/
        ++currentStep;

        if (direction == FORWARD)
        {
            /*Turn on specific coil*/
            stepper_output((maxSteps - currentStep) % COIL_CNT);

            /*Indicate direction*/
            led_turn_off();
            led_turn_on(RED);
        }
        else if (direction == BACKWARDS)
        {
            /*Turn on specific coil*/
            stepper_output(currentStep % COIL_CNT);

            /*Indicate direction*/
            led_turn_off();
            led_turn_on(GREEN);
        }

        /*Change direction if the desired angle is reached*/
        if(currentStep == maxSteps)
        {
            /*Reset initial position*/
            currentStep = 0;

            /*Change direction*/
            direction = !direction;
        }
    }
}
