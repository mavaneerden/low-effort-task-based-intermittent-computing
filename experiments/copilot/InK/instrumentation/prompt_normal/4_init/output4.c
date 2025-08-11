#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Required for InK API

// Declare task-shared variables
__shared(
    uint16_t other_variable;
    uint8_t blink_counter;
)

// Forward declarations of tasks
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Optional helper function (not a task)
void increment_other_variable() {
    __SET(other_variable, __GET(other_variable) + 1);
}

// Entry task
ENTRY_TASK(t_init) {
    __SET(blink_counter, 0);
    return t_blink_on;
}

TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
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

// Called once on first boot
void __app_init() {
    __CREATE(1, t_init);  // Priority 1, entry task is t_init
}

// Optional: called on every reboot
void __app_reboot() {
    // No special reboot behavior needed
}
