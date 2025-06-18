
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
    536a:	3e 40 5e 00 	mov	#94,	r14	;#0x005e

0000536e <.Loc.81.1>:
    536e:	b0 12 c0 77 	call	#30656		;#0x77c0

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
    5386:	b0 12 be 77 	call	#30654		;#0x77be

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
#include "benchmark_helpers.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    5398:	
0000539a <L0^A>:
    539a:	80 5a 5c 01 	add	r10,	0x015c	; PC rel. 0x54f8

0000539e <.Loc.10.1>:
    PM5CTL0 &= ~LOCKLPM5;     // Disable the GPIO power-on default high-impedance mode
    539e:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

000053a2 <.Loc.13.1>:

#ifdef RAISE_PIN
    __port_init(3, 4); // Initialize the pin so we can read the timing.
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
    53b4:	b0 12 dc 61 	call	#25052		;#0x61dc

000053b8 <.Loc.18.1>:
}
    53b8:	4c 43       	clr.b	r12		;
    53ba:	30 41       	ret			

000053bc <__ink_entry_task_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
{
    // One-time initialization on first boot, not required.

    return t_init;
}
    53bc:	3c 40 c2 53 	mov	#21442,	r12	;#0x53c2

000053c0 <.LVL1>:
    53c0:	30 41       	ret			

000053c2 <t_init>:

void *__attribute__((annotate("INK::TASK15"))) t_init()
{
#ifdef RAISE_PIN
    full_run_started = 1;
    53c2:	d2 43 3c 46 	mov.b	#1,	&0x463c	;r3 As==01

000053c6 <.Loc.133.1>:
#endif

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    53c6:	b0 12 ee 5b 	call	#23534		;#0x5bee
    53ca:	0e 4c       	mov	r12,	r14	;

000053cc <.Loc.134.1>:
__INK_GET_VAR_FROM_BUF(pinCont) = 1;
    53cc:	0d 4c       	mov	r12,	r13	;
    53ce:	5d 02       	rlam	#1,	r13	;
    53d0:	0c 4d       	mov	r13,	r12	;
    53d2:	0c 5e       	add	r14,	r12	;
    53d4:	0d 4c       	mov	r12,	r13	;
    53d6:	5d 06       	rlam	#2,	r13	;
    53d8:	0c 4d       	mov	r13,	r12	;
    53da:	0c 8e       	sub	r14,	r12	;
    53dc:	5c 02       	rlam	#1,	r12	;

000053de <.Loc.134.1>:
    53de:	1d 4c 10 45 	mov	17680(r12),r13	;0x04510
    53e2:	dd 43 00 00 	mov.b	#1,	0(r13)	;r3 As==01

000053e6 <.Loc.135.1>:
    __INK_GET_VAR_FROM_BUF(function) = 0;
    53e6:	1d 4c 20 45 	mov	17696(r12),r13	;0x04520
    53ea:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000053ee <.Loc.136.1>:
    __INK_GET_VAR_FROM_BUF(n_0) = 0;
    53ee:	1d 4c 12 45 	mov	17682(r12),r13	;0x04512
    53f2:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000053f6 <.Loc.137.1>:
    __INK_GET_VAR_FROM_BUF(n_1) = 0;
    53f6:	1d 4c 14 45 	mov	17684(r12),r13	;0x04514
    53fa:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000053fe <.Loc.138.1>:
    __INK_GET_VAR_FROM_BUF(n_2) = 0;
    53fe:	1d 4c 16 45 	mov	17686(r12),r13	;0x04516
    5402:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005406 <.Loc.139.1>:
    __INK_GET_VAR_FROM_BUF(n_3) = 0;
    5406:	1d 4c 18 45 	mov	17688(r12),r13	;0x04518
    540a:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000540e <.Loc.140.1>:
    __INK_GET_VAR_FROM_BUF(n_4) = 0;
    540e:	1d 4c 1a 45 	mov	17690(r12),r13	;0x0451a
    5412:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005416 <.Loc.141.1>:
    __INK_GET_VAR_FROM_BUF(n_5) = 0;
    5416:	1d 4c 1c 45 	mov	17692(r12),r13	;0x0451c

0000541a <.Loc.134.1>:
__INK_GET_VAR_FROM_BUF(pinCont) = 1;
    541a:	3c 50 10 45 	add	#17680,	r12	;#0x4510

0000541e <.Loc.141.1>:
    __INK_GET_VAR_FROM_BUF(n_5) = 0;
    541e:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005422 <.Loc.142.1>:
    __INK_GET_VAR_FROM_BUF(n_6) = 0;
    5422:	1c 4c 0e 00 	mov	14(r12),r12	;0x0000e
    5426:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000542a <.Loc.145.1>:

    // next task is t_select_func
    return t_select_func;
}
    542a:	3c 40 30 54 	mov	#21552,	r12	;#0x5430
    542e:	30 41       	ret			

00005430 <t_select_func>:
void *__attribute__((annotate("INK::TASK15"))) t_select_func()
{
#ifdef RANDOM
    seed = rand();
#else
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5430:	b0 12 ee 5b 	call	#23534		;#0x5bee
    5434:	0e 4c       	mov	r12,	r14	;

00005436 <.Loc.154.1>:
__INK_GET_VAR_FROM_BUF(seed) = SEED;
    5436:	0d 4c       	mov	r12,	r13	;
    5438:	5d 02       	rlam	#1,	r13	;
    543a:	0c 4d       	mov	r13,	r12	;
    543c:	0c 5e       	add	r14,	r12	;
    543e:	0d 4c       	mov	r12,	r13	;
    5440:	5d 06       	rlam	#2,	r13	;
    5442:	0c 4d       	mov	r13,	r12	;
    5444:	0c 8e       	sub	r14,	r12	;
    5446:	5c 02       	rlam	#1,	r12	;

00005448 <.Loc.154.1>:
    5448:	1d 4c 24 45 	mov	17700(r12),r13	;0x04524
    544c:	ad 42 00 00 	mov	#4,	0(r13)	;r2 As==10
    5450:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005454 <.Loc.157.1>:
#endif

    __INK_GET_VAR_FROM_BUF(iteration) = 0;
    5454:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522
    5458:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000545c <.Loc.159.1>:

    if (__INK_GET_VAR_FROM_BUF(function) == 0)
    545c:	1d 4c 20 45 	mov	17696(r12),r13	;0x04520
    5460:	2c 4d       	mov	@r13,	r12	;

00005462 <.Loc.159.1>:
    5462:	0c 93       	cmp	#0,	r12	;r3 As==00
    5464:	15 24       	jz	$+44     	;abs 0x5490

00005466 <.Loc.164.1>:
    {
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_bit_count;
    }
    else if (__INK_GET_VAR_FROM_BUF(function) == 1)
    5466:	1c 93       	cmp	#1,	r12	;r3 As==01
    5468:	24 24       	jz	$+74     	;abs 0x54b2

0000546a <.Loc.169.1>:
    {
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_bitcount;
    }
    else if (__INK_GET_VAR_FROM_BUF(function) == 2)
    546a:	2c 93       	cmp	#2,	r12	;r3 As==10
    546c:	16 24       	jz	$+46     	;abs 0x549a

0000546e <.Loc.174.1>:
    {
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_ntbl_bitcnt;
    }
    else if (__INK_GET_VAR_FROM_BUF(function) == 3)
    546e:	3c 90 03 00 	cmp	#3,	r12	;
    5472:	24 24       	jz	$+74     	;abs 0x54bc

00005474 <.Loc.179.1>:
    {
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_ntbl_bitcount;
    }
    else if (__INK_GET_VAR_FROM_BUF(function) == 4)
    5474:	2c 92       	cmp	#4,	r12	;r2 As==10
    5476:	27 24       	jz	$+80     	;abs 0x54c6

00005478 <.Loc.184.1>:
    {
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_BW_btbl_bitcount;
    }
    else if (__INK_GET_VAR_FROM_BUF(function) == 5)
    5478:	3c 90 05 00 	cmp	#5,	r12	;
    547c:	2a 24       	jz	$+86     	;abs 0x54d2

0000547e <.Loc.189.1>:
    {
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_AR_btbl_bitcount;
    }
    else if (__INK_GET_VAR_FROM_BUF(function) == 6)
    547e:	3c 90 06 00 	cmp	#6,	r12	;
    5482:	11 24       	jz	$+36     	;abs 0x54a6

00005484 <.Loc.196.1>:
        ++__INK_GET_VAR_FROM_BUF(function);
        return t_bit_shifter;
    }
    else
    {
        ++__INK_GET_VAR_FROM_BUF(function);
    5484:	1c 53       	inc	r12		;
    5486:	8d 4c 00 00 	mov	r12,	0(r13)	;

0000548a <.Loc.197.1>:
        return t_end;
    548a:	3c 40 06 5a 	mov	#23046,	r12	;#0x5a06

0000548e <.Loc.199.1>:
    }
}
    548e:	30 41       	ret			

00005490 <.L13>:
        ++__INK_GET_VAR_FROM_BUF(function);
    5490:	9d 43 00 00 	mov	#1,	0(r13)	;r3 As==01

00005494 <.Loc.162.1>:
        return t_bit_count;
    5494:	3c 40 de 54 	mov	#21726,	r12	;#0x54de

00005498 <.Loc.199.1>:
}
    5498:	30 41       	ret			

0000549a <.L15>:
        ++__INK_GET_VAR_FROM_BUF(function);
    549a:	bd 40 03 00 	mov	#3,	0(r13)	;
    549e:	00 00 

000054a0 <.Loc.172.1>:
        return t_ntbl_bitcnt;
    54a0:	3c 40 bc 58 	mov	#22716,	r12	;#0x58bc

000054a4 <.Loc.199.1>:
}
    54a4:	30 41       	ret			

000054a6 <.L19>:
        ++__INK_GET_VAR_FROM_BUF(function);
    54a6:	bd 40 07 00 	mov	#7,	0(r13)	;
    54aa:	00 00 

000054ac <.Loc.192.1>:
        return t_bit_shifter;
    54ac:	3c 40 26 58 	mov	#22566,	r12	;#0x5826

000054b0 <.Loc.199.1>:
}
    54b0:	30 41       	ret			

000054b2 <.L14>:
        ++__INK_GET_VAR_FROM_BUF(function);
    54b2:	ad 43 00 00 	mov	#2,	0(r13)	;r3 As==10

000054b6 <.Loc.167.1>:
        return t_bitcount;
    54b6:	3c 40 6c 55 	mov	#21868,	r12	;#0x556c

000054ba <.Loc.199.1>:
}
    54ba:	30 41       	ret			

000054bc <.L16>:
        ++__INK_GET_VAR_FROM_BUF(function);
    54bc:	ad 42 00 00 	mov	#4,	0(r13)	;r2 As==10

000054c0 <.Loc.177.1>:
        return t_ntbl_bitcount;
    54c0:	3c 40 c2 56 	mov	#22210,	r12	;#0x56c2

000054c4 <.Loc.199.1>:
}
    54c4:	30 41       	ret			

000054c6 <.L17>:
        ++__INK_GET_VAR_FROM_BUF(function);
    54c6:	bd 40 05 00 	mov	#5,	0(r13)	;
    54ca:	00 00 

000054cc <.Loc.182.1>:
        return t_BW_btbl_bitcount;
    54cc:	3c 40 9e 57 	mov	#22430,	r12	;#0x579e

000054d0 <.Loc.199.1>:
}
    54d0:	30 41       	ret			

000054d2 <.L18>:
        ++__INK_GET_VAR_FROM_BUF(function);
    54d2:	bd 40 06 00 	mov	#6,	0(r13)	;
    54d6:	00 00 

000054d8 <.Loc.187.1>:
        return t_AR_btbl_bitcount;
    54d8:	3c 40 7e 59 	mov	#22910,	r12	;#0x597e

000054dc <.Loc.199.1>:
}
    54dc:	30 41       	ret			

000054de <t_bit_count>:

void *__attribute__((annotate("INK::TASK15"))) t_bit_count()
{
    54de:	2a 15       	pushm	#3,	r10	;16-bit words

000054e0 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    54e0:	b0 12 ee 5b 	call	#23534		;#0x5bee
    54e4:	08 4c       	mov	r12,	r8	;

000054e6 <.Loc.204.1>:
uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    54e6:	0a 4c       	mov	r12,	r10	;
    54e8:	5a 02       	rlam	#1,	r10	;
    54ea:	0c 4a       	mov	r10,	r12	;
    54ec:	0c 58       	add	r8,	r12	;
    54ee:	5c 06       	rlam	#2,	r12	;
    54f0:	0c 88       	sub	r8,	r12	;
    54f2:	5c 02       	rlam	#1,	r12	;
    54f4:	1c 4c 24 45 	mov	17700(r12),r12	;0x04524

000054f8 <.Loc.204.1>:
    54f8:	2d 4c       	mov	@r12,	r13	;
    54fa:	1e 4c 02 00 	mov	2(r12),	r14	;

000054fe <.LVL10>:
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed + 13;
    54fe:	0f 4d       	mov	r13,	r15	;
    5500:	3f 50 0d 00 	add	#13,	r15	;#0x000d
    5504:	8c 4f 00 00 	mov	r15,	0(r12)	;
    5508:	0f 4e       	mov	r14,	r15	;
    550a:	0f 63       	adc	r15		;
    550c:	8c 4f 02 00 	mov	r15,	2(r12)	;

00005510 <.Loc.207.1>:

    unsigned temp = 0;
    if (tmp_seed)
    5510:	0c 4d       	mov	r13,	r12	;
    5512:	0c de       	bis	r14,	r12	;

00005514 <.Loc.207.1>:
    unsigned temp = 0;
    5514:	49 43       	clr.b	r9		;

00005516 <.Loc.208.1>:
    if (tmp_seed)
    5516:	0c 93       	cmp	#0,	r12	;r3 As==00
    5518:	17 20       	jnz	$+48     	;abs 0x5548

0000551a <.L21>:
        do
            temp++;
        while (0 != (tmp_seed = tmp_seed & (tmp_seed - 1)));

    __INK_GET_VAR_FROM_BUF(n_0) += temp;
    551a:	0a 58       	add	r8,	r10	;
    551c:	5a 06       	rlam	#2,	r10	;
    551e:	0c 4a       	mov	r10,	r12	;
    5520:	0c 88       	sub	r8,	r12	;
    5522:	5c 02       	rlam	#1,	r12	;
    5524:	1d 4c 12 45 	mov	17682(r12),r13	;0x04512

00005528 <.Loc.213.1>:
    5528:	8d 59 00 00 	add	r9,	0(r13)	;

0000552c <.Loc.214.1>:
    ++__INK_GET_VAR_FROM_BUF(iteration);
    552c:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522

00005530 <.Loc.214.1>:
    5530:	2c 4d       	mov	@r13,	r12	;
    5532:	1c 53       	inc	r12		;
    5534:	8d 4c 00 00 	mov	r12,	0(r13)	;

00005538 <.Loc.216.1>:

    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    5538:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    553c:	0d 9c       	cmp	r12,	r13	;
    553e:	12 2c       	jc	$+38     	;abs 0x5564

00005540 <.Loc.222.1>:
    {
        return t_bit_count;
    }
    else
    {
        return t_select_func;
    5540:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

00005544 <.Loc.224.1>:
    }
}
    5544:	28 17       	popm	#3,	r10	;16-bit words

00005546 <.LCFI1>:
    5546:	30 41       	ret			

00005548 <.L23>:
            temp++;
    5548:	19 53       	inc	r9		;

0000554a <.Loc.211.1>:
        while (0 != (tmp_seed = tmp_seed & (tmp_seed - 1)));
    554a:	0b 4d       	mov	r13,	r11	;
    554c:	3b 53       	add	#-1,	r11	;r3 As==11
    554e:	0f 4e       	mov	r14,	r15	;
    5550:	3f 63       	addc	#-1,	r15	;r3 As==11

00005552 <.Loc.211.1>:
    5552:	0b fd       	and	r13,	r11	;
    5554:	0f fe       	and	r14,	r15	;
    5556:	0d 4b       	mov	r11,	r13	;

00005558 <.LVL15>:
    5558:	0e 4f       	mov	r15,	r14	;

0000555a <.LVL16>:
    555a:	0f 4b       	mov	r11,	r15	;
    555c:	0f de       	bis	r14,	r15	;
    555e:	0f 93       	cmp	#0,	r15	;r3 As==00
    5560:	f3 23       	jnz	$-24     	;abs 0x5548
    5562:	db 3f       	jmp	$-72     	;abs 0x551a

00005564 <.L26>:
        return t_bit_count;
    5564:	3c 40 de 54 	mov	#21726,	r12	;#0x54de

00005568 <.Loc.224.1>:
}
    5568:	28 17       	popm	#3,	r10	;16-bit words

0000556a <.LCFI3>:
    556a:	30 41       	ret			

0000556c <t_bitcount>:

void *__attribute__((annotate("INK::TASK15"))) t_bitcount()
{
    556c:	6a 15       	pushm	#7,	r10	;16-bit words

0000556e <.LCFI4>:
    556e:	21 82       	sub	#4,	r1	;r2 As==10

00005570 <.LCFI5>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5570:	b0 12 ee 5b 	call	#23534		;#0x5bee

00005574 <.Loc.229.1>:
uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    5574:	0e 4c       	mov	r12,	r14	;
    5576:	5e 02       	rlam	#1,	r14	;
    5578:	0e 5c       	add	r12,	r14	;
    557a:	5e 06       	rlam	#2,	r14	;
    557c:	0e 8c       	sub	r12,	r14	;
    557e:	5e 02       	rlam	#1,	r14	;
    5580:	1f 4e 24 45 	mov	17700(r14),r15	;0x04524

00005584 <.Loc.229.1>:
    5584:	2c 4f       	mov	@r15,	r12	;
    5586:	1d 4f 02 00 	mov	2(r15),	r13	;

0000558a <.LVL20>:
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed + 13;
    558a:	09 4c       	mov	r12,	r9	;
    558c:	39 50 0d 00 	add	#13,	r9	;#0x000d
    5590:	8f 49 00 00 	mov	r9,	0(r15)	;
    5594:	0a 4d       	mov	r13,	r10	;
    5596:	0a 63       	adc	r10		;
    5598:	8f 4a 02 00 	mov	r10,	2(r15)	;

0000559c <.Loc.232.1>:

    tmp_seed = ((tmp_seed & 0xAAAAAAAAL) >> 1) + (tmp_seed & 0x55555555L);
    559c:	09 4c       	mov	r12,	r9	;
    559e:	0a 4d       	mov	r13,	r10	;
    55a0:	12 c3       	clrc			
    55a2:	0a 10       	rrc	r10		;
    55a4:	09 10       	rrc	r9		;
    55a6:	81 4a 02 00 	mov	r10,	2(r1)	;
    55aa:	0b 49       	mov	r9,	r11	;
    55ac:	3b f0 55 55 	and	#21845,	r11	;#0x5555
    55b0:	1a 41 02 00 	mov	2(r1),	r10	;
    55b4:	3a f0 55 55 	and	#21845,	r10	;#0x5555

000055b8 <.Loc.232.1>:
    55b8:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
    55bc:	0f 4c       	mov	r12,	r15	;
    55be:	3f f0 55 55 	and	#21845,	r15	;#0x5555
    55c2:	09 4d       	mov	r13,	r9	;
    55c4:	39 f0 55 55 	and	#21845,	r9	;#0x5555

000055c8 <.Loc.232.1>:
    55c8:	04 4b       	mov	r11,	r4	;
    55ca:	04 5f       	add	r15,	r4	;
    55cc:	05 49       	mov	r9,	r5	;
    55ce:	05 6a       	addc	r10,	r5	;

000055d0 <.LVL21>:
    tmp_seed = ((tmp_seed & 0xCCCCCCCCL) >> 2) + (tmp_seed & 0x33333333L);
    55d0:	0c 44       	mov	r4,	r12	;
    55d2:	0d 45       	mov	r5,	r13	;
    55d4:	12 c3       	clrc			
    55d6:	0d 10       	rrc	r13		;
    55d8:	0c 10       	rrc	r12		;
    55da:	12 c3       	clrc			
    55dc:	0d 10       	rrc	r13		;
    55de:	0c 10       	rrc	r12		;
    55e0:	0f 4c       	mov	r12,	r15	;
    55e2:	3f f0 33 33 	and	#13107,	r15	;#0x3333
    55e6:	0a 4d       	mov	r13,	r10	;
    55e8:	3a f0 33 33 	and	#13107,	r10	;#0x3333

000055ec <.Loc.233.1>:
    55ec:	0c 44       	mov	r4,	r12	;
    55ee:	3c f0 33 33 	and	#13107,	r12	;#0x3333
    55f2:	0d 45       	mov	r5,	r13	;
    55f4:	3d f0 33 33 	and	#13107,	r13	;#0x3333

000055f8 <.Loc.233.1>:
    55f8:	06 4f       	mov	r15,	r6	;
    55fa:	06 5c       	add	r12,	r6	;
    55fc:	07 4a       	mov	r10,	r7	;
    55fe:	07 6d       	addc	r13,	r7	;

00005600 <.LVL22>:
    tmp_seed = ((tmp_seed & 0xF0F0F0F0L) >> 4) + (tmp_seed & 0x0F0F0F0FL);
    5600:	0a 46       	mov	r6,	r10	;
    5602:	0b 47       	mov	r7,	r11	;
    5604:	12 c3       	clrc			
    5606:	0b 10       	rrc	r11		;
    5608:	0a 10       	rrc	r10		;
    560a:	12 c3       	clrc			
    560c:	0b 10       	rrc	r11		;
    560e:	0a 10       	rrc	r10		;
    5610:	12 c3       	clrc			
    5612:	0b 10       	rrc	r11		;
    5614:	0a 10       	rrc	r10		;
    5616:	12 c3       	clrc			
    5618:	0b 10       	rrc	r11		;
    561a:	0a 10       	rrc	r10		;
    561c:	0d 4a       	mov	r10,	r13	;
    561e:	3d f0 0f 0f 	and	#3855,	r13	;#0x0f0f
    5622:	05 4b       	mov	r11,	r5	;
    5624:	35 f0 0f 0f 	and	#3855,	r5	;#0x0f0f

00005628 <.Loc.234.1>:
    5628:	0c 46       	mov	r6,	r12	;
    562a:	3c f0 0f 0f 	and	#3855,	r12	;#0x0f0f
    562e:	0f 47       	mov	r7,	r15	;
    5630:	3f f0 0f 0f 	and	#3855,	r15	;#0x0f0f

00005634 <.Loc.234.1>:
    5634:	08 4d       	mov	r13,	r8	;
    5636:	08 5c       	add	r12,	r8	;
    5638:	09 45       	mov	r5,	r9	;
    563a:	09 6f       	addc	r15,	r9	;

0000563c <.LVL23>:
    tmp_seed = ((tmp_seed & 0xFF00FF00L) >> 8) + (tmp_seed & 0x00FF00FFL);
    563c:	0a 48       	mov	r8,	r10	;
    563e:	0b 49       	mov	r9,	r11	;
    5640:	12 c3       	clrc			
    5642:	0b 10       	rrc	r11		;
    5644:	0a 10       	rrc	r10		;
    5646:	12 c3       	clrc			
    5648:	0b 10       	rrc	r11		;
    564a:	0a 10       	rrc	r10		;
    564c:	12 c3       	clrc			
    564e:	0b 10       	rrc	r11		;
    5650:	0a 10       	rrc	r10		;
    5652:	12 c3       	clrc			
    5654:	0b 10       	rrc	r11		;
    5656:	0a 10       	rrc	r10		;
    5658:	12 c3       	clrc			
    565a:	0b 10       	rrc	r11		;
    565c:	0a 10       	rrc	r10		;
    565e:	12 c3       	clrc			
    5660:	0b 10       	rrc	r11		;
    5662:	0a 10       	rrc	r10		;
    5664:	12 c3       	clrc			
    5666:	0b 10       	rrc	r11		;
    5668:	0a 10       	rrc	r10		;
    566a:	12 c3       	clrc			
    566c:	0b 10       	rrc	r11		;
    566e:	0a 10       	rrc	r10		;
    5670:	0c 4a       	mov	r10,	r12	;
    5672:	7c f0 ff 00 	and.b	#255,	r12	;#0x00ff
    5676:	0d 4b       	mov	r11,	r13	;
    5678:	7d f0 ff 00 	and.b	#255,	r13	;#0x00ff

0000567c <.Loc.235.1>:
    567c:	0f 48       	mov	r8,	r15	;
    567e:	7f f0 ff 00 	and.b	#255,	r15	;#0x00ff
    5682:	0a 49       	mov	r9,	r10	;
    5684:	7a f0 ff 00 	and.b	#255,	r10	;#0x00ff

00005688 <.Loc.235.1>:
    5688:	0c 5f       	add	r15,	r12	;
    568a:	0d 6a       	addc	r10,	r13	;

0000568c <.LVL24>:
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);
    568c:	0f 4c       	mov	r12,	r15	;

0000568e <.LVL25>:

    __INK_GET_VAR_FROM_BUF(n_1) += (int)tmp_seed;
    568e:	1c 4e 14 45 	mov	17684(r14),r12	;0x04514

00005692 <.Loc.236.1>:
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);
    5692:	2f 5c       	add	@r12,	r15	;

00005694 <.Loc.238.1>:
    __INK_GET_VAR_FROM_BUF(n_1) += (int)tmp_seed;
    5694:	0f 5d       	add	r13,	r15	;
    5696:	8c 4f 00 00 	mov	r15,	0(r12)	;

0000569a <.Loc.239.1>:
    ++__INK_GET_VAR_FROM_BUF(iteration);
    569a:	1d 4e 22 45 	mov	17698(r14),r13	;0x04522

0000569e <.Loc.239.1>:
    569e:	2c 4d       	mov	@r13,	r12	;
    56a0:	1c 53       	inc	r12		;
    56a2:	8d 4c 00 00 	mov	r12,	0(r13)	;

000056a6 <.Loc.241.1>:

    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    56a6:	7a 40 63 00 	mov.b	#99,	r10	;#0x0063
    56aa:	0a 9c       	cmp	r12,	r10	;
    56ac:	05 2c       	jc	$+12     	;abs 0x56b8

000056ae <.Loc.247.1>:
    {
        return t_bitcount;
    }
    else
    {
        return t_select_func;
    56ae:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

000056b2 <.Loc.249.1>:
    }
}
    56b2:	21 52       	add	#4,	r1	;r2 As==10

000056b4 <.LCFI6>:
    56b4:	64 17       	popm	#7,	r10	;16-bit words

000056b6 <.LCFI7>:
    56b6:	30 41       	ret			

000056b8 <.L30>:
        return t_bitcount;
    56b8:	3c 40 6c 55 	mov	#21868,	r12	;#0x556c

000056bc <.Loc.249.1>:
}
    56bc:	21 52       	add	#4,	r1	;r2 As==10

000056be <.LCFI9>:
    56be:	64 17       	popm	#7,	r10	;16-bit words

000056c0 <.LCFI10>:
    56c0:	30 41       	ret			

000056c2 <t_ntbl_bitcount>:
        return t_select_func;
    }
}

void *__attribute__((annotate("INK::TASK15"))) t_ntbl_bitcount()
{
    56c2:	2a 15       	pushm	#3,	r10	;16-bit words

000056c4 <.LCFI11>:

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    56c4:	b0 12 ee 5b 	call	#23534		;#0x5bee
    56c8:	0e 4c       	mov	r12,	r14	;

000056ca <.Loc.274.1>:
uint16_t __cry = __INK_GET_VAR_FROM_BUF(seed);
    56ca:	0d 4c       	mov	r12,	r13	;
    56cc:	5d 02       	rlam	#1,	r13	;
    56ce:	0c 4d       	mov	r13,	r12	;
    56d0:	0c 5e       	add	r14,	r12	;
    56d2:	0d 4c       	mov	r12,	r13	;
    56d4:	5d 06       	rlam	#2,	r13	;
    56d6:	0c 4d       	mov	r13,	r12	;
    56d8:	0c 8e       	sub	r14,	r12	;
    56da:	5c 02       	rlam	#1,	r12	;
    56dc:	1b 4c 24 45 	mov	17700(r12),r11	;0x04524
    56e0:	2e 4b       	mov	@r11,	r14	;
    56e2:	1f 4b 02 00 	mov	2(r11),	r15	;

000056e6 <.Loc.275.1>:
    __INK_GET_VAR_FROM_BUF(n_3) += bits[(int)(__cry & 0x0000000FUL)] +
    56e6:	1a 4c 18 45 	mov	17688(r12),r10	;0x04518

000056ea <.Loc.276.1>:
           bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    56ea:	08 4e       	mov	r14,	r8	;
    56ec:	09 4f       	mov	r15,	r9	;
    56ee:	12 c3       	clrc			
    56f0:	09 10       	rrc	r9		;
    56f2:	08 10       	rrc	r8		;
    56f4:	12 c3       	clrc			
    56f6:	09 10       	rrc	r9		;
    56f8:	08 10       	rrc	r8		;
    56fa:	12 c3       	clrc			
    56fc:	09 10       	rrc	r9		;
    56fe:	08 10       	rrc	r8		;
    5700:	12 c3       	clrc			
    5702:	09 10       	rrc	r9		;
    5704:	08 10       	rrc	r8		;

00005706 <.Loc.276.1>:
    5706:	78 f0 0f 00 	and.b	#15,	r8	;#0x000f

0000570a <.Loc.275.1>:
    __INK_GET_VAR_FROM_BUF(n_3) += bits[(int)(__cry & 0x0000000FUL)] +
    570a:	0d 4e       	mov	r14,	r13	;
    570c:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

00005710 <.Loc.275.1>:
    5710:	5d 4d 3c 45 	mov.b	17724(r13),r13	;0x0453c
    5714:	58 48 3c 45 	mov.b	17724(r8),r8	;0x0453c
    5718:	0d 58       	add	r8,	r13	;

0000571a <.Loc.277.1>:
           bits[(int)((__cry & 0x00000F00UL) >> 8)] +
    571a:	08 4e       	mov	r14,	r8	;
    571c:	09 4f       	mov	r15,	r9	;
    571e:	12 c3       	clrc			
    5720:	09 10       	rrc	r9		;
    5722:	08 10       	rrc	r8		;
    5724:	12 c3       	clrc			
    5726:	09 10       	rrc	r9		;
    5728:	08 10       	rrc	r8		;
    572a:	12 c3       	clrc			
    572c:	09 10       	rrc	r9		;
    572e:	08 10       	rrc	r8		;
    5730:	12 c3       	clrc			
    5732:	09 10       	rrc	r9		;
    5734:	08 10       	rrc	r8		;
    5736:	12 c3       	clrc			
    5738:	09 10       	rrc	r9		;
    573a:	08 10       	rrc	r8		;
    573c:	12 c3       	clrc			
    573e:	09 10       	rrc	r9		;
    5740:	08 10       	rrc	r8		;
    5742:	12 c3       	clrc			
    5744:	09 10       	rrc	r9		;
    5746:	08 10       	rrc	r8		;
    5748:	12 c3       	clrc			
    574a:	09 10       	rrc	r9		;
    574c:	08 10       	rrc	r8		;

0000574e <.Loc.277.1>:
    574e:	78 f0 0f 00 	and.b	#15,	r8	;#0x000f

00005752 <.Loc.276.1>:
           bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    5752:	58 48 3c 45 	mov.b	17724(r8),r8	;0x0453c
    5756:	0d 58       	add	r8,	r13	;

00005758 <.Loc.278.1>:
           bits[(int)((__cry & 0x0000F000UL) >> 12)] +
    5758:	09 4e       	mov	r14,	r9	;
    575a:	4b 19 09 10 	rpt #12 { rrux.w	r9		;

0000575e <.Loc.277.1>:
           bits[(int)((__cry & 0x00000F00UL) >> 8)] +
    575e:	59 49 3c 45 	mov.b	17724(r9),r9	;0x0453c
    5762:	0d 59       	add	r9,	r13	;

00005764 <.Loc.275.1>:
    __INK_GET_VAR_FROM_BUF(n_3) += bits[(int)(__cry & 0x0000000FUL)] +
    5764:	8a 5d 00 00 	add	r13,	0(r10)	;

00005768 <.Loc.284.1>:
           bits[(int)((__cry & 0x00F00000UL) >> 20)] +
           bits[(int)((__cry & 0x0F000000UL) >> 24)] +
           bits[(int)((__cry & 0xF0000000UL) >> 28)];

    uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed + 13;
    5768:	0d 4e       	mov	r14,	r13	;
    576a:	3d 50 0d 00 	add	#13,	r13	;#0x000d
    576e:	8b 4d 00 00 	mov	r13,	0(r11)	;
    5772:	0d 4f       	mov	r15,	r13	;
    5774:	0d 63       	adc	r13		;
    5776:	8b 4d 02 00 	mov	r13,	2(r11)	;

0000577a <.Loc.286.1>:
    __INK_GET_VAR_FROM_BUF(iteration)++;
    577a:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522

0000577e <.Loc.286.1>:
    577e:	2c 4d       	mov	@r13,	r12	;
    5780:	1c 53       	inc	r12		;
    5782:	8d 4c 00 00 	mov	r12,	0(r13)	;

00005786 <.Loc.288.1>:

    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    5786:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    578a:	0d 9c       	cmp	r12,	r13	;
    578c:	04 2c       	jc	$+10     	;abs 0x5796

0000578e <.Loc.294.1>:
    {
        return t_ntbl_bitcount;
    }
    else
    {
        return t_select_func;
    578e:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

00005792 <.Loc.296.1>:
    }
}
    5792:	28 17       	popm	#3,	r10	;16-bit words

