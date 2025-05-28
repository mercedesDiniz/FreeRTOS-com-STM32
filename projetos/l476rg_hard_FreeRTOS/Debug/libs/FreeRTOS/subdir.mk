################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/FreeRTOS/croutine.c \
../libs/FreeRTOS/event_groups.c \
../libs/FreeRTOS/list.c \
../libs/FreeRTOS/queue.c \
../libs/FreeRTOS/stream_buffer.c \
../libs/FreeRTOS/tasks.c \
../libs/FreeRTOS/timers.c 

OBJS += \
./libs/FreeRTOS/croutine.o \
./libs/FreeRTOS/event_groups.o \
./libs/FreeRTOS/list.o \
./libs/FreeRTOS/queue.o \
./libs/FreeRTOS/stream_buffer.o \
./libs/FreeRTOS/tasks.o \
./libs/FreeRTOS/timers.o 

C_DEPS += \
./libs/FreeRTOS/croutine.d \
./libs/FreeRTOS/event_groups.d \
./libs/FreeRTOS/list.d \
./libs/FreeRTOS/queue.d \
./libs/FreeRTOS/stream_buffer.d \
./libs/FreeRTOS/tasks.d \
./libs/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
libs/FreeRTOS/%.o libs/FreeRTOS/%.su libs/FreeRTOS/%.cyclo: ../libs/FreeRTOS/%.c libs/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Mercedes Diniz/Documents/LASSE/Enguia/treinamentos/freertos_stm32/projetos/l476rg_hard_FreeRTOS/libs/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/Mercedes Diniz/Documents/LASSE/Enguia/treinamentos/freertos_stm32/projetos/l476rg_hard_FreeRTOS/libs/FreeRTOS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libs-2f-FreeRTOS

clean-libs-2f-FreeRTOS:
	-$(RM) ./libs/FreeRTOS/croutine.cyclo ./libs/FreeRTOS/croutine.d ./libs/FreeRTOS/croutine.o ./libs/FreeRTOS/croutine.su ./libs/FreeRTOS/event_groups.cyclo ./libs/FreeRTOS/event_groups.d ./libs/FreeRTOS/event_groups.o ./libs/FreeRTOS/event_groups.su ./libs/FreeRTOS/list.cyclo ./libs/FreeRTOS/list.d ./libs/FreeRTOS/list.o ./libs/FreeRTOS/list.su ./libs/FreeRTOS/queue.cyclo ./libs/FreeRTOS/queue.d ./libs/FreeRTOS/queue.o ./libs/FreeRTOS/queue.su ./libs/FreeRTOS/stream_buffer.cyclo ./libs/FreeRTOS/stream_buffer.d ./libs/FreeRTOS/stream_buffer.o ./libs/FreeRTOS/stream_buffer.su ./libs/FreeRTOS/tasks.cyclo ./libs/FreeRTOS/tasks.d ./libs/FreeRTOS/tasks.o ./libs/FreeRTOS/tasks.su ./libs/FreeRTOS/timers.cyclo ./libs/FreeRTOS/timers.d ./libs/FreeRTOS/timers.o ./libs/FreeRTOS/timers.su

.PHONY: clean-libs-2f-FreeRTOS

