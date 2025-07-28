
bin/bitcount_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00005360 <__crt0_start>:
    5360:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005364 <__crt0_init_bss>:
    5364:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005368 <.Loc.76.1>:
    5368:	0d 43       	clr	r13		;

0000536a <.Loc.77.1>:
    536a:	3e 40 62 00 	mov	#98,	r14	;#0x0062

0000536e <.Loc.81.1>:
    536e:	b0 12 48 78 	call	#30792		;#0x7848

00005372 <__crt0_run_init_array>:
    5372:	34 40 08 45 	mov	#17672,	r4	;#0x4508

00005376 <.Loc.189.1>:
    5376:	35 40 10 45 	mov	#17680,	r5	;#0x4510

0000537a <.Loc.190.1>:
    537a:	26 43       	mov	#2,	r6	;r3 As==10

0000537c <.Loc.191.1>:
    537c:	b0 12 8a 53 	call	#21386		;#0x538a

00005380 <__crt0_call_main>:
    5380:	0c 43       	clr	r12		;

00005382 <.Loc.254.1>:
    5382:	b0 12 98 53 	call	#21400		;#0x5398

00005386 <__crt0_call_exit>:
    5386:	b0 12 46 78 	call	#30790		;#0x7846

0000538a <__crt0_run_array>:
    538a:	05 94       	cmp	r4,	r5	;

0000538c <.Loc.294.1>:
    538c:	04 24       	jz	$+10     	;abs 0x5396

0000538e <.Loc.295.1>:
    538e:	27 44       	mov	@r4,	r7	;

00005390 <.Loc.296.1>:
    5390:	04 56       	add	r6,	r4	;

00005392 <.Loc.297.1>:
    5392:	87 12       	call	r7		;

00005394 <.Loc.298.1>:
    5394:	fa 3f       	jmp	$-10     	;abs 0x538a

00005396 <_msp430_run_done>:
    5396:	30 41       	ret			

00005398 <main>:
#include "ink/ink.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    5398:	
0000539a <L0^A>:
    539a:	80 5a 5c 01 	add	r10,	0x015c	; PC rel. 0x54f8

0000539e <.Loc.10.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    539e:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

000053a2 <.Loc.13.1>:

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
    53a2:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    53a6:	22 02 

000053a8 <.Loc.13.1>:
    53a8:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    53ac:	24 02 

000053ae <.Loc.13.1>:
    53ae:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    53b2:	22 02 

000053b4 <.Loc.13.1>:
#endif

    /* Start the scheduler. */
    ink_scheduler_run();
    53b4:	b0 12 30 62 	call	#25136		;#0x6230

000053b8 <.Loc.18.1>:
}
    53b8:	4c 43       	clr.b	r12		;
    53ba:	30 41       	ret			

000053bc <__ink_entry_task>:
    __INK_SHARED_VAR_STRUCT_FIELD(uint32_t, seed);
} __INK_SHARED_VAR_STRUCT_TYPE;
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
{
#ifdef RAISE_PIN
    full_run_started = 1;
    53bc:	d2 43 3c 46 	mov.b	#1,	&0x463c	;r3 As==01

000053c0 <.Loc.125.1>:
#endif

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    53c0:	b0 12 0e 5c 	call	#23566		;#0x5c0e

000053c4 <.LVL1>:
    53c4:	0e 4c       	mov	r12,	r14	;

000053c6 <.Loc.126.1>:
__INK_GET_VAR_FROM_BUF(pinCont)  = 1;
    53c6:	0d 4c       	mov	r12,	r13	;
    53c8:	5d 02       	rlam	#1,	r13	;
    53ca:	0c 4d       	mov	r13,	r12	;
    53cc:	0c 5e       	add	r14,	r12	;
    53ce:	0d 4c       	mov	r12,	r13	;
    53d0:	5d 06       	rlam	#2,	r13	;
    53d2:	0c 4d       	mov	r13,	r12	;
    53d4:	0c 8e       	sub	r14,	r12	;
    53d6:	5c 02       	rlam	#1,	r12	;

000053d8 <.Loc.126.1>:
    53d8:	1d 4c 10 45 	mov	17680(r12),r13	;0x04510
    53dc:	dd 43 00 00 	mov.b	#1,	0(r13)	;r3 As==01

000053e0 <.Loc.127.1>:
    __INK_GET_VAR_FROM_BUF(function) = 0;
    53e0:	1d 4c 20 45 	mov	17696(r12),r13	;0x04520
    53e4:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000053e8 <.Loc.128.1>:
    __INK_GET_VAR_FROM_BUF(n_0)      = 0;
    53e8:	1d 4c 12 45 	mov	17682(r12),r13	;0x04512
    53ec:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000053f0 <.Loc.129.1>:
    __INK_GET_VAR_FROM_BUF(n_1)      = 0;
    53f0:	1d 4c 14 45 	mov	17684(r12),r13	;0x04514
    53f4:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000053f8 <.Loc.130.1>:
    __INK_GET_VAR_FROM_BUF(n_2)      = 0;
    53f8:	1d 4c 16 45 	mov	17686(r12),r13	;0x04516
    53fc:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005400 <.Loc.131.1>:
    __INK_GET_VAR_FROM_BUF(n_3)      = 0;
    5400:	1d 4c 18 45 	mov	17688(r12),r13	;0x04518
    5404:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005408 <.Loc.132.1>:
    __INK_GET_VAR_FROM_BUF(n_4)      = 0;
    5408:	1d 4c 1a 45 	mov	17690(r12),r13	;0x0451a
    540c:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005410 <.Loc.133.1>:
    __INK_GET_VAR_FROM_BUF(n_5)      = 0;
    5410:	1d 4c 1c 45 	mov	17692(r12),r13	;0x0451c

00005414 <.Loc.126.1>:
__INK_GET_VAR_FROM_BUF(pinCont)  = 1;
    5414:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00005418 <.Loc.133.1>:
    __INK_GET_VAR_FROM_BUF(n_5)      = 0;
    5418:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000541c <.Loc.134.1>:
    __INK_GET_VAR_FROM_BUF(n_6)      = 0;
    541c:	1c 4c 0e 00 	mov	14(r12),r12	;0x0000e
    5420:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005424 <.Loc.137.1>:

    // next task is t_select_func
    return t_select_func;
}
    5424:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a
    5428:	30 41       	ret			

0000542a <t_select_func>:

static void* __attribute__((annotate("INK::TASK15"))) t_select_func()
{
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    542a:	b0 12 0e 5c 	call	#23566		;#0x5c0e
    542e:	0e 4c       	mov	r12,	r14	;

00005430 <.Loc.144.1>:
    seed_tmp = rand();
#else
    seed_tmp = SEED;
#endif

    __INK_GET_VAR_FROM_BUF(iteration) = 0;
    5430:	0d 4c       	mov	r12,	r13	;
    5432:	5d 02       	rlam	#1,	r13	;
    5434:	0c 4d       	mov	r13,	r12	;
    5436:	0c 5e       	add	r14,	r12	;
    5438:	0d 4c       	mov	r12,	r13	;
    543a:	5d 06       	rlam	#2,	r13	;
    543c:	0c 4d       	mov	r13,	r12	;
    543e:	0c 8e       	sub	r14,	r12	;
    5440:	5c 02       	rlam	#1,	r12	;

00005442 <.Loc.154.1>:
    5442:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522
    5446:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000544a <.Loc.155.1>:
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    544a:	1d 4c 24 45 	mov	17700(r12),r13	;0x04524
    544e:	ad 42 00 00 	mov	#4,	0(r13)	;r2 As==10
    5452:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005456 <.Loc.157.1>:

    function_tmp = __INK_GET_VAR_FROM_BUF(function);
    5456:	1d 4c 20 45 	mov	17696(r12),r13	;0x04520

0000545a <.Loc.157.1>:
    545a:	2c 4d       	mov	@r13,	r12	;

0000545c <.LVL7>:

    if (function_tmp == 0)
    545c:	0c 93       	cmp	#0,	r12	;r3 As==00
    545e:	15 24       	jz	$+44     	;abs 0x548a

00005460 <.Loc.164.1>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_bit_count;
    }
    else if (function_tmp == 1)
    5460:	1c 93       	cmp	#1,	r12	;r3 As==01
    5462:	24 24       	jz	$+74     	;abs 0x54ac

00005464 <.Loc.169.1>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_bitcount;
    }
    else if (function_tmp == 2)
    5464:	2c 93       	cmp	#2,	r12	;r3 As==10
    5466:	16 24       	jz	$+46     	;abs 0x5494

00005468 <.Loc.174.1>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_ntbl_bitcnt;
    }
    else if (function_tmp == 3)
    5468:	3c 90 03 00 	cmp	#3,	r12	;
    546c:	24 24       	jz	$+74     	;abs 0x54b6

0000546e <.Loc.179.1>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_ntbl_bitcount;
    }
    else if (function_tmp == 4)
    546e:	2c 92       	cmp	#4,	r12	;r2 As==10
    5470:	27 24       	jz	$+80     	;abs 0x54c0

00005472 <.Loc.184.1>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_BW_btbl_bitcount;
    }
    else if (function_tmp == 5)
    5472:	3c 90 05 00 	cmp	#5,	r12	;
    5476:	2a 24       	jz	$+86     	;abs 0x54cc

00005478 <.Loc.189.1>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_AR_btbl_bitcount;
    }
    else if (function_tmp == 6)
    5478:	3c 90 06 00 	cmp	#6,	r12	;
    547c:	11 24       	jz	$+36     	;abs 0x54a0

0000547e <.LVL8>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_bit_shifter;
    }
    else
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    547e:	1c 53       	inc	r12		;

00005480 <.LVL9>:
    5480:	8d 4c 00 00 	mov	r12,	0(r13)	;

00005484 <.Loc.197.1>:
        return t_end;
    5484:	3c 40 d8 54 	mov	#21720,	r12	;#0x54d8

00005488 <.LVL10>:
    }
}
    5488:	30 41       	ret			

0000548a <.L12>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    548a:	9d 43 00 00 	mov	#1,	0(r13)	;r3 As==01

0000548e <.Loc.162.1>:
        return t_bit_count;
    548e:	3c 40 74 58 	mov	#22644,	r12	;#0x5874

00005492 <.Loc.199.1>:
}
    5492:	30 41       	ret			

00005494 <.L14>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    5494:	bd 40 03 00 	mov	#3,	0(r13)	;
    5498:	00 00 

0000549a <.Loc.172.1>:
        return t_ntbl_bitcnt;
    549a:	3c 40 f8 58 	mov	#22776,	r12	;#0x58f8

0000549e <.Loc.199.1>:
}
    549e:	30 41       	ret			

000054a0 <.L18>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54a0:	bd 40 07 00 	mov	#7,	0(r13)	;
    54a4:	00 00 

000054a6 <.Loc.192.1>:
        return t_bit_shifter;
    54a6:	3c 40 22 55 	mov	#21794,	r12	;#0x5522

000054aa <.Loc.199.1>:
}
    54aa:	30 41       	ret			

000054ac <.L13>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54ac:	ad 43 00 00 	mov	#2,	0(r13)	;r3 As==10

000054b0 <.Loc.167.1>:
        return t_bitcount;
    54b0:	3c 40 16 57 	mov	#22294,	r12	;#0x5716

000054b4 <.Loc.199.1>:
}
    54b4:	30 41       	ret			

000054b6 <.L15>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54b6:	ad 42 00 00 	mov	#4,	0(r13)	;r2 As==10

000054ba <.Loc.177.1>:
        return t_ntbl_bitcount;
    54ba:	3c 40 3a 56 	mov	#22074,	r12	;#0x563a

000054be <.Loc.199.1>:
}
    54be:	30 41       	ret			

000054c0 <.L16>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54c0:	bd 40 05 00 	mov	#5,	0(r13)	;
    54c4:	00 00 

000054c6 <.Loc.182.1>:
        return t_BW_btbl_bitcount;
    54c6:	3c 40 b2 55 	mov	#21938,	r12	;#0x55b2

000054ca <.Loc.199.1>:
}
    54ca:	30 41       	ret			

000054cc <.L17>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54cc:	bd 40 06 00 	mov	#6,	0(r13)	;
    54d0:	00 00 

000054d2 <.Loc.187.1>:
        return t_AR_btbl_bitcount;
    54d2:	3c 40 ba 59 	mov	#22970,	r12	;#0x59ba

000054d6 <.Loc.199.1>:
}
    54d6:	30 41       	ret			

000054d8 <t_end>:
}

static void* t_end()
{
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    54d8:	b0 12 0e 5c 	call	#23566		;#0x5c0e

000054dc <.Loc.431.1>:
uint8_t pinCont_tmp = __INK_GET_VAR_FROM_BUF(pinCont);
    54dc:	0e 4c       	mov	r12,	r14	;
    54de:	5e 02       	rlam	#1,	r14	;
    54e0:	0d 4e       	mov	r14,	r13	;
    54e2:	0d 5c       	add	r12,	r13	;
    54e4:	5d 06       	rlam	#2,	r13	;
    54e6:	0d 8c       	sub	r12,	r13	;
    54e8:	5d 02       	rlam	#1,	r13	;
    54ea:	1d 4d 10 45 	mov	17680(r13),r13	;0x04510

000054ee <.Loc.431.1>:
    54ee:	6f 4d       	mov.b	@r13,	r15	;

000054f0 <.LVL19>:
    /* ------------------------------------- */

#ifdef RAISE_PIN
    if (full_run_started)
    54f0:	c2 93 3c 46 	cmp.b	#0,	&0x463c	;r3 As==00
    54f4:	08 24       	jz	$+18     	;abs 0x5506

000054f6 <.Loc.437.1>:
    {
        __port_on(3, 4);
    54f6:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    54fa:	22 02 

000054fc <.Loc.437.1>:
        __port_off(3, 4);
    54fc:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5500:	22 02 

00005502 <.Loc.438.1>:
        full_run_started = 0;
    5502:	c2 43 3c 46 	mov.b	#0,	&0x463c	;r3 As==00

00005506 <.L20>:
    }
#endif

    if (pinCont_tmp)
    5506:	0f 93       	cmp	#0,	r15	;r3 As==00
    5508:	07 24       	jz	$+16     	;abs 0x5518

0000550a <.Loc.445.1>:
    {
        __no_operation();
    550a:	03 43       	nop			
    550c:	0e 5c       	add	r12,	r14	;
    550e:	5e 06       	rlam	#2,	r14	;
    5510:	0e 8c       	sub	r12,	r14	;
    5512:	5e 02       	rlam	#1,	r14	;
    5514:	1d 4e 10 45 	mov	17680(r14),r13	;0x04510

00005518 <.L21>:
    }

    __INK_GET_VAR_FROM_BUF(pinCont) = 0;
    5518:	cd 43 00 00 	mov.b	#0,	0(r13)	;r3 As==00

0000551c <.Loc.450.1>:

    return INK_THREAD_ENTRY_TASK;
}
    551c:	3c 40 bc 53 	mov	#21436,	r12	;#0x53bc
    5520:	30 41       	ret			

00005522 <t_bit_shifter>:
{
    5522:	6a 15       	pushm	#7,	r10	;16-bit words

00005524 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5524:	b0 12 0e 5c 	call	#23566		;#0x5c0e
    5528:	0e 4c       	mov	r12,	r14	;

0000552a <.Loc.396.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    552a:	0d 4c       	mov	r12,	r13	;
    552c:	5d 02       	rlam	#1,	r13	;
    552e:	0c 4d       	mov	r13,	r12	;
    5530:	0c 5e       	add	r14,	r12	;
    5532:	0d 4c       	mov	r12,	r13	;
    5534:	5d 06       	rlam	#2,	r13	;
    5536:	0c 4d       	mov	r13,	r12	;
    5538:	0c 8e       	sub	r14,	r12	;
    553a:	5c 02       	rlam	#1,	r12	;
    553c:	19 4c 24 45 	mov	17700(r12),r9	;0x04524

00005540 <.Loc.396.1>:
    5540:	28 49       	mov	@r9,	r8	;
    5542:	17 49 02 00 	mov	2(r9),	r7	;

00005546 <.LVL25>:
    unsigned n_6_tmp       = __INK_GET_VAR_FROM_BUF(n_6);
    5546:	14 4c 1e 45 	mov	17694(r12),r4	;0x0451e

0000554a <.Loc.397.1>:
    554a:	26 44       	mov	@r4,	r6	;

0000554c <.LVL26>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    554c:	15 4c 22 45 	mov	17698(r12),r5	;0x04522

00005550 <.Loc.398.1>:
    5550:	2a 45       	mov	@r5,	r10	;

00005552 <.LVL27>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    5552:	0c 48       	mov	r8,	r12	;
    5554:	0c d7       	bis	r7,	r12	;
    5556:	0c 93       	cmp	#0,	r12	;r3 As==00
    5558:	14 24       	jz	$+42     	;abs 0x5582
    555a:	0c 48       	mov	r8,	r12	;
    555c:	0d 47       	mov	r7,	r13	;
    555e:	7f 40 20 00 	mov.b	#32,	r15	;#0x0020

00005562 <.Loc.402.1>:
    5562:	4b 43       	clr.b	r11		;
    5564:	03 3c       	jmp	$+8      	;abs 0x556c

00005566 <.L28>:
    5566:	3f 53       	add	#-1,	r15	;r3 As==11

00005568 <.Loc.402.1>:
    5568:	0f 93       	cmp	#0,	r15	;r3 As==00
    556a:	0a 24       	jz	$+22     	;abs 0x5580

0000556c <.L29>:
        nn += (unsigned)(tmp_seed & 1L);
    556c:	0e 4c       	mov	r12,	r14	;
    556e:	5e f3       	and.b	#1,	r14	;r3 As==01

00005570 <.Loc.404.1>:
    5570:	0b 5e       	add	r14,	r11	;

00005572 <.Loc.402.1>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    5572:	12 c3       	clrc			
    5574:	0d 10       	rrc	r13		;
    5576:	0c 10       	rrc	r12		;

00005578 <.Loc.402.1>:
    5578:	0e 4c       	mov	r12,	r14	;
    557a:	0e dd       	bis	r13,	r14	;
    557c:	0e 93       	cmp	#0,	r14	;r3 As==00
    557e:	f3 23       	jnz	$-24     	;abs 0x5566

00005580 <.L36>:
    5580:	06 5b       	add	r11,	r6	;

00005582 <.L26>:
    iteration_tmp++;
    5582:	1a 53       	inc	r10		;

00005584 <.Loc.413.1>:
    __INK_GET_VAR_FROM_BUF(n_6) = n_6_tmp;
    5584:	84 46 00 00 	mov	r6,	0(r4)	;

00005588 <.Loc.408.1>:
    tmp_seed += 13;
    5588:	38 50 0d 00 	add	#13,	r8	;#0x000d
    558c:	89 48 00 00 	mov	r8,	0(r9)	;
    5590:	07 63       	adc	r7		;
    5592:	89 47 02 00 	mov	r7,	2(r9)	;

00005596 <.Loc.415.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    5596:	85 4a 00 00 	mov	r10,	0(r5)	;

0000559a <.Loc.417.1>:
    if (iteration_tmp < ITER)
    559a:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    559e:	0c 9a       	cmp	r10,	r12	;
    55a0:	04 2c       	jc	$+10     	;abs 0x55aa

000055a2 <.Loc.423.1>:
        return t_select_func;
    55a2:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

000055a6 <.Loc.425.1>:
}
    55a6:	64 17       	popm	#7,	r10	;16-bit words

000055a8 <.LCFI1>:
    55a8:	30 41       	ret			

000055aa <.L31>:
        return t_bit_shifter;
    55aa:	3c 40 22 55 	mov	#21794,	r12	;#0x5522

000055ae <.Loc.425.1>:
}
    55ae:	64 17       	popm	#7,	r10	;16-bit words

000055b0 <.LCFI3>:
    55b0:	30 41       	ret			

000055b2 <t_BW_btbl_bitcount>:
{
    55b2:	3a 15       	pushm	#4,	r10	;16-bit words

000055b4 <.LCFI4>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    55b4:	b0 12 0e 5c 	call	#23566		;#0x5c0e
    55b8:	0e 4c       	mov	r12,	r14	;

000055ba <.Loc.327.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    55ba:	0d 4c       	mov	r12,	r13	;
    55bc:	5d 02       	rlam	#1,	r13	;
    55be:	0c 4d       	mov	r13,	r12	;
    55c0:	0c 5e       	add	r14,	r12	;
    55c2:	0d 4c       	mov	r12,	r13	;
    55c4:	5d 06       	rlam	#2,	r13	;
    55c6:	0c 4d       	mov	r13,	r12	;
    55c8:	0c 8e       	sub	r14,	r12	;
    55ca:	5c 02       	rlam	#1,	r12	;
    55cc:	1d 4c 24 45 	mov	17700(r12),r13	;0x04524

000055d0 <.Loc.327.1>:
    55d0:	2e 4d       	mov	@r13,	r14	;
    55d2:	1a 4d 02 00 	mov	2(r13),	r10	;

000055d6 <.LVL42>:
    unsigned n_4_tmp       = __INK_GET_VAR_FROM_BUF(n_4);
    55d6:	19 4c 1a 45 	mov	17690(r12),r9	;0x0451a

000055da <.LVL43>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    55da:	18 4c 22 45 	mov	17698(r12),r8	;0x04522

000055de <.LVL44>:
    U.y = seed_tmp;
    55de:	0c 4e       	mov	r14,	r12	;
    55e0:	0f 4a       	mov	r10,	r15	;

000055e2 <.LVL45>:
    iteration_tmp++;
    55e2:	2b 48       	mov	@r8,	r11	;
    55e4:	1b 53       	inc	r11		;

000055e6 <.LVL46>:
    n_4_tmp               += bits[U.ch[0]] + bits[U.ch[1]] + bits[U.ch[3]] + bits[U.ch[2]];
    55e6:	47 4e       	mov.b	r14,	r7	;

000055e8 <.Loc.339.1>:
    55e8:	47 19 0c 10 	rpt #8 { rrux.w	r12		;

000055ec <.Loc.339.1>:
    55ec:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c
    55f0:	57 47 3c 45 	mov.b	17724(r7),r7	;0x0453c
    55f4:	0c 57       	add	r7,	r12	;

000055f6 <.Loc.339.1>:
    55f6:	07 4a       	mov	r10,	r7	;
    55f8:	47 19 07 10 	rpt #8 { rrux.w	r7		;

000055fc <.Loc.339.1>:
    55fc:	57 47 3c 45 	mov.b	17724(r7),r7	;0x0453c
    5600:	0c 57       	add	r7,	r12	;

00005602 <.Loc.339.1>:
    5602:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

00005606 <.Loc.339.1>:
    5606:	5f 4f 3c 45 	mov.b	17724(r15),r15	;0x0453c
    560a:	0c 5f       	add	r15,	r12	;

0000560c <.Loc.339.1>:
    560c:	89 5c 00 00 	add	r12,	0(r9)	;

00005610 <.Loc.341.1>:
    seed_tmp               = tmp_seed + 13;
    5610:	3e 50 0d 00 	add	#13,	r14	;#0x000d

00005614 <.LVL48>:
    5614:	8d 4e 00 00 	mov	r14,	0(r13)	;

00005618 <.LVL49>:
    5618:	0a 63       	adc	r10		;
    561a:	8d 4a 02 00 	mov	r10,	2(r13)	;

0000561e <.Loc.346.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    561e:	88 4b 00 00 	mov	r11,	0(r8)	;

00005622 <.Loc.348.1>:
    if (iteration_tmp < ITER)
    5622:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    5626:	0c 9b       	cmp	r11,	r12	;
    5628:	04 2c       	jc	$+10     	;abs 0x5632

0000562a <.Loc.354.1>:
        return t_select_func;
    562a:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

0000562e <.Loc.356.1>:
}
    562e:	37 17       	popm	#4,	r10	;16-bit words

00005630 <.LCFI5>:
    5630:	30 41       	ret			

00005632 <.L39>:
        return t_BW_btbl_bitcount;
    5632:	3c 40 b2 55 	mov	#21938,	r12	;#0x55b2

00005636 <.Loc.356.1>:
}
    5636:	37 17       	popm	#4,	r10	;16-bit words

00005638 <.LCFI7>:
    5638:	30 41       	ret			

0000563a <t_ntbl_bitcount>:
{
    563a:	3a 15       	pushm	#4,	r10	;16-bit words

0000563c <.LCFI8>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    563c:	b0 12 0e 5c 	call	#23566		;#0x5c0e
    5640:	0e 4c       	mov	r12,	r14	;

00005642 <.Loc.295.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    5642:	0d 4c       	mov	r12,	r13	;
    5644:	5d 02       	rlam	#1,	r13	;
    5646:	0c 4d       	mov	r13,	r12	;
    5648:	0c 5e       	add	r14,	r12	;
    564a:	0d 4c       	mov	r12,	r13	;
    564c:	5d 06       	rlam	#2,	r13	;
    564e:	0c 4d       	mov	r13,	r12	;
    5650:	0c 8e       	sub	r14,	r12	;
    5652:	5c 02       	rlam	#1,	r12	;
    5654:	1d 4c 24 45 	mov	17700(r12),r13	;0x04524

00005658 <.Loc.295.1>:
    5658:	2e 4d       	mov	@r13,	r14	;
    565a:	1f 4d 02 00 	mov	2(r13),	r15	;

0000565e <.LVL56>:
    unsigned n_3_tmp       = __INK_GET_VAR_FROM_BUF(n_3);
    565e:	18 4c 18 45 	mov	17688(r12),r8	;0x04518

00005662 <.LVL57>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5662:	17 4c 22 45 	mov	17698(r12),r7	;0x04522

00005666 <.LVL58>:
    iteration_tmp++;
    5666:	29 47       	mov	@r7,	r9	;
    5668:	19 53       	inc	r9		;

0000566a <.LVL59>:
    n_3_tmp            += bits[(int)(__cry & 0x0000000FUL)] + bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    566a:	0a 4e       	mov	r14,	r10	;
    566c:	0b 4f       	mov	r15,	r11	;
    566e:	12 c3       	clrc			
    5670:	0b 10       	rrc	r11		;
    5672:	0a 10       	rrc	r10		;
    5674:	12 c3       	clrc			
    5676:	0b 10       	rrc	r11		;
    5678:	0a 10       	rrc	r10		;
    567a:	12 c3       	clrc			
    567c:	0b 10       	rrc	r11		;
    567e:	0a 10       	rrc	r10		;
    5680:	12 c3       	clrc			
    5682:	0b 10       	rrc	r11		;
    5684:	0a 10       	rrc	r10		;

00005686 <.Loc.300.1>:
    5686:	7a f0 0f 00 	and.b	#15,	r10	;#0x000f

0000568a <.Loc.300.1>:
    568a:	0c 4e       	mov	r14,	r12	;
    568c:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005690 <.Loc.300.1>:
    5690:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c
    5694:	5a 4a 3c 45 	mov.b	17724(r10),r10	;0x0453c
    5698:	0c 5a       	add	r10,	r12	;

0000569a <.Loc.301.1>:
           bits[(int)((__cry & 0x00000F00UL) >> 8)] + bits[(int)((__cry & 0x0000F000UL) >> 12)] +
    569a:	0a 4e       	mov	r14,	r10	;
    569c:	0b 4f       	mov	r15,	r11	;
    569e:	12 c3       	clrc			
    56a0:	0b 10       	rrc	r11		;
    56a2:	0a 10       	rrc	r10		;
    56a4:	12 c3       	clrc			
    56a6:	0b 10       	rrc	r11		;
    56a8:	0a 10       	rrc	r10		;
    56aa:	12 c3       	clrc			
    56ac:	0b 10       	rrc	r11		;
    56ae:	0a 10       	rrc	r10		;
    56b0:	12 c3       	clrc			
    56b2:	0b 10       	rrc	r11		;
    56b4:	0a 10       	rrc	r10		;
    56b6:	12 c3       	clrc			
    56b8:	0b 10       	rrc	r11		;
    56ba:	0a 10       	rrc	r10		;
    56bc:	12 c3       	clrc			
    56be:	0b 10       	rrc	r11		;
    56c0:	0a 10       	rrc	r10		;
    56c2:	12 c3       	clrc			
    56c4:	0b 10       	rrc	r11		;
    56c6:	0a 10       	rrc	r10		;
    56c8:	12 c3       	clrc			
    56ca:	0b 10       	rrc	r11		;
    56cc:	0a 10       	rrc	r10		;

000056ce <.Loc.301.1>:
    56ce:	7a f0 0f 00 	and.b	#15,	r10	;#0x000f

000056d2 <.Loc.300.1>:
    n_3_tmp            += bits[(int)(__cry & 0x0000000FUL)] + bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    56d2:	5a 4a 3c 45 	mov.b	17724(r10),r10	;0x0453c
    56d6:	0c 5a       	add	r10,	r12	;

000056d8 <.Loc.301.1>:
           bits[(int)((__cry & 0x00000F00UL) >> 8)] + bits[(int)((__cry & 0x0000F000UL) >> 12)] +
    56d8:	0a 4e       	mov	r14,	r10	;
    56da:	4b 19 0a 10 	rpt #12 { rrux.w	r10		;

000056de <.Loc.301.1>:
    56de:	5a 4a 3c 45 	mov.b	17724(r10),r10	;0x0453c
    56e2:	0c 5a       	add	r10,	r12	;

000056e4 <.Loc.300.1>:
    n_3_tmp            += bits[(int)(__cry & 0x0000000FUL)] + bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    56e4:	88 5c 00 00 	add	r12,	0(r8)	;

000056e8 <.Loc.306.1>:
    seed_tmp              = tmp_seed + 13;
    56e8:	0c 4e       	mov	r14,	r12	;
    56ea:	3c 50 0d 00 	add	#13,	r12	;#0x000d
    56ee:	8d 4c 00 00 	mov	r12,	0(r13)	;
    56f2:	0c 4f       	mov	r15,	r12	;
    56f4:	0c 63       	adc	r12		;
    56f6:	8d 4c 02 00 	mov	r12,	2(r13)	;

000056fa <.Loc.311.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    56fa:	87 49 00 00 	mov	r9,	0(r7)	;

000056fe <.Loc.313.1>:
    if (iteration_tmp < ITER)
    56fe:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    5702:	0c 99       	cmp	r9,	r12	;
    5704:	04 2c       	jc	$+10     	;abs 0x570e

00005706 <.Loc.319.1>:
        return t_select_func;
    5706:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

0000570a <.Loc.321.1>:
}
    570a:	37 17       	popm	#4,	r10	;16-bit words