00005794 <.LCFI12>:
    5794:	30 41       	ret			

00005796 <.L33>:
        return t_ntbl_bitcount;
    5796:	3c 40 c2 56 	mov	#22210,	r12	;#0x56c2

0000579a <.Loc.296.1>:
}
    579a:	28 17       	popm	#3,	r10	;16-bit words

0000579c <.LCFI14>:
    579c:	30 41       	ret			

0000579e <t_BW_btbl_bitcount>:

void *__attribute__((annotate("INK::TASK15"))) t_BW_btbl_bitcount()
{
    579e:	2a 15       	pushm	#3,	r10	;16-bit words

000057a0 <.LCFI15>:

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    57a0:	b0 12 ee 5b 	call	#23534		;#0x5bee
    57a4:	0e 4c       	mov	r12,	r14	;

000057a6 <.Loc.302.1>:
    {
        unsigned char ch[4];
        long y;
    } U;

    U.y = __INK_GET_VAR_FROM_BUF(seed);
    57a6:	0d 4c       	mov	r12,	r13	;
    57a8:	5d 02       	rlam	#1,	r13	;
    57aa:	0c 4d       	mov	r13,	r12	;
    57ac:	0c 5e       	add	r14,	r12	;
    57ae:	0d 4c       	mov	r12,	r13	;
    57b0:	5d 06       	rlam	#2,	r13	;
    57b2:	0c 4d       	mov	r13,	r12	;
    57b4:	0c 8e       	sub	r14,	r12	;
    57b6:	5c 02       	rlam	#1,	r12	;
    57b8:	1e 4c 24 45 	mov	17700(r12),r14	;0x04524
    57bc:	2f 4e       	mov	@r14,	r15	;
    57be:	1a 4e 02 00 	mov	2(r14),	r10	;
    57c2:	0d 4f       	mov	r15,	r13	;
    57c4:	0b 4a       	mov	r10,	r11	;

000057c6 <.Loc.310.1>:

    __INK_GET_VAR_FROM_BUF(n_4) += bits[U.ch[0]] + bits[U.ch[1]] +
    57c6:	19 4c 1a 45 	mov	17690(r12),r9	;0x0451a

000057ca <.Loc.310.1>:
    57ca:	48 4f       	mov.b	r15,	r8	;

000057cc <.Loc.310.1>:
    57cc:	47 19 0d 10 	rpt #8 { rrux.w	r13		;

000057d0 <.Loc.310.1>:
    57d0:	5d 4d 3c 45 	mov.b	17724(r13),r13	;0x0453c
    57d4:	58 48 3c 45 	mov.b	17724(r8),r8	;0x0453c
    57d8:	0d 58       	add	r8,	r13	;

000057da <.Loc.311.1>:
           bits[U.ch[3]] + bits[U.ch[2]];
    57da:	08 4a       	mov	r10,	r8	;
    57dc:	47 19 08 10 	rpt #8 { rrux.w	r8		;

000057e0 <.Loc.310.1>:
    __INK_GET_VAR_FROM_BUF(n_4) += bits[U.ch[0]] + bits[U.ch[1]] +
    57e0:	58 48 3c 45 	mov.b	17724(r8),r8	;0x0453c
    57e4:	0d 58       	add	r8,	r13	;

000057e6 <.Loc.311.1>:
           bits[U.ch[3]] + bits[U.ch[2]];
    57e6:	3b f0 ff 00 	and	#255,	r11	;#0x00ff

000057ea <.Loc.311.1>:
    57ea:	5b 4b 3c 45 	mov.b	17724(r11),r11	;0x0453c
    57ee:	0d 5b       	add	r11,	r13	;

000057f0 <.Loc.310.1>:
    __INK_GET_VAR_FROM_BUF(n_4) += bits[U.ch[0]] + bits[U.ch[1]] +
    57f0:	89 5d 00 00 	add	r13,	0(r9)	;

000057f4 <.LVL38>:
    uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed + 13;
    57f4:	3f 50 0d 00 	add	#13,	r15	;#0x000d

000057f8 <.LVL39>:
    57f8:	8e 4f 00 00 	mov	r15,	0(r14)	;

000057fc <.LVL40>:
    57fc:	0a 63       	adc	r10		;
    57fe:	8e 4a 02 00 	mov	r10,	2(r14)	;

00005802 <.Loc.314.1>:
    __INK_GET_VAR_FROM_BUF(iteration)++;
    5802:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522

00005806 <.Loc.314.1>:
    5806:	2c 4d       	mov	@r13,	r12	;
    5808:	1c 53       	inc	r12		;
    580a:	8d 4c 00 00 	mov	r12,	0(r13)	;

0000580e <.Loc.316.1>:

    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    580e:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    5812:	0d 9c       	cmp	r12,	r13	;
    5814:	04 2c       	jc	$+10     	;abs 0x581e

00005816 <.Loc.322.1>:
    {
        return t_BW_btbl_bitcount;
    }
    else
    {
        return t_select_func;
    5816:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

0000581a <.Loc.324.1>:
    }
}
    581a:	28 17       	popm	#3,	r10	;16-bit words

0000581c <.LCFI16>:
    581c:	30 41       	ret			

0000581e <.L36>:
        return t_BW_btbl_bitcount;
    581e:	3c 40 9e 57 	mov	#22430,	r12	;#0x579e

00005822 <.Loc.324.1>:
}
    5822:	28 17       	popm	#3,	r10	;16-bit words

00005824 <.LCFI18>:
    5824:	30 41       	ret			

00005826 <t_bit_shifter>:
        return t_select_func;
    }
}

void *__attribute__((annotate("INK::TASK15"))) t_bit_shifter()
{
    5826:	5a 15       	pushm	#6,	r10	;16-bit words

00005828 <.LCFI19>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5828:	b0 12 ee 5b 	call	#23534		;#0x5bee
    582c:	05 4c       	mov	r12,	r5	;

0000582e <.Loc.354.1>:
unsigned i, nn;
    uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    582e:	09 4c       	mov	r12,	r9	;
    5830:	59 02       	rlam	#1,	r9	;
    5832:	0c 49       	mov	r9,	r12	;
    5834:	0c 55       	add	r5,	r12	;
    5836:	5c 06       	rlam	#2,	r12	;
    5838:	0c 85       	sub	r5,	r12	;
    583a:	5c 02       	rlam	#1,	r12	;
    583c:	18 4c 24 45 	mov	17700(r12),r8	;0x04524

00005840 <.Loc.355.1>:
    5840:	27 48       	mov	@r8,	r7	;
    5842:	16 48 02 00 	mov	2(r8),	r6	;

00005846 <.LVL45>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    5846:	0c 47       	mov	r7,	r12	;
    5848:	0c d6       	bis	r6,	r12	;
    584a:	0c 93       	cmp	#0,	r12	;r3 As==00
    584c:	35 24       	jz	$+108    	;abs 0x58b8
    584e:	0e 47       	mov	r7,	r14	;
    5850:	0f 46       	mov	r6,	r15	;
    5852:	7b 40 20 00 	mov.b	#32,	r11	;#0x0020

00005856 <.Loc.356.1>:
    5856:	4a 43       	clr.b	r10		;
    5858:	03 3c       	jmp	$+8      	;abs 0x5860

0000585a <.L49>:
    585a:	3b 53       	add	#-1,	r11	;r3 As==11

0000585c <.Loc.356.1>:
    585c:	0b 93       	cmp	#0,	r11	;r3 As==00
    585e:	0a 24       	jz	$+22     	;abs 0x5874

00005860 <.L41>:
        nn += (unsigned)(tmp_seed & 1L);
    5860:	0d 4e       	mov	r14,	r13	;
    5862:	5d f3       	and.b	#1,	r13	;r3 As==01

00005864 <.Loc.357.1>:
    5864:	0a 5d       	add	r13,	r10	;

00005866 <.Loc.356.1>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    5866:	12 c3       	clrc			
    5868:	0f 10       	rrc	r15		;
    586a:	0e 10       	rrc	r14		;

0000586c <.Loc.356.1>:
    586c:	0d 4e       	mov	r14,	r13	;
    586e:	0d df       	bis	r15,	r13	;
    5870:	0d 93       	cmp	#0,	r13	;r3 As==00
    5872:	f3 23       	jnz	$-24     	;abs 0x585a

00005874 <.L38>:
    __INK_GET_VAR_FROM_BUF(n_6) += nn;
    5874:	0c 49       	mov	r9,	r12	;
    5876:	0c 55       	add	r5,	r12	;
    5878:	5c 06       	rlam	#2,	r12	;
    587a:	0c 85       	sub	r5,	r12	;
    587c:	5c 02       	rlam	#1,	r12	;
    587e:	1d 4c 1e 45 	mov	17694(r12),r13	;0x0451e

00005882 <.Loc.358.1>:
    5882:	8d 5a 00 00 	add	r10,	0(r13)	;

00005886 <.Loc.359.1>:
    tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    tmp_seed += 13;
    5886:	37 50 0d 00 	add	#13,	r7	;#0x000d
    588a:	88 47 00 00 	mov	r7,	0(r8)	;
    588e:	06 63       	adc	r6		;
    5890:	88 46 02 00 	mov	r6,	2(r8)	;

00005894 <.Loc.363.1>:
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed;

    __INK_GET_VAR_FROM_BUF(iteration)++;
    5894:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522

00005898 <.Loc.363.1>:
    5898:	2c 4d       	mov	@r13,	r12	;
    589a:	1c 53       	inc	r12		;
    589c:	8d 4c 00 00 	mov	r12,	0(r13)	;

000058a0 <.Loc.365.1>:

    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    58a0:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    58a4:	0d 9c       	cmp	r12,	r13	;
    58a6:	04 2c       	jc	$+10     	;abs 0x58b0

000058a8 <.Loc.371.1>:
    {
        return t_bit_shifter;
    }
    else
    {
        return t_select_func;
    58a8:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

000058ac <.Loc.373.1>:
    }
}
    58ac:	55 17       	popm	#6,	r10	;16-bit words

000058ae <.LCFI20>:
    58ae:	30 41       	ret			

000058b0 <.L44>:
        return t_bit_shifter;
    58b0:	3c 40 26 58 	mov	#22566,	r12	;#0x5826

000058b4 <.Loc.373.1>:
}
    58b4:	55 17       	popm	#6,	r10	;16-bit words

000058b6 <.LCFI22>:
    58b6:	30 41       	ret			

000058b8 <.L43>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    58b8:	4a 43       	clr.b	r10		;
    58ba:	dc 3f       	jmp	$-70     	;abs 0x5874

000058bc <t_ntbl_bitcnt>:
{
    58bc:	4a 15       	pushm	#5,	r10	;16-bit words

000058be <.LCFI24>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    58be:	b0 12 ee 5b 	call	#23534		;#0x5bee
    58c2:	06 4c       	mov	r12,	r6	;

000058c4 <.Loc.255.1>:
uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    58c4:	0a 4c       	mov	r12,	r10	;
    58c6:	5a 02       	rlam	#1,	r10	;
    58c8:	0c 4a       	mov	r10,	r12	;
    58ca:	0c 56       	add	r6,	r12	;
    58cc:	5c 06       	rlam	#2,	r12	;
    58ce:	0c 86       	sub	r6,	r12	;
    58d0:	5c 02       	rlam	#1,	r12	;
    58d2:	17 4c 24 45 	mov	17700(r12),r7	;0x04524

000058d6 <.Loc.255.1>:
    58d6:	28 47       	mov	@r7,	r8	;
    58d8:	19 47 02 00 	mov	2(r7),	r9	;

000058dc <.LBB4>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    58dc:	0c 48       	mov	r8,	r12	;
    58de:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

000058e2 <.Loc.96.1>:
    58e2:	5b 4c 3c 45 	mov.b	17724(r12),r11	;0x0453c

000058e6 <.LVL60>:
    while (0L != (x >>= 4))
    58e6:	0e 48       	mov	r8,	r14	;
    58e8:	0f 49       	mov	r9,	r15	;
    58ea:	12 c3       	clrc			
    58ec:	0f 10       	rrc	r15		;
    58ee:	0e 10       	rrc	r14		;
    58f0:	12 c3       	clrc			
    58f2:	0f 10       	rrc	r15		;
    58f4:	0e 10       	rrc	r14		;
    58f6:	12 c3       	clrc			
    58f8:	0f 10       	rrc	r15		;
    58fa:	0e 10       	rrc	r14		;
    58fc:	12 c3       	clrc			
    58fe:	0f 10       	rrc	r15		;
    5900:	0e 10       	rrc	r14		;

00005902 <.LVL61>:
    5902:	0c 4e       	mov	r14,	r12	;
    5904:	0c df       	bis	r15,	r12	;
    5906:	0c 93       	cmp	#0,	r12	;r3 As==00
    5908:	16 24       	jz	$+46     	;abs 0x5936

0000590a <.L53>:
        cnt += bits[(int)(x & 0x0000000FL)];
    590a:	0d 4e       	mov	r14,	r13	;
    590c:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

00005910 <.Loc.100.1>:
    5910:	5d 4d 3c 45 	mov.b	17724(r13),r13	;0x0453c
    5914:	0b 5d       	add	r13,	r11	;

00005916 <.Loc.98.1>:
    while (0L != (x >>= 4))
    5916:	12 c3       	clrc			
    5918:	0f 10       	rrc	r15		;
    591a:	0e 10       	rrc	r14		;
    591c:	12 c3       	clrc			
    591e:	0f 10       	rrc	r15		;
    5920:	0e 10       	rrc	r14		;
    5922:	12 c3       	clrc			
    5924:	0f 10       	rrc	r15		;
    5926:	0e 10       	rrc	r14		;
    5928:	12 c3       	clrc			
    592a:	0f 10       	rrc	r15		;
    592c:	0e 10       	rrc	r14		;

0000592e <.Loc.98.1>:
    592e:	0d 4e       	mov	r14,	r13	;
    5930:	0d df       	bis	r15,	r13	;
    5932:	0d 93       	cmp	#0,	r13	;r3 As==00
    5934:	ea 23       	jnz	$-42     	;abs 0x590a

00005936 <.L51>:
    __INK_GET_VAR_FROM_BUF(n_2) += non_recursive_cnt(tmp_seed);
    5936:	0a 56       	add	r6,	r10	;
    5938:	5a 06       	rlam	#2,	r10	;
    593a:	0c 4a       	mov	r10,	r12	;
    593c:	0c 86       	sub	r6,	r12	;
    593e:	5c 02       	rlam	#1,	r12	;
    5940:	1d 4c 16 45 	mov	17686(r12),r13	;0x04516

00005944 <.Loc.256.1>:
    5944:	8d 5b 00 00 	add	r11,	0(r13)	;

00005948 <.Loc.257.1>:
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed + 13;
    5948:	0d 48       	mov	r8,	r13	;
    594a:	3d 50 0d 00 	add	#13,	r13	;#0x000d
    594e:	87 4d 00 00 	mov	r13,	0(r7)	;
    5952:	0d 49       	mov	r9,	r13	;
    5954:	0d 63       	adc	r13		;
    5956:	87 4d 02 00 	mov	r13,	2(r7)	;

0000595a <.Loc.258.1>:
    __INK_GET_VAR_FROM_BUF(iteration)++;
    595a:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522

0000595e <.Loc.258.1>:
    595e:	2c 4d       	mov	@r13,	r12	;
    5960:	1c 53       	inc	r12		;
    5962:	8d 4c 00 00 	mov	r12,	0(r13)	;

00005966 <.Loc.260.1>:
    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    5966:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    596a:	0d 9c       	cmp	r12,	r13	;
    596c:	04 2c       	jc	$+10     	;abs 0x5976

0000596e <.Loc.266.1>:
        return t_select_func;
    596e:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

00005972 <.Loc.268.1>:
}
    5972:	46 17       	popm	#5,	r10	;16-bit words

00005974 <.LCFI25>:
    5974:	30 41       	ret			

00005976 <.L55>:
        return t_ntbl_bitcnt;
    5976:	3c 40 bc 58 	mov	#22716,	r12	;#0x58bc

0000597a <.Loc.268.1>:
}
    597a:	46 17       	popm	#5,	r10	;16-bit words

0000597c <.LCFI27>:
    597c:	30 41       	ret			

0000597e <t_AR_btbl_bitcount>:
{
    597e:	1a 15       	pushm	#2,	r10	;16-bit words

00005980 <.LCFI28>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5980:	b0 12 ee 5b 	call	#23534		;#0x5bee

00005984 <.Loc.329.1>:
unsigned char *Ptr = (unsigned char *)&__INK_GET_VAR_FROM_BUF(seed);
    5984:	0a 4c       	mov	r12,	r10	;
    5986:	5a 02       	rlam	#1,	r10	;
    5988:	0a 5c       	add	r12,	r10	;
    598a:	5a 06       	rlam	#2,	r10	;
    598c:	0a 8c       	sub	r12,	r10	;
    598e:	5a 02       	rlam	#1,	r10	;
    5990:	19 4a 24 45 	mov	17700(r10),r9	;0x04524

00005994 <.Loc.330.1>:
    Accu = bits[*((unsigned char *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(Ptr++, 15))];
    5994:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    5998:	4d 43       	clr.b	r13		;
    599a:	0c 49       	mov	r9,	r12	;
    599c:	b0 12 f4 5b 	call	#23540		;#0x5bf4

000059a0 <.Loc.332.1>:
    59a0:	3d 40 3c 45 	mov	#17724,	r13	;#0x453c
    59a4:	6c 4c       	mov.b	@r12,	r12	;
    59a6:	0c 5d       	add	r13,	r12	;

000059a8 <.Loc.333.1>:
    Accu += bits[*Ptr++];
    59a8:	5e 49 01 00 	mov.b	1(r9),	r14	;
    59ac:	0e 5d       	add	r13,	r14	;

000059ae <.Loc.333.1>:
    59ae:	6c 4c       	mov.b	@r12,	r12	;

000059b0 <.LVL70>:
    59b0:	6e 4e       	mov.b	@r14,	r14	;
    59b2:	0c 5e       	add	r14,	r12	;

000059b4 <.Loc.334.1>:
    Accu += bits[*Ptr++];
    59b4:	5e 49 02 00 	mov.b	2(r9),	r14	;
    59b8:	0e 5d       	add	r13,	r14	;

000059ba <.Loc.334.1>:
    59ba:	6e 4e       	mov.b	@r14,	r14	;
    59bc:	0c 5e       	add	r14,	r12	;

000059be <.LVL72>:
    __INK_GET_VAR_FROM_BUF(n_5) += Accu;
    59be:	1e 4a 1c 45 	mov	17692(r10),r14	;0x0451c

000059c2 <.Loc.335.1>:
    Accu += bits[*Ptr];
    59c2:	59 49 03 00 	mov.b	3(r9),	r9	;
    59c6:	0d 59       	add	r9,	r13	;

000059c8 <.Loc.335.1>:
    59c8:	6d 4d       	mov.b	@r13,	r13	;
    59ca:	0c 5d       	add	r13,	r12	;

000059cc <.Loc.336.1>:
    __INK_GET_VAR_FROM_BUF(n_5) += Accu;
    59cc:	8e 5c 00 00 	add	r12,	0(r14)	;

000059d0 <.Loc.337.1>:
    uint32_t tmp_seed = __INK_GET_VAR_FROM_BUF(seed);
    59d0:	1c 4a 24 45 	mov	17700(r10),r12	;0x04524

000059d4 <.LVL75>:
    __INK_GET_VAR_FROM_BUF(seed) = tmp_seed + 13;
    59d4:	bc 50 0d 00 	add	#13,	0(r12)	;#0x000d
    59d8:	00 00 
    59da:	8c 63 02 00 	adc	2(r12)		;

000059de <.LVL76>:
    __INK_GET_VAR_FROM_BUF(iteration)++;
    59de:	1d 4a 22 45 	mov	17698(r10),r13	;0x04522

000059e2 <.Loc.329.1>:
unsigned char *Ptr = (unsigned char *)&__INK_GET_VAR_FROM_BUF(seed);
    59e2:	3a 50 10 45 	add	#17680,	r10	;#0x4510

000059e6 <.Loc.339.1>:
    __INK_GET_VAR_FROM_BUF(iteration)++;
    59e6:	2c 4d       	mov	@r13,	r12	;
    59e8:	1c 53       	inc	r12		;
    59ea:	8d 4c 00 00 	mov	r12,	0(r13)	;

000059ee <.Loc.341.1>:
    if (__INK_GET_VAR_FROM_BUF(iteration) < ITER)
    59ee:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    59f2:	0d 9c       	cmp	r12,	r13	;
    59f4:	04 2c       	jc	$+10     	;abs 0x59fe

000059f6 <.Loc.347.1>:
        return t_select_func;
    59f6:	3c 40 30 54 	mov	#21552,	r12	;#0x5430

000059fa <.Loc.349.1>:
}
    59fa:	19 17       	popm	#2,	r10	;16-bit words

000059fc <.LCFI29>:
    59fc:	30 41       	ret			

000059fe <.L62>:
        return t_AR_btbl_bitcount;
    59fe:	3c 40 7e 59 	mov	#22910,	r12	;#0x597e

00005a02 <.Loc.349.1>:
}
    5a02:	19 17       	popm	#2,	r10	;16-bit words

00005a04 <.LCFI31>:
    5a04:	30 41       	ret			

00005a06 <t_end>:

void *t_end()
{
#ifdef RAISE_PIN
    if (full_run_started)
    5a06:	c2 93 3c 46 	cmp.b	#0,	&0x463c	;r3 As==00
    5a0a:	08 24       	jz	$+18     	;abs 0x5a1c

00005a0c <.Loc.380.1>:
    {
        __port_on(3, 4);
    5a0c:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    5a10:	22 02 

00005a12 <.Loc.380.1>:
        __port_off(3, 4);
    5a12:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5a16:	22 02 

00005a18 <.Loc.381.1>:
        full_run_started = 0;
    5a18:	c2 43 3c 46 	mov.b	#0,	&0x463c	;r3 As==00

00005a1c <.L64>:
    }
#endif

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5a1c:	b0 12 ee 5b 	call	#23534		;#0x5bee
    5a20:	0e 4c       	mov	r12,	r14	;

00005a22 <.Loc.387.1>:
if (__INK_GET_VAR_FROM_BUF(pinCont))
    5a22:	0d 4c       	mov	r12,	r13	;
    5a24:	5d 02       	rlam	#1,	r13	;
    5a26:	0c 4d       	mov	r13,	r12	;
    5a28:	0c 5e       	add	r14,	r12	;
    5a2a:	0d 4c       	mov	r12,	r13	;
    5a2c:	5d 06       	rlam	#2,	r13	;
    5a2e:	0c 4d       	mov	r13,	r12	;
    5a30:	0c 8e       	sub	r14,	r12	;
    5a32:	5c 02       	rlam	#1,	r12	;
    5a34:	1c 4c 10 45 	mov	17680(r12),r12	;0x04510

00005a38 <.Loc.387.1>:
    5a38:	cc 93 00 00 	cmp.b	#0,	0(r12)	;r3 As==00
    5a3c:	01 24       	jz	$+4      	;abs 0x5a40

00005a3e <.Loc.389.1>:
    {
        __delay_cycles(1);
    5a3e:	03 43       	nop			

00005a40 <.L65>:
    }

    __INK_GET_VAR_FROM_BUF(pinCont) = 0;
    5a40:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

00005a44 <.Loc.394.1>:

    return t_init;
}
    5a44:	3c 40 c2 53 	mov	#21442,	r12	;#0x53c2
    5a48:	30 41       	ret			

00005a4a <recursive_cnt>:
{
    5a4a:	0e 4c       	mov	r12,	r14	;
    5a4c:	0f 4d       	mov	r13,	r15	;

00005a4e <.Loc.86.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5a4e:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005a52 <.LVL81>:
    5a52:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c

00005a56 <.LVL82>:
    if (0L != (x >>= 4))
    5a56:	12 c3       	clrc			
    5a58:	0f 10       	rrc	r15		;
    5a5a:	0e 10       	rrc	r14		;
    5a5c:	12 c3       	clrc			
    5a5e:	0f 10       	rrc	r15		;
    5a60:	0e 10       	rrc	r14		;
    5a62:	12 c3       	clrc			
    5a64:	0f 10       	rrc	r15		;
    5a66:	0e 10       	rrc	r14		;
    5a68:	12 c3       	clrc			
    5a6a:	0f 10       	rrc	r15		;
    5a6c:	0e 10       	rrc	r14		;

00005a6e <.LVL83>:
    5a6e:	0d 4e       	mov	r14,	r13	;
    5a70:	0d df       	bis	r15,	r13	;
    5a72:	0d 93       	cmp	#0,	r13	;r3 As==00
    5a74:	18 24       	jz	$+50     	;abs 0x5aa6
    5a76:	4b 43       	clr.b	r11		;

00005a78 <.L69>:
        cnt += recursive_cnt(x);
    5a78:	0b 5c       	add	r12,	r11	;

00005a7a <.Loc.86.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5a7a:	0c 4e       	mov	r14,	r12	;

00005a7c <.LVL84>:
    5a7c:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005a80 <.Loc.86.1>:
    5a80:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c

00005a84 <.LVL85>:
    if (0L != (x >>= 4))
    5a84:	12 c3       	clrc			
    5a86:	0f 10       	rrc	r15		;
    5a88:	0e 10       	rrc	r14		;
    5a8a:	12 c3       	clrc			
    5a8c:	0f 10       	rrc	r15		;
    5a8e:	0e 10       	rrc	r14		;
    5a90:	12 c3       	clrc			
    5a92:	0f 10       	rrc	r15		;
    5a94:	0e 10       	rrc	r14		;
    5a96:	12 c3       	clrc			
    5a98:	0f 10       	rrc	r15		;
    5a9a:	0e 10       	rrc	r14		;

00005a9c <.Loc.88.1>:
    5a9c:	0d 4e       	mov	r14,	r13	;
    5a9e:	0d df       	bis	r15,	r13	;
    5aa0:	0d 93       	cmp	#0,	r13	;r3 As==00
    5aa2:	ea 23       	jnz	$-42     	;abs 0x5a78
    5aa4:	0c 5b       	add	r11,	r12	;

00005aa6 <.L66>:
}
    5aa6:	30 41       	ret			

00005aa8 <non_recursive_cnt>:
{
    5aa8:	0e 4c       	mov	r12,	r14	;
    5aaa:	0f 4d       	mov	r13,	r15	;

00005aac <.Loc.96.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5aac:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005ab0 <.LVL89>:
    5ab0:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c

00005ab4 <.LVL90>:
    while (0L != (x >>= 4))
    5ab4:	12 c3       	clrc			
    5ab6:	0f 10       	rrc	r15		;
    5ab8:	0e 10       	rrc	r14		;
    5aba:	12 c3       	clrc			
    5abc:	0f 10       	rrc	r15		;
    5abe:	0e 10       	rrc	r14		;
    5ac0:	12 c3       	clrc			
    5ac2:	0f 10       	rrc	r15		;
    5ac4:	0e 10       	rrc	r14		;
    5ac6:	12 c3       	clrc			
    5ac8:	0f 10       	rrc	r15		;
    5aca:	0e 10       	rrc	r14		;

00005acc <.Loc.98.1>:
    5acc:	0d 4e       	mov	r14,	r13	;
    5ace:	0d df       	bis	r15,	r13	;
    5ad0:	0d 93       	cmp	#0,	r13	;r3 As==00
    5ad2:	16 24       	jz	$+46     	;abs 0x5b00

00005ad4 <.L77>:
        cnt += bits[(int)(x & 0x0000000FL)];
    5ad4:	0d 4e       	mov	r14,	r13	;
    5ad6:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

00005ada <.Loc.100.1>:
    5ada:	5d 4d 3c 45 	mov.b	17724(r13),r13	;0x0453c
    5ade:	0c 5d       	add	r13,	r12	;

00005ae0 <.Loc.98.1>:
    while (0L != (x >>= 4))
    5ae0:	12 c3       	clrc			
    5ae2:	0f 10       	rrc	r15		;
    5ae4:	0e 10       	rrc	r14		;
    5ae6:	12 c3       	clrc			
    5ae8:	0f 10       	rrc	r15		;
    5aea:	0e 10       	rrc	r14		;
    5aec:	12 c3       	clrc			
    5aee:	0f 10       	rrc	r15		;
    5af0:	0e 10       	rrc	r14		;
    5af2:	12 c3       	clrc			
    5af4:	0f 10       	rrc	r15		;
    5af6:	0e 10       	rrc	r14		;

00005af8 <.Loc.98.1>:
    5af8:	0d 4e       	mov	r14,	r13	;
    5afa:	0d df       	bis	r15,	r13	;
    5afc:	0d 93       	cmp	#0,	r13	;r3 As==00
    5afe:	ea 23       	jnz	$-42     	;abs 0x5ad4

00005b00 <.L74>:
}
    5b00:	30 41       	ret			

