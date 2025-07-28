
bin/rsa_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	34 68       	addc	@r8+,	r4	;

Disassembly of section .text:

00005494 <__crt0_start>:
    5494:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005498 <__crt0_init_bss>:
    5498:	3c 40 02 1c 	mov	#7170,	r12	;#0x1c02

0000549c <.Loc.76.1>:
    549c:	0d 43       	clr	r13		;

0000549e <.Loc.77.1>:
    549e:	3e 40 62 00 	mov	#98,	r14	;#0x0062

000054a2 <.Loc.81.1>:
    54a2:	b0 12 d2 6d 	call	#28114		;#0x6dd2

000054a6 <__crt0_movedata>:
    54a6:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

000054aa <.Loc.116.1>:
    54aa:	3d 40 90 54 	mov	#21648,	r13	;#0x5490

000054ae <.Loc.119.1>:
    54ae:	0d 9c       	cmp	r12,	r13	;

000054b0 <.Loc.120.1>:
    54b0:	04 24       	jz	$+10     	;abs 0x54ba

000054b2 <.Loc.122.1>:
    54b2:	3e 40 02 00 	mov	#2,	r14	;

000054b6 <.Loc.124.1>:
    54b6:	b0 12 96 6d 	call	#28054		;#0x6d96

000054ba <__crt0_call_main>:
    54ba:	0c 43       	clr	r12		;

000054bc <.Loc.254.1>:
    54bc:	b0 12 04 64 	call	#25604		;#0x6404

000054c0 <__crt0_call_exit>:
    54c0:	b0 12 94 6d 	call	#28052		;#0x6d94

000054c4 <initTask>:
    54c4:	0a 15       	pushm	#1,	r10	;16-bit words

000054c6 <.LCFI0>:
    54c6:	c2 93 a0 47 	cmp.b	#0,	&0x47a0	;r3 As==00
    54ca:	12 20       	jnz	$+38     	;abs 0x54f0

000054cc <.Loc.67.1>:
    54cc:	8c 43 ec 00 	mov	#0,	236(r12);r3 As==00, 0x00ec
    54d0:	8c 43 ee 00 	mov	#0,	238(r12);r3 As==00, 0x00ee

000054d4 <.Loc.68.1>:
    54d4:	8c 43 04 01 	mov	#0,	260(r12);r3 As==00, 0x0104
    54d8:	8c 43 06 01 	mov	#0,	262(r12);r3 As==00, 0x0106

000054dc <.Loc.69.1>:
    54dc:	8c 43 fc 00 	mov	#0,	252(r12);r3 As==00, 0x00fc
    54e0:	8c 43 fe 00 	mov	#0,	254(r12);r3 As==00, 0x00fe

000054e4 <.Loc.70.1>:
    54e4:	8c 43 14 01 	mov	#0,	276(r12);r3 As==00, 0x0114
    54e8:	8c 43 16 01 	mov	#0,	278(r12);r3 As==00, 0x0116

000054ec <.Loc.71.1>:
    54ec:	d2 43 a0 47 	mov.b	#1,	&0x47a0	;r3 As==01

000054f0 <.L2>:
    54f0:	d2 43 a1 47 	mov.b	#1,	&0x47a1	;r3 As==01

000054f4 <.Loc.78.1>:
    54f4:	bc 40 07 00 	mov	#7,	0(r12)	;
    54f8:	00 00 
    54fa:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

000054fe <.Loc.82.1>:
    54fe:	bc 40 11 00 	mov	#17,	4(r12)	;#0x0011
    5502:	04 00 
    5504:	8c 43 06 00 	mov	#0,	6(r12)	;r3 As==00

00005508 <.Loc.83.1>:
    5508:	bc 40 77 00 	mov	#119,	8(r12)	;#0x0077
    550c:	08 00 
    550e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00005512 <.Loc.84.1>:
    5512:	bc 40 60 00 	mov	#96,	12(r12)	;#0x0060, 0x000c
    5516:	0c 00 
    5518:	8c 43 0e 00 	mov	#0,	14(r12)	;r3 As==00, 0x000e

0000551c <.Loc.85.1>:
    551c:	9c 43 18 00 	mov	#1,	24(r12)	;r3 As==01, 0x0018
    5520:	8c 43 1a 00 	mov	#0,	26(r12)	;r3 As==00, 0x001a

00005524 <.Loc.86.1>:
    5524:	8c 43 10 00 	mov	#0,	16(r12)	;r3 As==00, 0x0010
    5528:	8c 43 12 00 	mov	#0,	18(r12)	;r3 As==00, 0x0012

0000552c <.Loc.87.1>:
    552c:	8c 43 1c 00 	mov	#0,	28(r12)	;r3 As==00, 0x001c
    5530:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00005534 <.LBB2>:
    5534:	1d 42 00 1c 	mov	&0x1c00,r13	;0x1c00

00005538 <.LVL3>:
    5538:	3c 50 70 00 	add	#112,	r12	;#0x0070

0000553c <.LVL4>:
    553c:	0e 4d       	mov	r13,	r14	;
    553e:	3e 50 05 00 	add	#5,	r14	;

00005542 <.L3>:
    5542:	7a 4d       	mov.b	@r13+,	r10	;
    5544:	0b 43       	clr	r11		;
    5546:	8c 4a 00 00 	mov	r10,	0(r12)	;
    554a:	8c 4b 02 00 	mov	r11,	2(r12)	;
    554e:	2c 52       	add	#4,	r12	;r2 As==10

00005550 <.Loc.88.1>:
    5550:	0d 9e       	cmp	r14,	r13	;
    5552:	f7 23       	jnz	$-16     	;abs 0x5542

00005554 <.LBE2>:
    5554:	3c 40 5c 55 	mov	#21852,	r12	;#0x555c
    5558:	0a 17       	popm	#1,	r10	;16-bit words

0000555a <.LCFI1>:
    555a:	30 41       	ret			

0000555c <ce_1>:
    555c:	1d 4c 18 00 	mov	24(r12),r13	;0x00018
    5560:	1d 53       	inc	r13		;
    5562:	1e 4c 1a 00 	mov	26(r12),r14	;0x0001a
    5566:	0e 63       	adc	r14		;
    5568:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018
    556c:	8c 4e 1a 00 	mov	r14,	26(r12)	; 0x001a

00005570 <.Loc.100.1>:
    5570:	1e 9c 0e 00 	cmp	14(r12),r14	;0x0000e
    5574:	06 38       	jl	$+14     	;abs 0x5582
    5576:	8c 9e 0e 00 	cmp	r14,	14(r12)	; 0x000e
    557a:	06 20       	jnz	$+14     	;abs 0x5588
    557c:	1d 9c 0c 00 	cmp	12(r12),r13	;0x0000c
    5580:	03 2c       	jc	$+8      	;abs 0x5588

00005582 <.L9>:
    5582:	3c 40 8e 55 	mov	#21902,	r12	;#0x558e

00005586 <.L5>:
    5586:	30 41       	ret			

00005588 <.L8>:
    5588:	3c 40 ac 56 	mov	#22188,	r12	;#0x56ac

0000558c <.LVL11>:
    558c:	fc 3f       	jmp	$-6      	;abs 0x5586

0000558e <ce_2>:
    558e:	1e 4c 18 00 	mov	24(r12),r14	;0x00018
    5592:	1f 4c 1a 00 	mov	26(r12),r15	;0x0001a
    5596:	1d 4c 0e 00 	mov	14(r12),r13	;0x0000e
    559a:	1c 4c 0c 00 	mov	12(r12),r12	;0x0000c

0000559e <.LVL13>:
    559e:	b0 12 50 6c 	call	#27728		;#0x6c50

000055a2 <.Loc.112.1>:
    55a2:	0d dc       	bis	r12,	r13	;

000055a4 <.Loc.114.1>:
    55a4:	3c 40 5c 55 	mov	#21852,	r12	;#0x555c

000055a8 <.Loc.112.1>:
    55a8:	0d 93       	cmp	#0,	r13	;r3 As==00
    55aa:	02 24       	jz	$+6      	;abs 0x55b0

000055ac <.Loc.118.1>:
    55ac:	3c 40 a4 58 	mov	#22692,	r12	;#0x58a4

000055b0 <.L10>:
    55b0:	30 41       	ret			

000055b2 <ce_3>:
    55b2:	9c 93 1c 00 	cmp	#1,	28(r12)	;r3 As==01, 0x001c
    55b6:	1f 20       	jnz	$+64     	;abs 0x55f6
    55b8:	8c 93 1e 00 	cmp	#0,	30(r12)	;r3 As==00, 0x001e
    55bc:	1c 20       	jnz	$+58     	;abs 0x55f6

000055be <.Loc.142.1>:
    55be:	1e 4c 18 00 	mov	24(r12),r14	;0x00018
    55c2:	1d 4c 1a 00 	mov	26(r12),r13	;0x0001a

000055c6 <.Loc.143.1>:
    55c6:	8c 9e 00 00 	cmp	r14,	0(r12)	;
    55ca:	03 20       	jnz	$+8      	;abs 0x55d2
    55cc:	8c 9d 02 00 	cmp	r13,	2(r12)	;
    55d0:	12 24       	jz	$+38     	;abs 0x55f6

000055d2 <.L21>:
    55d2:	8c 9e 04 00 	cmp	r14,	4(r12)	;
    55d6:	03 20       	jnz	$+8      	;abs 0x55de
    55d8:	8c 9d 06 00 	cmp	r13,	6(r12)	;
    55dc:	0c 24       	jz	$+26     	;abs 0x55f6

000055de <.L22>:
    55de:	1f 4c 10 00 	mov	16(r12),r15	;0x00010
    55e2:	3f 52       	add	#8,	r15	;r2 As==11
    55e4:	5f 06       	rlam	#2,	r15	;
    55e6:	0c 5f       	add	r15,	r12	;

000055e8 <.LVL17>:
    55e8:	8c 4e 00 00 	mov	r14,	0(r12)	;
    55ec:	8c 4d 02 00 	mov	r13,	2(r12)	;

000055f0 <.Loc.152.1>:
    55f0:	3c 40 fc 55 	mov	#22012,	r12	;#0x55fc

000055f4 <.L14>:
    55f4:	30 41       	ret			

000055f6 <.L24>:
    55f6:	3c 40 5c 55 	mov	#21852,	r12	;#0x555c

000055fa <.LVL19>:
    55fa:	fc 3f       	jmp	$-6      	;abs 0x55f4

000055fc <cd>:
    55fc:	6a 15       	pushm	#7,	r10	;16-bit words

000055fe <.LCFI2>:
    55fe:	0a 4c       	mov	r12,	r10	;

00005600 <.Loc.157.1>:
    5600:	16 4c 0c 00 	mov	12(r12),r6	;0x0000c
    5604:	17 4c 0e 00 	mov	14(r12),r7	;0x0000e

00005608 <.Loc.161.1>:
    5608:	1c 4c 10 00 	mov	16(r12),r12	;0x00010

0000560c <.LVL22>:
    560c:	3c 52       	add	#8,	r12	;r2 As==11
    560e:	5c 06       	rlam	#2,	r12	;
    5610:	0c 5a       	add	r10,	r12	;
    5612:	24 4c       	mov	@r12,	r4	;
    5614:	15 4c 02 00 	mov	2(r12),	r5	;

00005618 <.Loc.157.1>:
    5618:	58 43       	mov.b	#1,	r8	;r3 As==01
    561a:	49 43       	clr.b	r9		;

0000561c <.L26>:
    561c:	08 56       	add	r6,	r8	;

0000561e <.LVL24>:
    561e:	09 67       	addc	r7,	r9	;

00005620 <.LVL25>:
    5620:	0e 44       	mov	r4,	r14	;
    5622:	0f 45       	mov	r5,	r15	;
    5624:	0c 48       	mov	r8,	r12	;
    5626:	0d 49       	mov	r9,	r13	;
    5628:	b0 12 50 6c 	call	#27728		;#0x6c50

0000562c <.Loc.161.1>:
    562c:	0c dd       	bis	r13,	r12	;
    562e:	0c 93       	cmp	#0,	r12	;r3 As==00
    5630:	f5 23       	jnz	$-20     	;abs 0x561c

00005632 <.Loc.163.1>:
    5632:	0e 44       	mov	r4,	r14	;
    5634:	0f 45       	mov	r5,	r15	;
    5636:	0c 48       	mov	r8,	r12	;
    5638:	0d 49       	mov	r9,	r13	;
    563a:	b0 12 08 6c 	call	#27656		;#0x6c08

0000563e <.Loc.164.1>:
    563e:	8a 4c 1c 00 	mov	r12,	28(r10)	; 0x001c
    5642:	8a 4d 1e 00 	mov	r13,	30(r10)	; 0x001e

00005646 <.Loc.165.1>:
    5646:	3c 40 4e 56 	mov	#22094,	r12	;#0x564e
    564a:	64 17       	popm	#7,	r10	;16-bit words

0000564c <.LCFI3>:
    564c:	30 41       	ret			

0000564e <ce_4>:
    564e:	1a 15       	pushm	#2,	r10	;16-bit words

00005650 <.LCFI4>:
    5650:	1f 4c 1c 00 	mov	28(r12),r15	;0x0001c

00005654 <.Loc.175.1>:
    5654:	49 43       	clr.b	r9		;
    5656:	09 9f       	cmp	r15,	r9	;
    5658:	17 34       	jge	$+48     	;abs 0x5688
    565a:	1e 4c 10 00 	mov	16(r12),r14	;0x00010
    565e:	1b 4c 12 00 	mov	18(r12),r11	;0x00012

00005662 <.Loc.177.1>:
    5662:	0d 4e       	mov	r14,	r13	;
    5664:	3d 50 12 00 	add	#18,	r13	;#0x0012
    5668:	5d 06       	rlam	#2,	r13	;
    566a:	0d 5c       	add	r12,	r13	;
    566c:	09 4f       	mov	r15,	r9	;
    566e:	0a 4f       	mov	r15,	r10	;
    5670:	4e 18 0a 11 	rpt #15 { rrax.w	r10		;
    5674:	8d 49 00 00 	mov	r9,	0(r13)	;
    5678:	8d 4a 02 00 	mov	r10,	2(r13)	;

0000567c <.Loc.178.1>:
    567c:	1e 53       	inc	r14		;
    567e:	8c 4e 10 00 	mov	r14,	16(r12)	; 0x0010
    5682:	0b 63       	adc	r11		;
    5684:	8c 4b 12 00 	mov	r11,	18(r12)	; 0x0012

00005688 <.L29>:
    5688:	4a 43       	clr.b	r10		;
    568a:	1a 9c 12 00 	cmp	18(r12),r10	;0x00012
    568e:	07 38       	jl	$+16     	;abs 0x569e
    5690:	8c 93 12 00 	cmp	#0,	18(r12)	;r3 As==00, 0x0012
    5694:	08 20       	jnz	$+18     	;abs 0x56a6
    5696:	7d 42       	mov.b	#8,	r13	;r2 As==11
    5698:	1d 9c 10 00 	cmp	16(r12),r13	;0x00010
    569c:	04 2c       	jc	$+10     	;abs 0x56a6

0000569e <.L33>:
    569e:	3c 40 ac 56 	mov	#22188,	r12	;#0x56ac

000056a2 <.L28>:
    56a2:	19 17       	popm	#2,	r10	;16-bit words

000056a4 <.LCFI5>:
    56a4:	30 41       	ret			

000056a6 <.L32>:
    56a6:	3c 40 5c 55 	mov	#21852,	r12	;#0x555c

000056aa <.LVL33>:
    56aa:	fb 3f       	jmp	$-8      	;abs 0x56a2

000056ac <encrypt_init>:
    56ac:	1d 4c f8 00 	mov	248(r12),r13	;0x000f8
    56b0:	3d 50 1c 00 	add	#28,	r13	;#0x001c
    56b4:	5d 06       	rlam	#2,	r13	;
    56b6:	0d 5c       	add	r12,	r13	;

000056b8 <.Loc.196.1>:
    56b8:	2e 4d       	mov	@r13,	r14	;
    56ba:	1f 4d 02 00 	mov	2(r13),	r15	;
    56be:	3e 50 a0 ff 	add	#-96,	r14	;#0xffa0
    56c2:	3f 63       	addc	#-1,	r15	;r3 As==11
    56c4:	8c 4e e8 00 	mov	r14,	232(r12); 0x00e8
    56c8:	8c 4f ea 00 	mov	r15,	234(r12); 0x00ea

000056cc <.Loc.197.1>:
    56cc:	9c 43 f4 00 	mov	#1,	244(r12);r3 As==01, 0x00f4
    56d0:	8c 43 f6 00 	mov	#0,	246(r12);r3 As==00, 0x00f6

000056d4 <.Loc.198.1>:
    56d4:	8c 43 fc 00 	mov	#0,	252(r12);r3 As==00, 0x00fc
    56d8:	8c 43 fe 00 	mov	#0,	254(r12);r3 As==00, 0x00fe

000056dc <.LVL36>:
    56dc:	9c 4c 20 00 	mov	32(r12),240(r12);0x00020, 0x00f0
    56e0:	f0 00 
    56e2:	9c 4c 22 00 	mov	34(r12),242(r12);0x00022, 0x00f2
    56e6:	f2 00 

000056e8 <.Loc.202.1>:
    56e8:	3c 40 ee 56 	mov	#22254,	r12	;#0x56ee

000056ec <.LVL37>:
    56ec:	30 41       	ret			

000056ee <encrypt_inner_loop>:
    56ee:	2a 15       	pushm	#3,	r10	;16-bit words

000056f0 <.LCFI7>:
    56f0:	0a 4c       	mov	r12,	r10	;

000056f2 <.Loc.207.1>:
    56f2:	18 4c fc 00 	mov	252(r12),r8	;0x000fc
    56f6:	19 4c fe 00 	mov	254(r12),r9	;0x000fe

000056fa <.Loc.208.1>:
    56fa:	19 9c f2 00 	cmp	242(r12),r9	;0x000f2
    56fe:	06 38       	jl	$+14     	;abs 0x570c
    5700:	8a 99 f2 00 	cmp	r9,	242(r10); 0x00f2
    5704:	21 20       	jnz	$+68     	;abs 0x5748
    5706:	18 9a f0 00 	cmp	240(r10),r8	;0x000f0
    570a:	1e 2c       	jc	$+62     	;abs 0x5748

0000570c <.L39>:
    570c:	1c 4a f4 00 	mov	244(r10),r12	;0x000f4

00005710 <.LVL39>:
    5710:	1d 4a f6 00 	mov	246(r10),r13	;0x000f6
    5714:	1e 4a e8 00 	mov	232(r10),r14	;0x000e8
    5718:	1f 4a ea 00 	mov	234(r10),r15	;0x000ea
    571c:	b0 12 02 6d 	call	#27906		;#0x6d02

00005720 <.Loc.211.1>:
    5720:	1e 4a 08 00 	mov	8(r10),	r14	;
    5724:	1f 4a 0a 00 	mov	10(r10),r15	;0x0000a
    5728:	b0 12 50 6c 	call	#27728		;#0x6c50

0000572c <.Loc.213.1>:
    572c:	8a 4c f4 00 	mov	r12,	244(r10); 0x00f4
    5730:	8a 4d f6 00 	mov	r13,	246(r10); 0x00f6

00005734 <.Loc.214.1>:
    5734:	18 53       	inc	r8		;
    5736:	8a 48 fc 00 	mov	r8,	252(r10); 0x00fc
    573a:	09 63       	adc	r9		;
    573c:	8a 49 fe 00 	mov	r9,	254(r10); 0x00fe

00005740 <.Loc.215.1>:
    5740:	3c 40 ee 56 	mov	#22254,	r12	;#0x56ee

00005744 <.L35>:
    5744:	28 17       	popm	#3,	r10	;16-bit words

00005746 <.LCFI8>:
    5746:	30 41       	ret			

00005748 <.L38>:
    5748:	3c 40 4e 57 	mov	#22350,	r12	;#0x574e
    574c:	fb 3f       	jmp	$-8      	;abs 0x5744

0000574e <encrypt_finish>:
    574e:	0a 15       	pushm	#1,	r10	;16-bit words

00005750 <.LCFI10>:
    5750:	1e 4c f4 00 	mov	244(r12),r14	;0x000f4
    5754:	1f 4c f6 00 	mov	246(r12),r15	;0x000f6

00005758 <.LVL43>:
    5758:	1b 4c f8 00 	mov	248(r12),r11	;0x000f8
    575c:	1a 4c fa 00 	mov	250(r12),r10	;0x000fa
    5760:	0d 4b       	mov	r11,	r13	;
    5762:	5d 06       	rlam	#2,	r13	;
    5764:	0d 5c       	add	r12,	r13	;
    5766:	8d 4e 98 00 	mov	r14,	152(r13); 0x0098
    576a:	8d 4f 9a 00 	mov	r15,	154(r13); 0x009a

0000576e <.Loc.228.1>:
    576e:	3e 50 60 00 	add	#96,	r14	;#0x0060

00005772 <.LVL44>:
    5772:	0f 63       	adc	r15		;

00005774 <.LVL45>:
    5774:	8c 4e ec 00 	mov	r14,	236(r12); 0x00ec
    5778:	8c 4f ee 00 	mov	r15,	238(r12); 0x00ee

0000577c <.Loc.230.1>:
    577c:	8d 4e c0 00 	mov	r14,	192(r13); 0x00c0
    5780:	8d 4f c2 00 	mov	r15,	194(r13); 0x00c2

00005784 <.Loc.233.1>:
    5784:	4e 43       	clr.b	r14		;

00005786 <.LVL46>:
    5786:	0e 9a       	cmp	r10,	r14	;
    5788:	0f 38       	jl	$+32     	;abs 0x57a8
    578a:	0a 93       	cmp	#0,	r10	;r3 As==00
    578c:	03 20       	jnz	$+8      	;abs 0x5794
    578e:	6e 42       	mov.b	#4,	r14	;r2 As==10
    5790:	0e 9b       	cmp	r11,	r14	;
    5792:	0a 28       	jnc	$+22     	;abs 0x57a8

00005794 <.L44>:
    5794:	1b 53       	inc	r11		;
    5796:	8c 4b f8 00 	mov	r11,	248(r12); 0x00f8

0000579a <.LVL47>:
    579a:	0a 63       	adc	r10		;
    579c:	8c 4a fa 00 	mov	r10,	250(r12); 0x00fa

000057a0 <.Loc.236.1>:
    57a0:	3c 40 ac 56 	mov	#22188,	r12	;#0x56ac

000057a4 <.L40>:
    57a4:	0a 17       	popm	#1,	r10	;16-bit words

000057a6 <.LCFI11>:
    57a6:	30 41       	ret			

