#pragma once

#include <msp430.h>

#define LED1 BIT6
#define LED1_OUT P4OUT
#define LED1_DIR P4DIR

#define LED2 BIT0
#define LED2_OUT P1OUT
#define LED2_DIR P1DIR

#define __port_init(port,bit) \
        P##port##OUT &= ~BIT##bit; \
        P##port##DIR |= BIT##bit; \
        P##port##OUT &= ~BIT##bit;

#define __port_on(port,bit) P##port##OUT |= BIT##bit;
#define __port_off(port,bit) P##port##OUT &= ~BIT##bit;
#define __port_toggle(port,bit) P##port##OUT ^= BIT##bit;

/* Macros for easy access to the LEDs on the evaulation board. */
#define __led_init(led) \
        led##_OUT &= ~led; \
        led##_DIR |= led; \
        led##_OUT &= ~led;

#define __led_on(led) led##_OUT |= led;
#define __led_off(led) led##_OUT &= ~led;
#define __led_toggle(led) led##_OUT ^= led;
