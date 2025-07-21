000053be <t_init>:

void* __attribute__((annotate("INK::TASK15"))) t_init()
{
    53be:	0a 15       	pushm	#1,	r10	;16-bit words           ;STACK POINTER

000053c0 <.LCFI0>:
#ifdef RAISE_PIN
    full_run_started = 1;
    53c0:	d2 43 3c 46 	mov.b	#1,	&0x463c	;r3 As==01          ;STORE IN VAR

000053c4 <.Loc.131.1>:
#endif

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    53c4:	b0 12 78 5b 	call	#23416		;#0x5b78            ;MOVE CURRENT INDEX INTO r12
    53c8:	0a 4c       	mov	r12,	r10	;                       ;MOVE CURRENT INDEX INTO r10

000053ca <.Loc.132.1>:
__INK_GET_VAR_FROM_BUF(pinCont)  = 1;
    53ca:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016            ;MOVE 0x16 INTO r13
    53ce:	b0 12 b4 71 	call	#29108		;#0x71b4            ;CALL r12 = r12 * r13

000053d2 <.Loc.132.1>:
    53d2:	1c 4c 10 45 	mov	17680(r12),r12	;0x04510
    53d6:	dc 43 00 00 	mov.b	#1,	0(r12)	;r3 As==01

000053da <.Loc.133.1>:
    __INK_GET_VAR_FROM_BUF(function) = 0;
    53da:	0c 4a       	mov	r10,	r12	;
    53dc:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    53e0:	b0 12 b4 71 	call	#29108		;#0x71b4

000053e4 <.Loc.133.1>:
    53e4:	1c 4c 20 45 	mov	17696(r12),r12	;0x04520
    53e8:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000053ec <.Loc.134.1>:
    __INK_GET_VAR_FROM_BUF(n_0)      = 0;
    53ec:	0c 4a       	mov	r10,	r12	;
    53ee:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    53f2:	b0 12 b4 71 	call	#29108		;#0x71b4

000053f6 <.Loc.134.1>:
    53f6:	1c 4c 12 45 	mov	17682(r12),r12	;0x04512
    53fa:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000053fe <.Loc.135.1>:
    __INK_GET_VAR_FROM_BUF(n_1)      = 0;
    53fe:	0c 4a       	mov	r10,	r12	;
    5400:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5404:	b0 12 b4 71 	call	#29108		;#0x71b4

00005408 <.Loc.135.1>:
    5408:	1c 4c 14 45 	mov	17684(r12),r12	;0x04514
    540c:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005410 <.Loc.136.1>:
    __INK_GET_VAR_FROM_BUF(n_2)      = 0;
    5410:	0c 4a       	mov	r10,	r12	;
    5412:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5416:	b0 12 b4 71 	call	#29108		;#0x71b4

0000541a <.Loc.136.1>:
    541a:	1c 4c 16 45 	mov	17686(r12),r12	;0x04516
    541e:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005422 <.Loc.137.1>:
    __INK_GET_VAR_FROM_BUF(n_3)      = 0;
    5422:	0c 4a       	mov	r10,	r12	;
    5424:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5428:	b0 12 b4 71 	call	#29108		;#0x71b4

0000542c <.Loc.137.1>:
    542c:	1c 4c 18 45 	mov	17688(r12),r12	;0x04518
    5430:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005434 <.Loc.138.1>:
    __INK_GET_VAR_FROM_BUF(n_4)      = 0;
    5434:	0c 4a       	mov	r10,	r12	;
    5436:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    543a:	b0 12 b4 71 	call	#29108		;#0x71b4

0000543e <.Loc.138.1>:
    543e:	1c 4c 1a 45 	mov	17690(r12),r12	;0x0451a
    5442:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005446 <.Loc.139.1>:
    __INK_GET_VAR_FROM_BUF(n_5)      = 0;
    5446:	0c 4a       	mov	r10,	r12	;
    5448:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    544c:	b0 12 b4 71 	call	#29108		;#0x71b4

00005450 <.Loc.139.1>:
    5450:	1c 4c 1c 45 	mov	17692(r12),r12	;0x0451c
    5454:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00005458 <.Loc.140.1>:
    __INK_GET_VAR_FROM_BUF(n_6)      = 0;
    5458:	0c 4a       	mov	r10,	r12	;
    545a:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    545e:	b0 12 b4 71 	call	#29108		;#0x71b4

00005462 <.Loc.140.1>:
    5462:	1c 4c 1e 45 	mov	17694(r12),r12	;0x0451e
    5466:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000546a <.Loc.143.1>:

    // next task is t_select_func
    return t_select_func;
}
    546a:	3c 40 72 54 	mov	#21618,	r12	;#0x5472
    546e:	0a 17       	popm	#1,	r10	;16-bit words

00005470 <.LCFI1>:
    5470:	30 41       	ret

00005472 <t_select_func>:

void* __attribute__((annotate("INK::TASK15"))) t_select_func()
{
    5472:	0a 15       	pushm	#1,	r10	;16-bit words

00005474 <.LCFI2>:
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5474:	b0 12 78 5b 	call	#23416		;#0x5b78
    5478:	0a 4c       	mov	r12,	r10	;

0000547a <.Loc.150.1>:
    seed_tmp = rand();
#else
    seed_tmp = SEED;
#endif

    __INK_GET_VAR_FROM_BUF(iteration) = 0;
    547a:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    547e:	b0 12 b4 71 	call	#29108		;#0x71b4

00005482 <.Loc.160.1>:
    5482:	1c 4c 22 45 	mov	17698(r12),r12	;0x04522
    5486:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000548a <.Loc.161.1>:
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    548a:	0c 4a       	mov	r10,	r12	;
    548c:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5490:	b0 12 b4 71 	call	#29108		;#0x71b4

00005494 <.Loc.161.1>:
    5494:	1c 4c 24 45 	mov	17700(r12),r12	;0x04524
    5498:	ac 42 00 00 	mov	#4,	0(r12)	;r2 As==10
    549c:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

000054a0 <.Loc.163.1>:

    function_tmp = __INK_GET_VAR_FROM_BUF(function);
    54a0:	0c 4a       	mov	r10,	r12	;
    54a2:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    54a6:	b0 12 b4 71 	call	#29108		;#0x71b4
    54aa:	1c 4c 20 45 	mov	17696(r12),r12	;0x04520

000054ae <.Loc.163.1>:
    54ae:	2d 4c       	mov	@r12,	r13	;

000054b0 <.LVL18>:

    if (function_tmp == 0)
    54b0:	0d 93       	cmp	#0,	r13	;r3 As==00
    54b2:	06 20       	jnz	$+14     	;abs 0x54c0

000054b4 <.LVL19>:
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54b4:	9c 43 00 00 	mov	#1,	0(r12)	;r3 As==01

000054b8 <.Loc.168.1>:
        return t_bit_count;
    54b8:	3c 40 2e 55 	mov	#21806,	r12	;#0x552e

000054bc <.L3>:
    else
    {
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
        return t_end;
    }
}
    54bc:	0a 17       	popm	#1,	r10	;16-bit words

000054be <.LCFI3>:
    54be:	30 41       	ret

000054c0 <.L4>:
    else if (function_tmp == 1)
    54c0:	1d 93       	cmp	#1,	r13	;r3 As==01
    54c2:	05 20       	jnz	$+12     	;abs 0x54ce

000054c4 <.LVL22>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54c4:	ac 43 00 00 	mov	#2,	0(r12)	;r3 As==10

000054c8 <.Loc.173.1>:
        return t_bitcount;
    54c8:	3c 40 bc 55 	mov	#21948,	r12	;#0x55bc
    54cc:	f7 3f       	jmp	$-16     	;abs 0x54bc

000054ce <.L6>:
    else if (function_tmp == 2)
    54ce:	2d 93       	cmp	#2,	r13	;r3 As==10
    54d0:	06 20       	jnz	$+14     	;abs 0x54de

000054d2 <.LVL24>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54d2:	bc 40 03 00 	mov	#3,	0(r12)	;
    54d6:	00 00

000054d8 <.Loc.178.1>:
        return t_ntbl_bitcnt;
    54d8:	3c 40 1c 5a 	mov	#23068,	r12	;#0x5a1c
    54dc:	ef 3f       	jmp	$-32     	;abs 0x54bc

000054de <.L7>:
    else if (function_tmp == 3)
    54de:	3d 90 03 00 	cmp	#3,	r13	;
    54e2:	05 20       	jnz	$+12     	;abs 0x54ee

000054e4 <.LVL26>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54e4:	ac 42 00 00 	mov	#4,	0(r12)	;r2 As==10

000054e8 <.Loc.183.1>:
        return t_ntbl_bitcount;
    54e8:	3c 40 da 56 	mov	#22234,	r12	;#0x56da
    54ec:	e7 3f       	jmp	$-48     	;abs 0x54bc

000054ee <.L8>:
    else if (function_tmp == 4)
    54ee:	2d 92       	cmp	#4,	r13	;r2 As==10
    54f0:	06 20       	jnz	$+14     	;abs 0x54fe

000054f2 <.LVL28>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    54f2:	bc 40 05 00 	mov	#5,	0(r12)	;
    54f6:	00 00

000054f8 <.Loc.188.1>:
        return t_BW_btbl_bitcount;
    54f8:	3c 40 86 57 	mov	#22406,	r12	;#0x5786
    54fc:	df 3f       	jmp	$-64     	;abs 0x54bc

000054fe <.L9>:
    else if (function_tmp == 5)
    54fe:	3d 90 05 00 	cmp	#5,	r13	;
    5502:	06 20       	jnz	$+14     	;abs 0x5510

00005504 <.LVL30>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    5504:	bc 40 06 00 	mov	#6,	0(r12)	;
    5508:	00 00

0000550a <.Loc.193.1>:
        return t_AR_btbl_bitcount;
    550a:	3c 40 f4 58 	mov	#22772,	r12	;#0x58f4
    550e:	d6 3f       	jmp	$-82     	;abs 0x54bc

00005510 <.L10>:
    else if (function_tmp == 6)
    5510:	3d 90 06 00 	cmp	#6,	r13	;
    5514:	06 20       	jnz	$+14     	;abs 0x5522

00005516 <.LVL32>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    5516:	bc 40 07 00 	mov	#7,	0(r12)	;
    551a:	00 00

0000551c <.Loc.198.1>:
        return t_bit_shifter;
    551c:	3c 40 18 58 	mov	#22552,	r12	;#0x5818
    5520:	cd 3f       	jmp	$-100    	;abs 0x54bc

00005522 <.L11>:
        __INK_GET_VAR_FROM_BUF(function) = ++function_tmp;
    5522:	1d 53       	inc	r13		;

00005524 <.LVL34>:
    5524:	8c 4d 00 00 	mov	r13,	0(r12)	;

00005528 <.Loc.203.1>:
        return t_end;
    5528:	3c 40 a8 58 	mov	#22696,	r12	;#0x58a8
    552c:	c7 3f       	jmp	$-112    	;abs 0x54bc

0000552e <t_bit_count>:

void* __attribute__((annotate("INK::TASK15"))) t_bit_count()
{
    552e:	5a 15       	pushm	#6,	r10	;16-bit words

00005530 <.LCFI5>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5530:	b0 12 78 5b 	call	#23416		;#0x5b78
    5534:	07 4c       	mov	r12,	r7	;

00005536 <.Loc.210.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    5536:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    553a:	b0 12 b4 71 	call	#29108		;#0x71b4
    553e:	18 4c 24 45 	mov	17700(r12),r8	;0x04524

00005542 <.Loc.210.1>:
    5542:	2a 48       	mov	@r8,	r10	;
    5544:	19 48 02 00 	mov	2(r8),	r9	;

00005548 <.LVL38>:
    unsigned n_0_tmp       = __INK_GET_VAR_FROM_BUF(n_0);
    5548:	0c 47       	mov	r7,	r12	;
    554a:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    554e:	b0 12 b4 71 	call	#29108		;#0x71b4
    5552:	15 4c 12 45 	mov	17682(r12),r5	;0x04512

00005556 <.Loc.211.1>:
    5556:	26 45       	mov	@r5,	r6	;

00005558 <.Loc.212.1>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5558:	0c 47       	mov	r7,	r12	;
    555a:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    555e:	b0 12 b4 71 	call	#29108		;#0x71b4
    5562:	1f 4c 22 45 	mov	17698(r12),r15	;0x04522

00005566 <.Loc.212.1>:
    5566:	2d 4f       	mov	@r15,	r13	;

00005568 <.LVL42>:

    uint32_t tmp_seed = seed_tmp;
    seed_tmp              = tmp_seed + 13;
    5568:	0c 4a       	mov	r10,	r12	;
    556a:	3c 50 0d 00 	add	#13,	r12	;#0x000d
    556e:	88 4c 00 00 	mov	r12,	0(r8)	;
    5572:	0e 49       	mov	r9,	r14	;
    5574:	0e 63       	adc	r14		;
    5576:	88 4e 02 00 	mov	r14,	2(r8)	;

0000557a <.Loc.219.1>:
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;


    unsigned temp = 0;
    if (tmp_seed)
    557a:	0e 4a       	mov	r10,	r14	;
    557c:	0e d9       	bis	r9,	r14	;

0000557e <.Loc.219.1>:
    unsigned temp = 0;
    557e:	4c 43       	clr.b	r12		;

00005580 <.L20>:
    if (tmp_seed)
    5580:	0e 93       	cmp	#0,	r14	;r3 As==00
    5582:	0c 24       	jz	$+26     	;abs 0x559c

00005584 <.LVL45>:
    {
        do
        {
            temp++;
    5584:	1c 53       	inc	r12		;

00005586 <.Loc.225.1>:
        } while (0 != (tmp_seed = tmp_seed & (tmp_seed - 1)));
    5586:	08 4a       	mov	r10,	r8	;
    5588:	38 53       	add	#-1,	r8	;r3 As==11
    558a:	0e 49       	mov	r9,	r14	;
    558c:	3e 63       	addc	#-1,	r14	;r3 As==11

0000558e <.Loc.225.1>:
    558e:	08 fa       	and	r10,	r8	;
    5590:	0e f9       	and	r9,	r14	;
    5592:	0a 48       	mov	r8,	r10	;

00005594 <.LVL47>:
    5594:	09 4e       	mov	r14,	r9	;

00005596 <.LVL48>:
    5596:	0e 48       	mov	r8,	r14	;
    5598:	0e d9       	bis	r9,	r14	;
    559a:	f2 3f       	jmp	$-26     	;abs 0x5580

0000559c <.L13>:
    }

    __INK_GET_VAR_FROM_BUF(n_0) = n_0_tmp + temp;
    559c:	0c 56       	add	r6,	r12	;

0000559e <.LVL50>:
    559e:	85 4c 00 00 	mov	r12,	0(r5)	;

000055a2 <.Loc.229.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = ++iteration_tmp;
    55a2:	1d 53       	inc	r13		;
    55a4:	8f 4d 00 00 	mov	r13,	0(r15)	;

000055a8 <.Loc.231.1>:

    if (iteration_tmp < ITER)
    {
        return t_bit_count;
    55a8:	3c 40 2e 55 	mov	#21806,	r12	;#0x552e

000055ac <.Loc.231.1>:
    if (iteration_tmp < ITER)
    55ac:	7e 40 63 00 	mov.b	#99,	r14	;#0x0063
    55b0:	0e 9d       	cmp	r13,	r14	;
    55b2:	02 2c       	jc	$+6      	;abs 0x55b8

000055b4 <.Loc.237.1>:
    }
    else
    {
        return t_select_func;
    55b4:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

000055b8 <.L12>:
    }
}
    55b8:	55 17       	popm	#6,	r10	;16-bit words

000055ba <.LCFI6>:
    55ba:	30 41       	ret

000055bc <t_bitcount>:

void* __attribute__((annotate("INK::TASK15"))) t_bitcount()
{
    55bc:	6a 15       	pushm	#7,	r10	;16-bit words

000055be <.LCFI7>:
    55be:	21 82       	sub	#4,	r1	;r2 As==10

000055c0 <.LCFI8>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    55c0:	b0 12 78 5b 	call	#23416		;#0x5b78
    55c4:	0a 4c       	mov	r12,	r10	;

000055c6 <.Loc.244.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    55c6:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    55ca:	b0 12 b4 71 	call	#29108		;#0x71b4
    55ce:	1e 4c 24 45 	mov	17700(r12),r14	;0x04524

000055d2 <.Loc.244.1>:
    55d2:	28 4e       	mov	@r14,	r8	;
    55d4:	19 4e 02 00 	mov	2(r14),	r9	;

000055d8 <.LVL55>:
    unsigned n_1_tmp       = __INK_GET_VAR_FROM_BUF(n_1);
    55d8:	0c 4a       	mov	r10,	r12	;
    55da:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    55de:	81 4e 02 00 	mov	r14,	2(r1)	;
    55e2:	b0 12 b4 71 	call	#29108		;#0x71b4
    55e6:	1b 4c 14 45 	mov	17684(r12),r11	;0x04514

000055ea <.Loc.245.1>:
    55ea:	25 4b       	mov	@r11,	r5	;

000055ec <.LVL57>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    55ec:	0c 4a       	mov	r10,	r12	;
    55ee:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    55f2:	81 4b 00 00 	mov	r11,	0(r1)	;
    55f6:	b0 12 b4 71 	call	#29108		;#0x71b4
    55fa:	14 4c 22 45 	mov	17698(r12),r4	;0x04522

000055fe <.Loc.246.1>:
    55fe:	2a 44       	mov	@r4,	r10	;

00005600 <.LVL59>:

    uint32_t tmp_seed = seed_tmp;
    seed_tmp              = tmp_seed + 13;
    5600:	1e 41 02 00 	mov	2(r1),	r14	;
    5604:	0c 48       	mov	r8,	r12	;
    5606:	3c 50 0d 00 	add	#13,	r12	;#0x000d
    560a:	8e 4c 00 00 	mov	r12,	0(r14)	;
    560e:	0d 49       	mov	r9,	r13	;
    5610:	0d 63       	adc	r13		;
    5612:	8e 4d 02 00 	mov	r13,	2(r14)	;

00005616 <.Loc.252.1>:
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;

    tmp_seed = ((tmp_seed & 0xAAAAAAAAL) >> 1) + (tmp_seed & 0x55555555L);
    5616:	0c 48       	mov	r8,	r12	;
    5618:	0d 49       	mov	r9,	r13	;
    561a:	12 c3       	clrc
    561c:	0d 10       	rrc	r13		;
    561e:	0c 10       	rrc	r12		;
    5620:	0e 4c       	mov	r12,	r14	;
    5622:	3e f0 55 55 	and	#21845,	r14	;#0x5555
    5626:	0f 4d       	mov	r13,	r15	;
    5628:	3f f0 55 55 	and	#21845,	r15	;#0x5555

0000562c <.Loc.252.1>:
    562c:	0c 48       	mov	r8,	r12	;
    562e:	3c f0 55 55 	and	#21845,	r12	;#0x5555
    5632:	0d 49       	mov	r9,	r13	;
    5634:	3d f0 55 55 	and	#21845,	r13	;#0x5555

00005638 <.Loc.252.1>:
    5638:	06 4e       	mov	r14,	r6	;
    563a:	06 5c       	add	r12,	r6	;
    563c:	07 4f       	mov	r15,	r7	;
    563e:	07 6d       	addc	r13,	r7	;

00005640 <.LVL60>:
    tmp_seed = ((tmp_seed & 0xCCCCCCCCL) >> 2) + (tmp_seed & 0x33333333L);
    5640:	0e 46       	mov	r6,	r14	;
    5642:	0f 47       	mov	r7,	r15	;
    5644:	12 c3       	clrc
    5646:	0f 10       	rrc	r15		;
    5648:	0e 10       	rrc	r14		;
    564a:	12 c3       	clrc
    564c:	0f 10       	rrc	r15		;
    564e:	0e 10       	rrc	r14		;
    5650:	0d 4e       	mov	r14,	r13	;
    5652:	3d f0 33 33 	and	#13107,	r13	;#0x3333
    5656:	09 4f       	mov	r15,	r9	;
    5658:	39 f0 33 33 	and	#13107,	r9	;#0x3333

0000565c <.Loc.253.1>:
    565c:	0c 46       	mov	r6,	r12	;
    565e:	3c f0 33 33 	and	#13107,	r12	;#0x3333
    5662:	0e 47       	mov	r7,	r14	;
    5664:	3e f0 33 33 	and	#13107,	r14	;#0x3333

00005668 <.Loc.253.1>:
    5668:	06 4d       	mov	r13,	r6	;

0000566a <.LVL61>:
    566a:	06 5c       	add	r12,	r6	;
    566c:	07 49       	mov	r9,	r7	;
    566e:	07 6e       	addc	r14,	r7	;

00005670 <.LVL62>:
    tmp_seed = ((tmp_seed & 0xF0F0F0F0L) >> 4) + (tmp_seed & 0x0F0F0F0FL);
    5670:	0c 46       	mov	r6,	r12	;
    5672:	0d 47       	mov	r7,	r13	;
    5674:	6e 42       	mov.b	#4,	r14	;r2 As==10
    5676:	b0 12 ae 71 	call	#29102		;#0x71ae
    567a:	09 4c       	mov	r12,	r9	;
    567c:	39 f0 0f 0f 	and	#3855,	r9	;#0x0f0f
    5680:	08 4d       	mov	r13,	r8	;
    5682:	38 f0 0f 0f 	and	#3855,	r8	;#0x0f0f

00005686 <.Loc.254.1>:
    5686:	0c 46       	mov	r6,	r12	;
    5688:	3c f0 0f 0f 	and	#3855,	r12	;#0x0f0f
    568c:	0d 47       	mov	r7,	r13	;
    568e:	3d f0 0f 0f 	and	#3855,	r13	;#0x0f0f

00005692 <.Loc.254.1>:
    5692:	09 5c       	add	r12,	r9	;
    5694:	08 6d       	addc	r13,	r8	;

00005696 <.LVL65>:
    tmp_seed = ((tmp_seed & 0xFF00FF00L) >> 8) + (tmp_seed & 0x00FF00FFL);
    5696:	0c 49       	mov	r9,	r12	;
    5698:	0d 48       	mov	r8,	r13	;
    569a:	7e 42       	mov.b	#8,	r14	;r2 As==11
    569c:	b0 12 ae 71 	call	#29102		;#0x71ae
    56a0:	4e 4c       	mov.b	r12,	r14	;
    56a2:	4f 4d       	mov.b	r13,	r15	;

000056a4 <.Loc.255.1>:
    56a4:	0c 49       	mov	r9,	r12	;
    56a6:	7c f0 ff 00 	and.b	#255,	r12	;#0x00ff
    56aa:	0d 48       	mov	r8,	r13	;
    56ac:	7d f0 ff 00 	and.b	#255,	r13	;#0x00ff

000056b0 <.Loc.255.1>:
    56b0:	0e 5c       	add	r12,	r14	;
    56b2:	0f 6d       	addc	r13,	r15	;

000056b4 <.LVL67>:
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);
    56b4:	05 5e       	add	r14,	r5	;

000056b6 <.LVL68>:

    __INK_GET_VAR_FROM_BUF(n_1) = n_1_tmp + (int)tmp_seed;
    56b6:	2b 41       	mov	@r1,	r11	;
    56b8:	05 5f       	add	r15,	r5	;
    56ba:	8b 45 00 00 	mov	r5,	0(r11)	;

000056be <.Loc.259.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = ++iteration_tmp;
    56be:	1a 53       	inc	r10		;
    56c0:	84 4a 00 00 	mov	r10,	0(r4)	;

000056c4 <.Loc.261.1>:

    if (iteration_tmp < ITER)
    {
        return t_bitcount;
    56c4:	3c 40 bc 55 	mov	#21948,	r12	;#0x55bc

000056c8 <.Loc.261.1>:
    if (iteration_tmp < ITER)
    56c8:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    56cc:	0d 9a       	cmp	r10,	r13	;
    56ce:	02 2c       	jc	$+6      	;abs 0x56d4

000056d0 <.Loc.267.1>:
    }
    else
    {
        return t_select_func;
    56d0:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

000056d4 <.L21>:
    }
}
    56d4:	21 52       	add	#4,	r1	;r2 As==10

000056d6 <.LCFI9>:
    56d6:	64 17       	popm	#7,	r10	;16-bit words

000056d8 <.LCFI10>:
    56d8:	30 41       	ret

000056da <t_ntbl_bitcount>:
        return t_select_func;
    }
}