000057a8 <.L41>:
    57a8:	bd 43 c0 00 	mov	#-1,	192(r13);r3 As==11, 0x00c0

000057ac <.LVL50>:
    57ac:	bd 43 c2 00 	mov	#-1,	194(r13);r3 As==11, 0x00c2

000057b0 <.Loc.241.1>:
    57b0:	3c 40 b6 57 	mov	#22454,	r12	;#0x57b6

000057b4 <.LVL51>:
    57b4:	f7 3f       	jmp	$-16     	;abs 0x57a4

000057b6 <encrypt_print>:
    57b6:	3c 40 bc 57 	mov	#22460,	r12	;#0x57bc

000057ba <.LVL53>:
    57ba:	30 41       	ret			

000057bc <decrypt_init>:
    57bc:	9c 43 0c 01 	mov	#1,	268(r12);r3 As==01, 0x010c
    57c0:	8c 43 0e 01 	mov	#0,	270(r12);r3 As==00, 0x010e

000057c4 <.Loc.254.1>:
    57c4:	8c 43 14 01 	mov	#0,	276(r12);r3 As==00, 0x0114
    57c8:	8c 43 16 01 	mov	#0,	278(r12);r3 As==00, 0x0116

000057cc <.LVL55>:
    57cc:	9c 4c 48 00 	mov	72(r12),264(r12);0x00048, 0x0108
    57d0:	08 01 
    57d2:	9c 4c 4a 00 	mov	74(r12),266(r12);0x0004a, 0x010a
    57d6:	0a 01 

000057d8 <.Loc.258.1>:
    57d8:	3c 40 de 57 	mov	#22494,	r12	;#0x57de

000057dc <.LVL56>:
    57dc:	30 41       	ret			

000057de <decrypt_inner_loop>:
    57de:	2a 15       	pushm	#3,	r10	;16-bit words

000057e0 <.LCFI13>:
    57e0:	0a 4c       	mov	r12,	r10	;

000057e2 <.Loc.263.1>:
    57e2:	1c 4c 10 01 	mov	272(r12),r12	;0x00110

000057e6 <.LVL58>:
    57e6:	3c 50 26 00 	add	#38,	r12	;#0x0026
    57ea:	5c 06       	rlam	#2,	r12	;
    57ec:	0c 5a       	add	r10,	r12	;
    57ee:	1d 4c 02 00 	mov	2(r12),	r13	;
    57f2:	2c 4c       	mov	@r12,	r12	;

000057f4 <.LVL59>:
    57f4:	8a 4c 04 01 	mov	r12,	260(r10); 0x0104
    57f8:	8a 4d 06 01 	mov	r13,	262(r10); 0x0106

000057fc <.Loc.267.1>:
    57fc:	18 4a 14 01 	mov	276(r10),r8	;0x00114
    5800:	19 4a 16 01 	mov	278(r10),r9	;0x00116

00005804 <.Loc.267.1>:
    5804:	19 9a 0a 01 	cmp	266(r10),r9	;0x0010a
    5808:	06 38       	jl	$+14     	;abs 0x5816
    580a:	8a 99 0a 01 	cmp	r9,	266(r10); 0x010a
    580e:	1d 20       	jnz	$+60     	;abs 0x584a
    5810:	18 9a 08 01 	cmp	264(r10),r8	;0x00108
    5814:	1a 2c       	jc	$+54     	;abs 0x584a

00005816 <.L51>:
    5816:	1e 4a 0c 01 	mov	268(r10),r14	;0x0010c
    581a:	1f 4a 0e 01 	mov	270(r10),r15	;0x0010e
    581e:	b0 12 02 6d 	call	#27906		;#0x6d02

00005822 <.LVL60>:
    5822:	1e 4a 08 00 	mov	8(r10),	r14	;
    5826:	1f 4a 0a 00 	mov	10(r10),r15	;0x0000a
    582a:	b0 12 50 6c 	call	#27728		;#0x6c50

0000582e <.Loc.272.1>:
    582e:	8a 4c 0c 01 	mov	r12,	268(r10); 0x010c
    5832:	8a 4d 0e 01 	mov	r13,	270(r10); 0x010e

00005836 <.Loc.273.1>:
    5836:	18 53       	inc	r8		;
    5838:	8a 48 14 01 	mov	r8,	276(r10); 0x0114
    583c:	09 63       	adc	r9		;
    583e:	8a 49 16 01 	mov	r9,	278(r10); 0x0116

00005842 <.Loc.274.1>:
    5842:	3c 40 de 57 	mov	#22494,	r12	;#0x57de

00005846 <.L47>:
    5846:	28 17       	popm	#3,	r10	;16-bit words

00005848 <.LCFI14>:
    5848:	30 41       	ret			

0000584a <.L50>:
    584a:	3c 40 50 58 	mov	#22608,	r12	;#0x5850

0000584e <.LVL63>:
    584e:	fb 3f       	jmp	$-8      	;abs 0x5846

00005850 <decrypt_finish>:
    5850:	0a 15       	pushm	#1,	r10	;16-bit words

00005852 <.LCFI16>:
    5852:	1b 4c 0c 01 	mov	268(r12),r11	;0x0010c
    5856:	3b 50 60 00 	add	#96,	r11	;#0x0060
    585a:	1f 4c 0e 01 	mov	270(r12),r15	;0x0010e
    585e:	0f 63       	adc	r15		;

00005860 <.Loc.286.1>:
    5860:	8c 4b 00 01 	mov	r11,	256(r12); 0x0100
    5864:	8c 4f 02 01 	mov	r15,	258(r12); 0x0102

00005868 <.Loc.287.1>:
    5868:	1e 4c 10 01 	mov	272(r12),r14	;0x00110
    586c:	1a 4c 12 01 	mov	274(r12),r10	;0x00112
    5870:	0d 4e       	mov	r14,	r13	;
    5872:	5d 06       	rlam	#2,	r13	;
    5874:	0d 5c       	add	r12,	r13	;
    5876:	8d 4b 70 00 	mov	r11,	112(r13); 0x0070
    587a:	8d 4f 72 00 	mov	r15,	114(r13); 0x0072

0000587e <.Loc.289.1>:
    587e:	bd 93 c0 00 	cmp	#-1,	192(r13);r3 As==11, 0x00c0
    5882:	03 20       	jnz	$+8      	;abs 0x588a
    5884:	bd 93 c2 00 	cmp	#-1,	194(r13);r3 As==11, 0x00c2
    5888:	0a 24       	jz	$+22     	;abs 0x589e

0000588a <.L56>:
    588a:	1e 53       	inc	r14		;
    588c:	8c 4e 10 01 	mov	r14,	272(r12); 0x0110
    5890:	0a 63       	adc	r10		;
    5892:	8c 4a 12 01 	mov	r10,	274(r12); 0x0112

00005896 <.Loc.292.1>:
    5896:	3c 40 bc 57 	mov	#22460,	r12	;#0x57bc

0000589a <.L52>:
    589a:	0a 17       	popm	#1,	r10	;16-bit words

0000589c <.LCFI17>:
    589c:	30 41       	ret			

0000589e <.L57>:
    589e:	3c 40 16 59 	mov	#22806,	r12	;#0x5916

000058a2 <.LVL68>:
    58a2:	fb 3f       	jmp	$-8      	;abs 0x589a

000058a4 <is_i_prime>:
    58a4:	4a 15       	pushm	#5,	r10	;16-bit words

000058a6 <.LCFI19>:
    58a6:	0a 4c       	mov	r12,	r10	;

000058a8 <.Loc.124.1>:
    58a8:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

000058ac <.LVL70>:
    58ac:	1e 4a 1a 00 	mov	26(r10),r14	;0x0001a
    58b0:	4e 18 0e 11 	rpt #15 { rrax.w	r14		;
    58b4:	1d 4a 1a 00 	mov	26(r10),r13	;0x0001a
    58b8:	0f 4e       	mov	r14,	r15	;
    58ba:	b0 12 da 59 	call	#23002		;#0x59da

000058be <.LVL71>:
    58be:	08 4c       	mov	r12,	r8	;
    58c0:	09 4c       	mov	r12,	r9	;
    58c2:	4e 18 09 11 	rpt #15 { rrax.w	r9		;
    58c6:	8a 48 14 00 	mov	r8,	20(r10)	; 0x0014
    58ca:	8a 49 16 00 	mov	r9,	22(r10)	; 0x0016

000058ce <.LVL72>:
    58ce:	66 43       	mov.b	#2,	r6	;r3 As==10
    58d0:	47 43       	clr.b	r7		;

000058d2 <.L59>:
    58d2:	0e 46       	mov	r6,	r14	;
    58d4:	0f 47       	mov	r7,	r15	;

000058d6 <.Loc.127.1>:
    58d6:	09 97       	cmp	r7,	r9	;
    58d8:	04 38       	jl	$+10     	;abs 0x58e2
    58da:	07 99       	cmp	r9,	r7	;
    58dc:	09 20       	jnz	$+20     	;abs 0x58f0
    58de:	08 96       	cmp	r6,	r8	;
    58e0:	07 2c       	jc	$+16     	;abs 0x58f0

000058e2 <.L63>:
    58e2:	9a 43 1c 00 	mov	#1,	28(r10)	;r3 As==01, 0x001c
    58e6:	8a 43 1e 00 	mov	#0,	30(r10)	;r3 As==00, 0x001e

000058ea <.Loc.137.1>:
    58ea:	3c 40 b2 55 	mov	#21938,	r12	;#0x55b2
    58ee:	11 3c       	jmp	$+36     	;abs 0x5912

000058f0 <.L61>:
    58f0:	16 53       	inc	r6		;

000058f2 <.LVL74>:
    58f2:	07 63       	adc	r7		;

000058f4 <.Loc.129.1>:
    58f4:	1c 4a 18 00 	mov	24(r10),r12	;0x00018
    58f8:	1d 4a 1a 00 	mov	26(r10),r13	;0x0001a
    58fc:	b0 12 50 6c 	call	#27728		;#0x6c50

00005900 <.Loc.129.1>:
    5900:	0c dd       	bis	r13,	r12	;
    5902:	0c 93       	cmp	#0,	r12	;r3 As==00
    5904:	e6 23       	jnz	$-50     	;abs 0x58d2

00005906 <.Loc.131.1>:
    5906:	8a 43 1c 00 	mov	#0,	28(r10)	;r3 As==00, 0x001c
    590a:	8a 43 1e 00 	mov	#0,	30(r10)	;r3 As==00, 0x001e

0000590e <.Loc.132.1>:
    590e:	3c 40 5c 55 	mov	#21852,	r12	;#0x555c

00005912 <.L58>:
    5912:	46 17       	popm	#5,	r10	;16-bit words

00005914 <.LCFI20>:
    5914:	30 41       	ret			

00005916 <decrypt_print>:
    5916:	c2 93 a1 47 	cmp.b	#0,	&0x47a1	;r3 As==00
    591a:	08 24       	jz	$+18     	;abs 0x592c

0000591c <.LBB5>:
    591c:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    5920:	22 02 

00005922 <.Loc.305.1>:
    5922:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5926:	22 02 

00005928 <.Loc.306.1>:
    5928:	c2 43 a1 47 	mov.b	#0,	&0x47a1	;r3 As==00

0000592c <.L66>:
    592c:	3c 40 c4 54 	mov	#21700,	r12	;#0x54c4

00005930 <.LVL79>:
    5930:	30 41       	ret			

00005932 <thread1_init>:
    5932:	21 83       	decd	r1		;

00005934 <.LCFI21>:
    5934:	b1 40 18 01 	mov	#280,	0(r1)	;#0x0118
    5938:	00 00 
    593a:	3f 40 88 46 	mov	#18056,	r15	;#0x4688
    593e:	3e 40 70 45 	mov	#17776,	r14	;#0x4570
    5942:	3d 40 c4 54 	mov	#21700,	r13	;#0x54c4
    5946:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    594a:	b0 12 02 5b 	call	#23298		;#0x5b02

0000594e <.Loc.50.1>:
    594e:	32 c2       	dint			
    5950:	03 43       	nop			

00005952 <.Loc.50.1>:
    5952:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5956:	b0 12 f2 5b 	call	#23538		;#0x5bf2
    595a:	b0 12 d6 5b 	call	#23510		;#0x5bd6

0000595e <.Loc.50.1>:
    595e:	03 43       	nop			
    5960:	32 d2       	eint			
    5962:	03 43       	nop			

00005964 <.Loc.51.1>:
    5964:	21 53       	incd	r1		;

00005966 <.LCFI22>:
    5966:	30 41       	ret			

00005968 <__app_reboot>:
    5968:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    596c:	22 02 

0000596e <.Loc.56.1>:
    596e:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    5972:	24 02 

00005974 <.Loc.56.1>:
    5974:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5978:	22 02 

0000597a <.Loc.56.1>:
    597a:	30 41       	ret			

0000597c <sqrt16>:
    597c:	6a 15       	pushm	#7,	r10	;16-bit words

0000597e <.LCFI0>:
    597e:	08 4c       	mov	r12,	r8	;
    5980:	0a 4d       	mov	r13,	r10	;

00005982 <.Loc.33.1>:
    5982:	4c 43       	clr.b	r12		;

00005984 <.LVL2>:
    5984:	4d 43       	clr.b	r13		;

00005986 <.Loc.35.1>:
    5986:	39 40 ff 7f 	mov	#32767,	r9	;#0x7fff

0000598a <.Loc.34.1>:
    598a:	45 43       	clr.b	r5		;

0000598c <L0^A>:
    598c:	34 43       	mov	#-1,	r4	;r3 As==11

0000598e <.L2>:
    598e:	0c 98       	cmp	r8,	r12	;
    5990:	02 20       	jnz	$+6      	;abs 0x5996
    5992:	0d 9a       	cmp	r10,	r13	;
    5994:	05 24       	jz	$+12     	;abs 0x59a0

00005996 <.L5>:
    5996:	0c 44       	mov	r4,	r12	;
    5998:	0c 85       	sub	r5,	r12	;

0000599a <.LVL4>:
    599a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    599c:	0d 9c       	cmp	r12,	r13	;
    599e:	03 28       	jnc	$+8      	;abs 0x59a6

000059a0 <.L1>:
    59a0:	0c 49       	mov	r9,	r12	;
    59a2:	64 17       	popm	#7,	r10	;16-bit words

000059a4 <.LCFI1>:
    59a4:	30 41       	ret			

000059a6 <.L6>:
    59a6:	06 44       	mov	r4,	r6	;
    59a8:	06 55       	add	r5,	r6	;
    59aa:	4d 43       	clr.b	r13		;
    59ac:	4c 43       	clr.b	r12		;
    59ae:	07 4d       	mov	r13,	r7	;
    59b0:	07 6c       	addc	r12,	r7	;

000059b2 <.Loc.40.1>:
    59b2:	0c 46       	mov	r6,	r12	;
    59b4:	0d 47       	mov	r7,	r13	;
    59b6:	12 c3       	clrc			
    59b8:	0d 10       	rrc	r13		;
    59ba:	0c 10       	rrc	r12		;

000059bc <.Loc.40.1>:
    59bc:	09 4c       	mov	r12,	r9	;

000059be <.LVL5>:
    59be:	0e 4c       	mov	r12,	r14	;
    59c0:	0f 4d       	mov	r13,	r15	;
    59c2:	b0 12 02 6d 	call	#27906		;#0x6d02

000059c6 <.LVL6>:
    59c6:	0d 9a       	cmp	r10,	r13	;
    59c8:	06 28       	jnc	$+14     	;abs 0x59d6
    59ca:	0a 9d       	cmp	r13,	r10	;
    59cc:	02 20       	jnz	$+6      	;abs 0x59d2
    59ce:	0c 98       	cmp	r8,	r12	;
    59d0:	02 28       	jnc	$+6      	;abs 0x59d6

000059d2 <.L9>:
    59d2:	04 49       	mov	r9,	r4	;

000059d4 <.LVL7>:
    59d4:	dc 3f       	jmp	$-70     	;abs 0x598e

000059d6 <.L8>:
    59d6:	05 49       	mov	r9,	r5	;

000059d8 <.LVL9>:
    59d8:	da 3f       	jmp	$-74     	;abs 0x598e

000059da <sqrt32>:
    59da:	6a 15       	pushm	#7,	r10	;16-bit words

000059dc <.LCFI3>:
    59dc:	31 80 10 00 	sub	#16,	r1	;#0x0010

000059e0 <.LCFI4>:
    59e0:	81 4c 0e 00 	mov	r12,	14(r1)	; 0x000e
    59e4:	81 4d 08 00 	mov	r13,	8(r1)	;
    59e8:	81 4e 0a 00 	mov	r14,	10(r1)	; 0x000a
    59ec:	81 4f 0c 00 	mov	r15,	12(r1)	; 0x000c

000059f0 <.Loc.57.1>:
    59f0:	4c 43       	clr.b	r12		;

000059f2 <.LVL12>:
    59f2:	4d 43       	clr.b	r13		;
    59f4:	4e 43       	clr.b	r14		;
    59f6:	4f 43       	clr.b	r15		;

000059f8 <.Loc.59.1>:
    59f8:	34 43       	mov	#-1,	r4	;r3 As==11
    59fa:	35 40 ff 7f 	mov	#32767,	r5	;#0x7fff

000059fe <.Loc.58.1>:
    59fe:	81 43 04 00 	mov	#0,	4(r1)	;r3 As==00
    5a02:	81 43 06 00 	mov	#0,	6(r1)	;r3 As==00

00005a06 <.Loc.57.1>:
    5a06:	b1 43 00 00 	mov	#-1,	0(r1)	;r3 As==11
    5a0a:	b1 43 02 00 	mov	#-1,	2(r1)	;r3 As==11

00005a0e <.L11>:
    5a0e:	1c 91 0e 00 	cmp	14(r1),	r12	;0x0000e
    5a12:	09 20       	jnz	$+20     	;abs 0x5a26
    5a14:	1d 91 08 00 	cmp	8(r1),	r13	;
    5a18:	06 20       	jnz	$+14     	;abs 0x5a26
    5a1a:	1e 91 0a 00 	cmp	10(r1),	r14	;0x0000a
    5a1e:	03 20       	jnz	$+8      	;abs 0x5a26
    5a20:	1f 91 0c 00 	cmp	12(r1),	r15	;0x0000c
    5a24:	0c 24       	jz	$+26     	;abs 0x5a3e

00005a26 <.L19>:
    5a26:	2c 41       	mov	@r1,	r12	;

00005a28 <.LVL14>:
    5a28:	1d 41 02 00 	mov	2(r1),	r13	;
    5a2c:	1c 81 04 00 	sub	4(r1),	r12	;
    5a30:	1d 71 06 00 	subc	6(r1),	r13	;

00005a34 <.Loc.62.1>:
    5a34:	0d 93       	cmp	#0,	r13	;r3 As==00
    5a36:	09 20       	jnz	$+20     	;abs 0x5a4a
    5a38:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5a3a:	0e 9c       	cmp	r12,	r14	;
    5a3c:	06 28       	jnc	$+14     	;abs 0x5a4a

00005a3e <.L10>:
    5a3e:	0c 44       	mov	r4,	r12	;
    5a40:	0d 45       	mov	r5,	r13	;
    5a42:	31 50 10 00 	add	#16,	r1	;#0x0010

00005a46 <.LCFI5>:
    5a46:	64 17       	popm	#7,	r10	;16-bit words

00005a48 <.LCFI6>:
    5a48:	30 41       	ret			

00005a4a <.L20>:
    5a4a:	2d 41       	mov	@r1,	r13	;
    5a4c:	1e 41 02 00 	mov	2(r1),	r14	;

00005a50 <.Loc.64.1>:
    5a50:	18 41 04 00 	mov	4(r1),	r8	;
    5a54:	1c 41 06 00 	mov	6(r1),	r12	;

00005a58 <.Loc.64.1>:
    5a58:	08 5d       	add	r13,	r8	;
    5a5a:	59 43       	mov.b	#1,	r9	;r3 As==01
    5a5c:	08 9d       	cmp	r13,	r8	;
    5a5e:	01 28       	jnc	$+4      	;abs 0x5a62
    5a60:	49 43       	clr.b	r9		;

00005a62 <.L12>:
    5a62:	0c 5e       	add	r14,	r12	;
    5a64:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5a66:	0c 9e       	cmp	r14,	r12	;
    5a68:	01 28       	jnc	$+4      	;abs 0x5a6c
    5a6a:	4d 43       	clr.b	r13		;

00005a6c <.L13>:
    5a6c:	09 5c       	add	r12,	r9	;
    5a6e:	5a 43       	mov.b	#1,	r10	;r3 As==01
    5a70:	09 9c       	cmp	r12,	r9	;
    5a72:	01 28       	jnc	$+4      	;abs 0x5a76
    5a74:	4a 43       	clr.b	r10		;

00005a76 <.L14>:
    5a76:	0a dd       	bis	r13,	r10	;
    5a78:	4b 43       	clr.b	r11		;
    5a7a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5a7c:	b0 12 b6 6c 	call	#27830		;#0x6cb6
    5a80:	08 4c       	mov	r12,	r8	;
    5a82:	09 4d       	mov	r13,	r9	;
    5a84:	0a 4e       	mov	r14,	r10	;
    5a86:	0b 4f       	mov	r15,	r11	;

00005a88 <.Loc.64.1>:
    5a88:	06 4c       	mov	r12,	r6	;
    5a8a:	07 4d       	mov	r13,	r7	;
    5a8c:	04 4c       	mov	r12,	r4	;

00005a8e <.LVL18>:
    5a8e:	05 4d       	mov	r13,	r5	;

00005a90 <.LVL19>:
    5a90:	b0 12 22 6d 	call	#27938		;#0x6d22

00005a94 <.LVL20>:
    5a94:	1f 91 0c 00 	cmp	12(r1),	r15	;0x0000c
    5a98:	17 28       	jnc	$+48     	;abs 0x5ac8
    5a9a:	81 9f 0c 00 	cmp	r15,	12(r1)	; 0x000c
    5a9e:	0f 20       	jnz	$+32     	;abs 0x5abe
    5aa0:	1e 91 0a 00 	cmp	10(r1),	r14	;0x0000a
    5aa4:	11 28       	jnc	$+36     	;abs 0x5ac8
    5aa6:	81 9e 0a 00 	cmp	r14,	10(r1)	; 0x000a
    5aaa:	09 20       	jnz	$+20     	;abs 0x5abe
    5aac:	1d 91 08 00 	cmp	8(r1),	r13	;
    5ab0:	0b 28       	jnc	$+24     	;abs 0x5ac8
    5ab2:	81 9d 08 00 	cmp	r13,	8(r1)	;
    5ab6:	03 20       	jnz	$+8      	;abs 0x5abe
    5ab8:	1c 91 0e 00 	cmp	14(r1),	r12	;0x0000e
    5abc:	05 28       	jnc	$+12     	;abs 0x5ac8

