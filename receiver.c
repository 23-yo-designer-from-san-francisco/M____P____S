#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>

#define XRAM_START_ADDR 0x0260
#define THREAD1_LENGTH 20  // 3 threads, 20 numbers each
#define THREAD2_LENGTH 30  // 2 threads, 30 numbers each

#define F_CPU 4000000UL
#define BAUDRATE 300UL
#define BAUDDIVIDER (F_CPU / (BAUDRATE * 16) - 1)

#define BTN0 !(PIND & (1 << 0))
#define BTN1 !(PIND & (1 << 2))
#define BTN2 !(PIND & (1 << 3))
#define BTN3 !(PIND & (1 << 4))
#define BTN4 !(PIND & (1 << 5))

uint8_t thr0_20[] = "Their combination of";
uint8_t thr1_20[] = " easily customizable";
uint8_t thr2_20[] = " peripherals and the";

uint8_t thr0_30[] = " industry's most code-efficien";
uint8_t thr1_30[] = "t architecture enable you to b";

void USART_Init(void) {
  // Set baud rate
  UBRRH = (uint8_t)(BAUDDIVIDER >> 8);
  UBRRL = (uint8_t)(BAUDDIVIDER);
  // ?
  UCSRA = 0;
  // Enable receiver and transmitter and disable interrupts
  UCSRB = (1 << RXEN) | (1 << TXEN) | (0 << RXCIE) | (0 << TXCIE);
  // Set frame format to 8 data bits, no parity, 1 stop bit
  UCSRC = (1 << URSEL) | (1 << UCSZ0) | (1 << UCSZ1);
}

void USART_send(uint8_t u8Data) {
  while ((UCSRA & (1 << UDRE)) == 0)
    ;
  UDR = u8Data;
}

void calculate_avg() {}

int main() {
  SPL |= 0xDF;          // Set stack pointer
  MCUCR |= 0b11100000;  // Set sleep mode bits 5 and 7 (Standby mode)
                        // [https://studfile.net/preview/1465917/page:8/]

  USART_Init();

  // Setup buttons
  DDRD = DDRD & ~(1 << 0);
  DDRD = DDRD & ~(1 << 2);
  DDRD = DDRD & ~(1 << 3);
  DDRD = DDRD & ~(1 << 4);
  DDRD = DDRD & ~(1 << 5);
  PORTD |= (1 << 0) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5);

  for (;;) {
    if (BTN0) USART_send('0');
    if (BTN1) USART_send('1');
    if (BTN4) {
      uint8_t *mem = (uint8_t *)XRAM_START_ADDR;
      uint8_t *mem2 = (uint8_t *)XRAM_START_ADDR + 60;

      uint8_t i = 0;
      // ????????? 3 ??????? ?? 20 ?????
      for (; i != THREAD1_LENGTH; ++i) {
        mem[i] = thr0_20[i];
      }
      mem += i;
      i = 0;
      for (; i != THREAD1_LENGTH; ++i) {
        mem[i] = thr1_20[i];
      }
      mem += i;
      i = 0;
      for (; i != THREAD1_LENGTH; ++i) {
        mem[i] = thr2_20[i];
      }

      // ????????? 2 ??????? ?? 30 ?????
      i = 0;
      for (; i != THREAD2_LENGTH; ++i) {  // ????????? 2 ??????? ?? 30 ?????
        mem2[i] = thr0_30[i];
      }
      mem2 += i;
      i = 0;
      for (; i != THREAD2_LENGTH; ++i) {  // ????????? 2 ??????? ?? 30 ?????
        mem2[i] = thr1_30[i];
      }

      mem2 += i;

      double *result = (double *)0x550;
    }
  }
}