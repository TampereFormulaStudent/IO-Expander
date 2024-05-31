################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.c \
../Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.c 

OBJS += \
./Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.o \
./Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.o 

C_DEPS += \
./Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.d \
./Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/Core/Template/ARMv8-M/%.o Drivers1/CMSIS/Core/Template/ARMv8-M/%.su Drivers1/CMSIS/Core/Template/ARMv8-M/%.cyclo: ../Drivers1/CMSIS/Core/Template/ARMv8-M/%.c Drivers1/CMSIS/Core/Template/ARMv8-M/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-Core-2f-Template-2f-ARMv8-2d-M

clean-Drivers1-2f-CMSIS-2f-Core-2f-Template-2f-ARMv8-2d-M:
	-$(RM) ./Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.cyclo ./Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.d ./Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.o ./Drivers1/CMSIS/Core/Template/ARMv8-M/main_s.su ./Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.cyclo ./Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.d ./Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.o ./Drivers1/CMSIS/Core/Template/ARMv8-M/tz_context.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-Core-2f-Template-2f-ARMv8-2d-M

