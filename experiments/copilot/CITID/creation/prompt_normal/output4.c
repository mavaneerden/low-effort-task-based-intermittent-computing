#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Helper function declarations (assumed to be defined in sensor.h)
extern int sensor_compute(int value);
extern void sensor_transmit(int result);

// Persistent event data buffer
CITID_PERSISTENT static int adc_data_buffer;

// Event structure for ADC interrupt
CITID_PERSISTENT static citid_event_t adc_event = {
    .data = &adc_data_buffer,
    .size = sizeof(adc_data_buffer),
    .timestamp = 0
};

// Task 3: Transmit computed data
void *task_transmit() {
    sensor_transmit(adc_data_buffer);
    return NULL; // Wait for next interrupt
}

// Task 2: Compute on ADC value
void *task_compute() {
    adc_data_buffer = sensor_compute(adc_data_buffer);
    return task_transmit;
}

// Task 1: Read ADC value from event
void *task_read() {
    adc_data_buffer = *(int *)citid_event->data;
    return task_compute;
}

// Thread definition with priority 10, dormant on first boot
CITID_CREATE_THREAD(10, false) {
    return task_read;
}

// ADC interrupt service routine
#pragma vector=ADC10_VECTOR
__interrupt void adc_isr(void) {
    adc_data_buffer = ADC10MEM; // Read ADC value
    citid_signal_event_isr(10, &adc_event); // Signal event to thread with priority 10
}

// Main function
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    // ADC and interrupt setup code would go here...
    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
