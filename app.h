/******************************************************************************
 * @file    app.h
 * @brief   Application interface provided to main()
 *
 * @author  Gatis Fridenbergs
 *          https://github.com/LielaisG
 *          fridenbergs.gatis@gmail.com
 * Created on: August 10, 2023
 *
 * @note
 * @todo
 *****************************************************************************/

/******************************************************************************
 * Multiple include protection
 *****************************************************************************/
#ifndef APP_H
#define APP_H

/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "bgm240sa22vna.h"
#include "em_device.h"
#include "em_cmu.h"
#include "em_ldma.h"
#include "em_gpio.h"
#include "em_timer.h"
#include "em_iadc.h"

/*******************************************************************************
 * Macros
 ******************************************************************************/


/*******************************************************************************
 * Local variables
 ******************************************************************************/


/*******************************************************************************
 * Functions
 ******************************************************************************/
void app_init(void);            /*!< Application init action*/ 
void app_process_action(void);  /*!< Application process action*/

/*******************************************************************************
 * END
 ******************************************************************************/
#endif // APP_H
