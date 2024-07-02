################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c \
../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.d \
./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/ComplexMathFunctions/%.o Drivers/CMSIS/DSP/Source/ComplexMathFunctions/%.su Drivers/CMSIS/DSP/Source/ComplexMathFunctions/%.cyclo: ../Drivers/CMSIS/DSP/Source/ComplexMathFunctions/%.c Drivers/CMSIS/DSP/Source/ComplexMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Core/Inc" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/RTOS2/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM0" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM3" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM4_FP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/NN_Lib_Tests/nn_test/RTE/_ARMCM7_SP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Core_A/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/Core/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/DSP/Include" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM0" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM3" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM4_FP" -I"/home/remi/RxmCloud/School/TFS/IO-Expander/Drivers/CMSIS/NN/Examples/ARM/arm_nn_examples/gru/RTE/_ARMCM7_SP" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-ComplexMathFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-ComplexMathFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctions.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/ComplexMathFunctionsF16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d
	-$(RM) ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.su ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.cyclo ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.d ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o ./Drivers/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-ComplexMathFunctions

