#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Task-shared variables
int adc_value;
int computed_value;

// Entry task: reads ADC data from the event
void *read_adc_task(void) {
    citid_event_t *event = citid_event;
    adc_value = *((int *)(event->data));
    return sensor_compute_task;
}

// Second task: performs computation
void *sensor_compute_task(void) {
    computed_value = sensor_compute(adc_value);
    return sensor_transmit_task;
}

// Third task: transmits the computed data
void *sensor_transmit_task(void) {
    sensor_transmit(computed_value);
    return NULL; // Wait for next interrupt
}

// Create thread with priority 1, not activated on first boot
CITID_CREATE_THREAD(1, false);

// Interrupt Service Routine for ADC
__attribute__((interrupt(ADC10_VECTOR)))
void adc_isr(void) {
    static citid_event_t adc_event;
    static int adc_data;

    adc_data = ADC10MEM;
    adc_event.data = &adc_data;
    adc_event.size = sizeof(adc_data);
    adc_event.timestamp = 0;

    citid_signal_event_isr(1, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    // ADC and interrupt setup (simplified)
    ADC10CTL1 = INCH_0;
    ADC10CTL0 = SREF_0 + ADC10SHT_3 + ADC10ON + ADC10IE;

    __enable_interrupt(); // Enable global interrupts

    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
