arm-none-eabi-as -o hello.o hello.s 
arm-none-eabi-ld -o hello.elf hello.o
arm-none-eabi-objcopy -O binary hello.elf hello.bin
mv hello.bin FW.SFE

