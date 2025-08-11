#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Task-shared variable (automatically detected by CITID compiler)
uint8_t blink_counter;

// Forward declarations of tasks
void* t_blink_on();
void* t_blink_off();

// CITID thread definition with priority 1, activated on first boot
CITID_CREATE_THREAD(1, true) {
    blink_counter = 0;
    return t_blink_on;
}

// Task: Turn LED on and increment counter
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: Turn LED off and check if we need to reset
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        blink_counter = 0;  // Reset counter before looping
    }
    return t_blink_on;
}

// Main function starts the CITID scheduler
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();    // Start CITID runtime
    return 0;
}
