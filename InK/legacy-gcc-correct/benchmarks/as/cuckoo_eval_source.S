
bin/cuckoo_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00005512 <__crt0_start>:
    5512:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005516 <__crt0_init_bss>:
    5516:	3c 40 c8 1c 	mov	#7368,	r12	;#0x1cc8

0000551a <.Loc.76.1>:
    551a:	0d 43       	clr	r13		;

0000551c <.Loc.77.1>:
    551c:	3e 40 68 00 	mov	#104,	r14	;#0x0068

00005520 <.Loc.81.1>:
    5520:	b0 12 62 6c 	call	#27746		;#0x6c62

00005524 <__crt0_movedata>:
    5524:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005528 <.Loc.116.1>:
    5528:	3d 40 48 54 	mov	#21576,	r13	;#0x5448

0000552c <.Loc.119.1>:
    552c:	0d 9c       	cmp	r12,	r13	;

0000552e <.Loc.120.1>:
    552e:	04 24       	jz	$+10     	;abs 0x5538

00005530 <.Loc.122.1>:
    5530:	3e 40 c8 00 	mov	#200,	r14	;#0x00c8

00005534 <.Loc.124.1>:
    5534:	b0 12 26 6c 	call	#27686		;#0x6c26

00005538 <__crt0_call_main>:
    5538:	0c 43       	clr	r12		;

0000553a <.Loc.254.1>:
    553a:	b0 12 66 61 	call	#24934		;#0x6166

0000553e <__crt0_call_exit>:
    553e:	b0 12 80 6b 	call	#27520		;#0x6b80

00005542 <__app_init>:
extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init()
{
    thread1_init();
    5542:	b0 12 f0 57 	call	#22512		;#0x57f0

00005546 <.Loc.32.1>:
}
    5546:	30 41       	ret			

00005548 <task_init>:
}

ENTRY_TASK(task_init)
{
#ifdef RAISE_PIN
    full_run_started = 1;
    5548:	d2 43 58 47 	mov.b	#1,	&0x4758	;r3 As==01

0000554c <.Loc.171.1>:
#endif

    unsigned i;
    for (i = 0; i < NUM_BUCKETS; ++i)
    554c:	0d 4c       	mov	r12,	r13	;

0000554e <.LVL2>:
    554e:	2d 53       	incd	r13		;
    5550:	0e 4c       	mov	r12,	r14	;
    5552:	3e 50 02 01 	add	#258,	r14	;#0x0102

00005556 <.L2>:
    {
        __SET(_v_filter[i], 0);
    5556:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00
    555a:	2d 53       	incd	r13		;

0000555c <.Loc.172.1>:
    for (i = 0; i < NUM_BUCKETS; ++i)
    555c:	0d 9e       	cmp	r14,	r13	;
    555e:	fb 23       	jnz	$-8      	;abs 0x5556

00005560 <.Loc.176.1>:
    }
    __SET(_v_insert_count, 0);
    5560:	8c 43 10 01 	mov	#0,	272(r12);r3 As==00, 0x0110

00005564 <.Loc.177.1>:
    __SET(_v_lookup_count, 0);
    5564:	8c 43 14 01 	mov	#0,	276(r12);r3 As==00, 0x0114

00005568 <.Loc.178.1>:
    __SET(_v_inserted_count, 0);
    5568:	8c 43 12 01 	mov	#0,	274(r12);r3 As==00, 0x0112

0000556c <.Loc.179.1>:
    __SET(_v_member_count, 0);
    556c:	8c 43 16 01 	mov	#0,	278(r12);r3 As==00, 0x0116

00005570 <.Loc.180.1>:
    __SET(_v_key, init_key);
    5570:	9c 43 04 01 	mov	#1,	260(r12);r3 As==01, 0x0104

00005574 <.Loc.181.1>:
    __SET(_v_next_task, t_insert);
    5574:	bc 40 06 00 	mov	#6,	262(r12); 0x0106
    5578:	06 01 

0000557a <.Loc.183.1>:

    return task_generate_key;
}
    557a:	3c 40 80 55 	mov	#21888,	r12	;#0x5580

0000557e <.LVL4>:
    557e:	30 41       	ret			

00005580 <task_generate_key>:
    // that that are no false negatives (and avoid having to save the values).

    uint16_t __cry;
    uint16_t next;

    __cry = (__GET(_v_key) + 1) * 17;
    5580:	1d 4c 04 01 	mov	260(r12),r13	;0x00104
    5584:	1d 53       	inc	r13		;

00005586 <.Loc.196.1>:
    5586:	0e 4d       	mov	r13,	r14	;
    5588:	5e 0e       	rlam	#4,	r14	;

0000558a <.Loc.197.1>:
    __SET(_v_key, __cry);
    558a:	0e 5d       	add	r13,	r14	;
    558c:	8c 4e 04 01 	mov	r14,	260(r12); 0x0104

00005590 <.Loc.199.1>:

    enum task_index next_task = __GET(_v_next_task);
    5590:	1c 4c 06 01 	mov	262(r12),r12	;0x00106

00005594 <.LVL8>:

    if (next_task == t_insert)
    5594:	3c 90 06 00 	cmp	#6,	r12	;
    5598:	04 24       	jz	$+10     	;abs 0x55a2

0000559a <.Loc.205.1>:
    {
        return task_insert;
    }
    else if (next_task == t_lookup)
    559a:	3c 90 0a 00 	cmp	#10,	r12	;#0x000a
    559e:	04 24       	jz	$+10     	;abs 0x55a8

000055a0 <.L6>:
    {
        return task_lookup;
    }
    else
    {
        while (1)
    55a0:	ff 3f       	jmp	$+0      	;abs 0x55a0

000055a2 <.L7>:
        return task_insert;
    55a2:	3c 40 ae 55 	mov	#21934,	r12	;#0x55ae

000055a6 <.L4>:
            ;  // Debugging purpose
    }
}
    55a6:	30 41       	ret			

000055a8 <.L8>:
        return task_lookup;
    55a8:	3c 40 ec 55 	mov	#21996,	r12	;#0x55ec

000055ac <.LVL11>:
    55ac:	fc 3f       	jmp	$-6      	;abs 0x55a6

000055ae <task_insert>:
    }
}

TASK(task_insert)
{
    __SET(_v_next_task, t_add);
    55ae:	bc 40 07 00 	mov	#7,	262(r12); 0x0106
    55b2:	06 01 

000055b4 <.Loc.264.1>:
    return task_calc_indexes;
}
    55b4:	3c 40 06 57 	mov	#22278,	r12	;#0x5706

000055b8 <.LVL13>:
    55b8:	30 41       	ret			

000055ba <task_insert_done>:
}

TASK(task_insert_done)
{
    uint16_t __cry;
    __SET(_v_insert_count, ++__GET(_v_insert_count));
    55ba:	1d 4c 10 01 	mov	272(r12),r13	;0x00110
    55be:	1d 53       	inc	r13		;
    55c0:	8c 4d 10 01 	mov	r13,	272(r12); 0x0110

000055c4 <.Loc.360.1>:
    __cry  = __GET(_v_inserted_count);
    __cry += __GET(_v_success);
    55c4:	5e 4c 18 01 	mov.b	280(r12),r14	;0x00118
    55c8:	8c 5e 12 01 	add	r14,	274(r12); 0x0112

000055cc <.LVL16>:

    __SET(_v_inserted_count, __cry);

    if (__GET(_v_insert_count) < NUM_INSERTS)
    55cc:	7e 40 1f 00 	mov.b	#31,	r14	;#0x001f
    55d0:	0e 9d       	cmp	r13,	r14	;
    55d2:	06 28       	jnc	$+14     	;abs 0x55e0

000055d4 <.Loc.367.1>:
    {
        __SET(_v_next_task, t_insert);
    55d4:	bc 40 06 00 	mov	#6,	262(r12); 0x0106
    55d8:	06 01 

000055da <.L12>:
        __SET(_v_next_task, t_lookup);
        __SET(_v_key, init_key);

        return task_generate_key;
    }
}
    55da:	3c 40 80 55 	mov	#21888,	r12	;#0x5580

000055de <.LVL17>:
    55de:	30 41       	ret			

000055e0 <.L11>:
        __SET(_v_next_task, t_lookup);
    55e0:	bc 40 0a 00 	mov	#10,	262(r12);#0x000a, 0x0106
    55e4:	06 01 

000055e6 <.Loc.374.1>:
        __SET(_v_key, init_key);
    55e6:	9c 43 04 01 	mov	#1,	260(r12);r3 As==01, 0x0104

000055ea <.Loc.376.1>:
        return task_generate_key;
    55ea:	f7 3f       	jmp	$-16     	;abs 0x55da

000055ec <task_lookup>:

TASK(task_lookup)
{
    __SET(_v_next_task, t_lookup_search);
    55ec:	bc 40 0b 00 	mov	#11,	262(r12);#0x000b, 0x0106
    55f0:	06 01 

000055f2 <.Loc.383.1>:
    return task_calc_indexes;
}
    55f2:	3c 40 06 57 	mov	#22278,	r12	;#0x5706

000055f6 <.LVL20>:
    55f6:	30 41       	ret			

000055f8 <task_lookup_search>:

TASK(task_lookup_search)
{
    if (__GET(_v_filter[__GET(_v_index1)]) == __GET(_v_fingerprint))
    55f8:	1e 4c 08 01 	mov	264(r12),r14	;0x00108

000055fc <.Loc.388.1>:
    55fc:	1d 4c 0a 01 	mov	266(r12),r13	;0x0010a
    5600:	1d 53       	inc	r13		;
    5602:	5d 02       	rlam	#1,	r13	;
    5604:	0d 5c       	add	r12,	r13	;

00005606 <.Loc.388.1>:
    5606:	8d 9e 00 00 	cmp	r14,	0(r13)	;
    560a:	05 20       	jnz	$+12     	;abs 0x5616

0000560c <.L17>:
    {
        __SET(_v_member, true);
    560c:	dc 43 19 01 	mov.b	#1,	281(r12);r3 As==01, 0x0119

00005610 <.L16>:
            __SET(_v_member, false);
        }
    }

    return task_lookup_done;
}
    5610:	3c 40 2a 56 	mov	#22058,	r12	;#0x562a

00005614 <.LVL22>:
    5614:	30 41       	ret			

00005616 <.L15>:
        if (__GET(_v_filter[__GET(_v_index2)]) == __GET(_v_fingerprint))
    5616:	1d 4c 0c 01 	mov	268(r12),r13	;0x0010c
    561a:	1d 53       	inc	r13		;
    561c:	5d 02       	rlam	#1,	r13	;
    561e:	0d 5c       	add	r12,	r13	;

00005620 <.Loc.394.1>:
    5620:	2e 9d       	cmp	@r13,	r14	;
    5622:	f4 27       	jz	$-22     	;abs 0x560c

00005624 <.Loc.400.1>:
            __SET(_v_member, false);
    5624:	cc 43 19 01 	mov.b	#0,	281(r12);r3 As==00, 0x0119
    5628:	f3 3f       	jmp	$-24     	;abs 0x5610

0000562a <task_lookup_done>:

TASK(task_lookup_done)
{
    562a:	0d 4c       	mov	r12,	r13	;

0000562c <.Loc.409.1>:
    uint16_t __cry;
    __SET(_v_lookup_count, ++__GET(_v_lookup_count));
    562c:	1e 4c 14 01 	mov	276(r12),r14	;0x00114
    5630:	1e 53       	inc	r14		;
    5632:	8c 4e 14 01 	mov	r14,	276(r12); 0x0114

00005636 <.Loc.411.1>:
    __cry  = __GET(_v_member_count);
    __cry += __GET(_v_member);
    5636:	5c 4c 19 01 	mov.b	281(r12),r12	;0x00119

0000563a <.LVL26>:
    563a:	8d 5c 16 01 	add	r12,	278(r13); 0x0116

0000563e <.LVL27>:

        return task_generate_key;
    }
    else
    {
        return task_print_stats;
    563e:	3c 40 56 56 	mov	#22102,	r12	;#0x5656

00005642 <.Loc.415.1>:
    if (__GET(_v_lookup_count) < NUM_LOOKUPS)
    5642:	7f 40 1f 00 	mov.b	#31,	r15	;#0x001f
    5646:	0f 9e       	cmp	r14,	r15	;
    5648:	05 28       	jnc	$+12     	;abs 0x5654

0000564a <.Loc.417.1>:
        __SET(_v_next_task, t_lookup);
    564a:	bd 40 0a 00 	mov	#10,	262(r13);#0x000a, 0x0106
    564e:	06 01 

00005650 <.Loc.419.1>:
        return task_generate_key;
    5650:	3c 40 80 55 	mov	#21888,	r12	;#0x5580

00005654 <.L18>:
    }
}
    5654:	30 41       	ret			

00005656 <task_print_stats>:

TASK(task_print_stats)
{
    __no_operation();
    5656:	03 43       	nop			

00005658 <.Loc.431.1>:

    return task_done;
}
    5658:	3c 40 d2 56 	mov	#22226,	r12	;#0x56d2

0000565c <.LVL29>:
    565c:	30 41       	ret			

0000565e <task_add>:
{
    565e:	5a 15       	pushm	#6,	r10	;16-bit words

00005660 <.LCFI0>:
    5660:	0a 4c       	mov	r12,	r10	;

00005662 <.Loc.269.1>:
    uint16_t      __cry_idx   = __GET(_v_index1);
    5662:	17 4c 0a 01 	mov	266(r12),r7	;0x0010a

00005666 <.LVL31>:
    fingerprint_t fingerprint = __GET(_v_fingerprint);
    5666:	16 4c 08 01 	mov	264(r12),r6	;0x00108

0000566a <.Loc.274.1>:
    if (!__GET(_v_filter[__cry_idx]))
    566a:	08 47       	mov	r7,	r8	;
    566c:	58 02       	rlam	#1,	r8	;
    566e:	08 5c       	add	r12,	r8	;

00005670 <.Loc.274.1>:
    5670:	88 93 02 00 	cmp	#0,	2(r8)	;r3 As==00
    5674:	08 20       	jnz	$+18     	;abs 0x5686

00005676 <.Loc.276.1>:
        __SET(_v_success, true);
    5676:	dc 43 18 01 	mov.b	#1,	280(r12);r3 As==01, 0x0118

0000567a <.LVL33>:
        __SET(_v_filter[__cry_idx], __cry);
    567a:	88 46 02 00 	mov	r6,	2(r8)	;

0000567e <.L28>:
            return task_insert_done;
    567e:	3c 40 ba 55 	mov	#21946,	r12	;#0x55ba

00005682 <.L22>:
}
    5682:	55 17       	popm	#6,	r10	;16-bit words

00005684 <.LCFI1>:
    5684:	30 41       	ret			

00005686 <.L23>:
    uint16_t      __cry_idx2  = __GET(_v_index2);
    5686:	15 4c 0c 01 	mov	268(r12),r5	;0x0010c

0000568a <.Loc.284.1>:
        if (!__GET(_v_filter[__cry_idx2]))
    568a:	09 45       	mov	r5,	r9	;
    568c:	59 02       	rlam	#1,	r9	;
    568e:	09 5c       	add	r12,	r9	;

00005690 <.Loc.284.1>:
    5690:	89 93 02 00 	cmp	#0,	2(r9)	;r3 As==00
    5694:	05 20       	jnz	$+12     	;abs 0x56a0

00005696 <.Loc.286.1>:
            __SET(_v_success, true);
    5696:	dc 43 18 01 	mov.b	#1,	280(r12);r3 As==01, 0x0118

0000569a <.LVL37>:
            __SET(_v_filter[__cry_idx2], __cry);
    569a:	89 46 02 00 	mov	r6,	2(r9)	;

0000569e <.LVL38>:
    569e:	ef 3f       	jmp	$-32     	;abs 0x567e

000056a0 <.L25>:
            if (rand() % 2)
    56a0:	b0 12 88 69 	call	#27016		;#0x6988

000056a4 <.LVL40>:
    56a4:	1c b3       	bit	#1,	r12	;r3 As==01
    56a6:	11 24       	jz	$+36     	;abs 0x56ca

000056a8 <.LVL41>:
                fp_victim    = __GET(_v_filter[__cry_idx]);
    56a8:	1d 48 02 00 	mov	2(r8),	r13	;

000056ac <.L27>:
            __SET(_v_filter[index_victim], __cry);
    56ac:	0c 47       	mov	r7,	r12	;
    56ae:	1c 53       	inc	r12		;
    56b0:	5c 02       	rlam	#1,	r12	;
    56b2:	0c 5a       	add	r10,	r12	;
    56b4:	8c 46 00 00 	mov	r6,	0(r12)	;

000056b8 <.Loc.312.1>:
            __SET(_v_index1, index_victim);
    56b8:	8a 47 0a 01 	mov	r7,	266(r10); 0x010a

000056bc <.Loc.313.1>:
            __SET(_v_fingerprint, fp_victim);
    56bc:	8a 4d 08 01 	mov	r13,	264(r10); 0x0108

000056c0 <.Loc.314.1>:
            __SET(_v_relocation_count, 0);
    56c0:	8a 43 0e 01 	mov	#0,	270(r10);r3 As==00, 0x010e

000056c4 <.Loc.316.1>:
            return task_relocate;
    56c4:	3c 40 26 57 	mov	#22310,	r12	;#0x5726
    56c8:	dc 3f       	jmp	$-70     	;abs 0x5682

000056ca <.L26>:
                fp_victim    = __GET(_v_filter[__cry_idx2]);
    56ca:	1d 49 02 00 	mov	2(r9),	r13	;

000056ce <.LVL44>:
                index_victim = __cry_idx2;
    56ce:	07 45       	mov	r5,	r7	;

000056d0 <.LVL45>:
    56d0:	ed 3f       	jmp	$-36     	;abs 0x56ac

000056d2 <task_done>:

TASK(task_done)
{
#ifdef RAISE_PIN
    if (full_run_started)
    56d2:	c2 93 58 47 	cmp.b	#0,	&0x4758	;r3 As==00
    56d6:	08 24       	jz	$+18     	;abs 0x56e8

000056d8 <.LBB5>:
    {
        __port_on(3, 4);
    56d8:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    56dc:	22 02 

000056de <.Loc.439.1>:
        __port_off(3, 4);
    56de:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    56e2:	22 02 

000056e4 <.Loc.440.1>:
        full_run_started = 0;
    56e4:	c2 43 58 47 	mov.b	#0,	&0x4758	;r3 As==00

000056e8 <.L30>:
    }
#endif

    return task_init;
}
    56e8:	3c 40 48 55 	mov	#21832,	r12	;#0x5548

000056ec <.LVL49>:
    56ec:	30 41       	ret			

000056ee <djb_hash.constprop.0>:
static hash_t djb_hash(uint8_t* data, unsigned len)
    56ee:	0e 4c       	mov	r12,	r14	;

000056f0 <.Loc.143.1>:
        hash = ((hash << 5) + hash) + (*data);
    56f0:	6d 4c       	mov.b	@r12,	r13	;
    56f2:	3d 50 a5 b5 	add	#-19035,r13	;#0xb5a5

000056f6 <.LVL52>:
    56f6:	0c 4d       	mov	r13,	r12	;
    56f8:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    56fc:	5e 4e 01 00 	mov.b	1(r14),	r14	;
    5700:	0d 5e       	add	r14,	r13	;

00005702 <.LVL55>:
}
    5702:	0c 5d       	add	r13,	r12	;

00005704 <.LVL56>:
    5704:	30 41       	ret			

00005706 <task_calc_indexes>:
{
    5706:	0a 15       	pushm	#1,	r10	;16-bit words

00005708 <.LCFI3>:
    5708:	21 83       	decd	r1		;

0000570a <.LCFI4>:
    570a:	0a 4c       	mov	r12,	r10	;

0000570c <.Loc.218.1>:
    __cry = hash_to_fingerprint(__GET(_v_key));
    570c:	91 4c 04 01 	mov	260(r12),0(r1)	;0x00104
    5710:	00 00 

00005712 <.LBB9>:
    return djb_hash((uint8_t*)&key, sizeof(value_t));
    5712:	0c 41       	mov	r1,	r12	;

00005714 <.LVL59>:
    5714:	b0 12 ee 56 	call	#22254		;#0x56ee

00005718 <.LBE9>:
    __SET(_v_fingerprint, __cry);
    5718:	8a 4c 08 01 	mov	r12,	264(r10); 0x0108

0000571c <.Loc.222.1>:
}
    571c:	3c 40 8c 57 	mov	#22412,	r12	;#0x578c

00005720 <.LVL61>:
    5720:	21 53       	incd	r1		;

00005722 <.LCFI5>:
    5722:	0a 17       	popm	#1,	r10	;16-bit words

00005724 <.LCFI6>:
    5724:	30 41       	ret			

00005726 <task_relocate>:
{
    5726:	2a 15       	pushm	#3,	r10	;16-bit words

00005728 <.LCFI7>:
    5728:	21 83       	decd	r1		;

0000572a <.LCFI8>:
    572a:	0a 4c       	mov	r12,	r10	;

0000572c <.Loc.323.1>:
    fingerprint_t fp_victim      = __GET(_v_fingerprint);
    572c:	19 4c 08 01 	mov	264(r12),r9	;0x00108

00005730 <.Loc.325.1>:
    index_t       fp_hash_victim = hash_to_index(fp_victim);
    5730:	81 49 00 00 	mov	r9,	0(r1)	;

00005734 <.LBB13>:
    hash_t hash = djb_hash((uint8_t*)&fp, sizeof(fingerprint_t));
    5734:	0c 41       	mov	r1,	r12	;

00005736 <.LVL65>:
    5736:	b0 12 ee 56 	call	#22254		;#0x56ee

0000573a <.LBE13>:
    return hash & (NUM_BUCKETS - 1);  // NUM_BUCKETS must be power of 2
    573a:	7c f0 7f 00 	and.b	#127,	r12	;#0x007f

0000573e <.LVL67>:
    index_t       index2_victim  = __GET(_v_index1) ^ fp_hash_victim;
    573e:	1c ea 0a 01 	xor	266(r10),r12	;0x0010a

00005742 <.LVL68>:
    if (!__GET(_v_filter[index2_victim]))
    5742:	0d 4c       	mov	r12,	r13	;
    5744:	5d 02       	rlam	#1,	r13	;
    5746:	0d 5a       	add	r10,	r13	;

00005748 <.Loc.328.1>:
    5748:	1e 4d 02 00 	mov	2(r13),	r14	;

0000574c <.Loc.328.1>:
    574c:	0e 93       	cmp	#0,	r14	;r3 As==00
    574e:	09 20       	jnz	$+20     	;abs 0x5762

00005750 <.Loc.331.1>:
        __SET(_v_success, true);
    5750:	da 43 18 01 	mov.b	#1,	280(r10);r3 As==01, 0x0118

00005754 <.Loc.332.1>:
        __SET(_v_filter[index2_victim], fp_victim);
    5754:	8d 49 02 00 	mov	r9,	2(r13)	;

00005758 <.L37>:
            return task_insert_done;
    5758:	3c 40 ba 55 	mov	#21946,	r12	;#0x55ba

0000575c <.L33>:
}
    575c:	21 53       	incd	r1		;

0000575e <.LCFI9>:
    575e:	28 17       	popm	#3,	r10	;16-bit words

00005760 <.LCFI10>:
    5760:	30 41       	ret			

00005762 <.L34>:
        if (__GET(_v_relocation_count) >= MAX_RELOCATIONS)
    5762:	1f 4a 0e 01 	mov	270(r10),r15	;0x0010e

00005766 <.Loc.339.1>:
    5766:	78 40 07 00 	mov.b	#7,	r8	;
    576a:	08 9f       	cmp	r15,	r8	;
    576c:	03 2c       	jc	$+8      	;abs 0x5774