00005abe <.L24>:
    5abe:	81 46 00 00 	mov	r6,	0(r1)	;

00005ac2 <.LVL21>:
    5ac2:	81 47 02 00 	mov	r7,	2(r1)	;
    5ac6:	a3 3f       	jmp	$-184    	;abs 0x5a0e

00005ac8 <.L23>:
    5ac8:	81 46 04 00 	mov	r6,	4(r1)	;

00005acc <.LVL23>:
    5acc:	81 47 06 00 	mov	r7,	6(r1)	;
    5ad0:	9e 3f       	jmp	$-194    	;abs 0x5a0e

00005ad2 <__app_init>:
    5ad2:	b0 12 32 59 	call	#22834		;#0x5932

00005ad6 <.Loc.32.1>:
    5ad6:	30 41       	ret			

00005ad8 <__scheduler_boot_init>:
    5ad8:	0a 15       	pushm	#1,	r10	;16-bit words

00005ada <L0^A>:
    5ada:	3c 40 a4 47 	mov	#18340,	r12	;#0x47a4
    5ade:	b0 12 f4 66 	call	#26356		;#0x66f4

00005ae2 <.Loc.65.1>:
    5ae2:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

00005ae6 <.L2>:
    5ae6:	0c 4a       	mov	r10,	r12	;
    5ae8:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5aec:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5af0:	1c 4c b0 47 	mov	18352(r12),r12	;0x047b0

00005af4 <.LVL3>:
    5af4:	3a 53       	add	#-1,	r10	;r3 As==11

00005af6 <.Loc.67.1>:
    5af6:	0a 93       	cmp	#0,	r10	;r3 As==00
    5af8:	f6 23       	jnz	$-18     	;abs 0x5ae6

00005afa <.Loc.71.1>:
    5afa:	c2 43 02 1c 	mov.b	#0,	&0x1c02	;r3 As==00

00005afe <.Loc.72.1>:
    5afe:	0a 17       	popm	#1,	r10	;16-bit words

00005b00 <.LCFI1>:
    5b00:	30 41       	ret			

00005b02 <__create_thread>:
    5b02:	3a 15       	pushm	#4,	r10	;16-bit words

00005b04 <.LCFI2>:
    5b04:	4a 4c       	mov.b	r12,	r10	;
    5b06:	09 4d       	mov	r13,	r9	;
    5b08:	07 4e       	mov	r14,	r7	;
    5b0a:	08 4f       	mov	r15,	r8	;

00005b0c <.Loc.79.1>:
    5b0c:	0c 4a       	mov	r10,	r12	;

00005b0e <.LVL6>:
    5b0e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

00005b12 <.LVL7>:
    5b12:	b0 12 d6 6c 	call	#27862		;#0x6cd6

00005b16 <.LVL8>:
    5b16:	cc 4a ae 47 	mov.b	r10,	18350(r12); 0x47ae

00005b1a <.Loc.80.1>:
    5b1a:	0c 4a       	mov	r10,	r12	;
    5b1c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b20:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b24:	8c 49 b2 47 	mov	r9,	18354(r12); 0x47b2

00005b28 <.Loc.81.1>:
    5b28:	0c 4a       	mov	r10,	r12	;
    5b2a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b2e:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b32:	8c 49 b4 47 	mov	r9,	18356(r12); 0x47b4

00005b36 <.Loc.82.1>:
    5b36:	0c 4a       	mov	r10,	r12	;
    5b38:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b3c:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b40:	bc 42 b0 47 	mov	#8,	18352(r12);r2 As==11, 0x47b0

00005b44 <.Loc.85.1>:
    5b44:	0c 4a       	mov	r10,	r12	;
    5b46:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b4a:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b4e:	8c 47 b8 47 	mov	r7,	18360(r12); 0x47b8

00005b52 <.Loc.86.1>:
    5b52:	0c 4a       	mov	r10,	r12	;
    5b54:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b58:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b5c:	8c 48 ba 47 	mov	r8,	18362(r12); 0x47ba

00005b60 <.Loc.87.1>:
    5b60:	0c 4a       	mov	r10,	r12	;
    5b62:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b66:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b6a:	cc 43 bc 47 	mov.b	#0,	18364(r12);r3 As==00, 0x47bc

00005b6e <.Loc.88.1>:
    5b6e:	0c 4a       	mov	r10,	r12	;
    5b70:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b74:	b0 12 d6 6c 	call	#27862		;#0x6cd6
    5b78:	9c 41 0a 00 	mov	10(r1),	18366(r12);0x0000a, 0x47be
    5b7c:	be 47 

00005b7e <.Loc.89.1>:
    5b7e:	37 17       	popm	#4,	r10	;16-bit words

00005b80 <.LCFI3>:
    5b80:	30 41       	ret			

00005b82 <__stop_thread>:
    5b82:	0a 15       	pushm	#1,	r10	;16-bit words

00005b84 <.LCFI4>:
    5b84:	0a 4c       	mov	r12,	r10	;

00005b86 <.Loc.93.1>:
    5b86:	3d 40 a4 47 	mov	#18340,	r13	;#0x47a4
    5b8a:	6c 4c       	mov.b	@r12,	r12	;

00005b8c <.LVL17>:
    5b8c:	b0 12 3a 67 	call	#26426		;#0x673a

00005b90 <.Loc.94.1>:
    5b90:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005b94 <.Loc.95.1>:
    5b94:	0a 17       	popm	#1,	r10	;16-bit words

00005b96 <.LCFI5>:
    5b96:	30 41       	ret			

00005b98 <__evict_thread>:
    5b98:	0a 15       	pushm	#1,	r10	;16-bit words

00005b9a <.LCFI6>:
    5b9a:	0a 4c       	mov	r12,	r10	;

00005b9c <.Loc.99.1>:
    5b9c:	3d 40 a4 47 	mov	#18340,	r13	;#0x47a4
    5ba0:	6c 4c       	mov.b	@r12,	r12	;

00005ba2 <.LVL20>:
    5ba2:	b0 12 3a 67 	call	#26426		;#0x673a

00005ba6 <.Loc.100.1>:
    5ba6:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

00005baa <.Loc.101.1>:
    5baa:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005bae <.Loc.102.1>:
    5bae:	0a 17       	popm	#1,	r10	;16-bit words

00005bb0 <.LCFI7>:
    5bb0:	30 41       	ret			

00005bb2 <__set_sing_timer>:
    5bb2:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005bb6 <.Loc.106.1>:
    5bb6:	30 41       	ret			

00005bb8 <__set_expr_timer>:
    5bb8:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005bbc <.Loc.112.1>:
    5bbc:	30 41       	ret			

00005bbe <__set_pdc_timer>:
    5bbe:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00005bc2 <.Loc.118.1>:
    5bc2:	30 41       	ret			

00005bc4 <__set_pdc_period>:
    5bc4:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005bc8 <.Loc.123.1>:
    5bc8:	30 41       	ret			

00005bca <__get_pdc_timer>:
    5bca:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00005bce <.LVL27>:
    5bce:	30 41       	ret			

00005bd0 <__get_pdc_period>:
    5bd0:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00005bd4 <.LVL29>:
    5bd4:	30 41       	ret			

00005bd6 <__start_thread>:
    5bd6:	0a 15       	pushm	#1,	r10	;16-bit words

00005bd8 <.LCFI8>:
    5bd8:	0a 4c       	mov	r12,	r10	;

00005bda <.Loc.136.1>:
    5bda:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    5bde:	06 00 

00005be0 <.Loc.137.1>:
    5be0:	3d 40 a4 47 	mov	#18340,	r13	;#0x47a4
    5be4:	6c 4c       	mov.b	@r12,	r12	;

00005be6 <.LVL31>:
    5be6:	b0 12 1a 67 	call	#26394		;#0x671a

00005bea <.Loc.138.1>:
    5bea:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005bee <.Loc.139.1>:
    5bee:	0a 17       	popm	#1,	r10	;16-bit words

00005bf0 <.LCFI9>:
    5bf0:	30 41       	ret			

00005bf2 <__get_thread>:
    5bf2:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5bf6:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5bfa:	b0 12 d6 6c 	call	#27862		;#0x6cd6

00005bfe <.LVL34>:
    5bfe:	3c 50 ae 47 	add	#18350,	r12	;#0x47ae
    5c02:	30 41       	ret			

00005c04 <__scheduler_run>:
    5c04:	b0 12 92 64 	call	#25746		;#0x6492

00005c08 <.Loc.171.1>:
    5c08:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005c0c <.Loc.171.1>:
    5c0c:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c10 <.LBB8>:
    5c10:	82 93 a2 47 	cmp	#0,	&0x47a2	;r3 As==00
    5c14:	04 24       	jz	$+10     	;abs 0x5c1e

00005c16 <.Loc.157.1>:
    5c16:	1c 42 a2 47 	mov	&0x47a2,r12	;0x47a2
    5c1a:	b0 12 a6 5c 	call	#23718		;#0x5ca6

00005c1e <.L16>:
    5c1e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005c22 <.Loc.184.1>:
    5c22:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c26 <.Loc.185.1>:
    5c26:	b0 12 aa 5d 	call	#23978		;#0x5daa

00005c2a <.L31>:
    5c2a:	03 43       	nop			
    5c2c:	32 d2       	eint			
    5c2e:	03 43       	nop			

00005c30 <.L20>:
    5c30:	5c 42 02 1c 	mov.b	&0x1c02,r12	;0x1c02
    5c34:	0c 93       	cmp	#0,	r12	;r3 As==00
    5c36:	0e 24       	jz	$+30     	;abs 0x5c54
    5c38:	1c 93       	cmp	#1,	r12	;r3 As==01
    5c3a:	fa 23       	jnz	$-10     	;abs 0x5c30

00005c3c <.L19>:
    5c3c:	82 93 a2 47 	cmp	#0,	&0x47a2	;r3 As==00
    5c40:	21 24       	jz	$+68     	;abs 0x5c84

00005c42 <.Loc.207.1>:
    5c42:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c46 <.Loc.207.1>:
    5c46:	1c 42 a2 47 	mov	&0x47a2,r12	;0x47a2
    5c4a:	b0 12 a6 5c 	call	#23718		;#0x5ca6

00005c4e <.Loc.211.1>:
    5c4e:	c2 43 02 1c 	mov.b	#0,	&0x1c02	;r3 As==00

00005c52 <.Loc.212.1>:
    5c52:	ee 3f       	jmp	$-34     	;abs 0x5c30

00005c54 <.L18>:
    5c54:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005c58 <.LBB10>:
    5c58:	3c 40 a4 47 	mov	#18340,	r12	;#0x47a4
    5c5c:	b0 12 62 67 	call	#26466		;#0x6762
    5c60:	4e 4c       	mov.b	r12,	r14	;
    5c62:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005c66 <.LVL40>:
    5c66:	4d 43       	clr.b	r13		;

00005c68 <.Loc.144.1>:
    5c68:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    5c6a:	07 24       	jz	$+16     	;abs 0x5c7a

00005c6c <.Loc.145.1>:
    5c6c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5c70:	b0 12 d6 6c 	call	#27862		;#0x6cd6

00005c74 <.LVL41>:
    5c74:	0d 4c       	mov	r12,	r13	;
    5c76:	3d 50 ae 47 	add	#18350,	r13	;#0x47ae

00005c7a <.L21>:
    5c7a:	82 4d a2 47 	mov	r13,	&0x47a2	;

00005c7e <.Loc.201.1>:
    5c7e:	d2 43 02 1c 	mov.b	#1,	&0x1c02	;r3 As==01
    5c82:	dc 3f       	jmp	$-70     	;abs 0x5c3c

00005c84 <.L22>:
    5c84:	c2 43 02 1c 	mov.b	#0,	&0x1c02	;r3 As==00

00005c88 <.Loc.215.1>:
    5c88:	32 c2       	dint			
    5c8a:	03 43       	nop			

00005c8c <.LBB12>:
    5c8c:	3c 40 a4 47 	mov	#18340,	r12	;#0x47a4
    5c90:	b0 12 62 67 	call	#26466		;#0x6762

00005c94 <.LVL42>:
    5c94:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5c96:	cc 23       	jnz	$-102    	;abs 0x5c30

00005c98 <.LBE12>:
    5c98:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c9c <.Loc.219.1>:
    5c9c:	03 43       	nop			
    5c9e:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    5ca2:	03 43       	nop			

00005ca4 <.Loc.222.1>:
    5ca4:	c2 3f       	jmp	$-122    	;abs 0x5c2a

00005ca6 <__tick>:
    5ca6:	1a 15       	pushm	#2,	r10	;16-bit words

00005ca8 <.LCFI0>:
    5ca8:	0a 4c       	mov	r12,	r10	;

00005caa <.Loc.53.1>:
    5caa:	
00005cac <L0^A>:
    5cac:	02 00       	mova	@r0,	r2	;

00005cae <.LVL1>:
    5cae:	2c 93       	cmp	#2,	r12	;r3 As==10
    5cb0:	3f 24       	jz	$+128    	;abs 0x5d30
    5cb2:	2c 92       	cmp	#4,	r12	;r2 As==10
    5cb4:	4d 24       	jz	$+156    	;abs 0x5d50
    5cb6:	1c 93       	cmp	#1,	r12	;r3 As==01
    5cb8:	67 20       	jnz	$+208    	;abs 0x5d88

00005cba <.LBB5>:
    5cba:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    5cbe:	22 02 

00005cc0 <.Loc.40.1>:
    5cc0:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00005cc4 <.Loc.43.1>:
    5cc4:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5cc8:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5cca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005cce <.Loc.43.1>:
    5cce:	5c 02       	rlam	#1,	r12	;
    5cd0:	0c 5a       	add	r10,	r12	;
    5cd2:	5f 02       	rlam	#1,	r15	;
    5cd4:	0f 5a       	add	r10,	r15	;
    5cd6:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    5cda:	5e 03       	rrum	#1,	r14	;
    5cdc:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    5ce0:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    5ce4:	b0 12 6c 66 	call	#26220		;#0x666c

00005ce8 <.Loc.45.1>:
    5ce8:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5cec:	22 02 

00005cee <.LBE5>:
    5cee:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5cf2:	02 02 

00005cf4 <.Loc.60.1>:
    5cf4:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    5cf8:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5cfa:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005cfe <.Loc.63.1>:
    5cfe:	3c 50 05 00 	add	#5,	r12	;
    5d02:	5c 02       	rlam	#1,	r12	;
    5d04:	0c 5a       	add	r10,	r12	;
    5d06:	29 4c       	mov	@r12,	r9	;

00005d08 <.LVL5>:
    5d08:	1d 4a 06 00 	mov	6(r10),	r13	;

00005d0c <.Loc.66.1>:
    5d0c:	1d 9a 04 00 	cmp	4(r10),	r13	;
    5d10:	3d 20       	jnz	$+124    	;abs 0x5d8c

00005d12 <.LBB7>:
    5d12:	0c 4a       	mov	r10,	r12	;
    5d14:	b0 12 46 65 	call	#25926		;#0x6546

00005d18 <.LVL6>:
    5d18:	0d 4c       	mov	r12,	r13	;
    5d1a:	0c 49       	mov	r9,	r12	;

00005d1c <.LVL7>:
    5d1c:	1e 4a 04 00 	mov	4(r10),	r14	;
    5d20:	8e 12       	call	r14		;

00005d22 <.L17>:
    5d22:	8a 4c 08 00 	mov	r12,	8(r10)	;

00005d26 <.Loc.76.1>:
    5d26:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00005d2a <.Loc.78.1>:
    5d2a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5d2e:	02 02 

00005d30 <.L2>:
    5d30:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5d34:	22 02 

00005d36 <.Loc.82.1>:
    5d36:	0c 4a       	mov	r10,	r12	;
    5d38:	b0 12 74 65 	call	#25972		;#0x6574

00005d3c <.Loc.86.1>:
    5d3c:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    5d40:	06 00 

00005d42 <.Loc.88.1>:
    5d42:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5d46:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5d48:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

00005d4c <.Loc.89.1>:
    5d4c:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005d50 <.L3>:
    5d50:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5d54:	0e 00 

00005d56 <.Loc.94.1>:
    5d56:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5d5a:	22 02 

00005d5c <.Loc.94.1>:
    5d5c:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5d60:	22 02 

00005d62 <.Loc.95.1>:
    5d62:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    5d66:	1b 20       	jnz	$+56     	;abs 0x5d9e

00005d68 <.Loc.101.1>:
    5d68:	32 c2       	dint			
    5d6a:	03 43       	nop			

00005d6c <.Loc.103.1>:
    5d6c:	0c 4a       	mov	r10,	r12	;
    5d6e:	b0 12 28 65 	call	#25896		;#0x6528

00005d72 <.Loc.103.1>:
    5d72:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5d74:	0e 20       	jnz	$+30     	;abs 0x5d92

00005d76 <.Loc.105.1>:
    5d76:	0c 4a       	mov	r10,	r12	;
    5d78:	b0 12 82 5b 	call	#23426		;#0x5b82

00005d7c <.L9>:
    5d7c:	03 43       	nop			
    5d7e:	32 d2       	eint			
    5d80:	03 43       	nop			

00005d82 <.L10>:
    5d82:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5d86:	22 02 

00005d88 <.L1>:
    5d88:	19 17       	popm	#2,	r10	;16-bit words

00005d8a <.LCFI1>:
    5d8a:	30 41       	ret			

00005d8c <.L5>:
    5d8c:	2c 4c       	mov	@r12,	r12	;
    5d8e:	8d 12       	call	r13		;
    5d90:	c8 3f       	jmp	$-110    	;abs 0x5d22

00005d92 <.L8>:
    5d92:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    5d96:	06 00 

00005d98 <.Loc.111.1>:
    5d98:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    5d9c:	ef 3f       	jmp	$-32     	;abs 0x5d7c

00005d9e <.L7>:
    5d9e:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    5da2:	ef 3f       	jmp	$-32     	;abs 0x5d82

00005da4 <__timers_init>:
    5da4:	b0 12 46 68 	call	#26694		;#0x6846

00005da8 <.Loc.64.1>:
    5da8:	30 41       	ret			

00005daa <__reboot_timers>:
    5daa:	30 41       	ret			

00005dac <clear_wkup_status>:
    5dac:	2a 15       	pushm	#3,	r10	;16-bit words

00005dae <.LCFI0>:
    5dae:	48 4c       	mov.b	r12,	r8	;

00005db0 <.Loc.100.1>:
    5db0:	3a 40 36 1c 	mov	#7222,	r10	;#0x1c36

00005db4 <.Loc.101.1>:
    5db4:	49 43       	clr.b	r9		;

00005db6 <.L5>:
    5db6:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    5dba:	07 20       	jnz	$+16     	;abs 0x5dca

00005dbc <.Loc.104.1>:
    5dbc:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00005dc0 <.Loc.105.1>:
    5dc0:	4e 43       	clr.b	r14		;
    5dc2:	4d 43       	clr.b	r13		;
    5dc4:	4c 49       	mov.b	r9,	r12	;
    5dc6:	b0 12 04 69 	call	#26884		;#0x6904

00005dca <.L4>:
    5dca:	4c 49       	mov.b	r9,	r12	;
    5dcc:	5c 53       	inc.b	r12		;
    5dce:	49 4c       	mov.b	r12,	r9	;

00005dd0 <.LVL5>:
    5dd0:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005dd4 <.Loc.101.1>:
    5dd4:	7c 90 03 00 	cmp.b	#3,	r12	;
    5dd8:	ee 23       	jnz	$-34     	;abs 0x5db6

00005dda <.Loc.109.1>:
    5dda:	28 17       	popm	#3,	r10	;16-bit words

00005ddc <.LCFI1>:
    5ddc:	30 41       	ret			

00005dde <unpack_wkup_to_local>:
    5dde:	1a 15       	pushm	#2,	r10	;16-bit words

00005de0 <.LCFI2>:
    5de0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005de4 <.LCFI3>:
    5de4:	49 43       	clr.b	r9		;

00005de6 <.L8>:
    5de6:	0a 49       	mov	r9,	r10	;
    5de8:	5a 06       	rlam	#2,	r10	;
    5dea:	0a 59       	add	r9,	r10	;
    5dec:	5a 02       	rlam	#1,	r10	;
    5dee:	3a 50 36 1c 	add	#7222,	r10	;#0x1c36
    5df2:	4e 43       	clr.b	r14		;
    5df4:	4d 49       	mov.b	r9,	r13	;
    5df6:	0c 41       	mov	r1,	r12	;
    5df8:	b0 12 8e 6a 	call	#27278		;#0x6a8e
    5dfc:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5e00:	0d 41       	mov	r1,	r13	;
    5e02:	0c 4a       	mov	r10,	r12	;
    5e04:	b0 12 82 6d 	call	#28034		;#0x6d82

00005e08 <.LVL9>:
    5e08:	19 53       	inc	r9		;

00005e0a <.Loc.115.1>:
    5e0a:	39 90 03 00 	cmp	#3,	r9	;
    5e0e:	eb 23       	jnz	$-40     	;abs 0x5de6

00005e10 <.Loc.120.1>:
    5e10:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005e14 <.LCFI4>:
    5e14:	19 17       	popm	#2,	r10	;16-bit words

00005e16 <.LCFI5>:
    5e16:	30 41       	ret			

00005e18 <refresh_wkup_timers>:
    5e18:	4a 15       	pushm	#5,	r10	;16-bit words

00005e1a <.LCFI6>:
    5e1a:	3a 40 36 1c 	mov	#7222,	r10	;#0x1c36

00005e1e <.Loc.125.1>:
    5e1e:	5f 43       	mov.b	#1,	r15	;r3 As==01

00005e20 <.Loc.127.1>:
    5e20:	49 43       	clr.b	r9		;

00005e22 <.L23>:
    5e22:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    5e26:	56 20       	jnz	$+174    	;abs 0x5ed4

00005e28 <.Loc.133.1>:
    5e28:	16 4a 04 00 	mov	4(r10),	r6	;
    5e2c:	17 4a 06 00 	mov	6(r10),	r7	;

00005e30 <.Loc.133.1>:
    5e30:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e32:	05 24       	jz	$+12     	;abs 0x5e3e

00005e34 <.Loc.135.1>:
    5e34:	82 46 5c 1c 	mov	r6,	&0x1c5c	;

00005e38 <.Loc.136.1>:
    5e38:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5e	;
    5e3c:	5e 1c 

00005e3e <.L12>:
    5e3e:	b0 12 12 68 	call	#26642		;#0x6812