void* __attribute__((annotate("INK::TASK15"))) t_ntbl_bitcount()
{
    56da:	6a 15       	pushm	#7,	r10	;16-bit words

000056dc <.LCFI11>:
    56dc:	21 83       	decd	r1		;

000056de <.LCFI12>:
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    56de:	b0 12 78 5b 	call	#23416		;#0x5b78
    56e2:	09 4c       	mov	r12,	r9	;

000056e4 <.Loc.301.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    56e4:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    56e8:	b0 12 b4 71 	call	#29108		;#0x71b4
    56ec:	18 4c 24 45 	mov	17700(r12),r8	;0x04524

000056f0 <.Loc.301.1>:
    56f0:	2a 48       	mov	@r8,	r10	;
    56f2:	17 48 02 00 	mov	2(r8),	r7	;

000056f6 <.LVL73>:
    unsigned n_3_tmp       = __INK_GET_VAR_FROM_BUF(n_3);
    56f6:	0c 49       	mov	r9,	r12	;
    56f8:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    56fc:	b0 12 b4 71 	call	#29108		;#0x71b4
    5700:	14 4c 18 45 	mov	17688(r12),r4	;0x04518

00005704 <.Loc.302.1>:
    5704:	a1 44 00 00 	mov	@r4,	0(r1)	;

00005708 <.LVL75>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5708:	0c 49       	mov	r9,	r12	;
    570a:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    570e:	b0 12 b4 71 	call	#29108		;#0x71b4
    5712:	15 4c 22 45 	mov	17698(r12),r5	;0x04522

00005716 <.LVL77>:
           bits[(int)((__cry & 0x000F0000UL) >> 16)] + bits[(int)((__cry & 0x00F00000UL) >> 20)] +
           bits[(int)((__cry & 0x0F000000UL) >> 24)] + bits[(int)((__cry & 0xF0000000UL) >> 28)];

    uint32_t tmp_seed = seed_tmp;
    seed_tmp              = tmp_seed + 13;
    iteration_tmp++;
    5716:	26 45       	mov	@r5,	r6	;
    5718:	16 53       	inc	r6		;

0000571a <.LVL78>:
    n_3_tmp            += bits[(int)(__cry & 0x0000000FUL)] + bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    571a:	0c 4a       	mov	r10,	r12	;
    571c:	0d 47       	mov	r7,	r13	;
    571e:	6e 42       	mov.b	#4,	r14	;r2 As==10
    5720:	b0 12 ae 71 	call	#29102		;#0x71ae

00005724 <.Loc.306.1>:
    5724:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005728 <.Loc.306.1>:
    5728:	0d 4a       	mov	r10,	r13	;
    572a:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

0000572e <.Loc.306.1>:
    572e:	59 4d 3c 45 	mov.b	17724(r13),r9	;0x0453c
    5732:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c
    5736:	09 5c       	add	r12,	r9	;

00005738 <.Loc.307.1>:
           bits[(int)((__cry & 0x00000F00UL) >> 8)] + bits[(int)((__cry & 0x0000F000UL) >> 12)] +
    5738:	0c 4a       	mov	r10,	r12	;
    573a:	0d 47       	mov	r7,	r13	;
    573c:	7e 42       	mov.b	#8,	r14	;r2 As==11
    573e:	b0 12 ae 71 	call	#29102		;#0x71ae

00005742 <.Loc.307.1>:
    5742:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005746 <.Loc.306.1>:
    n_3_tmp            += bits[(int)(__cry & 0x0000000FUL)] + bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    5746:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c
    574a:	09 5c       	add	r12,	r9	;

0000574c <.Loc.307.1>:
           bits[(int)((__cry & 0x00000F00UL) >> 8)] + bits[(int)((__cry & 0x0000F000UL) >> 12)] +
    574c:	0c 4a       	mov	r10,	r12	;
    574e:	4b 19 0c 10 	rpt #12 { rrux.w	r12		;

00005752 <.Loc.307.1>:
    5752:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c
    5756:	09 5c       	add	r12,	r9	;

00005758 <.Loc.306.1>:
    n_3_tmp            += bits[(int)(__cry & 0x0000000FUL)] + bits[(int)((__cry & 0x000000F0UL) >> 4)] +
    5758:	29 51       	add	@r1,	r9	;
    575a:	84 49 00 00 	mov	r9,	0(r4)	;

0000575e <.Loc.312.1>:
    seed_tmp              = tmp_seed + 13;
    575e:	3a 50 0d 00 	add	#13,	r10	;#0x000d

00005762 <.LVL84>:
    5762:	88 4a 00 00 	mov	r10,	0(r8)	;
    5766:	07 63       	adc	r7		;
    5768:	88 47 02 00 	mov	r7,	2(r8)	;

0000576c <.Loc.317.1>:

    __INK_GET_VAR_FROM_BUF(n_3) = n_3_tmp;
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    576c:	85 46 00 00 	mov	r6,	0(r5)	;

00005770 <.Loc.319.1>:

    if (iteration_tmp < ITER)
    {
        return t_ntbl_bitcount;
    5770:	3c 40 da 56 	mov	#22234,	r12	;#0x56da

00005774 <.Loc.319.1>:
    if (iteration_tmp < ITER)
    5774:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    5778:	0d 96       	cmp	r6,	r13	;
    577a:	02 2c       	jc	$+6      	;abs 0x5780

0000577c <.Loc.325.1>:
    }
    else
    {
        return t_select_func;
    577c:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

00005780 <.L24>:
    }
}
    5780:	21 53       	incd	r1		;

00005782 <.LCFI13>:
    5782:	64 17       	popm	#7,	r10	;16-bit words

00005784 <.LCFI14>:
    5784:	30 41       	ret

00005786 <t_BW_btbl_bitcount>:

void* __attribute__((annotate("INK::TASK15"))) t_BW_btbl_bitcount()
{
    5786:	5a 15       	pushm	#6,	r10	;16-bit words

00005788 <.LCFI15>:
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5788:	b0 12 78 5b 	call	#23416		;#0x5b78
    578c:	05 4c       	mov	r12,	r5	;

0000578e <.Loc.333.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    578e:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5792:	b0 12 b4 71 	call	#29108		;#0x71b4
    5796:	1a 4c 24 45 	mov	17700(r12),r10	;0x04524

0000579a <.Loc.333.1>:
    579a:	29 4a       	mov	@r10,	r9	;
    579c:	18 4a 02 00 	mov	2(r10),	r8	;

000057a0 <.LVL90>:
    unsigned n_4_tmp       = __INK_GET_VAR_FROM_BUF(n_4);
    57a0:	0c 45       	mov	r5,	r12	;
    57a2:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    57a6:	b0 12 b4 71 	call	#29108		;#0x71b4
    57aa:	16 4c 1a 45 	mov	17690(r12),r6	;0x0451a

000057ae <.Loc.334.1>:
    57ae:	27 46       	mov	@r6,	r7	;

000057b0 <.LVL92>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    57b0:	0c 45       	mov	r5,	r12	;
    57b2:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    57b6:	b0 12 b4 71 	call	#29108		;#0x71b4
    57ba:	1f 4c 22 45 	mov	17698(r12),r15	;0x04522

000057be <.LVL94>:
    {
        unsigned char ch[4];
        long          y;
    } U;

    U.y = seed_tmp;
    57be:	0c 49       	mov	r9,	r12	;
    57c0:	0d 48       	mov	r8,	r13	;

000057c2 <.LVL95>:

    n_4_tmp               += bits[U.ch[0]] + bits[U.ch[1]] + bits[U.ch[3]] + bits[U.ch[2]];
    uint32_t tmp_seed  = seed_tmp;
    seed_tmp               = tmp_seed + 13;
    iteration_tmp++;
    57c2:	2e 4f       	mov	@r15,	r14	;
    57c4:	1e 53       	inc	r14		;

000057c6 <.LVL96>:
    n_4_tmp               += bits[U.ch[0]] + bits[U.ch[1]] + bits[U.ch[3]] + bits[U.ch[2]];
    57c6:	45 49       	mov.b	r9,	r5	;

000057c8 <.Loc.345.1>:
    57c8:	47 19 0c 10 	rpt #8 { rrux.w	r12		;

000057cc <.Loc.345.1>:
    57cc:	5c 4c 3c 45 	mov.b	17724(r12),r12	;0x0453c
    57d0:	55 45 3c 45 	mov.b	17724(r5),r5	;0x0453c
    57d4:	0c 55       	add	r5,	r12	;

000057d6 <.Loc.345.1>:
    57d6:	05 48       	mov	r8,	r5	;
    57d8:	47 19 05 10 	rpt #8 { rrux.w	r5		;

000057dc <.Loc.345.1>:
    57dc:	55 45 3c 45 	mov.b	17724(r5),r5	;0x0453c
    57e0:	0c 55       	add	r5,	r12	;

000057e2 <.Loc.345.1>:
    57e2:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

000057e6 <.Loc.345.1>:
    57e6:	5d 4d 3c 45 	mov.b	17724(r13),r13	;0x0453c
    57ea:	0c 5d       	add	r13,	r12	;

000057ec <.Loc.345.1>:
    57ec:	0c 57       	add	r7,	r12	;
    57ee:	86 4c 00 00 	mov	r12,	0(r6)	;

000057f2 <.Loc.347.1>:
    seed_tmp               = tmp_seed + 13;
    57f2:	39 50 0d 00 	add	#13,	r9	;#0x000d

000057f6 <.LVL98>:
    57f6:	8a 49 00 00 	mov	r9,	0(r10)	;
    57fa:	08 63       	adc	r8		;
    57fc:	8a 48 02 00 	mov	r8,	2(r10)	;

00005800 <.Loc.352.1>:

    __INK_GET_VAR_FROM_BUF(n_4) = n_4_tmp;
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    5800:	8f 4e 00 00 	mov	r14,	0(r15)	;

00005804 <.Loc.354.1>:

    if (iteration_tmp < ITER)
    {
        return t_BW_btbl_bitcount;
    5804:	3c 40 86 57 	mov	#22406,	r12	;#0x5786

00005808 <.Loc.354.1>:
    if (iteration_tmp < ITER)
    5808:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    580c:	0d 9e       	cmp	r14,	r13	;
    580e:	02 2c       	jc	$+6      	;abs 0x5814

00005810 <.Loc.360.1>:
    }
    else
    {
        return t_select_func;
    5810:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

00005814 <.L27>:
    }
}
    5814:	55 17       	popm	#6,	r10	;16-bit words

00005816 <.LCFI16>:
    5816:	30 41       	ret

00005818 <t_bit_shifter>:
        return t_select_func;
    }
}

void* __attribute__((annotate("INK::TASK15"))) t_bit_shifter()
{
    5818:	6a 15       	pushm	#7,	r10	;16-bit words

0000581a <.LCFI17>:
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    581a:	b0 12 78 5b 	call	#23416		;#0x5b78
    581e:	09 4c       	mov	r12,	r9	;

00005820 <.Loc.402.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    5820:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5824:	b0 12 b4 71 	call	#29108		;#0x71b4
    5828:	1a 4c 24 45 	mov	17700(r12),r10	;0x04524

0000582c <.Loc.402.1>:
    582c:	28 4a       	mov	@r10,	r8	;
    582e:	17 4a 02 00 	mov	2(r10),	r7	;

00005832 <.LVL103>:
    unsigned n_6_tmp       = __INK_GET_VAR_FROM_BUF(n_6);
    5832:	0c 49       	mov	r9,	r12	;
    5834:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5838:	b0 12 b4 71 	call	#29108		;#0x71b4
    583c:	15 4c 1e 45 	mov	17694(r12),r5	;0x0451e

00005840 <.Loc.403.1>:
    5840:	26 45       	mov	@r5,	r6	;

00005842 <.LVL105>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5842:	0c 49       	mov	r9,	r12	;
    5844:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5848:	b0 12 b4 71 	call	#29108		;#0x71b4
    584c:	1b 4c 22 45 	mov	17698(r12),r11	;0x04522

00005850 <.Loc.404.1>:
    5850:	2f 4b       	mov	@r11,	r15	;

00005852 <.LVL107>:

    unsigned i, nn;
    uint32_t tmp_seed = seed_tmp;
    5852:	0c 48       	mov	r8,	r12	;
    5854:	0d 47       	mov	r7,	r13	;

00005856 <.Loc.408.1>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    5856:	74 40 21 00 	mov.b	#33,	r4	;#0x0021

0000585a <.Loc.408.1>:
    585a:	49 43       	clr.b	r9		;

0000585c <.L31>:
    585c:	0e 4c       	mov	r12,	r14	;
    585e:	0e dd       	bis	r13,	r14	;
    5860:	0e 93       	cmp	#0,	r14	;r3 As==00
    5862:	18 20       	jnz	$+50     	;abs 0x5894

00005864 <.L35>:
    n_6_tmp      += nn;
    tmp_seed  = seed_tmp;
    tmp_seed += 13;
    seed_tmp      = tmp_seed;

    iteration_tmp++;
    5864:	0d 4f       	mov	r15,	r13	;
    5866:	1d 53       	inc	r13		;

00005868 <.LVL110>:
    n_6_tmp      += nn;
    5868:	09 56       	add	r6,	r9	;

0000586a <.LVL111>:
    586a:	85 49 00 00 	mov	r9,	0(r5)	;

0000586e <.Loc.414.1>:
    tmp_seed += 13;
    586e:	38 50 0d 00 	add	#13,	r8	;#0x000d
    5872:	8a 48 00 00 	mov	r8,	0(r10)	;
    5876:	07 63       	adc	r7		;
    5878:	8a 47 02 00 	mov	r7,	2(r10)	;

0000587c <.Loc.421.1>:

    __INK_GET_VAR_FROM_BUF(n_6) = n_6_tmp;
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    587c:	8b 4d 00 00 	mov	r13,	0(r11)	;

00005880 <.Loc.423.1>:

    if (iteration_tmp < ITER)
    {
        return t_bit_shifter;
    5880:	3c 40 18 58 	mov	#22552,	r12	;#0x5818

00005884 <.Loc.423.1>:
    if (iteration_tmp < ITER)
    5884:	7e 40 63 00 	mov.b	#99,	r14	;#0x0063
    5888:	0e 9d       	cmp	r13,	r14	;
    588a:	02 2c       	jc	$+6      	;abs 0x5890

0000588c <.Loc.429.1>:
    }
    else
    {
        return t_select_func;
    588c:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

00005890 <.L30>:
    }
}
    5890:	64 17       	popm	#7,	r10	;16-bit words

00005892 <.LCFI18>:
    5892:	30 41       	ret

00005894 <.L32>:
    5894:	34 53       	add	#-1,	r4	;r3 As==11

00005896 <.Loc.408.1>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    5896:	04 93       	cmp	#0,	r4	;r3 As==00
    5898:	e5 27       	jz	$-52     	;abs 0x5864

0000589a <.Loc.410.1>:
        nn += (unsigned)(tmp_seed & 1L);
    589a:	0e 4c       	mov	r12,	r14	;
    589c:	5e f3       	and.b	#1,	r14	;r3 As==01

0000589e <.Loc.410.1>:
    589e:	09 5e       	add	r14,	r9	;

000058a0 <.Loc.408.1>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    58a0:	12 c3       	clrc
    58a2:	0d 10       	rrc	r13		;
    58a4:	0c 10       	rrc	r12		;
    58a6:	da 3f       	jmp	$-74     	;abs 0x585c

000058a8 <t_end>:

void* t_end()
{
    58a8:	0a 15       	pushm	#1,	r10	;16-bit words

000058aa <.LCFI20>:
    /* ------ local variables for persistents ------*/
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    58aa:	b0 12 78 5b 	call	#23416		;#0x5b78
    58ae:	0a 4c       	mov	r12,	r10	;

000058b0 <.Loc.437.1>:
uint8_t pinCont_tmp = __INK_GET_VAR_FROM_BUF(pinCont);
    58b0:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    58b4:	b0 12 b4 71 	call	#29108		;#0x71b4

000058b8 <.Loc.437.1>:
    58b8:	1c 4c 10 45 	mov	17680(r12),r12	;0x04510
    58bc:	6c 4c       	mov.b	@r12,	r12	;

000058be <.LVL121>:
    /* ------------------------------------- */

#ifdef RAISE_PIN
    if (full_run_started)
    58be:	c2 93 3c 46 	cmp.b	#0,	&0x463c	;r3 As==00
    58c2:	08 24       	jz	$+18     	;abs 0x58d4

000058c4 <.Loc.443.1>:
    {
        __port_on(3, 4);
    58c4:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    58c8:	22 02

000058ca <.Loc.443.1>:
        __port_off(3, 4);
    58ca:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    58ce:	22 02

000058d0 <.Loc.444.1>:
        full_run_started = 0;
    58d0:	c2 43 3c 46 	mov.b	#0,	&0x463c	;r3 As==00

000058d4 <.L38>:
    }
#endif

    if (pinCont_tmp)
    58d4:	0c 93       	cmp	#0,	r12	;r3 As==00
    58d6:	01 24       	jz	$+4      	;abs 0x58da

000058d8 <.Loc.451.1>:
    {
        __no_operation();
    58d8:	03 43       	nop

000058da <.L39>:
    }

    __INK_GET_VAR_FROM_BUF(pinCont) = 0;
    58da:	0c 4a       	mov	r10,	r12	;

000058dc <.LVL122>:
    58dc:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    58e0:	b0 12 b4 71 	call	#29108		;#0x71b4

000058e4 <.Loc.454.1>:
    58e4:	1c 4c 10 45 	mov	17680(r12),r12	;0x04510
    58e8:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

000058ec <.Loc.456.1>:

    return t_init;
}
    58ec:	3c 40 be 53 	mov	#21438,	r12	;#0x53be
    58f0:	0a 17       	popm	#1,	r10	;16-bit words

000058f2 <.LCFI21>:
    58f2:	30 41       	ret

000058f4 <t_AR_btbl_bitcount>:
{
    58f4:	5a 15       	pushm	#6,	r10	;16-bit words

000058f6 <.LCFI22>:
    58f6:	21 82       	sub	#4,	r1	;r2 As==10

000058f8 <.LCFI23>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    58f8:	b0 12 78 5b 	call	#23416		;#0x5b78
    58fc:	0a 4c       	mov	r12,	r10	;

000058fe <.Loc.368.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    58fe:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5902:	b0 12 b4 71 	call	#29108		;#0x71b4
    5906:	1c 4c 24 45 	mov	17700(r12),r12	;0x04524

0000590a <.Loc.368.1>:
    590a:	a1 4c 00 00 	mov	@r12,	0(r1)	;
    590e:	91 4c 02 00 	mov	2(r12),	2(r1)	;
    5912:	02 00

00005914 <.Loc.369.1>:
    unsigned n_5_tmp       = __INK_GET_VAR_FROM_BUF(n_5);
    5914:	0c 4a       	mov	r10,	r12	;
    5916:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    591a:	b0 12 b4 71 	call	#29108		;#0x71b4

0000591e <.Loc.369.1>:
    591e:	1c 4c 1c 45 	mov	17692(r12),r12	;0x0451c
    5922:	25 4c       	mov	@r12,	r5	;

00005924 <.LVL128>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5924:	0c 4a       	mov	r10,	r12	;
    5926:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    592a:	b0 12 b4 71 	call	#29108		;#0x71b4

0000592e <.Loc.370.1>:
    592e:	1c 4c 22 45 	mov	17698(r12),r12	;0x04522
    5932:	28 4c       	mov	@r12,	r8	;

00005934 <.Loc.372.1>:
    Accu               = bits[*((unsigned char *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(Ptr++, 15))];
    5934:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    5938:	4d 43       	clr.b	r13		;
    593a:	0c 41       	mov	r1,	r12	;
    593c:	b0 12 96 5b 	call	#23446		;#0x5b96

00005940 <.Loc.375.1>:
    5940:	6c 4c       	mov.b	@r12,	r12	;
    5942:	3c 50 3c 45 	add	#17724,	r12	;#0x453c

00005946 <.Loc.376.1>:
    Accu              += bits[*Ptr++];
    5946:	5d 41 01 00 	mov.b	1(r1),	r13	;

0000594a <.Loc.376.1>:
    594a:	59 4d 3c 45 	mov.b	17724(r13),r9	;0x0453c
    594e:	6c 4c       	mov.b	@r12,	r12	;

00005950 <.LVL133>:
    5950:	09 5c       	add	r12,	r9	;

00005952 <.LVL134>:
    Accu              += bits[*Ptr++];
    5952:	5c 41 02 00 	mov.b	2(r1),	r12	;
    5956:	3c 50 3c 45 	add	#17724,	r12	;#0x453c

0000595a <.Loc.377.1>:
    595a:	6c 4c       	mov.b	@r12,	r12	;
    595c:	09 5c       	add	r12,	r9	;

0000595e <.LVL135>:
    seed_tmp               = tmp_seed + 13;
    595e:	26 41       	mov	@r1,	r6	;
    5960:	36 50 0d 00 	add	#13,	r6	;#0x000d
    5964:	17 41 02 00 	mov	2(r1),	r7	;
    5968:	07 63       	adc	r7		;

0000596a <.Loc.382.1>:
    iteration_tmp++;
    596a:	18 53       	inc	r8		;

0000596c <.Loc.384.1>:
    __INK_GET_VAR_FROM_BUF(n_5) = n_5_tmp;
    596c:	0c 4a       	mov	r10,	r12	;
    596e:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5972:	b0 12 b4 71 	call	#29108		;#0x71b4

00005976 <.LVL137>:
    5976:	1c 4c 1c 45 	mov	17692(r12),r12	;0x0451c

0000597a <.Loc.378.1>:
    Accu              += bits[*Ptr];
    597a:	5d 41 03 00 	mov.b	3(r1),	r13	;
    597e:	3d 50 3c 45 	add	#17724,	r13	;#0x453c

00005982 <.Loc.378.1>:
    5982:	6d 4d       	mov.b	@r13,	r13	;
    5984:	09 5d       	add	r13,	r9	;

00005986 <.Loc.379.1>:
    n_5_tmp               += Accu;
    5986:	09 55       	add	r5,	r9	;
    5988:	8c 49 00 00 	mov	r9,	0(r12)	;

0000598c <.Loc.385.1>:
    __INK_GET_VAR_FROM_BUF(seed) = seed_tmp;
    598c:	0c 4a       	mov	r10,	r12	;
    598e:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5992:	b0 12 b4 71 	call	#29108		;#0x71b4

00005996 <.Loc.385.1>:
    5996:	1c 4c 24 45 	mov	17700(r12),r12	;0x04524
    599a:	8c 46 00 00 	mov	r6,	0(r12)	;
    599e:	8c 47 02 00 	mov	r7,	2(r12)	;

000059a2 <.Loc.386.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    59a2:	0c 4a       	mov	r10,	r12	;
    59a4:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    59a8:	b0 12 b4 71 	call	#29108		;#0x71b4

000059ac <.Loc.386.1>:
    59ac:	1c 4c 22 45 	mov	17698(r12),r12	;0x04522
    59b0:	8c 48 00 00 	mov	r8,	0(r12)	;

000059b4 <.Loc.388.1>:
        return t_AR_btbl_bitcount;
    59b4:	3c 40 f4 58 	mov	#22772,	r12	;#0x58f4

000059b8 <.Loc.388.1>:
    if (iteration_tmp < ITER)
    59b8:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    59bc:	0d 98       	cmp	r8,	r13	;
    59be:	02 2c       	jc	$+6      	;abs 0x59c4

000059c0 <.Loc.394.1>:
        return t_select_func;
    59c0:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

000059c4 <.L43>:
}
    59c4:	21 52       	add	#4,	r1	;r2 As==10

000059c6 <.LCFI24>:
    59c6:	55 17       	popm	#6,	r10	;16-bit words

000059c8 <.LCFI25>:
    59c8:	30 41       	ret

000059ca <recursive_cnt>:
{
    59ca:	1a 15       	pushm	#2,	r10	;16-bit words

000059cc <.LCFI26>:
    59cc:	4a 43       	clr.b	r10		;

000059ce <.L47>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    59ce:	0e 4c       	mov	r12,	r14	;
    59d0:	7e f0 0f 00 	and.b	#15,	r14	;#0x000f

000059d4 <.Loc.84.1>:
    59d4:	59 4e 3c 45 	mov.b	17724(r14),r9	;0x0453c

000059d8 <.Loc.86.1>:
    if (0L != (x >>= 4))
    59d8:	6e 42       	mov.b	#4,	r14	;r2 As==10
    59da:	b0 12 ae 71 	call	#29102		;#0x71ae
    59de:	0e 4c       	mov	r12,	r14	;

000059e0 <.LVL147>:
    59e0:	0a 59       	add	r9,	r10	;

000059e2 <.Loc.86.1>:
    59e2:	0e dd       	bis	r13,	r14	;
    59e4:	0e 93       	cmp	#0,	r14	;r3 As==00
    59e6:	f3 23       	jnz	$-24     	;abs 0x59ce

000059e8 <.Loc.91.1>:
}
    59e8:	0c 4a       	mov	r10,	r12	;

000059ea <.LVL148>:
    59ea:	19 17       	popm	#2,	r10	;16-bit words

000059ec <.LCFI27>:
    59ec:	30 41       	ret

000059ee <non_recursive_cnt>:
{
    59ee:	0a 15       	pushm	#1,	r10	;16-bit words

000059f0 <.LCFI28>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    59f0:	0e 4c       	mov	r12,	r14	;
    59f2:	7e f0 0f 00 	and.b	#15,	r14	;#0x000f

000059f6 <.Loc.96.1>:
    59f6:	5a 4e 3c 45 	mov.b	17724(r14),r10	;0x0453c

000059fa <.L50>:
    while (0L != (x >>= 4))
    59fa:	6e 42       	mov.b	#4,	r14	;r2 As==10
    59fc:	b0 12 ae 71 	call	#29102		;#0x71ae

00005a00 <.LVL151>:
    5a00:	0e 4c       	mov	r12,	r14	;

00005a02 <.LVL152>:
    5a02:	0e dd       	bis	r13,	r14	;
    5a04:	0e 93       	cmp	#0,	r14	;r3 As==00
    5a06:	03 20       	jnz	$+8      	;abs 0x5a0e

00005a08 <.Loc.103.1>:
}
    5a08:	0c 4a       	mov	r10,	r12	;

00005a0a <.LVL153>:
    5a0a:	0a 17       	popm	#1,	r10	;16-bit words

00005a0c <.LCFI29>:
    5a0c:	30 41       	ret

00005a0e <.L51>:
        cnt += bits[(int)(x & 0x0000000FL)];
    5a0e:	0e 4c       	mov	r12,	r14	;
    5a10:	7e f0 0f 00 	and.b	#15,	r14	;#0x000f

00005a14 <.Loc.100.1>:
    5a14:	5e 4e 3c 45 	mov.b	17724(r14),r14	;0x0453c
    5a18:	0a 5e       	add	r14,	r10	;
    5a1a:	ef 3f       	jmp	$-32     	;abs 0x59fa

00005a1c <t_ntbl_bitcnt>:
{
    5a1c:	6a 15       	pushm	#7,	r10	;16-bit words

00005a1e <.LCFI31>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5a1e:	b0 12 78 5b 	call	#23416		;#0x5b78
    5a22:	0a 4c       	mov	r12,	r10	;

00005a24 <.Loc.274.1>:
uint32_t seed_tmp      = __INK_GET_VAR_FROM_BUF(seed);
    5a24:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5a28:	b0 12 b4 71 	call	#29108		;#0x71b4
    5a2c:	19 4c 24 45 	mov	17700(r12),r9	;0x04524

00005a30 <.Loc.274.1>:
    5a30:	28 49       	mov	@r9,	r8	;
    5a32:	17 49 02 00 	mov	2(r9),	r7	;

00005a36 <.LVL159>:
    unsigned n_2_tmp       = __INK_GET_VAR_FROM_BUF(n_2);
    5a36:	0c 4a       	mov	r10,	r12	;
    5a38:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5a3c:	b0 12 b4 71 	call	#29108		;#0x71b4
    5a40:	14 4c 16 45 	mov	17686(r12),r4	;0x04516

00005a44 <.Loc.275.1>:
    5a44:	26 44       	mov	@r4,	r6	;

00005a46 <.LVL161>:
    unsigned iteration_tmp = __INK_GET_VAR_FROM_BUF(iteration);
    5a46:	0c 4a       	mov	r10,	r12	;
    5a48:	7d 40 16 00 	mov.b	#22,	r13	;#0x0016
    5a4c:	b0 12 b4 71 	call	#29108		;#0x71b4
    5a50:	15 4c 22 45 	mov	17698(r12),r5	;0x04522

00005a54 <.Loc.276.1>:
    5a54:	2a 45       	mov	@r5,	r10	;

00005a56 <.LVL163>:
    n_2_tmp               += non_recursive_cnt(tmp_seed);
    5a56:	0c 48       	mov	r8,	r12	;
    5a58:	0d 47       	mov	r7,	r13	;
    5a5a:	b0 12 ee 59 	call	#23022		;#0x59ee

00005a5e <.LVL164>:
    iteration_tmp++;
    5a5e:	0d 4a       	mov	r10,	r13	;
    5a60:	1d 53       	inc	r13		;

00005a62 <.LVL165>:
    n_2_tmp               += non_recursive_cnt(tmp_seed);
    5a62:	0c 56       	add	r6,	r12	;

00005a64 <.LVL166>:
    5a64:	84 4c 00 00 	mov	r12,	0(r4)	;

00005a68 <.Loc.280.1>:
    seed_tmp               = tmp_seed + 13;
    5a68:	38 50 0d 00 	add	#13,	r8	;#0x000d

00005a6c <.LVL167>:
    5a6c:	89 48 00 00 	mov	r8,	0(r9)	;
    5a70:	07 63       	adc	r7		;
    5a72:	89 47 02 00 	mov	r7,	2(r9)	;

00005a76 <.Loc.285.1>:
    __INK_GET_VAR_FROM_BUF(iteration) = iteration_tmp;
    5a76:	85 4d 00 00 	mov	r13,	0(r5)	;

00005a7a <.Loc.287.1>:
        return t_ntbl_bitcnt;
    5a7a:	3c 40 1c 5a 	mov	#23068,	r12	;#0x5a1c

00005a7e <.LVL169>:
    if (iteration_tmp < ITER)
    5a7e:	7e 40 63 00 	mov.b	#99,	r14	;#0x0063
    5a82:	0e 9d       	cmp	r13,	r14	;
    5a84:	02 2c       	jc	$+6      	;abs 0x5a8a

00005a86 <.Loc.293.1>:
        return t_select_func;
    5a86:	3c 40 72 54 	mov	#21618,	r12	;#0x5472

00005a8a <.L52>:
}
    5a8a:	64 17       	popm	#7,	r10	;16-bit words

00005a8c <.LCFI32>:
    5a8c:	30 41       	ret

00005a8e <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    5a8e:	b0 12 b6 5b 	call	#23478		;#0x5bb6
    5a92:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5a94:	07 24       	jz	$+16     	;abs 0x5aa4

00005a96 <.Loc.120.1>:
    5a96:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5a98:	3d 40 b8 53 	mov	#21432,	r13	;#0x53b8
    5a9c:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5aa0:	b0 12 24 5c 	call	#23588		;#0x5c24

00005aa4 <.L55>:
    5aa4:	30 41       	ret

00005aa6 <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS(pinCont);
    5aa6:	3c 40 10 45 	mov	#17680,	r12	;#0x4510
    5aaa:	bc 40 40 53 	mov	#21312,	0(r12)	;#0x5340
    5aae:	00 00

00005ab0 <.Loc.459.1>:
    5ab0:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5ab4:	3d 50 40 53 	add	#21312,	r13	;#0x5340
    5ab8:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005abc <.Loc.459.1>:
    __INK_SET_BUFFER_POINTERS(n_0);
    5abc:	bc 40 3e 53 	mov	#21310,	2(r12)	;#0x533e
    5ac0:	02 00

00005ac2 <.Loc.460.1>:
    5ac2:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5ac6:	3d 50 3e 53 	add	#21310,	r13	;#0x533e
    5aca:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005ace <.Loc.460.1>:
    __INK_SET_BUFFER_POINTERS(n_1);
    5ace:	bc 40 3c 53 	mov	#21308,	4(r12)	;#0x533c
    5ad2:	04 00

00005ad4 <.Loc.461.1>:
    5ad4:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5ad8:	3d 50 3c 53 	add	#21308,	r13	;#0x533c
    5adc:	8c 4d 1a 00 	mov	r13,	26(r12)	; 0x001a

00005ae0 <.Loc.461.1>:
    __INK_SET_BUFFER_POINTERS(n_2);
    5ae0:	bc 40 3a 53 	mov	#21306,	6(r12)	;#0x533a
    5ae4:	06 00

00005ae6 <.Loc.462.1>:
    5ae6:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5aea:	3d 50 3a 53 	add	#21306,	r13	;#0x533a
    5aee:	8c 4d 1c 00 	mov	r13,	28(r12)	; 0x001c

00005af2 <.Loc.462.1>:
    __INK_SET_BUFFER_POINTERS(n_3);
    5af2:	bc 40 38 53 	mov	#21304,	8(r12)	;#0x5338
    5af6:	08 00

00005af8 <.Loc.463.1>:
    5af8:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5afc:	3d 50 38 53 	add	#21304,	r13	;#0x5338
    5b00:	8c 4d 1e 00 	mov	r13,	30(r12)	; 0x001e

00005b04 <.Loc.463.1>:
    __INK_SET_BUFFER_POINTERS(n_4);
    5b04:	bc 40 36 53 	mov	#21302,	10(r12)	;#0x5336, 0x000a
    5b08:	0a 00

00005b0a <.Loc.464.1>:
    5b0a:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b0e:	3d 50 36 53 	add	#21302,	r13	;#0x5336
    5b12:	8c 4d 20 00 	mov	r13,	32(r12)	; 0x0020

00005b16 <.Loc.464.1>:
    __INK_SET_BUFFER_POINTERS(n_5);
    5b16:	bc 40 34 53 	mov	#21300,	12(r12)	;#0x5334, 0x000c
    5b1a:	0c 00

00005b1c <.Loc.465.1>:
    5b1c:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b20:	3d 50 34 53 	add	#21300,	r13	;#0x5334
    5b24:	8c 4d 22 00 	mov	r13,	34(r12)	; 0x0022

00005b28 <.Loc.465.1>:
    __INK_SET_BUFFER_POINTERS(n_6);
    5b28:	bc 40 32 53 	mov	#21298,	14(r12)	;#0x5332, 0x000e
    5b2c:	0e 00

00005b2e <.Loc.466.1>:
    5b2e:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b32:	3d 50 32 53 	add	#21298,	r13	;#0x5332
    5b36:	8c 4d 24 00 	mov	r13,	36(r12)	; 0x0024

00005b3a <.Loc.466.1>:
    __INK_SET_BUFFER_POINTERS(function);
    5b3a:	bc 40 30 53 	mov	#21296,	16(r12)	;#0x5330, 0x0010
    5b3e:	10 00

00005b40 <.Loc.467.1>:
    5b40:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b44:	3d 50 30 53 	add	#21296,	r13	;#0x5330
    5b48:	8c 4d 26 00 	mov	r13,	38(r12)	; 0x0026

00005b4c <.Loc.467.1>:
    __INK_SET_BUFFER_POINTERS(iteration);
    5b4c:	bc 40 2e 53 	mov	#21294,	18(r12)	;#0x532e, 0x0012
    5b50:	12 00

00005b52 <.Loc.468.1>:
    5b52:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b56:	3d 50 2e 53 	add	#21294,	r13	;#0x532e
    5b5a:	8c 4d 28 00 	mov	r13,	40(r12)	; 0x0028

00005b5e <.Loc.468.1>:
    __INK_SET_BUFFER_POINTERS(seed);
    5b5e:	bc 40 2a 53 	mov	#21290,	20(r12)	;#0x532a, 0x0014
    5b62:	14 00

00005b64 <.Loc.469.1>:
    5b64:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5b68:	3d 50 2a 53 	add	#21290,	r13	;#0x532a
    5b6c:	8c 4d 2a 00 	mov	r13,	42(r12)	; 0x002a

00005b70 <.Loc.469.1>:
}
    5b70:	30 41       	ret

