#pragma once

/* defines non-volatile variable */
#ifdef __GNUC__
    #define __nv    __attribute__((section(".persistent")))
#else
    #define __nv __attribute__((section(".TI.persistent")))
#endif

void __fram_init();
void __fram_word_copy(void* from, void* to, unsigned short size);
