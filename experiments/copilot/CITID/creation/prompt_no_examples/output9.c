#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Persistent event buffer
CITID_PERSISTENT static citid_event_t adc_event;
CITID_PERSISTENT static uint16_t adc_value;
CITID_PERSISTENT static uint16_t computed_value;

// Entry task: reads ADC value from event
static void *read_adc_task(void) {
    adc_value = *((uint16_t *)citid_event->data);
    return compute_task;
}

// Second task: compute using helper function
static void *compute_task(void) {
    computed_value = sensor_compute(adc_value);
    return transmit_task;
}

// Third task: transmit result
static void *transmit_task(void) {
    sensor_transmit(computed_value);
    return NULL; // Wait for next interrupt
}

// Create thread with priority 1, not active on boot
CITID_CREATE_THREAD(1, false);

// ADC interrupt service routine
__attribute__((interrupt(ADC10_VECTOR)))
void adc_isr(void) {
    static CITID_PERSISTENT uint16_t adc_buffer;
    adc_buffer = ADC10MEM;

    adc_event.data = &adc_buffer;
    adc_event.size = sizeof(adc_buffer);
    adc_event.timestamp = 0;

    citid_signal_event_isr(1, &adc_event);
}

int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    // ADC and interrupt setup (simplified)
    ADC10CTL1 = INCH_0;
    ADC10CTL0 = SREF_0 + ADC10SHT_3 + ADC10ON + ADC10IE;
    __enable_interrupt();

    citid_scheduler_run();
    return 0;
}
