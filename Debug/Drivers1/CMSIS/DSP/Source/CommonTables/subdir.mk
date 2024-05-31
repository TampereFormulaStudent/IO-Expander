################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.c 

OBJS += \
./Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.o 

C_DEPS += \
./Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/DSP/Source/CommonTables/%.o Drivers1/CMSIS/DSP/Source/CommonTables/%.su Drivers1/CMSIS/DSP/Source/CommonTables/%.cyclo: ../Drivers1/CMSIS/DSP/Source/CommonTables/%.c Drivers1/CMSIS/DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

clean-Drivers1-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.cyclo ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.d ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.o ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_common_tables.su ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.cyclo ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.d ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.o ./Drivers1/CMSIS/DSP/Source/CommonTables/arm_const_structs.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