0000576e <.Loc.341.1>:
            __SET(_v_success, false);
    576e:	ca 43 18 01 	mov.b	#0,	280(r10);r3 As==00, 0x0118
    5772:	f2 3f       	jmp	$-26     	;abs 0x5758

00005774 <.L36>:
        __SET(_v_relocation_count, ++__GET(_v_relocation_count));
    5774:	1f 53       	inc	r15		;
    5776:	8a 4f 0e 01 	mov	r15,	270(r10); 0x010e

0000577a <.Loc.347.1>:
        __SET(_v_index1, index2_victim);
    577a:	8a 4c 0a 01 	mov	r12,	266(r10); 0x010a

0000577e <.Loc.348.1>:
        __SET(_v_fingerprint, __cry);
    577e:	8a 4e 08 01 	mov	r14,	264(r10); 0x0108

00005782 <.Loc.350.1>:
        __SET(_v_filter[index2_victim], fp_victim);
    5782:	8d 49 02 00 	mov	r9,	2(r13)	;

00005786 <.Loc.352.1>:
        return task_relocate;
    5786:	3c 40 26 57 	mov	#22310,	r12	;#0x5726

0000578a <.LVL72>:
    578a:	e8 3f       	jmp	$-46     	;abs 0x575c

0000578c <task_calc_indexes_index_1>:
{
    578c:	0a 15       	pushm	#1,	r10	;16-bit words

0000578e <.LCFI12>:
    578e:	21 83       	decd	r1		;

00005790 <.LCFI13>:
    5790:	0a 4c       	mov	r12,	r10	;

00005792 <.Loc.227.1>:
    __cry = hash_to_index(__GET(_v_key));
    5792:	91 4c 04 01 	mov	260(r12),0(r1)	;0x00104
    5796:	00 00 

00005798 <.LBB19>:
    hash_t hash = djb_hash((uint8_t*)&fp, sizeof(fingerprint_t));
    5798:	0c 41       	mov	r1,	r12	;

0000579a <.LVL75>:
    579a:	b0 12 ee 56 	call	#22254		;#0x56ee

0000579e <.LBE19>:
    return hash & (NUM_BUCKETS - 1);  // NUM_BUCKETS must be power of 2
    579e:	7c f0 7f 00 	and.b	#127,	r12	;#0x007f

000057a2 <.LVL77>:
    57a2:	8a 4c 0a 01 	mov	r12,	266(r10); 0x010a

000057a6 <.Loc.231.1>:
}
    57a6:	3c 40 b0 57 	mov	#22448,	r12	;#0x57b0

000057aa <.LVL78>:
    57aa:	21 53       	incd	r1		;

000057ac <.LCFI14>:
    57ac:	0a 17       	popm	#1,	r10	;16-bit words

000057ae <.LCFI15>:
    57ae:	30 41       	ret			

000057b0 <task_calc_indexes_index_2>:
{
    57b0:	0a 15       	pushm	#1,	r10	;16-bit words

000057b2 <.LCFI16>:
    57b2:	21 83       	decd	r1		;

000057b4 <.LCFI17>:
    57b4:	0a 4c       	mov	r12,	r10	;

000057b6 <.Loc.236.1>:
    index_t  fp_hash = hash_to_index(__GET(_v_fingerprint));
    57b6:	91 4c 08 01 	mov	264(r12),0(r1)	;0x00108
    57ba:	00 00 

000057bc <.LBB25>:
    hash_t hash = djb_hash((uint8_t*)&fp, sizeof(fingerprint_t));
    57bc:	0c 41       	mov	r1,	r12	;

000057be <.LVL81>:
    57be:	b0 12 ee 56 	call	#22254		;#0x56ee

000057c2 <.LBE25>:
    return hash & (NUM_BUCKETS - 1);  // NUM_BUCKETS must be power of 2
    57c2:	7c f0 7f 00 	and.b	#127,	r12	;#0x007f

000057c6 <.LVL83>:
    __cry = __GET(_v_index1) ^ fp_hash;
    57c6:	1c ea 0a 01 	xor	266(r10),r12	;0x0010a

000057ca <.LVL84>:
    57ca:	8a 4c 0c 01 	mov	r12,	268(r10); 0x010c

000057ce <.Loc.244.1>:
    enum task_index next_task = __GET(_v_next_task);
    57ce:	1c 4a 06 01 	mov	262(r10),r12	;0x00106

000057d2 <.LVL85>:
    if (next_task == t_add)
    57d2:	3c 90 07 00 	cmp	#7,	r12	;
    57d6:	04 24       	jz	$+10     	;abs 0x57e0

000057d8 <.Loc.250.1>:
    else if (next_task == t_lookup_search)
    57d8:	3c 90 0b 00 	cmp	#11,	r12	;#0x000b
    57dc:	06 24       	jz	$+14     	;abs 0x57ea

000057de <.L41>:
        while (1)
    57de:	ff 3f       	jmp	$+0      	;abs 0x57de

000057e0 <.L42>:
        return task_add;
    57e0:	3c 40 5e 56 	mov	#22110,	r12	;#0x565e

000057e4 <.L39>:
}
    57e4:	21 53       	incd	r1		;

000057e6 <.LCFI18>:
    57e6:	0a 17       	popm	#1,	r10	;16-bit words

000057e8 <.LCFI19>:
    57e8:	30 41       	ret			

000057ea <.L43>:
        return task_lookup_search;
    57ea:	3c 40 f8 55 	mov	#22008,	r12	;#0x55f8

000057ee <.LVL88>:
    57ee:	fa 3f       	jmp	$-10     	;abs 0x57e4

000057f0 <thread1_init>:
{
    57f0:	21 83       	decd	r1		;

000057f2 <.LCFI21>:
    __CREATE(15, task_init);
    57f2:	b1 40 1a 01 	mov	#282,	0(r1)	;#0x011a
    57f6:	00 00 
    57f8:	3f 40 3e 46 	mov	#17982,	r15	;#0x463e
    57fc:	3e 40 24 45 	mov	#17700,	r14	;#0x4524
    5800:	3d 40 48 55 	mov	#21832,	r13	;#0x5548
    5804:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5808:	b0 12 64 58 	call	#22628		;#0x5864

0000580c <.Loc.127.1>:
    __SIGNAL(15);
    580c:	32 c2       	dint			
    580e:	03 43       	nop			

00005810 <.Loc.127.1>:
    5810:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5814:	b0 12 54 59 	call	#22868		;#0x5954
    5818:	b0 12 38 59 	call	#22840		;#0x5938

0000581c <.Loc.127.1>:
    581c:	03 43       	nop			
    581e:	32 d2       	eint			
    5820:	03 43       	nop			

00005822 <.Loc.128.1>:
}
    5822:	21 53       	incd	r1		;

00005824 <.LCFI22>:
    5824:	30 41       	ret			

00005826 <__app_reboot>:
    __port_init(3, 4);
    5826:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    582a:	22 02 

0000582c <.Loc.133.1>:
    582c:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    5830:	24 02 

00005832 <.Loc.133.1>:
    5832:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5836:	22 02 

00005838 <.Loc.133.1>:
}
    5838:	30 41       	ret			

0000583a <__scheduler_boot_init>:
 * a higher-priority thread.
 * As such, the scheduler state should ALWAYS be SCHED_SELECT at reboot.
 */
static volatile uint8_t _sched_state = SCHED_SELECT;

void __scheduler_boot_init() {
    583a:	0a 15       	pushm	#1,	r10	;16-bit words

0000583c <.LCFI0>:
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    583c:	3c 40 5c 47 	mov	#18268,	r12	;#0x475c
    5840:	b0 12 56 64 	call	#25686		;#0x6456

00005844 <.Loc.65.1>:
    5844:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

00005848 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    5848:	0c 4a       	mov	r10,	r12	;
    584a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    584e:	
00005850 <L0^A>:
    5850:	ea 68 1c 4c 	addc.b	@r8,	19484(r10); 0x4c1c
    5854:	68 47       	mov.b	@r7,	r8	;

00005856 <.LVL3>:
    for (i = MAX_THREADS; i > 0; i--){
    5856:	3a 53       	add	#-1,	r10	;r3 As==11

00005858 <.Loc.67.1>:
    5858:	0a 93       	cmp	#0,	r10	;r3 As==00
    585a:	f6 23       	jnz	$-18     	;abs 0x5848

0000585c <.Loc.71.1>:
    }
    _sched_state = SCHED_SELECT;
    585c:	c2 43 c8 1c 	mov.b	#0,	&0x1cc8	;r3 As==00

00005860 <.Loc.72.1>:
}
    5860:	0a 17       	popm	#1,	r10	;16-bit words

00005862 <.LCFI1>:
    5862:	30 41       	ret			

00005864 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    5864:	3a 15       	pushm	#4,	r10	;16-bit words

00005866 <.LCFI2>:
    5866:	4a 4c       	mov.b	r12,	r10	;
    5868:	09 4d       	mov	r13,	r9	;
    586a:	07 4e       	mov	r14,	r7	;
    586c:	08 4f       	mov	r15,	r8	;

0000586e <.Loc.79.1>:
    // init properties
    _threads[priority].priority = priority;
    586e:	0c 4a       	mov	r10,	r12	;

00005870 <.LVL6>:
    5870:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

00005874 <.LVL7>:
    5874:	b0 12 ea 68 	call	#26858		;#0x68ea

00005878 <.LVL8>:
    5878:	cc 4a 66 47 	mov.b	r10,	18278(r12); 0x4766

0000587c <.Loc.80.1>:
    _threads[priority].entry = entry;
    587c:	0c 4a       	mov	r10,	r12	;
    587e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5882:	b0 12 ea 68 	call	#26858		;#0x68ea
    5886:	8c 49 6a 47 	mov	r9,	18282(r12); 0x476a

0000588a <.Loc.81.1>:
    _threads[priority].next = entry;
    588a:	0c 4a       	mov	r10,	r12	;
    588c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5890:	b0 12 ea 68 	call	#26858		;#0x68ea
    5894:	8c 49 6c 47 	mov	r9,	18284(r12); 0x476c

00005898 <.Loc.82.1>:
    _threads[priority].state = THREAD_STOPPED;
    5898:	0c 4a       	mov	r10,	r12	;
    589a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    589e:	b0 12 ea 68 	call	#26858		;#0x68ea
    58a2:	bc 42 68 47 	mov	#8,	18280(r12);r2 As==11, 0x4768

000058a6 <.Loc.85.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    58a6:	0c 4a       	mov	r10,	r12	;
    58a8:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    58ac:	b0 12 ea 68 	call	#26858		;#0x68ea
    58b0:	8c 47 70 47 	mov	r7,	18288(r12); 0x4770

000058b4 <.Loc.86.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    58b4:	0c 4a       	mov	r10,	r12	;
    58b6:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    58ba:	b0 12 ea 68 	call	#26858		;#0x68ea
    58be:	8c 48 72 47 	mov	r8,	18290(r12); 0x4772

000058c2 <.Loc.87.1>:
    _threads[priority].buffer.idx = 0;
    58c2:	0c 4a       	mov	r10,	r12	;
    58c4:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    58c8:	b0 12 ea 68 	call	#26858		;#0x68ea
    58cc:	cc 43 74 47 	mov.b	#0,	18292(r12);r3 As==00, 0x4774

000058d0 <.Loc.88.1>:
    _threads[priority].buffer.size = size;
    58d0:	0c 4a       	mov	r10,	r12	;
    58d2:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    58d6:	b0 12 ea 68 	call	#26858		;#0x68ea
    58da:	9c 41 0a 00 	mov	10(r1),	18294(r12);0x0000a, 0x4776
    58de:	76 47 

000058e0 <.Loc.89.1>:
}
    58e0:	37 17       	popm	#4,	r10	;16-bit words

000058e2 <.LCFI3>:
    58e2:	30 41       	ret			

000058e4 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    58e4:	0a 15       	pushm	#1,	r10	;16-bit words

000058e6 <.LCFI4>:
    58e6:	0a 4c       	mov	r12,	r10	;

000058e8 <.Loc.93.1>:
    __priority_remove(thread->priority, &_priorities);
    58e8:	3d 40 5c 47 	mov	#18268,	r13	;#0x475c
    58ec:	6c 4c       	mov.b	@r12,	r12	;

000058ee <.LVL17>:
    58ee:	b0 12 9c 64 	call	#25756		;#0x649c

000058f2 <.Loc.94.1>:
    thread->state = THREAD_STOPPED;
    58f2:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000058f6 <.Loc.95.1>:
}
    58f6:	0a 17       	popm	#1,	r10	;16-bit words

000058f8 <.LCFI5>:
    58f8:	30 41       	ret			

000058fa <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    58fa:	0a 15       	pushm	#1,	r10	;16-bit words

000058fc <.LCFI6>:
    58fc:	0a 4c       	mov	r12,	r10	;

000058fe <.Loc.99.1>:
    __priority_remove(thread->priority, &_priorities);
    58fe:	3d 40 5c 47 	mov	#18268,	r13	;#0x475c
    5902:	6c 4c       	mov.b	@r12,	r12	;

00005904 <.LVL20>:
    5904:	b0 12 9c 64 	call	#25756		;#0x649c

00005908 <.Loc.100.1>:
    thread->next = NULL;
    5908:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

0000590c <.Loc.101.1>:
    thread->state = THREAD_STOPPED;
    590c:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005910 <.Loc.102.1>:
}
    5910:	0a 17       	popm	#1,	r10	;16-bit words

00005912 <.LCFI7>:
    5912:	30 41       	ret			

00005914 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    5914:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005918 <.Loc.106.1>:
    return;
}
    5918:	30 41       	ret			

0000591a <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    591a:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000591e <.Loc.112.1>:
    return;
}
    591e:	30 41       	ret			

00005920 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    5920:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00005924 <.Loc.118.1>:
    return;
}
    5924:	30 41       	ret			

00005926 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    5926:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

0000592a <.Loc.123.1>:
    return;
}
    592a:	30 41       	ret			

0000592c <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    592c:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00005930 <.LVL27>:
    5930:	30 41       	ret			

00005932 <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    5932:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00005936 <.LVL29>:
    5936:	30 41       	ret			

00005938 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    5938:	0a 15       	pushm	#1,	r10	;16-bit words

0000593a <.LCFI8>:
    593a:	0a 4c       	mov	r12,	r10	;

0000593c <.Loc.136.1>:
    thread->next = thread->entry;
    593c:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    5940:	06 00 

00005942 <.Loc.137.1>:
    __priority_insert(thread->priority, &_priorities);
    5942:	3d 40 5c 47 	mov	#18268,	r13	;#0x475c
    5946:	6c 4c       	mov.b	@r12,	r12	;

00005948 <.LVL31>:
    5948:	b0 12 7c 64 	call	#25724		;#0x647c

0000594c <.Loc.138.1>:
    thread->state = TASK_READY;
    594c:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005950 <.Loc.139.1>:
}
    5950:	0a 17       	popm	#1,	r10	;16-bit words

00005952 <.LCFI9>:
    5952:	30 41       	ret			

00005954 <__get_thread>:

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    return &_threads[priority];
    5954:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5958:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    595c:	b0 12 ea 68 	call	#26858		;#0x68ea

00005960 <.LVL34>:
}
    5960:	3c 50 66 47 	add	#18278,	r12	;#0x4766
    5964:	30 41       	ret			

00005966 <__scheduler_run>:
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    5966:	b0 12 f4 61 	call	#25076		;#0x61f4

0000596a <.Loc.171.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    596a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000596e <.Loc.171.1>:
    __port_off(1, 3);
    596e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005972 <.LBB8>:
    if(_thread){
    5972:	82 93 5a 47 	cmp	#0,	&0x475a	;r3 As==00
    5976:	04 24       	jz	$+10     	;abs 0x5980

00005978 <.Loc.157.1>:
        __tick(_thread);
    5978:	1c 42 5a 47 	mov	&0x475a,r12	;0x475a
    597c:	b0 12 08 5a 	call	#23048		;#0x5a08

00005980 <.L16>:
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

#ifdef RAISE_PIN
    __port_on(1, 3);
    5980:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005984 <.Loc.184.1>:
    __port_off(1, 3);
    5984:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005988 <.Loc.185.1>:
#endif

    __reboot_timers();
    5988:	b0 12 0c 5b 	call	#23308		;#0x5b0c

0000598c <.L31>:
    // enable interrupts
    __enable_interrupt();
    598c:	03 43       	nop			
    598e:	32 d2       	eint			
    5990:	03 43       	nop			

00005992 <.L20>:

    while (1){
        switch (_sched_state){
    5992:	5c 42 c8 1c 	mov.b	&0x1cc8,r12	;0x1cc8
    5996:	0c 93       	cmp	#0,	r12	;r3 As==00
    5998:	0e 24       	jz	$+30     	;abs 0x59b6
    599a:	1c 93       	cmp	#1,	r12	;r3 As==01
    599c:	fa 23       	jnz	$-10     	;abs 0x5992

0000599e <.L19>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    599e:	82 93 5a 47 	cmp	#0,	&0x475a	;r3 As==00
    59a2:	21 24       	jz	$+68     	;abs 0x59e6

000059a4 <.Loc.207.1>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    59a4:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000059a8 <.Loc.207.1>:
#endif
                __tick(_thread);
    59a8:	1c 42 5a 47 	mov	&0x475a,r12	;0x475a
    59ac:	b0 12 08 5a 	call	#23048		;#0x5a08

000059b0 <.Loc.211.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    59b0:	c2 43 c8 1c 	mov.b	#0,	&0x1cc8	;r3 As==00

000059b4 <.Loc.212.1>:
                break;
    59b4:	ee 3f       	jmp	$-34     	;abs 0x5992

000059b6 <.L18>:
            __port_on(1, 3);
    59b6:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000059ba <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    59ba:	3c 40 5c 47 	mov	#18268,	r12	;#0x475c
    59be:	b0 12 c4 64 	call	#25796		;#0x64c4
    59c2:	4e 4c       	mov.b	r12,	r14	;
    59c4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000059c8 <.LVL40>:
    return NULL;
    59c8:	4d 43       	clr.b	r13		;

000059ca <.Loc.144.1>:
    if(idx)
    59ca:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    59cc:	07 24       	jz	$+16     	;abs 0x59dc

000059ce <.Loc.145.1>:
        return &_threads[idx];
    59ce:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    59d2:	b0 12 ea 68 	call	#26858		;#0x68ea

000059d6 <.LVL41>:
    59d6:	0d 4c       	mov	r12,	r13	;
    59d8:	3d 50 66 47 	add	#18278,	r13	;#0x4766

000059dc <.L21>:
            _thread = __next_thread();
    59dc:	82 4d 5a 47 	mov	r13,	&0x475a	;

000059e0 <.Loc.201.1>:
            _sched_state = SCHED_BUSY;
    59e0:	d2 43 c8 1c 	mov.b	#1,	&0x1cc8	;r3 As==01
    59e4:	dc 3f       	jmp	$-70     	;abs 0x599e

000059e6 <.L22>:
            }
            _sched_state = SCHED_SELECT;
    59e6:	c2 43 c8 1c 	mov.b	#0,	&0x1cc8	;r3 As==00

000059ea <.Loc.215.1>:
            __disable_interrupt();
    59ea:	32 c2       	dint			
    59ec:	03 43       	nop			

000059ee <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    59ee:	3c 40 5c 47 	mov	#18268,	r12	;#0x475c
    59f2:	b0 12 c4 64 	call	#25796		;#0x64c4

000059f6 <.LVL42>:
    if(idx)
    59f6:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    59f8:	cc 23       	jnz	$-102    	;abs 0x5992

000059fa <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    59fa:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000059fe <.Loc.219.1>:
#endif
                __mcu_sleep();
    59fe:	03 43       	nop			
    5a00:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    5a04:	03 43       	nop			

00005a06 <.Loc.222.1>:
                __enable_interrupt();
    5a06:	c2 3f       	jmp	$-122    	;abs 0x598c

00005a08 <__tick>:

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    5a08:	1a 15       	pushm	#2,	r10	;16-bit words

00005a0a <.LCFI0>:
    5a0a:	0a 4c       	mov	r12,	r10	;

00005a0c <.Loc.53.1>:
    void *buf;
    switch (thread->state)
    5a0c:	
00005a0e <L0^A>:
    5a0e:	02 00       	mova	@r0,	r2	;

00005a10 <.LVL1>:
    5a10:	2c 93       	cmp	#2,	r12	;r3 As==10
    5a12:	3f 24       	jz	$+128    	;abs 0x5a92
    5a14:	2c 92       	cmp	#4,	r12	;r2 As==10
    5a16:	4d 24       	jz	$+156    	;abs 0x5ab2
    5a18:	1c 93       	cmp	#1,	r12	;r3 As==01
    5a1a:	67 20       	jnz	$+208    	;abs 0x5aea

00005a1c <.LBB5>:
    __port_on(3,6);
    5a1c:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    5a20:	22 02 

00005a22 <.Loc.40.1>:
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    5a22:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00005a26 <.Loc.43.1>:
    5a26:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5a2a:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5a2c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005a30 <.Loc.43.1>:
    5a30:	5c 02       	rlam	#1,	r12	;
    5a32:	0c 5a       	add	r10,	r12	;
    5a34:	5f 02       	rlam	#1,	r15	;
    5a36:	0f 5a       	add	r10,	r15	;
    5a38:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    5a3c:	5e 03       	rrum	#1,	r14	;
    5a3e:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    5a42:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    5a46:	b0 12 ce 63 	call	#25550		;#0x63ce

00005a4a <.Loc.45.1>:
    __port_off(3,6);
    5a4a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5a4e:	22 02 

00005a50 <.LBE5>:
    {
    case TASK_READY:
        // refresh thread stack
        __prologue(thread);
#ifdef RAISE_PIN
        __port_on(1, 4);
    5a50:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5a54:	02 02 

00005a56 <.Loc.60.1>:
#endif
        // get thread buffer
        buf = thread->buffer.buf[thread->buffer._idx^1];
    5a56:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    5a5a:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5a5c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005a60 <.Loc.63.1>:
    5a60:	3c 50 05 00 	add	#5,	r12	;
    5a64:	5c 02       	rlam	#1,	r12	;
    5a66:	0c 5a       	add	r10,	r12	;
    5a68:	29 4c       	mov	@r12,	r9	;

00005a6a <.LVL5>:
        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
    5a6a:	1d 4a 06 00 	mov	6(r10),	r13	;

00005a6e <.Loc.66.1>:
    5a6e:	1d 9a 04 00 	cmp	4(r10),	r13	;
    5a72:	3d 20       	jnz	$+124    	;abs 0x5aee

00005a74 <.LBB7>:
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
    5a74:	0c 4a       	mov	r10,	r12	;
    5a76:	b0 12 a8 62 	call	#25256		;#0x62a8

00005a7a <.LVL6>:
            // push event data to the entry task
            thread->next_temp = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    5a7a:	0d 4c       	mov	r12,	r13	;
    5a7c:	0c 49       	mov	r9,	r12	;

00005a7e <.LVL7>:
    5a7e:	1e 4a 04 00 	mov	4(r10),	r14	;
    5a82:	8e 12       	call	r14		;

00005a84 <.L17>:
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    5a84:	8a 4c 08 00 	mov	r12,	8(r10)	;

00005a88 <.Loc.76.1>:
        }
        thread->state = TASK_PRECOMMIT;
    5a88:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00005a8c <.Loc.78.1>:
#ifdef RAISE_PIN
        __port_off(1, 4);
    5a8c:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5a90:	02 02 

00005a92 <.L2>:
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
    5a92:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5a96:	22 02 

00005a98 <.Loc.82.1>:
#endif
        // release any event which is popped by the task
        __release_event(thread);
    5a98:	0c 4a       	mov	r10,	r12	;
    5a9a:	b0 12 d6 62 	call	#25302		;#0x62d6

00005a9e <.Loc.86.1>:
        thread->next = thread->next_temp;
    5a9e:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    5aa2:	06 00 

00005aa4 <.Loc.88.1>:
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
    5aa4:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5aa8:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5aaa:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

00005aae <.Loc.89.1>:
        thread->state = TASK_COMMIT;
    5aae:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005ab2 <.L3>:
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
    5ab2:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5ab6:	0e 00 

00005ab8 <.Loc.94.1>:
#ifdef RAISE_PIN
        __port_off(3,5);
    5ab8:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5abc:	22 02 

00005abe <.Loc.94.1>:
        __port_on(3,5);
    5abe:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5ac2:	22 02 

00005ac4 <.Loc.95.1>:
#endif

        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
    5ac4:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    5ac8:	1b 20       	jnz	$+56     	;abs 0x5b00

00005aca <.Loc.101.1>:
        {
            __disable_interrupt();
    5aca:	32 c2       	dint			
    5acc:	03 43       	nop			

00005ace <.Loc.103.1>:
            // check if there are any pending events
            if(!__has_events(thread)){
    5ace:	0c 4a       	mov	r10,	r12	;
    5ad0:	b0 12 8a 62 	call	#25226		;#0x628a

00005ad4 <.Loc.103.1>:
    5ad4:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5ad6:	0e 20       	jnz	$+30     	;abs 0x5af4

00005ad8 <.Loc.105.1>:
                // suspend the thread if there are no pending events
                __stop_thread(thread);
    5ad8:	0c 4a       	mov	r10,	r12	;
    5ada:	b0 12 e4 58 	call	#22756		;#0x58e4

00005ade <.L9>:
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
    5ade:	03 43       	nop			
    5ae0:	32 d2       	eint			
    5ae2:	03 43       	nop			

00005ae4 <.L10>:
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    5ae4:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5ae8:	22 02 

00005aea <.L1>:
#endif
    }
}
    5aea:	19 17       	popm	#2,	r10	;16-bit words

00005aec <.LCFI1>:
    5aec:	30 41       	ret			

00005aee <.L5>:
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    5aee:	2c 4c       	mov	@r12,	r12	;
    5af0:	8d 12       	call	r13		;
    5af2:	c8 3f       	jmp	$-110    	;abs 0x5a84

00005af4 <.L8>:
                thread->next = thread->entry;
    5af4:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    5af8:	06 00 

00005afa <.Loc.111.1>:
                thread->state = TASK_READY;
    5afa:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    5afe:	ef 3f       	jmp	$-32     	;abs 0x5ade

00005b00 <.L7>:
            thread->state = TASK_READY;
    5b00:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    5b04:	ef 3f       	jmp	$-32     	;abs 0x5ae4

00005b06 <__timers_init>:
    5b06:	b0 12 a8 65 	call	#26024		;#0x65a8

00005b0a <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    5b0a:	30 41       	ret			

00005b0c <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    5b0c:	30 41       	ret			

00005b0e <clear_wkup_status>:
//WKUP timers 
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    5b0e:	2a 15       	pushm	#3,	r10	;16-bit words

00005b10 <.LCFI0>:
    5b10:	48 4c       	mov.b	r12,	r8	;

00005b12 <.Loc.100.1>:
    
    uint8_t i; 
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5b12:	3a 40 fc 1c 	mov	#7420,	r10	;#0x1cfc

00005b16 <.Loc.101.1>:
    5b16:	49 43       	clr.b	r9		;

00005b18 <.L5>:
    {
        if (wkup_timing[i].thread_id == thread_id) {
    5b18:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    5b1c:	07 20       	jnz	$+16     	;abs 0x5b2c

00005b1e <.Loc.104.1>:
            wkup_timing[i].status = NOT_USED;
    5b1e:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00005b22 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5b22:	4e 43       	clr.b	r14		;
    5b24:	4d 43       	clr.b	r13		;
    5b26:	4c 49       	mov.b	r9,	r12	;
    5b28:	b0 12 66 66 	call	#26214		;#0x6666

00005b2c <.L4>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5b2c:	4c 49       	mov.b	r9,	r12	;
    5b2e:	5c 53       	inc.b	r12		;
    5b30:	49 4c       	mov.b	r12,	r9	;

00005b32 <.LVL5>:
    5b32:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005b36 <.Loc.101.1>:
    5b36:	7c 90 03 00 	cmp.b	#3,	r12	;
    5b3a:	ee 23       	jnz	$-34     	;abs 0x5b18

00005b3c <.Loc.109.1>:

        }
    }
}
    5b3c:	28 17       	popm	#3,	r10	;16-bit words

00005b3e <.LCFI1>:
    5b3e:	30 41       	ret			

00005b40 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    5b40:	1a 15       	pushm	#2,	r10	;16-bit words

00005b42 <.LCFI2>:
    5b42:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005b46 <.LCFI3>:
    5b46:	49 43       	clr.b	r9		;

00005b48 <.L8>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5b48:	0a 49       	mov	r9,	r10	;
    5b4a:	5a 06       	rlam	#2,	r10	;
    5b4c:	0a 59       	add	r9,	r10	;
    5b4e:	5a 02       	rlam	#1,	r10	;
    5b50:	3a 50 fc 1c 	add	#7420,	r10	;#0x1cfc
    5b54:	4e 43       	clr.b	r14		;
    5b56:	4d 49       	mov.b	r9,	r13	;
    5b58:	0c 41       	mov	r1,	r12	;
    5b5a:	b0 12 f0 67 	call	#26608		;#0x67f0
    5b5e:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5b62:	0d 41       	mov	r1,	r13	;
    5b64:	0c 4a       	mov	r10,	r12	;
    5b66:	b0 12 76 69 	call	#26998		;#0x6976

00005b6a <.LVL9>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5b6a:	19 53       	inc	r9		;

00005b6c <.Loc.115.1>:
    5b6c:	39 90 03 00 	cmp	#3,	r9	;
    5b70:	eb 23       	jnz	$-40     	;abs 0x5b48

00005b72 <.Loc.120.1>:
    }

}
    5b72:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005b76 <.LCFI4>:
    5b76:	19 17       	popm	#2,	r10	;16-bit words

