 /******************************************************************************
 * @file    main.c
 * @author  Gatis Fridenbergs
 * @brief   main() function.
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
#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include "app.h"
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif // SL_CATALOG_POWER_MANAGER_PRESENT
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT

/********************************************************************************
 * @brief  The application entry point.
 * @retval int
********************************************************************************/
int main(void)
{
    /**
     * Initialize Silicon Labs device, system, service(s) and protocol stack(s).
     * Note that if the kernel is present, processing task(s) will be created by
     * this call.
    */
    sl_system_init();

    /**
     * Initialize application-specific features during start-up.
    */
    app_init();




#if defined(SL_CATALOG_KERNEL_PRESENT)
    // Start the kernel. Task(s) created in app_init() will start running.
    sl_system_kernel_start();
#else // SL_CATALOG_KERNEL_PRESENT

    /**
     * Super loop
    */
    while (1)
    {
        /**
         * @attention   Do not remove this call!
         *              Silicon Labs components process action routine must be 
         *              called from the super loop.
        */
        sl_system_process_action();

        /**
         * Application process.
        */
        app_process_action();

#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
        // Let the CPU go to sleep if the system allows it.
        sl_power_manager_sleep();
#endif

    }
    
#endif // SL_CATALOG_KERNEL_PRESENT

}
