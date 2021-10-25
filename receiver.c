#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>

#define F_CPU   1000000UL
#define DELAY 1000

int main() {
//    DDRB &= ~_BV(PB0); //set PB0 to input
//    PORTB |= _BV(PB0); //enable pullup on input
        DDRB |= (1 << DDB3);     // set pin 3 of Port B as output
        DDRB |= (1 << DDB4);     // set pin 4 of Port B as output
        DDRB |= (1 << DDB5);     // set pin 5 of Port B as output
        DDRB |= (1 << DDB6);     // set pin 6 of Port B as output
        DDRB |= (1 << DDB7);     // set pin 7 of Port B as output
    while (1) {
        PORTB |= (1 << PB3);     // set pin 3 of Port B high
        _delay_ms(DELAY);
        PORTB &= (1 << PB3);    // set pin 3 of Port B low

        PORTB |= (1 << PB4);     // set pin 3 of Port B high
        _delay_ms(DELAY);
        PORTB &= (1 << PB4);    // set pin 3 of Port B low

        PORTB |= (1 << PB5);     // set pin 3 of Port B high
        _delay_ms(DELAY);
        PORTB &= (1 << PB5);    // set pin 3 of Port B low

        PORTB |= (1 << PB6);     // set pin 3 of Port B high
        _delay_ms(DELAY);
        PORTB &= (1 << PB6);    // set pin 3 of Port B low

        PORTB |= (1 << PB7);     // set pin 3 of Port B high
        _delay_ms(DELAY);
        PORTB &= (1 << PB7);    // set pin 3 of Port B low


//        if(!(PINB & _BV(PB0))) { //PINB will have PB0 set to 0 on button press
//            while(!(PINB & _BV(PB0))); //do nothing while the button is still pressed
//        }
    }
}
