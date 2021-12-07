#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include "tm1637.h"

// EXTERNAL RAM CONFIG
#define XRAM_START_ADDR 0x0260

// DISPLAY CONFIG
#define DISPLAY_RESOLUTION 4

// THREADS CONFIG
#define THREAD_COUNT 5
#define THREAD1_LENGTH 20 // 3 threads, 20 numbers each
#define THREAD2_LENGTH 30 // 2 threads, 30 numbers each

// FREQ + USART
#define F_CPU 8000000UL
#define BAUDRATE 3600UL
#define BAUDDIVIDER (F_CPU / (BAUDRATE * 16) - 1)

// BUTTONS
#define BTN0 !(PIND & (1 << 0))
#define BTN1 !(PIND & (1 << 2))
#define BTN2 !(PIND & (1 << 3))
#define BTN3 !(PIND & (1 << 4))
#define BTN4 !(PIND & (1 << 5))

// PORT EXPANDER | SPI
#define SPI_PORT PORTB
#define SPI_DDR DDRB
#define SPI_CS PB4
// MCP23S17 SPI Slave Device
#define SPI_SLAVE_ID 0x40
#define SPI_SLAVE_ADDR 0x00 // A2=0,A1=0,A0=0
#define SPI_SLAVE_WRITE 0x00
#define SPI_SLAVE_READ 0x01
// MCP23S17 Registers Definition for BANK=0 (default)
#define IODIRA 0x00
#define IODIRB 0x01
#define IOCONA 0x0A
#define GPPUA 0x0C
#define GPPUB 0x0D
#define GPIOA 0x12
#define GPIOB 0x13

// Intercom
#define PING PINB &(1 << PB2)


// Define MCP23S17 Slave Emulation Mode:
//
//   0 - Real MCP23S17:
//       Only works on real Microchip MCP23S17 SPI I/O
//   1 - ATMega168 SPI Slave (MCP23S17 Emulation):
//       Both works on real MCP23S17 and ATMega168 Slave Mode
//
// ATMega168 Crystal Frequency: 11059200 Hz
//

#define MCP23S17_EMULATION 1

void SPI_Write(unsigned char addr, unsigned char data) {
  // Activate the CS pin
  SPI_PORT &= ~(1 << SPI_CS);
  // Start MCP23S17 OpCode transmission
  SPDR = SPI_SLAVE_ID | ((SPI_SLAVE_ADDR << 1) & 0x0E) | SPI_SLAVE_WRITE;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;
  // Start MCP23S17 Register Address transmission
  SPDR = addr;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;

  // Start Data transmission
  SPDR = data;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;
  // CS pin is not active
  SPI_PORT |= (1 << SPI_CS);
}
unsigned char SPI_Read(unsigned char addr) {
  // Activate the CS pin
  SPI_PORT &= ~(1 << SPI_CS);
  // Start MCP23S17 OpCode transmission
  SPDR = SPI_SLAVE_ID | ((SPI_SLAVE_ADDR << 1) & 0x0E) | SPI_SLAVE_READ;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;
#if MCP23S17_EMULATION
  _delay_us(1);
#endif
  // Start MCP23S17 Address transmission
  SPDR = addr;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;

#if MCP23S17_EMULATION
  _delay_us(1);
#endif
  // Send Dummy transmission for reading the data
  SPDR = 0x00;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;

  // CS pin is not active
  SPI_PORT |= (1 << SPI_CS);
  return (SPDR);
}

void USART_Init(void) {
  // Set baud rate
  UBRRH = (uint8_t)(BAUDDIVIDER >> 8);
  UBRRL = (uint8_t)(BAUDDIVIDER);
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

uint8_t *mem = (uint8_t *)XRAM_START_ADDR;
uint8_t *mem2 = (uint8_t *)XRAM_START_ADDR + 60;

void store_data() {
  uint32_t i = 0, j = 0;
  _Bool is20 = 1;
  _Bool isGPA = 1;
  while (i <= 60 && j <= 60) {
    if (PING) {
      PORTE &= (0 << PE2);
      PORTB |= (1 << PB3);
      uint8_t value;
      do {
        value = SPI_Read(isGPA ? GPIOA : GPIOB);
      } while (!value);  // loops
      PORTE |= (1 << PE2);
      isGPA = !isGPA;
      PORTB &= (0 << PB3);
      if (is20) {
        mem[i++] = value;
      } else {
        mem2[j++] = value;
      }
      is20 = !is20;
    }
  }
}

unsigned char SPI_WriteRead(unsigned char dataout) {
  unsigned char datain;
  // Start transmission (MOSI)
  SPDR = dataout;
  // Wait for transmission complete
  while (!(SPSR & (1 << SPIF)))
    ;
  // Get return Value;
  datain = SPDR;
  // Latch the Output using rising pulse to the RCK Pin
  SPI_PORT |= (1 << SPI_CS);
  _delay_us(1); // Hold pulse for 1 micro second
  // Disable Latch
  SPI_PORT &= ~(1 << SPI_CS);
  // Return Serial In Value (MISO)
  return datain;
}

void setup_buttons() {
  DDRD = DDRD & ~(1 << 0);
  DDRD = DDRD & ~(1 << 2);
  DDRD = DDRD & ~(1 << 3);
  DDRD = DDRD & ~(1 << 4);
  DDRD = DDRD & ~(1 << 5);
  PORTD |= (1 << 0) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5);
}