00005b72 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    5b72:	3c 50 18 00 	add	#24,	r12	;#0x0018

00005b76 <.LVL1>:
    5b76:	30 41       	ret

00005b78 <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    5b78:	5c 42 56 52 	mov.b	&0x5256,r12	;0x5256
    5b7c:	30 41       	ret

00005b7e <is_shared>:

bool is_shared(void* address)
{
    5b7e:	0d 4c       	mov	r12,	r13	;

00005b80 <.Loc.27.1>:
    return address >= buffer_start_address && address < buffer_end_address;
    5b80:	4c 43       	clr.b	r12		;

00005b82 <.LVL3>:
    5b82:	3d 90 2a 53 	cmp	#21290,	r13	;#0x532a

00005b86 <L0^A>:
    5b86:	05 28       	jnc	$+12     	;abs 0x5b92

00005b88 <.Loc.27.1>:
    5b88:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5b8a:	3d 90 42 53 	cmp	#21314,	r13	;#0x5342
    5b8e:	01 28       	jnc	$+4      	;abs 0x5b92
    5b90:	4c 43       	clr.b	r12		;

00005b92 <.L4>:
}
    5b92:	5c f3       	and.b	#1,	r12	;r3 As==01
    5b94:	30 41       	ret

00005b96 <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    5b96:	0a 15       	pushm	#1,	r10	;16-bit words

00005b98 <.LCFI0>:
    5b98:	0a 4c       	mov	r12,	r10	;

00005b9a <.Loc.42.1>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
    5b9a:	b0 12 7e 5b 	call	#23422		;#0x5b7e

00005b9e <.LVL5>:
    5b9e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5ba0:	07 24       	jz	$+16     	;abs 0x5bb0

00005ba2 <.LBB10>:
    return address + buffer_offset * buffer_index;
    5ba2:	5c 42 56 52 	mov.b	&0x5256,r12	;0x5256
    5ba6:	3d 40 18 00 	mov	#24,	r13	;#0x0018
    5baa:	b0 12 b4 71 	call	#29108		;#0x71b4

00005bae <.Loc.32.1>:
    5bae:	0a 5c       	add	r12,	r10	;

00005bb0 <.L8>:
}
    5bb0:	0c 4a       	mov	r10,	r12	;
    5bb2:	0a 17       	popm	#1,	r10	;16-bit words

00005bb4 <.LCFI1>:
    5bb4:	30 41       	ret

00005bb6 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    5bb6:	5c 42 3e 46 	mov.b	&0x463e,r12	;0x463e
    5bba:	30 41       	ret

00005bbc <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    5bbc:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    5bc0:	30 41       	ret

00005bc2 <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    5bc2:	b0 12 94 63 	call	#25492		;#0x6394

00005bc6 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    5bc6:	c2 93 3e 46 	cmp.b	#0,	&0x463e	;r3 As==00
    5bca:	04 24       	jz	$+10     	;abs 0x5bd4

00005bcc <.Loc.34.1>:
        // init the scheduler state
        __scheduler_boot_init();
    5bcc:	b0 12 ec 63 	call	#25580		;#0x63ec

00005bd0 <.Loc.36.1>:
        // init the event handler
        __events_boot_init();
    5bd0:	b0 12 86 61 	call	#24966		;#0x6186

00005bd4 <.L4>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    5bd4:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005bd8 <.Loc.50.1>:
    5bd8:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

00005bdc <.Loc.50.1>:
    5bdc:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005be0 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    5be0:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5be4:	02 02

00005be6 <.Loc.51.1>:
    5be6:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    5bea:	04 02

00005bec <.Loc.51.1>:
    5bec:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5bf0:	02 02

00005bf2 <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    5bf2:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5bf6:	22 02

00005bf8 <.Loc.52.1>:
    5bf8:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    5bfc:	24 02

00005bfe <.Loc.52.1>:
    5bfe:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c02:	22 02

00005c04 <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    5c04:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c08:	22 02

00005c0a <.Loc.53.1>:
    5c0a:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    5c0e:	24 02

00005c10 <.Loc.53.1>:
    5c10:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c14:	22 02

00005c16 <.Loc.53.1>:
#endif
}
    5c16:	30 41       	ret

00005c18 <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    5c18:	c2 43 3e 46 	mov.b	#0,	&0x463e	;r3 As==00

00005c1c <.Loc.69.1>:
    __ink_initialized = true;
    5c1c:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

00005c20 <.Loc.70.1>:
    5c20:	30 41       	ret

00005c22 <L0^A>:
	...

00005c24 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    5c24:	1a 15       	pushm	#2,	r10	;16-bit words

00005c26 <.LCFI0>:
    5c26:	21 82       	sub	#4,	r1	;r2 As==10

00005c28 <.LCFI1>:
    5c28:	4a 4c       	mov.b	r12,	r10	;
    5c2a:	49 4e       	mov.b	r14,	r9	;

00005c2c <.Loc.147.1>:
    if (!ink_is_first_boot())
    5c2c:	81 4d 02 00 	mov	r13,	2(r1)	;
    5c30:	b0 12 b6 5b 	call	#23478		;#0x5bb6

00005c34 <.LVL1>:
    5c34:	1d 41 02 00 	mov	2(r1),	r13	;
    5c38:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5c3a:	63 24       	jz	$+200    	;abs 0x5d02

00005c3c <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    5c3c:	4c 4a       	mov.b	r10,	r12	;
    5c3e:	7c 53       	add.b	#-1,	r12	;r3 As==11
    5c40:	7e 40 3e 00 	mov.b	#62,	r14	;#0x003e
    5c44:	4e 9c       	cmp.b	r12,	r14	;
    5c46:	02 2c       	jc	$+6      	;abs 0x5c4c
    5c48:	80 00 74 61 	mova	#24948,	r0	;0x06174
    5c4c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5c50:	5c 02       	rlam	#1,	r12	;
    5c52:	3c 50 5c 5c 	add	#23644,	r12	;#0x5c5c
    5c56:	2c 4c       	mov	@r12,	r12	;
    5c58:	00 4c       	br	r12		;
	...

00005c5c <.L6>:
    5c5c:	da 5c 08 5d 	add.b	23816(r12),23834(r10);0x05d08, 0x5d1a
    5c60:	1a 5d
    5c62:	2c 5d       	add	@r13,	r12	;
    5c64:	3e 5d       	add	@r13+,	r14	;
    5c66:	50 5d 62 5d 	add.b	23906(r13),r0	;0x05d62
    5c6a:	74 5d       	add.b	@r13+,	r4	;
    5c6c:	86 5d 98 5d 	add	r13,	23960(r6); 0x5d98
    5c70:	aa 5d bc 5d 	add	@r13,	23996(r10); 0x5dbc
    5c74:	ce 5d e0 5d 	add.b	r13,	24032(r14); 0x5de0
    5c78:	f2 5d 04 5e 	add.b	@r13+,	&0x5e04	;
    5c7c:	16 5e 28 5e 	add	24104(r14),r6	;0x05e28
    5c80:	3a 5e       	add	@r14+,	r10	;
    5c82:	4c 5e       	add.b	r14,	r12	;
    5c84:	5e 5e 70 5e 	add.b	24176(r14),r14	;0x05e70
    5c88:	82 5e 94 5e 	add	r14,	&0x5e94	;
    5c8c:	a6 5e b8 5e 	add	@r14,	24248(r6); 0x5eb8
    5c90:	ca 5e dc 5e 	add.b	r14,	24284(r10); 0x5edc
    5c94:	ee 5e 00 5f 	add.b	@r14,	24320(r14); 0x5f00
    5c98:	12 5f 24 5f 	add	24356(r15),r2	;0x05f24
    5c9c:	36 5f       	add	@r15+,	r6	;
    5c9e:	48 5f       	add.b	r15,	r8	;
    5ca0:	5a 5f 6c 5f 	add.b	24428(r15),r10	;0x05f6c
    5ca4:	7e 5f       	add.b	@r15+,	r14	;
    5ca6:	90 5f a2 5f 	add	24482(r15),0x5fb4	;0x05fa2, PC rel. 0xbc5e
    5caa:	b4 5f
    5cac:	c6 5f d8 5f 	add.b	r15,	24536(r6); 0x5fd8
    5cb0:	ea 5f fc 5f 	add.b	@r15,	24572(r10); 0x5ffc
    5cb4:	0e 60       	addc	r0,	r14	;
    5cb6:	20 60       	addc	@r0,	r0	;
    5cb8:	32 60 44 60 	addc	#24644,	r2	;#0x6044
    5cbc:	56 60 68 60 	addc.b	0x6068,	r6	;PC rel. 0xbd26
    5cc0:	7a 60 8c 60 	addc.b	#24716,	r10	;#0x608c
    5cc4:	9e 60 b0 60 	addc	0x60b0,	24770(r14);PC rel. 0xbd76, 0x60c2
    5cc8:	c2 60
    5cca:	d4 60 e8 60 	addc.b	0x60e8,	24828(r4);PC rel. 0xbdb4, 0x60fc
    5cce:	fc 60
    5cd0:	10 61 24 61 	addc	24868(r1),r0	;0x06124
    5cd4:	38 61       	addc	@r1+,	r8	;
    5cd6:	4c 61       	addc.b	r1,	r12	;
    5cd8:	60 61       	addc.b	@r1,	r0	;

