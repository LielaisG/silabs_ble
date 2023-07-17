/******************************************************************************
 * @file    app.h
 * @author  Gatis Fridenbergs
 * @brief   Application interface provided to main()
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#ifndef APP_H
#define APP_H

/**
 * @defgroup Function declarations
 * @{
 */
void app_init(void);            /*!< Application init action*/ 
void app_process_action(void);  /*!< Application process action*/
/**
 * @}
*/

#endif // APP_H