#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include the InK API

// Declare task-shared variable
__shared(uint32_t blink_counter;)

// Entry task declaration
void* ENTRY_TASK(t_init)();
void* TASK(t_blink_on)();
void* TASK(t_blink_off)();
void* TASK(t_end)();

// Called on first boot
void __app_init() {
    __CREATE(1, t_init);   // Create thread with priority 1 and entry task t_init
    __SIGNAL(1);           // Activate the thread immediately
}

// Called on every reboot
void __app_reboot() {
    // No special actions needed on reboot for this trivial example
}

// Entry task: initialize counter
void* ENTRY_TASK(t_init)() {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turn LED on and increment counter
void* TASK(t_blink_on)() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

// Turn LED off and check counter
void* TASK(t_blink_off)() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_end;
    }
    return t_blink_on;
}

// End task
void* TASK(t_end)() {
    return (void*)0;
}
