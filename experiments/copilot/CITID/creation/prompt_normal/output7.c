#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Task-shared variables
uint16_t adc_value;
uint16_t computed_value;

// Helper function declarations (assumed to be in sensor.h)
// uint16_t sensor_compute(uint16_t value);
// void sensor_transmit(uint16_t value);

// Task 1: Read ADC value from event
void *task_read_adc() {
    citid_event_t *event = citid_event;
    adc_value = *((uint16_t *)event->data);
    return task_compute;
}

// Task 2: Compute value
void *task_compute() {
    computed_value = sensor_compute(adc_value);
    return task_transmit;
}

// Task 3: Transmit value
void *task_transmit() {
    sensor_transmit(computed_value);
    return NULL; // Wait for next interrupt
}

// Thread definition with priority 10, initially dormant
CITID_CREATE_THREAD(10, false) {
    return task_read_adc;
}

// Interrupt Service Routine for ADC
#pragma vector=ADC10_VECTOR
__interrupt void adc_isr(void) {
    static citid_event_t adc_event;
    static uint16_t adc_data;

    adc_data = ADC10MEM;
    adc_event.data = &adc_data;
    adc_event.size = sizeof(adc_data);
    adc_event.timestamp = 0;

    citid_signal_event_isr(10, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    // ADC and other peripheral initialization here...

    citid_scheduler_run();
    return 0;
}
