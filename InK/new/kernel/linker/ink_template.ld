/**
 * Author: Marco van Eerden (mavaneerden@gmail.com)
 *
 * Linker script for InK. Augments the existing msp430 linker script.
 *
 * Two sets of buffers are defined. The first set is the main one,
 * and contains all of the sections defined in the code.
 * The second set of buffers is the backup for the double-buffering approach.
 * The buffers in this set are initially uninitialized, but they have the same size
 * as their main counterparts (this is checked at the end of the script).
 *
 * Buffers should be aligned on a word (2 bytes since this is a 16-bit system),
 * because this makes it easier to copy to and from buffers.
 */

#define INK_TASK_SHARED_BUFFER(num) \
    PROVIDE(__ink_task_shared_##num##_start = .); \
    KEEP(*(.ink.task_shared.##num)) \
    . = ALIGN(2); \
    PROVIDE(__ink_task_shared_##num##_end = .);

#define INK_TASK_SHARED_SIZE(num) \
    PROVIDE(__ink_task_shared_##num##_size = __ink_task_shared_##num##_end - __ink_task_shared_##num##_start); \
    . += (__ink_task_shared_##num##_size); \
    . = ALIGN(2);

SECTIONS
{
    .ink.buffers :
    {
        . = ALIGN(2);
        PROVIDE(__ink_buffers_start = .);

        PROVIDE(__ink_thread_shared_start = .);
        KEEP(*(.ink.thread_shared))
        . = ALIGN(2);
        PROVIDE(__ink_thread_shared_end = .);

        INK_TASK_SHARED_BUFFER(0)
        INK_TASK_SHARED_BUFFER(1)
        INK_TASK_SHARED_BUFFER(2)
        INK_TASK_SHARED_BUFFER(3)
        INK_TASK_SHARED_BUFFER(4)
        INK_TASK_SHARED_BUFFER(5)
        INK_TASK_SHARED_BUFFER(6)
        INK_TASK_SHARED_BUFFER(7)
        INK_TASK_SHARED_BUFFER(8)
        INK_TASK_SHARED_BUFFER(9)
        INK_TASK_SHARED_BUFFER(10)
        INK_TASK_SHARED_BUFFER(11)
        INK_TASK_SHARED_BUFFER(12)
        INK_TASK_SHARED_BUFFER(13)
        INK_TASK_SHARED_BUFFER(14)
        INK_TASK_SHARED_BUFFER(15)
        INK_TASK_SHARED_BUFFER(16)
        INK_TASK_SHARED_BUFFER(17)
        INK_TASK_SHARED_BUFFER(18)
        INK_TASK_SHARED_BUFFER(19)
        INK_TASK_SHARED_BUFFER(20)
        INK_TASK_SHARED_BUFFER(21)
        INK_TASK_SHARED_BUFFER(22)
        INK_TASK_SHARED_BUFFER(23)
        INK_TASK_SHARED_BUFFER(24)
        INK_TASK_SHARED_BUFFER(25)
        INK_TASK_SHARED_BUFFER(26)
        INK_TASK_SHARED_BUFFER(27)
        INK_TASK_SHARED_BUFFER(28)
        INK_TASK_SHARED_BUFFER(29)
        INK_TASK_SHARED_BUFFER(30)
        INK_TASK_SHARED_BUFFER(31)
        INK_TASK_SHARED_BUFFER(32)
        INK_TASK_SHARED_BUFFER(33)
        INK_TASK_SHARED_BUFFER(34)
        INK_TASK_SHARED_BUFFER(35)
        INK_TASK_SHARED_BUFFER(36)
        INK_TASK_SHARED_BUFFER(37)
        INK_TASK_SHARED_BUFFER(38)
        INK_TASK_SHARED_BUFFER(39)
        INK_TASK_SHARED_BUFFER(40)
        INK_TASK_SHARED_BUFFER(41)
        INK_TASK_SHARED_BUFFER(42)
        INK_TASK_SHARED_BUFFER(43)
        INK_TASK_SHARED_BUFFER(44)
        INK_TASK_SHARED_BUFFER(45)
        INK_TASK_SHARED_BUFFER(46)
        INK_TASK_SHARED_BUFFER(47)
        INK_TASK_SHARED_BUFFER(48)
        INK_TASK_SHARED_BUFFER(49)
        INK_TASK_SHARED_BUFFER(50)
        INK_TASK_SHARED_BUFFER(51)
        INK_TASK_SHARED_BUFFER(52)
        INK_TASK_SHARED_BUFFER(53)
        INK_TASK_SHARED_BUFFER(54)
        INK_TASK_SHARED_BUFFER(55)
        INK_TASK_SHARED_BUFFER(56)
        INK_TASK_SHARED_BUFFER(57)
        INK_TASK_SHARED_BUFFER(58)
        INK_TASK_SHARED_BUFFER(59)
        INK_TASK_SHARED_BUFFER(60)
        INK_TASK_SHARED_BUFFER(61)
        INK_TASK_SHARED_BUFFER(62)
        INK_TASK_SHARED_BUFFER(63)

        PROVIDE(__ink_buffers_end = .);
    }

    .ink.buffers.backup :
    {
        . = ALIGN(2);
        PROVIDE(__ink_buffers_backup_start = .);
        
        PROVIDE(__ink_thread_shared_size = __ink_thread_shared_end - __ink_thread_shared_start);
        . += (__ink_thread_shared_size);
        . = ALIGN(2);

        INK_TASK_SHARED_SIZE(0)
        INK_TASK_SHARED_SIZE(1)
        INK_TASK_SHARED_SIZE(2)
        INK_TASK_SHARED_SIZE(3)
        INK_TASK_SHARED_SIZE(4)
        INK_TASK_SHARED_SIZE(5)
        INK_TASK_SHARED_SIZE(6)
        INK_TASK_SHARED_SIZE(7)
        INK_TASK_SHARED_SIZE(8)
        INK_TASK_SHARED_SIZE(9)
        INK_TASK_SHARED_SIZE(10)
        INK_TASK_SHARED_SIZE(11)
        INK_TASK_SHARED_SIZE(12)
        INK_TASK_SHARED_SIZE(13)
        INK_TASK_SHARED_SIZE(14)
        INK_TASK_SHARED_SIZE(15)
        INK_TASK_SHARED_SIZE(16)
        INK_TASK_SHARED_SIZE(17)
        INK_TASK_SHARED_SIZE(18)
        INK_TASK_SHARED_SIZE(19)
        INK_TASK_SHARED_SIZE(20)
        INK_TASK_SHARED_SIZE(21)
        INK_TASK_SHARED_SIZE(22)
        INK_TASK_SHARED_SIZE(23)
        INK_TASK_SHARED_SIZE(24)
        INK_TASK_SHARED_SIZE(25)
        INK_TASK_SHARED_SIZE(26)
        INK_TASK_SHARED_SIZE(27)
        INK_TASK_SHARED_SIZE(28)
        INK_TASK_SHARED_SIZE(29)
        INK_TASK_SHARED_SIZE(30)
        INK_TASK_SHARED_SIZE(31)
        INK_TASK_SHARED_SIZE(32)
        INK_TASK_SHARED_SIZE(33)
        INK_TASK_SHARED_SIZE(34)
        INK_TASK_SHARED_SIZE(35)
        INK_TASK_SHARED_SIZE(36)
        INK_TASK_SHARED_SIZE(37)
        INK_TASK_SHARED_SIZE(38)
        INK_TASK_SHARED_SIZE(39)
        INK_TASK_SHARED_SIZE(40)
        INK_TASK_SHARED_SIZE(41)
        INK_TASK_SHARED_SIZE(42)
        INK_TASK_SHARED_SIZE(43)
        INK_TASK_SHARED_SIZE(44)
        INK_TASK_SHARED_SIZE(45)
        INK_TASK_SHARED_SIZE(46)
        INK_TASK_SHARED_SIZE(47)
        INK_TASK_SHARED_SIZE(48)
        INK_TASK_SHARED_SIZE(49)
        INK_TASK_SHARED_SIZE(50)
        INK_TASK_SHARED_SIZE(51)
        INK_TASK_SHARED_SIZE(52)
        INK_TASK_SHARED_SIZE(53)
        INK_TASK_SHARED_SIZE(54)
        INK_TASK_SHARED_SIZE(55)
        INK_TASK_SHARED_SIZE(56)
        INK_TASK_SHARED_SIZE(57)
        INK_TASK_SHARED_SIZE(58)
        INK_TASK_SHARED_SIZE(59)
        INK_TASK_SHARED_SIZE(60)
        INK_TASK_SHARED_SIZE(61)
        INK_TASK_SHARED_SIZE(62)
        INK_TASK_SHARED_SIZE(63)

        PROVIDE(__ink_buffers_backup_end = .);
    }
    
    PROVIDE(__ink_buffers_offset = __ink_buffers_backup_start - __ink_buffers_start);

    ASSERT(SIZEOF(.ink.buffers) == SIZEOF(.ink.buffers.backup), "InK buffer sections are not the same size!")
}
INSERT AFTER .persistent;
