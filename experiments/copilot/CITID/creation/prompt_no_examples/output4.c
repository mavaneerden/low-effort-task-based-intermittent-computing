#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Persistent buffer for ADC event data
CITID_PERSISTENT static uint16_t adc_value;
CITID_PERSISTENT static uint16_t computed_value;

// Entry task: reads ADC value from event
void *read_adc_task(void) {
    citid_event_t *event = citid_event;
    if (event && event->data && event->size >= sizeof(uint16_t)) {
        adc_value = *(uint16_t *)(event->data);
    }
    return compute_task;
}

// Second task: compute based on ADC value
void *compute_task(void) {
    computed_value = sensor_compute(adc_value);
    return transmit_task;
}

// Third task: transmit computed value
void *transmit_task(void) {
    sensor_transmit(computed_value);
    return NULL; // Wait for next interrupt
}

// Create thread with priority 1, not active on boot
CITID_CREATE_THREAD(1, false);

// ADC interrupt service routine
__attribute__((interrupt(ADC10_VECTOR)))
void adc_isr(void) {
    static CITID_PERSISTENT citid_event_t adc_event;
    adc_event.data = (void *)&adc_value;
    adc_event.size = sizeof(uint16_t);
    adc_event.timestamp = 0;

    // Simulate ADC read
    adc_value = ADC10MEM;

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