00005b78 <.LCFI5>:
    5b78:	30 41       	ret			

00005b7a <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing 
void refresh_wkup_timers(){
    5b7a:	4a 15       	pushm	#5,	r10	;16-bit words

00005b7c <.LCFI6>:

    uint8_t i,first = 1;

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5b7c:	3a 40 fc 1c 	mov	#7420,	r10	;#0x1cfc

00005b80 <.Loc.125.1>:
    uint8_t i,first = 1;
    5b80:	5f 43       	mov.b	#1,	r15	;r3 As==01

00005b82 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5b82:	49 43       	clr.b	r9		;

00005b84 <.L23>:
    {

        if (wkup_timing[i].status == USED)
    5b84:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    5b88:	56 20       	jnz	$+174    	;abs 0x5c36

00005b8a <.Loc.133.1>:
        {
            
            if (first)
    5b8a:	16 4a 04 00 	mov	4(r10),	r6	;
    5b8e:	17 4a 06 00 	mov	6(r10),	r7	;

00005b92 <.Loc.133.1>:
    5b92:	0f 93       	cmp	#0,	r15	;r3 As==00
    5b94:	05 24       	jz	$+12     	;abs 0x5ba0

00005b96 <.Loc.135.1>:
            {
                min_wkup = wkup_timing[i].data;
    5b96:	82 46 22 1d 	mov	r6,	&0x1d22	;

00005b9a <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    5b9a:	d2 4a 02 00 	mov.b	2(r10),	&0x1d24	;
    5b9e:	24 1d 

00005ba0 <.L12>:
                first = 0;
            }
            

            wkup_timing[i].data = wkup_timing[i].data - __get_time(); 
    5ba0:	b0 12 74 65 	call	#25972		;#0x6574

00005ba4 <.Loc.141.1>:
    5ba4:	0e 46       	mov	r6,	r14	;
    5ba6:	0f 47       	mov	r7,	r15	;
    5ba8:	0e 8c       	sub	r12,	r14	;
    5baa:	0f 7d       	subc	r13,	r15	;

00005bac <.Loc.141.1>:
    5bac:	8a 4e 04 00 	mov	r14,	4(r10)	;
    5bb0:	8a 4f 06 00 	mov	r15,	6(r10)	;

00005bb4 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    5bb4:	4d 43       	clr.b	r13		;
    5bb6:	4c 49       	mov.b	r9,	r12	;
    5bb8:	b0 12 ca 65 	call	#26058		;#0x65ca

00005bbc <.Loc.144.1>:

            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5bbc:	1c 4a 04 00 	mov	4(r10),	r12	;
    5bc0:	1d 4a 06 00 	mov	6(r10),	r13	;

00005bc4 <.Loc.144.1>:
    5bc4:	07 4d       	mov	r13,	r7	;
    5bc6:	0d 93       	cmp	#0,	r13	;r3 As==00
    5bc8:	50 34       	jge	$+162    	;abs 0x5c6a

00005bca <.Loc.144.1>:
    5bca:	5e 42 25 1d 	mov.b	&0x1d25,r14	;0x1d25
    5bce:	06 43       	clr	r6		;
    5bd0:	06 8e       	sub	r14,	r6	;
    5bd2:	0e 46       	mov	r6,	r14	;
    5bd4:	0f 46       	mov	r6,	r15	;
    5bd6:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005bda <.Loc.144.1>:
    5bda:	0f 9d       	cmp	r13,	r15	;
    5bdc:	04 38       	jl	$+10     	;abs 0x5be6

00005bde <.Loc.144.1>:
    5bde:	0d 9f       	cmp	r15,	r13	;
    5be0:	20 20       	jnz	$+66     	;abs 0x5c22
    5be2:	06 9c       	cmp	r12,	r6	;
    5be4:	1e 2c       	jc	$+62     	;abs 0x5c22

00005be6 <.L32>:
            {
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5be6:	18 42 22 1d 	mov	&0x1d22,r8	;0x1d22
    5bea:	06 48       	mov	r8,	r6	;
    5bec:	07 43       	clr	r7		;

00005bee <.Loc.146.1>:
    5bee:	4e 43       	clr.b	r14		;
    5bf0:	4f 43       	clr.b	r15		;
    5bf2:	0e 8c       	sub	r12,	r14	;
    5bf4:	0f 7d       	subc	r13,	r15	;

00005bf6 <.Loc.146.1>:
    5bf6:	0f 93       	cmp	#0,	r15	;r3 As==00
    5bf8:	0c 38       	jl	$+26     	;abs 0x5c12
    5bfa:	0f 93       	cmp	#0,	r15	;r3 As==00
    5bfc:	02 20       	jnz	$+6      	;abs 0x5c02
    5bfe:	0e 96       	cmp	r6,	r14	;
    5c00:	08 28       	jnc	$+18     	;abs 0x5c12

00005c02 <.L33>:
    5c02:	06 9e       	cmp	r14,	r6	;
    5c04:	17 20       	jnz	$+48     	;abs 0x5c34
    5c06:	0f 93       	cmp	#0,	r15	;r3 As==00
    5c08:	15 20       	jnz	$+44     	;abs 0x5c34

00005c0a <.Loc.146.1>:
    5c0a:	da 92 24 1d 	cmp.b	&0x1d24,2(r10)	;0x1d24
    5c0e:	02 00 
    5c10:	12 2c       	jc	$+38     	;abs 0x5c36

00005c12 <.L17>:
                {
                    min_wkup = -wkup_timing[i].data;
    5c12:	4e 43       	clr.b	r14		;
    5c14:	0e 8c       	sub	r12,	r14	;
    5c16:	82 4e 22 1d 	mov	r14,	&0x1d22	;

00005c1a <.L40>:
            if (wkup_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
                {
                    min_wkup = wkup_timing[i].data;
                    nxt_wkup = wkup_timing[i].thread_id;
    5c1a:	d2 4a 02 00 	mov.b	2(r10),	&0x1d24	;
    5c1e:	24 1d 
    5c20:	09 3c       	jmp	$+20     	;abs 0x5c34

00005c22 <.L15>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    5c22:	07 4d       	mov	r13,	r7	;
    5c24:	0d 9f       	cmp	r15,	r13	;
    5c26:	04 38       	jl	$+10     	;abs 0x5c30
    5c28:	0f 9d       	cmp	r13,	r15	;
    5c2a:	04 20       	jnz	$+10     	;abs 0x5c34
    5c2c:	0c 96       	cmp	r6,	r12	;
    5c2e:	02 2c       	jc	$+6      	;abs 0x5c34

00005c30 <.L34>:
    5c30:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00005c34 <.L30>:
    5c34:	4f 43       	clr.b	r15		;

00005c36 <.L11>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5c36:	4c 49       	mov.b	r9,	r12	;
    5c38:	5c 53       	inc.b	r12		;
    5c3a:	49 4c       	mov.b	r12,	r9	;

00005c3c <.LVL17>:
    5c3c:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005c40 <.Loc.127.1>:
    5c40:	7c 90 03 00 	cmp.b	#3,	r12	;
    5c44:	9f 23       	jnz	$-192    	;abs 0x5b84

00005c46 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    5c46:	0f 93       	cmp	#0,	r15	;r3 As==00
    5c48:	2d 20       	jnz	$+92     	;abs 0x5ca4

00005c4a <.Loc.166.1>:
    {
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    5c4a:	5d 42 24 1d 	mov.b	&0x1d24,r13	;0x1d24
    5c4e:	4c 43       	clr.b	r12		;

00005c50 <.LVL18>:
    5c50:	b0 12 ac 66 	call	#26284		;#0x66ac

00005c54 <.LVL19>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    5c54:	1d 42 22 1d 	mov	&0x1d22,r13	;0x1d22
    5c58:	4c 43       	clr.b	r12		;
    5c5a:	b0 12 ba 66 	call	#26298		;#0x66ba

00005c5e <.Loc.171.1>:
        //set the new pending ISR timer.
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    5c5e:	1c 42 22 1d 	mov	&0x1d22,r12	;0x1d22
    5c62:	b0 12 ea 64 	call	#25834		;#0x64ea

00005c66 <.L10>:
    }
    //no pending wake up timer was found.
    else stop_timer();


}
    5c66:	46 17       	popm	#5,	r10	;16-bit words

00005c68 <.LCFI7>:
    5c68:	30 41       	ret			

00005c6a <.L13>:
            if (wkup_timing[i].data > 0)
    5c6a:	0e 4c       	mov	r12,	r14	;
    5c6c:	0e dd       	bis	r13,	r14	;
    5c6e:	4f 43       	clr.b	r15		;
    5c70:	0e 93       	cmp	#0,	r14	;r3 As==00
    5c72:	e1 27       	jz	$-60     	;abs 0x5c36

00005c74 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5c74:	18 42 22 1d 	mov	&0x1d22,r8	;0x1d22
    5c78:	0e 48       	mov	r8,	r14	;
    5c7a:	0f 43       	clr	r15		;

00005c7c <.Loc.155.1>:
    5c7c:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c7e:	0f 38       	jl	$+32     	;abs 0x5c9e
    5c80:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c82:	03 20       	jnz	$+8      	;abs 0x5c8a
    5c84:	07 4c       	mov	r12,	r7	;
    5c86:	0c 9e       	cmp	r14,	r12	;
    5c88:	0a 28       	jnc	$+22     	;abs 0x5c9e

00005c8a <.L35>:
    5c8a:	07 4c       	mov	r12,	r7	;
    5c8c:	0c 9e       	cmp	r14,	r12	;
    5c8e:	d2 23       	jnz	$-90     	;abs 0x5c34
    5c90:	0d 9f       	cmp	r15,	r13	;
    5c92:	d0 23       	jnz	$-94     	;abs 0x5c34
    5c94:	4f 43       	clr.b	r15		;

00005c96 <.Loc.155.1>:
    5c96:	da 92 24 1d 	cmp.b	&0x1d24,2(r10)	;0x1d24
    5c9a:	02 00 
    5c9c:	cc 2f       	jc	$-102    	;abs 0x5c36

00005c9e <.L21>:
                    min_wkup = wkup_timing[i].data;
    5c9e:	82 4c 22 1d 	mov	r12,	&0x1d22	;
    5ca2:	bb 3f       	jmp	$-136    	;abs 0x5c1a

00005ca4 <.L24>:
    else stop_timer();
    5ca4:	b0 12 da 64 	call	#25818		;#0x64da

00005ca8 <.LVL24>:
}
    5ca8:	de 3f       	jmp	$-66     	;abs 0x5c66

00005caa <set_wkup_timer>:

// sets a one-shot timer using Timer A2 
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    5caa:	2a 15       	pushm	#3,	r10	;16-bit words

00005cac <.LCFI9>:
    5cac:	21 83       	decd	r1		;

00005cae <.LCFI10>:
    5cae:	49 4c       	mov.b	r12,	r9	;

00005cb0 <.Loc.182.1>:
    uint8_t i,cmpl = 0;

    //fetch from persistent buffer to local variables 
    unpack_wkup_to_local();
    5cb0:	81 4d 00 00 	mov	r13,	0(r1)	;
    5cb4:	b0 12 40 5b 	call	#23360		;#0x5b40

00005cb8 <.LVL27>:

    //init the timer 
    //TODO:check if needed 
    stop_timer();
    5cb8:	b0 12 da 64 	call	#25818		;#0x64da

00005cbc <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    5cbc:	2e 41       	mov	@r1,	r14	;
    5cbe:	82 93 fc 1c 	cmp	#0,	&0x1cfc	;r3 As==00
    5cc2:	22 24       	jz	$+70     	;abs 0x5d08

00005cc4 <.Loc.192.1>:
    5cc4:	82 93 06 1d 	cmp	#0,	&0x1d06	;r3 As==00
    5cc8:	41 24       	jz	$+132    	;abs 0x5d4c

00005cca <.Loc.192.1>:
    5cca:	82 93 10 1d 	cmp	#0,	&0x1d10	;r3 As==00
    5cce:	41 24       	jz	$+132    	;abs 0x5d52

00005cd0 <.Loc.192.1>:
    
    }else{

        //buffer is full
        //TODO: ADD failcheck 
        wkup_timing[2].data = ticks;
    5cd0:	82 4e 14 1d 	mov	r14,	&0x1d14	;
    5cd4:	82 43 16 1d 	mov	#0,	&0x1d16	;r3 As==00

00005cd8 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    5cd8:	4f 43       	clr.b	r15		;
    5cda:	4d 43       	clr.b	r13		;
    5cdc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5cde:	b0 12 ca 65 	call	#26058		;#0x65ca

00005ce2 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    5ce2:	c2 49 12 1d 	mov.b	r9,	&0x1d12	;

00005ce6 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    5ce6:	4e 49       	mov.b	r9,	r14	;
    5ce8:	4d 43       	clr.b	r13		;
    5cea:	7c 40 03 00 	mov.b	#3,	r12	;
    5cee:	b0 12 1c 66 	call	#26140		;#0x661c

00005cf2 <.L47>:
        refresh_wkup_timers();
    5cf2:	b0 12 7a 5b 	call	#23418		;#0x5b7a

00005cf6 <.Loc.222.1>:
        refresh_wkup_timers();
    }

    _pers_timer_update_lock(WKUP);
    5cf6:	4c 43       	clr.b	r12		;
    5cf8:	b0 12 c8 66 	call	#26312		;#0x66c8

00005cfc <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    5cfc:	4c 43       	clr.b	r12		;
    5cfe:	b0 12 ae 67 	call	#26542		;#0x67ae

00005d02 <.Loc.224.1>:
}
    5d02:	21 53       	incd	r1		;

00005d04 <.LCFI11>:
    5d04:	28 17       	popm	#3,	r10	;16-bit words

00005d06 <.LCFI12>:
    5d06:	30 41       	ret			

00005d08 <.L44>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d08:	1a 42 fc 1c 	mov	&0x1cfc,r10	;0x1cfc

00005d0c <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5d0c:	0d 4a       	mov	r10,	r13	;

00005d0e <.L42>:
            wkup_timing[i].data = ticks;
    5d0e:	0c 4d       	mov	r13,	r12	;
    5d10:	5c 06       	rlam	#2,	r12	;
    5d12:	0c 5d       	add	r13,	r12	;
    5d14:	5c 02       	rlam	#1,	r12	;
    5d16:	08 4c       	mov	r12,	r8	;
    5d18:	8c 4e 00 1d 	mov	r14,	7424(r12); 0x1d00
    5d1c:	8c 43 02 1d 	mov	#0,	7426(r12);r3 As==00, 0x1d02

00005d20 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    5d20:	4f 43       	clr.b	r15		;
    5d22:	4d 43       	clr.b	r13		;
    5d24:	4c 4a       	mov.b	r10,	r12	;
    5d26:	b0 12 ca 65 	call	#26058		;#0x65ca

00005d2a <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    5d2a:	c8 49 fe 1c 	mov.b	r9,	7422(r8); 0x1cfe

00005d2e <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    5d2e:	4e 49       	mov.b	r9,	r14	;
    5d30:	4d 43       	clr.b	r13		;
    5d32:	4c 4a       	mov.b	r10,	r12	;
    5d34:	b0 12 1c 66 	call	#26140		;#0x661c

00005d38 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    5d38:	98 43 fc 1c 	mov	#1,	7420(r8);r3 As==01, 0x1cfc

00005d3c <.Loc.196.1>:
            wkup_timing[i].data = ticks;
    5d3c:	38 50 fc 1c 	add	#7420,	r8	;#0x1cfc

00005d40 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    5d40:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5d42:	4d 43       	clr.b	r13		;
    5d44:	4c 4a       	mov.b	r10,	r12	;
    5d46:	b0 12 66 66 	call	#26214		;#0x6666
    5d4a:	d3 3f       	jmp	$-88     	;abs 0x5cf2

00005d4c <.L45>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d4c:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005d4e <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5d4e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5d50:	de 3f       	jmp	$-66     	;abs 0x5d0e

00005d52 <.L46>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d52:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005d54 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5d54:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5d56:	db 3f       	jmp	$-72     	;abs 0x5d0e

00005d58 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    5d58:	4d 4c       	mov.b	r12,	r13	;

00005d5a <.Loc.236.1>:
    
    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    5d5a:	5c 92 e0 1c 	cmp.b	&0x1ce0,r12	;0x1ce0
    5d5e:	13 24       	jz	$+40     	;abs 0x5d86

00005d60 <.Loc.237.1>:
    5d60:	c2 9d ea 1c 	cmp.b	r13,	&0x1cea	;
    5d64:	13 24       	jz	$+40     	;abs 0x5d8c

00005d66 <.Loc.237.1>:
    5d66:	c2 9d f4 1c 	cmp.b	r13,	&0x1cf4	;
    5d6a:	0c 20       	jnz	$+26     	;abs 0x5d84

00005d6c <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5d6c:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005d6e <.LVL48>:
        if (xpr_timing[i].thread_id == thread_id){
    5d6e:	6e 43       	mov.b	#2,	r14	;r3 As==10

00005d70 <.L49>:
            xpr_timing[i].status = NOT_USED;
    5d70:	0d 4e       	mov	r14,	r13	;

00005d72 <.LVL50>:
    5d72:	5d 06       	rlam	#2,	r13	;
    5d74:	0d 5e       	add	r14,	r13	;
    5d76:	5d 02       	rlam	#1,	r13	;
    5d78:	8d 43 de 1c 	mov	#0,	7390(r13);r3 As==00, 0x1cde

00005d7c <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    5d7c:	4e 43       	clr.b	r14		;
    5d7e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5d80:	b0 12 66 66 	call	#26214		;#0x6666

00005d84 <.L48>:
            break;
        }    
    }

}
    5d84:	30 41       	ret			

00005d86 <.L51>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5d86:	4c 43       	clr.b	r12		;

00005d88 <.LVL53>:
        if (xpr_timing[i].thread_id == thread_id){
    5d88:	4e 43       	clr.b	r14		;
    5d8a:	f2 3f       	jmp	$-26     	;abs 0x5d70

00005d8c <.L52>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5d8c:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005d8e <.LVL55>:
        if (xpr_timing[i].thread_id == thread_id){
    5d8e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5d90:	ef 3f       	jmp	$-32     	;abs 0x5d70

00005d92 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    5d92:	1a 15       	pushm	#2,	r10	;16-bit words

00005d94 <.LCFI14>:
    5d94:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005d98 <.LCFI15>:
    5d98:	49 43       	clr.b	r9		;

00005d9a <.L54>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    5d9a:	0a 49       	mov	r9,	r10	;
    5d9c:	5a 06       	rlam	#2,	r10	;
    5d9e:	0a 59       	add	r9,	r10	;
    5da0:	5a 02       	rlam	#1,	r10	;
    5da2:	3a 50 de 1c 	add	#7390,	r10	;#0x1cde
    5da6:	6e 43       	mov.b	#2,	r14	;r3 As==10
    5da8:	4d 49       	mov.b	r9,	r13	;
    5daa:	0c 41       	mov	r1,	r12	;
    5dac:	b0 12 f0 67 	call	#26608		;#0x67f0
    5db0:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5db4:	0d 41       	mov	r1,	r13	;
    5db6:	0c 4a       	mov	r10,	r12	;
    5db8:	b0 12 76 69 	call	#26998		;#0x6976

00005dbc <.LVL59>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5dbc:	19 53       	inc	r9		;

00005dbe <.Loc.252.1>:
    5dbe:	39 90 03 00 	cmp	#3,	r9	;
    5dc2:	eb 23       	jnz	$-40     	;abs 0x5d9a

00005dc4 <.Loc.257.1>:
    }

}
    5dc4:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005dc8 <.LCFI16>:
    5dc8:	19 17       	popm	#2,	r10	;16-bit words

00005dca <.LCFI17>:
    5dca:	30 41       	ret			

00005dcc <refresh_xpr_timers>:

void refresh_xpr_timers(){
    5dcc:	6a 15       	pushm	#7,	r10	;16-bit words

00005dce <.LCFI18>:
    5dce:	47 43       	clr.b	r7		;

00005dd0 <.Loc.261.1>:
    
    uint8_t i,first = 1;
    uint8_t nxt_xpr;
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    5dd0:	3a 40 de 1c 	mov	#7390,	r10	;#0x1cde

00005dd4 <.Loc.261.1>:
    uint8_t i,first = 1;
    5dd4:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005dd6 <.Loc.265.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5dd6:	46 43       	clr.b	r6		;

00005dd8 <.L64>:
    {

        if (xpr_timing[i].status == USED)
    5dd8:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    5ddc:	4a 20       	jnz	$+150    	;abs 0x5e72

00005dde <.Loc.271.1>:
        {
            
            if (first)
    5dde:	14 4a 04 00 	mov	4(r10),	r4	;
    5de2:	15 4a 06 00 	mov	6(r10),	r5	;

00005de6 <.Loc.271.1>:
    5de6:	0c 93       	cmp	#0,	r12	;r3 As==00
    5de8:	04 24       	jz	$+10     	;abs 0x5df2

00005dea <.LVL63>:
            {
                min_xpr = xpr_timing[i].data;
                nxt_xpr = xpr_timing[i].thread_id;
    5dea:	57 4a 02 00 	mov.b	2(r10),	r7	;

00005dee <.LVL64>:
                min_xpr = xpr_timing[i].data;
    5dee:	09 44       	mov	r4,	r9	;
    5df0:	08 45       	mov	r5,	r8	;

00005df2 <.L58>:
                first = 0;
            }
            
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    5df2:	b0 12 74 65 	call	#25972		;#0x6574

00005df6 <.Loc.278.1>:
    5df6:	0e 44       	mov	r4,	r14	;
    5df8:	0f 45       	mov	r5,	r15	;
    5dfa:	0e 8c       	sub	r12,	r14	;
    5dfc:	0f 7d       	subc	r13,	r15	;

00005dfe <.Loc.278.1>:
    5dfe:	8a 4e 04 00 	mov	r14,	4(r10)	;
    5e02:	8a 4f 06 00 	mov	r15,	6(r10)	;

00005e06 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    5e06:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5e08:	4c 46       	mov.b	r6,	r12	;
    5e0a:	b0 12 ca 65 	call	#26058		;#0x65ca

00005e0e <.Loc.281.1>:

            if (xpr_timing[i].data <= 0)
    5e0e:	4c 43       	clr.b	r12		;
    5e10:	1c 9a 06 00 	cmp	6(r10),	r12	;
    5e14:	10 38       	jl	$+34     	;abs 0x5e36
    5e16:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    5e1a:	03 20       	jnz	$+8      	;abs 0x5e22
    5e1c:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    5e20:	0a 20       	jnz	$+22     	;abs 0x5e36

00005e22 <.L70>:
            {
                //evict thread 
                //TODO:fix bug to disable ISR
                //TODO:find a more elegant way??
                //__stop_thread(__get_thread(xpr_timing[i].thread_id));
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    5e22:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    5e26:	b0 12 54 59 	call	#22868		;#0x5954
    5e2a:	b0 12 fa 58 	call	#22778		;#0x58fa

00005e2e <.Loc.289.1>:
                //update struct
                clear_xpr_status(xpr_timing[i].thread_id);
    5e2e:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    5e32:	b0 12 58 5d 	call	#23896		;#0x5d58

00005e36 <.L59>:
            }

            if (xpr_timing[i].data > 0)
    5e36:	1e 4a 04 00 	mov	4(r10),	r14	;
    5e3a:	1d 4a 06 00 	mov	6(r10),	r13	;

00005e3e <.Loc.292.1>:
    5e3e:	4c 43       	clr.b	r12		;
    5e40:	0c 9d       	cmp	r13,	r12	;
    5e42:	04 38       	jl	$+10     	;abs 0x5e4c
    5e44:	0d 93       	cmp	#0,	r13	;r3 As==00
    5e46:	14 20       	jnz	$+42     	;abs 0x5e70
    5e48:	0e 93       	cmp	#0,	r14	;r3 As==00
    5e4a:	12 24       	jz	$+38     	;abs 0x5e70

00005e4c <.L71>:
            {   //TODO:priority convention
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    5e4c:	0d 98       	cmp	r8,	r13	;
    5e4e:	0c 38       	jl	$+26     	;abs 0x5e68
    5e50:	08 9d       	cmp	r13,	r8	;
    5e52:	02 20       	jnz	$+6      	;abs 0x5e58
    5e54:	0e 99       	cmp	r9,	r14	;
    5e56:	08 28       	jnc	$+18     	;abs 0x5e68

00005e58 <.L72>:
    5e58:	4c 43       	clr.b	r12		;

00005e5a <.Loc.294.1>:
    5e5a:	0e 99       	cmp	r9,	r14	;
    5e5c:	0a 20       	jnz	$+22     	;abs 0x5e72
    5e5e:	0d 98       	cmp	r8,	r13	;
    5e60:	08 20       	jnz	$+18     	;abs 0x5e72

00005e62 <.Loc.294.1>:
    5e62:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    5e66:	05 2c       	jc	$+12     	;abs 0x5e72

00005e68 <.L62>:
                {
                    min_xpr = xpr_timing[i].data;
                    nxt_xpr = xpr_timing[i].thread_id;
    5e68:	57 4a 02 00 	mov.b	2(r10),	r7	;

00005e6c <.LVL72>:
    5e6c:	09 4e       	mov	r14,	r9	;
    5e6e:	08 4d       	mov	r13,	r8	;

00005e70 <.L67>:
    5e70:	4c 43       	clr.b	r12		;

00005e72 <.L57>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5e72:	4d 46       	mov.b	r6,	r13	;
    5e74:	5d 53       	inc.b	r13		;
    5e76:	46 4d       	mov.b	r13,	r6	;

00005e78 <.LVL75>:
    5e78:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005e7c <.Loc.265.1>:
    5e7c:	7d 90 03 00 	cmp.b	#3,	r13	;
    5e80:	ab 23       	jnz	$-168    	;abs 0x5dd8

00005e82 <.Loc.303.1>:
                }
            }
       }
    }

    if (!first)
    5e82:	0c 93       	cmp	#0,	r12	;r3 As==00
    5e84:	0d 20       	jnz	$+28     	;abs 0x5ea0

00005e86 <.Loc.304.1>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    5e86:	4d 47       	mov.b	r7,	r13	;

00005e88 <.LVL76>:
    5e88:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005e8a <.LVL77>:
    5e8a:	b0 12 ac 66 	call	#26284		;#0x66ac

00005e8e <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr); 
    5e8e:	0d 49       	mov	r9,	r13	;
    5e90:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5e92:	b0 12 ba 66 	call	#26298		;#0x66ba

00005e96 <.Loc.308.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    5e96:	0c 49       	mov	r9,	r12	;
    5e98:	b0 12 00 65 	call	#25856		;#0x6500

00005e9c <.L56>:
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();

}
    5e9c:	64 17       	popm	#7,	r10	;16-bit words