0000570c <.LCFI9>:
    570c:	30 41       	ret			

0000570e <.L42>:
        return t_ntbl_bitcount;
    570e:	3c 40 3a 56 	mov	#22074,	r12	;#0x563a

00005712 <.Loc.321.1>:
}
    5712:	37 17       	popm	#4,	r10	;16-bit words

00005714 <.LCFI11>:
    5714:	30 41       	ret			

00005716 <t_bitcount>:
{
    5716:	6a 15       	pushm	#7,	r10	;16-bit words

00005718 <.LCFI12>:
    5718:	31 82       	sub	#8,	r1	;r2 As==11

0000571a <.LCFI13>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    571a:	b0 12 0e 5c 	call	#23566		;#0x5c0e

0000571e <.Loc.238.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    571e:	0e 4c       	mov	r12,	r14	;
    5720:	5e 02       	rlam	#1,	r14	;
    5722:	0e 5c       	add	r12,	r14	;
    5724:	5e 06       	rlam	#2,	r14	;
    5726:	0e 8c       	sub	r12,	r14	;
    5728:	5e 02       	rlam	#1,	r14	;
    572a:	1a 4e 24 45 	mov	17700(r14),r10	;0x04524

0000572e <.Loc.238.1>:
    572e:	2c 4a       	mov	@r10,	r12	;
    5730:	1d 4a 02 00 	mov	2(r10),	r13	;

00005734 <.LVL63>:
    unsigned n_1_tmp       = __INK_GET_VAR_FROM_BUF(n_1);
    5734:	16 4e 14 45 	mov	17684(r14),r6	;0x04514

00005738 <.Loc.239.1>:
    5738:	2f 46       	mov	@r6,	r15	;

0000573a <.LVL64>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    573a:	17 4e 22 45 	mov	17698(r14),r7	;0x04522

0000573e <.Loc.240.1>:
    573e:	2e 47       	mov	@r7,	r14	;

00005740 <.LVL65>:
    seed_tmp              = tmp_seed + 13;
    5740:	09 4c       	mov	r12,	r9	;
    5742:	39 50 0d 00 	add	#13,	r9	;#0x000d
    5746:	8a 49 00 00 	mov	r9,	0(r10)	;
    574a:	09 4d       	mov	r13,	r9	;
    574c:	09 63       	adc	r9		;
    574e:	8a 49 02 00 	mov	r9,	2(r10)	;

00005752 <.Loc.246.1>:
    tmp_seed = ((tmp_seed & 0xAAAAAAAAL) >> 1) + (tmp_seed & 0x55555555L);
    5752:	0a 4c       	mov	r12,	r10	;
    5754:	0b 4d       	mov	r13,	r11	;
    5756:	12 c3       	clrc			
    5758:	0b 10       	rrc	r11		;
    575a:	0a 10       	rrc	r10		;
    575c:	05 4a       	mov	r10,	r5	;
    575e:	35 f0 55 55 	and	#21845,	r5	;#0x5555
    5762:	04 4b       	mov	r11,	r4	;
    5764:	34 f0 55 55 	and	#21845,	r4	;#0x5555

00005768 <.Loc.246.1>:
    5768:	0a 4c       	mov	r12,	r10	;
    576a:	3a f0 55 55 	and	#21845,	r10	;#0x5555
    576e:	0b 4d       	mov	r13,	r11	;
    5770:	3b f0 55 55 	and	#21845,	r11	;#0x5555

00005774 <.Loc.246.1>:
    5774:	08 45       	mov	r5,	r8	;
    5776:	08 5a       	add	r10,	r8	;
    5778:	09 44       	mov	r4,	r9	;
    577a:	09 6b       	addc	r11,	r9	;

0000577c <.LVL66>:
    tmp_seed = ((tmp_seed & 0xCCCCCCCCL) >> 2) + (tmp_seed & 0x33333333L);
    577c:	0c 48       	mov	r8,	r12	;
    577e:	0d 49       	mov	r9,	r13	;
    5780:	12 c3       	clrc			
    5782:	0d 10       	rrc	r13		;
    5784:	0c 10       	rrc	r12		;
    5786:	12 c3       	clrc			
    5788:	0d 10       	rrc	r13		;
    578a:	0c 10       	rrc	r12		;
    578c:	0a 4c       	mov	r12,	r10	;
    578e:	3a f0 33 33 	and	#13107,	r10	;#0x3333
    5792:	05 4d       	mov	r13,	r5	;
    5794:	35 f0 33 33 	and	#13107,	r5	;#0x3333

00005798 <.Loc.247.1>:
    5798:	0c 48       	mov	r8,	r12	;
    579a:	3c f0 33 33 	and	#13107,	r12	;#0x3333
    579e:	0d 49       	mov	r9,	r13	;
    57a0:	3d f0 33 33 	and	#13107,	r13	;#0x3333

000057a4 <.Loc.247.1>:
    57a4:	0a 5c       	add	r12,	r10	;
    57a6:	81 4a 00 00 	mov	r10,	0(r1)	;
    57aa:	05 6d       	addc	r13,	r5	;
    57ac:	81 45 02 00 	mov	r5,	2(r1)	;

000057b0 <.LVL68>:
    tmp_seed = ((tmp_seed & 0xF0F0F0F0L) >> 4) + (tmp_seed & 0x0F0F0F0FL);
    57b0:	2c 41       	mov	@r1,	r12	;
    57b2:	1d 41 02 00 	mov	2(r1),	r13	;
    57b6:	12 c3       	clrc			
    57b8:	0d 10       	rrc	r13		;
    57ba:	0c 10       	rrc	r12		;
    57bc:	12 c3       	clrc			
    57be:	0d 10       	rrc	r13		;
    57c0:	0c 10       	rrc	r12		;
    57c2:	12 c3       	clrc			
    57c4:	0d 10       	rrc	r13		;
    57c6:	0c 10       	rrc	r12		;
    57c8:	12 c3       	clrc			
    57ca:	0d 10       	rrc	r13		;
    57cc:	0c 10       	rrc	r12		;
    57ce:	0a 4c       	mov	r12,	r10	;
    57d0:	3a f0 0f 0f 	and	#3855,	r10	;#0x0f0f
    57d4:	09 4d       	mov	r13,	r9	;
    57d6:	39 f0 0f 0f 	and	#3855,	r9	;#0x0f0f

000057da <.Loc.248.1>:
    57da:	2c 41       	mov	@r1,	r12	;
    57dc:	3c f0 0f 0f 	and	#3855,	r12	;#0x0f0f
    57e0:	0d 45       	mov	r5,	r13	;
    57e2:	3d f0 0f 0f 	and	#3855,	r13	;#0x0f0f

000057e6 <.Loc.248.1>:
    57e6:	0a 5c       	add	r12,	r10	;
    57e8:	81 4a 04 00 	mov	r10,	4(r1)	;
    57ec:	09 6d       	addc	r13,	r9	;
    57ee:	81 49 06 00 	mov	r9,	6(r1)	;

000057f2 <.LVL69>:
    tmp_seed = ((tmp_seed & 0xFF00FF00L) >> 8) + (tmp_seed & 0x00FF00FFL);
    57f2:	1c 41 04 00 	mov	4(r1),	r12	;
    57f6:	1d 41 06 00 	mov	6(r1),	r13	;
    57fa:	12 c3       	clrc			
    57fc:	0d 10       	rrc	r13		;
    57fe:	0c 10       	rrc	r12		;
    5800:	12 c3       	clrc			
    5802:	0d 10       	rrc	r13		;
    5804:	0c 10       	rrc	r12		;
    5806:	12 c3       	clrc			
    5808:	0d 10       	rrc	r13		;
    580a:	0c 10       	rrc	r12		;
    580c:	12 c3       	clrc			
    580e:	0d 10       	rrc	r13		;
    5810:	0c 10       	rrc	r12		;
    5812:	12 c3       	clrc			
    5814:	0d 10       	rrc	r13		;
    5816:	0c 10       	rrc	r12		;
    5818:	12 c3       	clrc			
    581a:	0d 10       	rrc	r13		;
    581c:	0c 10       	rrc	r12		;
    581e:	12 c3       	clrc			
    5820:	0d 10       	rrc	r13		;
    5822:	0c 10       	rrc	r12		;
    5824:	12 c3       	clrc			
    5826:	0d 10       	rrc	r13		;
    5828:	0c 10       	rrc	r12		;
    582a:	0a 4c       	mov	r12,	r10	;
    582c:	7a f0 ff 00 	and.b	#255,	r10	;#0x00ff
    5830:	09 4d       	mov	r13,	r9	;
    5832:	79 f0 ff 00 	and.b	#255,	r9	;#0x00ff

00005836 <.Loc.249.1>:
    5836:	1c 41 04 00 	mov	4(r1),	r12	;
    583a:	7c f0 ff 00 	and.b	#255,	r12	;#0x00ff
    583e:	1d 41 06 00 	mov	6(r1),	r13	;
    5842:	7d f0 ff 00 	and.b	#255,	r13	;#0x00ff

00005846 <.Loc.249.1>:
    5846:	0a 5c       	add	r12,	r10	;
    5848:	09 6d       	addc	r13,	r9	;

0000584a <.LVL70>:
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);
    584a:	0f 5a       	add	r10,	r15	;

0000584c <.LVL71>:
    __INK_GET_VAR_FROM_BUF(n_1) = n_1_tmp + (int)tmp_seed;
    584c:	0f 59       	add	r9,	r15	;
    584e:	86 4f 00 00 	mov	r15,	0(r6)	;

00005852 <.LVL72>:
    __INK_GET_VAR_FROM_BUF(iteration) = ++iteration_tmp;
    5852:	1e 53       	inc	r14		;
    5854:	87 4e 00 00 	mov	r14,	0(r7)	;

00005858 <.Loc.255.1>:
    if (iteration_tmp < ITER)
    5858:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    585c:	0c 9e       	cmp	r14,	r12	;
    585e:	05 2c       	jc	$+12     	;abs 0x586a

00005860 <.Loc.261.1>:
        return t_select_func;
    5860:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

00005864 <.Loc.263.1>:
}
    5864:	31 52       	add	#8,	r1	;r2 As==11

00005866 <.LCFI14>:
    5866:	64 17       	popm	#7,	r10	;16-bit words

00005868 <.LCFI15>:
    5868:	30 41       	ret			

0000586a <.L45>:
        return t_bitcount;
    586a:	3c 40 16 57 	mov	#22294,	r12	;#0x5716

0000586e <.Loc.263.1>:
}
    586e:	31 52       	add	#8,	r1	;r2 As==11

00005870 <.LCFI17>:
    5870:	64 17       	popm	#7,	r10	;16-bit words

00005872 <.LCFI18>:
    5872:	30 41       	ret			

00005874 <t_bit_count>:
{
    5874:	3a 15       	pushm	#4,	r10	;16-bit words

00005876 <.LCFI19>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5876:	b0 12 0e 5c 	call	#23566		;#0x5c0e

0000587a <.Loc.204.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    587a:	0e 4c       	mov	r12,	r14	;
    587c:	5e 02       	rlam	#1,	r14	;
    587e:	0e 5c       	add	r12,	r14	;
    5880:	5e 06       	rlam	#2,	r14	;
    5882:	0e 8c       	sub	r12,	r14	;
    5884:	5e 02       	rlam	#1,	r14	;
    5886:	1f 4e 24 45 	mov	17700(r14),r15	;0x04524

0000588a <.Loc.204.1>:
    588a:	2c 4f       	mov	@r15,	r12	;
    588c:	1d 4f 02 00 	mov	2(r15),	r13	;

00005890 <.LVL76>:
    unsigned n_0_tmp       = __INK_GET_VAR_FROM_BUF(n_0);
    5890:	19 4e 12 45 	mov	17682(r14),r9	;0x04512

00005894 <.Loc.205.1>:
    5894:	28 49       	mov	@r9,	r8	;

00005896 <.LVL77>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5896:	1a 4e 22 45 	mov	17698(r14),r10	;0x04522

0000589a <.Loc.206.1>:
    589a:	27 4a       	mov	@r10,	r7	;

0000589c <.LVL78>:
    seed_tmp              = tmp_seed + 13;
    589c:	0e 4c       	mov	r12,	r14	;
    589e:	3e 50 0d 00 	add	#13,	r14	;#0x000d
    58a2:	8f 4e 00 00 	mov	r14,	0(r15)	;
    58a6:	0e 4d       	mov	r13,	r14	;
    58a8:	0e 63       	adc	r14		;
    58aa:	8f 4e 02 00 	mov	r14,	2(r15)	;

000058ae <.Loc.213.1>:
    if (tmp_seed)
    58ae:	0e 4c       	mov	r12,	r14	;
    58b0:	0e dd       	bis	r13,	r14	;
    58b2:	0e 93       	cmp	#0,	r14	;r3 As==00
    58b4:	0f 24       	jz	$+32     	;abs 0x58d4

000058b6 <.Loc.213.1>:
    unsigned temp = 0;
    58b6:	4b 43       	clr.b	r11		;

000058b8 <.L49>:
            temp++;
    58b8:	1b 53       	inc	r11		;

000058ba <.Loc.219.1>:
        } while (0 != (tmp_seed = tmp_seed & (tmp_seed - 1)));
    58ba:	0f 4c       	mov	r12,	r15	;
    58bc:	3f 53       	add	#-1,	r15	;r3 As==11
    58be:	0e 4d       	mov	r13,	r14	;
    58c0:	3e 63       	addc	#-1,	r14	;r3 As==11

000058c2 <.Loc.219.1>:
    58c2:	0f fc       	and	r12,	r15	;
    58c4:	0e fd       	and	r13,	r14	;
    58c6:	0c 4f       	mov	r15,	r12	;

000058c8 <.LVL82>:
    58c8:	0d 4e       	mov	r14,	r13	;

000058ca <.LVL83>:
    58ca:	0e 4f       	mov	r15,	r14	;
    58cc:	0e dd       	bis	r13,	r14	;
    58ce:	0e 93       	cmp	#0,	r14	;r3 As==00
    58d0:	f3 23       	jnz	$-24     	;abs 0x58b8
    58d2:	08 5b       	add	r11,	r8	;

000058d4 <.L47>:
    __INK_GET_VAR_FROM_BUF(n_0) = n_0_tmp + temp;
    58d4:	89 48 00 00 	mov	r8,	0(r9)	;

000058d8 <.LVL85>:
    __INK_GET_VAR_FROM_BUF(iteration) = ++iteration_tmp;
    58d8:	0c 47       	mov	r7,	r12	;
    58da:	1c 53       	inc	r12		;

000058dc <.LVL86>:
    58dc:	8a 4c 00 00 	mov	r12,	0(r10)	;

000058e0 <.Loc.225.1>:
    if (iteration_tmp < ITER)
    58e0:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    58e4:	0d 9c       	cmp	r12,	r13	;
    58e6:	04 2c       	jc	$+10     	;abs 0x58f0

000058e8 <.Loc.231.1>:
        return t_select_func;
    58e8:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

000058ec <.LVL87>:
}
    58ec:	37 17       	popm	#4,	r10	;16-bit words

000058ee <.LCFI20>:
    58ee:	30 41       	ret			

000058f0 <.L51>:
        return t_bit_count;
    58f0:	3c 40 74 58 	mov	#22644,	r12	;#0x5874

000058f4 <.LVL89>:
}
    58f4:	37 17       	popm	#4,	r10	;16-bit words

000058f6 <.LCFI22>:
    58f6:	30 41       	ret			

000058f8 <t_ntbl_bitcnt>:
{
    58f8:	5a 15       	pushm	#6,	r10	;16-bit words

000058fa <.LCFI23>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    58fa:	b0 12 0e 5c 	call	#23566		;#0x5c0e
    58fe:	0e 4c       	mov	r12,	r14	;

00005900 <.Loc.268.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    5900:	0d 4c       	mov	r12,	r13	;
    5902:	5d 02       	rlam	#1,	r13	;
    5904:	0c 4d       	mov	r13,	r12	;
    5906:	0c 5e       	add	r14,	r12	;
    5908:	0d 4c       	mov	r12,	r13	;
    590a:	5d 06       	rlam	#2,	r13	;
    590c:	0c 4d       	mov	r13,	r12	;
    590e:	0c 8e       	sub	r14,	r12	;
    5910:	5c 02       	rlam	#1,	r12	;
    5912:	19 4c 24 45 	mov	17700(r12),r9	;0x04524

00005916 <.Loc.268.1>:
    5916:	2a 49       	mov	@r9,	r10	;
    5918:	1b 49 02 00 	mov	2(r9),	r11	;

0000591c <.LVL93>:
    unsigned n_2_tmp       = __INK_GET_VAR_FROM_BUF(n_2);
    591c:	18 4c 16 45 	mov	17686(r12),r8	;0x04516

00005920 <.Loc.269.1>:
    5920:	27 48       	mov	@r8,	r7	;

00005922 <.LVL94>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5922:	16 4c 22 45 	mov	17698(r12),r6	;0x04522

00005926 <.Loc.270.1>:
    5926:	25 46       	mov	@r6,	r5	;

00005928 <.LBB4>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5928:	0c 4a       	mov	r10,	r12	;
    592a:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

0000592e <.Loc.95.1>:
    592e:	5f 4c 3c 45 	mov.b	17724(r12),r15	;0x0453c

00005932 <.LVL96>:
    while (0L != (x >>= 4))
    5932:	0c 4a       	mov	r10,	r12	;
    5934:	0d 4b       	mov	r11,	r13	;
    5936:	12 c3       	clrc			
    5938:	0d 10       	rrc	r13		;
    593a:	0c 10       	rrc	r12		;
    593c:	12 c3       	clrc			
    593e:	0d 10       	rrc	r13		;
    5940:	0c 10       	rrc	r12		;
    5942:	12 c3       	clrc			
    5944:	0d 10       	rrc	r13		;
    5946:	0c 10       	rrc	r12		;
    5948:	12 c3       	clrc			
    594a:	0d 10       	rrc	r13		;
    594c:	0c 10       	rrc	r12		;

0000594e <.LVL97>:
    594e:	0e 4c       	mov	r12,	r14	;
    5950:	0e dd       	bis	r13,	r14	;
    5952:	0e 93       	cmp	#0,	r14	;r3 As==00
    5954:	16 24       	jz	$+46     	;abs 0x5982

00005956 <.L59>:
        cnt += bits[(int)(x & 0x0000000FL)];
    5956:	0e 4c       	mov	r12,	r14	;
    5958:	7e f0 0f 00 	and.b	#15,	r14	;#0x000f

0000595c <.Loc.99.1>:
    595c:	5e 4e 3c 45 	mov.b	17724(r14),r14	;0x0453c
    5960:	0f 5e       	add	r14,	r15	;

00005962 <.Loc.97.1>:
    while (0L != (x >>= 4))
    5962:	12 c3       	clrc			
    5964:	0d 10       	rrc	r13		;
    5966:	0c 10       	rrc	r12		;
    5968:	12 c3       	clrc			
    596a:	0d 10       	rrc	r13		;
    596c:	0c 10       	rrc	r12		;
    596e:	12 c3       	clrc			
    5970:	0d 10       	rrc	r13		;
    5972:	0c 10       	rrc	r12		;
    5974:	12 c3       	clrc			
    5976:	0d 10       	rrc	r13		;
    5978:	0c 10       	rrc	r12		;

0000597a <.Loc.97.1>:
    597a:	0e 4c       	mov	r12,	r14	;
    597c:	0e dd       	bis	r13,	r14	;
    597e:	0e 93       	cmp	#0,	r14	;r3 As==00
    5980:	ea 23       	jnz	$-42     	;abs 0x5956

00005982 <.L57>:
    iteration_tmp++;
    5982:	0c 45       	mov	r5,	r12	;
    5984:	1c 53       	inc	r12		;

00005986 <.LVL102>:
    n_2_tmp               += non_recursive_cnt(tmp_seed);
    5986:	0f 57       	add	r7,	r15	;

00005988 <.LVL103>:
    5988:	88 4f 00 00 	mov	r15,	0(r8)	;

0000598c <.Loc.274.1>:
    seed_tmp               = tmp_seed + 13;
    598c:	0d 4a       	mov	r10,	r13	;
    598e:	3d 50 0d 00 	add	#13,	r13	;#0x000d
    5992:	89 4d 00 00 	mov	r13,	0(r9)	;
    5996:	0d 4b       	mov	r11,	r13	;
    5998:	0d 63       	adc	r13		;
    599a:	89 4d 02 00 	mov	r13,	2(r9)	;

0000599e <.Loc.279.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    599e:	86 4c 00 00 	mov	r12,	0(r6)	;

000059a2 <.Loc.281.1>:
    if (iteration_tmp < ITER)
    59a2:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    59a6:	0d 9c       	cmp	r12,	r13	;
    59a8:	04 2c       	jc	$+10     	;abs 0x59b2

000059aa <.Loc.287.1>:
        return t_select_func;
    59aa:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

000059ae <.LVL104>:
}
    59ae:	55 17       	popm	#6,	r10	;16-bit words

000059b0 <.LCFI24>:
    59b0:	30 41       	ret			

000059b2 <.L61>:
        return t_ntbl_bitcnt;
    59b2:	3c 40 f8 58 	mov	#22776,	r12	;#0x58f8

000059b6 <.LVL106>:
}
    59b6:	55 17       	popm	#6,	r10	;16-bit words

000059b8 <.LCFI26>:
    59b8:	30 41       	ret			

000059ba <t_AR_btbl_bitcount>:
{
    59ba:	3a 15       	pushm	#4,	r10	;16-bit words

000059bc <.LCFI27>:
    59bc:	21 82       	sub	#4,	r1	;r2 As==10

000059be <.LCFI28>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    59be:	b0 12 0e 5c 	call	#23566		;#0x5c0e

000059c2 <.Loc.362.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    59c2:	0a 4c       	mov	r12,	r10	;
    59c4:	5a 02       	rlam	#1,	r10	;
    59c6:	0a 5c       	add	r12,	r10	;
    59c8:	5a 06       	rlam	#2,	r10	;
    59ca:	0a 8c       	sub	r12,	r10	;
    59cc:	5a 02       	rlam	#1,	r10	;
    59ce:	1c 4a 24 45 	mov	17700(r10),r12	;0x04524

000059d2 <.Loc.362.1>:
    59d2:	a1 4c 00 00 	mov	@r12,	0(r1)	;
    59d6:	91 4c 02 00 	mov	2(r12),	2(r1)	;
    59da:	02 00 

000059dc <.Loc.363.1>:
    unsigned n_5_tmp       = __INK_GET_VAR_FROM_BUF(n_5);
    59dc:	1c 4a 1c 45 	mov	17692(r10),r12	;0x0451c
    59e0:	29 4c       	mov	@r12,	r9	;

000059e2 <.LVL109>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    59e2:	1c 4a 22 45 	mov	17698(r10),r12	;0x04522
    59e6:	28 4c       	mov	@r12,	r8	;

000059e8 <.LVL110>:
    Accu               = bits[*((unsigned char *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(Ptr++, 15))];
    59e8:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    59ec:	4d 43       	clr.b	r13		;
    59ee:	0c 41       	mov	r1,	r12	;
    59f0:	b0 12 30 5c 	call	#23600		;#0x5c30

000059f4 <.Loc.369.1>:
    59f4:	3d 40 3c 45 	mov	#17724,	r13	;#0x453c
    59f8:	6c 4c       	mov.b	@r12,	r12	;
    59fa:	0c 5d       	add	r13,	r12	;

000059fc <.Loc.370.1>:
    Accu              += bits[*Ptr++];
    59fc:	5e 41 01 00 	mov.b	1(r1),	r14	;
    5a00:	0e 5d       	add	r13,	r14	;

00005a02 <.Loc.370.1>:
    5a02:	6c 4c       	mov.b	@r12,	r12	;

00005a04 <.LVL113>:
    5a04:	6e 4e       	mov.b	@r14,	r14	;
    5a06:	0c 5e       	add	r14,	r12	;

00005a08 <.Loc.371.1>:
    Accu              += bits[*Ptr++];
    5a08:	5e 41 02 00 	mov.b	2(r1),	r14	;
    5a0c:	0e 5d       	add	r13,	r14	;

00005a0e <.Loc.371.1>:
    5a0e:	6e 4e       	mov.b	@r14,	r14	;
    5a10:	0c 5e       	add	r14,	r12	;

00005a12 <.LVL115>:
    seed_tmp               = tmp_seed + 13;
    5a12:	2b 41       	mov	@r1,	r11	;
    5a14:	3b 50 0d 00 	add	#13,	r11	;#0x000d
    5a18:	1f 41 02 00 	mov	2(r1),	r15	;
    5a1c:	0f 63       	adc	r15		;

00005a1e <.Loc.376.1>:
    iteration_tmp++;
    5a1e:	0e 48       	mov	r8,	r14	;
    5a20:	1e 53       	inc	r14		;

00005a22 <.LVL116>:
    __INK_GET_VAR_FROM_BUF(n_5) = n_5_tmp;
    5a22:	18 4a 1c 45 	mov	17692(r10),r8	;0x0451c

00005a26 <.Loc.372.1>:
    Accu              += bits[*Ptr];
    5a26:	57 41 03 00 	mov.b	3(r1),	r7	;
    5a2a:	0d 57       	add	r7,	r13	;

00005a2c <.Loc.372.1>:
    5a2c:	6d 4d       	mov.b	@r13,	r13	;
    5a2e:	0c 5d       	add	r13,	r12	;

00005a30 <.Loc.373.1>:
    n_5_tmp               += Accu;
    5a30:	0c 59       	add	r9,	r12	;
    5a32:	88 4c 00 00 	mov	r12,	0(r8)	;

00005a36 <.Loc.379.1>:
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    5a36:	1c 4a 24 45 	mov	17700(r10),r12	;0x04524
    5a3a:	8c 4b 00 00 	mov	r11,	0(r12)	;

00005a3e <.LVL121>:
    5a3e:	8c 4f 02 00 	mov	r15,	2(r12)	;

00005a42 <.Loc.380.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    5a42:	1c 4a 22 45 	mov	17698(r10),r12	;0x04522

00005a46 <.Loc.362.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    5a46:	3a 50 10 45 	add	#17680,	r10	;#0x4510

00005a4a <.Loc.380.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    5a4a:	8c 4e 00 00 	mov	r14,	0(r12)	;

00005a4e <.Loc.382.1>:
    if (iteration_tmp < ITER)
    5a4e:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    5a52:	0c 9e       	cmp	r14,	r12	;
    5a54:	05 2c       	jc	$+12     	;abs 0x5a60

00005a56 <.Loc.388.1>:
        return t_select_func;
    5a56:	3c 40 2a 54 	mov	#21546,	r12	;#0x542a

00005a5a <.Loc.390.1>:
}
    5a5a:	21 52       	add	#4,	r1	;r2 As==10

00005a5c <.LCFI29>:
    5a5c:	37 17       	popm	#4,	r10	;16-bit words

00005a5e <.LCFI30>:
    5a5e:	30 41       	ret			

00005a60 <.L68>:
        return t_AR_btbl_bitcount;
    5a60:	3c 40 ba 59 	mov	#22970,	r12	;#0x59ba

00005a64 <.Loc.390.1>:
}
    5a64:	21 52       	add	#4,	r1	;r2 As==10

00005a66 <.LCFI32>:
    5a66:	37 17       	popm	#4,	r10	;16-bit words

00005a68 <.LCFI33>:
    5a68:	30 41       	ret			