00005e42 <.Loc.141.1>:
    5e42:	0e 46       	mov	r6,	r14	;
    5e44:	0f 47       	mov	r7,	r15	;
    5e46:	0e 8c       	sub	r12,	r14	;
    5e48:	0f 7d       	subc	r13,	r15	;

00005e4a <.Loc.141.1>:
    5e4a:	8a 4e 04 00 	mov	r14,	4(r10)	;
    5e4e:	8a 4f 06 00 	mov	r15,	6(r10)	;

00005e52 <.Loc.142.1>:
    5e52:	4d 43       	clr.b	r13		;
    5e54:	4c 49       	mov.b	r9,	r12	;
    5e56:	b0 12 68 68 	call	#26728		;#0x6868

00005e5a <.Loc.144.1>:
    5e5a:	1c 4a 04 00 	mov	4(r10),	r12	;
    5e5e:	1d 4a 06 00 	mov	6(r10),	r13	;

00005e62 <.Loc.144.1>:
    5e62:	07 4d       	mov	r13,	r7	;
    5e64:	0d 93       	cmp	#0,	r13	;r3 As==00
    5e66:	50 34       	jge	$+162    	;abs 0x5f08

00005e68 <.Loc.144.1>:
    5e68:	5e 42 5f 1c 	mov.b	&0x1c5f,r14	;0x1c5f
    5e6c:	06 43       	clr	r6		;
    5e6e:	06 8e       	sub	r14,	r6	;
    5e70:	0e 46       	mov	r6,	r14	;
    5e72:	0f 46       	mov	r6,	r15	;
    5e74:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005e78 <.Loc.144.1>:
    5e78:	0f 9d       	cmp	r13,	r15	;
    5e7a:	04 38       	jl	$+10     	;abs 0x5e84

00005e7c <.Loc.144.1>:
    5e7c:	0d 9f       	cmp	r15,	r13	;
    5e7e:	20 20       	jnz	$+66     	;abs 0x5ec0
    5e80:	06 9c       	cmp	r12,	r6	;
    5e82:	1e 2c       	jc	$+62     	;abs 0x5ec0

00005e84 <.L32>:
    5e84:	18 42 5c 1c 	mov	&0x1c5c,r8	;0x1c5c
    5e88:	06 48       	mov	r8,	r6	;
    5e8a:	07 43       	clr	r7		;

00005e8c <.Loc.146.1>:
    5e8c:	4e 43       	clr.b	r14		;
    5e8e:	4f 43       	clr.b	r15		;
    5e90:	0e 8c       	sub	r12,	r14	;
    5e92:	0f 7d       	subc	r13,	r15	;

00005e94 <.Loc.146.1>:
    5e94:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e96:	0c 38       	jl	$+26     	;abs 0x5eb0
    5e98:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e9a:	02 20       	jnz	$+6      	;abs 0x5ea0
    5e9c:	0e 96       	cmp	r6,	r14	;
    5e9e:	08 28       	jnc	$+18     	;abs 0x5eb0

00005ea0 <.L33>:
    5ea0:	06 9e       	cmp	r14,	r6	;
    5ea2:	17 20       	jnz	$+48     	;abs 0x5ed2
    5ea4:	0f 93       	cmp	#0,	r15	;r3 As==00
    5ea6:	15 20       	jnz	$+44     	;abs 0x5ed2

00005ea8 <.Loc.146.1>:
    5ea8:	da 92 5e 1c 	cmp.b	&0x1c5e,2(r10)	;0x1c5e
    5eac:	02 00 
    5eae:	12 2c       	jc	$+38     	;abs 0x5ed4

00005eb0 <.L17>:
    5eb0:	4e 43       	clr.b	r14		;
    5eb2:	0e 8c       	sub	r12,	r14	;
    5eb4:	82 4e 5c 1c 	mov	r14,	&0x1c5c	;

00005eb8 <.L40>:
    5eb8:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5e	;
    5ebc:	5e 1c 
    5ebe:	09 3c       	jmp	$+20     	;abs 0x5ed2

00005ec0 <.L15>:
    5ec0:	07 4d       	mov	r13,	r7	;
    5ec2:	0d 9f       	cmp	r15,	r13	;
    5ec4:	04 38       	jl	$+10     	;abs 0x5ece
    5ec6:	0f 9d       	cmp	r13,	r15	;
    5ec8:	04 20       	jnz	$+10     	;abs 0x5ed2
    5eca:	0c 96       	cmp	r6,	r12	;
    5ecc:	02 2c       	jc	$+6      	;abs 0x5ed2

00005ece <.L34>:
    5ece:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00005ed2 <.L30>:
    5ed2:	4f 43       	clr.b	r15		;

00005ed4 <.L11>:
    5ed4:	4c 49       	mov.b	r9,	r12	;
    5ed6:	5c 53       	inc.b	r12		;
    5ed8:	49 4c       	mov.b	r12,	r9	;

00005eda <.LVL17>:
    5eda:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005ede <.Loc.127.1>:
    5ede:	7c 90 03 00 	cmp.b	#3,	r12	;
    5ee2:	9f 23       	jnz	$-192    	;abs 0x5e22

00005ee4 <.Loc.164.1>:
    5ee4:	0f 93       	cmp	#0,	r15	;r3 As==00
    5ee6:	2d 20       	jnz	$+92     	;abs 0x5f42

00005ee8 <.Loc.166.1>:
    5ee8:	5d 42 5e 1c 	mov.b	&0x1c5e,r13	;0x1c5e
    5eec:	4c 43       	clr.b	r12		;

00005eee <.LVL18>:
    5eee:	b0 12 4a 69 	call	#26954		;#0x694a

00005ef2 <.LVL19>:
    5ef2:	1d 42 5c 1c 	mov	&0x1c5c,r13	;0x1c5c
    5ef6:	4c 43       	clr.b	r12		;
    5ef8:	b0 12 58 69 	call	#26968		;#0x6958

00005efc <.Loc.171.1>:
    5efc:	1c 42 5c 1c 	mov	&0x1c5c,r12	;0x1c5c
    5f00:	b0 12 88 67 	call	#26504		;#0x6788

00005f04 <.L10>:
    5f04:	46 17       	popm	#5,	r10	;16-bit words

00005f06 <.LCFI7>:
    5f06:	30 41       	ret			

00005f08 <.L13>:
    5f08:	0e 4c       	mov	r12,	r14	;
    5f0a:	0e dd       	bis	r13,	r14	;
    5f0c:	4f 43       	clr.b	r15		;
    5f0e:	0e 93       	cmp	#0,	r14	;r3 As==00
    5f10:	e1 27       	jz	$-60     	;abs 0x5ed4

00005f12 <.Loc.155.1>:
    5f12:	18 42 5c 1c 	mov	&0x1c5c,r8	;0x1c5c
    5f16:	0e 48       	mov	r8,	r14	;
    5f18:	0f 43       	clr	r15		;

00005f1a <.Loc.155.1>:
    5f1a:	0d 93       	cmp	#0,	r13	;r3 As==00
    5f1c:	0f 38       	jl	$+32     	;abs 0x5f3c
    5f1e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5f20:	03 20       	jnz	$+8      	;abs 0x5f28
    5f22:	07 4c       	mov	r12,	r7	;
    5f24:	0c 9e       	cmp	r14,	r12	;
    5f26:	0a 28       	jnc	$+22     	;abs 0x5f3c

00005f28 <.L35>:
    5f28:	07 4c       	mov	r12,	r7	;
    5f2a:	0c 9e       	cmp	r14,	r12	;
    5f2c:	d2 23       	jnz	$-90     	;abs 0x5ed2
    5f2e:	0d 9f       	cmp	r15,	r13	;
    5f30:	d0 23       	jnz	$-94     	;abs 0x5ed2
    5f32:	4f 43       	clr.b	r15		;

00005f34 <.Loc.155.1>:
    5f34:	da 92 5e 1c 	cmp.b	&0x1c5e,2(r10)	;0x1c5e
    5f38:	02 00 
    5f3a:	cc 2f       	jc	$-102    	;abs 0x5ed4

00005f3c <.L21>:
    5f3c:	82 4c 5c 1c 	mov	r12,	&0x1c5c	;
    5f40:	bb 3f       	jmp	$-136    	;abs 0x5eb8

00005f42 <.L24>:
    5f42:	b0 12 78 67 	call	#26488		;#0x6778

00005f46 <.LVL24>:
    5f46:	de 3f       	jmp	$-66     	;abs 0x5f04

00005f48 <set_wkup_timer>:
    5f48:	2a 15       	pushm	#3,	r10	;16-bit words

00005f4a <.LCFI9>:
    5f4a:	21 83       	decd	r1		;

00005f4c <.LCFI10>:
    5f4c:	49 4c       	mov.b	r12,	r9	;

00005f4e <.Loc.182.1>:
    5f4e:	81 4d 00 00 	mov	r13,	0(r1)	;
    5f52:	b0 12 de 5d 	call	#24030		;#0x5dde

00005f56 <.LVL27>:
    5f56:	b0 12 78 67 	call	#26488		;#0x6778

00005f5a <.Loc.192.1>:
    5f5a:	2e 41       	mov	@r1,	r14	;
    5f5c:	82 93 36 1c 	cmp	#0,	&0x1c36	;r3 As==00
    5f60:	22 24       	jz	$+70     	;abs 0x5fa6

00005f62 <.Loc.192.1>:
    5f62:	82 93 40 1c 	cmp	#0,	&0x1c40	;r3 As==00
    5f66:	41 24       	jz	$+132    	;abs 0x5fea

00005f68 <.Loc.192.1>:
    5f68:	82 93 4a 1c 	cmp	#0,	&0x1c4a	;r3 As==00
    5f6c:	41 24       	jz	$+132    	;abs 0x5ff0

00005f6e <.Loc.192.1>:
    5f6e:	82 4e 4e 1c 	mov	r14,	&0x1c4e	;
    5f72:	82 43 50 1c 	mov	#0,	&0x1c50	;r3 As==00

00005f76 <.Loc.216.1>:
    5f76:	4f 43       	clr.b	r15		;
    5f78:	4d 43       	clr.b	r13		;
    5f7a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5f7c:	b0 12 68 68 	call	#26728		;#0x6868

00005f80 <.Loc.217.1>:
    5f80:	c2 49 4c 1c 	mov.b	r9,	&0x1c4c	;

00005f84 <.Loc.218.1>:
    5f84:	4e 49       	mov.b	r9,	r14	;
    5f86:	4d 43       	clr.b	r13		;
    5f88:	7c 40 03 00 	mov.b	#3,	r12	;
    5f8c:	b0 12 ba 68 	call	#26810		;#0x68ba

00005f90 <.L47>:
    5f90:	b0 12 18 5e 	call	#24088		;#0x5e18

00005f94 <.Loc.222.1>:
    5f94:	4c 43       	clr.b	r12		;
    5f96:	b0 12 66 69 	call	#26982		;#0x6966

00005f9a <.Loc.223.1>:
    5f9a:	4c 43       	clr.b	r12		;
    5f9c:	b0 12 4c 6a 	call	#27212		;#0x6a4c

00005fa0 <.Loc.224.1>:
    5fa0:	21 53       	incd	r1		;

00005fa2 <.LCFI11>:
    5fa2:	28 17       	popm	#3,	r10	;16-bit words

00005fa4 <.LCFI12>:
    5fa4:	30 41       	ret			

00005fa6 <.L44>:
    5fa6:	1a 42 36 1c 	mov	&0x1c36,r10	;0x1c36

00005faa <.Loc.194.1>:
    5faa:	0d 4a       	mov	r10,	r13	;

00005fac <.L42>:
    5fac:	0c 4d       	mov	r13,	r12	;
    5fae:	5c 06       	rlam	#2,	r12	;
    5fb0:	0c 5d       	add	r13,	r12	;
    5fb2:	5c 02       	rlam	#1,	r12	;
    5fb4:	08 4c       	mov	r12,	r8	;
    5fb6:	8c 4e 3a 1c 	mov	r14,	7226(r12); 0x1c3a
    5fba:	8c 43 3c 1c 	mov	#0,	7228(r12);r3 As==00, 0x1c3c

00005fbe <.Loc.197.1>:
    5fbe:	4f 43       	clr.b	r15		;
    5fc0:	4d 43       	clr.b	r13		;
    5fc2:	4c 4a       	mov.b	r10,	r12	;
    5fc4:	b0 12 68 68 	call	#26728		;#0x6868

00005fc8 <.Loc.198.1>:
    5fc8:	c8 49 38 1c 	mov.b	r9,	7224(r8); 0x1c38

00005fcc <.Loc.199.1>:
    5fcc:	4e 49       	mov.b	r9,	r14	;
    5fce:	4d 43       	clr.b	r13		;
    5fd0:	4c 4a       	mov.b	r10,	r12	;
    5fd2:	b0 12 ba 68 	call	#26810		;#0x68ba

00005fd6 <.Loc.200.1>:
    5fd6:	98 43 36 1c 	mov	#1,	7222(r8);r3 As==01, 0x1c36

00005fda <.Loc.196.1>:
    5fda:	38 50 36 1c 	add	#7222,	r8	;#0x1c36

00005fde <.Loc.201.1>:
    5fde:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5fe0:	4d 43       	clr.b	r13		;
    5fe2:	4c 4a       	mov.b	r10,	r12	;
    5fe4:	b0 12 04 69 	call	#26884		;#0x6904
    5fe8:	d3 3f       	jmp	$-88     	;abs 0x5f90

00005fea <.L45>:
    5fea:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005fec <.Loc.194.1>:
    5fec:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5fee:	de 3f       	jmp	$-66     	;abs 0x5fac

00005ff0 <.L46>:
    5ff0:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005ff2 <.Loc.194.1>:
    5ff2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5ff4:	db 3f       	jmp	$-72     	;abs 0x5fac

00005ff6 <clear_xpr_status>:
    5ff6:	4d 4c       	mov.b	r12,	r13	;

00005ff8 <.Loc.236.1>:
    5ff8:	5c 92 1a 1c 	cmp.b	&0x1c1a,r12	;0x1c1a
    5ffc:	13 24       	jz	$+40     	;abs 0x6024

00005ffe <.Loc.237.1>:
    5ffe:	c2 9d 24 1c 	cmp.b	r13,	&0x1c24	;
    6002:	13 24       	jz	$+40     	;abs 0x602a

00006004 <.Loc.237.1>:
    6004:	c2 9d 2e 1c 	cmp.b	r13,	&0x1c2e	;
    6008:	0c 20       	jnz	$+26     	;abs 0x6022

0000600a <.Loc.237.1>:
    600a:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000600c <.LVL48>:
    600c:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000600e <.L49>:
    600e:	0d 4e       	mov	r14,	r13	;

00006010 <.LVL50>:
    6010:	5d 06       	rlam	#2,	r13	;
    6012:	0d 5e       	add	r14,	r13	;
    6014:	5d 02       	rlam	#1,	r13	;
    6016:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

0000601a <.Loc.241.1>:
    601a:	4e 43       	clr.b	r14		;
    601c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    601e:	b0 12 04 69 	call	#26884		;#0x6904

00006022 <.L48>:
    6022:	30 41       	ret			

00006024 <.L51>:
    6024:	4c 43       	clr.b	r12		;

00006026 <.LVL53>:
    6026:	4e 43       	clr.b	r14		;
    6028:	f2 3f       	jmp	$-26     	;abs 0x600e

0000602a <.L52>:
    602a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000602c <.LVL55>:
    602c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    602e:	ef 3f       	jmp	$-32     	;abs 0x600e

00006030 <unpack_xpr_to_local>:
    6030:	1a 15       	pushm	#2,	r10	;16-bit words

00006032 <.LCFI14>:
    6032:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006036 <.LCFI15>:
    6036:	49 43       	clr.b	r9		;

00006038 <.L54>:
    6038:	0a 49       	mov	r9,	r10	;
    603a:	5a 06       	rlam	#2,	r10	;
    603c:	0a 59       	add	r9,	r10	;
    603e:	5a 02       	rlam	#1,	r10	;
    6040:	3a 50 18 1c 	add	#7192,	r10	;#0x1c18
    6044:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6046:	4d 49       	mov.b	r9,	r13	;
    6048:	0c 41       	mov	r1,	r12	;
    604a:	b0 12 8e 6a 	call	#27278		;#0x6a8e
    604e:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6052:	0d 41       	mov	r1,	r13	;
    6054:	0c 4a       	mov	r10,	r12	;
    6056:	b0 12 82 6d 	call	#28034		;#0x6d82

0000605a <.LVL59>:
    605a:	19 53       	inc	r9		;

0000605c <.Loc.252.1>:
    605c:	39 90 03 00 	cmp	#3,	r9	;
    6060:	eb 23       	jnz	$-40     	;abs 0x6038

00006062 <.Loc.257.1>:
    6062:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006066 <.LCFI16>:
    6066:	19 17       	popm	#2,	r10	;16-bit words

00006068 <.LCFI17>:
    6068:	30 41       	ret			

0000606a <refresh_xpr_timers>:
    606a:	6a 15       	pushm	#7,	r10	;16-bit words

0000606c <.LCFI18>:
    606c:	47 43       	clr.b	r7		;

0000606e <.Loc.261.1>:
    606e:	3a 40 18 1c 	mov	#7192,	r10	;#0x1c18

00006072 <.Loc.261.1>:
    6072:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006074 <.Loc.265.1>:
    6074:	46 43       	clr.b	r6		;

00006076 <.L64>:
    6076:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    607a:	4a 20       	jnz	$+150    	;abs 0x6110

0000607c <.Loc.271.1>:
    607c:	14 4a 04 00 	mov	4(r10),	r4	;
    6080:	15 4a 06 00 	mov	6(r10),	r5	;

00006084 <.Loc.271.1>:
    6084:	0c 93       	cmp	#0,	r12	;r3 As==00
    6086:	04 24       	jz	$+10     	;abs 0x6090

00006088 <.LVL63>:
    6088:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000608c <.LVL64>:
    608c:	09 44       	mov	r4,	r9	;
    608e:	08 45       	mov	r5,	r8	;

00006090 <.L58>:
    6090:	b0 12 12 68 	call	#26642		;#0x6812

00006094 <.Loc.278.1>:
    6094:	0e 44       	mov	r4,	r14	;
    6096:	0f 45       	mov	r5,	r15	;
    6098:	0e 8c       	sub	r12,	r14	;
    609a:	0f 7d       	subc	r13,	r15	;

0000609c <.Loc.278.1>:
    609c:	8a 4e 04 00 	mov	r14,	4(r10)	;
    60a0:	8a 4f 06 00 	mov	r15,	6(r10)	;

000060a4 <.Loc.279.1>:
    60a4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    60a6:	4c 46       	mov.b	r6,	r12	;
    60a8:	b0 12 68 68 	call	#26728		;#0x6868

000060ac <.Loc.281.1>:
    60ac:	4c 43       	clr.b	r12		;
    60ae:	1c 9a 06 00 	cmp	6(r10),	r12	;
    60b2:	10 38       	jl	$+34     	;abs 0x60d4
    60b4:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    60b8:	03 20       	jnz	$+8      	;abs 0x60c0
    60ba:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    60be:	0a 20       	jnz	$+22     	;abs 0x60d4

000060c0 <.L70>:
    60c0:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    60c4:	b0 12 f2 5b 	call	#23538		;#0x5bf2
    60c8:	b0 12 98 5b 	call	#23448		;#0x5b98

000060cc <.Loc.289.1>:
    60cc:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    60d0:	b0 12 f6 5f 	call	#24566		;#0x5ff6

000060d4 <.L59>:
    60d4:	1e 4a 04 00 	mov	4(r10),	r14	;
    60d8:	1d 4a 06 00 	mov	6(r10),	r13	;

000060dc <.Loc.292.1>:
    60dc:	4c 43       	clr.b	r12		;
    60de:	0c 9d       	cmp	r13,	r12	;
    60e0:	04 38       	jl	$+10     	;abs 0x60ea
    60e2:	0d 93       	cmp	#0,	r13	;r3 As==00
    60e4:	14 20       	jnz	$+42     	;abs 0x610e
    60e6:	0e 93       	cmp	#0,	r14	;r3 As==00
    60e8:	12 24       	jz	$+38     	;abs 0x610e

000060ea <.L71>:
    60ea:	0d 98       	cmp	r8,	r13	;
    60ec:	0c 38       	jl	$+26     	;abs 0x6106
    60ee:	08 9d       	cmp	r13,	r8	;
    60f0:	02 20       	jnz	$+6      	;abs 0x60f6
    60f2:	0e 99       	cmp	r9,	r14	;
    60f4:	08 28       	jnc	$+18     	;abs 0x6106

000060f6 <.L72>:
    60f6:	4c 43       	clr.b	r12		;

000060f8 <.Loc.294.1>:
    60f8:	0e 99       	cmp	r9,	r14	;
    60fa:	0a 20       	jnz	$+22     	;abs 0x6110
    60fc:	0d 98       	cmp	r8,	r13	;
    60fe:	08 20       	jnz	$+18     	;abs 0x6110

00006100 <.Loc.294.1>:
    6100:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    6104:	05 2c       	jc	$+12     	;abs 0x6110

00006106 <.L62>:
    6106:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000610a <.LVL72>:
    610a:	09 4e       	mov	r14,	r9	;
    610c:	08 4d       	mov	r13,	r8	;

0000610e <.L67>:
    610e:	4c 43       	clr.b	r12		;

00006110 <.L57>:
    6110:	4d 46       	mov.b	r6,	r13	;
    6112:	5d 53       	inc.b	r13		;
    6114:	46 4d       	mov.b	r13,	r6	;

00006116 <.LVL75>:
    6116:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000611a <.Loc.265.1>:
    611a:	7d 90 03 00 	cmp.b	#3,	r13	;
    611e:	ab 23       	jnz	$-168    	;abs 0x6076

00006120 <.Loc.303.1>:
    6120:	0c 93       	cmp	#0,	r12	;r3 As==00
    6122:	0d 20       	jnz	$+28     	;abs 0x613e

00006124 <.Loc.304.1>:
    6124:	4d 47       	mov.b	r7,	r13	;

00006126 <.LVL76>:
    6126:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006128 <.LVL77>:
    6128:	b0 12 4a 69 	call	#26954		;#0x694a

0000612c <.Loc.305.1>:
    612c:	0d 49       	mov	r9,	r13	;
    612e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6130:	b0 12 58 69 	call	#26968		;#0x6958

00006134 <.Loc.308.1>:
    6134:	0c 49       	mov	r9,	r12	;
    6136:	b0 12 9e 67 	call	#26526		;#0x679e

0000613a <.L56>:
    613a:	64 17       	popm	#7,	r10	;16-bit words

0000613c <.LCFI19>:
    613c:	30 41       	ret			

