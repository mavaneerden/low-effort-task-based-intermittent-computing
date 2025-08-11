#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variables
__shared(
    uint16_t other_variable;
    uint8_t blink_counter;
)

// Forward declarations of tasks
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Non-task function (not using task-shared variables directly)
void increment_other_variable() {
    __SET(other_variable, __GET(other_variable) + 1);
}

// Entry task: starts the blinking sequence
ENTRY_TASK(t_init) {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turns LED on and increments counters
TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Turns LED off and checks blink count
TASK(t_blink_off) {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Called once when the system boots
void __app_init() {
    __CREATE(15, t_init);   // Create thread with priority 15 and entry task t_init
    __SIGNAL(15);           // Activate thread immediately after flashing
}

// Called on every reboot
void __app_reboot() {
    // Optional: add reboot-specific logic here
}