00005cda <.L68>:
    {
        __INK_CREATE_THREAD_CASE(1)
    5cda:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5cde:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ce2 <.LVL4>:
    5ce2:	3c 40 00 00 	mov	#0,	r12	;

00005ce6 <.Loc.158.1>:
    5ce6:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a

00005cea <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    5cea:	81 4c 00 00 	mov	r12,	0(r1)	;
    5cee:	4c 4a       	mov.b	r10,	r12	;

00005cf0 <.LVL7>:
    5cf0:	b0 12 16 64 	call	#25622		;#0x6416

00005cf4 <.LVL8>:

    if (start_on_first_boot)
    5cf4:	09 93       	cmp	#0,	r9	;r3 As==00
    5cf6:	05 24       	jz	$+12     	;abs 0x5d02

00005cf8 <.Loc.230.1>:
    {
        __start_thread(__get_thread(priority));
    5cf8:	4c 4a       	mov.b	r10,	r12	;
    5cfa:	b0 12 06 65 	call	#25862		;#0x6506
    5cfe:	b0 12 ea 64 	call	#25834		;#0x64ea

00005d02 <.L1>:
    }
    5d02:	21 52       	add	#4,	r1	;r2 As==10

00005d04 <.LCFI2>:
    5d04:	19 17       	popm	#2,	r10	;16-bit words

00005d06 <.LCFI3>:
    5d06:	30 41       	ret

00005d08 <.L67>:
        __INK_CREATE_THREAD_CASE(2)
    5d08:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d0c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d10 <.LVL12>:
    5d10:	3c 40 00 00 	mov	#0,	r12	;

00005d14 <.Loc.159.1>:
    5d14:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d18:	e8 3f       	jmp	$-46     	;abs 0x5cea

00005d1a <.L66>:
        __INK_CREATE_THREAD_CASE(3)
    5d1a:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d1e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d22 <.LVL15>:
    5d22:	3c 40 00 00 	mov	#0,	r12	;

00005d26 <.Loc.160.1>:
    5d26:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d2a:	df 3f       	jmp	$-64     	;abs 0x5cea

00005d2c <.L65>:
        __INK_CREATE_THREAD_CASE(4)
    5d2c:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d30:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d34 <.LVL18>:
    5d34:	3c 40 00 00 	mov	#0,	r12	;

00005d38 <.Loc.161.1>:
    5d38:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d3c:	d6 3f       	jmp	$-82     	;abs 0x5cea

00005d3e <.L64>:
        __INK_CREATE_THREAD_CASE(5)
    5d3e:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d42:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d46 <.LVL21>:
    5d46:	3c 40 00 00 	mov	#0,	r12	;

00005d4a <.Loc.162.1>:
    5d4a:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d4e:	cd 3f       	jmp	$-100    	;abs 0x5cea

00005d50 <.L63>:
        __INK_CREATE_THREAD_CASE(6)
    5d50:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d54:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d58 <.LVL24>:
    5d58:	3c 40 00 00 	mov	#0,	r12	;

00005d5c <.Loc.163.1>:
    5d5c:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d60:	c4 3f       	jmp	$-118    	;abs 0x5cea

00005d62 <.L62>:
        __INK_CREATE_THREAD_CASE(7)
    5d62:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d66:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d6a <.LVL27>:
    5d6a:	3c 40 00 00 	mov	#0,	r12	;

00005d6e <.Loc.164.1>:
    5d6e:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d72:	bb 3f       	jmp	$-136    	;abs 0x5cea

00005d74 <.L61>:
        __INK_CREATE_THREAD_CASE(8)
    5d74:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d78:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d7c <.LVL30>:
    5d7c:	3c 40 00 00 	mov	#0,	r12	;

00005d80 <.Loc.165.1>:
    5d80:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d84:	b2 3f       	jmp	$-154    	;abs 0x5cea

00005d86 <.L60>:
        __INK_CREATE_THREAD_CASE(9)
    5d86:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d8a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005d8e <.LVL33>:
    5d8e:	3c 40 00 00 	mov	#0,	r12	;

00005d92 <.Loc.166.1>:
    5d92:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5d96:	a9 3f       	jmp	$-172    	;abs 0x5cea

00005d98 <.L59>:
        __INK_CREATE_THREAD_CASE(10)
    5d98:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5d9c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005da0 <.LVL36>:
    5da0:	3c 40 00 00 	mov	#0,	r12	;

00005da4 <.Loc.167.1>:
    5da4:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5da8:	a0 3f       	jmp	$-190    	;abs 0x5cea

00005daa <.L58>:
        __INK_CREATE_THREAD_CASE(11)
    5daa:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5dae:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005db2 <.LVL39>:
    5db2:	3c 40 00 00 	mov	#0,	r12	;

00005db6 <.Loc.168.1>:
    5db6:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5dba:	97 3f       	jmp	$-208    	;abs 0x5cea

00005dbc <.L57>:
        __INK_CREATE_THREAD_CASE(12)
    5dbc:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5dc0:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dc4 <.LVL42>:
    5dc4:	3c 40 00 00 	mov	#0,	r12	;

00005dc8 <.Loc.169.1>:
    5dc8:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5dcc:	8e 3f       	jmp	$-226    	;abs 0x5cea

00005dce <.L56>:
        __INK_CREATE_THREAD_CASE(13)
    5dce:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5dd2:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dd6 <.LVL45>:
    5dd6:	3c 40 00 00 	mov	#0,	r12	;

00005dda <.Loc.170.1>:
    5dda:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5dde:	85 3f       	jmp	$-244    	;abs 0x5cea

00005de0 <.L55>:
        __INK_CREATE_THREAD_CASE(14)
    5de0:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5de4:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005de8 <.LVL48>:
    5de8:	3c 40 00 00 	mov	#0,	r12	;

00005dec <.Loc.171.1>:
    5dec:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5df0:	7c 3f       	jmp	$-262    	;abs 0x5cea

00005df2 <.L54>:
        __INK_CREATE_THREAD_CASE(15)
    5df2:	3f 40 2a 53 	mov	#21290,	r15	;#0x532a
    5df6:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005dfa <.LVL51>:
    5dfa:	3c 40 18 00 	mov	#24,	r12	;#0x0018

00005dfe <.Loc.172.1>:
    5dfe:	3e 40 2a 53 	mov	#21290,	r14	;#0x532a
    5e02:	73 3f       	jmp	$-280    	;abs 0x5cea

00005e04 <.L53>:
        __INK_CREATE_THREAD_CASE(16)
    5e04:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e08:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e0c <.LVL54>:
    5e0c:	3c 40 00 00 	mov	#0,	r12	;

00005e10 <.Loc.173.1>:
    5e10:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e14:	6a 3f       	jmp	$-298    	;abs 0x5cea

00005e16 <.L52>:
        __INK_CREATE_THREAD_CASE(17)
    5e16:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e1a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e1e <.LVL57>:
    5e1e:	3c 40 00 00 	mov	#0,	r12	;

00005e22 <.Loc.174.1>:
    5e22:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e26:	61 3f       	jmp	$-316    	;abs 0x5cea

00005e28 <.L51>:
        __INK_CREATE_THREAD_CASE(18)
    5e28:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e2c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e30 <.LVL60>:
    5e30:	3c 40 00 00 	mov	#0,	r12	;

00005e34 <.Loc.175.1>:
    5e34:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e38:	58 3f       	jmp	$-334    	;abs 0x5cea

00005e3a <.L50>:
        __INK_CREATE_THREAD_CASE(19)
    5e3a:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e3e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e42 <.LVL63>:
    5e42:	3c 40 00 00 	mov	#0,	r12	;

00005e46 <.Loc.176.1>:
    5e46:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e4a:	4f 3f       	jmp	$-352    	;abs 0x5cea

00005e4c <.L49>:
        __INK_CREATE_THREAD_CASE(20)
    5e4c:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e50:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e54 <.LVL66>:
    5e54:	3c 40 00 00 	mov	#0,	r12	;

00005e58 <.Loc.177.1>:
    5e58:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e5c:	46 3f       	jmp	$-370    	;abs 0x5cea

00005e5e <.L48>:
        __INK_CREATE_THREAD_CASE(21)
    5e5e:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e62:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e66 <.LVL69>:
    5e66:	3c 40 00 00 	mov	#0,	r12	;

00005e6a <.Loc.178.1>:
    5e6a:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e6e:	3d 3f       	jmp	$-388    	;abs 0x5cea

00005e70 <.L47>:
        __INK_CREATE_THREAD_CASE(22)
    5e70:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e74:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e78 <.LVL72>:
    5e78:	3c 40 00 00 	mov	#0,	r12	;

00005e7c <.Loc.179.1>:
    5e7c:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e80:	34 3f       	jmp	$-406    	;abs 0x5cea

00005e82 <.L46>:
        __INK_CREATE_THREAD_CASE(23)
    5e82:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e86:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e8a <.LVL75>:
    5e8a:	3c 40 00 00 	mov	#0,	r12	;

00005e8e <.Loc.180.1>:
    5e8e:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5e92:	2b 3f       	jmp	$-424    	;abs 0x5cea

00005e94 <.L45>:
        __INK_CREATE_THREAD_CASE(24)
    5e94:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5e98:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005e9c <.LVL78>:
    5e9c:	3c 40 00 00 	mov	#0,	r12	;

00005ea0 <.Loc.181.1>:
    5ea0:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5ea4:	22 3f       	jmp	$-442    	;abs 0x5cea

00005ea6 <.L44>:
        __INK_CREATE_THREAD_CASE(25)
    5ea6:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5eaa:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005eae <.LVL81>:
    5eae:	3c 40 00 00 	mov	#0,	r12	;

00005eb2 <.Loc.182.1>:
    5eb2:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5eb6:	19 3f       	jmp	$-460    	;abs 0x5cea

00005eb8 <.L43>:
        __INK_CREATE_THREAD_CASE(26)
    5eb8:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5ebc:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ec0 <.LVL84>:
    5ec0:	3c 40 00 00 	mov	#0,	r12	;

00005ec4 <.Loc.183.1>:
    5ec4:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5ec8:	10 3f       	jmp	$-478    	;abs 0x5cea

00005eca <.L42>:
        __INK_CREATE_THREAD_CASE(27)
    5eca:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5ece:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ed2 <.LVL87>:
    5ed2:	3c 40 00 00 	mov	#0,	r12	;

00005ed6 <.Loc.184.1>:
    5ed6:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5eda:	07 3f       	jmp	$-496    	;abs 0x5cea

00005edc <.L41>:
        __INK_CREATE_THREAD_CASE(28)
    5edc:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5ee0:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ee4 <.LVL90>:
    5ee4:	3c 40 00 00 	mov	#0,	r12	;

00005ee8 <.Loc.185.1>:
    5ee8:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5eec:	fe 3e       	jmp	$-514    	;abs 0x5cea

00005eee <.L40>:
        __INK_CREATE_THREAD_CASE(29)
    5eee:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5ef2:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ef6 <.LVL93>:
    5ef6:	3c 40 00 00 	mov	#0,	r12	;

00005efa <.Loc.186.1>:
    5efa:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5efe:	f5 3e       	jmp	$-532    	;abs 0x5cea

00005f00 <.L39>:
        __INK_CREATE_THREAD_CASE(30)
    5f00:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f04:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f08 <.LVL96>:
    5f08:	3c 40 00 00 	mov	#0,	r12	;

00005f0c <.Loc.187.1>:
    5f0c:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f10:	ec 3e       	jmp	$-550    	;abs 0x5cea

00005f12 <.L38>:
        __INK_CREATE_THREAD_CASE(31)
    5f12:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f16:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f1a <.LVL99>:
    5f1a:	3c 40 00 00 	mov	#0,	r12	;

00005f1e <.Loc.188.1>:
    5f1e:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f22:	e3 3e       	jmp	$-568    	;abs 0x5cea

00005f24 <.L37>:
        __INK_CREATE_THREAD_CASE(32)
    5f24:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f28:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f2c <.LVL102>:
    5f2c:	3c 40 00 00 	mov	#0,	r12	;

00005f30 <.Loc.189.1>:
    5f30:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f34:	da 3e       	jmp	$-586    	;abs 0x5cea

00005f36 <.L36>:
        __INK_CREATE_THREAD_CASE(33)
    5f36:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f3a:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f3e <.LVL105>:
    5f3e:	3c 40 00 00 	mov	#0,	r12	;

00005f42 <.Loc.190.1>:
    5f42:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f46:	d1 3e       	jmp	$-604    	;abs 0x5cea

00005f48 <.L35>:
        __INK_CREATE_THREAD_CASE(34)
    5f48:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f4c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f50 <.LVL108>:
    5f50:	3c 40 00 00 	mov	#0,	r12	;

00005f54 <.Loc.191.1>:
    5f54:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f58:	c8 3e       	jmp	$-622    	;abs 0x5cea

00005f5a <.L34>:
        __INK_CREATE_THREAD_CASE(35)
    5f5a:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f5e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f62 <.LVL111>:
    5f62:	3c 40 00 00 	mov	#0,	r12	;

00005f66 <.Loc.192.1>:
    5f66:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f6a:	bf 3e       	jmp	$-640    	;abs 0x5cea

00005f6c <.L33>:
        __INK_CREATE_THREAD_CASE(36)
    5f6c:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f70:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f74 <.LVL114>:
    5f74:	3c 40 00 00 	mov	#0,	r12	;

00005f78 <.Loc.193.1>:
    5f78:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f7c:	b6 3e       	jmp	$-658    	;abs 0x5cea

00005f7e <.L32>:
        __INK_CREATE_THREAD_CASE(37)
    5f7e:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f82:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f86 <.LVL117>:
    5f86:	3c 40 00 00 	mov	#0,	r12	;

00005f8a <.Loc.194.1>:
    5f8a:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5f8e:	ad 3e       	jmp	$-676    	;abs 0x5cea

00005f90 <.L31>:
        __INK_CREATE_THREAD_CASE(38)
    5f90:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5f94:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005f98 <.LVL120>:
    5f98:	3c 40 00 00 	mov	#0,	r12	;

00005f9c <.Loc.195.1>:
    5f9c:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5fa0:	a4 3e       	jmp	$-694    	;abs 0x5cea

00005fa2 <.L30>:
        __INK_CREATE_THREAD_CASE(39)
    5fa2:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5fa6:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005faa <.LVL123>:
    5faa:	3c 40 00 00 	mov	#0,	r12	;

00005fae <.Loc.196.1>:
    5fae:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5fb2:	9b 3e       	jmp	$-712    	;abs 0x5cea

00005fb4 <.L29>:
        __INK_CREATE_THREAD_CASE(40)
    5fb4:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5fb8:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fbc <.LVL126>:
    5fbc:	3c 40 00 00 	mov	#0,	r12	;

00005fc0 <.Loc.197.1>:
    5fc0:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5fc4:	92 3e       	jmp	$-730    	;abs 0x5cea

00005fc6 <.L28>:
        __INK_CREATE_THREAD_CASE(41)
    5fc6:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5fca:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fce <.LVL129>:
    5fce:	3c 40 00 00 	mov	#0,	r12	;

00005fd2 <.Loc.198.1>:
    5fd2:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5fd6:	89 3e       	jmp	$-748    	;abs 0x5cea

00005fd8 <.L27>:
        __INK_CREATE_THREAD_CASE(42)
    5fd8:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5fdc:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005fe0 <.LVL132>:
    5fe0:	3c 40 00 00 	mov	#0,	r12	;

00005fe4 <.Loc.199.1>:
    5fe4:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5fe8:	80 3e       	jmp	$-766    	;abs 0x5cea

00005fea <.L26>:
        __INK_CREATE_THREAD_CASE(43)
    5fea:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    5fee:	3f 50 18 00 	add	#24,	r15	;#0x0018

00005ff2 <.LVL135>:
    5ff2:	3c 40 00 00 	mov	#0,	r12	;

00005ff6 <.Loc.200.1>:
    5ff6:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    5ffa:	77 3e       	jmp	$-784    	;abs 0x5cea

00005ffc <.L25>:
        __INK_CREATE_THREAD_CASE(44)
    5ffc:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6000:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006004 <.LVL138>:
    6004:	3c 40 00 00 	mov	#0,	r12	;

00006008 <.Loc.201.1>:
    6008:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    600c:	6e 3e       	jmp	$-802    	;abs 0x5cea

0000600e <.L24>:
        __INK_CREATE_THREAD_CASE(45)
    600e:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6012:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006016 <.LVL141>:
    6016:	3c 40 00 00 	mov	#0,	r12	;

0000601a <.Loc.202.1>:
    601a:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    601e:	65 3e       	jmp	$-820    	;abs 0x5cea

00006020 <.L23>:
        __INK_CREATE_THREAD_CASE(46)
    6020:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6024:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006028 <.LVL144>:
    6028:	3c 40 00 00 	mov	#0,	r12	;

0000602c <.Loc.203.1>:
    602c:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6030:	5c 3e       	jmp	$-838    	;abs 0x5cea

00006032 <.L22>:
        __INK_CREATE_THREAD_CASE(47)
    6032:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6036:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000603a <.LVL147>:
    603a:	3c 40 00 00 	mov	#0,	r12	;

0000603e <.Loc.204.1>:
    603e:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6042:	53 3e       	jmp	$-856    	;abs 0x5cea

00006044 <.L21>:
        __INK_CREATE_THREAD_CASE(48)
    6044:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6048:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000604c <.LVL150>:
    604c:	3c 40 00 00 	mov	#0,	r12	;

00006050 <.Loc.205.1>:
    6050:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6054:	4a 3e       	jmp	$-874    	;abs 0x5cea

00006056 <.L20>:
        __INK_CREATE_THREAD_CASE(49)
    6056:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    605a:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000605e <.LVL153>:
    605e:	3c 40 00 00 	mov	#0,	r12	;

00006062 <.Loc.206.1>:
    6062:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6066:	41 3e       	jmp	$-892    	;abs 0x5cea

00006068 <.L19>:
        __INK_CREATE_THREAD_CASE(50)
    6068:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    606c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006070 <.LVL156>:
    6070:	3c 40 00 00 	mov	#0,	r12	;

00006074 <.Loc.207.1>:
    6074:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6078:	38 3e       	jmp	$-910    	;abs 0x5cea

0000607a <.L18>:
        __INK_CREATE_THREAD_CASE(51)
    607a:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    607e:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006082 <.LVL159>:
    6082:	3c 40 00 00 	mov	#0,	r12	;

00006086 <.Loc.208.1>:
    6086:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    608a:	2f 3e       	jmp	$-928    	;abs 0x5cea

0000608c <.L17>:
        __INK_CREATE_THREAD_CASE(52)
    608c:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6090:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006094 <.LVL162>:
    6094:	3c 40 00 00 	mov	#0,	r12	;

00006098 <.Loc.209.1>:
    6098:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    609c:	26 3e       	jmp	$-946    	;abs 0x5cea

0000609e <.L16>:
        __INK_CREATE_THREAD_CASE(53)
    609e:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    60a2:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060a6 <.LVL165>:
    60a6:	3c 40 00 00 	mov	#0,	r12	;

000060aa <.Loc.210.1>:
    60aa:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    60ae:	1d 3e       	jmp	$-964    	;abs 0x5cea

000060b0 <.L15>:
        __INK_CREATE_THREAD_CASE(54)
    60b0:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    60b4:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060b8 <.LVL168>:
    60b8:	3c 40 00 00 	mov	#0,	r12	;

000060bc <.Loc.211.1>:
    60bc:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    60c0:	14 3e       	jmp	$-982    	;abs 0x5cea

000060c2 <.L14>:
        __INK_CREATE_THREAD_CASE(55)
    60c2:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    60c6:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060ca <.LVL171>:
    60ca:	3c 40 00 00 	mov	#0,	r12	;

000060ce <.Loc.212.1>:
    60ce:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    60d2:	0b 3e       	jmp	$-1000   	;abs 0x5cea

000060d4 <.L13>:
        __INK_CREATE_THREAD_CASE(56)
    60d4:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    60d8:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060dc <.LVL174>:
    60dc:	3c 40 00 00 	mov	#0,	r12	;

000060e0 <.Loc.213.1>:
    60e0:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    60e4:	30 40 ea 5c 	br	#0x5cea		;

000060e8 <.L12>:
        __INK_CREATE_THREAD_CASE(57)
    60e8:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    60ec:	3f 50 18 00 	add	#24,	r15	;#0x0018

000060f0 <.LVL177>:
    60f0:	3c 40 00 00 	mov	#0,	r12	;

000060f4 <.Loc.214.1>:
    60f4:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    60f8:	30 40 ea 5c 	br	#0x5cea		;

000060fc <.L11>:
        __INK_CREATE_THREAD_CASE(58)
    60fc:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6100:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006104 <.LVL180>:
    6104:	3c 40 00 00 	mov	#0,	r12	;

00006108 <.Loc.215.1>:
    6108:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    610c:	30 40 ea 5c 	br	#0x5cea		;

00006110 <.L10>:
        __INK_CREATE_THREAD_CASE(59)
    6110:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6114:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006118 <.LVL183>:
    6118:	3c 40 00 00 	mov	#0,	r12	;

0000611c <.Loc.216.1>:
    611c:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6120:	30 40 ea 5c 	br	#0x5cea		;

00006124 <.L9>:
        __INK_CREATE_THREAD_CASE(60)
    6124:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6128:	3f 50 18 00 	add	#24,	r15	;#0x0018

0000612c <.LVL186>:
    612c:	3c 40 00 00 	mov	#0,	r12	;

00006130 <.Loc.217.1>:
    6130:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6134:	30 40 ea 5c 	br	#0x5cea		;

00006138 <.L8>:
        __INK_CREATE_THREAD_CASE(61)
    6138:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    613c:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006140 <.LVL189>:
    6140:	3c 40 00 00 	mov	#0,	r12	;

00006144 <.Loc.218.1>:
    6144:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6148:	30 40 ea 5c 	br	#0x5cea		;

0000614c <.L7>:
        __INK_CREATE_THREAD_CASE(62)
    614c:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6150:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006154 <.LVL192>:
    6154:	3c 40 00 00 	mov	#0,	r12	;

00006158 <.Loc.219.1>:
    6158:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    615c:	30 40 ea 5c 	br	#0x5cea		;

00006160 <.L5>:
        __INK_CREATE_THREAD_CASE(63)
    6160:	3f 40 42 53 	mov	#21314,	r15	;#0x5342
    6164:	3f 50 18 00 	add	#24,	r15	;#0x0018

00006168 <.LVL195>:
    6168:	3c 40 00 00 	mov	#0,	r12	;

0000616c <.Loc.220.1>:
    616c:	3e 40 42 53 	mov	#21314,	r14	;#0x5342
    6170:	30 40 ea 5c 	br	#0x5cea		;

00006174 <.L70>:
    if (!ink_is_first_boot())
    6174:	4c 43       	clr.b	r12		;
    6176:	4f 43       	clr.b	r15		;
    6178:	4e 43       	clr.b	r14		;
    617a:	30 40 ea 5c 	br	#0x5cea		;

0000617e <L0^A>:
	...

00006180 <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    6180:	b0 12 18 65 	call	#25880		;#0x6518

00006184 <.Loc.7.1>:
}
    6184:	30 41       	ret

00006186 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    6186:	1a 15       	pushm	#2,	r10	;16-bit words

00006188 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    6188:	3a 40 c0 4b 	mov	#19392,	r10	;#0x4bc0
    618c:	39 40 40 46 	mov	#17984,	r9	;#0x4640

00006190 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    6190:	0c 4a       	mov	r10,	r12	;
    6192:	b0 12 c0 62 	call	#25280		;#0x62c0

00006196 <.Loc.27.1>:
        _popped[i] = NULL;
    6196:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

0000619a <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    619a:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    619e:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000061a2 <.Loc.24.1>:
    61a2:	3a 90 c0 46 	cmp	#18112,	r10	;#0x46c0
    61a6:	f4 23       	jnz	$-22     	;abs 0x6190

000061a8 <.Loc.29.1>:
    }
}
    61a8:	19 17       	popm	#2,	r10	;16-bit words

000061aa <.LCFI1>:
    61aa:	30 41       	ret

000061ac <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    61ac:	5c 42 c8 4b 	mov.b	&0x4bc8,r12	;0x4bc8
    61b0:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    61b2:	13 24       	jz	$+40     	;abs 0x61da
    61b4:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    61b6:	1e 24       	jz	$+62     	;abs 0x61f4
    61b8:	0c 93       	cmp	#0,	r12	;r3 As==00
    61ba:	2e 20       	jnz	$+94     	;abs 0x6218

000061bc <.Loc.37.1>:
    case EVENT_INSERT:
        __perqueue_push(&_events[_thread->priority], &_event);
    61bc:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

000061c0 <.Loc.37.1>:
    61c0:	6c 4d       	mov.b	@r13,	r12	;
    61c2:	5c 06       	rlam	#2,	r12	;
    61c4:	6d 4d       	mov.b	@r13,	r13	;
    61c6:	0c 5d       	add	r13,	r12	;
    61c8:	5c 06       	rlam	#2,	r12	;
    61ca:	3d 40 c0 4b 	mov	#19392,	r13	;#0x4bc0
    61ce:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    61d2:	b0 12 1c 63 	call	#25372		;#0x631c

000061d6 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    61d6:	d2 43 c8 4b 	mov.b	#1,	&0x4bc8	;r3 As==01

000061da <.L5>:
    case EVENT_COMMIT:
        __perqueue_push_commit(&_events[_thread->priority]);
    61da:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

000061de <.Loc.40.1>:
    61de:	6c 4d       	mov.b	@r13,	r12	;
    61e0:	5c 06       	rlam	#2,	r12	;
    61e2:	6d 4d       	mov.b	@r13,	r13	;
    61e4:	0c 5d       	add	r13,	r12	;
    61e6:	5c 06       	rlam	#2,	r12	;
    61e8:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    61ec:	b0 12 52 63 	call	#25426		;#0x6352

000061f0 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    61f0:	e2 43 c8 4b 	mov.b	#2,	&0x4bc8	;r3 As==10

000061f4 <.L6>:
    case EVENT_SIGNAL:
        // if the thread is sleeping, activate it!
        if(_thread->state == THREAD_STOPPED){
    61f4:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    61f8:	1c 4c 02 00 	mov	2(r12),	r12	;

000061fc <.Loc.44.1>:
    61fc:	3c 92       	cmp	#8,	r12	;r2 As==11
    61fe:	09 20       	jnz	$+20     	;abs 0x6212

00006200 <.Loc.45.1>:
            __disable_interrupt();
    6200:	32 c2       	dint
    6202:	03 43       	nop

00006204 <.Loc.46.1>:
            __start_thread(_thread);
    6204:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    6208:	b0 12 ea 64 	call	#25834		;#0x64ea

0000620c <.Loc.47.1>:
            __enable_interrupt();
    620c:	03 43       	nop
    620e:	32 d2       	eint
    6210:	03 43       	nop

00006212 <.L8>:
        }
        _status = EVENT_DONE;
    6212:	f2 40 03 00 	mov.b	#3,	&0x4bc8	;
    6216:	c8 4b

00006218 <.L4>:
    }
}
    6218:	30 41       	ret

0000621a <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    621a:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

0000621e <.Loc.55.1>:
    621e:	6c 4d       	mov.b	@r13,	r12	;

00006220 <.LVL7>:
    6220:	5c 06       	rlam	#2,	r12	;
    6222:	6d 4d       	mov.b	@r13,	r13	;
    6224:	0c 5d       	add	r13,	r12	;
    6226:	5c 06       	rlam	#2,	r12	;
    6228:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    622c:	b0 12 f0 62 	call	#25328		;#0x62f0

00006230 <.Loc.56.1>:
}
    6230:	30 41       	ret

00006232 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6232:	82 4c c6 4b 	mov	r12,	&0x4bc6	;

00006236 <.Loc.64.1>:
    _event = *event;
    6236:	a2 4d c0 4b 	mov	@r13,	&0x4bc0	;
    623a:	92 4d 02 00 	mov	2(r13),	&0x4bc2	;
    623e:	c2 4b
    6240:	92 4d 04 00 	mov	4(r13),	&0x4bc4	;
    6244:	c4 4b

00006246 <.Loc.65.1>:
    _status = EVENT_INSERT;
    6246:	c2 43 c8 4b 	mov.b	#0,	&0x4bc8	;r3 As==00

0000624a <.Loc.66.1>:
    __events_commit();
    624a:	b0 12 ac 61 	call	#25004		;#0x61ac

0000624e <.LVL10>:
}
    624e:	30 41       	ret

00006250 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    6250:	6d 4c       	mov.b	@r12,	r13	;
    6252:	5d 06       	rlam	#2,	r13	;
    6254:	6c 4c       	mov.b	@r12,	r12	;

00006256 <.LVL12>:
    6256:	0c 5d       	add	r13,	r12	;
    6258:	5c 06       	rlam	#2,	r12	;
    625a:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    625e:	b0 12 da 62 	call	#25306		;#0x62da
    6262:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006266 <.Loc.71.1>:
    6266:	3c 53       	add	#-1,	r12	;r3 As==11

00006268 <.Loc.75.1>:
        return 0;

    return 1;
}
    6268:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    626c:	30 41       	ret

0000626e <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    626e:	0a 15       	pushm	#1,	r10	;16-bit words

00006270 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    6270:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6

00006274 <.LVL15>:
    6274:	6a 4c       	mov.b	@r12,	r10	;

00006276 <.Loc.81.1>:
    6276:	0c 4a       	mov	r10,	r12	;
    6278:	5c 06       	rlam	#2,	r12	;
    627a:	0c 5a       	add	r10,	r12	;
    627c:	5c 06       	rlam	#2,	r12	;
    627e:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    6282:	b0 12 5a 63 	call	#25434		;#0x635a

00006286 <.Loc.81.1>:
    6286:	5a 02       	rlam	#1,	r10	;
    6288:	8a 4c 40 46 	mov	r12,	17984(r10); 0x4640

0000628c <.Loc.82.1>:
    return _popped[_thread->priority];
    628c:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    6290:	6c 4c       	mov.b	@r12,	r12	;
    6292:	5c 02       	rlam	#1,	r12	;

00006294 <.Loc.83.1>:
}
    6294:	1c 4c 40 46 	mov	17984(r12),r12	;0x04640
    6298:	0a 17       	popm	#1,	r10	;16-bit words

0000629a <.LCFI3>:
    629a:	30 41       	ret

0000629c <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    629c:	1d 42 c6 4b 	mov	&0x4bc6,r13	;0x4bc6

000062a0 <.Loc.87.1>:
    62a0:	6c 4d       	mov.b	@r13,	r12	;

000062a2 <.LVL18>:
    62a2:	5c 06       	rlam	#2,	r12	;
    62a4:	6d 4d       	mov.b	@r13,	r13	;
    62a6:	0c 5d       	add	r13,	r12	;
    62a8:	5c 06       	rlam	#2,	r12	;
    62aa:	3c 50 c0 46 	add	#18112,	r12	;#0x46c0
    62ae:	b0 12 8c 63 	call	#25484		;#0x638c

000062b2 <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    62b2:	1c 42 c6 4b 	mov	&0x4bc6,r12	;0x4bc6
    62b6:	6c 4c       	mov.b	@r12,	r12	;
    62b8:	5c 02       	rlam	#1,	r12	;
    62ba:	8c 43 40 46 	mov	#0,	17984(r12);r3 As==00, 0x4640

000062be <.Loc.89.1>:
}
    62be:	30 41       	ret

000062c0 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    62c0:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    62c4:	10 00

000062c6 <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    62c6:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    62ca:	11 00

000062cc <.Loc.8.1>:
    queue->__head ^= queue->__head;
    62cc:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    62d0:	12 00

000062d2 <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    62d2:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    62d6:	13 00

000062d8 <.Loc.10.1>:
}
    62d8:	30 41       	ret

000062da <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    62da:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    62de:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    62e2:	4c 4d       	mov.b	r13,	r12	;

000062e4 <.LVL2>:
    62e4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    62e8:	3c 53       	add	#-1,	r12	;r3 As==11

000062ea <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    62ea:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    62ee:	30 41       	ret

000062f0 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    62f0:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    62f4:	5d 53       	inc.b	r13		;
    62f6:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

000062fa <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    62fa:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    62fe:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6300:	02 20       	jnz	$+6      	;abs 0x6306

00006302 <.Loc.25.1>:
        queue->__tail = 0;
    6302:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006306 <.L4>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    6306:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    630a:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    630e:	4c 4d       	mov.b	r13,	r12	;

00006310 <.LVL4>:
    6310:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6314:	3c 53       	add	#-1,	r12	;r3 As==11

00006316 <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    6316:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    631a:	30 41       	ret

0000631c <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    631c:	0e 4c       	mov	r12,	r14	;

0000631e <.Loc.38.1>:
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    631e:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

00006322 <.LVL6>:
    6322:	5c 53       	inc.b	r12		;
    6324:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

00006328 <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    6328:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    632c:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    632e:	02 20       	jnz	$+6      	;abs 0x6334

00006330 <.Loc.40.1>:
        queue->__tail = 0;
    6330:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

00006334 <.L6>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    6334:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

00006338 <.Loc.44.1>:
    6338:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

0000633c <.Loc.45.1>:
        return 0;
    633c:	4c 43       	clr.b	r12		;

0000633e <.Loc.44.1>:
    if (queue->__tail == queue->_head) {
    633e:	0b 9f       	cmp	r15,	r11	;
    6340:	07 24       	jz	$+16     	;abs 0x6350

00006342 <.Loc.49.1>:
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6342:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

00006346 <.Loc.49.1>:
    6346:	5c 02       	rlam	#1,	r12	;
    6348:	0e 5c       	add	r12,	r14	;

0000634a <.LVL7>:
    634a:	8e 4d 00 00 	mov	r13,	0(r14)	;

0000634e <.Loc.51.1>:

    return 1;
    634e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006350 <.L7>:
}
    6350:	30 41       	ret

00006352 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    6352:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    6356:	11 00

00006358 <.Loc.59.1>:
}
    6358:	30 41       	ret

0000635a <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    635a:	0d 4c       	mov	r12,	r13	;

0000635c <.Loc.63.1>:
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    635c:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

00006360 <.Loc.63.1>:
    6360:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006364 <.Loc.64.1>:
        return NULL;
    6364:	4c 43       	clr.b	r12		;

00006366 <.LVL10>:
    if (queue->_head == queue->_tail){
    6366:	0f 9e       	cmp	r14,	r15	;
    6368:	10 24       	jz	$+34     	;abs 0x638a

0000636a <.Loc.68.1>:
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    636a:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    636e:	5c 53       	inc.b	r12		;
    6370:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

00006374 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    6374:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    6378:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    637a:	02 20       	jnz	$+6      	;abs 0x6380

0000637c <.Loc.70.1>:
        queue->__head = 0;
    637c:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

00006380 <.L12>:

    return queue->_items[queue->_head];
    6380:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

00006384 <.Loc.72.1>:
    6384:	5c 02       	rlam	#1,	r12	;
    6386:	0d 5c       	add	r12,	r13	;

00006388 <.LVL11>:
    6388:	2c 4d       	mov	@r13,	r12	;

0000638a <.L10>:
}
    638a:	30 41       	ret

0000638c <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    638c:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6390:	10 00

00006392 <.Loc.79.1>:
}
    6392:	30 41       	ret

00006394 <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    6394:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6398:	40 01

0000639a <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    639a:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    639e:	41 01

000063a0 <.Loc.13.1>:
}
    63a0:	30 41       	ret

000063a2 <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    63a2:	0a 15       	pushm	#1,	r10	;16-bit words

000063a4 <.LCFI0>:
    63a4:	21 82       	sub	#4,	r1	;r2 As==10

000063a6 <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    63a6:	0a 4c       	mov	r12,	r10	;
    63a8:	0b 43       	clr	r11		;
    63aa:	81 4a 00 00 	mov	r10,	0(r1)	;
    63ae:	81 4b 02 00 	mov	r11,	2(r1)	;

000063b2 <.Loc.20.1>:
    63b2:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

