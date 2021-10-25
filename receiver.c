#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define temp r16

int main() {
    SPL |= 0xDF;
    MCUCR  |= 0xA0;

    asm("ldi r16, 0xDE");
    asm("sts 0x0400,r16");

    return 0;
}