#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>

// CONTROL SIGNALS
#define BTN0 !(PINB & (1 << 0))

#define F_CPU 8000000UL

#define RCVD (PINB & (1 << PB3))

uint8_t idx[] = {0, 0};

uint8_t ch1[] = { // 0-19
    34, 2, 3, 4, 99, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
    5, // 16

    // 20-39
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, // 10
    // 40-59
    1, 2, 3, 4, 5, 6, 7, 8, 21, 97, 11, 12, 13, 14, 43, 16, 17, 80, 80,
    20}; // 23

uint8_t ch2[] = {
    // 0-29
    1, 2, 3, 4, 5, 6, 7, 8, 9, 80, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
    22, 23, 24, 25, 26, 27, 28, 40, 30, // 18
    // 30-59
    1, 2, 3, 4, 50, 60, 70, 80, 90, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30 // 26
};

void setup_control() {
  // Set up PB0 to work as input (button)
  DDRB = DDRB & ~(1 << 0);
  PORTB |= (1 << 0);
}

void setup_output() {
  // DATA OUT
  DDRA = 0xFF;
  DDRC = 0XFF;

  // PING OUT
  DDRB |= (1 << PB2);

  // PONG IN
  DDRB &= ~(1 << PB1);

  // FINISH IN
  DDRB &= ~(1 << PB3);
}

void setup() {
  setup_control();
  setup_output();
}

int main() {
  SPL |= 0x10; // Set stack pointer
  setup();
  _Bool isPORTA = 1;
  for (;;) {
    PORTB = (1 << PB2);

    if (PINB & (1 << PB1)) {
      PORTB = 0;
      if (isPORTA) {
        PORTC = 0;
        PORTA = ch1[idx[0]++];
      } else {
        PORTA = 0;
        PORTC = ch2[idx[1]++];
      }
      isPORTA = !isPORTA;
      while (!RCVD) {
      }
    }
  }

  return 0;
}