00005b02 <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    5b02:	b0 12 18 5c 	call	#23576		;#0x5c18
    5b06:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5b08:	01 20       	jnz	$+4      	;abs 0x5b0c

00005b0a <.Loc.120.1>:
    5b0a:	30 41       	ret			

00005b0c <.L87>:
    5b0c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5b0e:	3d 40 bc 53 	mov	#21436,	r13	;#0x53bc
    5b12:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5b16:	b0 12 88 5c 	call	#23688		;#0x5c88

00005b1a <.Loc.120.1>:
    5b1a:	30 41       	ret			

00005b1c <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS(pinCont);
    5b1c:	3c 40 10 45 	mov	#17680,	r12	;#0x4510
    5b20:	bc 40 42 53 	mov	#21314,	0(r12)	;#0x5342
    5b24:	00 00 

00005b26 <.Loc.397.1>:
    5b26:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b2a:	3d 50 42 53 	add	#21314,	r13	;#0x5342
    5b2e:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005b32 <.Loc.397.1>:
    __INK_SET_BUFFER_POINTERS(n_0);
    5b32:	bc 40 40 53 	mov	#21312,	2(r12)	;#0x5340
    5b36:	02 00 

00005b38 <.Loc.398.1>:
    5b38:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b3c:	3d 50 40 53 	add	#21312,	r13	;#0x5340
    5b40:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005b44 <.Loc.398.1>:
    __INK_SET_BUFFER_POINTERS(n_1);
    5b44:	bc 40 3e 53 	mov	#21310,	4(r12)	;#0x533e
    5b48:	04 00 

00005b4a <.Loc.399.1>:
    5b4a:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b4e:	3d 50 3e 53 	add	#21310,	r13	;#0x533e
    5b52:	8c 4d 1a 00 	mov	r13,	26(r12)	; 0x001a

00005b56 <.Loc.399.1>:
    __INK_SET_BUFFER_POINTERS(n_2);
    5b56:	bc 40 3c 53 	mov	#21308,	6(r12)	;#0x533c
    5b5a:	06 00 

00005b5c <.Loc.400.1>:
    5b5c:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b60:	3d 50 3c 53 	add	#21308,	r13	;#0x533c
    5b64:	8c 4d 1c 00 	mov	r13,	28(r12)	; 0x001c

00005b68 <.Loc.400.1>:
    __INK_SET_BUFFER_POINTERS(n_3);
    5b68:	bc 40 3a 53 	mov	#21306,	8(r12)	;#0x533a
    5b6c:	08 00 

00005b6e <.Loc.401.1>:
    5b6e:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b72:	3d 50 3a 53 	add	#21306,	r13	;#0x533a
    5b76:	8c 4d 1e 00 	mov	r13,	30(r12)	; 0x001e

00005b7a <.Loc.401.1>:
    __INK_SET_BUFFER_POINTERS(n_4);
    5b7a:	bc 40 38 53 	mov	#21304,	10(r12)	;#0x5338, 0x000a
    5b7e:	0a 00 

00005b80 <.Loc.402.1>:
    5b80:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b84:	3d 50 38 53 	add	#21304,	r13	;#0x5338
    5b88:	8c 4d 20 00 	mov	r13,	32(r12)	; 0x0020

00005b8c <.Loc.402.1>:
    __INK_SET_BUFFER_POINTERS(n_5);
    5b8c:	bc 40 36 53 	mov	#21302,	12(r12)	;#0x5336, 0x000c
    5b90:	0c 00 

00005b92 <.Loc.403.1>:
    5b92:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b96:	3d 50 36 53 	add	#21302,	r13	;#0x5336
    5b9a:	8c 4d 22 00 	mov	r13,	34(r12)	; 0x0022

00005b9e <.Loc.403.1>:
    __INK_SET_BUFFER_POINTERS(n_6);
    5b9e:	bc 40 34 53 	mov	#21300,	14(r12)	;#0x5334, 0x000e
    5ba2:	0e 00 

00005ba4 <.Loc.404.1>:
    5ba4:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5ba8:	3d 50 34 53 	add	#21300,	r13	;#0x5334
    5bac:	8c 4d 24 00 	mov	r13,	36(r12)	; 0x0024

00005bb0 <.Loc.404.1>:
    __INK_SET_BUFFER_POINTERS(function);
    5bb0:	bc 40 32 53 	mov	#21298,	16(r12)	;#0x5332, 0x0010
    5bb4:	10 00 

00005bb6 <.Loc.405.1>:
    5bb6:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bba:	3d 50 32 53 	add	#21298,	r13	;#0x5332
    5bbe:	8c 4d 26 00 	mov	r13,	38(r12)	; 0x0026

00005bc2 <.Loc.405.1>:
    __INK_SET_BUFFER_POINTERS(iteration);
    5bc2:	bc 40 30 53 	mov	#21296,	18(r12)	;#0x5330, 0x0012
    5bc6:	12 00 

00005bc8 <.Loc.406.1>:
    5bc8:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bcc:	3d 50 30 53 	add	#21296,	r13	;#0x5330
    5bd0:	8c 4d 28 00 	mov	r13,	40(r12)	; 0x0028

00005bd4 <.Loc.406.1>:
    __INK_SET_BUFFER_POINTERS(seed);
    5bd4:	bc 40 2c 53 	mov	#21292,	20(r12)	;#0x532c, 0x0014
    5bd8:	14 00 

00005bda <.Loc.407.1>:
    5bda:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5bde:	3d 50 2c 53 	add	#21292,	r13	;#0x532c
    5be2:	8c 4d 2a 00 	mov	r13,	42(r12)	; 0x002a

00005be6 <.Loc.407.1>:
}
    5be6:	30 41       	ret			

00005be8 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    5be8:	3c 50 18 00 	add	#24,	r12	;#0x0018

00005bec <.LVL1>:
    5bec:	30 41       	ret			

00005bee <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    5bee:	5c 42 58 52 	mov.b	&0x5258,r12	;0x5258
    5bf2:	30 41       	ret			

00005bf4 <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    5bf4:	0a 15       	pushm	#1,	r10	;16-bit words

00005bf6 <.LCFI0>:
    5bf6:	0a 4c       	mov	r12,	r10	;

00005bf8 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    5bf8:	3c 90 2c 53 	cmp	#21292,	r12	;#0x532c
    5bfc:	0a 28       	jnc	$+22     	;abs 0x5c12
    5bfe:	3c 90 44 53 	cmp	#21316,	r12	;#0x5344
    5c02:	07 2c       	jc	$+16     	;abs 0x5c12

00005c04 <.LBB14>:
    return address + buffer_offset * buffer_index;
    5c04:	5c 42 58 52 	mov.b	&0x5258,r12	;0x5258

00005c08 <.LVL5>:
    5c08:	3d 40 18 00 	mov	#24,	r13	;#0x0018

00005c0c <.LVL6>:
    5c0c:	b0 12 aa 77 	call	#30634		;#0x77aa

00005c10 <.LVL7>:
    5c10:	0a 5c       	add	r12,	r10	;

00005c12 <.L7>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    5c12:	0c 4a       	mov	r10,	r12	;
    5c14:	0a 17       	popm	#1,	r10	;16-bit words

00005c16 <.LCFI1>:
    5c16:	30 41       	ret			

00005c18 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    5c18:	5c 42 3e 46 	mov.b	&0x463e,r12	;0x463e
    5c1c:	30 41       	ret			

00005c1e <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    5c1e:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    5c22:	30 41       	ret			

00005c24 <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    5c24:	b0 12 5c 64 	call	#25692		;#0x645c

00005c28 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    5c28:	c2 93 3e 46 	cmp.b	#0,	&0x463e	;r3 As==00
    5c2c:	22 20       	jnz	$+70     	;abs 0x5c72

00005c2e <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    5c2e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c32 <.Loc.50.1>:
    5c32:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

00005c36 <.Loc.50.1>:
    5c36:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c3a <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    5c3a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c3e:	02 02 

00005c40 <.Loc.51.1>:
    5c40:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    5c44:	04 02 

00005c46 <.Loc.51.1>:
    5c46:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c4a:	02 02 

00005c4c <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    5c4c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c50:	22 02 

00005c52 <.Loc.52.1>:
    5c52:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    5c56:	24 02 

00005c58 <.Loc.52.1>:
    5c58:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c5c:	22 02 

00005c5e <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    5c5e:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c62:	22 02 

00005c64 <.Loc.53.1>:
    5c64:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    5c68:	24 02 

00005c6a <.Loc.53.1>:
    5c6a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c6e:	22 02 

00005c70 <.Loc.53.1>:
#endif
}
    5c70:	30 41       	ret			

00005c72 <.L6>:
        __scheduler_boot_init();
    5c72:	b0 12 b4 64 	call	#25780		;#0x64b4

00005c76 <.Loc.36.1>:
        __events_boot_init();
    5c76:	b0 12 e2 61 	call	#25058		;#0x61e2
    5c7a:	d9 3f       	jmp	$-76     	;abs 0x5c2e

00005c7c <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    5c7c:	c2 43 3e 46 	mov.b	#0,	&0x463e	;r3 As==00

00005c80 <.Loc.69.1>:
    __ink_initialized = true;
    5c80:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

00005c84 <.Loc.70.1>:
    5c84:	30 41       	ret			

00005c86 <.LFE3>:
	...

00005c88 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    5c88:	2a 15       	pushm	#3,	r10	;16-bit words

00005c8a <.LCFI0>:
    5c8a:	21 83       	decd	r1		;

00005c8c <.LCFI1>:
    5c8c:	4a 4c       	mov.b	r12,	r10	;
    5c8e:	09 4d       	mov	r13,	r9	;
    5c90:	48 4e       	mov.b	r14,	r8	;

00005c92 <.Loc.147.1>:
    if (!ink_is_first_boot())
    5c92:	b0 12 18 5c 	call	#23576		;#0x5c18

00005c96 <.LVL1>:
    5c96:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5c98:	56 24       	jz	$+174    	;abs 0x5d46

00005c9a <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    5c9a:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    5c9e:	4c 9a       	cmp.b	r10,	r12	;
    5ca0:	47 28       	jnc	$+144    	;abs 0x5d30
    5ca2:	0c 4a       	mov	r10,	r12	;
    5ca4:	5c 02       	rlam	#1,	r12	;
    5ca6:	3c 50 b0 5c 	add	#23728,	r12	;#0x5cb0
    5caa:	2c 4c       	mov	@r12,	r12	;
    5cac:	00 4c       	br	r12		;
	...

00005cb0 <.L6>:
    5cb0:	30 5d       	add	@r13+,	r0	;
    5cb2:	c8 61 b4 61 	addc.b	r1,	25012(r8); 0x61b4
    5cb6:	a0 61 8c 61 	addc	@r1,	0x618c	; PC rel. 0xbe44
    5cba:	78 61       	addc.b	@r1+,	r8	;
    5cbc:	64 61       	addc.b	@r1,	r4	;
    5cbe:	50 61 3c 61 	addc.b	24892(r1),r0	;0x0613c
    5cc2:	28 61       	addc	@r1,	r8	;
    5cc4:	16 61 04 61 	addc	24836(r1),r6	;0x06104
    5cc8:	f2 60 e0 60 	addc.b	#24800,	&0x60ce	;#0x60e0
    5ccc:	ce 60 
    5cce:	bc 60 aa 60 	addc	#24746,	24728(r12);#0x60aa, 0x6098
    5cd2:	98 60 
    5cd4:	86 60 74 60 	addc	r0,	24692(r6); 0x6074
    5cd8:	62 60       	addc.b	@r0,	r2	;
    5cda:	50 60 3e 60 	addc.b	0x603e,	r0	;PC rel. 0xbd1a
    5cde:	2c 60       	addc	@r0,	r12	;
    5ce0:	1a 60 08 60 	addc	0x6008,	r10	;PC rel. 0xbcea
    5ce4:	f6 5f e4 5f 	add.b	@r15+,	24548(r6); 0x5fe4
    5ce8:	d2 5f c0 5f 	add.b	24512(r15),&0x5fae	;0x05fc0
    5cec:	ae 5f 
    5cee:	9c 5f 8a 5f 	add	24458(r15),24440(r12);0x05f8a, 0x5f78
    5cf2:	78 5f 
    5cf4:	66 5f       	add.b	@r15,	r6	;
    5cf6:	54 5f 42 5f 	add.b	24386(r15),r4	;0x05f42
    5cfa:	30 5f       	add	@r15+,	r0	;
    5cfc:	1e 5f 0c 5f 	add	24332(r15),r14	;0x05f0c
    5d00:	fa 5e e8 5e 	add.b	@r14+,	24296(r10); 0x5ee8
    5d04:	d6 5e c4 5e 	add.b	24260(r14),24242(r6);0x05ec4, 0x5eb2
    5d08:	b2 5e 
    5d0a:	a0 5e 8e 5e 	add	@r14,	0x5e8e	; PC rel. 0xbb9a
    5d0e:	7c 5e       	add.b	@r14+,	r12	;
    5d10:	6a 5e       	add.b	@r14,	r10	;
    5d12:	58 5e 46 5e 	add.b	24134(r14),r8	;0x05e46
    5d16:	34 5e       	add	@r14+,	r4	;
    5d18:	22 5e       	add	@r14,	r2	;
    5d1a:	10 5e fe 5d 	add	24062(r14),r0	;0x05dfe
    5d1e:	ec 5d da 5d 	add.b	@r13,	24026(r12); 0x5dda
    5d22:	c8 5d b6 5d 	add.b	r13,	23990(r8); 0x5db6
    5d26:	a4 5d 92 5d 	add	@r13,	23954(r4); 0x5d92
    5d2a:	80 5d 6e 5d 	add	r13,	0x5d6e	; PC rel. 0xba9a
    5d2e:	
00005d30 <.L70>:
    if (!ink_is_first_boot())
    5d30:	4c 43       	clr.b	r12		;
    5d32:	4f 43       	clr.b	r15		;
    5d34:	4e 43       	clr.b	r14		;

00005d36 <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    5d36:	81 4c 00 00 	mov	r12,	0(r1)	;
    5d3a:	0d 49       	mov	r9,	r13	;
    5d3c:	4c 4a       	mov.b	r10,	r12	;

00005d3e <.LVL4>:
    5d3e:	b0 12 dc 64 	call	#25820		;#0x64dc

00005d42 <.LVL5>:

    if (start_on_first_boot)
    5d42:	08 93       	cmp	#0,	r8	;r3 As==00
    5d44:	03 20       	jnz	$+8      	;abs 0x5d4c

00005d46 <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
    5d46:	21 53       	incd	r1		;

00005d48 <.LCFI2>:
    5d48:	28 17       	popm	#3,	r10	;16-bit words

00005d4a <.LCFI3>:
    5d4a:	30 41       	ret			

00005d4c <.L75>:
        __start_thread(__get_thread(priority));
    5d4c:	4c 4a       	mov.b	r10,	r12	;
    5d4e:	b0 12 80 65 	call	#25984		;#0x6580
    5d52:	b0 12 64 65 	call	#25956		;#0x6564

00005d56 <.Loc.232.1>:
    5d56:	21 53       	incd	r1		;

00005d58 <.LCFI5>:
    5d58:	28 17       	popm	#3,	r10	;16-bit words

00005d5a <.LCFI6>:
    5d5a:	30 41       	ret			

00005d5c <.L5>:
        __INK_CREATE_THREAD_CASE(63)
    5d5c:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5d60:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d64 <.LVL9>:
    5d64:	3c 40 00 00 	mov	#0,	r12	;

00005d68 <.Loc.220.1>:
    5d68:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5d6c:	e4 3f       	jmp	$-54     	;abs 0x5d36

00005d6e <.L7>:
        __INK_CREATE_THREAD_CASE(62)
    5d6e:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5d72:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d76 <.LVL12>:
    5d76:	3c 40 00 00 	mov	#0,	r12	;

00005d7a <.Loc.219.1>:
    5d7a:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5d7e:	db 3f       	jmp	$-72     	;abs 0x5d36

00005d80 <.L8>:
        __INK_CREATE_THREAD_CASE(61)
    5d80:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5d84:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d88 <.LVL15>:
    5d88:	3c 40 00 00 	mov	#0,	r12	;

00005d8c <.Loc.218.1>:
    5d8c:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5d90:	d2 3f       	jmp	$-90     	;abs 0x5d36

00005d92 <.L9>:
        __INK_CREATE_THREAD_CASE(60)
    5d92:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5d96:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d9a <.LVL18>:
    5d9a:	3c 40 00 00 	mov	#0,	r12	;

00005d9e <.Loc.217.1>:
    5d9e:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5da2:	c9 3f       	jmp	$-108    	;abs 0x5d36

00005da4 <.L10>:
        __INK_CREATE_THREAD_CASE(59)
    5da4:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5da8:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dac <.LVL21>:
    5dac:	3c 40 00 00 	mov	#0,	r12	;

00005db0 <.Loc.216.1>:
    5db0:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5db4:	c0 3f       	jmp	$-126    	;abs 0x5d36

00005db6 <.L11>:
        __INK_CREATE_THREAD_CASE(58)
    5db6:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5dba:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dbe <.LVL24>:
    5dbe:	3c 40 00 00 	mov	#0,	r12	;

00005dc2 <.Loc.215.1>:
    5dc2:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5dc6:	b7 3f       	jmp	$-144    	;abs 0x5d36

00005dc8 <.L12>:
        __INK_CREATE_THREAD_CASE(57)
    5dc8:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5dcc:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dd0 <.LVL27>:
    5dd0:	3c 40 00 00 	mov	#0,	r12	;

00005dd4 <.Loc.214.1>:
    5dd4:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5dd8:	ae 3f       	jmp	$-162    	;abs 0x5d36

00005dda <.L13>:
        __INK_CREATE_THREAD_CASE(56)
    5dda:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5dde:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005de2 <.LVL30>:
    5de2:	3c 40 00 00 	mov	#0,	r12	;

00005de6 <.Loc.213.1>:
    5de6:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5dea:	a5 3f       	jmp	$-180    	;abs 0x5d36

00005dec <.L14>:
        __INK_CREATE_THREAD_CASE(55)
    5dec:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5df0:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005df4 <.LVL33>:
    5df4:	3c 40 00 00 	mov	#0,	r12	;

00005df8 <.Loc.212.1>:
    5df8:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5dfc:	9c 3f       	jmp	$-198    	;abs 0x5d36

00005dfe <.L15>:
        __INK_CREATE_THREAD_CASE(54)
    5dfe:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e02:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e06 <.LVL36>:
    5e06:	3c 40 00 00 	mov	#0,	r12	;

00005e0a <.Loc.211.1>:
    5e0a:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e0e:	93 3f       	jmp	$-216    	;abs 0x5d36

00005e10 <.L16>:
        __INK_CREATE_THREAD_CASE(53)
    5e10:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e14:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e18 <.LVL39>:
    5e18:	3c 40 00 00 	mov	#0,	r12	;

00005e1c <.Loc.210.1>:
    5e1c:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e20:	8a 3f       	jmp	$-234    	;abs 0x5d36

00005e22 <.L17>:
        __INK_CREATE_THREAD_CASE(52)
    5e22:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e26:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e2a <.LVL42>:
    5e2a:	3c 40 00 00 	mov	#0,	r12	;

00005e2e <.Loc.209.1>:
    5e2e:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e32:	81 3f       	jmp	$-252    	;abs 0x5d36

00005e34 <.L18>:
        __INK_CREATE_THREAD_CASE(51)
    5e34:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e38:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e3c <.LVL45>:
    5e3c:	3c 40 00 00 	mov	#0,	r12	;

00005e40 <.Loc.208.1>:
    5e40:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e44:	78 3f       	jmp	$-270    	;abs 0x5d36

00005e46 <.L19>:
        __INK_CREATE_THREAD_CASE(50)
    5e46:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e4a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e4e <.LVL48>:
    5e4e:	3c 40 00 00 	mov	#0,	r12	;

00005e52 <.Loc.207.1>:
    5e52:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e56:	6f 3f       	jmp	$-288    	;abs 0x5d36

00005e58 <.L20>:
        __INK_CREATE_THREAD_CASE(49)
    5e58:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e5c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e60 <.LVL51>:
    5e60:	3c 40 00 00 	mov	#0,	r12	;

00005e64 <.Loc.206.1>:
    5e64:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e68:	66 3f       	jmp	$-306    	;abs 0x5d36

00005e6a <.L21>:
        __INK_CREATE_THREAD_CASE(48)
    5e6a:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e6e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e72 <.LVL54>:
    5e72:	3c 40 00 00 	mov	#0,	r12	;

00005e76 <.Loc.205.1>:
    5e76:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e7a:	5d 3f       	jmp	$-324    	;abs 0x5d36

00005e7c <.L22>:
        __INK_CREATE_THREAD_CASE(47)
    5e7c:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e80:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e84 <.LVL57>:
    5e84:	3c 40 00 00 	mov	#0,	r12	;

00005e88 <.Loc.204.1>:
    5e88:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e8c:	54 3f       	jmp	$-342    	;abs 0x5d36

00005e8e <.L23>:
        __INK_CREATE_THREAD_CASE(46)
    5e8e:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5e92:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e96 <.LVL60>:
    5e96:	3c 40 00 00 	mov	#0,	r12	;

00005e9a <.Loc.203.1>:
    5e9a:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5e9e:	4b 3f       	jmp	$-360    	;abs 0x5d36

00005ea0 <.L24>:
        __INK_CREATE_THREAD_CASE(45)
    5ea0:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5ea4:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ea8 <.LVL63>:
    5ea8:	3c 40 00 00 	mov	#0,	r12	;

00005eac <.Loc.202.1>:
    5eac:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5eb0:	42 3f       	jmp	$-378    	;abs 0x5d36

00005eb2 <.L25>:
        __INK_CREATE_THREAD_CASE(44)
    5eb2:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5eb6:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005eba <.LVL66>:
    5eba:	3c 40 00 00 	mov	#0,	r12	;

00005ebe <.Loc.201.1>:
    5ebe:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5ec2:	39 3f       	jmp	$-396    	;abs 0x5d36

00005ec4 <.L26>:
        __INK_CREATE_THREAD_CASE(43)
    5ec4:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5ec8:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ecc <.LVL69>:
    5ecc:	3c 40 00 00 	mov	#0,	r12	;

00005ed0 <.Loc.200.1>:
    5ed0:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5ed4:	30 3f       	jmp	$-414    	;abs 0x5d36

00005ed6 <.L27>:
        __INK_CREATE_THREAD_CASE(42)
    5ed6:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5eda:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ede <.LVL72>:
    5ede:	3c 40 00 00 	mov	#0,	r12	;

00005ee2 <.Loc.199.1>:
    5ee2:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5ee6:	27 3f       	jmp	$-432    	;abs 0x5d36

00005ee8 <.L28>:
        __INK_CREATE_THREAD_CASE(41)
    5ee8:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5eec:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ef0 <.LVL75>:
    5ef0:	3c 40 00 00 	mov	#0,	r12	;

00005ef4 <.Loc.198.1>:
    5ef4:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5ef8:	1e 3f       	jmp	$-450    	;abs 0x5d36

00005efa <.L29>:
        __INK_CREATE_THREAD_CASE(40)
    5efa:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5efe:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f02 <.LVL78>:
    5f02:	3c 40 00 00 	mov	#0,	r12	;

00005f06 <.Loc.197.1>:
    5f06:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f0a:	15 3f       	jmp	$-468    	;abs 0x5d36

00005f0c <.L30>:
        __INK_CREATE_THREAD_CASE(39)
    5f0c:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f10:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f14 <.LVL81>:
    5f14:	3c 40 00 00 	mov	#0,	r12	;

00005f18 <.Loc.196.1>:
    5f18:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f1c:	0c 3f       	jmp	$-486    	;abs 0x5d36

00005f1e <.L31>:
        __INK_CREATE_THREAD_CASE(38)
    5f1e:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f22:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f26 <.LVL84>:
    5f26:	3c 40 00 00 	mov	#0,	r12	;

00005f2a <.Loc.195.1>:
    5f2a:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f2e:	03 3f       	jmp	$-504    	;abs 0x5d36

00005f30 <.L32>:
        __INK_CREATE_THREAD_CASE(37)
    5f30:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f34:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f38 <.LVL87>:
    5f38:	3c 40 00 00 	mov	#0,	r12	;

00005f3c <.Loc.194.1>:
    5f3c:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f40:	fa 3e       	jmp	$-522    	;abs 0x5d36

00005f42 <.L33>:
        __INK_CREATE_THREAD_CASE(36)
    5f42:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f46:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f4a <.LVL90>:
    5f4a:	3c 40 00 00 	mov	#0,	r12	;

00005f4e <.Loc.193.1>:
    5f4e:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f52:	f1 3e       	jmp	$-540    	;abs 0x5d36

00005f54 <.L34>:
        __INK_CREATE_THREAD_CASE(35)
    5f54:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f58:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f5c <.LVL93>:
    5f5c:	3c 40 00 00 	mov	#0,	r12	;

00005f60 <.Loc.192.1>:
    5f60:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f64:	e8 3e       	jmp	$-558    	;abs 0x5d36

00005f66 <.L35>:
        __INK_CREATE_THREAD_CASE(34)
    5f66:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f6a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f6e <.LVL96>:
    5f6e:	3c 40 00 00 	mov	#0,	r12	;

00005f72 <.Loc.191.1>:
    5f72:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f76:	df 3e       	jmp	$-576    	;abs 0x5d36

00005f78 <.L36>:
        __INK_CREATE_THREAD_CASE(33)
    5f78:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f7c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f80 <.LVL99>:
    5f80:	3c 40 00 00 	mov	#0,	r12	;

00005f84 <.Loc.190.1>:
    5f84:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f88:	d6 3e       	jmp	$-594    	;abs 0x5d36

00005f8a <.L37>:
        __INK_CREATE_THREAD_CASE(32)
    5f8a:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5f8e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f92 <.LVL102>:
    5f92:	3c 40 00 00 	mov	#0,	r12	;

00005f96 <.Loc.189.1>:
    5f96:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5f9a:	cd 3e       	jmp	$-612    	;abs 0x5d36

00005f9c <.L38>:
        __INK_CREATE_THREAD_CASE(31)
    5f9c:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5fa0:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fa4 <.LVL105>:
    5fa4:	3c 40 00 00 	mov	#0,	r12	;

00005fa8 <.Loc.188.1>:
    5fa8:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5fac:	c4 3e       	jmp	$-630    	;abs 0x5d36

00005fae <.L39>:
        __INK_CREATE_THREAD_CASE(30)
    5fae:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5fb2:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fb6 <.LVL108>:
    5fb6:	3c 40 00 00 	mov	#0,	r12	;

00005fba <.Loc.187.1>:
    5fba:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5fbe:	bb 3e       	jmp	$-648    	;abs 0x5d36

00005fc0 <.L40>:
        __INK_CREATE_THREAD_CASE(29)
    5fc0:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5fc4:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fc8 <.LVL111>:
    5fc8:	3c 40 00 00 	mov	#0,	r12	;

00005fcc <.Loc.186.1>:
    5fcc:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5fd0:	b2 3e       	jmp	$-666    	;abs 0x5d36

00005fd2 <.L41>:
        __INK_CREATE_THREAD_CASE(28)
    5fd2:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5fd6:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fda <.LVL114>:
    5fda:	3c 40 00 00 	mov	#0,	r12	;

00005fde <.Loc.185.1>:
    5fde:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5fe2:	a9 3e       	jmp	$-684    	;abs 0x5d36

00005fe4 <.L42>:
        __INK_CREATE_THREAD_CASE(27)
    5fe4:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5fe8:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fec <.LVL117>:
    5fec:	3c 40 00 00 	mov	#0,	r12	;

00005ff0 <.Loc.184.1>:
    5ff0:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    5ff4:	a0 3e       	jmp	$-702    	;abs 0x5d36

00005ff6 <.L43>:
        __INK_CREATE_THREAD_CASE(26)
    5ff6:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    5ffa:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ffe <.LVL120>:
    5ffe:	3c 40 00 00 	mov	#0,	r12	;

00006002 <.Loc.183.1>:
    6002:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    6006:	97 3e       	jmp	$-720    	;abs 0x5d36

00006008 <.L44>:
        __INK_CREATE_THREAD_CASE(25)
    6008:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    600c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006010 <.LVL123>:
    6010:	3c 40 00 00 	mov	#0,	r12	;

00006014 <.Loc.182.1>:
    6014:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    6018:	8e 3e       	jmp	$-738    	;abs 0x5d36

0000601a <.L45>:
        __INK_CREATE_THREAD_CASE(24)
    601a:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    601e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006022 <.LVL126>:
    6022:	3c 40 00 00 	mov	#0,	r12	;

00006026 <.Loc.181.1>:
    6026:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    602a:	85 3e       	jmp	$-756    	;abs 0x5d36

0000602c <.L46>:
        __INK_CREATE_THREAD_CASE(23)
    602c:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    6030:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006034 <.LVL129>:
    6034:	3c 40 00 00 	mov	#0,	r12	;

00006038 <.Loc.180.1>:
    6038:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    603c:	7c 3e       	jmp	$-774    	;abs 0x5d36

0000603e <.L47>:
        __INK_CREATE_THREAD_CASE(22)
    603e:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    6042:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006046 <.LVL132>:
    6046:	3c 40 00 00 	mov	#0,	r12	;

0000604a <.Loc.179.1>:
    604a:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    604e:	73 3e       	jmp	$-792    	;abs 0x5d36

00006050 <.L48>:
        __INK_CREATE_THREAD_CASE(21)
    6050:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    6054:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006058 <.LVL135>:
    6058:	3c 40 00 00 	mov	#0,	r12	;

0000605c <.Loc.178.1>:
    605c:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    6060:	6a 3e       	jmp	$-810    	;abs 0x5d36