00005a6a <recursive_cnt>:
{
    5a6a:	0e 4c       	mov	r12,	r14	;
    5a6c:	0f 4d       	mov	r13,	r15	;

00005a6e <.Loc.83.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5a6e:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005a72 <.LVL123>:
    5a72:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c

00005a76 <.LVL124>:
    if (0L != (x >>= 4))
    5a76:	12 c3       	clrc			
    5a78:	0f 10       	rrc	r15		;
    5a7a:	0e 10       	rrc	r14		;
    5a7c:	12 c3       	clrc			
    5a7e:	0f 10       	rrc	r15		;
    5a80:	0e 10       	rrc	r14		;
    5a82:	12 c3       	clrc			
    5a84:	0f 10       	rrc	r15		;
    5a86:	0e 10       	rrc	r14		;
    5a88:	12 c3       	clrc			
    5a8a:	0f 10       	rrc	r15		;
    5a8c:	0e 10       	rrc	r14		;

00005a8e <.LVL125>:
    5a8e:	0d 4e       	mov	r14,	r13	;
    5a90:	0d df       	bis	r15,	r13	;
    5a92:	0d 93       	cmp	#0,	r13	;r3 As==00
    5a94:	18 24       	jz	$+50     	;abs 0x5ac6
    5a96:	4b 43       	clr.b	r11		;

00005a98 <.L72>:
        cnt += recursive_cnt(x);
    5a98:	0b 5c       	add	r12,	r11	;

00005a9a <.Loc.83.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5a9a:	0c 4e       	mov	r14,	r12	;

00005a9c <.LVL126>:
    5a9c:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005aa0 <.Loc.83.1>:
    5aa0:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c

00005aa4 <.LVL127>:
    if (0L != (x >>= 4))
    5aa4:	12 c3       	clrc			
    5aa6:	0f 10       	rrc	r15		;
    5aa8:	0e 10       	rrc	r14		;
    5aaa:	12 c3       	clrc			
    5aac:	0f 10       	rrc	r15		;
    5aae:	0e 10       	rrc	r14		;
    5ab0:	12 c3       	clrc			
    5ab2:	0f 10       	rrc	r15		;
    5ab4:	0e 10       	rrc	r14		;
    5ab6:	12 c3       	clrc			
    5ab8:	0f 10       	rrc	r15		;
    5aba:	0e 10       	rrc	r14		;

00005abc <.Loc.85.1>:
    5abc:	0d 4e       	mov	r14,	r13	;
    5abe:	0d df       	bis	r15,	r13	;
    5ac0:	0d 93       	cmp	#0,	r13	;r3 As==00
    5ac2:	ea 23       	jnz	$-42     	;abs 0x5a98
    5ac4:	0c 5b       	add	r11,	r12	;

00005ac6 <.L69>:
}
    5ac6:	30 41       	ret			

00005ac8 <non_recursive_cnt>:
{
    5ac8:	0e 4c       	mov	r12,	r14	;
    5aca:	0f 4d       	mov	r13,	r15	;

00005acc <.Loc.95.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5acc:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005ad0 <.LVL131>:
    5ad0:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c

00005ad4 <.LVL132>:
    while (0L != (x >>= 4))
    5ad4:	12 c3       	clrc			
    5ad6:	0f 10       	rrc	r15		;
    5ad8:	0e 10       	rrc	r14		;
    5ada:	12 c3       	clrc			
    5adc:	0f 10       	rrc	r15		;
    5ade:	0e 10       	rrc	r14		;
    5ae0:	12 c3       	clrc			
    5ae2:	0f 10       	rrc	r15		;
    5ae4:	0e 10       	rrc	r14		;
    5ae6:	12 c3       	clrc			
    5ae8:	0f 10       	rrc	r15		;
    5aea:	0e 10       	rrc	r14		;

00005aec <.Loc.97.1>:
    5aec:	0d 4e       	mov	r14,	r13	;
    5aee:	0d df       	bis	r15,	r13	;
    5af0:	0d 93       	cmp	#0,	r13	;r3 As==00
    5af2:	16 24       	jz	$+46     	;abs 0x5b20

00005af4 <.L80>:
        cnt += bits[(int)(x & 0x0000000FL)];
    5af4:	0d 4e       	mov	r14,	r13	;
    5af6:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

00005afa <.Loc.99.1>:
    5afa:	5d 4d 3c 45 	mov.b	17724(r13),r13	;0x0453c
    5afe:	0c 5d       	add	r13,	r12	;

00005b00 <.Loc.97.1>:
    while (0L != (x >>= 4))
    5b00:	12 c3       	clrc			
    5b02:	0f 10       	rrc	r15		;
    5b04:	0e 10       	rrc	r14		;
    5b06:	12 c3       	clrc			
    5b08:	0f 10       	rrc	r15		;
    5b0a:	0e 10       	rrc	r14		;
    5b0c:	12 c3       	clrc			
    5b0e:	0f 10       	rrc	r15		;
    5b10:	0e 10       	rrc	r14		;
    5b12:	12 c3       	clrc			
    5b14:	0f 10       	rrc	r15		;
    5b16:	0e 10       	rrc	r14		;

00005b18 <.Loc.97.1>:
    5b18:	0d 4e       	mov	r14,	r13	;
    5b1a:	0d df       	bis	r15,	r13	;
    5b1c:	0d 93       	cmp	#0,	r13	;r3 As==00
    5b1e:	ea 23       	jnz	$-42     	;abs 0x5af4

00005b20 <.L77>:
}
    5b20:	30 41       	ret			

00005b22 <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    5b22:	b0 12 54 5c 	call	#23636		;#0x5c54
    5b26:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5b28:	01 20       	jnz	$+4      	;abs 0x5b2c

00005b2a <.Loc.119.1>:
    5b2a:	30 41       	ret			

00005b2c <.L90>:
    5b2c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5b2e:	3d 40 bc 53 	mov	#21436,	r13	;#0x53bc
    5b32:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5b36:	b0 12 c4 5c 	call	#23748		;#0x5cc4

00005b3a <.Loc.119.1>:
    5b3a:	30 41       	ret			

00005b3c <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS(pinCont);
    5b3c:	3c 40 10 45 	mov	#17680,	r12	;#0x4510
    5b40:	bc 40 44 53 	mov	#21316,	0(r12)	;#0x5344
    5b44:	00 00 

00005b46 <.Loc.453.1>:
    5b46:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b4a:	3d 50 44 53 	add	#21316,	r13	;#0x5344
    5b4e:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005b52 <.Loc.453.1>:
    __INK_SET_BUFFER_POINTERS(n_0);
    5b52:	bc 40 42 53 	mov	#21314,	2(r12)	;#0x5342
    5b56:	02 00 

00005b58 <.Loc.454.1>:
    5b58:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b5c:	3d 50 42 53 	add	#21314,	r13	;#0x5342
    5b60:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005b64 <.Loc.454.1>:
    __INK_SET_BUFFER_POINTERS(n_1);
    5b64:	bc 40 40 53 	mov	#21312,	4(r12)	;#0x5340
    5b68:	04 00 

00005b6a <.Loc.455.1>:
    5b6a:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b6e:	3d 50 40 53 	add	#21312,	r13	;#0x5340
    5b72:	8c 4d 1a 00 	mov	r13,	26(r12)	; 0x001a

00005b76 <.Loc.455.1>:
    __INK_SET_BUFFER_POINTERS(n_2);
    5b76:	bc 40 3e 53 	mov	#21310,	6(r12)	;#0x533e
    5b7a:	06 00 

00005b7c <.Loc.456.1>:
    5b7c:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b80:	3d 50 3e 53 	add	#21310,	r13	;#0x533e
    5b84:	8c 4d 1c 00 	mov	r13,	28(r12)	; 0x001c

00005b88 <.Loc.456.1>:
    __INK_SET_BUFFER_POINTERS(n_3);
    5b88:	bc 40 3c 53 	mov	#21308,	8(r12)	;#0x533c
    5b8c:	08 00 

00005b8e <.Loc.457.1>:
    5b8e:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b92:	3d 50 3c 53 	add	#21308,	r13	;#0x533c
    5b96:	8c 4d 1e 00 	mov	r13,	30(r12)	; 0x001e

00005b9a <.Loc.457.1>:
    __INK_SET_BUFFER_POINTERS(n_4);
    5b9a:	bc 40 3a 53 	mov	#21306,	10(r12)	;#0x533a, 0x000a
    5b9e:	0a 00 

00005ba0 <.Loc.458.1>:
    5ba0:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5ba4:	3d 50 3a 53 	add	#21306,	r13	;#0x533a
    5ba8:	8c 4d 20 00 	mov	r13,	32(r12)	; 0x0020

00005bac <.Loc.458.1>:
    __INK_SET_BUFFER_POINTERS(n_5);
    5bac:	bc 40 38 53 	mov	#21304,	12(r12)	;#0x5338, 0x000c
    5bb0:	0c 00 

00005bb2 <.Loc.459.1>:
    5bb2:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bb6:	3d 50 38 53 	add	#21304,	r13	;#0x5338
    5bba:	8c 4d 22 00 	mov	r13,	34(r12)	; 0x0022

00005bbe <.Loc.459.1>:
    __INK_SET_BUFFER_POINTERS(n_6);
    5bbe:	bc 40 36 53 	mov	#21302,	14(r12)	;#0x5336, 0x000e
    5bc2:	0e 00 

00005bc4 <.Loc.460.1>:
    5bc4:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bc8:	3d 50 36 53 	add	#21302,	r13	;#0x5336
    5bcc:	8c 4d 24 00 	mov	r13,	36(r12)	; 0x0024

00005bd0 <.Loc.460.1>:
    __INK_SET_BUFFER_POINTERS(function);
    5bd0:	bc 40 34 53 	mov	#21300,	16(r12)	;#0x5334, 0x0010
    5bd4:	10 00 

00005bd6 <.Loc.461.1>:
    5bd6:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bda:	3d 50 34 53 	add	#21300,	r13	;#0x5334
    5bde:	8c 4d 26 00 	mov	r13,	38(r12)	; 0x0026

00005be2 <.Loc.461.1>:
    __INK_SET_BUFFER_POINTERS(iteration);
    5be2:	bc 40 32 53 	mov	#21298,	18(r12)	;#0x5332, 0x0012
    5be6:	12 00 

00005be8 <.Loc.462.1>:
    5be8:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bec:	3d 50 32 53 	add	#21298,	r13	;#0x5332
    5bf0:	8c 4d 28 00 	mov	r13,	40(r12)	; 0x0028

00005bf4 <.Loc.462.1>:
    __INK_SET_BUFFER_POINTERS(seed);
    5bf4:	bc 40 2e 53 	mov	#21294,	20(r12)	;#0x532e, 0x0014
    5bf8:	14 00 

00005bfa <.Loc.463.1>:
    5bfa:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bfe:	3d 50 2e 53 	add	#21294,	r13	;#0x532e
    5c02:	8c 4d 2a 00 	mov	r13,	42(r12)	; 0x002a

00005c06 <.Loc.463.1>:
}
    5c06:	30 41       	ret			

00005c08 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    5c08:	
00005c0a <L0^A>:
    5c0a:	18 00       	mova	@r0+,	r8	;

00005c0c <.LVL1>:
    5c0c:	30 41       	ret			

00005c0e <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    5c0e:	5c 42 5a 52 	mov.b	&0x525a,r12	;0x525a
    5c12:	30 41       	ret			

00005c14 <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    5c14:	3c 90 2e 53 	cmp	#21294,	r12	;#0x532e
    5c18:	06 28       	jnc	$+14     	;abs 0x5c26

00005c1a <.Loc.27.1>:
    5c1a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5c1c:	3c 90 46 53 	cmp	#21318,	r12	;#0x5346
    5c20:	04 2c       	jc	$+10     	;abs 0x5c2a
    5c22:	4c 4d       	mov.b	r13,	r12	;

00005c24 <.L5>:
}
    5c24:	30 41       	ret			

00005c26 <.L7>:
    5c26:	4c 43       	clr.b	r12		;

00005c28 <.LVL5>:
    5c28:	30 41       	ret			

00005c2a <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    5c2a:	4d 43       	clr.b	r13		;
    5c2c:	4c 4d       	mov.b	r13,	r12	;

00005c2e <.LVL7>:
    5c2e:	fa 3f       	jmp	$-10     	;abs 0x5c24

00005c30 <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    5c30:	0a 15       	pushm	#1,	r10	;16-bit words

00005c32 <.LCFI0>:
    5c32:	0a 4c       	mov	r12,	r10	;

00005c34 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    5c34:	3c 90 2e 53 	cmp	#21294,	r12	;#0x532e
    5c38:	0a 28       	jnc	$+22     	;abs 0x5c4e
    5c3a:	3c 90 46 53 	cmp	#21318,	r12	;#0x5346
    5c3e:	07 2c       	jc	$+16     	;abs 0x5c4e

00005c40 <.LBB14>:
    return address + buffer_offset * buffer_index;
    5c40:	5c 42 5a 52 	mov.b	&0x525a,r12	;0x525a

00005c44 <.LVL11>:
    5c44:	3d 40 18 00 	mov	#24,	r13	;#0x0018

00005c48 <.LVL12>:
    5c48:	b0 12 32 78 	call	#30770		;#0x7832

00005c4c <.LVL13>:
    5c4c:	0a 5c       	add	r12,	r10	;

00005c4e <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    5c4e:	0c 4a       	mov	r10,	r12	;
    5c50:	0a 17       	popm	#1,	r10	;16-bit words

00005c52 <.LCFI1>:
    5c52:	30 41       	ret			

00005c54 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    5c54:	
00005c56 <L0^A>:
    5c56:	3e 46       	mov	@r6+,	r14	;
    5c58:	30 41       	ret			

00005c5a <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    5c5a:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    5c5e:	30 41       	ret			

00005c60 <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    5c60:	b0 12 bc 64 	call	#25788		;#0x64bc

00005c64 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    5c64:	c2 93 3e 46 	cmp.b	#0,	&0x463e	;r3 As==00
    5c68:	22 20       	jnz	$+70     	;abs 0x5cae

00005c6a <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    5c6a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c6e <.Loc.50.1>:
    5c6e:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

00005c72 <.Loc.50.1>:
    5c72:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c76 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    5c76:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c7a:	02 02 

00005c7c <.Loc.51.1>:
    5c7c:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    5c80:	04 02 

00005c82 <.Loc.51.1>:
    5c82:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c86:	02 02 

00005c88 <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    5c88:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c8c:	22 02 

00005c8e <.Loc.52.1>:
    5c8e:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    5c92:	24 02 

00005c94 <.Loc.52.1>:
    5c94:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c98:	22 02 

00005c9a <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    5c9a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c9e:	22 02 

00005ca0 <.Loc.53.1>:
    5ca0:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    5ca4:	24 02 

00005ca6 <.Loc.53.1>:
    5ca6:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5caa:	22 02 

00005cac <.Loc.53.1>:
#endif
}
    5cac:	30 41       	ret			

00005cae <.L6>:
        __scheduler_boot_init();
    5cae:	b0 12 14 65 	call	#25876		;#0x6514

00005cb2 <.Loc.36.1>:
        __events_boot_init();
    5cb2:	b0 12 36 62 	call	#25142		;#0x6236
    5cb6:	d9 3f       	jmp	$-76     	;abs 0x5c6a

00005cb8 <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    5cb8:	c2 43 3e 46 	mov.b	#0,	&0x463e	;r3 As==00

00005cbc <.Loc.69.1>:
    __ink_initialized = true;
    5cbc:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

00005cc0 <.Loc.70.1>:
    5cc0:	30 41       	ret			

00005cc2 <.LFE3>:
	...

00005cc4 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    5cc4:	2a 15       	pushm	#3,	r10	;16-bit words

00005cc6 <.LCFI0>:
    5cc6:	21 83       	decd	r1		;

00005cc8 <.LCFI1>:
    5cc8:	4a 4c       	mov.b	r12,	r10	;
    5cca:	09 4d       	mov	r13,	r9	;
    5ccc:	48 4e       	mov.b	r14,	r8	;

00005cce <.Loc.147.1>:
    if (!ink_is_first_boot())
    5cce:	b0 12 54 5c 	call	#23636		;#0x5c54

00005cd2 <.LVL1>:
    5cd2:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5cd4:	56 24       	jz	$+174    	;abs 0x5d82

00005cd6 <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    5cd6:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    5cda:	4c 9a       	cmp.b	r10,	r12	;
    5cdc:	47 28       	jnc	$+144    	;abs 0x5d6c
    5cde:	0c 4a       	mov	r10,	r12	;
    5ce0:	5c 02       	rlam	#1,	r12	;
    5ce2:	3c 50 ec 5c 	add	#23788,	r12	;#0x5cec
    5ce6:	2c 4c       	mov	@r12,	r12	;
    5ce8:	00 4c       	br	r12		;
	...

00005cec <.L6>:
    5cec:	6c 5d       	add.b	@r13,	r12	;
    5cee:	04 62       	addc	r2,	r4	;
    5cf0:	f0 61 dc 61 	addc.b	@r1+,	0x61dc	; PC rel. 0xbece
    5cf4:	c8 61 b4 61 	addc.b	r1,	25012(r8); 0x61b4
    5cf8:	a0 61 8c 61 	addc	@r1,	0x618c	; PC rel. 0xbe86
    5cfc:	78 61       	addc.b	@r1+,	r8	;
    5cfe:	64 61       	addc.b	@r1,	r4	;
    5d00:	52 61 40 61 	addc.b	24896(r1),r2	;0x06140
    5d04:	2e 61       	addc	@r1,	r14	;
    5d06:	1c 61 0a 61 	addc	24842(r1),r12	;0x0610a
    5d0a:	f8 60 e6 60 	addc.b	#24806,	24788(r8);#0x60e6, 0x60d4
    5d0e:	d4 60 
    5d10:	c2 60 b0 60 	addc.b	r0,	&0x60b0	;
    5d14:	9e 60 8c 60 	addc	0x608c,	24698(r14);PC rel. 0xbda2, 0x607a
    5d18:	7a 60 
    5d1a:	68 60       	addc.b	@r0,	r8	;
    5d1c:	56 60 44 60 	addc.b	0x6044,	r6	;PC rel. 0xbd62
    5d20:	32 60 20 60 	addc	#24608,	r2	;#0x6020
    5d24:	0e 60       	addc	r0,	r14	;
    5d26:	fc 5f ea 5f 	add.b	@r15+,	24554(r12); 0x5fea
    5d2a:	d8 5f c6 5f 	add.b	24518(r15),24500(r8);0x05fc6, 0x5fb4
    5d2e:	b4 5f 
    5d30:	a2 5f 90 5f 	add	@r15,	&0x5f90	;
    5d34:	7e 5f       	add.b	@r15+,	r14	;
    5d36:	6c 5f       	add.b	@r15,	r12	;
    5d38:	5a 5f 48 5f 	add.b	24392(r15),r10	;0x05f48
    5d3c:	36 5f       	add	@r15+,	r6	;
    5d3e:	24 5f       	add	@r15,	r4	;
    5d40:	12 5f 00 5f 	add	24320(r15),r2	;0x05f00
    5d44:	ee 5e dc 5e 	add.b	@r14,	24284(r14); 0x5edc
    5d48:	ca 5e b8 5e 	add.b	r14,	24248(r10); 0x5eb8
    5d4c:	a6 5e 94 5e 	add	@r14,	24212(r6); 0x5e94
    5d50:	82 5e 70 5e 	add	r14,	&0x5e70	;
    5d54:	5e 5e 4c 5e 	add.b	24140(r14),r14	;0x05e4c
    5d58:	3a 5e       	add	@r14+,	r10	;
    5d5a:	28 5e       	add	@r14,	r8	;
    5d5c:	16 5e 04 5e 	add	24068(r14),r6	;0x05e04
    5d60:	f2 5d e0 5d 	add.b	@r13+,	&0x5de0	;
    5d64:	ce 5d bc 5d 	add.b	r13,	23996(r14); 0x5dbc
    5d68:	aa 5d 98 5d 	add	@r13,	23960(r10); 0x5d98

00005d6c <.L70>:
    if (!ink_is_first_boot())
    5d6c:	4c 43       	clr.b	r12		;
    5d6e:	4f 43       	clr.b	r15		;
    5d70:	4e 43       	clr.b	r14		;

00005d72 <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    5d72:	81 4c 00 00 	mov	r12,	0(r1)	;
    5d76:	0d 49       	mov	r9,	r13	;
    5d78:	4c 4a       	mov.b	r10,	r12	;

00005d7a <.LVL4>:
    5d7a:	b0 12 3c 65 	call	#25916		;#0x653c

00005d7e <.LVL5>:

    if (start_on_first_boot)
    5d7e:	08 93       	cmp	#0,	r8	;r3 As==00
    5d80:	03 20       	jnz	$+8      	;abs 0x5d88

00005d82 <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    5d82:	21 53       	incd	r1		;

00005d84 <.LCFI2>:
    5d84:	28 17       	popm	#3,	r10	;16-bit words

00005d86 <.LCFI3>:
    5d86:	30 41       	ret			

00005d88 <.L75>:
        __start_thread(__get_thread(priority));
    5d88:	4c 4a       	mov.b	r10,	r12	;
    5d8a:	b0 12 e0 65 	call	#26080		;#0x65e0
    5d8e:	b0 12 c4 65 	call	#26052		;#0x65c4

00005d92 <.Loc.232.1>:
}
    5d92:	21 53       	incd	r1		;

00005d94 <.LCFI5>:
    5d94:	28 17       	popm	#3,	r10	;16-bit words

00005d96 <.LCFI6>:
    5d96:	30 41       	ret			

00005d98 <.L5>:
        INK_CREATE_THREAD_CASE(63)
    5d98:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5d9c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005da0 <.LVL9>:
    5da0:	3c 40 00 00 	mov	#0,	r12	;

00005da4 <.Loc.220.1>:
    5da4:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5da8:	e4 3f       	jmp	$-54     	;abs 0x5d72

00005daa <.L7>:
        INK_CREATE_THREAD_CASE(62)
    5daa:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5dae:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005db2 <.LVL12>:
    5db2:	3c 40 00 00 	mov	#0,	r12	;

00005db6 <.Loc.219.1>:
    5db6:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5dba:	db 3f       	jmp	$-72     	;abs 0x5d72

00005dbc <.L8>:
        INK_CREATE_THREAD_CASE(61)
    5dbc:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5dc0:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dc4 <.LVL15>:
    5dc4:	3c 40 00 00 	mov	#0,	r12	;

00005dc8 <.Loc.218.1>:
    5dc8:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5dcc:	d2 3f       	jmp	$-90     	;abs 0x5d72

00005dce <.L9>:
        INK_CREATE_THREAD_CASE(60)
    5dce:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5dd2:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dd6 <.LVL18>:
    5dd6:	3c 40 00 00 	mov	#0,	r12	;

00005dda <.Loc.217.1>:
    5dda:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5dde:	c9 3f       	jmp	$-108    	;abs 0x5d72

00005de0 <.L10>:
        INK_CREATE_THREAD_CASE(59)
    5de0:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5de4:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005de8 <.LVL21>:
    5de8:	3c 40 00 00 	mov	#0,	r12	;

00005dec <.Loc.216.1>:
    5dec:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5df0:	c0 3f       	jmp	$-126    	;abs 0x5d72

00005df2 <.L11>:
        INK_CREATE_THREAD_CASE(58)
    5df2:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5df6:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dfa <.LVL24>:
    5dfa:	3c 40 00 00 	mov	#0,	r12	;

00005dfe <.Loc.215.1>:
    5dfe:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e02:	b7 3f       	jmp	$-144    	;abs 0x5d72

00005e04 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    5e04:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e08:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e0c <.LVL27>:
    5e0c:	3c 40 00 00 	mov	#0,	r12	;

00005e10 <.Loc.214.1>:
    5e10:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e14:	ae 3f       	jmp	$-162    	;abs 0x5d72

00005e16 <.L13>:
        INK_CREATE_THREAD_CASE(56)
    5e16:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e1a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e1e <.LVL30>:
    5e1e:	3c 40 00 00 	mov	#0,	r12	;

00005e22 <.Loc.213.1>:
    5e22:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e26:	a5 3f       	jmp	$-180    	;abs 0x5d72

00005e28 <.L14>:
        INK_CREATE_THREAD_CASE(55)
    5e28:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e2c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e30 <.LVL33>:
    5e30:	3c 40 00 00 	mov	#0,	r12	;

00005e34 <.Loc.212.1>:
    5e34:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e38:	9c 3f       	jmp	$-198    	;abs 0x5d72

00005e3a <.L15>:
        INK_CREATE_THREAD_CASE(54)
    5e3a:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e3e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e42 <.LVL36>:
    5e42:	3c 40 00 00 	mov	#0,	r12	;

00005e46 <.Loc.211.1>:
    5e46:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e4a:	93 3f       	jmp	$-216    	;abs 0x5d72

00005e4c <.L16>:
        INK_CREATE_THREAD_CASE(53)
    5e4c:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e50:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e54 <.LVL39>:
    5e54:	3c 40 00 00 	mov	#0,	r12	;

00005e58 <.Loc.210.1>:
    5e58:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e5c:	8a 3f       	jmp	$-234    	;abs 0x5d72

00005e5e <.L17>:
        INK_CREATE_THREAD_CASE(52)
    5e5e:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e62:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e66 <.LVL42>:
    5e66:	3c 40 00 00 	mov	#0,	r12	;

00005e6a <.Loc.209.1>:
    5e6a:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e6e:	81 3f       	jmp	$-252    	;abs 0x5d72

00005e70 <.L18>:
        INK_CREATE_THREAD_CASE(51)
    5e70:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e74:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e78 <.LVL45>:
    5e78:	3c 40 00 00 	mov	#0,	r12	;

00005e7c <.Loc.208.1>:
    5e7c:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e80:	78 3f       	jmp	$-270    	;abs 0x5d72

00005e82 <.L19>:
        INK_CREATE_THREAD_CASE(50)
    5e82:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e86:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e8a <.LVL48>:
    5e8a:	3c 40 00 00 	mov	#0,	r12	;

00005e8e <.Loc.207.1>:
    5e8e:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5e92:	6f 3f       	jmp	$-288    	;abs 0x5d72

00005e94 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    5e94:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5e98:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e9c <.LVL51>:
    5e9c:	3c 40 00 00 	mov	#0,	r12	;

00005ea0 <.Loc.206.1>:
    5ea0:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5ea4:	66 3f       	jmp	$-306    	;abs 0x5d72

00005ea6 <.L21>:
        INK_CREATE_THREAD_CASE(48)
    5ea6:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5eaa:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005eae <.LVL54>:
    5eae:	3c 40 00 00 	mov	#0,	r12	;

00005eb2 <.Loc.205.1>:
    5eb2:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5eb6:	5d 3f       	jmp	$-324    	;abs 0x5d72

00005eb8 <.L22>:
        INK_CREATE_THREAD_CASE(47)
    5eb8:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5ebc:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ec0 <.LVL57>:
    5ec0:	3c 40 00 00 	mov	#0,	r12	;

00005ec4 <.Loc.204.1>:
    5ec4:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5ec8:	54 3f       	jmp	$-342    	;abs 0x5d72

00005eca <.L23>:
        INK_CREATE_THREAD_CASE(46)
    5eca:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5ece:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ed2 <.LVL60>:
    5ed2:	3c 40 00 00 	mov	#0,	r12	;

00005ed6 <.Loc.203.1>:
    5ed6:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5eda:	4b 3f       	jmp	$-360    	;abs 0x5d72

00005edc <.L24>:
        INK_CREATE_THREAD_CASE(45)
    5edc:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5ee0:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ee4 <.LVL63>:
    5ee4:	3c 40 00 00 	mov	#0,	r12	;

00005ee8 <.Loc.202.1>:
    5ee8:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5eec:	42 3f       	jmp	$-378    	;abs 0x5d72

00005eee <.L25>:
        INK_CREATE_THREAD_CASE(44)
    5eee:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5ef2:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ef6 <.LVL66>:
    5ef6:	3c 40 00 00 	mov	#0,	r12	;

00005efa <.Loc.201.1>:
    5efa:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5efe:	39 3f       	jmp	$-396    	;abs 0x5d72

00005f00 <.L26>:
        INK_CREATE_THREAD_CASE(43)
    5f00:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f04:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f08 <.LVL69>:
    5f08:	3c 40 00 00 	mov	#0,	r12	;

00005f0c <.Loc.200.1>:
    5f0c:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f10:	30 3f       	jmp	$-414    	;abs 0x5d72

00005f12 <.L27>:
        INK_CREATE_THREAD_CASE(42)
    5f12:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f16:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f1a <.LVL72>:
    5f1a:	3c 40 00 00 	mov	#0,	r12	;

00005f1e <.Loc.199.1>:
    5f1e:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f22:	27 3f       	jmp	$-432    	;abs 0x5d72

00005f24 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    5f24:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f28:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f2c <.LVL75>:
    5f2c:	3c 40 00 00 	mov	#0,	r12	;

00005f30 <.Loc.198.1>:
    5f30:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f34:	1e 3f       	jmp	$-450    	;abs 0x5d72

00005f36 <.L29>:
        INK_CREATE_THREAD_CASE(40)
    5f36:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f3a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f3e <.LVL78>:
    5f3e:	3c 40 00 00 	mov	#0,	r12	;

00005f42 <.Loc.197.1>:
    5f42:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f46:	15 3f       	jmp	$-468    	;abs 0x5d72

00005f48 <.L30>:
        INK_CREATE_THREAD_CASE(39)
    5f48:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f4c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f50 <.LVL81>:
    5f50:	3c 40 00 00 	mov	#0,	r12	;

00005f54 <.Loc.196.1>:
    5f54:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f58:	0c 3f       	jmp	$-486    	;abs 0x5d72

00005f5a <.L31>:
        INK_CREATE_THREAD_CASE(38)
    5f5a:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f5e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f62 <.LVL84>:
    5f62:	3c 40 00 00 	mov	#0,	r12	;

00005f66 <.Loc.195.1>:
    5f66:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f6a:	03 3f       	jmp	$-504    	;abs 0x5d72

00005f6c <.L32>:
        INK_CREATE_THREAD_CASE(37)
    5f6c:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f70:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f74 <.LVL87>:
    5f74:	3c 40 00 00 	mov	#0,	r12	;

00005f78 <.Loc.194.1>:
    5f78:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f7c:	fa 3e       	jmp	$-522    	;abs 0x5d72

