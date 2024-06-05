/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "math.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
 ADC_HandleTypeDef hadc1;
DMA_HandleTypeDef hdma_adc1;

CAN_HandleTypeDef hcan1;
CAN_HandleTypeDef hcan2;

IWDG_HandleTypeDef hiwdg;

TIM_HandleTypeDef htim4;

/* USER CODE BEGIN PV */
// PLZ kommentoikaa koodit
CAN_RxHeaderTypeDef   RxHeader;
CAN_RxHeaderTypeDef   RxHeader1;
uint8_t               RxData[8];
uint8_t               RxData1[8];

uint8_t CAN_BUFFER_SIZE = 8;
CAN_TxHeaderTypeDef Tx1Header;	// TX header for CAN1
CAN_TxHeaderTypeDef Tx2Header;	// TX header for CAN2

// TX data buffers CAN1
uint8_t CAN1_TxData_1[8] = {0};
uint8_t CAN1_TxData_2[8] = {0};
uint8_t CAN1_TxData_3[7] = {0};
uint8_t CAN1_TxData_4[6] = {0};

// TX Data buffers CAN2
uint8_t CAN2_TxData_1[8] = {0};
uint8_t CAN2_TxData_2[8] = {0};
uint8_t CAN2_TxData_3[7] = {0};
uint8_t CAN2_TxData_4[6] = {0};

uint32_t TX_ID1 = 7; //0x07
uint32_t TX_ID2 = 95; //0x05F
uint32_t TX_ID3 = 404; //0x194
uint32_t TX_ID4 = 888; //0x378

uint8_t TxTime1 = 7; //142,9Hz
uint8_t TxTime2 = 2; //5000Hz
uint8_t TxTime3 = 1; //1000Hz
uint8_t TxTime4 = 1; //1000Hz

// RX data buffers
CAN_FilterTypeDef sFilterConfig;
uint32_t CAN1_mailbox;
uint32_t CAN2_mailbox;

// Timer variables
uint16_t averageCnt_ms = 0;
uint16_t ms1 = 0;
uint16_t ms2 = 0;
uint16_t ms3 = 0;
uint16_t ms4 = 0;
uint16_t whl_spd_deadzone = 650;

uint16_t CAN2_ms1 = 0;

uint8_t averageCount = 5;
volatile uint8_t channel = 0;
volatile uint32_t averageTemp = 0;
volatile uint32_t averageValue[16]= {0};
volatile uint16_t Voltage[16]= {0};
uint32_t AD_DMA[16] = {0};

uint16_t Vref_5V = 4998;
uint16_t Rntc[8] = {0};

uint16_t emap_1 = 0;
uint16_t emap_2 = 0;
uint16_t map = 0;

uint16_t BrakepressRear = 0;
double WspdRR = 0;
double WspdRL = 0;
double WspdFR = 0;
double WspdFL = 0;
uint8_t numOfWhlSpdTrig = 16;
uint16_t suspotRL = 0;
uint16_t suspotRR = 0;
uint16_t CoolanttempLower = 0;
uint16_t Coolantpressure = 0;
uint16_t Oilpress = 0;
uint16_t Oiltemp = 0;
uint16_t EXTRA1 = 0;
uint16_t EXTRA2 = 0;
uint16_t EXTRA3 = 0;
uint16_t EXTRA4 = 0;
uint16_t EXTRA5 = 0;
uint16_t EXTRA6 = 0;
uint16_t EXTRA7 = 0;
//Taajuusmittaus
uint8_t rpm_ch0_trig = 0;
uint8_t rpm_ch1_trig = 0;
uint8_t rpm_ch2_trig = 0;
uint8_t rpm_ch3_trig = 0;

uint8_t enableRPM[4] = {0};

double rpm_ave_0 = 0;
double rpm_ave_1 = 0;
double rpm_ave_2 = 0;
double rpm_ave_3 = 0;
double rpm_ave_01 = 0;
double rpm_ave_11 = 0;
double rpm_ave_21 = 0;
double rpm_ave_31 = 0;
uint8_t rpm_count = 5;
uint8_t rpm_ave_count_0 = 0;
uint8_t rpm_ave_count_1 = 0;
uint8_t rpm_ave_count_2 = 0;
uint8_t rpm_ave_count_3 = 0;