00006062 <.L49>:
        __INK_CREATE_THREAD_CASE(20)
    6062:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    6066:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000606a <.LVL138>:
    606a:	3c 40 00 00 	mov	#0,	r12	;

0000606e <.Loc.177.1>:
    606e:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    6072:	61 3e       	jmp	$-828    	;abs 0x5d36

00006074 <.L50>:
        __INK_CREATE_THREAD_CASE(19)
    6074:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    6078:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000607c <.LVL141>:
    607c:	3c 40 00 00 	mov	#0,	r12	;

00006080 <.Loc.176.1>:
    6080:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    6084:	58 3e       	jmp	$-846    	;abs 0x5d36

00006086 <.L51>:
        __INK_CREATE_THREAD_CASE(18)
    6086:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    608a:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000608e <.LVL144>:
    608e:	3c 40 00 00 	mov	#0,	r12	;

00006092 <.Loc.175.1>:
    6092:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    6096:	4f 3e       	jmp	$-864    	;abs 0x5d36

00006098 <.L52>:
        __INK_CREATE_THREAD_CASE(17)
    6098:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    609c:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060a0 <.LVL147>:
    60a0:	3c 40 00 00 	mov	#0,	r12	;

000060a4 <.Loc.174.1>:
    60a4:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    60a8:	46 3e       	jmp	$-882    	;abs 0x5d36

000060aa <.L53>:
        __INK_CREATE_THREAD_CASE(16)
    60aa:	3f 40 44 53 	mov	#21316,	r15	;#0x5344
    60ae:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060b2 <.LVL150>:
    60b2:	3c 40 00 00 	mov	#0,	r12	;

000060b6 <.Loc.173.1>:
    60b6:	3e 40 44 53 	mov	#21316,	r14	;#0x5344
    60ba:	3d 3e       	jmp	$-900    	;abs 0x5d36

000060bc <.L54>:
        __INK_CREATE_THREAD_CASE(15)
    60bc:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    60c0:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060c4 <.LVL153>:
    60c4:	3c 40 18 00 	mov	#24,	r12	;#0x0018

000060c8 <.Loc.172.1>:
    60c8:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    60cc:	34 3e       	jmp	$-918    	;abs 0x5d36

000060ce <.L55>:
        __INK_CREATE_THREAD_CASE(14)
    60ce:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    60d2:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060d6 <.LVL156>:
    60d6:	3c 40 00 00 	mov	#0,	r12	;

000060da <.Loc.171.1>:
    60da:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    60de:	2b 3e       	jmp	$-936    	;abs 0x5d36

000060e0 <.L56>:
        __INK_CREATE_THREAD_CASE(13)
    60e0:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    60e4:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060e8 <.LVL159>:
    60e8:	3c 40 00 00 	mov	#0,	r12	;

000060ec <.Loc.170.1>:
    60ec:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    60f0:	22 3e       	jmp	$-954    	;abs 0x5d36

000060f2 <.L57>:
        __INK_CREATE_THREAD_CASE(12)
    60f2:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    60f6:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060fa <.LVL162>:
    60fa:	3c 40 00 00 	mov	#0,	r12	;

000060fe <.Loc.169.1>:
    60fe:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6102:	19 3e       	jmp	$-972    	;abs 0x5d36

00006104 <.L58>:
        __INK_CREATE_THREAD_CASE(11)
    6104:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    6108:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000610c <.LVL165>:
    610c:	3c 40 00 00 	mov	#0,	r12	;

00006110 <.Loc.168.1>:
    6110:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6114:	10 3e       	jmp	$-990    	;abs 0x5d36

00006116 <.L59>:
        __INK_CREATE_THREAD_CASE(10)
    6116:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    611a:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000611e <.LVL168>:
    611e:	3c 40 00 00 	mov	#0,	r12	;

00006122 <.Loc.167.1>:
    6122:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6126:	07 3e       	jmp	$-1008   	;abs 0x5d36

00006128 <.L60>:
        __INK_CREATE_THREAD_CASE(9)
    6128:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    612c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006130 <.LVL171>:
    6130:	3c 40 00 00 	mov	#0,	r12	;

00006134 <.Loc.166.1>:
    6134:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6138:	30 40 36 5d 	br	#0x5d36		;

0000613c <.L61>:
        __INK_CREATE_THREAD_CASE(8)
    613c:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    6140:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006144 <.LVL174>:
    6144:	3c 40 00 00 	mov	#0,	r12	;

00006148 <.Loc.165.1>:
    6148:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    614c:	30 40 36 5d 	br	#0x5d36		;

00006150 <.L62>:
        __INK_CREATE_THREAD_CASE(7)
    6150:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    6154:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006158 <.LVL177>:
    6158:	3c 40 00 00 	mov	#0,	r12	;

0000615c <.Loc.164.1>:
    615c:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6160:	30 40 36 5d 	br	#0x5d36		;

00006164 <.L63>:
        __INK_CREATE_THREAD_CASE(6)
    6164:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    6168:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000616c <.LVL180>:
    616c:	3c 40 00 00 	mov	#0,	r12	;

00006170 <.Loc.163.1>:
    6170:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6174:	30 40 36 5d 	br	#0x5d36		;

00006178 <.L64>:
        __INK_CREATE_THREAD_CASE(5)
    6178:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    617c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006180 <.LVL183>:
    6180:	3c 40 00 00 	mov	#0,	r12	;

00006184 <.Loc.162.1>:
    6184:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    6188:	30 40 36 5d 	br	#0x5d36		;

0000618c <.L65>:
        __INK_CREATE_THREAD_CASE(4)
    618c:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    6190:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006194 <.LVL186>:
    6194:	3c 40 00 00 	mov	#0,	r12	;

00006198 <.Loc.161.1>:
    6198:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    619c:	30 40 36 5d 	br	#0x5d36		;

000061a0 <.L66>:
        __INK_CREATE_THREAD_CASE(3)
    61a0:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    61a4:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061a8 <.LVL189>:
    61a8:	3c 40 00 00 	mov	#0,	r12	;

000061ac <.Loc.160.1>:
    61ac:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    61b0:	30 40 36 5d 	br	#0x5d36		;

000061b4 <.L67>:
        __INK_CREATE_THREAD_CASE(2)
    61b4:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    61b8:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061bc <.LVL192>:
    61bc:	3c 40 00 00 	mov	#0,	r12	;

000061c0 <.Loc.159.1>:
    61c0:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    61c4:	30 40 36 5d 	br	#0x5d36		;

000061c8 <.L68>:
        __INK_CREATE_THREAD_CASE(1)
    61c8:	3f 40 2c 53 	mov	#21292,	r15	;#0x532c
    61cc:	3f 50 18 00 	add	#24,	r15	;#0x0018

000061d0 <.LVL195>:
    61d0:	3c 40 00 00 	mov	#0,	r12	;

000061d4 <.Loc.158.1>:
    61d4:	3e 40 2c 53 	mov	#21292,	r14	;#0x532c
    61d8:	30 40 36 5d 	br	#0x5d36		;

000061dc <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    61dc:	b0 12 96 65 	call	#26006		;#0x6596

000061e0 <.Loc.7.1>:
}
    61e0:	30 41       	ret			

000061e2 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    61e2:	1a 15       	pushm	#2,	r10	;16-bit words

000061e4 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    61e4:	3a 40 c0 4b 	mov	#19392,	r10	;#0x4bc0
    61e8:	39 40 c0 46 	mov	#18112,	r9	;#0x46c0

000061ec <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    61ec:	0c 4a       	mov	r10,	r12	;
    61ee:	b0 12 88 63 	call	#25480		;#0x6388

000061f2 <.Loc.27.1>:
        _popped[i] = NULL;
    61f2:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

000061f6 <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    61f6:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    61fa:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000061fe <.Loc.24.1>:
    61fe:	3a 90 c0 46 	cmp	#18112,	r10	;#0x46c0
    6202:	f4 23       	jnz	$-22     	;abs 0x61ec

00006204 <.Loc.29.1>:
    }
}
    6204:	19 17       	popm	#2,	r10	;16-bit words

00006206 <.LCFI1>:
    6206:	30 41       	ret			

00006208 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    6208:	5c 42 c8 4b 	mov.b	&0x4bc8,r12	;0x4bc8
    620c:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    620e:	14 24       	jz	$+42     	;abs 0x6238
    6210:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6212:	1f 24       	jz	$+64     	;abs 0x6252
    6214:	0c 93       	cmp	#0,	r12	;r3 As==00
    6216:	01 24       	jz	$+4      	;abs 0x621a

00006218 <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    6218:	30 41       	ret			

0000621a <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    621a:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

0000621e <.Loc.37.1>:
    621e:	6c 4d       	mov.b	@r13,	r12	;
    6220:	5c 06       	rlam	#2,	r12	;
    6222:	6d 4d       	mov.b	@r13,	r13	;
    6224:	0c 5d       	add	r13,	r12	;
    6226:	5c 06       	rlam	#2,	r12	;
    6228:	3d 40 c0 4b 	mov	#19392,	r13	;#0x4bc0
    622c:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6230:	b0 12 e4 63 	call	#25572		;#0x63e4

00006234 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    6234:	d2 43 c8 4b 	mov.b	#1,	&0x4bc8	;r3 As==01

00006238 <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    6238:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

0000623c <.Loc.40.1>:
    623c:	6c 4d       	mov.b	@r13,	r12	;
    623e:	5c 06       	rlam	#2,	r12	;
    6240:	6d 4d       	mov.b	@r13,	r13	;
    6242:	0c 5d       	add	r13,	r12	;
    6244:	5c 06       	rlam	#2,	r12	;
    6246:	
00006248 <L0^A>:
    6248:	c0 46 b0 12 	mov.b	r6,	0x12b0	; PC rel. 0x74fa
    624c:	
0000624e <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    624e:	e2 43 c8 4b 	mov.b	#2,	&0x4bc8	;r3 As==10

00006252 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    6252:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    6256:	1c 4c 02 00 	mov	2(r12),	r12	;

0000625a <.Loc.44.1>:
    625a:	3c 92       	cmp	#8,	r12	;r2 As==11
    625c:	04 24       	jz	$+10     	;abs 0x6266

0000625e <.L9>:
        _status = EVENT_DONE;
    625e:	f2 40 03 00 	mov.b	#3,	&0x4bc8	;
    6262:	c8 4b 

00006264 <.Loc.51.1>:
}
    6264:	30 41       	ret			

00006266 <.L17>:
            __disable_interrupt();
    6266:	32 c2       	dint			
    6268:	03 43       	nop			

0000626a <.Loc.46.1>:
            __start_thread(_thread);
    626a:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    626e:	b0 12 64 65 	call	#25956		;#0x6564

00006272 <.Loc.47.1>:
            __enable_interrupt();
    6272:	03 43       	nop			
    6274:	32 d2       	eint			
    6276:	03 43       	nop			
    6278:	f2 3f       	jmp	$-26     	;abs 0x625e

0000627a <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    627a:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

0000627e <.Loc.55.1>:
    627e:	6c 4d       	mov.b	@r13,	r12	;

00006280 <.LVL7>:
    6280:	5c 06       	rlam	#2,	r12	;
    6282:	6d 4d       	mov.b	@r13,	r13	;
    6284:	0c 5d       	add	r13,	r12	;
    6286:	5c 06       	rlam	#2,	r12	;
    6288:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    628c:	b0 12 b8 63 	call	#25528		;#0x63b8

00006290 <.Loc.56.1>:
}
    6290:	30 41       	ret			

00006292 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6292:	82 4c c6 4b 	mov	r12,	&0x4bc6	;

00006296 <.Loc.64.1>:
    _event = *event;
    6296:	a2 4d c0 4b 	mov	@r13,	&0x4bc0	;
    629a:	92 4d 02 00 	mov	2(r13),	&0x4bc2	;
    629e:	c2 4b 
    62a0:	92 4d 04 00 	mov	4(r13),	&0x4bc4	;
    62a4:	c4 4b 

000062a6 <.Loc.65.1>:
    _status = EVENT_INSERT;
    62a6:	c2 43 c8 4b 	mov.b	#0,	&0x4bc8	;r3 As==00

000062aa <.LBB4>:
    switch(_status){
    62aa:	5d 42 c8 4b 	mov.b	&0x4bc8,r13	;0x4bc8

000062ae <.LVL10>:
    62ae:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    62b0:	14 24       	jz	$+42     	;abs 0x62da
    62b2:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    62b4:	1f 24       	jz	$+64     	;abs 0x62f4
    62b6:	0d 93       	cmp	#0,	r13	;r3 As==00
    62b8:	01 24       	jz	$+4      	;abs 0x62bc

000062ba <.LBE4>:
    __events_commit();
}
    62ba:	30 41       	ret			

000062bc <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    62bc:	6d 4c       	mov.b	@r12,	r13	;
    62be:	5d 06       	rlam	#2,	r13	;
    62c0:	6c 4c       	mov.b	@r12,	r12	;

000062c2 <.LVL11>:
    62c2:	0c 5d       	add	r13,	r12	;
    62c4:	5c 06       	rlam	#2,	r12	;
    62c6:	3d 40 c0 4b 	mov	#19392,	r13	;#0x4bc0
    62ca:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    62ce:	b0 12 e4 63 	call	#25572		;#0x63e4

000062d2 <.LVL12>:
        _status = EVENT_COMMIT;
    62d2:	d2 43 c8 4b 	mov.b	#1,	&0x4bc8	;r3 As==01
    62d6:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6

000062da <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    62da:	6d 4c       	mov.b	@r12,	r13	;
    62dc:	5d 06       	rlam	#2,	r13	;
    62de:	6c 4c       	mov.b	@r12,	r12	;
    62e0:	0c 5d       	add	r13,	r12	;
    62e2:	5c 06       	rlam	#2,	r12	;
    62e4:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    62e8:	b0 12 1a 64 	call	#25626		;#0x641a

000062ec <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    62ec:	e2 43 c8 4b 	mov.b	#2,	&0x4bc8	;r3 As==10
    62f0:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6

000062f4 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    62f4:	1c 4c 02 00 	mov	2(r12),	r12	;

000062f8 <.Loc.44.1>:
    62f8:	3c 92       	cmp	#8,	r12	;r2 As==11
    62fa:	04 24       	jz	$+10     	;abs 0x6304

000062fc <.L23>:
        _status = EVENT_DONE;
    62fc:	f2 40 03 00 	mov.b	#3,	&0x4bc8	;
    6300:	c8 4b 

00006302 <.Loc.67.1>:
}
    6302:	30 41       	ret			

00006304 <.L31>:
            __disable_interrupt();
    6304:	32 c2       	dint			
    6306:	03 43       	nop			

00006308 <.Loc.46.1>:
            __start_thread(_thread);
    6308:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    630c:	b0 12 64 65 	call	#25956		;#0x6564

00006310 <.Loc.47.1>:
            __enable_interrupt();
    6310:	03 43       	nop			
    6312:	32 d2       	eint			
    6314:	03 43       	nop			
    6316:	f2 3f       	jmp	$-26     	;abs 0x62fc

00006318 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    6318:	6d 4c       	mov.b	@r12,	r13	;
    631a:	5d 06       	rlam	#2,	r13	;
    631c:	6c 4c       	mov.b	@r12,	r12	;

0000631e <.LVL16>:
    631e:	0c 5d       	add	r13,	r12	;
    6320:	5c 06       	rlam	#2,	r12	;
    6322:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6326:	b0 12 a2 63 	call	#25506		;#0x63a2
    632a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000632e <.Loc.71.1>:
    632e:	3c 53       	add	#-1,	r12	;r3 As==11

00006330 <.Loc.75.1>:
        return 0;

    return 1;
}
    6330:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6334:	30 41       	ret			

00006336 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    6336:	0a 15       	pushm	#1,	r10	;16-bit words

00006338 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    6338:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6

0000633c <.LVL19>:
    633c:	6a 4c       	mov.b	@r12,	r10	;

0000633e <.Loc.81.1>:
    633e:	0c 4a       	mov	r10,	r12	;
    6340:	5c 06       	rlam	#2,	r12	;
    6342:	0c 5a       	add	r10,	r12	;
    6344:	5c 06       	rlam	#2,	r12	;
    6346:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    634a:	b0 12 22 64 	call	#25634		;#0x6422

0000634e <.Loc.81.1>:
    634e:	5a 02       	rlam	#1,	r10	;
    6350:	8a 4c 40 46 	mov	r12,	17984(r10); 0x4640

00006354 <.Loc.82.1>:
    return _popped[_thread->priority];
    6354:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    6358:	6c 4c       	mov.b	@r12,	r12	;
    635a:	5c 02       	rlam	#1,	r12	;

0000635c <.Loc.83.1>:
}
    635c:	1c 4c 40 46 	mov	17984(r12),r12	;0x04640
    6360:	0a 17       	popm	#1,	r10	;16-bit words

00006362 <.LCFI3>:
    6362:	30 41       	ret			

00006364 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    6364:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

00006368 <.Loc.87.1>:
    6368:	6c 4d       	mov.b	@r13,	r12	;

0000636a <.LVL22>:
    636a:	5c 06       	rlam	#2,	r12	;
    636c:	6d 4d       	mov.b	@r13,	r13	;
    636e:	0c 5d       	add	r13,	r12	;
    6370:	5c 06       	rlam	#2,	r12	;
    6372:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6376:	b0 12 54 64 	call	#25684		;#0x6454

0000637a <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    637a:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    637e:	6c 4c       	mov.b	@r12,	r12	;
    6380:	5c 02       	rlam	#1,	r12	;
    6382:	8c 43 40 46 	mov	#0,	17984(r12);r3 As==00, 0x4640

00006386 <.Loc.89.1>:
}
    6386:	30 41       	ret			

00006388 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    6388:	
0000638c <L0^A>:
    638c:	10 00       	bra	@r0+		;

0000638e <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    638e:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    6392:	11 00 

00006394 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    6394:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    6398:	12 00 

0000639a <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    639a:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    639e:	13 00 

000063a0 <.Loc.10.1>:
}
    63a0:	30 41       	ret			

000063a2 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    63a2:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    63a6:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    63aa:	4c 4d       	mov.b	r13,	r12	;

000063ac <.LVL2>:
    63ac:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    63b0:	3c 53       	add	#-1,	r12	;r3 As==11

000063b2 <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    63b2:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    63b6:	30 41       	ret			

000063b8 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    63b8:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    63bc:	5d 53       	inc.b	r13		;
    63be:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

000063c2 <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    63c2:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    63c6:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    63c8:	02 20       	jnz	$+6      	;abs 0x63ce

000063ca <.Loc.25.1>:
        queue->__tail = 0;
    63ca:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

000063ce <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    63ce:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    63d2:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    63d6:	4c 4d       	mov.b	r13,	r12	;

000063d8 <.LVL4>:
    63d8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    63dc:	3c 53       	add	#-1,	r12	;r3 As==11

000063de <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    63de:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    63e2:	30 41       	ret			

000063e4 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    63e4:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    63e8:	5e 53       	inc.b	r14		;
    63ea:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

000063ee <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    63ee:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    63f2:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    63f4:	02 20       	jnz	$+6      	;abs 0x63fa

000063f6 <.Loc.40.1>:
        queue->__tail = 0;
    63f6:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

000063fa <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    63fa:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

000063fe <.Loc.44.1>:
    63fe:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006402 <.Loc.44.1>:
    6402:	0f 9e       	cmp	r14,	r15	;
    6404:	08 24       	jz	$+18     	;abs 0x6416

00006406 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6406:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000640a <.Loc.49.1>:
    640a:	5e 02       	rlam	#1,	r14	;
    640c:	0c 5e       	add	r14,	r12	;

0000640e <.LVL6>:
    640e:	8c 4d 00 00 	mov	r13,	0(r12)	;

00006412 <.Loc.51.1>:

    return 1;
    6412:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006414 <.Loc.52.1>:
}
    6414:	30 41       	ret			

00006416 <.L9>:
        return 0;
    6416:	4c 43       	clr.b	r12		;

00006418 <.LVL8>:
}
    6418:	30 41       	ret			

0000641a <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    641a:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    641e:	11 00 

00006420 <.Loc.59.1>:
}
    6420:	30 41       	ret			

00006422 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6422:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006426 <.Loc.63.1>:
    6426:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

0000642a <.Loc.63.1>:
    642a:	0e 9d       	cmp	r13,	r14	;
    642c:	11 24       	jz	$+36     	;abs 0x6450

0000642e <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    642e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6432:	5d 53       	inc.b	r13		;
    6434:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00006438 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    6438:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    643c:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    643e:	02 20       	jnz	$+6      	;abs 0x6444

00006440 <.Loc.70.1>:
        queue->__head = 0;
    6440:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00006444 <.L13>:

    return queue->_items[queue->_head];
    6444:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00006448 <.Loc.72.1>:
    6448:	5d 02       	rlam	#1,	r13	;
    644a:	0c 5d       	add	r13,	r12	;

0000644c <.LVL11>:
    644c:	2c 4c       	mov	@r12,	r12	;

0000644e <.Loc.73.1>:
}
    644e:	30 41       	ret			

00006450 <.L14>:
        return NULL;
    6450:	4c 43       	clr.b	r12		;

00006452 <.LVL13>:
}
    6452:	30 41       	ret			

00006454 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    6454:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6458:	10 00 

0000645a <.Loc.79.1>:
}
    645a:	30 41       	ret			

0000645c <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    645c:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6460:	40 01 

00006462 <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    6462:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6466:	41 01 

00006468 <.Loc.13.1>:
}
    6468:	30 41       	ret			

0000646a <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    646a:	0a 15       	pushm	#1,	r10	;16-bit words

0000646c <.LCFI0>:
    646c:	21 82       	sub	#4,	r1	;r2 As==10

0000646e <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    646e:	0a 4c       	mov	r12,	r10	;
    6470:	0b 43       	clr	r11		;
    6472:	81 4a 00 00 	mov	r10,	0(r1)	;
    6476:	81 4b 02 00 	mov	r11,	2(r1)	;

0000647a <.Loc.20.1>:
    647a:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

0000647e <.LVL1>:
    647e:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6482:	00 00 

00006484 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    6484:	0a 4d       	mov	r13,	r10	;
    6486:	0b 43       	clr	r11		;

00006488 <.LVL2>:
    6488:	81 4a 00 00 	mov	r10,	0(r1)	;
    648c:	81 4b 02 00 	mov	r11,	2(r1)	;

00006490 <.Loc.21.1>:
    6490:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    6494:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6498:	00 00 

0000649a <.LBE3>:
    DMA0SZ = size;                          // Block size
    649a:	82 4e 1a 05 	mov	r14,	&0x051a	;

0000649e <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    649e:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    64a2:	10 05 

000064a4 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    64a4:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    64a8:	10 05 

000064aa <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    64aa:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

000064ae <.Loc.29.1>:
}
    64ae:	21 52       	add	#4,	r1	;r2 As==10

000064b0 <.LCFI2>:
    64b0:	0a 17       	popm	#1,	r10	;16-bit words

000064b2 <.LCFI3>:
    64b2:	30 41       	ret			

000064b4 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    64b4:	3c 40 ce 4b 	mov	#19406,	r12	;#0x4bce
    64b8:	b0 12 36 72 	call	#29238		;#0x7236

000064bc <.Loc.54.1>:
    64bc:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

000064c0 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    64c0:	0c 4d       	mov	r13,	r12	;
    64c2:	5c 02       	rlam	#1,	r12	;
    64c4:	0c 5d       	add	r13,	r12	;
    64c6:	5c 06       	rlam	#2,	r12	;
    64c8:	0c 5d       	add	r13,	r12	;
    64ca:	5c 02       	rlam	#1,	r12	;
    64cc:	1c 4c da 4b 	mov	19418(r12),r12	;0x04bda

000064d0 <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    64d0:	3d 53       	add	#-1,	r13	;r3 As==11

000064d2 <.Loc.56.1>:
    64d2:	0d 93       	cmp	#0,	r13	;r3 As==00
    64d4:	f5 23       	jnz	$-20     	;abs 0x64c0

000064d6 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    64d6:	c2 43 ca 4b 	mov.b	#0,	&0x4bca	;r3 As==00

000064da <.Loc.61.1>:
}
    64da:	30 41       	ret			

000064dc <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    64dc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064e0 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    64e0:	0b 4c       	mov	r12,	r11	;
    64e2:	5b 02       	rlam	#1,	r11	;
    64e4:	0b 5c       	add	r12,	r11	;
    64e6:	5b 06       	rlam	#2,	r11	;
    64e8:	0b 5c       	add	r12,	r11	;
    64ea:	5b 02       	rlam	#1,	r11	;
    64ec:	cb 4c d8 4b 	mov.b	r12,	19416(r11); 0x4bd8

000064f0 <.Loc.69.1>:
    _threads[priority].entry = entry;
    64f0:	8b 4d dc 4b 	mov	r13,	19420(r11); 0x4bdc

000064f4 <.Loc.70.1>:
    _threads[priority].next = entry;
    64f4:	8b 4d e0 4b 	mov	r13,	19424(r11); 0x4be0

000064f8 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    64f8:	bb 42 da 4b 	mov	#8,	19418(r11);r2 As==11, 0x4bda

000064fc <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    64fc:	8b 4e e2 4b 	mov	r14,	19426(r11); 0x4be2

00006500 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    6500:	8b 4f e4 4b 	mov	r15,	19428(r11); 0x4be4

00006504 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    6504:	cb 43 e6 4b 	mov.b	#0,	19430(r11);r3 As==00, 0x4be6

00006508 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    6508:	9b 41 02 00 	mov	2(r1),	19432(r11); 0x4be8
    650c:	e8 4b 

0000650e <.Loc.78.1>:
}
    650e:	30 41       	ret			

00006510 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    6510:	0a 15       	pushm	#1,	r10	;16-bit words

00006512 <.LCFI0>:
    6512:	0a 4c       	mov	r12,	r10	;

00006514 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    6514:	3d 40 ce 4b 	mov	#19406,	r13	;#0x4bce
    6518:	6c 4c       	mov.b	@r12,	r12	;

0000651a <.LVL6>:
    651a:	b0 12 7c 72 	call	#29308		;#0x727c

0000651e <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    651e:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006522 <.Loc.84.1>:
}
    6522:	0a 17       	popm	#1,	r10	;16-bit words

00006524 <.LCFI1>:
    6524:	30 41       	ret			

00006526 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    6526:	0a 15       	pushm	#1,	r10	;16-bit words

00006528 <.LCFI2>:
    6528:	0a 4c       	mov	r12,	r10	;

0000652a <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    652a:	3d 40 ce 4b 	mov	#19406,	r13	;#0x4bce
    652e:	6c 4c       	mov.b	@r12,	r12	;

00006530 <.LVL9>:
    6530:	b0 12 7c 72 	call	#29308		;#0x727c

00006534 <.Loc.89.1>:
    thread->next = NULL;
    6534:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00006538 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    6538:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000653c <.Loc.91.1>:
}
    653c:	0a 17       	popm	#1,	r10	;16-bit words

0000653e <.LCFI3>:
    653e:	30 41       	ret			

00006540 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    6540:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00006544 <.Loc.95.1>:
    return;
}
    6544:	30 41       	ret			

00006546 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    6546:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000654a <.Loc.101.1>:
    return;
}
    654a:	30 41       	ret			

0000654c <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    654c:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00006550 <.Loc.107.1>:
    return;
}
    6550:	30 41       	ret			

00006552 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    6552:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00006556 <.Loc.112.1>:
    return;
}
    6556:	30 41       	ret			

00006558 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    6558:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

0000655c <.LVL16>:
    655c:	30 41       	ret			

0000655e <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    655e:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00006562 <.LVL18>:
    6562:	30 41       	ret			

00006564 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    6564:	0a 15       	pushm	#1,	r10	;16-bit words

00006566 <.LCFI4>:
    6566:	0a 4c       	mov	r12,	r10	;

00006568 <.Loc.125.1>:
    thread->next = thread->entry;
    6568:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    656c:	08 00 

0000656e <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    656e:	3d 40 ce 4b 	mov	#19406,	r13	;#0x4bce
    6572:	6c 4c       	mov.b	@r12,	r12	;

00006574 <.LVL20>:
    6574:	b0 12 5c 72 	call	#29276		;#0x725c

00006578 <.Loc.127.1>:
    thread->state = TASK_READY;
    6578:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000657c <.Loc.128.1>:
}
    657c:	0a 17       	popm	#1,	r10	;16-bit words

0000657e <.LCFI5>:
    657e:	30 41       	ret			

00006580 <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    6580:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006584 <.Loc.140.1>:
    return &_threads[priority];
    6584:	0d 4c       	mov	r12,	r13	;
    6586:	5d 02       	rlam	#1,	r13	;
    6588:	0d 5c       	add	r12,	r13	;
    658a:	5d 06       	rlam	#2,	r13	;
    658c:	0c 5d       	add	r13,	r12	;

0000658e <.LVL23>:
    658e:	5c 02       	rlam	#1,	r12	;

00006590 <.Loc.141.1>:
}
    6590:	3c 50 d8 4b 	add	#19416,	r12	;#0x4bd8
    6594:	30 41       	ret			

00006596 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    6596:	32 c2       	dint			
    6598:	03 43       	nop			

0000659a <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    659a:	b0 12 08 62 	call	#25096		;#0x6208

