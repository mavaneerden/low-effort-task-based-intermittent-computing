#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include InK API

__shared(uint8_t blink_counter;);  // Declare task-shared variable

ENTRY_TASK(t_init);       // Entry task declaration
TASK(t_blink_on);         // Task declarations
TASK(t_blink_off);

void* t_init() {
    __SET(blink_counter, 0);  // Initialize counter
    return t_blink_on;
}

void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);  // Increment counter
    __delay_cycles(400000);
    return t_blink_off;
}

void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Called once at first boot
void __app_init() {
    __CREATE(1, t_init);  // Create thread with priority 1 and entry task t_init
}

// Called at every reboot (optional)
void __app_reboot() {
    // No actions needed for this example
}