uint16_t rpm_ch0_ms = 0;
uint16_t rpm_ch1_ms = 0;
uint16_t rpm_ch2_ms = 0;
uint16_t rpm_ch3_ms = 0;
uint8_t rpm_first = 1;
uint16_t ms25 = 0;
uint16_t sec = 0;
/*bool BrakepressRearVD = false;
bool WspdRRMUX = false;
bool WspdRLMUX = false;
bool suspotRLVD = false;
bool suspotRRVD = false;
bool EXTRA1VD = false;
bool EXTRA1MUX = false;
bool EXTRA2VD = false;
bool EXTRA2MUX = false;
bool EXTRA3VD = false;
bool CoolanttemplowerVD = false;
bool CoolanttemplowerPU = false;
bool CoolantpressureVD = false;
bool CoolantpressurePU = false;
bool OilpressVD = false;
bool OilpressPU = false; 
bool oiltempVD = false;
bool oiltempPU = false;
bool EXTRA4VD = false;
bool EXTRA4PU = false;
bool EXTRA5VD = false;
bool EXTRA5PU = false;
bool EXTRA6VD = false;
bool EXTRA6PU = false;
bool EXTRA7VD = false;
bool EXTRA7PU = false;*/
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC1_Init(void);
static void MX_CAN1_Init(void);
static void MX_TIM4_Init(void);
static void MX_IWDG_Init(void);
static void MX_CAN2_Init(void);
static void MX_NVIC_Init(void);
/* USER CODE BEGIN PFP */
void CanDataTx_CAN(uint16_t);
void ADC_ValueAverage(void);
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan1);
void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan2);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim->Instance==TIM4)
	{
		ms1++;
		ms2++;
		ms3++;
		ms4++;
		ms25++;

		CAN2_ms1++;

		if(ms25 == 1000){
			sec++; ms25 = 0;
		}
		//ADC_ValueAverage();
		
		//tenth_ms1++;
		if(rpm_first == 0){
			rpm_ch0_ms++;
			rpm_ch1_ms++;
			rpm_ch2_ms++;
			rpm_ch3_ms++;
		}
		if(rpm_ch0_ms > whl_spd_deadzone)
			WspdRR = 0;
		if(rpm_ch1_ms > whl_spd_deadzone)
			WspdRL = 0;
		if(rpm_ch2_ms > whl_spd_deadzone)
			WspdFR = 0;
		if(rpm_ch3_ms > whl_spd_deadzone)
			WspdFL = 0;
	}
	
	if(ms1 >= TxTime1)
	{
		CAN_BUFFER_SIZE = sizeof CAN1_TxData_1;
		CanDataTx_CAN(&Tx1Header, TX_ID1); // Construct CAN data header
		if(HAL_CAN_GetTxMailboxesFreeLevel(&hcan1) != 0){
			HAL_CAN_AddTxMessage(&hcan1, &Tx1Header, CAN1_TxData_1, &CAN1_mailbox);
			HAL_IWDG_Refresh(&hiwdg);
		}
		else{
			HAL_CAN_AbortTxRequest(&hcan1, 0);
			HAL_CAN_AbortTxRequest(&hcan1, 1);
			HAL_CAN_AbortTxRequest(&hcan1, 2);
		}
		//HAL_CAN_AddTxMessage(&hcan2, &Tx1Header, TxData_CAN3, &mailbox);
		
		ms1 = 0;
	}
	if(ms2 >= TxTime2)
	{
		CAN_BUFFER_SIZE = sizeof CAN1_TxData_2;
		CanDataTx_CAN(&Tx1Header, TX_ID2);
		if(HAL_CAN_GetTxMailboxesFreeLevel(&hcan1) != 0){
			HAL_CAN_AddTxMessage(&hcan1, &Tx1Header, CAN1_TxData_2, &CAN1_mailbox);
			HAL_IWDG_Refresh(&hiwdg);
		}
		else{
			HAL_CAN_AbortTxRequest(&hcan1, 0);
			HAL_CAN_AbortTxRequest(&hcan1, 1);
			HAL_CAN_AbortTxRequest(&hcan1, 2);
		}
		ms2 = 0;
	}
	if(ms3 >= TxTime3)
	{
		CAN_BUFFER_SIZE = sizeof CAN1_TxData_3;
		CanDataTx_CAN(&Tx1Header, TX_ID3);
		if(HAL_CAN_GetTxMailboxesFreeLevel(&hcan1) != 0){
			HAL_CAN_AddTxMessage(&hcan1, &Tx1Header, CAN1_TxData_3, &CAN1_mailbox);
			HAL_IWDG_Refresh(&hiwdg);
		}
		else{
			HAL_CAN_AbortTxRequest(&hcan1, 0);
			HAL_CAN_AbortTxRequest(&hcan1, 1);
			HAL_CAN_AbortTxRequest(&hcan1, 2);
		}
		ms3 = 0;
	}
	if(ms4 >= TxTime4)
	{
		CAN_BUFFER_SIZE = sizeof CAN1_TxData_4;
		CanDataTx_CAN(&Tx1Header, TX_ID4);
		if(HAL_CAN_GetTxMailboxesFreeLevel(&hcan1) != 0){
			HAL_CAN_AddTxMessage(&hcan1, &Tx1Header, CAN1_TxData_4, &CAN1_mailbox);
			HAL_IWDG_Refresh(&hiwdg);
		}
		else{
			HAL_CAN_AbortTxRequest(&hcan1, 0);
			HAL_CAN_AbortTxRequest(&hcan1, 1);
			HAL_CAN_AbortTxRequest(&hcan1, 2);
		}
		ms4 = 0;
	}
	if(enableRPM[0]){
		
		if(rpm_ch0_trig == 0){
			rpm_ave_0 = (((double)1/((double)rpm_ch0_ms/1000))/numOfWhlSpdTrig)*60;
			rpm_ch0_trig = 1;
			rpm_ch0_ms = 0; 
			
			if(rpm_ave_count_0 < rpm_count){
				rpm_ave_01 = rpm_ave_0 + rpm_ave_01;
				rpm_ave_count_0++;
			}
			if(rpm_ave_count_0 == rpm_count){
				WspdRR = ((rpm_ave_01/rpm_count)/6) * 1.477 * 3.6; // (2*pi*(tire D/2))*(rpm/60)
				rpm_ave_01 = 0;
				rpm_ave_count_0 = 0;
			}
		}
	}
	if(enableRPM[1]){
		
		if(rpm_ch1_trig == 0){
			rpm_ave_1 = (((double)1/((double)rpm_ch1_ms/1000))/numOfWhlSpdTrig)*60;
			rpm_ch1_trig = 1;
			rpm_ch1_ms = 0;
			
			if(rpm_ave_count_1 < rpm_count){
				rpm_ave_11 = rpm_ave_1 + rpm_ave_11;
				rpm_ave_count_1++;
			}
			if(rpm_ave_count_1 == rpm_count){
				WspdRL = ((rpm_ave_11/rpm_count)/6) * 1.477 * 3.6; // (2*pi*(tire D/2))*(rpm/60)
				rpm_ave_11 = 0;
				rpm_ave_count_1 = 0;
			}
		}
	}
	if(enableRPM[2]){
		// NOT USED FOR FRONT WHEEL SPEED SENSOR. THIS IS AN EXTRA FREQ INPUT RPM CALCULATION!
		if(rpm_ch2_trig == 0){
			EXTRA2 = (((double)1/((double)rpm_ch2_ms/1000))/numOfWhlSpdTrig)*60;
			rpm_ch2_trig = 1;
			rpm_ch2_ms = 0;
			
			if(rpm_ave_count_2 < rpm_count){
				rpm_ave_21 = rpm_ave_2 + rpm_ave_21;
				rpm_ave_count_2++;
			}
			if(rpm_ave_count_2 == rpm_count){
				EXTRA2 = rpm_ave_21/rpm_count;
				rpm_ave_21 = 0;
				rpm_ave_count_2 = 0;
			}
		}
	}
	if(enableRPM[3]){
		// NOT USED FOR FRONT WHEEL SPEED SENSOR. THIS IS AN EXTRA FREQ INPUT RPM CALCULATION!
		if(rpm_ch3_trig == 0){
			EXTRA1= (((double)1/((double)rpm_ch3_ms/1000))/numOfWhlSpdTrig)*60;
			rpm_ch3_trig = 1;
			rpm_ch3_ms = 0;
		
			if(rpm_ave_count_3 < rpm_count){
				rpm_ave_31 = rpm_ave_3 + rpm_ave_31;
				rpm_ave_count_3++;
			}
			if(rpm_ave_count_3 == rpm_count){
				EXTRA1 = rpm_ave_31/rpm_count;
				rpm_ave_31 = 0;
				rpm_ave_count_3 = 0;
			}
		}
	}
}

