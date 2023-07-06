/******************************************************************************
 * @file    app.c
 * @author  Gatis Fridenbergs
 * @brief   Core application logic
 ******************************************************************************
 * @attention
 * Copyright (c) 2020 Silicon Laboratories Inc. www.silabs.com
 * All rights reserved.
 *****************************************************************************/

/**
 * @defgroup Includes
 * @{
*/
#include <stdbool.h>
#include "em_common.h"
#include "sl_status.h"
#include "sl_simple_timer.h"
#include "app_log.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "sl_sensor_rht.h"
#include "sl_health_thermometer.h"
#include "app.h"
/**
 * @}
*/

/**
 * @defgroup Defines
 * @{
*/
#define MITM_PROTECTION (0x01) // 0=JustWorks,
                               // 1=PasskeyEntry or NumericComparison
/**
 * @}
*/

/**
 * @defgroup Static variables
 * @{
*/
static uint8_t app_connection = 0;                                        // Connection handle.
static uint8_t advertising_set_handle = 0xff;                             // The advertising set handle allocated from Bluetooth stack.
static sl_simple_timer_t app_periodic_timer;                              // Periodic timer handle.
static void app_periodic_timer_cb(sl_simple_timer_t *timer, void *data);  // Periodic timer callback.
/**
 * @}
*/

/*******************************************************************************
 * @brief   Application init action
 * @retval  None
 *
 * @note    Additional application init code.
 *          This is called once during start-up.
*******************************************************************************/
SL_WEAK void app_init(void)
{
    sl_status_t sc;
    app_log("health thermometer initialised\n");
    // Init temperature sensor.
    sc = sl_sensor_rht_init();
    if (sc != SL_STATUS_OK) {
        app_log_warning("Thermometer sensor initialization failed.");
        app_log_nl();
    }
}

/*******************************************************************************
 * @brief   Application process action
 * @retval  None
 *
 * @note    Called infinitely. No blocking functions in here
*******************************************************************************/
SL_WEAK void app_process_action(void)
{
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
        sl_bt_sm_delete_bondings();
        sl_bt_sm_configure(MITM_PROTECTION, sl_bt_sm_io_capability_displayonly);
        sl_bt_sm_set_bondable_mode(1);
        app_log("bondable mode is set");
        // Create an advertising set.
        sc = sl_bt_advertiser_create_set(&advertising_set_handle);
        app_assert_status(sc);

        // Generate data for advertising
        sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                   sl_bt_advertiser_general_discoverable);
        app_assert_status(sc);

        // Set advertising interval to 100ms.
        sc = sl_bt_advertiser_set_timing(
            advertising_set_handle, // advertising set handle
            160,                    // min. adv. interval (milliseconds * 1.6)
            160,                    // max. adv. interval (milliseconds * 1.6)
            0,                      // adv. duration
            0);                     // max. num. adv. events
        app_assert_status(sc);

        // Start advertising and enable connections.
        sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                           sl_bt_advertiser_connectable_scannable);
        app_assert_status(sc);

        app_log_info("Started advertising\n");
        break;

    /**
     * @brief   This event indicates that a new connection was opened.
    */
    case sl_bt_evt_connection_opened_id:
        app_log_info("Connection opened\n");
        sl_bt_sm_increase_security(evt->data.evt_connection_opened.connection);
        break;

    /**
     * @brief   This event indicates that a new connection was closed.
    */
    case sl_bt_evt_connection_closed_id:
        app_log_info("Connection closed\n");

        // stop timer
        sc = sl_simple_timer_stop(&app_periodic_timer);
        app_assert_status(sc);
        // Generate data for advertising
        sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                   sl_bt_advertiser_general_discoverable);
        app_assert_status(sc);

        // Restart advertising after client has disconnected.
        sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                           sl_bt_advertiser_connectable_scannable);
        app_assert_status(sc);
        app_log_info("Started advertising\n");
        break;

    /**
     * @brief   Identifier of the passkey_display event
    */
    case sl_bt_evt_sm_passkey_display_id:
    {
        app_log("Passkey: %d\n", (int)evt->data.evt_sm_passkey_display.passkey);
        break;
    }

    /**
     * @brief   Identifier of the confirm_bonding event
    */
    case sl_bt_evt_sm_confirm_bonding_id:
        sl_bt_sm_bonding_confirm(evt->data.evt_sm_confirm_bonding.connection, 1);
        app_log("confirm bonding");
        break;

    /**
     * @brief    Identifier of the confirm_passkey event
    */
    case sl_bt_evt_sm_confirm_passkey_id:
    {
        app_log("Confirm: %d\n", (int)evt->data.evt_sm_confirm_passkey.passkey);
        sl_bt_sm_passkey_confirm(evt->data.evt_sm_confirm_passkey.connection, 1);
        break;
    }

    /**
     * @brief   Identifier of the bonding_failed event.
    */
    case sl_bt_evt_sm_bonding_failed_id:
        app_log("rip\r\n");
        app_log("Device no secure. Closed\r\n");
        sl_bt_connection_close(evt->data.evt_sm_bonding_failed.connection);
        sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                           sl_bt_advertiser_connectable_scannable);
        app_assert_status(sc);
        break;
    
    /**
     * @brief   Default event handler.
    */
    default:
        break;
    }
}