0000613e <.L65>:
    613e:	b0 12 b4 67 	call	#26548		;#0x67b4

00006142 <.LVL82>:
    6142:	fb 3f       	jmp	$-8      	;abs 0x613a

00006144 <set_expire_timer>:
    6144:	5a 15       	pushm	#6,	r10	;16-bit words

00006146 <.LCFI21>:
    6146:	48 4c       	mov.b	r12,	r8	;
    6148:	09 4d       	mov	r13,	r9	;
    614a:	07 4e       	mov	r14,	r7	;

0000614c <.Loc.318.1>:
    614c:	b0 12 30 60 	call	#24624		;#0x6030

00006150 <.LVL85>:
    6150:	82 93 18 1c 	cmp	#0,	&0x1c18	;r3 As==00
    6154:	1b 24       	jz	$+56     	;abs 0x618c

00006156 <.Loc.324.1>:
    6156:	82 93 22 1c 	cmp	#0,	&0x1c22	;r3 As==00
    615a:	43 24       	jz	$+136    	;abs 0x61e2

0000615c <.Loc.324.1>:
    615c:	82 93 2c 1c 	cmp	#0,	&0x1c2c	;r3 As==00
    6160:	43 24       	jz	$+136    	;abs 0x61e8

00006162 <.Loc.324.1>:
    6162:	0e 49       	mov	r9,	r14	;
    6164:	0f 47       	mov	r7,	r15	;
    6166:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6168:	6c 43       	mov.b	#2,	r12	;r3 As==10
    616a:	b0 12 68 68 	call	#26728		;#0x6868

0000616e <.Loc.348.1>:
    616e:	4e 48       	mov.b	r8,	r14	;
    6170:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6172:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6174:	b0 12 ba 68 	call	#26810		;#0x68ba

00006178 <.L83>:
    6178:	b0 12 6a 60 	call	#24682		;#0x606a

0000617c <.Loc.352.1>:
    617c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    617e:	b0 12 66 69 	call	#26982		;#0x6966

00006182 <.Loc.353.1>:
    6182:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6184:	b0 12 4c 6a 	call	#27212		;#0x6a4c

00006188 <.Loc.354.1>:
    6188:	55 17       	popm	#6,	r10	;16-bit words

0000618a <.LCFI22>:
    618a:	30 41       	ret			

0000618c <.L80>:
    618c:	1a 42 18 1c 	mov	&0x1c18,r10	;0x1c18

00006190 <.Loc.326.1>:
    6190:	06 4a       	mov	r10,	r6	;

00006192 <.L78>:
    6192:	35 40 12 68 	mov	#26642,	r5	;#0x6812
    6196:	85 12       	call	r5		;

00006198 <.Loc.328.1>:
    6198:	0e 46       	mov	r6,	r14	;
    619a:	5e 06       	rlam	#2,	r14	;
    619c:	0e 56       	add	r6,	r14	;
    619e:	5e 02       	rlam	#1,	r14	;
    61a0:	06 4e       	mov	r14,	r6	;

000061a2 <.Loc.328.1>:
    61a2:	0c 59       	add	r9,	r12	;
    61a4:	8e 4c 1c 1c 	mov	r12,	7196(r14); 0x1c1c
    61a8:	0d 67       	addc	r7,	r13	;
    61aa:	8e 4d 1e 1c 	mov	r13,	7198(r14); 0x1c1e

000061ae <.Loc.329.1>:
    61ae:	85 12       	call	r5		;

000061b0 <.Loc.329.1>:
    61b0:	0e 4c       	mov	r12,	r14	;
    61b2:	0e 59       	add	r9,	r14	;
    61b4:	0f 4d       	mov	r13,	r15	;
    61b6:	0f 67       	addc	r7,	r15	;
    61b8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    61ba:	4c 4a       	mov.b	r10,	r12	;
    61bc:	b0 12 68 68 	call	#26728		;#0x6868

000061c0 <.Loc.330.1>:
    61c0:	c6 48 1a 1c 	mov.b	r8,	7194(r6); 0x1c1a

000061c4 <.Loc.331.1>:
    61c4:	4e 48       	mov.b	r8,	r14	;
    61c6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    61c8:	4c 4a       	mov.b	r10,	r12	;
    61ca:	b0 12 ba 68 	call	#26810		;#0x68ba

000061ce <.Loc.332.1>:
    61ce:	96 43 18 1c 	mov	#1,	7192(r6);r3 As==01, 0x1c18

000061d2 <.Loc.328.1>:
    61d2:	36 50 18 1c 	add	#7192,	r6	;#0x1c18

000061d6 <.Loc.333.1>:
    61d6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    61d8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    61da:	4c 4a       	mov.b	r10,	r12	;
    61dc:	b0 12 04 69 	call	#26884		;#0x6904
    61e0:	cb 3f       	jmp	$-104    	;abs 0x6178

000061e2 <.L81>:
    61e2:	5a 43       	mov.b	#1,	r10	;r3 As==01

000061e4 <.Loc.326.1>:
    61e4:	56 43       	mov.b	#1,	r6	;r3 As==01
    61e6:	d5 3f       	jmp	$-84     	;abs 0x6192

000061e8 <.L82>:
    61e8:	6a 43       	mov.b	#2,	r10	;r3 As==10

000061ea <.Loc.326.1>:
    61ea:	66 43       	mov.b	#2,	r6	;r3 As==10
    61ec:	d2 3f       	jmp	$-90     	;abs 0x6192

000061ee <stop_expire_timer>:
    61ee:	0a 15       	pushm	#1,	r10	;16-bit words

000061f0 <.LCFI24>:
    61f0:	4a 4c       	mov.b	r12,	r10	;

000061f2 <.Loc.361.1>:
    61f2:	b0 12 30 60 	call	#24624		;#0x6030

000061f6 <.LVL104>:
    61f6:	4c 4a       	mov.b	r10,	r12	;
    61f8:	b0 12 f6 5f 	call	#24566		;#0x5ff6

000061fc <.Loc.366.1>:
    61fc:	b0 12 6a 60 	call	#24682		;#0x606a

00006200 <.Loc.368.1>:
    6200:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6202:	b0 12 66 69 	call	#26982		;#0x6966

00006206 <.Loc.369.1>:
    6206:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6208:	b0 12 4c 6a 	call	#27212		;#0x6a4c

0000620c <.Loc.371.1>:
    620c:	0a 17       	popm	#1,	r10	;16-bit words

0000620e <.LCFI25>:
    620e:	30 41       	ret			

00006210 <unpack_pdc_to_local>:
    6210:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006214 <.LCFI26>:
    6214:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6216:	4d 43       	clr.b	r13		;
    6218:	0c 41       	mov	r1,	r12	;
    621a:	b0 12 8e 6a 	call	#27278		;#0x6a8e
    621e:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6222:	0d 41       	mov	r1,	r13	;
    6224:	3c 40 0e 1c 	mov	#7182,	r12	;#0x1c0e
    6228:	b0 12 82 6d 	call	#28034		;#0x6d82

0000622c <.Loc.383.1>:
    622c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006230 <.LCFI27>:
    6230:	30 41       	ret			

00006232 <refresh_pdc_timers>:
    6232:	2a 15       	pushm	#3,	r10	;16-bit words

00006234 <.LCFI28>:
    6234:	92 93 0e 1c 	cmp	#1,	&0x1c0e	;r3 As==01
    6238:	7d 20       	jnz	$+252    	;abs 0x6334

0000623a <.Loc.463.1>:
    623a:	18 42 12 1c 	mov	&0x1c12,r8	;0x1c12
    623e:	19 42 14 1c 	mov	&0x1c14,r9	;0x1c14

00006242 <.Loc.465.1>:
    6242:	82 48 54 1c 	mov	r8,	&0x1c54	;

00006246 <.Loc.466.1>:
    6246:	d2 42 10 1c 	mov.b	&0x1c10,&0x1c56	;0x1c10
    624a:	56 1c 

0000624c <.Loc.467.1>:
    624c:	b0 12 12 68 	call	#26642		;#0x6812

00006250 <.Loc.471.1>:
    6250:	0e 48       	mov	r8,	r14	;
    6252:	0f 49       	mov	r9,	r15	;
    6254:	0e 8c       	sub	r12,	r14	;
    6256:	0f 7d       	subc	r13,	r15	;

00006258 <.Loc.471.1>:
    6258:	82 4e 12 1c 	mov	r14,	&0x1c12	;
    625c:	82 4f 14 1c 	mov	r15,	&0x1c14	;

00006260 <.Loc.472.1>:
    6260:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6262:	4c 43       	clr.b	r12		;
    6264:	b0 12 68 68 	call	#26728		;#0x6868

00006268 <.Loc.474.1>:
    6268:	1c 42 12 1c 	mov	&0x1c12,r12	;0x1c12
    626c:	1d 42 14 1c 	mov	&0x1c14,r13	;0x1c14

00006270 <.Loc.474.1>:
    6270:	09 4d       	mov	r13,	r9	;
    6272:	0d 93       	cmp	#0,	r13	;r3 As==00
    6274:	44 34       	jge	$+138    	;abs 0x62fe

00006276 <.Loc.474.1>:
    6276:	5e 42 5f 1c 	mov.b	&0x1c5f,r14	;0x1c5f
    627a:	08 43       	clr	r8		;
    627c:	08 8e       	sub	r14,	r8	;
    627e:	0e 48       	mov	r8,	r14	;
    6280:	0f 48       	mov	r8,	r15	;
    6282:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006286 <.Loc.474.1>:
    6286:	0f 9d       	cmp	r13,	r15	;
    6288:	04 38       	jl	$+10     	;abs 0x6292

0000628a <.Loc.474.1>:
    628a:	0d 9f       	cmp	r15,	r13	;
    628c:	20 20       	jnz	$+66     	;abs 0x62ce
    628e:	08 9c       	cmp	r12,	r8	;
    6290:	1e 2c       	jc	$+62     	;abs 0x62ce

00006292 <.L100>:
    6292:	1a 42 54 1c 	mov	&0x1c54,r10	;0x1c54
    6296:	08 4a       	mov	r10,	r8	;
    6298:	09 43       	clr	r9		;

0000629a <.Loc.476.1>:
    629a:	4e 43       	clr.b	r14		;
    629c:	4f 43       	clr.b	r15		;
    629e:	0e 8c       	sub	r12,	r14	;
    62a0:	0f 7d       	subc	r13,	r15	;

000062a2 <.Loc.476.1>:
    62a2:	0f 93       	cmp	#0,	r15	;r3 As==00
    62a4:	0c 38       	jl	$+26     	;abs 0x62be
    62a6:	0f 93       	cmp	#0,	r15	;r3 As==00
    62a8:	02 20       	jnz	$+6      	;abs 0x62ae
    62aa:	0e 98       	cmp	r8,	r14	;
    62ac:	08 28       	jnc	$+18     	;abs 0x62be

000062ae <.L101>:
    62ae:	08 9e       	cmp	r14,	r8	;
    62b0:	17 20       	jnz	$+48     	;abs 0x62e0
    62b2:	0f 93       	cmp	#0,	r15	;r3 As==00
    62b4:	15 20       	jnz	$+44     	;abs 0x62e0

000062b6 <.Loc.476.1>:
    62b6:	d2 92 56 1c 	cmp.b	&0x1c56,&0x1c10	;0x1c56
    62ba:	10 1c 
    62bc:	11 2c       	jc	$+36     	;abs 0x62e0

000062be <.L92>:
    62be:	4e 43       	clr.b	r14		;
    62c0:	0e 8c       	sub	r12,	r14	;
    62c2:	82 4e 54 1c 	mov	r14,	&0x1c54	;

000062c6 <.L107>:
    62c6:	d2 42 10 1c 	mov.b	&0x1c10,&0x1c56	;0x1c10
    62ca:	56 1c 

000062cc <.Loc.494.1>:
    62cc:	09 3c       	jmp	$+20     	;abs 0x62e0

000062ce <.L90>:
    62ce:	09 4d       	mov	r13,	r9	;
    62d0:	0d 9f       	cmp	r15,	r13	;
    62d2:	04 38       	jl	$+10     	;abs 0x62dc
    62d4:	0f 9d       	cmp	r13,	r15	;
    62d6:	04 20       	jnz	$+10     	;abs 0x62e0
    62d8:	0c 98       	cmp	r8,	r12	;
    62da:	02 2c       	jc	$+6      	;abs 0x62e0

000062dc <.L102>:
    62dc:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

000062e0 <.L94>:
    62e0:	5d 42 56 1c 	mov.b	&0x1c56,r13	;0x1c56
    62e4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    62e6:	b0 12 4a 69 	call	#26954		;#0x694a

000062ea <.Loc.497.1>:
    62ea:	1d 42 54 1c 	mov	&0x1c54,r13	;0x1c54
    62ee:	5c 43       	mov.b	#1,	r12	;r3 As==01
    62f0:	b0 12 58 69 	call	#26968		;#0x6958

000062f4 <.Loc.500.1>:
    62f4:	1c 42 54 1c 	mov	&0x1c54,r12	;0x1c54
    62f8:	b0 12 ba 67 	call	#26554		;#0x67ba

000062fc <.Loc.507.1>:
    62fc:	1d 3c       	jmp	$+60     	;abs 0x6338

000062fe <.L88>:
    62fe:	0e 4c       	mov	r12,	r14	;
    6300:	0e dd       	bis	r13,	r14	;
    6302:	0e 93       	cmp	#0,	r14	;r3 As==00
    6304:	ed 27       	jz	$-36     	;abs 0x62e0

00006306 <.Loc.485.1>:
    6306:	1a 42 54 1c 	mov	&0x1c54,r10	;0x1c54
    630a:	0e 4a       	mov	r10,	r14	;
    630c:	0f 43       	clr	r15		;

0000630e <.Loc.485.1>:
    630e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6310:	0e 38       	jl	$+30     	;abs 0x632e
    6312:	0d 93       	cmp	#0,	r13	;r3 As==00
    6314:	03 20       	jnz	$+8      	;abs 0x631c
    6316:	09 4c       	mov	r12,	r9	;
    6318:	0c 9e       	cmp	r14,	r12	;
    631a:	09 28       	jnc	$+20     	;abs 0x632e

0000631c <.L103>:
    631c:	09 4c       	mov	r12,	r9	;
    631e:	0c 9e       	cmp	r14,	r12	;
    6320:	df 23       	jnz	$-64     	;abs 0x62e0
    6322:	0d 9f       	cmp	r15,	r13	;
    6324:	dd 23       	jnz	$-68     	;abs 0x62e0

00006326 <.Loc.485.1>:
    6326:	d2 92 56 1c 	cmp.b	&0x1c56,&0x1c10	;0x1c56
    632a:	10 1c 
    632c:	d9 2f       	jc	$-76     	;abs 0x62e0

0000632e <.L97>:
    632e:	82 4c 54 1c 	mov	r12,	&0x1c54	;
    6332:	c9 3f       	jmp	$-108    	;abs 0x62c6

00006334 <.L87>:
    6334:	b0 12 78 67 	call	#26488		;#0x6778

00006338 <.L86>:
    6338:	28 17       	popm	#3,	r10	;16-bit words

0000633a <.LCFI29>:
    633a:	30 41       	ret			

0000633c <set_periodic_timer>:
    633c:	2a 15       	pushm	#3,	r10	;16-bit words

0000633e <.LCFI30>:
    633e:	49 4c       	mov.b	r12,	r9	;
    6340:	0a 4d       	mov	r13,	r10	;

00006342 <.Loc.392.1>:
    6342:	b0 12 10 62 	call	#25104		;#0x6210

00006346 <.LVL127>:
    6346:	82 93 0e 1c 	cmp	#0,	&0x1c0e	;r3 As==00
    634a:	2e 20       	jnz	$+94     	;abs 0x63a8

0000634c <.Loc.403.1>:
    634c:	38 40 f2 5b 	mov	#23538,	r8	;#0x5bf2
    6350:	4c 49       	mov.b	r9,	r12	;
    6352:	88 12       	call	r8		;
    6354:	0d 4a       	mov	r10,	r13	;
    6356:	b0 12 be 5b 	call	#23486		;#0x5bbe

0000635a <.Loc.404.1>:
    635a:	4c 49       	mov.b	r9,	r12	;
    635c:	88 12       	call	r8		;
    635e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6360:	b0 12 c4 5b 	call	#23492		;#0x5bc4

00006364 <.Loc.405.1>:
    6364:	0e 4a       	mov	r10,	r14	;
    6366:	4f 43       	clr.b	r15		;
    6368:	5d 43       	mov.b	#1,	r13	;r3 As==01
    636a:	4c 43       	clr.b	r12		;
    636c:	b0 12 68 68 	call	#26728		;#0x6868

00006370 <.Loc.406.1>:
    6370:	82 4a 12 1c 	mov	r10,	&0x1c12	;
    6374:	82 43 14 1c 	mov	#0,	&0x1c14	;r3 As==00

00006378 <.Loc.407.1>:
    6378:	4e 49       	mov.b	r9,	r14	;
    637a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    637c:	4c 43       	clr.b	r12		;
    637e:	b0 12 ba 68 	call	#26810		;#0x68ba

00006382 <.Loc.408.1>:
    6382:	c2 49 10 1c 	mov.b	r9,	&0x1c10	;

00006386 <.Loc.409.1>:
    6386:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6388:	5d 43       	mov.b	#1,	r13	;r3 As==01
    638a:	4c 43       	clr.b	r12		;
    638c:	b0 12 04 69 	call	#26884		;#0x6904

00006390 <.Loc.410.1>:
    6390:	92 43 0e 1c 	mov	#1,	&0x1c0e	;r3 As==01

00006394 <.L111>:
    6394:	b0 12 32 62 	call	#25138		;#0x6232

00006398 <.Loc.433.1>:
    6398:	5c 43       	mov.b	#1,	r12	;r3 As==01
    639a:	b0 12 66 69 	call	#26982		;#0x6966

0000639e <.Loc.434.1>:
    639e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    63a0:	b0 12 4c 6a 	call	#27212		;#0x6a4c

000063a4 <.Loc.435.1>:
    63a4:	28 17       	popm	#3,	r10	;16-bit words

000063a6 <.LCFI31>:
    63a6:	30 41       	ret			

000063a8 <.L109>:
    63a8:	82 4a 12 1c 	mov	r10,	&0x1c12	;
    63ac:	82 43 14 1c 	mov	#0,	&0x1c14	;r3 As==00

000063b0 <.Loc.426.1>:
    63b0:	0e 4a       	mov	r10,	r14	;
    63b2:	4f 43       	clr.b	r15		;
    63b4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    63b6:	4c 43       	clr.b	r12		;
    63b8:	b0 12 68 68 	call	#26728		;#0x6868

000063bc <.Loc.427.1>:
    63bc:	c2 49 10 1c 	mov.b	r9,	&0x1c10	;

000063c0 <.Loc.428.1>:
    63c0:	4e 49       	mov.b	r9,	r14	;
    63c2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    63c4:	4c 43       	clr.b	r12		;
    63c6:	b0 12 ba 68 	call	#26810		;#0x68ba
    63ca:	e4 3f       	jmp	$-54     	;abs 0x6394

000063cc <clear_pdc_status>:
    63cc:	5c 92 10 1c 	cmp.b	&0x1c10,r12	;0x1c10
    63d0:	07 20       	jnz	$+16     	;abs 0x63e0

000063d2 <.Loc.516.1>:
    63d2:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

000063d6 <.Loc.517.1>:
    63d6:	4e 43       	clr.b	r14		;
    63d8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    63da:	4c 43       	clr.b	r12		;

000063dc <.LVL144>:
    63dc:	b0 12 04 69 	call	#26884		;#0x6904

000063e0 <.L112>:
    63e0:	30 41       	ret			

000063e2 <stop_periodic_timer>:
    63e2:	0a 15       	pushm	#1,	r10	;16-bit words

000063e4 <.LCFI33>:
    63e4:	4a 4c       	mov.b	r12,	r10	;

000063e6 <.Loc.440.1>:
    63e6:	b0 12 10 62 	call	#25104		;#0x6210

000063ea <.LVL147>:
    63ea:	4c 4a       	mov.b	r10,	r12	;
    63ec:	b0 12 cc 63 	call	#25548		;#0x63cc

000063f0 <.Loc.445.1>:
    63f0:	b0 12 32 62 	call	#25138		;#0x6232

000063f4 <.Loc.447.1>:
    63f4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63f6:	b0 12 66 69 	call	#26982		;#0x6966

000063fa <.Loc.448.1>:
    63fa:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63fc:	b0 12 4c 6a 	call	#27212		;#0x6a4c

00006400 <.Loc.450.1>:
    6400:	0a 17       	popm	#1,	r10	;16-bit words

00006402 <.LCFI34>:
    6402:	30 41       	ret			

00006404 <main>:
    6404:	b0 12 b6 66 	call	#26294		;#0x66b6

00006408 <.Loc.46.1>:
    6408:	c2 93 2e 4e 	cmp.b	#0,	&0x4e2e	;r3 As==00
    640c:	08 20       	jnz	$+18     	;abs 0x641e

0000640e <.Loc.48.1>:
    640e:	b0 12 d8 5a 	call	#23256		;#0x5ad8

00006412 <.Loc.50.1>:
    6412:	b0 12 6c 64 	call	#25708		;#0x646c

00006416 <.Loc.57.1>:
    6416:	b0 12 d2 5a 	call	#23250		;#0x5ad2

0000641a <.Loc.59.1>:
    641a:	d2 43 2e 4e 	mov.b	#1,	&0x4e2e	;r3 As==01

0000641e <.L2>:
    641e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006422 <.Loc.68.1>:
    6422:	
00006424 <L0^A>:
    6424:	04 02       	mova	@r2,	r4	;

00006426 <.Loc.68.1>:
    6426:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000642a <.Loc.68.1>:
    642a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    642e:	02 02 

00006430 <.Loc.69.1>:
    6430:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    6434:	04 02 

00006436 <.Loc.69.1>:
    6436:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    643a:	02 02 

0000643c <.Loc.69.1>:
    643c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6440:	22 02 

00006442 <.Loc.70.1>:
    6442:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    6446:	24 02 

00006448 <.Loc.70.1>:
    6448:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    644c:	22 02 

0000644e <.Loc.70.1>:
    644e:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6452:	22 02 

00006454 <.Loc.71.1>:
    6454:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    6458:	24 02 

0000645a <.Loc.71.1>:
    645a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    645e:	22 02 

00006460 <.Loc.71.1>:
    6460:	b0 12 68 59 	call	#22888		;#0x5968

00006464 <.Loc.78.1>:
    6464:	b0 12 04 5c 	call	#23556		;#0x5c04

