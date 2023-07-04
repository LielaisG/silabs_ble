 /******************************************************************************
 * @file    sl_system_init.c
 * @author  Gatis Fridenbergs
 * @brief   System Initialization.
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

#include "sl_event_handler.h"

/********************************************************************************
 * @brief   The sl_system_init() function is used to initialize the system. 
 *          It will call functions, which are located in the autogen folder.
********************************************************************************/
void sl_system_init(void)
{
    sl_platform_init();
    sl_driver_init();
    sl_service_init();
    sl_stack_init();
    sl_internal_app_init();
}
