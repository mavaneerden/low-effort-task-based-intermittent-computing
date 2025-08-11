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

// Entry task: initializes counter
void* t_init() {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turns LED on and increments counter
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

// Turns LED off and checks counter
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Called once on first boot
void __app_init() {
    __CREATE(1, t_init); // Priority 1, entry task is t_init
}

// Called on every reboot
void __app_reboot() {
    // No special reboot logic needed
}