00005f7e <.L33>:
        INK_CREATE_THREAD_CASE(36)
    5f7e:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f82:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f86 <.LVL90>:
    5f86:	3c 40 00 00 	mov	#0,	r12	;

00005f8a <.Loc.193.1>:
    5f8a:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5f8e:	f1 3e       	jmp	$-540    	;abs 0x5d72

00005f90 <.L34>:
        INK_CREATE_THREAD_CASE(35)
    5f90:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5f94:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f98 <.LVL93>:
    5f98:	3c 40 00 00 	mov	#0,	r12	;

00005f9c <.Loc.192.1>:
    5f9c:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5fa0:	e8 3e       	jmp	$-558    	;abs 0x5d72

00005fa2 <.L35>:
        INK_CREATE_THREAD_CASE(34)
    5fa2:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5fa6:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005faa <.LVL96>:
    5faa:	3c 40 00 00 	mov	#0,	r12	;

00005fae <.Loc.191.1>:
    5fae:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5fb2:	df 3e       	jmp	$-576    	;abs 0x5d72

00005fb4 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    5fb4:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5fb8:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fbc <.LVL99>:
    5fbc:	3c 40 00 00 	mov	#0,	r12	;

00005fc0 <.Loc.190.1>:
    5fc0:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5fc4:	d6 3e       	jmp	$-594    	;abs 0x5d72

00005fc6 <.L37>:
        INK_CREATE_THREAD_CASE(32)
    5fc6:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5fca:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fce <.LVL102>:
    5fce:	3c 40 00 00 	mov	#0,	r12	;

00005fd2 <.Loc.189.1>:
    5fd2:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5fd6:	cd 3e       	jmp	$-612    	;abs 0x5d72

00005fd8 <.L38>:
        INK_CREATE_THREAD_CASE(31)
    5fd8:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5fdc:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fe0 <.LVL105>:
    5fe0:	3c 40 00 00 	mov	#0,	r12	;

00005fe4 <.Loc.188.1>:
    5fe4:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5fe8:	c4 3e       	jmp	$-630    	;abs 0x5d72

00005fea <.L39>:
        INK_CREATE_THREAD_CASE(30)
    5fea:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    5fee:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ff2 <.LVL108>:
    5ff2:	3c 40 00 00 	mov	#0,	r12	;

00005ff6 <.Loc.187.1>:
    5ff6:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    5ffa:	bb 3e       	jmp	$-648    	;abs 0x5d72

00005ffc <.L40>:
        INK_CREATE_THREAD_CASE(29)
    5ffc:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    6000:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006004 <.LVL111>:
    6004:	3c 40 00 00 	mov	#0,	r12	;

00006008 <.Loc.186.1>:
    6008:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    600c:	b2 3e       	jmp	$-666    	;abs 0x5d72

0000600e <.L41>:
        INK_CREATE_THREAD_CASE(28)
    600e:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    6012:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006016 <.LVL114>:
    6016:	3c 40 00 00 	mov	#0,	r12	;

0000601a <.Loc.185.1>:
    601a:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    601e:	a9 3e       	jmp	$-684    	;abs 0x5d72

00006020 <.L42>:
        INK_CREATE_THREAD_CASE(27)
    6020:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    6024:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006028 <.LVL117>:
    6028:	3c 40 00 00 	mov	#0,	r12	;

0000602c <.Loc.184.1>:
    602c:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    6030:	a0 3e       	jmp	$-702    	;abs 0x5d72

00006032 <.L43>:
        INK_CREATE_THREAD_CASE(26)
    6032:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    6036:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000603a <.LVL120>:
    603a:	3c 40 00 00 	mov	#0,	r12	;

0000603e <.Loc.183.1>:
    603e:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    6042:	97 3e       	jmp	$-720    	;abs 0x5d72

00006044 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    6044:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    6048:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000604c <.LVL123>:
    604c:	3c 40 00 00 	mov	#0,	r12	;

00006050 <.Loc.182.1>:
    6050:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    6054:	8e 3e       	jmp	$-738    	;abs 0x5d72

00006056 <.L45>:
        INK_CREATE_THREAD_CASE(24)
    6056:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    605a:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000605e <.LVL126>:
    605e:	3c 40 00 00 	mov	#0,	r12	;

00006062 <.Loc.181.1>:
    6062:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    6066:	85 3e       	jmp	$-756    	;abs 0x5d72

00006068 <.L46>:
        INK_CREATE_THREAD_CASE(23)
    6068:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    606c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006070 <.LVL129>:
    6070:	3c 40 00 00 	mov	#0,	r12	;

00006074 <.Loc.180.1>:
    6074:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    6078:	7c 3e       	jmp	$-774    	;abs 0x5d72

0000607a <.L47>:
        INK_CREATE_THREAD_CASE(22)
    607a:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    607e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006082 <.LVL132>:
    6082:	3c 40 00 00 	mov	#0,	r12	;

00006086 <.Loc.179.1>:
    6086:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    608a:	73 3e       	jmp	$-792    	;abs 0x5d72

0000608c <.L48>:
        INK_CREATE_THREAD_CASE(21)
    608c:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    6090:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006094 <.LVL135>:
    6094:	3c 40 00 00 	mov	#0,	r12	;

00006098 <.Loc.178.1>:
    6098:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    609c:	6a 3e       	jmp	$-810    	;abs 0x5d72

0000609e <.L49>:
        INK_CREATE_THREAD_CASE(20)
    609e:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    60a2:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060a6 <.LVL138>:
    60a6:	3c 40 00 00 	mov	#0,	r12	;

000060aa <.Loc.177.1>:
    60aa:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    60ae:	61 3e       	jmp	$-828    	;abs 0x5d72

000060b0 <.L50>:
        INK_CREATE_THREAD_CASE(19)
    60b0:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    60b4:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060b8 <.LVL141>:
    60b8:	3c 40 00 00 	mov	#0,	r12	;

000060bc <.Loc.176.1>:
    60bc:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    60c0:	58 3e       	jmp	$-846    	;abs 0x5d72

000060c2 <.L51>:
        INK_CREATE_THREAD_CASE(18)
    60c2:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    60c6:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060ca <.LVL144>:
    60ca:	3c 40 00 00 	mov	#0,	r12	;

000060ce <.Loc.175.1>:
    60ce:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    60d2:	4f 3e       	jmp	$-864    	;abs 0x5d72

000060d4 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    60d4:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    60d8:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060dc <.LVL147>:
    60dc:	3c 40 00 00 	mov	#0,	r12	;

000060e0 <.Loc.174.1>:
    60e0:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    60e4:	46 3e       	jmp	$-882    	;abs 0x5d72

000060e6 <.L53>:
        INK_CREATE_THREAD_CASE(16)
    60e6:	3f 40 46 53 	mov	#21318,	r15	;#0x5346
    60ea:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060ee <.LVL150>:
    60ee:	3c 40 00 00 	mov	#0,	r12	;

000060f2 <.Loc.173.1>:
    60f2:	3e 40 46 53 	mov	#21318,	r14	;#0x5346
    60f6:	3d 3e       	jmp	$-900    	;abs 0x5d72

000060f8 <.L54>:
        INK_CREATE_THREAD_CASE(15)
    60f8:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    60fc:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006100 <.LVL153>:
    6100:	3c 40 18 00 	mov	#24,	r12	;#0x0018

00006104 <.Loc.172.1>:
    6104:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6108:	34 3e       	jmp	$-918    	;abs 0x5d72

0000610a <.L55>:
        INK_CREATE_THREAD_CASE(14)
    610a:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    610e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006112 <.LVL156>:
    6112:	3c 40 00 00 	mov	#0,	r12	;

00006116 <.Loc.171.1>:
    6116:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    611a:	2b 3e       	jmp	$-936    	;abs 0x5d72

0000611c <.L56>:
        INK_CREATE_THREAD_CASE(13)
    611c:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6120:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006124 <.LVL159>:
    6124:	3c 40 00 00 	mov	#0,	r12	;

00006128 <.Loc.170.1>:
    6128:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    612c:	22 3e       	jmp	$-954    	;abs 0x5d72

0000612e <.L57>:
        INK_CREATE_THREAD_CASE(12)
    612e:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6132:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006136 <.LVL162>:
    6136:	3c 40 00 00 	mov	#0,	r12	;

0000613a <.Loc.169.1>:
    613a:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    613e:	19 3e       	jmp	$-972    	;abs 0x5d72

00006140 <.L58>:
        INK_CREATE_THREAD_CASE(11)
    6140:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6144:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006148 <.LVL165>:
    6148:	3c 40 00 00 	mov	#0,	r12	;

0000614c <.Loc.168.1>:
    614c:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6150:	10 3e       	jmp	$-990    	;abs 0x5d72

00006152 <.L59>:
        INK_CREATE_THREAD_CASE(10)
    6152:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6156:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000615a <.LVL168>:
    615a:	3c 40 00 00 	mov	#0,	r12	;

0000615e <.Loc.167.1>:
    615e:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6162:	07 3e       	jmp	$-1008   	;abs 0x5d72

00006164 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    6164:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6168:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000616c <.LVL171>:
    616c:	3c 40 00 00 	mov	#0,	r12	;

00006170 <.Loc.166.1>:
    6170:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6174:	30 40 72 5d 	br	#0x5d72		;

00006178 <.L61>:
        INK_CREATE_THREAD_CASE(8)
    6178:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    617c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006180 <.LVL174>:
    6180:	3c 40 00 00 	mov	#0,	r12	;

00006184 <.Loc.165.1>:
    6184:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6188:	30 40 72 5d 	br	#0x5d72		;

0000618c <.L62>:
        INK_CREATE_THREAD_CASE(7)
    618c:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6190:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006194 <.LVL177>:
    6194:	3c 40 00 00 	mov	#0,	r12	;

00006198 <.Loc.164.1>:
    6198:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    619c:	30 40 72 5d 	br	#0x5d72		;

000061a0 <.L63>:
        INK_CREATE_THREAD_CASE(6)
    61a0:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    61a4:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061a8 <.LVL180>:
    61a8:	3c 40 00 00 	mov	#0,	r12	;

000061ac <.Loc.163.1>:
    61ac:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    61b0:	30 40 72 5d 	br	#0x5d72		;

000061b4 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    61b4:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    61b8:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061bc <.LVL183>:
    61bc:	3c 40 00 00 	mov	#0,	r12	;

000061c0 <.Loc.162.1>:
    61c0:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    61c4:	30 40 72 5d 	br	#0x5d72		;

000061c8 <.L65>:
        INK_CREATE_THREAD_CASE(4)
    61c8:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    61cc:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061d0 <.LVL186>:
    61d0:	3c 40 00 00 	mov	#0,	r12	;

000061d4 <.Loc.161.1>:
    61d4:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    61d8:	30 40 72 5d 	br	#0x5d72		;

000061dc <.L66>:
        INK_CREATE_THREAD_CASE(3)
    61dc:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    61e0:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061e4 <.LVL189>:
    61e4:	3c 40 00 00 	mov	#0,	r12	;

000061e8 <.Loc.160.1>:
    61e8:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    61ec:	30 40 72 5d 	br	#0x5d72		;

000061f0 <.L67>:
        INK_CREATE_THREAD_CASE(2)
    61f0:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    61f4:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061f8 <.LVL192>:
    61f8:	3c 40 00 00 	mov	#0,	r12	;

000061fc <.Loc.159.1>:
    61fc:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6200:	30 40 72 5d 	br	#0x5d72		;

00006204 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    6204:	3f 40 2e 53 	mov	#21294,	r15	;#0x532e
    6208:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000620c <.LVL195>:
    620c:	3c 40 00 00 	mov	#0,	r12	;

00006210 <.Loc.158.1>:
    6210:	3e 40 2e 53 	mov	#21294,	r14	;#0x532e
    6214:	30 40 72 5d 	br	#0x5d72		;

00006218 <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    6218:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000621c <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    621c:	32 c2       	dint			
    621e:	03 43       	nop			

00006220 <.Loc.236.1>:
    6220:	b0 12 e0 65 	call	#26080		;#0x65e0

00006224 <.LVL198>:
    6224:	b0 12 c4 65 	call	#26052		;#0x65c4

00006228 <.Loc.236.1>:
    6228:	03 43       	nop			
    622a:	32 d2       	eint			
    622c:	03 43       	nop			

0000622e <.Loc.237.1>:
}
    622e:	30 41       	ret			

00006230 <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    6230:	b0 12 f6 65 	call	#26102		;#0x65f6

00006234 <.Loc.7.1>:
}
    6234:	30 41       	ret			

00006236 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    6236:	1a 15       	pushm	#2,	r10	;16-bit words

00006238 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    6238:	3a 40 c0 4b 	mov	#19392,	r10	;#0x4bc0
    623c:	39 40 c0 46 	mov	#18112,	r9	;#0x46c0

00006240 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    6240:	0c 4a       	mov	r10,	r12	;
    6242:	b0 12 e8 63 	call	#25576		;#0x63e8

00006246 <.Loc.27.1>:
        _popped[i] = NULL;
    6246:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

0000624a <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    624a:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    624e:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

00006252 <.Loc.24.1>:
    6252:	3a 90 c0 46 	cmp	#18112,	r10	;#0x46c0
    6256:	f4 23       	jnz	$-22     	;abs 0x6240

00006258 <.Loc.29.1>:
    }
}
    6258:	19 17       	popm	#2,	r10	;16-bit words

0000625a <.LCFI1>:
    625a:	30 41       	ret			

0000625c <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    625c:	5c 42 cc 4b 	mov.b	&0x4bcc,r12	;0x4bcc
    6260:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    6262:	14 24       	jz	$+42     	;abs 0x628c
    6264:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6266:	1f 24       	jz	$+64     	;abs 0x62a6
    6268:	0c 93       	cmp	#0,	r12	;r3 As==00
    626a:	01 24       	jz	$+4      	;abs 0x626e

0000626c <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    626c:	30 41       	ret			

0000626e <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    626e:	1d 42 ca 4b 	mov	&0x4bca,r13	;0x4bca

00006272 <.Loc.37.1>:
    6272:	6c 4d       	mov.b	@r13,	r12	;
    6274:	5c 06       	rlam	#2,	r12	;
    6276:	6d 4d       	mov.b	@r13,	r13	;
    6278:	0c 5d       	add	r13,	r12	;
    627a:	5c 06       	rlam	#2,	r12	;
    627c:	3d 40 c0 4b 	mov	#19392,	r13	;#0x4bc0
    6280:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6284:	b0 12 44 64 	call	#25668		;#0x6444

00006288 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    6288:	d2 43 cc 4b 	mov.b	#1,	&0x4bcc	;r3 As==01

0000628c <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    628c:	1d 42 ca 4b 	mov	&0x4bca,r13	;0x4bca

00006290 <.Loc.40.1>:
    6290:	6c 4d       	mov.b	@r13,	r12	;
    6292:	5c 06       	rlam	#2,	r12	;
    6294:	6d 4d       	mov.b	@r13,	r13	;
    6296:	0c 5d       	add	r13,	r12	;
    6298:	5c 06       	rlam	#2,	r12	;
    629a:	
0000629c <L0^A>:
    629c:	c0 46 b0 12 	mov.b	r6,	0x12b0	; PC rel. 0x754e
    62a0:	7a 64       	addc.b	@r4+,	r10	;

000062a2 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    62a2:	e2 43 cc 4b 	mov.b	#2,	&0x4bcc	;r3 As==10

000062a6 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    62a6:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    62aa:	1c 4c 02 00 	mov	2(r12),	r12	;

000062ae <.Loc.44.1>:
    62ae:	3c 92       	cmp	#8,	r12	;r2 As==11
    62b0:	04 24       	jz	$+10     	;abs 0x62ba

000062b2 <.L9>:
        _status = EVENT_DONE;
    62b2:	f2 40 03 00 	mov.b	#3,	&0x4bcc	;
    62b6:	cc 4b 

000062b8 <.Loc.51.1>:
}
    62b8:	30 41       	ret			

000062ba <.L17>:
            __disable_interrupt();
    62ba:	32 c2       	dint			
    62bc:	03 43       	nop			

000062be <.Loc.46.1>:
            __start_thread(_thread);
    62be:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    62c2:	b0 12 c4 65 	call	#26052		;#0x65c4

000062c6 <.Loc.47.1>:
            __enable_interrupt();
    62c6:	03 43       	nop			
    62c8:	32 d2       	eint			
    62ca:	03 43       	nop			
    62cc:	f2 3f       	jmp	$-26     	;abs 0x62b2

000062ce <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    62ce:	1d 42 ca 4b 	mov	&0x4bca,r13	;0x4bca

000062d2 <.Loc.55.1>:
    62d2:	6c 4d       	mov.b	@r13,	r12	;

000062d4 <.LVL7>:
    62d4:	5c 06       	rlam	#2,	r12	;
    62d6:	6d 4d       	mov.b	@r13,	r13	;
    62d8:	0c 5d       	add	r13,	r12	;
    62da:	5c 06       	rlam	#2,	r12	;
    62dc:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    62e0:	b0 12 18 64 	call	#25624		;#0x6418

000062e4 <.Loc.56.1>:
}
    62e4:	30 41       	ret			

000062e6 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    62e6:	82 4c ca 4b 	mov	r12,	&0x4bca	;

000062ea <.Loc.64.1>:
    _event = *event;
    62ea:	0e 4d       	mov	r13,	r14	;
    62ec:	b2 4e c0 4b 	mov	@r14+,	&0x4bc0	;
    62f0:	b2 4e c2 4b 	mov	@r14+,	&0x4bc2	;
    62f4:	92 4d 04 00 	mov	4(r13),	&0x4bc4	;
    62f8:	c4 4b 
    62fa:	92 4d 06 00 	mov	6(r13),	&0x4bc6	;
    62fe:	c6 4b 
    6300:	92 4e 04 00 	mov	4(r14),	&0x4bc8	;
    6304:	c8 4b 

00006306 <.Loc.65.1>:
    _status = EVENT_INSERT;
    6306:	c2 43 cc 4b 	mov.b	#0,	&0x4bcc	;r3 As==00

0000630a <.LBB4>:
    switch(_status){
    630a:	5d 42 cc 4b 	mov.b	&0x4bcc,r13	;0x4bcc

0000630e <.LVL10>:
    630e:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    6310:	14 24       	jz	$+42     	;abs 0x633a
    6312:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    6314:	1f 24       	jz	$+64     	;abs 0x6354
    6316:	0d 93       	cmp	#0,	r13	;r3 As==00
    6318:	01 24       	jz	$+4      	;abs 0x631c

0000631a <.LBE4>:
    __events_commit();
}
    631a:	30 41       	ret			

0000631c <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    631c:	6d 4c       	mov.b	@r12,	r13	;
    631e:	5d 06       	rlam	#2,	r13	;
    6320:	6c 4c       	mov.b	@r12,	r12	;

00006322 <.LVL11>:
    6322:	0c 5d       	add	r13,	r12	;
    6324:	5c 06       	rlam	#2,	r12	;
    6326:	3d 40 c0 4b 	mov	#19392,	r13	;#0x4bc0
    632a:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    632e:	b0 12 44 64 	call	#25668		;#0x6444

00006332 <.LVL12>:
        _status = EVENT_COMMIT;
    6332:	d2 43 cc 4b 	mov.b	#1,	&0x4bcc	;r3 As==01
    6336:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca

0000633a <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    633a:	6d 4c       	mov.b	@r12,	r13	;
    633c:	5d 06       	rlam	#2,	r13	;
    633e:	6c 4c       	mov.b	@r12,	r12	;
    6340:	0c 5d       	add	r13,	r12	;
    6342:	5c 06       	rlam	#2,	r12	;
    6344:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6348:	b0 12 7a 64 	call	#25722		;#0x647a

0000634c <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    634c:	e2 43 cc 4b 	mov.b	#2,	&0x4bcc	;r3 As==10
    6350:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca

00006354 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    6354:	1c 4c 02 00 	mov	2(r12),	r12	;

00006358 <.Loc.44.1>:
    6358:	3c 92       	cmp	#8,	r12	;r2 As==11
    635a:	04 24       	jz	$+10     	;abs 0x6364

0000635c <.L23>:
        _status = EVENT_DONE;
    635c:	f2 40 03 00 	mov.b	#3,	&0x4bcc	;
    6360:	cc 4b 

00006362 <.Loc.67.1>:
}
    6362:	30 41       	ret			

00006364 <.L31>:
            __disable_interrupt();
    6364:	32 c2       	dint			
    6366:	03 43       	nop			

00006368 <.Loc.46.1>:
            __start_thread(_thread);
    6368:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    636c:	b0 12 c4 65 	call	#26052		;#0x65c4

00006370 <.Loc.47.1>:
            __enable_interrupt();
    6370:	03 43       	nop			
    6372:	32 d2       	eint			
    6374:	03 43       	nop			
    6376:	f2 3f       	jmp	$-26     	;abs 0x635c

00006378 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    6378:	6d 4c       	mov.b	@r12,	r13	;
    637a:	5d 06       	rlam	#2,	r13	;
    637c:	6c 4c       	mov.b	@r12,	r12	;

0000637e <.LVL16>:
    637e:	0c 5d       	add	r13,	r12	;
    6380:	5c 06       	rlam	#2,	r12	;
    6382:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6386:	b0 12 02 64 	call	#25602		;#0x6402
    638a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000638e <.Loc.71.1>:
    638e:	3c 53       	add	#-1,	r12	;r3 As==11

00006390 <.Loc.75.1>:
        return 0;

    return 1;
}
    6390:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6394:	30 41       	ret			

00006396 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    6396:	0a 15       	pushm	#1,	r10	;16-bit words

00006398 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    6398:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca

0000639c <.LVL19>:
    639c:	6a 4c       	mov.b	@r12,	r10	;

0000639e <.Loc.81.1>:
    639e:	0c 4a       	mov	r10,	r12	;
    63a0:	5c 06       	rlam	#2,	r12	;
    63a2:	0c 5a       	add	r10,	r12	;
    63a4:	5c 06       	rlam	#2,	r12	;
    63a6:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    63aa:	b0 12 82 64 	call	#25730		;#0x6482

000063ae <.Loc.81.1>:
    63ae:	5a 02       	rlam	#1,	r10	;
    63b0:	8a 4c 40 46 	mov	r12,	17984(r10); 0x4640

000063b4 <.Loc.82.1>:
    return _popped[_thread->priority];
    63b4:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    63b8:	6c 4c       	mov.b	@r12,	r12	;
    63ba:	5c 02       	rlam	#1,	r12	;

000063bc <.Loc.83.1>:
}
    63bc:	1c 4c 40 46 	mov	17984(r12),r12	;0x04640
    63c0:	0a 17       	popm	#1,	r10	;16-bit words

000063c2 <.LCFI3>:
    63c2:	30 41       	ret			

000063c4 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    63c4:	1d 42 ca 4b 	mov	&0x4bca,r13	;0x4bca

000063c8 <.Loc.87.1>:
    63c8:	6c 4d       	mov.b	@r13,	r12	;

000063ca <.LVL22>:
    63ca:	5c 06       	rlam	#2,	r12	;
    63cc:	6d 4d       	mov.b	@r13,	r13	;
    63ce:	0c 5d       	add	r13,	r12	;
    63d0:	5c 06       	rlam	#2,	r12	;
    63d2:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    63d6:	b0 12 b4 64 	call	#25780		;#0x64b4

000063da <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    63da:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    63de:	6c 4c       	mov.b	@r12,	r12	;
    63e0:	5c 02       	rlam	#1,	r12	;
    63e2:	8c 43 40 46 	mov	#0,	17984(r12);r3 As==00, 0x4640

000063e6 <.Loc.89.1>:
}
    63e6:	30 41       	ret			

000063e8 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    63e8:	
000063ec <L0^A>:
    63ec:	10 00       	bra	@r0+		;

000063ee <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    63ee:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    63f2:	11 00 

000063f4 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    63f4:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    63f8:	12 00 

000063fa <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    63fa:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    63fe:	13 00 

00006400 <.Loc.10.1>:
}
    6400:	30 41       	ret			

00006402 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    6402:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6406:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    640a:	4c 4d       	mov.b	r13,	r12	;

0000640c <.LVL2>:
    640c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6410:	3c 53       	add	#-1,	r12	;r3 As==11

00006412 <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    6412:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6416:	30 41       	ret			

00006418 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6418:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    641c:	5d 53       	inc.b	r13		;
    641e:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006422 <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    6422:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6426:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6428:	02 20       	jnz	$+6      	;abs 0x642e

0000642a <.Loc.25.1>:
        queue->__tail = 0;
    642a:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000642e <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    642e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6432:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6436:	4c 4d       	mov.b	r13,	r12	;

00006438 <.LVL4>:
    6438:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    643c:	3c 53       	add	#-1,	r12	;r3 As==11

0000643e <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    643e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6442:	30 41       	ret			

00006444 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6444:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    6448:	5e 53       	inc.b	r14		;
    644a:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

0000644e <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    644e:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    6452:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    6454:	02 20       	jnz	$+6      	;abs 0x645a

00006456 <.Loc.40.1>:
        queue->__tail = 0;
    6456:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000645a <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    645a:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

0000645e <.Loc.44.1>:
    645e:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006462 <.Loc.44.1>:
    6462:	0f 9e       	cmp	r14,	r15	;
    6464:	08 24       	jz	$+18     	;abs 0x6476

00006466 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6466:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000646a <.Loc.49.1>:
    646a:	5e 02       	rlam	#1,	r14	;
    646c:	0c 5e       	add	r14,	r12	;

0000646e <.LVL6>:
    646e:	8c 4d 00 00 	mov	r13,	0(r12)	;

00006472 <.Loc.51.1>:

    return 1;
    6472:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006474 <.Loc.52.1>:
}
    6474:	30 41       	ret			

00006476 <.L9>:
        return 0;
    6476:	4c 43       	clr.b	r12		;

00006478 <.LVL8>:
}
    6478:	30 41       	ret			

0000647a <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    647a:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    647e:	11 00 

00006480 <.Loc.59.1>:
}
    6480:	30 41       	ret			

00006482 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6482:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006486 <.Loc.63.1>:
    6486:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

0000648a <.Loc.63.1>:
    648a:	0e 9d       	cmp	r13,	r14	;
    648c:	11 24       	jz	$+36     	;abs 0x64b0

0000648e <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    648e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6492:	5d 53       	inc.b	r13		;
    6494:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00006498 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    6498:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    649c:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    649e:	02 20       	jnz	$+6      	;abs 0x64a4

000064a0 <.Loc.70.1>:
        queue->__head = 0;
    64a0:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

000064a4 <.L13>:

    return queue->_items[queue->_head];
    64a4:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

000064a8 <.Loc.72.1>:
    64a8:	5d 02       	rlam	#1,	r13	;
    64aa:	0c 5d       	add	r13,	r12	;

000064ac <.LVL11>:
    64ac:	2c 4c       	mov	@r12,	r12	;

000064ae <.Loc.73.1>:
}
    64ae:	30 41       	ret			

000064b0 <.L14>:
        return NULL;
    64b0:	4c 43       	clr.b	r12		;

000064b2 <.LVL13>:
}
    64b2:	30 41       	ret			

000064b4 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    64b4:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    64b8:	10 00 

000064ba <.Loc.79.1>:
}
    64ba:	30 41       	ret			

000064bc <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    64bc:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    64c0:	40 01 

000064c2 <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    64c2:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    64c6:	41 01 

000064c8 <.Loc.13.1>:
}
    64c8:	30 41       	ret			

000064ca <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    64ca:	0a 15       	pushm	#1,	r10	;16-bit words

000064cc <.LCFI0>:
    64cc:	21 82       	sub	#4,	r1	;r2 As==10

000064ce <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    64ce:	0a 4c       	mov	r12,	r10	;
    64d0:	0b 43       	clr	r11		;
    64d2:	81 4a 00 00 	mov	r10,	0(r1)	;
    64d6:	81 4b 02 00 	mov	r11,	2(r1)	;

000064da <.Loc.20.1>:
    64da:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

000064de <.LVL1>:
    64de:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    64e2:	00 00 

000064e4 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    64e4:	0a 4d       	mov	r13,	r10	;
    64e6:	0b 43       	clr	r11		;

000064e8 <.LVL2>:
    64e8:	81 4a 00 00 	mov	r10,	0(r1)	;
    64ec:	81 4b 02 00 	mov	r11,	2(r1)	;

000064f0 <.Loc.21.1>:
    64f0:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    64f4:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    64f8:	00 00 

000064fa <.LBE3>:
    DMA0SZ = size;                          // Block size
    64fa:	82 4e 1a 05 	mov	r14,	&0x051a	;

000064fe <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    64fe:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6502:	10 05 

00006504 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6504:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    6508:	10 05 

0000650a <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    650a:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

0000650e <.Loc.29.1>:
}
    650e:	21 52       	add	#4,	r1	;r2 As==10

00006510 <.LCFI2>:
    6510:	0a 17       	popm	#1,	r10	;16-bit words

00006512 <.LCFI3>:
    6512:	30 41       	ret			

00006514 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    6514:	3c 40 d0 4b 	mov	#19408,	r12	;#0x4bd0
    6518:	b0 12 be 72 	call	#29374		;#0x72be

0000651c <.Loc.54.1>:
    651c:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00006520 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    6520:	0c 4d       	mov	r13,	r12	;
    6522:	5c 02       	rlam	#1,	r12	;
    6524:	0c 5d       	add	r13,	r12	;
    6526:	5c 06       	rlam	#2,	r12	;
    6528:	0c 5d       	add	r13,	r12	;
    652a:	5c 02       	rlam	#1,	r12	;
    652c:	1c 4c dc 4b 	mov	19420(r12),r12	;0x04bdc