00005e9e <.LCFI19>:
    5e9e:	30 41       	ret			

00005ea0 <.L65>:
    else stop_timer_xpr();
    5ea0:	b0 12 16 65 	call	#25878		;#0x6516

00005ea4 <.LVL82>:
}
    5ea4:	fb 3f       	jmp	$-8      	;abs 0x5e9c

00005ea6 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    5ea6:	5a 15       	pushm	#6,	r10	;16-bit words

00005ea8 <.LCFI21>:
    5ea8:	48 4c       	mov.b	r12,	r8	;
    5eaa:	09 4d       	mov	r13,	r9	;
    5eac:	07 4e       	mov	r14,	r7	;

00005eae <.Loc.318.1>:

    uint8_t i,cmpl = 0;

    //__set_xpr_timer(__get_thread(thread_id), ticks);

    unpack_xpr_to_local();
    5eae:	b0 12 92 5d 	call	#23954		;#0x5d92

00005eb2 <.LVL85>:

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    5eb2:	82 93 de 1c 	cmp	#0,	&0x1cde	;r3 As==00
    5eb6:	1b 24       	jz	$+56     	;abs 0x5eee

00005eb8 <.Loc.324.1>:
    5eb8:	82 93 e8 1c 	cmp	#0,	&0x1ce8	;r3 As==00
    5ebc:	43 24       	jz	$+136    	;abs 0x5f44

00005ebe <.Loc.324.1>:
    5ebe:	82 93 f2 1c 	cmp	#0,	&0x1cf2	;r3 As==00
    5ec2:	43 24       	jz	$+136    	;abs 0x5f4a

00005ec4 <.Loc.324.1>:
    
    }else{

        //failure 
        //TODO: ADD fail check 
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    5ec4:	0e 49       	mov	r9,	r14	;
    5ec6:	0f 47       	mov	r7,	r15	;
    5ec8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5eca:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5ecc:	b0 12 ca 65 	call	#26058		;#0x65ca

00005ed0 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    5ed0:	4e 48       	mov.b	r8,	r14	;
    5ed2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5ed4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5ed6:	b0 12 1c 66 	call	#26140		;#0x661c

00005eda <.L83>:
        refresh_xpr_timers();
    5eda:	b0 12 cc 5d 	call	#24012		;#0x5dcc

00005ede <.Loc.352.1>:
        refresh_xpr_timers();
    }

    _pers_timer_update_lock(XPR);
    5ede:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5ee0:	b0 12 c8 66 	call	#26312		;#0x66c8

00005ee4 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    5ee4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5ee6:	b0 12 ae 67 	call	#26542		;#0x67ae

00005eea <.Loc.354.1>:
}
    5eea:	55 17       	popm	#6,	r10	;16-bit words

00005eec <.LCFI22>:
    5eec:	30 41       	ret			

00005eee <.L80>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    5eee:	1a 42 de 1c 	mov	&0x1cde,r10	;0x1cde

00005ef2 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    5ef2:	06 4a       	mov	r10,	r6	;

00005ef4 <.L78>:
            xpr_timing[i].data = ticks + __get_time();
    5ef4:	35 40 74 65 	mov	#25972,	r5	;#0x6574
    5ef8:	85 12       	call	r5		;

00005efa <.Loc.328.1>:
    5efa:	0e 46       	mov	r6,	r14	;
    5efc:	5e 06       	rlam	#2,	r14	;
    5efe:	0e 56       	add	r6,	r14	;
    5f00:	5e 02       	rlam	#1,	r14	;
    5f02:	06 4e       	mov	r14,	r6	;

00005f04 <.Loc.328.1>:
    5f04:	0c 59       	add	r9,	r12	;
    5f06:	8e 4c e2 1c 	mov	r12,	7394(r14); 0x1ce2
    5f0a:	0d 67       	addc	r7,	r13	;
    5f0c:	8e 4d e4 1c 	mov	r13,	7396(r14); 0x1ce4

00005f10 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    5f10:	85 12       	call	r5		;

00005f12 <.Loc.329.1>:
    5f12:	0e 4c       	mov	r12,	r14	;
    5f14:	0e 59       	add	r9,	r14	;
    5f16:	0f 4d       	mov	r13,	r15	;
    5f18:	0f 67       	addc	r7,	r15	;
    5f1a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f1c:	4c 4a       	mov.b	r10,	r12	;
    5f1e:	b0 12 ca 65 	call	#26058		;#0x65ca

00005f22 <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    5f22:	c6 48 e0 1c 	mov.b	r8,	7392(r6); 0x1ce0

00005f26 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    5f26:	4e 48       	mov.b	r8,	r14	;
    5f28:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f2a:	4c 4a       	mov.b	r10,	r12	;
    5f2c:	b0 12 1c 66 	call	#26140		;#0x661c

00005f30 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    5f30:	96 43 de 1c 	mov	#1,	7390(r6);r3 As==01, 0x1cde

00005f34 <.Loc.328.1>:
            xpr_timing[i].data = ticks + __get_time();
    5f34:	36 50 de 1c 	add	#7390,	r6	;#0x1cde

00005f38 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    5f38:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f3a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f3c:	4c 4a       	mov.b	r10,	r12	;
    5f3e:	b0 12 66 66 	call	#26214		;#0x6666
    5f42:	cb 3f       	jmp	$-104    	;abs 0x5eda

00005f44 <.L81>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    5f44:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005f46 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    5f46:	56 43       	mov.b	#1,	r6	;r3 As==01
    5f48:	d5 3f       	jmp	$-84     	;abs 0x5ef4

00005f4a <.L82>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    5f4a:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005f4c <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    5f4c:	66 43       	mov.b	#2,	r6	;r3 As==10
    5f4e:	d2 3f       	jmp	$-90     	;abs 0x5ef4

00005f50 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    5f50:	0a 15       	pushm	#1,	r10	;16-bit words

00005f52 <.LCFI24>:
    5f52:	4a 4c       	mov.b	r12,	r10	;

00005f54 <.Loc.361.1>:
   
    //__set_xpr_timer(__get_thread(thread_id),0);

    unpack_xpr_to_local();
    5f54:	b0 12 92 5d 	call	#23954		;#0x5d92

00005f58 <.LVL104>:

    clear_xpr_status(thread_id);
    5f58:	4c 4a       	mov.b	r10,	r12	;
    5f5a:	b0 12 58 5d 	call	#23896		;#0x5d58

00005f5e <.Loc.366.1>:

    //TODO:care infinite loop?
    refresh_xpr_timers();
    5f5e:	b0 12 cc 5d 	call	#24012		;#0x5dcc

00005f62 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    5f62:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5f64:	b0 12 c8 66 	call	#26312		;#0x66c8

00005f68 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    5f68:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5f6a:	b0 12 ae 67 	call	#26542		;#0x67ae

00005f6e <.Loc.371.1>:

}
    5f6e:	0a 17       	popm	#1,	r10	;16-bit words

00005f70 <.LCFI25>:
    5f70:	30 41       	ret			

00005f72 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    5f72:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005f76 <.LCFI26>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    5f76:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f78:	4d 43       	clr.b	r13		;
    5f7a:	0c 41       	mov	r1,	r12	;
    5f7c:	b0 12 f0 67 	call	#26608		;#0x67f0
    5f80:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5f84:	0d 41       	mov	r1,	r13	;
    5f86:	3c 40 d4 1c 	mov	#7380,	r12	;#0x1cd4
    5f8a:	b0 12 76 69 	call	#26998		;#0x6976

00005f8e <.Loc.383.1>:
    }

}
    5f8e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005f92 <.LCFI27>:
    5f92:	30 41       	ret			

00005f94 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    5f94:	2a 15       	pushm	#3,	r10	;16-bit words

00005f96 <.LCFI28>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    5f96:	92 93 d4 1c 	cmp	#1,	&0x1cd4	;r3 As==01
    5f9a:	7d 20       	jnz	$+252    	;abs 0x6096

00005f9c <.Loc.463.1>:
        {
            
            if (first)
            {
                min_pdc = pdc_timing[i].data;
    5f9c:	18 42 d8 1c 	mov	&0x1cd8,r8	;0x1cd8
    5fa0:	19 42 da 1c 	mov	&0x1cda,r9	;0x1cda

00005fa4 <.Loc.465.1>:
    5fa4:	82 48 1a 1d 	mov	r8,	&0x1d1a	;

00005fa8 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    5fa8:	d2 42 d6 1c 	mov.b	&0x1cd6,&0x1d1c	;0x1cd6
    5fac:	1c 1d 

00005fae <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time(); 
    5fae:	b0 12 74 65 	call	#25972		;#0x6574

00005fb2 <.Loc.471.1>:
    5fb2:	0e 48       	mov	r8,	r14	;
    5fb4:	0f 49       	mov	r9,	r15	;
    5fb6:	0e 8c       	sub	r12,	r14	;
    5fb8:	0f 7d       	subc	r13,	r15	;

00005fba <.Loc.471.1>:
    5fba:	82 4e d8 1c 	mov	r14,	&0x1cd8	;
    5fbe:	82 4f da 1c 	mov	r15,	&0x1cda	;

00005fc2 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    5fc2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5fc4:	4c 43       	clr.b	r12		;
    5fc6:	b0 12 ca 65 	call	#26058		;#0x65ca

00005fca <.Loc.474.1>:
            
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    5fca:	1c 42 d8 1c 	mov	&0x1cd8,r12	;0x1cd8
    5fce:	1d 42 da 1c 	mov	&0x1cda,r13	;0x1cda

00005fd2 <.Loc.474.1>:
    5fd2:	09 4d       	mov	r13,	r9	;
    5fd4:	0d 93       	cmp	#0,	r13	;r3 As==00
    5fd6:	44 34       	jge	$+138    	;abs 0x6060

00005fd8 <.Loc.474.1>:
    5fd8:	5e 42 25 1d 	mov.b	&0x1d25,r14	;0x1d25
    5fdc:	08 43       	clr	r8		;
    5fde:	08 8e       	sub	r14,	r8	;
    5fe0:	0e 48       	mov	r8,	r14	;
    5fe2:	0f 48       	mov	r8,	r15	;
    5fe4:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005fe8 <.Loc.474.1>:
    5fe8:	0f 9d       	cmp	r13,	r15	;
    5fea:	04 38       	jl	$+10     	;abs 0x5ff4

00005fec <.Loc.474.1>:
    5fec:	0d 9f       	cmp	r15,	r13	;
    5fee:	20 20       	jnz	$+66     	;abs 0x6030
    5ff0:	08 9c       	cmp	r12,	r8	;
    5ff2:	1e 2c       	jc	$+62     	;abs 0x6030

00005ff4 <.L100>:
            {
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    5ff4:	1a 42 1a 1d 	mov	&0x1d1a,r10	;0x1d1a
    5ff8:	08 4a       	mov	r10,	r8	;
    5ffa:	09 43       	clr	r9		;

00005ffc <.Loc.476.1>:
    5ffc:	4e 43       	clr.b	r14		;
    5ffe:	4f 43       	clr.b	r15		;
    6000:	0e 8c       	sub	r12,	r14	;
    6002:	0f 7d       	subc	r13,	r15	;

00006004 <.Loc.476.1>:
    6004:	0f 93       	cmp	#0,	r15	;r3 As==00
    6006:	0c 38       	jl	$+26     	;abs 0x6020
    6008:	0f 93       	cmp	#0,	r15	;r3 As==00
    600a:	02 20       	jnz	$+6      	;abs 0x6010
    600c:	0e 98       	cmp	r8,	r14	;
    600e:	08 28       	jnc	$+18     	;abs 0x6020

00006010 <.L101>:
    6010:	08 9e       	cmp	r14,	r8	;
    6012:	17 20       	jnz	$+48     	;abs 0x6042
    6014:	0f 93       	cmp	#0,	r15	;r3 As==00
    6016:	15 20       	jnz	$+44     	;abs 0x6042

00006018 <.Loc.476.1>:
    6018:	d2 92 1c 1d 	cmp.b	&0x1d1c,&0x1cd6	;0x1d1c
    601c:	d6 1c 
    601e:	11 2c       	jc	$+36     	;abs 0x6042

00006020 <.L92>:
                {
                    min_pdc = -pdc_timing[i].data;
    6020:	4e 43       	clr.b	r14		;
    6022:	0e 8c       	sub	r12,	r14	;
    6024:	82 4e 1a 1d 	mov	r14,	&0x1d1a	;

00006028 <.L107>:
            if (pdc_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
                {
                    min_pdc = pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
    6028:	d2 42 d6 1c 	mov.b	&0x1cd6,&0x1d1c	;0x1cd6
    602c:	1c 1d 

0000602e <.Loc.494.1>:
                }
            }
       }
    }

    if (!first)
    602e:	09 3c       	jmp	$+20     	;abs 0x6042

00006030 <.L90>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    6030:	09 4d       	mov	r13,	r9	;
    6032:	0d 9f       	cmp	r15,	r13	;
    6034:	04 38       	jl	$+10     	;abs 0x603e
    6036:	0f 9d       	cmp	r13,	r15	;
    6038:	04 20       	jnz	$+10     	;abs 0x6042
    603a:	0c 98       	cmp	r8,	r12	;
    603c:	02 2c       	jc	$+6      	;abs 0x6042

0000603e <.L102>:
    603e:	82 43 d4 1c 	mov	#0,	&0x1cd4	;r3 As==00

00006042 <.L94>:
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    6042:	5d 42 1c 1d 	mov.b	&0x1d1c,r13	;0x1d1c
    6046:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6048:	b0 12 ac 66 	call	#26284		;#0x66ac

0000604c <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    604c:	1d 42 1a 1d 	mov	&0x1d1a,r13	;0x1d1a
    6050:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6052:	b0 12 ba 66 	call	#26298		;#0x66ba

00006056 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    6056:	1c 42 1a 1d 	mov	&0x1d1a,r12	;0x1d1a
    605a:	b0 12 1c 65 	call	#25884		;#0x651c

0000605e <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    605e:	1d 3c       	jmp	$+60     	;abs 0x609a

00006060 <.L88>:
            if (pdc_timing[i].data > 0)
    6060:	0e 4c       	mov	r12,	r14	;
    6062:	0e dd       	bis	r13,	r14	;
    6064:	0e 93       	cmp	#0,	r14	;r3 As==00
    6066:	ed 27       	jz	$-36     	;abs 0x6042

00006068 <.Loc.485.1>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6068:	1a 42 1a 1d 	mov	&0x1d1a,r10	;0x1d1a
    606c:	0e 4a       	mov	r10,	r14	;
    606e:	0f 43       	clr	r15		;

00006070 <.Loc.485.1>:
    6070:	0d 93       	cmp	#0,	r13	;r3 As==00
    6072:	0e 38       	jl	$+30     	;abs 0x6090
    6074:	0d 93       	cmp	#0,	r13	;r3 As==00
    6076:	03 20       	jnz	$+8      	;abs 0x607e
    6078:	09 4c       	mov	r12,	r9	;
    607a:	0c 9e       	cmp	r14,	r12	;
    607c:	09 28       	jnc	$+20     	;abs 0x6090

0000607e <.L103>:
    607e:	09 4c       	mov	r12,	r9	;
    6080:	0c 9e       	cmp	r14,	r12	;
    6082:	df 23       	jnz	$-64     	;abs 0x6042
    6084:	0d 9f       	cmp	r15,	r13	;
    6086:	dd 23       	jnz	$-68     	;abs 0x6042

00006088 <.Loc.485.1>:
    6088:	d2 92 1c 1d 	cmp.b	&0x1d1c,&0x1cd6	;0x1d1c
    608c:	d6 1c 
    608e:	d9 2f       	jc	$-76     	;abs 0x6042

00006090 <.L97>:
                    min_pdc = pdc_timing[i].data;
    6090:	82 4c 1a 1d 	mov	r12,	&0x1d1a	;
    6094:	c9 3f       	jmp	$-108    	;abs 0x6028

00006096 <.L87>:
    else stop_timer();
    6096:	b0 12 da 64 	call	#25818		;#0x64da

0000609a <.L86>:
}
    609a:	28 17       	popm	#3,	r10	;16-bit words

0000609c <.LCFI29>:
    609c:	30 41       	ret			

0000609e <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    609e:	2a 15       	pushm	#3,	r10	;16-bit words

000060a0 <.LCFI30>:
    60a0:	49 4c       	mov.b	r12,	r9	;
    60a2:	0a 4d       	mov	r13,	r10	;

000060a4 <.Loc.392.1>:
    unpack_pdc_to_local();
    60a4:	b0 12 72 5f 	call	#24434		;#0x5f72

000060a8 <.LVL127>:
        if (pdc_timing[i].status == NOT_USED)
    60a8:	82 93 d4 1c 	cmp	#0,	&0x1cd4	;r3 As==00
    60ac:	2e 20       	jnz	$+94     	;abs 0x610a

000060ae <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    60ae:	38 40 54 59 	mov	#22868,	r8	;#0x5954
    60b2:	4c 49       	mov.b	r9,	r12	;
    60b4:	88 12       	call	r8		;
    60b6:	0d 4a       	mov	r10,	r13	;
    60b8:	b0 12 20 59 	call	#22816		;#0x5920

000060bc <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    60bc:	4c 49       	mov.b	r9,	r12	;
    60be:	88 12       	call	r8		;
    60c0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    60c2:	b0 12 26 59 	call	#22822		;#0x5926

000060c6 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    60c6:	0e 4a       	mov	r10,	r14	;
    60c8:	4f 43       	clr.b	r15		;
    60ca:	5d 43       	mov.b	#1,	r13	;r3 As==01
    60cc:	4c 43       	clr.b	r12		;
    60ce:	b0 12 ca 65 	call	#26058		;#0x65ca

000060d2 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    60d2:	82 4a d8 1c 	mov	r10,	&0x1cd8	;
    60d6:	82 43 da 1c 	mov	#0,	&0x1cda	;r3 As==00

000060da <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    60da:	4e 49       	mov.b	r9,	r14	;
    60dc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    60de:	4c 43       	clr.b	r12		;
    60e0:	b0 12 1c 66 	call	#26140		;#0x661c

000060e4 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    60e4:	c2 49 d6 1c 	mov.b	r9,	&0x1cd6	;

000060e8 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    60e8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    60ea:	5d 43       	mov.b	#1,	r13	;r3 As==01
    60ec:	4c 43       	clr.b	r12		;
    60ee:	b0 12 66 66 	call	#26214		;#0x6666

000060f2 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    60f2:	92 43 d4 1c 	mov	#1,	&0x1cd4	;r3 As==01

000060f6 <.L111>:
        refresh_pdc_timers();
    60f6:	b0 12 94 5f 	call	#24468		;#0x5f94

000060fa <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    60fa:	5c 43       	mov.b	#1,	r12	;r3 As==01
    60fc:	b0 12 c8 66 	call	#26312		;#0x66c8

00006100 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    6100:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6102:	b0 12 ae 67 	call	#26542		;#0x67ae

00006106 <.Loc.435.1>:
}
    6106:	28 17       	popm	#3,	r10	;16-bit words

