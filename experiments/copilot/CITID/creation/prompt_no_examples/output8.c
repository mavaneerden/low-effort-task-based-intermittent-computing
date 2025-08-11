#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Task-shared variables
uint16_t adc_value;
uint16_t computed_value;

// Entry task: reads ADC data from the event
void *read_adc_task(void) {
    citid_event_t *event = citid_event;
    adc_value = *((uint16_t *)event->data);
    return compute_task;
}

// Second task: performs computation
void *compute_task(void) {
    computed_value = sensor_compute(adc_value);
    return transmit_task;
}

// Third task: transmits the result
void *transmit_task(void) {
    sensor_transmit(computed_value);
    return NULL;
}

// Thread creation
CITID_CREATE_THREAD(1, false);

// Interrupt Service Routine for ADC
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    static citid_event_t adc_event;
    static uint16_t adc_data;

    adc_data = ADC10MEM;
    adc_event.data = &adc_data;
    adc_event.size = sizeof(adc_data);
    adc_event.timestamp = 0;

    citid_signal_event_isr(1, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();
    return 0;
}