0000659e <.LBB8>:
    if(_thread){
    659e:	82 93 cc 4b 	cmp	#0,	&0x4bcc	;r3 As==00
    65a2:	04 24       	jz	$+10     	;abs 0x65ac

000065a4 <.Loc.146.1>:
        __tick(_thread);
    65a4:	1c 42 cc 4b 	mov	&0x4bcc,r12	;0x4bcc
    65a8:	b0 12 3a 66 	call	#26170		;#0x663a

000065ac <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    65ac:	b0 12 3e 67 	call	#26430		;#0x673e

000065b0 <.Loc.171.1>:
    // enable interrupts
    __enable_interrupt();
    65b0:	03 43       	nop			
    65b2:	32 d2       	eint			
    65b4:	03 43       	nop			

000065b6 <.L20>:

    while (1){
        switch (_sched_state){
    65b6:	5c 42 ca 4b 	mov.b	&0x4bca,r12	;0x4bca
    65ba:	0c 93       	cmp	#0,	r12	;r3 As==00
    65bc:	10 24       	jz	$+34     	;abs 0x65de

000065be <.L29>:
    65be:	1c 93       	cmp	#1,	r12	;r3 As==01
    65c0:	fa 23       	jnz	$-10     	;abs 0x65b6
    65c2:	1c 42 cc 4b 	mov	&0x4bcc,r12	;0x4bcc

000065c6 <.Loc.186.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    65c6:	0c 93       	cmp	#0,	r12	;r3 As==00
    65c8:	24 24       	jz	$+74     	;abs 0x6612

000065ca <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    65ca:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000065ce <.Loc.188.1>:
#endif
                __tick(_thread);
    65ce:	b0 12 3a 66 	call	#26170		;#0x663a

000065d2 <.Loc.192.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    65d2:	c2 43 ca 4b 	mov.b	#0,	&0x4bca	;r3 As==00

000065d6 <.Loc.173.1>:
        switch (_sched_state){
    65d6:	5c 42 ca 4b 	mov.b	&0x4bca,r12	;0x4bca
    65da:	0c 93       	cmp	#0,	r12	;r3 As==00
    65dc:	f0 23       	jnz	$-30     	;abs 0x65be

000065de <.L19>:
            __port_on(1, 3);
    65de:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000065e2 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    65e2:	3c 40 ce 4b 	mov	#19406,	r12	;#0x4bce
    65e6:	b0 12 a4 72 	call	#29348		;#0x72a4
    65ea:	4d 4c       	mov.b	r12,	r13	;

000065ec <.LVL29>:
    if(idx)
    65ec:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    65ee:	0d 24       	jz	$+28     	;abs 0x660a

000065f0 <.Loc.134.1>:
        return &_threads[idx];
    65f0:	0c 4d       	mov	r13,	r12	;
    65f2:	5c 02       	rlam	#1,	r12	;

000065f4 <.LVL30>:
    65f4:	0c 5d       	add	r13,	r12	;
    65f6:	5c 06       	rlam	#2,	r12	;
    65f8:	0c 5d       	add	r13,	r12	;
    65fa:	5c 02       	rlam	#1,	r12	;
    65fc:	3c 50 d8 4b 	add	#19416,	r12	;#0x4bd8

00006600 <.LBE10>:
            _thread = __next_thread();
    6600:	82 4c cc 4b 	mov	r12,	&0x4bcc	;

00006604 <.Loc.182.1>:
            _sched_state = SCHED_BUSY;
    6604:	d2 43 ca 4b 	mov.b	#1,	&0x4bca	;r3 As==01

00006608 <.Loc.186.1>:
            if (_thread){
    6608:	e0 3f       	jmp	$-62     	;abs 0x65ca

0000660a <.L30>:
            _thread = __next_thread();
    660a:	82 43 cc 4b 	mov	#0,	&0x4bcc	;r3 As==00

0000660e <.Loc.182.1>:
            _sched_state = SCHED_BUSY;
    660e:	d2 43 ca 4b 	mov.b	#1,	&0x4bca	;r3 As==01

00006612 <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    6612:	c2 43 ca 4b 	mov.b	#0,	&0x4bca	;r3 As==00

00006616 <.Loc.196.1>:
            __disable_interrupt();
    6616:	32 c2       	dint			
    6618:	03 43       	nop			

0000661a <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    661a:	3c 40 ce 4b 	mov	#19406,	r12	;#0x4bce
    661e:	b0 12 a4 72 	call	#29348		;#0x72a4

00006622 <.LVL33>:
    if(idx)
    6622:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6624:	c8 23       	jnz	$-110    	;abs 0x65b6

00006626 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    6626:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000662a <.Loc.200.1>:
#endif
                __mcu_sleep();
    662a:	03 43       	nop			
    662c:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    6630:	03 43       	nop			

00006632 <.Loc.203.1>:
                __enable_interrupt();
    6632:	03 43       	nop			
    6634:	32 d2       	eint			
    6636:	03 43       	nop			
    6638:	be 3f       	jmp	$-130    	;abs 0x65b6

0000663a <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    663a:	0a 15       	pushm	#1,	r10	;16-bit words

0000663c <.LCFI0>:
    663c:	0a 4c       	mov	r12,	r10	;

0000663e <L0^A>:
    switch (thread->state)
    663e:	1c 4c 02 00 	mov	2(r12),	r12	;

00006642 <.LVL1>:
    6642:	2c 93       	cmp	#2,	r12	;r3 As==10
    6644:	35 24       	jz	$+108    	;abs 0x66b0
    6646:	2c 92       	cmp	#4,	r12	;r2 As==10
    6648:	50 24       	jz	$+162    	;abs 0x66ea
    664a:	1c 93       	cmp	#1,	r12	;r3 As==01
    664c:	02 24       	jz	$+6      	;abs 0x6652

0000664e <.Loc.142.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    664e:	0a 17       	popm	#1,	r10	;16-bit words

00006650 <.LCFI1>:
    6650:	30 41       	ret			

00006652 <.L17>:
    __port_on(3,6);
    6652:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    6656:	22 02 

00006658 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    6658:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

0000665c <.Loc.14.1>:
    665c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6660:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6662:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006666 <.Loc.14.1>:
    6666:	5c 02       	rlam	#1,	r12	;
    6668:	0c 5a       	add	r10,	r12	;
    666a:	5f 02       	rlam	#1,	r15	;
    666c:	0f 5a       	add	r10,	r15	;
    666e:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    6672:	5e 03       	rrum	#1,	r14	;
    6674:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    6678:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    667c:	b0 12 6a 64 	call	#25706		;#0x646a

00006680 <.Loc.17.1>:
    __port_off(3,6);
    6680:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6684:	22 02 

00006686 <.LBE5>:
        __port_on(1, 4);
    6686:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    668a:	02 02 

0000668c <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    668c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6690:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6692:	c2 4c 58 52 	mov.b	r12,	&0x5258	;

00006696 <.Loc.60.1>:
        if(thread->next == thread->entry){
    6696:	1c 4a 08 00 	mov	8(r10),	r12	;

0000669a <.Loc.60.1>:
    669a:	1c 9a 04 00 	cmp	4(r10),	r12	;
    669e:	3c 24       	jz	$+122    	;abs 0x6718

000066a0 <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    66a0:	8c 12       	call	r12		;

000066a2 <.Loc.77.1>:
    66a2:	8a 4c 06 00 	mov	r12,	6(r10)	;

000066a6 <.L8>:
        thread->state = TASK_PRECOMMIT;
    66a6:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

000066aa <.Loc.83.1>:
            __port_off(1, 4);
    66aa:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    66ae:	02 02 

000066b0 <.L2>:
        __port_on(3,5);
    66b0:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    66b4:	22 02 

000066b6 <.Loc.87.1>:
        __release_event(thread);
    66b6:	0c 4a       	mov	r10,	r12	;
    66b8:	b0 12 64 63 	call	#25444		;#0x6364

000066bc <.Loc.96.1>:
        thread->next = thread->next_temp;
    66bc:	1c 4a 06 00 	mov	6(r10),	r12	;

000066c0 <.Loc.96.1>:
    66c0:	8a 4c 08 00 	mov	r12,	8(r10)	;

000066c4 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    66c4:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    66c8:	5d e3       	xor.b	#1,	r13	;r3 As==01
    66ca:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

000066ce <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    66ce:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

000066d2 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    66d2:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    66d6:	0e 00 

000066d8 <.Loc.118.1>:
        if (thread->next == NULL)
    66d8:	0c 93       	cmp	#0,	r12	;r3 As==00
    66da:	0e 24       	jz	$+30     	;abs 0x66f8

000066dc <.L9>:
            thread->state = TASK_READY;
    66dc:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

000066e0 <.L12>:
        __port_off(3,5);
    66e0:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    66e4:	22 02 

000066e6 <.Loc.139.1>:
}
    66e6:	0a 17       	popm	#1,	r10	;16-bit words

000066e8 <.LCFI3>:
    66e8:	30 41       	ret			

000066ea <.L3>:
    66ea:	1c 4a 08 00 	mov	8(r10),	r12	;

000066ee <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    66ee:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    66f2:	0e 00 

000066f4 <.Loc.118.1>:
        if (thread->next == NULL)
    66f4:	0c 93       	cmp	#0,	r12	;r3 As==00
    66f6:	f2 23       	jnz	$-26     	;abs 0x66dc

000066f8 <.L19>:
            __disable_interrupt();
    66f8:	32 c2       	dint			
    66fa:	03 43       	nop			

000066fc <.Loc.122.1>:
            if(!__has_events(thread)){
    66fc:	0c 4a       	mov	r10,	r12	;
    66fe:	b0 12 18 63 	call	#25368		;#0x6318

00006702 <.Loc.122.1>:
    6702:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6704:	12 24       	jz	$+38     	;abs 0x672a

00006706 <.Loc.128.1>:
                thread->next = thread->entry;
    6706:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    670a:	08 00 

0000670c <.Loc.130.1>:
                thread->state = TASK_READY;
    670c:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006710 <.Loc.132.1>:
            __enable_interrupt();
    6710:	03 43       	nop			
    6712:	32 d2       	eint			
    6714:	03 43       	nop			
    6716:	e4 3f       	jmp	$-54     	;abs 0x66e0

00006718 <.L18>:
            isr_event_t *event = __lock_event(thread);
    6718:	0c 4a       	mov	r10,	r12	;
    671a:	b0 12 36 63 	call	#25398		;#0x6336

0000671e <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    671e:	1d 4a 04 00 	mov	4(r10),	r13	;
    6722:	8d 12       	call	r13		;

00006724 <.LVL11>:
    6724:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006728 <.LBE7>:
    6728:	be 3f       	jmp	$-130    	;abs 0x66a6

0000672a <.L20>:
                __stop_thread(thread);
    672a:	0c 4a       	mov	r10,	r12	;
    672c:	b0 12 10 65 	call	#25872		;#0x6510

00006730 <.Loc.132.1>:
            __enable_interrupt();
    6730:	03 43       	nop			
    6732:	32 d2       	eint			
    6734:	03 43       	nop			
    6736:	d4 3f       	jmp	$-86     	;abs 0x66e0

00006738 <__timers_init>:
    6738:	b0 12 9e 73 	call	#29598		;#0x739e

0000673c <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    673c:	30 41       	ret			

0000673e <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    673e:	30 41       	ret			

00006740 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    6740:	0a 15       	pushm	#1,	r10	;16-bit words

00006742 <.LCFI0>:
    6742:	4a 4c       	mov.b	r12,	r10	;

00006744 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    6744:	5c 92 32 1c 	cmp.b	&0x1c32,r12	;0x1c32
    6748:	19 24       	jz	$+52     	;abs 0x677c

0000674a <.L5>:
    674a:	c2 9a 3c 1c 	cmp.b	r10,	&0x1c3c	;
    674e:	0e 24       	jz	$+30     	;abs 0x676c

00006750 <.L6>:
    6750:	c2 9a 46 1c 	cmp.b	r10,	&0x1c46	;
    6754:	02 24       	jz	$+6      	;abs 0x675a

00006756 <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    6756:	0a 17       	popm	#1,	r10	;16-bit words

00006758 <.LCFI1>:
    6758:	30 41       	ret			

0000675a <.L10>:
            wkup_timing[i].status = NOT_USED;
    675a:	82 43 44 1c 	mov	#0,	&0x1c44	;r3 As==00

0000675e <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    675e:	4e 43       	clr.b	r14		;
    6760:	4d 43       	clr.b	r13		;
    6762:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6764:	b0 12 60 74 	call	#29792		;#0x7460

00006768 <.Loc.101.1>:
}
    6768:	0a 17       	popm	#1,	r10	;16-bit words

0000676a <.LCFI3>:
    676a:	30 41       	ret			

0000676c <.L9>:
            wkup_timing[i].status = NOT_USED;
    676c:	82 43 3a 1c 	mov	#0,	&0x1c3a	;r3 As==00

00006770 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6770:	4e 43       	clr.b	r14		;
    6772:	4d 43       	clr.b	r13		;
    6774:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6776:	b0 12 60 74 	call	#29792		;#0x7460
    677a:	ea 3f       	jmp	$-42     	;abs 0x6750

0000677c <.L8>:
            wkup_timing[i].status = NOT_USED;
    677c:	82 43 30 1c 	mov	#0,	&0x1c30	;r3 As==00

00006780 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6780:	4e 43       	clr.b	r14		;
    6782:	4d 43       	clr.b	r13		;
    6784:	4c 43       	clr.b	r12		;

00006786 <.LVL9>:
    6786:	b0 12 60 74 	call	#29792		;#0x7460
    678a:	df 3f       	jmp	$-64     	;abs 0x674a

0000678c <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    678c:	2a 15       	pushm	#3,	r10	;16-bit words

0000678e <.LCFI5>:
    678e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006792 <.LCFI6>:
    6792:	49 43       	clr.b	r9		;
    6794:	38 40 30 1c 	mov	#7216,	r8	;#0x1c30

00006798 <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    6798:	0a 49       	mov	r9,	r10	;
    679a:	5a 06       	rlam	#2,	r10	;
    679c:	0a 59       	add	r9,	r10	;
    679e:	5a 02       	rlam	#1,	r10	;
    67a0:	0a 58       	add	r8,	r10	;
    67a2:	4e 43       	clr.b	r14		;
    67a4:	4d 49       	mov.b	r9,	r13	;
    67a6:	0c 41       	mov	r1,	r12	;
    67a8:	b0 12 5c 76 	call	#30300		;#0x765c
    67ac:	aa 41 00 00 	mov	@r1,	0(r10)	;
    67b0:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    67b4:	02 00 
    67b6:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    67ba:	04 00 
    67bc:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    67c0:	06 00 
    67c2:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    67c6:	08 00 

000067c8 <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    67c8:	19 53       	inc	r9		;

000067ca <.Loc.115.1>:
    67ca:	39 90 03 00 	cmp	#3,	r9	;
    67ce:	e4 23       	jnz	$-54     	;abs 0x6798

000067d0 <.Loc.120.1>:
    }

}
    67d0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000067d4 <.LCFI7>:
    67d4:	28 17       	popm	#3,	r10	;16-bit words

000067d6 <.LCFI8>:
    67d6:	30 41       	ret			

000067d8 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    67d8:	5a 15       	pushm	#6,	r10	;16-bit words

000067da <.LCFI9>:

    uint8_t i,first = 1;
    67da:	5e 43       	mov.b	#1,	r14	;r3 As==01

000067dc <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    67dc:	4a 43       	clr.b	r10		;
    67de:	38 40 30 1c 	mov	#7216,	r8	;#0x1c30

000067e2 <.L40>:
    {

        if (wkup_timing[i].status == USED)
    67e2:	09 4a       	mov	r10,	r9	;
    67e4:	05 4a       	mov	r10,	r5	;
    67e6:	55 06       	rlam	#2,	r5	;
    67e8:	0c 45       	mov	r5,	r12	;
    67ea:	0c 5a       	add	r10,	r12	;
    67ec:	5c 02       	rlam	#1,	r12	;
    67ee:	0d 4c       	mov	r12,	r13	;
    67f0:	3d 50 30 1c 	add	#7216,	r13	;#0x1c30

000067f4 <.Loc.130.1>:
    67f4:	9c 93 30 1c 	cmp	#1,	7216(r12);r3 As==01, 0x1c30
    67f8:	0c 24       	jz	$+26     	;abs 0x6812

000067fa <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    67fa:	4c 4a       	mov.b	r10,	r12	;
    67fc:	5c 53       	inc.b	r12		;
    67fe:	4a 4c       	mov.b	r12,	r10	;

00006800 <.LVL19>:
    6800:	7c 90 03 00 	cmp.b	#3,	r12	;
    6804:	ee 23       	jnz	$-34     	;abs 0x67e2

00006806 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    6806:	0e 93       	cmp	#0,	r14	;r3 As==00
    6808:	54 24       	jz	$+170    	;abs 0x68b2

0000680a <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    680a:	b0 12 ba 72 	call	#29370		;#0x72ba

0000680e <.LVL20>:


}
    680e:	55 17       	popm	#6,	r10	;16-bit words

00006810 <.LCFI10>:
    6810:	30 41       	ret			

00006812 <.L84>:
            if (first)
    6812:	16 4d 04 00 	mov	4(r13),	r6	;
    6816:	17 4d 06 00 	mov	6(r13),	r7	;

0000681a <.Loc.133.1>:
    681a:	0e 93       	cmp	#0,	r14	;r3 As==00
    681c:	05 24       	jz	$+12     	;abs 0x6828

0000681e <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    681e:	82 46 56 1c 	mov	r6,	&0x1c56	;

00006822 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    6822:	d2 4d 02 00 	mov.b	2(r13),	&0x1c58	;
    6826:	58 1c 

00006828 <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    6828:	b0 12 5c 73 	call	#29532		;#0x735c

0000682c <.Loc.141.1>:
    682c:	0e 46       	mov	r6,	r14	;
    682e:	0f 47       	mov	r7,	r15	;
    6830:	0e 8c       	sub	r12,	r14	;
    6832:	0f 7d       	subc	r13,	r15	;

00006834 <.Loc.141.1>:
    6834:	05 5a       	add	r10,	r5	;
    6836:	55 02       	rlam	#1,	r5	;
    6838:	05 58       	add	r8,	r5	;
    683a:	85 4e 04 00 	mov	r14,	4(r5)	;
    683e:	85 4f 06 00 	mov	r15,	6(r5)	;

00006842 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    6842:	4d 43       	clr.b	r13		;
    6844:	4c 4a       	mov.b	r10,	r12	;
    6846:	b0 12 c0 73 	call	#29632		;#0x73c0

0000684a <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    684a:	1c 45 04 00 	mov	4(r5),	r12	;
    684e:	1d 45 06 00 	mov	6(r5),	r13	;
    6852:	4b 4a       	mov.b	r10,	r11	;
    6854:	5b 53       	inc.b	r11		;
    6856:	4a 4b       	mov.b	r11,	r10	;

00006858 <.Loc.144.1>:
    6858:	07 4d       	mov	r13,	r7	;
    685a:	0d 93       	cmp	#0,	r13	;r3 As==00
    685c:	3b 38       	jl	$+120    	;abs 0x68d4

0000685e <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    685e:	0e 4c       	mov	r12,	r14	;
    6860:	0e dd       	bis	r13,	r14	;
    6862:	0e 93       	cmp	#0,	r14	;r3 As==00
    6864:	af 24       	jz	$+352    	;abs 0x69c4

00006866 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6866:	16 42 56 1c 	mov	&0x1c56,r6	;0x1c56
    686a:	0e 46       	mov	r6,	r14	;
    686c:	0f 43       	clr	r15		;

0000686e <.Loc.155.1>:
    686e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6870:	18 34       	jge	$+50     	;abs 0x68a2

00006872 <.L50>:
    6872:	0e 49       	mov	r9,	r14	;
    6874:	5e 06       	rlam	#2,	r14	;
    6876:	09 5e       	add	r14,	r9	;
    6878:	59 02       	rlam	#1,	r9	;
    687a:	5e 49 32 1c 	mov.b	7218(r9),r14	;0x01c32

0000687e <.L37>:
                    min_wkup = wkup_timing[i].data;
    687e:	82 4c 56 1c 	mov	r12,	&0x1c56	;

00006882 <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    6882:	c2 4e 58 1c 	mov.b	r14,	&0x1c58	;

00006886 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6886:	7b 90 03 00 	cmp.b	#3,	r11	;
    688a:	15 24       	jz	$+44     	;abs 0x68b6

0000688c <.L74>:
        if (wkup_timing[i].status == USED)
    688c:	09 4a       	mov	r10,	r9	;
    688e:	05 4a       	mov	r10,	r5	;
    6890:	55 06       	rlam	#2,	r5	;
    6892:	0c 45       	mov	r5,	r12	;
    6894:	0c 5a       	add	r10,	r12	;
    6896:	5c 02       	rlam	#1,	r12	;

00006898 <.Loc.130.1>:
    6898:	9c 93 30 1c 	cmp	#1,	7216(r12);r3 As==01, 0x1c30
    689c:	41 24       	jz	$+132    	;abs 0x6920

0000689e <.L91>:
    689e:	4e 43       	clr.b	r14		;
    68a0:	ac 3f       	jmp	$-166    	;abs 0x67fa

000068a2 <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    68a2:	0d 93       	cmp	#0,	r13	;r3 As==00
    68a4:	62 24       	jz	$+198    	;abs 0x696a

000068a6 <.L35>:
    68a6:	07 4c       	mov	r12,	r7	;
    68a8:	0c 9e       	cmp	r14,	r12	;
    68aa:	79 24       	jz	$+244    	;abs 0x699e

000068ac <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    68ac:	7b 90 03 00 	cmp.b	#3,	r11	;
    68b0:	ed 23       	jnz	$-36     	;abs 0x688c

000068b2 <.L72>:
    68b2:	5e 42 58 1c 	mov.b	&0x1c58,r14	;0x1c58

000068b6 <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    68b6:	4d 4e       	mov.b	r14,	r13	;
    68b8:	4c 43       	clr.b	r12		;
    68ba:	b0 12 a8 74 	call	#29864		;#0x74a8

000068be <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    68be:	1d 42 56 1c 	mov	&0x1c56,r13	;0x1c56
    68c2:	4c 43       	clr.b	r12		;
    68c4:	b0 12 b6 74 	call	#29878		;#0x74b6

000068c8 <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    68c8:	1c 42 56 1c 	mov	&0x1c56,r12	;0x1c56
    68cc:	b0 12 ce 72 	call	#29390		;#0x72ce

000068d0 <.Loc.177.1>:
}
    68d0:	55 17       	popm	#6,	r10	;16-bit words

000068d2 <.LCFI12>:
    68d2:	30 41       	ret			

000068d4 <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    68d4:	5e 42 59 1c 	mov.b	&0x1c59,r14	;0x1c59
    68d8:	06 43       	clr	r6		;
    68da:	06 8e       	sub	r14,	r6	;
    68dc:	0e 46       	mov	r6,	r14	;
    68de:	0f 46       	mov	r6,	r15	;
    68e0:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000068e4 <.Loc.144.1>:
    68e4:	05 4f       	mov	r15,	r5	;
    68e6:	0f 9d       	cmp	r13,	r15	;
    68e8:	25 38       	jl	$+76     	;abs 0x6934

000068ea <.Loc.144.1>:
    68ea:	0d 9f       	cmp	r15,	r13	;
    68ec:	21 24       	jz	$+68     	;abs 0x6930

000068ee <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    68ee:	07 4d       	mov	r13,	r7	;
    68f0:	0d 9f       	cmp	r15,	r13	;
    68f2:	04 38       	jl	$+10     	;abs 0x68fc
    68f4:	0f 9d       	cmp	r13,	r15	;
    68f6:	da 23       	jnz	$-74     	;abs 0x68ac
    68f8:	0c 96       	cmp	r6,	r12	;
    68fa:	d8 2f       	jc	$-78     	;abs 0x68ac

000068fc <.L30>:
    68fc:	0c 49       	mov	r9,	r12	;
    68fe:	5c 06       	rlam	#2,	r12	;
    6900:	09 5c       	add	r12,	r9	;
    6902:	59 02       	rlam	#1,	r9	;
    6904:	89 43 30 1c 	mov	#0,	7216(r9);r3 As==00, 0x1c30

00006908 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6908:	7b 90 03 00 	cmp.b	#3,	r11	;
    690c:	d2 27       	jz	$-90     	;abs 0x68b2

0000690e <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    690e:	09 4a       	mov	r10,	r9	;
    6910:	05 4a       	mov	r10,	r5	;
    6912:	55 06       	rlam	#2,	r5	;
    6914:	0c 45       	mov	r5,	r12	;
    6916:	0c 5a       	add	r10,	r12	;
    6918:	5c 02       	rlam	#1,	r12	;

0000691a <.Loc.130.1>:
    691a:	9c 93 30 1c 	cmp	#1,	7216(r12);r3 As==01, 0x1c30
    691e:	bf 23       	jnz	$-128    	;abs 0x689e

00006920 <.L27>:
    6920:	0c 45       	mov	r5,	r12	;
    6922:	0c 5a       	add	r10,	r12	;
    6924:	5c 02       	rlam	#1,	r12	;
    6926:	16 4c 34 1c 	mov	7220(r12),r6	;0x01c34
    692a:	17 4c 36 1c 	mov	7222(r12),r7	;0x01c36
    692e:	7c 3f       	jmp	$-262    	;abs 0x6828

00006930 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    6930:	06 9c       	cmp	r12,	r6	;
    6932:	dd 2f       	jc	$-68     	;abs 0x68ee

00006934 <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6934:	1e 42 56 1c 	mov	&0x1c56,r14	;0x1c56
    6938:	06 4e       	mov	r14,	r6	;
    693a:	07 43       	clr	r7		;

0000693c <.Loc.146.1>:
    693c:	4e 43       	clr.b	r14		;
    693e:	4f 43       	clr.b	r15		;
    6940:	0e 8c       	sub	r12,	r14	;
    6942:	0f 7d       	subc	r13,	r15	;

00006944 <.Loc.146.1>:
    6944:	05 4f       	mov	r15,	r5	;
    6946:	0f 93       	cmp	#0,	r15	;r3 As==00
    6948:	14 34       	jge	$+42     	;abs 0x6972

0000694a <.L22>:
    694a:	0e 49       	mov	r9,	r14	;
    694c:	5e 06       	rlam	#2,	r14	;
    694e:	09 5e       	add	r14,	r9	;
    6950:	59 02       	rlam	#1,	r9	;
    6952:	5e 49 32 1c 	mov.b	7218(r9),r14	;0x01c32

00006956 <.L28>:
                    min_wkup = -wkup_timing[i].data;
    6956:	4f 43       	clr.b	r15		;
    6958:	0f 8c       	sub	r12,	r15	;
    695a:	82 4f 56 1c 	mov	r15,	&0x1c56	;

0000695e <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    695e:	c2 4e 58 1c 	mov.b	r14,	&0x1c58	;

00006962 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6962:	7b 90 03 00 	cmp.b	#3,	r11	;
    6966:	92 23       	jnz	$-218    	;abs 0x688c
    6968:	a6 3f       	jmp	$-178    	;abs 0x68b6

0000696a <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    696a:	07 4c       	mov	r12,	r7	;
    696c:	0c 9e       	cmp	r14,	r12	;
    696e:	9b 2f       	jc	$-200    	;abs 0x68a6
    6970:	80 3f       	jmp	$-254    	;abs 0x6872

00006972 <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6972:	0f 93       	cmp	#0,	r15	;r3 As==00
    6974:	03 20       	jnz	$+8      	;abs 0x697c
    6976:	05 4e       	mov	r14,	r5	;
    6978:	0e 96       	cmp	r6,	r14	;
    697a:	e7 2b       	jnc	$-48     	;abs 0x694a

0000697c <.L47>:
    697c:	06 9e       	cmp	r14,	r6	;
    697e:	96 23       	jnz	$-210    	;abs 0x68ac
    6980:	0f 93       	cmp	#0,	r15	;r3 As==00
    6982:	94 23       	jnz	$-214    	;abs 0x68ac

00006984 <.Loc.146.1>:
    6984:	0e 49       	mov	r9,	r14	;
    6986:	5e 06       	rlam	#2,	r14	;
    6988:	09 5e       	add	r14,	r9	;
    698a:	59 02       	rlam	#1,	r9	;
    698c:	5e 49 32 1c 	mov.b	7218(r9),r14	;0x01c32

00006990 <.Loc.146.1>:
    6990:	5f 42 58 1c 	mov.b	&0x1c58,r15	;0x1c58

00006994 <.Loc.146.1>:
    6994:	d9 92 58 1c 	cmp.b	&0x1c58,7218(r9);0x1c58, 0x1c32
    6998:	32 1c 
    699a:	dd 2b       	jnc	$-68     	;abs 0x6956
    699c:	0e 3c       	jmp	$+30     	;abs 0x69ba

0000699e <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    699e:	0d 9f       	cmp	r15,	r13	;
    69a0:	85 23       	jnz	$-244    	;abs 0x68ac

000069a2 <.Loc.155.1>:
    69a2:	0e 49       	mov	r9,	r14	;
    69a4:	5e 06       	rlam	#2,	r14	;
    69a6:	09 5e       	add	r14,	r9	;
    69a8:	59 02       	rlam	#1,	r9	;
    69aa:	5e 49 32 1c 	mov.b	7218(r9),r14	;0x01c32

000069ae <.Loc.155.1>:
    69ae:	5f 42 58 1c 	mov.b	&0x1c58,r15	;0x1c58

000069b2 <.Loc.155.1>:
    69b2:	d9 92 58 1c 	cmp.b	&0x1c58,7218(r9);0x1c58, 0x1c32
    69b6:	32 1c 
    69b8:	62 2b       	jnc	$-314    	;abs 0x687e

000069ba <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    69ba:	7b 90 03 00 	cmp.b	#3,	r11	;
    69be:	66 23       	jnz	$-306    	;abs 0x688c

000069c0 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    69c0:	0e 4f       	mov	r15,	r14	;

000069c2 <.Loc.164.1>:
    if (!first)
    69c2:	79 3f       	jmp	$-268    	;abs 0x68b6

000069c4 <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    69c4:	7b 90 03 00 	cmp.b	#3,	r11	;
    69c8:	74 27       	jz	$-278    	;abs 0x68b2

000069ca <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    69ca:	09 4a       	mov	r10,	r9	;
    69cc:	05 4a       	mov	r10,	r5	;
    69ce:	55 06       	rlam	#2,	r5	;
    69d0:	0c 45       	mov	r5,	r12	;
    69d2:	0c 5a       	add	r10,	r12	;
    69d4:	5c 02       	rlam	#1,	r12	;

000069d6 <.Loc.130.1>:
    69d6:	9c 93 30 1c 	cmp	#1,	7216(r12);r3 As==01, 0x1c30
    69da:	0f 23       	jnz	$-480    	;abs 0x67fa
    69dc:	a1 3f       	jmp	$-188    	;abs 0x6920

000069de <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    69de:	4a 15       	pushm	#5,	r10	;16-bit words

000069e0 <.LCFI14>:
    69e0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000069e4 <.LCFI15>:
    69e4:	47 4c       	mov.b	r12,	r7	;
    69e6:	09 4d       	mov	r13,	r9	;

000069e8 <.LBB12>:
    69e8:	46 43       	clr.b	r6		;
    69ea:	38 40 30 1c 	mov	#7216,	r8	;#0x1c30

000069ee <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    69ee:	0a 46       	mov	r6,	r10	;
    69f0:	5a 06       	rlam	#2,	r10	;
    69f2:	0a 56       	add	r6,	r10	;
    69f4:	5a 02       	rlam	#1,	r10	;
    69f6:	0a 58       	add	r8,	r10	;
    69f8:	4e 43       	clr.b	r14		;
    69fa:	4d 46       	mov.b	r6,	r13	;
    69fc:	0c 41       	mov	r1,	r12	;
    69fe:	b0 12 5c 76 	call	#30300		;#0x765c
    6a02:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6a06:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6a0a:	02 00 
    6a0c:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6a10:	04 00 
    6a12:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6a16:	06 00 
    6a18:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6a1c:	08 00 

00006a1e <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6a1e:	16 53       	inc	r6		;

00006a20 <.Loc.115.1>:
    6a20:	36 90 03 00 	cmp	#3,	r6	;
    6a24:	e4 23       	jnz	$-54     	;abs 0x69ee

00006a26 <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    6a26:	b0 12 ba 72 	call	#29370		;#0x72ba

00006a2a <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    6a2a:	0e 49       	mov	r9,	r14	;
    6a2c:	0f 43       	clr	r15		;

00006a2e <.Loc.194.1>:
    6a2e:	82 93 30 1c 	cmp	#0,	&0x1c30	;r3 As==00
    6a32:	22 24       	jz	$+70     	;abs 0x6a78

00006a34 <.Loc.192.1>:
    6a34:	82 93 3a 1c 	cmp	#0,	&0x1c3a	;r3 As==00
    6a38:	49 24       	jz	$+148    	;abs 0x6acc

00006a3a <.Loc.192.1>:
    6a3a:	82 93 44 1c 	cmp	#0,	&0x1c44	;r3 As==00
    6a3e:	49 24       	jz	$+148    	;abs 0x6ad2

00006a40 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    6a40:	82 4e 48 1c 	mov	r14,	&0x1c48	;
    6a44:	82 4f 4a 1c 	mov	r15,	&0x1c4a	;

00006a48 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    6a48:	4d 43       	clr.b	r13		;
    6a4a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a4c:	b0 12 c0 73 	call	#29632		;#0x73c0

00006a50 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    6a50:	c2 47 46 1c 	mov.b	r7,	&0x1c46	;

00006a54 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    6a54:	4e 47       	mov.b	r7,	r14	;
    6a56:	4d 43       	clr.b	r13		;
    6a58:	7c 40 03 00 	mov.b	#3,	r12	;
    6a5c:	b0 12 14 74 	call	#29716		;#0x7414

00006a60 <.Loc.219.1>:
        refresh_wkup_timers();
    6a60:	b0 12 d8 67 	call	#26584		;#0x67d8

00006a64 <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    6a64:	4c 43       	clr.b	r12		;
    6a66:	b0 12 c4 74 	call	#29892		;#0x74c4

00006a6a <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    6a6a:	4c 43       	clr.b	r12		;
    6a6c:	b0 12 18 76 	call	#30232		;#0x7618

00006a70 <.Loc.224.1>:
}
    6a70:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006a74 <.LCFI16>:
    6a74:	46 17       	popm	#5,	r10	;16-bit words

00006a76 <.LCFI17>:
    6a76:	30 41       	ret			

00006a78 <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6a78:	1a 42 30 1c 	mov	&0x1c30,r10	;0x1c30

00006a7c <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6a7c:	0d 4a       	mov	r10,	r13	;

00006a7e <.L95>:
            wkup_timing[i].data = ticks;
    6a7e:	0c 4d       	mov	r13,	r12	;
    6a80:	5c 06       	rlam	#2,	r12	;
    6a82:	0c 5d       	add	r13,	r12	;
    6a84:	5c 02       	rlam	#1,	r12	;
    6a86:	08 5c       	add	r12,	r8	;
    6a88:	88 4e 04 00 	mov	r14,	4(r8)	;
    6a8c:	88 4f 06 00 	mov	r15,	6(r8)	;

00006a90 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    6a90:	4d 43       	clr.b	r13		;
    6a92:	4c 4a       	mov.b	r10,	r12	;
    6a94:	b0 12 c0 73 	call	#29632		;#0x73c0

00006a98 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    6a98:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00006a9c <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    6a9c:	4e 47       	mov.b	r7,	r14	;
    6a9e:	4d 43       	clr.b	r13		;
    6aa0:	4c 4a       	mov.b	r10,	r12	;
    6aa2:	b0 12 14 74 	call	#29716		;#0x7414

00006aa6 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    6aa6:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

00006aaa <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    6aaa:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6aac:	4d 43       	clr.b	r13		;
    6aae:	4c 4a       	mov.b	r10,	r12	;
    6ab0:	b0 12 60 74 	call	#29792		;#0x7460

00006ab4 <.Loc.202.1>:
        refresh_wkup_timers();
    6ab4:	b0 12 d8 67 	call	#26584		;#0x67d8

00006ab8 <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    6ab8:	4c 43       	clr.b	r12		;
    6aba:	b0 12 c4 74 	call	#29892		;#0x74c4

00006abe <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    6abe:	4c 43       	clr.b	r12		;
    6ac0:	b0 12 18 76 	call	#30232		;#0x7618

00006ac4 <.Loc.224.1>:
}
    6ac4:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006ac8 <.LCFI19>:
    6ac8:	46 17       	popm	#5,	r10	;16-bit words

