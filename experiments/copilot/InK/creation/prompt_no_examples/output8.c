#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: reads ADC value from event
ENTRY_TASK(read_adc) {
    isr_event_t *evt = __event;
    uint16_t *data_ptr = (uint16_t *)(evt->data);
    __SET(adc_value, *data_ptr);
    return TASK(sensor_compute_task);
}

// Second task: compute value
TASK(sensor_compute_task) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return TASK(sensor_transmit_task);
}

// Third task: transmit value
TASK(sensor_transmit_task) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application initialization
void __app_init() {
    __CREATE(1, read_adc);
}

// Application reboot handler
void __app_reboot() {
    // Optional: actions on reboot
}