000063b6 <.LVL1>:
    63b6:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    63ba:	00 00

000063bc <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    63bc:	0a 4d       	mov	r13,	r10	;
    63be:	0b 43       	clr	r11		;

000063c0 <.LVL2>:
    63c0:	81 4a 00 00 	mov	r10,	0(r1)	;
    63c4:	81 4b 02 00 	mov	r11,	2(r1)	;

000063c8 <.Loc.21.1>:
    63c8:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    63cc:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    63d0:	00 00

000063d2 <.LBE3>:
    DMA0SZ = size;                          // Block size
    63d2:	82 4e 1a 05 	mov	r14,	&0x051a	;

000063d6 <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    63d6:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    63da:	10 05

000063dc <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    63dc:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    63e0:	10 05

000063e2 <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    63e2:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

000063e6 <.Loc.29.1>:
}
    63e6:	21 52       	add	#4,	r1	;r2 As==10

000063e8 <.LCFI2>:
    63e8:	0a 17       	popm	#1,	r10	;16-bit words

000063ea <.LCFI3>:
    63ea:	30 41       	ret

000063ec <__scheduler_boot_init>:
// the id of the current thread being executed.
static __nv thread_t *_thread = NULL;

static volatile uint8_t _sched_state = SCHED_SELECT;

void __scheduler_boot_init() {
    63ec:	0a 15       	pushm	#1,	r10	;16-bit words

000063ee <.LCFI0>:
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    63ee:	3c 40 cc 4b 	mov	#19404,	r12	;#0x4bcc
    63f2:	b0 12 12 6d 	call	#27922		;#0x6d12

000063f6 <.Loc.54.1>:
    63f6:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

000063fa <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    63fa:	0c 4a       	mov	r10,	r12	;
    63fc:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6400:	b0 12 b4 71 	call	#29108		;#0x71b4
    6404:	1c 4c d8 4b 	mov	19416(r12),r12	;0x04bd8

00006408 <.LVL3>:
    for (i = MAX_THREADS; i > 0; i--){
    6408:	3a 53       	add	#-1,	r10	;r3 As==11

0000640a <.Loc.56.1>:
    640a:	0a 93       	cmp	#0,	r10	;r3 As==00
    640c:	f6 23       	jnz	$-18     	;abs 0x63fa

0000640e <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    640e:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006412 <.Loc.61.1>:
}
    6412:	0a 17       	popm	#1,	r10	;16-bit words

00006414 <.LCFI1>:
    6414:	30 41       	ret

00006416 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    6416:	3a 15       	pushm	#4,	r10	;16-bit words

00006418 <.LCFI2>:
    6418:	4a 4c       	mov.b	r12,	r10	;
    641a:	09 4d       	mov	r13,	r9	;
    641c:	07 4e       	mov	r14,	r7	;
    641e:	08 4f       	mov	r15,	r8	;

00006420 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    6420:	0c 4a       	mov	r10,	r12	;

00006422 <.LVL6>:
    6422:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

00006426 <.LVL7>:
    6426:	b0 12 b4 71 	call	#29108		;#0x71b4

0000642a <.LVL8>:
    642a:	cc 4a d6 4b 	mov.b	r10,	19414(r12); 0x4bd6

0000642e <.Loc.69.1>:
    _threads[priority].entry = entry;
    642e:	0c 4a       	mov	r10,	r12	;
    6430:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6434:	b0 12 b4 71 	call	#29108		;#0x71b4
    6438:	8c 49 da 4b 	mov	r9,	19418(r12); 0x4bda

0000643c <.Loc.70.1>:
    _threads[priority].next = entry;
    643c:	0c 4a       	mov	r10,	r12	;
    643e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6442:	b0 12 b4 71 	call	#29108		;#0x71b4
    6446:	8c 49 de 4b 	mov	r9,	19422(r12); 0x4bde

0000644a <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    644a:	0c 4a       	mov	r10,	r12	;
    644c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6450:	b0 12 b4 71 	call	#29108		;#0x71b4
    6454:	bc 42 d8 4b 	mov	#8,	19416(r12);r2 As==11, 0x4bd8

00006458 <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    6458:	0c 4a       	mov	r10,	r12	;
    645a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    645e:	b0 12 b4 71 	call	#29108		;#0x71b4
    6462:	8c 47 e0 4b 	mov	r7,	19424(r12); 0x4be0

00006466 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    6466:	0c 4a       	mov	r10,	r12	;
    6468:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    646c:	b0 12 b4 71 	call	#29108		;#0x71b4
    6470:	8c 48 e2 4b 	mov	r8,	19426(r12); 0x4be2

00006474 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    6474:	0c 4a       	mov	r10,	r12	;
    6476:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    647a:	b0 12 b4 71 	call	#29108		;#0x71b4
    647e:	cc 43 e4 4b 	mov.b	#0,	19428(r12);r3 As==00, 0x4be4

00006482 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    6482:	0c 4a       	mov	r10,	r12	;
    6484:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6488:	b0 12 b4 71 	call	#29108		;#0x71b4
    648c:	9c 41 0a 00 	mov	10(r1),	19430(r12);0x0000a, 0x4be6
    6490:	e6 4b

00006492 <.Loc.78.1>:
}
    6492:	37 17       	popm	#4,	r10	;16-bit words

00006494 <.LCFI3>:
    6494:	30 41       	ret

00006496 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    6496:	0a 15       	pushm	#1,	r10	;16-bit words

00006498 <.LCFI4>:
    6498:	0a 4c       	mov	r12,	r10	;

0000649a <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    649a:	3d 40 cc 4b 	mov	#19404,	r13	;#0x4bcc
    649e:	6c 4c       	mov.b	@r12,	r12	;

000064a0 <.LVL17>:
    64a0:	b0 12 58 6d 	call	#27992		;#0x6d58

000064a4 <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    64a4:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000064a8 <.Loc.84.1>:
}
    64a8:	0a 17       	popm	#1,	r10	;16-bit words

000064aa <.LCFI5>:
    64aa:	30 41       	ret

000064ac <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    64ac:	0a 15       	pushm	#1,	r10	;16-bit words

000064ae <.LCFI6>:
    64ae:	0a 4c       	mov	r12,	r10	;

000064b0 <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    64b0:	3d 40 cc 4b 	mov	#19404,	r13	;#0x4bcc
    64b4:	6c 4c       	mov.b	@r12,	r12	;

000064b6 <.LVL20>:
    64b6:	b0 12 58 6d 	call	#27992		;#0x6d58

000064ba <.Loc.89.1>:
    thread->next = NULL;
    64ba:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

000064be <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    64be:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000064c2 <.Loc.91.1>:
}
    64c2:	0a 17       	popm	#1,	r10	;16-bit words

000064c4 <.LCFI7>:
    64c4:	30 41       	ret

000064c6 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    64c6:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000064ca <.Loc.95.1>:
    return;
}
    64ca:	30 41       	ret

000064cc <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    64cc:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

000064d0 <.Loc.101.1>:
    return;
}
    64d0:	30 41       	ret

000064d2 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    64d2:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

000064d6 <.Loc.107.1>:
    return;
}
    64d6:	30 41       	ret

000064d8 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    64d8:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

000064dc <.Loc.112.1>:
    return;
}
    64dc:	30 41       	ret

000064de <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    64de:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

000064e2 <.LVL27>:
    64e2:	30 41       	ret

000064e4 <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    64e4:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

000064e8 <.LVL29>:
    64e8:	30 41       	ret

000064ea <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    64ea:	0a 15       	pushm	#1,	r10	;16-bit words

000064ec <.LCFI8>:
    64ec:	0a 4c       	mov	r12,	r10	;

000064ee <.Loc.125.1>:
    thread->next = thread->entry;
    64ee:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    64f2:	08 00

000064f4 <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    64f4:	3d 40 cc 4b 	mov	#19404,	r13	;#0x4bcc
    64f8:	6c 4c       	mov.b	@r12,	r12	;

000064fa <.LVL31>:
    64fa:	b0 12 38 6d 	call	#27960		;#0x6d38

000064fe <.Loc.127.1>:
    thread->state = TASK_READY;
    64fe:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006502 <.Loc.128.1>:
}
    6502:	0a 17       	popm	#1,	r10	;16-bit words

00006504 <.LCFI9>:
    6504:	30 41       	ret

00006506 <__get_thread>:

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    return &_threads[priority];
    6506:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    650a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    650e:	b0 12 b4 71 	call	#29108		;#0x71b4

00006512 <.LVL34>:
}
    6512:	3c 50 d6 4b 	add	#19414,	r12	;#0x4bd6
    6516:	30 41       	ret

00006518 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    6518:	32 c2       	dint
    651a:	03 43       	nop

0000651c <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    651c:	b0 12 ac 61 	call	#25004		;#0x61ac

00006520 <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6520:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006524 <.Loc.162.1>:
    __port_off(1, 3);
    6524:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006528 <.LBB8>:
    if(_thread){
    6528:	82 93 ca 4b 	cmp	#0,	&0x4bca	;r3 As==00
    652c:	04 24       	jz	$+10     	;abs 0x6536

0000652e <.Loc.146.1>:
        __tick(_thread);
    652e:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    6532:	b0 12 c4 65 	call	#26052		;#0x65c4

00006536 <.L16>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    6536:	b0 12 b8 66 	call	#26296		;#0x66b8

0000653a <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    653a:	03 43       	nop
    653c:	32 d2       	eint
    653e:	03 43       	nop

00006540 <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6540:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006544 <.Loc.179.1>:
    __port_off(1, 3);
    6544:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006548 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    6548:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    654c:	0c 93       	cmp	#0,	r12	;r3 As==00
    654e:	0e 24       	jz	$+30     	;abs 0x656c

00006550 <.Loc.184.1>:
    6550:	1c 93       	cmp	#1,	r12	;r3 As==01
    6552:	fa 23       	jnz	$-10     	;abs 0x6548

00006554 <.L19>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    6554:	82 93 ca 4b 	cmp	#0,	&0x4bca	;r3 As==00
    6558:	21 24       	jz	$+68     	;abs 0x659c

0000655a <.Loc.198.1>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    655a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000655e <.Loc.198.1>:
#endif
                __tick(_thread);
    655e:	1c 42 ca 4b 	mov	&0x4bca,r12	;0x4bca
    6562:	b0 12 c4 65 	call	#26052		;#0x65c4

00006566 <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    6566:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000656a <.Loc.203.1>:
                break;
    656a:	ee 3f       	jmp	$-34     	;abs 0x6548

0000656c <.L18>:
            __port_on(1, 3);
    656c:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006570 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    6570:	3c 40 cc 4b 	mov	#19404,	r12	;#0x4bcc
    6574:	b0 12 80 6d 	call	#28032		;#0x6d80
    6578:	4e 4c       	mov.b	r12,	r14	;
    657a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000657e <.LVL40>:
    return NULL;
    657e:	4d 43       	clr.b	r13		;

00006580 <.Loc.133.1>:
    if(idx)
    6580:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    6582:	07 24       	jz	$+16     	;abs 0x6592

00006584 <.Loc.134.1>:
        return &_threads[idx];
    6584:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6588:	b0 12 b4 71 	call	#29108		;#0x71b4

0000658c <.LVL41>:
    658c:	0d 4c       	mov	r12,	r13	;
    658e:	3d 50 d6 4b 	add	#19414,	r13	;#0x4bd6

00006592 <.L21>:
            _thread = __next_thread();
    6592:	82 4d ca 4b 	mov	r13,	&0x4bca	;

00006596 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    6596:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01
    659a:	dc 3f       	jmp	$-70     	;abs 0x6554

0000659c <.L22>:
            }
            _sched_state = SCHED_SELECT;
    659c:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

000065a0 <.Loc.206.1>:
            __disable_interrupt();
    65a0:	32 c2       	dint
    65a2:	03 43       	nop

000065a4 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    65a4:	3c 40 cc 4b 	mov	#19404,	r12	;#0x4bcc
    65a8:	b0 12 80 6d 	call	#28032		;#0x6d80

000065ac <.LVL42>:
    if(idx)
    65ac:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    65ae:	cc 23       	jnz	$-102    	;abs 0x6548

000065b0 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    65b0:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000065b4 <.Loc.210.1>:
#endif
                __mcu_sleep();
    65b4:	03 43       	nop
    65b6:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    65ba:	03 43       	nop

000065bc <.Loc.213.1>:
                __enable_interrupt();
    65bc:	03 43       	nop
    65be:	32 d2       	eint
    65c0:	03 43       	nop
    65c2:	c2 3f       	jmp	$-122    	;abs 0x6548

000065c4 <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    65c4:	0a 15       	pushm	#1,	r10	;16-bit words

000065c6 <.LCFI0>:
    65c6:	0a 4c       	mov	r12,	r10	;

000065c8 <.Loc.38.1>:
    switch (thread->state)
    65c8:
000065ca <L0^A>:
    65ca:	02 00       	mova	@r0,	r2	;

000065cc <.LVL1>:
    65cc:	2c 93       	cmp	#2,	r12	;r3 As==10
    65ce:	38 24       	jz	$+114    	;abs 0x6640
    65d0:	2c 92       	cmp	#4,	r12	;r2 As==10
    65d2:	46 24       	jz	$+142    	;abs 0x6660
    65d4:	1c 93       	cmp	#1,	r12	;r3 As==01
    65d6:	60 20       	jnz	$+194    	;abs 0x6698

000065d8 <.LBB5>:
    __port_on(3,6);
    65d8:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    65dc:	22 02

000065de <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    65de:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

000065e2 <.Loc.14.1>:
    65e2:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    65e6:	5c e3       	xor.b	#1,	r12	;r3 As==01
    65e8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000065ec <.Loc.14.1>:
    65ec:	5c 02       	rlam	#1,	r12	;
    65ee:	0c 5a       	add	r10,	r12	;
    65f0:	5f 02       	rlam	#1,	r15	;
    65f2:	0f 5a       	add	r10,	r15	;
    65f4:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    65f8:	5e 03       	rrum	#1,	r14	;
    65fa:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    65fe:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    6602:	b0 12 a2 63 	call	#25506		;#0x63a2

00006606 <.Loc.17.1>:
    __port_off(3,6);
    6606:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    660a:	22 02

0000660c <.LBE5>:
         * in the privatization buffer.
         */
        __prologue(thread);

#ifdef RAISE_PIN
        __port_on(1, 4);
    660c:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    6610:	02 02

00006612 <.Loc.48.1>:

        /* Store the current thread privatization buffer index.
         * This is the index that is NOT the index for the original buffer.
         * These variables are used to select the correct address when a variable is written or read.
         */
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    6612:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6616:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6618:	c2 4c 56 52 	mov.b	r12,	&0x5256	;

0000661c <.Loc.60.1>:

        /* If this is the first task in the thread (entry task), then we need to check if there is an event in the queue for that thread.
         * We can simply take the first event from the queue, because if it does not exist it is NULL.
         */
        if(thread->next == thread->entry){
    661c:	1c 4a 08 00 	mov	8(r10),	r12	;

00006620 <.Loc.60.1>:
    6620:	1c 9a 04 00 	cmp	4(r10),	r12	;
    6624:	3b 20       	jnz	$+120    	;abs 0x669c

00006626 <.LBB7>:
             * This way, if a power failure occurs, the event will still be in the queue
             * and can be processed again.
             * Due to the way that event queues are implemented, an ISR cannot overwrite this event so the
             * event pointer should always point to the correct event.
             */
            isr_event_t *event = __lock_event(thread);
    6626:	0c 4a       	mov	r10,	r12	;
    6628:	b0 12 6e 62 	call	#25198		;#0x626e

0000662c <.LVL5>:
            /* Execute the current task.
             * We store the next task into a temporary pointer. If we did not do this and
             * a power failure occurs before we go to TASK_PRECOMMIT, the scheduler
             * would execute the wrong task on reboot.
             */
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    662c:	1d 4a 04 00 	mov	4(r10),	r13	;
    6630:	8d 12       	call	r13		;

00006632 <.L17>:
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)());
    6632:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006636 <.Loc.81.1>:
        }

        /* Even though we might not have used an event, we always need to go to the same state to avoid break statements. */
        thread->state = TASK_PRECOMMIT;
    6636:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000663a <.Loc.83.1>:
#ifdef RAISE_PIN
            __port_off(1, 4);
    663a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    663e:	02 02

00006640 <.L2>:
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
    6640:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6644:	22 02

00006646 <.Loc.87.1>:
#endif
        /* Commit the event pop from the queue, since the task is now done executing.
         * If there was no event, this does nothing.
         * We can repeatedly execute this function without causing any side effects.
         */
        __release_event(thread);
    6646:	0c 4a       	mov	r10,	r12	;
    6648:	b0 12 9c 62 	call	#25244		;#0x629c

0000664c <.Loc.96.1>:

        /* Commit the next task since the previous task is done executing. */
        thread->next = thread->next_temp;
    664c:	9a 4a 06 00 	mov	6(r10),	8(r10)	;
    6650:	08 00

00006652 <.Loc.108.1>:
         * >>> idx = idx ^ 1; // idx = 1
         * POWER FAILURE
         * >>> idx = idx ^ 1; // idx = 0
         * >>> state = COMMIT // Inconsistent value on state switch!!!
         */
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    6652:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6656:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6658:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

0000665c <.Loc.110.1>:

        thread->state = TASK_COMMIT;
    665c:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006660 <.L3>:
    case TASK_COMMIT:
        /* The temporary variables are now copied into the original buffer index.
         * This is an atomic action so can be executed repeatedly when power failures happen.
         */
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    6660:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6664:	0e 00

00006666 <.Loc.117.1>:
#ifdef RAISE_PIN
        __port_off(3,5);
    6666:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    666a:	22 02

0000666c <.Loc.117.1>:
        __port_on(3,5);
    666c:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6670:	22 02

00006672 <.Loc.118.1>:
#endif

        if (thread->next == NULL)
    6672:	8a 93 08 00 	cmp	#0,	8(r10)	;r3 As==00
    6676:	1a 20       	jnz	$+54     	;abs 0x66ac

00006678 <.Loc.123.1>:
        {
            __disable_interrupt();
    6678:	32 c2       	dint
    667a:	03 43       	nop

0000667c <.Loc.125.1>:
            // check if there are any pending events
            if(!__has_events(thread)){
    667c:	0c 4a       	mov	r10,	r12	;
    667e:	b0 12 50 62 	call	#25168		;#0x6250

00006682 <.Loc.125.1>:
    6682:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6684:	0d 20       	jnz	$+28     	;abs 0x66a0

00006686 <.Loc.127.1>:
                // suspend the thread if there are no pending events
                __stop_thread(thread);
    6686:	0c 4a       	mov	r10,	r12	;
    6688:	b0 12 96 64 	call	#25750		;#0x6496

0000668c <.L9>:
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
    668c:	03 43       	nop
    668e:	32 d2       	eint
    6690:	03 43       	nop

00006692 <.L10>:
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    6692:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6696:	22 02

00006698 <.L1>:
#endif
    }
}
    6698:	0a 17       	popm	#1,	r10	;16-bit words

0000669a <.LCFI1>:
    669a:	30 41       	ret

0000669c <.L5>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    669c:	8c 12       	call	r12		;
    669e:	c9 3f       	jmp	$-108    	;abs 0x6632

000066a0 <.L8>:
                thread->next = thread->entry;
    66a0:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    66a4:	08 00

000066a6 <.Loc.133.1>:
                thread->state = TASK_READY;
    66a6:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    66aa:	f0 3f       	jmp	$-30     	;abs 0x668c

000066ac <.L7>:
            thread->state = TASK_READY;
    66ac:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    66b0:	f0 3f       	jmp	$-30     	;abs 0x6692

000066b2 <__timers_init>:
    66b2:	b0 12 64 6e 	call	#28260		;#0x6e64

000066b6 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    66b6:	30 41       	ret

000066b8 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    66b8:	30 41       	ret

000066ba <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    66ba:	2a 15       	pushm	#3,	r10	;16-bit words

000066bc <.LCFI0>:
    66bc:	48 4c       	mov.b	r12,	r8	;

000066be <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    66be:	3a 40 30 1c 	mov	#7216,	r10	;#0x1c30

000066c2 <.Loc.101.1>:
    66c2:	49 43       	clr.b	r9		;

000066c4 <.L5>:
    {
        if (wkup_timing[i].thread_id == thread_id) {
    66c4:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    66c8:	07 20       	jnz	$+16     	;abs 0x66d8

000066ca <.Loc.104.1>:
            wkup_timing[i].status = NOT_USED;
    66ca:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000066ce <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    66ce:	4e 43       	clr.b	r14		;
    66d0:	4d 43       	clr.b	r13		;
    66d2:	4c 49       	mov.b	r9,	r12	;
    66d4:	b0 12 22 6f 	call	#28450		;#0x6f22

000066d8 <.L4>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    66d8:	4c 49       	mov.b	r9,	r12	;
    66da:	5c 53       	inc.b	r12		;
    66dc:	49 4c       	mov.b	r12,	r9	;

000066de <.LVL5>:
    66de:	3a 50 0a 00 	add	#10,	r10	;#0x000a

000066e2 <.Loc.101.1>:
    66e2:	7c 90 03 00 	cmp.b	#3,	r12	;
    66e6:	ee 23       	jnz	$-34     	;abs 0x66c4

000066e8 <.Loc.109.1>:

        }
    }
}
    66e8:	28 17       	popm	#3,	r10	;16-bit words

000066ea <.LCFI1>:
    66ea:	30 41       	ret

000066ec <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    66ec:	1a 15       	pushm	#2,	r10	;16-bit words

000066ee <.LCFI2>:
    66ee:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000066f2 <.LCFI3>:
    66f2:	49 43       	clr.b	r9		;

000066f4 <.L8>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    66f4:	0a 49       	mov	r9,	r10	;
    66f6:	5a 06       	rlam	#2,	r10	;
    66f8:	0a 59       	add	r9,	r10	;
    66fa:	5a 02       	rlam	#1,	r10	;
    66fc:	3a 50 30 1c 	add	#7216,	r10	;#0x1c30
    6700:	4e 43       	clr.b	r14		;
    6702:	4d 49       	mov.b	r9,	r13	;
    6704:	0c 41       	mov	r1,	r12	;
    6706:	b0 12 ac 70 	call	#28844		;#0x70ac
    670a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    670e:	0d 41       	mov	r1,	r13	;
    6710:	0c 4a       	mov	r10,	r12	;
    6712:	b0 12 e0 71 	call	#29152		;#0x71e0

00006716 <.LVL9>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6716:	19 53       	inc	r9		;

00006718 <.Loc.115.1>:
    6718:	39 90 03 00 	cmp	#3,	r9	;
    671c:	eb 23       	jnz	$-40     	;abs 0x66f4

0000671e <.Loc.120.1>:
    }

}
    671e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006722 <.LCFI4>:
    6722:	19 17       	popm	#2,	r10	;16-bit words

00006724 <.LCFI5>:
    6724:	30 41       	ret

00006726 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    6726:	4a 15       	pushm	#5,	r10	;16-bit words

00006728 <.LCFI6>:

    uint8_t i,first = 1;

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6728:	3a 40 30 1c 	mov	#7216,	r10	;#0x1c30

0000672c <.Loc.125.1>:
    uint8_t i,first = 1;
    672c:	5f 43       	mov.b	#1,	r15	;r3 As==01

0000672e <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    672e:	49 43       	clr.b	r9		;