00006108 <.LCFI31>:
    6108:	30 41       	ret			

0000610a <.L109>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    610a:	82 4a d8 1c 	mov	r10,	&0x1cd8	;
    610e:	82 43 da 1c 	mov	#0,	&0x1cda	;r3 As==00

00006112 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    6112:	0e 4a       	mov	r10,	r14	;
    6114:	4f 43       	clr.b	r15		;
    6116:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6118:	4c 43       	clr.b	r12		;
    611a:	b0 12 ca 65 	call	#26058		;#0x65ca

0000611e <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    611e:	c2 49 d6 1c 	mov.b	r9,	&0x1cd6	;

00006122 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    6122:	4e 49       	mov.b	r9,	r14	;
    6124:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6126:	4c 43       	clr.b	r12		;
    6128:	b0 12 1c 66 	call	#26140		;#0x661c
    612c:	e4 3f       	jmp	$-54     	;abs 0x60f6

0000612e <clear_pdc_status>:
void clear_pdc_status(uint8_t thread_id){
    
    uint8_t i; 
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    612e:	5c 92 d6 1c 	cmp.b	&0x1cd6,r12	;0x1cd6
    6132:	07 20       	jnz	$+16     	;abs 0x6142

00006134 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    6134:	82 43 d4 1c 	mov	#0,	&0x1cd4	;r3 As==00

00006138 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    6138:	4e 43       	clr.b	r14		;
    613a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    613c:	4c 43       	clr.b	r12		;

0000613e <.LVL144>:
    613e:	b0 12 66 66 	call	#26214		;#0x6666

00006142 <.L112>:

        } 
    }
}
    6142:	30 41       	ret			

00006144 <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    6144:	0a 15       	pushm	#1,	r10	;16-bit words

00006146 <.LCFI33>:
    6146:	4a 4c       	mov.b	r12,	r10	;

00006148 <.Loc.440.1>:
    unpack_pdc_to_local();
    6148:	b0 12 72 5f 	call	#24434		;#0x5f72

0000614c <.LVL147>:
    clear_pdc_status(thread_id);
    614c:	4c 4a       	mov.b	r10,	r12	;
    614e:	b0 12 2e 61 	call	#24878		;#0x612e

00006152 <.Loc.445.1>:
    refresh_pdc_timers();
    6152:	b0 12 94 5f 	call	#24468		;#0x5f94

00006156 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    6156:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6158:	b0 12 c8 66 	call	#26312		;#0x66c8

0000615c <.Loc.448.1>:
    _pers_timer_commit(XPR);
    615c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    615e:	b0 12 ae 67 	call	#26542		;#0x67ae

00006162 <.Loc.450.1>:
}
    6162:	0a 17       	popm	#1,	r10	;16-bit words

00006164 <.LCFI34>:
    6164:	30 41       	ret			

00006166 <main>:
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    6166:	b0 12 18 64 	call	#25624		;#0x6418

0000616a <.Loc.46.1>:

	// if this is the first boot
	if(!__inited){
    616a:	c2 93 e6 4d 	cmp.b	#0,	&0x4de6	;r3 As==00
    616e:	08 20       	jnz	$+18     	;abs 0x6180

00006170 <.Loc.48.1>:
	    // init the scheduler state
	    __scheduler_boot_init();
    6170:	b0 12 3a 58 	call	#22586		;#0x583a

00006174 <.Loc.50.1>:
	    // init the event handler
	    __events_boot_init();
    6174:	b0 12 ce 61 	call	#25038		;#0x61ce

00006178 <.Loc.57.1>:
	    __get_time_init();
	    //init the timers
	    __timers_init();
#endif
	    // init the applications
	    __app_init();
    6178:	b0 12 42 55 	call	#21826		;#0x5542

0000617c <.Loc.59.1>:
	    // the first and initial boot is finished
	    __inited = 1;
    617c:	d2 43 e6 4d 	mov.b	#1,	&0x4de6	;r3 As==01

00006180 <.L2>:
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    6180:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006184 <.Loc.68.1>:
    6184:	
00006186 <L0^A>:
    6186:	04 02       	mova	@r2,	r4	;

00006188 <.Loc.68.1>:
    6188:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000618c <.Loc.68.1>:
    __port_init(1, 4); // Task Execution
    618c:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6190:	02 02 

00006192 <.Loc.69.1>:
    6192:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    6196:	04 02 

00006198 <.Loc.69.1>:
    6198:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    619c:	02 02 

0000619e <.Loc.69.1>:
    __port_init(3, 5); // Task commit
    619e:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    61a2:	22 02 

000061a4 <.Loc.70.1>:
    61a4:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    61a8:	24 02 

000061aa <.Loc.70.1>:
    61aa:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    61ae:	22 02 

000061b0 <.Loc.70.1>:
    __port_init(3, 6); // Task buffer copy
    61b0:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    61b4:	22 02 

000061b6 <.Loc.71.1>:
    61b6:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    61ba:	24 02 

000061bc <.Loc.71.1>:
    61bc:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    61c0:	22 02 

000061c2 <.Loc.71.1>:
#endif

	// will be called at each reboot of the application
	__app_reboot();
    61c2:	b0 12 26 58 	call	#22566		;#0x5826

000061c6 <.Loc.78.1>:

	// activate the scheduler
	__scheduler_run();
    61c6:	b0 12 66 59 	call	#22886		;#0x5966

000061ca <.Loc.80.1>:

	return 0;
}
    61ca:	4c 43       	clr.b	r12		;
    61cc:	30 41       	ret			

000061ce <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    61ce:	1a 15       	pushm	#2,	r10	;16-bit words

000061d0 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    61d0:	3a 40 68 53 	mov	#21352,	r10	;#0x5368
    61d4:	39 40 e8 4d 	mov	#19944,	r9	;#0x4de8

000061d8 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    61d8:	0c 4a       	mov	r10,	r12	;
    61da:	b0 12 fa 62 	call	#25338		;#0x62fa

000061de <.Loc.56.1>:
        _popped[i] = NULL;
    61de:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

000061e2 <.Loc.53.1>:
    for(i=MAX_THREADS;i>0;i--){
    61e2:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    61e6:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000061ea <.Loc.53.1>:
    61ea:	3a 90 68 4e 	cmp	#20072,	r10	;#0x4e68
    61ee:	f4 23       	jnz	$-22     	;abs 0x61d8

000061f0 <.Loc.58.1>:
    }
}
    61f0:	19 17       	popm	#2,	r10	;16-bit words

000061f2 <.LCFI1>:
    61f2:	30 41       	ret			

000061f4 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    61f4:	5c 42 74 53 	mov.b	&0x5374,r12	;0x5374
    61f8:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    61fa:	13 24       	jz	$+40     	;abs 0x6222
    61fc:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    61fe:	1e 24       	jz	$+62     	;abs 0x623c
    6200:	0c 93       	cmp	#0,	r12	;r3 As==00
    6202:	29 20       	jnz	$+84     	;abs 0x6256

00006204 <.Loc.65.1>:
    case EVENT_INSERT:
        __perqueue_push(&_events[_thread->priority], &_event);
    6204:	1d 42 72 53 	mov	&0x5372,r13	;0x5372

00006208 <.Loc.65.1>:
    6208:	6c 4d       	mov.b	@r13,	r12	;
    620a:	5c 06       	rlam	#2,	r12	;
    620c:	6d 4d       	mov.b	@r13,	r13	;
    620e:	0c 5d       	add	r13,	r12	;
    6210:	5c 06       	rlam	#2,	r12	;
    6212:	3d 40 68 53 	mov	#21352,	r13	;#0x5368
    6216:	3c 50 68 4e 	add	#20072,	r12	;#0x4e68
    621a:	b0 12 56 63 	call	#25430		;#0x6356

0000621e <.Loc.66.1>:
        _status = EVENT_COMMIT;
    621e:	d2 43 74 53 	mov.b	#1,	&0x5374	;r3 As==01

00006222 <.L5>:
    case EVENT_COMMIT:
        __perqueue_push_commit(&_events[_thread->priority]);
    6222:	1d 42 72 53 	mov	&0x5372,r13	;0x5372

00006226 <.Loc.68.1>:
    6226:	6c 4d       	mov.b	@r13,	r12	;
    6228:	5c 06       	rlam	#2,	r12	;
    622a:	6d 4d       	mov.b	@r13,	r13	;
    622c:	0c 5d       	add	r13,	r12	;
    622e:	5c 06       	rlam	#2,	r12	;
    6230:	3c 50 68 4e 	add	#20072,	r12	;#0x4e68
    6234:	b0 12 8c 63 	call	#25484		;#0x638c

00006238 <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    6238:	e2 43 74 53 	mov.b	#2,	&0x5374	;r3 As==10

0000623c <.L6>:
    case EVENT_SIGNAL:
        // if the thread is sleeping, activate it!
        if(_thread->state == THREAD_STOPPED){
    623c:	1c 42 72 53 	mov	&0x5372,r12	;0x5372
    6240:	1c 4c 02 00 	mov	2(r12),	r12	;

00006244 <.Loc.72.1>:
    6244:	3c 92       	cmp	#8,	r12	;r2 As==11
    6246:	04 20       	jnz	$+10     	;abs 0x6250

00006248 <.Loc.73.1>:
            __start_thread(_thread);
    6248:	1c 42 72 53 	mov	&0x5372,r12	;0x5372
    624c:	b0 12 38 59 	call	#22840		;#0x5938

00006250 <.L8>:
        }
        _status = EVENT_DONE;
    6250:	f2 40 03 00 	mov.b	#3,	&0x5374	;
    6254:	74 53 

00006256 <.L4>:
    }
}
    6256:	30 41       	ret			

00006258 <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    6258:	1d 42 72 53 	mov	&0x5372,r13	;0x5372

0000625c <.Loc.81.1>:
    625c:	6c 4d       	mov.b	@r13,	r12	;

0000625e <.LVL7>:
    625e:	5c 06       	rlam	#2,	r12	;
    6260:	6d 4d       	mov.b	@r13,	r13	;
    6262:	0c 5d       	add	r13,	r12	;
    6264:	5c 06       	rlam	#2,	r12	;
    6266:	3c 50 68 4e 	add	#20072,	r12	;#0x4e68
    626a:	b0 12 2a 63 	call	#25386		;#0x632a

0000626e <.Loc.82.1>:
}
    626e:	30 41       	ret			

00006270 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6270:	82 4c 72 53 	mov	r12,	&0x5372	;

00006274 <.Loc.90.1>:
    _event = *event;
    6274:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6278:	3c 40 68 53 	mov	#21352,	r12	;#0x5368

0000627c <.LVL10>:
    627c:	b0 12 76 69 	call	#26998		;#0x6976

00006280 <.LVL11>:
    _status = EVENT_INSERT;
    6280:	c2 43 74 53 	mov.b	#0,	&0x5374	;r3 As==00

00006284 <.Loc.92.1>:
    __events_commit();
    6284:	b0 12 f4 61 	call	#25076		;#0x61f4

00006288 <.Loc.93.1>:
}
    6288:	30 41       	ret			

0000628a <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    628a:	6d 4c       	mov.b	@r12,	r13	;
    628c:	5d 06       	rlam	#2,	r13	;
    628e:	6c 4c       	mov.b	@r12,	r12	;

00006290 <.LVL14>:
    6290:	0c 5d       	add	r13,	r12	;
    6292:	5c 06       	rlam	#2,	r12	;
    6294:	3c 50 68 4e 	add	#20072,	r12	;#0x4e68
    6298:	b0 12 14 63 	call	#25364		;#0x6314
    629c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000062a0 <.Loc.97.1>:
    62a0:	3c 53       	add	#-1,	r12	;r3 As==11

000062a2 <.Loc.101.1>:
        return 0;

    return 1;
}
    62a2:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    62a6:	30 41       	ret			

000062a8 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    62a8:	0a 15       	pushm	#1,	r10	;16-bit words

000062aa <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    62aa:	1c 42 72 53 	mov	&0x5372,r12	;0x5372

000062ae <.LVL17>:
    62ae:	6a 4c       	mov.b	@r12,	r10	;

000062b0 <.Loc.107.1>:
    62b0:	0c 4a       	mov	r10,	r12	;
    62b2:	5c 06       	rlam	#2,	r12	;
    62b4:	0c 5a       	add	r10,	r12	;
    62b6:	5c 06       	rlam	#2,	r12	;
    62b8:	3c 50 68 4e 	add	#20072,	r12	;#0x4e68
    62bc:	b0 12 94 63 	call	#25492		;#0x6394

000062c0 <.Loc.107.1>:
    62c0:	5a 02       	rlam	#1,	r10	;
    62c2:	8a 4c e8 4d 	mov	r12,	19944(r10); 0x4de8

000062c6 <.Loc.108.1>:
    return _popped[_thread->priority];
    62c6:	1c 42 72 53 	mov	&0x5372,r12	;0x5372
    62ca:	6c 4c       	mov.b	@r12,	r12	;
    62cc:	5c 02       	rlam	#1,	r12	;

000062ce <.Loc.109.1>:
}
    62ce:	1c 4c e8 4d 	mov	19944(r12),r12	;0x04de8
    62d2:	0a 17       	popm	#1,	r10	;16-bit words

000062d4 <.LCFI3>:
    62d4:	30 41       	ret			

000062d6 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    62d6:	1d 42 72 53 	mov	&0x5372,r13	;0x5372

000062da <.Loc.113.1>:
    62da:	6c 4d       	mov.b	@r13,	r12	;

000062dc <.LVL20>:
    62dc:	5c 06       	rlam	#2,	r12	;
    62de:	6d 4d       	mov.b	@r13,	r13	;
    62e0:	0c 5d       	add	r13,	r12	;
    62e2:	5c 06       	rlam	#2,	r12	;
    62e4:	3c 50 68 4e 	add	#20072,	r12	;#0x4e68
    62e8:	b0 12 c6 63 	call	#25542		;#0x63c6

000062ec <.Loc.114.1>:
    _popped[_thread->priority] = NULL;
    62ec:	1c 42 72 53 	mov	&0x5372,r12	;0x5372
    62f0:	6c 4c       	mov.b	@r12,	r12	;
    62f2:	5c 02       	rlam	#1,	r12	;
    62f4:	8c 43 e8 4d 	mov	#0,	19944(r12);r3 As==00, 0x4de8

000062f8 <.Loc.115.1>:
}
    62f8:	30 41       	ret			

000062fa <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    62fa:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    62fe:	10 00 

00006300 <.Loc.37.1>:
    queue->_tail ^= queue->_tail;
    6300:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    6304:	11 00 

00006306 <.Loc.38.1>:
    queue->__head ^= queue->__head;
    6306:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    630a:	12 00 

0000630c <.Loc.39.1>:
    queue->__tail ^= queue->__tail;
    630c:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    6310:	13 00 

00006312 <.Loc.40.1>:
}
    6312:	30 41       	ret			

00006314 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    6314:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6318:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    631c:	4c 4d       	mov.b	r13,	r12	;

0000631e <.LVL2>:
    631e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6322:	3c 53       	add	#-1,	r12	;r3 As==11

00006324 <.Loc.49.1>:
        return 1;
    }

    return 0;
}
    6324:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6328:	30 41       	ret			

0000632a <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    632a:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    632e:	5d 53       	inc.b	r13		;
    6330:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006334 <.Loc.54.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    6334:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6338:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    633a:	02 20       	jnz	$+6      	;abs 0x6340

0000633c <.Loc.55.1>:
        queue->__tail = 0;
    633c:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006340 <.L4>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    6340:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6344:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6348:	4c 4d       	mov.b	r13,	r12	;

0000634a <.LVL4>:
    634a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    634e:	3c 53       	add	#-1,	r12	;r3 As==11

00006350 <.Loc.64.1>:
        return 1;
    }

    return 0;
}
    6350:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6354:	30 41       	ret			

00006356 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    6356:	0e 4c       	mov	r12,	r14	;

00006358 <.Loc.68.1>:
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6358:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

0000635c <.LVL6>:
    635c:	5c 53       	inc.b	r12		;
    635e:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

00006362 <.Loc.69.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    6362:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    6366:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    6368:	02 20       	jnz	$+6      	;abs 0x636e

0000636a <.Loc.70.1>:
        queue->__tail = 0;
    636a:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

0000636e <.L6>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    636e:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

00006372 <.Loc.74.1>:
    6372:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

00006376 <.Loc.75.1>:
        return 0;
    6376:	4c 43       	clr.b	r12		;

00006378 <.Loc.74.1>:
    if (queue->__tail == queue->_head) {
    6378:	0b 9f       	cmp	r15,	r11	;
    637a:	07 24       	jz	$+16     	;abs 0x638a

0000637c <.Loc.79.1>:
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    637c:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

00006380 <.Loc.79.1>:
    6380:	5c 02       	rlam	#1,	r12	;
    6382:	0e 5c       	add	r12,	r14	;

00006384 <.LVL7>:
    6384:	8e 4d 00 00 	mov	r13,	0(r14)	;

00006388 <.Loc.81.1>:

    return 1;
    6388:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000638a <.L7>:
}
    638a:	30 41       	ret			

0000638c <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    638c:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    6390:	11 00 

00006392 <.Loc.89.1>:
}
    6392:	30 41       	ret			

00006394 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    6394:	0d 4c       	mov	r12,	r13	;

00006396 <.Loc.93.1>:
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6396:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

0000639a <.Loc.93.1>:
    639a:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000639e <.Loc.94.1>:
        return NULL;
    639e:	4c 43       	clr.b	r12		;

000063a0 <.LVL10>:
    if (queue->_head == queue->_tail){
    63a0:	0f 9e       	cmp	r14,	r15	;
    63a2:	10 24       	jz	$+34     	;abs 0x63c4

000063a4 <.Loc.98.1>:
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    63a4:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    63a8:	5c 53       	inc.b	r12		;
    63aa:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

000063ae <.Loc.99.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    63ae:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    63b2:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    63b4:	02 20       	jnz	$+6      	;abs 0x63ba

000063b6 <.Loc.100.1>:
        queue->__head = 0;
    63b6:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

000063ba <.L12>:

    return queue->_items[queue->_head];
    63ba:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

000063be <.Loc.102.1>:
    63be:	5c 02       	rlam	#1,	r12	;
    63c0:	0d 5c       	add	r12,	r13	;

000063c2 <.LVL11>:
    63c2:	2c 4d       	mov	@r13,	r12	;

000063c4 <.L10>:
}
    63c4:	30 41       	ret			

000063c6 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    63c6:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    63ca:	10 00 

000063cc <.Loc.109.1>:
}
    63cc:	30 41       	ret			

000063ce <__dma_word_copy>:
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    63ce:	0a 15       	pushm	#1,	r10	;16-bit words

000063d0 <.LCFI0>:
    63d0:	21 82       	sub	#4,	r1	;r2 As==10

000063d2 <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    63d2:	0a 4c       	mov	r12,	r10	;
    63d4:	0b 43       	clr	r11		;
    63d6:	81 4a 00 00 	mov	r10,	0(r1)	;
    63da:	81 4b 02 00 	mov	r11,	2(r1)	;

