#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variable
__shared(uint8_t blink_counter;)

// Declare task functions
void* ENTRY_TASK(t_init)();
void* TASK(t_blink_on)();
void* TASK(t_blink_off)();

// Entry task: initialize counter
void* ENTRY_TASK(t_init)() {
    __SET(blink_counter, 0);
    return TASK(t_blink_on);
}

// Turn LED on and increment counter
void* TASK(t_blink_on)() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return TASK(t_blink_off);
}

// Turn LED off and check counter
void* TASK(t_blink_off)() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return ENTRY_TASK(t_init);
    }
    return TASK(t_blink_on);
}

// Called once at first boot
void __app_init() {
    __CREATE(1, ENTRY_TASK(t_init)); // Priority 1
}

// Called at every reboot (optional)
void __app_reboot() {
    // No special actions needed
}
