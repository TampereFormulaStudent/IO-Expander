################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/RTOS2/Source/os_systick.c \
../Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.c \
../Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.c 

OBJS += \
./Drivers1/CMSIS/RTOS2/Source/os_systick.o \
./Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.o \
./Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.o 

C_DEPS += \
./Drivers1/CMSIS/RTOS2/Source/os_systick.d \
./Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.d \
./Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/RTOS2/Source/%.o Drivers1/CMSIS/RTOS2/Source/%.su Drivers1/CMSIS/RTOS2/Source/%.cyclo: ../Drivers1/CMSIS/RTOS2/Source/%.c Drivers1/CMSIS/RTOS2/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-RTOS2-2f-Source

clean-Drivers1-2f-CMSIS-2f-RTOS2-2f-Source:
	-$(RM) ./Drivers1/CMSIS/RTOS2/Source/os_systick.cyclo ./Drivers1/CMSIS/RTOS2/Source/os_systick.d ./Drivers1/CMSIS/RTOS2/Source/os_systick.o ./Drivers1/CMSIS/RTOS2/Source/os_systick.su ./Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.cyclo ./Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.d ./Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.o ./Drivers1/CMSIS/RTOS2/Source/os_tick_gtim.su ./Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.cyclo ./Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.d ./Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.o ./Drivers1/CMSIS/RTOS2/Source/os_tick_ptim.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-RTOS2-2f-Source

