#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variable used in tasks → automatically task-shared
uint32_t blink_counter;

// Task declarations
void* t_init();
void* t_blink_on();
void* t_blink_off();

// Thread definition with entry task
CITID_CREATE_THREAD(1, true) {
    return t_init();
}

// Task: Initialize counter
void* t_init() {
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

// Task: Turn LED off and decide next task
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Main function starts CITID scheduler
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0); // Setup LED pin
    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
