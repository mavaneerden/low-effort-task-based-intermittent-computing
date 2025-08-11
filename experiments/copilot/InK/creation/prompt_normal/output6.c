#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: reads ADC data from the event
ENTRY_TASK(read_adc) {
    isr_event_t *event = __event;
    uint16_t *data_ptr = (uint16_t *)event->data;
    __SET(adc_value, *data_ptr);
    return compute_data;
}

// Second task: performs computation
TASK(compute_data) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return transmit_data;
}

// Third task: transmits the computed data
TASK(transmit_data) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application initialization
void __app_init() {
    __CREATE(10, read_adc);
}

// Application reboot handler
void __app_reboot() {
    // Optional: actions on reboot
}

// Interrupt Service Routine (example)
#pragma vector=ADC_VECTOR
__interrupt void adc_isr(void) {
    static __nv uint16_t adc_buffer;
    adc_buffer = ADCMEM0;

    isr_event_t event = {
        .data = (void *)&adc_buffer,
        .size = sizeof(adc_buffer),
        .timestamp = 0
    };

    if (!__EVENT_BUFFER_FULL(10)) {
        __SIGNAL_EVENT(10, &event);
    }
}
