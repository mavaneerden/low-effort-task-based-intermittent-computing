#include <stddef.h>
#include <msp430.h>

#include "api/include/thread.h"
#include "api/include/init.h"
#include "scheduler/scheduler.h"

extern int __ink_buffers_offset;
extern int __ink_task_shared_1_start;
extern int __ink_task_shared_1_size;
extern int __ink_task_shared_2_start;
extern int __ink_task_shared_2_size;
extern int __ink_task_shared_3_start;
extern int __ink_task_shared_3_size;
extern int __ink_task_shared_4_start;
extern int __ink_task_shared_4_size;
extern int __ink_task_shared_5_start;
extern int __ink_task_shared_5_size;
extern int __ink_task_shared_6_start;
extern int __ink_task_shared_6_size;
extern int __ink_task_shared_7_start;
extern int __ink_task_shared_7_size;
extern int __ink_task_shared_8_start;
extern int __ink_task_shared_8_size;
extern int __ink_task_shared_9_start;
extern int __ink_task_shared_9_size;
extern int __ink_task_shared_10_start;
extern int __ink_task_shared_10_size;
extern int __ink_task_shared_11_start;
extern int __ink_task_shared_11_size;
extern int __ink_task_shared_12_start;
extern int __ink_task_shared_12_size;
extern int __ink_task_shared_13_start;
extern int __ink_task_shared_13_size;
extern int __ink_task_shared_14_start;
extern int __ink_task_shared_14_size;
extern int __ink_task_shared_15_start;
extern int __ink_task_shared_15_size;
extern int __ink_task_shared_16_start;
extern int __ink_task_shared_16_size;
extern int __ink_task_shared_17_start;
extern int __ink_task_shared_17_size;
extern int __ink_task_shared_18_start;
extern int __ink_task_shared_18_size;
extern int __ink_task_shared_19_start;
extern int __ink_task_shared_19_size;
extern int __ink_task_shared_20_start;
extern int __ink_task_shared_20_size;
extern int __ink_task_shared_21_start;
extern int __ink_task_shared_21_size;
extern int __ink_task_shared_22_start;
extern int __ink_task_shared_22_size;
extern int __ink_task_shared_23_start;
extern int __ink_task_shared_23_size;
extern int __ink_task_shared_24_start;
extern int __ink_task_shared_24_size;
extern int __ink_task_shared_25_start;
extern int __ink_task_shared_25_size;
extern int __ink_task_shared_26_start;
extern int __ink_task_shared_26_size;
extern int __ink_task_shared_27_start;
extern int __ink_task_shared_27_size;
extern int __ink_task_shared_28_start;
extern int __ink_task_shared_28_size;
extern int __ink_task_shared_29_start;
extern int __ink_task_shared_29_size;
extern int __ink_task_shared_30_start;
extern int __ink_task_shared_30_size;
extern int __ink_task_shared_31_start;
extern int __ink_task_shared_31_size;
extern int __ink_task_shared_32_start;
extern int __ink_task_shared_32_size;
extern int __ink_task_shared_33_start;
extern int __ink_task_shared_33_size;
extern int __ink_task_shared_34_start;
extern int __ink_task_shared_34_size;
extern int __ink_task_shared_35_start;
extern int __ink_task_shared_35_size;
extern int __ink_task_shared_36_start;
extern int __ink_task_shared_36_size;
extern int __ink_task_shared_37_start;
extern int __ink_task_shared_37_size;
extern int __ink_task_shared_38_start;
extern int __ink_task_shared_38_size;
extern int __ink_task_shared_39_start;
extern int __ink_task_shared_39_size;
extern int __ink_task_shared_40_start;
extern int __ink_task_shared_40_size;
extern int __ink_task_shared_41_start;
extern int __ink_task_shared_41_size;
extern int __ink_task_shared_42_start;
extern int __ink_task_shared_42_size;
extern int __ink_task_shared_43_start;
extern int __ink_task_shared_43_size;
extern int __ink_task_shared_44_start;
extern int __ink_task_shared_44_size;
extern int __ink_task_shared_45_start;
extern int __ink_task_shared_45_size;
extern int __ink_task_shared_46_start;
extern int __ink_task_shared_46_size;
extern int __ink_task_shared_47_start;
extern int __ink_task_shared_47_size;
extern int __ink_task_shared_48_start;
extern int __ink_task_shared_48_size;
extern int __ink_task_shared_49_start;
extern int __ink_task_shared_49_size;
extern int __ink_task_shared_50_start;
extern int __ink_task_shared_50_size;
extern int __ink_task_shared_51_start;
extern int __ink_task_shared_51_size;
extern int __ink_task_shared_52_start;
extern int __ink_task_shared_52_size;
extern int __ink_task_shared_53_start;
extern int __ink_task_shared_53_size;
extern int __ink_task_shared_54_start;
extern int __ink_task_shared_54_size;
extern int __ink_task_shared_55_start;
extern int __ink_task_shared_55_size;
extern int __ink_task_shared_56_start;
extern int __ink_task_shared_56_size;
extern int __ink_task_shared_57_start;
extern int __ink_task_shared_57_size;
extern int __ink_task_shared_58_start;
extern int __ink_task_shared_58_size;
extern int __ink_task_shared_59_start;
extern int __ink_task_shared_59_size;
extern int __ink_task_shared_60_start;
extern int __ink_task_shared_60_size;
extern int __ink_task_shared_61_start;
extern int __ink_task_shared_61_size;
extern int __ink_task_shared_62_start;
extern int __ink_task_shared_62_size;
extern int __ink_task_shared_63_start;
extern int __ink_task_shared_63_size;


