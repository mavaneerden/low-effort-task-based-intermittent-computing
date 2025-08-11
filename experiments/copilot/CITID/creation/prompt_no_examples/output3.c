#include <msp430.h>
#include "citid.h"
#include "sensor.h"

// Persistent event data buffer
CITID_PERSISTENT static uint16_t adc_data;

// Thread creation with priority 1, dormant on first boot
CITID_CREATE_THREAD(1, false);

// Entry task: reads ADC data from event
void *read_adc_task(void) {
    citid_event_t *event = citid_event;
    if (event && event->data && event->size == sizeof(uint16_t)) {
        adc_data = *(uint16_t *)(event->data);
    }
    return sensor_compute_task;
}

// Second task: compute on ADC value
void *sensor_compute_task(void) {
    sensor_compute(&adc_data);
    return sensor_transmit_task;
}

// Third task: transmit computed data
void *sensor_transmit_task(void) {
    sensor_transmit(adc_data);
    return NULL; // Wait for next interrupt
}

// Interrupt Service Routine for ADC
#pragma vector=ADC_VECTOR
__interrupt void adc_isr(void) {
    static CITID_PERSISTENT citid_event_t adc_event;
    adc_event.data = (void *)&adc_data;
    adc_event.size = sizeof(uint16_t);
    adc_event.timestamp = 0;

    citid_signal_event_isr(1, &adc_event);
}

// Main function
int main(void) {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();
    return 0;
}