000063de <.Loc.38.1>:
    63de:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

000063e2 <.LVL1>:
    63e2:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    63e6:	00 00 

000063e8 <.LBB3>:
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    63e8:	0a 4d       	mov	r13,	r10	;
    63ea:	0b 43       	clr	r11		;

000063ec <.LVL2>:
    63ec:	81 4a 00 00 	mov	r10,	0(r1)	;
    63f0:	81 4b 02 00 	mov	r11,	2(r1)	;

000063f4 <.Loc.40.1>:
    63f4:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    63f8:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    63fc:	00 00 

000063fe <.LBE3>:
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    63fe:	82 4e 1a 05 	mov	r14,	&0x051a	;

00006402 <.Loc.43.1>:
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    6402:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6406:	10 05 

00006408 <.Loc.44.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6408:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    640c:	10 05 

0000640e <.Loc.46.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    640e:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00006412 <.Loc.47.1>:
}
    6412:	21 52       	add	#4,	r1	;r2 As==10

00006414 <.LCFI2>:
    6414:	0a 17       	popm	#1,	r10	;16-bit words

00006416 <.LCFI3>:
    6416:	30 41       	ret			

00006418 <__mcu_init>:

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    6418:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    641c:	5c 01 

0000641e <.Loc.40.1>:


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    641e:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6422:	40 01 

00006424 <L0^A>:
  __delay_cycles(3);
    6424:	00 3c       	jmp	$+2      	;abs 0x6426
    6426:	03 43       	nop			

00006428 <.Loc.44.1>:

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    6428:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    642c:	41 01 

0000642e <L0^A>:
  
  __delay_cycles(3);
    642e:	00 3c       	jmp	$+2      	;abs 0x6430
    6430:	03 43       	nop			

00006432 <.Loc.48.1>:

  __led_init(LED1);
    6432:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6436:	23 02 

00006438 <.Loc.48.1>:
    6438:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    643c:	25 02 

0000643e <.Loc.48.1>:
    643e:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6442:	23 02 

00006444 <.Loc.48.1>:
  __led_init(LED2);
    6444:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006448 <.Loc.49.1>:
    6448:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

0000644c <.Loc.49.1>:
    644c:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006450 <.Loc.49.1>:
  
  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    6450:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00006454 <.Loc.53.1>:

}
    6454:	30 41       	ret			

00006456 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    6456:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000645a <.Loc.83.1>:
    645a:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000645e <.Loc.83.1>:
    645e:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006462 <.Loc.83.1>:
    6462:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006466 <.Loc.83.1>:
    6466:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000646a <.Loc.83.1>:
    646a:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000646e <.Loc.83.1>:
    646e:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006472 <.Loc.83.1>:
    6472:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006476 <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    6476:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000647a <.Loc.88.1>:
}
    647a:	30 41       	ret			

0000647c <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    647c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006480 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    6480:	0e 4c       	mov	r12,	r14	;
    6482:	5e 09       	rram	#3,	r14	;

00006484 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    6484:	7e f0 07 00 	and.b	#7,	r14	;

00006488 <.Loc.99.1>:
    6488:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    648c:	08 00 

0000648e <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    648e:	0d 5e       	add	r14,	r13	;

00006490 <.LVL12>:
    6490:	7c f0 07 00 	and.b	#7,	r12	;

00006494 <.LVL13>:
    6494:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    6498:	00 00 

0000649a <.Loc.101.1>:
}
    649a:	30 41       	ret			

0000649c <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    649c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064a0 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    64a0:	0e 4c       	mov	r12,	r14	;
    64a2:	5e 09       	rram	#3,	r14	;

000064a4 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    64a4:	7e f0 07 00 	and.b	#7,	r14	;
    64a8:	0f 4d       	mov	r13,	r15	;
    64aa:	0f 5e       	add	r14,	r15	;

000064ac <.Loc.112.1>:
    64ac:	7c f0 07 00 	and.b	#7,	r12	;

000064b0 <.LVL16>:
    64b0:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    64b4:	00 00 

000064b6 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    64b6:	6c 4f       	mov.b	@r15,	r12	;

000064b8 <.Loc.114.1>:
    64b8:	0c 93       	cmp	#0,	r12	;r3 As==00
    64ba:	03 20       	jnz	$+8      	;abs 0x64c2

000064bc <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    64bc:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    64c0:	08 00 

000064c2 <.L3>:
    }
}
    64c2:	30 41       	ret			

000064c4 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    64c4:	5d 4c 08 00 	mov.b	8(r12),	r13	;

000064c8 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    64c8:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

000064cc <.LVL19>:
    64cc:	0c 5d       	add	r13,	r12	;

000064ce <.LVL20>:
    64ce:	6e 4c       	mov.b	@r12,	r14	;

000064d0 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    64d0:	0c 4d       	mov	r13,	r12	;
    64d2:	5c 0a       	rlam	#3,	r12	;

000064d4 <.Loc.128.1>:
}
    64d4:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    64d8:	30 41       	ret			

000064da <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    64da:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

000064de <.Loc.157.1>:
    TA2CTL = 0;
    64de:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000064e2 <.Loc.158.1>:
}
    64e2:	30 41       	ret			

000064e4 <timerA2_init>:
    64e4:	b0 12 da 64 	call	#25818		;#0x64da
    64e8:	30 41       	ret			

000064ea <set_timer_wkup>:
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    64ea:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

000064ee <.Loc.179.1>:
    TA0CCR0 = ticks;
    64ee:	82 4c 52 03 	mov	r12,	&0x0352	;

000064f2 <.Loc.180.1>:
    TA0CCTL0 = CCIE;
    64f2:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    64f6:	42 03 

000064f8 <.Loc.181.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    64f8:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    64fc:	40 03 

000064fe <.Loc.182.1>:
}
    64fe:	30 41       	ret			

00006500 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    6500:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006504 <.Loc.186.1>:
    TA2CCR0 = ticks;
    6504:	82 4c 12 04 	mov	r12,	&0x0412	;

00006508 <.Loc.187.1>:
    TA2CCTL0 = CCIE;
    6508:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    650c:	02 04 

0000650e <.Loc.188.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    650e:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    6512:	00 04 

00006514 <.Loc.190.1>:

}
    6514:	30 41       	ret			

00006516 <stop_timer_xpr>:
    6516:	b0 12 da 64 	call	#25818		;#0x64da
    651a:	30 41       	ret			

0000651c <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    651c:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00006520 <.Loc.202.1>:
    TA1CCR0 = ticks;
    6520:	82 4c 92 03 	mov	r12,	&0x0392	;

00006524 <.Loc.203.1>:
    TA1CCTL0 = CCIE;
    6524:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    6528:	82 03 

0000652a <.Loc.204.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    652a:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    652e:	80 03 

00006530 <.Loc.205.1>:
}
    6530:	30 41       	ret			

00006532 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    6532:	30 41       	ret			

00006534 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    6534:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    6538:	61 01 

0000653a <.Loc.253.1>:
  CSCTL2 = SELA__VLOCLK;
    653a:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    653e:	64 01 

00006540 <.Loc.254.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    6540:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00006544 <.Loc.255.1>:
  CSCTL0_H = 0;
    6544:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00006548 <.Loc.257.1>:

}
    6548:	30 41       	ret			

0000654a <__get_rtc_time>:
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    654a:	4c 43       	clr.b	r12		;
    654c:	4d 43       	clr.b	r13		;
    654e:	30 41       	ret			

00006550 <__get_time_init>:
{   
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    6550:	82 43 76 53 	mov	#0,	&0x5376	;r3 As==00
    6554:	82 43 78 53 	mov	#0,	&0x5378	;r3 As==00

00006558 <.Loc.337.1>:

    //stop TA1 timer
    TA3CTL = 0;
    6558:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000655c <.Loc.339.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    655c:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    6560:	40 04 

00006562 <.Loc.341.1>:

    __bis_SR_register(GIE);
    6562:	03 43       	nop			
    6564:	32 d2       	eint			
    6566:	03 43       	nop			

00006568 <.Loc.342.1>:
}
    6568:	30 41       	ret			

0000656a <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    656a:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000656e <.Loc.350.1>:
    TA3CCTL0 = 0;
    656e:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006572 <.Loc.351.1>:
}
    6572:	30 41       	ret			

00006574 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    6574:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6578:	40 04 

0000657a <.Loc.363.1>:

   tmp = TA3R;
    657a:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000657e <.Loc.365.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    657e:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6582:	40 04 

00006584 <.Loc.369.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    6584:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    6588:	b0 12 fe 68 	call	#26878		;#0x68fe

0000658c <.Loc.370.1>:
}
    658c:	1c 52 76 53 	add	&0x5376,r12	;0x5376
    6590:	1d 62 78 53 	addc	&0x5378,r13	;0x5378
    6594:	30 41       	ret			

00006596 <isr_TIMER3_A1_VECTOR>:
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    6596:	b2 50 aa 00 	add	#170,	&0x5376	;#0x00aa
    659a:	76 53 
    659c:	b2 60 0a 00 	addc	#10,	&0x5378	;#0x000a
    65a0:	78 53 

000065a2 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    65a2:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

000065a6 <.Loc.381.1>:
}
    65a6:	00 13       	reti			

000065a8 <_pers_timer_init>:

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    65a8:	3c 40 7a 53 	mov	#21370,	r12	;#0x537a
    65ac:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000065b0 <.Loc.34.1>:
    65b0:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

000065b4 <.Loc.34.1>:
    65b4:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

000065b8 <.Loc.34.1>:
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED; 
    65b8:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

000065bc <.Loc.38.1>:
    65bc:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

000065c0 <.Loc.38.1>:
    65c0:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

000065c4 <.Loc.38.1>:
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED; 
    65c4:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

000065c8 <.Loc.42.1>:
	}
}
    65c8:	30 41       	ret			

000065ca <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    65ca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000065ce <.Loc.50.1>:
	//update the persistent timer dirty buffer
	switch(interface)
    65ce:	1d 93       	cmp	#1,	r13	;r3 As==01
    65d0:	1a 24       	jz	$+54     	;abs 0x6606
    65d2:	2d 93       	cmp	#2,	r13	;r3 As==10
    65d4:	0d 24       	jz	$+28     	;abs 0x65f0
    65d6:	0d 93       	cmp	#0,	r13	;r3 As==00
    65d8:	0a 20       	jnz	$+22     	;abs 0x65ee

000065da <.Loc.53.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    65da:	0d 4c       	mov	r12,	r13	;

000065dc <.LVL9>:
    65dc:	5d 06       	rlam	#2,	r13	;
    65de:	0c 5d       	add	r13,	r12	;

000065e0 <.LVL10>:
    65e0:	5c 02       	rlam	#1,	r12	;
    65e2:	8c 4e e2 53 	mov	r14,	21474(r12); 0x53e2
    65e6:	8c 4f e4 53 	mov	r15,	21476(r12); 0x53e4

000065ea <.Loc.54.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    65ea:	9c 43 e6 53 	mov	#1,	21478(r12);r3 As==01, 0x53e6

000065ee <.L2>:
		default:
			break;
	}

		
}
    65ee:	30 41       	ret			

000065f0 <.L4>:
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    65f0:	0d 4c       	mov	r12,	r13	;

000065f2 <.LVL12>:
    65f2:	5d 06       	rlam	#2,	r13	;
    65f4:	0c 5d       	add	r13,	r12	;
    65f6:	5c 02       	rlam	#1,	r12	;
    65f8:	8c 4e 00 54 	mov	r14,	21504(r12); 0x5400
    65fc:	8c 4f 02 54 	mov	r15,	21506(r12); 0x5402

00006600 <.Loc.58.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6600:	9c 43 04 54 	mov	#1,	21508(r12);r3 As==01, 0x5404
    6604:	f4 3f       	jmp	$-22     	;abs 0x65ee

00006606 <.L3>:
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    6606:	0d 4c       	mov	r12,	r13	;

00006608 <.LVL14>:
    6608:	5d 06       	rlam	#2,	r13	;
    660a:	0c 5d       	add	r13,	r12	;
    660c:	5c 02       	rlam	#1,	r12	;
    660e:	8c 4e 1e 54 	mov	r14,	21534(r12); 0x541e
    6612:	8c 4f 20 54 	mov	r15,	21536(r12); 0x5420

00006616 <.Loc.62.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6616:	9c 43 22 54 	mov	#1,	21538(r12);r3 As==01, 0x5422

0000661a <.Loc.63.1>:
			break;
    661a:	e9 3f       	jmp	$-44     	;abs 0x65ee

0000661c <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    661c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6620:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006624 <.Loc.73.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    6624:	1d 93       	cmp	#1,	r13	;r3 As==01
    6626:	16 24       	jz	$+46     	;abs 0x6654
    6628:	2d 93       	cmp	#2,	r13	;r3 As==10
    662a:	0b 24       	jz	$+24     	;abs 0x6642
    662c:	0d 93       	cmp	#0,	r13	;r3 As==00
    662e:	08 20       	jnz	$+18     	;abs 0x6640

00006630 <.Loc.76.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    6630:	0d 4c       	mov	r12,	r13	;

00006632 <.LVL16>:
    6632:	5d 06       	rlam	#2,	r13	;
    6634:	0c 5d       	add	r13,	r12	;

00006636 <.LVL17>:
    6636:	5c 02       	rlam	#1,	r12	;
    6638:	cc 4e e0 53 	mov.b	r14,	21472(r12); 0x53e0

0000663c <.Loc.77.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    663c:	9c 43 e6 53 	mov	#1,	21478(r12);r3 As==01, 0x53e6

00006640 <.L7>:
			break;
		default:
			break;
	}

}
    6640:	30 41       	ret			

00006642 <.L9>:
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    6642:	0d 4c       	mov	r12,	r13	;

00006644 <.LVL19>:
    6644:	5d 06       	rlam	#2,	r13	;
    6646:	0c 5d       	add	r13,	r12	;
    6648:	5c 02       	rlam	#1,	r12	;
    664a:	cc 4e fe 53 	mov.b	r14,	21502(r12); 0x53fe

0000664e <.Loc.81.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    664e:	9c 43 04 54 	mov	#1,	21508(r12);r3 As==01, 0x5404
    6652:	f6 3f       	jmp	$-18     	;abs 0x6640

00006654 <.L8>:
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    6654:	0d 4c       	mov	r12,	r13	;

00006656 <.LVL21>:
    6656:	5d 06       	rlam	#2,	r13	;
    6658:	0c 5d       	add	r13,	r12	;
    665a:	5c 02       	rlam	#1,	r12	;
    665c:	cc 4e 1c 54 	mov.b	r14,	21532(r12); 0x541c

00006660 <.Loc.85.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6660:	9c 43 22 54 	mov	#1,	21538(r12);r3 As==01, 0x5422

00006664 <.Loc.86.1>:
}
    6664:	ed 3f       	jmp	$-36     	;abs 0x6640

00006666 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    6666:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000666a <.Loc.95.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    666a:	1d 93       	cmp	#1,	r13	;r3 As==01
    666c:	16 24       	jz	$+46     	;abs 0x669a
    666e:	2d 93       	cmp	#2,	r13	;r3 As==10
    6670:	0b 24       	jz	$+24     	;abs 0x6688
    6672:	0d 93       	cmp	#0,	r13	;r3 As==00
    6674:	08 20       	jnz	$+18     	;abs 0x6686

00006676 <.Loc.98.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].status = status;
    6676:	0d 4c       	mov	r12,	r13	;

00006678 <.LVL23>:
    6678:	5d 06       	rlam	#2,	r13	;
    667a:	0c 5d       	add	r13,	r12	;

0000667c <.LVL24>:
    667c:	5c 02       	rlam	#1,	r12	;
    667e:	8c 4e de 53 	mov	r14,	21470(r12); 0x53de

00006682 <.Loc.99.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6682:	9c 43 e6 53 	mov	#1,	21478(r12);r3 As==01, 0x53e6

00006686 <.L12>:
			break;
		default:
			break;

	}
}
    6686:	30 41       	ret			

00006688 <.L14>:
			pers_timer_vars[1].xpr_timing[idx].status = status;
    6688:	0d 4c       	mov	r12,	r13	;

0000668a <.LVL26>:
    668a:	5d 06       	rlam	#2,	r13	;
    668c:	0c 5d       	add	r13,	r12	;
    668e:	5c 02       	rlam	#1,	r12	;
    6690:	8c 4e fc 53 	mov	r14,	21500(r12); 0x53fc

00006694 <.Loc.103.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6694:	9c 43 04 54 	mov	#1,	21508(r12);r3 As==01, 0x5404
    6698:	f6 3f       	jmp	$-18     	;abs 0x6686

0000669a <.L13>:
			pers_timer_vars[1].pdc_timing[idx].status = status;
    669a:	0d 4c       	mov	r12,	r13	;

0000669c <.LVL28>:
    669c:	5d 06       	rlam	#2,	r13	;
    669e:	0c 5d       	add	r13,	r12	;
    66a0:	5c 02       	rlam	#1,	r12	;
    66a2:	8c 4e 1a 54 	mov	r14,	21530(r12); 0x541a

000066a6 <.Loc.107.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    66a6:	9c 43 22 54 	mov	#1,	21538(r12);r3 As==01, 0x5422

000066aa <.Loc.108.1>:
}
    66aa:	ed 3f       	jmp	$-36     	;abs 0x6686

000066ac <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    66ac:	0e 4c       	mov	r12,	r14	;
    66ae:	5e 0a       	rlam	#3,	r14	;
    66b0:	ce 4d 26 54 	mov.b	r13,	21542(r14); 0x5426

000066b4 <.Loc.118.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    66b4:	9e 43 2a 54 	mov	#1,	21546(r14);r3 As==01, 0x542a

000066b8 <.Loc.119.1>:
}
    66b8:	30 41       	ret			

000066ba <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    66ba:	0e 4c       	mov	r12,	r14	;
    66bc:	5e 0a       	rlam	#3,	r14	;
    66be:	8e 4d 28 54 	mov	r13,	21544(r14); 0x5428

000066c2 <.Loc.124.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    66c2:	9e 43 2a 54 	mov	#1,	21546(r14);r3 As==01, 0x542a

000066c6 <.Loc.125.1>:
}
    66c6:	30 41       	ret			

000066c8 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    66c8:	1c 93       	cmp	#1,	r12	;r3 As==01
    66ca:	0a 24       	jz	$+22     	;abs 0x66e0
    66cc:	2c 93       	cmp	#2,	r12	;r3 As==10
    66ce:	05 24       	jz	$+12     	;abs 0x66da
    66d0:	0c 93       	cmp	#0,	r12	;r3 As==00
    66d2:	02 20       	jnz	$+6      	;abs 0x66d8

000066d4 <.Loc.132.1>:
	{
		case WKUP:
			wkup_tstatus = TIMER_COMMIT;
    66d4:	92 43 42 54 	mov	#1,	&0x5442	;r3 As==01

000066d8 <.L19>:
		default:
			break;

	}

}
    66d8:	30 41       	ret			

000066da <.L21>:
			xpr_tstatus = TIMER_COMMIT;
    66da:	92 43 44 54 	mov	#1,	&0x5444	;r3 As==01

000066de <.Loc.136.1>:
		break;
    66de:	fc 3f       	jmp	$-6      	;abs 0x66d8

000066e0 <.L20>:
			pdc_tstatus = TIMER_COMMIT;
    66e0:	92 43 46 54 	mov	#1,	&0x5446	;r3 As==01

000066e4 <.Loc.139.1>:
}
    66e4:	f9 3f       	jmp	$-12     	;abs 0x66d8

000066e6 <_commit_timer_buffers>:

//commit into the persistent buffer

