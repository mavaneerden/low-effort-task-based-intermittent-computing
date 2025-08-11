#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variables (automatically detected as task-shared)
uint16_t other_variable;
uint8_t blink_counter;

// Entry task and other task declarations
void* t_init();
void* t_blink_on();
void* t_blink_off();

void increment_other_variable()
{
    other_variable++;
}

// Define the thread with priority 10, activated on first boot
CITID_CREATE_THREAD(10, true) {
    return t_init();
}

void* t_init()
{
    blink_counter = 0;
    return t_blink_on;
}

void* t_blink_on()
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

void* t_blink_off()
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_init;
    }
    return t_blink_on;
}

int main()
{
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0); // Setup GPIO
    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
