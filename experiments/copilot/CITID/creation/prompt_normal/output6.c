#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Persistent event buffer for ADC interrupt
CITID_PERSISTENT static citid_event_t adc_event = {
    .data = NULL,
    .size = sizeof(uint16_t),
    .timestamp = 0
};

// Task-shared variable for ADC value
static uint16_t adc_value;

// Task-shared variable for computed result
static uint16_t computed_result;

// Task 1: Read ADC value from event
void* task_read_adc() {
    adc_value = *(uint16_t*)(citid_event->data);
    return task_compute;
}

// Task 2: Compute result from ADC value
void* task_compute() {
    computed_result = sensor_compute(adc_value);
    return task_transmit;
}

// Task 3: Transmit computed result
void* task_transmit() {
    sensor_transmit(computed_result);
    return CITID_THREAD_ENTRY_TASK();
}

// Thread definition with priority 10, initially dormant
CITID_CREATE_THREAD(10, false) {
    return task_read_adc;
}

// ADC interrupt service routine
__attribute__((interrupt(ADC10_VECTOR)))
void adc_isr(void) {
    // Assume ADC10MEM contains the ADC result
    *(uint16_t*)(adc_event.data) = ADC10MEM;
    citid_signal_event_isr(10, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    // Allocate persistent memory for ADC data
    static uint16_t adc_data_storage;
    adc_event.data = &adc_data_storage;

    // Initialize ADC, interrupts, etc. (not shown)

    citid_scheduler_run();
    return 0;
}
