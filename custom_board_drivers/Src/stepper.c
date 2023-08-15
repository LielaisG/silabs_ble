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
 * @todo    Implement:
 *          (1) Full range detection
 *          (2) Mapping step count to percent,
 *          (3) Stall detection
 *****************************************************************************/

/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "stepper.h"

/******************************************************************************
 * Data types
 *****************************************************************************/
bool Timer0_OverFlowFlag = false;
int maxSteps, currentStep, direction;
/*Transistors are in order A+, A-, B+, B-*/
/**
 * Full step pattern:
 * 1010 - 0xA
 * 0110 - 0x6
 * 0101 - 0x5
 * 1001 - 0x9
 */
uint32_t fullStepPattern[STEP_CNT_FULL] = {0xA, 0x6, 0x5, 0x9};
/**
 * Half step pattern:
 * 1010 - 0xA
 * 0010 - 0x2
 * 0110 - 0x6
 * 0100 - 0x4
 * 0101 - 0x5
 * 0001 - 0x1
 * 1001 - 0x9
 * 1000 - 0x8
 */
uint32_t halfStepPattern[STEP_CNT_HALF] = {0xA, 0x2, 0x6, 0x4, 0x5, 0x1, 0x9, 0x8};

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
 * @fn      void stepThroughPattern(uint32_t)
 * @brief   Stepping through stepper motor pattern
 * @param   pos
 * @return  None
 */
void stepThroughPattern(uint32_t pos)
{
    /*Seting individual bits*/
    GPIO_PortOutSetVal(M_PORT, pos, 0xF);
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
            //stepThroughPattern(fullStepPattern[(maxSteps - currentStep) % STEP_CNT_FULL]);
            stepThroughPattern(halfStepPattern[(maxSteps - currentStep) % STEP_CNT_HALF]);

            /*Indicate direction*/
            led_turn_off();
            led_turn_on(RED);
        }
        else if (direction == BACKWARDS)
        {
            /*Turn on specific coil*/
            //stepThroughPattern(fullStepPattern[currentStep % STEP_CNT_FULL]);
            stepThroughPattern(halfStepPattern[currentStep % STEP_CNT_HALF]);

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
