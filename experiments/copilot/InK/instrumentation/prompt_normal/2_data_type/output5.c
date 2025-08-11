#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variable
__shared(uint8_t blink_counter;)

// Task declarations
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Application initialization
void __app_init() {
    __CREATE(1, t_init);   // Create thread with priority 1 and entry task t_init
    __SIGNAL(1);           // Activate the thread so it runs after flashing
}

// Optional reboot handler
void __app_reboot() {
    // No special reboot behavior needed
}

// Entry task
ENTRY_TASK(t_init) {
    __SET(blink_counter, 0);
    return t_blink_on;
}

TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

TASK(t_blink_off) {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}
