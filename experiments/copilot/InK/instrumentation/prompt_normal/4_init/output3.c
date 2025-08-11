#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variables
__shared(uint8_t blink_counter;);

// Non-task-shared persistent variable
__nv uint16_t other_variable = 10;

// Task declarations
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Non-task function
void increment_other_variable() {
    other_variable++;
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
    __CREATE(10, t_init);   // Create thread with priority 10
    __SIGNAL(10);           // Activate it immediately
}

// Called on every reboot
void __app_reboot() {
    // Optional: add reboot-specific logic here
}
