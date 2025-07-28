
bin/ar_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

0000538c <__crt0_start>:
    538c:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005390 <__crt0_init_bss>:
    5390:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005394 <.Loc.76.1>:
    5394:	0d 43       	clr	r13		;

00005396 <.Loc.77.1>:
    5396:	3e 40 62 00 	mov	#98,	r14	;#0x0062

0000539a <.Loc.81.1>:
    539a:	b0 12 d8 7e 	call	#32472		;#0x7ed8

0000539e <__crt0_run_init_array>:
    539e:	34 40 08 45 	mov	#17672,	r4	;#0x4508

000053a2 <.Loc.189.1>:
    53a2:	35 40 10 45 	mov	#17680,	r5	;#0x4510

000053a6 <.Loc.190.1>:
    53a6:	26 43       	mov	#2,	r6	;r3 As==10

000053a8 <.Loc.191.1>:
    53a8:	b0 12 b6 53 	call	#21430		;#0x53b6

000053ac <__crt0_call_main>:
    53ac:	0c 43       	clr	r12		;

000053ae <.Loc.254.1>:
    53ae:	b0 12 c4 53 	call	#21444		;#0x53c4

000053b2 <__crt0_call_exit>:
    53b2:	b0 12 d6 7e 	call	#32470		;#0x7ed6

000053b6 <__crt0_run_array>:
    53b6:	05 94       	cmp	r4,	r5	;

000053b8 <.Loc.294.1>:
    53b8:	04 24       	jz	$+10     	;abs 0x53c2

000053ba <.Loc.295.1>:
    53ba:	27 44       	mov	@r4,	r7	;

000053bc <.Loc.296.1>:
    53bc:	04 56       	add	r6,	r4	;

000053be <.Loc.297.1>:
    53be:	87 12       	call	r7		;

000053c0 <.Loc.298.1>:
    53c0:	fa 3f       	jmp	$-10     	;abs 0x53b6

000053c2 <_msp430_run_done>:
    53c2:	30 41       	ret			

000053c4 <main>:
#include "ink/ink.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    53c4:	
000053c6 <L0^A>:
    53c6:	80 5a 5c 01 	add	r10,	0x015c	; PC rel. 0x5524

000053ca <.Loc.10.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    53ca:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

000053ce <.Loc.13.1>:

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
    53ce:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    53d2:	22 02 

000053d4 <.Loc.13.1>:
    53d4:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    53d8:	24 02 

000053da <.Loc.13.1>:
    53da:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    53de:	22 02 

000053e0 <.Loc.13.1>:
#endif

    /* Start the scheduler. */
    ink_scheduler_run();
    53e0:	b0 12 a0 68 	call	#26784		;#0x68a0

000053e4 <.Loc.18.1>:
}
    53e4:	4c 43       	clr.b	r12		;
    53e6:	30 41       	ret			

000053e8 <task_idle>:
}

static void* __attribute__((annotate("INK::TASK15"))) task_idle()
{
    return task_selectMode;
}
    53e8:	3c 40 28 54 	mov	#21544,	r12	;#0x5428
    53ec:	30 41       	ret			

000053ee <__ink_entry_task>:
    full_run_started = 1;
    53ee:	d2 43 4c 45 	mov.b	#1,	&0x454c	;r3 As==01

000053f2 <.Loc.130.1>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    53f2:	b0 12 7e 62 	call	#25214		;#0x627e

000053f6 <.LVL1>:
__INK_GET_VAR_FROM_BUF(pinCont)     = 1;
    53f6:	0d 4c       	mov	r12,	r13	;
    53f8:	5d 0e       	rlam	#4,	r13	;
    53fa:	0d 8c       	sub	r12,	r13	;
    53fc:	0c 4d       	mov	r13,	r12	;
    53fe:	5c 02       	rlam	#1,	r12	;

00005400 <.Loc.131.1>:
    5400:	1d 4c 10 45 	mov	17680(r12),r13	;0x04510
    5404:	dd 43 00 00 	mov.b	#1,	0(r13)	;r3 As==01

00005408 <.Loc.132.1>:
    __INK_GET_VAR_FROM_BUF(_v_pinState) = MODE_IDLE;
    5408:	1d 4c 12 45 	mov	17682(r12),r13	;0x04512

0000540c <.Loc.131.1>:
__INK_GET_VAR_FROM_BUF(pinCont)     = 1;
    540c:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00005410 <.Loc.132.1>:
    __INK_GET_VAR_FROM_BUF(_v_pinState) = MODE_IDLE;
    5410:	bd 40 03 00 	mov	#3,	0(r13)	;
    5414:	00 00 

00005416 <.Loc.133.1>:
    __INK_GET_VAR_FROM_BUF(_v_count)    = 0;
    5416:	1c 4c 04 00 	mov	4(r12),	r12	;
    541a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000541e <.Loc.134.1>:
    _v_seed     = 1;
    541e:	92 43 4e 45 	mov	#1,	&0x454e	;r3 As==01

00005422 <.Loc.136.1>:
}
    5422:	3c 40 28 54 	mov	#21544,	r12	;#0x5428
    5426:	30 41       	ret			

00005428 <task_selectMode>:
{
    5428:	1a 15       	pushm	#2,	r10	;16-bit words

0000542a <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    542a:	b0 12 7e 62 	call	#25214		;#0x627e

0000542e <.Loc.153.1>:
unsigned   discardedSamplesCount = __INK_GET_VAR_FROM_BUF(_v_discardedSamplesCount);
    542e:	0d 4c       	mov	r12,	r13	;
    5430:	5d 0e       	rlam	#4,	r13	;
    5432:	0d 8c       	sub	r12,	r13	;
    5434:	0c 4d       	mov	r13,	r12	;
    5436:	5c 02       	rlam	#1,	r12	;
    5438:	3c 50 10 45 	add	#17680,	r12	;#0x4510
    543c:	19 4c 06 00 	mov	6(r12),	r9	;

00005440 <.LVL5>:
    unsigned   samplesInWindow       = __INK_GET_VAR_FROM_BUF(_v_samplesInWindow);
    5440:	1b 4c 10 00 	mov	16(r12),r11	;0x00010

00005444 <.LVL6>:
    unsigned   count                 = __INK_GET_VAR_FROM_BUF(_v_count);
    5444:	1e 4c 04 00 	mov	4(r12),	r14	;

00005448 <.LVL7>:
    class_t    lc_class              = __INK_GET_VAR_FROM_BUF(_v_class);
    5448:	1a 4c 1a 00 	mov	26(r12),r10	;0x0001a

0000544c <.LVL8>:
    run_mode_t lc_mode               = __INK_GET_VAR_FROM_BUF(_v_mode);
    544c:	1f 4c 1c 00 	mov	28(r12),r15	;0x0001c

00005450 <.LVL9>:
    ++count;
    5450:	2d 4e       	mov	@r14,	r13	;
    5452:	1d 53       	inc	r13		;

00005454 <.LVL10>:
    __INK_GET_VAR_FROM_BUF(_v_count) = count;
    5454:	8e 4d 00 00 	mov	r13,	0(r14)	;

00005458 <.LVL11>:
    if (count >= 3)
    5458:	6e 43       	mov.b	#2,	r14	;r3 As==10
    545a:	0e 9d       	cmp	r13,	r14	;
    545c:	13 28       	jnc	$+40     	;abs 0x5484

0000545e <.Loc.172.1>:
    if ((pin_state == MODE_TRAIN_STATIONARY || pin_state == MODE_TRAIN_MOVING) && pin_state == __INK_GET_VAR_FROM_BUF(_v_pinState))
    545e:	1c 4c 02 00 	mov	2(r12),	r12	;

00005462 <.Loc.186.1>:
    5462:	9c 93 00 00 	cmp	#1,	0(r12)	;r3 As==01
    5466:	32 24       	jz	$+102    	;abs 0x54cc

00005468 <.Loc.192.1>:
        __INK_GET_VAR_FROM_BUF(_v_pinState) = pin_state;
    5468:	9c 43 00 00 	mov	#1,	0(r12)	;r3 As==01

0000546c <.Loc.195.1>:
            __INK_GET_VAR_FROM_BUF(_v_discardedSamplesCount) = 0;
    546c:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

00005470 <.Loc.206.1>:
            __INK_GET_VAR_FROM_BUF(_v_mode)                  = MODE_TRAIN_MOVING;
    5470:	9f 43 00 00 	mov	#1,	0(r15)	;r3 As==01

00005474 <.Loc.207.1>:
            __INK_GET_VAR_FROM_BUF(_v_class)                 = CLASS_MOVING;
    5474:	9a 43 00 00 	mov	#1,	0(r10)	;r3 As==01

00005478 <.Loc.208.1>:
            __INK_GET_VAR_FROM_BUF(_v_samplesInWindow)       = 0;
    5478:	8b 43 00 00 	mov	#0,	0(r11)	;r3 As==00

0000547c <.Loc.209.1>:
            return task_warmup;
    547c:	3c 40 84 58 	mov	#22660,	r12	;#0x5884

00005480 <.Loc.219.1>:
}
    5480:	19 17       	popm	#2,	r10	;16-bit words

00005482 <.LCFI1>:
    5482:	30 41       	ret			

00005484 <.L5>:
    if (count >= 5)
    5484:	6e 42       	mov.b	#4,	r14	;r2 As==10
    5486:	0e 9d       	cmp	r13,	r14	;
    5488:	25 2c       	jc	$+76     	;abs 0x54d4

0000548a <.Loc.170.1>:
    if (count >= 7)
    548a:	7e 40 06 00 	mov.b	#6,	r14	;
    548e:	0e 9d       	cmp	r13,	r14	;
    5490:	0f 2c       	jc	$+32     	;abs 0x54b0

00005492 <.Loc.175.1>:
        if (full_run_started)
    5492:	c2 93 4c 45 	cmp.b	#0,	&0x454c	;r3 As==00
    5496:	16 24       	jz	$+46     	;abs 0x54c4

00005498 <.Loc.177.1>:
            full_run_started = 0;
    5498:	c2 43 4c 45 	mov.b	#0,	&0x454c	;r3 As==00

0000549c <.Loc.178.1>:
            __port_on(3, 4);
    549c:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    54a0:	22 02 

000054a2 <.Loc.178.1>:
            __port_off(3, 4);
    54a2:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    54a6:	22 02 

000054a8 <.Loc.182.1>:
        return INK_THREAD_ENTRY_TASK;
    54a8:	3c 40 ee 53 	mov	#21486,	r12	;#0x53ee

000054ac <.Loc.219.1>:
}
    54ac:	19 17       	popm	#2,	r10	;16-bit words

000054ae <.LCFI3>:
    54ae:	30 41       	ret			

000054b0 <.L15>:
        __INK_GET_VAR_FROM_BUF(_v_pinState) = pin_state;
    54b0:	1c 4c 02 00 	mov	2(r12),	r12	;
    54b4:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000054b8 <.Loc.195.1>:
            __INK_GET_VAR_FROM_BUF(_v_mode) = MODE_RECOGNIZE;
    54b8:	8f 43 00 00 	mov	#0,	0(r15)	;r3 As==00

000054bc <.Loc.213.1>:
            return task_resetStats;
    54bc:	3c 40 fa 54 	mov	#21754,	r12	;#0x54fa

000054c0 <.Loc.219.1>:
}
    54c0:	19 17       	popm	#2,	r10	;16-bit words

000054c2 <.LCFI5>:
    54c2:	30 41       	ret			

000054c4 <.L12>:
        return INK_THREAD_ENTRY_TASK;
    54c4:	3c 40 ee 53 	mov	#21486,	r12	;#0x53ee

000054c8 <.Loc.217.1>:
}
    54c8:	19 17       	popm	#2,	r10	;16-bit words

000054ca <.LCFI7>:
    54ca:	30 41       	ret			

000054cc <.L11>:
            return task_idle;
    54cc:	3c 40 e8 53 	mov	#21480,	r12	;#0x53e8

000054d0 <.Loc.219.1>:
}
    54d0:	19 17       	popm	#2,	r10	;16-bit words

000054d2 <.LCFI9>:
    54d2:	30 41       	ret			

000054d4 <.L14>:
    if ((pin_state == MODE_TRAIN_STATIONARY || pin_state == MODE_TRAIN_MOVING) && pin_state == __INK_GET_VAR_FROM_BUF(_v_pinState))
    54d4:	1c 4c 02 00 	mov	2(r12),	r12	;

000054d8 <.Loc.186.1>:
    54d8:	ac 93 00 00 	cmp	#2,	0(r12)	;r3 As==10
    54dc:	f7 27       	jz	$-16     	;abs 0x54cc

000054de <.Loc.192.1>:
        __INK_GET_VAR_FROM_BUF(_v_pinState) = pin_state;
    54de:	ac 43 00 00 	mov	#2,	0(r12)	;r3 As==10

000054e2 <.Loc.195.1>:
            __INK_GET_VAR_FROM_BUF(_v_discardedSamplesCount) = 0;
    54e2:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

000054e6 <.Loc.199.1>:
            __INK_GET_VAR_FROM_BUF(_v_mode)                  = MODE_TRAIN_STATIONARY;
    54e6:	af 43 00 00 	mov	#2,	0(r15)	;r3 As==10

000054ea <.Loc.200.1>:
            __INK_GET_VAR_FROM_BUF(_v_class)                 = CLASS_STATIONARY;
    54ea:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000054ee <.Loc.201.1>:
            __INK_GET_VAR_FROM_BUF(_v_samplesInWindow)       = 0;
    54ee:	8b 43 00 00 	mov	#0,	0(r11)	;r3 As==00

000054f2 <.Loc.202.1>:
            return task_warmup;
    54f2:	3c 40 84 58 	mov	#22660,	r12	;#0x5884

000054f6 <.Loc.219.1>:
}
    54f6:	19 17       	popm	#2,	r10	;16-bit words

000054f8 <.LCFI11>:
    54f8:	30 41       	ret			

000054fa <task_resetStats>:

static void* task_resetStats()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    54fa:	b0 12 7e 62 	call	#25214		;#0x627e

000054fe <.Loc.517.1>:
__INK_GET_VAR_FROM_BUF(_v_movingCount)     = 0;
    54fe:	0d 4c       	mov	r12,	r13	;
    5500:	5d 0e       	rlam	#4,	r13	;
    5502:	0d 8c       	sub	r12,	r13	;
    5504:	0c 4d       	mov	r13,	r12	;
    5506:	5c 02       	rlam	#1,	r12	;

00005508 <.Loc.517.1>:
    5508:	1d 4c 1a 45 	mov	17690(r12),r13	;0x0451a
    550c:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005510 <.Loc.518.1>:
    __INK_GET_VAR_FROM_BUF(_v_stationaryCount) = 0;
    5510:	1d 4c 1c 45 	mov	17692(r12),r13	;0x0451c
    5514:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005518 <.Loc.519.1>:
    __INK_GET_VAR_FROM_BUF(_v_totalCount)      = 0;
    5518:	1d 4c 18 45 	mov	17688(r12),r13	;0x04518

0000551c <.Loc.517.1>:
__INK_GET_VAR_FROM_BUF(_v_movingCount)     = 0;
    551c:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00005520 <.Loc.519.1>:
    __INK_GET_VAR_FROM_BUF(_v_totalCount)      = 0;
    5520:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00005524 <.Loc.521.1>:

    __INK_GET_VAR_FROM_BUF(_v_samplesInWindow) = 0;
    5524:	1c 4c 10 00 	mov	16(r12),r12	;0x00010
    5528:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000552c <.Loc.523.1>:

    return task_sample;
}
    552c:	3c 40 fa 57 	mov	#22522,	r12	;#0x57fa
    5530:	30 41       	ret			

00005532 <task_transform>:
{
    5532:	0a 15       	pushm	#1,	r10	;16-bit words

00005534 <.LCFI12>:
    5534:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005538 <.LCFI13>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5538:	b0 12 7e 62 	call	#25214		;#0x627e

0000553c <.Loc.266.1>:
        window[ios_i] = __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[ios_i];
    553c:	0d 4c       	mov	r12,	r13	;
    553e:	5d 0e       	rlam	#4,	r13	;
    5540:	0d 8c       	sub	r12,	r13	;
    5542:	5d 02       	rlam	#1,	r13	;
    5544:	1c 4d 22 45 	mov	17698(r13),r12	;0x04522

00005548 <.Loc.271.1>:
    5548:	0d 4c       	mov	r12,	r13	;
    554a:	f1 4d 01 00 	mov.b	@r13+,	1(r1)	;
    554e:	d1 4c 01 00 	mov.b	1(r12),	2(r1)	;
    5552:	02 00 
    5554:	d1 4d 01 00 	mov.b	1(r13),	3(r1)	;
    5558:	03 00 

0000555a <.Loc.269.1>:
    555a:	d1 4c 03 00 	mov.b	3(r12),	4(r1)	;
    555e:	04 00 
    5560:	d1 4c 04 00 	mov.b	4(r12),	5(r1)	;
    5564:	05 00 
    5566:	d1 4c 05 00 	mov.b	5(r12),	6(r1)	;
    556a:	06 00 

0000556c <.Loc.269.1>:
    556c:	d1 4c 06 00 	mov.b	6(r12),	7(r1)	;
    5570:	07 00 
    5572:	d1 4c 07 00 	mov.b	7(r12),	8(r1)	;
    5576:	08 00 
    5578:	d1 4c 08 00 	mov.b	8(r12),	9(r1)	;
    557c:	09 00 

0000557e <.Loc.269.1>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    557e:	5f 41 01 00 	mov.b	1(r1),	r15	;
    5582:	5d 41 02 00 	mov.b	2(r1),	r13	;
    5586:	5e 41 03 00 	mov.b	3(r1),	r14	;

0000558a <.Loc.278.1>:
    558a:	7a 40 09 00 	mov.b	#9,	r10	;
    558e:	5a 91 01 00 	cmp.b	1(r1),	r10	;
    5592:	4c 28       	jnc	$+154    	;abs 0x562c

00005594 <.L25>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x = 0;
    5594:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

00005598 <.Loc.289.1>:
            if (window[i].y > SAMPLE_NOISE_FLOOR)
    5598:	7f 40 0a 00 	mov.b	#10,	r15	;#0x000a
    559c:	4f 9d       	cmp.b	r13,	r15	;
    559e:	53 28       	jnc	$+168    	;abs 0x5646

000055a0 <.L59>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y = 0;
    55a0:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

000055a4 <.Loc.298.1>:
            if (window[i].z > SAMPLE_NOISE_FLOOR)
    55a4:	7a 40 0a 00 	mov.b	#10,	r10	;#0x000a
    55a8:	4a 9e       	cmp.b	r14,	r10	;
    55aa:	53 28       	jnc	$+168    	;abs 0x5652

000055ac <.L60>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z = 0;
    55ac:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

000055b0 <.L22>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    55b0:	5b 41 04 00 	mov.b	4(r1),	r11	;
    55b4:	5d 41 05 00 	mov.b	5(r1),	r13	;
    55b8:	5f 41 06 00 	mov.b	6(r1),	r15	;

000055bc <.Loc.278.1>:
    55bc:	7e 40 09 00 	mov.b	#9,	r14	;
    55c0:	5e 91 04 00 	cmp.b	4(r1),	r14	;
    55c4:	53 28       	jnc	$+168    	;abs 0x566c

000055c6 <.L61>:
    55c6:	0e 4c       	mov	r12,	r14	;
    55c8:	3e 50 03 00 	add	#3,	r14	;

000055cc <.L35>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x = 0;
    55cc:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

000055d0 <.Loc.289.1>:
            if (window[i].y > SAMPLE_NOISE_FLOOR)
    55d0:	7a 40 0a 00 	mov.b	#10,	r10	;#0x000a
    55d4:	4a 9d       	cmp.b	r13,	r10	;
    55d6:	5e 2c       	jc	$+190    	;abs 0x5694

000055d8 <.L29>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y = window[i].y;
    55d8:	ce 4d 01 00 	mov.b	r13,	1(r14)	;

000055dc <.Loc.298.1>:
            if (window[i].z > SAMPLE_NOISE_FLOOR)
    55dc:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    55e0:	4d 9f       	cmp.b	r15,	r13	;
    55e2:	5e 28       	jnc	$+190    	;abs 0x56a0

000055e4 <.L62>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z = 0;
    55e4:	ce 43 02 00 	mov.b	#0,	2(r14)	;r3 As==00

000055e8 <.L32>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    55e8:	5b 41 07 00 	mov.b	7(r1),	r11	;
    55ec:	5d 41 08 00 	mov.b	8(r1),	r13	;
    55f0:	5f 41 09 00 	mov.b	9(r1),	r15	;

000055f4 <.Loc.278.1>:
    55f4:	7e 40 09 00 	mov.b	#9,	r14	;
    55f8:	5e 91 07 00 	cmp.b	7(r1),	r14	;
    55fc:	5e 28       	jnc	$+190    	;abs 0x56ba

000055fe <.L63>:
    55fe:	0e 4c       	mov	r12,	r14	;
    5600:	3e 50 06 00 	add	#6,	r14	;

00005604 <.L38>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x = 0;
    5604:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00005608 <.Loc.289.1>:
            if (window[i].y > SAMPLE_NOISE_FLOOR)
    5608:	7c 40 0a 00 	mov.b	#10,	r12	;#0x000a
    560c:	4c 9d       	cmp.b	r13,	r12	;
    560e:	67 2c       	jc	$+208    	;abs 0x56de

00005610 <.L64>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y = window[i].y;
    5610:	ce 4d 01 00 	mov.b	r13,	1(r14)	;

00005614 <.Loc.298.1>:
            if (window[i].z > SAMPLE_NOISE_FLOOR)
    5614:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    5618:	4d 9f       	cmp.b	r15,	r13	;
    561a:	67 2c       	jc	$+208    	;abs 0x56ea

0000561c <.L65>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z = window[i].z;
    561c:	ce 4f 02 00 	mov.b	r15,	2(r14)	;

00005620 <.L40>:
}
    5620:	3c 40 bc 58 	mov	#22716,	r12	;#0x58bc
    5624:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005628 <.LCFI14>:
    5628:	0a 17       	popm	#1,	r10	;16-bit words

0000562a <.LCFI15>:
    562a:	30 41       	ret			

0000562c <.L18>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    562c:	7a 40 09 00 	mov.b	#9,	r10	;
    5630:	4a 9d       	cmp.b	r13,	r10	;
    5632:	63 28       	jnc	$+200    	;abs 0x56fa

00005634 <.L27>:
            if (window[i].x > SAMPLE_NOISE_FLOOR)
    5634:	3f 90 0a 00 	cmp	#10,	r15	;#0x000a
    5638:	ad 27       	jz	$-164    	;abs 0x5594

0000563a <.Loc.282.1>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x = window[i].x;
    563a:	cc 4f 00 00 	mov.b	r15,	0(r12)	;

0000563e <.Loc.289.1>:
            if (window[i].y > SAMPLE_NOISE_FLOOR)
    563e:	7f 40 0a 00 	mov.b	#10,	r15	;#0x000a
    5642:	4f 9d       	cmp.b	r13,	r15	;
    5644:	ad 2f       	jc	$-164    	;abs 0x55a0

00005646 <.L19>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y = window[i].y;
    5646:	cc 4d 01 00 	mov.b	r13,	1(r12)	;

0000564a <.Loc.298.1>:
            if (window[i].z > SAMPLE_NOISE_FLOOR)
    564a:	7a 40 0a 00 	mov.b	#10,	r10	;#0x000a
    564e:	4a 9e       	cmp.b	r14,	r10	;
    5650:	ad 2f       	jc	$-164    	;abs 0x55ac

00005652 <.L21>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z = window[i].z;
    5652:	cc 4e 02 00 	mov.b	r14,	2(r12)	;

00005656 <.Loc.276.1>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    5656:	5b 41 04 00 	mov.b	4(r1),	r11	;
    565a:	5d 41 05 00 	mov.b	5(r1),	r13	;
    565e:	5f 41 06 00 	mov.b	6(r1),	r15	;

00005662 <.Loc.278.1>:
    5662:	7e 40 09 00 	mov.b	#9,	r14	;
    5666:	5e 91 04 00 	cmp.b	4(r1),	r14	;
    566a:	ad 2f       	jc	$-164    	;abs 0x55c6

0000566c <.L28>:
    566c:	7e 40 09 00 	mov.b	#9,	r14	;
    5670:	4e 9d       	cmp.b	r13,	r14	;
    5672:	04 2c       	jc	$+10     	;abs 0x567c

00005674 <.Loc.278.1>:
    5674:	7a 40 09 00 	mov.b	#9,	r10	;
    5678:	4a 9f       	cmp.b	r15,	r10	;
    567a:	b6 2b       	jnc	$-146    	;abs 0x55e8

0000567c <.L37>:
            if (window[i].x > SAMPLE_NOISE_FLOOR)
    567c:	0e 4c       	mov	r12,	r14	;
    567e:	3e 50 03 00 	add	#3,	r14	;

00005682 <.Loc.280.1>:
    5682:	3b 90 0a 00 	cmp	#10,	r11	;#0x000a
    5686:	a2 27       	jz	$-186    	;abs 0x55cc

00005688 <.Loc.282.1>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x = window[i].x;
    5688:	cc 4b 03 00 	mov.b	r11,	3(r12)	;

0000568c <.Loc.289.1>:
            if (window[i].y > SAMPLE_NOISE_FLOOR)
    568c:	7a 40 0a 00 	mov.b	#10,	r10	;#0x000a
    5690:	4a 9d       	cmp.b	r13,	r10	;
    5692:	a2 2b       	jnc	$-186    	;abs 0x55d8

00005694 <.L58>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y = 0;
    5694:	ce 43 01 00 	mov.b	#0,	1(r14)	;r3 As==00

00005698 <.Loc.298.1>:
            if (window[i].z > SAMPLE_NOISE_FLOOR)
    5698:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    569c:	4d 9f       	cmp.b	r15,	r13	;
    569e:	a2 2f       	jc	$-186    	;abs 0x55e4

000056a0 <.L31>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z = window[i].z;
    56a0:	ce 4f 02 00 	mov.b	r15,	2(r14)	;

000056a4 <.Loc.276.1>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    56a4:	5b 41 07 00 	mov.b	7(r1),	r11	;
    56a8:	5d 41 08 00 	mov.b	8(r1),	r13	;
    56ac:	5f 41 09 00 	mov.b	9(r1),	r15	;

000056b0 <.Loc.278.1>:
    56b0:	7e 40 09 00 	mov.b	#9,	r14	;
    56b4:	5e 91 07 00 	cmp.b	7(r1),	r14	;
    56b8:	a2 2f       	jc	$-186    	;abs 0x55fe

000056ba <.L57>:
    56ba:	7a 40 09 00 	mov.b	#9,	r10	;
    56be:	4a 9d       	cmp.b	r13,	r10	;
    56c0:	02 2c       	jc	$+6      	;abs 0x56c6

000056c2 <.Loc.278.1>:
    56c2:	4a 9f       	cmp.b	r15,	r10	;
    56c4:	ad 2b       	jnc	$-164    	;abs 0x5620

000056c6 <.L39>:
            if (window[i].x > SAMPLE_NOISE_FLOOR)
    56c6:	0e 4c       	mov	r12,	r14	;
    56c8:	3e 50 06 00 	add	#6,	r14	;

000056cc <.Loc.280.1>:
    56cc:	3b 90 0a 00 	cmp	#10,	r11	;#0x000a
    56d0:	99 27       	jz	$-204    	;abs 0x5604

000056d2 <.Loc.282.1>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x = window[i].x;
    56d2:	cc 4b 06 00 	mov.b	r11,	6(r12)	;

000056d6 <.Loc.289.1>:
            if (window[i].y > SAMPLE_NOISE_FLOOR)
    56d6:	7c 40 0a 00 	mov.b	#10,	r12	;#0x000a
    56da:	4c 9d       	cmp.b	r13,	r12	;
    56dc:	99 2b       	jnc	$-204    	;abs 0x5610

000056de <.L42>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y = 0;
    56de:	ce 43 01 00 	mov.b	#0,	1(r14)	;r3 As==00

000056e2 <.Loc.298.1>:
            if (window[i].z > SAMPLE_NOISE_FLOOR)
    56e2:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    56e6:	4d 9f       	cmp.b	r15,	r13	;
    56e8:	99 2b       	jnc	$-204    	;abs 0x561c

000056ea <.L44>:
                __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z = 0;
    56ea:	ce 43 02 00 	mov.b	#0,	2(r14)	;r3 As==00

000056ee <.Loc.276.1>:
}
    56ee:	3c 40 bc 58 	mov	#22716,	r12	;#0x58bc
    56f2:	31 50 0a 00 	add	#10,	r1	;#0x000a

000056f6 <.LCFI17>:
    56f6:	0a 17       	popm	#1,	r10	;16-bit words

000056f8 <.LCFI18>:
    56f8:	30 41       	ret			

000056fa <.L24>:
        if (window[i].x < SAMPLE_NOISE_FLOOR || window[i].y < SAMPLE_NOISE_FLOOR || window[i].z < SAMPLE_NOISE_FLOOR)
    56fa:	7a 40 09 00 	mov.b	#9,	r10	;
    56fe:	4a 9e       	cmp.b	r14,	r10	;
    5700:	99 2f       	jc	$-204    	;abs 0x5634
    5702:	56 3f       	jmp	$-338    	;abs 0x55b0

00005704 <task_classify>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5704:	b0 12 7e 62 	call	#25214		;#0x627e

00005708 <.LVL33>:
        __INK_GET_VAR_FROM_BUF(_v_class) = CLASS_STATIONARY;
    5708:	0d 4c       	mov	r12,	r13	;
    570a:	5d 0e       	rlam	#4,	r13	;
    570c:	0d 8c       	sub	r12,	r13	;
    570e:	5d 02       	rlam	#1,	r13	;

00005710 <.Loc.475.1>:
    5710:	1c 4d 2a 45 	mov	17706(r13),r12	;0x0452a

00005714 <.LVL34>:
    5714:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005718 <.Loc.478.1>:
}
    5718:	3c 40 1e 57 	mov	#22302,	r12	;#0x571e
    571c:	30 41       	ret			

0000571e <task_stats>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    571e:	b0 12 7e 62 	call	#25214		;#0x627e

00005722 <.Loc.484.1>:
    ++__INK_GET_VAR_FROM_BUF(_v_totalCount);
    5722:	0d 4c       	mov	r12,	r13	;
    5724:	5d 0e       	rlam	#4,	r13	;
    5726:	0d 8c       	sub	r12,	r13	;
    5728:	0c 4d       	mov	r13,	r12	;
    572a:	5c 02       	rlam	#1,	r12	;
    572c:	3c 50 10 45 	add	#17680,	r12	;#0x4510
    5730:	1d 4c 08 00 	mov	8(r12),	r13	;

00005734 <.Loc.485.1>:
    5734:	2e 4d       	mov	@r13,	r14	;
    5736:	1e 53       	inc	r14		;
    5738:	8d 4e 00 00 	mov	r14,	0(r13)	;

0000573c <.Loc.487.1>:
    switch (__INK_GET_VAR_FROM_BUF(_v_class))
    573c:	1f 4c 1a 00 	mov	26(r12),r15	;0x0001a
    5740:	2f 4f       	mov	@r15,	r15	;

00005742 <.Loc.487.1>:
    5742:	0f 93       	cmp	#0,	r15	;r3 As==00
    5744:	10 24       	jz	$+34     	;abs 0x5766
    5746:	1f 93       	cmp	#1,	r15	;r3 As==01
    5748:	05 20       	jnz	$+12     	;abs 0x5754

0000574a <.Loc.491.1>:
            ++__INK_GET_VAR_FROM_BUF(_v_movingCount);
    574a:	1c 4c 0a 00 	mov	10(r12),r12	;0x0000a

0000574e <.Loc.491.1>:
    574e:	9c 53 00 00 	inc	0(r12)		;

00005752 <.Loc.492.1>:
            break;
    5752:	2e 4d       	mov	@r13,	r14	;

00005754 <.L69>:
    if (__INK_GET_VAR_FROM_BUF(_v_totalCount) == SAMPLES_TO_COLLECT)
    5754:	3e 90 80 00 	cmp	#128,	r14	;#0x0080
    5758:	03 24       	jz	$+8      	;abs 0x5760

0000575a <.Loc.505.1>:
        return task_sample;
    575a:	3c 40 fa 57 	mov	#22522,	r12	;#0x57fa

0000575e <.Loc.507.1>:
}
    575e:	30 41       	ret			

00005760 <.L71>:
        return task_idle;
    5760:	3c 40 e8 53 	mov	#21480,	r12	;#0x53e8

00005764 <.Loc.507.1>:
}
    5764:	30 41       	ret			

00005766 <.L68>:
            ++__INK_GET_VAR_FROM_BUF(_v_stationaryCount);
    5766:	1c 4c 0c 00 	mov	12(r12),r12	;0x0000c

0000576a <.Loc.495.1>:
    576a:	9c 53 00 00 	inc	0(r12)		;

0000576e <.Loc.496.1>:
            break;
    576e:	2e 4d       	mov	@r13,	r14	;
    5770:	f1 3f       	jmp	$-28     	;abs 0x5754

00005772 <task_train>:

static void* task_train()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5772:	b0 12 7e 62 	call	#25214		;#0x627e

00005776 <.Loc.529.1>:
unsigned trainingSetSize = __INK_GET_VAR_FROM_BUF(_v_trainingSetSize);
    5776:	0d 4c       	mov	r12,	r13	;
    5778:	5d 0e       	rlam	#4,	r13	;
    577a:	0d 8c       	sub	r12,	r13	;
    577c:	0c 4d       	mov	r13,	r12	;
    577e:	5c 02       	rlam	#1,	r12	;
    5780:	3c 50 10 45 	add	#17680,	r12	;#0x4510
    5784:	1f 4c 0e 00 	mov	14(r12),r15	;0x0000e

00005788 <.Loc.529.1>:
    5788:	2d 4f       	mov	@r15,	r13	;

0000578a <.LVL39>:

    switch (__INK_GET_VAR_FROM_BUF(_v_class))
    578a:	1e 4c 1a 00 	mov	26(r12),r14	;0x0001a
    578e:	2e 4e       	mov	@r14,	r14	;

00005790 <.Loc.531.1>:
    5790:	0e 93       	cmp	#0,	r14	;r3 As==00
    5792:	1d 24       	jz	$+60     	;abs 0x57ce
    5794:	1e 93       	cmp	#1,	r14	;r3 As==01
    5796:	0d 20       	jnz	$+28     	;abs 0x57b2

00005798 <.Loc.538.1>:
        case CLASS_STATIONARY:
            __INK_GET_VAR_FROM_BUF_ARRAY(_v_model_stationary)[trainingSetSize].meanmag   = __INK_GET_VAR_FROM_BUF(_v_features).meanmag;
            __INK_GET_VAR_FROM_BUF_ARRAY(_v_model_stationary)[trainingSetSize].stddevmag = __INK_GET_VAR_FROM_BUF(_v_features).stddevmag;
            break;
        case CLASS_MOVING:
            __INK_GET_VAR_FROM_BUF_ARRAY(_v_model_moving)[trainingSetSize].meanmag   = __INK_GET_VAR_FROM_BUF(_v_features).meanmag;
    5798:	1b 4c 14 00 	mov	20(r12),r11	;0x00014

0000579c <.Loc.538.1>:
    579c:	0e 4d       	mov	r13,	r14	;
    579e:	5e 06       	rlam	#2,	r14	;
    57a0:	1c 4c 18 00 	mov	24(r12),r12	;0x00018
    57a4:	0c 5e       	add	r14,	r12	;

000057a6 <.Loc.538.1>:
    57a6:	1e 4b 02 00 	mov	2(r11),	r14	;

000057aa <.Loc.538.1>:
    57aa:	ac 4b 00 00 	mov	@r11,	0(r12)	;
    57ae:	8c 4e 02 00 	mov	r14,	2(r12)	;

000057b2 <.L75>:
            __INK_GET_VAR_FROM_BUF_ARRAY(_v_model_moving)[trainingSetSize].stddevmag = __INK_GET_VAR_FROM_BUF(_v_features).stddevmag;
            break;
    }

    ++trainingSetSize;
    57b2:	0c 4d       	mov	r13,	r12	;
    57b4:	1c 53       	inc	r12		;

000057b6 <.LVL40>:
    __INK_GET_VAR_FROM_BUF(_v_trainingSetSize) = trainingSetSize;
    57b6:	8f 4c 00 00 	mov	r12,	0(r15)	;

000057ba <.Loc.546.1>:

    if (__INK_GET_VAR_FROM_BUF(_v_trainingSetSize) < MODEL_SIZE)
    57ba:	7d 40 0f 00 	mov.b	#15,	r13	;#0x000f
    57be:	0d 9c       	cmp	r12,	r13	;
    57c0:	03 28       	jnc	$+8      	;abs 0x57c8

000057c2 <.L77>:
    {
        return task_sample;
    57c2:	3c 40 fa 57 	mov	#22522,	r12	;#0x57fa

000057c6 <.LVL41>:
    }
    else
    {
        return task_idle;
    }
}
    57c6:	30 41       	ret			

000057c8 <.L78>:
        return task_idle;
    57c8:	3c 40 e8 53 	mov	#21480,	r12	;#0x53e8

000057cc <.LVL43>:
}
    57cc:	30 41       	ret			

000057ce <.L73>:
            __INK_GET_VAR_FROM_BUF_ARRAY(_v_model_stationary)[trainingSetSize].meanmag   = __INK_GET_VAR_FROM_BUF(_v_features).meanmag;
    57ce:	1b 4c 14 00 	mov	20(r12),r11	;0x00014

000057d2 <.Loc.534.1>:
    57d2:	0e 4d       	mov	r13,	r14	;
    57d4:	5e 06       	rlam	#2,	r14	;
    57d6:	1c 4c 16 00 	mov	22(r12),r12	;0x00016
    57da:	0c 5e       	add	r14,	r12	;

000057dc <.Loc.534.1>:
    57dc:	1e 4b 02 00 	mov	2(r11),	r14	;

000057e0 <.Loc.534.1>:
    57e0:	ac 4b 00 00 	mov	@r11,	0(r12)	;
    57e4:	8c 4e 02 00 	mov	r14,	2(r12)	;

000057e8 <.Loc.536.1>:
    ++trainingSetSize;
    57e8:	0c 4d       	mov	r13,	r12	;
    57ea:	1c 53       	inc	r12		;

000057ec <.LVL45>:
    __INK_GET_VAR_FROM_BUF(_v_trainingSetSize) = trainingSetSize;
    57ec:	8f 4c 00 00 	mov	r12,	0(r15)	;

000057f0 <.Loc.546.1>:
    if (__INK_GET_VAR_FROM_BUF(_v_trainingSetSize) < MODEL_SIZE)
    57f0:	7d 40 0f 00 	mov.b	#15,	r13	;#0x000f
    57f4:	0d 9c       	cmp	r12,	r13	;
    57f6:	e5 2f       	jc	$-52     	;abs 0x57c2
    57f8:	e7 3f       	jmp	$-48     	;abs 0x57c8

000057fa <task_sample>:
{
    57fa:	4a 15       	pushm	#5,	r10	;16-bit words

000057fc <.LCFI20>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    57fc:	b0 12 7e 62 	call	#25214		;#0x627e

00005800 <.Loc.242.1>:
unsigned samplesInWindow = __INK_GET_VAR_FROM_BUF(_v_samplesInWindow);
    5800:	0d 4c       	mov	r12,	r13	;
    5802:	5d 0e       	rlam	#4,	r13	;
    5804:	0d 8c       	sub	r12,	r13	;
    5806:	0c 4d       	mov	r13,	r12	;
    5808:	5c 02       	rlam	#1,	r12	;
    580a:	16 4c 20 45 	mov	17696(r12),r6	;0x04520

0000580e <.Loc.242.1>:
    580e:	27 46       	mov	@r6,	r7	;

00005810 <.LBB6>:
    unsigned seed = _v_seed;
    5810:	18 42 4e 45 	mov	&0x454e,r8	;0x454e

00005814 <.Loc.144.1>:
    _v_seed   = ++seed;
    5814:	0d 48       	mov	r8,	r13	;
    5816:	1d 53       	inc	r13		;

00005818 <.LVL50>:
    5818:	82 4d 4e 45 	mov	r13,	&0x454e	;

0000581c <.LBE6>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[samplesInWindow].x = sample.x;
    581c:	09 47       	mov	r7,	r9	;
    581e:	59 02       	rlam	#1,	r9	;
    5820:	09 57       	add	r7,	r9	;
    5822:	19 5c 22 45 	add	17698(r12),r9	;0x04522

00005826 <.Loc.144.1>:
    result->x = (seed * 17) % 85;
    5826:	0c 48       	mov	r8,	r12	;
    5828:	5c 0e       	rlam	#4,	r12	;

0000582a <.Loc.144.1>:
    582a:	7d 40 55 00 	mov.b	#85,	r13	;#0x0055
    582e:	0c 58       	add	r8,	r12	;
    5830:	b0 12 e6 60 	call	#24806		;#0x60e6

00005834 <.Loc.144.1>:
    5834:	c9 4c 00 00 	mov.b	r12,	0(r9)	;

00005838 <.Loc.145.1>:
    result->y = (seed * 17 * 17) % 85;
    5838:	0a 48       	mov	r8,	r10	;
    583a:	5a 0a       	rlam	#3,	r10	;
    583c:	0a 58       	add	r8,	r10	;
    583e:	44 18 0a 5a 	rpt #5 { rlax.w	r10		;
    5842:	0a 58       	add	r8,	r10	;

00005844 <.Loc.145.1>:
    5844:	7d 40 55 00 	mov.b	#85,	r13	;#0x0055
    5848:	0c 4a       	mov	r10,	r12	;
    584a:	b0 12 e6 60 	call	#24806		;#0x60e6

0000584e <.Loc.145.1>:
    584e:	c9 4c 01 00 	mov.b	r12,	1(r9)	;

00005852 <.Loc.146.1>:
    result->z = (seed * 17 * 17 * 17) % 85;
    5852:	0c 4a       	mov	r10,	r12	;
    5854:	5c 0e       	rlam	#4,	r12	;

00005856 <.Loc.146.1>:
    5856:	7d 40 55 00 	mov.b	#85,	r13	;#0x0055
    585a:	0c 5a       	add	r10,	r12	;
    585c:	b0 12 e6 60 	call	#24806		;#0x60e6

00005860 <.Loc.146.1>:
    5860:	c9 4c 02 00 	mov.b	r12,	2(r9)	;

00005864 <.Loc.249.1>:
    ++samplesInWindow;
    5864:	17 53       	inc	r7		;

00005866 <.Loc.250.1>:
    if (samplesInWindow < ACCEL_WINDOW_SIZE)
    5866:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5868:	0c 97       	cmp	r7,	r12	;
    586a:	06 28       	jnc	$+14     	;abs 0x5878

0000586c <.Loc.250.1>:
    __INK_GET_VAR_FROM_BUF(_v_samplesInWindow) = samplesInWindow;
    586c:	86 47 00 00 	mov	r7,	0(r6)	;

00005870 <.Loc.254.1>:
        return task_sample;
    5870:	3c 40 fa 57 	mov	#22522,	r12	;#0x57fa

00005874 <.Loc.261.1>:
}
    5874:	46 17       	popm	#5,	r10	;16-bit words

00005876 <.LCFI21>:
    5876:	30 41       	ret			

00005878 <.L80>:
        __INK_GET_VAR_FROM_BUF(_v_samplesInWindow) = 0;
    5878:	86 43 00 00 	mov	#0,	0(r6)	;r3 As==00

0000587c <.Loc.259.1>:
        return task_transform;
    587c:	3c 40 32 55 	mov	#21810,	r12	;#0x5532

00005880 <.Loc.261.1>:
}
    5880:	46 17       	popm	#5,	r10	;16-bit words

00005882 <.LCFI23>:
    5882:	30 41       	ret			

00005884 <task_warmup>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5884:	b0 12 7e 62 	call	#25214		;#0x627e

00005888 <.Loc.224.1>:
    if (__INK_GET_VAR_FROM_BUF(_v_discardedSamplesCount) < NUM_WARMUP_SAMPLES)
    5888:	0d 4c       	mov	r12,	r13	;
    588a:	5d 0e       	rlam	#4,	r13	;
    588c:	0d 8c       	sub	r12,	r13	;
    588e:	0c 4d       	mov	r13,	r12	;
    5890:	5c 02       	rlam	#1,	r12	;
    5892:	3c 50 10 45 	add	#17680,	r12	;#0x4510
    5896:	1d 4c 06 00 	mov	6(r12),	r13	;

0000589a <.Loc.226.1>:
    589a:	6e 43       	mov.b	#2,	r14	;r3 As==10
    589c:	2e 9d       	cmp	@r13,	r14	;
    589e:	07 28       	jnc	$+16     	;abs 0x58ae

000058a0 <.LBB14>:
    _v_seed   = ++seed;
    58a0:	92 53 4e 45 	inc	&0x454e		;

000058a4 <.LBE14>:
        ++__INK_GET_VAR_FROM_BUF(_v_discardedSamplesCount);
    58a4:	9d 53 00 00 	inc	0(r13)		;

000058a8 <.Loc.230.1>:
        return task_warmup;
    58a8:	3c 40 84 58 	mov	#22660,	r12	;#0x5884

000058ac <.Loc.237.1>:
}
    58ac:	30 41       	ret			

000058ae <.L83>:
        __INK_GET_VAR_FROM_BUF(_v_trainingSetSize) = 0;
    58ae:	1c 4c 0e 00 	mov	14(r12),r12	;0x0000e
    58b2:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000058b6 <.Loc.235.1>:
        return task_sample;
    58b6:	3c 40 fa 57 	mov	#22522,	r12	;#0x57fa

000058ba <.Loc.237.1>:
}
    58ba:	30 41       	ret			

000058bc <task_featurize>:
{
    58bc:	6a 15       	pushm	#7,	r10	;16-bit words

000058be <.LCFI24>:
    58be:	31 82       	sub	#8,	r1	;r2 As==11

000058c0 <.LCFI25>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    58c0:	b0 12 7e 62 	call	#25214		;#0x627e
    58c4:	07 4c       	mov	r12,	r7	;

000058c6 <.Loc.315.1>:
run_mode_t mode     = __INK_GET_VAR_FROM_BUF(_v_mode);
    58c6:	0a 4c       	mov	r12,	r10	;
    58c8:	5a 0e       	rlam	#4,	r10	;
    58ca:	81 4a 06 00 	mov	r10,	6(r1)	;
    58ce:	0c 4a       	mov	r10,	r12	;
    58d0:	0c 87       	sub	r7,	r12	;
    58d2:	5c 02       	rlam	#1,	r12	;

000058d4 <.Loc.315.1>:
    58d4:	1d 4c 2c 45 	mov	17708(r12),r13	;0x0452c
    58d8:	a1 4d 04 00 	mov	@r13,	4(r1)	;

000058dc <.LVL62>:
        mean.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    58dc:	1d 4c 22 45 	mov	17698(r12),r13	;0x04522

000058e0 <.LVL63>:
    58e0:	64 4d       	mov.b	@r13,	r4	;

000058e2 <.LVL64>:
        mean.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    58e2:	5f 4d 01 00 	mov.b	1(r13),	r15	;

000058e6 <.LVL65>:
        mean.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    58e6:	5e 4d 02 00 	mov.b	2(r13),	r14	;

000058ea <.LVL66>:
        mean.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    58ea:	55 4d 03 00 	mov.b	3(r13),	r5	;

000058ee <.LVL67>:
        mean.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    58ee:	56 4d 04 00 	mov.b	4(r13),	r6	;

000058f2 <.LVL68>:
        mean.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    58f2:	5c 4d 05 00 	mov.b	5(r13),	r12	;

000058f6 <.LVL69>:
        mean.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    58f6:	5b 4d 06 00 	mov.b	6(r13),	r11	;

000058fa <.Loc.326.1>:
        mean.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    58fa:	5a 4d 07 00 	mov.b	7(r13),	r10	;

000058fe <.LVL71>:
    58fe:	81 4a 00 00 	mov	r10,	0(r1)	;

00005902 <.LVL72>:
        mean.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    5902:	5a 4d 08 00 	mov.b	8(r13),	r10	;
    5906:	81 4a 02 00 	mov	r10,	2(r1)	;

0000590a <.Loc.323.1>:
        mean.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    590a:	08 45       	mov	r5,	r8	;
    590c:	58 5d 06 00 	add.b	6(r13),	r8	;
    5910:	68 5d       	add.b	@r13,	r8	;

00005912 <.Loc.330.1>:
    mean.x >>= 2;
    5912:	38 f0 ff 00 	and	#255,	r8	;#0x00ff
    5916:	58 07       	rrum	#2,	r8	;

00005918 <.LVL74>:
        mean.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    5918:	09 46       	mov	r6,	r9	;
    591a:	59 5d 07 00 	add.b	7(r13),	r9	;
    591e:	59 5d 01 00 	add.b	1(r13),	r9	;

00005922 <.Loc.331.1>:
    mean.y >>= 2;
    5922:	39 f0 ff 00 	and	#255,	r9	;#0x00ff
    5926:	59 07       	rrum	#2,	r9	;

00005928 <.LVL75>:
        mean.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    5928:	0a 4c       	mov	r12,	r10	;
    592a:	5a 5d 08 00 	add.b	8(r13),	r10	;
    592e:	5a 5d 02 00 	add.b	2(r13),	r10	;

00005932 <.Loc.332.1>:
    mean.z >>= 2;
    5932:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
    5936:	5a 07       	rrum	#2,	r10	;

00005938 <.LVL76>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x > mean.x)
    5938:	68 9d       	cmp.b	@r13,	r8	;
    593a:	a1 28       	jnc	$+324    	;abs 0x5a7e

0000593c <.Loc.342.1>:
            stddev.x += mean.x - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    593c:	4d 48       	mov.b	r8,	r13	;
    593e:	4d 84       	sub.b	r4,	r13	;
    5940:	44 4d       	mov.b	r13,	r4	;

00005942 <.L87>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y > mean.y)
    5942:	49 9f       	cmp.b	r15,	r9	;
    5944:	98 28       	jnc	$+306    	;abs 0x5a76

00005946 <.Loc.351.1>:
            stddev.y += mean.y - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    5946:	4d 49       	mov.b	r9,	r13	;
    5948:	4d 8f       	sub.b	r15,	r13	;
    594a:	4f 4d       	mov.b	r13,	r15	;

0000594c <.L89>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z > mean.z)
    594c:	4a 9e       	cmp.b	r14,	r10	;
    594e:	8f 28       	jnc	$+288    	;abs 0x5a6e

00005950 <.Loc.360.1>:
            stddev.z += mean.z - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    5950:	4d 4a       	mov.b	r10,	r13	;
    5952:	4d 8e       	sub.b	r14,	r13	;
    5954:	4e 4d       	mov.b	r13,	r14	;

00005956 <.L91>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x > mean.x)
    5956:	48 95       	cmp.b	r5,	r8	;
    5958:	86 28       	jnc	$+270    	;abs 0x5a66

0000595a <.Loc.342.1>:
            stddev.x += mean.x - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    595a:	4d 48       	mov.b	r8,	r13	;
    595c:	4d 85       	sub.b	r5,	r13	;
    595e:	4d 54       	add.b	r4,	r13	;
    5960:	44 4d       	mov.b	r13,	r4	;

00005962 <.L93>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y > mean.y)
    5962:	49 96       	cmp.b	r6,	r9	;
    5964:	7c 28       	jnc	$+250    	;abs 0x5a5e

00005966 <.Loc.351.1>:
            stddev.y += mean.y - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    5966:	45 49       	mov.b	r9,	r5	;
    5968:	45 86       	sub.b	r6,	r5	;
    596a:	4f 55       	add.b	r5,	r15	;

0000596c <.LVL81>:
    596c:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

00005970 <.L95>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z > mean.z)
    5970:	4a 9c       	cmp.b	r12,	r10	;
    5972:	71 28       	jnc	$+228    	;abs 0x5a56

00005974 <.Loc.360.1>:
            stddev.z += mean.z - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    5974:	4d 4a       	mov.b	r10,	r13	;
    5976:	4d 8c       	sub.b	r12,	r13	;
    5978:	4e 5d       	add.b	r13,	r14	;

0000597a <.LVL83>:
    597a:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000597e <.L97>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x > mean.x)
    597e:	48 9b       	cmp.b	r11,	r8	;
    5980:	65 2c       	jc	$+204    	;abs 0x5a4c

00005982 <.Loc.338.1>:
            stddev.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x - mean.x;
    5982:	4c 4b       	mov.b	r11,	r12	;
    5984:	4c 88       	sub.b	r8,	r12	;
    5986:	44 5c       	add.b	r12,	r4	;

00005988 <.LVL85>:
    5988:	4c 44       	mov.b	r4,	r12	;

0000598a <.L99>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y > mean.y)
    598a:	2d 41       	mov	@r1,	r13	;
    598c:	49 9d       	cmp.b	r13,	r9	;
    598e:	58 2c       	jc	$+178    	;abs 0x5a40

00005990 <.Loc.347.1>:
            stddev.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y - mean.y;
    5990:	05 4d       	mov	r13,	r5	;
    5992:	45 89       	sub.b	r9,	r5	;
    5994:	4f 55       	add.b	r5,	r15	;

00005996 <.LVL87>:
    5996:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

0000599a <.L101>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z > mean.z)
    599a:	1d 41 02 00 	mov	2(r1),	r13	;
    599e:	4a 9d       	cmp.b	r13,	r10	;
    59a0:	4a 2c       	jc	$+150    	;abs 0x5a36

000059a2 <.Loc.356.1>:
            stddev.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z - mean.z;
    59a2:	05 4d       	mov	r13,	r5	;
    59a4:	45 8a       	sub.b	r10,	r5	;
    59a6:	4e 55       	add.b	r5,	r14	;

000059a8 <.LVL89>:
    59a8:	45 4e       	mov.b	r14,	r5	;

000059aa <.L103>:
    unsigned stddevmag = stddev.x * stddev.x + stddev.y * stddev.y + stddev.z * stddev.z;
    59aa:	5c 07       	rrum	#2,	r12	;

000059ac <.Loc.368.1>:
    59ac:	04 4f       	mov	r15,	r4	;
    59ae:	54 07       	rrum	#2,	r4	;

000059b0 <.Loc.368.1>:
    59b0:	55 07       	rrum	#2,	r5	;

000059b2 <.Loc.368.1>:
    59b2:	0d 4c       	mov	r12,	r13	;
    59b4:	b0 12 a2 7e 	call	#32418		;#0x7ea2

000059b8 <.LVL93>:
    59b8:	06 4c       	mov	r12,	r6	;

000059ba <.Loc.368.1>:
    59ba:	0c 44       	mov	r4,	r12	;
    59bc:	0d 44       	mov	r4,	r13	;
    59be:	b0 12 a2 7e 	call	#32418		;#0x7ea2

000059c2 <.Loc.368.1>:
    59c2:	06 5c       	add	r12,	r6	;

000059c4 <.Loc.368.1>:
    59c4:	0c 45       	mov	r5,	r12	;
    59c6:	0d 45       	mov	r5,	r13	;
    59c8:	b0 12 a2 7e 	call	#32418		;#0x7ea2

000059cc <.Loc.368.1>:
    59cc:	06 5c       	add	r12,	r6	;

000059ce <.LVL96>:
    unsigned meanmag   = mean.x * mean.x + mean.y * mean.y + mean.z * mean.z;
    59ce:	0c 48       	mov	r8,	r12	;
    59d0:	0d 48       	mov	r8,	r13	;
    59d2:	b0 12 a2 7e 	call	#32418		;#0x7ea2
    59d6:	08 4c       	mov	r12,	r8	;

000059d8 <.LVL98>:
    59d8:	0c 49       	mov	r9,	r12	;
    59da:	0d 49       	mov	r9,	r13	;
    59dc:	b0 12 a2 7e 	call	#32418		;#0x7ea2

000059e0 <.Loc.367.1>:
    59e0:	08 5c       	add	r12,	r8	;

000059e2 <.Loc.367.1>:
    59e2:	0c 4a       	mov	r10,	r12	;
    59e4:	0d 4a       	mov	r10,	r13	;
    59e6:	b0 12 a2 7e 	call	#32418		;#0x7ea2

000059ea <.Loc.367.1>:
    59ea:	0c 58       	add	r8,	r12	;

000059ec <.Loc.369.1>:
    features.meanmag   = sqrt16(meanmag);
    59ec:	3c b0 00 80 	bit	#-32768,r12	;#0x8000
    59f0:	0d 7d       	subc	r13,	r13	;
    59f2:	3d e3       	inv	r13		;
    59f4:	b0 12 04 62 	call	#25092		;#0x6204
    59f8:	0a 4c       	mov	r12,	r10	;

000059fa <.LVL102>:
    features.stddevmag = sqrt16(stddevmag);
    59fa:	0c 46       	mov	r6,	r12	;
    59fc:	0d 46       	mov	r6,	r13	;
    59fe:	4e 18 0d 11 	rpt #15 { rrax.w	r13		;
    5a02:	b0 12 04 62 	call	#25092		;#0x6204

00005a06 <.LVL103>:
    switch (mode)
    5a06:	81 93 04 00 	cmp	#0,	4(r1)	;r3 As==00
    5a0a:	3d 24       	jz	$+124    	;abs 0x5a86
    5a0c:	1d 41 04 00 	mov	4(r1),	r13	;
    5a10:	3d 53       	add	#-1,	r13	;r3 As==11
    5a12:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5a14:	0e 9d       	cmp	r13,	r14	;
    5a16:	46 28       	jnc	$+142    	;abs 0x5aa4

00005a18 <.Loc.376.1>:
            __INK_GET_VAR_FROM_BUF(_v_features).meanmag   = features.meanmag;
    5a18:	1d 41 06 00 	mov	6(r1),	r13	;
    5a1c:	0d 87       	sub	r7,	r13	;
    5a1e:	5d 02       	rlam	#1,	r13	;
    5a20:	1d 4d 24 45 	mov	17700(r13),r13	;0x04524

00005a24 <.Loc.376.1>:
    5a24:	8d 4a 00 00 	mov	r10,	0(r13)	;

00005a28 <.Loc.377.1>:
            __INK_GET_VAR_FROM_BUF(_v_features).stddevmag = features.stddevmag;
    5a28:	8d 4c 02 00 	mov	r12,	2(r13)	;

00005a2c <.Loc.378.1>:
            return task_train;
    5a2c:	3c 40 72 57 	mov	#22386,	r12	;#0x5772

00005a30 <.LVL104>:
}
    5a30:	31 52       	add	#8,	r1	;r2 As==11

00005a32 <.LCFI26>:
    5a32:	64 17       	popm	#7,	r10	;16-bit words

00005a34 <.LCFI27>:
    5a34:	30 41       	ret			

00005a36 <.L102>:
            stddev.z += mean.z - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z;
    5a36:	45 4a       	mov.b	r10,	r5	;
    5a38:	45 8d       	sub.b	r13,	r5	;
    5a3a:	4e 55       	add.b	r5,	r14	;

00005a3c <.LVL106>:
    5a3c:	45 4e       	mov.b	r14,	r5	;

00005a3e <.LVL107>:
    5a3e:	b5 3f       	jmp	$-148    	;abs 0x59aa

00005a40 <.L100>:
            stddev.y += mean.y - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y;
    5a40:	45 49       	mov.b	r9,	r5	;
    5a42:	45 8d       	sub.b	r13,	r5	;
    5a44:	4f 55       	add.b	r5,	r15	;

00005a46 <.LVL108>:
    5a46:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

00005a4a <.LVL109>:
    5a4a:	a7 3f       	jmp	$-176    	;abs 0x599a

00005a4c <.L98>:
            stddev.x += mean.x - __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x;
    5a4c:	4c 48       	mov.b	r8,	r12	;
    5a4e:	4c 8b       	sub.b	r11,	r12	;
    5a50:	44 5c       	add.b	r12,	r4	;

00005a52 <.LVL111>:
    5a52:	4c 44       	mov.b	r4,	r12	;

00005a54 <.LVL112>:
    5a54:	9a 3f       	jmp	$-202    	;abs 0x598a

00005a56 <.L96>:
            stddev.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z - mean.z;
    5a56:	4c 8a       	sub.b	r10,	r12	;
    5a58:	4c 5e       	add.b	r14,	r12	;
    5a5a:	4e 4c       	mov.b	r12,	r14	;

00005a5c <.LVL114>:
    5a5c:	90 3f       	jmp	$-222    	;abs 0x597e

00005a5e <.L94>:
            stddev.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y - mean.y;
    5a5e:	46 89       	sub.b	r9,	r6	;
    5a60:	46 5f       	add.b	r15,	r6	;
    5a62:	4f 46       	mov.b	r6,	r15	;

00005a64 <.LVL116>:
    5a64:	85 3f       	jmp	$-244    	;abs 0x5970

00005a66 <.L92>:
            stddev.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x - mean.x;
    5a66:	45 88       	sub.b	r8,	r5	;
    5a68:	45 54       	add.b	r4,	r5	;
    5a6a:	44 45       	mov.b	r5,	r4	;

00005a6c <.LVL118>:
    5a6c:	7a 3f       	jmp	$-266    	;abs 0x5962

00005a6e <.L90>:
            stddev.z += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].z - mean.z;
    5a6e:	4e 8a       	sub.b	r10,	r14	;
    5a70:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00005a74 <.LVL120>:
    5a74:	70 3f       	jmp	$-286    	;abs 0x5956

00005a76 <.L88>:
            stddev.y += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].y - mean.y;
    5a76:	4f 89       	sub.b	r9,	r15	;
    5a78:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

00005a7c <.LVL122>:
    5a7c:	67 3f       	jmp	$-304    	;abs 0x594c

00005a7e <.L86>:
            stddev.x += __INK_GET_VAR_FROM_BUF_ARRAY(_v_window)[i].x - mean.x;
    5a7e:	44 88       	sub.b	r8,	r4	;
    5a80:	34 f0 ff 00 	and	#255,	r4	;#0x00ff

00005a84 <.LVL124>:
    5a84:	5e 3f       	jmp	$-322    	;abs 0x5942

00005a86 <.L104>:
            __INK_GET_VAR_FROM_BUF(_v_features).meanmag   = features.meanmag;
    5a86:	1d 41 06 00 	mov	6(r1),	r13	;
    5a8a:	0d 87       	sub	r7,	r13	;
    5a8c:	5d 02       	rlam	#1,	r13	;
    5a8e:	1d 4d 24 45 	mov	17700(r13),r13	;0x04524

00005a92 <.Loc.381.1>:
    5a92:	8d 4a 00 00 	mov	r10,	0(r13)	;

00005a96 <.Loc.382.1>:
            __INK_GET_VAR_FROM_BUF(_v_features).stddevmag = features.stddevmag;
    5a96:	8d 4c 02 00 	mov	r12,	2(r13)	;

00005a9a <.Loc.383.1>:
            return task_classify;
    5a9a:	3c 40 04 57 	mov	#22276,	r12	;#0x5704

00005a9e <.LVL126>:
}
    5a9e:	31 52       	add	#8,	r1	;r2 As==11

00005aa0 <.LCFI29>:
    5aa0:	64 17       	popm	#7,	r10	;16-bit words

00005aa2 <.LCFI30>:
    5aa2:	30 41       	ret			

00005aa4 <.L105>:
            __delay_cycles(1);
    5aa4:	03 43       	nop			

00005aa6 <.LVL128>:
}
    5aa6:	31 52       	add	#8,	r1	;r2 As==11

00005aa8 <.LCFI32>:
    5aa8:	64 17       	popm	#7,	r10	;16-bit words

00005aaa <.LCFI33>:
    5aaa:	30 41       	ret			

00005aac <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    5aac:	b0 12 c4 62 	call	#25284		;#0x62c4
    5ab0:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5ab2:	01 20       	jnz	$+4      	;abs 0x5ab6

00005ab4 <.Loc.124.1>:
    5ab4:	30 41       	ret			

00005ab6 <.L112>:
    5ab6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5ab8:	3d 40 ee 53 	mov	#21486,	r13	;#0x53ee
    5abc:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5ac0:	b0 12 34 63 	call	#25396		;#0x6334

00005ac4 <.Loc.124.1>:
    5ac4:	30 41       	ret			

00005ac6 <ACCEL_singleSample_>:
{
    5ac6:	2a 15       	pushm	#3,	r10	;16-bit words

00005ac8 <.LCFI34>:
    5ac8:	08 4c       	mov	r12,	r8	;

00005aca <.Loc.142.1>:
    unsigned seed = _v_seed;
    5aca:	19 42 4e 45 	mov	&0x454e,r9	;0x454e

00005ace <.LVL132>:
    result->x = (seed * 17) % 85;
    5ace:	0c 49       	mov	r9,	r12	;

00005ad0 <.LVL133>:
    5ad0:	5c 0e       	rlam	#4,	r12	;

00005ad2 <.Loc.144.1>:
    5ad2:	7d 40 55 00 	mov.b	#85,	r13	;#0x0055
    5ad6:	0c 59       	add	r9,	r12	;
    5ad8:	b0 12 e6 60 	call	#24806		;#0x60e6

00005adc <.Loc.144.1>:
    5adc:	c8 4c 00 00 	mov.b	r12,	0(r8)	;

00005ae0 <.Loc.145.1>:
    result->y = (seed * 17 * 17) % 85;
    5ae0:	0a 49       	mov	r9,	r10	;
    5ae2:	5a 0a       	rlam	#3,	r10	;
    5ae4:	0a 59       	add	r9,	r10	;
    5ae6:	44 18 0a 5a 	rpt #5 { rlax.w	r10		;
    5aea:	0a 59       	add	r9,	r10	;

00005aec <.Loc.145.1>:
    5aec:	7d 40 55 00 	mov.b	#85,	r13	;#0x0055
    5af0:	0c 4a       	mov	r10,	r12	;
    5af2:	b0 12 e6 60 	call	#24806		;#0x60e6

00005af6 <.Loc.145.1>:
    5af6:	c8 4c 01 00 	mov.b	r12,	1(r8)	;

00005afa <.Loc.146.1>:
    result->z = (seed * 17 * 17 * 17) % 85;
    5afa:	0c 4a       	mov	r10,	r12	;
    5afc:	5c 0e       	rlam	#4,	r12	;

00005afe <.Loc.146.1>:
    5afe:	7d 40 55 00 	mov.b	#85,	r13	;#0x0055
    5b02:	0c 5a       	add	r10,	r12	;
    5b04:	b0 12 e6 60 	call	#24806		;#0x60e6

00005b08 <.Loc.146.1>:
    5b08:	c8 4c 02 00 	mov.b	r12,	2(r8)	;

00005b0c <.LVL137>:
    _v_seed   = ++seed;
    5b0c:	19 53       	inc	r9		;

00005b0e <.LVL138>:
    5b0e:	82 49 4e 45 	mov	r9,	&0x454e	;

00005b12 <.Loc.148.1>:
}
    5b12:	28 17       	popm	#3,	r10	;16-bit words

00005b14 <.LCFI35>:
    5b14:	30 41       	ret			

00005b16 <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS(pinCont);
    5b16:	3c 40 10 45 	mov	#17680,	r12	;#0x4510
    5b1a:	bc 40 e2 52 	mov	#21218,	0(r12)	;#0x52e2
    5b1e:	00 00 

00005b20 <.Loc.556.1>:
    5b20:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b24:	3d 50 e2 52 	add	#21218,	r13	;#0x52e2
    5b28:	8c 4d 1e 00 	mov	r13,	30(r12)	; 0x001e

00005b2c <.Loc.556.1>:
    __INK_SET_BUFFER_POINTERS(_v_pinState);
    5b2c:	bc 40 e0 52 	mov	#21216,	2(r12)	;#0x52e0
    5b30:	02 00 

00005b32 <.Loc.557.1>:
    5b32:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b36:	3d 50 e0 52 	add	#21216,	r13	;#0x52e0
    5b3a:	8c 4d 20 00 	mov	r13,	32(r12)	; 0x0020

00005b3e <.Loc.557.1>:
    __INK_SET_BUFFER_POINTERS(_v_count);
    5b3e:	bc 40 de 52 	mov	#21214,	4(r12)	;#0x52de
    5b42:	04 00 

00005b44 <.Loc.558.1>:
    5b44:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b48:	3d 50 de 52 	add	#21214,	r13	;#0x52de
    5b4c:	8c 4d 22 00 	mov	r13,	34(r12)	; 0x0022

00005b50 <.Loc.558.1>:
    __INK_SET_BUFFER_POINTERS(_v_discardedSamplesCount);
    5b50:	bc 40 dc 52 	mov	#21212,	6(r12)	;#0x52dc
    5b54:	06 00 

00005b56 <.Loc.559.1>:
    5b56:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b5a:	3d 50 dc 52 	add	#21212,	r13	;#0x52dc
    5b5e:	8c 4d 24 00 	mov	r13,	36(r12)	; 0x0024

00005b62 <.Loc.559.1>:
    __INK_SET_BUFFER_POINTERS(_v_totalCount);
    5b62:	bc 40 da 52 	mov	#21210,	8(r12)	;#0x52da
    5b66:	08 00 

00005b68 <.Loc.560.1>:
    5b68:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b6c:	3d 50 da 52 	add	#21210,	r13	;#0x52da
    5b70:	8c 4d 26 00 	mov	r13,	38(r12)	; 0x0026

00005b74 <.Loc.560.1>:
    __INK_SET_BUFFER_POINTERS(_v_movingCount);
    5b74:	bc 40 d8 52 	mov	#21208,	10(r12)	;#0x52d8, 0x000a
    5b78:	0a 00 

00005b7a <.Loc.561.1>:
    5b7a:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b7e:	3d 50 d8 52 	add	#21208,	r13	;#0x52d8
    5b82:	8c 4d 28 00 	mov	r13,	40(r12)	; 0x0028

00005b86 <.Loc.561.1>:
    __INK_SET_BUFFER_POINTERS(_v_stationaryCount);
    5b86:	bc 40 d6 52 	mov	#21206,	12(r12)	;#0x52d6, 0x000c
    5b8a:	0c 00 

00005b8c <.Loc.562.1>:
    5b8c:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5b90:	3d 50 d6 52 	add	#21206,	r13	;#0x52d6
    5b94:	8c 4d 2a 00 	mov	r13,	42(r12)	; 0x002a

00005b98 <.Loc.562.1>:
    __INK_SET_BUFFER_POINTERS(_v_trainingSetSize);
    5b98:	bc 40 d4 52 	mov	#21204,	14(r12)	;#0x52d4, 0x000e
    5b9c:	0e 00 

00005b9e <.Loc.563.1>:
    5b9e:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5ba2:	3d 50 d4 52 	add	#21204,	r13	;#0x52d4
    5ba6:	8c 4d 2c 00 	mov	r13,	44(r12)	; 0x002c

00005baa <.Loc.563.1>:
    __INK_SET_BUFFER_POINTERS(_v_samplesInWindow);
    5baa:	bc 40 d2 52 	mov	#21202,	16(r12)	;#0x52d2, 0x0010
    5bae:	10 00 

00005bb0 <.Loc.564.1>:
    5bb0:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5bb4:	3d 50 d2 52 	add	#21202,	r13	;#0x52d2
    5bb8:	8c 4d 2e 00 	mov	r13,	46(r12)	; 0x002e

00005bbc <.Loc.564.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(_v_window);
    5bbc:	bc 40 c8 52 	mov	#21192,	18(r12)	;#0x52c8, 0x0012
    5bc0:	12 00 

00005bc2 <.Loc.565.1>:
    5bc2:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5bc6:	3d 50 c8 52 	add	#21192,	r13	;#0x52c8
    5bca:	8c 4d 30 00 	mov	r13,	48(r12)	; 0x0030

00005bce <.Loc.565.1>:
    __INK_SET_BUFFER_POINTERS(_v_features);
    5bce:	bc 40 c4 52 	mov	#21188,	20(r12)	;#0x52c4, 0x0014
    5bd2:	14 00 

00005bd4 <.Loc.566.1>:
    5bd4:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5bd8:	3d 50 c4 52 	add	#21188,	r13	;#0x52c4
    5bdc:	8c 4d 32 00 	mov	r13,	50(r12)	; 0x0032

00005be0 <.Loc.566.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(_v_model_stationary);
    5be0:	bc 40 84 52 	mov	#21124,	22(r12)	;#0x5284, 0x0016
    5be4:	16 00 

00005be6 <.Loc.567.1>:
    5be6:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5bea:	3d 50 84 52 	add	#21124,	r13	;#0x5284
    5bee:	8c 4d 34 00 	mov	r13,	52(r12)	; 0x0034

00005bf2 <.Loc.567.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(_v_model_moving);
    5bf2:	bc 40 44 52 	mov	#21060,	24(r12)	;#0x5244, 0x0018
    5bf6:	18 00 

00005bf8 <.Loc.568.1>:
    5bf8:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5bfc:	3d 50 44 52 	add	#21060,	r13	;#0x5244
    5c00:	8c 4d 36 00 	mov	r13,	54(r12)	; 0x0036

00005c04 <.Loc.568.1>:
    __INK_SET_BUFFER_POINTERS(_v_class);
    5c04:	bc 40 42 52 	mov	#21058,	26(r12)	;#0x5242, 0x001a
    5c08:	1a 00 

00005c0a <.Loc.569.1>:
    5c0a:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5c0e:	3d 50 42 52 	add	#21058,	r13	;#0x5242
    5c12:	8c 4d 38 00 	mov	r13,	56(r12)	; 0x0038

00005c16 <.Loc.569.1>:
    __INK_SET_BUFFER_POINTERS(_v_mode);
    5c16:	bc 40 40 52 	mov	#21056,	28(r12)	;#0x5240, 0x001c
    5c1a:	1c 00 

00005c1c <.Loc.570.1>:
    5c1c:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4
    5c20:	3d 50 40 52 	add	#21056,	r13	;#0x5240
    5c24:	8c 4d 3a 00 	mov	r13,	58(r12)	; 0x003a

00005c28 <.Loc.570.1>:
}
    5c28:	30 41       	ret			

00005c2a <udivmodhi4>:
   <http://www.gnu.org/licenses/>.  */

/* Emulate the division and modulus operation.  */

unsigned short udivmodhi4(unsigned short num, unsigned short den, short modwanted)
{
    5c2a:	0f 4c       	mov	r12,	r15	;

00005c2c <.Loc.30.1>:
    unsigned short bit = 1;
    unsigned short res = 0;

    while (den < num && bit && !(den & (1 << 15)))
    5c2c:	0d 9c       	cmp	r12,	r13	;
    5c2e:	5b 2c       	jc	$+184    	;abs 0x5ce6

00005c30 <.Loc.33.1>:
    5c30:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c32:	59 38       	jl	$+180    	;abs 0x5ce6

00005c34 <.Loc.35.1>:
    {
        den <<= 1;
    5c34:	0c 4d       	mov	r13,	r12	;

00005c36 <.LVL2>:
    5c36:	5c 02       	rlam	#1,	r12	;

00005c38 <.LVL3>:
    while (den < num && bit && !(den & (1 << 15)))
    5c38:	0c 9f       	cmp	r15,	r12	;
    5c3a:	60 2c       	jc	$+194    	;abs 0x5cfc

00005c3c <.Loc.33.1>:
    5c3c:	0c 93       	cmp	#0,	r12	;r3 As==00
    5c3e:	5e 38       	jl	$+190    	;abs 0x5cfc

00005c40 <.Loc.35.1>:
        den <<= 1;
    5c40:	0b 4d       	mov	r13,	r11	;

00005c42 <L0^A>:
    5c42:	5b 06       	rlam	#2,	r11	;

00005c44 <.LVL4>:
    while (den < num && bit && !(den & (1 << 15)))
    5c44:	0b 9f       	cmp	r15,	r11	;
    5c46:	5e 2c       	jc	$+190    	;abs 0x5d04

00005c48 <.Loc.33.1>:
    5c48:	0b 93       	cmp	#0,	r11	;r3 As==00
    5c4a:	5c 38       	jl	$+186    	;abs 0x5d04

00005c4c <.Loc.35.1>:
        den <<= 1;
    5c4c:	0b 4d       	mov	r13,	r11	;

00005c4e <.LVL5>:
    5c4e:	5b 0a       	rlam	#3,	r11	;

00005c50 <.LVL6>:
    while (den < num && bit && !(den & (1 << 15)))
    5c50:	0b 9f       	cmp	r15,	r11	;
    5c52:	5c 2c       	jc	$+186    	;abs 0x5d0c

00005c54 <.Loc.33.1>:
    5c54:	0b 93       	cmp	#0,	r11	;r3 As==00
    5c56:	5a 38       	jl	$+182    	;abs 0x5d0c

00005c58 <.Loc.35.1>:
        den <<= 1;
    5c58:	5d 0e       	rlam	#4,	r13	;

00005c5a <.LVL7>:
    while (den < num && bit && !(den & (1 << 15)))
    5c5a:	0d 9f       	cmp	r15,	r13	;
    5c5c:	5b 2c       	jc	$+184    	;abs 0x5d14

00005c5e <.Loc.33.1>:
    5c5e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c60:	59 38       	jl	$+180    	;abs 0x5d14

00005c62 <.Loc.35.1>:
        den <<= 1;
    5c62:	0d 4c       	mov	r12,	r13	;

00005c64 <.LVL8>:
    5c64:	5d 0e       	rlam	#4,	r13	;

00005c66 <.LVL9>:
    while (den < num && bit && !(den & (1 << 15)))
    5c66:	0d 9f       	cmp	r15,	r13	;
    5c68:	5d 2c       	jc	$+188    	;abs 0x5d24

00005c6a <.Loc.33.1>:
    5c6a:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c6c:	5b 38       	jl	$+184    	;abs 0x5d24

00005c6e <.Loc.35.1>:
        den <<= 1;
    5c6e:	5d 02       	rlam	#1,	r13	;

00005c70 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5c70:	0d 9f       	cmp	r15,	r13	;
    5c72:	5c 2c       	jc	$+186    	;abs 0x5d2c

00005c74 <.Loc.33.1>:
    5c74:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c76:	5a 38       	jl	$+182    	;abs 0x5d2c

00005c78 <.Loc.35.1>:
        den <<= 1;
    5c78:	5d 02       	rlam	#1,	r13	;

00005c7a <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5c7a:	0d 9f       	cmp	r15,	r13	;
    5c7c:	5b 2c       	jc	$+184    	;abs 0x5d34

00005c7e <.Loc.33.1>:
    5c7e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c80:	59 38       	jl	$+180    	;abs 0x5d34

00005c82 <.Loc.35.1>:
        den <<= 1;
    5c82:	5d 02       	rlam	#1,	r13	;

00005c84 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5c84:	0d 9f       	cmp	r15,	r13	;
    5c86:	4a 2c       	jc	$+150    	;abs 0x5d1c

00005c88 <.Loc.33.1>:
    5c88:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c8a:	48 38       	jl	$+146    	;abs 0x5d1c

00005c8c <.Loc.35.1>:
        den <<= 1;
    5c8c:	5d 02       	rlam	#1,	r13	;

00005c8e <.LVL13>:
    while (den < num && bit && !(den & (1 << 15)))
    5c8e:	0d 9f       	cmp	r15,	r13	;
    5c90:	55 2c       	jc	$+172    	;abs 0x5d3c

00005c92 <.Loc.33.1>:
    5c92:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c94:	53 38       	jl	$+168    	;abs 0x5d3c

00005c96 <.Loc.35.1>:
        den <<= 1;
    5c96:	0d 4c       	mov	r12,	r13	;
    5c98:	48 18 0d 5d 	rpt #9 { rlax.w	r13		;

00005c9c <.LVL14>:
    while (den < num && bit && !(den & (1 << 15)))
    5c9c:	0d 9f       	cmp	r15,	r13	;
    5c9e:	52 2c       	jc	$+166    	;abs 0x5d44

00005ca0 <.Loc.33.1>:
    5ca0:	0d 93       	cmp	#0,	r13	;r3 As==00
    5ca2:	50 38       	jl	$+162    	;abs 0x5d44

00005ca4 <.Loc.35.1>:
        den <<= 1;
    5ca4:	5d 02       	rlam	#1,	r13	;

00005ca6 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5ca6:	0d 9f       	cmp	r15,	r13	;
    5ca8:	51 2c       	jc	$+164    	;abs 0x5d4c

00005caa <.Loc.33.1>:
    5caa:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cac:	4f 38       	jl	$+160    	;abs 0x5d4c

00005cae <.Loc.35.1>:
        den <<= 1;
    5cae:	5d 02       	rlam	#1,	r13	;

00005cb0 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5cb0:	0d 9f       	cmp	r15,	r13	;
    5cb2:	50 2c       	jc	$+162    	;abs 0x5d54

00005cb4 <.Loc.33.1>:
    5cb4:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cb6:	4e 38       	jl	$+158    	;abs 0x5d54

00005cb8 <.Loc.35.1>:
        den <<= 1;
    5cb8:	5d 02       	rlam	#1,	r13	;

00005cba <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5cba:	0d 9f       	cmp	r15,	r13	;
    5cbc:	4f 2c       	jc	$+160    	;abs 0x5d5c

00005cbe <.Loc.33.1>:
    5cbe:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cc0:	4d 38       	jl	$+156    	;abs 0x5d5c

00005cc2 <.Loc.35.1>:
        den <<= 1;
    5cc2:	5d 02       	rlam	#1,	r13	;

00005cc4 <.LVL18>:
    while (den < num && bit && !(den & (1 << 15)))
    5cc4:	0d 9f       	cmp	r15,	r13	;
    5cc6:	4e 2c       	jc	$+158    	;abs 0x5d64

00005cc8 <.Loc.33.1>:
    5cc8:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cca:	4c 38       	jl	$+154    	;abs 0x5d64

00005ccc <.Loc.35.1>:
        den <<= 1;
    5ccc:	0d 4c       	mov	r12,	r13	;
    5cce:	4d 18 0d 5d 	rpt #14 { rlax.w	r13		;

00005cd2 <.LVL19>:
    while (den < num && bit && !(den & (1 << 15)))
    5cd2:	0d 9f       	cmp	r15,	r13	;
    5cd4:	4b 2c       	jc	$+152    	;abs 0x5d6c

00005cd6 <.Loc.33.1>:
    5cd6:	4c 43       	clr.b	r12		;
    5cd8:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cda:	48 38       	jl	$+146    	;abs 0x5d6c

00005cdc <.L5>:
        }
        bit >>= 1;
        den >>= 1;
    }

    if (modwanted)
    5cdc:	0e 93       	cmp	#0,	r14	;r3 As==00
    5cde:	01 20       	jnz	$+4      	;abs 0x5ce2

00005ce0 <.Loc.54.1>:
    {
        return num;
    }
    return res;
}
    5ce0:	30 41       	ret			

00005ce2 <.L46>:
    if (modwanted)
    5ce2:	0c 4f       	mov	r15,	r12	;

00005ce4 <.Loc.54.1>:
}
    5ce4:	30 41       	ret			

00005ce6 <.L10>:
    unsigned short bit = 1;
    5ce6:	5b 43       	mov.b	#1,	r11	;r3 As==01

00005ce8 <.LVL22>:
    5ce8:	4c 43       	clr.b	r12		;

00005cea <.L7>:
        if (num >= den)
    5cea:	0f 9d       	cmp	r13,	r15	;
    5cec:	02 28       	jnc	$+6      	;abs 0x5cf2

00005cee <.Loc.42.1>:
            num -= den;
    5cee:	0f 8d       	sub	r13,	r15	;

00005cf0 <.Loc.43.1>:
            res |= bit;
    5cf0:	0c db       	bis	r11,	r12	;

00005cf2 <.L6>:
        bit >>= 1;
    5cf2:	5b 03       	rrum	#1,	r11	;

00005cf4 <.Loc.46.1>:
        den >>= 1;
    5cf4:	5d 03       	rrum	#1,	r13	;

00005cf6 <.Loc.38.1>:
    while (bit)
    5cf6:	0b 93       	cmp	#0,	r11	;r3 As==00
    5cf8:	f8 23       	jnz	$-14     	;abs 0x5cea
    5cfa:	f0 3f       	jmp	$-30     	;abs 0x5cdc

00005cfc <.L11>:
    while (den < num && bit && !(den & (1 << 15)))
    5cfc:	0d 4c       	mov	r12,	r13	;

00005cfe <.Loc.36.1>:
        bit <<= 1;
    5cfe:	6b 43       	mov.b	#2,	r11	;r3 As==10

00005d00 <.LVL29>:
    unsigned short bit = 1;
    5d00:	4c 43       	clr.b	r12		;
    5d02:	f3 3f       	jmp	$-24     	;abs 0x5cea

00005d04 <.L13>:
    while (den < num && bit && !(den & (1 << 15)))
    5d04:	0d 4b       	mov	r11,	r13	;

00005d06 <.Loc.36.1>:
        bit <<= 1;
    5d06:	6b 42       	mov.b	#4,	r11	;r2 As==10

00005d08 <.LVL31>:
    unsigned short bit = 1;
    5d08:	4c 43       	clr.b	r12		;
    5d0a:	ef 3f       	jmp	$-32     	;abs 0x5cea

00005d0c <.L15>:
    while (den < num && bit && !(den & (1 << 15)))
    5d0c:	0d 4b       	mov	r11,	r13	;

00005d0e <.Loc.36.1>:
        bit <<= 1;
    5d0e:	7b 42       	mov.b	#8,	r11	;r2 As==11

00005d10 <.LVL33>:
    unsigned short bit = 1;
    5d10:	4c 43       	clr.b	r12		;
    5d12:	eb 3f       	jmp	$-40     	;abs 0x5cea

00005d14 <.L17>:
        bit <<= 1;
    5d14:	7b 40 10 00 	mov.b	#16,	r11	;#0x0010

00005d18 <.LVL35>:
    unsigned short bit = 1;
    5d18:	4c 43       	clr.b	r12		;
    5d1a:	e7 3f       	jmp	$-48     	;abs 0x5cea

00005d1c <.L25>:
        bit <<= 1;
    5d1c:	3b 40 00 01 	mov	#256,	r11	;#0x0100

00005d20 <.LVL37>:
    unsigned short bit = 1;
    5d20:	4c 43       	clr.b	r12		;
    5d22:	e3 3f       	jmp	$-56     	;abs 0x5cea

00005d24 <.L19>:
        bit <<= 1;
    5d24:	7b 40 20 00 	mov.b	#32,	r11	;#0x0020

00005d28 <.LVL39>:
    unsigned short bit = 1;
    5d28:	4c 43       	clr.b	r12		;
    5d2a:	df 3f       	jmp	$-64     	;abs 0x5cea

00005d2c <.L21>:
        bit <<= 1;
    5d2c:	7b 40 40 00 	mov.b	#64,	r11	;#0x0040

00005d30 <.LVL41>:
    unsigned short bit = 1;
    5d30:	4c 43       	clr.b	r12		;
    5d32:	db 3f       	jmp	$-72     	;abs 0x5cea

00005d34 <.L23>:
        bit <<= 1;
    5d34:	7b 40 80 00 	mov.b	#128,	r11	;#0x0080

00005d38 <.LVL43>:
    unsigned short bit = 1;
    5d38:	4c 43       	clr.b	r12		;
    5d3a:	d7 3f       	jmp	$-80     	;abs 0x5cea

00005d3c <.L27>:
        bit <<= 1;
    5d3c:	3b 40 00 02 	mov	#512,	r11	;#0x0200

00005d40 <.LVL45>:
    unsigned short bit = 1;
    5d40:	4c 43       	clr.b	r12		;
    5d42:	d3 3f       	jmp	$-88     	;abs 0x5cea

00005d44 <.L29>:
        bit <<= 1;
    5d44:	3b 40 00 04 	mov	#1024,	r11	;#0x0400

00005d48 <.LVL47>:
    unsigned short bit = 1;
    5d48:	4c 43       	clr.b	r12		;
    5d4a:	cf 3f       	jmp	$-96     	;abs 0x5cea

00005d4c <.L31>:
        bit <<= 1;
    5d4c:	3b 40 00 08 	mov	#2048,	r11	;#0x0800

00005d50 <.LVL49>:
    unsigned short bit = 1;
    5d50:	4c 43       	clr.b	r12		;
    5d52:	cb 3f       	jmp	$-104    	;abs 0x5cea

00005d54 <.L33>:
        bit <<= 1;
    5d54:	3b 40 00 10 	mov	#4096,	r11	;#0x1000

00005d58 <.LVL51>:
    unsigned short bit = 1;
    5d58:	4c 43       	clr.b	r12		;
    5d5a:	c7 3f       	jmp	$-112    	;abs 0x5cea

00005d5c <.L35>:
        bit <<= 1;
    5d5c:	3b 40 00 20 	mov	#8192,	r11	;#0x2000

00005d60 <.LVL53>:
    unsigned short bit = 1;
    5d60:	4c 43       	clr.b	r12		;
    5d62:	c3 3f       	jmp	$-120    	;abs 0x5cea

00005d64 <.L37>:
        bit <<= 1;
    5d64:	3b 40 00 40 	mov	#16384,	r11	;#0x4000

00005d68 <.LVL55>:
    unsigned short bit = 1;
    5d68:	4c 43       	clr.b	r12		;
    5d6a:	bf 3f       	jmp	$-128    	;abs 0x5cea

00005d6c <.L39>:
        bit <<= 1;
    5d6c:	3b 40 00 80 	mov	#-32768,r11	;#0x8000

00005d70 <.LVL57>:
    unsigned short bit = 1;
    5d70:	4c 43       	clr.b	r12		;
    5d72:	bb 3f       	jmp	$-136    	;abs 0x5cea

00005d74 <__mspabi_divi>:

short __divhi3(short a, short b)
{
    5d74:	1a 15       	pushm	#2,	r10	;16-bit words

00005d76 <.LCFI0>:
    5d76:	0a 4c       	mov	r12,	r10	;

00005d78 <.Loc.58.1>:
    short neg = 0;
    short res;

    if (a < 0)
    5d78:	0c 93       	cmp	#0,	r12	;r3 As==00
    5d7a:	48 38       	jl	$+146    	;abs 0x5e0c
    5d7c:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005d7e <.LVL60>:
    short neg = 0;
    5d7e:	49 43       	clr.b	r9		;

00005d80 <.L48>:
    {
        a   = -a;
        neg = !neg;
    }

    if (b < 0)
    5d80:	0d 93       	cmp	#0,	r13	;r3 As==00
    5d82:	04 34       	jge	$+10     	;abs 0x5d8c

00005d84 <.Loc.69.1>:
    {
        b   = -b;
    5d84:	4e 43       	clr.b	r14		;
    5d86:	0e 8d       	sub	r13,	r14	;
    5d88:	0d 4e       	mov	r14,	r13	;

00005d8a <.LVL62>:
        neg = !neg;
    5d8a:	09 4c       	mov	r12,	r9	;

00005d8c <.L49>:
    }

    res = udivmodhi4(a, b, 0);
    5d8c:	0b 4a       	mov	r10,	r11	;
    5d8e:	0e 4d       	mov	r13,	r14	;

00005d90 <.LBB10>:
    while (den < num && bit && !(den & (1 << 15)))
    5d90:	0d 9a       	cmp	r10,	r13	;
    5d92:	52 2c       	jc	$+166    	;abs 0x5e38

00005d94 <.Loc.35.1>:
        den <<= 1;
    5d94:	0f 4d       	mov	r13,	r15	;
    5d96:	5f 02       	rlam	#1,	r15	;

00005d98 <.LVL65>:
    while (den < num && bit && !(den & (1 << 15)))
    5d98:	0f 9a       	cmp	r10,	r15	;
    5d9a:	51 2c       	jc	$+164    	;abs 0x5e3e

00005d9c <.Loc.35.1>:
        den <<= 1;
    5d9c:	5e 06       	rlam	#2,	r14	;

00005d9e <.LVL66>:
    while (den < num && bit && !(den & (1 << 15)))
    5d9e:	0e 9a       	cmp	r10,	r14	;
    5da0:	52 2c       	jc	$+166    	;abs 0x5e46

00005da2 <.Loc.35.1>:
        den <<= 1;
    5da2:	0e 4d       	mov	r13,	r14	;

00005da4 <.LVL67>:
    5da4:	5e 0a       	rlam	#3,	r14	;

00005da6 <.LVL68>:
    while (den < num && bit && !(den & (1 << 15)))
    5da6:	0e 9a       	cmp	r10,	r14	;
    5da8:	51 2c       	jc	$+164    	;abs 0x5e4c

00005daa <.Loc.35.1>:
        den <<= 1;
    5daa:	5d 0e       	rlam	#4,	r13	;

00005dac <.LVL69>:
    while (den < num && bit && !(den & (1 << 15)))
    5dac:	0d 9a       	cmp	r10,	r13	;
    5dae:	51 2c       	jc	$+164    	;abs 0x5e52

00005db0 <.Loc.35.1>:
        den <<= 1;
    5db0:	0e 4f       	mov	r15,	r14	;
    5db2:	5e 0e       	rlam	#4,	r14	;

00005db4 <.LVL70>:
    while (den < num && bit && !(den & (1 << 15)))
    5db4:	0e 9a       	cmp	r10,	r14	;
    5db6:	52 2c       	jc	$+166    	;abs 0x5e5c

00005db8 <.Loc.35.1>:
        den <<= 1;
    5db8:	5e 02       	rlam	#1,	r14	;

00005dba <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5dba:	0e 9a       	cmp	r10,	r14	;
    5dbc:	53 2c       	jc	$+168    	;abs 0x5e64

00005dbe <.Loc.35.1>:
        den <<= 1;
    5dbe:	5e 02       	rlam	#1,	r14	;

00005dc0 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5dc0:	0e 9a       	cmp	r10,	r14	;
    5dc2:	54 2c       	jc	$+170    	;abs 0x5e6c

00005dc4 <.Loc.35.1>:
        den <<= 1;
    5dc4:	5e 02       	rlam	#1,	r14	;

00005dc6 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5dc6:	0e 9a       	cmp	r10,	r14	;
    5dc8:	55 2c       	jc	$+172    	;abs 0x5e74

00005dca <.Loc.35.1>:
        den <<= 1;
    5dca:	5e 02       	rlam	#1,	r14	;

00005dcc <.LVL74>:
    while (den < num && bit && !(den & (1 << 15)))
    5dcc:	0e 9a       	cmp	r10,	r14	;
    5dce:	56 2c       	jc	$+174    	;abs 0x5e7c

00005dd0 <.Loc.35.1>:
        den <<= 1;
    5dd0:	0e 4f       	mov	r15,	r14	;
    5dd2:	48 18 0e 5e 	rpt #9 { rlax.w	r14		;

00005dd6 <.LVL75>:
    while (den < num && bit && !(den & (1 << 15)))
    5dd6:	0e 9a       	cmp	r10,	r14	;
    5dd8:	2b 2c       	jc	$+88     	;abs 0x5e30

00005dda <.Loc.35.1>:
        den <<= 1;
    5dda:	5e 02       	rlam	#1,	r14	;

00005ddc <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5ddc:	0e 9a       	cmp	r10,	r14	;
    5dde:	52 2c       	jc	$+166    	;abs 0x5e84

00005de0 <.Loc.35.1>:
        den <<= 1;
    5de0:	5e 02       	rlam	#1,	r14	;

00005de2 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5de2:	0e 9a       	cmp	r10,	r14	;
    5de4:	53 2c       	jc	$+168    	;abs 0x5e8c

00005de6 <.Loc.35.1>:
        den <<= 1;
    5de6:	5e 02       	rlam	#1,	r14	;

00005de8 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5de8:	0e 9a       	cmp	r10,	r14	;
    5dea:	16 2c       	jc	$+46     	;abs 0x5e18

00005dec <.Loc.35.1>:
        den <<= 1;
    5dec:	5e 02       	rlam	#1,	r14	;

00005dee <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5dee:	0e 9a       	cmp	r10,	r14	;
    5df0:	51 2c       	jc	$+164    	;abs 0x5e94

00005df2 <.Loc.35.1>:
        den <<= 1;
    5df2:	5e 02       	rlam	#1,	r14	;

00005df4 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5df4:	4c 43       	clr.b	r12		;

00005df6 <.Loc.36.1>:
        bit <<= 1;
    5df6:	3d 40 00 80 	mov	#-32768,r13	;#0x8000

00005dfa <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5dfa:	0e 9a       	cmp	r10,	r14	;
    5dfc:	0f 2c       	jc	$+32     	;abs 0x5e1c

00005dfe <.L52>:

    if (neg)
    5dfe:	09 93       	cmp	#0,	r9	;r3 As==00
    5e00:	03 24       	jz	$+8      	;abs 0x5e08

00005e02 <.Loc.77.1>:
    {
        res = -res;
    5e02:	4d 43       	clr.b	r13		;
    5e04:	0d 8c       	sub	r12,	r13	;
    5e06:	0c 4d       	mov	r13,	r12	;

00005e08 <.L47>:
    }

    return res;
}
    5e08:	19 17       	popm	#2,	r10	;16-bit words

00005e0a <.LCFI1>:
    5e0a:	30 41       	ret			

00005e0c <.L77>:
        a   = -a;
    5e0c:	4c 43       	clr.b	r12		;
    5e0e:	0c 8a       	sub	r10,	r12	;
    5e10:	0a 4c       	mov	r12,	r10	;

00005e12 <.LVL84>:
    5e12:	4c 43       	clr.b	r12		;

00005e14 <.Loc.64.1>:
        neg = !neg;
    5e14:	59 43       	mov.b	#1,	r9	;r3 As==01
    5e16:	b4 3f       	jmp	$-150    	;abs 0x5d80

00005e18 <.L70>:
        bit <<= 1;
    5e18:	3d 40 00 20 	mov	#8192,	r13	;#0x2000

00005e1c <.L50>:
    unsigned short bit = 1;
    5e1c:	4c 43       	clr.b	r12		;

00005e1e <.L54>:
        if (num >= den)
    5e1e:	0b 9e       	cmp	r14,	r11	;
    5e20:	02 28       	jnc	$+6      	;abs 0x5e26

00005e22 <.Loc.42.1>:
            num -= den;
    5e22:	0b 8e       	sub	r14,	r11	;

00005e24 <.Loc.43.1>:
            res |= bit;
    5e24:	0c dd       	bis	r13,	r12	;

00005e26 <.L53>:
        bit >>= 1;
    5e26:	5d 03       	rrum	#1,	r13	;

00005e28 <.Loc.46.1>:
        den >>= 1;
    5e28:	5e 03       	rrum	#1,	r14	;

00005e2a <.Loc.38.1>:
    while (bit)
    5e2a:	0d 93       	cmp	#0,	r13	;r3 As==00
    5e2c:	f8 23       	jnz	$-14     	;abs 0x5e1e
    5e2e:	e7 3f       	jmp	$-48     	;abs 0x5dfe

00005e30 <.L67>:
        bit <<= 1;
    5e30:	3d 40 00 04 	mov	#1024,	r13	;#0x0400

00005e34 <.LVL93>:
    unsigned short bit = 1;
    5e34:	4c 43       	clr.b	r12		;
    5e36:	f3 3f       	jmp	$-24     	;abs 0x5e1e

00005e38 <.L57>:
    5e38:	5d 43       	mov.b	#1,	r13	;r3 As==01

00005e3a <.LVL95>:
    5e3a:	4c 43       	clr.b	r12		;
    5e3c:	f0 3f       	jmp	$-30     	;abs 0x5e1e

00005e3e <.L58>:
    while (den < num && bit && !(den & (1 << 15)))
    5e3e:	0e 4f       	mov	r15,	r14	;

00005e40 <.Loc.36.1>:
        bit <<= 1;
    5e40:	6d 43       	mov.b	#2,	r13	;r3 As==10

00005e42 <.LVL97>:
    unsigned short bit = 1;
    5e42:	4c 43       	clr.b	r12		;
    5e44:	ec 3f       	jmp	$-38     	;abs 0x5e1e

00005e46 <.L59>:
        bit <<= 1;
    5e46:	6d 42       	mov.b	#4,	r13	;r2 As==10

00005e48 <.LVL99>:
    unsigned short bit = 1;
    5e48:	4c 43       	clr.b	r12		;
    5e4a:	e9 3f       	jmp	$-44     	;abs 0x5e1e

00005e4c <.L60>:
        bit <<= 1;
    5e4c:	7d 42       	mov.b	#8,	r13	;r2 As==11

00005e4e <.LVL101>:
    unsigned short bit = 1;
    5e4e:	4c 43       	clr.b	r12		;
    5e50:	e6 3f       	jmp	$-50     	;abs 0x5e1e

00005e52 <.L61>:
    while (den < num && bit && !(den & (1 << 15)))
    5e52:	0e 4d       	mov	r13,	r14	;

00005e54 <.Loc.36.1>:
        bit <<= 1;
    5e54:	7d 40 10 00 	mov.b	#16,	r13	;#0x0010

00005e58 <.LVL103>:
    unsigned short bit = 1;
    5e58:	4c 43       	clr.b	r12		;
    5e5a:	e1 3f       	jmp	$-60     	;abs 0x5e1e

00005e5c <.L62>:
        bit <<= 1;
    5e5c:	7d 40 20 00 	mov.b	#32,	r13	;#0x0020

00005e60 <.LVL105>:
    unsigned short bit = 1;
    5e60:	4c 43       	clr.b	r12		;
    5e62:	dd 3f       	jmp	$-68     	;abs 0x5e1e

00005e64 <.L63>:
        bit <<= 1;
    5e64:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00005e68 <.LVL107>:
    unsigned short bit = 1;
    5e68:	4c 43       	clr.b	r12		;
    5e6a:	d9 3f       	jmp	$-76     	;abs 0x5e1e

00005e6c <.L64>:
        bit <<= 1;
    5e6c:	7d 40 80 00 	mov.b	#128,	r13	;#0x0080

00005e70 <.LVL109>:
    unsigned short bit = 1;
    5e70:	4c 43       	clr.b	r12		;
    5e72:	d5 3f       	jmp	$-84     	;abs 0x5e1e

00005e74 <.L65>:
        bit <<= 1;
    5e74:	3d 40 00 01 	mov	#256,	r13	;#0x0100

00005e78 <.LVL111>:
    unsigned short bit = 1;
    5e78:	4c 43       	clr.b	r12		;
    5e7a:	d1 3f       	jmp	$-92     	;abs 0x5e1e

00005e7c <.L66>:
        bit <<= 1;
    5e7c:	3d 40 00 02 	mov	#512,	r13	;#0x0200

00005e80 <.Loc.30.1>:
    unsigned short bit = 1;
    5e80:	4c 43       	clr.b	r12		;
    5e82:	cd 3f       	jmp	$-100    	;abs 0x5e1e

00005e84 <.L68>:
        bit <<= 1;
    5e84:	3d 40 00 08 	mov	#2048,	r13	;#0x0800

00005e88 <.LVL115>:
    unsigned short bit = 1;
    5e88:	4c 43       	clr.b	r12		;
    5e8a:	c9 3f       	jmp	$-108    	;abs 0x5e1e

00005e8c <.L69>:
        bit <<= 1;
    5e8c:	3d 40 00 10 	mov	#4096,	r13	;#0x1000

00005e90 <.LVL117>:
    unsigned short bit = 1;
    5e90:	4c 43       	clr.b	r12		;
    5e92:	c5 3f       	jmp	$-116    	;abs 0x5e1e

00005e94 <.L71>:
        bit <<= 1;
    5e94:	3d 40 00 40 	mov	#16384,	r13	;#0x4000

00005e98 <.LVL119>:
    unsigned short bit = 1;
    5e98:	4c 43       	clr.b	r12		;
    5e9a:	c1 3f       	jmp	$-124    	;abs 0x5e1e

00005e9c <__mspabi_remi>:

short __modhi3(short a, short b)
{
    5e9c:	0a 15       	pushm	#1,	r10	;16-bit words

00005e9e <.LCFI3>:
    short neg = 0;
    5e9e:	4f 43       	clr.b	r15		;

00005ea0 <.Loc.88.1>:
    short res;

    if (a < 0)
    5ea0:	0c 93       	cmp	#0,	r12	;r3 As==00
    5ea2:	04 34       	jge	$+10     	;abs 0x5eac

00005ea4 <.Loc.90.1>:
    {
        a   = -a;
    5ea4:	4e 43       	clr.b	r14		;
    5ea6:	0e 8c       	sub	r12,	r14	;
    5ea8:	0c 4e       	mov	r14,	r12	;

00005eaa <.LVL122>:
        neg = 1;
    5eaa:	5f 43       	mov.b	#1,	r15	;r3 As==01

00005eac <.L79>:
    if (b < 0)
    {
        b = -b;
    }

    res = udivmodhi4(a, b, 1);
    5eac:	0e 4c       	mov	r12,	r14	;
    5eae:	0b 4d       	mov	r13,	r11	;
    5eb0:	4e 18 0b 11 	rpt #15 { rrax.w	r11		;
    5eb4:	0d eb       	xor	r11,	r13	;
    5eb6:	0d 8b       	sub	r11,	r13	;

00005eb8 <.LBB14>:
    while (den < num && bit && !(den & (1 << 15)))
    5eb8:	0d 9c       	cmp	r12,	r13	;
    5eba:	46 2c       	jc	$+142    	;abs 0x5f48

00005ebc <.Loc.35.1>:
        den <<= 1;
    5ebc:	0b 4d       	mov	r13,	r11	;
    5ebe:	5b 02       	rlam	#1,	r11	;

00005ec0 <.LVL126>:
    while (den < num && bit && !(den & (1 << 15)))
    5ec0:	0b 9c       	cmp	r12,	r11	;
    5ec2:	44 2c       	jc	$+138    	;abs 0x5f4c

00005ec4 <.Loc.35.1>:
        den <<= 1;
    5ec4:	0a 4d       	mov	r13,	r10	;
    5ec6:	5a 06       	rlam	#2,	r10	;

00005ec8 <.LVL127>:
    while (den < num && bit && !(den & (1 << 15)))
    5ec8:	0a 9c       	cmp	r12,	r10	;
    5eca:	43 2c       	jc	$+136    	;abs 0x5f52

00005ecc <.Loc.35.1>:
        den <<= 1;
    5ecc:	0a 4d       	mov	r13,	r10	;

00005ece <.LVL128>:
    5ece:	5a 0a       	rlam	#3,	r10	;

00005ed0 <.LVL129>:
    while (den < num && bit && !(den & (1 << 15)))
    5ed0:	0a 9c       	cmp	r12,	r10	;
    5ed2:	42 2c       	jc	$+134    	;abs 0x5f58

00005ed4 <.Loc.35.1>:
        den <<= 1;
    5ed4:	5d 0e       	rlam	#4,	r13	;

00005ed6 <.LVL130>:
    while (den < num && bit && !(den & (1 << 15)))
    5ed6:	0d 9c       	cmp	r12,	r13	;
    5ed8:	42 2c       	jc	$+134    	;abs 0x5f5e

00005eda <.Loc.35.1>:
        den <<= 1;
    5eda:	0d 4b       	mov	r11,	r13	;

00005edc <.LVL131>:
    5edc:	5d 0e       	rlam	#4,	r13	;

00005ede <.LVL132>:
    while (den < num && bit && !(den & (1 << 15)))
    5ede:	0d 9c       	cmp	r12,	r13	;
    5ee0:	41 2c       	jc	$+132    	;abs 0x5f64

00005ee2 <.Loc.35.1>:
        den <<= 1;
    5ee2:	5d 02       	rlam	#1,	r13	;

00005ee4 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5ee4:	0d 9c       	cmp	r12,	r13	;
    5ee6:	41 2c       	jc	$+132    	;abs 0x5f6a

00005ee8 <.Loc.35.1>:
        den <<= 1;
    5ee8:	5d 02       	rlam	#1,	r13	;

00005eea <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5eea:	0d 9c       	cmp	r12,	r13	;
    5eec:	41 2c       	jc	$+132    	;abs 0x5f70

00005eee <.Loc.35.1>:
        den <<= 1;
    5eee:	5d 02       	rlam	#1,	r13	;

00005ef0 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5ef0:	0d 9c       	cmp	r12,	r13	;
    5ef2:	41 2c       	jc	$+132    	;abs 0x5f76

00005ef4 <.Loc.35.1>:
        den <<= 1;
    5ef4:	5d 02       	rlam	#1,	r13	;

00005ef6 <.LVL136>:
    while (den < num && bit && !(den & (1 << 15)))
    5ef6:	0d 9c       	cmp	r12,	r13	;
    5ef8:	41 2c       	jc	$+132    	;abs 0x5f7c

00005efa <.Loc.35.1>:
        den <<= 1;
    5efa:	48 18 0b 5b 	rpt #9 { rlax.w	r11		;

00005efe <.LVL137>:
    while (den < num && bit && !(den & (1 << 15)))
    5efe:	0b 9c       	cmp	r12,	r11	;
    5f00:	17 2c       	jc	$+48     	;abs 0x5f30

00005f02 <.Loc.35.1>:
        den <<= 1;
    5f02:	5b 02       	rlam	#1,	r11	;

00005f04 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5f04:	0b 9c       	cmp	r12,	r11	;
    5f06:	3d 2c       	jc	$+124    	;abs 0x5f82

00005f08 <.Loc.35.1>:
        den <<= 1;
    5f08:	5b 02       	rlam	#1,	r11	;

00005f0a <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5f0a:	0b 9c       	cmp	r12,	r11	;
    5f0c:	3e 2c       	jc	$+126    	;abs 0x5f8a

00005f0e <.Loc.35.1>:
        den <<= 1;
    5f0e:	5b 02       	rlam	#1,	r11	;

00005f10 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5f10:	0b 9c       	cmp	r12,	r11	;
    5f12:	3f 2c       	jc	$+128    	;abs 0x5f92

00005f14 <.Loc.35.1>:
        den <<= 1;
    5f14:	5b 02       	rlam	#1,	r11	;

00005f16 <.Loc.33.1>:
    5f16:	0d 4b       	mov	r11,	r13	;

00005f18 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5f18:	0b 9c       	cmp	r12,	r11	;
    5f1a:	3f 2c       	jc	$+128    	;abs 0x5f9a

00005f1c <.Loc.35.1>:
        den <<= 1;
    5f1c:	5d 02       	rlam	#1,	r13	;

00005f1e <.LVL142>:
    while (den < num && bit && !(den & (1 << 15)))
    5f1e:	0d 9c       	cmp	r12,	r13	;
    5f20:	3f 2c       	jc	$+128    	;abs 0x5fa0

00005f22 <.L82>:

    if (neg)
    5f22:	0f 93       	cmp	#0,	r15	;r3 As==00
    5f24:	03 24       	jz	$+8      	;abs 0x5f2c

00005f26 <.Loc.103.1>:
    {
        res = -res;
    5f26:	4d 43       	clr.b	r13		;
    5f28:	0d 8c       	sub	r12,	r13	;
    5f2a:	0c 4d       	mov	r13,	r12	;

00005f2c <.L78>:
    }

    return res;
}
    5f2c:	0a 17       	popm	#1,	r10	;16-bit words

00005f2e <.LCFI4>:
    5f2e:	30 41       	ret			

00005f30 <.L97>:
    while (den < num && bit && !(den & (1 << 15)))
    5f30:	0d 4b       	mov	r11,	r13	;

00005f32 <.Loc.36.1>:
        bit <<= 1;
    5f32:	3c 40 00 04 	mov	#1024,	r12	;#0x0400

00005f36 <.L84>:
        if (num >= den)
    5f36:	0e 9d       	cmp	r13,	r14	;
    5f38:	01 28       	jnc	$+4      	;abs 0x5f3c

00005f3a <.Loc.42.1>:
            num -= den;
    5f3a:	0e 8d       	sub	r13,	r14	;

00005f3c <.L83>:
        bit >>= 1;
    5f3c:	5c 03       	rrum	#1,	r12	;

00005f3e <.Loc.46.1>:
        den >>= 1;
    5f3e:	5d 03       	rrum	#1,	r13	;

00005f40 <.Loc.38.1>:
    while (bit)
    5f40:	0c 93       	cmp	#0,	r12	;r3 As==00
    5f42:	f9 23       	jnz	$-12     	;abs 0x5f36
    5f44:	0c 4e       	mov	r14,	r12	;

00005f46 <.LVL150>:
    5f46:	ed 3f       	jmp	$-36     	;abs 0x5f22

00005f48 <.L87>:
    unsigned short bit = 1;
    5f48:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005f4a <.LVL152>:
    5f4a:	f5 3f       	jmp	$-20     	;abs 0x5f36

00005f4c <.L88>:
    while (den < num && bit && !(den & (1 << 15)))
    5f4c:	0d 4b       	mov	r11,	r13	;

00005f4e <.Loc.36.1>:
        bit <<= 1;
    5f4e:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005f50 <.LVL154>:
    5f50:	f2 3f       	jmp	$-26     	;abs 0x5f36

00005f52 <.L89>:
    while (den < num && bit && !(den & (1 << 15)))
    5f52:	0d 4a       	mov	r10,	r13	;

00005f54 <.Loc.36.1>:
        bit <<= 1;
    5f54:	6c 42       	mov.b	#4,	r12	;r2 As==10

00005f56 <.LVL156>:
    5f56:	ef 3f       	jmp	$-32     	;abs 0x5f36

00005f58 <.L90>:
    while (den < num && bit && !(den & (1 << 15)))
    5f58:	0d 4a       	mov	r10,	r13	;

00005f5a <.Loc.36.1>:
        bit <<= 1;
    5f5a:	7c 42       	mov.b	#8,	r12	;r2 As==11

00005f5c <.LVL158>:
    5f5c:	ec 3f       	jmp	$-38     	;abs 0x5f36

00005f5e <.L91>:
    5f5e:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010

00005f62 <.LVL160>:
    5f62:	e9 3f       	jmp	$-44     	;abs 0x5f36

00005f64 <.L92>:
    5f64:	7c 40 20 00 	mov.b	#32,	r12	;#0x0020

00005f68 <.LVL162>:
    5f68:	e6 3f       	jmp	$-50     	;abs 0x5f36

00005f6a <.L93>:
    5f6a:	7c 40 40 00 	mov.b	#64,	r12	;#0x0040

00005f6e <.LVL164>:
    5f6e:	e3 3f       	jmp	$-56     	;abs 0x5f36

00005f70 <.L94>:
    5f70:	7c 40 80 00 	mov.b	#128,	r12	;#0x0080

00005f74 <.LVL166>:
    5f74:	e0 3f       	jmp	$-62     	;abs 0x5f36

00005f76 <.L95>:
    5f76:	3c 40 00 01 	mov	#256,	r12	;#0x0100

00005f7a <.LVL168>:
    5f7a:	dd 3f       	jmp	$-68     	;abs 0x5f36

00005f7c <.L96>:
    5f7c:	3c 40 00 02 	mov	#512,	r12	;#0x0200

00005f80 <.LVL170>:
    5f80:	da 3f       	jmp	$-74     	;abs 0x5f36

00005f82 <.L98>:
    while (den < num && bit && !(den & (1 << 15)))
    5f82:	0d 4b       	mov	r11,	r13	;

00005f84 <.Loc.36.1>:
        bit <<= 1;
    5f84:	3c 40 00 08 	mov	#2048,	r12	;#0x0800

00005f88 <.LVL172>:
    5f88:	d6 3f       	jmp	$-82     	;abs 0x5f36

00005f8a <.L99>:
    while (den < num && bit && !(den & (1 << 15)))
    5f8a:	0d 4b       	mov	r11,	r13	;

00005f8c <.Loc.36.1>:
        bit <<= 1;
    5f8c:	3c 40 00 10 	mov	#4096,	r12	;#0x1000

00005f90 <.LVL174>:
    5f90:	d2 3f       	jmp	$-90     	;abs 0x5f36

00005f92 <.L100>:
    while (den < num && bit && !(den & (1 << 15)))
    5f92:	0d 4b       	mov	r11,	r13	;

00005f94 <.Loc.36.1>:
        bit <<= 1;
    5f94:	3c 40 00 20 	mov	#8192,	r12	;#0x2000

00005f98 <.LVL176>:
    5f98:	ce 3f       	jmp	$-98     	;abs 0x5f36

00005f9a <.L101>:
    5f9a:	3c 40 00 40 	mov	#16384,	r12	;#0x4000

00005f9e <.LVL178>:
    while (bit)
    5f9e:	cb 3f       	jmp	$-104    	;abs 0x5f36

00005fa0 <.L107>:
        bit <<= 1;
    5fa0:	3c 40 00 80 	mov	#-32768,r12	;#0x8000

00005fa4 <.LVL180>:
    5fa4:	c8 3f       	jmp	$-110    	;abs 0x5f36

00005fa6 <__mspabi_divu>:

short __udivhi3(short a, short b)
{
    return udivmodhi4(a, b, 0);
    5fa6:	0b 4c       	mov	r12,	r11	;
    5fa8:	0e 4d       	mov	r13,	r14	;

00005faa <.LBB18>:
    while (den < num && bit && !(den & (1 << 15)))
    5faa:	0d 9c       	cmp	r12,	r13	;
    5fac:	56 2c       	jc	$+174    	;abs 0x605a

00005fae <.Loc.33.1>:
    5fae:	0d 93       	cmp	#0,	r13	;r3 As==00
    5fb0:	54 38       	jl	$+170    	;abs 0x605a

00005fb2 <.Loc.35.1>:
        den <<= 1;
    5fb2:	0f 4d       	mov	r13,	r15	;
    5fb4:	5f 02       	rlam	#1,	r15	;

00005fb6 <.LVL183>:
    while (den < num && bit && !(den & (1 << 15)))
    5fb6:	0f 9c       	cmp	r12,	r15	;
    5fb8:	5b 2c       	jc	$+184    	;abs 0x6070

00005fba <.Loc.33.1>:
    5fba:	0f 93       	cmp	#0,	r15	;r3 As==00
    5fbc:	59 38       	jl	$+180    	;abs 0x6070

00005fbe <.Loc.35.1>:
        den <<= 1;
    5fbe:	5e 06       	rlam	#2,	r14	;

00005fc0 <.LVL184>:
    while (den < num && bit && !(den & (1 << 15)))
    5fc0:	0e 9c       	cmp	r12,	r14	;
    5fc2:	5a 2c       	jc	$+182    	;abs 0x6078

00005fc4 <.Loc.33.1>:
    5fc4:	0e 93       	cmp	#0,	r14	;r3 As==00
    5fc6:	58 38       	jl	$+178    	;abs 0x6078

00005fc8 <.Loc.35.1>:
        den <<= 1;
    5fc8:	0e 4d       	mov	r13,	r14	;

00005fca <.LVL185>:
    5fca:	5e 0a       	rlam	#3,	r14	;

00005fcc <.LVL186>:
    while (den < num && bit && !(den & (1 << 15)))
    5fcc:	0e 9c       	cmp	r12,	r14	;
    5fce:	57 2c       	jc	$+176    	;abs 0x607e

00005fd0 <.Loc.33.1>:
    5fd0:	0e 93       	cmp	#0,	r14	;r3 As==00
    5fd2:	55 38       	jl	$+172    	;abs 0x607e

00005fd4 <.Loc.35.1>:
        den <<= 1;
    5fd4:	5d 0e       	rlam	#4,	r13	;

00005fd6 <.LVL187>:
    while (den < num && bit && !(den & (1 << 15)))
    5fd6:	0d 9c       	cmp	r12,	r13	;
    5fd8:	55 2c       	jc	$+172    	;abs 0x6084

00005fda <.Loc.33.1>:
    5fda:	0d 93       	cmp	#0,	r13	;r3 As==00
    5fdc:	53 38       	jl	$+168    	;abs 0x6084

00005fde <.Loc.35.1>:
        den <<= 1;
    5fde:	0e 4f       	mov	r15,	r14	;
    5fe0:	5e 0e       	rlam	#4,	r14	;

00005fe2 <.LVL188>:
    while (den < num && bit && !(den & (1 << 15)))
    5fe2:	0e 9c       	cmp	r12,	r14	;
    5fe4:	5c 2c       	jc	$+186    	;abs 0x609e

00005fe6 <.Loc.33.1>:
    5fe6:	0e 93       	cmp	#0,	r14	;r3 As==00
    5fe8:	5a 38       	jl	$+182    	;abs 0x609e

00005fea <.Loc.35.1>:
        den <<= 1;
    5fea:	5e 02       	rlam	#1,	r14	;

00005fec <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5fec:	0e 9c       	cmp	r12,	r14	;
    5fee:	5b 2c       	jc	$+184    	;abs 0x60a6

00005ff0 <.Loc.33.1>:
    5ff0:	0e 93       	cmp	#0,	r14	;r3 As==00
    5ff2:	59 38       	jl	$+180    	;abs 0x60a6

00005ff4 <.Loc.35.1>:
        den <<= 1;
    5ff4:	5e 02       	rlam	#1,	r14	;

00005ff6 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    5ff6:	0e 9c       	cmp	r12,	r14	;
    5ff8:	5a 2c       	jc	$+182    	;abs 0x60ae

00005ffa <.Loc.33.1>:
    5ffa:	0e 93       	cmp	#0,	r14	;r3 As==00
    5ffc:	58 38       	jl	$+178    	;abs 0x60ae

00005ffe <.Loc.35.1>:
        den <<= 1;
    5ffe:	5e 02       	rlam	#1,	r14	;

00006000 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6000:	0e 9c       	cmp	r12,	r14	;
    6002:	45 2c       	jc	$+140    	;abs 0x608e

00006004 <.Loc.33.1>:
    6004:	0e 93       	cmp	#0,	r14	;r3 As==00
    6006:	43 38       	jl	$+136    	;abs 0x608e

00006008 <.Loc.35.1>:
        den <<= 1;
    6008:	5e 02       	rlam	#1,	r14	;

0000600a <.LVL192>:
    while (den < num && bit && !(den & (1 << 15)))
    600a:	0e 9c       	cmp	r12,	r14	;
    600c:	54 2c       	jc	$+170    	;abs 0x60b6

0000600e <.Loc.33.1>:
    600e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6010:	52 38       	jl	$+166    	;abs 0x60b6

00006012 <.Loc.35.1>:
        den <<= 1;
    6012:	0e 4f       	mov	r15,	r14	;
    6014:	48 18 0e 5e 	rpt #9 { rlax.w	r14		;

00006018 <.LVL193>:
    while (den < num && bit && !(den & (1 << 15)))
    6018:	0e 9c       	cmp	r12,	r14	;
    601a:	51 2c       	jc	$+164    	;abs 0x60be

0000601c <.Loc.33.1>:
    601c:	0e 93       	cmp	#0,	r14	;r3 As==00
    601e:	4f 38       	jl	$+160    	;abs 0x60be

00006020 <.Loc.35.1>:
        den <<= 1;
    6020:	5e 02       	rlam	#1,	r14	;

00006022 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6022:	0e 9c       	cmp	r12,	r14	;
    6024:	50 2c       	jc	$+162    	;abs 0x60c6

00006026 <.Loc.33.1>:
    6026:	0e 93       	cmp	#0,	r14	;r3 As==00
    6028:	4e 38       	jl	$+158    	;abs 0x60c6

0000602a <.Loc.35.1>:
        den <<= 1;
    602a:	5e 02       	rlam	#1,	r14	;

0000602c <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    602c:	0e 9c       	cmp	r12,	r14	;
    602e:	4f 2c       	jc	$+160    	;abs 0x60ce

00006030 <.Loc.33.1>:
    6030:	0e 93       	cmp	#0,	r14	;r3 As==00
    6032:	4d 38       	jl	$+156    	;abs 0x60ce

00006034 <.Loc.35.1>:
        den <<= 1;
    6034:	5e 02       	rlam	#1,	r14	;

00006036 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6036:	0e 9c       	cmp	r12,	r14	;
    6038:	4e 2c       	jc	$+158    	;abs 0x60d6

0000603a <.Loc.33.1>:
    603a:	0e 93       	cmp	#0,	r14	;r3 As==00
    603c:	4c 38       	jl	$+154    	;abs 0x60d6

0000603e <.Loc.35.1>:
        den <<= 1;
    603e:	5e 02       	rlam	#1,	r14	;

00006040 <.LVL197>:
    while (den < num && bit && !(den & (1 << 15)))
    6040:	0e 9c       	cmp	r12,	r14	;
    6042:	4d 2c       	jc	$+156    	;abs 0x60de

00006044 <.Loc.33.1>:
    6044:	0e 93       	cmp	#0,	r14	;r3 As==00
    6046:	4b 38       	jl	$+152    	;abs 0x60de

00006048 <.Loc.35.1>:
        den <<= 1;
    6048:	0e 4f       	mov	r15,	r14	;
    604a:	4d 18 0e 5e 	rpt #14 { rlax.w	r14		;

0000604e <.LVL198>:
    while (den < num && bit && !(den & (1 << 15)))
    604e:	0e 9c       	cmp	r12,	r14	;
    6050:	22 2c       	jc	$+70     	;abs 0x6096

00006052 <.Loc.33.1>:
    6052:	4c 43       	clr.b	r12		;

00006054 <.LVL199>:
    6054:	0e 93       	cmp	#0,	r14	;r3 As==00
    6056:	1f 38       	jl	$+64     	;abs 0x6096

00006058 <.LBE18>:
}
    6058:	30 41       	ret			

0000605a <.L115>:
    unsigned short bit = 1;
    605a:	5d 43       	mov.b	#1,	r13	;r3 As==01

0000605c <.LVL201>:
        bit <<= 1;
    605c:	4c 43       	clr.b	r12		;

0000605e <.L113>:
        if (num >= den)
    605e:	0b 9e       	cmp	r14,	r11	;
    6060:	02 28       	jnc	$+6      	;abs 0x6066

00006062 <.Loc.42.1>:
            num -= den;
    6062:	0b 8e       	sub	r14,	r11	;

00006064 <.Loc.43.1>:
            res |= bit;
    6064:	0c dd       	bis	r13,	r12	;

00006066 <.L112>:
        bit >>= 1;
    6066:	5d 03       	rrum	#1,	r13	;

00006068 <.Loc.46.1>:
        den >>= 1;
    6068:	5e 03       	rrum	#1,	r14	;

0000606a <.Loc.38.1>:
    while (bit)
    606a:	0d 93       	cmp	#0,	r13	;r3 As==00
    606c:	f8 23       	jnz	$-14     	;abs 0x605e

0000606e <.Loc.112.1>:
}
    606e:	30 41       	ret			

00006070 <.L116>:
    while (den < num && bit && !(den & (1 << 15)))
    6070:	0e 4f       	mov	r15,	r14	;

00006072 <.Loc.36.1>:
        bit <<= 1;
    6072:	6d 43       	mov.b	#2,	r13	;r3 As==10

00006074 <.LVL208>:
    6074:	4c 43       	clr.b	r12		;
    6076:	f3 3f       	jmp	$-24     	;abs 0x605e

00006078 <.L118>:
    6078:	6d 42       	mov.b	#4,	r13	;r2 As==10

0000607a <.LVL210>:
    607a:	4c 43       	clr.b	r12		;
    607c:	f0 3f       	jmp	$-30     	;abs 0x605e

0000607e <.L120>:
    607e:	7d 42       	mov.b	#8,	r13	;r2 As==11

00006080 <.LVL212>:
    6080:	4c 43       	clr.b	r12		;
    6082:	ed 3f       	jmp	$-36     	;abs 0x605e

00006084 <.L122>:
    while (den < num && bit && !(den & (1 << 15)))
    6084:	0e 4d       	mov	r13,	r14	;

00006086 <.Loc.36.1>:
        bit <<= 1;
    6086:	7d 40 10 00 	mov.b	#16,	r13	;#0x0010

0000608a <.LVL214>:
    608a:	4c 43       	clr.b	r12		;
    608c:	e8 3f       	jmp	$-46     	;abs 0x605e

0000608e <.L130>:
    608e:	3d 40 00 01 	mov	#256,	r13	;#0x0100

00006092 <.LVL216>:
    6092:	4c 43       	clr.b	r12		;
    6094:	e4 3f       	jmp	$-54     	;abs 0x605e

00006096 <.L144>:
    6096:	3d 40 00 80 	mov	#-32768,r13	;#0x8000

0000609a <.LVL218>:
    609a:	4c 43       	clr.b	r12		;
    609c:	e0 3f       	jmp	$-62     	;abs 0x605e

0000609e <.L124>:
    609e:	7d 40 20 00 	mov.b	#32,	r13	;#0x0020

000060a2 <.LVL220>:
    60a2:	4c 43       	clr.b	r12		;
    60a4:	dc 3f       	jmp	$-70     	;abs 0x605e

000060a6 <.L126>:
    60a6:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

000060aa <.LVL222>:
    60aa:	4c 43       	clr.b	r12		;
    60ac:	d8 3f       	jmp	$-78     	;abs 0x605e

000060ae <.L128>:
    60ae:	7d 40 80 00 	mov.b	#128,	r13	;#0x0080

000060b2 <.LVL224>:
    60b2:	4c 43       	clr.b	r12		;
    60b4:	d4 3f       	jmp	$-86     	;abs 0x605e

000060b6 <.L132>:
    60b6:	3d 40 00 02 	mov	#512,	r13	;#0x0200

000060ba <.LVL226>:
    60ba:	4c 43       	clr.b	r12		;
    60bc:	d0 3f       	jmp	$-94     	;abs 0x605e

000060be <.L134>:
    60be:	3d 40 00 04 	mov	#1024,	r13	;#0x0400

000060c2 <.LVL228>:
    60c2:	4c 43       	clr.b	r12		;
    60c4:	cc 3f       	jmp	$-102    	;abs 0x605e

000060c6 <.L136>:
    60c6:	3d 40 00 08 	mov	#2048,	r13	;#0x0800

000060ca <.LVL230>:
    60ca:	4c 43       	clr.b	r12		;
    60cc:	c8 3f       	jmp	$-110    	;abs 0x605e

000060ce <.L138>:
    60ce:	3d 40 00 10 	mov	#4096,	r13	;#0x1000

000060d2 <.LVL232>:
    60d2:	4c 43       	clr.b	r12		;
    60d4:	c4 3f       	jmp	$-118    	;abs 0x605e

000060d6 <.L140>:
    60d6:	3d 40 00 20 	mov	#8192,	r13	;#0x2000

000060da <.LVL234>:
    60da:	4c 43       	clr.b	r12		;
    60dc:	c0 3f       	jmp	$-126    	;abs 0x605e

000060de <.L143>:
    60de:	3d 40 00 40 	mov	#16384,	r13	;#0x4000

000060e2 <.LVL236>:
    60e2:	4c 43       	clr.b	r12		;
    60e4:	bc 3f       	jmp	$-134    	;abs 0x605e

000060e6 <__mspabi_remu>:

short __umodhi3(short a, short b)
{
    return udivmodhi4(a, b, 1);
    60e6:	0b 4c       	mov	r12,	r11	;
    60e8:	0e 4d       	mov	r13,	r14	;

000060ea <.LBB24>:
    while (den < num && bit && !(den & (1 << 15)))
    60ea:	0d 9c       	cmp	r12,	r13	;
    60ec:	55 2c       	jc	$+172    	;abs 0x6198

000060ee <.Loc.33.1>:
    60ee:	0d 93       	cmp	#0,	r13	;r3 As==00
    60f0:	53 38       	jl	$+168    	;abs 0x6198

000060f2 <.Loc.35.1>:
        den <<= 1;
    60f2:	0f 4d       	mov	r13,	r15	;
    60f4:	5f 02       	rlam	#1,	r15	;

000060f6 <.LVL239>:
    while (den < num && bit && !(den & (1 << 15)))
    60f6:	0f 9c       	cmp	r12,	r15	;
    60f8:	59 2c       	jc	$+180    	;abs 0x61ac

000060fa <.Loc.33.1>:
    60fa:	0f 93       	cmp	#0,	r15	;r3 As==00
    60fc:	57 38       	jl	$+176    	;abs 0x61ac

000060fe <.Loc.35.1>:
        den <<= 1;
    60fe:	5e 06       	rlam	#2,	r14	;

00006100 <.LVL240>:
    while (den < num && bit && !(den & (1 << 15)))
    6100:	0e 9c       	cmp	r12,	r14	;
    6102:	57 2c       	jc	$+176    	;abs 0x61b2

00006104 <.Loc.33.1>:
    6104:	0e 93       	cmp	#0,	r14	;r3 As==00
    6106:	55 38       	jl	$+172    	;abs 0x61b2

00006108 <.Loc.35.1>:
        den <<= 1;
    6108:	0e 4d       	mov	r13,	r14	;

0000610a <.LVL241>:
    610a:	5e 0a       	rlam	#3,	r14	;

0000610c <.LVL242>:
    while (den < num && bit && !(den & (1 << 15)))
    610c:	0e 9c       	cmp	r12,	r14	;
    610e:	53 2c       	jc	$+168    	;abs 0x61b6

00006110 <.Loc.33.1>:
    6110:	0e 93       	cmp	#0,	r14	;r3 As==00
    6112:	51 38       	jl	$+164    	;abs 0x61b6

00006114 <.Loc.35.1>:
        den <<= 1;
    6114:	5d 0e       	rlam	#4,	r13	;

00006116 <.LVL243>:
    while (den < num && bit && !(den & (1 << 15)))
    6116:	0d 9c       	cmp	r12,	r13	;
    6118:	50 2c       	jc	$+162    	;abs 0x61ba

0000611a <.Loc.33.1>:
    611a:	0d 93       	cmp	#0,	r13	;r3 As==00
    611c:	4e 38       	jl	$+158    	;abs 0x61ba

0000611e <.Loc.35.1>:
        den <<= 1;
    611e:	0e 4f       	mov	r15,	r14	;
    6120:	5e 0e       	rlam	#4,	r14	;

00006122 <.LVL244>:
    while (den < num && bit && !(den & (1 << 15)))
    6122:	0e 9c       	cmp	r12,	r14	;
    6124:	54 2c       	jc	$+170    	;abs 0x61ce

00006126 <.Loc.33.1>:
    6126:	0e 93       	cmp	#0,	r14	;r3 As==00
    6128:	52 38       	jl	$+166    	;abs 0x61ce

0000612a <.Loc.35.1>:
        den <<= 1;
    612a:	5e 02       	rlam	#1,	r14	;

0000612c <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    612c:	0e 9c       	cmp	r12,	r14	;
    612e:	52 2c       	jc	$+166    	;abs 0x61d4

00006130 <.Loc.33.1>:
    6130:	0e 93       	cmp	#0,	r14	;r3 As==00
    6132:	50 38       	jl	$+162    	;abs 0x61d4

00006134 <.Loc.35.1>:
        den <<= 1;
    6134:	5e 02       	rlam	#1,	r14	;

00006136 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6136:	0e 9c       	cmp	r12,	r14	;
    6138:	50 2c       	jc	$+162    	;abs 0x61da

0000613a <.Loc.33.1>:
    613a:	0e 93       	cmp	#0,	r14	;r3 As==00
    613c:	4e 38       	jl	$+158    	;abs 0x61da

0000613e <.Loc.35.1>:
        den <<= 1;
    613e:	5e 02       	rlam	#1,	r14	;

00006140 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6140:	0e 9c       	cmp	r12,	r14	;
    6142:	3f 2c       	jc	$+128    	;abs 0x61c2

00006144 <.Loc.33.1>:
    6144:	0e 93       	cmp	#0,	r14	;r3 As==00
    6146:	3d 38       	jl	$+124    	;abs 0x61c2

00006148 <.Loc.35.1>:
        den <<= 1;
    6148:	5e 02       	rlam	#1,	r14	;

0000614a <.LVL248>:
    while (den < num && bit && !(den & (1 << 15)))
    614a:	0e 9c       	cmp	r12,	r14	;
    614c:	49 2c       	jc	$+148    	;abs 0x61e0

0000614e <.Loc.33.1>:
    614e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6150:	47 38       	jl	$+144    	;abs 0x61e0

00006152 <.Loc.35.1>:
        den <<= 1;
    6152:	0e 4f       	mov	r15,	r14	;
    6154:	48 18 0e 5e 	rpt #9 { rlax.w	r14		;

00006158 <.LVL249>:
    while (den < num && bit && !(den & (1 << 15)))
    6158:	0e 9c       	cmp	r12,	r14	;
    615a:	45 2c       	jc	$+140    	;abs 0x61e6

0000615c <.Loc.33.1>:
    615c:	0e 93       	cmp	#0,	r14	;r3 As==00
    615e:	43 38       	jl	$+136    	;abs 0x61e6

00006160 <.Loc.35.1>:
        den <<= 1;
    6160:	5e 02       	rlam	#1,	r14	;

00006162 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6162:	0e 9c       	cmp	r12,	r14	;
    6164:	43 2c       	jc	$+136    	;abs 0x61ec

00006166 <.Loc.33.1>:
    6166:	0e 93       	cmp	#0,	r14	;r3 As==00
    6168:	41 38       	jl	$+132    	;abs 0x61ec

0000616a <.Loc.35.1>:
        den <<= 1;
    616a:	5e 02       	rlam	#1,	r14	;

0000616c <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    616c:	0e 9c       	cmp	r12,	r14	;
    616e:	41 2c       	jc	$+132    	;abs 0x61f2

00006170 <.Loc.33.1>:
    6170:	0e 93       	cmp	#0,	r14	;r3 As==00
    6172:	3f 38       	jl	$+128    	;abs 0x61f2

00006174 <.Loc.35.1>:
        den <<= 1;
    6174:	5e 02       	rlam	#1,	r14	;

00006176 <.Loc.33.1>:
    while (den < num && bit && !(den & (1 << 15)))
    6176:	0e 9c       	cmp	r12,	r14	;
    6178:	3f 2c       	jc	$+128    	;abs 0x61f8

0000617a <.Loc.33.1>:
    617a:	0e 93       	cmp	#0,	r14	;r3 As==00
    617c:	3d 38       	jl	$+124    	;abs 0x61f8

0000617e <.Loc.35.1>:
        den <<= 1;
    617e:	5e 02       	rlam	#1,	r14	;

00006180 <.LVL253>:
    while (den < num && bit && !(den & (1 << 15)))
    6180:	0e 9c       	cmp	r12,	r14	;
    6182:	3d 2c       	jc	$+124    	;abs 0x61fe

00006184 <.Loc.33.1>:
    6184:	0e 93       	cmp	#0,	r14	;r3 As==00
    6186:	3b 38       	jl	$+120    	;abs 0x61fe

00006188 <.Loc.35.1>:
        den <<= 1;
    6188:	0e 4f       	mov	r15,	r14	;
    618a:	4d 18 0e 5e 	rpt #14 { rlax.w	r14		;

0000618e <.LVL254>:
    while (den < num && bit && !(den & (1 << 15)))
    618e:	0e 9c       	cmp	r12,	r14	;
    6190:	1b 2c       	jc	$+56     	;abs 0x61c8

00006192 <.Loc.33.1>:
    6192:	0e 93       	cmp	#0,	r14	;r3 As==00
    6194:	19 38       	jl	$+52     	;abs 0x61c8

00006196 <.LBE24>:
}
    6196:	30 41       	ret			

00006198 <.L154>:
    unsigned short bit = 1;
    6198:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000619a <.L152>:
        if (num >= den)
    619a:	0b 9e       	cmp	r14,	r11	;
    619c:	01 28       	jnc	$+4      	;abs 0x61a0

0000619e <.Loc.42.1>:
            num -= den;
    619e:	0b 8e       	sub	r14,	r11	;

000061a0 <.L151>:
        bit >>= 1;
    61a0:	5c 03       	rrum	#1,	r12	;

000061a2 <.Loc.46.1>:
        den >>= 1;
    61a2:	5e 03       	rrum	#1,	r14	;

000061a4 <.Loc.38.1>:
    while (bit)
    61a4:	0c 93       	cmp	#0,	r12	;r3 As==00
    61a6:	f9 23       	jnz	$-12     	;abs 0x619a
    61a8:	0c 4b       	mov	r11,	r12	;

000061aa <.LVL260>:
}
    61aa:	30 41       	ret			

000061ac <.L155>:
    while (den < num && bit && !(den & (1 << 15)))
    61ac:	0e 4f       	mov	r15,	r14	;

000061ae <.Loc.36.1>:
        bit <<= 1;
    61ae:	6c 43       	mov.b	#2,	r12	;r3 As==10
    61b0:	f4 3f       	jmp	$-22     	;abs 0x619a

000061b2 <.L157>:
    61b2:	6c 42       	mov.b	#4,	r12	;r2 As==10
    61b4:	f2 3f       	jmp	$-26     	;abs 0x619a

000061b6 <.L159>:
    61b6:	7c 42       	mov.b	#8,	r12	;r2 As==11
    61b8:	f0 3f       	jmp	$-30     	;abs 0x619a

000061ba <.L161>:
    while (den < num && bit && !(den & (1 << 15)))
    61ba:	0e 4d       	mov	r13,	r14	;

000061bc <.Loc.36.1>:
        bit <<= 1;
    61bc:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
    61c0:	ec 3f       	jmp	$-38     	;abs 0x619a

000061c2 <.L169>:
    61c2:	3c 40 00 01 	mov	#256,	r12	;#0x0100
    61c6:	e9 3f       	jmp	$-44     	;abs 0x619a

000061c8 <.L183>:
    61c8:	3c 40 00 80 	mov	#-32768,r12	;#0x8000

000061cc <.LVL267>:
    while (bit)
    61cc:	e6 3f       	jmp	$-50     	;abs 0x619a

000061ce <.L163>:
        bit <<= 1;
    61ce:	7c 40 20 00 	mov.b	#32,	r12	;#0x0020
    61d2:	e3 3f       	jmp	$-56     	;abs 0x619a

000061d4 <.L165>:
    61d4:	7c 40 40 00 	mov.b	#64,	r12	;#0x0040
    61d8:	e0 3f       	jmp	$-62     	;abs 0x619a

000061da <.L167>:
    61da:	7c 40 80 00 	mov.b	#128,	r12	;#0x0080
    61de:	dd 3f       	jmp	$-68     	;abs 0x619a

000061e0 <.L171>:
    61e0:	3c 40 00 02 	mov	#512,	r12	;#0x0200
    61e4:	da 3f       	jmp	$-74     	;abs 0x619a

000061e6 <.L173>:
    61e6:	3c 40 00 04 	mov	#1024,	r12	;#0x0400
    61ea:	d7 3f       	jmp	$-80     	;abs 0x619a

000061ec <.L175>:
    61ec:	3c 40 00 08 	mov	#2048,	r12	;#0x0800
    61f0:	d4 3f       	jmp	$-86     	;abs 0x619a

000061f2 <.L177>:
    61f2:	3c 40 00 10 	mov	#4096,	r12	;#0x1000
    61f6:	d1 3f       	jmp	$-92     	;abs 0x619a

000061f8 <.L179>:
    61f8:	3c 40 00 20 	mov	#8192,	r12	;#0x2000
    61fc:	ce 3f       	jmp	$-98     	;abs 0x619a

000061fe <.L182>:
    61fe:	3c 40 00 40 	mov	#16384,	r12	;#0x4000
    6202:	cb 3f       	jmp	$-104    	;abs 0x619a

00006204 <sqrt16>:

#include "msp-math.h"

/* Square root by Newton's method */
uint16_t sqrt16(uint32_t x)
{
    6204:	6a 15       	pushm	#7,	r10	;16-bit words

00006206 <.LCFI0>:
    6206:	05 4c       	mov	r12,	r5	;
    6208:	06 4d       	mov	r13,	r6	;

0000620a <.Loc.33.1>:
    uint16_t hi  = 0xffff;
    uint16_t lo  = 0;
    uint16_t mid = ((uint32_t)hi + (uint32_t)lo) >> 1;
    uint32_t s   = 0;

    while (s != x && hi - lo > 1)
    620a:	0c dd       	bis	r13,	r12	;

0000620c <.LVL2>:
    620c:	0c 93       	cmp	#0,	r12	;r3 As==00
    620e:	31 24       	jz	$+100    	;abs 0x6272

00006210 <.Loc.34.1>:
    uint16_t lo  = 0;
    6210:	4a 43       	clr.b	r10		;

00006212 <.Loc.33.1>:
    uint16_t hi  = 0xffff;
    6212:	37 43       	mov	#-1,	r7	;r3 As==11

00006214 <.L7>:
    {
        mid = ((uint32_t)hi + (uint32_t)lo) >> 1;
    6214:	0c 47       	mov	r7,	r12	;
    6216:	0d 43       	clr	r13		;

00006218 <.Loc.40.1>:
    6218:	0e 4a       	mov	r10,	r14	;
    621a:	0f 43       	clr	r15		;

0000621c <.Loc.40.1>:
    621c:	08 4c       	mov	r12,	r8	;
    621e:	08 5e       	add	r14,	r8	;
    6220:	09 4d       	mov	r13,	r9	;
    6222:	09 6f       	addc	r15,	r9	;

00006224 <.Loc.40.1>:
    6224:	0c 48       	mov	r8,	r12	;
    6226:	0d 49       	mov	r9,	r13	;
    6228:	12 c3       	clrc			
    622a:	0d 10       	rrc	r13		;
    622c:	0c 10       	rrc	r12		;

0000622e <.Loc.40.1>:
    622e:	04 4c       	mov	r12,	r4	;

00006230 <.Loc.41.1>:
        s   = (uint32_t)mid * (uint32_t)mid;
    6230:	0e 4c       	mov	r12,	r14	;
    6232:	0f 4d       	mov	r13,	r15	;
    6234:	b0 12 b6 7e 	call	#32438		;#0x7eb6

00006238 <.LVL5>:
        if (s < x)
    6238:	0d 96       	cmp	r6,	r13	;
    623a:	04 28       	jnc	$+10     	;abs 0x6244
    623c:	06 9d       	cmp	r13,	r6	;
    623e:	0b 20       	jnz	$+24     	;abs 0x6256
    6240:	0c 95       	cmp	r5,	r12	;
    6242:	09 2c       	jc	$+20     	;abs 0x6256

00006244 <.L9>:
        mid = ((uint32_t)hi + (uint32_t)lo) >> 1;
    6244:	0a 44       	mov	r4,	r10	;

00006246 <.Loc.38.1>:
    while (s != x && hi - lo > 1)
    6246:	0c 47       	mov	r7,	r12	;
    6248:	0c 8a       	sub	r10,	r12	;

0000624a <.LVL7>:
    624a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    624c:	0d 9c       	cmp	r12,	r13	;
    624e:	e2 2b       	jnc	$-58     	;abs 0x6214

00006250 <.L1>:
            hi = mid;
        }
    }

    return mid;
}
    6250:	0c 44       	mov	r4,	r12	;
    6252:	64 17       	popm	#7,	r10	;16-bit words

00006254 <.LCFI1>:
    6254:	30 41       	ret			

00006256 <.L10>:
    while (s != x && hi - lo > 1)
    6256:	05 9c       	cmp	r12,	r5	;
    6258:	09 24       	jz	$+20     	;abs 0x626c

0000625a <.L11>:
        mid = ((uint32_t)hi + (uint32_t)lo) >> 1;
    625a:	07 44       	mov	r4,	r7	;

0000625c <.LVL10>:
    while (s != x && hi - lo > 1)
    625c:	0c 47       	mov	r7,	r12	;
    625e:	0c 8a       	sub	r10,	r12	;

00006260 <.LVL11>:
    6260:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6262:	0d 9c       	cmp	r12,	r13	;
    6264:	d7 2b       	jnc	$-80     	;abs 0x6214

00006266 <.LVL12>:
}
    6266:	0c 44       	mov	r4,	r12	;
    6268:	64 17       	popm	#7,	r10	;16-bit words

0000626a <.LCFI3>:
    626a:	30 41       	ret			

0000626c <.L14>:
    while (s != x && hi - lo > 1)
    626c:	06 9d       	cmp	r13,	r6	;
    626e:	f5 23       	jnz	$-20     	;abs 0x625a
    6270:	ef 3f       	jmp	$-32     	;abs 0x6250

00006272 <.L8>:
    uint16_t mid = ((uint32_t)hi + (uint32_t)lo) >> 1;
    6272:	34 40 ff 7f 	mov	#32767,	r4	;#0x7fff

00006276 <.Loc.52.1>:
    return mid;
    6276:	ec 3f       	jmp	$-38     	;abs 0x6250

00006278 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    6278:	3c 50 a4 00 	add	#164,	r12	;#0x00a4

0000627c <L0^A>:
    627c:	30 41       	ret			

0000627e <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    627e:	5c 42 6c 51 	mov.b	&0x516c,r12	;0x516c
    6282:	30 41       	ret			

00006284 <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    6284:	3c 90 40 52 	cmp	#21056,	r12	;#0x5240
    6288:	06 28       	jnc	$+14     	;abs 0x6296

0000628a <.Loc.27.1>:
    628a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    628c:	3c 90 e4 52 	cmp	#21220,	r12	;#0x52e4
    6290:	04 2c       	jc	$+10     	;abs 0x629a
    6292:	4c 4d       	mov.b	r13,	r12	;

00006294 <.L5>:
}
    6294:	30 41       	ret			

00006296 <.L7>:
    6296:	4c 43       	clr.b	r12		;

00006298 <.LVL5>:
    6298:	30 41       	ret			

0000629a <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    629a:	4d 43       	clr.b	r13		;
    629c:	4c 4d       	mov.b	r13,	r12	;

0000629e <.LVL7>:
    629e:	fa 3f       	jmp	$-10     	;abs 0x6294

000062a0 <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    62a0:	0a 15       	pushm	#1,	r10	;16-bit words

000062a2 <.LCFI0>:
    62a2:	0a 4c       	mov	r12,	r10	;

000062a4 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    62a4:	3c 90 40 52 	cmp	#21056,	r12	;#0x5240
    62a8:	0a 28       	jnc	$+22     	;abs 0x62be
    62aa:	3c 90 e4 52 	cmp	#21220,	r12	;#0x52e4
    62ae:	07 2c       	jc	$+16     	;abs 0x62be

000062b0 <.LBB14>:
    return address + buffer_offset * buffer_index;
    62b0:	5c 42 6c 51 	mov.b	&0x516c,r12	;0x516c

000062b4 <.LVL11>:
    62b4:	3d 40 a4 00 	mov	#164,	r13	;#0x00a4

000062b8 <.LVL12>:
    62b8:	b0 12 a2 7e 	call	#32418		;#0x7ea2

000062bc <.LVL13>:
    62bc:	0a 5c       	add	r12,	r10	;

000062be <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    62be:	0c 4a       	mov	r10,	r12	;
    62c0:	0a 17       	popm	#1,	r10	;16-bit words

000062c2 <.LCFI1>:
    62c2:	30 41       	ret			

000062c4 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    62c4:	
000062c6 <L0^A>:
    62c6:	50 45 30 41 	br	16688(r5)		;

000062ca <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    62ca:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    62ce:	30 41       	ret			

000062d0 <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    62d0:	b0 12 2c 6b 	call	#27436		;#0x6b2c

000062d4 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    62d4:	c2 93 50 45 	cmp.b	#0,	&0x4550	;r3 As==00
    62d8:	22 20       	jnz	$+70     	;abs 0x631e

000062da <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    62da:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000062de <.Loc.50.1>:
    62de:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

000062e2 <.Loc.50.1>:
    62e2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000062e6 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    62e6:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    62ea:	02 02 

000062ec <.Loc.51.1>:
    62ec:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    62f0:	04 02 

000062f2 <.Loc.51.1>:
    62f2:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    62f6:	02 02 

000062f8 <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    62f8:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    62fc:	22 02 

000062fe <.Loc.52.1>:
    62fe:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    6302:	24 02 

00006304 <.Loc.52.1>:
    6304:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6308:	22 02 

0000630a <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    630a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    630e:	22 02 

00006310 <.Loc.53.1>:
    6310:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    6314:	24 02 

00006316 <.Loc.53.1>:
    6316:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    631a:	22 02 

0000631c <.Loc.53.1>:
#endif
}
    631c:	30 41       	ret			

0000631e <.L6>:
        __scheduler_boot_init();
    631e:	b0 12 84 6b 	call	#27524		;#0x6b84

00006322 <.Loc.36.1>:
        __events_boot_init();
    6322:	b0 12 a6 68 	call	#26790		;#0x68a6
    6326:	d9 3f       	jmp	$-76     	;abs 0x62da

00006328 <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    6328:	c2 43 50 45 	mov.b	#0,	&0x4550	;r3 As==00

0000632c <.Loc.69.1>:
    __ink_initialized = true;
    632c:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

00006330 <.Loc.70.1>:
    6330:	30 41       	ret			

00006332 <.LFE3>:
	...

00006334 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    6334:	2a 15       	pushm	#3,	r10	;16-bit words

00006336 <.LCFI0>:
    6336:	21 83       	decd	r1		;

00006338 <.LCFI1>:
    6338:	4a 4c       	mov.b	r12,	r10	;
    633a:	09 4d       	mov	r13,	r9	;
    633c:	48 4e       	mov.b	r14,	r8	;

0000633e <.Loc.147.1>:
    if (!ink_is_first_boot())
    633e:	b0 12 c4 62 	call	#25284		;#0x62c4

00006342 <.LVL1>:
    6342:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6344:	56 24       	jz	$+174    	;abs 0x63f2

00006346 <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    6346:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    634a:	4c 9a       	cmp.b	r10,	r12	;
    634c:	47 28       	jnc	$+144    	;abs 0x63dc
    634e:	0c 4a       	mov	r10,	r12	;
    6350:	5c 02       	rlam	#1,	r12	;
    6352:	3c 50 5c 63 	add	#25436,	r12	;#0x635c
    6356:	2c 4c       	mov	@r12,	r12	;
    6358:	00 4c       	br	r12		;
	...

0000635c <.L6>:
    635c:	dc 63 74 68 	addc.b	#1,	26740(r12);r3 As==01, 0x6874
    6360:	60 68       	addc.b	@r8,	r0	;
    6362:	4c 68       	addc.b	r8,	r12	;
    6364:	38 68       	addc	@r8+,	r8	;
    6366:	24 68       	addc	@r8,	r4	;
    6368:	10 68 fc 67 	addc	26620(r8),r0	;0x067fc
    636c:	e8 67 d4 67 	addc.b	@r7,	26580(r8); 0x67d4
    6370:	c2 67 b0 67 	addc.b	r7,	&0x67b0	;
    6374:	9e 67 8c 67 	addc	26508(r7),26490(r14);0x0678c, 0x677a
    6378:	7a 67 
    637a:	68 67       	addc.b	@r7,	r8	;
    637c:	56 67 44 67 	addc.b	26436(r7),r6	;0x06744
    6380:	32 67       	addc	@r7+,	r2	;
    6382:	20 67       	addc	@r7,	r0	;
    6384:	0e 67       	addc	r7,	r14	;
    6386:	fc 66 ea 66 	addc.b	@r6+,	26346(r12); 0x66ea
    638a:	d8 66 c6 66 	addc.b	26310(r6),26292(r8);0x066c6, 0x66b4
    638e:	b4 66 
    6390:	a2 66 90 66 	addc	@r6,	&0x6690	;
    6394:	7e 66       	addc.b	@r6+,	r14	;
    6396:	6c 66       	addc.b	@r6,	r12	;
    6398:	5a 66 48 66 	addc.b	26184(r6),r10	;0x06648
    639c:	36 66       	addc	@r6+,	r6	;
    639e:	24 66       	addc	@r6,	r4	;
    63a0:	12 66 00 66 	addc	26112(r6),r2	;0x06600
    63a4:	ee 65 dc 65 	addc.b	@r5,	26076(r14); 0x65dc
    63a8:	ca 65 b8 65 	addc.b	r5,	26040(r10); 0x65b8
    63ac:	a6 65 94 65 	addc	@r5,	26004(r6); 0x6594
    63b0:	82 65 70 65 	addc	r5,	&0x6570	;
    63b4:	5e 65 4c 65 	addc.b	25932(r5),r14	;0x0654c
    63b8:	3a 65       	addc	@r5+,	r10	;
    63ba:	28 65       	addc	@r5,	r8	;
    63bc:	16 65 04 65 	addc	25860(r5),r6	;0x06504
    63c0:	f2 64 e0 64 	addc.b	@r4+,	&0x64e0	;
    63c4:	ce 64 bc 64 	addc.b	r4,	25788(r14); 0x64bc
    63c8:	aa 64 98 64 	addc	@r4,	25752(r10); 0x6498
    63cc:	86 64 74 64 	addc	r4,	25716(r6); 0x6474
    63d0:	62 64       	addc.b	@r4,	r2	;
    63d2:	50 64 3e 64 	addc.b	25662(r4),r0	;0x0643e
    63d6:	2c 64       	addc	@r4,	r12	;
    63d8:	1a 64 08 64 	addc	25608(r4),r10	;0x06408

000063dc <.L70>:
    if (!ink_is_first_boot())
    63dc:	4c 43       	clr.b	r12		;
    63de:	4f 43       	clr.b	r15		;
    63e0:	4e 43       	clr.b	r14		;

000063e2 <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    63e2:	81 4c 00 00 	mov	r12,	0(r1)	;
    63e6:	0d 49       	mov	r9,	r13	;
    63e8:	4c 4a       	mov.b	r10,	r12	;

000063ea <.LVL4>:
    63ea:	b0 12 ac 6b 	call	#27564		;#0x6bac

000063ee <.LVL5>:

    if (start_on_first_boot)
    63ee:	08 93       	cmp	#0,	r8	;r3 As==00
    63f0:	03 20       	jnz	$+8      	;abs 0x63f8

000063f2 <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    63f2:	21 53       	incd	r1		;

000063f4 <.LCFI2>:
    63f4:	28 17       	popm	#3,	r10	;16-bit words

000063f6 <.LCFI3>:
    63f6:	30 41       	ret			

000063f8 <.L75>:
        __start_thread(__get_thread(priority));
    63f8:	4c 4a       	mov.b	r10,	r12	;
    63fa:	b0 12 50 6c 	call	#27728		;#0x6c50
    63fe:	b0 12 34 6c 	call	#27700		;#0x6c34

00006402 <.Loc.232.1>:
}
    6402:	21 53       	incd	r1		;

00006404 <.LCFI5>:
    6404:	28 17       	popm	#3,	r10	;16-bit words

00006406 <.LCFI6>:
    6406:	30 41       	ret			

00006408 <.L5>:
        INK_CREATE_THREAD_CASE(63)
    6408:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    640c:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006410 <.LVL9>:
    6410:	3c 40 00 00 	mov	#0,	r12	;

00006414 <.Loc.220.1>:
    6414:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6418:	e4 3f       	jmp	$-54     	;abs 0x63e2

0000641a <.L7>:
        INK_CREATE_THREAD_CASE(62)
    641a:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    641e:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006422 <.LVL12>:
    6422:	3c 40 00 00 	mov	#0,	r12	;

00006426 <.Loc.219.1>:
    6426:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    642a:	db 3f       	jmp	$-72     	;abs 0x63e2

0000642c <.L8>:
        INK_CREATE_THREAD_CASE(61)
    642c:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6430:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006434 <.LVL15>:
    6434:	3c 40 00 00 	mov	#0,	r12	;

00006438 <.Loc.218.1>:
    6438:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    643c:	d2 3f       	jmp	$-90     	;abs 0x63e2

0000643e <.L9>:
        INK_CREATE_THREAD_CASE(60)
    643e:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6442:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006446 <.LVL18>:
    6446:	3c 40 00 00 	mov	#0,	r12	;

0000644a <.Loc.217.1>:
    644a:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    644e:	c9 3f       	jmp	$-108    	;abs 0x63e2

00006450 <.L10>:
        INK_CREATE_THREAD_CASE(59)
    6450:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6454:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006458 <.LVL21>:
    6458:	3c 40 00 00 	mov	#0,	r12	;

0000645c <.Loc.216.1>:
    645c:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6460:	c0 3f       	jmp	$-126    	;abs 0x63e2

00006462 <.L11>:
        INK_CREATE_THREAD_CASE(58)
    6462:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6466:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000646a <.LVL24>:
    646a:	3c 40 00 00 	mov	#0,	r12	;

0000646e <.Loc.215.1>:
    646e:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6472:	b7 3f       	jmp	$-144    	;abs 0x63e2

00006474 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    6474:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6478:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000647c <.LVL27>:
    647c:	3c 40 00 00 	mov	#0,	r12	;

00006480 <.Loc.214.1>:
    6480:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6484:	ae 3f       	jmp	$-162    	;abs 0x63e2

00006486 <.L13>:
        INK_CREATE_THREAD_CASE(56)
    6486:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    648a:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000648e <.LVL30>:
    648e:	3c 40 00 00 	mov	#0,	r12	;

00006492 <.Loc.213.1>:
    6492:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6496:	a5 3f       	jmp	$-180    	;abs 0x63e2

00006498 <.L14>:
        INK_CREATE_THREAD_CASE(55)
    6498:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    649c:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000064a0 <.LVL33>:
    64a0:	3c 40 00 00 	mov	#0,	r12	;

000064a4 <.Loc.212.1>:
    64a4:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    64a8:	9c 3f       	jmp	$-198    	;abs 0x63e2

000064aa <.L15>:
        INK_CREATE_THREAD_CASE(54)
    64aa:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    64ae:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000064b2 <.LVL36>:
    64b2:	3c 40 00 00 	mov	#0,	r12	;

000064b6 <.Loc.211.1>:
    64b6:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    64ba:	93 3f       	jmp	$-216    	;abs 0x63e2

000064bc <.L16>:
        INK_CREATE_THREAD_CASE(53)
    64bc:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    64c0:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000064c4 <.LVL39>:
    64c4:	3c 40 00 00 	mov	#0,	r12	;

000064c8 <.Loc.210.1>:
    64c8:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    64cc:	8a 3f       	jmp	$-234    	;abs 0x63e2

000064ce <.L17>:
        INK_CREATE_THREAD_CASE(52)
    64ce:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    64d2:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000064d6 <.LVL42>:
    64d6:	3c 40 00 00 	mov	#0,	r12	;

000064da <.Loc.209.1>:
    64da:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    64de:	81 3f       	jmp	$-252    	;abs 0x63e2

000064e0 <.L18>:
        INK_CREATE_THREAD_CASE(51)
    64e0:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    64e4:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000064e8 <.LVL45>:
    64e8:	3c 40 00 00 	mov	#0,	r12	;

000064ec <.Loc.208.1>:
    64ec:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    64f0:	78 3f       	jmp	$-270    	;abs 0x63e2

000064f2 <.L19>:
        INK_CREATE_THREAD_CASE(50)
    64f2:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    64f6:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000064fa <.LVL48>:
    64fa:	3c 40 00 00 	mov	#0,	r12	;

000064fe <.Loc.207.1>:
    64fe:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6502:	6f 3f       	jmp	$-288    	;abs 0x63e2

00006504 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    6504:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6508:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000650c <.LVL51>:
    650c:	3c 40 00 00 	mov	#0,	r12	;

00006510 <.Loc.206.1>:
    6510:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6514:	66 3f       	jmp	$-306    	;abs 0x63e2

00006516 <.L21>:
        INK_CREATE_THREAD_CASE(48)
    6516:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    651a:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000651e <.LVL54>:
    651e:	3c 40 00 00 	mov	#0,	r12	;

00006522 <.Loc.205.1>:
    6522:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6526:	5d 3f       	jmp	$-324    	;abs 0x63e2

00006528 <.L22>:
        INK_CREATE_THREAD_CASE(47)
    6528:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    652c:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006530 <.LVL57>:
    6530:	3c 40 00 00 	mov	#0,	r12	;

00006534 <.Loc.204.1>:
    6534:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6538:	54 3f       	jmp	$-342    	;abs 0x63e2

0000653a <.L23>:
        INK_CREATE_THREAD_CASE(46)
    653a:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    653e:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006542 <.LVL60>:
    6542:	3c 40 00 00 	mov	#0,	r12	;

00006546 <.Loc.203.1>:
    6546:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    654a:	4b 3f       	jmp	$-360    	;abs 0x63e2

0000654c <.L24>:
        INK_CREATE_THREAD_CASE(45)
    654c:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6550:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006554 <.LVL63>:
    6554:	3c 40 00 00 	mov	#0,	r12	;

00006558 <.Loc.202.1>:
    6558:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    655c:	42 3f       	jmp	$-378    	;abs 0x63e2

0000655e <.L25>:
        INK_CREATE_THREAD_CASE(44)
    655e:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6562:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006566 <.LVL66>:
    6566:	3c 40 00 00 	mov	#0,	r12	;

0000656a <.Loc.201.1>:
    656a:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    656e:	39 3f       	jmp	$-396    	;abs 0x63e2

00006570 <.L26>:
        INK_CREATE_THREAD_CASE(43)
    6570:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6574:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006578 <.LVL69>:
    6578:	3c 40 00 00 	mov	#0,	r12	;

0000657c <.Loc.200.1>:
    657c:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6580:	30 3f       	jmp	$-414    	;abs 0x63e2

00006582 <.L27>:
        INK_CREATE_THREAD_CASE(42)
    6582:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6586:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000658a <.LVL72>:
    658a:	3c 40 00 00 	mov	#0,	r12	;

0000658e <.Loc.199.1>:
    658e:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6592:	27 3f       	jmp	$-432    	;abs 0x63e2

00006594 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    6594:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6598:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000659c <.LVL75>:
    659c:	3c 40 00 00 	mov	#0,	r12	;

000065a0 <.Loc.198.1>:
    65a0:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    65a4:	1e 3f       	jmp	$-450    	;abs 0x63e2

000065a6 <.L29>:
        INK_CREATE_THREAD_CASE(40)
    65a6:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    65aa:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000065ae <.LVL78>:
    65ae:	3c 40 00 00 	mov	#0,	r12	;

000065b2 <.Loc.197.1>:
    65b2:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    65b6:	15 3f       	jmp	$-468    	;abs 0x63e2

000065b8 <.L30>:
        INK_CREATE_THREAD_CASE(39)
    65b8:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    65bc:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000065c0 <.LVL81>:
    65c0:	3c 40 00 00 	mov	#0,	r12	;

000065c4 <.Loc.196.1>:
    65c4:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    65c8:	0c 3f       	jmp	$-486    	;abs 0x63e2

000065ca <.L31>:
        INK_CREATE_THREAD_CASE(38)
    65ca:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    65ce:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000065d2 <.LVL84>:
    65d2:	3c 40 00 00 	mov	#0,	r12	;

000065d6 <.Loc.195.1>:
    65d6:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    65da:	03 3f       	jmp	$-504    	;abs 0x63e2

000065dc <.L32>:
        INK_CREATE_THREAD_CASE(37)
    65dc:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    65e0:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000065e4 <.LVL87>:
    65e4:	3c 40 00 00 	mov	#0,	r12	;

000065e8 <.Loc.194.1>:
    65e8:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    65ec:	fa 3e       	jmp	$-522    	;abs 0x63e2

000065ee <.L33>:
        INK_CREATE_THREAD_CASE(36)
    65ee:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    65f2:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000065f6 <.LVL90>:
    65f6:	3c 40 00 00 	mov	#0,	r12	;

000065fa <.Loc.193.1>:
    65fa:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    65fe:	f1 3e       	jmp	$-540    	;abs 0x63e2

00006600 <.L34>:
        INK_CREATE_THREAD_CASE(35)
    6600:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6604:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006608 <.LVL93>:
    6608:	3c 40 00 00 	mov	#0,	r12	;

0000660c <.Loc.192.1>:
    660c:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6610:	e8 3e       	jmp	$-558    	;abs 0x63e2

00006612 <.L35>:
        INK_CREATE_THREAD_CASE(34)
    6612:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6616:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000661a <.LVL96>:
    661a:	3c 40 00 00 	mov	#0,	r12	;

0000661e <.Loc.191.1>:
    661e:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6622:	df 3e       	jmp	$-576    	;abs 0x63e2

00006624 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    6624:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6628:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000662c <.LVL99>:
    662c:	3c 40 00 00 	mov	#0,	r12	;

00006630 <.Loc.190.1>:
    6630:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6634:	d6 3e       	jmp	$-594    	;abs 0x63e2

00006636 <.L37>:
        INK_CREATE_THREAD_CASE(32)
    6636:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    663a:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000663e <.LVL102>:
    663e:	3c 40 00 00 	mov	#0,	r12	;

00006642 <.Loc.189.1>:
    6642:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6646:	cd 3e       	jmp	$-612    	;abs 0x63e2

00006648 <.L38>:
        INK_CREATE_THREAD_CASE(31)
    6648:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    664c:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006650 <.LVL105>:
    6650:	3c 40 00 00 	mov	#0,	r12	;

00006654 <.Loc.188.1>:
    6654:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6658:	c4 3e       	jmp	$-630    	;abs 0x63e2

0000665a <.L39>:
        INK_CREATE_THREAD_CASE(30)
    665a:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    665e:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006662 <.LVL108>:
    6662:	3c 40 00 00 	mov	#0,	r12	;

00006666 <.Loc.187.1>:
    6666:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    666a:	bb 3e       	jmp	$-648    	;abs 0x63e2

0000666c <.L40>:
        INK_CREATE_THREAD_CASE(29)
    666c:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6670:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006674 <.LVL111>:
    6674:	3c 40 00 00 	mov	#0,	r12	;

00006678 <.Loc.186.1>:
    6678:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    667c:	b2 3e       	jmp	$-666    	;abs 0x63e2

0000667e <.L41>:
        INK_CREATE_THREAD_CASE(28)
    667e:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6682:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006686 <.LVL114>:
    6686:	3c 40 00 00 	mov	#0,	r12	;

0000668a <.Loc.185.1>:
    668a:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    668e:	a9 3e       	jmp	$-684    	;abs 0x63e2

00006690 <.L42>:
        INK_CREATE_THREAD_CASE(27)
    6690:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6694:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006698 <.LVL117>:
    6698:	3c 40 00 00 	mov	#0,	r12	;

0000669c <.Loc.184.1>:
    669c:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    66a0:	a0 3e       	jmp	$-702    	;abs 0x63e2

000066a2 <.L43>:
        INK_CREATE_THREAD_CASE(26)
    66a2:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    66a6:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000066aa <.LVL120>:
    66aa:	3c 40 00 00 	mov	#0,	r12	;

000066ae <.Loc.183.1>:
    66ae:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    66b2:	97 3e       	jmp	$-720    	;abs 0x63e2

000066b4 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    66b4:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    66b8:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000066bc <.LVL123>:
    66bc:	3c 40 00 00 	mov	#0,	r12	;

000066c0 <.Loc.182.1>:
    66c0:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    66c4:	8e 3e       	jmp	$-738    	;abs 0x63e2

000066c6 <.L45>:
        INK_CREATE_THREAD_CASE(24)
    66c6:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    66ca:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000066ce <.LVL126>:
    66ce:	3c 40 00 00 	mov	#0,	r12	;

000066d2 <.Loc.181.1>:
    66d2:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    66d6:	85 3e       	jmp	$-756    	;abs 0x63e2

000066d8 <.L46>:
        INK_CREATE_THREAD_CASE(23)
    66d8:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    66dc:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000066e0 <.LVL129>:
    66e0:	3c 40 00 00 	mov	#0,	r12	;

000066e4 <.Loc.180.1>:
    66e4:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    66e8:	7c 3e       	jmp	$-774    	;abs 0x63e2

000066ea <.L47>:
        INK_CREATE_THREAD_CASE(22)
    66ea:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    66ee:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000066f2 <.LVL132>:
    66f2:	3c 40 00 00 	mov	#0,	r12	;

000066f6 <.Loc.179.1>:
    66f6:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    66fa:	73 3e       	jmp	$-792    	;abs 0x63e2

000066fc <.L48>:
        INK_CREATE_THREAD_CASE(21)
    66fc:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6700:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006704 <.LVL135>:
    6704:	3c 40 00 00 	mov	#0,	r12	;

00006708 <.Loc.178.1>:
    6708:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    670c:	6a 3e       	jmp	$-810    	;abs 0x63e2

0000670e <.L49>:
        INK_CREATE_THREAD_CASE(20)
    670e:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6712:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006716 <.LVL138>:
    6716:	3c 40 00 00 	mov	#0,	r12	;

0000671a <.Loc.177.1>:
    671a:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    671e:	61 3e       	jmp	$-828    	;abs 0x63e2

00006720 <.L50>:
        INK_CREATE_THREAD_CASE(19)
    6720:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6724:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006728 <.LVL141>:
    6728:	3c 40 00 00 	mov	#0,	r12	;

0000672c <.Loc.176.1>:
    672c:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6730:	58 3e       	jmp	$-846    	;abs 0x63e2

00006732 <.L51>:
        INK_CREATE_THREAD_CASE(18)
    6732:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6736:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000673a <.LVL144>:
    673a:	3c 40 00 00 	mov	#0,	r12	;

0000673e <.Loc.175.1>:
    673e:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6742:	4f 3e       	jmp	$-864    	;abs 0x63e2

00006744 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    6744:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    6748:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000674c <.LVL147>:
    674c:	3c 40 00 00 	mov	#0,	r12	;

00006750 <.Loc.174.1>:
    6750:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6754:	46 3e       	jmp	$-882    	;abs 0x63e2

00006756 <.L53>:
        INK_CREATE_THREAD_CASE(16)
    6756:	3f 40 e4 52 	mov	#21220,	r15	;#0x52e4
    675a:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000675e <.LVL150>:
    675e:	3c 40 00 00 	mov	#0,	r12	;

00006762 <.Loc.173.1>:
    6762:	3e 40 e4 52 	mov	#21220,	r14	;#0x52e4
    6766:	3d 3e       	jmp	$-900    	;abs 0x63e2

00006768 <.L54>:
        INK_CREATE_THREAD_CASE(15)
    6768:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    676c:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006770 <.LVL153>:
    6770:	3c 40 a4 00 	mov	#164,	r12	;#0x00a4

00006774 <.Loc.172.1>:
    6774:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    6778:	34 3e       	jmp	$-918    	;abs 0x63e2

0000677a <.L55>:
        INK_CREATE_THREAD_CASE(14)
    677a:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    677e:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006782 <.LVL156>:
    6782:	3c 40 00 00 	mov	#0,	r12	;

00006786 <.Loc.171.1>:
    6786:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    678a:	2b 3e       	jmp	$-936    	;abs 0x63e2

0000678c <.L56>:
        INK_CREATE_THREAD_CASE(13)
    678c:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6790:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006794 <.LVL159>:
    6794:	3c 40 00 00 	mov	#0,	r12	;

00006798 <.Loc.170.1>:
    6798:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    679c:	22 3e       	jmp	$-954    	;abs 0x63e2

0000679e <.L57>:
        INK_CREATE_THREAD_CASE(12)
    679e:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    67a2:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000067a6 <.LVL162>:
    67a6:	3c 40 00 00 	mov	#0,	r12	;

000067aa <.Loc.169.1>:
    67aa:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    67ae:	19 3e       	jmp	$-972    	;abs 0x63e2

000067b0 <.L58>:
        INK_CREATE_THREAD_CASE(11)
    67b0:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    67b4:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000067b8 <.LVL165>:
    67b8:	3c 40 00 00 	mov	#0,	r12	;

000067bc <.Loc.168.1>:
    67bc:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    67c0:	10 3e       	jmp	$-990    	;abs 0x63e2

000067c2 <.L59>:
        INK_CREATE_THREAD_CASE(10)
    67c2:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    67c6:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000067ca <.LVL168>:
    67ca:	3c 40 00 00 	mov	#0,	r12	;

000067ce <.Loc.167.1>:
    67ce:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    67d2:	07 3e       	jmp	$-1008   	;abs 0x63e2

000067d4 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    67d4:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    67d8:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000067dc <.LVL171>:
    67dc:	3c 40 00 00 	mov	#0,	r12	;

000067e0 <.Loc.166.1>:
    67e0:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    67e4:	30 40 e2 63 	br	#0x63e2		;

000067e8 <.L61>:
        INK_CREATE_THREAD_CASE(8)
    67e8:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    67ec:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

000067f0 <.LVL174>:
    67f0:	3c 40 00 00 	mov	#0,	r12	;

000067f4 <.Loc.165.1>:
    67f4:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    67f8:	30 40 e2 63 	br	#0x63e2		;

000067fc <.L62>:
        INK_CREATE_THREAD_CASE(7)
    67fc:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6800:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006804 <.LVL177>:
    6804:	3c 40 00 00 	mov	#0,	r12	;

00006808 <.Loc.164.1>:
    6808:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    680c:	30 40 e2 63 	br	#0x63e2		;

00006810 <.L63>:
        INK_CREATE_THREAD_CASE(6)
    6810:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6814:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006818 <.LVL180>:
    6818:	3c 40 00 00 	mov	#0,	r12	;

0000681c <.Loc.163.1>:
    681c:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    6820:	30 40 e2 63 	br	#0x63e2		;

00006824 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    6824:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6828:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000682c <.LVL183>:
    682c:	3c 40 00 00 	mov	#0,	r12	;

00006830 <.Loc.162.1>:
    6830:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    6834:	30 40 e2 63 	br	#0x63e2		;

00006838 <.L65>:
        INK_CREATE_THREAD_CASE(4)
    6838:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    683c:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006840 <.LVL186>:
    6840:	3c 40 00 00 	mov	#0,	r12	;

00006844 <.Loc.161.1>:
    6844:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    6848:	30 40 e2 63 	br	#0x63e2		;

0000684c <.L66>:
        INK_CREATE_THREAD_CASE(3)
    684c:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6850:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006854 <.LVL189>:
    6854:	3c 40 00 00 	mov	#0,	r12	;

00006858 <.Loc.160.1>:
    6858:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    685c:	30 40 e2 63 	br	#0x63e2		;

00006860 <.L67>:
        INK_CREATE_THREAD_CASE(2)
    6860:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6864:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

00006868 <.LVL192>:
    6868:	3c 40 00 00 	mov	#0,	r12	;

0000686c <.Loc.159.1>:
    686c:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    6870:	30 40 e2 63 	br	#0x63e2		;

00006874 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    6874:	3f 40 40 52 	mov	#21056,	r15	;#0x5240
    6878:	3f 50 a4 00 	add	#164,	r15	;#0x00a4

0000687c <.LVL195>:
    687c:	3c 40 00 00 	mov	#0,	r12	;

00006880 <.Loc.158.1>:
    6880:	3e 40 40 52 	mov	#21056,	r14	;#0x5240
    6884:	30 40 e2 63 	br	#0x63e2		;

00006888 <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    6888:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000688c <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    688c:	32 c2       	dint			
    688e:	03 43       	nop			

00006890 <.Loc.236.1>:
    6890:	b0 12 50 6c 	call	#27728		;#0x6c50

00006894 <.LVL198>:
    6894:	b0 12 34 6c 	call	#27700		;#0x6c34

00006898 <.Loc.236.1>:
    6898:	03 43       	nop			
    689a:	32 d2       	eint			
    689c:	03 43       	nop			

0000689e <.Loc.237.1>:
}
    689e:	30 41       	ret			

000068a0 <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    68a0:	b0 12 66 6c 	call	#27750		;#0x6c66

000068a4 <.Loc.7.1>:
}
    68a4:	30 41       	ret			

000068a6 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    68a6:	1a 15       	pushm	#2,	r10	;16-bit words

000068a8 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    68a8:	3a 40 d2 4a 	mov	#19154,	r10	;#0x4ad2
    68ac:	39 40 d2 45 	mov	#17874,	r9	;#0x45d2

000068b0 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    68b0:	0c 4a       	mov	r10,	r12	;
    68b2:	b0 12 58 6a 	call	#27224		;#0x6a58

000068b6 <.Loc.27.1>:
        _popped[i] = NULL;
    68b6:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

000068ba <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    68ba:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    68be:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000068c2 <.Loc.24.1>:
    68c2:	3a 90 d2 45 	cmp	#17874,	r10	;#0x45d2
    68c6:	f4 23       	jnz	$-22     	;abs 0x68b0

000068c8 <.Loc.29.1>:
    }
}
    68c8:	19 17       	popm	#2,	r10	;16-bit words

000068ca <.LCFI1>:
    68ca:	30 41       	ret			

000068cc <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    68cc:	5c 42 de 4a 	mov.b	&0x4ade,r12	;0x4ade
    68d0:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    68d2:	14 24       	jz	$+42     	;abs 0x68fc
    68d4:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    68d6:	1f 24       	jz	$+64     	;abs 0x6916
    68d8:	0c 93       	cmp	#0,	r12	;r3 As==00
    68da:	01 24       	jz	$+4      	;abs 0x68de

000068dc <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    68dc:	30 41       	ret			

000068de <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    68de:	1d 42 dc 4a 	mov	&0x4adc,r13	;0x4adc

000068e2 <.Loc.37.1>:
    68e2:	6c 4d       	mov.b	@r13,	r12	;
    68e4:	5c 06       	rlam	#2,	r12	;
    68e6:	6d 4d       	mov.b	@r13,	r13	;
    68e8:	0c 5d       	add	r13,	r12	;
    68ea:	5c 06       	rlam	#2,	r12	;
    68ec:	3d 40 d2 4a 	mov	#19154,	r13	;#0x4ad2
    68f0:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    68f4:	b0 12 b4 6a 	call	#27316		;#0x6ab4

000068f8 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    68f8:	d2 43 de 4a 	mov.b	#1,	&0x4ade	;r3 As==01

000068fc <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    68fc:	1d 42 dc 4a 	mov	&0x4adc,r13	;0x4adc

00006900 <.Loc.40.1>:
    6900:	6c 4d       	mov.b	@r13,	r12	;
    6902:	5c 06       	rlam	#2,	r12	;
    6904:	6d 4d       	mov.b	@r13,	r13	;
    6906:	0c 5d       	add	r13,	r12	;
    6908:	5c 06       	rlam	#2,	r12	;
    690a:	
0000690c <L0^A>:
    690c:	d2 45 b0 12 	mov.b	4784(r5),&0x6aea	;0x012b0
    6910:	ea 6a 

00006912 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    6912:	e2 43 de 4a 	mov.b	#2,	&0x4ade	;r3 As==10

00006916 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    6916:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc
    691a:	1c 4c 02 00 	mov	2(r12),	r12	;

0000691e <.Loc.44.1>:
    691e:	3c 92       	cmp	#8,	r12	;r2 As==11
    6920:	04 24       	jz	$+10     	;abs 0x692a

00006922 <.L9>:
        _status = EVENT_DONE;
    6922:	f2 40 03 00 	mov.b	#3,	&0x4ade	;
    6926:	de 4a 

00006928 <.Loc.51.1>:
}
    6928:	30 41       	ret			

0000692a <.L17>:
            __disable_interrupt();
    692a:	32 c2       	dint			
    692c:	03 43       	nop			

0000692e <.Loc.46.1>:
            __start_thread(_thread);
    692e:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc
    6932:	b0 12 34 6c 	call	#27700		;#0x6c34

00006936 <.Loc.47.1>:
            __enable_interrupt();
    6936:	03 43       	nop			
    6938:	32 d2       	eint			
    693a:	03 43       	nop			
    693c:	f2 3f       	jmp	$-26     	;abs 0x6922

0000693e <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    693e:	1d 42 dc 4a 	mov	&0x4adc,r13	;0x4adc

00006942 <.Loc.55.1>:
    6942:	6c 4d       	mov.b	@r13,	r12	;

00006944 <.LVL7>:
    6944:	5c 06       	rlam	#2,	r12	;
    6946:	6d 4d       	mov.b	@r13,	r13	;
    6948:	0c 5d       	add	r13,	r12	;
    694a:	5c 06       	rlam	#2,	r12	;
    694c:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    6950:	b0 12 88 6a 	call	#27272		;#0x6a88

00006954 <.Loc.56.1>:
}
    6954:	30 41       	ret			

00006956 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6956:	82 4c dc 4a 	mov	r12,	&0x4adc	;

0000695a <.Loc.64.1>:
    _event = *event;
    695a:	0e 4d       	mov	r13,	r14	;
    695c:	b2 4e d2 4a 	mov	@r14+,	&0x4ad2	;
    6960:	b2 4e d4 4a 	mov	@r14+,	&0x4ad4	;
    6964:	92 4d 04 00 	mov	4(r13),	&0x4ad6	;
    6968:	d6 4a 
    696a:	92 4d 06 00 	mov	6(r13),	&0x4ad8	;
    696e:	d8 4a 
    6970:	92 4e 04 00 	mov	4(r14),	&0x4ada	;
    6974:	da 4a 

00006976 <.Loc.65.1>:
    _status = EVENT_INSERT;
    6976:	c2 43 de 4a 	mov.b	#0,	&0x4ade	;r3 As==00

0000697a <.LBB4>:
    switch(_status){
    697a:	5d 42 de 4a 	mov.b	&0x4ade,r13	;0x4ade

0000697e <.LVL10>:
    697e:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    6980:	14 24       	jz	$+42     	;abs 0x69aa
    6982:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    6984:	1f 24       	jz	$+64     	;abs 0x69c4
    6986:	0d 93       	cmp	#0,	r13	;r3 As==00
    6988:	01 24       	jz	$+4      	;abs 0x698c

0000698a <.LBE4>:
    __events_commit();
}
    698a:	30 41       	ret			

0000698c <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    698c:	6d 4c       	mov.b	@r12,	r13	;
    698e:	5d 06       	rlam	#2,	r13	;
    6990:	6c 4c       	mov.b	@r12,	r12	;

00006992 <.LVL11>:
    6992:	0c 5d       	add	r13,	r12	;
    6994:	5c 06       	rlam	#2,	r12	;
    6996:	3d 40 d2 4a 	mov	#19154,	r13	;#0x4ad2
    699a:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    699e:	b0 12 b4 6a 	call	#27316		;#0x6ab4

000069a2 <.LVL12>:
        _status = EVENT_COMMIT;
    69a2:	d2 43 de 4a 	mov.b	#1,	&0x4ade	;r3 As==01
    69a6:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc

000069aa <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    69aa:	6d 4c       	mov.b	@r12,	r13	;
    69ac:	5d 06       	rlam	#2,	r13	;
    69ae:	6c 4c       	mov.b	@r12,	r12	;
    69b0:	0c 5d       	add	r13,	r12	;
    69b2:	5c 06       	rlam	#2,	r12	;
    69b4:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    69b8:	b0 12 ea 6a 	call	#27370		;#0x6aea

000069bc <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    69bc:	e2 43 de 4a 	mov.b	#2,	&0x4ade	;r3 As==10
    69c0:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc

000069c4 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    69c4:	1c 4c 02 00 	mov	2(r12),	r12	;

000069c8 <.Loc.44.1>:
    69c8:	3c 92       	cmp	#8,	r12	;r2 As==11
    69ca:	04 24       	jz	$+10     	;abs 0x69d4

000069cc <.L23>:
        _status = EVENT_DONE;
    69cc:	f2 40 03 00 	mov.b	#3,	&0x4ade	;
    69d0:	de 4a 

000069d2 <.Loc.67.1>:
}
    69d2:	30 41       	ret			

000069d4 <.L31>:
            __disable_interrupt();
    69d4:	32 c2       	dint			
    69d6:	03 43       	nop			

000069d8 <.Loc.46.1>:
            __start_thread(_thread);
    69d8:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc
    69dc:	b0 12 34 6c 	call	#27700		;#0x6c34

000069e0 <.Loc.47.1>:
            __enable_interrupt();
    69e0:	03 43       	nop			
    69e2:	32 d2       	eint			
    69e4:	03 43       	nop			
    69e6:	f2 3f       	jmp	$-26     	;abs 0x69cc

000069e8 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    69e8:	6d 4c       	mov.b	@r12,	r13	;
    69ea:	5d 06       	rlam	#2,	r13	;
    69ec:	6c 4c       	mov.b	@r12,	r12	;

000069ee <.LVL16>:
    69ee:	0c 5d       	add	r13,	r12	;
    69f0:	5c 06       	rlam	#2,	r12	;
    69f2:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    69f6:	b0 12 72 6a 	call	#27250		;#0x6a72
    69fa:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000069fe <.Loc.71.1>:
    69fe:	3c 53       	add	#-1,	r12	;r3 As==11

00006a00 <.Loc.75.1>:
        return 0;

    return 1;
}
    6a00:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6a04:	30 41       	ret			

00006a06 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    6a06:	0a 15       	pushm	#1,	r10	;16-bit words

00006a08 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    6a08:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc

00006a0c <.LVL19>:
    6a0c:	6a 4c       	mov.b	@r12,	r10	;

00006a0e <.Loc.81.1>:
    6a0e:	0c 4a       	mov	r10,	r12	;
    6a10:	5c 06       	rlam	#2,	r12	;
    6a12:	0c 5a       	add	r10,	r12	;
    6a14:	5c 06       	rlam	#2,	r12	;
    6a16:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    6a1a:	b0 12 f2 6a 	call	#27378		;#0x6af2

00006a1e <.Loc.81.1>:
    6a1e:	5a 02       	rlam	#1,	r10	;
    6a20:	8a 4c 52 45 	mov	r12,	17746(r10); 0x4552

00006a24 <.Loc.82.1>:
    return _popped[_thread->priority];
    6a24:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc
    6a28:	6c 4c       	mov.b	@r12,	r12	;
    6a2a:	5c 02       	rlam	#1,	r12	;

00006a2c <.Loc.83.1>:
}
    6a2c:	1c 4c 52 45 	mov	17746(r12),r12	;0x04552
    6a30:	0a 17       	popm	#1,	r10	;16-bit words

00006a32 <.LCFI3>:
    6a32:	30 41       	ret			

00006a34 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    6a34:	1d 42 dc 4a 	mov	&0x4adc,r13	;0x4adc

00006a38 <.Loc.87.1>:
    6a38:	6c 4d       	mov.b	@r13,	r12	;

00006a3a <.LVL22>:
    6a3a:	5c 06       	rlam	#2,	r12	;
    6a3c:	6d 4d       	mov.b	@r13,	r13	;
    6a3e:	0c 5d       	add	r13,	r12	;
    6a40:	5c 06       	rlam	#2,	r12	;
    6a42:	3c 50 d2 45 	add	#17874,	r12	;#0x45d2
    6a46:	b0 12 24 6b 	call	#27428		;#0x6b24

00006a4a <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    6a4a:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc
    6a4e:	6c 4c       	mov.b	@r12,	r12	;
    6a50:	5c 02       	rlam	#1,	r12	;
    6a52:	8c 43 52 45 	mov	#0,	17746(r12);r3 As==00, 0x4552

00006a56 <.Loc.89.1>:
}
    6a56:	30 41       	ret			

00006a58 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    6a58:	
00006a5c <L0^A>:
    6a5c:	10 00       	bra	@r0+		;

00006a5e <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    6a5e:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    6a62:	11 00 

00006a64 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    6a64:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    6a68:	12 00 

00006a6a <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    6a6a:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    6a6e:	13 00 

00006a70 <.Loc.10.1>:
}
    6a70:	30 41       	ret			

00006a72 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    6a72:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6a76:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    6a7a:	4c 4d       	mov.b	r13,	r12	;

00006a7c <.LVL2>:
    6a7c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6a80:	3c 53       	add	#-1,	r12	;r3 As==11

00006a82 <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    6a82:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6a86:	30 41       	ret			

00006a88 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6a88:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6a8c:	5d 53       	inc.b	r13		;
    6a8e:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006a92 <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    6a92:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6a96:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6a98:	02 20       	jnz	$+6      	;abs 0x6a9e

00006a9a <.Loc.25.1>:
        queue->__tail = 0;
    6a9a:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006a9e <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    6a9e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6aa2:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6aa6:	4c 4d       	mov.b	r13,	r12	;

00006aa8 <.LVL4>:
    6aa8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6aac:	3c 53       	add	#-1,	r12	;r3 As==11

00006aae <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    6aae:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6ab2:	30 41       	ret			

00006ab4 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6ab4:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    6ab8:	5e 53       	inc.b	r14		;
    6aba:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

00006abe <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    6abe:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    6ac2:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    6ac4:	02 20       	jnz	$+6      	;abs 0x6aca

00006ac6 <.Loc.40.1>:
        queue->__tail = 0;
    6ac6:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006aca <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    6aca:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

00006ace <.Loc.44.1>:
    6ace:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006ad2 <.Loc.44.1>:
    6ad2:	0f 9e       	cmp	r14,	r15	;
    6ad4:	08 24       	jz	$+18     	;abs 0x6ae6

00006ad6 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6ad6:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006ada <.Loc.49.1>:
    6ada:	5e 02       	rlam	#1,	r14	;
    6adc:	0c 5e       	add	r14,	r12	;

00006ade <.LVL6>:
    6ade:	8c 4d 00 00 	mov	r13,	0(r12)	;

00006ae2 <.Loc.51.1>:

    return 1;
    6ae2:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006ae4 <.Loc.52.1>:
}
    6ae4:	30 41       	ret			

00006ae6 <.L9>:
        return 0;
    6ae6:	4c 43       	clr.b	r12		;

00006ae8 <.LVL8>:
}
    6ae8:	30 41       	ret			

00006aea <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    6aea:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    6aee:	11 00 

00006af0 <.Loc.59.1>:
}
    6af0:	30 41       	ret			

00006af2 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6af2:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006af6 <.Loc.63.1>:
    6af6:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

00006afa <.Loc.63.1>:
    6afa:	0e 9d       	cmp	r13,	r14	;
    6afc:	11 24       	jz	$+36     	;abs 0x6b20

00006afe <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    6afe:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6b02:	5d 53       	inc.b	r13		;
    6b04:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00006b08 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    6b08:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    6b0c:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6b0e:	02 20       	jnz	$+6      	;abs 0x6b14

00006b10 <.Loc.70.1>:
        queue->__head = 0;
    6b10:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00006b14 <.L13>:

    return queue->_items[queue->_head];
    6b14:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00006b18 <.Loc.72.1>:
    6b18:	5d 02       	rlam	#1,	r13	;
    6b1a:	0c 5d       	add	r13,	r12	;

00006b1c <.LVL11>:
    6b1c:	2c 4c       	mov	@r12,	r12	;

00006b1e <.Loc.73.1>:
}
    6b1e:	30 41       	ret			

00006b20 <.L14>:
        return NULL;
    6b20:	4c 43       	clr.b	r12		;

00006b22 <.LVL13>:
}
    6b22:	30 41       	ret			

00006b24 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    6b24:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6b28:	10 00 

00006b2a <.Loc.79.1>:
}
    6b2a:	30 41       	ret			

00006b2c <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    6b2c:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6b30:	40 01 

00006b32 <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    6b32:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6b36:	41 01 

00006b38 <.Loc.13.1>:
}
    6b38:	30 41       	ret			

00006b3a <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    6b3a:	0a 15       	pushm	#1,	r10	;16-bit words

00006b3c <.LCFI0>:
    6b3c:	21 82       	sub	#4,	r1	;r2 As==10

00006b3e <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    6b3e:	0a 4c       	mov	r12,	r10	;
    6b40:	0b 43       	clr	r11		;
    6b42:	81 4a 00 00 	mov	r10,	0(r1)	;
    6b46:	81 4b 02 00 	mov	r11,	2(r1)	;

00006b4a <.Loc.20.1>:
    6b4a:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00006b4e <.LVL1>:
    6b4e:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6b52:	00 00 

00006b54 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    6b54:	0a 4d       	mov	r13,	r10	;
    6b56:	0b 43       	clr	r11		;

00006b58 <.LVL2>:
    6b58:	81 4a 00 00 	mov	r10,	0(r1)	;
    6b5c:	81 4b 02 00 	mov	r11,	2(r1)	;

00006b60 <.Loc.21.1>:
    6b60:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    6b64:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6b68:	00 00 

00006b6a <.LBE3>:
    DMA0SZ = size;                          // Block size
    6b6a:	82 4e 1a 05 	mov	r14,	&0x051a	;

00006b6e <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    6b6e:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6b72:	10 05 

00006b74 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6b74:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    6b78:	10 05 

00006b7a <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    6b7a:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00006b7e <.Loc.29.1>:
}
    6b7e:	21 52       	add	#4,	r1	;r2 As==10

00006b80 <.LCFI2>:
    6b80:	0a 17       	popm	#1,	r10	;16-bit words

00006b82 <.LCFI3>:
    6b82:	30 41       	ret			

00006b84 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    6b84:	3c 40 e2 4a 	mov	#19170,	r12	;#0x4ae2
    6b88:	b0 12 2e 79 	call	#31022		;#0x792e

00006b8c <.Loc.54.1>:
    6b8c:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00006b90 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    6b90:	0c 4d       	mov	r13,	r12	;
    6b92:	5c 02       	rlam	#1,	r12	;
    6b94:	0c 5d       	add	r13,	r12	;
    6b96:	5c 06       	rlam	#2,	r12	;
    6b98:	0c 5d       	add	r13,	r12	;
    6b9a:	5c 02       	rlam	#1,	r12	;
    6b9c:	1c 4c ee 4a 	mov	19182(r12),r12	;0x04aee

00006ba0 <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    6ba0:	3d 53       	add	#-1,	r13	;r3 As==11

00006ba2 <.Loc.56.1>:
    6ba2:	0d 93       	cmp	#0,	r13	;r3 As==00
    6ba4:	f5 23       	jnz	$-20     	;abs 0x6b90

00006ba6 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    6ba6:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006baa <.Loc.61.1>:
}
    6baa:	30 41       	ret			

00006bac <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    6bac:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006bb0 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    6bb0:	0b 4c       	mov	r12,	r11	;
    6bb2:	5b 02       	rlam	#1,	r11	;
    6bb4:	0b 5c       	add	r12,	r11	;
    6bb6:	5b 06       	rlam	#2,	r11	;
    6bb8:	0b 5c       	add	r12,	r11	;
    6bba:	5b 02       	rlam	#1,	r11	;
    6bbc:	cb 4c ec 4a 	mov.b	r12,	19180(r11); 0x4aec

00006bc0 <.Loc.69.1>:
    _threads[priority].entry = entry;
    6bc0:	8b 4d f0 4a 	mov	r13,	19184(r11); 0x4af0

00006bc4 <.Loc.70.1>:
    _threads[priority].next = entry;
    6bc4:	8b 4d f4 4a 	mov	r13,	19188(r11); 0x4af4

00006bc8 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    6bc8:	bb 42 ee 4a 	mov	#8,	19182(r11);r2 As==11, 0x4aee

00006bcc <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    6bcc:	8b 4e f6 4a 	mov	r14,	19190(r11); 0x4af6

00006bd0 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    6bd0:	8b 4f f8 4a 	mov	r15,	19192(r11); 0x4af8

00006bd4 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    6bd4:	cb 43 fa 4a 	mov.b	#0,	19194(r11);r3 As==00, 0x4afa

00006bd8 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    6bd8:	9b 41 02 00 	mov	2(r1),	19196(r11); 0x4afc
    6bdc:	fc 4a 

00006bde <.Loc.78.1>:
}
    6bde:	30 41       	ret			

00006be0 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    6be0:	0a 15       	pushm	#1,	r10	;16-bit words

00006be2 <.LCFI0>:
    6be2:	0a 4c       	mov	r12,	r10	;

00006be4 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    6be4:	3d 40 e2 4a 	mov	#19170,	r13	;#0x4ae2
    6be8:	6c 4c       	mov.b	@r12,	r12	;

00006bea <.LVL6>:
    6bea:	b0 12 74 79 	call	#31092		;#0x7974

00006bee <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    6bee:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006bf2 <.Loc.84.1>:
}
    6bf2:	0a 17       	popm	#1,	r10	;16-bit words

00006bf4 <.LCFI1>:
    6bf4:	30 41       	ret			

00006bf6 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    6bf6:	0a 15       	pushm	#1,	r10	;16-bit words

00006bf8 <.LCFI2>:
    6bf8:	0a 4c       	mov	r12,	r10	;

00006bfa <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    6bfa:	3d 40 e2 4a 	mov	#19170,	r13	;#0x4ae2
    6bfe:	6c 4c       	mov.b	@r12,	r12	;

00006c00 <.LVL9>:
    6c00:	b0 12 74 79 	call	#31092		;#0x7974

00006c04 <.Loc.89.1>:
    thread->next = NULL;
    6c04:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00006c08 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    6c08:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006c0c <.Loc.91.1>:
}
    6c0c:	0a 17       	popm	#1,	r10	;16-bit words

00006c0e <.LCFI3>:
    6c0e:	30 41       	ret			

00006c10 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    6c10:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00006c14 <.Loc.95.1>:
    return;
}
    6c14:	30 41       	ret			

00006c16 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    6c16:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00006c1a <.Loc.101.1>:
    return;
}
    6c1a:	30 41       	ret			

00006c1c <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    6c1c:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00006c20 <.Loc.107.1>:
    return;
}
    6c20:	30 41       	ret			

00006c22 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    6c22:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00006c26 <.Loc.112.1>:
    return;
}
    6c26:	30 41       	ret			

00006c28 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    6c28:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00006c2c <.LVL16>:
    6c2c:	30 41       	ret			

00006c2e <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    6c2e:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00006c32 <.LVL18>:
    6c32:	30 41       	ret			

00006c34 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    6c34:	0a 15       	pushm	#1,	r10	;16-bit words

00006c36 <.LCFI4>:
    6c36:	0a 4c       	mov	r12,	r10	;

00006c38 <.Loc.125.1>:
    thread->next = thread->entry;
    6c38:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    6c3c:	08 00 

00006c3e <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    6c3e:	3d 40 e2 4a 	mov	#19170,	r13	;#0x4ae2
    6c42:	6c 4c       	mov.b	@r12,	r12	;

00006c44 <.LVL20>:
    6c44:	b0 12 54 79 	call	#31060		;#0x7954

00006c48 <.Loc.127.1>:
    thread->state = TASK_READY;
    6c48:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006c4c <.Loc.128.1>:
}
    6c4c:	0a 17       	popm	#1,	r10	;16-bit words

00006c4e <.LCFI5>:
    6c4e:	30 41       	ret			

00006c50 <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    6c50:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006c54 <.Loc.140.1>:
    return &_threads[priority];
    6c54:	0d 4c       	mov	r12,	r13	;
    6c56:	5d 02       	rlam	#1,	r13	;
    6c58:	0d 5c       	add	r12,	r13	;
    6c5a:	5d 06       	rlam	#2,	r13	;
    6c5c:	0c 5d       	add	r13,	r12	;

00006c5e <.LVL23>:
    6c5e:	5c 02       	rlam	#1,	r12	;

00006c60 <.Loc.141.1>:
}
    6c60:	3c 50 ec 4a 	add	#19180,	r12	;#0x4aec
    6c64:	30 41       	ret			

00006c66 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    6c66:	32 c2       	dint			
    6c68:	03 43       	nop			

00006c6a <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    6c6a:	b0 12 cc 68 	call	#26828		;#0x68cc

00006c6e <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6c6e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006c72 <.Loc.162.1>:
    __port_off(1, 3);
    6c72:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006c76 <.LBB8>:
    if(_thread){
    6c76:	82 93 e0 4a 	cmp	#0,	&0x4ae0	;r3 As==00
    6c7a:	04 24       	jz	$+10     	;abs 0x6c84

00006c7c <.Loc.146.1>:
        __tick(_thread);
    6c7c:	1c 42 e0 4a 	mov	&0x4ae0,r12	;0x4ae0
    6c80:	b0 12 1a 6d 	call	#27930		;#0x6d1a

00006c84 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    6c84:	b0 12 36 6e 	call	#28214		;#0x6e36

00006c88 <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    6c88:	03 43       	nop			
    6c8a:	32 d2       	eint			
    6c8c:	03 43       	nop			

00006c8e <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6c8e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006c92 <.Loc.179.1>:
    __port_off(1, 3);
    6c92:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006c96 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    6c96:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    6c9a:	0c 93       	cmp	#0,	r12	;r3 As==00
    6c9c:	10 24       	jz	$+34     	;abs 0x6cbe

00006c9e <.L29>:
    6c9e:	1c 93       	cmp	#1,	r12	;r3 As==01
    6ca0:	fa 23       	jnz	$-10     	;abs 0x6c96
    6ca2:	1c 42 e0 4a 	mov	&0x4ae0,r12	;0x4ae0

00006ca6 <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    6ca6:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ca8:	24 24       	jz	$+74     	;abs 0x6cf2

00006caa <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    6caa:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006cae <.Loc.198.1>:
#endif
                __tick(_thread);
    6cae:	b0 12 1a 6d 	call	#27930		;#0x6d1a

00006cb2 <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    6cb2:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006cb6 <.Loc.180.1>:
        switch (_sched_state){
    6cb6:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    6cba:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cbc:	f0 23       	jnz	$-30     	;abs 0x6c9e

00006cbe <.L19>:
            __port_on(1, 3);
    6cbe:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006cc2 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    6cc2:	3c 40 e2 4a 	mov	#19170,	r12	;#0x4ae2
    6cc6:	b0 12 9c 79 	call	#31132		;#0x799c
    6cca:	4d 4c       	mov.b	r12,	r13	;

00006ccc <.LVL29>:
    if(idx)
    6ccc:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6cce:	0d 24       	jz	$+28     	;abs 0x6cea

00006cd0 <.Loc.134.1>:
        return &_threads[idx];
    6cd0:	0c 4d       	mov	r13,	r12	;
    6cd2:	5c 02       	rlam	#1,	r12	;

00006cd4 <.LVL30>:
    6cd4:	0c 5d       	add	r13,	r12	;
    6cd6:	5c 06       	rlam	#2,	r12	;
    6cd8:	0c 5d       	add	r13,	r12	;
    6cda:	5c 02       	rlam	#1,	r12	;
    6cdc:	3c 50 ec 4a 	add	#19180,	r12	;#0x4aec

00006ce0 <.LBE10>:
            _thread = __next_thread();
    6ce0:	82 4c e0 4a 	mov	r12,	&0x4ae0	;

00006ce4 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    6ce4:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006ce8 <.Loc.196.1>:
            if (_thread){
    6ce8:	e0 3f       	jmp	$-62     	;abs 0x6caa

00006cea <.L30>:
            _thread = __next_thread();
    6cea:	82 43 e0 4a 	mov	#0,	&0x4ae0	;r3 As==00

00006cee <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    6cee:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006cf2 <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    6cf2:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006cf6 <.Loc.206.1>:
            __disable_interrupt();
    6cf6:	32 c2       	dint			
    6cf8:	03 43       	nop			

00006cfa <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    6cfa:	3c 40 e2 4a 	mov	#19170,	r12	;#0x4ae2
    6cfe:	b0 12 9c 79 	call	#31132		;#0x799c

00006d02 <.LVL33>:
    if(idx)
    6d02:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6d04:	c8 23       	jnz	$-110    	;abs 0x6c96

00006d06 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    6d06:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006d0a <.Loc.210.1>:
#endif
                __mcu_sleep();
    6d0a:	03 43       	nop			
    6d0c:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    6d10:	03 43       	nop			

00006d12 <.Loc.213.1>:
                __enable_interrupt();
    6d12:	03 43       	nop			
    6d14:	32 d2       	eint			
    6d16:	03 43       	nop			
    6d18:	be 3f       	jmp	$-130    	;abs 0x6c96

00006d1a <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    6d1a:	0a 15       	pushm	#1,	r10	;16-bit words

00006d1c <.LCFI0>:
    6d1c:	0a 4c       	mov	r12,	r10	;

00006d1e <L0^A>:
    switch (thread->state)
    6d1e:	1c 4c 02 00 	mov	2(r12),	r12	;

00006d22 <.LVL1>:
    6d22:	2c 93       	cmp	#2,	r12	;r3 As==10
    6d24:	35 24       	jz	$+108    	;abs 0x6d90
    6d26:	2c 92       	cmp	#4,	r12	;r2 As==10
    6d28:	56 24       	jz	$+174    	;abs 0x6dd6
    6d2a:	1c 93       	cmp	#1,	r12	;r3 As==01
    6d2c:	02 24       	jz	$+6      	;abs 0x6d32

00006d2e <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    6d2e:	0a 17       	popm	#1,	r10	;16-bit words

00006d30 <.LCFI1>:
    6d30:	30 41       	ret			

00006d32 <.L17>:
    __port_on(3,6);
    6d32:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    6d36:	22 02 

00006d38 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    6d38:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00006d3c <.Loc.14.1>:
    6d3c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6d40:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6d42:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006d46 <.Loc.14.1>:
    6d46:	5c 02       	rlam	#1,	r12	;
    6d48:	0c 5a       	add	r10,	r12	;
    6d4a:	5f 02       	rlam	#1,	r15	;
    6d4c:	0f 5a       	add	r10,	r15	;
    6d4e:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    6d52:	5e 03       	rrum	#1,	r14	;
    6d54:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    6d58:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    6d5c:	b0 12 3a 6b 	call	#27450		;#0x6b3a

00006d60 <.Loc.17.1>:
    __port_off(3,6);
    6d60:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6d64:	22 02 

00006d66 <.LBE5>:
        __port_on(1, 4);
    6d66:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    6d6a:	02 02 

00006d6c <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    6d6c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6d70:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6d72:	c2 4c 6c 51 	mov.b	r12,	&0x516c	;

00006d76 <.Loc.60.1>:
        if(thread->next == thread->entry){
    6d76:	1c 4a 08 00 	mov	8(r10),	r12	;

00006d7a <.Loc.60.1>:
    6d7a:	1c 9a 04 00 	cmp	4(r10),	r12	;
    6d7e:	48 24       	jz	$+146    	;abs 0x6e10

00006d80 <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    6d80:	8c 12       	call	r12		;

00006d82 <.Loc.77.1>:
    6d82:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006d86 <.L8>:
        thread->state = TASK_PRECOMMIT;
    6d86:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00006d8a <.Loc.83.1>:
            __port_off(1, 4);
    6d8a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6d8e:	02 02 

00006d90 <.L2>:
        __port_on(3,5);
    6d90:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6d94:	22 02 

00006d96 <.Loc.87.1>:
        __release_event(thread);
    6d96:	0c 4a       	mov	r10,	r12	;
    6d98:	b0 12 34 6a 	call	#27188		;#0x6a34

00006d9c <.Loc.96.1>:
        thread->next = thread->next_temp;
    6d9c:	1c 4a 06 00 	mov	6(r10),	r12	;

00006da0 <.Loc.96.1>:
    6da0:	8a 4c 08 00 	mov	r12,	8(r10)	;

00006da4 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    6da4:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    6da8:	5d e3       	xor.b	#1,	r13	;r3 As==01
    6daa:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

00006dae <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    6dae:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006db2 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    6db2:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6db6:	0e 00 

00006db8 <.Loc.117.1>:
        __port_off(3,5);
    6db8:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6dbc:	22 02 

00006dbe <.Loc.117.1>:
        __port_on(3,5);
    6dbe:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6dc2:	22 02 

00006dc4 <.Loc.118.1>:
        if (thread->next == NULL)
    6dc4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6dc6:	14 24       	jz	$+42     	;abs 0x6df0

00006dc8 <.L9>:
            thread->state = TASK_READY;
    6dc8:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006dcc <.L12>:
        __port_off(3,5);
    6dcc:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6dd0:	22 02 

00006dd2 <.Loc.142.1>:
}
    6dd2:	0a 17       	popm	#1,	r10	;16-bit words

00006dd4 <.LCFI3>:
    6dd4:	30 41       	ret			

00006dd6 <.L3>:
    6dd6:	1c 4a 08 00 	mov	8(r10),	r12	;

00006dda <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    6dda:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6dde:	0e 00 

00006de0 <.Loc.117.1>:
        __port_off(3,5);
    6de0:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6de4:	22 02 

00006de6 <.Loc.117.1>:
        __port_on(3,5);
    6de6:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6dea:	22 02 

00006dec <.Loc.118.1>:
        if (thread->next == NULL)
    6dec:	0c 93       	cmp	#0,	r12	;r3 As==00
    6dee:	ec 23       	jnz	$-38     	;abs 0x6dc8

00006df0 <.L19>:
            __disable_interrupt();
    6df0:	32 c2       	dint			
    6df2:	03 43       	nop			

00006df4 <.Loc.125.1>:
            if(!__has_events(thread)){
    6df4:	0c 4a       	mov	r10,	r12	;
    6df6:	b0 12 e8 69 	call	#27112		;#0x69e8

00006dfa <.Loc.125.1>:
    6dfa:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6dfc:	12 24       	jz	$+38     	;abs 0x6e22

00006dfe <.Loc.131.1>:
                thread->next = thread->entry;
    6dfe:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    6e02:	08 00 

00006e04 <.Loc.133.1>:
                thread->state = TASK_READY;
    6e04:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006e08 <.Loc.135.1>:
            __enable_interrupt();
    6e08:	03 43       	nop			
    6e0a:	32 d2       	eint			
    6e0c:	03 43       	nop			
    6e0e:	de 3f       	jmp	$-66     	;abs 0x6dcc

00006e10 <.L18>:
            isr_event_t *event = __lock_event(thread);
    6e10:	0c 4a       	mov	r10,	r12	;
    6e12:	b0 12 06 6a 	call	#27142		;#0x6a06

00006e16 <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    6e16:	1d 4a 04 00 	mov	4(r10),	r13	;
    6e1a:	8d 12       	call	r13		;

00006e1c <.LVL11>:
    6e1c:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006e20 <.LBE7>:
    6e20:	b2 3f       	jmp	$-154    	;abs 0x6d86

00006e22 <.L20>:
                __stop_thread(thread);
    6e22:	0c 4a       	mov	r10,	r12	;
    6e24:	b0 12 e0 6b 	call	#27616		;#0x6be0

00006e28 <.Loc.135.1>:
            __enable_interrupt();
    6e28:	03 43       	nop			
    6e2a:	32 d2       	eint			
    6e2c:	03 43       	nop			
    6e2e:	ce 3f       	jmp	$-98     	;abs 0x6dcc

00006e30 <__timers_init>:
    6e30:	b0 12 96 7a 	call	#31382		;#0x7a96

00006e34 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    6e34:	30 41       	ret			

00006e36 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    6e36:	30 41       	ret			

00006e38 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    6e38:	0a 15       	pushm	#1,	r10	;16-bit words

00006e3a <.LCFI0>:
    6e3a:	4a 4c       	mov.b	r12,	r10	;

00006e3c <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    6e3c:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    6e40:	19 24       	jz	$+52     	;abs 0x6e74

00006e42 <.L5>:
    6e42:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    6e46:	0e 24       	jz	$+30     	;abs 0x6e64

00006e48 <.L6>:
    6e48:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    6e4c:	02 24       	jz	$+6      	;abs 0x6e52

00006e4e <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    6e4e:	0a 17       	popm	#1,	r10	;16-bit words

00006e50 <.LCFI1>:
    6e50:	30 41       	ret			

00006e52 <.L10>:
            wkup_timing[i].status = NOT_USED;
    6e52:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

00006e56 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6e56:	4e 43       	clr.b	r14		;
    6e58:	4d 43       	clr.b	r13		;
    6e5a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e5c:	b0 12 58 7b 	call	#31576		;#0x7b58

00006e60 <.Loc.101.1>:
}
    6e60:	0a 17       	popm	#1,	r10	;16-bit words

00006e62 <.LCFI3>:
    6e62:	30 41       	ret			

00006e64 <.L9>:
            wkup_timing[i].status = NOT_USED;
    6e64:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

00006e68 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6e68:	4e 43       	clr.b	r14		;
    6e6a:	4d 43       	clr.b	r13		;
    6e6c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6e6e:	b0 12 58 7b 	call	#31576		;#0x7b58
    6e72:	ea 3f       	jmp	$-42     	;abs 0x6e48

00006e74 <.L8>:
            wkup_timing[i].status = NOT_USED;
    6e74:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

00006e78 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6e78:	4e 43       	clr.b	r14		;
    6e7a:	4d 43       	clr.b	r13		;
    6e7c:	4c 43       	clr.b	r12		;

00006e7e <.LVL9>:
    6e7e:	b0 12 58 7b 	call	#31576		;#0x7b58
    6e82:	df 3f       	jmp	$-64     	;abs 0x6e42

00006e84 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    6e84:	2a 15       	pushm	#3,	r10	;16-bit words

00006e86 <.LCFI5>:
    6e86:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006e8a <.LCFI6>:
    6e8a:	49 43       	clr.b	r9		;
    6e8c:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00006e90 <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    6e90:	0a 49       	mov	r9,	r10	;
    6e92:	5a 06       	rlam	#2,	r10	;
    6e94:	0a 59       	add	r9,	r10	;
    6e96:	5a 02       	rlam	#1,	r10	;
    6e98:	0a 58       	add	r8,	r10	;
    6e9a:	4e 43       	clr.b	r14		;
    6e9c:	4d 49       	mov.b	r9,	r13	;
    6e9e:	0c 41       	mov	r1,	r12	;
    6ea0:	b0 12 54 7d 	call	#32084		;#0x7d54
    6ea4:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6ea8:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6eac:	02 00 
    6eae:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6eb2:	04 00 
    6eb4:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6eb8:	06 00 
    6eba:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6ebe:	08 00 

00006ec0 <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6ec0:	19 53       	inc	r9		;

00006ec2 <.Loc.115.1>:
    6ec2:	39 90 03 00 	cmp	#3,	r9	;
    6ec6:	e4 23       	jnz	$-54     	;abs 0x6e90

00006ec8 <.Loc.120.1>:
    }

}
    6ec8:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006ecc <.LCFI7>:
    6ecc:	28 17       	popm	#3,	r10	;16-bit words

00006ece <.LCFI8>:
    6ece:	30 41       	ret			

00006ed0 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    6ed0:	5a 15       	pushm	#6,	r10	;16-bit words

00006ed2 <.LCFI9>:

    uint8_t i,first = 1;
    6ed2:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006ed4 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6ed4:	4a 43       	clr.b	r10		;
    6ed6:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00006eda <.L40>:
    {

        if (wkup_timing[i].status == USED)
    6eda:	09 4a       	mov	r10,	r9	;
    6edc:	05 4a       	mov	r10,	r5	;
    6ede:	55 06       	rlam	#2,	r5	;
    6ee0:	0c 45       	mov	r5,	r12	;
    6ee2:	0c 5a       	add	r10,	r12	;
    6ee4:	5c 02       	rlam	#1,	r12	;
    6ee6:	0d 4c       	mov	r12,	r13	;
    6ee8:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

00006eec <.Loc.130.1>:
    6eec:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6ef0:	0c 24       	jz	$+26     	;abs 0x6f0a

00006ef2 <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6ef2:	4c 4a       	mov.b	r10,	r12	;
    6ef4:	5c 53       	inc.b	r12		;
    6ef6:	4a 4c       	mov.b	r12,	r10	;

00006ef8 <.LVL19>:
    6ef8:	7c 90 03 00 	cmp.b	#3,	r12	;
    6efc:	ee 23       	jnz	$-34     	;abs 0x6eda

00006efe <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    6efe:	0e 93       	cmp	#0,	r14	;r3 As==00
    6f00:	54 24       	jz	$+170    	;abs 0x6faa

00006f02 <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    6f02:	b0 12 b2 79 	call	#31154		;#0x79b2

00006f06 <.LVL20>:


}
    6f06:	55 17       	popm	#6,	r10	;16-bit words

00006f08 <.LCFI10>:
    6f08:	30 41       	ret			

00006f0a <.L84>:
            if (first)
    6f0a:	16 4d 04 00 	mov	4(r13),	r6	;
    6f0e:	17 4d 06 00 	mov	6(r13),	r7	;

00006f12 <.Loc.133.1>:
    6f12:	0e 93       	cmp	#0,	r14	;r3 As==00
    6f14:	05 24       	jz	$+12     	;abs 0x6f20

00006f16 <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    6f16:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

00006f1a <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    6f1a:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    6f1e:	5c 1c 

00006f20 <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    6f20:	b0 12 54 7a 	call	#31316		;#0x7a54

00006f24 <.Loc.141.1>:
    6f24:	0e 46       	mov	r6,	r14	;
    6f26:	0f 47       	mov	r7,	r15	;
    6f28:	0e 8c       	sub	r12,	r14	;
    6f2a:	0f 7d       	subc	r13,	r15	;

00006f2c <.Loc.141.1>:
    6f2c:	05 5a       	add	r10,	r5	;
    6f2e:	55 02       	rlam	#1,	r5	;
    6f30:	05 58       	add	r8,	r5	;
    6f32:	85 4e 04 00 	mov	r14,	4(r5)	;
    6f36:	85 4f 06 00 	mov	r15,	6(r5)	;

00006f3a <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    6f3a:	4d 43       	clr.b	r13		;
    6f3c:	4c 4a       	mov.b	r10,	r12	;
    6f3e:	b0 12 b8 7a 	call	#31416		;#0x7ab8

00006f42 <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    6f42:	1c 45 04 00 	mov	4(r5),	r12	;
    6f46:	1d 45 06 00 	mov	6(r5),	r13	;
    6f4a:	4b 4a       	mov.b	r10,	r11	;
    6f4c:	5b 53       	inc.b	r11		;
    6f4e:	4a 4b       	mov.b	r11,	r10	;

00006f50 <.Loc.144.1>:
    6f50:	07 4d       	mov	r13,	r7	;
    6f52:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f54:	3b 38       	jl	$+120    	;abs 0x6fcc

00006f56 <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    6f56:	0e 4c       	mov	r12,	r14	;
    6f58:	0e dd       	bis	r13,	r14	;
    6f5a:	0e 93       	cmp	#0,	r14	;r3 As==00
    6f5c:	af 24       	jz	$+352    	;abs 0x70bc

00006f5e <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6f5e:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    6f62:	0e 46       	mov	r6,	r14	;
    6f64:	0f 43       	clr	r15		;

00006f66 <.Loc.155.1>:
    6f66:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f68:	18 34       	jge	$+50     	;abs 0x6f9a

00006f6a <.L50>:
    6f6a:	0e 49       	mov	r9,	r14	;
    6f6c:	5e 06       	rlam	#2,	r14	;
    6f6e:	09 5e       	add	r14,	r9	;
    6f70:	59 02       	rlam	#1,	r9	;
    6f72:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006f76 <.L37>:
                    min_wkup = wkup_timing[i].data;
    6f76:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

00006f7a <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    6f7a:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

00006f7e <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6f7e:	7b 90 03 00 	cmp.b	#3,	r11	;
    6f82:	15 24       	jz	$+44     	;abs 0x6fae

00006f84 <.L74>:
        if (wkup_timing[i].status == USED)
    6f84:	09 4a       	mov	r10,	r9	;
    6f86:	05 4a       	mov	r10,	r5	;
    6f88:	55 06       	rlam	#2,	r5	;
    6f8a:	0c 45       	mov	r5,	r12	;
    6f8c:	0c 5a       	add	r10,	r12	;
    6f8e:	5c 02       	rlam	#1,	r12	;

00006f90 <.Loc.130.1>:
    6f90:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6f94:	41 24       	jz	$+132    	;abs 0x7018

00006f96 <.L91>:
    6f96:	4e 43       	clr.b	r14		;
    6f98:	ac 3f       	jmp	$-166    	;abs 0x6ef2

00006f9a <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6f9a:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f9c:	62 24       	jz	$+198    	;abs 0x7062

00006f9e <.L35>:
    6f9e:	07 4c       	mov	r12,	r7	;
    6fa0:	0c 9e       	cmp	r14,	r12	;
    6fa2:	79 24       	jz	$+244    	;abs 0x7096

00006fa4 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6fa4:	7b 90 03 00 	cmp.b	#3,	r11	;
    6fa8:	ed 23       	jnz	$-36     	;abs 0x6f84

00006faa <.L72>:
    6faa:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

00006fae <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    6fae:	4d 4e       	mov.b	r14,	r13	;
    6fb0:	4c 43       	clr.b	r12		;
    6fb2:	b0 12 a0 7b 	call	#31648		;#0x7ba0

00006fb6 <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    6fb6:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    6fba:	4c 43       	clr.b	r12		;
    6fbc:	b0 12 ae 7b 	call	#31662		;#0x7bae

00006fc0 <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    6fc0:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    6fc4:	b0 12 c6 79 	call	#31174		;#0x79c6

00006fc8 <.Loc.177.1>:
}
    6fc8:	55 17       	popm	#6,	r10	;16-bit words

00006fca <.LCFI12>:
    6fca:	30 41       	ret			

00006fcc <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    6fcc:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    6fd0:	06 43       	clr	r6		;
    6fd2:	06 8e       	sub	r14,	r6	;
    6fd4:	0e 46       	mov	r6,	r14	;
    6fd6:	0f 46       	mov	r6,	r15	;
    6fd8:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006fdc <.Loc.144.1>:
    6fdc:	05 4f       	mov	r15,	r5	;
    6fde:	0f 9d       	cmp	r13,	r15	;
    6fe0:	25 38       	jl	$+76     	;abs 0x702c

00006fe2 <.Loc.144.1>:
    6fe2:	0d 9f       	cmp	r15,	r13	;
    6fe4:	21 24       	jz	$+68     	;abs 0x7028

00006fe6 <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    6fe6:	07 4d       	mov	r13,	r7	;
    6fe8:	0d 9f       	cmp	r15,	r13	;
    6fea:	04 38       	jl	$+10     	;abs 0x6ff4
    6fec:	0f 9d       	cmp	r13,	r15	;
    6fee:	da 23       	jnz	$-74     	;abs 0x6fa4
    6ff0:	0c 96       	cmp	r6,	r12	;
    6ff2:	d8 2f       	jc	$-78     	;abs 0x6fa4

00006ff4 <.L30>:
    6ff4:	0c 49       	mov	r9,	r12	;
    6ff6:	5c 06       	rlam	#2,	r12	;
    6ff8:	09 5c       	add	r12,	r9	;
    6ffa:	59 02       	rlam	#1,	r9	;
    6ffc:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

00007000 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7000:	7b 90 03 00 	cmp.b	#3,	r11	;
    7004:	d2 27       	jz	$-90     	;abs 0x6faa

00007006 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    7006:	09 4a       	mov	r10,	r9	;
    7008:	05 4a       	mov	r10,	r5	;
    700a:	55 06       	rlam	#2,	r5	;
    700c:	0c 45       	mov	r5,	r12	;
    700e:	0c 5a       	add	r10,	r12	;
    7010:	5c 02       	rlam	#1,	r12	;

00007012 <.Loc.130.1>:
    7012:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    7016:	bf 23       	jnz	$-128    	;abs 0x6f96

00007018 <.L27>:
    7018:	0c 45       	mov	r5,	r12	;
    701a:	0c 5a       	add	r10,	r12	;
    701c:	5c 02       	rlam	#1,	r12	;
    701e:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    7022:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    7026:	7c 3f       	jmp	$-262    	;abs 0x6f20

00007028 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    7028:	06 9c       	cmp	r12,	r6	;
    702a:	dd 2f       	jc	$-68     	;abs 0x6fe6

0000702c <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    702c:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    7030:	06 4e       	mov	r14,	r6	;
    7032:	07 43       	clr	r7		;

00007034 <.Loc.146.1>:
    7034:	4e 43       	clr.b	r14		;
    7036:	4f 43       	clr.b	r15		;
    7038:	0e 8c       	sub	r12,	r14	;
    703a:	0f 7d       	subc	r13,	r15	;

0000703c <.Loc.146.1>:
    703c:	05 4f       	mov	r15,	r5	;
    703e:	0f 93       	cmp	#0,	r15	;r3 As==00
    7040:	14 34       	jge	$+42     	;abs 0x706a

00007042 <.L22>:
    7042:	0e 49       	mov	r9,	r14	;
    7044:	5e 06       	rlam	#2,	r14	;
    7046:	09 5e       	add	r14,	r9	;
    7048:	59 02       	rlam	#1,	r9	;
    704a:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000704e <.L28>:
                    min_wkup = -wkup_timing[i].data;
    704e:	4f 43       	clr.b	r15		;
    7050:	0f 8c       	sub	r12,	r15	;
    7052:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

00007056 <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    7056:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000705a <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    705a:	7b 90 03 00 	cmp.b	#3,	r11	;
    705e:	92 23       	jnz	$-218    	;abs 0x6f84
    7060:	a6 3f       	jmp	$-178    	;abs 0x6fae

00007062 <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7062:	07 4c       	mov	r12,	r7	;
    7064:	0c 9e       	cmp	r14,	r12	;
    7066:	9b 2f       	jc	$-200    	;abs 0x6f9e
    7068:	80 3f       	jmp	$-254    	;abs 0x6f6a

0000706a <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    706a:	0f 93       	cmp	#0,	r15	;r3 As==00
    706c:	03 20       	jnz	$+8      	;abs 0x7074
    706e:	05 4e       	mov	r14,	r5	;
    7070:	0e 96       	cmp	r6,	r14	;
    7072:	e7 2b       	jnc	$-48     	;abs 0x7042

00007074 <.L47>:
    7074:	06 9e       	cmp	r14,	r6	;
    7076:	96 23       	jnz	$-210    	;abs 0x6fa4
    7078:	0f 93       	cmp	#0,	r15	;r3 As==00
    707a:	94 23       	jnz	$-214    	;abs 0x6fa4

0000707c <.Loc.146.1>:
    707c:	0e 49       	mov	r9,	r14	;
    707e:	5e 06       	rlam	#2,	r14	;
    7080:	09 5e       	add	r14,	r9	;
    7082:	59 02       	rlam	#1,	r9	;
    7084:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00007088 <.Loc.146.1>:
    7088:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000708c <.Loc.146.1>:
    708c:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    7090:	36 1c 
    7092:	dd 2b       	jnc	$-68     	;abs 0x704e
    7094:	0e 3c       	jmp	$+30     	;abs 0x70b2

00007096 <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7096:	0d 9f       	cmp	r15,	r13	;
    7098:	85 23       	jnz	$-244    	;abs 0x6fa4

0000709a <.Loc.155.1>:
    709a:	0e 49       	mov	r9,	r14	;
    709c:	5e 06       	rlam	#2,	r14	;
    709e:	09 5e       	add	r14,	r9	;
    70a0:	59 02       	rlam	#1,	r9	;
    70a2:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

000070a6 <.Loc.155.1>:
    70a6:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

000070aa <.Loc.155.1>:
    70aa:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    70ae:	36 1c 
    70b0:	62 2b       	jnc	$-314    	;abs 0x6f76

000070b2 <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    70b2:	7b 90 03 00 	cmp.b	#3,	r11	;
    70b6:	66 23       	jnz	$-306    	;abs 0x6f84

000070b8 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    70b8:	0e 4f       	mov	r15,	r14	;

000070ba <.Loc.164.1>:
    if (!first)
    70ba:	79 3f       	jmp	$-268    	;abs 0x6fae

000070bc <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    70bc:	7b 90 03 00 	cmp.b	#3,	r11	;
    70c0:	74 27       	jz	$-278    	;abs 0x6faa

000070c2 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    70c2:	09 4a       	mov	r10,	r9	;
    70c4:	05 4a       	mov	r10,	r5	;
    70c6:	55 06       	rlam	#2,	r5	;
    70c8:	0c 45       	mov	r5,	r12	;
    70ca:	0c 5a       	add	r10,	r12	;
    70cc:	5c 02       	rlam	#1,	r12	;

000070ce <.Loc.130.1>:
    70ce:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    70d2:	0f 23       	jnz	$-480    	;abs 0x6ef2
    70d4:	a1 3f       	jmp	$-188    	;abs 0x7018

000070d6 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    70d6:	4a 15       	pushm	#5,	r10	;16-bit words

000070d8 <.LCFI14>:
    70d8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000070dc <.LCFI15>:
    70dc:	47 4c       	mov.b	r12,	r7	;
    70de:	09 4d       	mov	r13,	r9	;

000070e0 <.LBB12>:
    70e0:	46 43       	clr.b	r6		;
    70e2:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

000070e6 <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    70e6:	0a 46       	mov	r6,	r10	;
    70e8:	5a 06       	rlam	#2,	r10	;
    70ea:	0a 56       	add	r6,	r10	;
    70ec:	5a 02       	rlam	#1,	r10	;
    70ee:	0a 58       	add	r8,	r10	;
    70f0:	4e 43       	clr.b	r14		;
    70f2:	4d 46       	mov.b	r6,	r13	;
    70f4:	0c 41       	mov	r1,	r12	;
    70f6:	b0 12 54 7d 	call	#32084		;#0x7d54
    70fa:	aa 41 00 00 	mov	@r1,	0(r10)	;
    70fe:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7102:	02 00 
    7104:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    7108:	04 00 
    710a:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    710e:	06 00 
    7110:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7114:	08 00 

00007116 <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7116:	16 53       	inc	r6		;

00007118 <.Loc.115.1>:
    7118:	36 90 03 00 	cmp	#3,	r6	;
    711c:	e4 23       	jnz	$-54     	;abs 0x70e6

0000711e <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    711e:	b0 12 b2 79 	call	#31154		;#0x79b2

00007122 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    7122:	0e 49       	mov	r9,	r14	;
    7124:	0f 43       	clr	r15		;

00007126 <.Loc.194.1>:
    7126:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    712a:	22 24       	jz	$+70     	;abs 0x7170

0000712c <.Loc.192.1>:
    712c:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    7130:	49 24       	jz	$+148    	;abs 0x71c4

00007132 <.Loc.192.1>:
    7132:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    7136:	49 24       	jz	$+148    	;abs 0x71ca

00007138 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    7138:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    713c:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

00007140 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    7140:	4d 43       	clr.b	r13		;
    7142:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7144:	b0 12 b8 7a 	call	#31416		;#0x7ab8

00007148 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    7148:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

0000714c <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    714c:	4e 47       	mov.b	r7,	r14	;
    714e:	4d 43       	clr.b	r13		;
    7150:	7c 40 03 00 	mov.b	#3,	r12	;
    7154:	b0 12 0c 7b 	call	#31500		;#0x7b0c

00007158 <.Loc.219.1>:
        refresh_wkup_timers();
    7158:	b0 12 d0 6e 	call	#28368		;#0x6ed0

0000715c <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    715c:	4c 43       	clr.b	r12		;
    715e:	b0 12 bc 7b 	call	#31676		;#0x7bbc

00007162 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    7162:	4c 43       	clr.b	r12		;
    7164:	b0 12 10 7d 	call	#32016		;#0x7d10

00007168 <.Loc.224.1>:
}
    7168:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000716c <.LCFI16>:
    716c:	46 17       	popm	#5,	r10	;16-bit words

0000716e <.LCFI17>:
    716e:	30 41       	ret			

00007170 <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7170:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

00007174 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    7174:	0d 4a       	mov	r10,	r13	;

00007176 <.L95>:
            wkup_timing[i].data = ticks;
    7176:	0c 4d       	mov	r13,	r12	;
    7178:	5c 06       	rlam	#2,	r12	;
    717a:	0c 5d       	add	r13,	r12	;
    717c:	5c 02       	rlam	#1,	r12	;
    717e:	08 5c       	add	r12,	r8	;
    7180:	88 4e 04 00 	mov	r14,	4(r8)	;
    7184:	88 4f 06 00 	mov	r15,	6(r8)	;

00007188 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    7188:	4d 43       	clr.b	r13		;
    718a:	4c 4a       	mov.b	r10,	r12	;
    718c:	b0 12 b8 7a 	call	#31416		;#0x7ab8

00007190 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    7190:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00007194 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    7194:	4e 47       	mov.b	r7,	r14	;
    7196:	4d 43       	clr.b	r13		;
    7198:	4c 4a       	mov.b	r10,	r12	;
    719a:	b0 12 0c 7b 	call	#31500		;#0x7b0c

0000719e <.Loc.200.1>:
            wkup_timing[i].status = USED;
    719e:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

000071a2 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    71a2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    71a4:	4d 43       	clr.b	r13		;
    71a6:	4c 4a       	mov.b	r10,	r12	;
    71a8:	b0 12 58 7b 	call	#31576		;#0x7b58

000071ac <.Loc.202.1>:
        refresh_wkup_timers();
    71ac:	b0 12 d0 6e 	call	#28368		;#0x6ed0

000071b0 <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    71b0:	4c 43       	clr.b	r12		;
    71b2:	b0 12 bc 7b 	call	#31676		;#0x7bbc

000071b6 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    71b6:	4c 43       	clr.b	r12		;
    71b8:	b0 12 10 7d 	call	#32016		;#0x7d10

000071bc <.Loc.224.1>:
}
    71bc:	31 50 0a 00 	add	#10,	r1	;#0x000a

000071c0 <.LCFI19>:
    71c0:	46 17       	popm	#5,	r10	;16-bit words

000071c2 <.LCFI20>:
    71c2:	30 41       	ret			

000071c4 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    71c4:	5a 43       	mov.b	#1,	r10	;r3 As==01

000071c6 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    71c6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71c8:	d6 3f       	jmp	$-82     	;abs 0x7176

000071ca <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    71ca:	6a 43       	mov.b	#2,	r10	;r3 As==10

000071cc <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    71cc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    71ce:	d3 3f       	jmp	$-88     	;abs 0x7176

000071d0 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    71d0:	4d 4c       	mov.b	r12,	r13	;

000071d2 <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    71d2:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    71d6:	14 24       	jz	$+42     	;abs 0x7200

000071d8 <.Loc.237.1>:
    71d8:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    71dc:	14 24       	jz	$+42     	;abs 0x7206

000071de <.Loc.237.1>:
    71de:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    71e2:	01 24       	jz	$+4      	;abs 0x71e6

000071e4 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    71e4:	30 41       	ret			

000071e6 <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    71e6:	6c 43       	mov.b	#2,	r12	;r3 As==10

000071e8 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    71e8:	6e 43       	mov.b	#2,	r14	;r3 As==10

000071ea <.L102>:
            xpr_timing[i].status = NOT_USED;
    71ea:	0d 4e       	mov	r14,	r13	;

000071ec <.LVL71>:
    71ec:	5d 06       	rlam	#2,	r13	;
    71ee:	0d 5e       	add	r14,	r13	;
    71f0:	5d 02       	rlam	#1,	r13	;
    71f2:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

000071f6 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    71f6:	4e 43       	clr.b	r14		;
    71f8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    71fa:	b0 12 58 7b 	call	#31576		;#0x7b58

000071fe <.Loc.242.1>:
}
    71fe:	30 41       	ret			

00007200 <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7200:	4c 43       	clr.b	r12		;

00007202 <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    7202:	4e 43       	clr.b	r14		;
    7204:	f2 3f       	jmp	$-26     	;abs 0x71ea

00007206 <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7206:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007208 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    7208:	5e 43       	mov.b	#1,	r14	;r3 As==01
    720a:	ef 3f       	jmp	$-32     	;abs 0x71ea

0000720c <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    720c:	2a 15       	pushm	#3,	r10	;16-bit words

0000720e <.LCFI22>:
    720e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007212 <.LCFI23>:
    7212:	49 43       	clr.b	r9		;
    7214:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

00007218 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    7218:	0a 49       	mov	r9,	r10	;
    721a:	5a 06       	rlam	#2,	r10	;
    721c:	0a 59       	add	r9,	r10	;
    721e:	5a 02       	rlam	#1,	r10	;
    7220:	0a 58       	add	r8,	r10	;
    7222:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7224:	4d 49       	mov.b	r9,	r13	;
    7226:	0c 41       	mov	r1,	r12	;
    7228:	b0 12 54 7d 	call	#32084		;#0x7d54
    722c:	aa 41 00 00 	mov	@r1,	0(r10)	;
    7230:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7234:	02 00 
    7236:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    723a:	04 00 
    723c:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7240:	06 00 
    7242:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7246:	08 00 

00007248 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7248:	19 53       	inc	r9		;

0000724a <.Loc.252.1>:
    724a:	39 90 03 00 	cmp	#3,	r9	;
    724e:	e4 23       	jnz	$-54     	;abs 0x7218

00007250 <.Loc.257.1>:
    }

}
    7250:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007254 <.LCFI24>:
    7254:	28 17       	popm	#3,	r10	;16-bit words

00007256 <.LCFI25>:
    7256:	30 41       	ret			

00007258 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    7258:	4a 15       	pushm	#5,	r10	;16-bit words

0000725a <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    725a:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    725e:	62 24       	jz	$+198    	;abs 0x7324

00007260 <.Loc.265.1>:
    7260:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    7264:	07 24       	jz	$+16     	;abs 0x7274

00007266 <.Loc.265.1>:
    7266:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    726a:	15 25       	jz	$+556    	;abs 0x7496

0000726c <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    726c:	b0 12 f2 79 	call	#31218		;#0x79f2

00007270 <.Loc.313.1>:

}
    7270:	46 17       	popm	#5,	r10	;16-bit words

00007272 <.LCFI27>:
    7272:	30 41       	ret			

00007274 <.L160>:
            if (first)
    7274:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    7278:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000727c <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    727c:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

00007280 <.LVL89>:
    7280:	08 46       	mov	r6,	r8	;
    7282:	09 47       	mov	r7,	r9	;

00007284 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    7284:	b0 12 54 7a 	call	#31316		;#0x7a54

00007288 <.Loc.278.1>:
    7288:	0e 46       	mov	r6,	r14	;
    728a:	0f 47       	mov	r7,	r15	;
    728c:	0e 8c       	sub	r12,	r14	;
    728e:	0f 7d       	subc	r13,	r15	;

00007290 <.Loc.278.1>:
    7290:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    7294:	82 4f 26 1c 	mov	r15,	&0x1c26	;

00007298 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    7298:	6d 43       	mov.b	#2,	r13	;r3 As==10
    729a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    729c:	b0 12 b8 7a 	call	#31416		;#0x7ab8

000072a0 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    72a0:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    72a4:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

000072a8 <.Loc.281.1>:
    72a8:	4e 43       	clr.b	r14		;
    72aa:	0e 9c       	cmp	r12,	r14	;
    72ac:	a2 34       	jge	$+326    	;abs 0x73f2

000072ae <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    72ae:	0c 99       	cmp	r9,	r12	;
    72b0:	04 38       	jl	$+10     	;abs 0x72ba

000072b2 <.L170>:
    72b2:	09 9c       	cmp	r12,	r9	;
    72b4:	e5 20       	jnz	$+460    	;abs 0x7480
    72b6:	0d 98       	cmp	r8,	r13	;
    72b8:	e3 2c       	jc	$+456    	;abs 0x7480

000072ba <.L152>:
    72ba:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

000072be <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    72be:	08 4d       	mov	r13,	r8	;
    72c0:	09 4c       	mov	r12,	r9	;

000072c2 <.L117>:
        if (xpr_timing[i].status == USED)
    72c2:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    72c6:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

000072ca <.Loc.268.1>:
    72ca:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    72ce:	1d 20       	jnz	$+60     	;abs 0x730a

000072d0 <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    72d0:	b0 12 54 7a 	call	#31316		;#0x7a54

000072d4 <.Loc.278.1>:
    72d4:	0e 46       	mov	r6,	r14	;
    72d6:	0f 47       	mov	r7,	r15	;
    72d8:	0e 8c       	sub	r12,	r14	;
    72da:	0f 7d       	subc	r13,	r15	;

000072dc <.Loc.278.1>:
    72dc:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    72e0:	82 4f 30 1c 	mov	r15,	&0x1c30	;

000072e4 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    72e4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    72e6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    72e8:	b0 12 b8 7a 	call	#31416		;#0x7ab8

000072ec <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    72ec:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    72f0:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

000072f4 <.Loc.281.1>:
    72f4:	4e 43       	clr.b	r14		;
    72f6:	0e 9c       	cmp	r12,	r14	;
    72f8:	4c 34       	jge	$+154    	;abs 0x7392

000072fa <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    72fa:	0c 99       	cmp	r9,	r12	;
    72fc:	76 38       	jl	$+238    	;abs 0x73ea

000072fe <.L168>:
    72fe:	09 9c       	cmp	r12,	r9	;
    7300:	02 20       	jnz	$+6      	;abs 0x7306
    7302:	0d 98       	cmp	r8,	r13	;
    7304:	72 28       	jnc	$+230    	;abs 0x73ea

00007306 <.L139>:
    7306:	08 9d       	cmp	r13,	r8	;
    7308:	d8 24       	jz	$+434    	;abs 0x74ba

0000730a <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    730a:	4d 4a       	mov.b	r10,	r13	;
    730c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    730e:	b0 12 a0 7b 	call	#31648		;#0x7ba0

00007312 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    7312:	0d 48       	mov	r8,	r13	;
    7314:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7316:	b0 12 ae 7b 	call	#31662		;#0x7bae

0000731a <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    731a:	0c 48       	mov	r8,	r12	;
    731c:	b0 12 dc 79 	call	#31196		;#0x79dc

00007320 <.Loc.313.1>:
}
    7320:	46 17       	popm	#5,	r10	;16-bit words

00007322 <.LCFI29>:
    7322:	30 41       	ret			

00007324 <.L159>:
            if (first)
    7324:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    7328:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

0000732c <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    732c:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

00007330 <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    7330:	b0 12 54 7a 	call	#31316		;#0x7a54

00007334 <.LVL105>:
    7334:	0e 48       	mov	r8,	r14	;
    7336:	0f 49       	mov	r9,	r15	;
    7338:	0e 8c       	sub	r12,	r14	;
    733a:	0f 7d       	subc	r13,	r15	;

0000733c <.Loc.278.1>:
    733c:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    7340:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

00007344 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    7344:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7346:	4c 43       	clr.b	r12		;
    7348:	b0 12 b8 7a 	call	#31416		;#0x7ab8

0000734c <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    734c:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    7350:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00007354 <.Loc.281.1>:
    7354:	4e 43       	clr.b	r14		;
    7356:	0e 9c       	cmp	r12,	r14	;
    7358:	74 34       	jge	$+234    	;abs 0x7442

0000735a <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    735a:	0c 99       	cmp	r9,	r12	;
    735c:	0c 34       	jge	$+26     	;abs 0x7376

0000735e <.L151>:
    735e:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

00007362 <.L119>:
        if (xpr_timing[i].status == USED)
    7362:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    7366:	ab 23       	jnz	$-168    	;abs 0x72be

00007368 <.Loc.271.1>:
            if (first)
    7368:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    736c:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00007370 <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    7370:	08 4d       	mov	r13,	r8	;
    7372:	09 4c       	mov	r12,	r9	;
    7374:	87 3f       	jmp	$-240    	;abs 0x7284

00007376 <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7376:	09 9c       	cmp	r12,	r9	;
    7378:	02 20       	jnz	$+6      	;abs 0x737e
    737a:	0d 98       	cmp	r8,	r13	;
    737c:	f0 2b       	jnc	$-30     	;abs 0x735e

0000737e <.L114>:
    737e:	0d 98       	cmp	r8,	r13	;
    7380:	93 24       	jz	$+296    	;abs 0x74a8

00007382 <.L118>:
        if (xpr_timing[i].status == USED)
    7382:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    7386:	9d 23       	jnz	$-196    	;abs 0x72c2

00007388 <.Loc.271.1>:
            if (first)
    7388:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    738c:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    7390:	79 3f       	jmp	$-268    	;abs 0x7284

00007392 <.L162>:
            if (xpr_timing[i].data <= 0)
    7392:	0c 93       	cmp	#0,	r12	;r3 As==00
    7394:	02 20       	jnz	$+6      	;abs 0x739a
    7396:	0d 93       	cmp	#0,	r13	;r3 As==00
    7398:	b0 23       	jnz	$-158    	;abs 0x72fa

0000739a <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    739a:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    739e:	b0 12 50 6c 	call	#27728		;#0x6c50
    73a2:	b0 12 f6 6b 	call	#27638		;#0x6bf6

000073a6 <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    73a6:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

000073aa <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    73aa:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    73ae:	18 1c 
    73b0:	8e 24       	jz	$+286    	;abs 0x74ce

000073b2 <.Loc.237.1>:
    73b2:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    73b6:	91 24       	jz	$+292    	;abs 0x74da

000073b8 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    73b8:	6c 43       	mov.b	#2,	r12	;r3 As==10

000073ba <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    73ba:	6e 43       	mov.b	#2,	r14	;r3 As==10

000073bc <.L136>:
            xpr_timing[i].status = NOT_USED;
    73bc:	0d 4e       	mov	r14,	r13	;
    73be:	5d 06       	rlam	#2,	r13	;
    73c0:	0d 5e       	add	r14,	r13	;
    73c2:	5d 02       	rlam	#1,	r13	;
    73c4:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

000073c8 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    73c8:	4e 43       	clr.b	r14		;
    73ca:	6d 43       	mov.b	#2,	r13	;r3 As==10
    73cc:	b0 12 58 7b 	call	#31576		;#0x7b58

000073d0 <.LBE18>:
            if (xpr_timing[i].data > 0)
    73d0:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    73d4:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

000073d8 <.Loc.292.1>:
    73d8:	4e 43       	clr.b	r14		;
    73da:	0e 9c       	cmp	r12,	r14	;
    73dc:	8e 3b       	jl	$-226    	;abs 0x72fa
    73de:	0c 93       	cmp	#0,	r12	;r3 As==00
    73e0:	94 23       	jnz	$-214    	;abs 0x730a
    73e2:	0d 93       	cmp	#0,	r13	;r3 As==00
    73e4:	92 27       	jz	$-218    	;abs 0x730a

000073e6 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    73e6:	0c 99       	cmp	r9,	r12	;
    73e8:	8a 37       	jge	$-234    	;abs 0x72fe

000073ea <.L154>:
    73ea:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

000073ee <.LVL117>:
    if (!first)
    73ee:	08 4d       	mov	r13,	r8	;
    73f0:	8c 3f       	jmp	$-230    	;abs 0x730a

000073f2 <.L161>:
            if (xpr_timing[i].data <= 0)
    73f2:	0c 93       	cmp	#0,	r12	;r3 As==00
    73f4:	02 20       	jnz	$+6      	;abs 0x73fa
    73f6:	0d 93       	cmp	#0,	r13	;r3 As==00
    73f8:	5a 23       	jnz	$-330    	;abs 0x72ae

000073fa <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    73fa:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    73fe:	b0 12 50 6c 	call	#27728		;#0x6c50
    7402:	b0 12 f6 6b 	call	#27638		;#0x6bf6

00007406 <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    7406:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    740a:	22 1c 
    740c:	63 24       	jz	$+200    	;abs 0x74d4

0000740e <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    740e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007410 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7410:	5e 43       	mov.b	#1,	r14	;r3 As==01

00007412 <.L131>:
            xpr_timing[i].status = NOT_USED;
    7412:	0d 4e       	mov	r14,	r13	;
    7414:	5d 06       	rlam	#2,	r13	;
    7416:	0d 5e       	add	r14,	r13	;
    7418:	5d 02       	rlam	#1,	r13	;
    741a:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000741e <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    741e:	4e 43       	clr.b	r14		;
    7420:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7422:	b0 12 58 7b 	call	#31576		;#0x7b58

00007426 <.LVL122>:
            if (xpr_timing[i].data > 0)
    7426:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    742a:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

0000742e <.Loc.292.1>:
    742e:	4e 43       	clr.b	r14		;
    7430:	0e 9c       	cmp	r12,	r14	;
    7432:	3d 3b       	jl	$-388    	;abs 0x72ae
    7434:	0c 93       	cmp	#0,	r12	;r3 As==00
    7436:	45 23       	jnz	$-372    	;abs 0x72c2
    7438:	0d 93       	cmp	#0,	r13	;r3 As==00
    743a:	43 27       	jz	$-376    	;abs 0x72c2

0000743c <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    743c:	0c 99       	cmp	r9,	r12	;
    743e:	3d 3b       	jl	$-388    	;abs 0x72ba
    7440:	38 3f       	jmp	$-398    	;abs 0x72b2

00007442 <.L164>:
            if (xpr_timing[i].data <= 0)
    7442:	0c 93       	cmp	#0,	r12	;r3 As==00
    7444:	02 20       	jnz	$+6      	;abs 0x744a
    7446:	0d 93       	cmp	#0,	r13	;r3 As==00
    7448:	88 23       	jnz	$-238    	;abs 0x735a

0000744a <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    744a:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    744e:	b0 12 50 6c 	call	#27728		;#0x6c50
    7452:	b0 12 f6 6b 	call	#27638		;#0x6bf6

00007456 <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    7456:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

0000745a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    745a:	4e 43       	clr.b	r14		;
    745c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    745e:	4c 43       	clr.b	r12		;
    7460:	b0 12 58 7b 	call	#31576		;#0x7b58

00007464 <.LVL126>:
            if (xpr_timing[i].data > 0)
    7464:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    7468:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

0000746c <.Loc.292.1>:
    746c:	4e 43       	clr.b	r14		;
    746e:	0e 9c       	cmp	r12,	r14	;
    7470:	74 3b       	jl	$-278    	;abs 0x735a
    7472:	0c 93       	cmp	#0,	r12	;r3 As==00
    7474:	86 23       	jnz	$-242    	;abs 0x7382
    7476:	0d 93       	cmp	#0,	r13	;r3 As==00
    7478:	84 27       	jz	$-246    	;abs 0x7382

0000747a <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    747a:	0c 99       	cmp	r9,	r12	;
    747c:	70 3b       	jl	$-286    	;abs 0x735e
    747e:	7b 3f       	jmp	$-264    	;abs 0x7376

00007480 <.L128>:
    7480:	08 9d       	cmp	r13,	r8	;
    7482:	1f 23       	jnz	$-448    	;abs 0x72c2
    7484:	09 9c       	cmp	r12,	r9	;
    7486:	1d 23       	jnz	$-452    	;abs 0x72c2

00007488 <.Loc.294.1>:
    7488:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

0000748c <.Loc.294.1>:
    748c:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    7490:	18 2f       	jc	$-462    	;abs 0x72c2
    7492:	0a 4e       	mov	r14,	r10	;

00007494 <.LVL128>:
    7494:	14 3f       	jmp	$-470    	;abs 0x72be

00007496 <.L143>:
            if (first)
    7496:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    749a:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000749e <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    749e:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

000074a2 <.LVL131>:
    74a2:	08 46       	mov	r6,	r8	;
    74a4:	09 47       	mov	r7,	r9	;
    74a6:	14 3f       	jmp	$-470    	;abs 0x72d0

000074a8 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    74a8:	0c 99       	cmp	r9,	r12	;
    74aa:	6b 23       	jnz	$-296    	;abs 0x7382

000074ac <.Loc.294.1>:
    74ac:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

000074b0 <.Loc.294.1>:
    74b0:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    74b4:	66 2f       	jc	$-306    	;abs 0x7382
    74b6:	0a 4e       	mov	r14,	r10	;

000074b8 <.LVL133>:
    74b8:	54 3f       	jmp	$-342    	;abs 0x7362

000074ba <.L163>:
    74ba:	09 9c       	cmp	r12,	r9	;
    74bc:	26 23       	jnz	$-434    	;abs 0x730a

000074be <.Loc.294.1>:
    74be:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

000074c2 <.Loc.294.1>:
    74c2:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    74c6:	21 2f       	jc	$-444    	;abs 0x730a
    74c8:	0a 4c       	mov	r12,	r10	;

000074ca <.LVL135>:
    if (!first)
    74ca:	08 4d       	mov	r13,	r8	;
    74cc:	1e 3f       	jmp	$-450    	;abs 0x730a

000074ce <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    74ce:	4c 43       	clr.b	r12		;

000074d0 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    74d0:	4e 43       	clr.b	r14		;
    74d2:	74 3f       	jmp	$-278    	;abs 0x73bc

000074d4 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    74d4:	4c 43       	clr.b	r12		;

000074d6 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    74d6:	4e 43       	clr.b	r14		;
    74d8:	9c 3f       	jmp	$-198    	;abs 0x7412

000074da <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    74da:	5c 43       	mov.b	#1,	r12	;r3 As==01

000074dc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    74dc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    74de:	6e 3f       	jmp	$-290    	;abs 0x73bc

000074e0 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    74e0:	5a 15       	pushm	#6,	r10	;16-bit words

000074e2 <.LCFI31>:
    74e2:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000074e6 <.LCFI32>:
    74e6:	47 4c       	mov.b	r12,	r7	;
    74e8:	08 4d       	mov	r13,	r8	;
    74ea:	06 4e       	mov	r14,	r6	;

000074ec <.LBB26>:
    74ec:	45 43       	clr.b	r5		;
    74ee:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

000074f2 <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    74f2:	0a 45       	mov	r5,	r10	;
    74f4:	5a 06       	rlam	#2,	r10	;
    74f6:	0a 55       	add	r5,	r10	;
    74f8:	5a 02       	rlam	#1,	r10	;
    74fa:	0a 59       	add	r9,	r10	;
    74fc:	6e 43       	mov.b	#2,	r14	;r3 As==10
    74fe:	4d 45       	mov.b	r5,	r13	;
    7500:	0c 41       	mov	r1,	r12	;
    7502:	b0 12 54 7d 	call	#32084		;#0x7d54
    7506:	aa 41 00 00 	mov	@r1,	0(r10)	;
    750a:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    750e:	02 00 
    7510:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    7514:	04 00 
    7516:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    751a:	06 00 
    751c:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7520:	08 00 

00007522 <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7522:	15 53       	inc	r5		;

00007524 <.Loc.252.1>:
    7524:	35 90 03 00 	cmp	#3,	r5	;
    7528:	e4 23       	jnz	$-54     	;abs 0x74f2

0000752a <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    752a:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    752e:	1d 24       	jz	$+60     	;abs 0x756a

00007530 <.Loc.324.1>:
    7530:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    7534:	4e 24       	jz	$+158    	;abs 0x75d2

00007536 <.Loc.324.1>:
    7536:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    753a:	4e 24       	jz	$+158    	;abs 0x75d8

0000753c <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    753c:	0e 48       	mov	r8,	r14	;
    753e:	0f 46       	mov	r6,	r15	;
    7540:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7542:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7544:	b0 12 b8 7a 	call	#31416		;#0x7ab8

00007548 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    7548:	4e 47       	mov.b	r7,	r14	;
    754a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    754c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    754e:	b0 12 0c 7b 	call	#31500		;#0x7b0c

00007552 <.Loc.349.1>:
        refresh_xpr_timers();
    7552:	b0 12 58 72 	call	#29272		;#0x7258

00007556 <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    7556:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7558:	b0 12 bc 7b 	call	#31676		;#0x7bbc

0000755c <.Loc.353.1>:
    _pers_timer_commit(XPR);
    755c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    755e:	b0 12 10 7d 	call	#32016		;#0x7d10

00007562 <.Loc.354.1>:
}
    7562:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007566 <.LCFI33>:
    7566:	55 17       	popm	#6,	r10	;16-bit words

00007568 <.LCFI34>:
    7568:	30 41       	ret			

0000756a <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    756a:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000756e <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    756e:	05 4a       	mov	r10,	r5	;

00007570 <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    7570:	b0 12 54 7a 	call	#31316		;#0x7a54

00007574 <.Loc.328.1>:
    7574:	0e 45       	mov	r5,	r14	;
    7576:	5e 06       	rlam	#2,	r14	;
    7578:	0e 55       	add	r5,	r14	;
    757a:	5e 02       	rlam	#1,	r14	;
    757c:	09 5e       	add	r14,	r9	;

0000757e <.Loc.328.1>:
    757e:	0c 58       	add	r8,	r12	;
    7580:	89 4c 04 00 	mov	r12,	4(r9)	;
    7584:	0d 66       	addc	r6,	r13	;
    7586:	89 4d 06 00 	mov	r13,	6(r9)	;

0000758a <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    758a:	b0 12 54 7a 	call	#31316		;#0x7a54

0000758e <.Loc.329.1>:
    758e:	0e 4c       	mov	r12,	r14	;
    7590:	0e 58       	add	r8,	r14	;
    7592:	0f 4d       	mov	r13,	r15	;
    7594:	0f 66       	addc	r6,	r15	;
    7596:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7598:	4c 4a       	mov.b	r10,	r12	;
    759a:	b0 12 b8 7a 	call	#31416		;#0x7ab8

0000759e <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    759e:	c9 47 02 00 	mov.b	r7,	2(r9)	;

000075a2 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    75a2:	4e 47       	mov.b	r7,	r14	;
    75a4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    75a6:	4c 4a       	mov.b	r10,	r12	;
    75a8:	b0 12 0c 7b 	call	#31500		;#0x7b0c

000075ac <.Loc.332.1>:
            xpr_timing[i].status = USED;
    75ac:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

000075b0 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    75b0:	5e 43       	mov.b	#1,	r14	;r3 As==01
    75b2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    75b4:	4c 4a       	mov.b	r10,	r12	;
    75b6:	b0 12 58 7b 	call	#31576		;#0x7b58

000075ba <.Loc.334.1>:
        refresh_xpr_timers();
    75ba:	b0 12 58 72 	call	#29272		;#0x7258

000075be <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    75be:	6c 43       	mov.b	#2,	r12	;r3 As==10
    75c0:	b0 12 bc 7b 	call	#31676		;#0x7bbc

000075c4 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    75c4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    75c6:	b0 12 10 7d 	call	#32016		;#0x7d10

000075ca <.Loc.354.1>:
}
    75ca:	31 50 0a 00 	add	#10,	r1	;#0x000a

000075ce <.LCFI36>:
    75ce:	55 17       	popm	#6,	r10	;16-bit words

000075d0 <.LCFI37>:
    75d0:	30 41       	ret			

000075d2 <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    75d2:	5a 43       	mov.b	#1,	r10	;r3 As==01

000075d4 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    75d4:	55 43       	mov.b	#1,	r5	;r3 As==01
    75d6:	cc 3f       	jmp	$-102    	;abs 0x7570

000075d8 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    75d8:	6a 43       	mov.b	#2,	r10	;r3 As==10

000075da <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    75da:	65 43       	mov.b	#2,	r5	;r3 As==10
    75dc:	c9 3f       	jmp	$-108    	;abs 0x7570

000075de <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    75de:	3a 15       	pushm	#4,	r10	;16-bit words

000075e0 <.LCFI39>:
    75e0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000075e4 <.LCFI40>:
    75e4:	47 4c       	mov.b	r12,	r7	;

000075e6 <.LBB34>:
    75e6:	49 43       	clr.b	r9		;
    75e8:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

000075ec <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    75ec:	0a 49       	mov	r9,	r10	;
    75ee:	5a 06       	rlam	#2,	r10	;
    75f0:	0a 59       	add	r9,	r10	;
    75f2:	5a 02       	rlam	#1,	r10	;
    75f4:	0a 58       	add	r8,	r10	;
    75f6:	6e 43       	mov.b	#2,	r14	;r3 As==10
    75f8:	4d 49       	mov.b	r9,	r13	;
    75fa:	0c 41       	mov	r1,	r12	;
    75fc:	b0 12 54 7d 	call	#32084		;#0x7d54
    7600:	aa 41 00 00 	mov	@r1,	0(r10)	;
    7604:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7608:	02 00 
    760a:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    760e:	04 00 
    7610:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7614:	06 00 
    7616:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    761a:	08 00 

0000761c <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    761c:	19 53       	inc	r9		;

0000761e <.Loc.252.1>:
    761e:	39 90 03 00 	cmp	#3,	r9	;
    7622:	e4 23       	jnz	$-54     	;abs 0x75ec

00007624 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    7624:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    7628:	12 24       	jz	$+38     	;abs 0x764e

0000762a <.Loc.237.1>:
    762a:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    762e:	27 24       	jz	$+80     	;abs 0x767e

00007630 <.Loc.237.1>:
    7630:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    7634:	27 24       	jz	$+80     	;abs 0x7684

00007636 <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    7636:	b0 12 58 72 	call	#29272		;#0x7258

0000763a <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    763a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    763c:	b0 12 bc 7b 	call	#31676		;#0x7bbc

00007640 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    7640:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7642:	b0 12 10 7d 	call	#32016		;#0x7d10

00007646 <.Loc.371.1>:

}
    7646:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000764a <.LCFI41>:
    764a:	37 17       	popm	#4,	r10	;16-bit words

0000764c <.LCFI42>:
    764c:	30 41       	ret			

0000764e <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    764e:	4c 43       	clr.b	r12		;

00007650 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7650:	4e 43       	clr.b	r14		;

00007652 <.L181>:
            xpr_timing[i].status = NOT_USED;
    7652:	0d 4e       	mov	r14,	r13	;
    7654:	5d 06       	rlam	#2,	r13	;
    7656:	0d 5e       	add	r14,	r13	;
    7658:	5d 02       	rlam	#1,	r13	;
    765a:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000765e <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    765e:	4e 43       	clr.b	r14		;
    7660:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7662:	b0 12 58 7b 	call	#31576		;#0x7b58

00007666 <.Loc.242.1>:
    refresh_xpr_timers();
    7666:	b0 12 58 72 	call	#29272		;#0x7258

0000766a <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    766a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    766c:	b0 12 bc 7b 	call	#31676		;#0x7bbc

00007670 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    7670:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7672:	b0 12 10 7d 	call	#32016		;#0x7d10

00007676 <.Loc.371.1>:
}
    7676:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000767a <.LCFI44>:
    767a:	37 17       	popm	#4,	r10	;16-bit words

0000767c <.LCFI45>:
    767c:	30 41       	ret			

0000767e <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    767e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007680 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7680:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7682:	e7 3f       	jmp	$-48     	;abs 0x7652

00007684 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7684:	6c 43       	mov.b	#2,	r12	;r3 As==10

00007686 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7686:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7688:	e4 3f       	jmp	$-54     	;abs 0x7652

0000768a <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    768a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000768e <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    768e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7690:	4d 43       	clr.b	r13		;
    7692:	0c 41       	mov	r1,	r12	;
    7694:	b0 12 54 7d 	call	#32084		;#0x7d54
    7698:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    769c:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    76a0:	0e 1c 
    76a2:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    76a6:	10 1c 
    76a8:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    76ac:	12 1c 
    76ae:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    76b2:	14 1c 

000076b4 <.Loc.383.1>:
    }

}
    76b4:	31 50 0a 00 	add	#10,	r1	;#0x000a

000076b8 <.LCFI48>:
    76b8:	30 41       	ret			

000076ba <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    76ba:	2a 15       	pushm	#3,	r10	;16-bit words

000076bc <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    76bc:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    76c0:	8a 20       	jnz	$+278    	;abs 0x77d6

000076c2 <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    76c2:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    76c6:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

000076ca <.Loc.465.1>:
    76ca:	82 48 52 1c 	mov	r8,	&0x1c52	;

000076ce <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    76ce:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    76d2:	54 1c 

000076d4 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    76d4:	b0 12 54 7a 	call	#31316		;#0x7a54

000076d8 <.Loc.471.1>:
    76d8:	0e 48       	mov	r8,	r14	;
    76da:	0f 49       	mov	r9,	r15	;
    76dc:	0e 8c       	sub	r12,	r14	;
    76de:	0f 7d       	subc	r13,	r15	;

000076e0 <.Loc.471.1>:
    76e0:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    76e4:	82 4f 12 1c 	mov	r15,	&0x1c12	;

000076e8 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    76e8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    76ea:	4c 43       	clr.b	r12		;
    76ec:	b0 12 b8 7a 	call	#31416		;#0x7ab8

000076f0 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    76f0:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    76f4:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

000076f8 <.Loc.474.1>:
    76f8:	0d 93       	cmp	#0,	r13	;r3 As==00
    76fa:	21 38       	jl	$+68     	;abs 0x773e

000076fc <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    76fc:	0f 4c       	mov	r12,	r15	;
    76fe:	0f dd       	bis	r13,	r15	;
    7700:	0f 93       	cmp	#0,	r15	;r3 As==00
    7702:	6d 24       	jz	$+220    	;abs 0x77de

00007704 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7704:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    7708:	08 4f       	mov	r15,	r8	;
    770a:	09 43       	clr	r9		;

0000770c <.Loc.485.1>:
    770c:	0d 93       	cmp	#0,	r13	;r3 As==00
    770e:	54 38       	jl	$+170    	;abs 0x77b8
    7710:	0d 93       	cmp	#0,	r13	;r3 As==00
    7712:	02 20       	jnz	$+6      	;abs 0x7718
    7714:	0c 98       	cmp	r8,	r12	;
    7716:	50 28       	jnc	$+162    	;abs 0x77b8

00007718 <.L209>:
    7718:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000771c <.Loc.485.1>:
    771c:	0c 98       	cmp	r8,	r12	;
    771e:	53 24       	jz	$+168    	;abs 0x77c6

00007720 <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    7720:	4d 4e       	mov.b	r14,	r13	;
    7722:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7724:	b0 12 a0 7b 	call	#31648		;#0x7ba0

00007728 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    7728:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    772c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    772e:	b0 12 ae 7b 	call	#31662		;#0x7bae

00007732 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    7732:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    7736:	b0 12 fc 79 	call	#31228		;#0x79fc

0000773a <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    773a:	28 17       	popm	#3,	r10	;16-bit words

0000773c <.LCFI50>:
    773c:	30 41       	ret			

0000773e <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    773e:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    7742:	0f 43       	clr	r15		;
    7744:	0f 89       	sub	r9,	r15	;
    7746:	08 4f       	mov	r15,	r8	;
    7748:	09 4f       	mov	r15,	r9	;
    774a:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

0000774e <.Loc.474.1>:
    774e:	09 9d       	cmp	r13,	r9	;
    7750:	04 38       	jl	$+10     	;abs 0x775a

00007752 <.Loc.474.1>:
    7752:	0d 99       	cmp	r9,	r13	;
    7754:	25 20       	jnz	$+76     	;abs 0x77a0
    7756:	0f 9c       	cmp	r12,	r15	;
    7758:	23 2c       	jc	$+72     	;abs 0x77a0

0000775a <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    775a:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    775e:	0a 4e       	mov	r14,	r10	;
    7760:	0b 43       	clr	r11		;

00007762 <.Loc.476.1>:
    7762:	48 43       	clr.b	r8		;
    7764:	49 43       	clr.b	r9		;
    7766:	08 8c       	sub	r12,	r8	;
    7768:	09 7d       	subc	r13,	r9	;

0000776a <.Loc.476.1>:
    776a:	09 93       	cmp	#0,	r9	;r3 As==00
    776c:	04 38       	jl	$+10     	;abs 0x7776
    776e:	09 93       	cmp	#0,	r9	;r3 As==00
    7770:	0b 20       	jnz	$+24     	;abs 0x7788
    7772:	08 9a       	cmp	r10,	r8	;
    7774:	09 2c       	jc	$+20     	;abs 0x7788

00007776 <.L207>:
    7776:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000777a <.L196>:
                    min_pdc = -pdc_timing[i].data;
    777a:	4f 43       	clr.b	r15		;
    777c:	0f 8c       	sub	r12,	r15	;
    777e:	82 4f 52 1c 	mov	r15,	&0x1c52	;

00007782 <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    7782:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00007786 <.Loc.494.1>:
    if (!first)
    7786:	cc 3f       	jmp	$-102    	;abs 0x7720

00007788 <.L194>:
    7788:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000778c <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    778c:	0a 98       	cmp	r8,	r10	;
    778e:	c8 23       	jnz	$-110    	;abs 0x7720
    7790:	09 93       	cmp	#0,	r9	;r3 As==00
    7792:	c6 23       	jnz	$-114    	;abs 0x7720

00007794 <.Loc.476.1>:
    7794:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

00007798 <.Loc.476.1>:
    7798:	4f 9e       	cmp.b	r14,	r15	;
    779a:	c2 2f       	jc	$-122    	;abs 0x7720
    779c:	0e 4f       	mov	r15,	r14	;
    779e:	ed 3f       	jmp	$-36     	;abs 0x777a

000077a0 <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    77a0:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

000077a4 <.Loc.481.1>:
    77a4:	0d 99       	cmp	r9,	r13	;
    77a6:	05 38       	jl	$+12     	;abs 0x77b2
    77a8:	0a 49       	mov	r9,	r10	;
    77aa:	09 9d       	cmp	r13,	r9	;
    77ac:	b9 23       	jnz	$-140    	;abs 0x7720
    77ae:	0c 9f       	cmp	r15,	r12	;
    77b0:	b7 2f       	jc	$-144    	;abs 0x7720

000077b2 <.L208>:
    77b2:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000077b6 <.Loc.494.1>:
    if (!first)
    77b6:	b4 3f       	jmp	$-150    	;abs 0x7720

000077b8 <.L201>:
    77b8:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

000077bc <.L203>:
                    min_pdc = pdc_timing[i].data;
    77bc:	82 4c 52 1c 	mov	r12,	&0x1c52	;

000077c0 <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    77c0:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

000077c4 <.Loc.494.1>:
    if (!first)
    77c4:	ad 3f       	jmp	$-164    	;abs 0x7720

000077c6 <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    77c6:	0d 99       	cmp	r9,	r13	;
    77c8:	ab 23       	jnz	$-168    	;abs 0x7720

000077ca <.Loc.485.1>:
    77ca:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

000077ce <.Loc.485.1>:
    77ce:	4f 9e       	cmp.b	r14,	r15	;
    77d0:	a7 2f       	jc	$-176    	;abs 0x7720
    77d2:	0e 4f       	mov	r15,	r14	;
    77d4:	f3 3f       	jmp	$-24     	;abs 0x77bc

000077d6 <.L189>:
    else stop_timer();
    77d6:	b0 12 b2 79 	call	#31154		;#0x79b2

000077da <.Loc.507.1>:
}
    77da:	28 17       	popm	#3,	r10	;16-bit words

000077dc <.LCFI52>:
    77dc:	30 41       	ret			

000077de <.L199>:
    if (!first)
    77de:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    77e2:	9e 3f       	jmp	$-194    	;abs 0x7720

000077e4 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    77e4:	1a 15       	pushm	#2,	r10	;16-bit words

000077e6 <.LCFI54>:
    77e6:	17 15       	pushm	#2,	r7	;16-bit words

000077e8 <.LCFI55>:
    77e8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000077ec <.LCFI56>:
    77ec:	49 4c       	mov.b	r12,	r9	;
    77ee:	0a 4d       	mov	r13,	r10	;

000077f0 <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    77f0:	5e 43       	mov.b	#1,	r14	;r3 As==01
    77f2:	4d 43       	clr.b	r13		;

000077f4 <.LVL210>:
    77f4:	0c 41       	mov	r1,	r12	;

000077f6 <.LVL211>:
    77f6:	b0 12 54 7d 	call	#32084		;#0x7d54
    77fa:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    77fe:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7802:	0e 1c 
    7804:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    7808:	10 1c 
    780a:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    780e:	12 1c 
    7810:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    7814:	14 1c 

00007816 <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    7816:	06 4a       	mov	r10,	r6	;
    7818:	07 43       	clr	r7		;

0000781a <.Loc.401.1>:
    781a:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    781e:	31 20       	jnz	$+100    	;abs 0x7882

00007820 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    7820:	4c 49       	mov.b	r9,	r12	;
    7822:	b0 12 50 6c 	call	#27728		;#0x6c50
    7826:	0d 4a       	mov	r10,	r13	;
    7828:	b0 12 1c 6c 	call	#27676		;#0x6c1c

0000782c <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    782c:	4c 49       	mov.b	r9,	r12	;
    782e:	b0 12 50 6c 	call	#27728		;#0x6c50
    7832:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7834:	b0 12 22 6c 	call	#27682		;#0x6c22

00007838 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    7838:	0e 46       	mov	r6,	r14	;
    783a:	0f 47       	mov	r7,	r15	;
    783c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    783e:	4c 43       	clr.b	r12		;
    7840:	b0 12 b8 7a 	call	#31416		;#0x7ab8

00007844 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    7844:	82 46 10 1c 	mov	r6,	&0x1c10	;
    7848:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000784c <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    784c:	4e 49       	mov.b	r9,	r14	;
    784e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7850:	4c 43       	clr.b	r12		;
    7852:	b0 12 0c 7b 	call	#31500		;#0x7b0c

00007856 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    7856:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000785a <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    785a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    785c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    785e:	4c 43       	clr.b	r12		;
    7860:	b0 12 58 7b 	call	#31576		;#0x7b58

00007864 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    7864:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

00007868 <.Loc.411.1>:
        refresh_pdc_timers();
    7868:	b0 12 ba 76 	call	#30394		;#0x76ba

0000786c <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    786c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    786e:	b0 12 bc 7b 	call	#31676		;#0x7bbc

00007872 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    7872:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7874:	b0 12 10 7d 	call	#32016		;#0x7d10

00007878 <.Loc.435.1>:
}
    7878:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000787c <.LCFI57>:
    787c:	16 17       	popm	#2,	r7	;16-bit words

0000787e <.LCFI58>:
    787e:	19 17       	popm	#2,	r10	;16-bit words

00007880 <.LCFI59>:
    7880:	30 41       	ret			

00007882 <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    7882:	82 46 10 1c 	mov	r6,	&0x1c10	;
    7886:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000788a <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    788a:	0e 46       	mov	r6,	r14	;
    788c:	0f 47       	mov	r7,	r15	;
    788e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7890:	4c 43       	clr.b	r12		;
    7892:	b0 12 b8 7a 	call	#31416		;#0x7ab8

00007896 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    7896:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000789a <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    789a:	4e 49       	mov.b	r9,	r14	;
    789c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    789e:	4c 43       	clr.b	r12		;
    78a0:	b0 12 0c 7b 	call	#31500		;#0x7b0c

000078a4 <.Loc.430.1>:
        refresh_pdc_timers();
    78a4:	b0 12 ba 76 	call	#30394		;#0x76ba

000078a8 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    78a8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    78aa:	b0 12 bc 7b 	call	#31676		;#0x7bbc

000078ae <.Loc.434.1>:
    _pers_timer_commit(PDC);
    78ae:	5c 43       	mov.b	#1,	r12	;r3 As==01
    78b0:	b0 12 10 7d 	call	#32016		;#0x7d10

000078b4 <.Loc.435.1>:
}
    78b4:	31 50 0a 00 	add	#10,	r1	;#0x000a

000078b8 <.LCFI61>:
    78b8:	16 17       	popm	#2,	r7	;16-bit words

000078ba <.LCFI62>:
    78ba:	19 17       	popm	#2,	r10	;16-bit words

000078bc <.LCFI63>:
    78bc:	30 41       	ret			

000078be <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    78be:	0a 15       	pushm	#1,	r10	;16-bit words

000078c0 <.LCFI64>:
    78c0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000078c4 <.LCFI65>:
    78c4:	4a 4c       	mov.b	r12,	r10	;

000078c6 <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    78c6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    78c8:	4d 43       	clr.b	r13		;
    78ca:	0c 41       	mov	r1,	r12	;

000078cc <.LVL233>:
    78cc:	b0 12 54 7d 	call	#32084		;#0x7d54
    78d0:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    78d4:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    78d8:	0e 1c 
    78da:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    78de:	10 1c 
    78e0:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    78e4:	12 1c 
    78e6:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    78ea:	14 1c 

000078ec <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    78ec:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    78f0:	07 20       	jnz	$+16     	;abs 0x7900

000078f2 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    78f2:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000078f6 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    78f6:	4e 43       	clr.b	r14		;
    78f8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78fa:	4c 43       	clr.b	r12		;
    78fc:	b0 12 58 7b 	call	#31576		;#0x7b58

00007900 <.L216>:
    refresh_pdc_timers();
    7900:	b0 12 ba 76 	call	#30394		;#0x76ba

00007904 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    7904:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7906:	b0 12 bc 7b 	call	#31676		;#0x7bbc

0000790a <.Loc.448.1>:
    _pers_timer_commit(XPR);
    790a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    790c:	b0 12 10 7d 	call	#32016		;#0x7d10

00007910 <.Loc.450.1>:
}
    7910:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007914 <.LCFI66>:
    7914:	0a 17       	popm	#1,	r10	;16-bit words

00007916 <.LCFI67>:
    7916:	30 41       	ret			

00007918 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    7918:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    791c:	07 20       	jnz	$+16     	;abs 0x792c

0000791e <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    791e:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007922 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    7922:	4e 43       	clr.b	r14		;
    7924:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7926:	4c 43       	clr.b	r12		;

00007928 <.LVL242>:
    7928:	b0 12 58 7b 	call	#31576		;#0x7b58

0000792c <.L217>:

        }
    }
}
    792c:	30 41       	ret			

0000792e <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    792e:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00007932 <.Loc.83.1>:
    7932:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00007936 <.Loc.83.1>:
    7936:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000793a <.Loc.83.1>:
    793a:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

0000793e <.Loc.83.1>:
    793e:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00007942 <.Loc.83.1>:
    7942:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00007946 <.Loc.83.1>:
    7946:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000794a <.Loc.83.1>:
    794a:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

0000794e <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    794e:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00007952 <.Loc.88.1>:
}
    7952:	30 41       	ret			

00007954 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    7954:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007958 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    7958:	0e 4c       	mov	r12,	r14	;
    795a:	5e 09       	rram	#3,	r14	;

0000795c <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    795c:	7e f0 07 00 	and.b	#7,	r14	;

00007960 <.Loc.99.1>:
    7960:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    7964:	08 00 

00007966 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    7966:	0d 5e       	add	r14,	r13	;

00007968 <.LVL12>:
    7968:	7c f0 07 00 	and.b	#7,	r12	;

0000796c <.LVL13>:
    796c:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    7970:	00 00 

00007972 <.Loc.101.1>:
}
    7972:	30 41       	ret			

00007974 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    7974:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007978 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    7978:	0e 4c       	mov	r12,	r14	;
    797a:	5e 09       	rram	#3,	r14	;

0000797c <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    797c:	7e f0 07 00 	and.b	#7,	r14	;
    7980:	0f 4d       	mov	r13,	r15	;
    7982:	0f 5e       	add	r14,	r15	;

00007984 <.Loc.112.1>:
    7984:	7c f0 07 00 	and.b	#7,	r12	;

00007988 <.LVL16>:
    7988:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    798c:	00 00 

0000798e <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    798e:	6c 4f       	mov.b	@r15,	r12	;

00007990 <.Loc.114.1>:
    7990:	0c 93       	cmp	#0,	r12	;r3 As==00
    7992:	03 20       	jnz	$+8      	;abs 0x799a

00007994 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    7994:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    7998:	08 00 

0000799a <.L4>:
    }
}
    799a:	30 41       	ret			

0000799c <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    799c:	5d 4c 08 00 	mov.b	8(r12),	r13	;

000079a0 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    79a0:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

000079a4 <.LVL19>:
    79a4:	0c 5d       	add	r13,	r12	;

000079a6 <.LVL20>:
    79a6:	6e 4c       	mov.b	@r12,	r14	;

000079a8 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    79a8:	0c 4d       	mov	r13,	r12	;
    79aa:	5c 0a       	rlam	#3,	r12	;

000079ac <.Loc.128.1>:
}
    79ac:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    79b0:	30 41       	ret			

000079b2 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    79b2:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

000079b6 <.Loc.158.1>:
    TA2CTL = 0;
    79b6:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000079ba <.Loc.159.1>:
}
    79ba:	30 41       	ret			

000079bc <timerA2_init>:
    79bc:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    79c0:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    79c4:	30 41       	ret			

000079c6 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    79c6:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

000079ca <.Loc.172.1>:
    TA0CCR0 = ticks;
    79ca:	82 4c 52 03 	mov	r12,	&0x0352	;

000079ce <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    79ce:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    79d2:	42 03 

000079d4 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    79d4:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    79d8:	40 03 

000079da <.Loc.175.1>:
}
    79da:	30 41       	ret			

000079dc <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    79dc:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000079e0 <.Loc.179.1>:
    TA2CCR0 = ticks;
    79e0:	82 4c 12 04 	mov	r12,	&0x0412	;

000079e4 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    79e4:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    79e8:	02 04 

000079ea <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    79ea:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    79ee:	00 04 

000079f0 <.Loc.183.1>:

}
    79f0:	30 41       	ret			

000079f2 <stop_timer_xpr>:
    79f2:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    79f6:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    79fa:	30 41       	ret			

000079fc <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    79fc:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007a00 <.Loc.195.1>:
    TA1CCR0 = ticks;
    7a00:	82 4c 92 03 	mov	r12,	&0x0392	;

00007a04 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    7a04:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7a08:	82 03 

00007a0a <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7a0a:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    7a0e:	80 03 

00007a10 <.Loc.198.1>:
}
    7a10:	30 41       	ret			

00007a12 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    7a12:	30 41       	ret			

00007a14 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    7a14:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    7a18:	61 01 

00007a1a <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    7a1a:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    7a1e:	64 01 

00007a20 <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    7a20:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00007a24 <.Loc.248.1>:
  CSCTL0_H = 0;
    7a24:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00007a28 <.Loc.250.1>:

}
    7a28:	30 41       	ret			

00007a2a <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    7a2a:	4c 43       	clr.b	r12		;
    7a2c:	4d 43       	clr.b	r13		;
    7a2e:	30 41       	ret			

00007a30 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    7a30:	82 43 6e 51 	mov	#0,	&0x516e	;r3 As==00
    7a34:	82 43 70 51 	mov	#0,	&0x5170	;r3 As==00

00007a38 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    7a38:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007a3c <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    7a3c:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    7a40:	40 04 

00007a42 <.Loc.334.1>:

    __bis_SR_register(GIE);
    7a42:	03 43       	nop			
    7a44:	32 d2       	eint			
    7a46:	03 43       	nop			

00007a48 <.Loc.335.1>:
}
    7a48:	30 41       	ret			

00007a4a <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    7a4a:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007a4e <.Loc.343.1>:
    TA3CCTL0 = 0;
    7a4e:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00007a52 <.Loc.344.1>:
}
    7a52:	30 41       	ret			

00007a54 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    7a54:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7a58:	40 04 

00007a5a <.Loc.356.1>:

   tmp = TA3R;
    7a5a:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00007a5e <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    7a5e:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7a62:	40 04 

00007a64 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    7a64:	0d 43       	clr	r13		;

00007a66 <.LVL6>:
    7a66:	0e 4c       	mov	r12,	r14	;
    7a68:	0f 4d       	mov	r13,	r15	;
    7a6a:	0e 5e       	rla	r14		;
    7a6c:	0f 6f       	rlc	r15		;
    7a6e:	0e 5e       	rla	r14		;
    7a70:	0f 6f       	rlc	r15		;
    7a72:	0c 5e       	add	r14,	r12	;

00007a74 <.LVL7>:
    7a74:	0d 6f       	addc	r15,	r13	;
    7a76:	0c 5c       	rla	r12		;
    7a78:	0d 6d       	rlc	r13		;

00007a7a <.Loc.363.1>:
}
    7a7a:	1c 52 6e 51 	add	&0x516e,r12	;0x516e
    7a7e:	1d 62 70 51 	addc	&0x5170,r13	;0x5170
    7a82:	30 41       	ret			

00007a84 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    7a84:	b2 50 aa 00 	add	#170,	&0x516e	;#0x00aa
    7a88:	6e 51 
    7a8a:	b2 60 0a 00 	addc	#10,	&0x5170	;#0x000a
    7a8e:	70 51 

00007a90 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    7a90:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00007a94 <.Loc.381.1>:
}
    7a94:	00 13       	reti			

00007a96 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    7a96:	3c 40 72 51 	mov	#20850,	r12	;#0x5172
    7a9a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00007a9e <.Loc.34.1>:
    7a9e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00007aa2 <.Loc.34.1>:
    7aa2:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00007aa6 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    7aa6:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00007aaa <.Loc.38.1>:
    7aaa:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00007aae <.Loc.38.1>:
    7aae:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00007ab2 <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    7ab2:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00007ab6 <.Loc.42.1>:
    }
}
    7ab6:	30 41       	ret			

00007ab8 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    7ab8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007abc <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    7abc:	1d 93       	cmp	#1,	r13	;r3 As==01
    7abe:	1b 24       	jz	$+56     	;abs 0x7af6
    7ac0:	2d 93       	cmp	#2,	r13	;r3 As==10
    7ac2:	0e 24       	jz	$+30     	;abs 0x7ae0
    7ac4:	0d 93       	cmp	#0,	r13	;r3 As==00
    7ac6:	01 24       	jz	$+4      	;abs 0x7aca

00007ac8 <.Loc.69.1>:
        default:
            break;
    }


}
    7ac8:	30 41       	ret			

00007aca <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    7aca:	0d 4c       	mov	r12,	r13	;

00007acc <.LVL9>:
    7acc:	5d 06       	rlam	#2,	r13	;
    7ace:	0c 5d       	add	r13,	r12	;

00007ad0 <.LVL10>:
    7ad0:	5c 02       	rlam	#1,	r12	;
    7ad2:	8c 4e da 51 	mov	r14,	20954(r12); 0x51da
    7ad6:	8c 4f dc 51 	mov	r15,	20956(r12); 0x51dc

00007ada <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7ada:	9c 43 de 51 	mov	#1,	20958(r12);r3 As==01, 0x51de

00007ade <.Loc.55.1>:
}
    7ade:	30 41       	ret			

00007ae0 <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    7ae0:	0d 4c       	mov	r12,	r13	;

00007ae2 <.LVL12>:
    7ae2:	5d 06       	rlam	#2,	r13	;
    7ae4:	0c 5d       	add	r13,	r12	;
    7ae6:	5c 02       	rlam	#1,	r12	;
    7ae8:	8c 4e f8 51 	mov	r14,	20984(r12); 0x51f8
    7aec:	8c 4f fa 51 	mov	r15,	20986(r12); 0x51fa

00007af0 <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7af0:	9c 43 fc 51 	mov	#1,	20988(r12);r3 As==01, 0x51fc

00007af4 <.Loc.59.1>:
}
    7af4:	30 41       	ret			

00007af6 <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    7af6:	0d 4c       	mov	r12,	r13	;

00007af8 <.LVL14>:
    7af8:	5d 06       	rlam	#2,	r13	;
    7afa:	0c 5d       	add	r13,	r12	;
    7afc:	5c 02       	rlam	#1,	r12	;
    7afe:	8c 4e 16 52 	mov	r14,	21014(r12); 0x5216
    7b02:	8c 4f 18 52 	mov	r15,	21016(r12); 0x5218

00007b06 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7b06:	9c 43 1a 52 	mov	#1,	21018(r12);r3 As==01, 0x521a

00007b0a <.Loc.63.1>:
}
    7b0a:	30 41       	ret			

00007b0c <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    7b0c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7b10:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007b14 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    7b14:	1d 93       	cmp	#1,	r13	;r3 As==01
    7b16:	17 24       	jz	$+48     	;abs 0x7b46
    7b18:	2d 93       	cmp	#2,	r13	;r3 As==10
    7b1a:	0c 24       	jz	$+26     	;abs 0x7b34
    7b1c:	0d 93       	cmp	#0,	r13	;r3 As==00
    7b1e:	01 24       	jz	$+4      	;abs 0x7b22

00007b20 <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    7b20:	30 41       	ret			

00007b22 <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    7b22:	0d 4c       	mov	r12,	r13	;

00007b24 <.LVL16>:
    7b24:	5d 06       	rlam	#2,	r13	;
    7b26:	0c 5d       	add	r13,	r12	;

00007b28 <.LVL17>:
    7b28:	5c 02       	rlam	#1,	r12	;
    7b2a:	cc 4e d8 51 	mov.b	r14,	20952(r12); 0x51d8

00007b2e <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7b2e:	9c 43 de 51 	mov	#1,	20958(r12);r3 As==01, 0x51de

00007b32 <.Loc.78.1>:
}
    7b32:	30 41       	ret			

00007b34 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    7b34:	0d 4c       	mov	r12,	r13	;

00007b36 <.LVL19>:
    7b36:	5d 06       	rlam	#2,	r13	;
    7b38:	0c 5d       	add	r13,	r12	;
    7b3a:	5c 02       	rlam	#1,	r12	;
    7b3c:	cc 4e f6 51 	mov.b	r14,	20982(r12); 0x51f6

00007b40 <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7b40:	9c 43 fc 51 	mov	#1,	20988(r12);r3 As==01, 0x51fc

00007b44 <.Loc.82.1>:
}
    7b44:	30 41       	ret			

00007b46 <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    7b46:	0d 4c       	mov	r12,	r13	;

00007b48 <.LVL21>:
    7b48:	5d 06       	rlam	#2,	r13	;
    7b4a:	0c 5d       	add	r13,	r12	;
    7b4c:	5c 02       	rlam	#1,	r12	;
    7b4e:	cc 4e 14 52 	mov.b	r14,	21012(r12); 0x5214

00007b52 <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7b52:	9c 43 1a 52 	mov	#1,	21018(r12);r3 As==01, 0x521a

00007b56 <.Loc.86.1>:
}
    7b56:	30 41       	ret			

00007b58 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    7b58:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007b5c <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    7b5c:	1d 93       	cmp	#1,	r13	;r3 As==01
    7b5e:	17 24       	jz	$+48     	;abs 0x7b8e
    7b60:	2d 93       	cmp	#2,	r13	;r3 As==10
    7b62:	0c 24       	jz	$+26     	;abs 0x7b7c
    7b64:	0d 93       	cmp	#0,	r13	;r3 As==00
    7b66:	01 24       	jz	$+4      	;abs 0x7b6a

00007b68 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    7b68:	30 41       	ret			

00007b6a <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    7b6a:	0d 4c       	mov	r12,	r13	;

00007b6c <.LVL23>:
    7b6c:	5d 06       	rlam	#2,	r13	;
    7b6e:	0c 5d       	add	r13,	r12	;

00007b70 <.LVL24>:
    7b70:	5c 02       	rlam	#1,	r12	;
    7b72:	8c 4e d6 51 	mov	r14,	20950(r12); 0x51d6

00007b76 <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7b76:	9c 43 de 51 	mov	#1,	20958(r12);r3 As==01, 0x51de

00007b7a <.Loc.100.1>:
}
    7b7a:	30 41       	ret			

00007b7c <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    7b7c:	0d 4c       	mov	r12,	r13	;

00007b7e <.LVL26>:
    7b7e:	5d 06       	rlam	#2,	r13	;
    7b80:	0c 5d       	add	r13,	r12	;
    7b82:	5c 02       	rlam	#1,	r12	;
    7b84:	8c 4e f4 51 	mov	r14,	20980(r12); 0x51f4

00007b88 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7b88:	9c 43 fc 51 	mov	#1,	20988(r12);r3 As==01, 0x51fc

00007b8c <.Loc.104.1>:
}
    7b8c:	30 41       	ret			

00007b8e <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    7b8e:	0d 4c       	mov	r12,	r13	;

00007b90 <.LVL28>:
    7b90:	5d 06       	rlam	#2,	r13	;
    7b92:	0c 5d       	add	r13,	r12	;
    7b94:	5c 02       	rlam	#1,	r12	;
    7b96:	8c 4e 12 52 	mov	r14,	21010(r12); 0x5212

00007b9a <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7b9a:	9c 43 1a 52 	mov	#1,	21018(r12);r3 As==01, 0x521a

00007b9e <.Loc.108.1>:
}
    7b9e:	30 41       	ret			

00007ba0 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    7ba0:	0e 4c       	mov	r12,	r14	;
    7ba2:	5e 0a       	rlam	#3,	r14	;
    7ba4:	ce 4d 1e 52 	mov.b	r13,	21022(r14); 0x521e

00007ba8 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7ba8:	9e 43 22 52 	mov	#1,	21026(r14);r3 As==01, 0x5222

00007bac <.Loc.119.1>:
}
    7bac:	30 41       	ret			

00007bae <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    7bae:	0e 4c       	mov	r12,	r14	;
    7bb0:	5e 0a       	rlam	#3,	r14	;
    7bb2:	8e 4d 20 52 	mov	r13,	21024(r14); 0x5220

00007bb6 <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7bb6:	9e 43 22 52 	mov	#1,	21026(r14);r3 As==01, 0x5222

00007bba <.Loc.125.1>:
}
    7bba:	30 41       	ret			

00007bbc <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    7bbc:	1c 93       	cmp	#1,	r12	;r3 As==01
    7bbe:	0b 24       	jz	$+24     	;abs 0x7bd6
    7bc0:	2c 93       	cmp	#2,	r12	;r3 As==10
    7bc2:	06 24       	jz	$+14     	;abs 0x7bd0
    7bc4:	0c 93       	cmp	#0,	r12	;r3 As==00
    7bc6:	01 24       	jz	$+4      	;abs 0x7bca

00007bc8 <.Loc.145.1>:
        default:
            break;

    }

}
    7bc8:	30 41       	ret			

00007bca <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    7bca:	92 43 3a 52 	mov	#1,	&0x523a	;r3 As==01

00007bce <.Loc.133.1>:
}
    7bce:	30 41       	ret			

00007bd0 <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    7bd0:	92 43 3c 52 	mov	#1,	&0x523c	;r3 As==01

00007bd4 <.Loc.136.1>:
}
    7bd4:	30 41       	ret			

00007bd6 <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    7bd6:	92 43 3e 52 	mov	#1,	&0x523e	;r3 As==01

00007bda <.Loc.139.1>:
}
    7bda:	30 41       	ret			

00007bdc <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    7bdc:	3d 40 72 51 	mov	#20850,	r13	;#0x5172
    7be0:	1c 93       	cmp	#1,	r12	;r3 As==01
    7be2:	18 24       	jz	$+50     	;abs 0x7c14
    7be4:	2c 93       	cmp	#2,	r12	;r3 As==10
    7be6:	40 24       	jz	$+130    	;abs 0x7c68
    7be8:	0c 93       	cmp	#0,	r12	;r3 As==00
    7bea:	26 24       	jz	$+78     	;abs 0x7c38

00007bec <.L28>:
    7bec:	0e 4c       	mov	r12,	r14	;
    7bee:	5e 0a       	rlam	#3,	r14	;
    7bf0:	9e 93 22 52 	cmp	#1,	21026(r14);r3 As==01, 0x5222
    7bf4:	01 24       	jz	$+4      	;abs 0x7bf8

00007bf6 <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    7bf6:	30 41       	ret			

00007bf8 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    7bf8:	0c 4e       	mov	r14,	r12	;

00007bfa <.LVL33>:
    7bfa:	0c 5d       	add	r13,	r12	;
    7bfc:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    7c00:	46 00 
    7c02:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    7c06:	48 00 
    7c08:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    7c0c:	4a 00 

00007c0e <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    7c0e:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00007c12 <.Loc.191.1>:
}
    7c12:	30 41       	ret			

00007c14 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    7c14:	92 93 1a 52 	cmp	#1,	&0x521a	;r3 As==01
    7c18:	e9 23       	jnz	$-44     	;abs 0x7bec

00007c1a <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    7c1a:	92 42 12 52 	mov	&0x5212,&0x51ae	;0x5212
    7c1e:	ae 51 
    7c20:	92 42 14 52 	mov	&0x5214,&0x51b0	;0x5214
    7c24:	b0 51 
    7c26:	92 42 16 52 	mov	&0x5216,&0x51b2	;0x5216
    7c2a:	b2 51 
    7c2c:	92 42 18 52 	mov	&0x5218,&0x51b4	;0x5218
    7c30:	b4 51 

00007c32 <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    7c32:	82 43 b6 51 	mov	#0,	&0x51b6	;r3 As==00

00007c36 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    7c36:	da 3f       	jmp	$-74     	;abs 0x7bec

00007c38 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    7c38:	92 93 de 51 	cmp	#1,	&0x51de	;r3 As==01
    7c3c:	5a 24       	jz	$+182    	;abs 0x7cf2

00007c3e <.L29>:
    7c3e:	92 93 e8 51 	cmp	#1,	&0x51e8	;r3 As==01
    7c42:	48 24       	jz	$+146    	;abs 0x7cd4

00007c44 <.L30>:
    7c44:	92 93 f2 51 	cmp	#1,	&0x51f2	;r3 As==01
    7c48:	d1 23       	jnz	$-92     	;abs 0x7bec

00007c4a <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7c4a:	92 42 ea 51 	mov	&0x51ea,&0x5186	;0x51ea
    7c4e:	86 51 
    7c50:	92 42 ec 51 	mov	&0x51ec,&0x5188	;0x51ec
    7c54:	88 51 
    7c56:	92 42 ee 51 	mov	&0x51ee,&0x518a	;0x51ee
    7c5a:	8a 51 
    7c5c:	92 42 f0 51 	mov	&0x51f0,&0x518c	;0x51f0
    7c60:	8c 51 

00007c62 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7c62:	82 43 8e 51 	mov	#0,	&0x518e	;r3 As==00

00007c66 <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    7c66:	c2 3f       	jmp	$-122    	;abs 0x7bec

00007c68 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    7c68:	92 93 fc 51 	cmp	#1,	&0x51fc	;r3 As==01
    7c6c:	24 24       	jz	$+74     	;abs 0x7cb6

00007c6e <.L32>:
    7c6e:	92 93 06 52 	cmp	#1,	&0x5206	;r3 As==01
    7c72:	12 24       	jz	$+38     	;abs 0x7c98

00007c74 <.L33>:
    7c74:	92 93 10 52 	cmp	#1,	&0x5210	;r3 As==01
    7c78:	b9 23       	jnz	$-140    	;abs 0x7bec

00007c7a <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7c7a:	92 42 08 52 	mov	&0x5208,&0x51a4	;0x5208
    7c7e:	a4 51 
    7c80:	92 42 0a 52 	mov	&0x520a,&0x51a6	;0x520a
    7c84:	a6 51 
    7c86:	92 42 0c 52 	mov	&0x520c,&0x51a8	;0x520c
    7c8a:	a8 51 
    7c8c:	92 42 0e 52 	mov	&0x520e,&0x51aa	;0x520e
    7c90:	aa 51 

00007c92 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7c92:	82 43 ac 51 	mov	#0,	&0x51ac	;r3 As==00

00007c96 <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    7c96:	aa 3f       	jmp	$-170    	;abs 0x7bec

00007c98 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7c98:	92 42 fe 51 	mov	&0x51fe,&0x519a	;0x51fe
    7c9c:	9a 51 
    7c9e:	92 42 00 52 	mov	&0x5200,&0x519c	;0x5200
    7ca2:	9c 51 
    7ca4:	92 42 02 52 	mov	&0x5202,&0x519e	;0x5202
    7ca8:	9e 51 
    7caa:	92 42 04 52 	mov	&0x5204,&0x51a0	;0x5204
    7cae:	a0 51 

00007cb0 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7cb0:	82 43 a2 51 	mov	#0,	&0x51a2	;r3 As==00
    7cb4:	df 3f       	jmp	$-64     	;abs 0x7c74

00007cb6 <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7cb6:	92 42 f4 51 	mov	&0x51f4,&0x5190	;0x51f4
    7cba:	90 51 
    7cbc:	92 42 f6 51 	mov	&0x51f6,&0x5192	;0x51f6
    7cc0:	92 51 
    7cc2:	92 42 f8 51 	mov	&0x51f8,&0x5194	;0x51f8
    7cc6:	94 51 
    7cc8:	92 42 fa 51 	mov	&0x51fa,&0x5196	;0x51fa
    7ccc:	96 51 

00007cce <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7cce:	82 43 98 51 	mov	#0,	&0x5198	;r3 As==00
    7cd2:	cd 3f       	jmp	$-100    	;abs 0x7c6e

00007cd4 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7cd4:	92 42 e0 51 	mov	&0x51e0,&0x517c	;0x51e0
    7cd8:	7c 51 
    7cda:	92 42 e2 51 	mov	&0x51e2,&0x517e	;0x51e2
    7cde:	7e 51 
    7ce0:	92 42 e4 51 	mov	&0x51e4,&0x5180	;0x51e4
    7ce4:	80 51 
    7ce6:	92 42 e6 51 	mov	&0x51e6,&0x5182	;0x51e6
    7cea:	82 51 

00007cec <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7cec:	82 43 84 51 	mov	#0,	&0x5184	;r3 As==00
    7cf0:	a9 3f       	jmp	$-172    	;abs 0x7c44

00007cf2 <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7cf2:	92 42 d6 51 	mov	&0x51d6,&0x5172	;0x51d6
    7cf6:	72 51 
    7cf8:	92 42 d8 51 	mov	&0x51d8,&0x5174	;0x51d8
    7cfc:	74 51 
    7cfe:	92 42 da 51 	mov	&0x51da,&0x5176	;0x51da
    7d02:	76 51 
    7d04:	92 42 dc 51 	mov	&0x51dc,&0x5178	;0x51dc
    7d08:	78 51 

00007d0a <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7d0a:	82 43 7a 51 	mov	#0,	&0x517a	;r3 As==00
    7d0e:	97 3f       	jmp	$-208    	;abs 0x7c3e

00007d10 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    7d10:	1c 93       	cmp	#1,	r12	;r3 As==01
    7d12:	17 24       	jz	$+48     	;abs 0x7d42
    7d14:	2c 93       	cmp	#2,	r12	;r3 As==10
    7d16:	0c 24       	jz	$+26     	;abs 0x7d30
    7d18:	0c 93       	cmp	#0,	r12	;r3 As==00
    7d1a:	01 24       	jz	$+4      	;abs 0x7d1e

00007d1c <.L45>:
            break;
        default:
            break;

    }
}
    7d1c:	30 41       	ret			

00007d1e <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    7d1e:	1d 42 3a 52 	mov	&0x523a,r13	;0x523a

00007d22 <.Loc.207.1>:
    7d22:	1d 93       	cmp	#1,	r13	;r3 As==01
    7d24:	fb 23       	jnz	$-8      	;abs 0x7d1c

00007d26 <.Loc.209.1>:
                _commit_timer_buffers(interface);
    7d26:	b0 12 dc 7b 	call	#31708		;#0x7bdc

00007d2a <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    7d2a:	a2 43 3a 52 	mov	#2,	&0x523a	;r3 As==10

00007d2e <.Loc.230.1>:
}
    7d2e:	30 41       	ret			

00007d30 <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    7d30:	1d 42 3c 52 	mov	&0x523c,r13	;0x523c

00007d34 <.Loc.214.1>:
    7d34:	1d 93       	cmp	#1,	r13	;r3 As==01
    7d36:	f2 23       	jnz	$-26     	;abs 0x7d1c

00007d38 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    7d38:	b0 12 dc 7b 	call	#31708		;#0x7bdc

00007d3c <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    7d3c:	a2 43 3c 52 	mov	#2,	&0x523c	;r3 As==10

00007d40 <.Loc.230.1>:
}
    7d40:	30 41       	ret			

00007d42 <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    7d42:	1d 42 3e 52 	mov	&0x523e,r13	;0x523e

00007d46 <.Loc.220.1>:
    7d46:	1d 93       	cmp	#1,	r13	;r3 As==01
    7d48:	e9 23       	jnz	$-44     	;abs 0x7d1c

00007d4a <.Loc.222.1>:
                _commit_timer_buffers(interface);
    7d4a:	b0 12 dc 7b 	call	#31708		;#0x7bdc

00007d4e <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    7d4e:	a2 43 3e 52 	mov	#2,	&0x523e	;r3 As==10

00007d52 <.Loc.230.1>:
}
    7d52:	30 41       	ret			

00007d54 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    7d54:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00007d58 <.Loc.233.1>:
    switch (interface)
    7d58:	1e 93       	cmp	#1,	r14	;r3 As==01
    7d5a:	17 24       	jz	$+48     	;abs 0x7d8a
    7d5c:	2e 93       	cmp	#2,	r14	;r3 As==10
    7d5e:	2a 24       	jz	$+86     	;abs 0x7db4

00007d60 <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    7d60:	0e 4d       	mov	r13,	r14	;

00007d62 <.LVL55>:
    7d62:	5e 06       	rlam	#2,	r14	;
    7d64:	0d 5e       	add	r14,	r13	;

00007d66 <.LVL56>:
    7d66:	5d 02       	rlam	#1,	r13	;
    7d68:	3d 50 72 51 	add	#20850,	r13	;#0x5172
    7d6c:	0e 4d       	mov	r13,	r14	;
    7d6e:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7d72:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7d76:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7d7a:	04 00 
    7d7c:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7d80:	06 00 
    7d82:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7d86:	08 00 

00007d88 <.Loc.245.1>:
    }

}
    7d88:	30 41       	ret			

00007d8a <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    7d8a:	0e 4d       	mov	r13,	r14	;

00007d8c <.LVL58>:
    7d8c:	5e 06       	rlam	#2,	r14	;
    7d8e:	0d 5e       	add	r14,	r13	;
    7d90:	5d 02       	rlam	#1,	r13	;
    7d92:	3d 50 ae 51 	add	#20910,	r13	;#0x51ae

00007d96 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    7d96:	0e 4d       	mov	r13,	r14	;
    7d98:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7d9c:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7da0:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7da4:	04 00 
    7da6:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7daa:	06 00 
    7dac:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7db0:	08 00 

00007db2 <.Loc.245.1>:
}
    7db2:	30 41       	ret			

00007db4 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    7db4:	0e 4d       	mov	r13,	r14	;

00007db6 <.LVL60>:
    7db6:	5e 06       	rlam	#2,	r14	;
    7db8:	0d 5e       	add	r14,	r13	;
    7dba:	5d 02       	rlam	#1,	r13	;
    7dbc:	3d 50 90 51 	add	#20880,	r13	;#0x5190

00007dc0 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    7dc0:	0e 4d       	mov	r13,	r14	;
    7dc2:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7dc6:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7dca:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7dce:	04 00 
    7dd0:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7dd4:	06 00 
    7dd6:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7dda:	08 00 

00007ddc <.Loc.245.1>:
}
    7ddc:	30 41       	ret			

00007dde <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    7dde:	4e 4c       	mov.b	r12,	r14	;

00007de0 <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    7de0:	1d 93       	cmp	#1,	r13	;r3 As==01
    7de2:	14 24       	jz	$+42     	;abs 0x7e0c
    7de4:	2d 93       	cmp	#2,	r13	;r3 As==10
    7de6:	0b 24       	jz	$+24     	;abs 0x7dfe
    7de8:	4c 43       	clr.b	r12		;

00007dea <.LVL62>:
    7dea:	0d 93       	cmp	#0,	r13	;r3 As==00
    7dec:	01 24       	jz	$+4      	;abs 0x7df0

00007dee <.Loc.262.1>:
        default:
            return 0;

    }

}
    7dee:	30 41       	ret			

00007df0 <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    7df0:	0c 4e       	mov	r14,	r12	;
    7df2:	5c 06       	rlam	#2,	r12	;
    7df4:	0c 5e       	add	r14,	r12	;
    7df6:	5c 02       	rlam	#1,	r12	;
    7df8:	1c 4c 76 51 	mov	20854(r12),r12	;0x05176

00007dfc <.Loc.262.1>:
}
    7dfc:	30 41       	ret			

00007dfe <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    7dfe:	0c 4e       	mov	r14,	r12	;

00007e00 <.LVL64>:
    7e00:	5c 06       	rlam	#2,	r12	;
    7e02:	0c 5e       	add	r14,	r12	;
    7e04:	5c 02       	rlam	#1,	r12	;
    7e06:	1c 4c 94 51 	mov	20884(r12),r12	;0x05194

00007e0a <.Loc.262.1>:
}
    7e0a:	30 41       	ret			

00007e0c <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    7e0c:	0c 4e       	mov	r14,	r12	;

00007e0e <.LVL66>:
    7e0e:	5c 06       	rlam	#2,	r12	;
    7e10:	0c 5e       	add	r14,	r12	;
    7e12:	5c 02       	rlam	#1,	r12	;
    7e14:	1c 4c b2 51 	mov	20914(r12),r12	;0x051b2

00007e18 <.Loc.262.1>:
}
    7e18:	30 41       	ret			

00007e1a <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    7e1a:	4e 4c       	mov.b	r12,	r14	;

00007e1c <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    7e1c:	1d 93       	cmp	#1,	r13	;r3 As==01
    7e1e:	14 24       	jz	$+42     	;abs 0x7e48
    7e20:	2d 93       	cmp	#2,	r13	;r3 As==10
    7e22:	0b 24       	jz	$+24     	;abs 0x7e3a
    7e24:	4c 43       	clr.b	r12		;

00007e26 <.LVL68>:
    7e26:	0d 93       	cmp	#0,	r13	;r3 As==00
    7e28:	01 24       	jz	$+4      	;abs 0x7e2c

00007e2a <.Loc.279.1>:
        default:
            return    0;
    }


}
    7e2a:	30 41       	ret			

00007e2c <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    7e2c:	0c 4e       	mov	r14,	r12	;
    7e2e:	5c 06       	rlam	#2,	r12	;
    7e30:	0c 5e       	add	r14,	r12	;
    7e32:	5c 02       	rlam	#1,	r12	;
    7e34:	5c 4c 74 51 	mov.b	20852(r12),r12	;0x05174

00007e38 <.Loc.279.1>:
}
    7e38:	30 41       	ret			

00007e3a <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    7e3a:	0c 4e       	mov	r14,	r12	;

00007e3c <.LVL70>:
    7e3c:	5c 06       	rlam	#2,	r12	;
    7e3e:	0c 5e       	add	r14,	r12	;
    7e40:	5c 02       	rlam	#1,	r12	;
    7e42:	5c 4c 92 51 	mov.b	20882(r12),r12	;0x05192

00007e46 <.Loc.279.1>:
}
    7e46:	30 41       	ret			

00007e48 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    7e48:	0c 4e       	mov	r14,	r12	;

00007e4a <.LVL72>:
    7e4a:	5c 06       	rlam	#2,	r12	;
    7e4c:	0c 5e       	add	r14,	r12	;
    7e4e:	5c 02       	rlam	#1,	r12	;
    7e50:	5c 4c b0 51 	mov.b	20912(r12),r12	;0x051b0

00007e54 <.Loc.279.1>:
}
    7e54:	30 41       	ret			

00007e56 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    7e56:	4e 4c       	mov.b	r12,	r14	;

00007e58 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    7e58:	1d 93       	cmp	#1,	r13	;r3 As==01
    7e5a:	14 24       	jz	$+42     	;abs 0x7e84
    7e5c:	2d 93       	cmp	#2,	r13	;r3 As==10
    7e5e:	0b 24       	jz	$+24     	;abs 0x7e76
    7e60:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007e62 <.LVL74>:
    7e62:	0d 93       	cmp	#0,	r13	;r3 As==00
    7e64:	01 24       	jz	$+4      	;abs 0x7e68

00007e66 <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    7e66:	30 41       	ret			

00007e68 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    7e68:	0c 4e       	mov	r14,	r12	;
    7e6a:	5c 06       	rlam	#2,	r12	;
    7e6c:	0c 5e       	add	r14,	r12	;
    7e6e:	5c 02       	rlam	#1,	r12	;
    7e70:	1c 4c 72 51 	mov	20850(r12),r12	;0x05172

00007e74 <.Loc.294.1>:
}
    7e74:	30 41       	ret			

00007e76 <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    7e76:	0c 4e       	mov	r14,	r12	;

00007e78 <.LVL76>:
    7e78:	5c 06       	rlam	#2,	r12	;
    7e7a:	0c 5e       	add	r14,	r12	;
    7e7c:	5c 02       	rlam	#1,	r12	;
    7e7e:	1c 4c 90 51 	mov	20880(r12),r12	;0x05190

00007e82 <.Loc.294.1>:
}
    7e82:	30 41       	ret			

00007e84 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    7e84:	0c 4e       	mov	r14,	r12	;

00007e86 <.LVL78>:
    7e86:	5c 06       	rlam	#2,	r12	;
    7e88:	0c 5e       	add	r14,	r12	;
    7e8a:	5c 02       	rlam	#1,	r12	;
    7e8c:	1c 4c ae 51 	mov	20910(r12),r12	;0x051ae

00007e90 <.Loc.294.1>:
}
    7e90:	30 41       	ret			

00007e92 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    7e92:	5c 0a       	rlam	#3,	r12	;

00007e94 <.LVL80>:
}
    7e94:	5c 4c ba 51 	mov.b	20922(r12),r12	;0x051ba
    7e98:	30 41       	ret			

00007e9a <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    7e9a:	5c 0a       	rlam	#3,	r12	;

00007e9c <.LVL82>:
}
    7e9c:	1c 4c bc 51 	mov	20924(r12),r12	;0x051bc
    7ea0:	30 41       	ret			

00007ea2 <__mulhi2>:
    7ea2:	02 12       	push	r2		;
    7ea4:	32 c2       	dint			
    7ea6:	03 43       	nop			
    7ea8:	82 4c c0 04 	mov	r12,	&0x04c0	;
    7eac:	82 4d c8 04 	mov	r13,	&0x04c8	;

00007eb0 <L0^A>:
    7eb0:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    7eb4:	00 13       	reti			

00007eb6 <__mulsi2>:
    7eb6:	02 12       	push	r2		;
    7eb8:	32 c2       	dint			
    7eba:	03 43       	nop			
    7ebc:	82 4c d0 04 	mov	r12,	&0x04d0	;
    7ec0:	82 4d d2 04 	mov	r13,	&0x04d2	;
    7ec4:	82 4e e0 04 	mov	r14,	&0x04e0	;
    7ec8:	82 4f e2 04 	mov	r15,	&0x04e2	;
    7ecc:	1c 42 e4 04 	mov	&0x04e4,r12	;0x04e4
    7ed0:	1d 42 e6 04 	mov	&0x04e6,r13	;0x04e6
    7ed4:	00 13       	reti			

00007ed6 <_exit>:
    7ed6:	ff 3f       	jmp	$+0      	;abs 0x7ed6

00007ed8 <memset>:
    7ed8:	0e 5c       	add	r12,	r14	;

00007eda <L0^A>:
    7eda:	0f 4c       	mov	r12,	r15	;

00007edc <.L2>:
    7edc:	0f 9e       	cmp	r14,	r15	;
    7ede:	01 20       	jnz	$+4      	;abs 0x7ee2

00007ee0 <.Loc.104.1>:
    7ee0:	30 41       	ret			

00007ee2 <.L3>:
    7ee2:	1f 53       	inc	r15		;

00007ee4 <.LVL4>:
    7ee4:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7ee8:	f9 3f       	jmp	$-12     	;abs 0x7edc
