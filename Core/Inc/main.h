/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define NTC_PullUp_EN_0_Pin GPIO_PIN_10
#define NTC_PullUp_EN_0_GPIO_Port GPIOE
#define NTC_PullUp_EN_1_Pin GPIO_PIN_11
#define NTC_PullUp_EN_1_GPIO_Port GPIOE
#define NTC_PullUp_EN_2_Pin GPIO_PIN_12
#define NTC_PullUp_EN_2_GPIO_Port GPIOE
#define NTC_PullUp_EN_3_Pin GPIO_PIN_13
#define NTC_PullUp_EN_3_GPIO_Port GPIOE
#define NTC_PullUp_EN_4_Pin GPIO_PIN_14
#define NTC_PullUp_EN_4_GPIO_Port GPIOE
#define NTC_PullUp_EN_5_Pin GPIO_PIN_15
#define NTC_PullUp_EN_5_GPIO_Port GPIOE
#define NTC_PullUp_EN_6_Pin GPIO_PIN_10
#define NTC_PullUp_EN_6_GPIO_Port GPIOB
#define NTC_PullUp_EN_7_Pin GPIO_PIN_11
#define NTC_PullUp_EN_7_GPIO_Port GPIOB
#define AD_Buf_VDD_15_Pin GPIO_PIN_15
#define AD_Buf_VDD_15_GPIO_Port GPIOB
#define AD_Buf_VDD_14_Pin GPIO_PIN_8
#define AD_Buf_VDD_14_GPIO_Port GPIOD
#define AD_Buf_VDD_13_Pin GPIO_PIN_9
#define AD_Buf_VDD_13_GPIO_Port GPIOD
#define AD_Buf_VDD_12_Pin GPIO_PIN_10
#define AD_Buf_VDD_12_GPIO_Port GPIOD
#define AD_Buf_VDD_11_Pin GPIO_PIN_11
#define AD_Buf_VDD_11_GPIO_Port GPIOD
#define AD_Buf_VDD_10_Pin GPIO_PIN_12
#define AD_Buf_VDD_10_GPIO_Port GPIOD
#define AD_Buf_VDD_9_Pin GPIO_PIN_13
#define AD_Buf_VDD_9_GPIO_Port GPIOD
#define AD_Buf_VDD_8_Pin GPIO_PIN_14
#define AD_Buf_VDD_8_GPIO_Port GPIOD
#define AD_Buf_VDD_7_Pin GPIO_PIN_15
#define AD_Buf_VDD_7_GPIO_Port GPIOD
#define AD_Buf_VDD_6_Pin GPIO_PIN_6
#define AD_Buf_VDD_6_GPIO_Port GPIOC
#define AD_Buf_VDD_5_Pin GPIO_PIN_7
#define AD_Buf_VDD_5_GPIO_Port GPIOC
#define AD_Buf_VDD_4_Pin GPIO_PIN_8
#define AD_Buf_VDD_4_GPIO_Port GPIOC
#define AD_Buf_VDD_3_Pin GPIO_PIN_9
#define AD_Buf_VDD_3_GPIO_Port GPIOC
#define AD_Buf_VDD_2_Pin GPIO_PIN_8
#define AD_Buf_VDD_2_GPIO_Port GPIOA
#define AD_Buf_VDD_1_Pin GPIO_PIN_9
#define AD_Buf_VDD_1_GPIO_Port GPIOA
#define AD_Buf_VDD_0_Pin GPIO_PIN_10
#define AD_Buf_VDD_0_GPIO_Port GPIOA
#define Mux_0_S_Pin GPIO_PIN_0
#define Mux_0_S_GPIO_Port GPIOD
#define Mux_1_S_Pin GPIO_PIN_1
#define Mux_1_S_GPIO_Port GPIOD
#define Mux_2_S_Pin GPIO_PIN_2
#define Mux_2_S_GPIO_Port GPIOD
#define Mux_3_S_Pin GPIO_PIN_3
#define Mux_3_S_GPIO_Port GPIOD
#define MCU_Freq_3_Pin GPIO_PIN_8
#define MCU_Freq_3_GPIO_Port GPIOB
#define MCU_Freq_3_EXTI_IRQn EXTI9_5_IRQn
#define MCU_Freq_2_Pin GPIO_PIN_9
#define MCU_Freq_2_GPIO_Port GPIOB
#define MCU_Freq_2_EXTI_IRQn EXTI9_5_IRQn
#define MCU_Freq_1_Pin GPIO_PIN_0
#define MCU_Freq_1_GPIO_Port GPIOE
#define MCU_Freq_1_EXTI_IRQn EXTI0_IRQn
#define MCU_Freq_0_Pin GPIO_PIN_1
#define MCU_Freq_0_GPIO_Port GPIOE
#define MCU_Freq_0_EXTI_IRQn EXTI1_IRQn

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
