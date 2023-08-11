/******************************************************************************
 * @file    app.c
 * @brief   Core application logic
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
#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "app.h"
#include "gpio.h"
#include "stepper.h"
#include "adc.h"

/*******************************************************************************
 * Extern
 ******************************************************************************/
extern bool Timer0_OverFlowFlag;
extern int num_steps, current_step;
extern bool direction;

/*******************************************************************************
 * Global
 ******************************************************************************/
static uint8_t advertising_set_handle = 0xff;
double temp = 0;
IADC_Result_t tmp;
double avgRawVoltage, avgVoltage, sensedCurrent;
int count;

/*******************************************************************************
 * @brief   Application init action
 * @retval  None
 *
 * @note    Additional application init code.
 *          This is called once during start-up.
*******************************************************************************/
void app_init(void)
{
    /*Initialize GPIO*/
    GPIO_init();

    /*Turn on the LED*/
    led_turn_on(BLUE);

    /*Initialize the timer*/
    init_timer0();

    /*Initialize the IADC*/
    iadc_diff_init();

    /*Start rotation*/
    //step();
}

/*******************************************************************************
 * @brief   Application process action
 * @retval  None
 *
 * @note    Called infinitely. No blocking functions in here
*******************************************************************************/
void app_process_action(void)
{
  timer_callback();
  if ((direction == true) && (current_step >= 100) && (current_step <= 900))
  {
      /*Increment counter*/
      count++;

      /*Read raw ADC value*/
      tmp = iadc_start_diff_conv();

      /*Calculate average raw value*/
      temp += (int32_t) tmp.data;
      avgRawVoltage = temp / count;

      /*Calculate average voltage in Volts*/
      avgVoltage = (avgRawVoltage * ((1.21*2) / 4)) / 0xFFF;

      // Calculate input voltage:
      //  For differential inputs, the resultant range is from -Vref to +Vref, i.e.,
      //  (Vref * 2)/GAIN - full scale IADC range represented by 12 bits.
      sensedCurrent = avgVoltage / 0.1;
  }
  else
  {
      count = 0;
      temp = 0;
      avgVoltage = 0;
      sensedCurrent = 0;
  }
}

/**
 * @fn      void timer_callback(void)
 * @brief   Timer callback function
 * @retval  None
 * @param   None
 */
void timer_callback(void)
{
  if (Timer0_OverFlowFlag == true)
      {
          Timer0_OverFlowFlag = false;

          // Rotate the motor by one full step
          current_step++;

          if(direction == false)
          {
              led_turn_off();
              led_turn_on(GREEN);
              stepper_output(current_step % COIL_CNT);
          }
          else {
              led_turn_off();
              led_turn_on(RED);
              stepper_output((num_steps - current_step) % COIL_CNT);
          }

          /*Stop rotating the motor if the desired angle is reached*/
          if(current_step == num_steps)
          {
              direction = !direction;
              current_step = 0;
          }
      }
}
/**
 * @fn      void step(void)
 * @brief   Start stepper motor
 * @retval  None
 * @param   None
 */
void step(void)
{
  /*Rotate stepper*/
  num_steps = calculateSteps(ANGLE_PER_TRIGGER);
  current_step = 0;
  GPIO_PinOutSet(NSLEEP_PORT, NSLEEP_PIN);
  direction = true;
  enable_timer0();
}

/*************************************************************************** 
 * @brief       Bluetooth stack event handler.
 *              This overrides the dummy weak implementation.
 * 
 * @param[in]   evt Event coming from the Bluetooth stack.
****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
    sl_status_t sc;

    // Handle stack events
    switch (SL_BT_MSG_ID(evt->header))
    {
    
        /**
         * @brief   This event indicates the device has started and the radio is ready.
         *          Do not call any stack command before receiving this boot event!
        */
        case sl_bt_evt_system_boot_id:
            // Create an advertising set.
            sc = sl_bt_advertiser_create_set(&advertising_set_handle);
            app_assert_status(sc);

            // Generate data for advertising
            sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                        sl_bt_advertiser_general_discoverable);
            app_assert_status(sc);

            // Set advertising interval to 100ms.
            sc = sl_bt_advertiser_set_timing(
                advertising_set_handle,
                160, // min. adv. interval (milliseconds * 1.6)
                160, // max. adv. interval (milliseconds * 1.6)
                0,   // adv. duration
                0);  // max. num. adv. events
            app_assert_status(sc);
            // Start advertising and enable connections.
            sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                                sl_bt_advertiser_connectable_scannable);
            app_assert_status(sc);
            break;

        /**
         * @brief   This event indicates that a new connection was opened.
        */
        case sl_bt_evt_connection_opened_id:
            break;

        /**
         * @brief   This event indicates that a new connection was closed.
        */
        case sl_bt_evt_connection_closed_id:
            // Generate data for advertising
            sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                        sl_bt_advertiser_general_discoverable);
            app_assert_status(sc);

            // Restart advertising after client has disconnected.
            sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                                sl_bt_advertiser_connectable_scannable);
            app_assert_status(sc);
            break;

        ///////////////////////////////////////////////////////////////////////////
        // Add additional event handlers here as your application requires!      //
        ///////////////////////////////////////////////////////////////////////////

        /**
         * @brief   Default event handler.
        */
        default:
            break;
  }
}
