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
void* ENTRY_TASK(t_init)();
void* TASK(t_blink_on)();
void* TASK(t_blink_off)();

// Entry point for thread creation
void __app_init() {
    __CREATE(1, t_init);  // Create thread with priority 1 and entry task t_init
}

// Optional reboot handler
void __app_reboot() {
    // No special actions needed on reboot
}

// Helper function to increment other_variable
void increment_other_variable() {
    __SET(other_variable, __GET(other_variable) + 1);
}

// Entry task: initialize blink_counter
void* ENTRY_TASK(t_init)() {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Task: turn LED on, increment counters
void* TASK(t_blink_on)() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: turn LED off, check blink count
void* TASK(t_blink_off)() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}
