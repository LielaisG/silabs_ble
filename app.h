/******************************************************************************
 * @file    app.h
 * @author  Gatis Fridenbergs
 * @brief   Application interface provided to main()
 ******************************************************************************
 * @attention
 * Copyright (c) 2020 Silicon Laboratories Inc. www.silabs.com
 * All rights reserved.
 *****************************************************************************/
#ifndef APP_H
#define APP_H

#include "stdint.h"

/**
 * @defgroup Structures
 * @{
*/
typedef struct {
    uint8_t connection;
    uint32_t service;
    uint16_t characteristic;
    int32_t temperature;
} device_properties_t;
/**
 * @}
*/

/**
 * @defgroup Function declarations
 * @{
 */
static void parse_Advertising_Packet(uint8_t *input, uint8_t *output);  // Parsing advertisement packet
void app_init(void);                                                    // Application init action
void app_process_action(void);                                          // Application process action
/**
 * @}
*/


#endif // APP_H
