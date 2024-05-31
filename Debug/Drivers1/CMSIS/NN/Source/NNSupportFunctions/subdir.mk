################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c \
../Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c \
../Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c \
../Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c \
../Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c 

OBJS += \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o 

C_DEPS += \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d \
./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/NN/Source/NNSupportFunctions/%.o Drivers1/CMSIS/NN/Source/NNSupportFunctions/%.su Drivers1/CMSIS/NN/Source/NNSupportFunctions/%.cyclo: ../Drivers1/CMSIS/NN/Source/NNSupportFunctions/%.c Drivers1/CMSIS/NN/Source/NNSupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers1-2f-CMSIS-2f-NN-2f-Source-2f-NNSupportFunctions

clean-Drivers1-2f-CMSIS-2f-NN-2f-Source-2f-NNSupportFunctions:
	-$(RM) ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.cyclo ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.su ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.cyclo ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.su ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.cyclo ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.su ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.cyclo ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.su ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.cyclo ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o ./Drivers1/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-NN-2f-Source-2f-NNSupportFunctions

