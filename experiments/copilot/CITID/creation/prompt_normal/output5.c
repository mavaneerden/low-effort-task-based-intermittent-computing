#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Task-shared variables
uint16_t adc_value;
uint16_t computed_value;

// Forward declarations of tasks
void *task_read_adc(void);
void *task_compute(void);
void *task_transmit(void);

// Thread definition with priority 10, initially dormant
CITID_CREATE_THREAD(10, false) {
    // Entry task: read ADC value from event
    return task_read_adc();
}

// Task 1: Read ADC value from event
void *task_read_adc(void) {
    citid_event_t *event = citid_event;
    adc_value = *((uint16_t *)event->data);
    return task_compute;
}

// Task 2: Compute based on ADC value
void *task_compute(void) {
    computed_value = sensor_compute(adc_value);
    return task_transmit;
}

// Task 3: Transmit computed value
void *task_transmit(void) {
    sensor_transmit(computed_value);
    return NULL;
}

// Interrupt Service Routine for ADC
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    static CITID_PERSISTENT uint16_t adc_buffer;
    adc_buffer = ADC10MEM;

    static CITID_PERSISTENT citid_event_t adc_event = {
        .data = &adc_buffer,
        .size = sizeof(adc_buffer),
        .timestamp = 0
    };

    citid_signal_event_isr(10, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    // ADC and interrupt setup (simplified)
    ADC10CTL0 = SREF_0 + ADC10SHT_3 + ADC10ON + ADC10IE;
    ADC10CTL1 = INCH_0;
    __enable_interrupt();

    citid_scheduler_run();
    return 0;
}
