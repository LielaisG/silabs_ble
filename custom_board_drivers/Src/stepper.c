/******************************************************************************
 * @file    stepper.c
 * @author  Gatis Fridenbergs
 * @brief   Stepper motor driver module
 ******************************************************************************
 * @attention
 * Copyright (c) 2023 LielaisG.
 * https://github.com/LielaisG
 * All rights reserved.
 *****************************************************************************/

#include "stepper.h"

/**
 * @brief   
 * @retval  
 * @note    Driver  DRV8836 - Dual H-Bridge IC
 *          IN/IN mode table:   | mX1 | mX2 | XOUT1 | XOUT2 | Function |
 *                              |  0  |  0  |   Z   |   Z   | Coast    |
 *                              |  0  |  1  |   L   |   H   | Reverse  |
 *                              |  1  |  0  |   H   |   L   | Forward  |
 *                              |  1  |  1  |   L   |   L   | Brake    |
 *                              
 *          Pinout: PC00 - mA1, PC01 - mA2
 *                  PC02 - mB1, PC03 - mB2
                    PA07 - OA_IN_P, PA08 - OA_IN_N
 * 
 * @param[in] 
 * @param[in] 
*/