00006530 <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    6530:	3d 53       	add	#-1,	r13	;r3 As==11

00006532 <.Loc.56.1>:
    6532:	0d 93       	cmp	#0,	r13	;r3 As==00
    6534:	f5 23       	jnz	$-20     	;abs 0x6520

00006536 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    6536:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000653a <.Loc.61.1>:
}
    653a:	30 41       	ret			

0000653c <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    653c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006540 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    6540:	0b 4c       	mov	r12,	r11	;
    6542:	5b 02       	rlam	#1,	r11	;
    6544:	0b 5c       	add	r12,	r11	;
    6546:	5b 06       	rlam	#2,	r11	;
    6548:	0b 5c       	add	r12,	r11	;
    654a:	5b 02       	rlam	#1,	r11	;
    654c:	cb 4c da 4b 	mov.b	r12,	19418(r11); 0x4bda

00006550 <.Loc.69.1>:
    _threads[priority].entry = entry;
    6550:	8b 4d de 4b 	mov	r13,	19422(r11); 0x4bde

00006554 <.Loc.70.1>:
    _threads[priority].next = entry;
    6554:	8b 4d e2 4b 	mov	r13,	19426(r11); 0x4be2

00006558 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    6558:	bb 42 dc 4b 	mov	#8,	19420(r11);r2 As==11, 0x4bdc

0000655c <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    655c:	8b 4e e4 4b 	mov	r14,	19428(r11); 0x4be4

00006560 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    6560:	8b 4f e6 4b 	mov	r15,	19430(r11); 0x4be6

00006564 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    6564:	cb 43 e8 4b 	mov.b	#0,	19432(r11);r3 As==00, 0x4be8

00006568 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    6568:	9b 41 02 00 	mov	2(r1),	19434(r11); 0x4bea
    656c:	ea 4b 

0000656e <.Loc.78.1>:
}
    656e:	30 41       	ret			

00006570 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    6570:	0a 15       	pushm	#1,	r10	;16-bit words

00006572 <.LCFI0>:
    6572:	0a 4c       	mov	r12,	r10	;

00006574 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    6574:	3d 40 d0 4b 	mov	#19408,	r13	;#0x4bd0
    6578:	6c 4c       	mov.b	@r12,	r12	;

0000657a <.LVL6>:
    657a:	b0 12 04 73 	call	#29444		;#0x7304

0000657e <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    657e:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006582 <.Loc.84.1>:
}
    6582:	0a 17       	popm	#1,	r10	;16-bit words

00006584 <.LCFI1>:
    6584:	30 41       	ret			

00006586 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    6586:	0a 15       	pushm	#1,	r10	;16-bit words

00006588 <.LCFI2>:
    6588:	0a 4c       	mov	r12,	r10	;

0000658a <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    658a:	3d 40 d0 4b 	mov	#19408,	r13	;#0x4bd0
    658e:	6c 4c       	mov.b	@r12,	r12	;

00006590 <.LVL9>:
    6590:	b0 12 04 73 	call	#29444		;#0x7304

00006594 <.Loc.89.1>:
    thread->next = NULL;
    6594:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00006598 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    6598:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000659c <.Loc.91.1>:
}
    659c:	0a 17       	popm	#1,	r10	;16-bit words

0000659e <.LCFI3>:
    659e:	30 41       	ret			

000065a0 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    65a0:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000065a4 <.Loc.95.1>:
    return;
}
    65a4:	30 41       	ret			

000065a6 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    65a6:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

000065aa <.Loc.101.1>:
    return;
}
    65aa:	30 41       	ret			

000065ac <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    65ac:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

000065b0 <.Loc.107.1>:
    return;
}
    65b0:	30 41       	ret			

000065b2 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    65b2:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

000065b6 <.Loc.112.1>:
    return;
}
    65b6:	30 41       	ret			

000065b8 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    65b8:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

000065bc <.LVL16>:
    65bc:	30 41       	ret			

000065be <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    65be:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

000065c2 <.LVL18>:
    65c2:	30 41       	ret			

000065c4 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    65c4:	0a 15       	pushm	#1,	r10	;16-bit words

000065c6 <.LCFI4>:
    65c6:	0a 4c       	mov	r12,	r10	;

000065c8 <.Loc.125.1>:
    thread->next = thread->entry;
    65c8:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    65cc:	08 00 

000065ce <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    65ce:	3d 40 d0 4b 	mov	#19408,	r13	;#0x4bd0
    65d2:	6c 4c       	mov.b	@r12,	r12	;

000065d4 <.LVL20>:
    65d4:	b0 12 e4 72 	call	#29412		;#0x72e4

000065d8 <.Loc.127.1>:
    thread->state = TASK_READY;
    65d8:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

000065dc <.Loc.128.1>:
}
    65dc:	0a 17       	popm	#1,	r10	;16-bit words

000065de <.LCFI5>:
    65de:	30 41       	ret			

000065e0 <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    65e0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000065e4 <.Loc.140.1>:
    return &_threads[priority];
    65e4:	0d 4c       	mov	r12,	r13	;
    65e6:	5d 02       	rlam	#1,	r13	;
    65e8:	0d 5c       	add	r12,	r13	;
    65ea:	5d 06       	rlam	#2,	r13	;
    65ec:	0c 5d       	add	r13,	r12	;

000065ee <.LVL23>:
    65ee:	5c 02       	rlam	#1,	r12	;

000065f0 <.Loc.141.1>:
}
    65f0:	3c 50 da 4b 	add	#19418,	r12	;#0x4bda
    65f4:	30 41       	ret			

000065f6 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    65f6:	32 c2       	dint			
    65f8:	03 43       	nop			

000065fa <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    65fa:	b0 12 5c 62 	call	#25180		;#0x625c

000065fe <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    65fe:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006602 <.Loc.162.1>:
    __port_off(1, 3);
    6602:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006606 <.LBB8>:
    if(_thread){
    6606:	82 93 ce 4b 	cmp	#0,	&0x4bce	;r3 As==00
    660a:	04 24       	jz	$+10     	;abs 0x6614

0000660c <.Loc.146.1>:
        __tick(_thread);
    660c:	1c 42 ce 4b 	mov	&0x4bce,r12	;0x4bce
    6610:	b0 12 aa 66 	call	#26282		;#0x66aa

00006614 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    6614:	b0 12 c6 67 	call	#26566		;#0x67c6

00006618 <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    6618:	03 43       	nop			
    661a:	32 d2       	eint			
    661c:	03 43       	nop			

0000661e <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    661e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006622 <.Loc.179.1>:
    __port_off(1, 3);
    6622:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006626 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    6626:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    662a:	0c 93       	cmp	#0,	r12	;r3 As==00
    662c:	10 24       	jz	$+34     	;abs 0x664e

0000662e <.L29>:
    662e:	1c 93       	cmp	#1,	r12	;r3 As==01
    6630:	fa 23       	jnz	$-10     	;abs 0x6626
    6632:	1c 42 ce 4b 	mov	&0x4bce,r12	;0x4bce

00006636 <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    6636:	0c 93       	cmp	#0,	r12	;r3 As==00
    6638:	24 24       	jz	$+74     	;abs 0x6682

0000663a <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    663a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000663e <.Loc.198.1>:
#endif
                __tick(_thread);
    663e:	b0 12 aa 66 	call	#26282		;#0x66aa

00006642 <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    6642:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006646 <.Loc.180.1>:
        switch (_sched_state){
    6646:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    664a:	0c 93       	cmp	#0,	r12	;r3 As==00
    664c:	f0 23       	jnz	$-30     	;abs 0x662e

0000664e <.L19>:
            __port_on(1, 3);
    664e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006652 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    6652:	3c 40 d0 4b 	mov	#19408,	r12	;#0x4bd0
    6656:	b0 12 2c 73 	call	#29484		;#0x732c
    665a:	4d 4c       	mov.b	r12,	r13	;

0000665c <.LVL29>:
    if(idx)
    665c:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    665e:	0d 24       	jz	$+28     	;abs 0x667a

00006660 <.Loc.134.1>:
        return &_threads[idx];
    6660:	0c 4d       	mov	r13,	r12	;
    6662:	5c 02       	rlam	#1,	r12	;

00006664 <.LVL30>:
    6664:	0c 5d       	add	r13,	r12	;
    6666:	5c 06       	rlam	#2,	r12	;
    6668:	0c 5d       	add	r13,	r12	;
    666a:	5c 02       	rlam	#1,	r12	;
    666c:	3c 50 da 4b 	add	#19418,	r12	;#0x4bda

00006670 <.LBE10>:
            _thread = __next_thread();
    6670:	82 4c ce 4b 	mov	r12,	&0x4bce	;

00006674 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    6674:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006678 <.Loc.196.1>:
            if (_thread){
    6678:	e0 3f       	jmp	$-62     	;abs 0x663a

0000667a <.L30>:
            _thread = __next_thread();
    667a:	82 43 ce 4b 	mov	#0,	&0x4bce	;r3 As==00

0000667e <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    667e:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006682 <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    6682:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006686 <.Loc.206.1>:
            __disable_interrupt();
    6686:	32 c2       	dint			
    6688:	03 43       	nop			

0000668a <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    668a:	3c 40 d0 4b 	mov	#19408,	r12	;#0x4bd0
    668e:	b0 12 2c 73 	call	#29484		;#0x732c

00006692 <.LVL33>:
    if(idx)
    6692:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6694:	c8 23       	jnz	$-110    	;abs 0x6626

00006696 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    6696:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000669a <.Loc.210.1>:
#endif
                __mcu_sleep();
    669a:	03 43       	nop			
    669c:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    66a0:	03 43       	nop			

000066a2 <.Loc.213.1>:
                __enable_interrupt();
    66a2:	03 43       	nop			
    66a4:	32 d2       	eint			
    66a6:	03 43       	nop			
    66a8:	be 3f       	jmp	$-130    	;abs 0x6626

000066aa <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    66aa:	0a 15       	pushm	#1,	r10	;16-bit words

000066ac <.LCFI0>:
    66ac:	0a 4c       	mov	r12,	r10	;

000066ae <L0^A>:
    switch (thread->state)
    66ae:	1c 4c 02 00 	mov	2(r12),	r12	;

000066b2 <.LVL1>:
    66b2:	2c 93       	cmp	#2,	r12	;r3 As==10
    66b4:	35 24       	jz	$+108    	;abs 0x6720
    66b6:	2c 92       	cmp	#4,	r12	;r2 As==10
    66b8:	56 24       	jz	$+174    	;abs 0x6766
    66ba:	1c 93       	cmp	#1,	r12	;r3 As==01
    66bc:	02 24       	jz	$+6      	;abs 0x66c2

000066be <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    66be:	0a 17       	popm	#1,	r10	;16-bit words

000066c0 <.LCFI1>:
    66c0:	30 41       	ret			

000066c2 <.L17>:
    __port_on(3,6);
    66c2:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    66c6:	22 02 

000066c8 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    66c8:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

000066cc <.Loc.14.1>:
    66cc:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    66d0:	5c e3       	xor.b	#1,	r12	;r3 As==01
    66d2:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000066d6 <.Loc.14.1>:
    66d6:	5c 02       	rlam	#1,	r12	;
    66d8:	0c 5a       	add	r10,	r12	;
    66da:	5f 02       	rlam	#1,	r15	;
    66dc:	0f 5a       	add	r10,	r15	;
    66de:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    66e2:	5e 03       	rrum	#1,	r14	;
    66e4:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    66e8:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    66ec:	b0 12 ca 64 	call	#25802		;#0x64ca

000066f0 <.Loc.17.1>:
    __port_off(3,6);
    66f0:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    66f4:	22 02 

000066f6 <.LBE5>:
        __port_on(1, 4);
    66f6:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    66fa:	02 02 

000066fc <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    66fc:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6700:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6702:	c2 4c 5a 52 	mov.b	r12,	&0x525a	;

00006706 <.Loc.60.1>:
        if(thread->next == thread->entry){
    6706:	1c 4a 08 00 	mov	8(r10),	r12	;

0000670a <.Loc.60.1>:
    670a:	1c 9a 04 00 	cmp	4(r10),	r12	;
    670e:	48 24       	jz	$+146    	;abs 0x67a0

00006710 <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    6710:	8c 12       	call	r12		;

00006712 <.Loc.77.1>:
    6712:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006716 <.L8>:
        thread->state = TASK_PRECOMMIT;
    6716:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000671a <.Loc.83.1>:
            __port_off(1, 4);
    671a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    671e:	02 02 

00006720 <.L2>:
        __port_on(3,5);
    6720:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6724:	22 02 

00006726 <.Loc.87.1>:
        __release_event(thread);
    6726:	0c 4a       	mov	r10,	r12	;
    6728:	b0 12 c4 63 	call	#25540		;#0x63c4

0000672c <.Loc.96.1>:
        thread->next = thread->next_temp;
    672c:	1c 4a 06 00 	mov	6(r10),	r12	;

00006730 <.Loc.96.1>:
    6730:	8a 4c 08 00 	mov	r12,	8(r10)	;

00006734 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    6734:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    6738:	5d e3       	xor.b	#1,	r13	;r3 As==01
    673a:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

0000673e <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    673e:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006742 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    6742:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6746:	0e 00 

00006748 <.Loc.117.1>:
        __port_off(3,5);
    6748:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    674c:	22 02 

0000674e <.Loc.117.1>:
        __port_on(3,5);
    674e:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6752:	22 02 

00006754 <.Loc.118.1>:
        if (thread->next == NULL)
    6754:	0c 93       	cmp	#0,	r12	;r3 As==00
    6756:	14 24       	jz	$+42     	;abs 0x6780

00006758 <.L9>:
            thread->state = TASK_READY;
    6758:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000675c <.L12>:
        __port_off(3,5);
    675c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6760:	22 02 

00006762 <.Loc.142.1>:
}
    6762:	0a 17       	popm	#1,	r10	;16-bit words

00006764 <.LCFI3>:
    6764:	30 41       	ret			

00006766 <.L3>:
    6766:	1c 4a 08 00 	mov	8(r10),	r12	;

0000676a <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    676a:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    676e:	0e 00 

00006770 <.Loc.117.1>:
        __port_off(3,5);
    6770:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6774:	22 02 

00006776 <.Loc.117.1>:
        __port_on(3,5);
    6776:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    677a:	22 02 

0000677c <.Loc.118.1>:
        if (thread->next == NULL)
    677c:	0c 93       	cmp	#0,	r12	;r3 As==00
    677e:	ec 23       	jnz	$-38     	;abs 0x6758

00006780 <.L19>:
            __disable_interrupt();
    6780:	32 c2       	dint			
    6782:	03 43       	nop			

00006784 <.Loc.125.1>:
            if(!__has_events(thread)){
    6784:	0c 4a       	mov	r10,	r12	;
    6786:	b0 12 78 63 	call	#25464		;#0x6378

0000678a <.Loc.125.1>:
    678a:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    678c:	12 24       	jz	$+38     	;abs 0x67b2

0000678e <.Loc.131.1>:
                thread->next = thread->entry;
    678e:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    6792:	08 00 

00006794 <.Loc.133.1>:
                thread->state = TASK_READY;
    6794:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006798 <.Loc.135.1>:
            __enable_interrupt();
    6798:	03 43       	nop			
    679a:	32 d2       	eint			
    679c:	03 43       	nop			
    679e:	de 3f       	jmp	$-66     	;abs 0x675c

000067a0 <.L18>:
            isr_event_t *event = __lock_event(thread);
    67a0:	0c 4a       	mov	r10,	r12	;
    67a2:	b0 12 96 63 	call	#25494		;#0x6396

000067a6 <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    67a6:	1d 4a 04 00 	mov	4(r10),	r13	;
    67aa:	8d 12       	call	r13		;

000067ac <.LVL11>:
    67ac:	8a 4c 06 00 	mov	r12,	6(r10)	;

000067b0 <.LBE7>:
    67b0:	b2 3f       	jmp	$-154    	;abs 0x6716

000067b2 <.L20>:
                __stop_thread(thread);
    67b2:	0c 4a       	mov	r10,	r12	;
    67b4:	b0 12 70 65 	call	#25968		;#0x6570

000067b8 <.Loc.135.1>:
            __enable_interrupt();
    67b8:	03 43       	nop			
    67ba:	32 d2       	eint			
    67bc:	03 43       	nop			
    67be:	ce 3f       	jmp	$-98     	;abs 0x675c

000067c0 <__timers_init>:
    67c0:	b0 12 26 74 	call	#29734		;#0x7426

000067c4 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    67c4:	30 41       	ret			

000067c6 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    67c6:	30 41       	ret			

000067c8 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    67c8:	0a 15       	pushm	#1,	r10	;16-bit words

000067ca <.LCFI0>:
    67ca:	4a 4c       	mov.b	r12,	r10	;

000067cc <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    67cc:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    67d0:	19 24       	jz	$+52     	;abs 0x6804

000067d2 <.L5>:
    67d2:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    67d6:	0e 24       	jz	$+30     	;abs 0x67f4

000067d8 <.L6>:
    67d8:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    67dc:	02 24       	jz	$+6      	;abs 0x67e2

000067de <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    67de:	0a 17       	popm	#1,	r10	;16-bit words

000067e0 <.LCFI1>:
    67e0:	30 41       	ret			

000067e2 <.L10>:
            wkup_timing[i].status = NOT_USED;
    67e2:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

000067e6 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    67e6:	4e 43       	clr.b	r14		;
    67e8:	4d 43       	clr.b	r13		;
    67ea:	6c 43       	mov.b	#2,	r12	;r3 As==10
    67ec:	b0 12 e8 74 	call	#29928		;#0x74e8

000067f0 <.Loc.101.1>:
}
    67f0:	0a 17       	popm	#1,	r10	;16-bit words

000067f2 <.LCFI3>:
    67f2:	30 41       	ret			

000067f4 <.L9>:
            wkup_timing[i].status = NOT_USED;
    67f4:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

000067f8 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    67f8:	4e 43       	clr.b	r14		;
    67fa:	4d 43       	clr.b	r13		;
    67fc:	5c 43       	mov.b	#1,	r12	;r3 As==01
    67fe:	b0 12 e8 74 	call	#29928		;#0x74e8
    6802:	ea 3f       	jmp	$-42     	;abs 0x67d8

00006804 <.L8>:
            wkup_timing[i].status = NOT_USED;
    6804:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

00006808 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6808:	4e 43       	clr.b	r14		;
    680a:	4d 43       	clr.b	r13		;
    680c:	4c 43       	clr.b	r12		;

0000680e <.LVL9>:
    680e:	b0 12 e8 74 	call	#29928		;#0x74e8
    6812:	df 3f       	jmp	$-64     	;abs 0x67d2

00006814 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    6814:	2a 15       	pushm	#3,	r10	;16-bit words

00006816 <.LCFI5>:
    6816:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000681a <.LCFI6>:
    681a:	49 43       	clr.b	r9		;
    681c:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00006820 <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    6820:	0a 49       	mov	r9,	r10	;
    6822:	5a 06       	rlam	#2,	r10	;
    6824:	0a 59       	add	r9,	r10	;
    6826:	5a 02       	rlam	#1,	r10	;
    6828:	0a 58       	add	r8,	r10	;
    682a:	4e 43       	clr.b	r14		;
    682c:	4d 49       	mov.b	r9,	r13	;
    682e:	0c 41       	mov	r1,	r12	;
    6830:	b0 12 e4 76 	call	#30436		;#0x76e4
    6834:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6838:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    683c:	02 00 
    683e:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6842:	04 00 
    6844:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6848:	06 00 
    684a:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    684e:	08 00 

00006850 <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6850:	19 53       	inc	r9		;

00006852 <.Loc.115.1>:
    6852:	39 90 03 00 	cmp	#3,	r9	;
    6856:	e4 23       	jnz	$-54     	;abs 0x6820

00006858 <.Loc.120.1>:
    }

}
    6858:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000685c <.LCFI7>:
    685c:	28 17       	popm	#3,	r10	;16-bit words

0000685e <.LCFI8>:
    685e:	30 41       	ret			

00006860 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    6860:	5a 15       	pushm	#6,	r10	;16-bit words

00006862 <.LCFI9>:

    uint8_t i,first = 1;
    6862:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006864 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6864:	4a 43       	clr.b	r10		;
    6866:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000686a <.L40>:
    {

        if (wkup_timing[i].status == USED)
    686a:	09 4a       	mov	r10,	r9	;
    686c:	05 4a       	mov	r10,	r5	;
    686e:	55 06       	rlam	#2,	r5	;
    6870:	0c 45       	mov	r5,	r12	;
    6872:	0c 5a       	add	r10,	r12	;
    6874:	5c 02       	rlam	#1,	r12	;
    6876:	0d 4c       	mov	r12,	r13	;
    6878:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

0000687c <.Loc.130.1>:
    687c:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6880:	0c 24       	jz	$+26     	;abs 0x689a

00006882 <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6882:	4c 4a       	mov.b	r10,	r12	;
    6884:	5c 53       	inc.b	r12		;
    6886:	4a 4c       	mov.b	r12,	r10	;

00006888 <.LVL19>:
    6888:	7c 90 03 00 	cmp.b	#3,	r12	;
    688c:	ee 23       	jnz	$-34     	;abs 0x686a

0000688e <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    688e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6890:	54 24       	jz	$+170    	;abs 0x693a

00006892 <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    6892:	b0 12 42 73 	call	#29506		;#0x7342

00006896 <.LVL20>:


}
    6896:	55 17       	popm	#6,	r10	;16-bit words

00006898 <.LCFI10>:
    6898:	30 41       	ret			

0000689a <.L84>:
            if (first)
    689a:	16 4d 04 00 	mov	4(r13),	r6	;
    689e:	17 4d 06 00 	mov	6(r13),	r7	;

000068a2 <.Loc.133.1>:
    68a2:	0e 93       	cmp	#0,	r14	;r3 As==00
    68a4:	05 24       	jz	$+12     	;abs 0x68b0

000068a6 <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    68a6:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

000068aa <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    68aa:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    68ae:	5c 1c 

000068b0 <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    68b0:	b0 12 e4 73 	call	#29668		;#0x73e4

000068b4 <.Loc.141.1>:
    68b4:	0e 46       	mov	r6,	r14	;
    68b6:	0f 47       	mov	r7,	r15	;
    68b8:	0e 8c       	sub	r12,	r14	;
    68ba:	0f 7d       	subc	r13,	r15	;

000068bc <.Loc.141.1>:
    68bc:	05 5a       	add	r10,	r5	;
    68be:	55 02       	rlam	#1,	r5	;
    68c0:	05 58       	add	r8,	r5	;
    68c2:	85 4e 04 00 	mov	r14,	4(r5)	;
    68c6:	85 4f 06 00 	mov	r15,	6(r5)	;

000068ca <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    68ca:	4d 43       	clr.b	r13		;
    68cc:	4c 4a       	mov.b	r10,	r12	;
    68ce:	b0 12 48 74 	call	#29768		;#0x7448

000068d2 <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    68d2:	1c 45 04 00 	mov	4(r5),	r12	;
    68d6:	1d 45 06 00 	mov	6(r5),	r13	;
    68da:	4b 4a       	mov.b	r10,	r11	;
    68dc:	5b 53       	inc.b	r11		;
    68de:	4a 4b       	mov.b	r11,	r10	;

000068e0 <.Loc.144.1>:
    68e0:	07 4d       	mov	r13,	r7	;
    68e2:	0d 93       	cmp	#0,	r13	;r3 As==00
    68e4:	3b 38       	jl	$+120    	;abs 0x695c

000068e6 <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    68e6:	0e 4c       	mov	r12,	r14	;
    68e8:	0e dd       	bis	r13,	r14	;
    68ea:	0e 93       	cmp	#0,	r14	;r3 As==00
    68ec:	af 24       	jz	$+352    	;abs 0x6a4c

000068ee <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    68ee:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    68f2:	0e 46       	mov	r6,	r14	;
    68f4:	0f 43       	clr	r15		;

000068f6 <.Loc.155.1>:
    68f6:	0d 93       	cmp	#0,	r13	;r3 As==00
    68f8:	18 34       	jge	$+50     	;abs 0x692a

000068fa <.L50>:
    68fa:	0e 49       	mov	r9,	r14	;
    68fc:	5e 06       	rlam	#2,	r14	;
    68fe:	09 5e       	add	r14,	r9	;
    6900:	59 02       	rlam	#1,	r9	;
    6902:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006906 <.L37>:
                    min_wkup = wkup_timing[i].data;
    6906:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

0000690a <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    690a:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000690e <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    690e:	7b 90 03 00 	cmp.b	#3,	r11	;
    6912:	15 24       	jz	$+44     	;abs 0x693e

00006914 <.L74>:
        if (wkup_timing[i].status == USED)
    6914:	09 4a       	mov	r10,	r9	;
    6916:	05 4a       	mov	r10,	r5	;
    6918:	55 06       	rlam	#2,	r5	;
    691a:	0c 45       	mov	r5,	r12	;
    691c:	0c 5a       	add	r10,	r12	;
    691e:	5c 02       	rlam	#1,	r12	;

00006920 <.Loc.130.1>:
    6920:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6924:	41 24       	jz	$+132    	;abs 0x69a8

00006926 <.L91>:
    6926:	4e 43       	clr.b	r14		;
    6928:	ac 3f       	jmp	$-166    	;abs 0x6882

0000692a <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    692a:	0d 93       	cmp	#0,	r13	;r3 As==00
    692c:	62 24       	jz	$+198    	;abs 0x69f2

0000692e <.L35>:
    692e:	07 4c       	mov	r12,	r7	;
    6930:	0c 9e       	cmp	r14,	r12	;
    6932:	79 24       	jz	$+244    	;abs 0x6a26

00006934 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6934:	7b 90 03 00 	cmp.b	#3,	r11	;
    6938:	ed 23       	jnz	$-36     	;abs 0x6914

0000693a <.L72>:
    693a:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

0000693e <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    693e:	4d 4e       	mov.b	r14,	r13	;
    6940:	4c 43       	clr.b	r12		;
    6942:	b0 12 30 75 	call	#30000		;#0x7530

00006946 <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    6946:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    694a:	4c 43       	clr.b	r12		;
    694c:	b0 12 3e 75 	call	#30014		;#0x753e

00006950 <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    6950:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    6954:	b0 12 56 73 	call	#29526		;#0x7356

00006958 <.Loc.177.1>:
}
    6958:	55 17       	popm	#6,	r10	;16-bit words

0000695a <.LCFI12>:
    695a:	30 41       	ret			

0000695c <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    695c:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    6960:	06 43       	clr	r6		;
    6962:	06 8e       	sub	r14,	r6	;
    6964:	0e 46       	mov	r6,	r14	;
    6966:	0f 46       	mov	r6,	r15	;
    6968:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000696c <.Loc.144.1>:
    696c:	05 4f       	mov	r15,	r5	;
    696e:	0f 9d       	cmp	r13,	r15	;
    6970:	25 38       	jl	$+76     	;abs 0x69bc

00006972 <.Loc.144.1>:
    6972:	0d 9f       	cmp	r15,	r13	;
    6974:	21 24       	jz	$+68     	;abs 0x69b8

00006976 <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    6976:	07 4d       	mov	r13,	r7	;
    6978:	0d 9f       	cmp	r15,	r13	;
    697a:	04 38       	jl	$+10     	;abs 0x6984
    697c:	0f 9d       	cmp	r13,	r15	;
    697e:	da 23       	jnz	$-74     	;abs 0x6934
    6980:	0c 96       	cmp	r6,	r12	;
    6982:	d8 2f       	jc	$-78     	;abs 0x6934

00006984 <.L30>:
    6984:	0c 49       	mov	r9,	r12	;
    6986:	5c 06       	rlam	#2,	r12	;
    6988:	09 5c       	add	r12,	r9	;
    698a:	59 02       	rlam	#1,	r9	;
    698c:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

00006990 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6990:	7b 90 03 00 	cmp.b	#3,	r11	;
    6994:	d2 27       	jz	$-90     	;abs 0x693a

00006996 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    6996:	09 4a       	mov	r10,	r9	;
    6998:	05 4a       	mov	r10,	r5	;
    699a:	55 06       	rlam	#2,	r5	;
    699c:	0c 45       	mov	r5,	r12	;
    699e:	0c 5a       	add	r10,	r12	;
    69a0:	5c 02       	rlam	#1,	r12	;

000069a2 <.Loc.130.1>:
    69a2:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    69a6:	bf 23       	jnz	$-128    	;abs 0x6926

000069a8 <.L27>:
    69a8:	0c 45       	mov	r5,	r12	;
    69aa:	0c 5a       	add	r10,	r12	;
    69ac:	5c 02       	rlam	#1,	r12	;
    69ae:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    69b2:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    69b6:	7c 3f       	jmp	$-262    	;abs 0x68b0

000069b8 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    69b8:	06 9c       	cmp	r12,	r6	;
    69ba:	dd 2f       	jc	$-68     	;abs 0x6976

000069bc <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    69bc:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    69c0:	06 4e       	mov	r14,	r6	;
    69c2:	07 43       	clr	r7		;

000069c4 <.Loc.146.1>:
    69c4:	4e 43       	clr.b	r14		;
    69c6:	4f 43       	clr.b	r15		;
    69c8:	0e 8c       	sub	r12,	r14	;
    69ca:	0f 7d       	subc	r13,	r15	;