00006730 <.L23>:
    {

        if (wkup_timing[i].status == USED)
    6730:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    6734:	56 20       	jnz	$+174    	;abs 0x67e2

00006736 <.Loc.133.1>:
        {

            if (first)
    6736:	16 4a 04 00 	mov	4(r10),	r6	;
    673a:	17 4a 06 00 	mov	6(r10),	r7	;

0000673e <.Loc.133.1>:
    673e:	0f 93       	cmp	#0,	r15	;r3 As==00
    6740:	05 24       	jz	$+12     	;abs 0x674c

00006742 <.Loc.135.1>:
            {
                min_wkup = wkup_timing[i].data;
    6742:	82 46 56 1c 	mov	r6,	&0x1c56	;

00006746 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    6746:	d2 4a 02 00 	mov.b	2(r10),	&0x1c58	;
    674a:	58 1c

0000674c <.L12>:
                first = 0;
            }


            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    674c:	b0 12 30 6e 	call	#28208		;#0x6e30

00006750 <.Loc.141.1>:
    6750:	0e 46       	mov	r6,	r14	;
    6752:	0f 47       	mov	r7,	r15	;
    6754:	0e 8c       	sub	r12,	r14	;
    6756:	0f 7d       	subc	r13,	r15	;

00006758 <.Loc.141.1>:
    6758:	8a 4e 04 00 	mov	r14,	4(r10)	;
    675c:	8a 4f 06 00 	mov	r15,	6(r10)	;

00006760 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    6760:	4d 43       	clr.b	r13		;
    6762:	4c 49       	mov.b	r9,	r12	;
    6764:	b0 12 86 6e 	call	#28294		;#0x6e86

00006768 <.Loc.144.1>:

            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    6768:	1c 4a 04 00 	mov	4(r10),	r12	;
    676c:	1d 4a 06 00 	mov	6(r10),	r13	;

00006770 <.Loc.144.1>:
    6770:	07 4d       	mov	r13,	r7	;
    6772:	0d 93       	cmp	#0,	r13	;r3 As==00
    6774:	50 34       	jge	$+162    	;abs 0x6816

00006776 <.Loc.144.1>:
    6776:	5e 42 59 1c 	mov.b	&0x1c59,r14	;0x1c59
    677a:	06 43       	clr	r6		;
    677c:	06 8e       	sub	r14,	r6	;
    677e:	0e 46       	mov	r6,	r14	;
    6780:	0f 46       	mov	r6,	r15	;
    6782:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006786 <.Loc.144.1>:
    6786:	0f 9d       	cmp	r13,	r15	;
    6788:	04 38       	jl	$+10     	;abs 0x6792

0000678a <.Loc.144.1>:
    678a:	0d 9f       	cmp	r15,	r13	;
    678c:	20 20       	jnz	$+66     	;abs 0x67ce
    678e:	06 9c       	cmp	r12,	r6	;
    6790:	1e 2c       	jc	$+62     	;abs 0x67ce

00006792 <.L32>:
            {
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6792:	18 42 56 1c 	mov	&0x1c56,r8	;0x1c56
    6796:	06 48       	mov	r8,	r6	;
    6798:	07 43       	clr	r7		;

0000679a <.Loc.146.1>:
    679a:	4e 43       	clr.b	r14		;
    679c:	4f 43       	clr.b	r15		;
    679e:	0e 8c       	sub	r12,	r14	;
    67a0:	0f 7d       	subc	r13,	r15	;

000067a2 <.Loc.146.1>:
    67a2:	0f 93       	cmp	#0,	r15	;r3 As==00
    67a4:	0c 38       	jl	$+26     	;abs 0x67be
    67a6:	0f 93       	cmp	#0,	r15	;r3 As==00
    67a8:	02 20       	jnz	$+6      	;abs 0x67ae
    67aa:	0e 96       	cmp	r6,	r14	;
    67ac:	08 28       	jnc	$+18     	;abs 0x67be

000067ae <.L33>:
    67ae:	06 9e       	cmp	r14,	r6	;
    67b0:	17 20       	jnz	$+48     	;abs 0x67e0
    67b2:	0f 93       	cmp	#0,	r15	;r3 As==00
    67b4:	15 20       	jnz	$+44     	;abs 0x67e0

000067b6 <.Loc.146.1>:
    67b6:	da 92 58 1c 	cmp.b	&0x1c58,2(r10)	;0x1c58
    67ba:	02 00
    67bc:	12 2c       	jc	$+38     	;abs 0x67e2

000067be <.L17>:
                {
                    min_wkup = -wkup_timing[i].data;
    67be:	4e 43       	clr.b	r14		;
    67c0:	0e 8c       	sub	r12,	r14	;
    67c2:	82 4e 56 1c 	mov	r14,	&0x1c56	;

000067c6 <.L40>:
            if (wkup_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
                {
                    min_wkup = wkup_timing[i].data;
                    nxt_wkup = wkup_timing[i].thread_id;
    67c6:	d2 4a 02 00 	mov.b	2(r10),	&0x1c58	;
    67ca:	58 1c
    67cc:	09 3c       	jmp	$+20     	;abs 0x67e0

000067ce <.L15>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    67ce:	07 4d       	mov	r13,	r7	;
    67d0:	0d 9f       	cmp	r15,	r13	;
    67d2:	04 38       	jl	$+10     	;abs 0x67dc
    67d4:	0f 9d       	cmp	r13,	r15	;
    67d6:	04 20       	jnz	$+10     	;abs 0x67e0
    67d8:	0c 96       	cmp	r6,	r12	;
    67da:	02 2c       	jc	$+6      	;abs 0x67e0

000067dc <.L34>:
    67dc:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000067e0 <.L30>:
    67e0:	4f 43       	clr.b	r15		;

000067e2 <.L11>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    67e2:	4c 49       	mov.b	r9,	r12	;
    67e4:	5c 53       	inc.b	r12		;
    67e6:	49 4c       	mov.b	r12,	r9	;

000067e8 <.LVL17>:
    67e8:	3a 50 0a 00 	add	#10,	r10	;#0x000a

000067ec <.Loc.127.1>:
    67ec:	7c 90 03 00 	cmp.b	#3,	r12	;
    67f0:	9f 23       	jnz	$-192    	;abs 0x6730

000067f2 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    67f2:	0f 93       	cmp	#0,	r15	;r3 As==00
    67f4:	2d 20       	jnz	$+92     	;abs 0x6850

000067f6 <.Loc.166.1>:
    {
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    67f6:	5d 42 58 1c 	mov.b	&0x1c58,r13	;0x1c58
    67fa:	4c 43       	clr.b	r12		;

000067fc <.LVL18>:
    67fc:	b0 12 68 6f 	call	#28520		;#0x6f68

00006800 <.LVL19>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    6800:	1d 42 56 1c 	mov	&0x1c56,r13	;0x1c56
    6804:	4c 43       	clr.b	r12		;
    6806:	b0 12 76 6f 	call	#28534		;#0x6f76

0000680a <.Loc.171.1>:
        //set the new pending ISR timer.
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    680a:	1c 42 56 1c 	mov	&0x1c56,r12	;0x1c56
    680e:	b0 12 a6 6d 	call	#28070		;#0x6da6

00006812 <.L10>:
    }
    //no pending wake up timer was found.
    else stop_timer();


}
    6812:	46 17       	popm	#5,	r10	;16-bit words

00006814 <.LCFI7>:
    6814:	30 41       	ret

00006816 <.L13>:
            if (wkup_timing[i].data > 0)
    6816:	0e 4c       	mov	r12,	r14	;
    6818:	0e dd       	bis	r13,	r14	;
    681a:	4f 43       	clr.b	r15		;
    681c:	0e 93       	cmp	#0,	r14	;r3 As==00
    681e:	e1 27       	jz	$-60     	;abs 0x67e2

00006820 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6820:	18 42 56 1c 	mov	&0x1c56,r8	;0x1c56
    6824:	0e 48       	mov	r8,	r14	;
    6826:	0f 43       	clr	r15		;

00006828 <.Loc.155.1>:
    6828:	0d 93       	cmp	#0,	r13	;r3 As==00
    682a:	0f 38       	jl	$+32     	;abs 0x684a
    682c:	0d 93       	cmp	#0,	r13	;r3 As==00
    682e:	03 20       	jnz	$+8      	;abs 0x6836
    6830:	07 4c       	mov	r12,	r7	;
    6832:	0c 9e       	cmp	r14,	r12	;
    6834:	0a 28       	jnc	$+22     	;abs 0x684a

00006836 <.L35>:
    6836:	07 4c       	mov	r12,	r7	;
    6838:	0c 9e       	cmp	r14,	r12	;
    683a:	d2 23       	jnz	$-90     	;abs 0x67e0
    683c:	0d 9f       	cmp	r15,	r13	;
    683e:	d0 23       	jnz	$-94     	;abs 0x67e0
    6840:	4f 43       	clr.b	r15		;

00006842 <.Loc.155.1>:
    6842:	da 92 58 1c 	cmp.b	&0x1c58,2(r10)	;0x1c58
    6846:	02 00
    6848:	cc 2f       	jc	$-102    	;abs 0x67e2

0000684a <.L21>:
                    min_wkup = wkup_timing[i].data;
    684a:	82 4c 56 1c 	mov	r12,	&0x1c56	;
    684e:	bb 3f       	jmp	$-136    	;abs 0x67c6

00006850 <.L24>:
    else stop_timer();
    6850:	b0 12 96 6d 	call	#28054		;#0x6d96

00006854 <.LVL24>:
}
    6854:	de 3f       	jmp	$-66     	;abs 0x6812

00006856 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    6856:	2a 15       	pushm	#3,	r10	;16-bit words

00006858 <.LCFI9>:
    6858:	21 83       	decd	r1		;

0000685a <.LCFI10>:
    685a:	49 4c       	mov.b	r12,	r9	;

0000685c <.Loc.182.1>:
    uint8_t i,cmpl = 0;

    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();
    685c:	81 4d 00 00 	mov	r13,	0(r1)	;
    6860:	b0 12 ec 66 	call	#26348		;#0x66ec

00006864 <.LVL27>:

    //init the timer
    //TODO:check if needed
    stop_timer();
    6864:	b0 12 96 6d 	call	#28054		;#0x6d96

00006868 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    6868:	2e 41       	mov	@r1,	r14	;
    686a:	82 93 30 1c 	cmp	#0,	&0x1c30	;r3 As==00
    686e:	22 24       	jz	$+70     	;abs 0x68b4

00006870 <.Loc.192.1>:
    6870:	82 93 3a 1c 	cmp	#0,	&0x1c3a	;r3 As==00
    6874:	41 24       	jz	$+132    	;abs 0x68f8

00006876 <.Loc.192.1>:
    6876:	82 93 44 1c 	cmp	#0,	&0x1c44	;r3 As==00
    687a:	41 24       	jz	$+132    	;abs 0x68fe

0000687c <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    687c:	82 4e 48 1c 	mov	r14,	&0x1c48	;
    6880:	82 43 4a 1c 	mov	#0,	&0x1c4a	;r3 As==00

00006884 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    6884:	4f 43       	clr.b	r15		;
    6886:	4d 43       	clr.b	r13		;
    6888:	6c 43       	mov.b	#2,	r12	;r3 As==10
    688a:	b0 12 86 6e 	call	#28294		;#0x6e86

0000688e <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    688e:	c2 49 46 1c 	mov.b	r9,	&0x1c46	;

00006892 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    6892:	4e 49       	mov.b	r9,	r14	;
    6894:	4d 43       	clr.b	r13		;
    6896:	7c 40 03 00 	mov.b	#3,	r12	;
    689a:	b0 12 d8 6e 	call	#28376		;#0x6ed8

0000689e <.L47>:
        refresh_wkup_timers();
    689e:	b0 12 26 67 	call	#26406		;#0x6726

000068a2 <.Loc.222.1>:
        refresh_wkup_timers();
    }

    _pers_timer_update_lock(WKUP);
    68a2:	4c 43       	clr.b	r12		;
    68a4:	b0 12 84 6f 	call	#28548		;#0x6f84

000068a8 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    68a8:	4c 43       	clr.b	r12		;
    68aa:	b0 12 6a 70 	call	#28778		;#0x706a

000068ae <.Loc.224.1>:
}
    68ae:	21 53       	incd	r1		;

000068b0 <.LCFI11>:
    68b0:	28 17       	popm	#3,	r10	;16-bit words

000068b2 <.LCFI12>:
    68b2:	30 41       	ret

000068b4 <.L44>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    68b4:	1a 42 30 1c 	mov	&0x1c30,r10	;0x1c30

000068b8 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    68b8:	0d 4a       	mov	r10,	r13	;

000068ba <.L42>:
            wkup_timing[i].data = ticks;
    68ba:	0c 4d       	mov	r13,	r12	;
    68bc:	5c 06       	rlam	#2,	r12	;
    68be:	0c 5d       	add	r13,	r12	;
    68c0:	5c 02       	rlam	#1,	r12	;
    68c2:	08 4c       	mov	r12,	r8	;
    68c4:	8c 4e 34 1c 	mov	r14,	7220(r12); 0x1c34
    68c8:	8c 43 36 1c 	mov	#0,	7222(r12);r3 As==00, 0x1c36

000068cc <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    68cc:	4f 43       	clr.b	r15		;
    68ce:	4d 43       	clr.b	r13		;
    68d0:	4c 4a       	mov.b	r10,	r12	;
    68d2:	b0 12 86 6e 	call	#28294		;#0x6e86

000068d6 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    68d6:	c8 49 32 1c 	mov.b	r9,	7218(r8); 0x1c32

000068da <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    68da:	4e 49       	mov.b	r9,	r14	;
    68dc:	4d 43       	clr.b	r13		;
    68de:	4c 4a       	mov.b	r10,	r12	;
    68e0:	b0 12 d8 6e 	call	#28376		;#0x6ed8

000068e4 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    68e4:	98 43 30 1c 	mov	#1,	7216(r8);r3 As==01, 0x1c30

000068e8 <.Loc.196.1>:
            wkup_timing[i].data = ticks;
    68e8:	38 50 30 1c 	add	#7216,	r8	;#0x1c30

000068ec <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    68ec:	5e 43       	mov.b	#1,	r14	;r3 As==01
    68ee:	4d 43       	clr.b	r13		;
    68f0:	4c 4a       	mov.b	r10,	r12	;
    68f2:	b0 12 22 6f 	call	#28450		;#0x6f22
    68f6:	d3 3f       	jmp	$-88     	;abs 0x689e

000068f8 <.L45>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    68f8:	5a 43       	mov.b	#1,	r10	;r3 As==01

000068fa <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    68fa:	5d 43       	mov.b	#1,	r13	;r3 As==01
    68fc:	de 3f       	jmp	$-66     	;abs 0x68ba

000068fe <.L46>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    68fe:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006900 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6900:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6902:	db 3f       	jmp	$-72     	;abs 0x68ba

00006904 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    6904:	4d 4c       	mov.b	r12,	r13	;

00006906 <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    6906:	5c 92 14 1c 	cmp.b	&0x1c14,r12	;0x1c14
    690a:	13 24       	jz	$+40     	;abs 0x6932

0000690c <.Loc.237.1>:
    690c:	c2 9d 1e 1c 	cmp.b	r13,	&0x1c1e	;
    6910:	13 24       	jz	$+40     	;abs 0x6938

00006912 <.Loc.237.1>:
    6912:	c2 9d 28 1c 	cmp.b	r13,	&0x1c28	;
    6916:	0c 20       	jnz	$+26     	;abs 0x6930

00006918 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6918:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000691a <.LVL48>:
        if (xpr_timing[i].thread_id == thread_id){
    691a:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000691c <.L49>:
            xpr_timing[i].status = NOT_USED;
    691c:	0d 4e       	mov	r14,	r13	;

0000691e <.LVL50>:
    691e:	5d 06       	rlam	#2,	r13	;
    6920:	0d 5e       	add	r14,	r13	;
    6922:	5d 02       	rlam	#1,	r13	;
    6924:	8d 43 12 1c 	mov	#0,	7186(r13);r3 As==00, 0x1c12

00006928 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6928:	4e 43       	clr.b	r14		;
    692a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    692c:	b0 12 22 6f 	call	#28450		;#0x6f22

00006930 <.L48>:
            break;
        }
    }

}
    6930:	30 41       	ret

00006932 <.L51>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6932:	4c 43       	clr.b	r12		;

00006934 <.LVL53>:
        if (xpr_timing[i].thread_id == thread_id){
    6934:	4e 43       	clr.b	r14		;
    6936:	f2 3f       	jmp	$-26     	;abs 0x691c

00006938 <.L52>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6938:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000693a <.LVL55>:
        if (xpr_timing[i].thread_id == thread_id){
    693a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    693c:	ef 3f       	jmp	$-32     	;abs 0x691c

0000693e <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    693e:	1a 15       	pushm	#2,	r10	;16-bit words

00006940 <.LCFI14>:
    6940:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006944 <.LCFI15>:
    6944:	49 43       	clr.b	r9		;

00006946 <.L54>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    6946:	0a 49       	mov	r9,	r10	;
    6948:	5a 06       	rlam	#2,	r10	;
    694a:	0a 59       	add	r9,	r10	;
    694c:	5a 02       	rlam	#1,	r10	;
    694e:	3a 50 12 1c 	add	#7186,	r10	;#0x1c12
    6952:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6954:	4d 49       	mov.b	r9,	r13	;
    6956:	0c 41       	mov	r1,	r12	;
    6958:	b0 12 ac 70 	call	#28844		;#0x70ac
    695c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6960:	0d 41       	mov	r1,	r13	;
    6962:	0c 4a       	mov	r10,	r12	;
    6964:	b0 12 e0 71 	call	#29152		;#0x71e0

00006968 <.LVL59>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6968:	19 53       	inc	r9		;

0000696a <.Loc.252.1>:
    696a:	39 90 03 00 	cmp	#3,	r9	;
    696e:	eb 23       	jnz	$-40     	;abs 0x6946

00006970 <.Loc.257.1>:
    }

}
    6970:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006974 <.LCFI16>:
    6974:	19 17       	popm	#2,	r10	;16-bit words

00006976 <.LCFI17>:
    6976:	30 41       	ret

00006978 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    6978:	6a 15       	pushm	#7,	r10	;16-bit words

0000697a <.LCFI18>:
    697a:	47 43       	clr.b	r7		;

0000697c <.Loc.261.1>:

    uint8_t i,first = 1;
    uint8_t nxt_xpr;
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    697c:	3a 40 12 1c 	mov	#7186,	r10	;#0x1c12

00006980 <.Loc.261.1>:
    uint8_t i,first = 1;
    6980:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006982 <.Loc.265.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6982:	46 43       	clr.b	r6		;

00006984 <.L64>:
    {

        if (xpr_timing[i].status == USED)
    6984:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    6988:	4a 20       	jnz	$+150    	;abs 0x6a1e

0000698a <.Loc.271.1>:
        {

            if (first)
    698a:	14 4a 04 00 	mov	4(r10),	r4	;
    698e:	15 4a 06 00 	mov	6(r10),	r5	;

00006992 <.Loc.271.1>:
    6992:	0c 93       	cmp	#0,	r12	;r3 As==00
    6994:	04 24       	jz	$+10     	;abs 0x699e

00006996 <.LVL63>:
            {
                min_xpr = xpr_timing[i].data;
                nxt_xpr = xpr_timing[i].thread_id;
    6996:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000699a <.LVL64>:
                min_xpr = xpr_timing[i].data;
    699a:	09 44       	mov	r4,	r9	;
    699c:	08 45       	mov	r5,	r8	;

0000699e <.L58>:
                first = 0;
            }

            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    699e:	b0 12 30 6e 	call	#28208		;#0x6e30

000069a2 <.Loc.278.1>:
    69a2:	0e 44       	mov	r4,	r14	;
    69a4:	0f 45       	mov	r5,	r15	;
    69a6:	0e 8c       	sub	r12,	r14	;
    69a8:	0f 7d       	subc	r13,	r15	;

000069aa <.Loc.278.1>:
    69aa:	8a 4e 04 00 	mov	r14,	4(r10)	;
    69ae:	8a 4f 06 00 	mov	r15,	6(r10)	;

000069b2 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    69b2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    69b4:	4c 46       	mov.b	r6,	r12	;
    69b6:	b0 12 86 6e 	call	#28294		;#0x6e86

000069ba <.Loc.281.1>:

            if (xpr_timing[i].data <= 0)
    69ba:	4c 43       	clr.b	r12		;
    69bc:	1c 9a 06 00 	cmp	6(r10),	r12	;
    69c0:	10 38       	jl	$+34     	;abs 0x69e2
    69c2:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    69c6:	03 20       	jnz	$+8      	;abs 0x69ce
    69c8:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    69cc:	0a 20       	jnz	$+22     	;abs 0x69e2

000069ce <.L70>:
            {
                //evict thread
                //TODO:fix bug to disable ISR
                //TODO:find a more elegant way??
                //__stop_thread(__get_thread(xpr_timing[i].thread_id));
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    69ce:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    69d2:	b0 12 06 65 	call	#25862		;#0x6506
    69d6:	b0 12 ac 64 	call	#25772		;#0x64ac

000069da <.Loc.289.1>:
                //update struct
                clear_xpr_status(xpr_timing[i].thread_id);
    69da:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    69de:	b0 12 04 69 	call	#26884		;#0x6904

000069e2 <.L59>:
            }

            if (xpr_timing[i].data > 0)
    69e2:	1e 4a 04 00 	mov	4(r10),	r14	;
    69e6:	1d 4a 06 00 	mov	6(r10),	r13	;

000069ea <.Loc.292.1>:
    69ea:	4c 43       	clr.b	r12		;
    69ec:	0c 9d       	cmp	r13,	r12	;
    69ee:	04 38       	jl	$+10     	;abs 0x69f8
    69f0:	0d 93       	cmp	#0,	r13	;r3 As==00
    69f2:	14 20       	jnz	$+42     	;abs 0x6a1c
    69f4:	0e 93       	cmp	#0,	r14	;r3 As==00
    69f6:	12 24       	jz	$+38     	;abs 0x6a1c

000069f8 <.L71>:
            {   //TODO:priority convention
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    69f8:	0d 98       	cmp	r8,	r13	;
    69fa:	0c 38       	jl	$+26     	;abs 0x6a14
    69fc:	08 9d       	cmp	r13,	r8	;
    69fe:	02 20       	jnz	$+6      	;abs 0x6a04
    6a00:	0e 99       	cmp	r9,	r14	;
    6a02:	08 28       	jnc	$+18     	;abs 0x6a14

00006a04 <.L72>:
    6a04:	4c 43       	clr.b	r12		;

00006a06 <.Loc.294.1>:
    6a06:	0e 99       	cmp	r9,	r14	;
    6a08:	0a 20       	jnz	$+22     	;abs 0x6a1e
    6a0a:	0d 98       	cmp	r8,	r13	;
    6a0c:	08 20       	jnz	$+18     	;abs 0x6a1e

00006a0e <.Loc.294.1>:
    6a0e:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    6a12:	05 2c       	jc	$+12     	;abs 0x6a1e

00006a14 <.L62>:
                {
                    min_xpr = xpr_timing[i].data;
                    nxt_xpr = xpr_timing[i].thread_id;
    6a14:	57 4a 02 00 	mov.b	2(r10),	r7	;

00006a18 <.LVL72>:
    6a18:	09 4e       	mov	r14,	r9	;
    6a1a:	08 4d       	mov	r13,	r8	;

00006a1c <.L67>:
    6a1c:	4c 43       	clr.b	r12		;

00006a1e <.L57>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6a1e:	4d 46       	mov.b	r6,	r13	;
    6a20:	5d 53       	inc.b	r13		;
    6a22:	46 4d       	mov.b	r13,	r6	;

00006a24 <.LVL75>:
    6a24:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00006a28 <.Loc.265.1>:
    6a28:	7d 90 03 00 	cmp.b	#3,	r13	;
    6a2c:	ab 23       	jnz	$-168    	;abs 0x6984

00006a2e <.Loc.303.1>:
                }
            }
       }
    }

    if (!first)
    6a2e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6a30:	0d 20       	jnz	$+28     	;abs 0x6a4c

00006a32 <.Loc.304.1>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    6a32:	4d 47       	mov.b	r7,	r13	;

00006a34 <.LVL76>:
    6a34:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006a36 <.LVL77>:
    6a36:	b0 12 68 6f 	call	#28520		;#0x6f68

00006a3a <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    6a3a:	0d 49       	mov	r9,	r13	;
    6a3c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a3e:	b0 12 76 6f 	call	#28534		;#0x6f76

00006a42 <.Loc.308.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    6a42:	0c 49       	mov	r9,	r12	;
    6a44:	b0 12 bc 6d 	call	#28092		;#0x6dbc

00006a48 <.L56>:
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();

}
    6a48:	64 17       	popm	#7,	r10	;16-bit words

00006a4a <.LCFI19>:
    6a4a:	30 41       	ret

00006a4c <.L65>:
    else stop_timer_xpr();
    6a4c:	b0 12 d2 6d 	call	#28114		;#0x6dd2

00006a50 <.LVL82>:
}
    6a50:	fb 3f       	jmp	$-8      	;abs 0x6a48

00006a52 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    6a52:	5a 15       	pushm	#6,	r10	;16-bit words

00006a54 <.LCFI21>:
    6a54:	48 4c       	mov.b	r12,	r8	;
    6a56:	09 4d       	mov	r13,	r9	;
    6a58:	07 4e       	mov	r14,	r7	;

00006a5a <.Loc.318.1>:

    uint8_t i,cmpl = 0;

    //__set_xpr_timer(__get_thread(thread_id), ticks);

    unpack_xpr_to_local();
    6a5a:	b0 12 3e 69 	call	#26942		;#0x693e

00006a5e <.LVL85>:

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    6a5e:	82 93 12 1c 	cmp	#0,	&0x1c12	;r3 As==00
    6a62:	1b 24       	jz	$+56     	;abs 0x6a9a

00006a64 <.Loc.324.1>:
    6a64:	82 93 1c 1c 	cmp	#0,	&0x1c1c	;r3 As==00
    6a68:	43 24       	jz	$+136    	;abs 0x6af0

00006a6a <.Loc.324.1>:
    6a6a:	82 93 26 1c 	cmp	#0,	&0x1c26	;r3 As==00
    6a6e:	43 24       	jz	$+136    	;abs 0x6af6

00006a70 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    6a70:	0e 49       	mov	r9,	r14	;
    6a72:	0f 47       	mov	r7,	r15	;
    6a74:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a76:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a78:	b0 12 86 6e 	call	#28294		;#0x6e86

00006a7c <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    6a7c:	4e 48       	mov.b	r8,	r14	;
    6a7e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a80:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a82:	b0 12 d8 6e 	call	#28376		;#0x6ed8

00006a86 <.L83>:
        refresh_xpr_timers();
    6a86:	b0 12 78 69 	call	#27000		;#0x6978

00006a8a <.Loc.352.1>:
        refresh_xpr_timers();
    }

    _pers_timer_update_lock(XPR);
    6a8a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a8c:	b0 12 84 6f 	call	#28548		;#0x6f84

00006a90 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6a90:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a92:	b0 12 6a 70 	call	#28778		;#0x706a

00006a96 <.Loc.354.1>:
}
    6a96:	55 17       	popm	#6,	r10	;16-bit words

00006a98 <.LCFI22>:
    6a98:	30 41       	ret

00006a9a <.L80>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6a9a:	1a 42 12 1c 	mov	&0x1c12,r10	;0x1c12

00006a9e <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6a9e:	06 4a       	mov	r10,	r6	;

00006aa0 <.L78>:
            xpr_timing[i].data = ticks + __get_time();
    6aa0:	35 40 30 6e 	mov	#28208,	r5	;#0x6e30
    6aa4:	85 12       	call	r5		;

00006aa6 <.Loc.328.1>:
    6aa6:	0e 46       	mov	r6,	r14	;
    6aa8:	5e 06       	rlam	#2,	r14	;
    6aaa:	0e 56       	add	r6,	r14	;
    6aac:	5e 02       	rlam	#1,	r14	;
    6aae:	06 4e       	mov	r14,	r6	;

00006ab0 <.Loc.328.1>:
    6ab0:	0c 59       	add	r9,	r12	;
    6ab2:	8e 4c 16 1c 	mov	r12,	7190(r14); 0x1c16
    6ab6:	0d 67       	addc	r7,	r13	;
    6ab8:	8e 4d 18 1c 	mov	r13,	7192(r14); 0x1c18

00006abc <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    6abc:	85 12       	call	r5		;

00006abe <.Loc.329.1>:
    6abe:	0e 4c       	mov	r12,	r14	;
    6ac0:	0e 59       	add	r9,	r14	;
    6ac2:	0f 4d       	mov	r13,	r15	;
    6ac4:	0f 67       	addc	r7,	r15	;
    6ac6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ac8:	4c 4a       	mov.b	r10,	r12	;
    6aca:	b0 12 86 6e 	call	#28294		;#0x6e86

00006ace <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    6ace:	c6 48 14 1c 	mov.b	r8,	7188(r6); 0x1c14

00006ad2 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    6ad2:	4e 48       	mov.b	r8,	r14	;
    6ad4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ad6:	4c 4a       	mov.b	r10,	r12	;
    6ad8:	b0 12 d8 6e 	call	#28376		;#0x6ed8

00006adc <.Loc.332.1>:
            xpr_timing[i].status = USED;
    6adc:	96 43 12 1c 	mov	#1,	7186(r6);r3 As==01, 0x1c12

00006ae0 <.Loc.328.1>:
            xpr_timing[i].data = ticks + __get_time();
    6ae0:	36 50 12 1c 	add	#7186,	r6	;#0x1c12

