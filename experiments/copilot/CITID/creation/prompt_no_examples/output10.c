#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Persistent event data buffer
CITID_PERSISTENT uint8_t adc_event_data[2];

// Event structure
CITID_PERSISTENT citid_event_t adc_event = {
    .data = adc_event_data,
    .size = sizeof(adc_event_data),
    .timestamp = 0
};

// Task-shared variables
uint16_t adc_value;
uint16_t computed_value;

// Task 1: Read ADC value from event
void* task_read_adc(void) {
    adc_value = ((uint16_t*)citid_event->data)[0];
    return task_compute;
}

// Task 2: Compute value
void* task_compute(void) {
    computed_value = sensor_compute(adc_value);
    return task_transmit;
}

// Task 3: Transmit computed value
void* task_transmit(void) {
    sensor_transmit(computed_value);
    return NULL;
}

// Thread definition
CITID_CREATE_THREAD(1, false);

// Interrupt Service Routine for ADC
#pragma vector=ADC10_VECTOR
__interrupt void adc_isr(void) {
    ((uint16_t*)adc_event.data)[0] = ADC10MEM;
    citid_signal_event_isr(1, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    // ADC setup (simplified)
    ADC10CTL0 = SREF_0 + ADC10SHT_3 + ADC10ON + ADC10IE;
    ADC10CTL1 = INCH_0;

    // Start CITID scheduler
    citid_scheduler_run();

    return 0;
}