000069cc <.Loc.146.1>:
    69cc:	05 4f       	mov	r15,	r5	;
    69ce:	0f 93       	cmp	#0,	r15	;r3 As==00
    69d0:	14 34       	jge	$+42     	;abs 0x69fa

000069d2 <.L22>:
    69d2:	0e 49       	mov	r9,	r14	;
    69d4:	5e 06       	rlam	#2,	r14	;
    69d6:	09 5e       	add	r14,	r9	;
    69d8:	59 02       	rlam	#1,	r9	;
    69da:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

000069de <.L28>:
                    min_wkup = -wkup_timing[i].data;
    69de:	4f 43       	clr.b	r15		;
    69e0:	0f 8c       	sub	r12,	r15	;
    69e2:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

000069e6 <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    69e6:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

000069ea <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    69ea:	7b 90 03 00 	cmp.b	#3,	r11	;
    69ee:	92 23       	jnz	$-218    	;abs 0x6914
    69f0:	a6 3f       	jmp	$-178    	;abs 0x693e

000069f2 <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    69f2:	07 4c       	mov	r12,	r7	;
    69f4:	0c 9e       	cmp	r14,	r12	;
    69f6:	9b 2f       	jc	$-200    	;abs 0x692e
    69f8:	80 3f       	jmp	$-254    	;abs 0x68fa

000069fa <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    69fa:	0f 93       	cmp	#0,	r15	;r3 As==00
    69fc:	03 20       	jnz	$+8      	;abs 0x6a04
    69fe:	05 4e       	mov	r14,	r5	;
    6a00:	0e 96       	cmp	r6,	r14	;
    6a02:	e7 2b       	jnc	$-48     	;abs 0x69d2

00006a04 <.L47>:
    6a04:	06 9e       	cmp	r14,	r6	;
    6a06:	96 23       	jnz	$-210    	;abs 0x6934
    6a08:	0f 93       	cmp	#0,	r15	;r3 As==00
    6a0a:	94 23       	jnz	$-214    	;abs 0x6934

00006a0c <.Loc.146.1>:
    6a0c:	0e 49       	mov	r9,	r14	;
    6a0e:	5e 06       	rlam	#2,	r14	;
    6a10:	09 5e       	add	r14,	r9	;
    6a12:	59 02       	rlam	#1,	r9	;
    6a14:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006a18 <.Loc.146.1>:
    6a18:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

00006a1c <.Loc.146.1>:
    6a1c:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    6a20:	36 1c 
    6a22:	dd 2b       	jnc	$-68     	;abs 0x69de
    6a24:	0e 3c       	jmp	$+30     	;abs 0x6a42

00006a26 <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6a26:	0d 9f       	cmp	r15,	r13	;
    6a28:	85 23       	jnz	$-244    	;abs 0x6934

00006a2a <.Loc.155.1>:
    6a2a:	0e 49       	mov	r9,	r14	;
    6a2c:	5e 06       	rlam	#2,	r14	;
    6a2e:	09 5e       	add	r14,	r9	;
    6a30:	59 02       	rlam	#1,	r9	;
    6a32:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006a36 <.Loc.155.1>:
    6a36:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

00006a3a <.Loc.155.1>:
    6a3a:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    6a3e:	36 1c 
    6a40:	62 2b       	jnc	$-314    	;abs 0x6906

00006a42 <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6a42:	7b 90 03 00 	cmp.b	#3,	r11	;
    6a46:	66 23       	jnz	$-306    	;abs 0x6914

00006a48 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6a48:	0e 4f       	mov	r15,	r14	;

00006a4a <.Loc.164.1>:
    if (!first)
    6a4a:	79 3f       	jmp	$-268    	;abs 0x693e

00006a4c <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6a4c:	7b 90 03 00 	cmp.b	#3,	r11	;
    6a50:	74 27       	jz	$-278    	;abs 0x693a

00006a52 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    6a52:	09 4a       	mov	r10,	r9	;
    6a54:	05 4a       	mov	r10,	r5	;
    6a56:	55 06       	rlam	#2,	r5	;
    6a58:	0c 45       	mov	r5,	r12	;
    6a5a:	0c 5a       	add	r10,	r12	;
    6a5c:	5c 02       	rlam	#1,	r12	;

00006a5e <.Loc.130.1>:
    6a5e:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6a62:	0f 23       	jnz	$-480    	;abs 0x6882
    6a64:	a1 3f       	jmp	$-188    	;abs 0x69a8

00006a66 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    6a66:	4a 15       	pushm	#5,	r10	;16-bit words

00006a68 <.LCFI14>:
    6a68:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006a6c <.LCFI15>:
    6a6c:	47 4c       	mov.b	r12,	r7	;
    6a6e:	09 4d       	mov	r13,	r9	;

00006a70 <.LBB12>:
    6a70:	46 43       	clr.b	r6		;
    6a72:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00006a76 <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    6a76:	0a 46       	mov	r6,	r10	;
    6a78:	5a 06       	rlam	#2,	r10	;
    6a7a:	0a 56       	add	r6,	r10	;
    6a7c:	5a 02       	rlam	#1,	r10	;
    6a7e:	0a 58       	add	r8,	r10	;
    6a80:	4e 43       	clr.b	r14		;
    6a82:	4d 46       	mov.b	r6,	r13	;
    6a84:	0c 41       	mov	r1,	r12	;
    6a86:	b0 12 e4 76 	call	#30436		;#0x76e4
    6a8a:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6a8e:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6a92:	02 00 
    6a94:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6a98:	04 00 
    6a9a:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6a9e:	06 00 
    6aa0:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6aa4:	08 00 

00006aa6 <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6aa6:	16 53       	inc	r6		;

00006aa8 <.Loc.115.1>:
    6aa8:	36 90 03 00 	cmp	#3,	r6	;
    6aac:	e4 23       	jnz	$-54     	;abs 0x6a76

00006aae <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    6aae:	b0 12 42 73 	call	#29506		;#0x7342

00006ab2 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    6ab2:	0e 49       	mov	r9,	r14	;
    6ab4:	0f 43       	clr	r15		;

00006ab6 <.Loc.194.1>:
    6ab6:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    6aba:	22 24       	jz	$+70     	;abs 0x6b00

00006abc <.Loc.192.1>:
    6abc:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    6ac0:	49 24       	jz	$+148    	;abs 0x6b54

00006ac2 <.Loc.192.1>:
    6ac2:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    6ac6:	49 24       	jz	$+148    	;abs 0x6b5a

00006ac8 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    6ac8:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    6acc:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

00006ad0 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    6ad0:	4d 43       	clr.b	r13		;
    6ad2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ad4:	b0 12 48 74 	call	#29768		;#0x7448

00006ad8 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    6ad8:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

00006adc <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    6adc:	4e 47       	mov.b	r7,	r14	;
    6ade:	4d 43       	clr.b	r13		;
    6ae0:	7c 40 03 00 	mov.b	#3,	r12	;
    6ae4:	b0 12 9c 74 	call	#29852		;#0x749c

00006ae8 <.Loc.219.1>:
        refresh_wkup_timers();
    6ae8:	b0 12 60 68 	call	#26720		;#0x6860

00006aec <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    6aec:	4c 43       	clr.b	r12		;
    6aee:	b0 12 4c 75 	call	#30028		;#0x754c

00006af2 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    6af2:	4c 43       	clr.b	r12		;
    6af4:	b0 12 a0 76 	call	#30368		;#0x76a0

00006af8 <.Loc.224.1>:
}
    6af8:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006afc <.LCFI16>:
    6afc:	46 17       	popm	#5,	r10	;16-bit words

00006afe <.LCFI17>:
    6afe:	30 41       	ret			

00006b00 <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6b00:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

00006b04 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6b04:	0d 4a       	mov	r10,	r13	;

00006b06 <.L95>:
            wkup_timing[i].data = ticks;
    6b06:	0c 4d       	mov	r13,	r12	;
    6b08:	5c 06       	rlam	#2,	r12	;
    6b0a:	0c 5d       	add	r13,	r12	;
    6b0c:	5c 02       	rlam	#1,	r12	;
    6b0e:	08 5c       	add	r12,	r8	;
    6b10:	88 4e 04 00 	mov	r14,	4(r8)	;
    6b14:	88 4f 06 00 	mov	r15,	6(r8)	;

00006b18 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    6b18:	4d 43       	clr.b	r13		;
    6b1a:	4c 4a       	mov.b	r10,	r12	;
    6b1c:	b0 12 48 74 	call	#29768		;#0x7448

00006b20 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    6b20:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00006b24 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    6b24:	4e 47       	mov.b	r7,	r14	;
    6b26:	4d 43       	clr.b	r13		;
    6b28:	4c 4a       	mov.b	r10,	r12	;
    6b2a:	b0 12 9c 74 	call	#29852		;#0x749c

00006b2e <.Loc.200.1>:
            wkup_timing[i].status = USED;
    6b2e:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

00006b32 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    6b32:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6b34:	4d 43       	clr.b	r13		;
    6b36:	4c 4a       	mov.b	r10,	r12	;
    6b38:	b0 12 e8 74 	call	#29928		;#0x74e8

00006b3c <.Loc.202.1>:
        refresh_wkup_timers();
    6b3c:	b0 12 60 68 	call	#26720		;#0x6860

00006b40 <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    6b40:	4c 43       	clr.b	r12		;
    6b42:	b0 12 4c 75 	call	#30028		;#0x754c

00006b46 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    6b46:	4c 43       	clr.b	r12		;
    6b48:	b0 12 a0 76 	call	#30368		;#0x76a0

00006b4c <.Loc.224.1>:
}
    6b4c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006b50 <.LCFI19>:
    6b50:	46 17       	popm	#5,	r10	;16-bit words

00006b52 <.LCFI20>:
    6b52:	30 41       	ret			

00006b54 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6b54:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006b56 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6b56:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6b58:	d6 3f       	jmp	$-82     	;abs 0x6b06

00006b5a <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6b5a:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006b5c <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6b5c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6b5e:	d3 3f       	jmp	$-88     	;abs 0x6b06

00006b60 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    6b60:	4d 4c       	mov.b	r12,	r13	;

00006b62 <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    6b62:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    6b66:	14 24       	jz	$+42     	;abs 0x6b90

00006b68 <.Loc.237.1>:
    6b68:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    6b6c:	14 24       	jz	$+42     	;abs 0x6b96

00006b6e <.Loc.237.1>:
    6b6e:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    6b72:	01 24       	jz	$+4      	;abs 0x6b76

00006b74 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    6b74:	30 41       	ret			

00006b76 <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6b76:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006b78 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    6b78:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006b7a <.L102>:
            xpr_timing[i].status = NOT_USED;
    6b7a:	0d 4e       	mov	r14,	r13	;

00006b7c <.LVL71>:
    6b7c:	5d 06       	rlam	#2,	r13	;
    6b7e:	0d 5e       	add	r14,	r13	;
    6b80:	5d 02       	rlam	#1,	r13	;
    6b82:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006b86 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6b86:	4e 43       	clr.b	r14		;
    6b88:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6b8a:	b0 12 e8 74 	call	#29928		;#0x74e8

00006b8e <.Loc.242.1>:
}
    6b8e:	30 41       	ret			

00006b90 <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6b90:	4c 43       	clr.b	r12		;

00006b92 <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    6b92:	4e 43       	clr.b	r14		;
    6b94:	f2 3f       	jmp	$-26     	;abs 0x6b7a

00006b96 <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6b96:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006b98 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    6b98:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6b9a:	ef 3f       	jmp	$-32     	;abs 0x6b7a

00006b9c <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    6b9c:	2a 15       	pushm	#3,	r10	;16-bit words

00006b9e <.LCFI22>:
    6b9e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006ba2 <.LCFI23>:
    6ba2:	49 43       	clr.b	r9		;
    6ba4:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

00006ba8 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6ba8:	0a 49       	mov	r9,	r10	;
    6baa:	5a 06       	rlam	#2,	r10	;
    6bac:	0a 59       	add	r9,	r10	;
    6bae:	5a 02       	rlam	#1,	r10	;
    6bb0:	0a 58       	add	r8,	r10	;
    6bb2:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6bb4:	4d 49       	mov.b	r9,	r13	;
    6bb6:	0c 41       	mov	r1,	r12	;
    6bb8:	b0 12 e4 76 	call	#30436		;#0x76e4
    6bbc:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6bc0:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6bc4:	02 00 
    6bc6:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6bca:	04 00 
    6bcc:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6bd0:	06 00 
    6bd2:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6bd6:	08 00 

00006bd8 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6bd8:	19 53       	inc	r9		;

00006bda <.Loc.252.1>:
    6bda:	39 90 03 00 	cmp	#3,	r9	;
    6bde:	e4 23       	jnz	$-54     	;abs 0x6ba8

00006be0 <.Loc.257.1>:
    }

}
    6be0:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006be4 <.LCFI24>:
    6be4:	28 17       	popm	#3,	r10	;16-bit words

00006be6 <.LCFI25>:
    6be6:	30 41       	ret			

00006be8 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    6be8:	4a 15       	pushm	#5,	r10	;16-bit words

00006bea <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    6bea:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    6bee:	62 24       	jz	$+198    	;abs 0x6cb4

00006bf0 <.Loc.265.1>:
    6bf0:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6bf4:	07 24       	jz	$+16     	;abs 0x6c04

00006bf6 <.Loc.265.1>:
    6bf6:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    6bfa:	15 25       	jz	$+556    	;abs 0x6e26

00006bfc <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    6bfc:	b0 12 82 73 	call	#29570		;#0x7382

00006c00 <.Loc.313.1>:

}
    6c00:	46 17       	popm	#5,	r10	;16-bit words

00006c02 <.LCFI27>:
    6c02:	30 41       	ret			

00006c04 <.L160>:
            if (first)
    6c04:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6c08:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00006c0c <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    6c0c:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

00006c10 <.LVL89>:
    6c10:	08 46       	mov	r6,	r8	;
    6c12:	09 47       	mov	r7,	r9	;

00006c14 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6c14:	b0 12 e4 73 	call	#29668		;#0x73e4

00006c18 <.Loc.278.1>:
    6c18:	0e 46       	mov	r6,	r14	;
    6c1a:	0f 47       	mov	r7,	r15	;
    6c1c:	0e 8c       	sub	r12,	r14	;
    6c1e:	0f 7d       	subc	r13,	r15	;

00006c20 <.Loc.278.1>:
    6c20:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    6c24:	82 4f 26 1c 	mov	r15,	&0x1c26	;

00006c28 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6c28:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6c2a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6c2c:	b0 12 48 74 	call	#29768		;#0x7448

00006c30 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6c30:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    6c34:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

00006c38 <.Loc.281.1>:
    6c38:	4e 43       	clr.b	r14		;
    6c3a:	0e 9c       	cmp	r12,	r14	;
    6c3c:	a2 34       	jge	$+326    	;abs 0x6d82

00006c3e <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6c3e:	0c 99       	cmp	r9,	r12	;
    6c40:	04 38       	jl	$+10     	;abs 0x6c4a

00006c42 <.L170>:
    6c42:	09 9c       	cmp	r12,	r9	;
    6c44:	e5 20       	jnz	$+460    	;abs 0x6e10
    6c46:	0d 98       	cmp	r8,	r13	;
    6c48:	e3 2c       	jc	$+456    	;abs 0x6e10

00006c4a <.L152>:
    6c4a:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

00006c4e <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    6c4e:	08 4d       	mov	r13,	r8	;
    6c50:	09 4c       	mov	r12,	r9	;

00006c52 <.L117>:
        if (xpr_timing[i].status == USED)
    6c52:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    6c56:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

00006c5a <.Loc.268.1>:
    6c5a:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    6c5e:	1d 20       	jnz	$+60     	;abs 0x6c9a

00006c60 <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6c60:	b0 12 e4 73 	call	#29668		;#0x73e4

00006c64 <.Loc.278.1>:
    6c64:	0e 46       	mov	r6,	r14	;
    6c66:	0f 47       	mov	r7,	r15	;
    6c68:	0e 8c       	sub	r12,	r14	;
    6c6a:	0f 7d       	subc	r13,	r15	;

00006c6c <.Loc.278.1>:
    6c6c:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    6c70:	82 4f 30 1c 	mov	r15,	&0x1c30	;

00006c74 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6c74:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6c76:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6c78:	b0 12 48 74 	call	#29768		;#0x7448

00006c7c <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6c7c:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    6c80:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

00006c84 <.Loc.281.1>:
    6c84:	4e 43       	clr.b	r14		;
    6c86:	0e 9c       	cmp	r12,	r14	;
    6c88:	4c 34       	jge	$+154    	;abs 0x6d22

00006c8a <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6c8a:	0c 99       	cmp	r9,	r12	;
    6c8c:	76 38       	jl	$+238    	;abs 0x6d7a

00006c8e <.L168>:
    6c8e:	09 9c       	cmp	r12,	r9	;
    6c90:	02 20       	jnz	$+6      	;abs 0x6c96
    6c92:	0d 98       	cmp	r8,	r13	;
    6c94:	72 28       	jnc	$+230    	;abs 0x6d7a

00006c96 <.L139>:
    6c96:	08 9d       	cmp	r13,	r8	;
    6c98:	d8 24       	jz	$+434    	;abs 0x6e4a

00006c9a <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    6c9a:	4d 4a       	mov.b	r10,	r13	;
    6c9c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6c9e:	b0 12 30 75 	call	#30000		;#0x7530

00006ca2 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    6ca2:	0d 48       	mov	r8,	r13	;
    6ca4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ca6:	b0 12 3e 75 	call	#30014		;#0x753e

00006caa <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    6caa:	0c 48       	mov	r8,	r12	;
    6cac:	b0 12 6c 73 	call	#29548		;#0x736c

00006cb0 <.Loc.313.1>:
}
    6cb0:	46 17       	popm	#5,	r10	;16-bit words

00006cb2 <.LCFI29>:
    6cb2:	30 41       	ret			

00006cb4 <.L159>:
            if (first)
    6cb4:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    6cb8:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

00006cbc <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    6cbc:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

00006cc0 <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6cc0:	b0 12 e4 73 	call	#29668		;#0x73e4

00006cc4 <.LVL105>:
    6cc4:	0e 48       	mov	r8,	r14	;
    6cc6:	0f 49       	mov	r9,	r15	;
    6cc8:	0e 8c       	sub	r12,	r14	;
    6cca:	0f 7d       	subc	r13,	r15	;

00006ccc <.Loc.278.1>:
    6ccc:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    6cd0:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

00006cd4 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6cd4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6cd6:	4c 43       	clr.b	r12		;
    6cd8:	b0 12 48 74 	call	#29768		;#0x7448

00006cdc <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6cdc:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    6ce0:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00006ce4 <.Loc.281.1>:
    6ce4:	4e 43       	clr.b	r14		;
    6ce6:	0e 9c       	cmp	r12,	r14	;
    6ce8:	74 34       	jge	$+234    	;abs 0x6dd2

00006cea <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6cea:	0c 99       	cmp	r9,	r12	;
    6cec:	0c 34       	jge	$+26     	;abs 0x6d06

00006cee <.L151>:
    6cee:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

00006cf2 <.L119>:
        if (xpr_timing[i].status == USED)
    6cf2:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6cf6:	ab 23       	jnz	$-168    	;abs 0x6c4e

00006cf8 <.Loc.271.1>:
            if (first)
    6cf8:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6cfc:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00006d00 <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    6d00:	08 4d       	mov	r13,	r8	;
    6d02:	09 4c       	mov	r12,	r9	;
    6d04:	87 3f       	jmp	$-240    	;abs 0x6c14

00006d06 <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6d06:	09 9c       	cmp	r12,	r9	;
    6d08:	02 20       	jnz	$+6      	;abs 0x6d0e
    6d0a:	0d 98       	cmp	r8,	r13	;
    6d0c:	f0 2b       	jnc	$-30     	;abs 0x6cee

00006d0e <.L114>:
    6d0e:	0d 98       	cmp	r8,	r13	;
    6d10:	93 24       	jz	$+296    	;abs 0x6e38

00006d12 <.L118>:
        if (xpr_timing[i].status == USED)
    6d12:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6d16:	9d 23       	jnz	$-196    	;abs 0x6c52

00006d18 <.Loc.271.1>:
            if (first)
    6d18:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6d1c:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    6d20:	79 3f       	jmp	$-268    	;abs 0x6c14

00006d22 <.L162>:
            if (xpr_timing[i].data <= 0)
    6d22:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d24:	02 20       	jnz	$+6      	;abs 0x6d2a
    6d26:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d28:	b0 23       	jnz	$-158    	;abs 0x6c8a

00006d2a <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6d2a:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    6d2e:	b0 12 e0 65 	call	#26080		;#0x65e0
    6d32:	b0 12 86 65 	call	#25990		;#0x6586

00006d36 <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    6d36:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

00006d3a <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    6d3a:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    6d3e:	18 1c 
    6d40:	8e 24       	jz	$+286    	;abs 0x6e5e

00006d42 <.Loc.237.1>:
    6d42:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    6d46:	91 24       	jz	$+292    	;abs 0x6e6a

00006d48 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6d48:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006d4a <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6d4a:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006d4c <.L136>:
            xpr_timing[i].status = NOT_USED;
    6d4c:	0d 4e       	mov	r14,	r13	;
    6d4e:	5d 06       	rlam	#2,	r13	;
    6d50:	0d 5e       	add	r14,	r13	;
    6d52:	5d 02       	rlam	#1,	r13	;
    6d54:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006d58 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6d58:	4e 43       	clr.b	r14		;
    6d5a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6d5c:	b0 12 e8 74 	call	#29928		;#0x74e8

00006d60 <.LBE18>:
            if (xpr_timing[i].data > 0)
    6d60:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    6d64:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

00006d68 <.Loc.292.1>:
    6d68:	4e 43       	clr.b	r14		;
    6d6a:	0e 9c       	cmp	r12,	r14	;
    6d6c:	8e 3b       	jl	$-226    	;abs 0x6c8a
    6d6e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d70:	94 23       	jnz	$-214    	;abs 0x6c9a
    6d72:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d74:	92 27       	jz	$-218    	;abs 0x6c9a

00006d76 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6d76:	0c 99       	cmp	r9,	r12	;
    6d78:	8a 37       	jge	$-234    	;abs 0x6c8e

00006d7a <.L154>:
    6d7a:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

00006d7e <.LVL117>:
    if (!first)
    6d7e:	08 4d       	mov	r13,	r8	;
    6d80:	8c 3f       	jmp	$-230    	;abs 0x6c9a

00006d82 <.L161>:
            if (xpr_timing[i].data <= 0)
    6d82:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d84:	02 20       	jnz	$+6      	;abs 0x6d8a
    6d86:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d88:	5a 23       	jnz	$-330    	;abs 0x6c3e

00006d8a <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6d8a:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    6d8e:	b0 12 e0 65 	call	#26080		;#0x65e0
    6d92:	b0 12 86 65 	call	#25990		;#0x6586

00006d96 <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    6d96:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    6d9a:	22 1c 
    6d9c:	63 24       	jz	$+200    	;abs 0x6e64

00006d9e <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6d9e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006da0 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6da0:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006da2 <.L131>:
            xpr_timing[i].status = NOT_USED;
    6da2:	0d 4e       	mov	r14,	r13	;
    6da4:	5d 06       	rlam	#2,	r13	;
    6da6:	0d 5e       	add	r14,	r13	;
    6da8:	5d 02       	rlam	#1,	r13	;
    6daa:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006dae <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6dae:	4e 43       	clr.b	r14		;
    6db0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6db2:	b0 12 e8 74 	call	#29928		;#0x74e8

00006db6 <.LVL122>:
            if (xpr_timing[i].data > 0)
    6db6:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    6dba:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

00006dbe <.Loc.292.1>:
    6dbe:	4e 43       	clr.b	r14		;
    6dc0:	0e 9c       	cmp	r12,	r14	;
    6dc2:	3d 3b       	jl	$-388    	;abs 0x6c3e
    6dc4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6dc6:	45 23       	jnz	$-372    	;abs 0x6c52
    6dc8:	0d 93       	cmp	#0,	r13	;r3 As==00
    6dca:	43 27       	jz	$-376    	;abs 0x6c52

00006dcc <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6dcc:	0c 99       	cmp	r9,	r12	;
    6dce:	3d 3b       	jl	$-388    	;abs 0x6c4a
    6dd0:	38 3f       	jmp	$-398    	;abs 0x6c42

00006dd2 <.L164>:
            if (xpr_timing[i].data <= 0)
    6dd2:	0c 93       	cmp	#0,	r12	;r3 As==00
    6dd4:	02 20       	jnz	$+6      	;abs 0x6dda
    6dd6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6dd8:	88 23       	jnz	$-238    	;abs 0x6cea

00006dda <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6dda:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    6dde:	b0 12 e0 65 	call	#26080		;#0x65e0
    6de2:	b0 12 86 65 	call	#25990		;#0x6586

00006de6 <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    6de6:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

00006dea <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6dea:	4e 43       	clr.b	r14		;
    6dec:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6dee:	4c 43       	clr.b	r12		;
    6df0:	b0 12 e8 74 	call	#29928		;#0x74e8

00006df4 <.LVL126>:
            if (xpr_timing[i].data > 0)
    6df4:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    6df8:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00006dfc <.Loc.292.1>:
    6dfc:	4e 43       	clr.b	r14		;
    6dfe:	0e 9c       	cmp	r12,	r14	;
    6e00:	74 3b       	jl	$-278    	;abs 0x6cea
    6e02:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e04:	86 23       	jnz	$-242    	;abs 0x6d12
    6e06:	0d 93       	cmp	#0,	r13	;r3 As==00
    6e08:	84 27       	jz	$-246    	;abs 0x6d12

00006e0a <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6e0a:	0c 99       	cmp	r9,	r12	;
    6e0c:	70 3b       	jl	$-286    	;abs 0x6cee
    6e0e:	7b 3f       	jmp	$-264    	;abs 0x6d06

00006e10 <.L128>:
    6e10:	08 9d       	cmp	r13,	r8	;
    6e12:	1f 23       	jnz	$-448    	;abs 0x6c52
    6e14:	09 9c       	cmp	r12,	r9	;
    6e16:	1d 23       	jnz	$-452    	;abs 0x6c52

00006e18 <.Loc.294.1>:
    6e18:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

00006e1c <.Loc.294.1>:
    6e1c:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    6e20:	18 2f       	jc	$-462    	;abs 0x6c52
    6e22:	0a 4e       	mov	r14,	r10	;

00006e24 <.LVL128>:
    6e24:	14 3f       	jmp	$-470    	;abs 0x6c4e

00006e26 <.L143>:
            if (first)
    6e26:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    6e2a:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

00006e2e <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    6e2e:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

00006e32 <.LVL131>:
    6e32:	08 46       	mov	r6,	r8	;
    6e34:	09 47       	mov	r7,	r9	;
    6e36:	14 3f       	jmp	$-470    	;abs 0x6c60

00006e38 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6e38:	0c 99       	cmp	r9,	r12	;
    6e3a:	6b 23       	jnz	$-296    	;abs 0x6d12

00006e3c <.Loc.294.1>:
    6e3c:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

00006e40 <.Loc.294.1>:
    6e40:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    6e44:	66 2f       	jc	$-306    	;abs 0x6d12
    6e46:	0a 4e       	mov	r14,	r10	;

00006e48 <.LVL133>:
    6e48:	54 3f       	jmp	$-342    	;abs 0x6cf2

00006e4a <.L163>:
    6e4a:	09 9c       	cmp	r12,	r9	;
    6e4c:	26 23       	jnz	$-434    	;abs 0x6c9a

00006e4e <.Loc.294.1>:
    6e4e:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

00006e52 <.Loc.294.1>:
    6e52:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    6e56:	21 2f       	jc	$-444    	;abs 0x6c9a
    6e58:	0a 4c       	mov	r12,	r10	;

00006e5a <.LVL135>:
    if (!first)
    6e5a:	08 4d       	mov	r13,	r8	;
    6e5c:	1e 3f       	jmp	$-450    	;abs 0x6c9a

00006e5e <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6e5e:	4c 43       	clr.b	r12		;

00006e60 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6e60:	4e 43       	clr.b	r14		;
    6e62:	74 3f       	jmp	$-278    	;abs 0x6d4c

00006e64 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6e64:	4c 43       	clr.b	r12		;

00006e66 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6e66:	4e 43       	clr.b	r14		;
    6e68:	9c 3f       	jmp	$-198    	;abs 0x6da2

00006e6a <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6e6a:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006e6c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6e6c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6e6e:	6e 3f       	jmp	$-290    	;abs 0x6d4c

00006e70 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    6e70:	5a 15       	pushm	#6,	r10	;16-bit words

00006e72 <.LCFI31>:
    6e72:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006e76 <.LCFI32>:
    6e76:	47 4c       	mov.b	r12,	r7	;
    6e78:	08 4d       	mov	r13,	r8	;
    6e7a:	06 4e       	mov	r14,	r6	;

00006e7c <.LBB26>:
    6e7c:	45 43       	clr.b	r5		;
    6e7e:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

00006e82 <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6e82:	0a 45       	mov	r5,	r10	;
    6e84:	5a 06       	rlam	#2,	r10	;
    6e86:	0a 55       	add	r5,	r10	;
    6e88:	5a 02       	rlam	#1,	r10	;
    6e8a:	0a 59       	add	r9,	r10	;
    6e8c:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6e8e:	4d 45       	mov.b	r5,	r13	;
    6e90:	0c 41       	mov	r1,	r12	;
    6e92:	b0 12 e4 76 	call	#30436		;#0x76e4
    6e96:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6e9a:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6e9e:	02 00 
    6ea0:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6ea4:	04 00 
    6ea6:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6eaa:	06 00 
    6eac:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6eb0:	08 00 