void setup_SPI() {
  SPI_DDR = (1 << PB5) | (1 << PB7) | (1 << PB4);
  SPI_PORT |= (1 << SPI_CS);
#if MCP23S17_EMULATION
  // Enable SPI, Master, set clock rate fck/64
  SPCR = (1 << SPE) | (1 << MSTR) | (1 << SPR1);
#else
  // Enable SPI, Master, set clock rate fck/2
  SPCR = (1 << SPE) | (1 << MSTR);
  SPSR |= (1 << SPI2X);
#endif

  // Initialize the MCP23S17 SPI I/O Expander
  SPI_Write(IOCONA, 0x28); // I/O Control Register: BANK=0, SEQOP=1, HAEN=1
                           // (Enable Addressing)
  SPI_Write(IODIRA, 0xFF); // GPIOA As Input
  SPI_Write(IODIRB, 0xFF); // GPIOB As Input
  SPI_Write(GPPUB, 0xFF);  // Enable Pull-up Resistor on GPIOB
  SPI_Write(GPIOA, 0xFF);  // Reset Output on GPIOA
}

void calculate_average(int *average) {
  unsigned int i = 0;
  for (; i != THREAD1_LENGTH; ++i) {
    average[0] += mem[i];
    average[1] += mem[i + THREAD1_LENGTH];
    average[2] += mem[i + 2 * THREAD1_LENGTH];
  }
  i = 0;
  for (; i != THREAD2_LENGTH; ++i) {
    average[3] += mem2[i];
    average[4] += mem2[i + THREAD2_LENGTH];
  }

  average[0] /= THREAD1_LENGTH;
  average[1] /= THREAD1_LENGTH;
  average[2] /= THREAD1_LENGTH;

  average[3] /= THREAD2_LENGTH;
  average[4] /= THREAD2_LENGTH;
}

void send_average(int *average) {
  char buffer[50];
  uint8_t i = 0;
  for (; i != THREAD_COUNT; ++i) {
    int n = sprintf(buffer, "Thread %d average is %d\r\n", i + 1, average[i]);
    uint8_t j = 0;
    for (; j != n; ++j) {
      USART_send(buffer[j]);
    }
  }
}

void setup_intercom() {
  // PING PORT
  DDRB &= ~(1 << PING);
  
  // PONG PORT
  DDRB |= (1 << PB3);
  PORTB |= (0 << PB3);

  // FINISH PORT
  DDRE |= (1 << PE2);
  PORTE |= (0 << PE2);
}

int main() {
  SPL |= 0x240;         // Set stack pointer
  MCUCR |= 0b11100000; // Set sleep mode bits 5 and 7 (Standby mode)
                       // [https://studfile.net/preview/1465917/page:8/]
  USART_Init();
  setup_buttons();
  setup_SPI();
  TM1637_init(1, 5);
  setup_intercom();

  store_data();

  int average[THREAD_COUNT];

  calculate_average(&average);
  send_average(&average);

  for (;;) {
    if (BTN0) {
      uint8_t number = average[0];
      int i = DISPLAY_RESOLUTION - 1;
      for (; i != -1; --i) {
        if (number != 0) {
          TM1637_display_digit(i, number % 10);
          number /= 10;
        } else {
          break;
        }
      }
    } else if (BTN1) {
      uint8_t number = average[1];
      int i = DISPLAY_RESOLUTION - 1;
      for (; i != -1; --i) {
        if (number != 0) {
          TM1637_display_digit(i, number % 10);
          number /= 10;
        } else {
          break;
        }
      }
    } else if (BTN2) {
      uint8_t number = average[2];
      int i = DISPLAY_RESOLUTION - 1;
      for (; i != -1; --i) {
        if (number != 0) {
          TM1637_display_digit(i, number % 10);
          number /= 10;
        } else {
          break;
        }
      }
    } else if (BTN3) {
      uint8_t number = average[3];
      int i = DISPLAY_RESOLUTION - 1;
      for (; i != -1; --i) {
        if (number != 0) {
          TM1637_display_digit(i, number % 10);
          number /= 10;
        } else {
          break;
        }
      }
    } else if (BTN4) {
      uint8_t number = average[4];
      int i = DISPLAY_RESOLUTION - 1;
      for (; i != -1; --i) {
        if (number != 0) {
          TM1637_display_digit(i, number % 10);
          number /= 10;
        } else {
          break;
        }
      }
    }
  }
}
