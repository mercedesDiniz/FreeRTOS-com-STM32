################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./libs/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./libs/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
libs/FreeRTOS/portable/GCC/ARM_CM4F/%.o libs/FreeRTOS/portable/GCC/ARM_CM4F/%.su libs/FreeRTOS/portable/GCC/ARM_CM4F/%.cyclo: ../libs/FreeRTOS/portable/GCC/ARM_CM4F/%.c libs/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Mercedes Diniz/Documents/LASSE/Enguia/treinamentos/freertos_stm32/projetos/l476rg_hard_FreeRTOS/libs/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Mercedes Diniz/Documents/LASSE/Enguia/treinamentos/freertos_stm32/projetos/l476rg_hard_FreeRTOS/libs/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libs-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-libs-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./libs/FreeRTOS/portable/GCC/ARM_CM4F/port.cyclo ./libs/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./libs/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./libs/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-libs-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

