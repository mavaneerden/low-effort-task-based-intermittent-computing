#pragma once

#include <msp430.h>

#define __port_init(port,bit) \
        P##port##OUT &= ~BIT##bit; \
        P##port##DIR |= BIT##bit; \
        P##port##OUT &= ~BIT##bit;

#define __port_on(port,bit) P##port##OUT |= BIT##bit;
#define __port_off(port,bit) P##port##OUT &= ~BIT##bit;
#define __port_toggle(port,bit) P##port##OUT ^= BIT##bit;

/* puts microcontroller into sleep mode */
#define __mcu_sleep() __bis_SR_register(LPM3_bits | GIE)
