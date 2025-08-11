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

// Third task: transmit the computed value
void *transmit_task(void) {
    sensor_transmit(computed_value);
    return NULL; // Wait for next interrupt
}

// Create thread with priority 1, not activated on boot
CITID_CREATE_THREAD(1, false);

int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();
    return 0;
}

// Interrupt Service Routine for ADC
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    static CITID_PERSISTENT uint16_t adc_buffer;
    adc_buffer = ADCMEM0;

    static CITID_PERSISTENT citid_event_t adc_event = {
        .data = &adc_buffer,
        .size = sizeof(adc_buffer),
        .timestamp = 0
    };

    citid_signal_event_isr(1, &adc_event);
}