00006468 <.Loc.80.1>:
    6468:	4c 43       	clr.b	r12		;
    646a:	30 41       	ret			

0000646c <__events_boot_init>:
    646c:	1a 15       	pushm	#2,	r10	;16-bit words

0000646e <.LCFI0>:
    646e:	3a 40 b0 53 	mov	#21424,	r10	;#0x53b0
    6472:	39 40 30 4e 	mov	#20016,	r9	;#0x4e30

00006476 <.L2>:
    6476:	0c 4a       	mov	r10,	r12	;
    6478:	b0 12 98 65 	call	#26008		;#0x6598

0000647c <.Loc.56.1>:
    647c:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

00006480 <.Loc.53.1>:
    6480:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    6484:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

00006488 <.Loc.53.1>:
    6488:	3a 90 b0 4e 	cmp	#20144,	r10	;#0x4eb0
    648c:	f4 23       	jnz	$-22     	;abs 0x6476

0000648e <.Loc.58.1>:
    648e:	19 17       	popm	#2,	r10	;16-bit words

00006490 <.LCFI1>:
    6490:	30 41       	ret			

00006492 <__events_commit>:
    6492:	5c 42 bc 53 	mov.b	&0x53bc,r12	;0x53bc
    6496:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    6498:	13 24       	jz	$+40     	;abs 0x64c0
    649a:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    649c:	1e 24       	jz	$+62     	;abs 0x64da
    649e:	0c 93       	cmp	#0,	r12	;r3 As==00
    64a0:	29 20       	jnz	$+84     	;abs 0x64f4

000064a2 <.Loc.65.1>:
    64a2:	1d 42 ba 53 	mov	&0x53ba,r13	;0x53ba

000064a6 <.Loc.65.1>:
    64a6:	6c 4d       	mov.b	@r13,	r12	;
    64a8:	5c 06       	rlam	#2,	r12	;
    64aa:	6d 4d       	mov.b	@r13,	r13	;
    64ac:	0c 5d       	add	r13,	r12	;
    64ae:	5c 06       	rlam	#2,	r12	;
    64b0:	3d 40 b0 53 	mov	#21424,	r13	;#0x53b0
    64b4:	3c 50 b0 4e 	add	#20144,	r12	;#0x4eb0
    64b8:	b0 12 f4 65 	call	#26100		;#0x65f4

000064bc <.Loc.66.1>:
    64bc:	d2 43 bc 53 	mov.b	#1,	&0x53bc	;r3 As==01

000064c0 <.L5>:
    64c0:	1d 42 ba 53 	mov	&0x53ba,r13	;0x53ba

000064c4 <.Loc.68.1>:
    64c4:	6c 4d       	mov.b	@r13,	r12	;
    64c6:	5c 06       	rlam	#2,	r12	;
    64c8:	6d 4d       	mov.b	@r13,	r13	;
    64ca:	0c 5d       	add	r13,	r12	;
    64cc:	5c 06       	rlam	#2,	r12	;
    64ce:	3c 50 b0 4e 	add	#20144,	r12	;#0x4eb0
    64d2:	b0 12 2a 66 	call	#26154		;#0x662a

000064d6 <.Loc.69.1>:
    64d6:	e2 43 bc 53 	mov.b	#2,	&0x53bc	;r3 As==10

000064da <.L6>:
    64da:	1c 42 ba 53 	mov	&0x53ba,r12	;0x53ba
    64de:	1c 4c 02 00 	mov	2(r12),	r12	;

000064e2 <.Loc.72.1>:
    64e2:	3c 92       	cmp	#8,	r12	;r2 As==11
    64e4:	04 20       	jnz	$+10     	;abs 0x64ee

000064e6 <.Loc.73.1>:
    64e6:	1c 42 ba 53 	mov	&0x53ba,r12	;0x53ba
    64ea:	b0 12 d6 5b 	call	#23510		;#0x5bd6

000064ee <.L8>:
    64ee:	f2 40 03 00 	mov.b	#3,	&0x53bc	;
    64f2:	bc 53 

000064f4 <.L4>:
    64f4:	30 41       	ret			

000064f6 <__event_buffer_full_ISR>:
    64f6:	1d 42 ba 53 	mov	&0x53ba,r13	;0x53ba

000064fa <.Loc.81.1>:
    64fa:	6c 4d       	mov.b	@r13,	r12	;

000064fc <.LVL7>:
    64fc:	5c 06       	rlam	#2,	r12	;
    64fe:	6d 4d       	mov.b	@r13,	r13	;
    6500:	0c 5d       	add	r13,	r12	;
    6502:	5c 06       	rlam	#2,	r12	;
    6504:	3c 50 b0 4e 	add	#20144,	r12	;#0x4eb0
    6508:	b0 12 c8 65 	call	#26056		;#0x65c8

0000650c <.Loc.82.1>:
    650c:	30 41       	ret			

0000650e <__event_signal_ISR>:
    650e:	82 4c ba 53 	mov	r12,	&0x53ba	;

00006512 <.Loc.90.1>:
    6512:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6516:	3c 40 b0 53 	mov	#21424,	r12	;#0x53b0

0000651a <.LVL10>:
    651a:	b0 12 82 6d 	call	#28034		;#0x6d82

0000651e <.LVL11>:
    651e:	c2 43 bc 53 	mov.b	#0,	&0x53bc	;r3 As==00

00006522 <.Loc.92.1>:
    6522:	b0 12 92 64 	call	#25746		;#0x6492

00006526 <.Loc.93.1>:
    6526:	30 41       	ret			

00006528 <__has_events>:
    6528:	6d 4c       	mov.b	@r12,	r13	;
    652a:	5d 06       	rlam	#2,	r13	;
    652c:	6c 4c       	mov.b	@r12,	r12	;

0000652e <.LVL14>:
    652e:	0c 5d       	add	r13,	r12	;
    6530:	5c 06       	rlam	#2,	r12	;
    6532:	3c 50 b0 4e 	add	#20144,	r12	;#0x4eb0
    6536:	b0 12 b2 65 	call	#26034		;#0x65b2
    653a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000653e <.Loc.97.1>:
    653e:	3c 53       	add	#-1,	r12	;r3 As==11

00006540 <.Loc.101.1>:
    6540:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6544:	30 41       	ret			

00006546 <__lock_event>:
    6546:	0a 15       	pushm	#1,	r10	;16-bit words

00006548 <.LCFI2>:
    6548:	1c 42 ba 53 	mov	&0x53ba,r12	;0x53ba

0000654c <.LVL17>:
    654c:	6a 4c       	mov.b	@r12,	r10	;

0000654e <.Loc.107.1>:
    654e:	0c 4a       	mov	r10,	r12	;
    6550:	5c 06       	rlam	#2,	r12	;
    6552:	0c 5a       	add	r10,	r12	;
    6554:	5c 06       	rlam	#2,	r12	;
    6556:	3c 50 b0 4e 	add	#20144,	r12	;#0x4eb0
    655a:	b0 12 32 66 	call	#26162		;#0x6632

0000655e <.Loc.107.1>:
    655e:	5a 02       	rlam	#1,	r10	;
    6560:	8a 4c 30 4e 	mov	r12,	20016(r10); 0x4e30

00006564 <.Loc.108.1>:
    6564:	1c 42 ba 53 	mov	&0x53ba,r12	;0x53ba
    6568:	6c 4c       	mov.b	@r12,	r12	;
    656a:	5c 02       	rlam	#1,	r12	;

0000656c <.Loc.109.1>:
    656c:	1c 4c 30 4e 	mov	20016(r12),r12	;0x04e30
    6570:	0a 17       	popm	#1,	r10	;16-bit words

00006572 <.LCFI3>:
    6572:	30 41       	ret			

00006574 <__release_event>:
    6574:	1d 42 ba 53 	mov	&0x53ba,r13	;0x53ba

00006578 <.Loc.113.1>:
    6578:	6c 4d       	mov.b	@r13,	r12	;

0000657a <.LVL20>:
    657a:	5c 06       	rlam	#2,	r12	;
    657c:	6d 4d       	mov.b	@r13,	r13	;
    657e:	0c 5d       	add	r13,	r12	;
    6580:	5c 06       	rlam	#2,	r12	;
    6582:	3c 50 b0 4e 	add	#20144,	r12	;#0x4eb0
    6586:	b0 12 64 66 	call	#26212		;#0x6664

0000658a <.Loc.114.1>:
    658a:	1c 42 ba 53 	mov	&0x53ba,r12	;0x53ba
    658e:	6c 4c       	mov.b	@r12,	r12	;
    6590:	5c 02       	rlam	#1,	r12	;
    6592:	8c 43 30 4e 	mov	#0,	20016(r12);r3 As==00, 0x4e30

00006596 <.Loc.115.1>:
    6596:	30 41       	ret			

00006598 <__perqueue_init>:
    6598:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    659c:	10 00 

0000659e <.Loc.37.1>:
    659e:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    65a2:	11 00 

000065a4 <.Loc.38.1>:
    65a4:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    65a8:	12 00 

000065aa <.Loc.39.1>:
    65aa:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    65ae:	13 00 

000065b0 <.Loc.40.1>:
    65b0:	30 41       	ret			

000065b2 <__perqueue_is_empty>:
    65b2:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    65b6:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    65ba:	4c 4d       	mov.b	r13,	r12	;

000065bc <.LVL2>:
    65bc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    65c0:	3c 53       	add	#-1,	r12	;r3 As==11

000065c2 <.Loc.49.1>:
    65c2:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    65c6:	30 41       	ret			

000065c8 <__perqueue_is_full>:
    65c8:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    65cc:	5d 53       	inc.b	r13		;
    65ce:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

000065d2 <.Loc.54.1>:
    65d2:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    65d6:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    65d8:	02 20       	jnz	$+6      	;abs 0x65de

000065da <.Loc.55.1>:
    65da:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

000065de <.L4>:
    65de:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    65e2:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    65e6:	4c 4d       	mov.b	r13,	r12	;

000065e8 <.LVL4>:
    65e8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    65ec:	3c 53       	add	#-1,	r12	;r3 As==11

000065ee <.Loc.64.1>:
    65ee:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    65f2:	30 41       	ret			

000065f4 <__perqueue_push>:
    65f4:	0e 4c       	mov	r12,	r14	;

000065f6 <.Loc.68.1>:
    65f6:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

000065fa <.LVL6>:
    65fa:	5c 53       	inc.b	r12		;
    65fc:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

00006600 <.Loc.69.1>:
    6600:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    6604:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    6606:	02 20       	jnz	$+6      	;abs 0x660c

00006608 <.Loc.70.1>:
    6608:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

0000660c <.L6>:
    660c:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

00006610 <.Loc.74.1>:
    6610:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

00006614 <.Loc.75.1>:
    6614:	4c 43       	clr.b	r12		;

00006616 <.Loc.74.1>:
    6616:	0b 9f       	cmp	r15,	r11	;
    6618:	07 24       	jz	$+16     	;abs 0x6628

0000661a <.Loc.79.1>:
    661a:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

0000661e <.Loc.79.1>:
    661e:	5c 02       	rlam	#1,	r12	;
    6620:	0e 5c       	add	r12,	r14	;

00006622 <.LVL7>:
    6622:	8e 4d 00 00 	mov	r13,	0(r14)	;

00006626 <.Loc.81.1>:
    6626:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006628 <.L7>:
    6628:	30 41       	ret			

0000662a <__perqueue_push_commit>:
    662a:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    662e:	11 00 

00006630 <.Loc.89.1>:
    6630:	30 41       	ret			

00006632 <__perqueue_pop>:
    6632:	0d 4c       	mov	r12,	r13	;

00006634 <.Loc.93.1>:
    6634:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

00006638 <.Loc.93.1>:
    6638:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000663c <.Loc.94.1>:
    663c:	4c 43       	clr.b	r12		;

0000663e <.LVL10>:
    663e:	0f 9e       	cmp	r14,	r15	;
    6640:	10 24       	jz	$+34     	;abs 0x6662

00006642 <.Loc.98.1>:
    6642:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    6646:	5c 53       	inc.b	r12		;
    6648:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

0000664c <.Loc.99.1>:
    664c:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    6650:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    6652:	02 20       	jnz	$+6      	;abs 0x6658

00006654 <.Loc.100.1>:
    6654:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

00006658 <.L12>:
    6658:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

0000665c <.Loc.102.1>:
    665c:	5c 02       	rlam	#1,	r12	;
    665e:	0d 5c       	add	r12,	r13	;

00006660 <.LVL11>:
    6660:	2c 4d       	mov	@r13,	r12	;

00006662 <.L10>:
    6662:	30 41       	ret			

00006664 <__perqueue_pop_commit>:
    6664:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6668:	10 00 

0000666a <.Loc.109.1>:
    666a:	30 41       	ret			

0000666c <__dma_word_copy>:
    666c:	0a 15       	pushm	#1,	r10	;16-bit words

0000666e <.LCFI0>:
    666e:	21 82       	sub	#4,	r1	;r2 As==10

00006670 <.LBB2>:
    6670:	0a 4c       	mov	r12,	r10	;
    6672:	0b 43       	clr	r11		;
    6674:	81 4a 00 00 	mov	r10,	0(r1)	;
    6678:	81 4b 02 00 	mov	r11,	2(r1)	;

0000667c <.Loc.38.1>:
    667c:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00006680 <.LVL1>:
    6680:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6684:	00 00 

00006686 <.LBB3>:
    6686:	0a 4d       	mov	r13,	r10	;
    6688:	0b 43       	clr	r11		;

0000668a <.LVL2>:
    668a:	81 4a 00 00 	mov	r10,	0(r1)	;
    668e:	81 4b 02 00 	mov	r11,	2(r1)	;

00006692 <.Loc.40.1>:
    6692:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    6696:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    669a:	00 00 

0000669c <.LBE3>:
    669c:	82 4e 1a 05 	mov	r14,	&0x051a	;

000066a0 <.Loc.43.1>:
    66a0:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    66a4:	10 05 

000066a6 <.Loc.44.1>:
    66a6:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    66aa:	10 05 

000066ac <.Loc.46.1>:
    66ac:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

000066b0 <.Loc.47.1>:
    66b0:	21 52       	add	#4,	r1	;r2 As==10

000066b2 <.LCFI2>:
    66b2:	0a 17       	popm	#1,	r10	;16-bit words

000066b4 <.LCFI3>:
    66b4:	30 41       	ret			

000066b6 <__mcu_init>:
    66b6:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    66ba:	5c 01 

000066bc <.Loc.40.1>:
    66bc:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    66c0:	40 01 

000066c2 <L0^A>:
    66c2:	00 3c       	jmp	$+2      	;abs 0x66c4
    66c4:	03 43       	nop			

000066c6 <.Loc.44.1>:
    66c6:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    66ca:	41 01 

000066cc <L0^A>:
    66cc:	00 3c       	jmp	$+2      	;abs 0x66ce
    66ce:	03 43       	nop			

000066d0 <.Loc.48.1>:
    66d0:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    66d4:	23 02 

000066d6 <.Loc.48.1>:
    66d6:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    66da:	25 02 

000066dc <.Loc.48.1>:
    66dc:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    66e0:	23 02 

000066e2 <.Loc.48.1>:
    66e2:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

000066e6 <.Loc.49.1>:
    66e6:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

000066ea <.Loc.49.1>:
    66ea:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

000066ee <.Loc.49.1>:
    66ee:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

000066f2 <.Loc.53.1>:
    66f2:	30 41       	ret			

000066f4 <__priority_init>:
    66f4:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

000066f8 <.Loc.83.1>:
    66f8:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

000066fc <.Loc.83.1>:
    66fc:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006700 <.Loc.83.1>:
    6700:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006704 <.Loc.83.1>:
    6704:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006708 <.Loc.83.1>:
    6708:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000670c <.Loc.83.1>:
    670c:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006710 <.Loc.83.1>:
    6710:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006714 <.Loc.83.1>:
    6714:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006718 <.Loc.88.1>:
    6718:	30 41       	ret			

0000671a <__priority_insert>:
    671a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000671e <.Loc.93.1>:
    671e:	0e 4c       	mov	r12,	r14	;
    6720:	5e 09       	rram	#3,	r14	;

00006722 <.Loc.99.1>:
    6722:	7e f0 07 00 	and.b	#7,	r14	;

00006726 <.Loc.99.1>:
    6726:	dd de 06 45 	bis.b	17670(r14),8(r13)	;0x04506
    672a:	08 00 

0000672c <.Loc.100.1>:
    672c:	0d 5e       	add	r14,	r13	;

0000672e <.LVL12>:
    672e:	7c f0 07 00 	and.b	#7,	r12	;

00006732 <.LVL13>:
    6732:	dd dc 06 45 	bis.b	17670(r12),0(r13)	;0x04506
    6736:	00 00 

00006738 <.Loc.101.1>:
    6738:	30 41       	ret			

0000673a <__priority_remove>:
    673a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000673e <.Loc.106.1>:
    673e:	0e 4c       	mov	r12,	r14	;
    6740:	5e 09       	rram	#3,	r14	;

00006742 <.Loc.112.1>:
    6742:	7e f0 07 00 	and.b	#7,	r14	;
    6746:	0f 4d       	mov	r13,	r15	;
    6748:	0f 5e       	add	r14,	r15	;

0000674a <.Loc.112.1>:
    674a:	7c f0 07 00 	and.b	#7,	r12	;

0000674e <.LVL16>:
    674e:	df cc 06 45 	bic.b	17670(r12),0(r15)	;0x04506
    6752:	00 00 

00006754 <.Loc.114.1>:
    6754:	6c 4f       	mov.b	@r15,	r12	;

00006756 <.Loc.114.1>:
    6756:	0c 93       	cmp	#0,	r12	;r3 As==00
    6758:	03 20       	jnz	$+8      	;abs 0x6760

0000675a <.Loc.115.1>:
    675a:	dd ce 06 45 	bic.b	17670(r14),8(r13)	;0x04506
    675e:	08 00 

00006760 <.L3>:
    6760:	30 41       	ret			

00006762 <__priority_highest>:
    6762:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00006766 <.LVL18>:
    6766:	5d 4d 06 44 	mov.b	17414(r13),r13	;0x04406

0000676a <.LVL19>:
    676a:	0c 5d       	add	r13,	r12	;

0000676c <.LVL20>:
    676c:	6e 4c       	mov.b	@r12,	r14	;

0000676e <.Loc.127.1>:
    676e:	0c 4d       	mov	r13,	r12	;
    6770:	5c 0a       	rlam	#3,	r12	;

00006772 <.Loc.128.1>:
    6772:	5c de 06 44 	bis.b	17414(r14),r12	;0x04406
    6776:	30 41       	ret			

00006778 <stop_timer>:
    6778:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

0000677c <.Loc.157.1>:
    677c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006780 <.Loc.158.1>:
    6780:	30 41       	ret			

00006782 <timerA2_init>:
    6782:	b0 12 78 67 	call	#26488		;#0x6778
    6786:	30 41       	ret			

00006788 <set_timer_wkup>:
    6788:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000678c <.Loc.179.1>:
    678c:	82 4c 52 03 	mov	r12,	&0x0352	;

00006790 <.Loc.180.1>:
    6790:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    6794:	42 03 

00006796 <.Loc.181.1>:
    6796:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    679a:	40 03 

0000679c <.Loc.182.1>:
    679c:	30 41       	ret			

0000679e <set_timer_xpr>:
    679e:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000067a2 <.Loc.186.1>:
    67a2:	82 4c 12 04 	mov	r12,	&0x0412	;

000067a6 <.Loc.187.1>:
    67a6:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    67aa:	02 04 

000067ac <.Loc.188.1>:
    67ac:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    67b0:	00 04 

000067b2 <.Loc.190.1>:
    67b2:	30 41       	ret			

000067b4 <stop_timer_xpr>:
    67b4:	b0 12 78 67 	call	#26488		;#0x6778
    67b8:	30 41       	ret			

000067ba <set_timer_pdc>:
    67ba:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

000067be <.Loc.202.1>:
    67be:	82 4c 92 03 	mov	r12,	&0x0392	;

000067c2 <.Loc.203.1>:
    67c2:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    67c6:	82 03 

000067c8 <.Loc.204.1>:
    67c8:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    67cc:	80 03 

000067ce <.Loc.205.1>:
    67ce:	30 41       	ret			

000067d0 <__setup_rtc>:
    67d0:	30 41       	ret			

000067d2 <__setup_clock>:
    67d2:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    67d6:	61 01 

000067d8 <.Loc.253.1>:
    67d8:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    67dc:	64 01 

000067de <.Loc.254.1>:
    67de:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

000067e2 <.Loc.255.1>:
    67e2:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

000067e6 <.Loc.257.1>:
    67e6:	30 41       	ret			

000067e8 <__get_rtc_time>:
    67e8:	4c 43       	clr.b	r12		;
    67ea:	4d 43       	clr.b	r13		;
    67ec:	30 41       	ret			

000067ee <__get_time_init>:
    67ee:	82 43 be 53 	mov	#0,	&0x53be	;r3 As==00
    67f2:	82 43 c0 53 	mov	#0,	&0x53c0	;r3 As==00

000067f6 <.Loc.337.1>:
    67f6:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

000067fa <.Loc.339.1>:
    67fa:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    67fe:	40 04 

00006800 <.Loc.341.1>:
    6800:	03 43       	nop			
    6802:	32 d2       	eint			
    6804:	03 43       	nop			

00006806 <.Loc.342.1>:
    6806:	30 41       	ret			

00006808 <__get_time_stop>:
    6808:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000680c <.Loc.350.1>:
    680c:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006810 <.Loc.351.1>:
    6810:	30 41       	ret			

00006812 <__get_time>:
    6812:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6816:	40 04 

00006818 <.Loc.363.1>:
    6818:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000681c <.Loc.365.1>:
    681c:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6820:	40 04 

00006822 <.Loc.369.1>:
    6822:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    6826:	b0 12 ea 6c 	call	#27882		;#0x6cea

0000682a <.Loc.370.1>:
    682a:	1c 52 be 53 	add	&0x53be,r12	;0x53be
    682e:	1d 62 c0 53 	addc	&0x53c0,r13	;0x53c0
    6832:	30 41       	ret			

00006834 <isr_TIMER3_A1_VECTOR>:
    6834:	b2 50 aa 00 	add	#170,	&0x53be	;#0x00aa
    6838:	be 53 
    683a:	b2 60 0a 00 	addc	#10,	&0x53c0	;#0x000a
    683e:	c0 53 

00006840 <.Loc.380.1>:
    6840:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00006844 <.Loc.381.1>:
    6844:	00 13       	reti			

