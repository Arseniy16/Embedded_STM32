arm-none-eabi-gcc -mcpu=cortex-m7 -mlittle-endian -mthumb -g -I./Inc -DSTM32F746xx -c ./Src/main.c -o ./Src/main.o
arm-none-eabi-gcc -mcpu=cortex-m7 -mlittle-endian -mthumb -g -I./Inc -c ./startup_stm32f746xx.s -o ./startup_stm32f746xx.o
arm-none-eabi-gcc -mcpu=cortex-m7 -mlittle-endian -mthumb -T./STM32F746NGHx_FLASH.ld -Wl,--gc-section ./Src/main.o ./startup_stm32f746xx.o -o main.elf