00006aca <.LCFI20>:
    6aca:	30 41       	ret			

00006acc <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6acc:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006ace <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6ace:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6ad0:	d6 3f       	jmp	$-82     	;abs 0x6a7e

00006ad2 <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6ad2:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006ad4 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6ad4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ad6:	d3 3f       	jmp	$-88     	;abs 0x6a7e

00006ad8 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    6ad8:	4d 4c       	mov.b	r12,	r13	;

00006ada <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    6ada:	5c 92 14 1c 	cmp.b	&0x1c14,r12	;0x1c14
    6ade:	14 24       	jz	$+42     	;abs 0x6b08

00006ae0 <.Loc.237.1>:
    6ae0:	c2 9d 1e 1c 	cmp.b	r13,	&0x1c1e	;
    6ae4:	14 24       	jz	$+42     	;abs 0x6b0e

00006ae6 <.Loc.237.1>:
    6ae6:	c2 9d 28 1c 	cmp.b	r13,	&0x1c28	;
    6aea:	01 24       	jz	$+4      	;abs 0x6aee

00006aec <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    6aec:	30 41       	ret			

00006aee <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6aee:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006af0 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    6af0:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006af2 <.L102>:
            xpr_timing[i].status = NOT_USED;
    6af2:	0d 4e       	mov	r14,	r13	;

00006af4 <.LVL71>:
    6af4:	5d 06       	rlam	#2,	r13	;
    6af6:	0d 5e       	add	r14,	r13	;
    6af8:	5d 02       	rlam	#1,	r13	;
    6afa:	8d 43 12 1c 	mov	#0,	7186(r13);r3 As==00, 0x1c12

00006afe <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6afe:	4e 43       	clr.b	r14		;
    6b00:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6b02:	b0 12 60 74 	call	#29792		;#0x7460

00006b06 <.Loc.242.1>:
}
    6b06:	30 41       	ret			

00006b08 <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6b08:	4c 43       	clr.b	r12		;

00006b0a <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    6b0a:	4e 43       	clr.b	r14		;
    6b0c:	f2 3f       	jmp	$-26     	;abs 0x6af2

00006b0e <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6b0e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006b10 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    6b10:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6b12:	ef 3f       	jmp	$-32     	;abs 0x6af2

00006b14 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    6b14:	2a 15       	pushm	#3,	r10	;16-bit words

00006b16 <.LCFI22>:
    6b16:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006b1a <.LCFI23>:
    6b1a:	49 43       	clr.b	r9		;
    6b1c:	38 40 12 1c 	mov	#7186,	r8	;#0x1c12

00006b20 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6b20:	0a 49       	mov	r9,	r10	;
    6b22:	5a 06       	rlam	#2,	r10	;
    6b24:	0a 59       	add	r9,	r10	;
    6b26:	5a 02       	rlam	#1,	r10	;
    6b28:	0a 58       	add	r8,	r10	;
    6b2a:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6b2c:	4d 49       	mov.b	r9,	r13	;
    6b2e:	0c 41       	mov	r1,	r12	;
    6b30:	b0 12 5c 76 	call	#30300		;#0x765c
    6b34:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6b38:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6b3c:	02 00 
    6b3e:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6b42:	04 00 
    6b44:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6b48:	06 00 
    6b4a:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6b4e:	08 00 

00006b50 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6b50:	19 53       	inc	r9		;

00006b52 <.Loc.252.1>:
    6b52:	39 90 03 00 	cmp	#3,	r9	;
    6b56:	e4 23       	jnz	$-54     	;abs 0x6b20

00006b58 <.Loc.257.1>:
    }

}
    6b58:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006b5c <.LCFI24>:
    6b5c:	28 17       	popm	#3,	r10	;16-bit words

00006b5e <.LCFI25>:
    6b5e:	30 41       	ret			

00006b60 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    6b60:	4a 15       	pushm	#5,	r10	;16-bit words

00006b62 <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    6b62:	92 93 12 1c 	cmp	#1,	&0x1c12	;r3 As==01
    6b66:	62 24       	jz	$+198    	;abs 0x6c2c

00006b68 <.Loc.265.1>:
    6b68:	92 93 1c 1c 	cmp	#1,	&0x1c1c	;r3 As==01
    6b6c:	07 24       	jz	$+16     	;abs 0x6b7c

00006b6e <.Loc.265.1>:
    6b6e:	92 93 26 1c 	cmp	#1,	&0x1c26	;r3 As==01
    6b72:	15 25       	jz	$+556    	;abs 0x6d9e

00006b74 <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    6b74:	b0 12 fa 72 	call	#29434		;#0x72fa

00006b78 <.Loc.313.1>:

}
    6b78:	46 17       	popm	#5,	r10	;16-bit words

00006b7a <.LCFI27>:
    6b7a:	30 41       	ret			

00006b7c <.L160>:
            if (first)
    6b7c:	16 42 20 1c 	mov	&0x1c20,r6	;0x1c20
    6b80:	17 42 22 1c 	mov	&0x1c22,r7	;0x1c22

00006b84 <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    6b84:	5a 42 1e 1c 	mov.b	&0x1c1e,r10	;0x1c1e

00006b88 <.LVL89>:
    6b88:	08 46       	mov	r6,	r8	;
    6b8a:	09 47       	mov	r7,	r9	;

00006b8c <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6b8c:	b0 12 5c 73 	call	#29532		;#0x735c

00006b90 <.Loc.278.1>:
    6b90:	0e 46       	mov	r6,	r14	;
    6b92:	0f 47       	mov	r7,	r15	;
    6b94:	0e 8c       	sub	r12,	r14	;
    6b96:	0f 7d       	subc	r13,	r15	;

00006b98 <.Loc.278.1>:
    6b98:	82 4e 20 1c 	mov	r14,	&0x1c20	;
    6b9c:	82 4f 22 1c 	mov	r15,	&0x1c22	;

00006ba0 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6ba0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ba2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6ba4:	b0 12 c0 73 	call	#29632		;#0x73c0

00006ba8 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6ba8:	1d 42 20 1c 	mov	&0x1c20,r13	;0x1c20
    6bac:	1c 42 22 1c 	mov	&0x1c22,r12	;0x1c22

00006bb0 <.Loc.281.1>:
    6bb0:	4e 43       	clr.b	r14		;
    6bb2:	0e 9c       	cmp	r12,	r14	;
    6bb4:	a2 34       	jge	$+326    	;abs 0x6cfa

00006bb6 <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6bb6:	0c 99       	cmp	r9,	r12	;
    6bb8:	04 38       	jl	$+10     	;abs 0x6bc2

00006bba <.L170>:
    6bba:	09 9c       	cmp	r12,	r9	;
    6bbc:	e5 20       	jnz	$+460    	;abs 0x6d88
    6bbe:	0d 98       	cmp	r8,	r13	;
    6bc0:	e3 2c       	jc	$+456    	;abs 0x6d88

00006bc2 <.L152>:
    6bc2:	5a 42 1e 1c 	mov.b	&0x1c1e,r10	;0x1c1e

00006bc6 <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    6bc6:	08 4d       	mov	r13,	r8	;
    6bc8:	09 4c       	mov	r12,	r9	;

00006bca <.L117>:
        if (xpr_timing[i].status == USED)
    6bca:	16 42 2a 1c 	mov	&0x1c2a,r6	;0x1c2a
    6bce:	17 42 2c 1c 	mov	&0x1c2c,r7	;0x1c2c

00006bd2 <.Loc.268.1>:
    6bd2:	92 93 26 1c 	cmp	#1,	&0x1c26	;r3 As==01
    6bd6:	1d 20       	jnz	$+60     	;abs 0x6c12

00006bd8 <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6bd8:	b0 12 5c 73 	call	#29532		;#0x735c

00006bdc <.Loc.278.1>:
    6bdc:	0e 46       	mov	r6,	r14	;
    6bde:	0f 47       	mov	r7,	r15	;
    6be0:	0e 8c       	sub	r12,	r14	;
    6be2:	0f 7d       	subc	r13,	r15	;

00006be4 <.Loc.278.1>:
    6be4:	82 4e 2a 1c 	mov	r14,	&0x1c2a	;
    6be8:	82 4f 2c 1c 	mov	r15,	&0x1c2c	;

00006bec <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6bec:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6bee:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6bf0:	b0 12 c0 73 	call	#29632		;#0x73c0

00006bf4 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6bf4:	1d 42 2a 1c 	mov	&0x1c2a,r13	;0x1c2a
    6bf8:	1c 42 2c 1c 	mov	&0x1c2c,r12	;0x1c2c

00006bfc <.Loc.281.1>:
    6bfc:	4e 43       	clr.b	r14		;
    6bfe:	0e 9c       	cmp	r12,	r14	;
    6c00:	4c 34       	jge	$+154    	;abs 0x6c9a

00006c02 <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6c02:	0c 99       	cmp	r9,	r12	;
    6c04:	76 38       	jl	$+238    	;abs 0x6cf2

00006c06 <.L168>:
    6c06:	09 9c       	cmp	r12,	r9	;
    6c08:	02 20       	jnz	$+6      	;abs 0x6c0e
    6c0a:	0d 98       	cmp	r8,	r13	;
    6c0c:	72 28       	jnc	$+230    	;abs 0x6cf2

00006c0e <.L139>:
    6c0e:	08 9d       	cmp	r13,	r8	;
    6c10:	d8 24       	jz	$+434    	;abs 0x6dc2

00006c12 <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    6c12:	4d 4a       	mov.b	r10,	r13	;
    6c14:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6c16:	b0 12 a8 74 	call	#29864		;#0x74a8

00006c1a <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    6c1a:	0d 48       	mov	r8,	r13	;
    6c1c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6c1e:	b0 12 b6 74 	call	#29878		;#0x74b6

00006c22 <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    6c22:	0c 48       	mov	r8,	r12	;
    6c24:	b0 12 e4 72 	call	#29412		;#0x72e4

00006c28 <.Loc.313.1>:
}
    6c28:	46 17       	popm	#5,	r10	;16-bit words

00006c2a <.LCFI29>:
    6c2a:	30 41       	ret			

00006c2c <.L159>:
            if (first)
    6c2c:	18 42 16 1c 	mov	&0x1c16,r8	;0x1c16
    6c30:	19 42 18 1c 	mov	&0x1c18,r9	;0x1c18

00006c34 <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    6c34:	5a 42 14 1c 	mov.b	&0x1c14,r10	;0x1c14

00006c38 <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6c38:	b0 12 5c 73 	call	#29532		;#0x735c

00006c3c <.LVL105>:
    6c3c:	0e 48       	mov	r8,	r14	;
    6c3e:	0f 49       	mov	r9,	r15	;
    6c40:	0e 8c       	sub	r12,	r14	;
    6c42:	0f 7d       	subc	r13,	r15	;

00006c44 <.Loc.278.1>:
    6c44:	82 4e 16 1c 	mov	r14,	&0x1c16	;
    6c48:	82 4f 18 1c 	mov	r15,	&0x1c18	;

00006c4c <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6c4c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6c4e:	4c 43       	clr.b	r12		;
    6c50:	b0 12 c0 73 	call	#29632		;#0x73c0

00006c54 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6c54:	1d 42 16 1c 	mov	&0x1c16,r13	;0x1c16
    6c58:	1c 42 18 1c 	mov	&0x1c18,r12	;0x1c18

00006c5c <.Loc.281.1>:
    6c5c:	4e 43       	clr.b	r14		;
    6c5e:	0e 9c       	cmp	r12,	r14	;
    6c60:	74 34       	jge	$+234    	;abs 0x6d4a

00006c62 <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6c62:	0c 99       	cmp	r9,	r12	;
    6c64:	0c 34       	jge	$+26     	;abs 0x6c7e

00006c66 <.L151>:
    6c66:	5a 42 14 1c 	mov.b	&0x1c14,r10	;0x1c14

00006c6a <.L119>:
        if (xpr_timing[i].status == USED)
    6c6a:	92 93 1c 1c 	cmp	#1,	&0x1c1c	;r3 As==01
    6c6e:	ab 23       	jnz	$-168    	;abs 0x6bc6

00006c70 <.Loc.271.1>:
            if (first)
    6c70:	16 42 20 1c 	mov	&0x1c20,r6	;0x1c20
    6c74:	17 42 22 1c 	mov	&0x1c22,r7	;0x1c22

00006c78 <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    6c78:	08 4d       	mov	r13,	r8	;
    6c7a:	09 4c       	mov	r12,	r9	;
    6c7c:	87 3f       	jmp	$-240    	;abs 0x6b8c

00006c7e <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6c7e:	09 9c       	cmp	r12,	r9	;
    6c80:	02 20       	jnz	$+6      	;abs 0x6c86
    6c82:	0d 98       	cmp	r8,	r13	;
    6c84:	f0 2b       	jnc	$-30     	;abs 0x6c66

00006c86 <.L114>:
    6c86:	0d 98       	cmp	r8,	r13	;
    6c88:	93 24       	jz	$+296    	;abs 0x6db0

00006c8a <.L118>:
        if (xpr_timing[i].status == USED)
    6c8a:	92 93 1c 1c 	cmp	#1,	&0x1c1c	;r3 As==01
    6c8e:	9d 23       	jnz	$-196    	;abs 0x6bca

00006c90 <.Loc.271.1>:
            if (first)
    6c90:	16 42 20 1c 	mov	&0x1c20,r6	;0x1c20
    6c94:	17 42 22 1c 	mov	&0x1c22,r7	;0x1c22
    6c98:	79 3f       	jmp	$-268    	;abs 0x6b8c

00006c9a <.L162>:
            if (xpr_timing[i].data <= 0)
    6c9a:	0c 93       	cmp	#0,	r12	;r3 As==00
    6c9c:	02 20       	jnz	$+6      	;abs 0x6ca2
    6c9e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6ca0:	b0 23       	jnz	$-158    	;abs 0x6c02

00006ca2 <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6ca2:	5c 42 28 1c 	mov.b	&0x1c28,r12	;0x1c28
    6ca6:	b0 12 80 65 	call	#25984		;#0x6580
    6caa:	b0 12 26 65 	call	#25894		;#0x6526

00006cae <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    6cae:	5c 42 28 1c 	mov.b	&0x1c28,r12	;0x1c28

00006cb2 <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    6cb2:	d2 92 28 1c 	cmp.b	&0x1c28,&0x1c14	;0x1c28
    6cb6:	14 1c 
    6cb8:	8e 24       	jz	$+286    	;abs 0x6dd6

00006cba <.Loc.237.1>:
    6cba:	c2 9c 1e 1c 	cmp.b	r12,	&0x1c1e	;
    6cbe:	91 24       	jz	$+292    	;abs 0x6de2

00006cc0 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6cc0:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006cc2 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6cc2:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006cc4 <.L136>:
            xpr_timing[i].status = NOT_USED;
    6cc4:	0d 4e       	mov	r14,	r13	;
    6cc6:	5d 06       	rlam	#2,	r13	;
    6cc8:	0d 5e       	add	r14,	r13	;
    6cca:	5d 02       	rlam	#1,	r13	;
    6ccc:	8d 43 12 1c 	mov	#0,	7186(r13);r3 As==00, 0x1c12

00006cd0 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6cd0:	4e 43       	clr.b	r14		;
    6cd2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6cd4:	b0 12 60 74 	call	#29792		;#0x7460

00006cd8 <.LBE18>:
            if (xpr_timing[i].data > 0)
    6cd8:	1d 42 2a 1c 	mov	&0x1c2a,r13	;0x1c2a
    6cdc:	1c 42 2c 1c 	mov	&0x1c2c,r12	;0x1c2c

00006ce0 <.Loc.292.1>:
    6ce0:	4e 43       	clr.b	r14		;
    6ce2:	0e 9c       	cmp	r12,	r14	;
    6ce4:	8e 3b       	jl	$-226    	;abs 0x6c02
    6ce6:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ce8:	94 23       	jnz	$-214    	;abs 0x6c12
    6cea:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cec:	92 27       	jz	$-218    	;abs 0x6c12

00006cee <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6cee:	0c 99       	cmp	r9,	r12	;
    6cf0:	8a 37       	jge	$-234    	;abs 0x6c06

00006cf2 <.L154>:
    6cf2:	5a 42 28 1c 	mov.b	&0x1c28,r10	;0x1c28

00006cf6 <.LVL117>:
    if (!first)
    6cf6:	08 4d       	mov	r13,	r8	;
    6cf8:	8c 3f       	jmp	$-230    	;abs 0x6c12

00006cfa <.L161>:
            if (xpr_timing[i].data <= 0)
    6cfa:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cfc:	02 20       	jnz	$+6      	;abs 0x6d02
    6cfe:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d00:	5a 23       	jnz	$-330    	;abs 0x6bb6

00006d02 <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6d02:	5c 42 1e 1c 	mov.b	&0x1c1e,r12	;0x1c1e
    6d06:	b0 12 80 65 	call	#25984		;#0x6580
    6d0a:	b0 12 26 65 	call	#25894		;#0x6526

00006d0e <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    6d0e:	d2 92 14 1c 	cmp.b	&0x1c14,&0x1c1e	;0x1c14
    6d12:	1e 1c 
    6d14:	63 24       	jz	$+200    	;abs 0x6ddc

00006d16 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6d16:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006d18 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6d18:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006d1a <.L131>:
            xpr_timing[i].status = NOT_USED;
    6d1a:	0d 4e       	mov	r14,	r13	;
    6d1c:	5d 06       	rlam	#2,	r13	;
    6d1e:	0d 5e       	add	r14,	r13	;
    6d20:	5d 02       	rlam	#1,	r13	;
    6d22:	8d 43 12 1c 	mov	#0,	7186(r13);r3 As==00, 0x1c12

00006d26 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6d26:	4e 43       	clr.b	r14		;
    6d28:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6d2a:	b0 12 60 74 	call	#29792		;#0x7460

00006d2e <.LVL122>:
            if (xpr_timing[i].data > 0)
    6d2e:	1d 42 20 1c 	mov	&0x1c20,r13	;0x1c20
    6d32:	1c 42 22 1c 	mov	&0x1c22,r12	;0x1c22

00006d36 <.Loc.292.1>:
    6d36:	4e 43       	clr.b	r14		;
    6d38:	0e 9c       	cmp	r12,	r14	;
    6d3a:	3d 3b       	jl	$-388    	;abs 0x6bb6
    6d3c:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d3e:	45 23       	jnz	$-372    	;abs 0x6bca
    6d40:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d42:	43 27       	jz	$-376    	;abs 0x6bca

00006d44 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6d44:	0c 99       	cmp	r9,	r12	;
    6d46:	3d 3b       	jl	$-388    	;abs 0x6bc2
    6d48:	38 3f       	jmp	$-398    	;abs 0x6bba

00006d4a <.L164>:
            if (xpr_timing[i].data <= 0)
    6d4a:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d4c:	02 20       	jnz	$+6      	;abs 0x6d52
    6d4e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d50:	88 23       	jnz	$-238    	;abs 0x6c62

00006d52 <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6d52:	5c 42 14 1c 	mov.b	&0x1c14,r12	;0x1c14
    6d56:	b0 12 80 65 	call	#25984		;#0x6580
    6d5a:	b0 12 26 65 	call	#25894		;#0x6526

00006d5e <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    6d5e:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

00006d62 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6d62:	4e 43       	clr.b	r14		;
    6d64:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6d66:	4c 43       	clr.b	r12		;
    6d68:	b0 12 60 74 	call	#29792		;#0x7460

00006d6c <.LVL126>:
            if (xpr_timing[i].data > 0)
    6d6c:	1d 42 16 1c 	mov	&0x1c16,r13	;0x1c16
    6d70:	1c 42 18 1c 	mov	&0x1c18,r12	;0x1c18

00006d74 <.Loc.292.1>:
    6d74:	4e 43       	clr.b	r14		;
    6d76:	0e 9c       	cmp	r12,	r14	;
    6d78:	74 3b       	jl	$-278    	;abs 0x6c62
    6d7a:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d7c:	86 23       	jnz	$-242    	;abs 0x6c8a
    6d7e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d80:	84 27       	jz	$-246    	;abs 0x6c8a

00006d82 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6d82:	0c 99       	cmp	r9,	r12	;
    6d84:	70 3b       	jl	$-286    	;abs 0x6c66
    6d86:	7b 3f       	jmp	$-264    	;abs 0x6c7e

00006d88 <.L128>:
    6d88:	08 9d       	cmp	r13,	r8	;
    6d8a:	1f 23       	jnz	$-448    	;abs 0x6bca
    6d8c:	09 9c       	cmp	r12,	r9	;
    6d8e:	1d 23       	jnz	$-452    	;abs 0x6bca

00006d90 <.Loc.294.1>:
    6d90:	5e 42 1e 1c 	mov.b	&0x1c1e,r14	;0x1c1e

00006d94 <.Loc.294.1>:
    6d94:	5a 92 1e 1c 	cmp.b	&0x1c1e,r10	;0x1c1e
    6d98:	18 2f       	jc	$-462    	;abs 0x6bca
    6d9a:	0a 4e       	mov	r14,	r10	;

00006d9c <.LVL128>:
    6d9c:	14 3f       	jmp	$-470    	;abs 0x6bc6

00006d9e <.L143>:
            if (first)
    6d9e:	16 42 2a 1c 	mov	&0x1c2a,r6	;0x1c2a
    6da2:	17 42 2c 1c 	mov	&0x1c2c,r7	;0x1c2c

00006da6 <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    6da6:	5a 42 28 1c 	mov.b	&0x1c28,r10	;0x1c28

00006daa <.LVL131>:
    6daa:	08 46       	mov	r6,	r8	;
    6dac:	09 47       	mov	r7,	r9	;
    6dae:	14 3f       	jmp	$-470    	;abs 0x6bd8

00006db0 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6db0:	0c 99       	cmp	r9,	r12	;
    6db2:	6b 23       	jnz	$-296    	;abs 0x6c8a

00006db4 <.Loc.294.1>:
    6db4:	5e 42 14 1c 	mov.b	&0x1c14,r14	;0x1c14

00006db8 <.Loc.294.1>:
    6db8:	5a 92 14 1c 	cmp.b	&0x1c14,r10	;0x1c14
    6dbc:	66 2f       	jc	$-306    	;abs 0x6c8a
    6dbe:	0a 4e       	mov	r14,	r10	;

00006dc0 <.LVL133>:
    6dc0:	54 3f       	jmp	$-342    	;abs 0x6c6a

00006dc2 <.L163>:
    6dc2:	09 9c       	cmp	r12,	r9	;
    6dc4:	26 23       	jnz	$-434    	;abs 0x6c12

00006dc6 <.Loc.294.1>:
    6dc6:	5c 42 28 1c 	mov.b	&0x1c28,r12	;0x1c28

00006dca <.Loc.294.1>:
    6dca:	5a 92 28 1c 	cmp.b	&0x1c28,r10	;0x1c28
    6dce:	21 2f       	jc	$-444    	;abs 0x6c12
    6dd0:	0a 4c       	mov	r12,	r10	;

00006dd2 <.LVL135>:
    if (!first)
    6dd2:	08 4d       	mov	r13,	r8	;
    6dd4:	1e 3f       	jmp	$-450    	;abs 0x6c12

00006dd6 <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6dd6:	4c 43       	clr.b	r12		;

00006dd8 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6dd8:	4e 43       	clr.b	r14		;
    6dda:	74 3f       	jmp	$-278    	;abs 0x6cc4

00006ddc <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6ddc:	4c 43       	clr.b	r12		;

00006dde <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6dde:	4e 43       	clr.b	r14		;
    6de0:	9c 3f       	jmp	$-198    	;abs 0x6d1a

00006de2 <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6de2:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006de4 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6de4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6de6:	6e 3f       	jmp	$-290    	;abs 0x6cc4

00006de8 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    6de8:	5a 15       	pushm	#6,	r10	;16-bit words

00006dea <.LCFI31>:
    6dea:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006dee <.LCFI32>:
    6dee:	47 4c       	mov.b	r12,	r7	;
    6df0:	08 4d       	mov	r13,	r8	;
    6df2:	06 4e       	mov	r14,	r6	;

00006df4 <.LBB26>:
    6df4:	45 43       	clr.b	r5		;
    6df6:	39 40 12 1c 	mov	#7186,	r9	;#0x1c12

00006dfa <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6dfa:	0a 45       	mov	r5,	r10	;
    6dfc:	5a 06       	rlam	#2,	r10	;
    6dfe:	0a 55       	add	r5,	r10	;
    6e00:	5a 02       	rlam	#1,	r10	;
    6e02:	0a 59       	add	r9,	r10	;
    6e04:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6e06:	4d 45       	mov.b	r5,	r13	;
    6e08:	0c 41       	mov	r1,	r12	;
    6e0a:	b0 12 5c 76 	call	#30300		;#0x765c
    6e0e:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6e12:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6e16:	02 00 
    6e18:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6e1c:	04 00 
    6e1e:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6e22:	06 00 
    6e24:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6e28:	08 00 

00006e2a <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6e2a:	15 53       	inc	r5		;

00006e2c <.Loc.252.1>:
    6e2c:	35 90 03 00 	cmp	#3,	r5	;
    6e30:	e4 23       	jnz	$-54     	;abs 0x6dfa

00006e32 <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    6e32:	82 93 12 1c 	cmp	#0,	&0x1c12	;r3 As==00
    6e36:	1d 24       	jz	$+60     	;abs 0x6e72

00006e38 <.Loc.324.1>:
    6e38:	82 93 1c 1c 	cmp	#0,	&0x1c1c	;r3 As==00
    6e3c:	4e 24       	jz	$+158    	;abs 0x6eda

00006e3e <.Loc.324.1>:
    6e3e:	82 93 26 1c 	cmp	#0,	&0x1c26	;r3 As==00
    6e42:	4e 24       	jz	$+158    	;abs 0x6ee0

00006e44 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    6e44:	0e 48       	mov	r8,	r14	;
    6e46:	0f 46       	mov	r6,	r15	;
    6e48:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6e4a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e4c:	b0 12 c0 73 	call	#29632		;#0x73c0

00006e50 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    6e50:	4e 47       	mov.b	r7,	r14	;
    6e52:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6e54:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e56:	b0 12 14 74 	call	#29716		;#0x7414

00006e5a <.Loc.349.1>:
        refresh_xpr_timers();
    6e5a:	b0 12 60 6b 	call	#27488		;#0x6b60

