# BLE_LED_ctrl

> Note: this example expects a specific Gecko Bootloader to be present on your device. The Bluetooth SoC-Empty example is a project that serves as a template for this standalone Bluetooth application.

## Getting Started

The development of a Bluetooth applications consist of three main steps:
* Designing the GATT database
* Responding to the events raised by the Bluetooth stack
* Implementing additional application logic

## Testing the SOC-Empty Application

As described above, an empty example does nothing except advertising and letting other devices connect and read its basic GATT database. To test this feature, do the following:

1. Build and flash the SoC-Empty example to your device.
2. Download the **EFR Connect** smartphone app, available on all platforms.
3. Open the app and choose the Bluetooth Browser.
4. Now you should find your device advertising as "Empty Example". Tap **Connect**.
5. The connection is opened, and the GATT database is automatically discovered. Find the device name characteristic under Generic Access service and try to read out the device name.

## Prepare Project environment

Open the .slcp file. Select the SOFTWARE COMPONENTS tab and install the software components:
1. [Services] → [IO Stream] → [IO Stream: USART] → default instance name: vcom
2. [Application] → [Utility] → [Log]
3. [Platform] → [Driver] → [LED] → [Simple LED] → default instance name: led0
4. [Bluetooth] → [Application] → Remove OTA DFU

## Designing the GATT Database

The SOC-empty example implements a basic GATT database. 
Import the GATT configuration:
1. Open the .slcp file in the project.
2. Select the CONFIGURATION TOOLS tab and open the Bluetooth GATT Configurator.
3. Find the Import button and import the attached config/btconf/gatt_configuration.btconf file.
4. Save the GATT configuration (ctrl-s).

## Responding to Bluetooth Events

```
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
         *          Do not call any stack command before receiving this boot event!
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
                0,   // adv. duration
                0);  // max. num. adv. events
            app_assert_status(sc);
            
            // Start advertising and enable connections.
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
```

## Implementing Application Logic

Additional application logic has to be implemented in the `app_init()` and `app_process_action()` functions. Find the definitions of these functions in *app.c*. The `app_init()` function is called once when the device is booted, and `app_process_action()` is called repeatedly in a while(1) loop. For example, you can poll peripherals in this function. To save energy and to have this function called at specific intervals only, for example once every second, use the services of the [Sleeptimer](https://docs.silabs.com/gecko-platform/latest/service/api/group-sleeptimer). If you need a more sophisticated application, consider using RTOS (see ).


## References

[UG103.14: Bluetooth LE Fundamentals](https://www.silabs.com/documents/public/user-guides/ug103-14-fundamentals-ble.pdf)
[QSG169: Bluetooth SDK v3.x Quick Start Guide](https://www.silabs.com/documents/public/quick-start-guides/qsg169-bluetooth-sdk-v3x-quick-start-guide.pdf)
[UG434: SiliconLabs Bluetooth ® C Application Developer's Guide for SDK v3.x](https://www.silabs.com/documents/public/user-guides/ug434-bluetooth-c-soc-dev-guide-sdk-v3x.pdf)
[UG438: GATT Configurator User’s Guide for Bluetooth SDK v3.x](https://www.silabs.com/documents/public/user-guides/ug438-gatt-configurator-users-guide-sdk-v3x.pdf)
[Bluetooth API Reference](https://docs.silabs.com/bluetooth/latest/)
[AN1260: Integrating v3.x Silicon Labs Bluetooth Applications with Real-Time Operating Systems](https://www.silabs.com/documents/public/application-notes/an1260-integrating-v3x-bluetooth-applications-with-rtos.pdf)
[UG103.6: Bootloader Fundamentals](https://www.silabs.com/documents/public/user-guides/ug103-06-fundamentals-bootloading.pdf)
[UG489: Silicon Labs Gecko Bootloader User's Guide for GSDK 4.0 and Higher](https://cn.silabs.com/documents/public/user-guides/ug489-gecko-bootloader-user-guide-gsdk-4.pdf)