00006eb2 <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6eb2:	15 53       	inc	r5		;

00006eb4 <.Loc.252.1>:
    6eb4:	35 90 03 00 	cmp	#3,	r5	;
    6eb8:	e4 23       	jnz	$-54     	;abs 0x6e82

00006eba <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    6eba:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    6ebe:	1d 24       	jz	$+60     	;abs 0x6efa

00006ec0 <.Loc.324.1>:
    6ec0:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    6ec4:	4e 24       	jz	$+158    	;abs 0x6f62

00006ec6 <.Loc.324.1>:
    6ec6:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    6eca:	4e 24       	jz	$+158    	;abs 0x6f68

00006ecc <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    6ecc:	0e 48       	mov	r8,	r14	;
    6ece:	0f 46       	mov	r6,	r15	;
    6ed0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ed2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ed4:	b0 12 48 74 	call	#29768		;#0x7448

00006ed8 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    6ed8:	4e 47       	mov.b	r7,	r14	;
    6eda:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6edc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ede:	b0 12 9c 74 	call	#29852		;#0x749c

00006ee2 <.Loc.349.1>:
        refresh_xpr_timers();
    6ee2:	b0 12 e8 6b 	call	#27624		;#0x6be8

00006ee6 <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    6ee6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ee8:	b0 12 4c 75 	call	#30028		;#0x754c

00006eec <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6eec:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6eee:	b0 12 a0 76 	call	#30368		;#0x76a0

00006ef2 <.Loc.354.1>:
}
    6ef2:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006ef6 <.LCFI33>:
    6ef6:	55 17       	popm	#6,	r10	;16-bit words

00006ef8 <.LCFI34>:
    6ef8:	30 41       	ret			

00006efa <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6efa:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

00006efe <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6efe:	05 4a       	mov	r10,	r5	;

00006f00 <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    6f00:	b0 12 e4 73 	call	#29668		;#0x73e4

00006f04 <.Loc.328.1>:
    6f04:	0e 45       	mov	r5,	r14	;
    6f06:	5e 06       	rlam	#2,	r14	;
    6f08:	0e 55       	add	r5,	r14	;
    6f0a:	5e 02       	rlam	#1,	r14	;
    6f0c:	09 5e       	add	r14,	r9	;

00006f0e <.Loc.328.1>:
    6f0e:	0c 58       	add	r8,	r12	;
    6f10:	89 4c 04 00 	mov	r12,	4(r9)	;
    6f14:	0d 66       	addc	r6,	r13	;
    6f16:	89 4d 06 00 	mov	r13,	6(r9)	;

00006f1a <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    6f1a:	b0 12 e4 73 	call	#29668		;#0x73e4

00006f1e <.Loc.329.1>:
    6f1e:	0e 4c       	mov	r12,	r14	;
    6f20:	0e 58       	add	r8,	r14	;
    6f22:	0f 4d       	mov	r13,	r15	;
    6f24:	0f 66       	addc	r6,	r15	;
    6f26:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6f28:	4c 4a       	mov.b	r10,	r12	;
    6f2a:	b0 12 48 74 	call	#29768		;#0x7448

00006f2e <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    6f2e:	c9 47 02 00 	mov.b	r7,	2(r9)	;

00006f32 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    6f32:	4e 47       	mov.b	r7,	r14	;
    6f34:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6f36:	4c 4a       	mov.b	r10,	r12	;
    6f38:	b0 12 9c 74 	call	#29852		;#0x749c

00006f3c <.Loc.332.1>:
            xpr_timing[i].status = USED;
    6f3c:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

00006f40 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    6f40:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6f42:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6f44:	4c 4a       	mov.b	r10,	r12	;
    6f46:	b0 12 e8 74 	call	#29928		;#0x74e8

00006f4a <.Loc.334.1>:
        refresh_xpr_timers();
    6f4a:	b0 12 e8 6b 	call	#27624		;#0x6be8

00006f4e <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    6f4e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6f50:	b0 12 4c 75 	call	#30028		;#0x754c

00006f54 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6f54:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6f56:	b0 12 a0 76 	call	#30368		;#0x76a0

00006f5a <.Loc.354.1>:
}
    6f5a:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006f5e <.LCFI36>:
    6f5e:	55 17       	popm	#6,	r10	;16-bit words

00006f60 <.LCFI37>:
    6f60:	30 41       	ret			

00006f62 <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6f62:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006f64 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6f64:	55 43       	mov.b	#1,	r5	;r3 As==01
    6f66:	cc 3f       	jmp	$-102    	;abs 0x6f00

00006f68 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6f68:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006f6a <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6f6a:	65 43       	mov.b	#2,	r5	;r3 As==10
    6f6c:	c9 3f       	jmp	$-108    	;abs 0x6f00

00006f6e <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    6f6e:	3a 15       	pushm	#4,	r10	;16-bit words

00006f70 <.LCFI39>:
    6f70:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006f74 <.LCFI40>:
    6f74:	47 4c       	mov.b	r12,	r7	;

00006f76 <.LBB34>:
    6f76:	49 43       	clr.b	r9		;
    6f78:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

00006f7c <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6f7c:	0a 49       	mov	r9,	r10	;
    6f7e:	5a 06       	rlam	#2,	r10	;
    6f80:	0a 59       	add	r9,	r10	;
    6f82:	5a 02       	rlam	#1,	r10	;
    6f84:	0a 58       	add	r8,	r10	;
    6f86:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6f88:	4d 49       	mov.b	r9,	r13	;
    6f8a:	0c 41       	mov	r1,	r12	;
    6f8c:	b0 12 e4 76 	call	#30436		;#0x76e4
    6f90:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6f94:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6f98:	02 00 
    6f9a:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6f9e:	04 00 
    6fa0:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6fa4:	06 00 
    6fa6:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6faa:	08 00 

00006fac <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6fac:	19 53       	inc	r9		;

00006fae <.Loc.252.1>:
    6fae:	39 90 03 00 	cmp	#3,	r9	;
    6fb2:	e4 23       	jnz	$-54     	;abs 0x6f7c

00006fb4 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    6fb4:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    6fb8:	12 24       	jz	$+38     	;abs 0x6fde

00006fba <.Loc.237.1>:
    6fba:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    6fbe:	27 24       	jz	$+80     	;abs 0x700e

00006fc0 <.Loc.237.1>:
    6fc0:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    6fc4:	27 24       	jz	$+80     	;abs 0x7014

00006fc6 <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    6fc6:	b0 12 e8 6b 	call	#27624		;#0x6be8

00006fca <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    6fca:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6fcc:	b0 12 4c 75 	call	#30028		;#0x754c

00006fd0 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6fd0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6fd2:	b0 12 a0 76 	call	#30368		;#0x76a0

00006fd6 <.Loc.371.1>:

}
    6fd6:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006fda <.LCFI41>:
    6fda:	37 17       	popm	#4,	r10	;16-bit words

00006fdc <.LCFI42>:
    6fdc:	30 41       	ret			

00006fde <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6fde:	4c 43       	clr.b	r12		;

00006fe0 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6fe0:	4e 43       	clr.b	r14		;

00006fe2 <.L181>:
            xpr_timing[i].status = NOT_USED;
    6fe2:	0d 4e       	mov	r14,	r13	;
    6fe4:	5d 06       	rlam	#2,	r13	;
    6fe6:	0d 5e       	add	r14,	r13	;
    6fe8:	5d 02       	rlam	#1,	r13	;
    6fea:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006fee <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6fee:	4e 43       	clr.b	r14		;
    6ff0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ff2:	b0 12 e8 74 	call	#29928		;#0x74e8

00006ff6 <.Loc.242.1>:
    refresh_xpr_timers();
    6ff6:	b0 12 e8 6b 	call	#27624		;#0x6be8

00006ffa <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    6ffa:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ffc:	b0 12 4c 75 	call	#30028		;#0x754c

00007000 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    7000:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7002:	b0 12 a0 76 	call	#30368		;#0x76a0

00007006 <.Loc.371.1>:
}
    7006:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000700a <.LCFI44>:
    700a:	37 17       	popm	#4,	r10	;16-bit words

0000700c <.LCFI45>:
    700c:	30 41       	ret			

0000700e <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    700e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007010 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7010:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7012:	e7 3f       	jmp	$-48     	;abs 0x6fe2

00007014 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7014:	6c 43       	mov.b	#2,	r12	;r3 As==10

00007016 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7016:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7018:	e4 3f       	jmp	$-54     	;abs 0x6fe2

0000701a <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    701a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000701e <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    701e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7020:	4d 43       	clr.b	r13		;
    7022:	0c 41       	mov	r1,	r12	;
    7024:	b0 12 e4 76 	call	#30436		;#0x76e4
    7028:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    702c:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7030:	0e 1c 
    7032:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    7036:	10 1c 
    7038:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    703c:	12 1c 
    703e:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    7042:	14 1c 

00007044 <.Loc.383.1>:
    }

}
    7044:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007048 <.LCFI48>:
    7048:	30 41       	ret			

0000704a <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    704a:	2a 15       	pushm	#3,	r10	;16-bit words

0000704c <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    704c:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    7050:	8a 20       	jnz	$+278    	;abs 0x7166

00007052 <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    7052:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    7056:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000705a <.Loc.465.1>:
    705a:	82 48 52 1c 	mov	r8,	&0x1c52	;

0000705e <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    705e:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    7062:	54 1c 

00007064 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    7064:	b0 12 e4 73 	call	#29668		;#0x73e4

00007068 <.Loc.471.1>:
    7068:	0e 48       	mov	r8,	r14	;
    706a:	0f 49       	mov	r9,	r15	;
    706c:	0e 8c       	sub	r12,	r14	;
    706e:	0f 7d       	subc	r13,	r15	;

00007070 <.Loc.471.1>:
    7070:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    7074:	82 4f 12 1c 	mov	r15,	&0x1c12	;

00007078 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    7078:	5d 43       	mov.b	#1,	r13	;r3 As==01
    707a:	4c 43       	clr.b	r12		;
    707c:	b0 12 48 74 	call	#29768		;#0x7448

00007080 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    7080:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    7084:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

00007088 <.Loc.474.1>:
    7088:	0d 93       	cmp	#0,	r13	;r3 As==00
    708a:	21 38       	jl	$+68     	;abs 0x70ce

0000708c <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    708c:	0f 4c       	mov	r12,	r15	;
    708e:	0f dd       	bis	r13,	r15	;
    7090:	0f 93       	cmp	#0,	r15	;r3 As==00
    7092:	6d 24       	jz	$+220    	;abs 0x716e

00007094 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7094:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    7098:	08 4f       	mov	r15,	r8	;
    709a:	09 43       	clr	r9		;

0000709c <.Loc.485.1>:
    709c:	0d 93       	cmp	#0,	r13	;r3 As==00
    709e:	54 38       	jl	$+170    	;abs 0x7148
    70a0:	0d 93       	cmp	#0,	r13	;r3 As==00
    70a2:	02 20       	jnz	$+6      	;abs 0x70a8
    70a4:	0c 98       	cmp	r8,	r12	;
    70a6:	50 28       	jnc	$+162    	;abs 0x7148

000070a8 <.L209>:
    70a8:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

000070ac <.Loc.485.1>:
    70ac:	0c 98       	cmp	r8,	r12	;
    70ae:	53 24       	jz	$+168    	;abs 0x7156

000070b0 <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    70b0:	4d 4e       	mov.b	r14,	r13	;
    70b2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    70b4:	b0 12 30 75 	call	#30000		;#0x7530

000070b8 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    70b8:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    70bc:	5c 43       	mov.b	#1,	r12	;r3 As==01
    70be:	b0 12 3e 75 	call	#30014		;#0x753e

000070c2 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    70c2:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    70c6:	b0 12 8c 73 	call	#29580		;#0x738c

000070ca <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    70ca:	28 17       	popm	#3,	r10	;16-bit words

000070cc <.LCFI50>:
    70cc:	30 41       	ret			

000070ce <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    70ce:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    70d2:	0f 43       	clr	r15		;
    70d4:	0f 89       	sub	r9,	r15	;
    70d6:	08 4f       	mov	r15,	r8	;
    70d8:	09 4f       	mov	r15,	r9	;
    70da:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

000070de <.Loc.474.1>:
    70de:	09 9d       	cmp	r13,	r9	;
    70e0:	04 38       	jl	$+10     	;abs 0x70ea

000070e2 <.Loc.474.1>:
    70e2:	0d 99       	cmp	r9,	r13	;
    70e4:	25 20       	jnz	$+76     	;abs 0x7130
    70e6:	0f 9c       	cmp	r12,	r15	;
    70e8:	23 2c       	jc	$+72     	;abs 0x7130

000070ea <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    70ea:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    70ee:	0a 4e       	mov	r14,	r10	;
    70f0:	0b 43       	clr	r11		;

000070f2 <.Loc.476.1>:
    70f2:	48 43       	clr.b	r8		;
    70f4:	49 43       	clr.b	r9		;
    70f6:	08 8c       	sub	r12,	r8	;
    70f8:	09 7d       	subc	r13,	r9	;

000070fa <.Loc.476.1>:
    70fa:	09 93       	cmp	#0,	r9	;r3 As==00
    70fc:	04 38       	jl	$+10     	;abs 0x7106
    70fe:	09 93       	cmp	#0,	r9	;r3 As==00
    7100:	0b 20       	jnz	$+24     	;abs 0x7118
    7102:	08 9a       	cmp	r10,	r8	;
    7104:	09 2c       	jc	$+20     	;abs 0x7118

00007106 <.L207>:
    7106:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000710a <.L196>:
                    min_pdc = -pdc_timing[i].data;
    710a:	4f 43       	clr.b	r15		;
    710c:	0f 8c       	sub	r12,	r15	;
    710e:	82 4f 52 1c 	mov	r15,	&0x1c52	;

00007112 <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    7112:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00007116 <.Loc.494.1>:
    if (!first)
    7116:	cc 3f       	jmp	$-102    	;abs 0x70b0

00007118 <.L194>:
    7118:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000711c <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    711c:	0a 98       	cmp	r8,	r10	;
    711e:	c8 23       	jnz	$-110    	;abs 0x70b0
    7120:	09 93       	cmp	#0,	r9	;r3 As==00
    7122:	c6 23       	jnz	$-114    	;abs 0x70b0

00007124 <.Loc.476.1>:
    7124:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

00007128 <.Loc.476.1>:
    7128:	4f 9e       	cmp.b	r14,	r15	;
    712a:	c2 2f       	jc	$-122    	;abs 0x70b0
    712c:	0e 4f       	mov	r15,	r14	;
    712e:	ed 3f       	jmp	$-36     	;abs 0x710a

00007130 <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    7130:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00007134 <.Loc.481.1>:
    7134:	0d 99       	cmp	r9,	r13	;
    7136:	05 38       	jl	$+12     	;abs 0x7142
    7138:	0a 49       	mov	r9,	r10	;
    713a:	09 9d       	cmp	r13,	r9	;
    713c:	b9 23       	jnz	$-140    	;abs 0x70b0
    713e:	0c 9f       	cmp	r15,	r12	;
    7140:	b7 2f       	jc	$-144    	;abs 0x70b0

00007142 <.L208>:
    7142:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007146 <.Loc.494.1>:
    if (!first)
    7146:	b4 3f       	jmp	$-150    	;abs 0x70b0

00007148 <.L201>:
    7148:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000714c <.L203>:
                    min_pdc = pdc_timing[i].data;
    714c:	82 4c 52 1c 	mov	r12,	&0x1c52	;

00007150 <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    7150:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00007154 <.Loc.494.1>:
    if (!first)
    7154:	ad 3f       	jmp	$-164    	;abs 0x70b0

00007156 <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7156:	0d 99       	cmp	r9,	r13	;
    7158:	ab 23       	jnz	$-168    	;abs 0x70b0

0000715a <.Loc.485.1>:
    715a:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000715e <.Loc.485.1>:
    715e:	4f 9e       	cmp.b	r14,	r15	;
    7160:	a7 2f       	jc	$-176    	;abs 0x70b0
    7162:	0e 4f       	mov	r15,	r14	;
    7164:	f3 3f       	jmp	$-24     	;abs 0x714c

00007166 <.L189>:
    else stop_timer();
    7166:	b0 12 42 73 	call	#29506		;#0x7342

0000716a <.Loc.507.1>:
}
    716a:	28 17       	popm	#3,	r10	;16-bit words

0000716c <.LCFI52>:
    716c:	30 41       	ret			

0000716e <.L199>:
    if (!first)
    716e:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    7172:	9e 3f       	jmp	$-194    	;abs 0x70b0

00007174 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    7174:	1a 15       	pushm	#2,	r10	;16-bit words

00007176 <.LCFI54>:
    7176:	17 15       	pushm	#2,	r7	;16-bit words

00007178 <.LCFI55>:
    7178:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000717c <.LCFI56>:
    717c:	49 4c       	mov.b	r12,	r9	;
    717e:	0a 4d       	mov	r13,	r10	;

00007180 <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    7180:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7182:	4d 43       	clr.b	r13		;

00007184 <.LVL210>:
    7184:	0c 41       	mov	r1,	r12	;

00007186 <.LVL211>:
    7186:	b0 12 e4 76 	call	#30436		;#0x76e4
    718a:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    718e:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7192:	0e 1c 
    7194:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    7198:	10 1c 
    719a:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    719e:	12 1c 
    71a0:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    71a4:	14 1c 

000071a6 <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    71a6:	06 4a       	mov	r10,	r6	;
    71a8:	07 43       	clr	r7		;

000071aa <.Loc.401.1>:
    71aa:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    71ae:	31 20       	jnz	$+100    	;abs 0x7212

000071b0 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    71b0:	4c 49       	mov.b	r9,	r12	;
    71b2:	b0 12 e0 65 	call	#26080		;#0x65e0
    71b6:	0d 4a       	mov	r10,	r13	;
    71b8:	b0 12 ac 65 	call	#26028		;#0x65ac

000071bc <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    71bc:	4c 49       	mov.b	r9,	r12	;
    71be:	b0 12 e0 65 	call	#26080		;#0x65e0
    71c2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71c4:	b0 12 b2 65 	call	#26034		;#0x65b2

000071c8 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    71c8:	0e 46       	mov	r6,	r14	;
    71ca:	0f 47       	mov	r7,	r15	;
    71cc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71ce:	4c 43       	clr.b	r12		;
    71d0:	b0 12 48 74 	call	#29768		;#0x7448

000071d4 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    71d4:	82 46 10 1c 	mov	r6,	&0x1c10	;
    71d8:	82 47 12 1c 	mov	r7,	&0x1c12	;

000071dc <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    71dc:	4e 49       	mov.b	r9,	r14	;
    71de:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71e0:	4c 43       	clr.b	r12		;
    71e2:	b0 12 9c 74 	call	#29852		;#0x749c

000071e6 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    71e6:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

000071ea <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    71ea:	5e 43       	mov.b	#1,	r14	;r3 As==01
    71ec:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71ee:	4c 43       	clr.b	r12		;
    71f0:	b0 12 e8 74 	call	#29928		;#0x74e8

000071f4 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    71f4:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

000071f8 <.Loc.411.1>:
        refresh_pdc_timers();
    71f8:	b0 12 4a 70 	call	#28746		;#0x704a

000071fc <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    71fc:	5c 43       	mov.b	#1,	r12	;r3 As==01
    71fe:	b0 12 4c 75 	call	#30028		;#0x754c

00007202 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    7202:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7204:	b0 12 a0 76 	call	#30368		;#0x76a0

00007208 <.Loc.435.1>:
}
    7208:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000720c <.LCFI57>:
    720c:	16 17       	popm	#2,	r7	;16-bit words

0000720e <.LCFI58>:
    720e:	19 17       	popm	#2,	r10	;16-bit words

00007210 <.LCFI59>:
    7210:	30 41       	ret			

00007212 <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    7212:	82 46 10 1c 	mov	r6,	&0x1c10	;
    7216:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000721a <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    721a:	0e 46       	mov	r6,	r14	;
    721c:	0f 47       	mov	r7,	r15	;
    721e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7220:	4c 43       	clr.b	r12		;
    7222:	b0 12 48 74 	call	#29768		;#0x7448

00007226 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    7226:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000722a <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    722a:	4e 49       	mov.b	r9,	r14	;
    722c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    722e:	4c 43       	clr.b	r12		;
    7230:	b0 12 9c 74 	call	#29852		;#0x749c

00007234 <.Loc.430.1>:
        refresh_pdc_timers();
    7234:	b0 12 4a 70 	call	#28746		;#0x704a

00007238 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    7238:	5c 43       	mov.b	#1,	r12	;r3 As==01
    723a:	b0 12 4c 75 	call	#30028		;#0x754c

0000723e <.Loc.434.1>:
    _pers_timer_commit(PDC);
    723e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7240:	b0 12 a0 76 	call	#30368		;#0x76a0

00007244 <.Loc.435.1>:
}
    7244:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007248 <.LCFI61>:
    7248:	16 17       	popm	#2,	r7	;16-bit words

0000724a <.LCFI62>:
    724a:	19 17       	popm	#2,	r10	;16-bit words

0000724c <.LCFI63>:
    724c:	30 41       	ret			

0000724e <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    724e:	0a 15       	pushm	#1,	r10	;16-bit words

00007250 <.LCFI64>:
    7250:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007254 <.LCFI65>:
    7254:	4a 4c       	mov.b	r12,	r10	;

00007256 <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    7256:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7258:	4d 43       	clr.b	r13		;
    725a:	0c 41       	mov	r1,	r12	;

0000725c <.LVL233>:
    725c:	b0 12 e4 76 	call	#30436		;#0x76e4
    7260:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    7264:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7268:	0e 1c 
    726a:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    726e:	10 1c 
    7270:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    7274:	12 1c 
    7276:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    727a:	14 1c 

0000727c <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    727c:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    7280:	07 20       	jnz	$+16     	;abs 0x7290

00007282 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    7282:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007286 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    7286:	4e 43       	clr.b	r14		;
    7288:	5d 43       	mov.b	#1,	r13	;r3 As==01
    728a:	4c 43       	clr.b	r12		;
    728c:	b0 12 e8 74 	call	#29928		;#0x74e8

00007290 <.L216>:
    refresh_pdc_timers();
    7290:	b0 12 4a 70 	call	#28746		;#0x704a

00007294 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    7294:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7296:	b0 12 4c 75 	call	#30028		;#0x754c

0000729a <.Loc.448.1>:
    _pers_timer_commit(XPR);
    729a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    729c:	b0 12 a0 76 	call	#30368		;#0x76a0

000072a0 <.Loc.450.1>:
}
    72a0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000072a4 <.LCFI66>:
    72a4:	0a 17       	popm	#1,	r10	;16-bit words

000072a6 <.LCFI67>:
    72a6:	30 41       	ret			

000072a8 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    72a8:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    72ac:	07 20       	jnz	$+16     	;abs 0x72bc

000072ae <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    72ae:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000072b2 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    72b2:	4e 43       	clr.b	r14		;
    72b4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    72b6:	4c 43       	clr.b	r12		;

000072b8 <.LVL242>:
    72b8:	b0 12 e8 74 	call	#29928		;#0x74e8

000072bc <.L217>:

        }
    }
}
    72bc:	30 41       	ret			

000072be <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    72be:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

000072c2 <.Loc.83.1>:
    72c2:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

000072c6 <.Loc.83.1>:
    72c6:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

000072ca <.Loc.83.1>:
    72ca:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

000072ce <.Loc.83.1>:
    72ce:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

000072d2 <.Loc.83.1>:
    72d2:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

000072d6 <.Loc.83.1>:
    72d6:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

000072da <.Loc.83.1>:
    72da:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

000072de <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    72de:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

000072e2 <.Loc.88.1>:
}
    72e2:	30 41       	ret			

000072e4 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    72e4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000072e8 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    72e8:	0e 4c       	mov	r12,	r14	;
    72ea:	5e 09       	rram	#3,	r14	;

000072ec <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    72ec:	7e f0 07 00 	and.b	#7,	r14	;

000072f0 <.Loc.99.1>:
    72f0:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    72f4:	08 00 

000072f6 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    72f6:	0d 5e       	add	r14,	r13	;

000072f8 <.LVL12>:
    72f8:	7c f0 07 00 	and.b	#7,	r12	;

000072fc <.LVL13>:
    72fc:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    7300:	00 00 

00007302 <.Loc.101.1>:
}
    7302:	30 41       	ret			

00007304 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    7304:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007308 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    7308:	0e 4c       	mov	r12,	r14	;
    730a:	5e 09       	rram	#3,	r14	;

0000730c <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    730c:	7e f0 07 00 	and.b	#7,	r14	;
    7310:	0f 4d       	mov	r13,	r15	;
    7312:	0f 5e       	add	r14,	r15	;

00007314 <.Loc.112.1>:
    7314:	7c f0 07 00 	and.b	#7,	r12	;

00007318 <.LVL16>:
    7318:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    731c:	00 00 

0000731e <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    731e:	6c 4f       	mov.b	@r15,	r12	;

00007320 <.Loc.114.1>:
    7320:	0c 93       	cmp	#0,	r12	;r3 As==00
    7322:	03 20       	jnz	$+8      	;abs 0x732a

00007324 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    7324:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    7328:	08 00 

0000732a <.L4>:
    }
}
    732a:	30 41       	ret			

0000732c <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    732c:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00007330 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    7330:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00007334 <.LVL19>:
    7334:	0c 5d       	add	r13,	r12	;

00007336 <.LVL20>:
    7336:	6e 4c       	mov.b	@r12,	r14	;

00007338 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    7338:	0c 4d       	mov	r13,	r12	;
    733a:	5c 0a       	rlam	#3,	r12	;

0000733c <.Loc.128.1>:
}
    733c:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    7340:	30 41       	ret			

00007342 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    7342:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00007346 <.Loc.158.1>:
    TA2CTL = 0;
    7346:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000734a <.Loc.159.1>:
}
    734a:	30 41       	ret			

0000734c <timerA2_init>:
    734c:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7350:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7354:	30 41       	ret			

00007356 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    7356:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000735a <.Loc.172.1>:
    TA0CCR0 = ticks;
    735a:	82 4c 52 03 	mov	r12,	&0x0352	;

0000735e <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    735e:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    7362:	42 03 

00007364 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7364:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    7368:	40 03 

0000736a <.Loc.175.1>:
}
    736a:	30 41       	ret			

0000736c <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    736c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00007370 <.Loc.179.1>:
    TA2CCR0 = ticks;
    7370:	82 4c 12 04 	mov	r12,	&0x0412	;

00007374 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    7374:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    7378:	02 04 

0000737a <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    737a:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    737e:	00 04 

00007380 <.Loc.183.1>:

}
    7380:	30 41       	ret			

00007382 <stop_timer_xpr>:
    7382:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7386:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    738a:	30 41       	ret			

0000738c <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    738c:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007390 <.Loc.195.1>:
    TA1CCR0 = ticks;
    7390:	82 4c 92 03 	mov	r12,	&0x0392	;

00007394 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    7394:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7398:	82 03 

0000739a <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    739a:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    739e:	80 03 

000073a0 <.Loc.198.1>:
}
    73a0:	30 41       	ret			

000073a2 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    73a2:	30 41       	ret			

000073a4 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    73a4:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    73a8:	61 01 

000073aa <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    73aa:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    73ae:	64 01 

000073b0 <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    73b0:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

000073b4 <.Loc.248.1>:
  CSCTL0_H = 0;
    73b4:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

000073b8 <.Loc.250.1>:

}
    73b8:	30 41       	ret			

000073ba <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    73ba:	4c 43       	clr.b	r12		;
    73bc:	4d 43       	clr.b	r13		;
    73be:	30 41       	ret			

000073c0 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    73c0:	82 43 5c 52 	mov	#0,	&0x525c	;r3 As==00
    73c4:	82 43 5e 52 	mov	#0,	&0x525e	;r3 As==00

000073c8 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    73c8:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

000073cc <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    73cc:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    73d0:	40 04 

000073d2 <.Loc.334.1>:

    __bis_SR_register(GIE);
    73d2:	03 43       	nop			
    73d4:	32 d2       	eint			
    73d6:	03 43       	nop			

000073d8 <.Loc.335.1>:
}
    73d8:	30 41       	ret			

000073da <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    73da:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

000073de <.Loc.343.1>:
    TA3CCTL0 = 0;
    73de:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

000073e2 <.Loc.344.1>:
}
    73e2:	30 41       	ret			

000073e4 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    73e4:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    73e8:	40 04 

000073ea <.Loc.356.1>:

   tmp = TA3R;
    73ea:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

000073ee <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    73ee:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    73f2:	40 04 

000073f4 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    73f4:	0d 43       	clr	r13		;

000073f6 <.LVL6>:
    73f6:	0e 4c       	mov	r12,	r14	;
    73f8:	0f 4d       	mov	r13,	r15	;
    73fa:	0e 5e       	rla	r14		;
    73fc:	0f 6f       	rlc	r15		;
    73fe:	0e 5e       	rla	r14		;
    7400:	0f 6f       	rlc	r15		;
    7402:	0c 5e       	add	r14,	r12	;

00007404 <.LVL7>:
    7404:	0d 6f       	addc	r15,	r13	;
    7406:	0c 5c       	rla	r12		;
    7408:	0d 6d       	rlc	r13		;

