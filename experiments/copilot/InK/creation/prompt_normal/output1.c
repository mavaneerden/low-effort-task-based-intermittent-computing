#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: read ADC value from event
ENTRY_TASK(read_adc) {
    isr_event_t *event = __event;
    uint16_t *data_ptr = (uint16_t *)event->data;
    __SET(adc_value, *data_ptr);
    return compute_data;
}

// Second task: compute value
TASK(compute_data) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return transmit_data;
}

// Third task: transmit value
TASK(transmit_data) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application init: create thread
void __app_init() {
    __CREATE(10, read_adc);
}

// Application reboot: nothing needed
void __app_reboot() {}
