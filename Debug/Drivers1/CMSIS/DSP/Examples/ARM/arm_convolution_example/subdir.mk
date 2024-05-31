################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.c \
../Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.c 

OBJS += \
./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.o \
./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.o 

C_DEPS += \
./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.d \
./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/%.o Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/%.su Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/%.cyclo: ../Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/%.c Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_convolution_example

clean-Drivers1-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_convolution_example:
	-$(RM) ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.cyclo ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.d ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.o ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/arm_convolution_example_f32.su ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.cyclo ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.d ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.o ./Drivers1/CMSIS/DSP/Examples/ARM/arm_convolution_example/math_helper.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_convolution_example

