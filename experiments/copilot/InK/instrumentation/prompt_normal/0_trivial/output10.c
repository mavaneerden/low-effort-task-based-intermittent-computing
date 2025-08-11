#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variable
__shared(uint32_t blink_counter;)

// Declare task functions
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);
TASK(t_end);

// Application initialization: create thread with priority 1
void __app_init() {
    __CREATE(1, t_init);
}

// Optional reboot handler (can be left empty or used as needed)
void __app_reboot() {}

// Entry task: initialize counter
ENTRY_TASK(t_init) {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turn LED on and increment counter
TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

// Turn LED off and check if done
TASK(t_blink_off) {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_end;
    }
    return t_blink_on;
}

// End task: return NULL to stop
TASK(t_end) {
    return (void*)0;
}
