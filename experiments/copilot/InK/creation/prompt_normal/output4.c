#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: read ADC value from event
ENTRY_TASK(t_read_adc) {
    isr_event_t *event = __event;
    uint16_t *data = (uint16_t *)event->data;
    __SET(adc_value, *data);
    return t_compute;
}

// Task: compute value from ADC
TASK(t_compute) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return t_transmit;
}

// Task: transmit computed value
TASK(t_transmit) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application initialization
void __app_init() {
    __CREATE(10, t_read_adc);
}

// Interrupt Service Routine (example)
#pragma vector=ADC_VECTOR
__interrupt void adc_isr() {
    static __nv uint16_t adc_data;
    adc_data = ADCMEM0;

    isr_event_t event = {
        .data = &adc_data,
        .size = sizeof(adc_data),
        .timestamp = 0
    };

    if (!__EVENT_BUFFER_FULL(10)) {
        __SIGNAL_EVENT(10, &event);
    }
}
