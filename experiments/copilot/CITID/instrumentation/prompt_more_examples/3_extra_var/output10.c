#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"

#define THREAD_PRIORITY 10

// Task-shared variables
uint8_t blink_counter;
uint16_t other_variable;

// Forward task declarations
void* t_init(void);
void* t_blink_on(void);
void* t_blink_off(void);

// Entry task
CITID_CREATE_THREAD(THREAD_PRIORITY, true) {
    return t_init;
}

void increment_other_variable() {
    other_variable++;
}

void* t_init(void) {
    blink_counter = 0;
    return t_blink_on;
}

void* t_blink_on(void) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

void* t_blink_off(void) {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_init;
    }
    return t_blink_on;
}

int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    gpio_init();              // Assuming gpio_init is defined in gpio.h
    citid_scheduler_run();
}