void _commit_timer_buffers(ink_time_interface_t interface){
    66e6:	1a 15       	pushm	#2,	r10	;16-bit words

000066e8 <.LCFI0>:
    66e8:	0a 4c       	mov	r12,	r10	;

000066ea <.Loc.151.1>:
	
	uint8_t i;
	
	switch (interface){
    66ea:	1c 93       	cmp	#1,	r12	;r3 As==01
    66ec:	52 24       	jz	$+166    	;abs 0x6792
    66ee:	2c 93       	cmp	#2,	r12	;r3 As==10
    66f0:	39 24       	jz	$+116    	;abs 0x6764
    66f2:	0c 93       	cmp	#0,	r12	;r3 As==00
    66f4:	16 20       	jnz	$+46     	;abs 0x6722
    66f6:	3f 40 7a 53 	mov	#21370,	r15	;#0x537a
    66fa:	39 40 98 53 	mov	#21400,	r9	;#0x5398

000066fe <.L28>:
		case WKUP:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
		{
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    66fe:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    6702:	0b 20       	jnz	$+24     	;abs 0x671a

00006704 <.Loc.160.1>:
			{
				
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6704:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6708:	0d 4f       	mov	r15,	r13	;
    670a:	3d 50 64 00 	add	#100,	r13	;#0x0064
    670e:	0c 4f       	mov	r15,	r12	;
    6710:	b0 12 76 69 	call	#26998		;#0x6976
    6714:	0f 4c       	mov	r12,	r15	;

00006716 <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6716:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

0000671a <.L27>:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    671a:	3f 50 0a 00 	add	#10,	r15	;#0x000a

0000671e <.Loc.155.1>:
    671e:	09 9f       	cmp	r15,	r9	;
    6720:	ee 23       	jnz	$-34     	;abs 0x66fe

00006722 <.L26>:
void _commit_timer_buffers(ink_time_interface_t interface){
    6722:	7f 40 03 00 	mov.b	#3,	r15	;

00006726 <.L33>:
		break;
	}	

	for (i = 0; i < TIMER_TOOLS; i++)
	{
		if (	pers_timer_vars[1].next_info[interface].__dirty == DIRTY)
    6726:	0c 4a       	mov	r10,	r12	;
    6728:	5c 0a       	rlam	#3,	r12	;

0000672a <.Loc.193.1>:
    672a:	9c 93 2a 54 	cmp	#1,	21546(r12);r3 As==01, 0x542a
    672e:	13 20       	jnz	$+40     	;abs 0x6756

00006730 <.Loc.195.1>:
		{
			pers_timer_vars[0].next_info[interface] = 
    6730:	0c 4a       	mov	r10,	r12	;
    6732:	5c 0a       	rlam	#3,	r12	;
    6734:	0d 4c       	mov	r12,	r13	;
    6736:	3d 50 7a 53 	add	#21370,	r13	;#0x537a
    673a:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    673e:	46 00 
    6740:	9c 4c 26 54 	mov	21542(r12),21442(r12);0x05426, 0x53c2
    6744:	c2 53 
    6746:	9c 4c 28 54 	mov	21544(r12),21444(r12);0x05428, 0x53c4
    674a:	c4 53 
    674c:	9c 4c 2a 54 	mov	21546(r12),21446(r12);0x0542a, 0x53c6
    6750:	c6 53 

00006752 <.Loc.197.1>:
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty = 
    6752:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

00006756 <.L32>:
	for (i = 0; i < TIMER_TOOLS; i++)
    6756:	4c 4f       	mov.b	r15,	r12	;
    6758:	7c 53       	add.b	#-1,	r12	;r3 As==11
    675a:	4f 4c       	mov.b	r12,	r15	;

0000675c <.Loc.191.1>:
    675c:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    675e:	e3 23       	jnz	$-56     	;abs 0x6726

00006760 <.Loc.201.1>:
				NOT_DIRTY;
		}
	}
}
    6760:	19 17       	popm	#2,	r10	;16-bit words

00006762 <.LCFI1>:
    6762:	30 41       	ret			

00006764 <.L25>:
    6764:	39 40 7a 53 	mov	#21370,	r9	;#0x537a

00006768 <.L30>:
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    6768:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    676c:	0c 20       	jnz	$+26     	;abs 0x6786

0000676e <.Loc.171.1>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    676e:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6772:	0d 49       	mov	r9,	r13	;
    6774:	3d 50 82 00 	add	#130,	r13	;#0x0082
    6778:	0c 49       	mov	r9,	r12	;
    677a:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    677e:	b0 12 76 69 	call	#26998		;#0x6976

00006782 <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6782:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

00006786 <.L29>:
		for (i = 0; i < MAX_XPR_THREADS; i++)
    6786:	39 50 0a 00 	add	#10,	r9	;#0x000a

0000678a <.Loc.166.1>:
    678a:	39 90 98 53 	cmp	#21400,	r9	;#0x5398
    678e:	ec 23       	jnz	$-38     	;abs 0x6768
    6790:	c8 3f       	jmp	$-110    	;abs 0x6722

00006792 <.L24>:
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    6792:	92 93 22 54 	cmp	#1,	&0x5422	;r3 As==01
    6796:	c5 23       	jnz	$-116    	;abs 0x6722

00006798 <.Loc.182.1>:
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    6798:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    679c:	3d 40 1a 54 	mov	#21530,	r13	;#0x541a
    67a0:	3c 40 b6 53 	mov	#21430,	r12	;#0x53b6
    67a4:	b0 12 76 69 	call	#26998		;#0x6976

000067a8 <.Loc.183.1>:
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    67a8:	82 43 be 53 	mov	#0,	&0x53be	;r3 As==00

000067ac <.Loc.177.1>:
		for (i = 0; i < MAX_PDC_THREADS; i++)
    67ac:	ba 3f       	jmp	$-138    	;abs 0x6722

000067ae <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    67ae:	1c 93       	cmp	#1,	r12	;r3 As==01
    67b0:	16 24       	jz	$+46     	;abs 0x67de
    67b2:	2c 93       	cmp	#2,	r12	;r3 As==10
    67b4:	0b 24       	jz	$+24     	;abs 0x67cc
    67b6:	0c 93       	cmp	#0,	r12	;r3 As==00
    67b8:	08 20       	jnz	$+18     	;abs 0x67ca

000067ba <.Loc.207.1>:
	{
		case WKUP:
		    if (wkup_tstatus == TIMER_COMMIT)
    67ba:	1d 42 42 54 	mov	&0x5442,r13	;0x5442

000067be <.Loc.207.1>:
    67be:	1d 93       	cmp	#1,	r13	;r3 As==01
    67c0:	04 20       	jnz	$+10     	;abs 0x67ca

000067c2 <.Loc.209.1>:
		    {
		    	_commit_timer_buffers(interface);
    67c2:	b0 12 e6 66 	call	#26342		;#0x66e6

000067c6 <.LVL43>:
		        wkup_tstatus = TIMER_DONE;
    67c6:	a2 43 42 54 	mov	#2,	&0x5442	;r3 As==10

000067ca <.L39>:
			break;
		default:
			break;

	}
}
    67ca:	30 41       	ret			

000067cc <.L41>:
			if (xpr_tstatus == TIMER_COMMIT)
    67cc:	1d 42 44 54 	mov	&0x5444,r13	;0x5444

000067d0 <.Loc.214.1>:
    67d0:	1d 93       	cmp	#1,	r13	;r3 As==01
    67d2:	fb 23       	jnz	$-8      	;abs 0x67ca

000067d4 <.Loc.216.1>:
		    	_commit_timer_buffers(interface);
    67d4:	b0 12 e6 66 	call	#26342		;#0x66e6

000067d8 <.LVL45>:
		        xpr_tstatus = TIMER_DONE;
    67d8:	a2 43 44 54 	mov	#2,	&0x5444	;r3 As==10
    67dc:	f6 3f       	jmp	$-18     	;abs 0x67ca

000067de <.L40>:
			if (pdc_tstatus == TIMER_COMMIT)
    67de:	1d 42 46 54 	mov	&0x5446,r13	;0x5446

000067e2 <.Loc.220.1>:
    67e2:	1d 93       	cmp	#1,	r13	;r3 As==01
    67e4:	f2 23       	jnz	$-26     	;abs 0x67ca

000067e6 <.Loc.222.1>:
		    	_commit_timer_buffers(interface);
    67e6:	b0 12 e6 66 	call	#26342		;#0x66e6

000067ea <.LVL47>:
		        pdc_tstatus = TIMER_DONE;
    67ea:	a2 43 46 54 	mov	#2,	&0x5446	;r3 As==10

000067ee <.Loc.230.1>:
}
    67ee:	ed 3f       	jmp	$-36     	;abs 0x67ca

000067f0 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    67f0:	0a 15       	pushm	#1,	r10	;16-bit words

000067f2 <.LCFI3>:
    67f2:	0a 4c       	mov	r12,	r10	;
    67f4:	4f 4d       	mov.b	r13,	r15	;

000067f6 <.Loc.233.1>:
	switch (interface)
    67f6:	0d 4f       	mov	r15,	r13	;
    67f8:	5d 06       	rlam	#2,	r13	;

000067fa <.LVL49>:
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    67fa:	0d 5f       	add	r15,	r13	;
    67fc:	5d 02       	rlam	#1,	r13	;

000067fe <.Loc.233.1>:
	switch (interface)
    67fe:	1e 93       	cmp	#1,	r14	;r3 As==01
    6800:	0b 24       	jz	$+24     	;abs 0x6818
    6802:	2e 93       	cmp	#2,	r14	;r3 As==10
    6804:	0e 20       	jnz	$+30     	;abs 0x6822

00006806 <.Loc.238.1>:
			return pers_timer_vars[0].xpr_timing[idx];
    6806:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000680a <.LVL50>:
    680a:	3d 50 98 53 	add	#21400,	r13	;#0x5398

0000680e <.L47>:
		    return pers_timer_vars[0].wkup_timing[idx];
    680e:	b0 12 76 69 	call	#26998		;#0x6976

00006812 <.LVL51>:
	}
		
}
    6812:	0c 4a       	mov	r10,	r12	;
    6814:	0a 17       	popm	#1,	r10	;16-bit words

00006816 <.LCFI4>:
    6816:	30 41       	ret			

00006818 <.L44>:
			return pers_timer_vars[0].pdc_timing[idx];
    6818:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000681c <.LVL53>:
    681c:	3d 50 b6 53 	add	#21430,	r13	;#0x53b6
    6820:	f6 3f       	jmp	$-18     	;abs 0x680e

00006822 <.L45>:
		    return pers_timer_vars[0].wkup_timing[idx];
    6822:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006826 <.LVL55>:
    6826:	3d 50 7a 53 	add	#21370,	r13	;#0x537a
    682a:	f1 3f       	jmp	$-28     	;abs 0x680e

0000682c <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    682c:	4e 4c       	mov.b	r12,	r14	;

0000682e <.Loc.249.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    682e:	1d 93       	cmp	#1,	r13	;r3 As==01
    6830:	13 24       	jz	$+40     	;abs 0x6858
    6832:	2d 93       	cmp	#2,	r13	;r3 As==10
    6834:	0a 24       	jz	$+22     	;abs 0x684a
    6836:	4c 43       	clr.b	r12		;

00006838 <.LVL57>:
    6838:	0d 93       	cmp	#0,	r13	;r3 As==00
    683a:	06 20       	jnz	$+14     	;abs 0x6848

0000683c <.Loc.252.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].data ;		
    683c:	0c 4e       	mov	r14,	r12	;
    683e:	5c 06       	rlam	#2,	r12	;
    6840:	0c 5e       	add	r14,	r12	;
    6842:	5c 02       	rlam	#1,	r12	;
    6844:	1c 4c 7e 53 	mov	21374(r12),r12	;0x0537e

00006848 <.L48>:
		default:
			return 0;

	}

}
    6848:	30 41       	ret			

0000684a <.L50>:
			return pers_timer_vars[0].xpr_timing[idx].data ;			
    684a:	0c 4e       	mov	r14,	r12	;

0000684c <.LVL59>:
    684c:	5c 06       	rlam	#2,	r12	;
    684e:	0c 5e       	add	r14,	r12	;
    6850:	5c 02       	rlam	#1,	r12	;
    6852:	1c 4c 9c 53 	mov	21404(r12),r12	;0x0539c
    6856:	f8 3f       	jmp	$-14     	;abs 0x6848

00006858 <.L49>:
			return pers_timer_vars[0].pdc_timing[idx].data ;			
    6858:	0c 4e       	mov	r14,	r12	;

0000685a <.LVL61>:
    685a:	5c 06       	rlam	#2,	r12	;
    685c:	0c 5e       	add	r14,	r12	;
    685e:	5c 02       	rlam	#1,	r12	;
    6860:	1c 4c ba 53 	mov	21434(r12),r12	;0x053ba
    6864:	f1 3f       	jmp	$-28     	;abs 0x6848

00006866 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    6866:	4e 4c       	mov.b	r12,	r14	;

00006868 <.Loc.266.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    6868:	1d 93       	cmp	#1,	r13	;r3 As==01
    686a:	13 24       	jz	$+40     	;abs 0x6892
    686c:	2d 93       	cmp	#2,	r13	;r3 As==10
    686e:	0a 24       	jz	$+22     	;abs 0x6884
    6870:	4c 43       	clr.b	r12		;

00006872 <.LVL63>:
    6872:	0d 93       	cmp	#0,	r13	;r3 As==00
    6874:	06 20       	jnz	$+14     	;abs 0x6882

00006876 <.Loc.269.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    6876:	0c 4e       	mov	r14,	r12	;
    6878:	5c 06       	rlam	#2,	r12	;
    687a:	0c 5e       	add	r14,	r12	;
    687c:	5c 02       	rlam	#1,	r12	;
    687e:	5c 4c 7c 53 	mov.b	21372(r12),r12	;0x0537c

00006882 <.L56>:
		default:
		    return	0;
	}


}
    6882:	30 41       	ret			

00006884 <.L55>:
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    6884:	0c 4e       	mov	r14,	r12	;

00006886 <.LVL65>:
    6886:	5c 06       	rlam	#2,	r12	;
    6888:	0c 5e       	add	r14,	r12	;
    688a:	5c 02       	rlam	#1,	r12	;
    688c:	5c 4c 9a 53 	mov.b	21402(r12),r12	;0x0539a
    6890:	f8 3f       	jmp	$-14     	;abs 0x6882

00006892 <.L54>:
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    6892:	0c 4e       	mov	r14,	r12	;

00006894 <.LVL67>:
    6894:	5c 06       	rlam	#2,	r12	;
    6896:	0c 5e       	add	r14,	r12	;
    6898:	5c 02       	rlam	#1,	r12	;
    689a:	5c 4c b8 53 	mov.b	21432(r12),r12	;0x053b8
    689e:	f1 3f       	jmp	$-28     	;abs 0x6882

000068a0 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    68a0:	4e 4c       	mov.b	r12,	r14	;

000068a2 <.Loc.283.1>:
	//get the persistent timer from persistent buffer
switch (interface)
    68a2:	1d 93       	cmp	#1,	r13	;r3 As==01
    68a4:	13 24       	jz	$+40     	;abs 0x68cc
    68a6:	2d 93       	cmp	#2,	r13	;r3 As==10
    68a8:	0a 24       	jz	$+22     	;abs 0x68be
    68aa:	5c 43       	mov.b	#1,	r12	;r3 As==01

000068ac <.LVL69>:
    68ac:	0d 93       	cmp	#0,	r13	;r3 As==00
    68ae:	06 20       	jnz	$+14     	;abs 0x68bc

000068b0 <.Loc.286.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].status ;
    68b0:	0c 4e       	mov	r14,	r12	;
    68b2:	5c 06       	rlam	#2,	r12	;
    68b4:	0c 5e       	add	r14,	r12	;
    68b6:	5c 02       	rlam	#1,	r12	;
    68b8:	1c 4c 7a 53 	mov	21370(r12),r12	;0x0537a

000068bc <.L58>:
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    68bc:	30 41       	ret			

000068be <.L60>:
			return pers_timer_vars[0].xpr_timing[idx].status ;
    68be:	0c 4e       	mov	r14,	r12	;

000068c0 <.LVL71>:
    68c0:	5c 06       	rlam	#2,	r12	;
    68c2:	0c 5e       	add	r14,	r12	;
    68c4:	5c 02       	rlam	#1,	r12	;
    68c6:	1c 4c 98 53 	mov	21400(r12),r12	;0x05398
    68ca:	f8 3f       	jmp	$-14     	;abs 0x68bc

000068cc <.L59>:
			return pers_timer_vars[0].pdc_timing[idx].status ;
    68cc:	0c 4e       	mov	r14,	r12	;

000068ce <.LVL73>:
    68ce:	5c 06       	rlam	#2,	r12	;
    68d0:	0c 5e       	add	r14,	r12	;
    68d2:	5c 02       	rlam	#1,	r12	;
    68d4:	1c 4c b6 53 	mov	21430(r12),r12	;0x053b6
    68d8:	f1 3f       	jmp	$-28     	;abs 0x68bc

000068da <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    68da:	5c 0a       	rlam	#3,	r12	;

000068dc <.LVL75>:
}
    68dc:	5c 4c c2 53 	mov.b	21442(r12),r12	;0x053c2
    68e0:	30 41       	ret			

000068e2 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    68e2:	5c 0a       	rlam	#3,	r12	;

000068e4 <.LVL77>:
}
    68e4:	1c 4c c4 53 	mov	21444(r12),r12	;0x053c4
    68e8:	30 41       	ret			

000068ea <__mulhi2>:
    68ea:	02 12       	push	r2		;
    68ec:	32 c2       	dint			
    68ee:	03 43       	nop			
    68f0:	82 4c c0 04 	mov	r12,	&0x04c0	;
    68f4:	82 4d c8 04 	mov	r13,	&0x04c8	;
    68f8:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    68fc:	00 13       	reti			

000068fe <__umulhisi2>:
    68fe:	02 12       	push	r2		;
    6900:	32 c2       	dint			
    6902:	03 43       	nop			
    6904:	82 4c c0 04 	mov	r12,	&0x04c0	;
    6908:	82 4d c8 04 	mov	r13,	&0x04c8	;
    690c:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6910:	
00006912 <L0^A>:
    6912:	cc 04       	mova	r4,	r12	;
    6914:	00 13       	reti			

00006916 <__muldi3>:
    6916:	02 12       	push	r2		;
    6918:	32 c2       	dint			
    691a:	03 43       	nop			
    691c:	4a 15       	pushm	#5,	r10	;16-bit words
    691e:	82 48 d0 04 	mov	r8,	&0x04d0	;
    6922:	82 49 d2 04 	mov	r9,	&0x04d2	;
    6926:	82 4e e0 04 	mov	r14,	&0x04e0	;
    692a:	82 4f e2 04 	mov	r15,	&0x04e2	;
    692e:	16 42 e4 04 	mov	&0x04e4,r6	;0x04e4
    6932:	17 42 e6 04 	mov	&0x04e6,r7	;0x04e6
    6936:	82 4a d0 04 	mov	r10,	&0x04d0	;
    693a:	82 4b d2 04 	mov	r11,	&0x04d2	;
    693e:	82 4c e0 04 	mov	r12,	&0x04e0	;
    6942:	82 4d e2 04 	mov	r13,	&0x04e2	;
    6946:	16 52 e4 04 	add	&0x04e4,r6	;0x04e4
    694a:	17 62 e6 04 	addc	&0x04e6,r7	;0x04e6
    694e:	82 48 d0 04 	mov	r8,	&0x04d0	;
    6952:	82 49 d2 04 	mov	r9,	&0x04d2	;
    6956:	82 4c e0 04 	mov	r12,	&0x04e0	;
    695a:	82 4d e2 04 	mov	r13,	&0x04e2	;
    695e:	1c 42 e4 04 	mov	&0x04e4,r12	;0x04e4
    6962:	1d 42 e6 04 	mov	&0x04e6,r13	;0x04e6
    6966:	1e 42 e8 04 	mov	&0x04e8,r14	;0x04e8
    696a:	1f 42 ea 04 	mov	&0x04ea,r15	;0x04ea
    696e:	0e 56       	add	r6,	r14	;
    6970:	0f 67       	addc	r7,	r15	;
    6972:	46 17       	popm	#5,	r10	;16-bit words
    6974:	00 13       	reti			

00006976 <memcpy>:
    6976:	0f 4c       	mov	r12,	r15	;
    6978:	0e 5d       	add	r13,	r14	;

0000697a <.L2>:
    697a:	0d 9e       	cmp	r14,	r13	;
    697c:	01 20       	jnz	$+4      	;abs 0x6980

0000697e <.Loc.111.1>:
    697e:	30 41       	ret			

00006980 <.L3>:
    6980:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

00006984 <.LVL4>:
    6984:	1f 53       	inc	r15		;
    6986:	f9 3f       	jmp	$-12     	;abs 0x697a

00006988 <rand>:
    6988:	3a 15       	pushm	#4,	r10	;16-bit words

0000698a <L0^A>:
    698a:	1a 42 00 1c 	mov	&0x1c00,r10	;0x1c00

0000698e <.LBB4>:
    698e:	8a 93 1c 00 	cmp	#0,	28(r10)	;r3 As==00, 0x001c
    6992:	23 20       	jnz	$+72     	;abs 0x69da

00006994 <.Loc.89.1>:
    6994:	7c 40 16 00 	mov.b	#22,	r12	;#0x0016
    6998:	b0 12 44 6a 	call	#27204		;#0x6a44

0000699c <.LVL7>:
    699c:	8a 4c 1c 00 	mov	r12,	28(r10)	; 0x001c

000069a0 <.LBB5>:
    69a0:	bc 40 0e 33 	mov	#13070,	0(r12)	;#0x330e
    69a4:	00 00 

000069a6 <.Loc.89.1>:
    69a6:	bc 40 cd ab 	mov	#-21555,2(r12)	;#0xabcd
    69aa:	02 00 

000069ac <.Loc.89.1>:
    69ac:	bc 40 34 12 	mov	#4660,	4(r12)	;#0x1234
    69b0:	04 00 

000069b2 <.Loc.89.1>:
    69b2:	bc 40 6d e6 	mov	#-6547,	6(r12)	;#0xe66d
    69b6:	06 00 

000069b8 <.Loc.89.1>:
    69b8:	bc 40 ec de 	mov	#-8468,	8(r12)	;#0xdeec
    69bc:	08 00 

000069be <.Loc.89.1>:
    69be:	bc 40 05 00 	mov	#5,	10(r12)	; 0x000a
    69c2:	0a 00 

000069c4 <.Loc.89.1>:
    69c4:	bc 40 0b 00 	mov	#11,	12(r12)	;#0x000b, 0x000c
    69c8:	0c 00 

000069ca <.Loc.89.1>:
    69ca:	9c 43 0e 00 	mov	#1,	14(r12)	;r3 As==01, 0x000e
    69ce:	8c 43 10 00 	mov	#0,	16(r12)	;r3 As==00, 0x0010
    69d2:	8c 43 12 00 	mov	#0,	18(r12)	;r3 As==00, 0x0012
    69d6:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

000069da <.L4>:
    69da:	17 4a 1c 00 	mov	28(r10),r7	;0x0001c

000069de <.Loc.91.1>:
    69de:	3c 40 2d 7f 	mov	#32557,	r12	;#0x7f2d
    69e2:	3d 40 95 4c 	mov	#19605,	r13	;#0x4c95
    69e6:	3e 40 2d f4 	mov	#-3027,	r14	;#0xf42d
    69ea:	3f 40 51 58 	mov	#22609,	r15	;#0x5851
    69ee:	18 47 0e 00 	mov	14(r7),	r8	;0x0000e
    69f2:	19 47 10 00 	mov	16(r7),	r9	;0x00010
    69f6:	1a 47 12 00 	mov	18(r7),	r10	;0x00012

000069fa <.LVL10>:
    69fa:	1b 47 14 00 	mov	20(r7),	r11	;0x00014
    69fe:	b0 12 16 69 	call	#26902		;#0x6916

00006a02 <.Loc.91.1>:
    6a02:	08 4c       	mov	r12,	r8	;
    6a04:	18 53       	inc	r8		;
    6a06:	59 43       	mov.b	#1,	r9	;r3 As==01
    6a08:	3c 93       	cmp	#-1,	r12	;r3 As==11
    6a0a:	01 2c       	jc	$+4      	;abs 0x6a0e
    6a0c:	49 43       	clr.b	r9		;

00006a0e <.L5>:
    6a0e:	09 5d       	add	r13,	r9	;
    6a10:	5a 43       	mov.b	#1,	r10	;r3 As==01
    6a12:	09 9d       	cmp	r13,	r9	;
    6a14:	01 28       	jnc	$+4      	;abs 0x6a18
    6a16:	4a 43       	clr.b	r10		;

00006a18 <.L7>:
    6a18:	0a 5e       	add	r14,	r10	;
    6a1a:	5b 43       	mov.b	#1,	r11	;r3 As==01
    6a1c:	0a 9e       	cmp	r14,	r10	;
    6a1e:	01 28       	jnc	$+4      	;abs 0x6a22
    6a20:	4b 43       	clr.b	r11		;

00006a22 <.L9>:
    6a22:	0b 5f       	add	r15,	r11	;

00006a24 <.Loc.90.1>:
    6a24:	87 48 0e 00 	mov	r8,	14(r7)	; 0x000e
    6a28:	87 49 10 00 	mov	r9,	16(r7)	; 0x0010
    6a2c:	87 4a 12 00 	mov	r10,	18(r7)	; 0x0012
    6a30:	87 4b 14 00 	mov	r11,	20(r7)	; 0x0014

00006a34 <.Loc.92.1>:
    6a34:	7c 40 20 00 	mov.b	#32,	r12	;#0x0020
    6a38:	b0 12 60 6b 	call	#27488		;#0x6b60

00006a3c <.Loc.93.1>:
    6a3c:	3c f0 ff 7f 	and	#32767,	r12	;#0x7fff
    6a40:	37 17       	popm	#4,	r10	;16-bit words

00006a42 <.LCFI3>:
    6a42:	30 41       	ret			

00006a44 <malloc>:
    6a44:	0d 4c       	mov	r12,	r13	;
    6a46:	1c 42 00 1c 	mov	&0x1c00,r12	;0x1c00

00006a4a <.LVL1>:
    6a4a:	b0 12 50 6a 	call	#27216		;#0x6a50

00006a4e <.LVL2>:
    6a4e:	30 41       	ret			

00006a50 <_malloc_r>:
    6a50:	3a 15       	pushm	#4,	r10	;16-bit words

00006a52 <.LCFI0>:
    6a52:	08 4c       	mov	r12,	r8	;

00006a54 <.Loc.243.1>:
    6a54:	09 4d       	mov	r13,	r9	;
    6a56:	19 53       	inc	r9		;

00006a58 <.Loc.249.1>:
    6a58:	19 c3       	bic	#1,	r9	;r3 As==01

00006a5a <.LVL1>:
    6a5a:	39 50 0a 00 	add	#10,	r9	;#0x000a

00006a5e <.LVL2>:
    6a5e:	39 90 0c 00 	cmp	#12,	r9	;#0x000c
    6a62:	02 2c       	jc	$+6      	;abs 0x6a68
    6a64:	79 40 0c 00 	mov.b	#12,	r9	;#0x000c

00006a68 <.L2>:
    6a68:	09 9d       	cmp	r13,	r9	;
    6a6a:	06 2c       	jc	$+14     	;abs 0x6a78

00006a6c <.L13>:
    6a6c:	b8 40 0c 00 	mov	#12,	0(r8)	;#0x000c
    6a70:	00 00 

