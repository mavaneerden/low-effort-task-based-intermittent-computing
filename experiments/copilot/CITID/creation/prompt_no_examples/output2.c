#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Define thread with priority 1, dormant on first boot
CITID_CREATE_THREAD(1, false);

// Entry task: reads ADC data from event
void *read_adc_task(void) {
    uint16_t adc_value;

    // Read ADC value from event data
    adc_value = *((uint16_t *)citid_event->data);

    // Store ADC value in task-shared variable
    static uint16_t adc_shared;
    adc_shared = adc_value;

    return compute_task;
}

// Second task: compute using helper function
void *compute_task(void) {
    extern uint16_t adc_shared;
    static uint16_t computed_value;

    computed_value = sensor_compute(adc_shared);

    // Store computed value in task-shared variable
    static uint16_t result_shared;
    result_shared = computed_value;

    return transmit_task;
}

// Third task: transmit result
void *transmit_task(void) {
    extern uint16_t result_shared;

    sensor_transmit(result_shared);

    // Wait for next interrupt
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

    citid_signal_event_isr(1, &adc_event);
}

int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer

    // Initialize ADC, interrupts, etc. (not shown)

    citid_scheduler_run();
    return 0;
}