00006ae4 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    6ae4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6ae6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ae8:	4c 4a       	mov.b	r10,	r12	;
    6aea:	b0 12 22 6f 	call	#28450		;#0x6f22
    6aee:	cb 3f       	jmp	$-104    	;abs 0x6a86

00006af0 <.L81>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6af0:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006af2 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6af2:	56 43       	mov.b	#1,	r6	;r3 As==01
    6af4:	d5 3f       	jmp	$-84     	;abs 0x6aa0

00006af6 <.L82>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6af6:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006af8 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6af8:	66 43       	mov.b	#2,	r6	;r3 As==10
    6afa:	d2 3f       	jmp	$-90     	;abs 0x6aa0

00006afc <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    6afc:	0a 15       	pushm	#1,	r10	;16-bit words

00006afe <.LCFI24>:
    6afe:	4a 4c       	mov.b	r12,	r10	;

00006b00 <.Loc.361.1>:

    //__set_xpr_timer(__get_thread(thread_id),0);

    unpack_xpr_to_local();
    6b00:	b0 12 3e 69 	call	#26942		;#0x693e

00006b04 <.LVL104>:

    clear_xpr_status(thread_id);
    6b04:	4c 4a       	mov.b	r10,	r12	;
    6b06:	b0 12 04 69 	call	#26884		;#0x6904

00006b0a <.Loc.366.1>:

    //TODO:care infinite loop?
    refresh_xpr_timers();
    6b0a:	b0 12 78 69 	call	#27000		;#0x6978

00006b0e <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    6b0e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6b10:	b0 12 84 6f 	call	#28548		;#0x6f84

00006b14 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6b14:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6b16:	b0 12 6a 70 	call	#28778		;#0x706a

00006b1a <.Loc.371.1>:

}
    6b1a:	0a 17       	popm	#1,	r10	;16-bit words

00006b1c <.LCFI25>:
    6b1c:	30 41       	ret

00006b1e <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    6b1e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006b22 <.LCFI26>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    6b22:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6b24:	4d 43       	clr.b	r13		;
    6b26:	0c 41       	mov	r1,	r12	;
    6b28:	b0 12 ac 70 	call	#28844		;#0x70ac
    6b2c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6b30:	0d 41       	mov	r1,	r13	;
    6b32:	3c 40 08 1c 	mov	#7176,	r12	;#0x1c08
    6b36:	b0 12 e0 71 	call	#29152		;#0x71e0

00006b3a <.Loc.383.1>:
    }

}
    6b3a:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006b3e <.LCFI27>:
    6b3e:	30 41       	ret

00006b40 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    6b40:	2a 15       	pushm	#3,	r10	;16-bit words

00006b42 <.LCFI28>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    6b42:	92 93 08 1c 	cmp	#1,	&0x1c08	;r3 As==01
    6b46:	7d 20       	jnz	$+252    	;abs 0x6c42

00006b48 <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    6b48:	18 42 0c 1c 	mov	&0x1c0c,r8	;0x1c0c
    6b4c:	19 42 0e 1c 	mov	&0x1c0e,r9	;0x1c0e

00006b50 <.Loc.465.1>:
    6b50:	82 48 4e 1c 	mov	r8,	&0x1c4e	;

00006b54 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    6b54:	d2 42 0a 1c 	mov.b	&0x1c0a,&0x1c50	;0x1c0a
    6b58:	50 1c

00006b5a <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    6b5a:	b0 12 30 6e 	call	#28208		;#0x6e30

00006b5e <.Loc.471.1>:
    6b5e:	0e 48       	mov	r8,	r14	;
    6b60:	0f 49       	mov	r9,	r15	;
    6b62:	0e 8c       	sub	r12,	r14	;
    6b64:	0f 7d       	subc	r13,	r15	;

00006b66 <.Loc.471.1>:
    6b66:	82 4e 0c 1c 	mov	r14,	&0x1c0c	;
    6b6a:	82 4f 0e 1c 	mov	r15,	&0x1c0e	;

00006b6e <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    6b6e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6b70:	4c 43       	clr.b	r12		;
    6b72:	b0 12 86 6e 	call	#28294		;#0x6e86

00006b76 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    6b76:	1c 42 0c 1c 	mov	&0x1c0c,r12	;0x1c0c
    6b7a:	1d 42 0e 1c 	mov	&0x1c0e,r13	;0x1c0e

00006b7e <.Loc.474.1>:
    6b7e:	09 4d       	mov	r13,	r9	;
    6b80:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b82:	44 34       	jge	$+138    	;abs 0x6c0c

00006b84 <.Loc.474.1>:
    6b84:	5e 42 59 1c 	mov.b	&0x1c59,r14	;0x1c59
    6b88:	08 43       	clr	r8		;
    6b8a:	08 8e       	sub	r14,	r8	;
    6b8c:	0e 48       	mov	r8,	r14	;
    6b8e:	0f 48       	mov	r8,	r15	;
    6b90:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006b94 <.Loc.474.1>:
    6b94:	0f 9d       	cmp	r13,	r15	;
    6b96:	04 38       	jl	$+10     	;abs 0x6ba0

00006b98 <.Loc.474.1>:
    6b98:	0d 9f       	cmp	r15,	r13	;
    6b9a:	20 20       	jnz	$+66     	;abs 0x6bdc
    6b9c:	08 9c       	cmp	r12,	r8	;
    6b9e:	1e 2c       	jc	$+62     	;abs 0x6bdc

00006ba0 <.L100>:
            {
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6ba0:	1a 42 4e 1c 	mov	&0x1c4e,r10	;0x1c4e
    6ba4:	08 4a       	mov	r10,	r8	;
    6ba6:	09 43       	clr	r9		;

00006ba8 <.Loc.476.1>:
    6ba8:	4e 43       	clr.b	r14		;
    6baa:	4f 43       	clr.b	r15		;
    6bac:	0e 8c       	sub	r12,	r14	;
    6bae:	0f 7d       	subc	r13,	r15	;

00006bb0 <.Loc.476.1>:
    6bb0:	0f 93       	cmp	#0,	r15	;r3 As==00
    6bb2:	0c 38       	jl	$+26     	;abs 0x6bcc
    6bb4:	0f 93       	cmp	#0,	r15	;r3 As==00
    6bb6:	02 20       	jnz	$+6      	;abs 0x6bbc
    6bb8:	0e 98       	cmp	r8,	r14	;
    6bba:	08 28       	jnc	$+18     	;abs 0x6bcc

00006bbc <.L101>:
    6bbc:	08 9e       	cmp	r14,	r8	;
    6bbe:	17 20       	jnz	$+48     	;abs 0x6bee
    6bc0:	0f 93       	cmp	#0,	r15	;r3 As==00
    6bc2:	15 20       	jnz	$+44     	;abs 0x6bee

00006bc4 <.Loc.476.1>:
    6bc4:	d2 92 50 1c 	cmp.b	&0x1c50,&0x1c0a	;0x1c50
    6bc8:	0a 1c
    6bca:	11 2c       	jc	$+36     	;abs 0x6bee

00006bcc <.L92>:
                {
                    min_pdc = -pdc_timing[i].data;
    6bcc:	4e 43       	clr.b	r14		;
    6bce:	0e 8c       	sub	r12,	r14	;
    6bd0:	82 4e 4e 1c 	mov	r14,	&0x1c4e	;

00006bd4 <.L107>:
            if (pdc_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
                {
                    min_pdc = pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
    6bd4:	d2 42 0a 1c 	mov.b	&0x1c0a,&0x1c50	;0x1c0a
    6bd8:	50 1c

00006bda <.Loc.494.1>:
                }
            }
       }
    }

    if (!first)
    6bda:	09 3c       	jmp	$+20     	;abs 0x6bee

00006bdc <.L90>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    6bdc:	09 4d       	mov	r13,	r9	;
    6bde:	0d 9f       	cmp	r15,	r13	;
    6be0:	04 38       	jl	$+10     	;abs 0x6bea
    6be2:	0f 9d       	cmp	r13,	r15	;
    6be4:	04 20       	jnz	$+10     	;abs 0x6bee
    6be6:	0c 98       	cmp	r8,	r12	;
    6be8:	02 2c       	jc	$+6      	;abs 0x6bee

00006bea <.L102>:
    6bea:	82 43 08 1c 	mov	#0,	&0x1c08	;r3 As==00

00006bee <.L94>:
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    6bee:	5d 42 50 1c 	mov.b	&0x1c50,r13	;0x1c50
    6bf2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6bf4:	b0 12 68 6f 	call	#28520		;#0x6f68

00006bf8 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    6bf8:	1d 42 4e 1c 	mov	&0x1c4e,r13	;0x1c4e
    6bfc:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6bfe:	b0 12 76 6f 	call	#28534		;#0x6f76

00006c02 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    6c02:	1c 42 4e 1c 	mov	&0x1c4e,r12	;0x1c4e
    6c06:	b0 12 d8 6d 	call	#28120		;#0x6dd8

00006c0a <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    6c0a:	1d 3c       	jmp	$+60     	;abs 0x6c46

00006c0c <.L88>:
            if (pdc_timing[i].data > 0)
    6c0c:	0e 4c       	mov	r12,	r14	;
    6c0e:	0e dd       	bis	r13,	r14	;
    6c10:	0e 93       	cmp	#0,	r14	;r3 As==00
    6c12:	ed 27       	jz	$-36     	;abs 0x6bee

00006c14 <.Loc.485.1>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6c14:	1a 42 4e 1c 	mov	&0x1c4e,r10	;0x1c4e
    6c18:	0e 4a       	mov	r10,	r14	;
    6c1a:	0f 43       	clr	r15		;

00006c1c <.Loc.485.1>:
    6c1c:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c1e:	0e 38       	jl	$+30     	;abs 0x6c3c
    6c20:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c22:	03 20       	jnz	$+8      	;abs 0x6c2a
    6c24:	09 4c       	mov	r12,	r9	;
    6c26:	0c 9e       	cmp	r14,	r12	;
    6c28:	09 28       	jnc	$+20     	;abs 0x6c3c

00006c2a <.L103>:
    6c2a:	09 4c       	mov	r12,	r9	;
    6c2c:	0c 9e       	cmp	r14,	r12	;
    6c2e:	df 23       	jnz	$-64     	;abs 0x6bee
    6c30:	0d 9f       	cmp	r15,	r13	;
    6c32:	dd 23       	jnz	$-68     	;abs 0x6bee

00006c34 <.Loc.485.1>:
    6c34:	d2 92 50 1c 	cmp.b	&0x1c50,&0x1c0a	;0x1c50
    6c38:	0a 1c
    6c3a:	d9 2f       	jc	$-76     	;abs 0x6bee

00006c3c <.L97>:
                    min_pdc = pdc_timing[i].data;
    6c3c:	82 4c 4e 1c 	mov	r12,	&0x1c4e	;
    6c40:	c9 3f       	jmp	$-108    	;abs 0x6bd4

00006c42 <.L87>:
    else stop_timer();
    6c42:	b0 12 96 6d 	call	#28054		;#0x6d96

00006c46 <.L86>:
}
    6c46:	28 17       	popm	#3,	r10	;16-bit words

00006c48 <.LCFI29>:
    6c48:	30 41       	ret

00006c4a <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    6c4a:	2a 15       	pushm	#3,	r10	;16-bit words

00006c4c <.LCFI30>:
    6c4c:	49 4c       	mov.b	r12,	r9	;
    6c4e:	0a 4d       	mov	r13,	r10	;

00006c50 <.Loc.392.1>:
    unpack_pdc_to_local();
    6c50:	b0 12 1e 6b 	call	#27422		;#0x6b1e

00006c54 <.LVL127>:
        if (pdc_timing[i].status == NOT_USED)
    6c54:	82 93 08 1c 	cmp	#0,	&0x1c08	;r3 As==00
    6c58:	2e 20       	jnz	$+94     	;abs 0x6cb6

00006c5a <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    6c5a:	38 40 06 65 	mov	#25862,	r8	;#0x6506
    6c5e:	4c 49       	mov.b	r9,	r12	;
    6c60:	88 12       	call	r8		;
    6c62:	0d 4a       	mov	r10,	r13	;
    6c64:	b0 12 d2 64 	call	#25810		;#0x64d2

00006c68 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    6c68:	4c 49       	mov.b	r9,	r12	;
    6c6a:	88 12       	call	r8		;
    6c6c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6c6e:	b0 12 d8 64 	call	#25816		;#0x64d8

00006c72 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    6c72:	0e 4a       	mov	r10,	r14	;
    6c74:	4f 43       	clr.b	r15		;
    6c76:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6c78:	4c 43       	clr.b	r12		;
    6c7a:	b0 12 86 6e 	call	#28294		;#0x6e86

00006c7e <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    6c7e:	82 4a 0c 1c 	mov	r10,	&0x1c0c	;
    6c82:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

00006c86 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    6c86:	4e 49       	mov.b	r9,	r14	;
    6c88:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6c8a:	4c 43       	clr.b	r12		;
    6c8c:	b0 12 d8 6e 	call	#28376		;#0x6ed8

00006c90 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    6c90:	c2 49 0a 1c 	mov.b	r9,	&0x1c0a	;

00006c94 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    6c94:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6c96:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6c98:	4c 43       	clr.b	r12		;
    6c9a:	b0 12 22 6f 	call	#28450		;#0x6f22

00006c9e <.Loc.410.1>:
            pdc_timing[i].status = USED;
    6c9e:	92 43 08 1c 	mov	#1,	&0x1c08	;r3 As==01

00006ca2 <.L111>:
        refresh_pdc_timers();
    6ca2:	b0 12 40 6b 	call	#27456		;#0x6b40

00006ca6 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    6ca6:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6ca8:	b0 12 84 6f 	call	#28548		;#0x6f84

00006cac <.Loc.434.1>:
    _pers_timer_commit(PDC);
    6cac:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6cae:	b0 12 6a 70 	call	#28778		;#0x706a

00006cb2 <.Loc.435.1>:
}
    6cb2:	28 17       	popm	#3,	r10	;16-bit words

00006cb4 <.LCFI31>:
    6cb4:	30 41       	ret

00006cb6 <.L109>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    6cb6:	82 4a 0c 1c 	mov	r10,	&0x1c0c	;
    6cba:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

00006cbe <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    6cbe:	0e 4a       	mov	r10,	r14	;
    6cc0:	4f 43       	clr.b	r15		;
    6cc2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6cc4:	4c 43       	clr.b	r12		;
    6cc6:	b0 12 86 6e 	call	#28294		;#0x6e86

00006cca <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    6cca:	c2 49 0a 1c 	mov.b	r9,	&0x1c0a	;

00006cce <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    6cce:	4e 49       	mov.b	r9,	r14	;
    6cd0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6cd2:	4c 43       	clr.b	r12		;
    6cd4:	b0 12 d8 6e 	call	#28376		;#0x6ed8
    6cd8:	e4 3f       	jmp	$-54     	;abs 0x6ca2

00006cda <clear_pdc_status>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    6cda:	5c 92 0a 1c 	cmp.b	&0x1c0a,r12	;0x1c0a
    6cde:	07 20       	jnz	$+16     	;abs 0x6cee

00006ce0 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    6ce0:	82 43 08 1c 	mov	#0,	&0x1c08	;r3 As==00

00006ce4 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    6ce4:	4e 43       	clr.b	r14		;
    6ce6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6ce8:	4c 43       	clr.b	r12		;

00006cea <.LVL144>:
    6cea:	b0 12 22 6f 	call	#28450		;#0x6f22

00006cee <.L112>:

        }
    }
}
    6cee:	30 41       	ret

00006cf0 <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    6cf0:	0a 15       	pushm	#1,	r10	;16-bit words

00006cf2 <.LCFI33>:
    6cf2:	4a 4c       	mov.b	r12,	r10	;

00006cf4 <.Loc.440.1>:
    unpack_pdc_to_local();
    6cf4:	b0 12 1e 6b 	call	#27422		;#0x6b1e

00006cf8 <.LVL147>:
    clear_pdc_status(thread_id);
    6cf8:	4c 4a       	mov.b	r10,	r12	;
    6cfa:	b0 12 da 6c 	call	#27866		;#0x6cda

00006cfe <.Loc.445.1>:
    refresh_pdc_timers();
    6cfe:	b0 12 40 6b 	call	#27456		;#0x6b40

00006d02 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    6d02:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6d04:	b0 12 84 6f 	call	#28548		;#0x6f84

00006d08 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    6d08:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6d0a:	b0 12 6a 70 	call	#28778		;#0x706a

00006d0e <.Loc.450.1>:
}
    6d0e:	0a 17       	popm	#1,	r10	;16-bit words

00006d10 <.LCFI34>:
    6d10:	30 41       	ret

00006d12 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    6d12:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006d16 <.Loc.83.1>:
    6d16:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00006d1a <.Loc.83.1>:
    6d1a:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006d1e <.Loc.83.1>:
    6d1e:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006d22 <.Loc.83.1>:
    6d22:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006d26 <.Loc.83.1>:
    6d26:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00006d2a <.Loc.83.1>:
    6d2a:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006d2e <.Loc.83.1>:
    6d2e:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006d32 <L0^A>:
    }

    p->_readyLevel = 0x0;
    6d32:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006d36 <.Loc.88.1>:
}
    6d36:	30 41       	ret

00006d38 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    6d38:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006d3c <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    6d3c:	0e 4c       	mov	r12,	r14	;
    6d3e:	5e 09       	rram	#3,	r14	;

00006d40 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    6d40:	7e f0 07 00 	and.b	#7,	r14	;

00006d44 <.Loc.99.1>:
    6d44:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    6d48:	08 00

00006d4a <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    6d4a:	0d 5e       	add	r14,	r13	;

00006d4c <.LVL12>:
    6d4c:	7c f0 07 00 	and.b	#7,	r12	;

00006d50 <.LVL13>:
    6d50:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    6d54:	00 00

00006d56 <.Loc.101.1>:
}
    6d56:	30 41       	ret

00006d58 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    6d58:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006d5c <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    6d5c:	0e 4c       	mov	r12,	r14	;
    6d5e:	5e 09       	rram	#3,	r14	;

00006d60 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    6d60:	7e f0 07 00 	and.b	#7,	r14	;
    6d64:	0f 4d       	mov	r13,	r15	;
    6d66:	0f 5e       	add	r14,	r15	;

00006d68 <.Loc.112.1>:
    6d68:	7c f0 07 00 	and.b	#7,	r12	;

00006d6c <.LVL16>:
    6d6c:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    6d70:	00 00

00006d72 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    6d72:	6c 4f       	mov.b	@r15,	r12	;

00006d74 <.Loc.114.1>:
    6d74:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d76:	03 20       	jnz	$+8      	;abs 0x6d7e

00006d78 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    6d78:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    6d7c:	08 00

00006d7e <.L3>:
    }
}
    6d7e:	30 41       	ret

00006d80 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    6d80:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00006d84 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    6d84:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00006d88 <.LVL19>:
    6d88:	0c 5d       	add	r13,	r12	;

00006d8a <.LVL20>:
    6d8a:	6e 4c       	mov.b	@r12,	r14	;

00006d8c <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    6d8c:	0c 4d       	mov	r13,	r12	;
    6d8e:	5c 0a       	rlam	#3,	r12	;

00006d90 <.Loc.128.1>:
}
    6d90:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    6d94:	30 41       	ret

00006d96 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    6d96:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00006d9a <.Loc.158.1>:
    TA2CTL = 0;
    6d9a:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006d9e <.Loc.159.1>:
}
    6d9e:	30 41       	ret

00006da0 <timerA2_init>:
    6da0:	b0 12 96 6d 	call	#28054		;#0x6d96
    6da4:	30 41       	ret

00006da6 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    6da6:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00006daa <.Loc.172.1>:
    TA0CCR0 = ticks;
    6daa:	82 4c 52 03 	mov	r12,	&0x0352	;

00006dae <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    6dae:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    6db2:	42 03

00006db4 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6db4:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    6db8:	40 03

00006dba <.Loc.175.1>:
}
    6dba:	30 41       	ret

00006dbc <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    6dbc:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006dc0 <.Loc.179.1>:
    TA2CCR0 = ticks;
    6dc0:	82 4c 12 04 	mov	r12,	&0x0412	;

00006dc4 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    6dc4:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    6dc8:	02 04

00006dca <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    6dca:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    6dce:	00 04

00006dd0 <.Loc.183.1>:

}
    6dd0:	30 41       	ret

00006dd2 <stop_timer_xpr>:
    6dd2:	b0 12 96 6d 	call	#28054		;#0x6d96
    6dd6:	30 41       	ret

00006dd8 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    6dd8:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00006ddc <.Loc.195.1>:
    TA1CCR0 = ticks;
    6ddc:	82 4c 92 03 	mov	r12,	&0x0392	;

00006de0 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    6de0:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    6de4:	82 03

00006de6 <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6de6:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    6dea:	80 03

00006dec <.Loc.198.1>:
}
    6dec:	30 41       	ret

00006dee <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    6dee:	30 41       	ret

00006df0 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    6df0:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    6df4:	61 01

00006df6 <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    6df6:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    6dfa:	64 01

00006dfc <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    6dfc:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00006e00 <.Loc.248.1>:
  CSCTL0_H = 0;
    6e00:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00006e04 <.Loc.250.1>:

}
    6e04:	30 41       	ret

00006e06 <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    6e06:	4c 43       	clr.b	r12		;
    6e08:	4d 43       	clr.b	r13		;
    6e0a:	30 41       	ret

00006e0c <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    6e0c:	82 43 58 52 	mov	#0,	&0x5258	;r3 As==00
    6e10:	82 43 5a 52 	mov	#0,	&0x525a	;r3 As==00

00006e14 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    6e14:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006e18 <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    6e18:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    6e1c:	40 04

00006e1e <.Loc.334.1>:

    __bis_SR_register(GIE);
    6e1e:	03 43       	nop
    6e20:	32 d2       	eint
    6e22:	03 43       	nop

00006e24 <.Loc.335.1>:
}
    6e24:	30 41       	ret

00006e26 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    6e26:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006e2a <.Loc.343.1>:
    TA3CCTL0 = 0;
    6e2a:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006e2e <.Loc.344.1>:
}
    6e2e:	30 41       	ret

00006e30 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    6e30:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6e34:	40 04

00006e36 <.Loc.356.1>:

   tmp = TA3R;
    6e36:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00006e3a <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    6e3a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6e3e:	40 04

00006e40 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    6e40:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    6e44:	b0 12 c8 71 	call	#29128		;#0x71c8

00006e48 <.Loc.363.1>:
}
    6e48:	1c 52 58 52 	add	&0x5258,r12	;0x5258
    6e4c:	1d 62 5a 52 	addc	&0x525a,r13	;0x525a
    6e50:	30 41       	ret

00006e52 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    6e52:	b2 50 aa 00 	add	#170,	&0x5258	;#0x00aa
    6e56:	58 52
    6e58:	b2 60 0a 00 	addc	#10,	&0x525a	;#0x000a
    6e5c:	5a 52

00006e5e <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    6e5e:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00006e62 <.Loc.381.1>:
}
    6e62:	00 13       	reti

00006e64 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    6e64:	3c 40 5c 52 	mov	#21084,	r12	;#0x525c
    6e68:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00006e6c <.Loc.34.1>:
    6e6c:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00006e70 <.Loc.34.1>:
    6e70:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00006e74 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    6e74:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00006e78 <.Loc.38.1>:
    6e78:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00006e7c <.Loc.38.1>:
    6e7c:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00006e80 <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    6e80:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00006e84 <.Loc.42.1>:
    }
}
    6e84:	30 41       	ret

00006e86 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    6e86:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006e8a <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    6e8a:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e8c:	1a 24       	jz	$+54     	;abs 0x6ec2
    6e8e:	2d 93       	cmp	#2,	r13	;r3 As==10
    6e90:	0d 24       	jz	$+28     	;abs 0x6eac
    6e92:	0d 93       	cmp	#0,	r13	;r3 As==00
    6e94:	0a 20       	jnz	$+22     	;abs 0x6eaa

00006e96 <.Loc.53.1>:
    {
        case WKUP:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    6e96:	0d 4c       	mov	r12,	r13	;

00006e98 <.LVL9>:
    6e98:	5d 06       	rlam	#2,	r13	;
    6e9a:	0c 5d       	add	r13,	r12	;

00006e9c <.LVL10>:
    6e9c:	5c 02       	rlam	#1,	r12	;
    6e9e:	8c 4e c4 52 	mov	r14,	21188(r12); 0x52c4
    6ea2:	8c 4f c6 52 	mov	r15,	21190(r12); 0x52c6

00006ea6 <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6ea6:	9c 43 c8 52 	mov	#1,	21192(r12);r3 As==01, 0x52c8

00006eaa <.L2>:
        default:
            break;
    }


}
    6eaa:	30 41       	ret

00006eac <.L4>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    6eac:	0d 4c       	mov	r12,	r13	;

00006eae <.LVL12>:
    6eae:	5d 06       	rlam	#2,	r13	;
    6eb0:	0c 5d       	add	r13,	r12	;
    6eb2:	5c 02       	rlam	#1,	r12	;
    6eb4:	8c 4e e2 52 	mov	r14,	21218(r12); 0x52e2
    6eb8:	8c 4f e4 52 	mov	r15,	21220(r12); 0x52e4

00006ebc <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6ebc:	9c 43 e6 52 	mov	#1,	21222(r12);r3 As==01, 0x52e6
    6ec0:	f4 3f       	jmp	$-22     	;abs 0x6eaa

00006ec2 <.L3>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    6ec2:	0d 4c       	mov	r12,	r13	;

00006ec4 <.LVL14>:
    6ec4:	5d 06       	rlam	#2,	r13	;
    6ec6:	0c 5d       	add	r13,	r12	;
    6ec8:	5c 02       	rlam	#1,	r12	;
    6eca:	8c 4e 00 53 	mov	r14,	21248(r12); 0x5300
    6ece:	8c 4f 02 53 	mov	r15,	21250(r12); 0x5302

00006ed2 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6ed2:	9c 43 04 53 	mov	#1,	21252(r12);r3 As==01, 0x5304

00006ed6 <.Loc.63.1>:
            break;
    6ed6:	e9 3f       	jmp	$-44     	;abs 0x6eaa