00006846 <_pers_timer_init>:
    6846:	3c 40 c2 53 	mov	#21442,	r12	;#0x53c2
    684a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000684e <.Loc.34.1>:
    684e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00006852 <.Loc.34.1>:
    6852:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00006856 <.Loc.34.1>:
    6856:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000685a <.Loc.38.1>:
    685a:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000685e <.Loc.38.1>:
    685e:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00006862 <.Loc.38.1>:
    6862:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00006866 <.Loc.42.1>:
    6866:	30 41       	ret			

00006868 <_pers_timer_update_data>:
    6868:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000686c <.Loc.50.1>:
    686c:	1d 93       	cmp	#1,	r13	;r3 As==01
    686e:	1a 24       	jz	$+54     	;abs 0x68a4
    6870:	2d 93       	cmp	#2,	r13	;r3 As==10
    6872:	0d 24       	jz	$+28     	;abs 0x688e
    6874:	0d 93       	cmp	#0,	r13	;r3 As==00
    6876:	0a 20       	jnz	$+22     	;abs 0x688c

00006878 <.Loc.53.1>:
    6878:	0d 4c       	mov	r12,	r13	;

0000687a <.LVL9>:
    687a:	5d 06       	rlam	#2,	r13	;
    687c:	0c 5d       	add	r13,	r12	;

0000687e <.LVL10>:
    687e:	5c 02       	rlam	#1,	r12	;
    6880:	8c 4e 2a 54 	mov	r14,	21546(r12); 0x542a
    6884:	8c 4f 2c 54 	mov	r15,	21548(r12); 0x542c

00006888 <.Loc.54.1>:
    6888:	9c 43 2e 54 	mov	#1,	21550(r12);r3 As==01, 0x542e

0000688c <.L2>:
    688c:	30 41       	ret			

0000688e <.L4>:
    688e:	0d 4c       	mov	r12,	r13	;

00006890 <.LVL12>:
    6890:	5d 06       	rlam	#2,	r13	;
    6892:	0c 5d       	add	r13,	r12	;
    6894:	5c 02       	rlam	#1,	r12	;
    6896:	8c 4e 48 54 	mov	r14,	21576(r12); 0x5448
    689a:	8c 4f 4a 54 	mov	r15,	21578(r12); 0x544a

0000689e <.Loc.58.1>:
    689e:	9c 43 4c 54 	mov	#1,	21580(r12);r3 As==01, 0x544c
    68a2:	f4 3f       	jmp	$-22     	;abs 0x688c

000068a4 <.L3>:
    68a4:	0d 4c       	mov	r12,	r13	;

000068a6 <.LVL14>:
    68a6:	5d 06       	rlam	#2,	r13	;
    68a8:	0c 5d       	add	r13,	r12	;
    68aa:	5c 02       	rlam	#1,	r12	;
    68ac:	8c 4e 66 54 	mov	r14,	21606(r12); 0x5466
    68b0:	8c 4f 68 54 	mov	r15,	21608(r12); 0x5468

000068b4 <.Loc.62.1>:
    68b4:	9c 43 6a 54 	mov	#1,	21610(r12);r3 As==01, 0x546a

000068b8 <.Loc.63.1>:
    68b8:	e9 3f       	jmp	$-44     	;abs 0x688c

000068ba <_pers_timer_update_thread_id>:
    68ba:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    68be:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

000068c2 <.Loc.73.1>:
    68c2:	1d 93       	cmp	#1,	r13	;r3 As==01
    68c4:	16 24       	jz	$+46     	;abs 0x68f2
    68c6:	2d 93       	cmp	#2,	r13	;r3 As==10
    68c8:	0b 24       	jz	$+24     	;abs 0x68e0
    68ca:	0d 93       	cmp	#0,	r13	;r3 As==00
    68cc:	08 20       	jnz	$+18     	;abs 0x68de

000068ce <.Loc.76.1>:
    68ce:	0d 4c       	mov	r12,	r13	;

000068d0 <.LVL16>:
    68d0:	5d 06       	rlam	#2,	r13	;
    68d2:	0c 5d       	add	r13,	r12	;

000068d4 <.LVL17>:
    68d4:	5c 02       	rlam	#1,	r12	;
    68d6:	cc 4e 28 54 	mov.b	r14,	21544(r12); 0x5428

000068da <.Loc.77.1>:
    68da:	9c 43 2e 54 	mov	#1,	21550(r12);r3 As==01, 0x542e

000068de <.L7>:
    68de:	30 41       	ret			

000068e0 <.L9>:
    68e0:	0d 4c       	mov	r12,	r13	;

000068e2 <.LVL19>:
    68e2:	5d 06       	rlam	#2,	r13	;
    68e4:	0c 5d       	add	r13,	r12	;
    68e6:	5c 02       	rlam	#1,	r12	;
    68e8:	cc 4e 46 54 	mov.b	r14,	21574(r12); 0x5446

000068ec <.Loc.81.1>:
    68ec:	9c 43 4c 54 	mov	#1,	21580(r12);r3 As==01, 0x544c
    68f0:	f6 3f       	jmp	$-18     	;abs 0x68de

000068f2 <.L8>:
    68f2:	0d 4c       	mov	r12,	r13	;

000068f4 <.LVL21>:
    68f4:	5d 06       	rlam	#2,	r13	;
    68f6:	0c 5d       	add	r13,	r12	;
    68f8:	5c 02       	rlam	#1,	r12	;
    68fa:	cc 4e 64 54 	mov.b	r14,	21604(r12); 0x5464

000068fe <.Loc.85.1>:
    68fe:	9c 43 6a 54 	mov	#1,	21610(r12);r3 As==01, 0x546a

00006902 <.Loc.86.1>:
    6902:	ed 3f       	jmp	$-36     	;abs 0x68de

00006904 <_pers_timer_update_status>:
    6904:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006908 <.Loc.95.1>:
    6908:	1d 93       	cmp	#1,	r13	;r3 As==01
    690a:	16 24       	jz	$+46     	;abs 0x6938
    690c:	2d 93       	cmp	#2,	r13	;r3 As==10
    690e:	0b 24       	jz	$+24     	;abs 0x6926
    6910:	0d 93       	cmp	#0,	r13	;r3 As==00
    6912:	08 20       	jnz	$+18     	;abs 0x6924

00006914 <.Loc.98.1>:
    6914:	0d 4c       	mov	r12,	r13	;

00006916 <.LVL23>:
    6916:	5d 06       	rlam	#2,	r13	;
    6918:	0c 5d       	add	r13,	r12	;

0000691a <.LVL24>:
    691a:	5c 02       	rlam	#1,	r12	;
    691c:	8c 4e 26 54 	mov	r14,	21542(r12); 0x5426

00006920 <.Loc.99.1>:
    6920:	9c 43 2e 54 	mov	#1,	21550(r12);r3 As==01, 0x542e

00006924 <.L12>:
    6924:	30 41       	ret			

00006926 <.L14>:
    6926:	0d 4c       	mov	r12,	r13	;

00006928 <.LVL26>:
    6928:	5d 06       	rlam	#2,	r13	;
    692a:	0c 5d       	add	r13,	r12	;
    692c:	5c 02       	rlam	#1,	r12	;
    692e:	8c 4e 44 54 	mov	r14,	21572(r12); 0x5444

00006932 <.Loc.103.1>:
    6932:	9c 43 4c 54 	mov	#1,	21580(r12);r3 As==01, 0x544c
    6936:	f6 3f       	jmp	$-18     	;abs 0x6924

00006938 <.L13>:
    6938:	0d 4c       	mov	r12,	r13	;

0000693a <.LVL28>:
    693a:	5d 06       	rlam	#2,	r13	;
    693c:	0c 5d       	add	r13,	r12	;
    693e:	5c 02       	rlam	#1,	r12	;
    6940:	8c 4e 62 54 	mov	r14,	21602(r12); 0x5462

00006944 <.Loc.107.1>:
    6944:	9c 43 6a 54 	mov	#1,	21610(r12);r3 As==01, 0x546a

00006948 <.Loc.108.1>:
    6948:	ed 3f       	jmp	$-36     	;abs 0x6924

0000694a <_pers_timer_update_nxt_thread>:
    694a:	0e 4c       	mov	r12,	r14	;
    694c:	5e 0a       	rlam	#3,	r14	;
    694e:	ce 4d 6e 54 	mov.b	r13,	21614(r14); 0x546e

00006952 <.Loc.118.1>:
    6952:	9e 43 72 54 	mov	#1,	21618(r14);r3 As==01, 0x5472

00006956 <.Loc.119.1>:
    6956:	30 41       	ret			

00006958 <_pers_timer_update_nxt_time>:
    6958:	0e 4c       	mov	r12,	r14	;
    695a:	5e 0a       	rlam	#3,	r14	;
    695c:	8e 4d 70 54 	mov	r13,	21616(r14); 0x5470

00006960 <.Loc.124.1>:
    6960:	9e 43 72 54 	mov	#1,	21618(r14);r3 As==01, 0x5472

00006964 <.Loc.125.1>:
    6964:	30 41       	ret			

00006966 <_pers_timer_update_lock>:
    6966:	1c 93       	cmp	#1,	r12	;r3 As==01
    6968:	0a 24       	jz	$+22     	;abs 0x697e
    696a:	2c 93       	cmp	#2,	r12	;r3 As==10
    696c:	05 24       	jz	$+12     	;abs 0x6978
    696e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6970:	02 20       	jnz	$+6      	;abs 0x6976

00006972 <.Loc.132.1>:
    6972:	92 43 8a 54 	mov	#1,	&0x548a	;r3 As==01

00006976 <.L19>:
    6976:	30 41       	ret			

00006978 <.L21>:
    6978:	92 43 8c 54 	mov	#1,	&0x548c	;r3 As==01

0000697c <.Loc.136.1>:
    697c:	fc 3f       	jmp	$-6      	;abs 0x6976

0000697e <.L20>:
    697e:	92 43 8e 54 	mov	#1,	&0x548e	;r3 As==01

00006982 <.Loc.139.1>:
    6982:	f9 3f       	jmp	$-12     	;abs 0x6976

00006984 <_commit_timer_buffers>:
    6984:	1a 15       	pushm	#2,	r10	;16-bit words

00006986 <.LCFI0>:
    6986:	0a 4c       	mov	r12,	r10	;

00006988 <.Loc.151.1>:
    6988:	1c 93       	cmp	#1,	r12	;r3 As==01
    698a:	52 24       	jz	$+166    	;abs 0x6a30
    698c:	2c 93       	cmp	#2,	r12	;r3 As==10
    698e:	39 24       	jz	$+116    	;abs 0x6a02
    6990:	0c 93       	cmp	#0,	r12	;r3 As==00
    6992:	16 20       	jnz	$+46     	;abs 0x69c0
    6994:	3f 40 c2 53 	mov	#21442,	r15	;#0x53c2
    6998:	39 40 e0 53 	mov	#21472,	r9	;#0x53e0

0000699c <.L28>:
    699c:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    69a0:	0b 20       	jnz	$+24     	;abs 0x69b8

000069a2 <.Loc.160.1>:
    69a2:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    69a6:	0d 4f       	mov	r15,	r13	;
    69a8:	3d 50 64 00 	add	#100,	r13	;#0x0064
    69ac:	0c 4f       	mov	r15,	r12	;
    69ae:	b0 12 82 6d 	call	#28034		;#0x6d82
    69b2:	0f 4c       	mov	r12,	r15	;

000069b4 <.Loc.161.1>:
    69b4:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

000069b8 <.L27>:
    69b8:	3f 50 0a 00 	add	#10,	r15	;#0x000a

000069bc <.Loc.155.1>:
    69bc:	09 9f       	cmp	r15,	r9	;
    69be:	ee 23       	jnz	$-34     	;abs 0x699c

000069c0 <.L26>:
    69c0:	7f 40 03 00 	mov.b	#3,	r15	;

000069c4 <.L33>:
    69c4:	0c 4a       	mov	r10,	r12	;
    69c6:	5c 0a       	rlam	#3,	r12	;

000069c8 <.Loc.193.1>:
    69c8:	9c 93 72 54 	cmp	#1,	21618(r12);r3 As==01, 0x5472
    69cc:	13 20       	jnz	$+40     	;abs 0x69f4

000069ce <.Loc.195.1>:
    69ce:	0c 4a       	mov	r10,	r12	;
    69d0:	5c 0a       	rlam	#3,	r12	;
    69d2:	0d 4c       	mov	r12,	r13	;
    69d4:	3d 50 c2 53 	add	#21442,	r13	;#0x53c2
    69d8:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    69dc:	46 00 
    69de:	9c 4c 6e 54 	mov	21614(r12),21514(r12);0x0546e, 0x540a
    69e2:	0a 54 
    69e4:	9c 4c 70 54 	mov	21616(r12),21516(r12);0x05470, 0x540c
    69e8:	0c 54 
    69ea:	9c 4c 72 54 	mov	21618(r12),21518(r12);0x05472, 0x540e
    69ee:	0e 54 

000069f0 <.Loc.197.1>:
    69f0:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

000069f4 <.L32>:
    69f4:	4c 4f       	mov.b	r15,	r12	;
    69f6:	7c 53       	add.b	#-1,	r12	;r3 As==11
    69f8:	4f 4c       	mov.b	r12,	r15	;

000069fa <.Loc.191.1>:
    69fa:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    69fc:	e3 23       	jnz	$-56     	;abs 0x69c4

000069fe <.Loc.201.1>:
    69fe:	19 17       	popm	#2,	r10	;16-bit words

00006a00 <.LCFI1>:
    6a00:	30 41       	ret			

00006a02 <.L25>:
    6a02:	39 40 c2 53 	mov	#21442,	r9	;#0x53c2

00006a06 <.L30>:
    6a06:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    6a0a:	0c 20       	jnz	$+26     	;abs 0x6a24

00006a0c <.Loc.171.1>:
    6a0c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6a10:	0d 49       	mov	r9,	r13	;
    6a12:	3d 50 82 00 	add	#130,	r13	;#0x0082
    6a16:	0c 49       	mov	r9,	r12	;
    6a18:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    6a1c:	b0 12 82 6d 	call	#28034		;#0x6d82

00006a20 <.Loc.172.1>:
    6a20:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

00006a24 <.L29>:
    6a24:	39 50 0a 00 	add	#10,	r9	;#0x000a

00006a28 <.Loc.166.1>:
    6a28:	39 90 e0 53 	cmp	#21472,	r9	;#0x53e0
    6a2c:	ec 23       	jnz	$-38     	;abs 0x6a06
    6a2e:	c8 3f       	jmp	$-110    	;abs 0x69c0

00006a30 <.L24>:
    6a30:	92 93 6a 54 	cmp	#1,	&0x546a	;r3 As==01
    6a34:	c5 23       	jnz	$-116    	;abs 0x69c0

00006a36 <.Loc.182.1>:
    6a36:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6a3a:	3d 40 62 54 	mov	#21602,	r13	;#0x5462
    6a3e:	3c 40 fe 53 	mov	#21502,	r12	;#0x53fe
    6a42:	b0 12 82 6d 	call	#28034		;#0x6d82

00006a46 <.Loc.183.1>:
    6a46:	82 43 06 54 	mov	#0,	&0x5406	;r3 As==00

00006a4a <.Loc.177.1>:
    6a4a:	ba 3f       	jmp	$-138    	;abs 0x69c0

00006a4c <_pers_timer_commit>:
    6a4c:	1c 93       	cmp	#1,	r12	;r3 As==01
    6a4e:	16 24       	jz	$+46     	;abs 0x6a7c
    6a50:	2c 93       	cmp	#2,	r12	;r3 As==10
    6a52:	0b 24       	jz	$+24     	;abs 0x6a6a
    6a54:	0c 93       	cmp	#0,	r12	;r3 As==00
    6a56:	08 20       	jnz	$+18     	;abs 0x6a68

00006a58 <.Loc.207.1>:
    6a58:	1d 42 8a 54 	mov	&0x548a,r13	;0x548a

00006a5c <.Loc.207.1>:
    6a5c:	1d 93       	cmp	#1,	r13	;r3 As==01
    6a5e:	04 20       	jnz	$+10     	;abs 0x6a68

00006a60 <.Loc.209.1>:
    6a60:	b0 12 84 69 	call	#27012		;#0x6984

00006a64 <.LVL43>:
    6a64:	a2 43 8a 54 	mov	#2,	&0x548a	;r3 As==10

00006a68 <.L39>:
    6a68:	30 41       	ret			

00006a6a <.L41>:
    6a6a:	1d 42 8c 54 	mov	&0x548c,r13	;0x548c

00006a6e <.Loc.214.1>:
    6a6e:	1d 93       	cmp	#1,	r13	;r3 As==01
    6a70:	fb 23       	jnz	$-8      	;abs 0x6a68

00006a72 <.Loc.216.1>:
    6a72:	b0 12 84 69 	call	#27012		;#0x6984

00006a76 <.LVL45>:
    6a76:	a2 43 8c 54 	mov	#2,	&0x548c	;r3 As==10
    6a7a:	f6 3f       	jmp	$-18     	;abs 0x6a68

00006a7c <.L40>:
    6a7c:	1d 42 8e 54 	mov	&0x548e,r13	;0x548e

00006a80 <.Loc.220.1>:
    6a80:	1d 93       	cmp	#1,	r13	;r3 As==01
    6a82:	f2 23       	jnz	$-26     	;abs 0x6a68

00006a84 <.Loc.222.1>:
    6a84:	b0 12 84 69 	call	#27012		;#0x6984

00006a88 <.LVL47>:
    6a88:	a2 43 8e 54 	mov	#2,	&0x548e	;r3 As==10

00006a8c <.Loc.230.1>:
    6a8c:	ed 3f       	jmp	$-36     	;abs 0x6a68

00006a8e <_pers_timer_get>:
    6a8e:	0a 15       	pushm	#1,	r10	;16-bit words

00006a90 <.LCFI3>:
    6a90:	0a 4c       	mov	r12,	r10	;
    6a92:	4f 4d       	mov.b	r13,	r15	;

00006a94 <.Loc.233.1>:
    6a94:	0d 4f       	mov	r15,	r13	;
    6a96:	5d 06       	rlam	#2,	r13	;

00006a98 <.LVL49>:
    6a98:	0d 5f       	add	r15,	r13	;
    6a9a:	5d 02       	rlam	#1,	r13	;

00006a9c <.Loc.233.1>:
    6a9c:	1e 93       	cmp	#1,	r14	;r3 As==01
    6a9e:	0b 24       	jz	$+24     	;abs 0x6ab6
    6aa0:	2e 93       	cmp	#2,	r14	;r3 As==10
    6aa2:	0e 20       	jnz	$+30     	;abs 0x6ac0

00006aa4 <.Loc.238.1>:
    6aa4:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006aa8 <.LVL50>:
    6aa8:	3d 50 e0 53 	add	#21472,	r13	;#0x53e0

00006aac <.L47>:
    6aac:	b0 12 82 6d 	call	#28034		;#0x6d82

00006ab0 <.LVL51>:
    6ab0:	0c 4a       	mov	r10,	r12	;
    6ab2:	0a 17       	popm	#1,	r10	;16-bit words

00006ab4 <.LCFI4>:
    6ab4:	30 41       	ret			

00006ab6 <.L44>:
    6ab6:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006aba <.LVL53>:
    6aba:	3d 50 fe 53 	add	#21502,	r13	;#0x53fe
    6abe:	f6 3f       	jmp	$-18     	;abs 0x6aac

00006ac0 <.L45>:
    6ac0:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006ac4 <.LVL55>:
    6ac4:	3d 50 c2 53 	add	#21442,	r13	;#0x53c2
    6ac8:	f1 3f       	jmp	$-28     	;abs 0x6aac

00006aca <_pers_timer_get_data>:
    6aca:	4e 4c       	mov.b	r12,	r14	;

00006acc <.Loc.249.1>:
    6acc:	1d 93       	cmp	#1,	r13	;r3 As==01
    6ace:	13 24       	jz	$+40     	;abs 0x6af6
    6ad0:	2d 93       	cmp	#2,	r13	;r3 As==10
    6ad2:	0a 24       	jz	$+22     	;abs 0x6ae8
    6ad4:	4c 43       	clr.b	r12		;

00006ad6 <.LVL57>:
    6ad6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6ad8:	06 20       	jnz	$+14     	;abs 0x6ae6

00006ada <.Loc.252.1>:
    6ada:	0c 4e       	mov	r14,	r12	;
    6adc:	5c 06       	rlam	#2,	r12	;
    6ade:	0c 5e       	add	r14,	r12	;
    6ae0:	5c 02       	rlam	#1,	r12	;
    6ae2:	1c 4c c6 53 	mov	21446(r12),r12	;0x053c6

00006ae6 <.L48>:
    6ae6:	30 41       	ret			

00006ae8 <.L50>:
    6ae8:	0c 4e       	mov	r14,	r12	;

00006aea <.LVL59>:
    6aea:	5c 06       	rlam	#2,	r12	;
    6aec:	0c 5e       	add	r14,	r12	;
    6aee:	5c 02       	rlam	#1,	r12	;
    6af0:	1c 4c e4 53 	mov	21476(r12),r12	;0x053e4
    6af4:	f8 3f       	jmp	$-14     	;abs 0x6ae6

00006af6 <.L49>:
    6af6:	0c 4e       	mov	r14,	r12	;

00006af8 <.LVL61>:
    6af8:	5c 06       	rlam	#2,	r12	;
    6afa:	0c 5e       	add	r14,	r12	;
    6afc:	5c 02       	rlam	#1,	r12	;
    6afe:	1c 4c 02 54 	mov	21506(r12),r12	;0x05402
    6b02:	f1 3f       	jmp	$-28     	;abs 0x6ae6

00006b04 <_pers_timer_get_thread_id>:
    6b04:	4e 4c       	mov.b	r12,	r14	;

00006b06 <.Loc.266.1>:
    6b06:	1d 93       	cmp	#1,	r13	;r3 As==01
    6b08:	13 24       	jz	$+40     	;abs 0x6b30
    6b0a:	2d 93       	cmp	#2,	r13	;r3 As==10
    6b0c:	0a 24       	jz	$+22     	;abs 0x6b22
    6b0e:	4c 43       	clr.b	r12		;

00006b10 <.LVL63>:
    6b10:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b12:	06 20       	jnz	$+14     	;abs 0x6b20

00006b14 <.Loc.269.1>:
    6b14:	0c 4e       	mov	r14,	r12	;
    6b16:	5c 06       	rlam	#2,	r12	;
    6b18:	0c 5e       	add	r14,	r12	;
    6b1a:	5c 02       	rlam	#1,	r12	;
    6b1c:	5c 4c c4 53 	mov.b	21444(r12),r12	;0x053c4

00006b20 <.L56>:
    6b20:	30 41       	ret			

00006b22 <.L55>:
    6b22:	0c 4e       	mov	r14,	r12	;

