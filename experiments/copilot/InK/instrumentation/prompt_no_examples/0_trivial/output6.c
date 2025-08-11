#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include InK API

// Declare task-shared variable
__shared(uint32_t blink_counter;)

// Entry task declaration
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);
TASK(t_end);

// Entry task: initializes blink_counter
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
        return t_end;
    }
    return t_blink_on;
}

// End task: terminates thread
void* t_end() {
    return (void*)0;
}

// Called on first boot: create thread
void __app_init() {
    __CREATE(1, t_init);  // Priority 1, entry task is t_init
}

// Called on every reboot (optional)
void __app_reboot() {
    // No reboot-specific logic needed
}
