#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Persistent event data buffer
CITID_PERSISTENT static uint16_t adc_data_buffer;

// Event structure for ADC interrupt
CITID_PERSISTENT static citid_event_t adc_event = {
    .data = &adc_data_buffer,
    .size = sizeof(adc_data_buffer),
    .timestamp = 0
};

// Task declarations
void *task_read_adc(void);
void *task_compute(void);
void *task_transmit(void);

// Entry task for thread with priority 10
CITID_CREATE_THREAD(10, false) {
    uint16_t adc_value = *((uint16_t *)citid_event->data);
    adc_data_buffer = adc_value;
    return task_compute;
}

// Task 2: Compute
void *task_compute(void) {
    adc_data_buffer = sensor_compute(adc_data_buffer);
    return task_transmit;
}

// Task 3: Transmit
void *task_transmit(void) {
    sensor_transmit(adc_data_buffer);
    return NULL; // Wait for next interrupt
}

// ADC interrupt service routine
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    adc_data_buffer = ADCMEM0; // Read ADC value
    citid_signal_event_isr(10, &adc_event); // Signal event to thread with priority 10
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    // ADC and other peripheral initialization here...

    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
