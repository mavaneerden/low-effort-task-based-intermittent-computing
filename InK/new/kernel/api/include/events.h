#pragma once

#include <stdint.h>

typedef struct {
    void *data;             // the data should be allocated in FRAM by the caller
    uint32_t timestamp;     // timestamp of the event
} ink_isr_event_t;

void ink_signal_thread(uint8_t thread_priority_to_signal, ink_isr_event_t *event);

void ink_signal_thread_isr(uint8_t thread_priority_to_signal, ink_isr_event_t *event);
