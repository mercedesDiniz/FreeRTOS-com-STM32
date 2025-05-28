################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./libs/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./libs/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
libs/FreeRTOS/portable/MemMang/%.o libs/FreeRTOS/portable/MemMang/%.su libs/FreeRTOS/portable/MemMang/%.cyclo: ../libs/FreeRTOS/portable/MemMang/%.c libs/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Mercedes Diniz/Documents/LASSE/Enguia/treinamentos/freertos_stm32/projetos/l476rg_hard_FreeRTOS/libs/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Mercedes Diniz/Documents/LASSE/Enguia/treinamentos/freertos_stm32/projetos/l476rg_hard_FreeRTOS/libs/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libs-2f-FreeRTOS-2f-portable-2f-MemMang

clean-libs-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./libs/FreeRTOS/portable/MemMang/heap_4.cyclo ./libs/FreeRTOS/portable/MemMang/heap_4.d ./libs/FreeRTOS/portable/MemMang/heap_4.o ./libs/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-libs-2f-FreeRTOS-2f-portable-2f-MemMang

