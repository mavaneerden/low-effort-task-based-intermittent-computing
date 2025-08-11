#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Helper function declarations (assumed to be defined in sensor.h)
extern int sensor_compute(int adc_value);
extern void sensor_transmit(int computed_value);

// Persistent event data buffer
CITID_PERSISTENT static int adc_data_buffer;

// Event structure for ADC interrupt
CITID_PERSISTENT static citid_event_t adc_event = {
    .data = &adc_data_buffer,
    .size = sizeof(adc_data_buffer),
    .timestamp = 0
};

// Task 1: Read ADC value from event
static void* task_read_adc(void) {
    int adc_value = *(int*)citid_event->data;
    adc_data_buffer = adc_value;
    return task_compute;
}

// Task 2: Compute result from ADC value
static void* task_compute(void) {
    int result = sensor_compute(adc_data_buffer);
    adc_data_buffer = result;
    return task_transmit;
}

// Task 3: Transmit computed result
static void* task_transmit(void) {
    sensor_transmit(adc_data_buffer);
    return NULL;
}

// Thread definition with priority 10, initially dormant
CITID_CREATE_THREAD(10, false) {
    return task_read_adc;
}

// ADC interrupt service routine
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    // Read ADC result
    int adc_result = ADC10MEM;
    adc_data_buffer = adc_result;

    // Signal event to activate thread
    citid_signal_event_isr(10, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();
    return 0;
}
