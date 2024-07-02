################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Application/User/Startup/startup_stm32f407vetx.s 

OBJS += \
./Application/User/Startup/startup_stm32f407vetx.o 

S_DEPS += \
./Application/User/Startup/startup_stm32f407vetx.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Startup/%.o: ../Application/User/Startup/%.s Application/User/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Core/Inc" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/RTOS2/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM0" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM3" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM4_FP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM7_SP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Core_A/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Core/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/DSP/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM0" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM3" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM4_FP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM7_SP" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Application-2f-User-2f-Startup

clean-Application-2f-User-2f-Startup:
	-$(RM) ./Application/User/Startup/startup_stm32f407vetx.d ./Application/User/Startup/startup_stm32f407vetx.o

.PHONY: clean-Application-2f-User-2f-Startup

