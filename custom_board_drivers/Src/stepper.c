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
int num_steps, current_step;
bool direction;

/******************************************************************************
 * Extern
 *****************************************************************************/


/******************************************************************************
 * Private Function Prototypes
 *****************************************************************************/
/**
 * @fn      void init_timer0(void)
 * @brief   Initialize Timer0
 * @retval  None
 * @param   None
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
 * @retval  None
 * @param   None
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
 * @fn      void disable_timer0(void
 * @brief   Disable Timer0
 * @retval  None
 * @param   None
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
 * @fn      void TIMER0_IRQHandler(void)
 * @brief   Timer interrupt handler
 * @retval  None
 * @param   None
 */
void TIMER0_IRQHandler(void)
{
  /*Read active Interrupt flags*/
  uint32_t timerFlags = TIMER_IntGet(TIMER0);

  /*Clear interrupts before enabling the timer*/
  TIMER_IntClear(TIMER0, timerFlags);

  /*Raise the local flag*/
  Timer0_OverFlowFlag = true;
}

/**
 * @fn      int calculateSteps(int)
 * @brief   Returns the number of steps required to rotate a specified angle
 * @retval  Number of steps
 * @param   angle
 */
int calculateSteps(int angle)
{
  return (angle * FULL_ROTATION_STEPS) / 360;
}

/**
 * @fn      void turn_coil_on(GPIO_Port_TypeDef, int)
 * @brief   Magnetize the coil
 * @retval  None
 * @param   gpioPort
 * @param   pin
 */
void turn_coil_on(GPIO_Port_TypeDef gpioPort, int pin)
{
  /*Magnetize the coil*/
  GPIO_PinOutSet(gpioPort, pin);
}

/**
 * @fn      void turn_coil_off(GPIO_Port_TypeDef, int)
 * @brief   Demagnetize the coil
 * @retval  None
 * @param   gpioPort
 * @param   pin
 */
void turn_coil_off(GPIO_Port_TypeDef gpioPort, int pin)
{
  /*Demagnetize the coil*/
  GPIO_PinOutClear(gpioPort, pin);
}

/**
 * @fn      void stepper_output(int)
 * @brief   Turns on the specified coil, and turns off the remaining coils
 * @retval  None
 * @param   coil
 */
void stepper_output(int coil)
{
  int i;

  for(i=0; i<coil; i++) {
      turn_coil_off(coilPorts, coilPins[i]);
  }

  turn_coil_on(coilPorts, coilPins[coil]);

  for(i=coil+1; i<COIL_CNT; i++) {
      turn_coil_off(coilPorts, coilPins[i]);
  }
}
