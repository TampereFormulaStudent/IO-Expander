################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.c \
../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.c \
../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.c 

OBJS += \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.o \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.o \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.o 

C_DEPS += \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.d \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.d \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/%.o Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/%.su Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/%.cyclo: ../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/%.c Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-Common-2f-src

clean-Drivers1-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-Common-2f-src:
	-$(RM) ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.cyclo ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.d ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.o ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/all_tests.su ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.cyclo ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.d ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.o ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/main.su ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.cyclo ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.d ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.o ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/Common/src/math_helper.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-Common-2f-src