00006b24 <.LVL65>:
    6b24:	5c 06       	rlam	#2,	r12	;
    6b26:	0c 5e       	add	r14,	r12	;
    6b28:	5c 02       	rlam	#1,	r12	;
    6b2a:	5c 4c e2 53 	mov.b	21474(r12),r12	;0x053e2
    6b2e:	f8 3f       	jmp	$-14     	;abs 0x6b20

00006b30 <.L54>:
    6b30:	0c 4e       	mov	r14,	r12	;

00006b32 <.LVL67>:
    6b32:	5c 06       	rlam	#2,	r12	;
    6b34:	0c 5e       	add	r14,	r12	;
    6b36:	5c 02       	rlam	#1,	r12	;
    6b38:	5c 4c 00 54 	mov.b	21504(r12),r12	;0x05400
    6b3c:	f1 3f       	jmp	$-28     	;abs 0x6b20

00006b3e <_pers_timer_get_status>:
    6b3e:	4e 4c       	mov.b	r12,	r14	;

00006b40 <.Loc.283.1>:
    6b40:	1d 93       	cmp	#1,	r13	;r3 As==01
    6b42:	13 24       	jz	$+40     	;abs 0x6b6a
    6b44:	2d 93       	cmp	#2,	r13	;r3 As==10
    6b46:	0a 24       	jz	$+22     	;abs 0x6b5c
    6b48:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006b4a <.LVL69>:
    6b4a:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b4c:	06 20       	jnz	$+14     	;abs 0x6b5a

00006b4e <.Loc.286.1>:
    6b4e:	0c 4e       	mov	r14,	r12	;
    6b50:	5c 06       	rlam	#2,	r12	;
    6b52:	0c 5e       	add	r14,	r12	;
    6b54:	5c 02       	rlam	#1,	r12	;
    6b56:	1c 4c c2 53 	mov	21442(r12),r12	;0x053c2

00006b5a <.L58>:
    6b5a:	30 41       	ret			

00006b5c <.L60>:
    6b5c:	0c 4e       	mov	r14,	r12	;

00006b5e <.LVL71>:
    6b5e:	5c 06       	rlam	#2,	r12	;
    6b60:	0c 5e       	add	r14,	r12	;
    6b62:	5c 02       	rlam	#1,	r12	;
    6b64:	1c 4c e0 53 	mov	21472(r12),r12	;0x053e0
    6b68:	f8 3f       	jmp	$-14     	;abs 0x6b5a

00006b6a <.L59>:
    6b6a:	0c 4e       	mov	r14,	r12	;

00006b6c <.LVL73>:
    6b6c:	5c 06       	rlam	#2,	r12	;
    6b6e:	0c 5e       	add	r14,	r12	;
    6b70:	5c 02       	rlam	#1,	r12	;
    6b72:	1c 4c fe 53 	mov	21502(r12),r12	;0x053fe
    6b76:	f1 3f       	jmp	$-28     	;abs 0x6b5a

00006b78 <_pers_timer_get_nxt_thread>:
    6b78:	5c 0a       	rlam	#3,	r12	;

00006b7a <.LVL75>:
    6b7a:	5c 4c 0a 54 	mov.b	21514(r12),r12	;0x0540a
    6b7e:	30 41       	ret			

00006b80 <_pers_timer_get_nxt_time>:
    6b80:	5c 0a       	rlam	#3,	r12	;

00006b82 <.LVL77>:
    6b82:	1c 4c 0c 54 	mov	21516(r12),r12	;0x0540c
    6b86:	30 41       	ret			

00006b88 <udivmodsi4>:
    6b88:	4a 15       	pushm	#5,	r10	;16-bit words

00006b8a <.LCFI0>:
    6b8a:	0a 4c       	mov	r12,	r10	;
    6b8c:	0b 4d       	mov	r13,	r11	;

00006b8e <.LVL1>:
    6b8e:	7c 40 21 00 	mov.b	#33,	r12	;#0x0021

00006b92 <.LVL2>:
    6b92:	58 43       	mov.b	#1,	r8	;r3 As==01
    6b94:	49 43       	clr.b	r9		;

00006b96 <.L2>:
    6b96:	0f 9b       	cmp	r11,	r15	;
    6b98:	04 28       	jnc	$+10     	;abs 0x6ba2
    6b9a:	0b 9f       	cmp	r15,	r11	;
    6b9c:	07 20       	jnz	$+16     	;abs 0x6bac
    6b9e:	0e 9a       	cmp	r10,	r14	;
    6ba0:	05 2c       	jc	$+12     	;abs 0x6bac

00006ba2 <.L15>:
    6ba2:	3c 53       	add	#-1,	r12	;r3 As==11

00006ba4 <.Loc.38.1>:
    6ba4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ba6:	2d 24       	jz	$+92     	;abs 0x6c02

00006ba8 <.Loc.38.1>:
    6ba8:	0f 93       	cmp	#0,	r15	;r3 As==00
    6baa:	0d 34       	jge	$+28     	;abs 0x6bc6

00006bac <.L13>:
    6bac:	4c 43       	clr.b	r12		;
    6bae:	4d 43       	clr.b	r13		;

00006bb0 <L0^A>:
    6bb0:	07 48       	mov	r8,	r7	;
    6bb2:	07 d9       	bis	r9,	r7	;
    6bb4:	07 93       	cmp	#0,	r7	;r3 As==00
    6bb6:	14 20       	jnz	$+42     	;abs 0x6be0

00006bb8 <.L5>:
    6bb8:	81 93 0c 00 	cmp	#0,	12(r1)	;r3 As==00, 0x000c
    6bbc:	02 24       	jz	$+6      	;abs 0x6bc2
    6bbe:	0c 4a       	mov	r10,	r12	;
    6bc0:	0d 4b       	mov	r11,	r13	;

00006bc2 <.L1>:
    6bc2:	46 17       	popm	#5,	r10	;16-bit words

00006bc4 <.LCFI1>:
    6bc4:	30 41       	ret			

00006bc6 <.L6>:
    6bc6:	06 4e       	mov	r14,	r6	;
    6bc8:	07 4f       	mov	r15,	r7	;
    6bca:	06 5e       	add	r14,	r6	;
    6bcc:	07 6f       	addc	r15,	r7	;
    6bce:	0e 46       	mov	r6,	r14	;

00006bd0 <.LVL7>:
    6bd0:	0f 47       	mov	r7,	r15	;

00006bd2 <.LVL8>:
    6bd2:	06 48       	mov	r8,	r6	;
    6bd4:	07 49       	mov	r9,	r7	;
    6bd6:	06 58       	add	r8,	r6	;
    6bd8:	07 69       	addc	r9,	r7	;
    6bda:	08 46       	mov	r6,	r8	;

00006bdc <.LVL9>:
    6bdc:	09 47       	mov	r7,	r9	;

00006bde <.LVL10>:
    6bde:	db 3f       	jmp	$-72     	;abs 0x6b96

00006be0 <.L11>:
    6be0:	0b 9f       	cmp	r15,	r11	;
    6be2:	08 28       	jnc	$+18     	;abs 0x6bf4
    6be4:	0f 9b       	cmp	r11,	r15	;
    6be6:	02 20       	jnz	$+6      	;abs 0x6bec
    6be8:	0a 9e       	cmp	r14,	r10	;
    6bea:	04 28       	jnc	$+10     	;abs 0x6bf4

00006bec <.L16>:
    6bec:	0a 8e       	sub	r14,	r10	;
    6bee:	0b 7f       	subc	r15,	r11	;

00006bf0 <.Loc.48.1>:
    6bf0:	0c d8       	bis	r8,	r12	;

00006bf2 <.LVL13>:
    6bf2:	0d d9       	bis	r9,	r13	;

00006bf4 <.L9>:
    6bf4:	12 c3       	clrc			
    6bf6:	09 10       	rrc	r9		;
    6bf8:	08 10       	rrc	r8		;

00006bfa <.Loc.51.1>:
    6bfa:	12 c3       	clrc			
    6bfc:	0f 10       	rrc	r15		;
    6bfe:	0e 10       	rrc	r14		;
    6c00:	d7 3f       	jmp	$-80     	;abs 0x6bb0

00006c02 <.L14>:
    6c02:	4c 43       	clr.b	r12		;
    6c04:	4d 43       	clr.b	r13		;
    6c06:	d8 3f       	jmp	$-78     	;abs 0x6bb8

00006c08 <__mspabi_divli>:
    6c08:	2a 15       	pushm	#3,	r10	;16-bit words

00006c0a <.LCFI3>:
    6c0a:	21 83       	decd	r1		;

00006c0c <.LCFI4>:
    6c0c:	4a 43       	clr.b	r10		;

00006c0e <L0^A>:
    6c0e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c10:	07 34       	jge	$+16     	;abs 0x6c20

00006c12 <.Loc.66.1>:
    6c12:	48 43       	clr.b	r8		;
    6c14:	49 43       	clr.b	r9		;
    6c16:	08 8c       	sub	r12,	r8	;
    6c18:	09 7d       	subc	r13,	r9	;
    6c1a:	0c 48       	mov	r8,	r12	;

00006c1c <.LVL20>:
    6c1c:	0d 49       	mov	r9,	r13	;

00006c1e <.LVL21>:
    6c1e:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006c20 <.L21>:
    6c20:	0f 93       	cmp	#0,	r15	;r3 As==00
    6c22:	07 34       	jge	$+16     	;abs 0x6c32

00006c24 <.Loc.72.1>:
    6c24:	48 43       	clr.b	r8		;
    6c26:	49 43       	clr.b	r9		;
    6c28:	08 8e       	sub	r14,	r8	;
    6c2a:	09 7f       	subc	r15,	r9	;
    6c2c:	0e 48       	mov	r8,	r14	;

00006c2e <.LVL23>:
    6c2e:	0f 49       	mov	r9,	r15	;

00006c30 <.LVL24>:
    6c30:	1a e3       	xor	#1,	r10	;r3 As==01

00006c32 <.L23>:
    6c32:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
    6c36:	b0 12 88 6b 	call	#27528		;#0x6b88

00006c3a <.LVL26>:
    6c3a:	0a 93       	cmp	#0,	r10	;r3 As==00
    6c3c:	06 24       	jz	$+14     	;abs 0x6c4a

00006c3e <.LVL27>:
    6c3e:	49 43       	clr.b	r9		;
    6c40:	4a 43       	clr.b	r10		;
    6c42:	09 8c       	sub	r12,	r9	;
    6c44:	0a 7d       	subc	r13,	r10	;
    6c46:	0c 49       	mov	r9,	r12	;

00006c48 <.LVL28>:
    6c48:	0d 4a       	mov	r10,	r13	;

00006c4a <.L20>:
    6c4a:	21 53       	incd	r1		;

00006c4c <.LCFI5>:
    6c4c:	28 17       	popm	#3,	r10	;16-bit words

00006c4e <.LCFI6>:
    6c4e:	30 41       	ret			

00006c50 <__mspabi_remli>:
    6c50:	4a 15       	pushm	#5,	r10	;16-bit words

00006c52 <.LCFI7>:
    6c52:	21 83       	decd	r1		;

00006c54 <.LCFI8>:
    6c54:	08 4c       	mov	r12,	r8	;
    6c56:	09 4d       	mov	r13,	r9	;
    6c58:	0a 4e       	mov	r14,	r10	;
    6c5a:	06 4f       	mov	r15,	r6	;

00006c5c <.LVL31>:
    6c5c:	47 43       	clr.b	r7		;

00006c5e <.Loc.90.1>:
    6c5e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c60:	07 34       	jge	$+16     	;abs 0x6c70

00006c62 <.Loc.92.1>:
    6c62:	4c 43       	clr.b	r12		;

00006c64 <.LVL32>:
    6c64:	4d 43       	clr.b	r13		;
    6c66:	0c 88       	sub	r8,	r12	;
    6c68:	0d 79       	subc	r9,	r13	;
    6c6a:	08 4c       	mov	r12,	r8	;
    6c6c:	09 4d       	mov	r13,	r9	;

00006c6e <.LVL33>:
    6c6e:	57 43       	mov.b	#1,	r7	;r3 As==01

00006c70 <.L31>:
    6c70:	0c 4a       	mov	r10,	r12	;
    6c72:	0d 46       	mov	r6,	r13	;
    6c74:	7e 40 1f 00 	mov.b	#31,	r14	;#0x001f
    6c78:	b0 12 b0 6c 	call	#27824		;#0x6cb0
    6c7c:	0e 4c       	mov	r12,	r14	;
    6c7e:	0e ea       	xor	r10,	r14	;
    6c80:	0f 4d       	mov	r13,	r15	;
    6c82:	0f e6       	xor	r6,	r15	;
    6c84:	91 43 00 00 	mov	#1,	0(r1)	;r3 As==01
    6c88:	0e 8c       	sub	r12,	r14	;
    6c8a:	0f 7d       	subc	r13,	r15	;
    6c8c:	0c 48       	mov	r8,	r12	;
    6c8e:	0d 49       	mov	r9,	r13	;
    6c90:	b0 12 88 6b 	call	#27528		;#0x6b88

00006c94 <.LVL36>:
    6c94:	07 93       	cmp	#0,	r7	;r3 As==00
    6c96:	06 24       	jz	$+14     	;abs 0x6ca4

00006c98 <.LVL37>:
    6c98:	4e 43       	clr.b	r14		;
    6c9a:	4f 43       	clr.b	r15		;
    6c9c:	0e 8c       	sub	r12,	r14	;
    6c9e:	0f 7d       	subc	r13,	r15	;
    6ca0:	0c 4e       	mov	r14,	r12	;

00006ca2 <.LVL38>:
    6ca2:	0d 4f       	mov	r15,	r13	;

00006ca4 <.L30>:
    6ca4:	21 53       	incd	r1		;

00006ca6 <.LCFI9>:
    6ca6:	46 17       	popm	#5,	r10	;16-bit words

00006ca8 <.LCFI10>:
    6ca8:	30 41       	ret			

00006caa <L0^A>:
    6caa:	3e 53       	add	#-1,	r14	;r3 As==11
    6cac:	0d 11       	rra	r13		;
    6cae:	0c 10       	rrc	r12		;

00006cb0 <__mspabi_sral>:
    6cb0:	0e 93       	cmp	#0,	r14	;r3 As==00
    6cb2:	fb 23       	jnz	$-8      	;abs 0x6caa
    6cb4:	30 41       	ret			

00006cb6 <__mspabi_srlll>:
    6cb6:	0f 4b       	mov	r11,	r15	;
    6cb8:	0b 4c       	mov	r12,	r11	;
    6cba:	0e 4a       	mov	r10,	r14	;
    6cbc:	0d 49       	mov	r9,	r13	;
    6cbe:	0c 48       	mov	r8,	r12	;
    6cc0:	0b 93       	cmp	#0,	r11	;r3 As==00
    6cc2:	01 20       	jnz	$+4      	;abs 0x6cc6
    6cc4:	30 41       	ret			

00006cc6 <.L1^B4>:
    6cc6:	12 c3       	clrc			
    6cc8:	0f 10       	rrc	r15		;
    6cca:	0e 10       	rrc	r14		;
    6ccc:	0d 10       	rrc	r13		;
    6cce:	0c 10       	rrc	r12		;
    6cd0:	3b 53       	add	#-1,	r11	;r3 As==11
    6cd2:	f9 23       	jnz	$-12     	;abs 0x6cc6
    6cd4:	30 41       	ret			

00006cd6 <__mulhi2>:
    6cd6:	02 12       	push	r2		;
    6cd8:	32 c2       	dint			
    6cda:	03 43       	nop			
    6cdc:	82 4c c0 04 	mov	r12,	&0x04c0	;
    6ce0:	82 4d c8 04 	mov	r13,	&0x04c8	;
    6ce4:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6ce8:	00 13       	reti			

00006cea <__umulhisi2>:
    6cea:	02 12       	push	r2		;
    6cec:	32 c2       	dint			
    6cee:	03 43       	nop			
    6cf0:	82 4c c0 04 	mov	r12,	&0x04c0	;
    6cf4:	82 4d c8 04 	mov	r13,	&0x04c8	;
    6cf8:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6cfc:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    6d00:	00 13       	reti			

00006d02 <__mulsi2>:
    6d02:	02 12       	push	r2		;
    6d04:	32 c2       	dint			
    6d06:	03 43       	nop			
    6d08:	82 4c d0 04 	mov	r12,	&0x04d0	;
    6d0c:	82 4d d2 04 	mov	r13,	&0x04d2	;
    6d10:	82 4e e0 04 	mov	r14,	&0x04e0	;
    6d14:	82 4f e2 04 	mov	r15,	&0x04e2	;
    6d18:	1c 42 e4 04 	mov	&0x04e4,r12	;0x04e4
    6d1c:	1d 42 e6 04 	mov	&0x04e6,r13	;0x04e6
    6d20:	00 13       	reti			

00006d22 <__muldi3>:
    6d22:	02 12       	push	r2		;
    6d24:	32 c2       	dint			
    6d26:	03 43       	nop			
    6d28:	4a 15       	pushm	#5,	r10	;16-bit words
    6d2a:	82 48 d0 04 	mov	r8,	&0x04d0	;
    6d2e:	82 49 d2 04 	mov	r9,	&0x04d2	;
    6d32:	82 4e e0 04 	mov	r14,	&0x04e0	;
    6d36:	82 4f e2 04 	mov	r15,	&0x04e2	;
    6d3a:	16 42 e4 04 	mov	&0x04e4,r6	;0x04e4
    6d3e:	17 42 e6 04 	mov	&0x04e6,r7	;0x04e6
    6d42:	82 4a d0 04 	mov	r10,	&0x04d0	;
    6d46:	82 4b d2 04 	mov	r11,	&0x04d2	;
    6d4a:	82 4c e0 04 	mov	r12,	&0x04e0	;
    6d4e:	82 4d e2 04 	mov	r13,	&0x04e2	;
    6d52:	16 52 e4 04 	add	&0x04e4,r6	;0x04e4
    6d56:	17 62 e6 04 	addc	&0x04e6,r7	;0x04e6
    6d5a:	82 48 d0 04 	mov	r8,	&0x04d0	;
    6d5e:	82 49 d2 04 	mov	r9,	&0x04d2	;
    6d62:	82 4c e0 04 	mov	r12,	&0x04e0	;
    6d66:	82 4d e2 04 	mov	r13,	&0x04e2	;
    6d6a:	1c 42 e4 04 	mov	&0x04e4,r12	;0x04e4
    6d6e:	1d 42 e6 04 	mov	&0x04e6,r13	;0x04e6
    6d72:	1e 42 e8 04 	mov	&0x04e8,r14	;0x04e8
    6d76:	1f 42 ea 04 	mov	&0x04ea,r15	;0x04ea
    6d7a:	0e 56       	add	r6,	r14	;
    6d7c:	0f 67       	addc	r7,	r15	;
    6d7e:	46 17       	popm	#5,	r10	;16-bit words
    6d80:	00 13       	reti			

00006d82 <memcpy>:
    6d82:	0f 4c       	mov	r12,	r15	;
    6d84:	0e 5d       	add	r13,	r14	;

00006d86 <.L2>:
    6d86:	0d 9e       	cmp	r14,	r13	;
    6d88:	01 20       	jnz	$+4      	;abs 0x6d8c

00006d8a <.Loc.111.1>:
    6d8a:	30 41       	ret			

00006d8c <.L3>:
    6d8c:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

00006d90 <.LVL4>:
    6d90:	1f 53       	inc	r15		;
    6d92:	f9 3f       	jmp	$-12     	;abs 0x6d86

00006d94 <_exit>:
    6d94:	ff 3f       	jmp	$+0      	;abs 0x6d94

00006d96 <memmove>:
    6d96:	1a 15       	pushm	#2,	r10	;16-bit words

00006d98 <L0^A>:
    6d98:	0f 4d       	mov	r13,	r15	;
    6d9a:	0f 5e       	add	r14,	r15	;

00006d9c <.Loc.69.1>:
    6d9c:	0d 9c       	cmp	r12,	r13	;
    6d9e:	02 2c       	jc	$+6      	;abs 0x6da4

00006da0 <.Loc.69.1>:
    6da0:	0c 9f       	cmp	r15,	r12	;
    6da2:	07 28       	jnc	$+16     	;abs 0x6db2

00006da4 <.L2>:
    6da4:	0e 4c       	mov	r12,	r14	;

00006da6 <.L4>:
    6da6:	0d 9f       	cmp	r15,	r13	;
    6da8:	0a 24       	jz	$+22     	;abs 0x6dbe

00006daa <.LVL3>:
    6daa:	fe 4d 00 00 	mov.b	@r13+,	0(r14)	;

00006dae <.LVL4>:
    6dae:	1e 53       	inc	r14		;
    6db0:	fa 3f       	jmp	$-10     	;abs 0x6da6

00006db2 <.L3>:
    6db2:	09 4e       	mov	r14,	r9	;
    6db4:	39 e3       	inv	r9		;

00006db6 <.Loc.74.1>:
    6db6:	4d 43       	clr.b	r13		;

00006db8 <.L5>:
    6db8:	3d 53       	add	#-1,	r13	;r3 As==11

00006dba <.LVL7>:
    6dba:	09 9d       	cmp	r13,	r9	;
    6dbc:	02 20       	jnz	$+6      	;abs 0x6dc2

00006dbe <.L9>:
    6dbe:	19 17       	popm	#2,	r10	;16-bit words

00006dc0 <.LCFI1>:
    6dc0:	30 41       	ret			

00006dc2 <.L6>:
    6dc2:	0b 4e       	mov	r14,	r11	;
    6dc4:	0b 5d       	add	r13,	r11	;
    6dc6:	0b 5c       	add	r12,	r11	;
    6dc8:	0a 4f       	mov	r15,	r10	;
    6dca:	0a 5d       	add	r13,	r10	;

00006dcc <.LVL10>:
    6dcc:	eb 4a 00 00 	mov.b	@r10,	0(r11)	;
    6dd0:	f3 3f       	jmp	$-24     	;abs 0x6db8

00006dd2 <memset>:
    6dd2:	0e 5c       	add	r12,	r14	;

00006dd4 <.LVL2>:
    6dd4:	0f 4c       	mov	r12,	r15	;

00006dd6 <L0^A>:
    6dd6:	0f 9e       	cmp	r14,	r15	;
    6dd8:	01 20       	jnz	$+4      	;abs 0x6ddc

00006dda <.Loc.104.1>:
    6dda:	30 41       	ret			

00006ddc <.L3>:
    6ddc:	1f 53       	inc	r15		;

00006dde <.LVL4>:
    6dde:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    6de2:	f9 3f       	jmp	$-12     	;abs 0x6dd6