00006e5e <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    6e5e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e60:	b0 12 c4 74 	call	#29892		;#0x74c4

00006e64 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6e64:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e66:	b0 12 18 76 	call	#30232		;#0x7618

00006e6a <.Loc.354.1>:
}
    6e6a:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006e6e <.LCFI33>:
    6e6e:	55 17       	popm	#6,	r10	;16-bit words

00006e70 <.LCFI34>:
    6e70:	30 41       	ret			

00006e72 <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6e72:	1a 42 12 1c 	mov	&0x1c12,r10	;0x1c12

00006e76 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6e76:	05 4a       	mov	r10,	r5	;

00006e78 <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    6e78:	b0 12 5c 73 	call	#29532		;#0x735c

00006e7c <.Loc.328.1>:
    6e7c:	0e 45       	mov	r5,	r14	;
    6e7e:	5e 06       	rlam	#2,	r14	;
    6e80:	0e 55       	add	r5,	r14	;
    6e82:	5e 02       	rlam	#1,	r14	;
    6e84:	09 5e       	add	r14,	r9	;

00006e86 <.Loc.328.1>:
    6e86:	0c 58       	add	r8,	r12	;
    6e88:	89 4c 04 00 	mov	r12,	4(r9)	;
    6e8c:	0d 66       	addc	r6,	r13	;
    6e8e:	89 4d 06 00 	mov	r13,	6(r9)	;

00006e92 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    6e92:	b0 12 5c 73 	call	#29532		;#0x735c

00006e96 <.Loc.329.1>:
    6e96:	0e 4c       	mov	r12,	r14	;
    6e98:	0e 58       	add	r8,	r14	;
    6e9a:	0f 4d       	mov	r13,	r15	;
    6e9c:	0f 66       	addc	r6,	r15	;
    6e9e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ea0:	4c 4a       	mov.b	r10,	r12	;
    6ea2:	b0 12 c0 73 	call	#29632		;#0x73c0

00006ea6 <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    6ea6:	c9 47 02 00 	mov.b	r7,	2(r9)	;

00006eaa <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    6eaa:	4e 47       	mov.b	r7,	r14	;
    6eac:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6eae:	4c 4a       	mov.b	r10,	r12	;
    6eb0:	b0 12 14 74 	call	#29716		;#0x7414

00006eb4 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    6eb4:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

00006eb8 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    6eb8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6eba:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ebc:	4c 4a       	mov.b	r10,	r12	;
    6ebe:	b0 12 60 74 	call	#29792		;#0x7460

00006ec2 <.Loc.334.1>:
        refresh_xpr_timers();
    6ec2:	b0 12 60 6b 	call	#27488		;#0x6b60

00006ec6 <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    6ec6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ec8:	b0 12 c4 74 	call	#29892		;#0x74c4

00006ecc <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6ecc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ece:	b0 12 18 76 	call	#30232		;#0x7618

00006ed2 <.Loc.354.1>:
}
    6ed2:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006ed6 <.LCFI36>:
    6ed6:	55 17       	popm	#6,	r10	;16-bit words

00006ed8 <.LCFI37>:
    6ed8:	30 41       	ret			

00006eda <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6eda:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006edc <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6edc:	55 43       	mov.b	#1,	r5	;r3 As==01
    6ede:	cc 3f       	jmp	$-102    	;abs 0x6e78

00006ee0 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6ee0:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006ee2 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6ee2:	65 43       	mov.b	#2,	r5	;r3 As==10
    6ee4:	c9 3f       	jmp	$-108    	;abs 0x6e78

00006ee6 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    6ee6:	3a 15       	pushm	#4,	r10	;16-bit words

00006ee8 <.LCFI39>:
    6ee8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006eec <.LCFI40>:
    6eec:	47 4c       	mov.b	r12,	r7	;

00006eee <.LBB34>:
    6eee:	49 43       	clr.b	r9		;
    6ef0:	38 40 12 1c 	mov	#7186,	r8	;#0x1c12

00006ef4 <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6ef4:	0a 49       	mov	r9,	r10	;
    6ef6:	5a 06       	rlam	#2,	r10	;
    6ef8:	0a 59       	add	r9,	r10	;
    6efa:	5a 02       	rlam	#1,	r10	;
    6efc:	0a 58       	add	r8,	r10	;
    6efe:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6f00:	4d 49       	mov.b	r9,	r13	;
    6f02:	0c 41       	mov	r1,	r12	;
    6f04:	b0 12 5c 76 	call	#30300		;#0x765c
    6f08:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6f0c:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6f10:	02 00 
    6f12:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6f16:	04 00 
    6f18:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6f1c:	06 00 
    6f1e:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6f22:	08 00 

00006f24 <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6f24:	19 53       	inc	r9		;

00006f26 <.Loc.252.1>:
    6f26:	39 90 03 00 	cmp	#3,	r9	;
    6f2a:	e4 23       	jnz	$-54     	;abs 0x6ef4

00006f2c <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    6f2c:	c2 97 14 1c 	cmp.b	r7,	&0x1c14	;
    6f30:	12 24       	jz	$+38     	;abs 0x6f56

00006f32 <.Loc.237.1>:
    6f32:	c2 97 1e 1c 	cmp.b	r7,	&0x1c1e	;
    6f36:	27 24       	jz	$+80     	;abs 0x6f86

00006f38 <.Loc.237.1>:
    6f38:	c2 97 28 1c 	cmp.b	r7,	&0x1c28	;
    6f3c:	27 24       	jz	$+80     	;abs 0x6f8c

00006f3e <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    6f3e:	b0 12 60 6b 	call	#27488		;#0x6b60

00006f42 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    6f42:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6f44:	b0 12 c4 74 	call	#29892		;#0x74c4

00006f48 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6f48:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6f4a:	b0 12 18 76 	call	#30232		;#0x7618

00006f4e <.Loc.371.1>:

}
    6f4e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006f52 <.LCFI41>:
    6f52:	37 17       	popm	#4,	r10	;16-bit words

00006f54 <.LCFI42>:
    6f54:	30 41       	ret			

00006f56 <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6f56:	4c 43       	clr.b	r12		;

00006f58 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6f58:	4e 43       	clr.b	r14		;

00006f5a <.L181>:
            xpr_timing[i].status = NOT_USED;
    6f5a:	0d 4e       	mov	r14,	r13	;
    6f5c:	5d 06       	rlam	#2,	r13	;
    6f5e:	0d 5e       	add	r14,	r13	;
    6f60:	5d 02       	rlam	#1,	r13	;
    6f62:	8d 43 12 1c 	mov	#0,	7186(r13);r3 As==00, 0x1c12

00006f66 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6f66:	4e 43       	clr.b	r14		;
    6f68:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6f6a:	b0 12 60 74 	call	#29792		;#0x7460

00006f6e <.Loc.242.1>:
    refresh_xpr_timers();
    6f6e:	b0 12 60 6b 	call	#27488		;#0x6b60

00006f72 <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    6f72:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6f74:	b0 12 c4 74 	call	#29892		;#0x74c4

00006f78 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6f78:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6f7a:	b0 12 18 76 	call	#30232		;#0x7618

00006f7e <.Loc.371.1>:
}
    6f7e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006f82 <.LCFI44>:
    6f82:	37 17       	popm	#4,	r10	;16-bit words

00006f84 <.LCFI45>:
    6f84:	30 41       	ret			

00006f86 <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6f86:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006f88 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6f88:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6f8a:	e7 3f       	jmp	$-48     	;abs 0x6f5a

00006f8c <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6f8c:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006f8e <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6f8e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6f90:	e4 3f       	jmp	$-54     	;abs 0x6f5a

00006f92 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    6f92:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006f96 <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    6f96:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6f98:	4d 43       	clr.b	r13		;
    6f9a:	0c 41       	mov	r1,	r12	;
    6f9c:	b0 12 5c 76 	call	#30300		;#0x765c
    6fa0:	a2 41 08 1c 	mov	@r1,	&0x1c08	;
    6fa4:	92 41 02 00 	mov	2(r1),	&0x1c0a	;
    6fa8:	0a 1c 
    6faa:	92 41 04 00 	mov	4(r1),	&0x1c0c	;
    6fae:	0c 1c 
    6fb0:	92 41 06 00 	mov	6(r1),	&0x1c0e	;
    6fb4:	0e 1c 
    6fb6:	92 41 08 00 	mov	8(r1),	&0x1c10	;
    6fba:	10 1c 

00006fbc <.Loc.383.1>:
    }

}
    6fbc:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006fc0 <.LCFI48>:
    6fc0:	30 41       	ret			

00006fc2 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    6fc2:	2a 15       	pushm	#3,	r10	;16-bit words

00006fc4 <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    6fc4:	92 93 08 1c 	cmp	#1,	&0x1c08	;r3 As==01
    6fc8:	8a 20       	jnz	$+278    	;abs 0x70de

00006fca <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    6fca:	18 42 0c 1c 	mov	&0x1c0c,r8	;0x1c0c
    6fce:	19 42 0e 1c 	mov	&0x1c0e,r9	;0x1c0e

00006fd2 <.Loc.465.1>:
    6fd2:	82 48 4e 1c 	mov	r8,	&0x1c4e	;

00006fd6 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    6fd6:	d2 42 0a 1c 	mov.b	&0x1c0a,&0x1c50	;0x1c0a
    6fda:	50 1c 

00006fdc <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    6fdc:	b0 12 5c 73 	call	#29532		;#0x735c

00006fe0 <.Loc.471.1>:
    6fe0:	0e 48       	mov	r8,	r14	;
    6fe2:	0f 49       	mov	r9,	r15	;
    6fe4:	0e 8c       	sub	r12,	r14	;
    6fe6:	0f 7d       	subc	r13,	r15	;

00006fe8 <.Loc.471.1>:
    6fe8:	82 4e 0c 1c 	mov	r14,	&0x1c0c	;
    6fec:	82 4f 0e 1c 	mov	r15,	&0x1c0e	;

00006ff0 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    6ff0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6ff2:	4c 43       	clr.b	r12		;
    6ff4:	b0 12 c0 73 	call	#29632		;#0x73c0

00006ff8 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    6ff8:	1c 42 0c 1c 	mov	&0x1c0c,r12	;0x1c0c
    6ffc:	1d 42 0e 1c 	mov	&0x1c0e,r13	;0x1c0e

00007000 <.Loc.474.1>:
    7000:	0d 93       	cmp	#0,	r13	;r3 As==00
    7002:	21 38       	jl	$+68     	;abs 0x7046

00007004 <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    7004:	0f 4c       	mov	r12,	r15	;
    7006:	0f dd       	bis	r13,	r15	;
    7008:	0f 93       	cmp	#0,	r15	;r3 As==00
    700a:	6d 24       	jz	$+220    	;abs 0x70e6

0000700c <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    700c:	1f 42 4e 1c 	mov	&0x1c4e,r15	;0x1c4e
    7010:	08 4f       	mov	r15,	r8	;
    7012:	09 43       	clr	r9		;

00007014 <.Loc.485.1>:
    7014:	0d 93       	cmp	#0,	r13	;r3 As==00
    7016:	54 38       	jl	$+170    	;abs 0x70c0
    7018:	0d 93       	cmp	#0,	r13	;r3 As==00
    701a:	02 20       	jnz	$+6      	;abs 0x7020
    701c:	0c 98       	cmp	r8,	r12	;
    701e:	50 28       	jnc	$+162    	;abs 0x70c0

00007020 <.L209>:
    7020:	5e 42 50 1c 	mov.b	&0x1c50,r14	;0x1c50

00007024 <.Loc.485.1>:
    7024:	0c 98       	cmp	r8,	r12	;
    7026:	53 24       	jz	$+168    	;abs 0x70ce

00007028 <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    7028:	4d 4e       	mov.b	r14,	r13	;
    702a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    702c:	b0 12 a8 74 	call	#29864		;#0x74a8

00007030 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    7030:	1d 42 4e 1c 	mov	&0x1c4e,r13	;0x1c4e
    7034:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7036:	b0 12 b6 74 	call	#29878		;#0x74b6

0000703a <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    703a:	1c 42 4e 1c 	mov	&0x1c4e,r12	;0x1c4e
    703e:	b0 12 04 73 	call	#29444		;#0x7304

00007042 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    7042:	28 17       	popm	#3,	r10	;16-bit words

00007044 <.LCFI50>:
    7044:	30 41       	ret			

00007046 <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    7046:	59 42 59 1c 	mov.b	&0x1c59,r9	;0x1c59
    704a:	0f 43       	clr	r15		;
    704c:	0f 89       	sub	r9,	r15	;
    704e:	08 4f       	mov	r15,	r8	;
    7050:	09 4f       	mov	r15,	r9	;
    7052:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

00007056 <.Loc.474.1>:
    7056:	09 9d       	cmp	r13,	r9	;
    7058:	04 38       	jl	$+10     	;abs 0x7062

0000705a <.Loc.474.1>:
    705a:	0d 99       	cmp	r9,	r13	;
    705c:	25 20       	jnz	$+76     	;abs 0x70a8
    705e:	0f 9c       	cmp	r12,	r15	;
    7060:	23 2c       	jc	$+72     	;abs 0x70a8

00007062 <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7062:	1e 42 4e 1c 	mov	&0x1c4e,r14	;0x1c4e
    7066:	0a 4e       	mov	r14,	r10	;
    7068:	0b 43       	clr	r11		;

0000706a <.Loc.476.1>:
    706a:	48 43       	clr.b	r8		;
    706c:	49 43       	clr.b	r9		;
    706e:	08 8c       	sub	r12,	r8	;
    7070:	09 7d       	subc	r13,	r9	;

00007072 <.Loc.476.1>:
    7072:	09 93       	cmp	#0,	r9	;r3 As==00
    7074:	04 38       	jl	$+10     	;abs 0x707e
    7076:	09 93       	cmp	#0,	r9	;r3 As==00
    7078:	0b 20       	jnz	$+24     	;abs 0x7090
    707a:	08 9a       	cmp	r10,	r8	;
    707c:	09 2c       	jc	$+20     	;abs 0x7090

0000707e <.L207>:
    707e:	5e 42 0a 1c 	mov.b	&0x1c0a,r14	;0x1c0a

00007082 <.L196>:
                    min_pdc = -pdc_timing[i].data;
    7082:	4f 43       	clr.b	r15		;
    7084:	0f 8c       	sub	r12,	r15	;
    7086:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

0000708a <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    708a:	c2 4e 50 1c 	mov.b	r14,	&0x1c50	;

0000708e <.Loc.494.1>:
    if (!first)
    708e:	cc 3f       	jmp	$-102    	;abs 0x7028

00007090 <.L194>:
    7090:	5e 42 50 1c 	mov.b	&0x1c50,r14	;0x1c50

00007094 <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7094:	0a 98       	cmp	r8,	r10	;
    7096:	c8 23       	jnz	$-110    	;abs 0x7028
    7098:	09 93       	cmp	#0,	r9	;r3 As==00
    709a:	c6 23       	jnz	$-114    	;abs 0x7028

0000709c <.Loc.476.1>:
    709c:	5f 42 0a 1c 	mov.b	&0x1c0a,r15	;0x1c0a

000070a0 <.Loc.476.1>:
    70a0:	4f 9e       	cmp.b	r14,	r15	;
    70a2:	c2 2f       	jc	$-122    	;abs 0x7028
    70a4:	0e 4f       	mov	r15,	r14	;
    70a6:	ed 3f       	jmp	$-36     	;abs 0x7082

000070a8 <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    70a8:	5e 42 50 1c 	mov.b	&0x1c50,r14	;0x1c50

000070ac <.Loc.481.1>:
    70ac:	0d 99       	cmp	r9,	r13	;
    70ae:	05 38       	jl	$+12     	;abs 0x70ba
    70b0:	0a 49       	mov	r9,	r10	;
    70b2:	09 9d       	cmp	r13,	r9	;
    70b4:	b9 23       	jnz	$-140    	;abs 0x7028
    70b6:	0c 9f       	cmp	r15,	r12	;
    70b8:	b7 2f       	jc	$-144    	;abs 0x7028

000070ba <.L208>:
    70ba:	82 43 08 1c 	mov	#0,	&0x1c08	;r3 As==00

000070be <.Loc.494.1>:
    if (!first)
    70be:	b4 3f       	jmp	$-150    	;abs 0x7028

000070c0 <.L201>:
    70c0:	5e 42 0a 1c 	mov.b	&0x1c0a,r14	;0x1c0a

000070c4 <.L203>:
                    min_pdc = pdc_timing[i].data;
    70c4:	82 4c 4e 1c 	mov	r12,	&0x1c4e	;

000070c8 <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    70c8:	c2 4e 50 1c 	mov.b	r14,	&0x1c50	;

000070cc <.Loc.494.1>:
    if (!first)
    70cc:	ad 3f       	jmp	$-164    	;abs 0x7028

000070ce <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    70ce:	0d 99       	cmp	r9,	r13	;
    70d0:	ab 23       	jnz	$-168    	;abs 0x7028

000070d2 <.Loc.485.1>:
    70d2:	5f 42 0a 1c 	mov.b	&0x1c0a,r15	;0x1c0a

000070d6 <.Loc.485.1>:
    70d6:	4f 9e       	cmp.b	r14,	r15	;
    70d8:	a7 2f       	jc	$-176    	;abs 0x7028
    70da:	0e 4f       	mov	r15,	r14	;
    70dc:	f3 3f       	jmp	$-24     	;abs 0x70c4

000070de <.L189>:
    else stop_timer();
    70de:	b0 12 ba 72 	call	#29370		;#0x72ba

000070e2 <.Loc.507.1>:
}
    70e2:	28 17       	popm	#3,	r10	;16-bit words

000070e4 <.LCFI52>:
    70e4:	30 41       	ret			

000070e6 <.L199>:
    if (!first)
    70e6:	5e 42 50 1c 	mov.b	&0x1c50,r14	;0x1c50
    70ea:	9e 3f       	jmp	$-194    	;abs 0x7028

000070ec <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    70ec:	1a 15       	pushm	#2,	r10	;16-bit words

000070ee <.LCFI54>:
    70ee:	17 15       	pushm	#2,	r7	;16-bit words

000070f0 <.LCFI55>:
    70f0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000070f4 <.LCFI56>:
    70f4:	49 4c       	mov.b	r12,	r9	;
    70f6:	0a 4d       	mov	r13,	r10	;

000070f8 <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    70f8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    70fa:	4d 43       	clr.b	r13		;

000070fc <.LVL210>:
    70fc:	0c 41       	mov	r1,	r12	;

000070fe <.LVL211>:
    70fe:	b0 12 5c 76 	call	#30300		;#0x765c
    7102:	a2 41 08 1c 	mov	@r1,	&0x1c08	;
    7106:	92 41 02 00 	mov	2(r1),	&0x1c0a	;
    710a:	0a 1c 
    710c:	92 41 04 00 	mov	4(r1),	&0x1c0c	;
    7110:	0c 1c 
    7112:	92 41 06 00 	mov	6(r1),	&0x1c0e	;
    7116:	0e 1c 
    7118:	92 41 08 00 	mov	8(r1),	&0x1c10	;
    711c:	10 1c 

0000711e <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    711e:	06 4a       	mov	r10,	r6	;
    7120:	07 43       	clr	r7		;

00007122 <.Loc.401.1>:
    7122:	82 93 08 1c 	cmp	#0,	&0x1c08	;r3 As==00
    7126:	31 20       	jnz	$+100    	;abs 0x718a

00007128 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    7128:	4c 49       	mov.b	r9,	r12	;
    712a:	b0 12 80 65 	call	#25984		;#0x6580
    712e:	0d 4a       	mov	r10,	r13	;
    7130:	b0 12 4c 65 	call	#25932		;#0x654c

00007134 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    7134:	4c 49       	mov.b	r9,	r12	;
    7136:	b0 12 80 65 	call	#25984		;#0x6580
    713a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    713c:	b0 12 52 65 	call	#25938		;#0x6552

00007140 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    7140:	0e 46       	mov	r6,	r14	;
    7142:	0f 47       	mov	r7,	r15	;
    7144:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7146:	4c 43       	clr.b	r12		;
    7148:	b0 12 c0 73 	call	#29632		;#0x73c0

0000714c <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    714c:	82 46 0c 1c 	mov	r6,	&0x1c0c	;
    7150:	82 47 0e 1c 	mov	r7,	&0x1c0e	;

00007154 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    7154:	4e 49       	mov.b	r9,	r14	;
    7156:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7158:	4c 43       	clr.b	r12		;
    715a:	b0 12 14 74 	call	#29716		;#0x7414

0000715e <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    715e:	c2 49 0a 1c 	mov.b	r9,	&0x1c0a	;

00007162 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    7162:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7164:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7166:	4c 43       	clr.b	r12		;
    7168:	b0 12 60 74 	call	#29792		;#0x7460

0000716c <.Loc.410.1>:
            pdc_timing[i].status = USED;
    716c:	92 43 08 1c 	mov	#1,	&0x1c08	;r3 As==01

00007170 <.Loc.411.1>:
        refresh_pdc_timers();
    7170:	b0 12 c2 6f 	call	#28610		;#0x6fc2

00007174 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    7174:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7176:	b0 12 c4 74 	call	#29892		;#0x74c4

0000717a <.Loc.434.1>:
    _pers_timer_commit(PDC);
    717a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    717c:	b0 12 18 76 	call	#30232		;#0x7618

00007180 <.Loc.435.1>:
}
    7180:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007184 <.LCFI57>:
    7184:	16 17       	popm	#2,	r7	;16-bit words

00007186 <.LCFI58>:
    7186:	19 17       	popm	#2,	r10	;16-bit words

00007188 <.LCFI59>:
    7188:	30 41       	ret			

0000718a <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    718a:	82 46 0c 1c 	mov	r6,	&0x1c0c	;
    718e:	82 47 0e 1c 	mov	r7,	&0x1c0e	;

00007192 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    7192:	0e 46       	mov	r6,	r14	;
    7194:	0f 47       	mov	r7,	r15	;
    7196:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7198:	4c 43       	clr.b	r12		;
    719a:	b0 12 c0 73 	call	#29632		;#0x73c0

0000719e <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    719e:	c2 49 0a 1c 	mov.b	r9,	&0x1c0a	;

000071a2 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    71a2:	4e 49       	mov.b	r9,	r14	;
    71a4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71a6:	4c 43       	clr.b	r12		;
    71a8:	b0 12 14 74 	call	#29716		;#0x7414

000071ac <.Loc.430.1>:
        refresh_pdc_timers();
    71ac:	b0 12 c2 6f 	call	#28610		;#0x6fc2

000071b0 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    71b0:	5c 43       	mov.b	#1,	r12	;r3 As==01
    71b2:	b0 12 c4 74 	call	#29892		;#0x74c4

000071b6 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    71b6:	5c 43       	mov.b	#1,	r12	;r3 As==01
    71b8:	b0 12 18 76 	call	#30232		;#0x7618

000071bc <.Loc.435.1>:
}
    71bc:	31 50 0a 00 	add	#10,	r1	;#0x000a

000071c0 <.LCFI61>:
    71c0:	16 17       	popm	#2,	r7	;16-bit words

000071c2 <.LCFI62>:
    71c2:	19 17       	popm	#2,	r10	;16-bit words

000071c4 <.LCFI63>:
    71c4:	30 41       	ret			

000071c6 <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    71c6:	0a 15       	pushm	#1,	r10	;16-bit words

000071c8 <.LCFI64>:
    71c8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000071cc <.LCFI65>:
    71cc:	4a 4c       	mov.b	r12,	r10	;

000071ce <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    71ce:	5e 43       	mov.b	#1,	r14	;r3 As==01
    71d0:	4d 43       	clr.b	r13		;
    71d2:	0c 41       	mov	r1,	r12	;

000071d4 <.LVL233>:
    71d4:	b0 12 5c 76 	call	#30300		;#0x765c
    71d8:	a2 41 08 1c 	mov	@r1,	&0x1c08	;
    71dc:	92 41 02 00 	mov	2(r1),	&0x1c0a	;
    71e0:	0a 1c 
    71e2:	92 41 04 00 	mov	4(r1),	&0x1c0c	;
    71e6:	0c 1c 
    71e8:	92 41 06 00 	mov	6(r1),	&0x1c0e	;
    71ec:	0e 1c 
    71ee:	92 41 08 00 	mov	8(r1),	&0x1c10	;
    71f2:	10 1c 

000071f4 <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    71f4:	c2 9a 0a 1c 	cmp.b	r10,	&0x1c0a	;
    71f8:	07 20       	jnz	$+16     	;abs 0x7208

000071fa <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    71fa:	82 43 08 1c 	mov	#0,	&0x1c08	;r3 As==00

000071fe <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    71fe:	4e 43       	clr.b	r14		;
    7200:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7202:	4c 43       	clr.b	r12		;
    7204:	b0 12 60 74 	call	#29792		;#0x7460

00007208 <.L216>:
    refresh_pdc_timers();
    7208:	b0 12 c2 6f 	call	#28610		;#0x6fc2

0000720c <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    720c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    720e:	b0 12 c4 74 	call	#29892		;#0x74c4

00007212 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    7212:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7214:	b0 12 18 76 	call	#30232		;#0x7618

00007218 <.Loc.450.1>:
}
    7218:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000721c <.LCFI66>:
    721c:	0a 17       	popm	#1,	r10	;16-bit words

0000721e <.LCFI67>:
    721e:	30 41       	ret			

00007220 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    7220:	5c 92 0a 1c 	cmp.b	&0x1c0a,r12	;0x1c0a
    7224:	07 20       	jnz	$+16     	;abs 0x7234

00007226 <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    7226:	82 43 08 1c 	mov	#0,	&0x1c08	;r3 As==00

0000722a <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    722a:	4e 43       	clr.b	r14		;
    722c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    722e:	4c 43       	clr.b	r12		;

00007230 <.LVL242>:
    7230:	b0 12 60 74 	call	#29792		;#0x7460

00007234 <.L217>:

        }
    }
}
    7234:	30 41       	ret			

00007236 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    7236:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000723a <.Loc.83.1>:
    723a:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000723e <.Loc.83.1>:
    723e:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00007242 <.Loc.83.1>:
    7242:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00007246 <.Loc.83.1>:
    7246:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000724a <.Loc.83.1>:
    724a:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000724e <.Loc.83.1>:
    724e:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00007252 <.Loc.83.1>:
    7252:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00007256 <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    7256:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000725a <.Loc.88.1>:
}
    725a:	30 41       	ret			

0000725c <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    725c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007260 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    7260:	0e 4c       	mov	r12,	r14	;
    7262:	5e 09       	rram	#3,	r14	;

00007264 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    7264:	7e f0 07 00 	and.b	#7,	r14	;

00007268 <.Loc.99.1>:
    7268:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    726c:	08 00 

0000726e <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    726e:	0d 5e       	add	r14,	r13	;

00007270 <.LVL12>:
    7270:	7c f0 07 00 	and.b	#7,	r12	;

00007274 <.LVL13>:
    7274:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    7278:	00 00 

0000727a <.Loc.101.1>:
}
    727a:	30 41       	ret			

0000727c <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    727c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007280 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    7280:	0e 4c       	mov	r12,	r14	;
    7282:	5e 09       	rram	#3,	r14	;

00007284 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    7284:	7e f0 07 00 	and.b	#7,	r14	;
    7288:	0f 4d       	mov	r13,	r15	;
    728a:	0f 5e       	add	r14,	r15	;

0000728c <.Loc.112.1>:
    728c:	7c f0 07 00 	and.b	#7,	r12	;

00007290 <.LVL16>:
    7290:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    7294:	00 00 

00007296 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    7296:	6c 4f       	mov.b	@r15,	r12	;

00007298 <.Loc.114.1>:
    7298:	0c 93       	cmp	#0,	r12	;r3 As==00
    729a:	03 20       	jnz	$+8      	;abs 0x72a2

0000729c <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    729c:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    72a0:	08 00 

000072a2 <.L4>:
    }
}
    72a2:	30 41       	ret			

000072a4 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    72a4:	5d 4c 08 00 	mov.b	8(r12),	r13	;

000072a8 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    72a8:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

000072ac <.LVL19>:
    72ac:	0c 5d       	add	r13,	r12	;

000072ae <.LVL20>:
    72ae:	6e 4c       	mov.b	@r12,	r14	;

000072b0 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    72b0:	0c 4d       	mov	r13,	r12	;
    72b2:	5c 0a       	rlam	#3,	r12	;

000072b4 <.Loc.128.1>:
}
    72b4:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    72b8:	30 41       	ret			

000072ba <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    72ba:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

000072be <.Loc.158.1>:
    TA2CTL = 0;
    72be:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000072c2 <.Loc.159.1>:
}
    72c2:	30 41       	ret			

000072c4 <timerA2_init>:
    72c4:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    72c8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    72cc:	30 41       	ret			

000072ce <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    72ce:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

000072d2 <.Loc.172.1>:
    TA0CCR0 = ticks;
    72d2:	82 4c 52 03 	mov	r12,	&0x0352	;

000072d6 <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    72d6:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    72da:	42 03 

000072dc <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    72dc:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    72e0:	40 03 

000072e2 <.Loc.175.1>:
}
    72e2:	30 41       	ret			

000072e4 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    72e4:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000072e8 <.Loc.179.1>:
    TA2CCR0 = ticks;
    72e8:	82 4c 12 04 	mov	r12,	&0x0412	;

000072ec <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    72ec:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    72f0:	02 04 

000072f2 <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    72f2:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    72f6:	00 04 

000072f8 <.Loc.183.1>:

}
    72f8:	30 41       	ret			

000072fa <stop_timer_xpr>:
    72fa:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    72fe:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7302:	30 41       	ret			

00007304 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    7304:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007308 <.Loc.195.1>:
    TA1CCR0 = ticks;
    7308:	82 4c 92 03 	mov	r12,	&0x0392	;

0000730c <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    730c:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7310:	82 03 

00007312 <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7312:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    7316:	80 03 

00007318 <.Loc.198.1>:
}
    7318:	30 41       	ret			

0000731a <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    731a:	30 41       	ret			

0000731c <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    731c:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    7320:	61 01 

00007322 <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    7322:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    7326:	64 01 

00007328 <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    7328:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000732c <.Loc.248.1>:
  CSCTL0_H = 0;
    732c:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00007330 <.Loc.250.1>:

}
    7330:	30 41       	ret			

00007332 <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    7332:	4c 43       	clr.b	r12		;
    7334:	4d 43       	clr.b	r13		;
    7336:	30 41       	ret			

00007338 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    7338:	82 43 5a 52 	mov	#0,	&0x525a	;r3 As==00
    733c:	82 43 5c 52 	mov	#0,	&0x525c	;r3 As==00

00007340 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    7340:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007344 <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    7344:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    7348:	40 04 

