/******************************************************************************
 * @file    app.c
 * @author  Gatis Fridenbergs
 * @brief   Core application logic
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "app.h"
#include "gpio.h"
#include "stepper.h"
#include "adc.h"

/*******************************************************************************
 **************************   LOCAL VARIABLES   ********************************
 ******************************************************************************/

static uint8_t advertising_set_handle = 0xff;   /*!< The advertising set handle allocated from Bluetooth stack.*/

/*******************************************************************************
 **************************   GLOBAL FUNCTIONS   *******************************
 ******************************************************************************/

/*******************************************************************************
 * @brief   Application init action
 * @retval  None
 *
 * @note    Additional application init code.
 *          This is called once during start-up.
*******************************************************************************/
void app_init(void)
{
    /*Initialize GPIO pins*/
    GPIO_init();

    /*Turning ON the LED*/
    led_turn_on(RED);

    /*Initialize the IADC*/
    //iadc_init();

    
}

/*******************************************************************************
 * @brief   Application process action
 * @retval  None
 *
 * @note    Called infinitely. No blocking functions in here
*******************************************************************************/
void app_process_action(void)
{
    //iadc_start_conv();

    /*Motor driver*/

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
