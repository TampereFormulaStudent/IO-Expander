################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.c \
../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.c 

OBJS += \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.o \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.o 

C_DEPS += \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.d \
./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/%.o Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/%.su Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/%.cyclo: ../Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/%.c Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-RefLibs-2f-src-2f-ControllerFunctions

clean-Drivers1-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-RefLibs-2f-src-2f-ControllerFunctions:
	-$(RM) ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.cyclo ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.d ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.o ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/pid.su ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.cyclo ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.d ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.o ./Drivers1/CMSIS/DSP/DSP_Lib_TestSuite/RefLibs/src/ControllerFunctions/sin_cos.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-DSP-2f-DSP_Lib_TestSuite-2f-RefLibs-2f-src-2f-ControllerFunctions