0000740a <.Loc.363.1>:
}
    740a:	1c 52 5c 52 	add	&0x525c,r12	;0x525c
    740e:	1d 62 5e 52 	addc	&0x525e,r13	;0x525e
    7412:	30 41       	ret			

00007414 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    7414:	b2 50 aa 00 	add	#170,	&0x525c	;#0x00aa
    7418:	5c 52 
    741a:	b2 60 0a 00 	addc	#10,	&0x525e	;#0x000a
    741e:	5e 52 

00007420 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    7420:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00007424 <.Loc.381.1>:
}
    7424:	00 13       	reti			

00007426 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    7426:	3c 40 60 52 	mov	#21088,	r12	;#0x5260
    742a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000742e <.Loc.34.1>:
    742e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00007432 <.Loc.34.1>:
    7432:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00007436 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    7436:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000743a <.Loc.38.1>:
    743a:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000743e <.Loc.38.1>:
    743e:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00007442 <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    7442:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00007446 <.Loc.42.1>:
    }
}
    7446:	30 41       	ret			

00007448 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    7448:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000744c <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    744c:	1d 93       	cmp	#1,	r13	;r3 As==01
    744e:	1b 24       	jz	$+56     	;abs 0x7486
    7450:	2d 93       	cmp	#2,	r13	;r3 As==10
    7452:	0e 24       	jz	$+30     	;abs 0x7470
    7454:	0d 93       	cmp	#0,	r13	;r3 As==00
    7456:	01 24       	jz	$+4      	;abs 0x745a

00007458 <.Loc.69.1>:
        default:
            break;
    }


}
    7458:	30 41       	ret			

0000745a <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    745a:	0d 4c       	mov	r12,	r13	;

0000745c <.LVL9>:
    745c:	5d 06       	rlam	#2,	r13	;
    745e:	0c 5d       	add	r13,	r12	;

00007460 <.LVL10>:
    7460:	5c 02       	rlam	#1,	r12	;
    7462:	8c 4e c8 52 	mov	r14,	21192(r12); 0x52c8
    7466:	8c 4f ca 52 	mov	r15,	21194(r12); 0x52ca

0000746a <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    746a:	9c 43 cc 52 	mov	#1,	21196(r12);r3 As==01, 0x52cc

0000746e <.Loc.55.1>:
}
    746e:	30 41       	ret			

00007470 <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    7470:	0d 4c       	mov	r12,	r13	;

00007472 <.LVL12>:
    7472:	5d 06       	rlam	#2,	r13	;
    7474:	0c 5d       	add	r13,	r12	;
    7476:	5c 02       	rlam	#1,	r12	;
    7478:	8c 4e e6 52 	mov	r14,	21222(r12); 0x52e6
    747c:	8c 4f e8 52 	mov	r15,	21224(r12); 0x52e8

00007480 <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7480:	9c 43 ea 52 	mov	#1,	21226(r12);r3 As==01, 0x52ea

00007484 <.Loc.59.1>:
}
    7484:	30 41       	ret			

00007486 <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    7486:	0d 4c       	mov	r12,	r13	;

00007488 <.LVL14>:
    7488:	5d 06       	rlam	#2,	r13	;
    748a:	0c 5d       	add	r13,	r12	;
    748c:	5c 02       	rlam	#1,	r12	;
    748e:	8c 4e 04 53 	mov	r14,	21252(r12); 0x5304
    7492:	8c 4f 06 53 	mov	r15,	21254(r12); 0x5306

00007496 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7496:	9c 43 08 53 	mov	#1,	21256(r12);r3 As==01, 0x5308

0000749a <.Loc.63.1>:
}
    749a:	30 41       	ret			

0000749c <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    749c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    74a0:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

000074a4 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    74a4:	1d 93       	cmp	#1,	r13	;r3 As==01
    74a6:	17 24       	jz	$+48     	;abs 0x74d6
    74a8:	2d 93       	cmp	#2,	r13	;r3 As==10
    74aa:	0c 24       	jz	$+26     	;abs 0x74c4
    74ac:	0d 93       	cmp	#0,	r13	;r3 As==00
    74ae:	01 24       	jz	$+4      	;abs 0x74b2

000074b0 <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    74b0:	30 41       	ret			

000074b2 <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    74b2:	0d 4c       	mov	r12,	r13	;

000074b4 <.LVL16>:
    74b4:	5d 06       	rlam	#2,	r13	;
    74b6:	0c 5d       	add	r13,	r12	;

000074b8 <.LVL17>:
    74b8:	5c 02       	rlam	#1,	r12	;
    74ba:	cc 4e c6 52 	mov.b	r14,	21190(r12); 0x52c6

000074be <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    74be:	9c 43 cc 52 	mov	#1,	21196(r12);r3 As==01, 0x52cc

000074c2 <.Loc.78.1>:
}
    74c2:	30 41       	ret			

000074c4 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    74c4:	0d 4c       	mov	r12,	r13	;

000074c6 <.LVL19>:
    74c6:	5d 06       	rlam	#2,	r13	;
    74c8:	0c 5d       	add	r13,	r12	;
    74ca:	5c 02       	rlam	#1,	r12	;
    74cc:	cc 4e e4 52 	mov.b	r14,	21220(r12); 0x52e4

000074d0 <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    74d0:	9c 43 ea 52 	mov	#1,	21226(r12);r3 As==01, 0x52ea

000074d4 <.Loc.82.1>:
}
    74d4:	30 41       	ret			

000074d6 <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    74d6:	0d 4c       	mov	r12,	r13	;

000074d8 <.LVL21>:
    74d8:	5d 06       	rlam	#2,	r13	;
    74da:	0c 5d       	add	r13,	r12	;
    74dc:	5c 02       	rlam	#1,	r12	;
    74de:	cc 4e 02 53 	mov.b	r14,	21250(r12); 0x5302

000074e2 <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    74e2:	9c 43 08 53 	mov	#1,	21256(r12);r3 As==01, 0x5308

000074e6 <.Loc.86.1>:
}
    74e6:	30 41       	ret			

000074e8 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    74e8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000074ec <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    74ec:	1d 93       	cmp	#1,	r13	;r3 As==01
    74ee:	17 24       	jz	$+48     	;abs 0x751e
    74f0:	2d 93       	cmp	#2,	r13	;r3 As==10
    74f2:	0c 24       	jz	$+26     	;abs 0x750c
    74f4:	0d 93       	cmp	#0,	r13	;r3 As==00
    74f6:	01 24       	jz	$+4      	;abs 0x74fa

000074f8 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    74f8:	30 41       	ret			

000074fa <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    74fa:	0d 4c       	mov	r12,	r13	;

000074fc <.LVL23>:
    74fc:	5d 06       	rlam	#2,	r13	;
    74fe:	0c 5d       	add	r13,	r12	;

00007500 <.LVL24>:
    7500:	5c 02       	rlam	#1,	r12	;
    7502:	8c 4e c4 52 	mov	r14,	21188(r12); 0x52c4

00007506 <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7506:	9c 43 cc 52 	mov	#1,	21196(r12);r3 As==01, 0x52cc

0000750a <.Loc.100.1>:
}
    750a:	30 41       	ret			

0000750c <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    750c:	0d 4c       	mov	r12,	r13	;

0000750e <.LVL26>:
    750e:	5d 06       	rlam	#2,	r13	;
    7510:	0c 5d       	add	r13,	r12	;
    7512:	5c 02       	rlam	#1,	r12	;
    7514:	8c 4e e2 52 	mov	r14,	21218(r12); 0x52e2

00007518 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7518:	9c 43 ea 52 	mov	#1,	21226(r12);r3 As==01, 0x52ea

0000751c <.Loc.104.1>:
}
    751c:	30 41       	ret			

0000751e <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    751e:	0d 4c       	mov	r12,	r13	;

00007520 <.LVL28>:
    7520:	5d 06       	rlam	#2,	r13	;
    7522:	0c 5d       	add	r13,	r12	;
    7524:	5c 02       	rlam	#1,	r12	;
    7526:	8c 4e 00 53 	mov	r14,	21248(r12); 0x5300

0000752a <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    752a:	9c 43 08 53 	mov	#1,	21256(r12);r3 As==01, 0x5308

0000752e <.Loc.108.1>:
}
    752e:	30 41       	ret			

00007530 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    7530:	0e 4c       	mov	r12,	r14	;
    7532:	5e 0a       	rlam	#3,	r14	;
    7534:	ce 4d 0c 53 	mov.b	r13,	21260(r14); 0x530c

00007538 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7538:	9e 43 10 53 	mov	#1,	21264(r14);r3 As==01, 0x5310

0000753c <.Loc.119.1>:
}
    753c:	30 41       	ret			

0000753e <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    753e:	0e 4c       	mov	r12,	r14	;
    7540:	5e 0a       	rlam	#3,	r14	;
    7542:	8e 4d 0e 53 	mov	r13,	21262(r14); 0x530e

00007546 <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7546:	9e 43 10 53 	mov	#1,	21264(r14);r3 As==01, 0x5310

0000754a <.Loc.125.1>:
}
    754a:	30 41       	ret			

0000754c <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    754c:	1c 93       	cmp	#1,	r12	;r3 As==01
    754e:	0b 24       	jz	$+24     	;abs 0x7566
    7550:	2c 93       	cmp	#2,	r12	;r3 As==10
    7552:	06 24       	jz	$+14     	;abs 0x7560
    7554:	0c 93       	cmp	#0,	r12	;r3 As==00
    7556:	01 24       	jz	$+4      	;abs 0x755a

00007558 <.Loc.145.1>:
        default:
            break;

    }

}
    7558:	30 41       	ret			

0000755a <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    755a:	92 43 28 53 	mov	#1,	&0x5328	;r3 As==01

0000755e <.Loc.133.1>:
}
    755e:	30 41       	ret			

00007560 <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    7560:	92 43 2a 53 	mov	#1,	&0x532a	;r3 As==01

00007564 <.Loc.136.1>:
}
    7564:	30 41       	ret			

00007566 <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    7566:	92 43 2c 53 	mov	#1,	&0x532c	;r3 As==01

0000756a <.Loc.139.1>:
}
    756a:	30 41       	ret			

0000756c <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    756c:	3d 40 60 52 	mov	#21088,	r13	;#0x5260
    7570:	1c 93       	cmp	#1,	r12	;r3 As==01
    7572:	18 24       	jz	$+50     	;abs 0x75a4
    7574:	2c 93       	cmp	#2,	r12	;r3 As==10
    7576:	40 24       	jz	$+130    	;abs 0x75f8
    7578:	0c 93       	cmp	#0,	r12	;r3 As==00
    757a:	26 24       	jz	$+78     	;abs 0x75c8

0000757c <.L28>:
    757c:	0e 4c       	mov	r12,	r14	;
    757e:	5e 0a       	rlam	#3,	r14	;
    7580:	9e 93 10 53 	cmp	#1,	21264(r14);r3 As==01, 0x5310
    7584:	01 24       	jz	$+4      	;abs 0x7588

00007586 <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    7586:	30 41       	ret			

00007588 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    7588:	0c 4e       	mov	r14,	r12	;

0000758a <.LVL33>:
    758a:	0c 5d       	add	r13,	r12	;
    758c:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    7590:	46 00 
    7592:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    7596:	48 00 
    7598:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    759c:	4a 00 

0000759e <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    759e:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

000075a2 <.Loc.191.1>:
}
    75a2:	30 41       	ret			

000075a4 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    75a4:	92 93 08 53 	cmp	#1,	&0x5308	;r3 As==01
    75a8:	e9 23       	jnz	$-44     	;abs 0x757c

000075aa <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    75aa:	92 42 00 53 	mov	&0x5300,&0x529c	;0x5300
    75ae:	9c 52 
    75b0:	92 42 02 53 	mov	&0x5302,&0x529e	;0x5302
    75b4:	9e 52 
    75b6:	92 42 04 53 	mov	&0x5304,&0x52a0	;0x5304
    75ba:	a0 52 
    75bc:	92 42 06 53 	mov	&0x5306,&0x52a2	;0x5306
    75c0:	a2 52 

000075c2 <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    75c2:	82 43 a4 52 	mov	#0,	&0x52a4	;r3 As==00

000075c6 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    75c6:	da 3f       	jmp	$-74     	;abs 0x757c

000075c8 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    75c8:	92 93 cc 52 	cmp	#1,	&0x52cc	;r3 As==01
    75cc:	5a 24       	jz	$+182    	;abs 0x7682

000075ce <.L29>:
    75ce:	92 93 d6 52 	cmp	#1,	&0x52d6	;r3 As==01
    75d2:	48 24       	jz	$+146    	;abs 0x7664

000075d4 <.L30>:
    75d4:	92 93 e0 52 	cmp	#1,	&0x52e0	;r3 As==01
    75d8:	d1 23       	jnz	$-92     	;abs 0x757c

000075da <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    75da:	92 42 d8 52 	mov	&0x52d8,&0x5274	;0x52d8
    75de:	74 52 
    75e0:	92 42 da 52 	mov	&0x52da,&0x5276	;0x52da
    75e4:	76 52 
    75e6:	92 42 dc 52 	mov	&0x52dc,&0x5278	;0x52dc
    75ea:	78 52 
    75ec:	92 42 de 52 	mov	&0x52de,&0x527a	;0x52de
    75f0:	7a 52 

000075f2 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    75f2:	82 43 7c 52 	mov	#0,	&0x527c	;r3 As==00

000075f6 <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    75f6:	c2 3f       	jmp	$-122    	;abs 0x757c

000075f8 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    75f8:	92 93 ea 52 	cmp	#1,	&0x52ea	;r3 As==01
    75fc:	24 24       	jz	$+74     	;abs 0x7646

000075fe <.L32>:
    75fe:	92 93 f4 52 	cmp	#1,	&0x52f4	;r3 As==01
    7602:	12 24       	jz	$+38     	;abs 0x7628

00007604 <.L33>:
    7604:	92 93 fe 52 	cmp	#1,	&0x52fe	;r3 As==01
    7608:	b9 23       	jnz	$-140    	;abs 0x757c

0000760a <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    760a:	92 42 f6 52 	mov	&0x52f6,&0x5292	;0x52f6
    760e:	92 52 
    7610:	92 42 f8 52 	mov	&0x52f8,&0x5294	;0x52f8
    7614:	94 52 
    7616:	92 42 fa 52 	mov	&0x52fa,&0x5296	;0x52fa
    761a:	96 52 
    761c:	92 42 fc 52 	mov	&0x52fc,&0x5298	;0x52fc
    7620:	98 52 

00007622 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7622:	82 43 9a 52 	mov	#0,	&0x529a	;r3 As==00

00007626 <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    7626:	aa 3f       	jmp	$-170    	;abs 0x757c

00007628 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7628:	92 42 ec 52 	mov	&0x52ec,&0x5288	;0x52ec
    762c:	88 52 
    762e:	92 42 ee 52 	mov	&0x52ee,&0x528a	;0x52ee
    7632:	8a 52 
    7634:	92 42 f0 52 	mov	&0x52f0,&0x528c	;0x52f0
    7638:	8c 52 
    763a:	92 42 f2 52 	mov	&0x52f2,&0x528e	;0x52f2
    763e:	8e 52 

00007640 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7640:	82 43 90 52 	mov	#0,	&0x5290	;r3 As==00
    7644:	df 3f       	jmp	$-64     	;abs 0x7604

00007646 <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7646:	92 42 e2 52 	mov	&0x52e2,&0x527e	;0x52e2
    764a:	7e 52 
    764c:	92 42 e4 52 	mov	&0x52e4,&0x5280	;0x52e4
    7650:	80 52 
    7652:	92 42 e6 52 	mov	&0x52e6,&0x5282	;0x52e6
    7656:	82 52 
    7658:	92 42 e8 52 	mov	&0x52e8,&0x5284	;0x52e8
    765c:	84 52 

0000765e <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    765e:	82 43 86 52 	mov	#0,	&0x5286	;r3 As==00
    7662:	cd 3f       	jmp	$-100    	;abs 0x75fe

00007664 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7664:	92 42 ce 52 	mov	&0x52ce,&0x526a	;0x52ce
    7668:	6a 52 
    766a:	92 42 d0 52 	mov	&0x52d0,&0x526c	;0x52d0
    766e:	6c 52 
    7670:	92 42 d2 52 	mov	&0x52d2,&0x526e	;0x52d2
    7674:	6e 52 
    7676:	92 42 d4 52 	mov	&0x52d4,&0x5270	;0x52d4
    767a:	70 52 

0000767c <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    767c:	82 43 72 52 	mov	#0,	&0x5272	;r3 As==00
    7680:	a9 3f       	jmp	$-172    	;abs 0x75d4

00007682 <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7682:	92 42 c4 52 	mov	&0x52c4,&0x5260	;0x52c4
    7686:	60 52 
    7688:	92 42 c6 52 	mov	&0x52c6,&0x5262	;0x52c6
    768c:	62 52 
    768e:	92 42 c8 52 	mov	&0x52c8,&0x5264	;0x52c8
    7692:	64 52 
    7694:	92 42 ca 52 	mov	&0x52ca,&0x5266	;0x52ca
    7698:	66 52 

0000769a <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    769a:	82 43 68 52 	mov	#0,	&0x5268	;r3 As==00
    769e:	97 3f       	jmp	$-208    	;abs 0x75ce

000076a0 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    76a0:	1c 93       	cmp	#1,	r12	;r3 As==01
    76a2:	17 24       	jz	$+48     	;abs 0x76d2
    76a4:	2c 93       	cmp	#2,	r12	;r3 As==10
    76a6:	0c 24       	jz	$+26     	;abs 0x76c0
    76a8:	0c 93       	cmp	#0,	r12	;r3 As==00
    76aa:	01 24       	jz	$+4      	;abs 0x76ae

000076ac <.L45>:
            break;
        default:
            break;

    }
}
    76ac:	30 41       	ret			

000076ae <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    76ae:	1d 42 28 53 	mov	&0x5328,r13	;0x5328

000076b2 <.Loc.207.1>:
    76b2:	1d 93       	cmp	#1,	r13	;r3 As==01
    76b4:	fb 23       	jnz	$-8      	;abs 0x76ac

000076b6 <.Loc.209.1>:
                _commit_timer_buffers(interface);
    76b6:	b0 12 6c 75 	call	#30060		;#0x756c

000076ba <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    76ba:	a2 43 28 53 	mov	#2,	&0x5328	;r3 As==10

000076be <.Loc.230.1>:
}
    76be:	30 41       	ret			

000076c0 <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    76c0:	1d 42 2a 53 	mov	&0x532a,r13	;0x532a

000076c4 <.Loc.214.1>:
    76c4:	1d 93       	cmp	#1,	r13	;r3 As==01
    76c6:	f2 23       	jnz	$-26     	;abs 0x76ac

000076c8 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    76c8:	b0 12 6c 75 	call	#30060		;#0x756c

000076cc <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    76cc:	a2 43 2a 53 	mov	#2,	&0x532a	;r3 As==10

000076d0 <.Loc.230.1>:
}
    76d0:	30 41       	ret			

000076d2 <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    76d2:	1d 42 2c 53 	mov	&0x532c,r13	;0x532c

000076d6 <.Loc.220.1>:
    76d6:	1d 93       	cmp	#1,	r13	;r3 As==01
    76d8:	e9 23       	jnz	$-44     	;abs 0x76ac

000076da <.Loc.222.1>:
                _commit_timer_buffers(interface);
    76da:	b0 12 6c 75 	call	#30060		;#0x756c

000076de <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    76de:	a2 43 2c 53 	mov	#2,	&0x532c	;r3 As==10

000076e2 <.Loc.230.1>:
}
    76e2:	30 41       	ret			

000076e4 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    76e4:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

000076e8 <.Loc.233.1>:
    switch (interface)
    76e8:	1e 93       	cmp	#1,	r14	;r3 As==01
    76ea:	17 24       	jz	$+48     	;abs 0x771a
    76ec:	2e 93       	cmp	#2,	r14	;r3 As==10
    76ee:	2a 24       	jz	$+86     	;abs 0x7744

000076f0 <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    76f0:	0e 4d       	mov	r13,	r14	;

000076f2 <.LVL55>:
    76f2:	5e 06       	rlam	#2,	r14	;
    76f4:	0d 5e       	add	r14,	r13	;

000076f6 <.LVL56>:
    76f6:	5d 02       	rlam	#1,	r13	;
    76f8:	3d 50 60 52 	add	#21088,	r13	;#0x5260
    76fc:	0e 4d       	mov	r13,	r14	;
    76fe:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7702:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7706:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    770a:	04 00 
    770c:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7710:	06 00 
    7712:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7716:	08 00 

00007718 <.Loc.245.1>:
    }

}
    7718:	30 41       	ret			

0000771a <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    771a:	0e 4d       	mov	r13,	r14	;

0000771c <.LVL58>:
    771c:	5e 06       	rlam	#2,	r14	;
    771e:	0d 5e       	add	r14,	r13	;
    7720:	5d 02       	rlam	#1,	r13	;
    7722:	3d 50 9c 52 	add	#21148,	r13	;#0x529c

00007726 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    7726:	0e 4d       	mov	r13,	r14	;
    7728:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    772c:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7730:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7734:	04 00 
    7736:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    773a:	06 00 
    773c:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7740:	08 00 

00007742 <.Loc.245.1>:
}
    7742:	30 41       	ret			

00007744 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    7744:	0e 4d       	mov	r13,	r14	;

00007746 <.LVL60>:
    7746:	5e 06       	rlam	#2,	r14	;
    7748:	0d 5e       	add	r14,	r13	;
    774a:	5d 02       	rlam	#1,	r13	;
    774c:	3d 50 7e 52 	add	#21118,	r13	;#0x527e

00007750 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    7750:	0e 4d       	mov	r13,	r14	;
    7752:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7756:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    775a:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    775e:	04 00 
    7760:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7764:	06 00 
    7766:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    776a:	08 00 

0000776c <.Loc.245.1>:
}
    776c:	30 41       	ret			

0000776e <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    776e:	4e 4c       	mov.b	r12,	r14	;

00007770 <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    7770:	1d 93       	cmp	#1,	r13	;r3 As==01
    7772:	14 24       	jz	$+42     	;abs 0x779c
    7774:	2d 93       	cmp	#2,	r13	;r3 As==10
    7776:	0b 24       	jz	$+24     	;abs 0x778e
    7778:	4c 43       	clr.b	r12		;

0000777a <.LVL62>:
    777a:	0d 93       	cmp	#0,	r13	;r3 As==00
    777c:	01 24       	jz	$+4      	;abs 0x7780

0000777e <.Loc.262.1>:
        default:
            return 0;

    }

}
    777e:	30 41       	ret			

00007780 <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    7780:	0c 4e       	mov	r14,	r12	;
    7782:	5c 06       	rlam	#2,	r12	;
    7784:	0c 5e       	add	r14,	r12	;
    7786:	5c 02       	rlam	#1,	r12	;
    7788:	1c 4c 64 52 	mov	21092(r12),r12	;0x05264

0000778c <.Loc.262.1>:
}
    778c:	30 41       	ret			

0000778e <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    778e:	0c 4e       	mov	r14,	r12	;

00007790 <.LVL64>:
    7790:	5c 06       	rlam	#2,	r12	;
    7792:	0c 5e       	add	r14,	r12	;
    7794:	5c 02       	rlam	#1,	r12	;
    7796:	1c 4c 82 52 	mov	21122(r12),r12	;0x05282

0000779a <.Loc.262.1>:
}
    779a:	30 41       	ret			

0000779c <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    779c:	0c 4e       	mov	r14,	r12	;

0000779e <.LVL66>:
    779e:	5c 06       	rlam	#2,	r12	;
    77a0:	0c 5e       	add	r14,	r12	;
    77a2:	5c 02       	rlam	#1,	r12	;
    77a4:	1c 4c a0 52 	mov	21152(r12),r12	;0x052a0

000077a8 <.Loc.262.1>:
}
    77a8:	30 41       	ret			

000077aa <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    77aa:	4e 4c       	mov.b	r12,	r14	;

000077ac <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    77ac:	1d 93       	cmp	#1,	r13	;r3 As==01
    77ae:	14 24       	jz	$+42     	;abs 0x77d8
    77b0:	2d 93       	cmp	#2,	r13	;r3 As==10
    77b2:	0b 24       	jz	$+24     	;abs 0x77ca
    77b4:	4c 43       	clr.b	r12		;

000077b6 <.LVL68>:
    77b6:	0d 93       	cmp	#0,	r13	;r3 As==00
    77b8:	01 24       	jz	$+4      	;abs 0x77bc

000077ba <.Loc.279.1>:
        default:
            return    0;
    }


}
    77ba:	30 41       	ret			

000077bc <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    77bc:	0c 4e       	mov	r14,	r12	;
    77be:	5c 06       	rlam	#2,	r12	;
    77c0:	0c 5e       	add	r14,	r12	;
    77c2:	5c 02       	rlam	#1,	r12	;
    77c4:	5c 4c 62 52 	mov.b	21090(r12),r12	;0x05262

000077c8 <.Loc.279.1>:
}
    77c8:	30 41       	ret			

000077ca <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    77ca:	0c 4e       	mov	r14,	r12	;

000077cc <.LVL70>:
    77cc:	5c 06       	rlam	#2,	r12	;
    77ce:	0c 5e       	add	r14,	r12	;
    77d0:	5c 02       	rlam	#1,	r12	;
    77d2:	5c 4c 80 52 	mov.b	21120(r12),r12	;0x05280

000077d6 <.Loc.279.1>:
}
    77d6:	30 41       	ret			

000077d8 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    77d8:	0c 4e       	mov	r14,	r12	;

000077da <.LVL72>:
    77da:	5c 06       	rlam	#2,	r12	;
    77dc:	0c 5e       	add	r14,	r12	;
    77de:	5c 02       	rlam	#1,	r12	;
    77e0:	5c 4c 9e 52 	mov.b	21150(r12),r12	;0x0529e

000077e4 <.Loc.279.1>:
}
    77e4:	30 41       	ret			

000077e6 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    77e6:	4e 4c       	mov.b	r12,	r14	;

000077e8 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    77e8:	1d 93       	cmp	#1,	r13	;r3 As==01
    77ea:	14 24       	jz	$+42     	;abs 0x7814
    77ec:	2d 93       	cmp	#2,	r13	;r3 As==10
    77ee:	0b 24       	jz	$+24     	;abs 0x7806
    77f0:	5c 43       	mov.b	#1,	r12	;r3 As==01

000077f2 <.LVL74>:
    77f2:	0d 93       	cmp	#0,	r13	;r3 As==00
    77f4:	01 24       	jz	$+4      	;abs 0x77f8

000077f6 <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    77f6:	30 41       	ret			

000077f8 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    77f8:	0c 4e       	mov	r14,	r12	;
    77fa:	5c 06       	rlam	#2,	r12	;
    77fc:	0c 5e       	add	r14,	r12	;
    77fe:	5c 02       	rlam	#1,	r12	;
    7800:	1c 4c 60 52 	mov	21088(r12),r12	;0x05260

00007804 <.Loc.294.1>:
}
    7804:	30 41       	ret			

00007806 <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    7806:	0c 4e       	mov	r14,	r12	;

00007808 <.LVL76>:
    7808:	5c 06       	rlam	#2,	r12	;
    780a:	0c 5e       	add	r14,	r12	;
    780c:	5c 02       	rlam	#1,	r12	;
    780e:	1c 4c 7e 52 	mov	21118(r12),r12	;0x0527e

00007812 <.Loc.294.1>:
}
    7812:	30 41       	ret			

00007814 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    7814:	0c 4e       	mov	r14,	r12	;

00007816 <.LVL78>:
    7816:	5c 06       	rlam	#2,	r12	;
    7818:	0c 5e       	add	r14,	r12	;
    781a:	5c 02       	rlam	#1,	r12	;
    781c:	1c 4c 9c 52 	mov	21148(r12),r12	;0x0529c

00007820 <.Loc.294.1>:
}
    7820:	30 41       	ret			

00007822 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    7822:	5c 0a       	rlam	#3,	r12	;

00007824 <.LVL80>:
}
    7824:	5c 4c a8 52 	mov.b	21160(r12),r12	;0x052a8
    7828:	30 41       	ret			

0000782a <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    782a:	5c 0a       	rlam	#3,	r12	;

0000782c <.LVL82>:
}
    782c:	1c 4c aa 52 	mov	21162(r12),r12	;0x052aa
    7830:	30 41       	ret			

00007832 <__mulhi2>:
    7832:	02 12       	push	r2		;
    7834:	32 c2       	dint			
    7836:	03 43       	nop			
    7838:	82 4c c0 04 	mov	r12,	&0x04c0	;
    783c:	82 4d c8 04 	mov	r13,	&0x04c8	;

00007840 <L0^A>:
    7840:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    7844:	00 13       	reti			

00007846 <_exit>:
    7846:	ff 3f       	jmp	$+0      	;abs 0x7846

00007848 <memset>:
    7848:	0e 5c       	add	r12,	r14	;

0000784a <L0^A>:
    784a:	0f 4c       	mov	r12,	r15	;

0000784c <.L2>:
    784c:	0f 9e       	cmp	r14,	r15	;
    784e:	01 20       	jnz	$+4      	;abs 0x7852

00007850 <.Loc.104.1>:
    7850:	30 41       	ret			

00007852 <.L3>:
    7852:	1f 53       	inc	r15		;

00007854 <.LVL4>:
    7854:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7858:	f9 3f       	jmp	$-12     	;abs 0x784c