// Redirect message from CAN2 to CAN1
void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan2) {
	if (HAL_CAN_GetRxFifoFillLevel(hcan2, CAN_RX_FIFO1) > 0) {
		HAL_CAN_GetRxMessage(hcan2, CAN_RX_FIFO1, &RxHeader1, RxData1);

		// check if the message is from the correct ID

		// Redirect message to CAN1
		if(HAL_CAN_GetTxMailboxesFreeLevel(&hcan1) != 0){ // Check if mailbox is free to transmit, else do nothing
            HAL_CAN_AddTxMessage(&hcan1, &RxHeader1, RxData1, &CAN1_mailbox);
			HAL_IWDG_Refresh(&hiwdg);
		}
	}
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	 //HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_SET);
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
	
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
	HAL_Delay(2000);
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_CAN1_Init();
  MX_TIM4_Init();
  MX_IWDG_Init();
  MX_CAN2_Init();

  /* Initialize interrupts */
  MX_NVIC_Init();
  /* USER CODE BEGIN 2 */
	
	//J�rjestys
	//MX_DMA_Init();
  //MX_ADC1_Init();
	
	//HAL_ADCEx_Calibration_Start(&hadc1);
	HAL_TIM_Base_Start_IT(&htim4);
	HAL_ADC_Start_DMA(&hadc1, AD_DMA, 16);
	
  //HAL_TIM_IC_Start_IT(&htim10, TIM_CHANNEL_1);
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	//read mux set pins
	enableRPM[0] = HAL_GPIO_ReadPin(Mux_0_S_GPIO_Port, Mux_0_S_Pin);
	enableRPM[1] = HAL_GPIO_ReadPin(Mux_1_S_GPIO_Port, Mux_1_S_Pin);
	enableRPM[2] = HAL_GPIO_ReadPin(Mux_2_S_GPIO_Port, Mux_2_S_Pin);
	enableRPM[3] = HAL_GPIO_ReadPin(Mux_3_S_GPIO_Port, Mux_3_S_Pin);
	
  while (1)
  {
    for(int i = 0; i < 16; i++){
			Voltage[i] = (AD_DMA[i] * 5050) / 4096;
		}
		//Voltage[8] = (averageValue[8] * 3300) / 4096;
		//Voltage[11] = (averageValue[11] * 3300) / 4096;
		Voltage[1] = (AD_DMA[1] - 1296) * 1.793; //compensate offset from adc channel 1
		
		// Calculate brake pressure rear
		if(Voltage[0] > 500)			
			BrakepressRear = (uint8_t)(0.035*(double)Voltage[0]-17.5);
		else
			BrakepressRear = 0;
		//BrakepressRear = Voltage[0];
		
		// Log suspension potentiometers
		suspotRL = Voltage[1];
		suspotRR = Voltage[2];
		
		//CoolanttempLower = (uint16_t)(round((-41.88*log((float)averageValue[8])+612.43)));
		
		// Get coolant temperature from NTC
		Rntc[0] = ((double)Voltage[8]/((Vref_5V-(double)Voltage[8])/2400))-1000;
		CoolanttempLower = (uint16_t)(round(((-33.14*log(Rntc[0]))+274.35)));
		
		// Calculate coolant & oil pressure
		Coolantpressure = (uint16_t)(0.025*(double)Voltage[9]-12.5);
		Oilpress = (uint16_t)(0.025*(double)Voltage[10]-12.5);
		
		//Oiltemp = (uint16_t)(round((-41.88*log((float)averageValue[11])+612.43)));
		//Oiltemp = (uint16_t)(round(-37.36*log(((2400*5.05)/(5.05-((double)Voltage[11]/1000))-3400))+297.61+274.15)/10);
		
		// Get oil temperature from NTC
		Rntc[1] = ((double)Voltage[11]/((Vref_5V-(double)Voltage[11])/2400))-1000;
		Oiltemp = (uint16_t)(round(((-33.14*log(Rntc[1]))+274.35)));
		
		// Map extra inputs

		/*
		if(HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_2) == RESET){
			EXTRA1 = Voltage[6];}
		else if(HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_2) == SET) {
			EXTRA1 = 0;}
		if(HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_3) == RESET){
			EXTRA2 = Voltage[7];}
		else if(HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_3) == SET){
			EXTRA2 = 0;}
		*/
		
		// Extra1 =
		//emap_1 = (uint16_t)(0.025*(double)Voltage[7]-12.5);
		EXTRA2 = Voltage[7];
		
		// Extra3 =
		//emap_2 = (uint16_t)(0.025*(double)Voltage[3]-12.5);
		EXTRA3 = Voltage[3];
		
		// Extra4 =
		//map = (uint16_t)(0.0706*(double)Voltage[12]-28.235);
		EXTRA4 = Voltage[12];
		
		//EXTRA3 = Voltage[3];
		//EXTRA4 = Voltage[12];
		//Rntc[2] = ((double)Voltage[12]/((Vref_5V-(double)Voltage[12])/2400))-1000;
		
		// Extra5 =
		EXTRA5 = Voltage[13];
		
		// Extra6 =
		//EXTRA6 = Voltage[14];
		Rntc[2] = ((double)Voltage[14]/((Vref_5V-(double)Voltage[14])/2400))-1000;
		EXTRA6 = Rntc[2];
		
		EXTRA7 = Voltage[15];
		
		// Construct first CAN message: | Oiltemp | CoolanttempLower | Oilpress | Coolantpressure | EXTRA1 |
		CAN1_TxData_1[0] = Oiltemp;
		CAN1_TxData_1[1] = CoolanttempLower;
			
		CAN1_TxData_1[2] = Oilpress & 0x00FF; //8 low bits
		CAN1_TxData_1[3] = Oilpress >> 8; //4 high bits
			
		CAN1_TxData_1[4] = Coolantpressure & 0x00FF; //8 low bits
		CAN1_TxData_1[5] = Coolantpressure >> 8; //4 high bits
			
		CAN1_TxData_1[6] = EXTRA1 & 0x00FF; //8 low bits
		CAN1_TxData_1[7] = EXTRA1 >> 8; //4 high bits
		
		// Construct second CAN message: | suspotRL | suspotRR | WspdRL | WspdRR |
		if(suspotRL < 5500){
		CAN1_TxData_2[0] = suspotRL & 0x00FF; //8 low bits
		CAN1_TxData_2[1] = suspotRL >> 8; //4 high bits
		}
		if(suspotRR < 5500){
		CAN1_TxData_2[2] = suspotRR & 0x00FF; //8 low bits
		CAN1_TxData_2[3] = suspotRR >> 8; //4 high bits
		}
		//Filter glitches from wheel speed
		if(WspdRL < 2000){
			CAN1_TxData_2[4] = (uint16_t)WspdRL & 0x00FF; //8 low bits
			CAN1_TxData_2[5] = (uint16_t)WspdRL >> 8; //4 high bits
		}
		if(WspdRR < 2000){
			CAN1_TxData_2[6] = (uint16_t)WspdRR & 0x00FF; //8 low bits
			CAN1_TxData_2[7] = (uint16_t)WspdRR >> 8; //4 high bits
		}
		
		// Construct third CAN message: | EXTRA2 | EXTRA3 | EXTRA4 | < BrakepressRear<200 > |
		CAN1_TxData_3[0] = EXTRA2 & 0x00FF; //4 high bits
		CAN1_TxData_3[1] = EXTRA2 >> 8; //8 low bits
		
		CAN1_TxData_3[2] = EXTRA3 & 0x00FF; //4 high bits
		CAN1_TxData_3[3] = EXTRA3 >> 8; //8 low bits
		
		CAN1_TxData_3[4] = EXTRA4 & 0x00FF; //4 high bits
		CAN1_TxData_3[5] = EXTRA4 >> 8; //8 low bits
		
		if(BrakepressRear < 200)
			CAN1_TxData_3[6] = BrakepressRear; //8 low bits
		

		// Construct fourth CAN message: | EXTRA5 | EXTRA6 | EXTRA7 | < RPM > |
		CAN1_TxData_4[0] = EXTRA5 & 0x00FF; //8 low bits
		CAN1_TxData_4[1] = EXTRA5 >> 8; //4 high bits
		
		CAN1_TxData_4[2] = EXTRA6 & 0x00FF; //8 low bits
		CAN1_TxData_4[3] = EXTRA6 >> 8; //4 high bits
		
		CAN1_TxData_4[4] = EXTRA7 & 0x00FF; //8 low bits
		CAN1_TxData_4[5] = EXTRA7 >> 8; //4 high bits
		
		HAL_Delay(1);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV8;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief NVIC Configuration.
  * @retval None
  */
static void MX_NVIC_Init(void)
{
  /* DMA2_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream0_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream0_IRQn);
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */

  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = ENABLE;
  hadc1.Init.ContinuousConvMode = ENABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 16;
  hadc1.Init.DMAContinuousRequests = ENABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_0;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_1;
  sConfig.Rank = 2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = 3;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = 4;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = 5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_5;
  sConfig.Rank = 6;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = 7;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = 8;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = 9;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_9;
  sConfig.Rank = 10;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_10;
  sConfig.Rank = 11;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_11;
  sConfig.Rank = 12;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_12;
  sConfig.Rank = 13;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_13;
  sConfig.Rank = 14;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_14;
  sConfig.Rank = 15;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_15;
  sConfig.Rank = 16;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief CAN1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN1_Init(void)
{

  /* USER CODE BEGIN CAN1_Init 0 */

  /* USER CODE END CAN1_Init 0 */

  /* USER CODE BEGIN CAN1_Init 1 */

  /* USER CODE END CAN1_Init 1 */
  hcan1.Instance = CAN1;
  hcan1.Init.Prescaler = 6;
  hcan1.Init.Mode = CAN_MODE_NORMAL;
  hcan1.Init.SyncJumpWidth = CAN_SJW_1TQ;
  hcan1.Init.TimeSeg1 = CAN_BS1_3TQ;
  hcan1.Init.TimeSeg2 = CAN_BS2_3TQ;
  hcan1.Init.TimeTriggeredMode = DISABLE;
  hcan1.Init.AutoBusOff = DISABLE;
  hcan1.Init.AutoWakeUp = DISABLE;
  hcan1.Init.AutoRetransmission = ENABLE;
  hcan1.Init.ReceiveFifoLocked = DISABLE;
  hcan1.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CAN1_Init 2 */
	/*##-2- Configure the CAN Filter ###########################################*/
	sFilterConfig.FilterBank = 0;
	sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
	sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
	sFilterConfig.FilterIdHigh = 0xFFFF;
	sFilterConfig.FilterIdLow = 0x0000;
	sFilterConfig.FilterMaskIdHigh = 0xFFFF;
	sFilterConfig.FilterMaskIdLow = 0x0000;
	sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0;
	sFilterConfig.FilterActivation = ENABLE;
	sFilterConfig.SlaveStartFilterBank = 14;

	// Enable filter for CAN1
	if (HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig) != HAL_OK)
	{
		/* Filter configuration Error */
		Error_Handler();
	}



	/*##-3- Start the CAN peripheral ###########################################*/
	if (HAL_CAN_Start(&hcan1) != HAL_OK)
	{
		/* Start Error */
		Error_Handler();
	}

	// Enable CAN1 interrupt
	if (HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING | CAN_IT_TX_MAILBOX_EMPTY) != HAL_OK){
		/* Notification Error */
		Error_Handler();
	}
	  /* USER CODE END CAN1_Init 2 */

}

/**
  * @brief CAN2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN2_Init(void)
{

  /* USER CODE BEGIN CAN2_Init 0 */

  /* USER CODE END CAN2_Init 0 */

  /* USER CODE BEGIN CAN2_Init 1 */

  /* USER CODE END CAN2_Init 1 */
	hcan2.Instance = CAN2;
	hcan2.Init.Prescaler = 3;
	hcan2.Init.Mode = CAN_MODE_NORMAL;
	hcan2.Init.SyncJumpWidth = CAN_SJW_1TQ;
	hcan2.Init.TimeSeg1 = CAN_BS1_3TQ;
	hcan2.Init.TimeSeg2 = CAN_BS2_3TQ;
	hcan2.Init.TimeTriggeredMode = DISABLE;
	hcan2.Init.AutoBusOff = DISABLE;
	hcan2.Init.AutoWakeUp = DISABLE;
	hcan2.Init.AutoRetransmission = DISABLE;
	hcan2.Init.ReceiveFifoLocked = DISABLE;
	hcan2.Init.TransmitFifoPriority = DISABLE;
	if (HAL_CAN_Init(&hcan2) != HAL_OK)
	{
		Error_Handler();
	}
  /* USER CODE BEGIN CAN2_Init 2 */

	// Enable same filter for CAN2 as for CAN1
	if (HAL_CAN_ConfigFilter(&hcan2, &sFilterConfig) != HAL_OK)
	{
		/* Filter configuration Error */
		Error_Handler();
	}

	/*##-3- Start the CAN peripheral ###########################################*/
	if (HAL_CAN_Start(&hcan2) != HAL_OK)
	{
		/* Start Error */
		Error_Handler();
	}

	// Enable CAN2 interrupt
	if (HAL_CAN_ActivateNotification(&hcan2, CAN_IT_RX_FIFO0_MSG_PENDING | CAN_IT_TX_MAILBOX_EMPTY) != HAL_OK){
		/* Notification Error */
		Error_Handler();
	}
  /* USER CODE END CAN2_Init 2 */

}

