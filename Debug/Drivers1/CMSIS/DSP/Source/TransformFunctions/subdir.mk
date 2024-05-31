################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c 

S_UPPER_SRCS += \
../Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.S 

OBJS += \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o 

S_UPPER_DEPS += \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d 

C_DEPS += \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d \
./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers1/CMSIS/DSP/Source/TransformFunctions/%.o Drivers1/CMSIS/DSP/Source/TransformFunctions/%.su Drivers1/CMSIS/DSP/Source/TransformFunctions/%.cyclo: ../Drivers1/CMSIS/DSP/Source/TransformFunctions/%.c Drivers1/CMSIS/DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers1/CMSIS/DSP/Source/TransformFunctions/%.o: ../Drivers1/CMSIS/DSP/Source/TransformFunctions/%.S Drivers1/CMSIS/DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers1-2f-CMSIS-2f-DSP-2f-Source-2f-TransformFunctions

clean-Drivers1-2f-CMSIS-2f-DSP-2f-Source-2f-TransformFunctions:
	-$(RM) ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o
	-$(RM) ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.su ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.cyclo ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o ./Drivers1/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.su

.PHONY: clean-Drivers1-2f-CMSIS-2f-DSP-2f-Source-2f-TransformFunctions

