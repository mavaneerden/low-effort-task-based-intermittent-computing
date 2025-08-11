#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Task-shared variable
__shared(uint32_t blink_counter;)

// Entry task declaration
void* ENTRY_TASK(t_init)();
void* TASK(t_blink_on)();
void* TASK(t_blink_off)();

// Entry task definition
void* ENTRY_TASK(t_init)() {
    __SET(blink_counter, 0);
    return t_blink_on;
}

void* TASK(t_blink_on)() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

void* TASK(t_blink_off)() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Called on first boot
void __app_init() {
    __CREATE(1, t_init); // Priority 1, entry task is t_init
}

// Called on every reboot
void __app_reboot() {
    // No special reboot logic needed
}