/**
  * @brief IWDG Initialization Function
  * @param None
  * @retval None
  */
static void MX_IWDG_Init(void)
{

  /* USER CODE BEGIN IWDG_Init 0 */

  /* USER CODE END IWDG_Init 0 */

  /* USER CODE BEGIN IWDG_Init 1 */

  /* USER CODE END IWDG_Init 1 */
  hiwdg.Instance = IWDG;
  hiwdg.Init.Prescaler = IWDG_PRESCALER_4;
  hiwdg.Init.Reload = 999;
  if (HAL_IWDG_Init(&hiwdg) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN IWDG_Init 2 */

  /* USER CODE END IWDG_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 21000-1;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 1;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA2_CLK_ENABLE();

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, NTC_PullUp_EN_0_Pin|NTC_PullUp_EN_3_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, NTC_PullUp_EN_1_Pin|NTC_PullUp_EN_2_Pin|NTC_PullUp_EN_4_Pin|NTC_PullUp_EN_5_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(NTC_PullUp_EN_6_GPIO_Port, NTC_PullUp_EN_6_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, NTC_PullUp_EN_7_Pin|AD_Buf_VDD_15_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, AD_Buf_VDD_14_Pin|AD_Buf_VDD_13_Pin|AD_Buf_VDD_12_Pin|AD_Buf_VDD_11_Pin
                          |AD_Buf_VDD_10_Pin|AD_Buf_VDD_9_Pin|AD_Buf_VDD_8_Pin|AD_Buf_VDD_7_Pin
                          |Mux_0_S_Pin|Mux_1_S_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, AD_Buf_VDD_6_Pin|AD_Buf_VDD_5_Pin|AD_Buf_VDD_4_Pin|AD_Buf_VDD_3_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, AD_Buf_VDD_2_Pin|AD_Buf_VDD_1_Pin|AD_Buf_VDD_0_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOD, Mux_2_S_Pin|Mux_3_S_Pin|GPIO_PIN_6, GPIO_PIN_RESET);

  /*Configure GPIO pins : NTC_PullUp_EN_0_Pin NTC_PullUp_EN_1_Pin NTC_PullUp_EN_2_Pin NTC_PullUp_EN_3_Pin
                           NTC_PullUp_EN_4_Pin NTC_PullUp_EN_5_Pin */
  GPIO_InitStruct.Pin = NTC_PullUp_EN_0_Pin|NTC_PullUp_EN_1_Pin|NTC_PullUp_EN_2_Pin|NTC_PullUp_EN_3_Pin
                          |NTC_PullUp_EN_4_Pin|NTC_PullUp_EN_5_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /*Configure GPIO pins : NTC_PullUp_EN_6_Pin NTC_PullUp_EN_7_Pin */
  GPIO_InitStruct.Pin = NTC_PullUp_EN_6_Pin|NTC_PullUp_EN_7_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : AD_Buf_VDD_15_Pin */
  GPIO_InitStruct.Pin = AD_Buf_VDD_15_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(AD_Buf_VDD_15_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : AD_Buf_VDD_14_Pin AD_Buf_VDD_13_Pin AD_Buf_VDD_12_Pin AD_Buf_VDD_11_Pin
                           AD_Buf_VDD_10_Pin AD_Buf_VDD_9_Pin AD_Buf_VDD_8_Pin AD_Buf_VDD_7_Pin
                           Mux_0_S_Pin Mux_1_S_Pin Mux_2_S_Pin Mux_3_S_Pin
                           PD6 */
  GPIO_InitStruct.Pin = AD_Buf_VDD_14_Pin|AD_Buf_VDD_13_Pin|AD_Buf_VDD_12_Pin|AD_Buf_VDD_11_Pin
                          |AD_Buf_VDD_10_Pin|AD_Buf_VDD_9_Pin|AD_Buf_VDD_8_Pin|AD_Buf_VDD_7_Pin
                          |Mux_0_S_Pin|Mux_1_S_Pin|Mux_2_S_Pin|Mux_3_S_Pin
                          |GPIO_PIN_6;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

  /*Configure GPIO pins : AD_Buf_VDD_6_Pin AD_Buf_VDD_5_Pin AD_Buf_VDD_4_Pin AD_Buf_VDD_3_Pin */
  GPIO_InitStruct.Pin = AD_Buf_VDD_6_Pin|AD_Buf_VDD_5_Pin|AD_Buf_VDD_4_Pin|AD_Buf_VDD_3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : AD_Buf_VDD_2_Pin AD_Buf_VDD_1_Pin AD_Buf_VDD_0_Pin */
  GPIO_InitStruct.Pin = AD_Buf_VDD_2_Pin|AD_Buf_VDD_1_Pin|AD_Buf_VDD_0_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : MCU_Freq_3_Pin MCU_Freq_2_Pin */
  GPIO_InitStruct.Pin = MCU_Freq_3_Pin|MCU_Freq_2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : MCU_Freq_1_Pin MCU_Freq_0_Pin */
  GPIO_InitStruct.Pin = MCU_Freq_1_Pin|MCU_Freq_0_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI0_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI0_IRQn);

  HAL_NVIC_SetPriority(EXTI1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI1_IRQn);

  HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);

}