00006ed8 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    6ed8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6edc:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006ee0 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    6ee0:	1d 93       	cmp	#1,	r13	;r3 As==01
    6ee2:	16 24       	jz	$+46     	;abs 0x6f10
    6ee4:	2d 93       	cmp	#2,	r13	;r3 As==10
    6ee6:	0b 24       	jz	$+24     	;abs 0x6efe
    6ee8:	0d 93       	cmp	#0,	r13	;r3 As==00
    6eea:	08 20       	jnz	$+18     	;abs 0x6efc

00006eec <.Loc.76.1>:
    {
        case WKUP:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    6eec:	0d 4c       	mov	r12,	r13	;

00006eee <.LVL16>:
    6eee:	5d 06       	rlam	#2,	r13	;
    6ef0:	0c 5d       	add	r13,	r12	;

00006ef2 <.LVL17>:
    6ef2:	5c 02       	rlam	#1,	r12	;
    6ef4:	cc 4e c2 52 	mov.b	r14,	21186(r12); 0x52c2

00006ef8 <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6ef8:	9c 43 c8 52 	mov	#1,	21192(r12);r3 As==01, 0x52c8

00006efc <.L7>:
            break;
        default:
            break;
    }

}
    6efc:	30 41       	ret

00006efe <.L9>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    6efe:	0d 4c       	mov	r12,	r13	;

00006f00 <.LVL19>:
    6f00:	5d 06       	rlam	#2,	r13	;
    6f02:	0c 5d       	add	r13,	r12	;
    6f04:	5c 02       	rlam	#1,	r12	;
    6f06:	cc 4e e0 52 	mov.b	r14,	21216(r12); 0x52e0

00006f0a <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6f0a:	9c 43 e6 52 	mov	#1,	21222(r12);r3 As==01, 0x52e6
    6f0e:	f6 3f       	jmp	$-18     	;abs 0x6efc

00006f10 <.L8>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    6f10:	0d 4c       	mov	r12,	r13	;

00006f12 <.LVL21>:
    6f12:	5d 06       	rlam	#2,	r13	;
    6f14:	0c 5d       	add	r13,	r12	;
    6f16:	5c 02       	rlam	#1,	r12	;
    6f18:	cc 4e fe 52 	mov.b	r14,	21246(r12); 0x52fe

00006f1c <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6f1c:	9c 43 04 53 	mov	#1,	21252(r12);r3 As==01, 0x5304

00006f20 <.Loc.86.1>:
}
    6f20:	ed 3f       	jmp	$-36     	;abs 0x6efc

00006f22 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    6f22:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006f26 <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    6f26:	1d 93       	cmp	#1,	r13	;r3 As==01
    6f28:	16 24       	jz	$+46     	;abs 0x6f56
    6f2a:	2d 93       	cmp	#2,	r13	;r3 As==10
    6f2c:	0b 24       	jz	$+24     	;abs 0x6f44
    6f2e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f30:	08 20       	jnz	$+18     	;abs 0x6f42

00006f32 <.Loc.98.1>:
    {
        case WKUP:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    6f32:	0d 4c       	mov	r12,	r13	;

00006f34 <.LVL23>:
    6f34:	5d 06       	rlam	#2,	r13	;
    6f36:	0c 5d       	add	r13,	r12	;

00006f38 <.LVL24>:
    6f38:	5c 02       	rlam	#1,	r12	;
    6f3a:	8c 4e c0 52 	mov	r14,	21184(r12); 0x52c0

00006f3e <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6f3e:	9c 43 c8 52 	mov	#1,	21192(r12);r3 As==01, 0x52c8

00006f42 <.L12>:
            break;
        default:
            break;

    }
}
    6f42:	30 41       	ret

00006f44 <.L14>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    6f44:	0d 4c       	mov	r12,	r13	;

00006f46 <.LVL26>:
    6f46:	5d 06       	rlam	#2,	r13	;
    6f48:	0c 5d       	add	r13,	r12	;
    6f4a:	5c 02       	rlam	#1,	r12	;
    6f4c:	8c 4e de 52 	mov	r14,	21214(r12); 0x52de

00006f50 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6f50:	9c 43 e6 52 	mov	#1,	21222(r12);r3 As==01, 0x52e6
    6f54:	f6 3f       	jmp	$-18     	;abs 0x6f42

00006f56 <.L13>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    6f56:	0d 4c       	mov	r12,	r13	;

00006f58 <.LVL28>:
    6f58:	5d 06       	rlam	#2,	r13	;
    6f5a:	0c 5d       	add	r13,	r12	;
    6f5c:	5c 02       	rlam	#1,	r12	;
    6f5e:	8c 4e fc 52 	mov	r14,	21244(r12); 0x52fc

00006f62 <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6f62:	9c 43 04 53 	mov	#1,	21252(r12);r3 As==01, 0x5304

00006f66 <.Loc.108.1>:
}
    6f66:	ed 3f       	jmp	$-36     	;abs 0x6f42

00006f68 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    6f68:	0e 4c       	mov	r12,	r14	;
    6f6a:	5e 0a       	rlam	#3,	r14	;
    6f6c:	ce 4d 08 53 	mov.b	r13,	21256(r14); 0x5308

00006f70 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6f70:	9e 43 0c 53 	mov	#1,	21260(r14);r3 As==01, 0x530c

00006f74 <.Loc.119.1>:
}
    6f74:	30 41       	ret

00006f76 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    6f76:	0e 4c       	mov	r12,	r14	;
    6f78:	5e 0a       	rlam	#3,	r14	;
    6f7a:	8e 4d 0a 53 	mov	r13,	21258(r14); 0x530a

00006f7e <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6f7e:	9e 43 0c 53 	mov	#1,	21260(r14);r3 As==01, 0x530c

00006f82 <.Loc.125.1>:
}
    6f82:	30 41       	ret

00006f84 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    6f84:	1c 93       	cmp	#1,	r12	;r3 As==01
    6f86:	0a 24       	jz	$+22     	;abs 0x6f9c
    6f88:	2c 93       	cmp	#2,	r12	;r3 As==10
    6f8a:	05 24       	jz	$+12     	;abs 0x6f96
    6f8c:	0c 93       	cmp	#0,	r12	;r3 As==00
    6f8e:	02 20       	jnz	$+6      	;abs 0x6f94

00006f90 <.Loc.132.1>:
    {
        case WKUP:
            wkup_tstatus = TIMER_COMMIT;
    6f90:	92 43 24 53 	mov	#1,	&0x5324	;r3 As==01

00006f94 <.L19>:
        default:
            break;

    }

}
    6f94:	30 41       	ret

00006f96 <.L21>:
            xpr_tstatus = TIMER_COMMIT;
    6f96:	92 43 26 53 	mov	#1,	&0x5326	;r3 As==01

00006f9a <.Loc.136.1>:
        break;
    6f9a:	fc 3f       	jmp	$-6      	;abs 0x6f94

00006f9c <.L20>:
            pdc_tstatus = TIMER_COMMIT;
    6f9c:	92 43 28 53 	mov	#1,	&0x5328	;r3 As==01

00006fa0 <.Loc.139.1>:
}
    6fa0:	f9 3f       	jmp	$-12     	;abs 0x6f94

00006fa2 <_commit_timer_buffers>:

//commit into the persistent buffer

void _commit_timer_buffers(ink_time_interface_t interface){
    6fa2:	1a 15       	pushm	#2,	r10	;16-bit words

00006fa4 <.LCFI0>:
    6fa4:	0a 4c       	mov	r12,	r10	;

00006fa6 <.Loc.151.1>:

    uint8_t i;

    switch (interface){
    6fa6:	1c 93       	cmp	#1,	r12	;r3 As==01
    6fa8:	52 24       	jz	$+166    	;abs 0x704e
    6faa:	2c 93       	cmp	#2,	r12	;r3 As==10
    6fac:	39 24       	jz	$+116    	;abs 0x7020
    6fae:	0c 93       	cmp	#0,	r12	;r3 As==00
    6fb0:	16 20       	jnz	$+46     	;abs 0x6fde
    6fb2:	3f 40 5c 52 	mov	#21084,	r15	;#0x525c
    6fb6:	39 40 7a 52 	mov	#21114,	r9	;#0x527a

00006fba <.L28>:
        case WKUP:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
        {
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    6fba:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    6fbe:	0b 20       	jnz	$+24     	;abs 0x6fd6

00006fc0 <.Loc.160.1>:
            {

                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6fc0:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6fc4:	0d 4f       	mov	r15,	r13	;
    6fc6:	3d 50 64 00 	add	#100,	r13	;#0x0064
    6fca:	0c 4f       	mov	r15,	r12	;
    6fcc:	b0 12 e0 71 	call	#29152		;#0x71e0
    6fd0:	0f 4c       	mov	r12,	r15	;

00006fd2 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6fd2:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

00006fd6 <.L27>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    6fd6:	3f 50 0a 00 	add	#10,	r15	;#0x000a

00006fda <.Loc.155.1>:
    6fda:	09 9f       	cmp	r15,	r9	;
    6fdc:	ee 23       	jnz	$-34     	;abs 0x6fba

00006fde <.L26>:
void _commit_timer_buffers(ink_time_interface_t interface){
    6fde:	7f 40 03 00 	mov.b	#3,	r15	;

00006fe2 <.L33>:
        break;
    }

    for (i = 0; i < TIMER_TOOLS; i++)
    {
        if (    pers_timer_vars[1].next_info[interface].__dirty == DIRTY)
    6fe2:	0c 4a       	mov	r10,	r12	;
    6fe4:	5c 0a       	rlam	#3,	r12	;

00006fe6 <.Loc.193.1>:
    6fe6:	9c 93 0c 53 	cmp	#1,	21260(r12);r3 As==01, 0x530c
    6fea:	13 20       	jnz	$+40     	;abs 0x7012

00006fec <.Loc.195.1>:
        {
            pers_timer_vars[0].next_info[interface] =
    6fec:	0c 4a       	mov	r10,	r12	;
    6fee:	5c 0a       	rlam	#3,	r12	;
    6ff0:	0d 4c       	mov	r12,	r13	;
    6ff2:	3d 50 5c 52 	add	#21084,	r13	;#0x525c
    6ff6:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    6ffa:	46 00
    6ffc:	9c 4c 08 53 	mov	21256(r12),21156(r12);0x05308, 0x52a4
    7000:	a4 52
    7002:	9c 4c 0a 53 	mov	21258(r12),21158(r12);0x0530a, 0x52a6
    7006:	a6 52
    7008:	9c 4c 0c 53 	mov	21260(r12),21160(r12);0x0530c, 0x52a8
    700c:	a8 52

0000700e <.Loc.197.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
    700e:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

00007012 <.L32>:
    for (i = 0; i < TIMER_TOOLS; i++)
    7012:	4c 4f       	mov.b	r15,	r12	;
    7014:	7c 53       	add.b	#-1,	r12	;r3 As==11
    7016:	4f 4c       	mov.b	r12,	r15	;

00007018 <.Loc.191.1>:
    7018:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    701a:	e3 23       	jnz	$-56     	;abs 0x6fe2

0000701c <.Loc.201.1>:
                NOT_DIRTY;
        }
    }
}
    701c:	19 17       	popm	#2,	r10	;16-bit words

0000701e <.LCFI1>:
    701e:	30 41       	ret

00007020 <.L25>:
    7020:	39 40 5c 52 	mov	#21084,	r9	;#0x525c

00007024 <.L30>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    7024:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    7028:	0c 20       	jnz	$+26     	;abs 0x7042

0000702a <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    702a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    702e:	0d 49       	mov	r9,	r13	;
    7030:	3d 50 82 00 	add	#130,	r13	;#0x0082
    7034:	0c 49       	mov	r9,	r12	;
    7036:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    703a:	b0 12 e0 71 	call	#29152		;#0x71e0

0000703e <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    703e:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

00007042 <.L29>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    7042:	39 50 0a 00 	add	#10,	r9	;#0x000a

00007046 <.Loc.166.1>:
    7046:	39 90 7a 52 	cmp	#21114,	r9	;#0x527a
    704a:	ec 23       	jnz	$-38     	;abs 0x7024
    704c:	c8 3f       	jmp	$-110    	;abs 0x6fde

0000704e <.L24>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    704e:	92 93 04 53 	cmp	#1,	&0x5304	;r3 As==01
    7052:	c5 23       	jnz	$-116    	;abs 0x6fde

00007054 <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    7054:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7058:	3d 40 fc 52 	mov	#21244,	r13	;#0x52fc
    705c:	3c 40 98 52 	mov	#21144,	r12	;#0x5298
    7060:	b0 12 e0 71 	call	#29152		;#0x71e0

00007064 <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    7064:	82 43 a0 52 	mov	#0,	&0x52a0	;r3 As==00

00007068 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    7068:	ba 3f       	jmp	$-138    	;abs 0x6fde

0000706a <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    706a:	1c 93       	cmp	#1,	r12	;r3 As==01
    706c:	16 24       	jz	$+46     	;abs 0x709a
    706e:	2c 93       	cmp	#2,	r12	;r3 As==10
    7070:	0b 24       	jz	$+24     	;abs 0x7088
    7072:	0c 93       	cmp	#0,	r12	;r3 As==00
    7074:	08 20       	jnz	$+18     	;abs 0x7086

00007076 <.Loc.207.1>:
    {
        case WKUP:
            if (wkup_tstatus == TIMER_COMMIT)
    7076:	1d 42 24 53 	mov	&0x5324,r13	;0x5324

0000707a <.Loc.207.1>:
    707a:	1d 93       	cmp	#1,	r13	;r3 As==01
    707c:	04 20       	jnz	$+10     	;abs 0x7086

0000707e <.Loc.209.1>:
            {
                _commit_timer_buffers(interface);
    707e:	b0 12 a2 6f 	call	#28578		;#0x6fa2

00007082 <.LVL43>:
                wkup_tstatus = TIMER_DONE;
    7082:	a2 43 24 53 	mov	#2,	&0x5324	;r3 As==10

00007086 <.L39>:
            break;
        default:
            break;

    }
}
    7086:	30 41       	ret

00007088 <.L41>:
            if (xpr_tstatus == TIMER_COMMIT)
    7088:	1d 42 26 53 	mov	&0x5326,r13	;0x5326

0000708c <.Loc.214.1>:
    708c:	1d 93       	cmp	#1,	r13	;r3 As==01
    708e:	fb 23       	jnz	$-8      	;abs 0x7086

00007090 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    7090:	b0 12 a2 6f 	call	#28578		;#0x6fa2

00007094 <.LVL45>:
                xpr_tstatus = TIMER_DONE;
    7094:	a2 43 26 53 	mov	#2,	&0x5326	;r3 As==10
    7098:	f6 3f       	jmp	$-18     	;abs 0x7086

0000709a <.L40>:
            if (pdc_tstatus == TIMER_COMMIT)
    709a:	1d 42 28 53 	mov	&0x5328,r13	;0x5328

0000709e <.Loc.220.1>:
    709e:	1d 93       	cmp	#1,	r13	;r3 As==01
    70a0:	f2 23       	jnz	$-26     	;abs 0x7086

000070a2 <.Loc.222.1>:
                _commit_timer_buffers(interface);
    70a2:	b0 12 a2 6f 	call	#28578		;#0x6fa2

000070a6 <.LVL47>:
                pdc_tstatus = TIMER_DONE;
    70a6:	a2 43 28 53 	mov	#2,	&0x5328	;r3 As==10

000070aa <.Loc.230.1>:
}
    70aa:	ed 3f       	jmp	$-36     	;abs 0x7086

000070ac <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    70ac:	0a 15       	pushm	#1,	r10	;16-bit words

000070ae <.LCFI3>:
    70ae:	0a 4c       	mov	r12,	r10	;
    70b0:	4f 4d       	mov.b	r13,	r15	;

000070b2 <.Loc.233.1>:
    switch (interface)
    70b2:	0d 4f       	mov	r15,	r13	;
    70b4:	5d 06       	rlam	#2,	r13	;

000070b6 <.LVL49>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    70b6:	0d 5f       	add	r15,	r13	;
    70b8:	5d 02       	rlam	#1,	r13	;

000070ba <.Loc.233.1>:
    switch (interface)
    70ba:	1e 93       	cmp	#1,	r14	;r3 As==01
    70bc:	0b 24       	jz	$+24     	;abs 0x70d4
    70be:	2e 93       	cmp	#2,	r14	;r3 As==10
    70c0:	0e 20       	jnz	$+30     	;abs 0x70de

000070c2 <.Loc.238.1>:
            return pers_timer_vars[0].xpr_timing[idx];
    70c2:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000070c6 <.LVL50>:
    70c6:	3d 50 7a 52 	add	#21114,	r13	;#0x527a

000070ca <.L47>:
            return pers_timer_vars[0].wkup_timing[idx];
    70ca:	b0 12 e0 71 	call	#29152		;#0x71e0

000070ce <.LVL51>:
    }

}
    70ce:	0c 4a       	mov	r10,	r12	;
    70d0:	0a 17       	popm	#1,	r10	;16-bit words

000070d2 <.LCFI4>:
    70d2:	30 41       	ret

000070d4 <.L44>:
            return pers_timer_vars[0].pdc_timing[idx];
    70d4:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000070d8 <.LVL53>:
    70d8:	3d 50 98 52 	add	#21144,	r13	;#0x5298
    70dc:	f6 3f       	jmp	$-18     	;abs 0x70ca

000070de <.L45>:
            return pers_timer_vars[0].wkup_timing[idx];
    70de:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000070e2 <.LVL55>:
    70e2:	3d 50 5c 52 	add	#21084,	r13	;#0x525c
    70e6:	f1 3f       	jmp	$-28     	;abs 0x70ca

000070e8 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    70e8:	4e 4c       	mov.b	r12,	r14	;

000070ea <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    70ea:	1d 93       	cmp	#1,	r13	;r3 As==01
    70ec:	13 24       	jz	$+40     	;abs 0x7114
    70ee:	2d 93       	cmp	#2,	r13	;r3 As==10
    70f0:	0a 24       	jz	$+22     	;abs 0x7106
    70f2:	4c 43       	clr.b	r12		;

000070f4 <.LVL57>:
    70f4:	0d 93       	cmp	#0,	r13	;r3 As==00
    70f6:	06 20       	jnz	$+14     	;abs 0x7104

000070f8 <.Loc.252.1>:
    {
        case WKUP:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    70f8:	0c 4e       	mov	r14,	r12	;
    70fa:	5c 06       	rlam	#2,	r12	;
    70fc:	0c 5e       	add	r14,	r12	;
    70fe:	5c 02       	rlam	#1,	r12	;
    7100:	1c 4c 60 52 	mov	21088(r12),r12	;0x05260

00007104 <.L48>:
        default:
            return 0;

    }

}
    7104:	30 41       	ret

00007106 <.L50>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    7106:	0c 4e       	mov	r14,	r12	;

00007108 <.LVL59>:
    7108:	5c 06       	rlam	#2,	r12	;
    710a:	0c 5e       	add	r14,	r12	;
    710c:	5c 02       	rlam	#1,	r12	;
    710e:	1c 4c 7e 52 	mov	21118(r12),r12	;0x0527e
    7112:	f8 3f       	jmp	$-14     	;abs 0x7104

00007114 <.L49>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    7114:	0c 4e       	mov	r14,	r12	;

00007116 <.LVL61>:
    7116:	5c 06       	rlam	#2,	r12	;
    7118:	0c 5e       	add	r14,	r12	;
    711a:	5c 02       	rlam	#1,	r12	;
    711c:	1c 4c 9c 52 	mov	21148(r12),r12	;0x0529c
    7120:	f1 3f       	jmp	$-28     	;abs 0x7104

00007122 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    7122:	4e 4c       	mov.b	r12,	r14	;

00007124 <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    7124:	1d 93       	cmp	#1,	r13	;r3 As==01
    7126:	13 24       	jz	$+40     	;abs 0x714e
    7128:	2d 93       	cmp	#2,	r13	;r3 As==10
    712a:	0a 24       	jz	$+22     	;abs 0x7140
    712c:	4c 43       	clr.b	r12		;

0000712e <.LVL63>:
    712e:	0d 93       	cmp	#0,	r13	;r3 As==00
    7130:	06 20       	jnz	$+14     	;abs 0x713e

00007132 <.Loc.269.1>:
    {
        case WKUP:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    7132:	0c 4e       	mov	r14,	r12	;
    7134:	5c 06       	rlam	#2,	r12	;
    7136:	0c 5e       	add	r14,	r12	;
    7138:	5c 02       	rlam	#1,	r12	;
    713a:	5c 4c 5e 52 	mov.b	21086(r12),r12	;0x0525e

0000713e <.L56>:
        default:
            return    0;
    }


}
    713e:	30 41       	ret

00007140 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    7140:	0c 4e       	mov	r14,	r12	;

00007142 <.LVL65>:
    7142:	5c 06       	rlam	#2,	r12	;
    7144:	0c 5e       	add	r14,	r12	;
    7146:	5c 02       	rlam	#1,	r12	;
    7148:	5c 4c 7c 52 	mov.b	21116(r12),r12	;0x0527c
    714c:	f8 3f       	jmp	$-14     	;abs 0x713e

0000714e <.L54>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    714e:	0c 4e       	mov	r14,	r12	;

00007150 <.LVL67>:
    7150:	5c 06       	rlam	#2,	r12	;
    7152:	0c 5e       	add	r14,	r12	;
    7154:	5c 02       	rlam	#1,	r12	;
    7156:	5c 4c 9a 52 	mov.b	21146(r12),r12	;0x0529a
    715a:	f1 3f       	jmp	$-28     	;abs 0x713e

0000715c <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    715c:	4e 4c       	mov.b	r12,	r14	;

0000715e <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    715e:	1d 93       	cmp	#1,	r13	;r3 As==01
    7160:	13 24       	jz	$+40     	;abs 0x7188
    7162:	2d 93       	cmp	#2,	r13	;r3 As==10
    7164:	0a 24       	jz	$+22     	;abs 0x717a
    7166:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007168 <.LVL69>:
    7168:	0d 93       	cmp	#0,	r13	;r3 As==00
    716a:	06 20       	jnz	$+14     	;abs 0x7178

0000716c <.Loc.286.1>:
    {
        case WKUP:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    716c:	0c 4e       	mov	r14,	r12	;
    716e:	5c 06       	rlam	#2,	r12	;
    7170:	0c 5e       	add	r14,	r12	;
    7172:	5c 02       	rlam	#1,	r12	;
    7174:	1c 4c 5c 52 	mov	21084(r12),r12	;0x0525c

00007178 <.L58>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    7178:	30 41       	ret

0000717a <.L60>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    717a:	0c 4e       	mov	r14,	r12	;

0000717c <.LVL71>:
    717c:	5c 06       	rlam	#2,	r12	;
    717e:	0c 5e       	add	r14,	r12	;
    7180:	5c 02       	rlam	#1,	r12	;
    7182:	1c 4c 7a 52 	mov	21114(r12),r12	;0x0527a
    7186:	f8 3f       	jmp	$-14     	;abs 0x7178

00007188 <.L59>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    7188:	0c 4e       	mov	r14,	r12	;

0000718a <.LVL73>:
    718a:	5c 06       	rlam	#2,	r12	;
    718c:	0c 5e       	add	r14,	r12	;
    718e:	5c 02       	rlam	#1,	r12	;
    7190:	1c 4c 98 52 	mov	21144(r12),r12	;0x05298
    7194:	f1 3f       	jmp	$-28     	;abs 0x7178

00007196 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    7196:	5c 0a       	rlam	#3,	r12	;

00007198 <.LVL75>:
}
    7198:	5c 4c a4 52 	mov.b	21156(r12),r12	;0x052a4
    719c:	30 41       	ret

0000719e <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    719e:	5c 0a       	rlam	#3,	r12	;

000071a0 <.LVL77>:
}
    71a0:	1c 4c a6 52 	mov	21158(r12),r12	;0x052a6
    71a4:	30 41       	ret

000071a6 <.L1^B3>:
    71a6:	3e 53       	add	#-1,	r14	;r3 As==11
    71a8:	12 c3       	clrc
    71aa:	0d 10       	rrc	r13		;
    71ac:	0c 10       	rrc	r12		;

000071ae <__mspabi_srll>:
    71ae:	0e 93       	cmp	#0,	r14	;r3 As==00
    71b0:	fa 23       	jnz	$-10     	;abs 0x71a6
    71b2:	30 41       	ret

000071b4 <__mulhi2>:
    71b4:	02 12       	push	r2		;
    71b6:	32 c2       	dint                                ; DISABLE INTERRUPT
    71b8:	03 43       	nop                                 ; NOP
    71ba:	82 4c c0 04 	mov	r12,	&0x04c0	;               ; MOVE r12 INTO 0x04c0 (HW MULTIPLIER)
    71be:	82 4d c8 04 	mov	r13,	&0x04c8	;               ; MOVE r13 INOT 0x04c8 (HW MULTIPLIER)
    71c2:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca             ; MOVE HW MULTIPLIER RESULT INTO r12
    71c6:	00 13       	reti

000071c8 <__umulhisi2>:
    71c8:	02 12       	push	r2		;
    71ca:	32 c2       	dint
    71cc:	03 43       	nop

000071ce <L0^A>:
    71ce:	82 4c c0 04 	mov	r12,	&0x04c0	;
    71d2:	82 4d c8 04 	mov	r13,	&0x04c8	;
    71d6:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    71da:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    71de:	00 13       	reti

000071e0 <memcpy>:
    71e0:	0f 4c       	mov	r12,	r15	;
    71e2:	0e 5d       	add	r13,	r14	;

000071e4 <.L2>:
    71e4:	0d 9e       	cmp	r14,	r13	;
    71e6:	01 20       	jnz	$+4      	;abs 0x71ea

000071e8 <.Loc.111.1>:
    71e8:	30 41       	ret

000071ea <.L3>:
    71ea:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

000071ee <.LVL4>:
    71ee:	1f 53       	inc	r15		;
    71f0:	f9 3f       	jmp	$-12     	;abs 0x71e4

000071f2 <_exit>:
    71f2:	ff 3f       	jmp	$+0      	;abs 0x71f2

000071f4 <memset>:
    71f4:	0e 5c       	add	r12,	r14	;

000071f6 <L0^A>:
    71f6:	0f 4c       	mov	r12,	r15	;

000071f8 <.L2>:
    71f8:	0f 9e       	cmp	r14,	r15	;
    71fa:	01 20       	jnz	$+4      	;abs 0x71fe

000071fc <.Loc.104.1>:
    71fc:	30 41       	ret

000071fe <.L3>:
    71fe:	1f 53       	inc	r15		;

00007200 <.LVL4>:
    7200:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7204:	f9 3f       	jmp	$-12     	;abs 0x71f8
