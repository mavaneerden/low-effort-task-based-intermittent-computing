#include "msp430.h"
#include "citid.h"
#include "sensor.h"

#define THREAD_PRIORITY 10

CITID_PERSISTENT int adc_value_isr = 0;
citid_event_t adc_event = { .data = &adc_value_isr, .size = sizeof(int), .timestamp = 0 };

int adc_value;         // Task-shared variable
int computed_value;    // Task-shared variable

// Forward declarations
void* task2(void);
void* task3(void);

// Entry task: read ADC value from event
CITID_CREATE_THREAD(THREAD_PRIORITY, true) {
    adc_value = *(int*)citid_event->data;
    return task2;
}

// Task 2: compute value
void* task2(void) {
    computed_value = sensor_compute(adc_value);
    return task3;
}

// Task 3: transmit value
void* task3(void) {
    sensor_transmit(computed_value);
    return NULL;
}

int main(void) {
    WDTCTL = WDTPW | WDTHOLD;   // Stop watchdog timer
    // ADC and other hardware setup here
    citid_scheduler_run();
}

void __attribute__ ((interrupt(ADC_VECTOR))) ADC_ISR(void) {
    adc_value_isr = ADC10MEM;  // Read ADC result
    citid_signal_event_isr(THREAD_PRIORITY, &adc_event);
}