00006a72 <.Loc.257.1>:
    6a72:	4c 43       	clr.b	r12		;

00006a74 <.L1>:
    6a74:	37 17       	popm	#4,	r10	;16-bit words

00006a76 <.LCFI1>:
    6a76:	30 41       	ret			

00006a78 <.L3>:
    6a78:	1d 42 2c 1d 	mov	&0x1d2c,r13	;0x1d2c

00006a7c <.LVL6>:
    6a7c:	0a 4d       	mov	r13,	r10	;

00006a7e <.L5>:
    6a7e:	0a 93       	cmp	#0,	r10	;r3 As==00
    6a80:	23 20       	jnz	$+72     	;abs 0x6ac8

00006a82 <.LBB5>:
    6a82:	82 93 2a 1d 	cmp	#0,	&0x1d2a	;r3 As==00
    6a86:	07 20       	jnz	$+16     	;abs 0x6a96

00006a88 <.Loc.216.1>:
    6a88:	1d 42 2a 1d 	mov	&0x1d2a,r13	;0x1d2a

00006a8c <.LVL9>:
    6a8c:	0c 48       	mov	r8,	r12	;
    6a8e:	b0 12 3e 6b 	call	#27454		;#0x6b3e

00006a92 <.LVL10>:
    6a92:	82 4c 2a 1d 	mov	r12,	&0x1d2a	;

00006a96 <.L17>:
    6a96:	37 40 3e 6b 	mov	#27454,	r7	;#0x6b3e
    6a9a:	0d 49       	mov	r9,	r13	;
    6a9c:	0c 48       	mov	r8,	r12	;
    6a9e:	87 12       	call	r7		;

00006aa0 <.LVL11>:
    6aa0:	3c 93       	cmp	#-1,	r12	;r3 As==11
    6aa2:	e4 27       	jz	$-54     	;abs 0x6a6c

00006aa4 <.Loc.224.1>:
    6aa4:	0a 4c       	mov	r12,	r10	;
    6aa6:	1a 53       	inc	r10		;
    6aa8:	1a c3       	bic	#1,	r10	;r3 As==01

00006aaa <.LVL12>:
    6aaa:	0c 9a       	cmp	r10,	r12	;
    6aac:	06 24       	jz	$+14     	;abs 0x6aba

00006aae <.Loc.229.1>:
    6aae:	0d 4a       	mov	r10,	r13	;
    6ab0:	0d 8c       	sub	r12,	r13	;
    6ab2:	0c 48       	mov	r8,	r12	;

00006ab4 <.LVL13>:
    6ab4:	87 12       	call	r7		;

00006ab6 <.LVL14>:
    6ab6:	3c 93       	cmp	#-1,	r12	;r3 As==11
    6ab8:	d9 27       	jz	$-76     	;abs 0x6a6c

00006aba <.L14>:
    6aba:	0c 49       	mov	r9,	r12	;
    6abc:	0d 43       	clr	r13		;
    6abe:	8a 4c 00 00 	mov	r12,	0(r10)	;
    6ac2:	8a 4d 02 00 	mov	r13,	2(r10)	;
    6ac6:	17 3c       	jmp	$+48     	;abs 0x6af6

00006ac8 <.L10>:
    6ac8:	2c 4a       	mov	@r10,	r12	;
    6aca:	0c 89       	sub	r9,	r12	;

00006acc <.LVL17>:
    6acc:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ace:	33 38       	jl	$+104    	;abs 0x6b36

00006ad0 <.Loc.270.1>:
    6ad0:	7e 40 0b 00 	mov.b	#11,	r14	;#0x000b
    6ad4:	0e 9c       	cmp	r12,	r14	;
    6ad6:	25 2c       	jc	$+76     	;abs 0x6b22

00006ad8 <.Loc.274.1>:
    6ad8:	0d 4c       	mov	r12,	r13	;
    6ada:	0e 4c       	mov	r12,	r14	;
    6adc:	4e 18 0e 11 	rpt #15 { rrax.w	r14		;

00006ae0 <.LVL18>:
    6ae0:	8a 4d 00 00 	mov	r13,	0(r10)	;
    6ae4:	8a 4e 02 00 	mov	r14,	2(r10)	;

00006ae8 <.Loc.275.1>:
    6ae8:	0a 5c       	add	r12,	r10	;

00006aea <.Loc.276.1>:
    6aea:	0e 49       	mov	r9,	r14	;
    6aec:	0f 43       	clr	r15		;
    6aee:	8a 4e 00 00 	mov	r14,	0(r10)	;
    6af2:	8a 4f 02 00 	mov	r15,	2(r10)	;

00006af6 <.L8>:
    6af6:	0d 4a       	mov	r10,	r13	;
    6af8:	2d 52       	add	#4,	r13	;r2 As==10

00006afa <.LVL21>:
    6afa:	0c 4a       	mov	r10,	r12	;
    6afc:	3c 50 0b 00 	add	#11,	r12	;#0x000b
    6b00:	3c f0 f8 ff 	and	#-8,	r12	;#0xfff8

00006b04 <.LVL22>:
    6b04:	0e 4c       	mov	r12,	r14	;
    6b06:	0e 8d       	sub	r13,	r14	;

00006b08 <.LVL23>:
    6b08:	0c 9d       	cmp	r13,	r12	;
    6b0a:	b4 27       	jz	$-150    	;abs 0x6a74

00006b0c <.Loc.320.1>:
    6b0c:	0a 5e       	add	r14,	r10	;

00006b0e <.LVL24>:
    6b0e:	0d 8c       	sub	r12,	r13	;

00006b10 <.LVL25>:
    6b10:	0e 4d       	mov	r13,	r14	;
    6b12:	0f 4d       	mov	r13,	r15	;
    6b14:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006b18 <.LVL26>:
    6b18:	8a 4e 00 00 	mov	r14,	0(r10)	;
    6b1c:	8a 4f 02 00 	mov	r15,	2(r10)	;
    6b20:	a9 3f       	jmp	$-172    	;abs 0x6a74

00006b22 <.L7>:
    6b22:	1c 4a 04 00 	mov	4(r10),	r12	;

00006b26 <.LVL28>:
    6b26:	0d 9a       	cmp	r10,	r13	;
    6b28:	03 20       	jnz	$+8      	;abs 0x6b30

00006b2a <.Loc.284.1>:
    6b2a:	82 4c 2c 1d 	mov	r12,	&0x1d2c	;
    6b2e:	e3 3f       	jmp	$-56     	;abs 0x6af6

00006b30 <.L9>:
    6b30:	8d 4c 04 00 	mov	r12,	4(r13)	;
    6b34:	e0 3f       	jmp	$-62     	;abs 0x6af6

00006b36 <.L6>:
    6b36:	0d 4a       	mov	r10,	r13	;
    6b38:	1a 4a 04 00 	mov	4(r10),	r10	;

00006b3c <.LVL30>:
    6b3c:	a0 3f       	jmp	$-190    	;abs 0x6a7e

00006b3e <_sbrk_r>:
    6b3e:	0a 15       	pushm	#1,	r10	;16-bit words

00006b40 <.LCFI0>:
    6b40:	0a 4c       	mov	r12,	r10	;
    6b42:	0c 4d       	mov	r13,	r12	;

00006b44 <.LVL1>:
    6b44:	82 43 2e 1d 	mov	#0,	&0x1d2e	;r3 As==00

00006b48 <L0^A>:
    6b48:	b0 12 82 6b 	call	#27522		;#0x6b82

00006b4c <.LVL2>:
    6b4c:	3c 93       	cmp	#-1,	r12	;r3 As==11
    6b4e:	06 20       	jnz	$+14     	;abs 0x6b5c

00006b50 <.Loc.58.1>:
    6b50:	1d 42 2e 1d 	mov	&0x1d2e,r13	;0x1d2e

00006b54 <.Loc.58.1>:
    6b54:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b56:	02 24       	jz	$+6      	;abs 0x6b5c

00006b58 <.Loc.59.1>:
    6b58:	8a 4d 00 00 	mov	r13,	0(r10)	;

00006b5c <.L1>:
    6b5c:	0a 17       	popm	#1,	r10	;16-bit words

00006b5e <.LCFI1>:
    6b5e:	30 41       	ret			

00006b60 <__mspabi_srlll>:
    6b60:	0f 4b       	mov	r11,	r15	;
    6b62:	0b 4c       	mov	r12,	r11	;
    6b64:	0e 4a       	mov	r10,	r14	;
    6b66:	0d 49       	mov	r9,	r13	;
    6b68:	0c 48       	mov	r8,	r12	;
    6b6a:	0b 93       	cmp	#0,	r11	;r3 As==00
    6b6c:	01 20       	jnz	$+4      	;abs 0x6b70
    6b6e:	30 41       	ret			

00006b70 <.L1^B4>:
    6b70:	12 c3       	clrc			
    6b72:	0f 10       	rrc	r15		;
    6b74:	0e 10       	rrc	r14		;
    6b76:	0d 10       	rrc	r13		;
    6b78:	0c 10       	rrc	r12		;
    6b7a:	3b 53       	add	#-1,	r11	;r3 As==11
    6b7c:	f9 23       	jnz	$-12     	;abs 0x6b70
    6b7e:	30 41       	ret			

00006b80 <_exit>:
    6b80:	ff 3f       	jmp	$+0      	;abs 0x6b80

00006b82 <_sbrk>:
    6b82:	21 83       	decd	r1		;

00006b84 <L0^A>:
    6b84:	0d 4c       	mov	r12,	r13	;

00006b86 <.Loc.26.1>:
    6b86:	1c 42 7a 1c 	mov	&0x1c7a,r12	;0x1c7a

00006b8a <.LVL1>:
    6b8a:	4e 43       	clr.b	r14		;
    6b8c:	0e 51       	add	r1,	r14	;
    6b8e:	81 4e 00 00 	mov	r14,	0(r1)	;

00006b92 <.Loc.29.1>:
    6b92:	0d 5c       	add	r12,	r13	;

00006b94 <.LVL2>:
    6b94:	0e 9d       	cmp	r13,	r14	;
    6b96:	09 2c       	jc	$+20     	;abs 0x6baa

00006b98 <.LBB4>:
    6b98:	7e 40 19 00 	mov.b	#25,	r14	;#0x0019
    6b9c:	3d 40 0a 45 	mov	#17674,	r13	;#0x450a
    6ba0:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006ba2 <.LVL4>:
    6ba2:	b0 12 b2 6b 	call	#27570		;#0x6bb2

00006ba6 <.LVL5>:
    6ba6:	b0 12 18 6c 	call	#27672		;#0x6c18

00006baa <.L2>:
    6baa:	82 4d 7a 1c 	mov	r13,	&0x1c7a	;

00006bae <.Loc.37.1>:
    6bae:	21 53       	incd	r1		;

00006bb0 <.LCFI1>:
    6bb0:	30 41       	ret			

00006bb2 <write>:
    6bb2:	5a 15       	pushm	#6,	r10	;16-bit words

00006bb4 <.LCFI0>:
    6bb4:	07 4c       	mov	r12,	r7	;
    6bb6:	06 4d       	mov	r13,	r6	;
    6bb8:	0a 4e       	mov	r14,	r10	;

00006bba <.LBB5>:
    6bba:	05 4c       	mov	r12,	r5	;
    6bbc:	47 19 05 10 	rpt #8 { rrux.w	r5		;

00006bc0 <.LBE5>:
    6bc0:	48 43       	clr.b	r8		;

00006bc2 <.L2>:
    6bc2:	4c 43       	clr.b	r12		;
    6bc4:	0c 9a       	cmp	r10,	r12	;
    6bc6:	03 38       	jl	$+8      	;abs 0x6bce

00006bc8 <.Loc.60.1>:
    6bc8:	0c 48       	mov	r8,	r12	;
    6bca:	55 17       	popm	#6,	r10	;16-bit words

00006bcc <.LCFI1>:
    6bcc:	30 41       	ret			

00006bce <.L4>:
    6bce:	09 4a       	mov	r10,	r9	;
    6bd0:	7c 40 40 00 	mov.b	#64,	r12	;#0x0040
    6bd4:	0c 9a       	cmp	r10,	r12	;
    6bd6:	02 34       	jge	$+6      	;abs 0x6bdc

00006bd8 <.LVL3>:
    6bd8:	79 40 40 00 	mov.b	#64,	r9	;#0x0040

00006bdc <.L3>:
    6bdc:	4c 49       	mov.b	r9,	r12	;
    6bde:	c2 4c 7c 1c 	mov.b	r12,	&0x1c7c	;

00006be2 <.Loc.22.1>:
    6be2:	c2 43 7d 1c 	mov.b	#0,	&0x1c7d	;r3 As==00

00006be6 <.Loc.23.1>:
    6be6:	f2 40 f3 ff 	mov.b	#-13,	&0x1c7e	;#0xfff3
    6bea:	7e 1c 

00006bec <.Loc.24.1>:
    6bec:	c2 47 7f 1c 	mov.b	r7,	&0x1c7f	;

00006bf0 <.Loc.25.1>:
    6bf0:	c2 45 80 1c 	mov.b	r5,	&0x1c80	;

00006bf4 <.Loc.26.1>:
    6bf4:	c2 4c 81 1c 	mov.b	r12,	&0x1c81	;

00006bf8 <.Loc.27.1>:
    6bf8:	c2 43 82 1c 	mov.b	#0,	&0x1c82	;r3 As==00

00006bfc <.Loc.28.1>:
    6bfc:	0e 49       	mov	r9,	r14	;
    6bfe:	0d 46       	mov	r6,	r13	;
    6c00:	0d 58       	add	r8,	r13	;

00006c02 <.LVL5>:
    6c02:	3c 40 87 1c 	mov	#7303,	r12	;#0x1c87
    6c06:	b0 12 76 69 	call	#26998		;#0x6976

00006c0a <.LVL6>:
    6c0a:	b0 12 14 6c 	call	#27668		;#0x6c14

00006c0e <.LBE9>:
    6c0e:	08 59       	add	r9,	r8	;

00006c10 <.LVL8>:
    6c10:	0a 89       	sub	r9,	r10	;

00006c12 <.LVL9>:
    6c12:	d7 3f       	jmp	$-80     	;abs 0x6bc2

00006c14 <C$$IO$$>:
    6c14:	03 43       	nop			

00006c16 <L0^A>:
    6c16:	30 41       	ret			

00006c18 <abort>:
    6c18:	7c 40 06 00 	mov.b	#6,	r12	;
    6c1c:	b0 12 d4 6c 	call	#27860		;#0x6cd4

00006c20 <.LVL0>:
    6c20:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6c22:	b0 12 80 6b 	call	#27520		;#0x6b80

00006c26 <memmove>:
    6c26:	1a 15       	pushm	#2,	r10	;16-bit words

00006c28 <.LCFI0>:
    6c28:	0f 4d       	mov	r13,	r15	;
    6c2a:	0f 5e       	add	r14,	r15	;

00006c2c <.Loc.69.1>:
    6c2c:	0d 9c       	cmp	r12,	r13	;
    6c2e:	02 2c       	jc	$+6      	;abs 0x6c34

00006c30 <.Loc.69.1>:
    6c30:	0c 9f       	cmp	r15,	r12	;
    6c32:	07 28       	jnc	$+16     	;abs 0x6c42

00006c34 <.L2>:
    6c34:	0e 4c       	mov	r12,	r14	;

00006c36 <.L4>:
    6c36:	0d 9f       	cmp	r15,	r13	;
    6c38:	0a 24       	jz	$+22     	;abs 0x6c4e

00006c3a <.LVL3>:
    6c3a:	fe 4d 00 00 	mov.b	@r13+,	0(r14)	;

00006c3e <.LVL4>:
    6c3e:	1e 53       	inc	r14		;
    6c40:	fa 3f       	jmp	$-10     	;abs 0x6c36

00006c42 <.L3>:
    6c42:	09 4e       	mov	r14,	r9	;
    6c44:	39 e3       	inv	r9		;

00006c46 <.Loc.74.1>:
    6c46:	4d 43       	clr.b	r13		;

00006c48 <.L5>:
    6c48:	3d 53       	add	#-1,	r13	;r3 As==11

00006c4a <.LVL7>:
    6c4a:	09 9d       	cmp	r13,	r9	;
    6c4c:	02 20       	jnz	$+6      	;abs 0x6c52

00006c4e <.L9>:
    6c4e:	19 17       	popm	#2,	r10	;16-bit words

00006c50 <.LCFI1>:
    6c50:	30 41       	ret			

00006c52 <.L6>:
    6c52:	0b 4e       	mov	r14,	r11	;
    6c54:	0b 5d       	add	r13,	r11	;
    6c56:	0b 5c       	add	r12,	r11	;
    6c58:	0a 4f       	mov	r15,	r10	;
    6c5a:	0a 5d       	add	r13,	r10	;

00006c5c <.LVL10>:
    6c5c:	eb 4a 00 00 	mov.b	@r10,	0(r11)	;
    6c60:	f3 3f       	jmp	$-24     	;abs 0x6c48

00006c62 <memset>:
    6c62:	0e 5c       	add	r12,	r14	;

00006c64 <.LVL2>:
    6c64:	0f 4c       	mov	r12,	r15	;

00006c66 <L0^A>:
    6c66:	0f 9e       	cmp	r14,	r15	;
    6c68:	01 20       	jnz	$+4      	;abs 0x6c6c

00006c6a <.Loc.104.1>:
    6c6a:	30 41       	ret			

00006c6c <.L3>:
    6c6c:	1f 53       	inc	r15		;

00006c6e <.LVL4>:
    6c6e:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    6c72:	f9 3f       	jmp	$-12     	;abs 0x6c66

00006c74 <_raise_r>:
    6c74:	1a 15       	pushm	#2,	r10	;16-bit words

00006c76 <L0^A>:
    6c76:	0a 4c       	mov	r12,	r10	;
    6c78:	09 4d       	mov	r13,	r9	;

00006c7a <.Loc.149.1>:
    6c7a:	7c 40 1f 00 	mov.b	#31,	r12	;#0x001f

00006c7e <.LVL13>:
    6c7e:	0c 9d       	cmp	r13,	r12	;
    6c80:	06 2c       	jc	$+14     	;abs 0x6c8e

00006c82 <.Loc.153.1>:
    6c82:	ba 40 16 00 	mov	#22,	0(r10)	;#0x0016
    6c86:	00 00 

00006c88 <.Loc.154.1>:
    6c88:	3c 43       	mov	#-1,	r12	;r3 As==11

00006c8a <.L16>:
    6c8a:	19 17       	popm	#2,	r10	;16-bit words

00006c8c <.LCFI6>:
    6c8c:	30 41       	ret			

00006c8e <.L17>:
    6c8e:	1d 4a 22 00 	mov	34(r10),r13	;0x00022

00006c92 <.Loc.157.1>:
    6c92:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c94:	06 24       	jz	$+14     	;abs 0x6ca2

00006c96 <.Loc.160.1>:
    6c96:	0c 49       	mov	r9,	r12	;
    6c98:	5c 02       	rlam	#1,	r12	;
    6c9a:	0d 5c       	add	r12,	r13	;

00006c9c <.Loc.160.1>:
    6c9c:	2e 4d       	mov	@r13,	r14	;

00006c9e <.LVL15>:
    6c9e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6ca0:	09 20       	jnz	$+20     	;abs 0x6cb4

00006ca2 <.L19>:
    6ca2:	0c 4a       	mov	r10,	r12	;
    6ca4:	b0 12 04 6d 	call	#27908		;#0x6d04

00006ca8 <.LVL17>:
    6ca8:	0e 49       	mov	r9,	r14	;
    6caa:	0d 4c       	mov	r12,	r13	;
    6cac:	0c 4a       	mov	r10,	r12	;
    6cae:	b0 12 e0 6c 	call	#27872		;#0x6ce0

00006cb2 <.LVL18>:
    6cb2:	eb 3f       	jmp	$-40     	;abs 0x6c8a

00006cb4 <.L20>:
    6cb4:	4c 43       	clr.b	r12		;

00006cb6 <.Loc.164.1>:
    6cb6:	1e 93       	cmp	#1,	r14	;r3 As==01
    6cb8:	e8 27       	jz	$-46     	;abs 0x6c8a

00006cba <.Loc.166.1>:
    6cba:	3e 93       	cmp	#-1,	r14	;r3 As==11
    6cbc:	05 20       	jnz	$+12     	;abs 0x6cc8

00006cbe <.Loc.168.1>:
    6cbe:	ba 40 16 00 	mov	#22,	0(r10)	;#0x0016
    6cc2:	00 00 

00006cc4 <.Loc.169.1>:
    6cc4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6cc6:	e1 3f       	jmp	$-60     	;abs 0x6c8a

00006cc8 <.L21>:
    6cc8:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00006ccc <.Loc.174.1>:
    6ccc:	0c 49       	mov	r9,	r12	;
    6cce:	8e 12       	call	r14		;

00006cd0 <.LVL20>:
    6cd0:	4c 43       	clr.b	r12		;
    6cd2:	db 3f       	jmp	$-72     	;abs 0x6c8a

00006cd4 <raise>:
    6cd4:	0d 4c       	mov	r12,	r13	;
    6cd6:	1c 42 00 1c 	mov	&0x1c00,r12	;0x1c00

00006cda <L0^A>:
    6cda:	b0 12 74 6c 	call	#27764		;#0x6c74

00006cde <.LVL29>:
    6cde:	30 41       	ret			

00006ce0 <_kill_r>:
    6ce0:	0a 15       	pushm	#1,	r10	;16-bit words

00006ce2 <.LCFI0>:
    6ce2:	0a 4c       	mov	r12,	r10	;
    6ce4:	0c 4d       	mov	r13,	r12	;

00006ce6 <.LVL1>:
    6ce6:	0d 4e       	mov	r14,	r13	;

00006ce8 <.LVL2>:
    6ce8:	82 43 2e 1d 	mov	#0,	&0x1d2e	;r3 As==00

00006cec <.Loc.61.1>:
    6cec:	b0 12 10 6d 	call	#27920		;#0x6d10

00006cf0 <.LVL3>:
    6cf0:	3c 93       	cmp	#-1,	r12	;r3 As==11
    6cf2:	06 20       	jnz	$+14     	;abs 0x6d00

00006cf4 <.Loc.61.1>:
    6cf4:	1d 42 2e 1d 	mov	&0x1d2e,r13	;0x1d2e

00006cf8 <.Loc.61.1>:
    6cf8:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cfa:	02 24       	jz	$+6      	;abs 0x6d00

00006cfc <.Loc.62.1>:
    6cfc:	8a 4d 00 00 	mov	r13,	0(r10)	;

00006d00 <.L1>:
    6d00:	0a 17       	popm	#1,	r10	;16-bit words

00006d02 <.LCFI1>:
    6d02:	30 41       	ret			

00006d04 <_getpid_r>:
    6d04:	b0 12 0a 6d 	call	#27914		;#0x6d0a

00006d08 <.LVL5>:
    6d08:	30 41       	ret			

00006d0a <getpid>:
    6d0a:	3c 40 2a 00 	mov	#42,	r12	;#0x002a

00006d0e <.Loc.57.1>:
    6d0e:	30 41       	ret			

00006d10 <kill>:
    6d10:	b0 12 1e 6d 	call	#27934		;#0x6d1e
    6d14:	bc 40 58 00 	mov	#88,	0(r12)	;#0x0058
    6d18:	00 00 
    6d1a:	3c 43       	mov	#-1,	r12	;r3 As==11
    6d1c:	30 41       	ret			

00006d1e <__errno>:
    6d1e:	1c 42 00 1c 	mov	&0x1c00,r12	;0x1c00
    6d22:	30 41       	ret			
