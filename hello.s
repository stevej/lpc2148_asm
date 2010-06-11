        .equiv GPIO_BASE_ADDR, 0x0E0028000
        .equiv IOCLR0, GPIO_BASE_ADDR + 0x0C
        .equiv IODIR0, GPIO_BASE_ADDR + 0x08
        .equiv RED_LED, 1 << 18

        .globl _start
_start:
        ldr r1, =IODIR0
        ldr r2, =RED_LED
        str r2, [r1]

        ldr r1, =IOCLR0
        ldr r2, =RED_LED
        add r2, r2, r1
        str r2, [r1]

_loop:
        b _loop