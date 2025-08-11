#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include InK API

// Declare task-shared variables
__shared(
    uint16_t other_variable;
    uint8_t blink_counter;
)

// Forward declarations of tasks
ENTRY_TASK(t_blink_on);
TASK(t_blink_off);
TASK(t_end);

// Helper function (not a task, so can't use task-shared variables)
void increment_other_variable() {
    // Use __SET and __GET to access task-shared variable
    __SET(other_variable, __GET(other_variable) + 1);
}

// Entry task
ENTRY_TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Regular task
TASK(t_blink_off) {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_end;
    }
    return t_blink_on;
}

// Regular task
TASK(t_end) {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Called on first boot
void __app_init() {
    __CREATE(1, t_blink_on);   // Create thread with priority 1
    __SIGNAL(1);               // Activate thread immediately
}

// Called on every reboot
void __app_reboot() {
    // Optional: add reboot-specific logic here
}