#define __INK_CREATE_THREAD_CASE(priority) \
    case priority: \
        data_buffer        = (void*)&__ink_task_shared_##priority##_start; \
        data_buffer_backup = (void*)(data_buffer + (uintptr_t)&__ink_buffers_offset); \
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    if (!ink_is_first_boot())
    {
        return;
    }

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    {
        __INK_CREATE_THREAD_CASE(1)
        __INK_CREATE_THREAD_CASE(2)
        __INK_CREATE_THREAD_CASE(3)
        __INK_CREATE_THREAD_CASE(4)
        __INK_CREATE_THREAD_CASE(5)
        __INK_CREATE_THREAD_CASE(6)
        __INK_CREATE_THREAD_CASE(7)
        __INK_CREATE_THREAD_CASE(8)
        __INK_CREATE_THREAD_CASE(9)
        __INK_CREATE_THREAD_CASE(10)
        __INK_CREATE_THREAD_CASE(11)
        __INK_CREATE_THREAD_CASE(12)
        __INK_CREATE_THREAD_CASE(13)
        __INK_CREATE_THREAD_CASE(14)
        __INK_CREATE_THREAD_CASE(15)
        __INK_CREATE_THREAD_CASE(16)
        __INK_CREATE_THREAD_CASE(17)
        __INK_CREATE_THREAD_CASE(18)
        __INK_CREATE_THREAD_CASE(19)
        __INK_CREATE_THREAD_CASE(20)
        __INK_CREATE_THREAD_CASE(21)
        __INK_CREATE_THREAD_CASE(22)
        __INK_CREATE_THREAD_CASE(23)
        __INK_CREATE_THREAD_CASE(24)
        __INK_CREATE_THREAD_CASE(25)
        __INK_CREATE_THREAD_CASE(26)
        __INK_CREATE_THREAD_CASE(27)
        __INK_CREATE_THREAD_CASE(28)
        __INK_CREATE_THREAD_CASE(29)
        __INK_CREATE_THREAD_CASE(30)
        __INK_CREATE_THREAD_CASE(31)
        __INK_CREATE_THREAD_CASE(32)
        __INK_CREATE_THREAD_CASE(33)
        __INK_CREATE_THREAD_CASE(34)
        __INK_CREATE_THREAD_CASE(35)
        __INK_CREATE_THREAD_CASE(36)
        __INK_CREATE_THREAD_CASE(37)
        __INK_CREATE_THREAD_CASE(38)
        __INK_CREATE_THREAD_CASE(39)
        __INK_CREATE_THREAD_CASE(40)
        __INK_CREATE_THREAD_CASE(41)
        __INK_CREATE_THREAD_CASE(42)
        __INK_CREATE_THREAD_CASE(43)
        __INK_CREATE_THREAD_CASE(44)
        __INK_CREATE_THREAD_CASE(45)
        __INK_CREATE_THREAD_CASE(46)
        __INK_CREATE_THREAD_CASE(47)
        __INK_CREATE_THREAD_CASE(48)
        __INK_CREATE_THREAD_CASE(49)
        __INK_CREATE_THREAD_CASE(50)
        __INK_CREATE_THREAD_CASE(51)
        __INK_CREATE_THREAD_CASE(52)
        __INK_CREATE_THREAD_CASE(53)
        __INK_CREATE_THREAD_CASE(54)
        __INK_CREATE_THREAD_CASE(55)
        __INK_CREATE_THREAD_CASE(56)
        __INK_CREATE_THREAD_CASE(57)
        __INK_CREATE_THREAD_CASE(58)
        __INK_CREATE_THREAD_CASE(59)
        __INK_CREATE_THREAD_CASE(60)
        __INK_CREATE_THREAD_CASE(61)
        __INK_CREATE_THREAD_CASE(62)
        __INK_CREATE_THREAD_CASE(63)
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);

    if (start_on_first_boot)
    {
        __start_thread(__get_thread(priority));
    }
}