/* USER CODE BEGIN 4 */
void CanDataTx_CAN(CAN_TxHeaderTypeDef *header, uint16_t STDID)
{
	header.StdId = STDID;
	header.IDE = CAN_ID_STD;
	header.RTR = CAN_RTR_DATA;
	header.DLC = CAN_BUFFER_SIZE;
	header.TransmitGlobalTime = DISABLE;
}



void ADC_ValueAverage(void){
	
	if(averageCnt_ms < averageCount){
		averageTemp = averageTemp + AD_DMA[channel];
		averageCnt_ms++;
	}
	else{
		averageValue[channel] = averageTemp / averageCount;
		averageCnt_ms = 0;
		averageTemp = 0;
		if(channel < 16){
			channel++;
		}
		else{
			channel = 0;
		}
	}
}
/*
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan1)
{
  if (HAL_CAN_GetRxMessage(hcan1, CAN_RX_FIFO0, &RxHeader, RxData) != HAL_OK)
  {
    Error_Handler();
  }
	CAN_BUFFER_SIZE = RxHeader.DLC;
	CanDataTx_CAN(RxHeader.StdId);
	HAL_CAN_AddTxMessage(&hcan2, &Tx1Header, RxData, &mailbox);

}

void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan2)
{
  if (HAL_CAN_GetRxMessage(hcan2, CAN_RX_FIFO1, &RxHeader1, RxData1) != HAL_OK)
  {
    Error_Handler();
  }
	CAN_BUFFER_SIZE = RxHeader1.DLC;
	CanDataTx_CAN(RxHeader1.StdId);
	HAL_CAN_AddTxMessage(&hcan1, &Tx1Header, RxData1, &mailbox);

  
}
*/
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
