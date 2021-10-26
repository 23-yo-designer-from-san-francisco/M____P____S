#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define THREAD1_LENGTH 20  // 3 threads, 20 numbers each
#define THREAD2_LENGTH 30  // 2 threads, 30 numbers each

uint8_t thr0_20[] = "Offering unsurpassed";
uint8_t thr1_20[] = "performance, power e";
uint8_t thr2_20[] = "fficiency and flexibi";

uint8_t thr0_30[] = "lity, they are an excellent ch";
uint8_t thr1_30[] = "oice for a variety of embedded";


int main() {
    SPL |= 0xDF; // Set stack pointer
    MCUCR |= 0b11100000; // Set sleep mode bits 5 and 7 (Standby mode) [https://studfile.net/preview/1465917/page:8/]

    uint8_t *mem = (uint8_t*) 0x0400;
    uint8_t *mem2 = (uint8_t*) 0x0400 + 60;

    uint8_t i = 0;
    // Получение 3 потоков по 20 чисел
    for (; i != THREAD1_LENGTH; ++i) {
        mem[i] = thr0_20[i];
    }
    mem += i + 1;
    i = 0;
    for (; i != THREAD1_LENGTH; ++i) {
        mem[i] = thr1_20[i];
    }
    mem += i + 1;
    i = 0;
    for (; i != THREAD1_LENGTH; ++i) {
        mem[i] = thr2_20[i];
    }

    // Получение 2 потоков по 30 чисел
    i = 0;
    for (; i != THREAD2_LENGTH; ++i) {  // Получение 2 потоков по 30 чисел
        mem2[i] = thr0_30[i];
    }
    mem2 += i + 1;
    i = 0;
    for (; i != THREAD2_LENGTH; ++i) {  // Получение 2 потоков по 30 чисел
        mem2[i] = thr0_30[i];
    }

    return 0;
}