0000734a <.Loc.334.1>:

    __bis_SR_register(GIE);
    734a:	03 43       	nop			
    734c:	32 d2       	eint			
    734e:	03 43       	nop			

00007350 <.Loc.335.1>:
}
    7350:	30 41       	ret			

00007352 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    7352:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007356 <.Loc.343.1>:
    TA3CCTL0 = 0;
    7356:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000735a <.Loc.344.1>:
}
    735a:	30 41       	ret			

0000735c <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    735c:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7360:	40 04 

00007362 <.Loc.356.1>:

   tmp = TA3R;
    7362:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00007366 <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    7366:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    736a:	40 04 

0000736c <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    736c:	0d 43       	clr	r13		;

0000736e <.LVL6>:
    736e:	0e 4c       	mov	r12,	r14	;
    7370:	0f 4d       	mov	r13,	r15	;
    7372:	0e 5e       	rla	r14		;
    7374:	0f 6f       	rlc	r15		;
    7376:	0e 5e       	rla	r14		;
    7378:	0f 6f       	rlc	r15		;
    737a:	0c 5e       	add	r14,	r12	;

0000737c <.LVL7>:
    737c:	0d 6f       	addc	r15,	r13	;
    737e:	0c 5c       	rla	r12		;
    7380:	0d 6d       	rlc	r13		;

00007382 <.Loc.363.1>:
}
    7382:	1c 52 5a 52 	add	&0x525a,r12	;0x525a
    7386:	1d 62 5c 52 	addc	&0x525c,r13	;0x525c
    738a:	30 41       	ret			

0000738c <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    738c:	b2 50 aa 00 	add	#170,	&0x525a	;#0x00aa
    7390:	5a 52 
    7392:	b2 60 0a 00 	addc	#10,	&0x525c	;#0x000a
    7396:	5c 52 

00007398 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    7398:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

0000739c <.Loc.381.1>:
}
    739c:	00 13       	reti			

0000739e <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    739e:	3c 40 5e 52 	mov	#21086,	r12	;#0x525e
    73a2:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000073a6 <.Loc.34.1>:
    73a6:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

000073aa <.Loc.34.1>:
    73aa:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

000073ae <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    73ae:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

000073b2 <.Loc.38.1>:
    73b2:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

000073b6 <.Loc.38.1>:
    73b6:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

000073ba <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    73ba:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

000073be <.Loc.42.1>:
    }
}
    73be:	30 41       	ret			

000073c0 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    73c0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000073c4 <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    73c4:	1d 93       	cmp	#1,	r13	;r3 As==01
    73c6:	1b 24       	jz	$+56     	;abs 0x73fe
    73c8:	2d 93       	cmp	#2,	r13	;r3 As==10
    73ca:	0e 24       	jz	$+30     	;abs 0x73e8
    73cc:	0d 93       	cmp	#0,	r13	;r3 As==00
    73ce:	01 24       	jz	$+4      	;abs 0x73d2

000073d0 <.Loc.69.1>:
        default:
            break;
    }


}
    73d0:	30 41       	ret			

000073d2 <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    73d2:	0d 4c       	mov	r12,	r13	;

000073d4 <.LVL9>:
    73d4:	5d 06       	rlam	#2,	r13	;
    73d6:	0c 5d       	add	r13,	r12	;

000073d8 <.LVL10>:
    73d8:	5c 02       	rlam	#1,	r12	;
    73da:	8c 4e c6 52 	mov	r14,	21190(r12); 0x52c6
    73de:	8c 4f c8 52 	mov	r15,	21192(r12); 0x52c8

000073e2 <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    73e2:	9c 43 ca 52 	mov	#1,	21194(r12);r3 As==01, 0x52ca

000073e6 <.Loc.55.1>:
}
    73e6:	30 41       	ret			

000073e8 <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    73e8:	0d 4c       	mov	r12,	r13	;

000073ea <.LVL12>:
    73ea:	5d 06       	rlam	#2,	r13	;
    73ec:	0c 5d       	add	r13,	r12	;
    73ee:	5c 02       	rlam	#1,	r12	;
    73f0:	8c 4e e4 52 	mov	r14,	21220(r12); 0x52e4
    73f4:	8c 4f e6 52 	mov	r15,	21222(r12); 0x52e6

000073f8 <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    73f8:	9c 43 e8 52 	mov	#1,	21224(r12);r3 As==01, 0x52e8

000073fc <.Loc.59.1>:
}
    73fc:	30 41       	ret			

000073fe <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    73fe:	0d 4c       	mov	r12,	r13	;

00007400 <.LVL14>:
    7400:	5d 06       	rlam	#2,	r13	;
    7402:	0c 5d       	add	r13,	r12	;
    7404:	5c 02       	rlam	#1,	r12	;
    7406:	8c 4e 02 53 	mov	r14,	21250(r12); 0x5302
    740a:	8c 4f 04 53 	mov	r15,	21252(r12); 0x5304

0000740e <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    740e:	9c 43 06 53 	mov	#1,	21254(r12);r3 As==01, 0x5306

00007412 <.Loc.63.1>:
}
    7412:	30 41       	ret			

00007414 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    7414:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7418:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000741c <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    741c:	1d 93       	cmp	#1,	r13	;r3 As==01
    741e:	17 24       	jz	$+48     	;abs 0x744e
    7420:	2d 93       	cmp	#2,	r13	;r3 As==10
    7422:	0c 24       	jz	$+26     	;abs 0x743c
    7424:	0d 93       	cmp	#0,	r13	;r3 As==00
    7426:	01 24       	jz	$+4      	;abs 0x742a

00007428 <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    7428:	30 41       	ret			

0000742a <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    742a:	0d 4c       	mov	r12,	r13	;

0000742c <.LVL16>:
    742c:	5d 06       	rlam	#2,	r13	;
    742e:	0c 5d       	add	r13,	r12	;

00007430 <.LVL17>:
    7430:	5c 02       	rlam	#1,	r12	;
    7432:	cc 4e c4 52 	mov.b	r14,	21188(r12); 0x52c4

00007436 <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7436:	9c 43 ca 52 	mov	#1,	21194(r12);r3 As==01, 0x52ca

0000743a <.Loc.78.1>:
}
    743a:	30 41       	ret			

0000743c <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    743c:	0d 4c       	mov	r12,	r13	;

0000743e <.LVL19>:
    743e:	5d 06       	rlam	#2,	r13	;
    7440:	0c 5d       	add	r13,	r12	;
    7442:	5c 02       	rlam	#1,	r12	;
    7444:	cc 4e e2 52 	mov.b	r14,	21218(r12); 0x52e2

00007448 <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7448:	9c 43 e8 52 	mov	#1,	21224(r12);r3 As==01, 0x52e8

0000744c <.Loc.82.1>:
}
    744c:	30 41       	ret			

0000744e <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    744e:	0d 4c       	mov	r12,	r13	;

00007450 <.LVL21>:
    7450:	5d 06       	rlam	#2,	r13	;
    7452:	0c 5d       	add	r13,	r12	;
    7454:	5c 02       	rlam	#1,	r12	;
    7456:	cc 4e 00 53 	mov.b	r14,	21248(r12); 0x5300

0000745a <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    745a:	9c 43 06 53 	mov	#1,	21254(r12);r3 As==01, 0x5306

0000745e <.Loc.86.1>:
}
    745e:	30 41       	ret			

00007460 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    7460:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007464 <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    7464:	1d 93       	cmp	#1,	r13	;r3 As==01
    7466:	17 24       	jz	$+48     	;abs 0x7496
    7468:	2d 93       	cmp	#2,	r13	;r3 As==10
    746a:	0c 24       	jz	$+26     	;abs 0x7484
    746c:	0d 93       	cmp	#0,	r13	;r3 As==00
    746e:	01 24       	jz	$+4      	;abs 0x7472

00007470 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    7470:	30 41       	ret			

00007472 <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    7472:	0d 4c       	mov	r12,	r13	;

00007474 <.LVL23>:
    7474:	5d 06       	rlam	#2,	r13	;
    7476:	0c 5d       	add	r13,	r12	;

00007478 <.LVL24>:
    7478:	5c 02       	rlam	#1,	r12	;
    747a:	8c 4e c2 52 	mov	r14,	21186(r12); 0x52c2

0000747e <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    747e:	9c 43 ca 52 	mov	#1,	21194(r12);r3 As==01, 0x52ca

00007482 <.Loc.100.1>:
}
    7482:	30 41       	ret			

00007484 <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    7484:	0d 4c       	mov	r12,	r13	;

00007486 <.LVL26>:
    7486:	5d 06       	rlam	#2,	r13	;
    7488:	0c 5d       	add	r13,	r12	;
    748a:	5c 02       	rlam	#1,	r12	;
    748c:	8c 4e e0 52 	mov	r14,	21216(r12); 0x52e0

00007490 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7490:	9c 43 e8 52 	mov	#1,	21224(r12);r3 As==01, 0x52e8

00007494 <.Loc.104.1>:
}
    7494:	30 41       	ret			

00007496 <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    7496:	0d 4c       	mov	r12,	r13	;

00007498 <.LVL28>:
    7498:	5d 06       	rlam	#2,	r13	;
    749a:	0c 5d       	add	r13,	r12	;
    749c:	5c 02       	rlam	#1,	r12	;
    749e:	8c 4e fe 52 	mov	r14,	21246(r12); 0x52fe

000074a2 <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    74a2:	9c 43 06 53 	mov	#1,	21254(r12);r3 As==01, 0x5306

000074a6 <.Loc.108.1>:
}
    74a6:	30 41       	ret			

000074a8 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    74a8:	0e 4c       	mov	r12,	r14	;
    74aa:	5e 0a       	rlam	#3,	r14	;
    74ac:	ce 4d 0a 53 	mov.b	r13,	21258(r14); 0x530a

000074b0 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    74b0:	9e 43 0e 53 	mov	#1,	21262(r14);r3 As==01, 0x530e

000074b4 <.Loc.119.1>:
}
    74b4:	30 41       	ret			

000074b6 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    74b6:	0e 4c       	mov	r12,	r14	;
    74b8:	5e 0a       	rlam	#3,	r14	;
    74ba:	8e 4d 0c 53 	mov	r13,	21260(r14); 0x530c

000074be <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    74be:	9e 43 0e 53 	mov	#1,	21262(r14);r3 As==01, 0x530e

000074c2 <.Loc.125.1>:
}
    74c2:	30 41       	ret			

000074c4 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    74c4:	1c 93       	cmp	#1,	r12	;r3 As==01
    74c6:	0b 24       	jz	$+24     	;abs 0x74de
    74c8:	2c 93       	cmp	#2,	r12	;r3 As==10
    74ca:	06 24       	jz	$+14     	;abs 0x74d8
    74cc:	0c 93       	cmp	#0,	r12	;r3 As==00
    74ce:	01 24       	jz	$+4      	;abs 0x74d2

000074d0 <.Loc.145.1>:
        default:
            break;

    }

}
    74d0:	30 41       	ret			

000074d2 <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    74d2:	92 43 26 53 	mov	#1,	&0x5326	;r3 As==01

000074d6 <.Loc.133.1>:
}
    74d6:	30 41       	ret			

000074d8 <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    74d8:	92 43 28 53 	mov	#1,	&0x5328	;r3 As==01

000074dc <.Loc.136.1>:
}
    74dc:	30 41       	ret			

000074de <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    74de:	92 43 2a 53 	mov	#1,	&0x532a	;r3 As==01

000074e2 <.Loc.139.1>:
}
    74e2:	30 41       	ret			

000074e4 <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    74e4:	3d 40 5e 52 	mov	#21086,	r13	;#0x525e
    74e8:	1c 93       	cmp	#1,	r12	;r3 As==01
    74ea:	18 24       	jz	$+50     	;abs 0x751c
    74ec:	2c 93       	cmp	#2,	r12	;r3 As==10
    74ee:	40 24       	jz	$+130    	;abs 0x7570
    74f0:	0c 93       	cmp	#0,	r12	;r3 As==00
    74f2:	26 24       	jz	$+78     	;abs 0x7540

000074f4 <.L28>:
    74f4:	0e 4c       	mov	r12,	r14	;
    74f6:	5e 0a       	rlam	#3,	r14	;
    74f8:	9e 93 0e 53 	cmp	#1,	21262(r14);r3 As==01, 0x530e
    74fc:	01 24       	jz	$+4      	;abs 0x7500

000074fe <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    74fe:	30 41       	ret			

00007500 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    7500:	0c 4e       	mov	r14,	r12	;

00007502 <.LVL33>:
    7502:	0c 5d       	add	r13,	r12	;
    7504:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    7508:	46 00 
    750a:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    750e:	48 00 
    7510:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    7514:	4a 00 

00007516 <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    7516:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

0000751a <.Loc.191.1>:
}
    751a:	30 41       	ret			

0000751c <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    751c:	92 93 06 53 	cmp	#1,	&0x5306	;r3 As==01
    7520:	e9 23       	jnz	$-44     	;abs 0x74f4

00007522 <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    7522:	92 42 fe 52 	mov	&0x52fe,&0x529a	;0x52fe
    7526:	9a 52 
    7528:	92 42 00 53 	mov	&0x5300,&0x529c	;0x5300
    752c:	9c 52 
    752e:	92 42 02 53 	mov	&0x5302,&0x529e	;0x5302
    7532:	9e 52 
    7534:	92 42 04 53 	mov	&0x5304,&0x52a0	;0x5304
    7538:	a0 52 

0000753a <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    753a:	82 43 a2 52 	mov	#0,	&0x52a2	;r3 As==00

0000753e <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    753e:	da 3f       	jmp	$-74     	;abs 0x74f4

00007540 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    7540:	92 93 ca 52 	cmp	#1,	&0x52ca	;r3 As==01
    7544:	5a 24       	jz	$+182    	;abs 0x75fa

00007546 <.L29>:
    7546:	92 93 d4 52 	cmp	#1,	&0x52d4	;r3 As==01
    754a:	48 24       	jz	$+146    	;abs 0x75dc

0000754c <.L30>:
    754c:	92 93 de 52 	cmp	#1,	&0x52de	;r3 As==01
    7550:	d1 23       	jnz	$-92     	;abs 0x74f4

00007552 <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7552:	92 42 d6 52 	mov	&0x52d6,&0x5272	;0x52d6
    7556:	72 52 
    7558:	92 42 d8 52 	mov	&0x52d8,&0x5274	;0x52d8
    755c:	74 52 
    755e:	92 42 da 52 	mov	&0x52da,&0x5276	;0x52da
    7562:	76 52 
    7564:	92 42 dc 52 	mov	&0x52dc,&0x5278	;0x52dc
    7568:	78 52 

0000756a <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    756a:	82 43 7a 52 	mov	#0,	&0x527a	;r3 As==00

0000756e <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    756e:	c2 3f       	jmp	$-122    	;abs 0x74f4

00007570 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    7570:	92 93 e8 52 	cmp	#1,	&0x52e8	;r3 As==01
    7574:	24 24       	jz	$+74     	;abs 0x75be

00007576 <.L32>:
    7576:	92 93 f2 52 	cmp	#1,	&0x52f2	;r3 As==01
    757a:	12 24       	jz	$+38     	;abs 0x75a0

0000757c <.L33>:
    757c:	92 93 fc 52 	cmp	#1,	&0x52fc	;r3 As==01
    7580:	b9 23       	jnz	$-140    	;abs 0x74f4

00007582 <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7582:	92 42 f4 52 	mov	&0x52f4,&0x5290	;0x52f4
    7586:	90 52 
    7588:	92 42 f6 52 	mov	&0x52f6,&0x5292	;0x52f6
    758c:	92 52 
    758e:	92 42 f8 52 	mov	&0x52f8,&0x5294	;0x52f8
    7592:	94 52 
    7594:	92 42 fa 52 	mov	&0x52fa,&0x5296	;0x52fa
    7598:	96 52 

0000759a <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    759a:	82 43 98 52 	mov	#0,	&0x5298	;r3 As==00

0000759e <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    759e:	aa 3f       	jmp	$-170    	;abs 0x74f4

000075a0 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    75a0:	92 42 ea 52 	mov	&0x52ea,&0x5286	;0x52ea
    75a4:	86 52 
    75a6:	92 42 ec 52 	mov	&0x52ec,&0x5288	;0x52ec
    75aa:	88 52 
    75ac:	92 42 ee 52 	mov	&0x52ee,&0x528a	;0x52ee
    75b0:	8a 52 
    75b2:	92 42 f0 52 	mov	&0x52f0,&0x528c	;0x52f0
    75b6:	8c 52 

000075b8 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    75b8:	82 43 8e 52 	mov	#0,	&0x528e	;r3 As==00
    75bc:	df 3f       	jmp	$-64     	;abs 0x757c

000075be <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    75be:	92 42 e0 52 	mov	&0x52e0,&0x527c	;0x52e0
    75c2:	7c 52 
    75c4:	92 42 e2 52 	mov	&0x52e2,&0x527e	;0x52e2
    75c8:	7e 52 
    75ca:	92 42 e4 52 	mov	&0x52e4,&0x5280	;0x52e4
    75ce:	80 52 
    75d0:	92 42 e6 52 	mov	&0x52e6,&0x5282	;0x52e6
    75d4:	82 52 

000075d6 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    75d6:	82 43 84 52 	mov	#0,	&0x5284	;r3 As==00
    75da:	cd 3f       	jmp	$-100    	;abs 0x7576

000075dc <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    75dc:	92 42 cc 52 	mov	&0x52cc,&0x5268	;0x52cc
    75e0:	68 52 
    75e2:	92 42 ce 52 	mov	&0x52ce,&0x526a	;0x52ce
    75e6:	6a 52 
    75e8:	92 42 d0 52 	mov	&0x52d0,&0x526c	;0x52d0
    75ec:	6c 52 
    75ee:	92 42 d2 52 	mov	&0x52d2,&0x526e	;0x52d2
    75f2:	6e 52 

000075f4 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    75f4:	82 43 70 52 	mov	#0,	&0x5270	;r3 As==00
    75f8:	a9 3f       	jmp	$-172    	;abs 0x754c

000075fa <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    75fa:	92 42 c2 52 	mov	&0x52c2,&0x525e	;0x52c2
    75fe:	5e 52 
    7600:	92 42 c4 52 	mov	&0x52c4,&0x5260	;0x52c4
    7604:	60 52 
    7606:	92 42 c6 52 	mov	&0x52c6,&0x5262	;0x52c6
    760a:	62 52 
    760c:	92 42 c8 52 	mov	&0x52c8,&0x5264	;0x52c8
    7610:	64 52 

00007612 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7612:	82 43 66 52 	mov	#0,	&0x5266	;r3 As==00
    7616:	97 3f       	jmp	$-208    	;abs 0x7546

00007618 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    7618:	1c 93       	cmp	#1,	r12	;r3 As==01
    761a:	17 24       	jz	$+48     	;abs 0x764a
    761c:	2c 93       	cmp	#2,	r12	;r3 As==10
    761e:	0c 24       	jz	$+26     	;abs 0x7638
    7620:	0c 93       	cmp	#0,	r12	;r3 As==00
    7622:	01 24       	jz	$+4      	;abs 0x7626

00007624 <.L45>:
            break;
        default:
            break;

    }
}
    7624:	30 41       	ret			

00007626 <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    7626:	1d 42 26 53 	mov	&0x5326,r13	;0x5326

0000762a <.Loc.207.1>:
    762a:	1d 93       	cmp	#1,	r13	;r3 As==01
    762c:	fb 23       	jnz	$-8      	;abs 0x7624

0000762e <.Loc.209.1>:
                _commit_timer_buffers(interface);
    762e:	b0 12 e4 74 	call	#29924		;#0x74e4

00007632 <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    7632:	a2 43 26 53 	mov	#2,	&0x5326	;r3 As==10

00007636 <.Loc.230.1>:
}
    7636:	30 41       	ret			

00007638 <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    7638:	1d 42 28 53 	mov	&0x5328,r13	;0x5328

0000763c <.Loc.214.1>:
    763c:	1d 93       	cmp	#1,	r13	;r3 As==01
    763e:	f2 23       	jnz	$-26     	;abs 0x7624

00007640 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    7640:	b0 12 e4 74 	call	#29924		;#0x74e4

00007644 <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    7644:	a2 43 28 53 	mov	#2,	&0x5328	;r3 As==10

00007648 <.Loc.230.1>:
}
    7648:	30 41       	ret			

0000764a <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    764a:	1d 42 2a 53 	mov	&0x532a,r13	;0x532a

0000764e <.Loc.220.1>:
    764e:	1d 93       	cmp	#1,	r13	;r3 As==01
    7650:	e9 23       	jnz	$-44     	;abs 0x7624

00007652 <.Loc.222.1>:
                _commit_timer_buffers(interface);
    7652:	b0 12 e4 74 	call	#29924		;#0x74e4

00007656 <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    7656:	a2 43 2a 53 	mov	#2,	&0x532a	;r3 As==10

0000765a <.Loc.230.1>:
}
    765a:	30 41       	ret			

0000765c <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    765c:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00007660 <.Loc.233.1>:
    switch (interface)
    7660:	1e 93       	cmp	#1,	r14	;r3 As==01
    7662:	17 24       	jz	$+48     	;abs 0x7692
    7664:	2e 93       	cmp	#2,	r14	;r3 As==10
    7666:	2a 24       	jz	$+86     	;abs 0x76bc

00007668 <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    7668:	0e 4d       	mov	r13,	r14	;

0000766a <.LVL55>:
    766a:	5e 06       	rlam	#2,	r14	;
    766c:	0d 5e       	add	r14,	r13	;

0000766e <.LVL56>:
    766e:	5d 02       	rlam	#1,	r13	;
    7670:	3d 50 5e 52 	add	#21086,	r13	;#0x525e
    7674:	0e 4d       	mov	r13,	r14	;
    7676:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    767a:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    767e:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7682:	04 00 
    7684:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7688:	06 00 
    768a:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    768e:	08 00 

00007690 <.Loc.245.1>:
    }

}
    7690:	30 41       	ret			

00007692 <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    7692:	0e 4d       	mov	r13,	r14	;

00007694 <.LVL58>:
    7694:	5e 06       	rlam	#2,	r14	;
    7696:	0d 5e       	add	r14,	r13	;
    7698:	5d 02       	rlam	#1,	r13	;
    769a:	3d 50 9a 52 	add	#21146,	r13	;#0x529a

0000769e <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    769e:	0e 4d       	mov	r13,	r14	;
    76a0:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    76a4:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    76a8:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    76ac:	04 00 
    76ae:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    76b2:	06 00 
    76b4:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    76b8:	08 00 

000076ba <.Loc.245.1>:
}
    76ba:	30 41       	ret			

000076bc <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    76bc:	0e 4d       	mov	r13,	r14	;

000076be <.LVL60>:
    76be:	5e 06       	rlam	#2,	r14	;
    76c0:	0d 5e       	add	r14,	r13	;
    76c2:	5d 02       	rlam	#1,	r13	;
    76c4:	3d 50 7c 52 	add	#21116,	r13	;#0x527c

000076c8 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    76c8:	0e 4d       	mov	r13,	r14	;
    76ca:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    76ce:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    76d2:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    76d6:	04 00 
    76d8:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    76dc:	06 00 
    76de:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    76e2:	08 00 

000076e4 <.Loc.245.1>:
}
    76e4:	30 41       	ret			

000076e6 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    76e6:	4e 4c       	mov.b	r12,	r14	;

000076e8 <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    76e8:	1d 93       	cmp	#1,	r13	;r3 As==01
    76ea:	14 24       	jz	$+42     	;abs 0x7714
    76ec:	2d 93       	cmp	#2,	r13	;r3 As==10
    76ee:	0b 24       	jz	$+24     	;abs 0x7706
    76f0:	4c 43       	clr.b	r12		;

000076f2 <.LVL62>:
    76f2:	0d 93       	cmp	#0,	r13	;r3 As==00
    76f4:	01 24       	jz	$+4      	;abs 0x76f8

000076f6 <.Loc.262.1>:
        default:
            return 0;

    }

}
    76f6:	30 41       	ret			

000076f8 <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    76f8:	0c 4e       	mov	r14,	r12	;
    76fa:	5c 06       	rlam	#2,	r12	;
    76fc:	0c 5e       	add	r14,	r12	;
    76fe:	5c 02       	rlam	#1,	r12	;
    7700:	1c 4c 62 52 	mov	21090(r12),r12	;0x05262

00007704 <.Loc.262.1>:
}
    7704:	30 41       	ret			

00007706 <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    7706:	0c 4e       	mov	r14,	r12	;

00007708 <.LVL64>:
    7708:	5c 06       	rlam	#2,	r12	;
    770a:	0c 5e       	add	r14,	r12	;
    770c:	5c 02       	rlam	#1,	r12	;
    770e:	1c 4c 80 52 	mov	21120(r12),r12	;0x05280

00007712 <.Loc.262.1>:
}
    7712:	30 41       	ret			

00007714 <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    7714:	0c 4e       	mov	r14,	r12	;

00007716 <.LVL66>:
    7716:	5c 06       	rlam	#2,	r12	;
    7718:	0c 5e       	add	r14,	r12	;
    771a:	5c 02       	rlam	#1,	r12	;
    771c:	1c 4c 9e 52 	mov	21150(r12),r12	;0x0529e

00007720 <.Loc.262.1>:
}
    7720:	30 41       	ret			

00007722 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    7722:	4e 4c       	mov.b	r12,	r14	;

00007724 <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    7724:	1d 93       	cmp	#1,	r13	;r3 As==01
    7726:	14 24       	jz	$+42     	;abs 0x7750
    7728:	2d 93       	cmp	#2,	r13	;r3 As==10
    772a:	0b 24       	jz	$+24     	;abs 0x7742
    772c:	4c 43       	clr.b	r12		;

0000772e <.LVL68>:
    772e:	0d 93       	cmp	#0,	r13	;r3 As==00
    7730:	01 24       	jz	$+4      	;abs 0x7734

00007732 <.Loc.279.1>:
        default:
            return    0;
    }


}
    7732:	30 41       	ret			

00007734 <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    7734:	0c 4e       	mov	r14,	r12	;
    7736:	5c 06       	rlam	#2,	r12	;
    7738:	0c 5e       	add	r14,	r12	;
    773a:	5c 02       	rlam	#1,	r12	;
    773c:	5c 4c 60 52 	mov.b	21088(r12),r12	;0x05260

00007740 <.Loc.279.1>:
}
    7740:	30 41       	ret			

00007742 <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    7742:	0c 4e       	mov	r14,	r12	;

00007744 <.LVL70>:
    7744:	5c 06       	rlam	#2,	r12	;
    7746:	0c 5e       	add	r14,	r12	;
    7748:	5c 02       	rlam	#1,	r12	;
    774a:	5c 4c 7e 52 	mov.b	21118(r12),r12	;0x0527e

0000774e <.Loc.279.1>:
}
    774e:	30 41       	ret			

00007750 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    7750:	0c 4e       	mov	r14,	r12	;

00007752 <.LVL72>:
    7752:	5c 06       	rlam	#2,	r12	;
    7754:	0c 5e       	add	r14,	r12	;
    7756:	5c 02       	rlam	#1,	r12	;
    7758:	5c 4c 9c 52 	mov.b	21148(r12),r12	;0x0529c

0000775c <.Loc.279.1>:
}
    775c:	30 41       	ret			

0000775e <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    775e:	4e 4c       	mov.b	r12,	r14	;

00007760 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    7760:	1d 93       	cmp	#1,	r13	;r3 As==01
    7762:	14 24       	jz	$+42     	;abs 0x778c
    7764:	2d 93       	cmp	#2,	r13	;r3 As==10
    7766:	0b 24       	jz	$+24     	;abs 0x777e
    7768:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000776a <.LVL74>:
    776a:	0d 93       	cmp	#0,	r13	;r3 As==00
    776c:	01 24       	jz	$+4      	;abs 0x7770

0000776e <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    776e:	30 41       	ret			

00007770 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    7770:	0c 4e       	mov	r14,	r12	;
    7772:	5c 06       	rlam	#2,	r12	;
    7774:	0c 5e       	add	r14,	r12	;
    7776:	5c 02       	rlam	#1,	r12	;
    7778:	1c 4c 5e 52 	mov	21086(r12),r12	;0x0525e

0000777c <.Loc.294.1>:
}
    777c:	30 41       	ret			

0000777e <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    777e:	0c 4e       	mov	r14,	r12	;

00007780 <.LVL76>:
    7780:	5c 06       	rlam	#2,	r12	;
    7782:	0c 5e       	add	r14,	r12	;
    7784:	5c 02       	rlam	#1,	r12	;
    7786:	1c 4c 7c 52 	mov	21116(r12),r12	;0x0527c

0000778a <.Loc.294.1>:
}
    778a:	30 41       	ret			

0000778c <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    778c:	0c 4e       	mov	r14,	r12	;

0000778e <.LVL78>:
    778e:	5c 06       	rlam	#2,	r12	;
    7790:	0c 5e       	add	r14,	r12	;
    7792:	5c 02       	rlam	#1,	r12	;
    7794:	1c 4c 9a 52 	mov	21146(r12),r12	;0x0529a

00007798 <.Loc.294.1>:
}
    7798:	30 41       	ret			

0000779a <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    779a:	5c 0a       	rlam	#3,	r12	;

0000779c <.LVL80>:
}
    779c:	5c 4c a6 52 	mov.b	21158(r12),r12	;0x052a6
    77a0:	30 41       	ret			

000077a2 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    77a2:	5c 0a       	rlam	#3,	r12	;

000077a4 <.LVL82>:
}
    77a4:	1c 4c a8 52 	mov	21160(r12),r12	;0x052a8
    77a8:	30 41       	ret			

000077aa <__mulhi2>:
    77aa:	02 12       	push	r2		;
    77ac:	32 c2       	dint			
    77ae:	03 43       	nop			
    77b0:	82 4c c0 04 	mov	r12,	&0x04c0	;
    77b4:	82 4d c8 04 	mov	r13,	&0x04c8	;

000077b8 <L0^A>:
    77b8:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    77bc:	00 13       	reti			

000077be <_exit>:
    77be:	ff 3f       	jmp	$+0      	;abs 0x77be

000077c0 <memset>:
    77c0:	0e 5c       	add	r12,	r14	;

000077c2 <L0^A>:
    77c2:	0f 4c       	mov	r12,	r15	;

000077c4 <.L2>:
    77c4:	0f 9e       	cmp	r14,	r15	;
    77c6:	01 20       	jnz	$+4      	;abs 0x77ca

000077c8 <.Loc.104.1>:
    77c8:	30 41       	ret			

000077ca <.L3>:
    77ca:	1f 53       	inc	r15		;

000077cc <.LVL4>:
    77cc:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    77d0:	f9 3f       	jmp	$-12     	;abs 0x77c4
