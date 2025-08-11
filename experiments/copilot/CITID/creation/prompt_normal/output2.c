#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Task-shared variables
uint16_t adc_value;
uint16_t computed_value;

// Entry task: reads ADC data from the event
CITID_CREATE_THREAD(10, false) {
    citid_event_t *event = citid_event;
    adc_value = *((uint16_t *)event->data);
    return task_compute;
}

// Second task: performs computation
void *task_compute() {
    computed_value = sensor_compute(adc_value);
    return task_transmit;
}

// Third task: transmits the computed value
void *task_transmit() {
    sensor_transmit(computed_value);
    return NULL;
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
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();
    return 0;
}
