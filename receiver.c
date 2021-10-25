#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

int main() {
    SPL |= 0xDF;
    MCUCR  |= 0xA0;

    uint8_t *mem = (uint8_t*) 0x0400;

    *mem++ = 0xDE;
    *mem = 0xAD;

    char *str = "SUPER KOSHKA PROTES)))";

    strcpy(mem, str);

    return 0;
}