/**
 * @brief   Health Thermometer - Temperature Measurement
 *          Indication changed callback. Called when indication of 
 *          temperature measurement is enabled/disabled by the client.
*/
void sl_bt_ht_temperature_measurement_indication_changed_cb(uint8_t connection,
                                                            sl_bt_gatt_client_config_flag_t client_config)
{
    sl_status_t sc;
    app_connection = connection;
    // Indication or notification enabled.
    if (sl_bt_gatt_disable != client_config)
    {
        // Start timer used for periodic indications.
        sc = sl_simple_timer_start(&app_periodic_timer,
                                   SL_BT_HT_MEASUREMENT_INTERVAL_SEC * 1000,
                                   app_periodic_timer_cb,
                                   NULL,
                                   true);
        app_assert_status(sc);
        // Send first indication.
        app_periodic_timer_cb(&app_periodic_timer, NULL);
    }
    // Indications disabled.
    else
    {
        // Stop timer used for periodic indications.
        (void)sl_simple_timer_stop(&app_periodic_timer);
    }
}

/**
 * @brief   Timer callback. 
 *          Called periodically to time periodic temperature measurements and indications.
*/
static void app_periodic_timer_cb(sl_simple_timer_t *timer, void *data)
{
    (void)data;
    (void)timer;
    sl_status_t sc;
    int32_t temperature = 0;
    uint32_t humidity = 0;
    float tmp_c = 0.0;
    // float tmp_f = 0.0;

    // Measure temperature; units are % and milli-Celsius.
    sc = sl_sensor_rht_get(&humidity, &temperature);
    if (SL_STATUS_NOT_INITIALIZED == sc)
    {
        app_log_info("Relative Humidity and Temperature sensor is not initialized.");
        app_log_nl();
    }
    else if (sc != SL_STATUS_OK)
    {
        app_log_warning("Invalid RHT reading: %lu %ld\n", humidity, temperature);
    }

    tmp_c = (float)temperature / 1000;
    app_log_info("Temperature: %5.2f C\n", tmp_c);
    // Send temperature measurement indication to connected client.
    sc = sl_bt_ht_temperature_measurement_indicate(app_connection,
                                                   temperature,
                                                   false);
    // Conversion to Fahrenheit: F = C * 1.8 + 32
    // tmp_f = (float)(temperature*18+320000)/10000;
    // app_log_info("Temperature: %5.2f F\n", tmp_f);
    // Send temperature measurement indication to connected client.
    // sc = sl_bt_ht_temperature_measurement_indicate(app_connection,
    //                                                (temperature*18+320000)/10,
    //                                                true);
    if (sc)
    {
        app_log_warning("Failed to send temperature measurement indication\n");
    }
}
