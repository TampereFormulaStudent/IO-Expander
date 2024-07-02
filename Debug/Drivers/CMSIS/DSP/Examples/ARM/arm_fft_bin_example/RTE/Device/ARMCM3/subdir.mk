################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.c \
../Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.c 

OBJS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.o \
./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.d \
./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/%.o Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/%.su Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/%.cyclo: ../Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/%.c Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Core/Inc" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/RTOS2/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM0" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM3" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM4_FP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM7_SP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Core_A/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Core/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/DSP/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM0" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM3" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM4_FP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM7_SP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_fft_bin_example-2f-RTE-2f-Device-2f-ARMCM3

clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_fft_bin_example-2f-RTE-2f-Device-2f-ARMCM3:
	-$(RM) ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/startup_ARMCM3.su ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.cyclo ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.d ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.o ./Drivers/CMSIS/DSP/Examples/ARM/arm_fft_bin_example/RTE/Device/ARMCM3/system_ARMCM3.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Examples-2f-ARM-2f-arm_fft_bin_example-2f-RTE-2f-Device-2f-ARMCM3

