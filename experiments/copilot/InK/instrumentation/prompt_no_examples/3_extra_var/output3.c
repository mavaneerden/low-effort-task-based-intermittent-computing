#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include the InK API

// Declare task-shared variables
__shared(
    uint8_t blink_counter;
);

// Declare persistent non-task-shared variable
__nv uint16_t other_variable;

// Entry task declaration
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Function to increment persistent variable
void increment_other_variable() {
    other_variable++;
}

// Entry task: initializes blink_counter
void* t_init() {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turns LED on, increments blink_counter and other_variable
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Turns LED off, checks blink_counter to decide next task
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
    __CREATE(1, t_init);     // Create thread with priority 1
    __SIGNAL(1);             // Activate thread immediately
}

// Called at every reboot
void __app_reboot() {
    // No special reboot logic needed
}
