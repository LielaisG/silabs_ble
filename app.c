/******************************************************************************
 * @file    app.c
 * @author  Gatis Fridenbergs
 * @brief   Core application logic.
 *
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 *
 * All rights reserved.
 *
 *****************************************************************************/

#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "app.h"

#include "sl_simple_led_instances.h"
#include "gatt_db.h"

// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;

/*******************************************************************************
 * @brief  Application Init.
 * @retval None
 *
 * @note    Additional application init code.
 *          This is called once during start-up.
*******************************************************************************/
void app_init(void)
{
    // turn on LED at the startup
    sl_led_turn_on(&sl_led_led0);
}

/**
 * Application Process Action
*/

void app_process_action(void)
{
    /////////////////////////////////////////////////////////////////////////////
    // Put your additional application code here!                              //
    // This is called infinitely.                                              //
    // Do not call blocking functions from here!                               //
    /////////////////////////////////////////////////////////////////////////////
}

/*************************************************************************** 
 * @brief   Bluetooth stack event handler.
 *          This overrides the dummy weak implementation.
 * 
 * @param[in] evt Event coming from the Bluetooth stack.
****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
    sl_status_t sc;
    uint16_t sent_len;
    sl_led_state_t led_status;

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

        // Start general advertising and enable connections.
        sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                           sl_bt_advertiser_connectable_scannable);
        app_assert_status(sc);

        // print log
        app_log("Stack version: %u.%u.%u\r\n", evt->data.evt_system_boot.major,
                evt->data.evt_system_boot.minor, evt->data.evt_system_boot.patch);
        break;

    /**
     * @brief   This event indicates that a new connection was opened.
    */
    case sl_bt_evt_connection_opened_id:
        app_log("Connection opened.\n");
        break;

    /**
     * @brief   This event indicates that a connection was closed.
    */
    case sl_bt_evt_connection_closed_id:
        app_log("Connection closed.\n");

        // Generate data for advertising
        sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                   sl_bt_advertiser_general_discoverable);
        app_assert_status(sc);

        // Restart advertising after client has disconnected.
        sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                           sl_bt_advertiser_connectable_scannable);
        app_assert_status(sc);
        break;

    /**
     * @brief   Write request
    */
    case sl_bt_evt_gatt_server_user_write_request_id:
        // Automation IO digital control
        if (evt->data.evt_gatt_server_user_write_request.characteristic == gattdb_led_control)
        {
            // Write user supplied value to LEDs.
            // Both HEX and ASCII formats are supported to control the LED.
            if ((evt->data.evt_gatt_server_attribute_value.value.data[0] == 1) || (evt->data.evt_gatt_server_attribute_value.value.data[0] == 0x31))
            {
                app_log("Turn on led\n");
                sl_led_turn_on(&sl_led_led0);
            }
            else if ((evt->data.evt_gatt_server_attribute_value.value.data[0] == 0) || (evt->data.evt_gatt_server_attribute_value.value.data[0] == 0x30))
            {
                app_log("Turn off led\n");
                sl_led_turn_off(&sl_led_led0);
            }
            else
            {
                app_log("Invalid attribute value\n");
            }
            sc = sl_bt_gatt_server_send_user_write_response(
                evt->data.evt_gatt_server_user_write_request.connection,
                gattdb_led_control,
                SL_STATUS_OK);
            app_assert_status(sc);
        }
        break;

    /**
     * @brief   Read request
    */
    case sl_bt_evt_gatt_server_user_read_request_id:
        // Automation IO digital control
        if (evt->data.evt_gatt_server_user_read_request.characteristic == gattdb_led_control)
        {
            app_log("Read led\n");
            led_status = sl_led_get_state(&sl_led_led0);
            sc = sl_bt_gatt_server_send_user_read_response(
                evt->data.evt_gatt_server_user_read_request.connection,
                gattdb_led_control,
                SL_STATUS_OK,
                1,
                &led_status,
                &sent_len);
            app_assert_status(sc);
        }
        break;

    /**
     * @brief   Add additional event handlers here as your application requires!
    */

    /**
     * @brief   Default event handler.
    */
    default:
        break;
    }
}
