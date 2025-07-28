
bin/rsa_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00005504 <__crt0_start>:
    5504:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005508 <__crt0_init_bss>:
    5508:	3c 40 02 1c 	mov	#7170,	r12	;#0x1c02

0000550c <.Loc.76.1>:
    550c:	0d 43       	clr	r13		;

0000550e <.Loc.77.1>:
    550e:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00005512 <.Loc.81.1>:
    5512:	b0 12 fe 7d 	call	#32254		;#0x7dfe

00005516 <__crt0_movedata>:
    5516:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

0000551a <.Loc.116.1>:
    551a:	3d 40 fe 54 	mov	#21758,	r13	;#0x54fe

0000551e <.Loc.119.1>:
    551e:	0d 9c       	cmp	r12,	r13	;

00005520 <.Loc.120.1>:
    5520:	04 24       	jz	$+10     	;abs 0x552a

00005522 <.Loc.122.1>:
    5522:	3e 40 02 00 	mov	#2,	r14	;

00005526 <.Loc.124.1>:
    5526:	b0 12 c2 7d 	call	#32194		;#0x7dc2

0000552a <__crt0_run_init_array>:
    552a:	34 40 0e 45 	mov	#17678,	r4	;#0x450e

0000552e <.Loc.189.1>:
    552e:	35 40 16 45 	mov	#17686,	r5	;#0x4516

00005532 <.Loc.190.1>:
    5532:	26 43       	mov	#2,	r6	;r3 As==10

00005534 <.Loc.191.1>:
    5534:	b0 12 42 55 	call	#21826		;#0x5542

00005538 <__crt0_call_main>:
    5538:	0c 43       	clr	r12		;

0000553a <.Loc.254.1>:
    553a:	b0 12 48 5c 	call	#23624		;#0x5c48

0000553e <__crt0_call_exit>:
    553e:	b0 12 c0 7d 	call	#32192		;#0x7dc0

00005542 <__crt0_run_array>:
    5542:	05 94       	cmp	r4,	r5	;

00005544 <.Loc.294.1>:
    5544:	04 24       	jz	$+10     	;abs 0x554e

00005546 <.Loc.295.1>:
    5546:	27 44       	mov	@r4,	r7	;

00005548 <.Loc.296.1>:
    5548:	04 56       	add	r6,	r4	;

0000554a <.Loc.297.1>:
    554a:	87 12       	call	r7		;

0000554c <.Loc.298.1>:
    554c:	fa 3f       	jmp	$-10     	;abs 0x5542

0000554e <_msp430_run_done>:
    554e:	30 41       	ret			

00005550 <encrypt_print>:
    5550:	
00005552 <L0^A>:
    5552:	00 59       	add	r9,	r0	;
    5554:	30 41       	ret			

00005556 <ce_1>:
    5556:	b0 12 ba 5f 	call	#24506		;#0x5fba
    555a:	0d 4c       	mov	r12,	r13	;

0000555c <.Loc.95.1>:
    555c:	5c 02       	rlam	#1,	r12	;
    555e:	0c 5d       	add	r13,	r12	;
    5560:	5c 0a       	rlam	#3,	r12	;
    5562:	0c 5d       	add	r13,	r12	;
    5564:	5c 02       	rlam	#1,	r12	;
    5566:	1d 4c 84 45 	mov	17796(r12),r13	;0x04584
    556a:	3c 50 78 45 	add	#17784,	r12	;#0x4578

0000556e <.Loc.95.1>:
    556e:	2f 4d       	mov	@r13,	r15	;
    5570:	1f 53       	inc	r15		;
    5572:	1e 4d 02 00 	mov	2(r13),	r14	;
    5576:	0e 63       	adc	r14		;
    5578:	8d 4f 00 00 	mov	r15,	0(r13)	;
    557c:	8d 4e 02 00 	mov	r14,	2(r13)	;

00005580 <.Loc.97.1>:
    5580:	1c 4c 06 00 	mov	6(r12),	r12	;

00005584 <.Loc.97.1>:
    5584:	1e 9c 02 00 	cmp	2(r12),	r14	;
    5588:	08 38       	jl	$+18     	;abs 0x559a
    558a:	8c 9e 02 00 	cmp	r14,	2(r12)	;
    558e:	03 24       	jz	$+8      	;abs 0x5596

00005590 <.L6>:
    5590:	3c 40 6e 57 	mov	#22382,	r12	;#0x576e

00005594 <.Loc.105.1>:
    5594:	30 41       	ret			

00005596 <.L8>:
    5596:	2f 9c       	cmp	@r12,	r15	;
    5598:	fb 2f       	jc	$-8      	;abs 0x5590

0000559a <.L7>:
    559a:	3c 40 a0 55 	mov	#21920,	r12	;#0x55a0

0000559e <.Loc.105.1>:
    559e:	30 41       	ret			

000055a0 <ce_2>:
    55a0:	b0 12 ba 5f 	call	#24506		;#0x5fba
    55a4:	0d 4c       	mov	r12,	r13	;

000055a6 <.Loc.110.1>:
    55a6:	5c 02       	rlam	#1,	r12	;
    55a8:	0c 5d       	add	r13,	r12	;
    55aa:	5c 0a       	rlam	#3,	r12	;
    55ac:	0c 5d       	add	r13,	r12	;
    55ae:	5c 02       	rlam	#1,	r12	;
    55b0:	1d 4c 7e 45 	mov	17790(r12),r13	;0x0457e
    55b4:	3c 50 78 45 	add	#17784,	r12	;#0x4578

000055b8 <.Loc.110.1>:
    55b8:	1c 4c 0c 00 	mov	12(r12),r12	;0x0000c

000055bc <.Loc.110.1>:
    55bc:	2e 4c       	mov	@r12,	r14	;
    55be:	1f 4c 02 00 	mov	2(r12),	r15	;
    55c2:	2c 4d       	mov	@r13,	r12	;
    55c4:	1d 4d 02 00 	mov	2(r13),	r13	;
    55c8:	b0 12 a6 7c 	call	#31910		;#0x7ca6

000055cc <.Loc.110.1>:
    55cc:	0c dd       	bis	r13,	r12	;
    55ce:	0c 93       	cmp	#0,	r12	;r3 As==00
    55d0:	03 24       	jz	$+8      	;abs 0x55d8

000055d2 <.Loc.116.1>:
    55d2:	3c 40 18 5b 	mov	#23320,	r12	;#0x5b18

000055d6 <.Loc.118.1>:
    55d6:	30 41       	ret			

000055d8 <.L12>:
    55d8:	3c 40 56 55 	mov	#21846,	r12	;#0x5556

000055dc <.Loc.118.1>:
    55dc:	30 41       	ret			

000055de <ce_3>:
    55de:	0a 15       	pushm	#1,	r10	;16-bit words

000055e0 <.LCFI0>:
    55e0:	b0 12 ba 5f 	call	#24506		;#0x5fba

000055e4 <.LVL9>:
    55e4:	3f 40 78 45 	mov	#17784,	r15	;#0x4578
    55e8:	0e 4c       	mov	r12,	r14	;
    55ea:	5e 02       	rlam	#1,	r14	;
    55ec:	0d 4e       	mov	r14,	r13	;
    55ee:	0d 5c       	add	r12,	r13	;
    55f0:	5d 0a       	rlam	#3,	r13	;
    55f2:	0d 5c       	add	r12,	r13	;
    55f4:	5d 02       	rlam	#1,	r13	;
    55f6:	0d 5f       	add	r15,	r13	;
    55f8:	1a 4d 0e 00 	mov	14(r13),r10	;0x0000e

000055fc <.Loc.143.1>:
    55fc:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    5600:	2d 20       	jnz	$+92     	;abs 0x565c
    5602:	8a 93 02 00 	cmp	#0,	2(r10)	;r3 As==00
    5606:	2a 20       	jnz	$+86     	;abs 0x565c

00005608 <.Loc.142.1>:
    5608:	1a 4d 0c 00 	mov	12(r13),r10	;0x0000c
    560c:	2b 4a       	mov	@r10,	r11	;
    560e:	1a 4a 02 00 	mov	2(r10),	r10	;

00005612 <.Loc.143.1>:
    5612:	2d 4d       	mov	@r13,	r13	;

00005614 <.Loc.143.1>:
    5614:	8d 9b 00 00 	cmp	r11,	0(r13)	;
    5618:	25 24       	jz	$+76     	;abs 0x5664

0000561a <.L20>:
    561a:	0d 4e       	mov	r14,	r13	;
    561c:	0d 5c       	add	r12,	r13	;
    561e:	5d 0a       	rlam	#3,	r13	;
    5620:	0d 5c       	add	r12,	r13	;
    5622:	5d 02       	rlam	#1,	r13	;
    5624:	1d 4d 7a 45 	mov	17786(r13),r13	;0x0457a

00005628 <.Loc.143.1>:
    5628:	8d 9b 00 00 	cmp	r11,	0(r13)	;
    562c:	14 24       	jz	$+42     	;abs 0x5656

0000562e <.L21>:
    562e:	0e 5c       	add	r12,	r14	;
    5630:	5e 0a       	rlam	#3,	r14	;
    5632:	0c 5e       	add	r14,	r12	;

00005634 <.LVL10>:
    5634:	5c 02       	rlam	#1,	r12	;
    5636:	0c 5f       	add	r15,	r12	;

00005638 <.Loc.145.1>:
    5638:	1d 4c 08 00 	mov	8(r12),	r13	;

0000563c <.Loc.145.1>:
    563c:	2d 4d       	mov	@r13,	r13	;
    563e:	5d 06       	rlam	#2,	r13	;
    5640:	1c 4c 10 00 	mov	16(r12),r12	;0x00010
    5644:	0c 5d       	add	r13,	r12	;
    5646:	8c 4b 00 00 	mov	r11,	0(r12)	;
    564a:	8c 4a 02 00 	mov	r10,	2(r12)	;

0000564e <.Loc.152.1>:
    564e:	3c 40 70 56 	mov	#22128,	r12	;#0x5670

00005652 <.Loc.153.1>:
    5652:	0a 17       	popm	#1,	r10	;16-bit words

00005654 <.LCFI1>:
    5654:	30 41       	ret			

00005656 <.L26>:
    5656:	8d 9a 02 00 	cmp	r10,	2(r13)	;
    565a:	e9 23       	jnz	$-44     	;abs 0x562e

0000565c <.L23>:
    565c:	3c 40 56 55 	mov	#21846,	r12	;#0x5556

00005660 <.L27>:
    5660:	0a 17       	popm	#1,	r10	;16-bit words

00005662 <.LCFI3>:
    5662:	30 41       	ret			

00005664 <.L25>:
    5664:	8d 9a 02 00 	cmp	r10,	2(r13)	;
    5668:	d8 23       	jnz	$-78     	;abs 0x561a

0000566a <.Loc.149.1>:
    566a:	3c 40 56 55 	mov	#21846,	r12	;#0x5556

0000566e <.LVL14>:
    566e:	f8 3f       	jmp	$-14     	;abs 0x5660

00005670 <cd>:
    5670:	6a 15       	pushm	#7,	r10	;16-bit words

00005672 <.LCFI5>:
    5672:	21 83       	decd	r1		;

00005674 <.LCFI6>:
    5674:	b0 12 ba 5f 	call	#24506		;#0x5fba
    5678:	0a 4c       	mov	r12,	r10	;

0000567a <.Loc.158.1>:
    567a:	5c 02       	rlam	#1,	r12	;
    567c:	81 4c 00 00 	mov	r12,	0(r1)	;
    5680:	0c 5a       	add	r10,	r12	;
    5682:	5c 0a       	rlam	#3,	r12	;
    5684:	0c 5a       	add	r10,	r12	;
    5686:	5c 02       	rlam	#1,	r12	;
    5688:	1d 4c 7e 45 	mov	17790(r12),r13	;0x0457e
    568c:	26 4d       	mov	@r13,	r6	;
    568e:	17 4d 02 00 	mov	2(r13),	r7	;

00005692 <.Loc.162.1>:
    5692:	1d 4c 80 45 	mov	17792(r12),r13	;0x04580

00005696 <.Loc.161.1>:
    5696:	3c 50 78 45 	add	#17784,	r12	;#0x4578

0000569a <.Loc.162.1>:
    569a:	2d 4d       	mov	@r13,	r13	;
    569c:	5d 06       	rlam	#2,	r13	;
    569e:	1c 4c 10 00 	mov	16(r12),r12	;0x00010
    56a2:	0c 5d       	add	r13,	r12	;
    56a4:	28 4c       	mov	@r12,	r8	;
    56a6:	19 4c 02 00 	mov	2(r12),	r9	;

000056aa <.Loc.158.1>:
    56aa:	54 43       	mov.b	#1,	r4	;r3 As==01
    56ac:	45 43       	clr.b	r5		;

000056ae <.L29>:
    56ae:	04 56       	add	r6,	r4	;

000056b0 <.LVL18>:
    56b0:	05 67       	addc	r7,	r5	;

000056b2 <.LVL19>:
    56b2:	0e 48       	mov	r8,	r14	;
    56b4:	0f 49       	mov	r9,	r15	;
    56b6:	0c 44       	mov	r4,	r12	;
    56b8:	0d 45       	mov	r5,	r13	;
    56ba:	b0 12 a6 7c 	call	#31910		;#0x7ca6

000056be <.Loc.162.1>:
    56be:	0c dd       	bis	r13,	r12	;
    56c0:	0c 93       	cmp	#0,	r12	;r3 As==00
    56c2:	f5 23       	jnz	$-20     	;abs 0x56ae

000056c4 <.Loc.164.1>:
    56c4:	2c 41       	mov	@r1,	r12	;
    56c6:	0c 5a       	add	r10,	r12	;
    56c8:	5c 0a       	rlam	#3,	r12	;
    56ca:	0a 5c       	add	r12,	r10	;
    56cc:	5a 02       	rlam	#1,	r10	;

000056ce <.Loc.165.1>:
    56ce:	1a 4a 86 45 	mov	17798(r10),r10	;0x04586

000056d2 <.Loc.164.1>:
    56d2:	0e 48       	mov	r8,	r14	;
    56d4:	0f 49       	mov	r9,	r15	;
    56d6:	0c 44       	mov	r4,	r12	;
    56d8:	0d 45       	mov	r5,	r13	;
    56da:	b0 12 5e 7c 	call	#31838		;#0x7c5e

000056de <.Loc.165.1>:
    56de:	8a 4c 00 00 	mov	r12,	0(r10)	;
    56e2:	8a 4d 02 00 	mov	r13,	2(r10)	;

000056e6 <.Loc.166.1>:
    56e6:	3c 40 f0 56 	mov	#22256,	r12	;#0x56f0
    56ea:	21 53       	incd	r1		;

000056ec <.LCFI7>:
    56ec:	64 17       	popm	#7,	r10	;16-bit words

000056ee <.LCFI8>:
    56ee:	30 41       	ret			

000056f0 <ce_4>:
    56f0:	0a 15       	pushm	#1,	r10	;16-bit words

000056f2 <.LCFI9>:
    56f2:	b0 12 ba 5f 	call	#24506		;#0x5fba
    56f6:	0d 4c       	mov	r12,	r13	;

000056f8 <.Loc.175.1>:
    56f8:	5c 02       	rlam	#1,	r12	;
    56fa:	0c 5d       	add	r13,	r12	;
    56fc:	5c 0a       	rlam	#3,	r12	;
    56fe:	0c 5d       	add	r13,	r12	;
    5700:	5c 02       	rlam	#1,	r12	;
    5702:	3c 50 78 45 	add	#17784,	r12	;#0x4578
    5706:	1d 4c 0e 00 	mov	14(r12),r13	;0x0000e

0000570a <.Loc.175.1>:
    570a:	2e 4d       	mov	@r13,	r14	;

0000570c <.LVL28>:
    570c:	4a 43       	clr.b	r10		;
    570e:	0a 9e       	cmp	r14,	r10	;
    5710:	28 34       	jge	$+82     	;abs 0x5762

00005712 <.Loc.178.1>:
    5712:	1d 4c 08 00 	mov	8(r12),	r13	;

00005716 <.Loc.178.1>:
    5716:	2f 4d       	mov	@r13,	r15	;
    5718:	5f 06       	rlam	#2,	r15	;
    571a:	1c 4c 12 00 	mov	18(r12),r12	;0x00012
    571e:	0c 5f       	add	r15,	r12	;
    5720:	0a 4e       	mov	r14,	r10	;
    5722:	0b 4e       	mov	r14,	r11	;
    5724:	4e 18 0b 11 	rpt #15 { rrax.w	r11		;
    5728:	8c 4a 00 00 	mov	r10,	0(r12)	;
    572c:	8c 4b 02 00 	mov	r11,	2(r12)	;

00005730 <.Loc.179.1>:
    5730:	2e 4d       	mov	@r13,	r14	;

00005732 <.LVL29>:
    5732:	1e 53       	inc	r14		;
    5734:	1c 4d 02 00 	mov	2(r13),	r12	;
    5738:	0c 63       	adc	r12		;
    573a:	8d 4e 00 00 	mov	r14,	0(r13)	;
    573e:	8d 4c 02 00 	mov	r12,	2(r13)	;

00005742 <.L33>:
    5742:	4b 43       	clr.b	r11		;
    5744:	0b 9c       	cmp	r12,	r11	;
    5746:	09 38       	jl	$+20     	;abs 0x575a
    5748:	0c 93       	cmp	#0,	r12	;r3 As==00
    574a:	04 24       	jz	$+10     	;abs 0x5754

0000574c <.L36>:
    574c:	3c 40 56 55 	mov	#21846,	r12	;#0x5556

00005750 <.Loc.190.1>:
    5750:	0a 17       	popm	#1,	r10	;16-bit words

00005752 <.LCFI10>:
    5752:	30 41       	ret			

00005754 <.L39>:
    5754:	7c 42       	mov.b	#8,	r12	;r2 As==11
    5756:	0c 9e       	cmp	r14,	r12	;
    5758:	f9 2f       	jc	$-12     	;abs 0x574c

0000575a <.L37>:
    575a:	3c 40 6e 57 	mov	#22382,	r12	;#0x576e

0000575e <.Loc.190.1>:
    575e:	0a 17       	popm	#1,	r10	;16-bit words

00005760 <.LCFI12>:
    5760:	30 41       	ret			

00005762 <.L38>:
    5762:	1c 4c 08 00 	mov	8(r12),	r12	;
    5766:	2e 4c       	mov	@r12,	r14	;

00005768 <.LVL32>:
    5768:	1c 4c 02 00 	mov	2(r12),	r12	;
    576c:	ea 3f       	jmp	$-42     	;abs 0x5742

0000576e <encrypt_init>:
    576e:	0a 15       	pushm	#1,	r10	;16-bit words

00005770 <.LCFI14>:
    5770:	b0 12 ba 5f 	call	#24506		;#0x5fba
    5774:	0d 4c       	mov	r12,	r13	;

00005776 <.LVL34>:
    5776:	5c 02       	rlam	#1,	r12	;

00005778 <.LVL35>:
    5778:	0c 5d       	add	r13,	r12	;
    577a:	5c 0a       	rlam	#3,	r12	;
    577c:	0c 5d       	add	r13,	r12	;
    577e:	5c 02       	rlam	#1,	r12	;

00005780 <.Loc.198.1>:
    5780:	1e 4c 92 45 	mov	17810(r12),r14	;0x04592

00005784 <.Loc.196.1>:
    5784:	1d 4c 9a 45 	mov	17818(r12),r13	;0x0459a

00005788 <.LVL36>:
    5788:	2d 4d       	mov	@r13,	r13	;
    578a:	5d 06       	rlam	#2,	r13	;
    578c:	1d 5c 8c 45 	add	17804(r12),r13	;0x0458c

00005790 <.Loc.198.1>:
    5790:	2a 4d       	mov	@r13,	r10	;
    5792:	1b 4d 02 00 	mov	2(r13),	r11	;
    5796:	3a 50 a0 ff 	add	#-96,	r10	;#0xffa0
    579a:	3b 63       	addc	#-1,	r11	;r3 As==11
    579c:	8e 4a 00 00 	mov	r10,	0(r14)	;
    57a0:	8e 4b 02 00 	mov	r11,	2(r14)	;

000057a4 <.Loc.199.1>:
    57a4:	1d 4c 98 45 	mov	17816(r12),r13	;0x04598
    57a8:	9d 43 00 00 	mov	#1,	0(r13)	;r3 As==01
    57ac:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

000057b0 <.Loc.200.1>:
    57b0:	1d 4c 9c 45 	mov	17820(r12),r13	;0x0459c
    57b4:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00
    57b8:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

000057bc <.Loc.201.1>:
    57bc:	1d 4c 88 45 	mov	17800(r12),r13	;0x04588

000057c0 <.Loc.197.1>:
    57c0:	3c 50 78 45 	add	#17784,	r12	;#0x4578

000057c4 <.LVL37>:
    57c4:	1c 4c 1e 00 	mov	30(r12),r12	;0x0001e
    57c8:	ac 4d 00 00 	mov	@r13,	0(r12)	;

000057cc <.LVL38>:
    57cc:	9c 4d 02 00 	mov	2(r13),	2(r12)	;
    57d0:	02 00 

000057d2 <.Loc.203.1>:
    57d2:	3c 40 da 57 	mov	#22490,	r12	;#0x57da
    57d6:	0a 17       	popm	#1,	r10	;16-bit words

000057d8 <.LCFI15>:
    57d8:	30 41       	ret			

000057da <encrypt_inner_loop>:
    57da:	2a 15       	pushm	#3,	r10	;16-bit words

000057dc <.LCFI16>:
    57dc:	b0 12 ba 5f 	call	#24506		;#0x5fba

000057e0 <.Loc.209.1>:
    57e0:	3f 40 78 45 	mov	#17784,	r15	;#0x4578
    57e4:	0e 4c       	mov	r12,	r14	;
    57e6:	5e 02       	rlam	#1,	r14	;
    57e8:	0d 4e       	mov	r14,	r13	;
    57ea:	0d 5c       	add	r12,	r13	;
    57ec:	5d 0a       	rlam	#3,	r13	;
    57ee:	0d 5c       	add	r12,	r13	;
    57f0:	5d 02       	rlam	#1,	r13	;
    57f2:	0d 5f       	add	r15,	r13	;
    57f4:	1a 4d 24 00 	mov	36(r13),r10	;0x00024

000057f8 <.Loc.210.1>:
    57f8:	1d 4d 1e 00 	mov	30(r13),r13	;0x0001e

000057fc <.Loc.210.1>:
    57fc:	9a 9d 02 00 	cmp	2(r13),	2(r10)	;
    5800:	02 00 
    5802:	0b 38       	jl	$+24     	;abs 0x581a
    5804:	9d 9a 02 00 	cmp	2(r10),	2(r13)	;
    5808:	02 00 
    580a:	04 24       	jz	$+10     	;abs 0x5814

0000580c <.L44>:
    580c:	3c 40 6c 58 	mov	#22636,	r12	;#0x586c

00005810 <.Loc.223.1>:
    5810:	28 17       	popm	#3,	r10	;16-bit words

00005812 <.LCFI17>:
    5812:	30 41       	ret			

00005814 <.L46>:
    5814:	aa 9d 00 00 	cmp	@r13,	0(r10)	;
    5818:	f9 2f       	jc	$-12     	;abs 0x580c

0000581a <.L45>:
    581a:	0e 5c       	add	r12,	r14	;
    581c:	5e 0a       	rlam	#3,	r14	;
    581e:	0c 5e       	add	r14,	r12	;
    5820:	5c 02       	rlam	#1,	r12	;
    5822:	09 4f       	mov	r15,	r9	;
    5824:	09 5c       	add	r12,	r9	;
    5826:	18 49 20 00 	mov	32(r9),	r8	;0x00020

0000582a <.Loc.212.1>:
    582a:	1c 49 1a 00 	mov	26(r9),	r12	;0x0001a

0000582e <.Loc.212.1>:
    582e:	1d 4c 02 00 	mov	2(r12),	r13	;
    5832:	2c 4c       	mov	@r12,	r12	;
    5834:	2e 48       	mov	@r8,	r14	;
    5836:	1f 48 02 00 	mov	2(r8),	r15	;
    583a:	b0 12 40 7d 	call	#32064		;#0x7d40

0000583e <.Loc.213.1>:
    583e:	88 4c 00 00 	mov	r12,	0(r8)	;
    5842:	88 4d 02 00 	mov	r13,	2(r8)	;

00005846 <.Loc.214.1>:
    5846:	1e 49 04 00 	mov	4(r9),	r14	;

0000584a <.Loc.214.1>:
    584a:	1f 4e 02 00 	mov	2(r14),	r15	;
    584e:	2e 4e       	mov	@r14,	r14	;
    5850:	b0 12 a6 7c 	call	#31910		;#0x7ca6

00005854 <.Loc.215.1>:
    5854:	88 4c 00 00 	mov	r12,	0(r8)	;
    5858:	88 4d 02 00 	mov	r13,	2(r8)	;

0000585c <.Loc.216.1>:
    585c:	9a 53 00 00 	inc	0(r10)		;
    5860:	8a 63 02 00 	adc	2(r10)		;

00005864 <.Loc.217.1>:
    5864:	3c 40 da 57 	mov	#22490,	r12	;#0x57da

00005868 <.Loc.223.1>:
    5868:	28 17       	popm	#3,	r10	;16-bit words

0000586a <.LCFI19>:
    586a:	30 41       	ret			

0000586c <encrypt_finish>:
    586c:	0a 15       	pushm	#1,	r10	;16-bit words

0000586e <.LCFI20>:
    586e:	b0 12 ba 5f 	call	#24506		;#0x5fba
    5872:	0d 4c       	mov	r12,	r13	;

00005874 <.Loc.228.1>:
    5874:	5c 02       	rlam	#1,	r12	;
    5876:	0c 5d       	add	r13,	r12	;
    5878:	5c 0a       	rlam	#3,	r12	;
    587a:	0c 5d       	add	r13,	r12	;
    587c:	5c 02       	rlam	#1,	r12	;
    587e:	1e 4c 98 45 	mov	17816(r12),r14	;0x04598

00005882 <.LVL49>:
    5882:	1d 4c 9a 45 	mov	17818(r12),r13	;0x0459a

00005886 <.Loc.230.1>:
    5886:	2f 4d       	mov	@r13,	r15	;
    5888:	5f 06       	rlam	#2,	r15	;
    588a:	1f 5c 8e 45 	add	17806(r12),r15	;0x0458e
    588e:	af 4e 00 00 	mov	@r14,	0(r15)	;

00005892 <.LVL51>:
    5892:	9f 4e 02 00 	mov	2(r14),	2(r15)	;
    5896:	02 00 

00005898 <.Loc.231.1>:
    5898:	2b 4e       	mov	@r14,	r11	;
    589a:	3b 50 60 00 	add	#96,	r11	;#0x0060
    589e:	1f 4e 02 00 	mov	2(r14),	r15	;
    58a2:	0f 63       	adc	r15		;

000058a4 <.LVL52>:
    58a4:	1e 4c 94 45 	mov	17812(r12),r14	;0x04594
    58a8:	8e 4b 00 00 	mov	r11,	0(r14)	;
    58ac:	8e 4f 02 00 	mov	r15,	2(r14)	;

000058b0 <.Loc.233.1>:
    58b0:	1e 4c 90 45 	mov	17808(r12),r14	;0x04590

000058b4 <.Loc.234.1>:
    58b4:	2c 4d       	mov	@r13,	r12	;
    58b6:	5c 06       	rlam	#2,	r12	;
    58b8:	0c 5e       	add	r14,	r12	;
    58ba:	8c 4b 00 00 	mov	r11,	0(r12)	;
    58be:	8c 4f 02 00 	mov	r15,	2(r12)	;

000058c2 <.Loc.236.1>:
    58c2:	2c 4d       	mov	@r13,	r12	;
    58c4:	1f 4d 02 00 	mov	2(r13),	r15	;

000058c8 <.LVL53>:
    58c8:	4a 43       	clr.b	r10		;
    58ca:	0a 9f       	cmp	r15,	r10	;
    58cc:	0f 38       	jl	$+32     	;abs 0x58ec
    58ce:	0f 93       	cmp	#0,	r15	;r3 As==00
    58d0:	0a 24       	jz	$+22     	;abs 0x58e6

000058d2 <.L51>:
    58d2:	1c 53       	inc	r12		;
    58d4:	8d 4c 00 00 	mov	r12,	0(r13)	;
    58d8:	0f 63       	adc	r15		;
    58da:	8d 4f 02 00 	mov	r15,	2(r13)	;

000058de <.Loc.239.1>:
    58de:	3c 40 6e 57 	mov	#22382,	r12	;#0x576e

000058e2 <.Loc.246.1>:
    58e2:	0a 17       	popm	#1,	r10	;16-bit words

000058e4 <.LCFI21>:
    58e4:	30 41       	ret			

000058e6 <.L52>:
    58e6:	6a 42       	mov.b	#4,	r10	;r2 As==10
    58e8:	0a 9c       	cmp	r12,	r10	;
    58ea:	f3 2f       	jc	$-24     	;abs 0x58d2

000058ec <.L48>:
    58ec:	5c 06       	rlam	#2,	r12	;
    58ee:	0c 5e       	add	r14,	r12	;
    58f0:	bc 43 00 00 	mov	#-1,	0(r12)	;r3 As==11
    58f4:	bc 43 02 00 	mov	#-1,	2(r12)	;r3 As==11

000058f8 <.Loc.244.1>:
    58f8:	3c 40 50 55 	mov	#21840,	r12	;#0x5550

000058fc <.Loc.246.1>:
    58fc:	0a 17       	popm	#1,	r10	;16-bit words

000058fe <.LCFI23>:
    58fe:	30 41       	ret			

00005900 <decrypt_init>:
    5900:	b0 12 ba 5f 	call	#24506		;#0x5fba
    5904:	0d 4c       	mov	r12,	r13	;

00005906 <.Loc.256.1>:
    5906:	5c 02       	rlam	#1,	r12	;
    5908:	0c 5d       	add	r13,	r12	;
    590a:	5c 0a       	rlam	#3,	r12	;
    590c:	0c 5d       	add	r13,	r12	;
    590e:	5c 02       	rlam	#1,	r12	;

00005910 <.Loc.257.1>:
    5910:	1d 4c a4 45 	mov	17828(r12),r13	;0x045a4
    5914:	9d 43 00 00 	mov	#1,	0(r13)	;r3 As==01
    5918:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

0000591c <.Loc.258.1>:
    591c:	1d 4c a8 45 	mov	17832(r12),r13	;0x045a8
    5920:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00
    5924:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005928 <.Loc.259.1>:
    5928:	1d 4c 8a 45 	mov	17802(r12),r13	;0x0458a

0000592c <.Loc.257.1>:
    592c:	3c 50 78 45 	add	#17784,	r12	;#0x4578

00005930 <.LVL58>:
    5930:	1c 4c 2a 00 	mov	42(r12),r12	;0x0002a
    5934:	ac 4d 00 00 	mov	@r13,	0(r12)	;

00005938 <.LVL59>:
    5938:	9c 4d 02 00 	mov	2(r13),	2(r12)	;
    593c:	02 00 

0000593e <.Loc.261.1>:
    593e:	3c 40 44 59 	mov	#22852,	r12	;#0x5944
    5942:	30 41       	ret			

00005944 <decrypt_inner_loop>:
    5944:	4a 15       	pushm	#5,	r10	;16-bit words

00005946 <.LCFI24>:
    5946:	b0 12 ba 5f 	call	#24506		;#0x5fba
    594a:	0e 4c       	mov	r12,	r14	;

0000594c <.Loc.267.1>:
    594c:	3b 40 78 45 	mov	#17784,	r11	;#0x4578
    5950:	0f 4c       	mov	r12,	r15	;
    5952:	5f 02       	rlam	#1,	r15	;
    5954:	0d 4f       	mov	r15,	r13	;
    5956:	0d 5c       	add	r12,	r13	;
    5958:	5d 0a       	rlam	#3,	r13	;
    595a:	0d 5c       	add	r12,	r13	;
    595c:	5d 02       	rlam	#1,	r13	;
    595e:	0d 5b       	add	r11,	r13	;

00005960 <.Loc.268.1>:
    5960:	1c 4d 2e 00 	mov	46(r13),r12	;0x0002e

00005964 <.Loc.268.1>:
    5964:	2c 4c       	mov	@r12,	r12	;
    5966:	5c 06       	rlam	#2,	r12	;
    5968:	1c 5d 16 00 	add	22(r13),r12	;0x00016
    596c:	28 4c       	mov	@r12,	r8	;
    596e:	19 4c 02 00 	mov	2(r12),	r9	;

00005972 <.LVL63>:
    5972:	1c 4d 28 00 	mov	40(r13),r12	;0x00028
    5976:	8c 48 00 00 	mov	r8,	0(r12)	;
    597a:	8c 49 02 00 	mov	r9,	2(r12)	;

0000597e <.Loc.271.1>:
    597e:	1a 4d 30 00 	mov	48(r13),r10	;0x00030

00005982 <.Loc.271.1>:
    5982:	1c 4d 2a 00 	mov	42(r13),r12	;0x0002a

00005986 <.Loc.271.1>:
    5986:	9a 9c 02 00 	cmp	2(r12),	2(r10)	;
    598a:	02 00 
    598c:	0b 38       	jl	$+24     	;abs 0x59a4
    598e:	9c 9a 02 00 	cmp	2(r10),	2(r12)	;
    5992:	02 00 
    5994:	04 24       	jz	$+10     	;abs 0x599e

00005996 <.L57>:
    5996:	3c 40 f0 59 	mov	#23024,	r12	;#0x59f0

0000599a <.Loc.284.1>:
    599a:	46 17       	popm	#5,	r10	;16-bit words

0000599c <.LCFI25>:
    599c:	30 41       	ret			

0000599e <.L59>:
    599e:	aa 9c 00 00 	cmp	@r12,	0(r10)	;
    59a2:	f9 2f       	jc	$-12     	;abs 0x5996

000059a4 <.L58>:
    59a4:	0f 5e       	add	r14,	r15	;
    59a6:	5f 0a       	rlam	#3,	r15	;
    59a8:	0e 5f       	add	r15,	r14	;
    59aa:	5e 02       	rlam	#1,	r14	;
    59ac:	07 4b       	mov	r11,	r7	;
    59ae:	07 5e       	add	r14,	r7	;
    59b0:	16 47 2c 00 	mov	44(r7),	r6	;0x0002c

000059b4 <.Loc.273.1>:
    59b4:	0c 48       	mov	r8,	r12	;
    59b6:	0d 49       	mov	r9,	r13	;
    59b8:	2e 46       	mov	@r6,	r14	;
    59ba:	1f 46 02 00 	mov	2(r6),	r15	;
    59be:	b0 12 40 7d 	call	#32064		;#0x7d40

000059c2 <.LVL65>:
    59c2:	86 4c 00 00 	mov	r12,	0(r6)	;
    59c6:	86 4d 02 00 	mov	r13,	2(r6)	;

000059ca <.Loc.275.1>:
    59ca:	1e 47 04 00 	mov	4(r7),	r14	;

000059ce <.Loc.275.1>:
    59ce:	1f 4e 02 00 	mov	2(r14),	r15	;
    59d2:	2e 4e       	mov	@r14,	r14	;
    59d4:	b0 12 a6 7c 	call	#31910		;#0x7ca6

000059d8 <.Loc.276.1>:
    59d8:	86 4c 00 00 	mov	r12,	0(r6)	;
    59dc:	86 4d 02 00 	mov	r13,	2(r6)	;

000059e0 <.Loc.277.1>:
    59e0:	9a 53 00 00 	inc	0(r10)		;
    59e4:	8a 63 02 00 	adc	2(r10)		;

000059e8 <.Loc.278.1>:
    59e8:	3c 40 44 59 	mov	#22852,	r12	;#0x5944

000059ec <.Loc.284.1>:
    59ec:	46 17       	popm	#5,	r10	;16-bit words

000059ee <.LCFI27>:
    59ee:	30 41       	ret			

000059f0 <decrypt_finish>:
    59f0:	b0 12 ba 5f 	call	#24506		;#0x5fba
    59f4:	0d 4c       	mov	r12,	r13	;

000059f6 <.Loc.289.1>:
    59f6:	5c 02       	rlam	#1,	r12	;
    59f8:	0c 5d       	add	r13,	r12	;
    59fa:	5c 0a       	rlam	#3,	r12	;
    59fc:	0c 5d       	add	r13,	r12	;
    59fe:	5c 02       	rlam	#1,	r12	;
    5a00:	1d 4c a4 45 	mov	17828(r12),r13	;0x045a4

00005a04 <.Loc.290.1>:
    5a04:	2b 4d       	mov	@r13,	r11	;
    5a06:	3b 50 60 00 	add	#96,	r11	;#0x0060
    5a0a:	1f 4d 02 00 	mov	2(r13),	r15	;
    5a0e:	0f 63       	adc	r15		;

00005a10 <.LVL71>:
    5a10:	1d 4c 9e 45 	mov	17822(r12),r13	;0x0459e
    5a14:	8d 4b 00 00 	mov	r11,	0(r13)	;
    5a18:	8d 4f 02 00 	mov	r15,	2(r13)	;

00005a1c <.Loc.292.1>:
    5a1c:	1e 4c a6 45 	mov	17830(r12),r14	;0x045a6

00005a20 <.Loc.292.1>:
    5a20:	2d 4e       	mov	@r14,	r13	;
    5a22:	5d 06       	rlam	#2,	r13	;
    5a24:	1d 5c 8c 45 	add	17804(r12),r13	;0x0458c

00005a28 <.Loc.290.1>:
    5a28:	3c 50 78 45 	add	#17784,	r12	;#0x4578

00005a2c <.Loc.292.1>:
    5a2c:	8d 4b 00 00 	mov	r11,	0(r13)	;
    5a30:	8d 4f 02 00 	mov	r15,	2(r13)	;

00005a34 <.Loc.294.1>:
    5a34:	2f 4e       	mov	@r14,	r15	;

00005a36 <.LVL72>:
    5a36:	1b 4e 02 00 	mov	2(r14),	r11	;

00005a3a <.LVL73>:
    5a3a:	0d 4f       	mov	r15,	r13	;

00005a3c <.LVL74>:
    5a3c:	5d 06       	rlam	#2,	r13	;
    5a3e:	1c 4c 18 00 	mov	24(r12),r12	;0x00018
    5a42:	0c 5d       	add	r13,	r12	;

00005a44 <.Loc.294.1>:
    5a44:	bc 93 00 00 	cmp	#-1,	0(r12)	;r3 As==11
    5a48:	09 24       	jz	$+20     	;abs 0x5a5c

00005a4a <.L64>:
    5a4a:	1f 53       	inc	r15		;
    5a4c:	8e 4f 00 00 	mov	r15,	0(r14)	;
    5a50:	0b 63       	adc	r11		;
    5a52:	8e 4b 02 00 	mov	r11,	2(r14)	;

00005a56 <.Loc.297.1>:
    5a56:	3c 40 00 59 	mov	#22784,	r12	;#0x5900

00005a5a <.Loc.303.1>:
    5a5a:	30 41       	ret			

00005a5c <.L66>:
    5a5c:	bc 93 02 00 	cmp	#-1,	2(r12)	;r3 As==11
    5a60:	f4 23       	jnz	$-22     	;abs 0x5a4a

00005a62 <.Loc.301.1>:
    5a62:	3c 40 12 5c 	mov	#23570,	r12	;#0x5c12

00005a66 <.Loc.303.1>:
    5a66:	30 41       	ret			

00005a68 <__ink_entry_task>:
    5a68:	2a 15       	pushm	#3,	r10	;16-bit words

00005a6a <.LCFI28>:
    5a6a:	b0 12 ba 5f 	call	#24506		;#0x5fba

00005a6e <.LVL76>:
    5a6e:	0d 4c       	mov	r12,	r13	;

00005a70 <.Loc.73.1>:
    5a70:	d2 43 dc 45 	mov.b	#1,	&0x45dc	;r3 As==01

00005a74 <.Loc.75.1>:
    5a74:	5c 02       	rlam	#1,	r12	;
    5a76:	0c 5d       	add	r13,	r12	;
    5a78:	5c 0a       	rlam	#3,	r12	;
    5a7a:	0c 5d       	add	r13,	r12	;
    5a7c:	5c 02       	rlam	#1,	r12	;

00005a7e <.Loc.78.1>:
    5a7e:	1d 4c 78 45 	mov	17784(r12),r13	;0x04578
    5a82:	bd 40 07 00 	mov	#7,	0(r13)	;
    5a86:	00 00 
    5a88:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005a8c <.Loc.79.1>:
    5a8c:	1d 4c 7a 45 	mov	17786(r12),r13	;0x0457a
    5a90:	bd 40 11 00 	mov	#17,	0(r13)	;#0x0011
    5a94:	00 00 
    5a96:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005a9a <.Loc.80.1>:
    5a9a:	1d 4c 7c 45 	mov	17788(r12),r13	;0x0457c
    5a9e:	bd 40 77 00 	mov	#119,	0(r13)	;#0x0077
    5aa2:	00 00 
    5aa4:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005aa8 <.Loc.81.1>:
    5aa8:	1d 4c 7e 45 	mov	17790(r12),r13	;0x0457e
    5aac:	bd 40 60 00 	mov	#96,	0(r13)	;#0x0060
    5ab0:	00 00 
    5ab2:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005ab6 <.Loc.82.1>:
    5ab6:	1d 4c 84 45 	mov	17796(r12),r13	;0x04584
    5aba:	9d 43 00 00 	mov	#1,	0(r13)	;r3 As==01
    5abe:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005ac2 <.Loc.83.1>:
    5ac2:	1d 4c 80 45 	mov	17792(r12),r13	;0x04580
    5ac6:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00
    5aca:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005ace <.Loc.84.1>:
    5ace:	1d 4c 86 45 	mov	17798(r12),r13	;0x04586

00005ad2 <.Loc.78.1>:
    5ad2:	3c 50 78 45 	add	#17784,	r12	;#0x4578

00005ad6 <.Loc.84.1>:
    5ad6:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00
    5ada:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00005ade <.LBB2>:
    5ade:	48 43       	clr.b	r8		;

00005ae0 <.Loc.85.1>:
    5ae0:	49 43       	clr.b	r9		;

00005ae2 <.Loc.87.1>:
    5ae2:	0a 4c       	mov	r12,	r10	;

00005ae4 <.L68>:
    5ae4:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    5ae8:	4d 43       	clr.b	r13		;
    5aea:	1c 42 00 1c 	mov	&0x1c00,r12	;0x1c00
    5aee:	0c 59       	add	r9,	r12	;
    5af0:	b0 12 dc 5f 	call	#24540		;#0x5fdc

00005af4 <.Loc.87.1>:
    5af4:	1d 4a 14 00 	mov	20(r10),r13	;0x00014
    5af8:	0d 58       	add	r8,	r13	;

00005afa <.Loc.87.1>:
    5afa:	6e 4c       	mov.b	@r12,	r14	;
    5afc:	0f 43       	clr	r15		;
    5afe:	8d 4e 00 00 	mov	r14,	0(r13)	;
    5b02:	8d 4f 02 00 	mov	r15,	2(r13)	;

00005b06 <.Loc.85.1>:
    5b06:	19 53       	inc	r9		;

00005b08 <.Loc.85.1>:
    5b08:	28 52       	add	#4,	r8	;r2 As==10

00005b0a <.Loc.85.1>:
    5b0a:	39 90 05 00 	cmp	#5,	r9	;
    5b0e:	ea 23       	jnz	$-42     	;abs 0x5ae4

00005b10 <.Loc.89.1>:
    5b10:	3c 40 56 55 	mov	#21846,	r12	;#0x5556
    5b14:	28 17       	popm	#3,	r10	;16-bit words

00005b16 <.LCFI29>:
    5b16:	30 41       	ret			

00005b18 <is_i_prime>:
    5b18:	6a 15       	pushm	#7,	r10	;16-bit words

00005b1a <.LCFI30>:
    5b1a:	31 80 06 00 	sub	#6,	r1	;

00005b1e <.LCFI31>:
    5b1e:	b0 12 ba 5f 	call	#24506		;#0x5fba
    5b22:	07 4c       	mov	r12,	r7	;

00005b24 <.Loc.123.1>:
    5b24:	0a 4c       	mov	r12,	r10	;
    5b26:	5a 02       	rlam	#1,	r10	;
    5b28:	09 4a       	mov	r10,	r9	;
    5b2a:	09 5c       	add	r12,	r9	;
    5b2c:	59 0a       	rlam	#3,	r9	;
    5b2e:	09 5c       	add	r12,	r9	;
    5b30:	59 02       	rlam	#1,	r9	;
    5b32:	1d 49 84 45 	mov	17796(r9),r13	;0x04584

00005b36 <.Loc.124.1>:
    5b36:	2c 4d       	mov	@r13,	r12	;
    5b38:	1e 4d 02 00 	mov	2(r13),	r14	;
    5b3c:	4e 18 0e 11 	rpt #15 { rrax.w	r14		;
    5b40:	1d 4d 02 00 	mov	2(r13),	r13	;
    5b44:	0f 4e       	mov	r14,	r15	;
    5b46:	b0 12 a8 5e 	call	#24232		;#0x5ea8

00005b4a <.LVL87>:
    5b4a:	0d 4c       	mov	r12,	r13	;
    5b4c:	0e 4c       	mov	r12,	r14	;
    5b4e:	4e 18 0e 11 	rpt #15 { rrax.w	r14		;
    5b52:	81 4d 00 00 	mov	r13,	0(r1)	;
    5b56:	81 4e 02 00 	mov	r14,	2(r1)	;
    5b5a:	1d 49 82 45 	mov	17794(r9),r13	;0x04582

00005b5e <.Loc.124.1>:
    5b5e:	39 50 78 45 	add	#17784,	r9	;#0x4578

00005b62 <.Loc.125.1>:
    5b62:	ad 41 00 00 	mov	@r1,	0(r13)	;
    5b66:	9d 41 02 00 	mov	2(r1),	2(r13)	;
    5b6a:	02 00 

00005b6c <.LVL88>:
    5b6c:	4d 43       	clr.b	r13		;
    5b6e:	0d 9e       	cmp	r14,	r13	;
    5b70:	48 34       	jge	$+146    	;abs 0x5c02

00005b72 <.L79>:
    5b72:	0c 4a       	mov	r10,	r12	;
    5b74:	0c 57       	add	r7,	r12	;
    5b76:	5c 0a       	rlam	#3,	r12	;
    5b78:	0c 57       	add	r7,	r12	;
    5b7a:	5c 02       	rlam	#1,	r12	;
    5b7c:	1c 4c 84 45 	mov	17796(r12),r12	;0x04584
    5b80:	26 4c       	mov	@r12,	r6	;
    5b82:	14 4c 02 00 	mov	2(r12),	r4	;

00005b86 <.Loc.128.1>:
    5b86:	16 b3       	bit	#1,	r6	;r3 As==01
    5b88:	28 24       	jz	$+82     	;abs 0x5bda
    5b8a:	78 40 03 00 	mov.b	#3,	r8	;
    5b8e:	49 43       	clr.b	r9		;

00005b90 <.Loc.126.1>:
    5b90:	15 41 02 00 	mov	2(r1),	r5	;
    5b94:	a1 41 04 00 	mov	@r1,	4(r1)	;
    5b98:	0c 3c       	jmp	$+26     	;abs 0x5bb2

00005b9a <.L87>:
    5b9a:	19 91 02 00 	cmp	2(r1),	r9	;
    5b9e:	2d 24       	jz	$+92     	;abs 0x5bfa

00005ba0 <.L77>:
    5ba0:	18 53       	inc	r8		;

00005ba2 <.LVL90>:
    5ba2:	09 63       	adc	r9		;

00005ba4 <.Loc.128.1>:
    5ba4:	0c 46       	mov	r6,	r12	;
    5ba6:	0d 44       	mov	r4,	r13	;
    5ba8:	b0 12 a6 7c 	call	#31910		;#0x7ca6

00005bac <.Loc.128.1>:
    5bac:	0c dd       	bis	r13,	r12	;
    5bae:	0c 93       	cmp	#0,	r12	;r3 As==00
    5bb0:	14 24       	jz	$+42     	;abs 0x5bda

00005bb2 <.L75>:
    5bb2:	0e 48       	mov	r8,	r14	;
    5bb4:	0f 49       	mov	r9,	r15	;

00005bb6 <.Loc.126.1>:
    5bb6:	05 99       	cmp	r9,	r5	;
    5bb8:	f0 37       	jge	$-30     	;abs 0x5b9a

00005bba <.L71>:
    5bba:	0a 57       	add	r7,	r10	;
    5bbc:	5a 0a       	rlam	#3,	r10	;
    5bbe:	07 5a       	add	r10,	r7	;
    5bc0:	57 02       	rlam	#1,	r7	;

00005bc2 <.Loc.134.1>:
    5bc2:	1c 47 86 45 	mov	17798(r7),r12	;0x04586
    5bc6:	9c 43 00 00 	mov	#1,	0(r12)	;r3 As==01
    5bca:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

00005bce <.Loc.136.1>:
    5bce:	3c 40 de 55 	mov	#21982,	r12	;#0x55de

00005bd2 <.Loc.137.1>:
    5bd2:	31 50 06 00 	add	#6,	r1	;

00005bd6 <.LCFI32>:
    5bd6:	64 17       	popm	#7,	r10	;16-bit words

00005bd8 <.LCFI33>:
    5bd8:	30 41       	ret			

00005bda <.L73>:
    5bda:	0a 57       	add	r7,	r10	;
    5bdc:	5a 0a       	rlam	#3,	r10	;
    5bde:	07 5a       	add	r10,	r7	;
    5be0:	57 02       	rlam	#1,	r7	;

00005be2 <.Loc.130.1>:
    5be2:	1c 47 86 45 	mov	17798(r7),r12	;0x04586
    5be6:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00
    5bea:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

00005bee <.Loc.131.1>:
    5bee:	3c 40 56 55 	mov	#21846,	r12	;#0x5556

00005bf2 <.Loc.137.1>:
    5bf2:	31 50 06 00 	add	#6,	r1	;

00005bf6 <.LCFI35>:
    5bf6:	64 17       	popm	#7,	r10	;16-bit words

00005bf8 <.LCFI36>:
    5bf8:	30 41       	ret			

00005bfa <.L86>:
    5bfa:	81 98 04 00 	cmp	r8,	4(r1)	;
    5bfe:	d0 2f       	jc	$-94     	;abs 0x5ba0
    5c00:	dc 3f       	jmp	$-70     	;abs 0x5bba

00005c02 <.L85>:
    5c02:	1d 41 02 00 	mov	2(r1),	r13	;
    5c06:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c08:	d8 23       	jnz	$-78     	;abs 0x5bba
    5c0a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5c0c:	0e 9c       	cmp	r12,	r14	;
    5c0e:	b1 2b       	jnc	$-156    	;abs 0x5b72
    5c10:	d4 3f       	jmp	$-86     	;abs 0x5bba

00005c12 <decrypt_print>:
    5c12:	c2 93 dc 45 	cmp.b	#0,	&0x45dc	;r3 As==00
    5c16:	08 24       	jz	$+18     	;abs 0x5c28

00005c18 <.LBB6>:
    5c18:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    5c1c:	22 02 

00005c1e <.Loc.310.1>:
    5c1e:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5c22:	22 02 

00005c24 <.Loc.311.1>:
    5c24:	c2 43 dc 45 	mov.b	#0,	&0x45dc	;r3 As==00

00005c28 <.L89>:
    5c28:	3c 40 68 5a 	mov	#23144,	r12	;#0x5a68
    5c2c:	30 41       	ret			

00005c2e <__ink_create_thread_15>:
    5c2e:	b0 12 00 60 	call	#24576		;#0x6000
    5c32:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5c34:	01 20       	jnz	$+4      	;abs 0x5c38

00005c36 <.Loc.70.1>:
    5c36:	30 41       	ret			

00005c38 <.L95>:
    5c38:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5c3a:	3d 40 68 5a 	mov	#23144,	r13	;#0x5a68
    5c3e:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5c42:	b0 12 70 60 	call	#24688		;#0x6070

00005c46 <.Loc.70.1>:
    5c46:	30 41       	ret			

00005c48 <main>:
    5c48:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    5c4c:	5c 01 

00005c4e <.Loc.323.1>:
    5c4e:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00005c52 <.Loc.326.1>:
    5c52:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5c56:	22 02 

00005c58 <.Loc.326.1>:
    5c58:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    5c5c:	24 02 

00005c5e <.Loc.326.1>:
    5c5e:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5c62:	22 02 

00005c64 <.Loc.326.1>:
    5c64:	b0 12 dc 65 	call	#26076		;#0x65dc

00005c68 <.Loc.332.1>:
    5c68:	4c 43       	clr.b	r12		;
    5c6a:	30 41       	ret			

00005c6c <__ink_initialize_shared_vars_15>:
    5c6c:	3c 40 78 45 	mov	#17784,	r12	;#0x4578
    5c70:	bc 40 e2 53 	mov	#21474,	0(r12)	;#0x53e2
    5c74:	00 00 

00005c76 <.Loc.335.1>:
    5c76:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5c7a:	3d 50 e2 53 	add	#21474,	r13	;#0x53e2
    5c7e:	8c 4d 32 00 	mov	r13,	50(r12)	; 0x0032

00005c82 <.Loc.335.1>:
    5c82:	bc 40 de 53 	mov	#21470,	2(r12)	;#0x53de
    5c86:	02 00 

00005c88 <.Loc.336.1>:
    5c88:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5c8c:	3d 50 de 53 	add	#21470,	r13	;#0x53de
    5c90:	8c 4d 34 00 	mov	r13,	52(r12)	; 0x0034

00005c94 <.Loc.336.1>:
    5c94:	bc 40 da 53 	mov	#21466,	4(r12)	;#0x53da
    5c98:	04 00 

00005c9a <.Loc.337.1>:
    5c9a:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5c9e:	3d 50 da 53 	add	#21466,	r13	;#0x53da
    5ca2:	8c 4d 36 00 	mov	r13,	54(r12)	; 0x0036

00005ca6 <.Loc.337.1>:
    5ca6:	bc 40 d6 53 	mov	#21462,	6(r12)	;#0x53d6
    5caa:	06 00 

00005cac <.Loc.338.1>:
    5cac:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5cb0:	3d 50 d6 53 	add	#21462,	r13	;#0x53d6
    5cb4:	8c 4d 38 00 	mov	r13,	56(r12)	; 0x0038

00005cb8 <.Loc.338.1>:
    5cb8:	bc 40 d2 53 	mov	#21458,	8(r12)	;#0x53d2
    5cbc:	08 00 

00005cbe <.Loc.339.1>:
    5cbe:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5cc2:	3d 50 d2 53 	add	#21458,	r13	;#0x53d2
    5cc6:	8c 4d 3a 00 	mov	r13,	58(r12)	; 0x003a

00005cca <.Loc.339.1>:
    5cca:	bc 40 ce 53 	mov	#21454,	10(r12)	;#0x53ce, 0x000a
    5cce:	0a 00 

00005cd0 <.Loc.340.1>:
    5cd0:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5cd4:	3d 50 ce 53 	add	#21454,	r13	;#0x53ce
    5cd8:	8c 4d 3c 00 	mov	r13,	60(r12)	; 0x003c

00005cdc <.Loc.340.1>:
    5cdc:	bc 40 ca 53 	mov	#21450,	12(r12)	;#0x53ca, 0x000c
    5ce0:	0c 00 

00005ce2 <.Loc.341.1>:
    5ce2:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5ce6:	3d 50 ca 53 	add	#21450,	r13	;#0x53ca
    5cea:	8c 4d 3e 00 	mov	r13,	62(r12)	; 0x003e

00005cee <.Loc.341.1>:
    5cee:	bc 40 c6 53 	mov	#21446,	14(r12)	;#0x53c6, 0x000e
    5cf2:	0e 00 

00005cf4 <.Loc.342.1>:
    5cf4:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5cf8:	3d 50 c6 53 	add	#21446,	r13	;#0x53c6
    5cfc:	8c 4d 40 00 	mov	r13,	64(r12)	; 0x0040

00005d00 <.Loc.342.1>:
    5d00:	bc 40 9e 53 	mov	#21406,	16(r12)	;#0x539e, 0x0010
    5d04:	10 00 

00005d06 <.Loc.343.1>:
    5d06:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d0a:	3d 50 9e 53 	add	#21406,	r13	;#0x539e
    5d0e:	8c 4d 42 00 	mov	r13,	66(r12)	; 0x0042

00005d12 <.Loc.343.1>:
    5d12:	bc 40 76 53 	mov	#21366,	18(r12)	;#0x5376, 0x0012
    5d16:	12 00 

00005d18 <.Loc.344.1>:
    5d18:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d1c:	3d 50 76 53 	add	#21366,	r13	;#0x5376
    5d20:	8c 4d 44 00 	mov	r13,	68(r12)	; 0x0044

00005d24 <.Loc.344.1>:
    5d24:	bc 40 4e 53 	mov	#21326,	20(r12)	;#0x534e, 0x0014
    5d28:	14 00 

00005d2a <.Loc.345.1>:
    5d2a:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d2e:	3d 50 4e 53 	add	#21326,	r13	;#0x534e
    5d32:	8c 4d 46 00 	mov	r13,	70(r12)	; 0x0046

00005d36 <.Loc.345.1>:
    5d36:	bc 40 26 53 	mov	#21286,	22(r12)	;#0x5326, 0x0016
    5d3a:	16 00 

00005d3c <.Loc.346.1>:
    5d3c:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d40:	3d 50 26 53 	add	#21286,	r13	;#0x5326
    5d44:	8c 4d 48 00 	mov	r13,	72(r12)	; 0x0048

00005d48 <.Loc.346.1>:
    5d48:	bc 40 fe 52 	mov	#21246,	24(r12)	;#0x52fe, 0x0018
    5d4c:	18 00 

00005d4e <.Loc.347.1>:
    5d4e:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d52:	3d 50 fe 52 	add	#21246,	r13	;#0x52fe
    5d56:	8c 4d 4a 00 	mov	r13,	74(r12)	; 0x004a

00005d5a <.Loc.347.1>:
    5d5a:	bc 40 fa 52 	mov	#21242,	26(r12)	;#0x52fa, 0x001a
    5d5e:	1a 00 

00005d60 <.Loc.348.1>:
    5d60:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d64:	3d 50 fa 52 	add	#21242,	r13	;#0x52fa
    5d68:	8c 4d 4c 00 	mov	r13,	76(r12)	; 0x004c

00005d6c <.Loc.348.1>:
    5d6c:	bc 40 f6 52 	mov	#21238,	28(r12)	;#0x52f6, 0x001c
    5d70:	1c 00 

00005d72 <.Loc.349.1>:
    5d72:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d76:	3d 50 f6 52 	add	#21238,	r13	;#0x52f6
    5d7a:	8c 4d 4e 00 	mov	r13,	78(r12)	; 0x004e

00005d7e <.Loc.349.1>:
    5d7e:	bc 40 f2 52 	mov	#21234,	30(r12)	;#0x52f2, 0x001e
    5d82:	1e 00 

00005d84 <.Loc.350.1>:
    5d84:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d88:	3d 50 f2 52 	add	#21234,	r13	;#0x52f2
    5d8c:	8c 4d 50 00 	mov	r13,	80(r12)	; 0x0050

00005d90 <.Loc.350.1>:
    5d90:	bc 40 ee 52 	mov	#21230,	32(r12)	;#0x52ee, 0x0020
    5d94:	20 00 

00005d96 <.Loc.351.1>:
    5d96:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5d9a:	3d 50 ee 52 	add	#21230,	r13	;#0x52ee
    5d9e:	8c 4d 52 00 	mov	r13,	82(r12)	; 0x0052

00005da2 <.Loc.351.1>:
    5da2:	bc 40 ea 52 	mov	#21226,	34(r12)	;#0x52ea, 0x0022
    5da6:	22 00 

00005da8 <.Loc.352.1>:
    5da8:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5dac:	3d 50 ea 52 	add	#21226,	r13	;#0x52ea
    5db0:	8c 4d 54 00 	mov	r13,	84(r12)	; 0x0054

00005db4 <.Loc.352.1>:
    5db4:	bc 40 e6 52 	mov	#21222,	36(r12)	;#0x52e6, 0x0024
    5db8:	24 00 

00005dba <.Loc.353.1>:
    5dba:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5dbe:	3d 50 e6 52 	add	#21222,	r13	;#0x52e6
    5dc2:	8c 4d 56 00 	mov	r13,	86(r12)	; 0x0056

00005dc6 <.Loc.353.1>:
    5dc6:	bc 40 e2 52 	mov	#21218,	38(r12)	;#0x52e2, 0x0026
    5dca:	26 00 

00005dcc <.Loc.354.1>:
    5dcc:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5dd0:	3d 50 e2 52 	add	#21218,	r13	;#0x52e2
    5dd4:	8c 4d 58 00 	mov	r13,	88(r12)	; 0x0058

00005dd8 <.Loc.354.1>:
    5dd8:	bc 40 de 52 	mov	#21214,	40(r12)	;#0x52de, 0x0028
    5ddc:	28 00 

00005dde <.Loc.355.1>:
    5dde:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5de2:	3d 50 de 52 	add	#21214,	r13	;#0x52de
    5de6:	8c 4d 5a 00 	mov	r13,	90(r12)	; 0x005a

00005dea <.Loc.355.1>:
    5dea:	bc 40 da 52 	mov	#21210,	42(r12)	;#0x52da, 0x002a
    5dee:	2a 00 

00005df0 <.Loc.356.1>:
    5df0:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5df4:	3d 50 da 52 	add	#21210,	r13	;#0x52da
    5df8:	8c 4d 5c 00 	mov	r13,	92(r12)	; 0x005c

00005dfc <.Loc.356.1>:
    5dfc:	bc 40 d6 52 	mov	#21206,	44(r12)	;#0x52d6, 0x002c
    5e00:	2c 00 

00005e02 <.Loc.357.1>:
    5e02:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5e06:	3d 50 d6 52 	add	#21206,	r13	;#0x52d6
    5e0a:	8c 4d 5e 00 	mov	r13,	94(r12)	; 0x005e

00005e0e <.Loc.357.1>:
    5e0e:	bc 40 d2 52 	mov	#21202,	46(r12)	;#0x52d2, 0x002e
    5e12:	2e 00 

00005e14 <.Loc.358.1>:
    5e14:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5e18:	3d 50 d2 52 	add	#21202,	r13	;#0x52d2
    5e1c:	8c 4d 60 00 	mov	r13,	96(r12)	; 0x0060

00005e20 <.Loc.358.1>:
    5e20:	bc 40 ce 52 	mov	#21198,	48(r12)	;#0x52ce, 0x0030
    5e24:	30 00 

00005e26 <.Loc.359.1>:
    5e26:	3d 40 18 01 	mov	#280,	r13	;#0x0118
    5e2a:	3d 50 ce 52 	add	#21198,	r13	;#0x52ce
    5e2e:	8c 4d 62 00 	mov	r13,	98(r12)	; 0x0062

00005e32 <.Loc.359.1>:
    5e32:	30 41       	ret			

00005e34 <sqrt16>:
    5e34:	6a 15       	pushm	#7,	r10	;16-bit words

00005e36 <.LCFI0>:
    5e36:	05 4c       	mov	r12,	r5	;
    5e38:	06 4d       	mov	r13,	r6	;

00005e3a <.Loc.33.1>:
    5e3a:	0c dd       	bis	r13,	r12	;

00005e3c <.LVL2>:
    5e3c:	0c 93       	cmp	#0,	r12	;r3 As==00

00005e3e <L0^A>:
    5e3e:	31 24       	jz	$+100    	;abs 0x5ea2

00005e40 <.Loc.34.1>:
    5e40:	4a 43       	clr.b	r10		;

00005e42 <.Loc.33.1>:
    5e42:	37 43       	mov	#-1,	r7	;r3 As==11

00005e44 <.L7>:
    5e44:	0c 47       	mov	r7,	r12	;
    5e46:	0d 43       	clr	r13		;

00005e48 <.Loc.40.1>:
    5e48:	0e 4a       	mov	r10,	r14	;
    5e4a:	0f 43       	clr	r15		;

00005e4c <.Loc.40.1>:
    5e4c:	08 4c       	mov	r12,	r8	;
    5e4e:	08 5e       	add	r14,	r8	;
    5e50:	09 4d       	mov	r13,	r9	;
    5e52:	09 6f       	addc	r15,	r9	;

00005e54 <.Loc.40.1>:
    5e54:	0c 48       	mov	r8,	r12	;
    5e56:	0d 49       	mov	r9,	r13	;
    5e58:	12 c3       	clrc			
    5e5a:	0d 10       	rrc	r13		;
    5e5c:	0c 10       	rrc	r12		;

00005e5e <.Loc.40.1>:
    5e5e:	04 4c       	mov	r12,	r4	;

00005e60 <.Loc.41.1>:
    5e60:	0e 4c       	mov	r12,	r14	;
    5e62:	0f 4d       	mov	r13,	r15	;
    5e64:	b0 12 40 7d 	call	#32064		;#0x7d40

00005e68 <.LVL5>:
    5e68:	0d 96       	cmp	r6,	r13	;
    5e6a:	04 28       	jnc	$+10     	;abs 0x5e74
    5e6c:	06 9d       	cmp	r13,	r6	;
    5e6e:	0b 20       	jnz	$+24     	;abs 0x5e86
    5e70:	0c 95       	cmp	r5,	r12	;
    5e72:	09 2c       	jc	$+20     	;abs 0x5e86

00005e74 <.L9>:
    5e74:	0a 44       	mov	r4,	r10	;

00005e76 <.Loc.38.1>:
    5e76:	0c 47       	mov	r7,	r12	;
    5e78:	0c 8a       	sub	r10,	r12	;

00005e7a <.LVL7>:
    5e7a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5e7c:	0d 9c       	cmp	r12,	r13	;
    5e7e:	e2 2b       	jnc	$-58     	;abs 0x5e44

00005e80 <.L1>:
    5e80:	0c 44       	mov	r4,	r12	;
    5e82:	64 17       	popm	#7,	r10	;16-bit words

00005e84 <.LCFI1>:
    5e84:	30 41       	ret			

00005e86 <.L10>:
    5e86:	05 9c       	cmp	r12,	r5	;
    5e88:	09 24       	jz	$+20     	;abs 0x5e9c

00005e8a <.L11>:
    5e8a:	07 44       	mov	r4,	r7	;

00005e8c <.LVL10>:
    5e8c:	0c 47       	mov	r7,	r12	;
    5e8e:	0c 8a       	sub	r10,	r12	;

00005e90 <.LVL11>:
    5e90:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5e92:	0d 9c       	cmp	r12,	r13	;
    5e94:	d7 2b       	jnc	$-80     	;abs 0x5e44

00005e96 <.LVL12>:
    5e96:	0c 44       	mov	r4,	r12	;
    5e98:	64 17       	popm	#7,	r10	;16-bit words

00005e9a <.LCFI3>:
    5e9a:	30 41       	ret			

00005e9c <.L14>:
    5e9c:	06 9d       	cmp	r13,	r6	;
    5e9e:	f5 23       	jnz	$-20     	;abs 0x5e8a
    5ea0:	ef 3f       	jmp	$-32     	;abs 0x5e80

00005ea2 <.L8>:
    5ea2:	34 40 ff 7f 	mov	#32767,	r4	;#0x7fff

00005ea6 <.Loc.52.1>:
    5ea6:	ec 3f       	jmp	$-38     	;abs 0x5e80

00005ea8 <sqrt32>:
    5ea8:	6a 15       	pushm	#7,	r10	;16-bit words

00005eaa <.LCFI5>:
    5eaa:	31 80 14 00 	sub	#20,	r1	;#0x0014

00005eae <.LCFI6>:
    5eae:	81 4c 0e 00 	mov	r12,	14(r1)	; 0x000e
    5eb2:	81 4d 12 00 	mov	r13,	18(r1)	; 0x0012
    5eb6:	81 4e 10 00 	mov	r14,	16(r1)	; 0x0010
    5eba:	81 4f 08 00 	mov	r15,	8(r1)	;

00005ebe <.Loc.57.1>:
    5ebe:	0c dd       	bis	r13,	r12	;

00005ec0 <.LVL17>:
    5ec0:	0c de       	bis	r14,	r12	;
    5ec2:	0c df       	bis	r15,	r12	;
    5ec4:	0c 93       	cmp	#0,	r12	;r3 As==00
    5ec6:	70 24       	jz	$+226    	;abs 0x5fa8

00005ec8 <.Loc.58.1>:
    5ec8:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
    5ecc:	81 43 02 00 	mov	#0,	2(r1)	;r3 As==00

00005ed0 <.Loc.57.1>:
    5ed0:	b1 43 04 00 	mov	#-1,	4(r1)	;r3 As==11
    5ed4:	b1 43 06 00 	mov	#-1,	6(r1)	;r3 As==11

00005ed8 <.Loc.64.1>:
    5ed8:	55 43       	mov.b	#1,	r5	;r3 As==01
    5eda:	44 43       	clr.b	r4		;

00005edc <.L32>:
    5edc:	1d 41 04 00 	mov	4(r1),	r13	;
    5ee0:	1e 41 06 00 	mov	6(r1),	r14	;

00005ee4 <.Loc.64.1>:
    5ee4:	28 41       	mov	@r1,	r8	;
    5ee6:	1c 41 02 00 	mov	2(r1),	r12	;

00005eea <.Loc.64.1>:
    5eea:	08 5d       	add	r13,	r8	;
    5eec:	09 45       	mov	r5,	r9	;
    5eee:	08 9d       	cmp	r13,	r8	;
    5ef0:	01 28       	jnc	$+4      	;abs 0x5ef4
    5ef2:	09 44       	mov	r4,	r9	;

00005ef4 <.L18>:
    5ef4:	0c 5e       	add	r14,	r12	;
    5ef6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5ef8:	0c 9e       	cmp	r14,	r12	;
    5efa:	01 28       	jnc	$+4      	;abs 0x5efe
    5efc:	4d 43       	clr.b	r13		;

00005efe <.L19>:
    5efe:	09 5c       	add	r12,	r9	;
    5f00:	0a 45       	mov	r5,	r10	;
    5f02:	09 9c       	cmp	r12,	r9	;
    5f04:	01 28       	jnc	$+4      	;abs 0x5f08
    5f06:	0a 44       	mov	r4,	r10	;

00005f08 <.L20>:
    5f08:	0a dd       	bis	r13,	r10	;
    5f0a:	0b 44       	mov	r4,	r11	;
    5f0c:	0c 45       	mov	r5,	r12	;
    5f0e:	b0 12 0c 7d 	call	#32012		;#0x7d0c
    5f12:	08 4c       	mov	r12,	r8	;
    5f14:	09 4d       	mov	r13,	r9	;
    5f16:	0a 4e       	mov	r14,	r10	;
    5f18:	0b 4f       	mov	r15,	r11	;

00005f1a <.Loc.64.1>:
    5f1a:	06 4c       	mov	r12,	r6	;
    5f1c:	07 4d       	mov	r13,	r7	;
    5f1e:	81 4c 0a 00 	mov	r12,	10(r1)	; 0x000a
    5f22:	81 4d 0c 00 	mov	r13,	12(r1)	; 0x000c

00005f26 <.Loc.65.1>:
    5f26:	b0 12 60 7d 	call	#32096		;#0x7d60

00005f2a <.LVL21>:
    5f2a:	1f 91 08 00 	cmp	8(r1),	r15	;
    5f2e:	0c 28       	jnc	$+26     	;abs 0x5f48
    5f30:	81 9f 08 00 	cmp	r15,	8(r1)	;
    5f34:	27 20       	jnz	$+80     	;abs 0x5f84
    5f36:	1e 91 10 00 	cmp	16(r1),	r14	;0x00010
    5f3a:	06 28       	jnc	$+14     	;abs 0x5f48
    5f3c:	81 9e 10 00 	cmp	r14,	16(r1)	; 0x0010
    5f40:	21 20       	jnz	$+68     	;abs 0x5f84
    5f42:	1d 91 12 00 	cmp	18(r1),	r13	;0x00012
    5f46:	18 2c       	jc	$+50     	;abs 0x5f78

00005f48 <.L29>:
    5f48:	81 46 00 00 	mov	r6,	0(r1)	;

00005f4c <.LVL22>:
    5f4c:	81 47 02 00 	mov	r7,	2(r1)	;

00005f50 <.L23>:
    5f50:	1c 41 04 00 	mov	4(r1),	r12	;

00005f54 <.LVL24>:
    5f54:	1d 41 06 00 	mov	6(r1),	r13	;
    5f58:	2c 81       	sub	@r1,	r12	;
    5f5a:	1d 71 02 00 	subc	2(r1),	r13	;

00005f5e <.Loc.62.1>:
    5f5e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5f60:	bd 23       	jnz	$-132    	;abs 0x5edc
    5f62:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f64:	0e 9c       	cmp	r12,	r14	;
    5f66:	ba 2b       	jnc	$-138    	;abs 0x5edc

00005f68 <.L15>:
    5f68:	1c 41 0a 00 	mov	10(r1),	r12	;0x0000a
    5f6c:	1d 41 0c 00 	mov	12(r1),	r13	;0x0000c
    5f70:	31 50 14 00 	add	#20,	r1	;#0x0014

00005f74 <.LCFI7>:
    5f74:	64 17       	popm	#7,	r10	;16-bit words

00005f76 <.LCFI8>:
    5f76:	30 41       	ret			

00005f78 <.L33>:
    5f78:	81 9d 12 00 	cmp	r13,	18(r1)	; 0x0012
    5f7c:	03 20       	jnz	$+8      	;abs 0x5f84
    5f7e:	1c 91 0e 00 	cmp	14(r1),	r12	;0x0000e
    5f82:	e2 2b       	jnc	$-58     	;abs 0x5f48

00005f84 <.L30>:
    5f84:	81 9c 0e 00 	cmp	r12,	14(r1)	; 0x000e
    5f88:	05 24       	jz	$+12     	;abs 0x5f94

00005f8a <.L31>:
    5f8a:	81 46 04 00 	mov	r6,	4(r1)	;
    5f8e:	81 47 06 00 	mov	r7,	6(r1)	;
    5f92:	de 3f       	jmp	$-66     	;abs 0x5f50

00005f94 <.L34>:
    5f94:	81 9d 12 00 	cmp	r13,	18(r1)	; 0x0012
    5f98:	f8 23       	jnz	$-14     	;abs 0x5f8a
    5f9a:	81 9e 10 00 	cmp	r14,	16(r1)	; 0x0010
    5f9e:	f5 23       	jnz	$-20     	;abs 0x5f8a
    5fa0:	81 9f 08 00 	cmp	r15,	8(r1)	;
    5fa4:	f2 23       	jnz	$-26     	;abs 0x5f8a
    5fa6:	e0 3f       	jmp	$-62     	;abs 0x5f68

00005fa8 <.L28>:
    5fa8:	b1 43 0a 00 	mov	#-1,	10(r1)	;r3 As==11, 0x000a
    5fac:	b1 40 ff 7f 	mov	#32767,	12(r1)	;#0x7fff, 0x000c
    5fb0:	0c 00 

00005fb2 <.Loc.76.1>:
    5fb2:	da 3f       	jmp	$-74     	;abs 0x5f68

00005fb4 <__ink_get_variable_address_with_offset>:
    5fb4:	3c 50 18 01 	add	#280,	r12	;#0x0118

00005fb8 <.LVL1>:
    5fb8:	30 41       	ret			

00005fba <__ink_get_current_task_buffer_index>:
    5fba:	5c 42 fa 51 	mov.b	&0x51fa,r12	;0x51fa

00005fbe <L0^A>:
    5fbe:	30 41       	ret			

00005fc0 <is_shared>:
    5fc0:	3c 90 ce 52 	cmp	#21198,	r12	;#0x52ce
    5fc4:	06 28       	jnc	$+14     	;abs 0x5fd2

00005fc6 <.Loc.27.1>:
    5fc6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5fc8:	3c 90 e6 53 	cmp	#21478,	r12	;#0x53e6
    5fcc:	04 2c       	jc	$+10     	;abs 0x5fd6
    5fce:	4c 4d       	mov.b	r13,	r12	;

00005fd0 <.L5>:
    5fd0:	30 41       	ret			

00005fd2 <.L7>:
    5fd2:	4c 43       	clr.b	r12		;

00005fd4 <.LVL5>:
    5fd4:	30 41       	ret			

00005fd6 <.L8>:
    5fd6:	4d 43       	clr.b	r13		;
    5fd8:	4c 4d       	mov.b	r13,	r12	;

00005fda <.LVL7>:
    5fda:	fa 3f       	jmp	$-10     	;abs 0x5fd0

00005fdc <__ink_translate_pointer_address>:
    5fdc:	0a 15       	pushm	#1,	r10	;16-bit words

00005fde <.LCFI0>:
    5fde:	0a 4c       	mov	r12,	r10	;

00005fe0 <.LBB12>:
    5fe0:	3c 90 ce 52 	cmp	#21198,	r12	;#0x52ce
    5fe4:	0a 28       	jnc	$+22     	;abs 0x5ffa
    5fe6:	3c 90 e6 53 	cmp	#21478,	r12	;#0x53e6
    5fea:	07 2c       	jc	$+16     	;abs 0x5ffa

00005fec <.LBB14>:
    5fec:	5c 42 fa 51 	mov.b	&0x51fa,r12	;0x51fa

00005ff0 <.LVL11>:
    5ff0:	3d 40 18 01 	mov	#280,	r13	;#0x0118

00005ff4 <.LVL12>:
    5ff4:	b0 12 2c 7d 	call	#32044		;#0x7d2c

00005ff8 <.LVL13>:
    5ff8:	0a 5c       	add	r12,	r10	;

00005ffa <.L12>:
    5ffa:	0c 4a       	mov	r10,	r12	;
    5ffc:	0a 17       	popm	#1,	r10	;16-bit words

00005ffe <.LCFI1>:
    5ffe:	30 41       	ret			

00006000 <ink_is_first_boot>:
    6000:	
00006002 <L0^A>:
    6002:	
00006006 <ink_is_initialized>:
    6006:	5c 42 02 1c 	mov.b	&0x1c02,r12	;0x1c02
    600a:	30 41       	ret			

0000600c <__ink_init>:
    600c:	b0 12 68 68 	call	#26728		;#0x6868

00006010 <.LBB4>:
    6010:	c2 93 de 45 	cmp.b	#0,	&0x45de	;r3 As==00
    6014:	22 20       	jnz	$+70     	;abs 0x605a

00006016 <.L5>:
    6016:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000601a <.Loc.50.1>:
    601a:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

0000601e <.Loc.50.1>:
    601e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006022 <.Loc.50.1>:
    6022:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6026:	02 02 

00006028 <.Loc.51.1>:
    6028:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    602c:	04 02 

0000602e <.Loc.51.1>:
    602e:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6032:	02 02 

00006034 <.Loc.51.1>:
    6034:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6038:	22 02 

0000603a <.Loc.52.1>:
    603a:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    603e:	24 02 

00006040 <.Loc.52.1>:
    6040:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6044:	22 02 

00006046 <.Loc.52.1>:
    6046:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    604a:	22 02 

0000604c <.Loc.53.1>:
    604c:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    6050:	24 02 

00006052 <.Loc.53.1>:
    6052:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6056:	22 02 

00006058 <.Loc.53.1>:
    6058:	30 41       	ret			

0000605a <.L6>:
    605a:	b0 12 c0 68 	call	#26816		;#0x68c0

0000605e <.Loc.36.1>:
    605e:	b0 12 e2 65 	call	#26082		;#0x65e2
    6062:	d9 3f       	jmp	$-76     	;abs 0x6016

00006064 <__ink_init_done>:
    6064:	c2 43 de 45 	mov.b	#0,	&0x45de	;r3 As==00

00006068 <.Loc.69.1>:
    6068:	d2 43 02 1c 	mov.b	#1,	&0x1c02	;r3 As==01

0000606c <.Loc.70.1>:
    606c:	30 41       	ret			

0000606e <.LFE3>:
	...

00006070 <__ink_create_thread>:
    6070:	2a 15       	pushm	#3,	r10	;16-bit words

00006072 <.LCFI0>:
    6072:	21 83       	decd	r1		;

00006074 <.LCFI1>:
    6074:	4a 4c       	mov.b	r12,	r10	;
    6076:	09 4d       	mov	r13,	r9	;
    6078:	48 4e       	mov.b	r14,	r8	;

0000607a <.Loc.147.1>:
    607a:	b0 12 00 60 	call	#24576		;#0x6000

0000607e <.LVL1>:
    607e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6080:	56 24       	jz	$+174    	;abs 0x612e

00006082 <.Loc.152.1>:
    6082:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    6086:	4c 9a       	cmp.b	r10,	r12	;
    6088:	47 28       	jnc	$+144    	;abs 0x6118
    608a:	0c 4a       	mov	r10,	r12	;
    608c:	5c 02       	rlam	#1,	r12	;
    608e:	3c 50 98 60 	add	#24728,	r12	;#0x6098
    6092:	2c 4c       	mov	@r12,	r12	;
    6094:	00 4c       	br	r12		;
	...

00006098 <.L6>:
    6098:	18 61 b0 65 	addc	26032(r1),r8	;0x065b0
    609c:	9c 65 88 65 	addc	25992(r5),25972(r12);0x06588, 0x6574
    60a0:	74 65 
    60a2:	60 65       	addc.b	@r5,	r0	;
    60a4:	4c 65       	addc.b	r5,	r12	;
    60a6:	38 65       	addc	@r5+,	r8	;
    60a8:	24 65       	addc	@r5,	r4	;
    60aa:	10 65 fe 64 	addc	25854(r5),r0	;0x064fe
    60ae:	ec 64 da 64 	addc.b	@r4,	25818(r12); 0x64da
    60b2:	c8 64 b6 64 	addc.b	r4,	25782(r8); 0x64b6
    60b6:	a4 64 92 64 	addc	@r4,	25746(r4); 0x6492
    60ba:	80 64 6e 64 	addc	r4,	0x646e	; PC rel. 0xc52a
    60be:	5c 64 4a 64 	addc.b	25674(r4),r12	;0x0644a
    60c2:	38 64       	addc	@r4+,	r8	;
    60c4:	26 64       	addc	@r4,	r6	;
    60c6:	14 64 02 64 	addc	25602(r4),r4	;0x06402
    60ca:	f0 63 de 63 	addc.b	#-1,	0x63de	;r3 As==11, PC rel. 0xc4aa
    60ce:	cc 63 ba 63 	adc.b	25530(r12)		;
    60d2:	a8 63 96 63 	addc	#2,	25494(r8);r3 As==10, 0x6396
    60d6:	84 63 72 63 	adc	25458(r4)		;
    60da:	60 63       	addc.b	#2,	r0	;r3 As==10
    60dc:	4e 63       	adc.b	r14		;
    60de:	3c 63       	addc	#-1,	r12	;r3 As==11
    60e0:	2a 63       	addc	#2,	r10	;r3 As==10
    60e2:	18 63       	addc	#1,	r8	;r3 As==01
    60e4:	06 63       	adc	r6		;
    60e6:	f4 62 e2 62 	addc.b	#8,	25314(r4);r2 As==11, 0x62e2
    60ea:	d0 62 be 62 	addc.b	&0x62be,0x62ac	;0x62be, PC rel. 0xc39a
    60ee:	ac 62 
    60f0:	9a 62 88 62 	addc	&0x6288,25206(r10);0x6288, 0x6276
    60f4:	76 62 
    60f6:	64 62       	addc.b	#4,	r4	;r2 As==10
    60f8:	52 62 40 62 	addc.b	&0x6240,r2	;0x6240
    60fc:	2e 62       	addc	#4,	r14	;r2 As==10
    60fe:	1c 62 0a 62 	addc	&0x620a,r12	;0x620a
    6102:	f8 61 e6 61 	addc.b	@r1+,	25062(r8); 0x61e6
    6106:	d4 61 c2 61 	addc.b	25026(r1),25008(r4);0x061c2, 0x61b0
    610a:	b0 61 
    610c:	9e 61 8c 61 	addc	24972(r1),24954(r14);0x0618c, 0x617a
    6110:	7a 61 
    6112:	68 61       	addc.b	@r1,	r8	;
    6114:	56 61 44 61 	addc.b	24900(r1),r6	;0x06144

00006118 <.L70>:
    6118:	4c 43       	clr.b	r12		;
    611a:	4f 43       	clr.b	r15		;
    611c:	4e 43       	clr.b	r14		;

0000611e <.L4>:
    611e:	81 4c 00 00 	mov	r12,	0(r1)	;
    6122:	0d 49       	mov	r9,	r13	;
    6124:	4c 4a       	mov.b	r10,	r12	;

00006126 <.LVL4>:
    6126:	b0 12 e8 68 	call	#26856		;#0x68e8

0000612a <.LVL5>:
    612a:	08 93       	cmp	#0,	r8	;r3 As==00
    612c:	03 20       	jnz	$+8      	;abs 0x6134

0000612e <.L1>:
    612e:	21 53       	incd	r1		;

00006130 <.LCFI2>:
    6130:	28 17       	popm	#3,	r10	;16-bit words

00006132 <.LCFI3>:
    6132:	30 41       	ret			

00006134 <.L75>:
    6134:	4c 4a       	mov.b	r10,	r12	;
    6136:	b0 12 8c 69 	call	#27020		;#0x698c
    613a:	b0 12 70 69 	call	#26992		;#0x6970

0000613e <.Loc.232.1>:
    613e:	21 53       	incd	r1		;

00006140 <.LCFI5>:
    6140:	28 17       	popm	#3,	r10	;16-bit words

00006142 <.LCFI6>:
    6142:	30 41       	ret			

00006144 <.L5>:
    6144:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6148:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000614c <.LVL9>:
    614c:	3c 40 00 00 	mov	#0,	r12	;

00006150 <.Loc.220.1>:
    6150:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6154:	e4 3f       	jmp	$-54     	;abs 0x611e

00006156 <.L7>:
    6156:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    615a:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000615e <.LVL12>:
    615e:	3c 40 00 00 	mov	#0,	r12	;

00006162 <.Loc.219.1>:
    6162:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6166:	db 3f       	jmp	$-72     	;abs 0x611e

00006168 <.L8>:
    6168:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    616c:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006170 <.LVL15>:
    6170:	3c 40 00 00 	mov	#0,	r12	;

00006174 <.Loc.218.1>:
    6174:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6178:	d2 3f       	jmp	$-90     	;abs 0x611e

0000617a <.L9>:
    617a:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    617e:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006182 <.LVL18>:
    6182:	3c 40 00 00 	mov	#0,	r12	;

00006186 <.Loc.217.1>:
    6186:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    618a:	c9 3f       	jmp	$-108    	;abs 0x611e

0000618c <.L10>:
    618c:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6190:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006194 <.LVL21>:
    6194:	3c 40 00 00 	mov	#0,	r12	;

00006198 <.Loc.216.1>:
    6198:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    619c:	c0 3f       	jmp	$-126    	;abs 0x611e

0000619e <.L11>:
    619e:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    61a2:	3f 50 18 01 	add	#280,	r15	;#0x0118

000061a6 <.LVL24>:
    61a6:	3c 40 00 00 	mov	#0,	r12	;

000061aa <.Loc.215.1>:
    61aa:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    61ae:	b7 3f       	jmp	$-144    	;abs 0x611e

000061b0 <.L12>:
    61b0:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    61b4:	3f 50 18 01 	add	#280,	r15	;#0x0118

000061b8 <.LVL27>:
    61b8:	3c 40 00 00 	mov	#0,	r12	;

000061bc <.Loc.214.1>:
    61bc:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    61c0:	ae 3f       	jmp	$-162    	;abs 0x611e

000061c2 <.L13>:
    61c2:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    61c6:	3f 50 18 01 	add	#280,	r15	;#0x0118

000061ca <.LVL30>:
    61ca:	3c 40 00 00 	mov	#0,	r12	;

000061ce <.Loc.213.1>:
    61ce:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    61d2:	a5 3f       	jmp	$-180    	;abs 0x611e

000061d4 <.L14>:
    61d4:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    61d8:	3f 50 18 01 	add	#280,	r15	;#0x0118

000061dc <.LVL33>:
    61dc:	3c 40 00 00 	mov	#0,	r12	;

000061e0 <.Loc.212.1>:
    61e0:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    61e4:	9c 3f       	jmp	$-198    	;abs 0x611e

000061e6 <.L15>:
    61e6:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    61ea:	3f 50 18 01 	add	#280,	r15	;#0x0118

000061ee <.LVL36>:
    61ee:	3c 40 00 00 	mov	#0,	r12	;

000061f2 <.Loc.211.1>:
    61f2:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    61f6:	93 3f       	jmp	$-216    	;abs 0x611e

000061f8 <.L16>:
    61f8:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    61fc:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006200 <.LVL39>:
    6200:	3c 40 00 00 	mov	#0,	r12	;

00006204 <.Loc.210.1>:
    6204:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6208:	8a 3f       	jmp	$-234    	;abs 0x611e

0000620a <.L17>:
    620a:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    620e:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006212 <.LVL42>:
    6212:	3c 40 00 00 	mov	#0,	r12	;

00006216 <.Loc.209.1>:
    6216:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    621a:	81 3f       	jmp	$-252    	;abs 0x611e

0000621c <.L18>:
    621c:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6220:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006224 <.LVL45>:
    6224:	3c 40 00 00 	mov	#0,	r12	;

00006228 <.Loc.208.1>:
    6228:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    622c:	78 3f       	jmp	$-270    	;abs 0x611e

0000622e <.L19>:
    622e:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6232:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006236 <.LVL48>:
    6236:	3c 40 00 00 	mov	#0,	r12	;

0000623a <.Loc.207.1>:
    623a:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    623e:	6f 3f       	jmp	$-288    	;abs 0x611e

00006240 <.L20>:
    6240:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6244:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006248 <.LVL51>:
    6248:	3c 40 00 00 	mov	#0,	r12	;

0000624c <.Loc.206.1>:
    624c:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6250:	66 3f       	jmp	$-306    	;abs 0x611e

00006252 <.L21>:
    6252:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6256:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000625a <.LVL54>:
    625a:	3c 40 00 00 	mov	#0,	r12	;

0000625e <.Loc.205.1>:
    625e:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6262:	5d 3f       	jmp	$-324    	;abs 0x611e

00006264 <.L22>:
    6264:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6268:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000626c <.LVL57>:
    626c:	3c 40 00 00 	mov	#0,	r12	;

00006270 <.Loc.204.1>:
    6270:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6274:	54 3f       	jmp	$-342    	;abs 0x611e

00006276 <.L23>:
    6276:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    627a:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000627e <.LVL60>:
    627e:	3c 40 00 00 	mov	#0,	r12	;

00006282 <.Loc.203.1>:
    6282:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6286:	4b 3f       	jmp	$-360    	;abs 0x611e

00006288 <.L24>:
    6288:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    628c:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006290 <.LVL63>:
    6290:	3c 40 00 00 	mov	#0,	r12	;

00006294 <.Loc.202.1>:
    6294:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6298:	42 3f       	jmp	$-378    	;abs 0x611e

0000629a <.L25>:
    629a:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    629e:	3f 50 18 01 	add	#280,	r15	;#0x0118

000062a2 <.LVL66>:
    62a2:	3c 40 00 00 	mov	#0,	r12	;

000062a6 <.Loc.201.1>:
    62a6:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    62aa:	39 3f       	jmp	$-396    	;abs 0x611e

000062ac <.L26>:
    62ac:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    62b0:	3f 50 18 01 	add	#280,	r15	;#0x0118

000062b4 <.LVL69>:
    62b4:	3c 40 00 00 	mov	#0,	r12	;

000062b8 <.Loc.200.1>:
    62b8:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    62bc:	30 3f       	jmp	$-414    	;abs 0x611e

000062be <.L27>:
    62be:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    62c2:	3f 50 18 01 	add	#280,	r15	;#0x0118

000062c6 <.LVL72>:
    62c6:	3c 40 00 00 	mov	#0,	r12	;

000062ca <.Loc.199.1>:
    62ca:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    62ce:	27 3f       	jmp	$-432    	;abs 0x611e

000062d0 <.L28>:
    62d0:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    62d4:	3f 50 18 01 	add	#280,	r15	;#0x0118

000062d8 <.LVL75>:
    62d8:	3c 40 00 00 	mov	#0,	r12	;

000062dc <.Loc.198.1>:
    62dc:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    62e0:	1e 3f       	jmp	$-450    	;abs 0x611e

000062e2 <.L29>:
    62e2:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    62e6:	3f 50 18 01 	add	#280,	r15	;#0x0118

000062ea <.LVL78>:
    62ea:	3c 40 00 00 	mov	#0,	r12	;

000062ee <.Loc.197.1>:
    62ee:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    62f2:	15 3f       	jmp	$-468    	;abs 0x611e

000062f4 <.L30>:
    62f4:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    62f8:	3f 50 18 01 	add	#280,	r15	;#0x0118

000062fc <.LVL81>:
    62fc:	3c 40 00 00 	mov	#0,	r12	;

00006300 <.Loc.196.1>:
    6300:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6304:	0c 3f       	jmp	$-486    	;abs 0x611e

00006306 <.L31>:
    6306:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    630a:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000630e <.LVL84>:
    630e:	3c 40 00 00 	mov	#0,	r12	;

00006312 <.Loc.195.1>:
    6312:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6316:	03 3f       	jmp	$-504    	;abs 0x611e

00006318 <.L32>:
    6318:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    631c:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006320 <.LVL87>:
    6320:	3c 40 00 00 	mov	#0,	r12	;

00006324 <.Loc.194.1>:
    6324:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6328:	fa 3e       	jmp	$-522    	;abs 0x611e

0000632a <.L33>:
    632a:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    632e:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006332 <.LVL90>:
    6332:	3c 40 00 00 	mov	#0,	r12	;

00006336 <.Loc.193.1>:
    6336:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    633a:	f1 3e       	jmp	$-540    	;abs 0x611e

0000633c <.L34>:
    633c:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6340:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006344 <.LVL93>:
    6344:	3c 40 00 00 	mov	#0,	r12	;

00006348 <.Loc.192.1>:
    6348:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    634c:	e8 3e       	jmp	$-558    	;abs 0x611e

0000634e <.L35>:
    634e:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6352:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006356 <.LVL96>:
    6356:	3c 40 00 00 	mov	#0,	r12	;

0000635a <.Loc.191.1>:
    635a:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    635e:	df 3e       	jmp	$-576    	;abs 0x611e

00006360 <.L36>:
    6360:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6364:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006368 <.LVL99>:
    6368:	3c 40 00 00 	mov	#0,	r12	;

0000636c <.Loc.190.1>:
    636c:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6370:	d6 3e       	jmp	$-594    	;abs 0x611e

00006372 <.L37>:
    6372:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6376:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000637a <.LVL102>:
    637a:	3c 40 00 00 	mov	#0,	r12	;

0000637e <.Loc.189.1>:
    637e:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6382:	cd 3e       	jmp	$-612    	;abs 0x611e

00006384 <.L38>:
    6384:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6388:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000638c <.LVL105>:
    638c:	3c 40 00 00 	mov	#0,	r12	;

00006390 <.Loc.188.1>:
    6390:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6394:	c4 3e       	jmp	$-630    	;abs 0x611e

00006396 <.L39>:
    6396:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    639a:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000639e <.LVL108>:
    639e:	3c 40 00 00 	mov	#0,	r12	;

000063a2 <.Loc.187.1>:
    63a2:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    63a6:	bb 3e       	jmp	$-648    	;abs 0x611e

000063a8 <.L40>:
    63a8:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    63ac:	3f 50 18 01 	add	#280,	r15	;#0x0118

000063b0 <.LVL111>:
    63b0:	3c 40 00 00 	mov	#0,	r12	;

000063b4 <.Loc.186.1>:
    63b4:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    63b8:	b2 3e       	jmp	$-666    	;abs 0x611e

000063ba <.L41>:
    63ba:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    63be:	3f 50 18 01 	add	#280,	r15	;#0x0118

000063c2 <.LVL114>:
    63c2:	3c 40 00 00 	mov	#0,	r12	;

000063c6 <.Loc.185.1>:
    63c6:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    63ca:	a9 3e       	jmp	$-684    	;abs 0x611e

000063cc <.L42>:
    63cc:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    63d0:	3f 50 18 01 	add	#280,	r15	;#0x0118

000063d4 <.LVL117>:
    63d4:	3c 40 00 00 	mov	#0,	r12	;

000063d8 <.Loc.184.1>:
    63d8:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    63dc:	a0 3e       	jmp	$-702    	;abs 0x611e

000063de <.L43>:
    63de:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    63e2:	3f 50 18 01 	add	#280,	r15	;#0x0118

000063e6 <.LVL120>:
    63e6:	3c 40 00 00 	mov	#0,	r12	;

000063ea <.Loc.183.1>:
    63ea:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    63ee:	97 3e       	jmp	$-720    	;abs 0x611e

000063f0 <.L44>:
    63f0:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    63f4:	3f 50 18 01 	add	#280,	r15	;#0x0118

000063f8 <.LVL123>:
    63f8:	3c 40 00 00 	mov	#0,	r12	;

000063fc <.Loc.182.1>:
    63fc:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6400:	8e 3e       	jmp	$-738    	;abs 0x611e

00006402 <.L45>:
    6402:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6406:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000640a <.LVL126>:
    640a:	3c 40 00 00 	mov	#0,	r12	;

0000640e <.Loc.181.1>:
    640e:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6412:	85 3e       	jmp	$-756    	;abs 0x611e

00006414 <.L46>:
    6414:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6418:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000641c <.LVL129>:
    641c:	3c 40 00 00 	mov	#0,	r12	;

00006420 <.Loc.180.1>:
    6420:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6424:	7c 3e       	jmp	$-774    	;abs 0x611e

00006426 <.L47>:
    6426:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    642a:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000642e <.LVL132>:
    642e:	3c 40 00 00 	mov	#0,	r12	;

00006432 <.Loc.179.1>:
    6432:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6436:	73 3e       	jmp	$-792    	;abs 0x611e

00006438 <.L48>:
    6438:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    643c:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006440 <.LVL135>:
    6440:	3c 40 00 00 	mov	#0,	r12	;

00006444 <.Loc.178.1>:
    6444:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6448:	6a 3e       	jmp	$-810    	;abs 0x611e

0000644a <.L49>:
    644a:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    644e:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006452 <.LVL138>:
    6452:	3c 40 00 00 	mov	#0,	r12	;

00006456 <.Loc.177.1>:
    6456:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    645a:	61 3e       	jmp	$-828    	;abs 0x611e

0000645c <.L50>:
    645c:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6460:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006464 <.LVL141>:
    6464:	3c 40 00 00 	mov	#0,	r12	;

00006468 <.Loc.176.1>:
    6468:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    646c:	58 3e       	jmp	$-846    	;abs 0x611e

0000646e <.L51>:
    646e:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6472:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006476 <.LVL144>:
    6476:	3c 40 00 00 	mov	#0,	r12	;

0000647a <.Loc.175.1>:
    647a:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    647e:	4f 3e       	jmp	$-864    	;abs 0x611e

00006480 <.L52>:
    6480:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6484:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006488 <.LVL147>:
    6488:	3c 40 00 00 	mov	#0,	r12	;

0000648c <.Loc.174.1>:
    648c:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    6490:	46 3e       	jmp	$-882    	;abs 0x611e

00006492 <.L53>:
    6492:	3f 40 e6 53 	mov	#21478,	r15	;#0x53e6
    6496:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000649a <.LVL150>:
    649a:	3c 40 00 00 	mov	#0,	r12	;

0000649e <.Loc.173.1>:
    649e:	3e 40 e6 53 	mov	#21478,	r14	;#0x53e6
    64a2:	3d 3e       	jmp	$-900    	;abs 0x611e

000064a4 <.L54>:
    64a4:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    64a8:	3f 50 18 01 	add	#280,	r15	;#0x0118

000064ac <.LVL153>:
    64ac:	3c 40 18 01 	mov	#280,	r12	;#0x0118

000064b0 <.Loc.172.1>:
    64b0:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    64b4:	34 3e       	jmp	$-918    	;abs 0x611e

000064b6 <.L55>:
    64b6:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    64ba:	3f 50 18 01 	add	#280,	r15	;#0x0118

000064be <.LVL156>:
    64be:	3c 40 00 00 	mov	#0,	r12	;

000064c2 <.Loc.171.1>:
    64c2:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    64c6:	2b 3e       	jmp	$-936    	;abs 0x611e

000064c8 <.L56>:
    64c8:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    64cc:	3f 50 18 01 	add	#280,	r15	;#0x0118

000064d0 <.LVL159>:
    64d0:	3c 40 00 00 	mov	#0,	r12	;

000064d4 <.Loc.170.1>:
    64d4:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    64d8:	22 3e       	jmp	$-954    	;abs 0x611e

000064da <.L57>:
    64da:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    64de:	3f 50 18 01 	add	#280,	r15	;#0x0118

000064e2 <.LVL162>:
    64e2:	3c 40 00 00 	mov	#0,	r12	;

000064e6 <.Loc.169.1>:
    64e6:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    64ea:	19 3e       	jmp	$-972    	;abs 0x611e

000064ec <.L58>:
    64ec:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    64f0:	3f 50 18 01 	add	#280,	r15	;#0x0118

000064f4 <.LVL165>:
    64f4:	3c 40 00 00 	mov	#0,	r12	;

000064f8 <.Loc.168.1>:
    64f8:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    64fc:	10 3e       	jmp	$-990    	;abs 0x611e

000064fe <.L59>:
    64fe:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    6502:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006506 <.LVL168>:
    6506:	3c 40 00 00 	mov	#0,	r12	;

0000650a <.Loc.167.1>:
    650a:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    650e:	07 3e       	jmp	$-1008   	;abs 0x611e

00006510 <.L60>:
    6510:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    6514:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006518 <.LVL171>:
    6518:	3c 40 00 00 	mov	#0,	r12	;

0000651c <.Loc.166.1>:
    651c:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    6520:	30 40 1e 61 	br	#0x611e		;

00006524 <.L61>:
    6524:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    6528:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000652c <.LVL174>:
    652c:	3c 40 00 00 	mov	#0,	r12	;

00006530 <.Loc.165.1>:
    6530:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    6534:	30 40 1e 61 	br	#0x611e		;

00006538 <.L62>:
    6538:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    653c:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006540 <.LVL177>:
    6540:	3c 40 00 00 	mov	#0,	r12	;

00006544 <.Loc.164.1>:
    6544:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    6548:	30 40 1e 61 	br	#0x611e		;

0000654c <.L63>:
    654c:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    6550:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006554 <.LVL180>:
    6554:	3c 40 00 00 	mov	#0,	r12	;

00006558 <.Loc.163.1>:
    6558:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    655c:	30 40 1e 61 	br	#0x611e		;

00006560 <.L64>:
    6560:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    6564:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006568 <.LVL183>:
    6568:	3c 40 00 00 	mov	#0,	r12	;

0000656c <.Loc.162.1>:
    656c:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    6570:	30 40 1e 61 	br	#0x611e		;

00006574 <.L65>:
    6574:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    6578:	3f 50 18 01 	add	#280,	r15	;#0x0118

0000657c <.LVL186>:
    657c:	3c 40 00 00 	mov	#0,	r12	;

00006580 <.Loc.161.1>:
    6580:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    6584:	30 40 1e 61 	br	#0x611e		;

00006588 <.L66>:
    6588:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    658c:	3f 50 18 01 	add	#280,	r15	;#0x0118

00006590 <.LVL189>:
    6590:	3c 40 00 00 	mov	#0,	r12	;

00006594 <.Loc.160.1>:
    6594:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    6598:	30 40 1e 61 	br	#0x611e		;

0000659c <.L67>:
    659c:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    65a0:	3f 50 18 01 	add	#280,	r15	;#0x0118

000065a4 <.LVL192>:
    65a4:	3c 40 00 00 	mov	#0,	r12	;

000065a8 <.Loc.159.1>:
    65a8:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    65ac:	30 40 1e 61 	br	#0x611e		;

000065b0 <.L68>:
    65b0:	3f 40 ce 52 	mov	#21198,	r15	;#0x52ce
    65b4:	3f 50 18 01 	add	#280,	r15	;#0x0118

000065b8 <.LVL195>:
    65b8:	3c 40 00 00 	mov	#0,	r12	;

000065bc <.Loc.158.1>:
    65bc:	3e 40 ce 52 	mov	#21198,	r14	;#0x52ce
    65c0:	30 40 1e 61 	br	#0x611e		;

000065c4 <ink_activate_thread>:
    65c4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000065c8 <.Loc.236.1>:
    65c8:	32 c2       	dint			
    65ca:	03 43       	nop			

000065cc <.Loc.236.1>:
    65cc:	b0 12 8c 69 	call	#27020		;#0x698c

000065d0 <.LVL198>:
    65d0:	b0 12 70 69 	call	#26992		;#0x6970

000065d4 <.Loc.236.1>:
    65d4:	03 43       	nop			
    65d6:	32 d2       	eint			
    65d8:	03 43       	nop			

000065da <.Loc.237.1>:
    65da:	30 41       	ret			

000065dc <ink_scheduler_run>:
    65dc:	b0 12 a2 69 	call	#27042		;#0x69a2

000065e0 <.Loc.7.1>:
    65e0:	30 41       	ret			

000065e2 <__events_boot_init>:
    65e2:	1a 15       	pushm	#2,	r10	;16-bit words

000065e4 <.LCFI0>:
    65e4:	3a 40 60 4b 	mov	#19296,	r10	;#0x4b60
    65e8:	39 40 60 46 	mov	#18016,	r9	;#0x4660

000065ec <.L2>:
    65ec:	0c 4a       	mov	r10,	r12	;
    65ee:	b0 12 94 67 	call	#26516		;#0x6794

000065f2 <.Loc.27.1>:
    65f2:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

000065f6 <.Loc.24.1>:
    65f6:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    65fa:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000065fe <.Loc.24.1>:
    65fe:	3a 90 60 46 	cmp	#18016,	r10	;#0x4660
    6602:	f4 23       	jnz	$-22     	;abs 0x65ec

00006604 <.Loc.29.1>:
    6604:	19 17       	popm	#2,	r10	;16-bit words

00006606 <.LCFI1>:
    6606:	30 41       	ret			

00006608 <__events_commit>:
    6608:	5c 42 6c 4b 	mov.b	&0x4b6c,r12	;0x4b6c
    660c:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    660e:	14 24       	jz	$+42     	;abs 0x6638
    6610:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6612:	1f 24       	jz	$+64     	;abs 0x6652
    6614:	0c 93       	cmp	#0,	r12	;r3 As==00
    6616:	01 24       	jz	$+4      	;abs 0x661a

00006618 <.Loc.51.1>:
    6618:	30 41       	ret			

0000661a <.L16>:
    661a:	1d 42 6a 4b 	mov	&0x4b6a,r13	;0x4b6a

0000661e <.Loc.37.1>:
    661e:	6c 4d       	mov.b	@r13,	r12	;
    6620:	5c 06       	rlam	#2,	r12	;
    6622:	6d 4d       	mov.b	@r13,	r13	;
    6624:	0c 5d       	add	r13,	r12	;
    6626:	5c 06       	rlam	#2,	r12	;
    6628:	3d 40 60 4b 	mov	#19296,	r13	;#0x4b60
    662c:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    6630:	b0 12 f0 67 	call	#26608		;#0x67f0

00006634 <.Loc.38.1>:
    6634:	d2 43 6c 4b 	mov.b	#1,	&0x4b6c	;r3 As==01

00006638 <.L6>:
    6638:	1d 42 6a 4b 	mov	&0x4b6a,r13	;0x4b6a

0000663c <.Loc.40.1>:
    663c:	6c 4d       	mov.b	@r13,	r12	;
    663e:	5c 06       	rlam	#2,	r12	;
    6640:	6d 4d       	mov.b	@r13,	r13	;
    6642:	0c 5d       	add	r13,	r12	;
    6644:	5c 06       	rlam	#2,	r12	;
    6646:	
00006648 <L0^A>:
    6648:	60 46       	br	@r6		;
    664a:	b0 12 26 68 	call	#26662		;#0x6826

0000664e <.Loc.41.1>:
    664e:	e2 43 6c 4b 	mov.b	#2,	&0x4b6c	;r3 As==10

00006652 <.L7>:
    6652:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a
    6656:	1c 4c 02 00 	mov	2(r12),	r12	;

0000665a <.Loc.44.1>:
    665a:	3c 92       	cmp	#8,	r12	;r2 As==11
    665c:	04 24       	jz	$+10     	;abs 0x6666

0000665e <.L9>:
    665e:	f2 40 03 00 	mov.b	#3,	&0x4b6c	;
    6662:	6c 4b 

00006664 <.Loc.51.1>:
    6664:	30 41       	ret			

00006666 <.L17>:
    6666:	32 c2       	dint			
    6668:	03 43       	nop			

0000666a <.Loc.46.1>:
    666a:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a
    666e:	b0 12 70 69 	call	#26992		;#0x6970

00006672 <.Loc.47.1>:
    6672:	03 43       	nop			
    6674:	32 d2       	eint			
    6676:	03 43       	nop			
    6678:	f2 3f       	jmp	$-26     	;abs 0x665e

0000667a <__event_buffer_full_ISR>:
    667a:	1d 42 6a 4b 	mov	&0x4b6a,r13	;0x4b6a

0000667e <.Loc.55.1>:
    667e:	6c 4d       	mov.b	@r13,	r12	;

00006680 <.LVL7>:
    6680:	5c 06       	rlam	#2,	r12	;
    6682:	6d 4d       	mov.b	@r13,	r13	;
    6684:	0c 5d       	add	r13,	r12	;
    6686:	5c 06       	rlam	#2,	r12	;
    6688:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    668c:	b0 12 c4 67 	call	#26564		;#0x67c4

00006690 <.Loc.56.1>:
    6690:	30 41       	ret			

00006692 <__event_signal_ISR>:
    6692:	82 4c 6a 4b 	mov	r12,	&0x4b6a	;

00006696 <.Loc.64.1>:
    6696:	0e 4d       	mov	r13,	r14	;
    6698:	b2 4e 60 4b 	mov	@r14+,	&0x4b60	;
    669c:	b2 4e 62 4b 	mov	@r14+,	&0x4b62	;
    66a0:	92 4d 04 00 	mov	4(r13),	&0x4b64	;
    66a4:	64 4b 
    66a6:	92 4d 06 00 	mov	6(r13),	&0x4b66	;
    66aa:	66 4b 
    66ac:	92 4e 04 00 	mov	4(r14),	&0x4b68	;
    66b0:	68 4b 

000066b2 <.Loc.65.1>:
    66b2:	c2 43 6c 4b 	mov.b	#0,	&0x4b6c	;r3 As==00

000066b6 <.LBB4>:
    66b6:	5d 42 6c 4b 	mov.b	&0x4b6c,r13	;0x4b6c

000066ba <.LVL10>:
    66ba:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    66bc:	14 24       	jz	$+42     	;abs 0x66e6
    66be:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    66c0:	1f 24       	jz	$+64     	;abs 0x6700
    66c2:	0d 93       	cmp	#0,	r13	;r3 As==00
    66c4:	01 24       	jz	$+4      	;abs 0x66c8

000066c6 <.LBE4>:
    66c6:	30 41       	ret			

000066c8 <.L30>:
    66c8:	6d 4c       	mov.b	@r12,	r13	;
    66ca:	5d 06       	rlam	#2,	r13	;
    66cc:	6c 4c       	mov.b	@r12,	r12	;

000066ce <.LVL11>:
    66ce:	0c 5d       	add	r13,	r12	;
    66d0:	5c 06       	rlam	#2,	r12	;
    66d2:	3d 40 60 4b 	mov	#19296,	r13	;#0x4b60
    66d6:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    66da:	b0 12 f0 67 	call	#26608		;#0x67f0

000066de <.LVL12>:
    66de:	d2 43 6c 4b 	mov.b	#1,	&0x4b6c	;r3 As==01
    66e2:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a

000066e6 <.L20>:
    66e6:	6d 4c       	mov.b	@r12,	r13	;
    66e8:	5d 06       	rlam	#2,	r13	;
    66ea:	6c 4c       	mov.b	@r12,	r12	;
    66ec:	0c 5d       	add	r13,	r12	;
    66ee:	5c 06       	rlam	#2,	r12	;
    66f0:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    66f4:	b0 12 26 68 	call	#26662		;#0x6826

000066f8 <.Loc.41.1>:
    66f8:	e2 43 6c 4b 	mov.b	#2,	&0x4b6c	;r3 As==10
    66fc:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a

00006700 <.L21>:
    6700:	1c 4c 02 00 	mov	2(r12),	r12	;

00006704 <.Loc.44.1>:
    6704:	3c 92       	cmp	#8,	r12	;r2 As==11
    6706:	04 24       	jz	$+10     	;abs 0x6710

00006708 <.L23>:
    6708:	f2 40 03 00 	mov.b	#3,	&0x4b6c	;
    670c:	6c 4b 

0000670e <.Loc.67.1>:
    670e:	30 41       	ret			

00006710 <.L31>:
    6710:	32 c2       	dint			
    6712:	03 43       	nop			

00006714 <.Loc.46.1>:
    6714:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a
    6718:	b0 12 70 69 	call	#26992		;#0x6970

0000671c <.Loc.47.1>:
    671c:	03 43       	nop			
    671e:	32 d2       	eint			
    6720:	03 43       	nop			
    6722:	f2 3f       	jmp	$-26     	;abs 0x6708

00006724 <__has_events>:
    6724:	6d 4c       	mov.b	@r12,	r13	;
    6726:	5d 06       	rlam	#2,	r13	;
    6728:	6c 4c       	mov.b	@r12,	r12	;

0000672a <.LVL16>:
    672a:	0c 5d       	add	r13,	r12	;
    672c:	5c 06       	rlam	#2,	r12	;
    672e:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    6732:	b0 12 ae 67 	call	#26542		;#0x67ae
    6736:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000673a <.Loc.71.1>:
    673a:	3c 53       	add	#-1,	r12	;r3 As==11

0000673c <.Loc.75.1>:
    673c:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6740:	30 41       	ret			

00006742 <__lock_event>:
    6742:	0a 15       	pushm	#1,	r10	;16-bit words

00006744 <.LCFI2>:
    6744:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a

00006748 <.LVL19>:
    6748:	6a 4c       	mov.b	@r12,	r10	;

0000674a <.Loc.81.1>:
    674a:	0c 4a       	mov	r10,	r12	;
    674c:	5c 06       	rlam	#2,	r12	;
    674e:	0c 5a       	add	r10,	r12	;
    6750:	5c 06       	rlam	#2,	r12	;
    6752:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    6756:	b0 12 2e 68 	call	#26670		;#0x682e

0000675a <.Loc.81.1>:
    675a:	5a 02       	rlam	#1,	r10	;
    675c:	8a 4c e0 45 	mov	r12,	17888(r10); 0x45e0

00006760 <.Loc.82.1>:
    6760:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a
    6764:	6c 4c       	mov.b	@r12,	r12	;
    6766:	5c 02       	rlam	#1,	r12	;

00006768 <.Loc.83.1>:
    6768:	1c 4c e0 45 	mov	17888(r12),r12	;0x045e0
    676c:	0a 17       	popm	#1,	r10	;16-bit words

0000676e <.LCFI3>:
    676e:	30 41       	ret			

00006770 <__release_event>:
    6770:	1d 42 6a 4b 	mov	&0x4b6a,r13	;0x4b6a

00006774 <.Loc.87.1>:
    6774:	6c 4d       	mov.b	@r13,	r12	;

00006776 <.LVL22>:
    6776:	5c 06       	rlam	#2,	r12	;
    6778:	6d 4d       	mov.b	@r13,	r13	;
    677a:	0c 5d       	add	r13,	r12	;
    677c:	5c 06       	rlam	#2,	r12	;
    677e:	3c 50 60 46 	add	#18016,	r12	;#0x4660
    6782:	b0 12 60 68 	call	#26720		;#0x6860

00006786 <.Loc.88.1>:
    6786:	1c 42 6a 4b 	mov	&0x4b6a,r12	;0x4b6a
    678a:	6c 4c       	mov.b	@r12,	r12	;
    678c:	5c 02       	rlam	#1,	r12	;
    678e:	8c 43 e0 45 	mov	#0,	17888(r12);r3 As==00, 0x45e0

00006792 <.Loc.89.1>:
    6792:	30 41       	ret			

00006794 <__perqueue_init>:
    6794:	
00006798 <L0^A>:
    6798:	10 00       	bra	@r0+		;

0000679a <.Loc.7.1>:
    679a:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    679e:	11 00 

000067a0 <.Loc.8.1>:
    67a0:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    67a4:	12 00 

000067a6 <.Loc.9.1>:
    67a6:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    67aa:	13 00 

000067ac <.Loc.10.1>:
    67ac:	30 41       	ret			

000067ae <__perqueue_is_empty>:
    67ae:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    67b2:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    67b6:	4c 4d       	mov.b	r13,	r12	;

000067b8 <.LVL2>:
    67b8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    67bc:	3c 53       	add	#-1,	r12	;r3 As==11

000067be <.Loc.19.1>:
    67be:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    67c2:	30 41       	ret			

000067c4 <__perqueue_is_full>:
    67c4:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    67c8:	5d 53       	inc.b	r13		;
    67ca:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

000067ce <.Loc.24.1>:
    67ce:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    67d2:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    67d4:	02 20       	jnz	$+6      	;abs 0x67da

000067d6 <.Loc.25.1>:
    67d6:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

000067da <.L5>:
    67da:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    67de:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    67e2:	4c 4d       	mov.b	r13,	r12	;

000067e4 <.LVL4>:
    67e4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    67e8:	3c 53       	add	#-1,	r12	;r3 As==11

000067ea <.Loc.34.1>:
    67ea:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    67ee:	30 41       	ret			

000067f0 <__perqueue_push>:
    67f0:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    67f4:	5e 53       	inc.b	r14		;
    67f6:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

000067fa <.Loc.39.1>:
    67fa:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    67fe:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    6800:	02 20       	jnz	$+6      	;abs 0x6806

00006802 <.Loc.40.1>:
    6802:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006806 <.L7>:
    6806:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

0000680a <.Loc.44.1>:
    680a:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

0000680e <.Loc.44.1>:
    680e:	0f 9e       	cmp	r14,	r15	;
    6810:	08 24       	jz	$+18     	;abs 0x6822

00006812 <.Loc.49.1>:
    6812:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006816 <.Loc.49.1>:
    6816:	5e 02       	rlam	#1,	r14	;
    6818:	0c 5e       	add	r14,	r12	;

0000681a <.LVL6>:
    681a:	8c 4d 00 00 	mov	r13,	0(r12)	;

0000681e <.Loc.51.1>:
    681e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006820 <.Loc.52.1>:
    6820:	30 41       	ret			

00006822 <.L9>:
    6822:	4c 43       	clr.b	r12		;

00006824 <.LVL8>:
    6824:	30 41       	ret			

00006826 <__perqueue_push_commit>:
    6826:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    682a:	11 00 

0000682c <.Loc.59.1>:
    682c:	30 41       	ret			

0000682e <__perqueue_pop>:
    682e:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006832 <.Loc.63.1>:
    6832:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

00006836 <.Loc.63.1>:
    6836:	0e 9d       	cmp	r13,	r14	;
    6838:	11 24       	jz	$+36     	;abs 0x685c

0000683a <.Loc.68.1>:
    683a:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    683e:	5d 53       	inc.b	r13		;
    6840:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00006844 <.Loc.69.1>:
    6844:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    6848:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    684a:	02 20       	jnz	$+6      	;abs 0x6850

0000684c <.Loc.70.1>:
    684c:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00006850 <.L13>:
    6850:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00006854 <.Loc.72.1>:
    6854:	5d 02       	rlam	#1,	r13	;
    6856:	0c 5d       	add	r13,	r12	;

00006858 <.LVL11>:
    6858:	2c 4c       	mov	@r12,	r12	;

0000685a <.Loc.73.1>:
    685a:	30 41       	ret			

0000685c <.L14>:
    685c:	4c 43       	clr.b	r12		;

0000685e <.LVL13>:
    685e:	30 41       	ret			

00006860 <__perqueue_pop_commit>:
    6860:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6864:	10 00 

00006866 <.Loc.79.1>:
    6866:	30 41       	ret			

00006868 <__fram_init>:
    6868:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    686c:	40 01 

0000686e <.Loc.12.1>:
    686e:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6872:	41 01 

00006874 <.Loc.13.1>:
    6874:	30 41       	ret			

00006876 <__fram_word_copy>:
    6876:	0a 15       	pushm	#1,	r10	;16-bit words

00006878 <.LCFI0>:
    6878:	21 82       	sub	#4,	r1	;r2 As==10

0000687a <.LBB2>:
    687a:	0a 4c       	mov	r12,	r10	;
    687c:	0b 43       	clr	r11		;
    687e:	81 4a 00 00 	mov	r10,	0(r1)	;
    6882:	81 4b 02 00 	mov	r11,	2(r1)	;

00006886 <.Loc.20.1>:
    6886:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

0000688a <.LVL1>:
    688a:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    688e:	00 00 

00006890 <.LBB3>:
    6890:	0a 4d       	mov	r13,	r10	;
    6892:	0b 43       	clr	r11		;

00006894 <.LVL2>:
    6894:	81 4a 00 00 	mov	r10,	0(r1)	;
    6898:	81 4b 02 00 	mov	r11,	2(r1)	;

0000689c <.Loc.21.1>:
    689c:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    68a0:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    68a4:	00 00 

000068a6 <.LBE3>:
    68a6:	82 4e 1a 05 	mov	r14,	&0x051a	;

000068aa <.Loc.25.1>:
    68aa:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    68ae:	10 05 

000068b0 <.Loc.26.1>:
    68b0:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    68b4:	10 05 

000068b6 <.Loc.28.1>:
    68b6:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

000068ba <.Loc.29.1>:
    68ba:	21 52       	add	#4,	r1	;r2 As==10

000068bc <.LCFI2>:
    68bc:	0a 17       	popm	#1,	r10	;16-bit words

000068be <.LCFI3>:
    68be:	30 41       	ret			

000068c0 <__scheduler_boot_init>:
    68c0:	3c 40 70 4b 	mov	#19312,	r12	;#0x4b70
    68c4:	b0 12 6a 76 	call	#30314		;#0x766a

000068c8 <.Loc.54.1>:
    68c8:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

000068cc <.L2>:
    68cc:	0c 4d       	mov	r13,	r12	;
    68ce:	5c 02       	rlam	#1,	r12	;
    68d0:	0c 5d       	add	r13,	r12	;
    68d2:	5c 06       	rlam	#2,	r12	;
    68d4:	0c 5d       	add	r13,	r12	;
    68d6:	5c 02       	rlam	#1,	r12	;
    68d8:	1c 4c 7c 4b 	mov	19324(r12),r12	;0x04b7c

000068dc <.LVL2>:
    68dc:	3d 53       	add	#-1,	r13	;r3 As==11

000068de <.Loc.56.1>:
    68de:	0d 93       	cmp	#0,	r13	;r3 As==00
    68e0:	f5 23       	jnz	$-20     	;abs 0x68cc

000068e2 <.Loc.60.1>:
    68e2:	c2 43 03 1c 	mov.b	#0,	&0x1c03	;r3 As==00

000068e6 <.Loc.61.1>:
    68e6:	30 41       	ret			

000068e8 <__create_thread>:
    68e8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000068ec <.Loc.68.1>:
    68ec:	0b 4c       	mov	r12,	r11	;
    68ee:	5b 02       	rlam	#1,	r11	;
    68f0:	0b 5c       	add	r12,	r11	;
    68f2:	5b 06       	rlam	#2,	r11	;
    68f4:	0b 5c       	add	r12,	r11	;
    68f6:	5b 02       	rlam	#1,	r11	;
    68f8:	cb 4c 7a 4b 	mov.b	r12,	19322(r11); 0x4b7a

000068fc <.Loc.69.1>:
    68fc:	8b 4d 7e 4b 	mov	r13,	19326(r11); 0x4b7e

00006900 <.Loc.70.1>:
    6900:	8b 4d 82 4b 	mov	r13,	19330(r11); 0x4b82

00006904 <.Loc.71.1>:
    6904:	bb 42 7c 4b 	mov	#8,	19324(r11);r2 As==11, 0x4b7c

00006908 <.Loc.74.1>:
    6908:	8b 4e 84 4b 	mov	r14,	19332(r11); 0x4b84

0000690c <.Loc.75.1>:
    690c:	8b 4f 86 4b 	mov	r15,	19334(r11); 0x4b86

00006910 <.Loc.76.1>:
    6910:	cb 43 88 4b 	mov.b	#0,	19336(r11);r3 As==00, 0x4b88

00006914 <.Loc.77.1>:
    6914:	9b 41 02 00 	mov	2(r1),	19338(r11); 0x4b8a
    6918:	8a 4b 

0000691a <.Loc.78.1>:
    691a:	30 41       	ret			

0000691c <__stop_thread>:
    691c:	0a 15       	pushm	#1,	r10	;16-bit words

0000691e <.LCFI0>:
    691e:	0a 4c       	mov	r12,	r10	;

00006920 <.Loc.82.1>:
    6920:	3d 40 70 4b 	mov	#19312,	r13	;#0x4b70
    6924:	6c 4c       	mov.b	@r12,	r12	;

00006926 <.LVL6>:
    6926:	b0 12 b0 76 	call	#30384		;#0x76b0

0000692a <.Loc.83.1>:
    692a:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000692e <.Loc.84.1>:
    692e:	0a 17       	popm	#1,	r10	;16-bit words

00006930 <.LCFI1>:
    6930:	30 41       	ret			

00006932 <__evict_thread>:
    6932:	0a 15       	pushm	#1,	r10	;16-bit words

00006934 <.LCFI2>:
    6934:	0a 4c       	mov	r12,	r10	;

00006936 <.Loc.88.1>:
    6936:	3d 40 70 4b 	mov	#19312,	r13	;#0x4b70
    693a:	6c 4c       	mov.b	@r12,	r12	;

0000693c <.LVL9>:
    693c:	b0 12 b0 76 	call	#30384		;#0x76b0

00006940 <.Loc.89.1>:
    6940:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00006944 <.Loc.90.1>:
    6944:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006948 <.Loc.91.1>:
    6948:	0a 17       	popm	#1,	r10	;16-bit words

0000694a <.LCFI3>:
    694a:	30 41       	ret			

0000694c <__set_sing_timer>:
    694c:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00006950 <.Loc.95.1>:
    6950:	30 41       	ret			

00006952 <__set_expr_timer>:
    6952:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00006956 <.Loc.101.1>:
    6956:	30 41       	ret			

00006958 <__set_pdc_timer>:
    6958:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000695c <.Loc.107.1>:
    695c:	30 41       	ret			

0000695e <__set_pdc_period>:
    695e:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00006962 <.Loc.112.1>:
    6962:	30 41       	ret			

00006964 <__get_pdc_timer>:
    6964:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00006968 <.LVL16>:
    6968:	30 41       	ret			

0000696a <__get_pdc_period>:
    696a:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000696e <.LVL18>:
    696e:	30 41       	ret			

00006970 <__start_thread>:
    6970:	0a 15       	pushm	#1,	r10	;16-bit words

00006972 <.LCFI4>:
    6972:	0a 4c       	mov	r12,	r10	;

00006974 <.Loc.125.1>:
    6974:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    6978:	08 00 

0000697a <.Loc.126.1>:
    697a:	3d 40 70 4b 	mov	#19312,	r13	;#0x4b70
    697e:	6c 4c       	mov.b	@r12,	r12	;

00006980 <.LVL20>:
    6980:	b0 12 90 76 	call	#30352		;#0x7690

00006984 <.Loc.127.1>:
    6984:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006988 <.Loc.128.1>:
    6988:	0a 17       	popm	#1,	r10	;16-bit words

0000698a <.LCFI5>:
    698a:	30 41       	ret			

0000698c <__get_thread>:
    698c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006990 <.Loc.140.1>:
    6990:	0d 4c       	mov	r12,	r13	;
    6992:	5d 02       	rlam	#1,	r13	;
    6994:	0d 5c       	add	r12,	r13	;
    6996:	5d 06       	rlam	#2,	r13	;
    6998:	0c 5d       	add	r13,	r12	;

0000699a <.LVL23>:
    699a:	5c 02       	rlam	#1,	r12	;

0000699c <.Loc.141.1>:
    699c:	3c 50 7a 4b 	add	#19322,	r12	;#0x4b7a
    69a0:	30 41       	ret			

000069a2 <__scheduler_run>:
    69a2:	32 c2       	dint			
    69a4:	03 43       	nop			

000069a6 <.Loc.159.1>:
    69a6:	b0 12 08 66 	call	#26120		;#0x6608

000069aa <.Loc.162.1>:
    69aa:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000069ae <.Loc.162.1>:
    69ae:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000069b2 <.LBB8>:
    69b2:	82 93 6e 4b 	cmp	#0,	&0x4b6e	;r3 As==00
    69b6:	04 24       	jz	$+10     	;abs 0x69c0

000069b8 <.Loc.146.1>:
    69b8:	1c 42 6e 4b 	mov	&0x4b6e,r12	;0x4b6e
    69bc:	b0 12 56 6a 	call	#27222		;#0x6a56

000069c0 <.L17>:
    69c0:	b0 12 72 6b 	call	#27506		;#0x6b72

000069c4 <.Loc.176.1>:
    69c4:	03 43       	nop			
    69c6:	32 d2       	eint			
    69c8:	03 43       	nop			

000069ca <.Loc.179.1>:
    69ca:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000069ce <.Loc.179.1>:
    69ce:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000069d2 <.L20>:
    69d2:	5c 42 03 1c 	mov.b	&0x1c03,r12	;0x1c03
    69d6:	0c 93       	cmp	#0,	r12	;r3 As==00
    69d8:	10 24       	jz	$+34     	;abs 0x69fa

000069da <.L29>:
    69da:	1c 93       	cmp	#1,	r12	;r3 As==01
    69dc:	fa 23       	jnz	$-10     	;abs 0x69d2
    69de:	1c 42 6e 4b 	mov	&0x4b6e,r12	;0x4b6e

000069e2 <.Loc.196.1>:
    69e2:	0c 93       	cmp	#0,	r12	;r3 As==00
    69e4:	24 24       	jz	$+74     	;abs 0x6a2e

000069e6 <.L21>:
    69e6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000069ea <.Loc.198.1>:
    69ea:	b0 12 56 6a 	call	#27222		;#0x6a56

000069ee <.Loc.202.1>:
    69ee:	c2 43 03 1c 	mov.b	#0,	&0x1c03	;r3 As==00

000069f2 <.Loc.180.1>:
    69f2:	5c 42 03 1c 	mov.b	&0x1c03,r12	;0x1c03
    69f6:	0c 93       	cmp	#0,	r12	;r3 As==00
    69f8:	f0 23       	jnz	$-30     	;abs 0x69da

000069fa <.L19>:
    69fa:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000069fe <.LBB10>:
    69fe:	3c 40 70 4b 	mov	#19312,	r12	;#0x4b70
    6a02:	b0 12 d8 76 	call	#30424		;#0x76d8
    6a06:	4d 4c       	mov.b	r12,	r13	;

00006a08 <.LVL29>:
    6a08:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6a0a:	0d 24       	jz	$+28     	;abs 0x6a26

00006a0c <.Loc.134.1>:
    6a0c:	0c 4d       	mov	r13,	r12	;
    6a0e:	5c 02       	rlam	#1,	r12	;

00006a10 <.LVL30>:
    6a10:	0c 5d       	add	r13,	r12	;
    6a12:	5c 06       	rlam	#2,	r12	;
    6a14:	0c 5d       	add	r13,	r12	;
    6a16:	5c 02       	rlam	#1,	r12	;
    6a18:	3c 50 7a 4b 	add	#19322,	r12	;#0x4b7a

00006a1c <.LBE10>:
    6a1c:	82 4c 6e 4b 	mov	r12,	&0x4b6e	;

00006a20 <.Loc.192.1>:
    6a20:	d2 43 03 1c 	mov.b	#1,	&0x1c03	;r3 As==01

00006a24 <.Loc.196.1>:
    6a24:	e0 3f       	jmp	$-62     	;abs 0x69e6

00006a26 <.L30>:
    6a26:	82 43 6e 4b 	mov	#0,	&0x4b6e	;r3 As==00

00006a2a <.Loc.192.1>:
    6a2a:	d2 43 03 1c 	mov.b	#1,	&0x1c03	;r3 As==01

00006a2e <.L22>:
    6a2e:	c2 43 03 1c 	mov.b	#0,	&0x1c03	;r3 As==00

00006a32 <.Loc.206.1>:
    6a32:	32 c2       	dint			
    6a34:	03 43       	nop			

00006a36 <.LBB12>:
    6a36:	3c 40 70 4b 	mov	#19312,	r12	;#0x4b70
    6a3a:	b0 12 d8 76 	call	#30424		;#0x76d8

00006a3e <.LVL33>:
    6a3e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6a40:	c8 23       	jnz	$-110    	;abs 0x69d2

00006a42 <.LBE12>:
    6a42:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006a46 <.Loc.210.1>:
    6a46:	03 43       	nop			
    6a48:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    6a4c:	03 43       	nop			

00006a4e <.Loc.213.1>:
    6a4e:	03 43       	nop			
    6a50:	32 d2       	eint			
    6a52:	03 43       	nop			
    6a54:	be 3f       	jmp	$-130    	;abs 0x69d2

00006a56 <__tick>:
    6a56:	0a 15       	pushm	#1,	r10	;16-bit words

00006a58 <.LCFI0>:
    6a58:	0a 4c       	mov	r12,	r10	;

00006a5a <L0^A>:
    6a5a:	1c 4c 02 00 	mov	2(r12),	r12	;

00006a5e <.LVL1>:
    6a5e:	2c 93       	cmp	#2,	r12	;r3 As==10
    6a60:	35 24       	jz	$+108    	;abs 0x6acc
    6a62:	2c 92       	cmp	#4,	r12	;r2 As==10
    6a64:	56 24       	jz	$+174    	;abs 0x6b12
    6a66:	1c 93       	cmp	#1,	r12	;r3 As==01
    6a68:	02 24       	jz	$+6      	;abs 0x6a6e

00006a6a <.Loc.145.1>:
    6a6a:	0a 17       	popm	#1,	r10	;16-bit words

00006a6c <.LCFI1>:
    6a6c:	30 41       	ret			

00006a6e <.L17>:
    6a6e:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    6a72:	22 02 

00006a74 <.Loc.11.1>:
    6a74:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00006a78 <.Loc.14.1>:
    6a78:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6a7c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6a7e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006a82 <.Loc.14.1>:
    6a82:	5c 02       	rlam	#1,	r12	;
    6a84:	0c 5a       	add	r10,	r12	;
    6a86:	5f 02       	rlam	#1,	r15	;
    6a88:	0f 5a       	add	r10,	r15	;
    6a8a:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    6a8e:	5e 03       	rrum	#1,	r14	;
    6a90:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    6a94:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    6a98:	b0 12 76 68 	call	#26742		;#0x6876

00006a9c <.Loc.17.1>:
    6a9c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6aa0:	22 02 

00006aa2 <.LBE5>:
    6aa2:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    6aa6:	02 02 

00006aa8 <.Loc.48.1>:
    6aa8:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6aac:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6aae:	c2 4c fa 51 	mov.b	r12,	&0x51fa	;

00006ab2 <.Loc.60.1>:
    6ab2:	1c 4a 08 00 	mov	8(r10),	r12	;

00006ab6 <.Loc.60.1>:
    6ab6:	1c 9a 04 00 	cmp	4(r10),	r12	;
    6aba:	48 24       	jz	$+146    	;abs 0x6b4c

00006abc <.Loc.77.1>:
    6abc:	8c 12       	call	r12		;

00006abe <.Loc.77.1>:
    6abe:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006ac2 <.L8>:
    6ac2:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00006ac6 <.Loc.83.1>:
    6ac6:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6aca:	02 02 

00006acc <.L2>:
    6acc:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6ad0:	22 02 

00006ad2 <.Loc.87.1>:
    6ad2:	0c 4a       	mov	r10,	r12	;
    6ad4:	b0 12 70 67 	call	#26480		;#0x6770

00006ad8 <.Loc.96.1>:
    6ad8:	1c 4a 06 00 	mov	6(r10),	r12	;

00006adc <.Loc.96.1>:
    6adc:	8a 4c 08 00 	mov	r12,	8(r10)	;

00006ae0 <.Loc.108.1>:
    6ae0:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    6ae4:	5d e3       	xor.b	#1,	r13	;r3 As==01
    6ae6:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

00006aea <.Loc.110.1>:
    6aea:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006aee <.Loc.115.1>:
    6aee:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6af2:	0e 00 

00006af4 <.Loc.117.1>:
    6af4:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6af8:	22 02 

00006afa <.Loc.117.1>:
    6afa:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6afe:	22 02 

00006b00 <.Loc.118.1>:
    6b00:	0c 93       	cmp	#0,	r12	;r3 As==00
    6b02:	14 24       	jz	$+42     	;abs 0x6b2c

00006b04 <.L9>:
    6b04:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006b08 <.L12>:
    6b08:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6b0c:	22 02 

00006b0e <.Loc.142.1>:
    6b0e:	0a 17       	popm	#1,	r10	;16-bit words

00006b10 <.LCFI3>:
    6b10:	30 41       	ret			

00006b12 <.L3>:
    6b12:	1c 4a 08 00 	mov	8(r10),	r12	;

00006b16 <.Loc.115.1>:
    6b16:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6b1a:	0e 00 

00006b1c <.Loc.117.1>:
    6b1c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6b20:	22 02 

00006b22 <.Loc.117.1>:
    6b22:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6b26:	22 02 

00006b28 <.Loc.118.1>:
    6b28:	0c 93       	cmp	#0,	r12	;r3 As==00
    6b2a:	ec 23       	jnz	$-38     	;abs 0x6b04

00006b2c <.L19>:
    6b2c:	32 c2       	dint			
    6b2e:	03 43       	nop			

00006b30 <.Loc.125.1>:
    6b30:	0c 4a       	mov	r10,	r12	;
    6b32:	b0 12 24 67 	call	#26404		;#0x6724

00006b36 <.Loc.125.1>:
    6b36:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6b38:	12 24       	jz	$+38     	;abs 0x6b5e

00006b3a <.Loc.131.1>:
    6b3a:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    6b3e:	08 00 

00006b40 <.Loc.133.1>:
    6b40:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006b44 <.Loc.135.1>:
    6b44:	03 43       	nop			
    6b46:	32 d2       	eint			
    6b48:	03 43       	nop			
    6b4a:	de 3f       	jmp	$-66     	;abs 0x6b08

00006b4c <.L18>:
    6b4c:	0c 4a       	mov	r10,	r12	;
    6b4e:	b0 12 42 67 	call	#26434		;#0x6742

00006b52 <.LVL10>:
    6b52:	1d 4a 04 00 	mov	4(r10),	r13	;
    6b56:	8d 12       	call	r13		;

00006b58 <.LVL11>:
    6b58:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006b5c <.LBE7>:
    6b5c:	b2 3f       	jmp	$-154    	;abs 0x6ac2

00006b5e <.L20>:
    6b5e:	0c 4a       	mov	r10,	r12	;
    6b60:	b0 12 1c 69 	call	#26908		;#0x691c

00006b64 <.Loc.135.1>:
    6b64:	03 43       	nop			
    6b66:	32 d2       	eint			
    6b68:	03 43       	nop			
    6b6a:	ce 3f       	jmp	$-98     	;abs 0x6b08

00006b6c <__timers_init>:
    6b6c:	b0 12 d2 77 	call	#30674		;#0x77d2

00006b70 <.Loc.64.1>:
    6b70:	30 41       	ret			

00006b72 <__reboot_timers>:
    6b72:	30 41       	ret			

00006b74 <clear_wkup_status>:
    6b74:	0a 15       	pushm	#1,	r10	;16-bit words

00006b76 <.LCFI0>:
    6b76:	4a 4c       	mov.b	r12,	r10	;

00006b78 <.Loc.100.1>:
    6b78:	5c 92 38 1c 	cmp.b	&0x1c38,r12	;0x1c38
    6b7c:	19 24       	jz	$+52     	;abs 0x6bb0

00006b7e <.L5>:
    6b7e:	c2 9a 42 1c 	cmp.b	r10,	&0x1c42	;
    6b82:	0e 24       	jz	$+30     	;abs 0x6ba0

00006b84 <.L6>:
    6b84:	c2 9a 4c 1c 	cmp.b	r10,	&0x1c4c	;
    6b88:	02 24       	jz	$+6      	;abs 0x6b8e

00006b8a <.Loc.109.1>:
    6b8a:	0a 17       	popm	#1,	r10	;16-bit words

00006b8c <.LCFI1>:
    6b8c:	30 41       	ret			

00006b8e <.L10>:
    6b8e:	82 43 4a 1c 	mov	#0,	&0x1c4a	;r3 As==00

00006b92 <.Loc.105.1>:
    6b92:	4e 43       	clr.b	r14		;
    6b94:	4d 43       	clr.b	r13		;
    6b96:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6b98:	b0 12 94 78 	call	#30868		;#0x7894

00006b9c <.Loc.101.1>:
    6b9c:	0a 17       	popm	#1,	r10	;16-bit words

00006b9e <.LCFI3>:
    6b9e:	30 41       	ret			

00006ba0 <.L9>:
    6ba0:	82 43 40 1c 	mov	#0,	&0x1c40	;r3 As==00

00006ba4 <.Loc.105.1>:
    6ba4:	4e 43       	clr.b	r14		;
    6ba6:	4d 43       	clr.b	r13		;
    6ba8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6baa:	b0 12 94 78 	call	#30868		;#0x7894
    6bae:	ea 3f       	jmp	$-42     	;abs 0x6b84

00006bb0 <.L8>:
    6bb0:	82 43 36 1c 	mov	#0,	&0x1c36	;r3 As==00

00006bb4 <.Loc.105.1>:
    6bb4:	4e 43       	clr.b	r14		;
    6bb6:	4d 43       	clr.b	r13		;
    6bb8:	4c 43       	clr.b	r12		;

00006bba <.LVL9>:
    6bba:	b0 12 94 78 	call	#30868		;#0x7894
    6bbe:	df 3f       	jmp	$-64     	;abs 0x6b7e

00006bc0 <unpack_wkup_to_local>:
    6bc0:	2a 15       	pushm	#3,	r10	;16-bit words

00006bc2 <.LCFI5>:
    6bc2:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006bc6 <.LCFI6>:
    6bc6:	49 43       	clr.b	r9		;
    6bc8:	38 40 36 1c 	mov	#7222,	r8	;#0x1c36

00006bcc <.L12>:
    6bcc:	0a 49       	mov	r9,	r10	;
    6bce:	5a 06       	rlam	#2,	r10	;
    6bd0:	0a 59       	add	r9,	r10	;
    6bd2:	5a 02       	rlam	#1,	r10	;
    6bd4:	0a 58       	add	r8,	r10	;
    6bd6:	4e 43       	clr.b	r14		;
    6bd8:	4d 49       	mov.b	r9,	r13	;
    6bda:	0c 41       	mov	r1,	r12	;
    6bdc:	b0 12 90 7a 	call	#31376		;#0x7a90
    6be0:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6be4:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6be8:	02 00 
    6bea:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6bee:	04 00 
    6bf0:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6bf4:	06 00 
    6bf6:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6bfa:	08 00 

00006bfc <.LVL14>:
    6bfc:	19 53       	inc	r9		;

00006bfe <.Loc.115.1>:
    6bfe:	39 90 03 00 	cmp	#3,	r9	;
    6c02:	e4 23       	jnz	$-54     	;abs 0x6bcc

00006c04 <.Loc.120.1>:
    6c04:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006c08 <.LCFI7>:
    6c08:	28 17       	popm	#3,	r10	;16-bit words

00006c0a <.LCFI8>:
    6c0a:	30 41       	ret			

00006c0c <refresh_wkup_timers>:
    6c0c:	5a 15       	pushm	#6,	r10	;16-bit words

00006c0e <.LCFI9>:
    6c0e:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006c10 <.Loc.127.1>:
    6c10:	4a 43       	clr.b	r10		;
    6c12:	38 40 36 1c 	mov	#7222,	r8	;#0x1c36

00006c16 <.L40>:
    6c16:	09 4a       	mov	r10,	r9	;
    6c18:	05 4a       	mov	r10,	r5	;
    6c1a:	55 06       	rlam	#2,	r5	;
    6c1c:	0c 45       	mov	r5,	r12	;
    6c1e:	0c 5a       	add	r10,	r12	;
    6c20:	5c 02       	rlam	#1,	r12	;
    6c22:	0d 4c       	mov	r12,	r13	;
    6c24:	3d 50 36 1c 	add	#7222,	r13	;#0x1c36

00006c28 <.Loc.130.1>:
    6c28:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    6c2c:	0c 24       	jz	$+26     	;abs 0x6c46

00006c2e <.L15>:
    6c2e:	4c 4a       	mov.b	r10,	r12	;
    6c30:	5c 53       	inc.b	r12		;
    6c32:	4a 4c       	mov.b	r12,	r10	;

00006c34 <.LVL19>:
    6c34:	7c 90 03 00 	cmp.b	#3,	r12	;
    6c38:	ee 23       	jnz	$-34     	;abs 0x6c16

00006c3a <.Loc.164.1>:
    6c3a:	0e 93       	cmp	#0,	r14	;r3 As==00
    6c3c:	54 24       	jz	$+170    	;abs 0x6ce6

00006c3e <.Loc.174.1>:
    6c3e:	b0 12 ee 76 	call	#30446		;#0x76ee

00006c42 <.LVL20>:
    6c42:	55 17       	popm	#6,	r10	;16-bit words

00006c44 <.LCFI10>:
    6c44:	30 41       	ret			

00006c46 <.L84>:
    6c46:	16 4d 04 00 	mov	4(r13),	r6	;
    6c4a:	17 4d 06 00 	mov	6(r13),	r7	;

00006c4e <.Loc.133.1>:
    6c4e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6c50:	05 24       	jz	$+12     	;abs 0x6c5c

00006c52 <.Loc.135.1>:
    6c52:	82 46 5c 1c 	mov	r6,	&0x1c5c	;

00006c56 <.Loc.136.1>:
    6c56:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5e	;
    6c5a:	5e 1c 

00006c5c <.L17>:
    6c5c:	b0 12 90 77 	call	#30608		;#0x7790

00006c60 <.Loc.141.1>:
    6c60:	0e 46       	mov	r6,	r14	;
    6c62:	0f 47       	mov	r7,	r15	;
    6c64:	0e 8c       	sub	r12,	r14	;
    6c66:	0f 7d       	subc	r13,	r15	;

00006c68 <.Loc.141.1>:
    6c68:	05 5a       	add	r10,	r5	;
    6c6a:	55 02       	rlam	#1,	r5	;
    6c6c:	05 58       	add	r8,	r5	;
    6c6e:	85 4e 04 00 	mov	r14,	4(r5)	;
    6c72:	85 4f 06 00 	mov	r15,	6(r5)	;

00006c76 <.Loc.142.1>:
    6c76:	4d 43       	clr.b	r13		;
    6c78:	4c 4a       	mov.b	r10,	r12	;
    6c7a:	b0 12 f4 77 	call	#30708		;#0x77f4

00006c7e <.Loc.144.1>:
    6c7e:	1c 45 04 00 	mov	4(r5),	r12	;
    6c82:	1d 45 06 00 	mov	6(r5),	r13	;
    6c86:	4b 4a       	mov.b	r10,	r11	;
    6c88:	5b 53       	inc.b	r11		;
    6c8a:	4a 4b       	mov.b	r11,	r10	;

00006c8c <.Loc.144.1>:
    6c8c:	07 4d       	mov	r13,	r7	;
    6c8e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c90:	3b 38       	jl	$+120    	;abs 0x6d08

00006c92 <.Loc.151.1>:
    6c92:	0e 4c       	mov	r12,	r14	;
    6c94:	0e dd       	bis	r13,	r14	;
    6c96:	0e 93       	cmp	#0,	r14	;r3 As==00
    6c98:	af 24       	jz	$+352    	;abs 0x6df8

00006c9a <.Loc.155.1>:
    6c9a:	16 42 5c 1c 	mov	&0x1c5c,r6	;0x1c5c
    6c9e:	0e 46       	mov	r6,	r14	;
    6ca0:	0f 43       	clr	r15		;

00006ca2 <.Loc.155.1>:
    6ca2:	0d 93       	cmp	#0,	r13	;r3 As==00
    6ca4:	18 34       	jge	$+50     	;abs 0x6cd6

00006ca6 <.L50>:
    6ca6:	0e 49       	mov	r9,	r14	;
    6ca8:	5e 06       	rlam	#2,	r14	;
    6caa:	09 5e       	add	r14,	r9	;
    6cac:	59 02       	rlam	#1,	r9	;
    6cae:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

00006cb2 <.L37>:
    6cb2:	82 4c 5c 1c 	mov	r12,	&0x1c5c	;

00006cb6 <.Loc.158.1>:
    6cb6:	c2 4e 5e 1c 	mov.b	r14,	&0x1c5e	;

00006cba <.Loc.127.1>:
    6cba:	7b 90 03 00 	cmp.b	#3,	r11	;
    6cbe:	15 24       	jz	$+44     	;abs 0x6cea

00006cc0 <.L74>:
    6cc0:	09 4a       	mov	r10,	r9	;
    6cc2:	05 4a       	mov	r10,	r5	;
    6cc4:	55 06       	rlam	#2,	r5	;
    6cc6:	0c 45       	mov	r5,	r12	;
    6cc8:	0c 5a       	add	r10,	r12	;
    6cca:	5c 02       	rlam	#1,	r12	;

00006ccc <.Loc.130.1>:
    6ccc:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    6cd0:	41 24       	jz	$+132    	;abs 0x6d54

00006cd2 <.L91>:
    6cd2:	4e 43       	clr.b	r14		;
    6cd4:	ac 3f       	jmp	$-166    	;abs 0x6c2e

00006cd6 <.L87>:
    6cd6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cd8:	62 24       	jz	$+198    	;abs 0x6d9e

00006cda <.L35>:
    6cda:	07 4c       	mov	r12,	r7	;
    6cdc:	0c 9e       	cmp	r14,	r12	;
    6cde:	79 24       	jz	$+244    	;abs 0x6dd2

00006ce0 <.L38>:
    6ce0:	7b 90 03 00 	cmp.b	#3,	r11	;
    6ce4:	ed 23       	jnz	$-36     	;abs 0x6cc0

00006ce6 <.L72>:
    6ce6:	5e 42 5e 1c 	mov.b	&0x1c5e,r14	;0x1c5e

00006cea <.L43>:
    6cea:	4d 4e       	mov.b	r14,	r13	;
    6cec:	4c 43       	clr.b	r12		;
    6cee:	b0 12 dc 78 	call	#30940		;#0x78dc

00006cf2 <.Loc.167.1>:
    6cf2:	1d 42 5c 1c 	mov	&0x1c5c,r13	;0x1c5c
    6cf6:	4c 43       	clr.b	r12		;
    6cf8:	b0 12 ea 78 	call	#30954		;#0x78ea

00006cfc <.Loc.171.1>:
    6cfc:	1c 42 5c 1c 	mov	&0x1c5c,r12	;0x1c5c
    6d00:	b0 12 02 77 	call	#30466		;#0x7702

00006d04 <.Loc.177.1>:
    6d04:	55 17       	popm	#6,	r10	;16-bit words

00006d06 <.LCFI12>:
    6d06:	30 41       	ret			

00006d08 <.L85>:
    6d08:	5e 42 5f 1c 	mov.b	&0x1c5f,r14	;0x1c5f
    6d0c:	06 43       	clr	r6		;
    6d0e:	06 8e       	sub	r14,	r6	;
    6d10:	0e 46       	mov	r6,	r14	;
    6d12:	0f 46       	mov	r6,	r15	;
    6d14:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006d18 <.Loc.144.1>:
    6d18:	05 4f       	mov	r15,	r5	;
    6d1a:	0f 9d       	cmp	r13,	r15	;
    6d1c:	25 38       	jl	$+76     	;abs 0x6d68

00006d1e <.Loc.144.1>:
    6d1e:	0d 9f       	cmp	r15,	r13	;
    6d20:	21 24       	jz	$+68     	;abs 0x6d64

00006d22 <.L20>:
    6d22:	07 4d       	mov	r13,	r7	;
    6d24:	0d 9f       	cmp	r15,	r13	;
    6d26:	04 38       	jl	$+10     	;abs 0x6d30
    6d28:	0f 9d       	cmp	r13,	r15	;
    6d2a:	da 23       	jnz	$-74     	;abs 0x6ce0
    6d2c:	0c 96       	cmp	r6,	r12	;
    6d2e:	d8 2f       	jc	$-78     	;abs 0x6ce0

00006d30 <.L30>:
    6d30:	0c 49       	mov	r9,	r12	;
    6d32:	5c 06       	rlam	#2,	r12	;
    6d34:	09 5c       	add	r12,	r9	;
    6d36:	59 02       	rlam	#1,	r9	;
    6d38:	89 43 36 1c 	mov	#0,	7222(r9);r3 As==00, 0x1c36

00006d3c <.Loc.127.1>:
    6d3c:	7b 90 03 00 	cmp.b	#3,	r11	;
    6d40:	d2 27       	jz	$-90     	;abs 0x6ce6

00006d42 <.Loc.130.1>:
    6d42:	09 4a       	mov	r10,	r9	;
    6d44:	05 4a       	mov	r10,	r5	;
    6d46:	55 06       	rlam	#2,	r5	;
    6d48:	0c 45       	mov	r5,	r12	;
    6d4a:	0c 5a       	add	r10,	r12	;
    6d4c:	5c 02       	rlam	#1,	r12	;

00006d4e <.Loc.130.1>:
    6d4e:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    6d52:	bf 23       	jnz	$-128    	;abs 0x6cd2

00006d54 <.L27>:
    6d54:	0c 45       	mov	r5,	r12	;
    6d56:	0c 5a       	add	r10,	r12	;
    6d58:	5c 02       	rlam	#1,	r12	;
    6d5a:	16 4c 3a 1c 	mov	7226(r12),r6	;0x01c3a
    6d5e:	17 4c 3c 1c 	mov	7228(r12),r7	;0x01c3c
    6d62:	7c 3f       	jmp	$-262    	;abs 0x6c5c

00006d64 <.L90>:
    6d64:	06 9c       	cmp	r12,	r6	;
    6d66:	dd 2f       	jc	$-68     	;abs 0x6d22

00006d68 <.L46>:
    6d68:	1e 42 5c 1c 	mov	&0x1c5c,r14	;0x1c5c
    6d6c:	06 4e       	mov	r14,	r6	;
    6d6e:	07 43       	clr	r7		;

00006d70 <.Loc.146.1>:
    6d70:	4e 43       	clr.b	r14		;
    6d72:	4f 43       	clr.b	r15		;
    6d74:	0e 8c       	sub	r12,	r14	;
    6d76:	0f 7d       	subc	r13,	r15	;

00006d78 <.Loc.146.1>:
    6d78:	05 4f       	mov	r15,	r5	;
    6d7a:	0f 93       	cmp	#0,	r15	;r3 As==00
    6d7c:	14 34       	jge	$+42     	;abs 0x6da6

00006d7e <.L22>:
    6d7e:	0e 49       	mov	r9,	r14	;
    6d80:	5e 06       	rlam	#2,	r14	;
    6d82:	09 5e       	add	r14,	r9	;
    6d84:	59 02       	rlam	#1,	r9	;
    6d86:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

00006d8a <.L28>:
    6d8a:	4f 43       	clr.b	r15		;
    6d8c:	0f 8c       	sub	r12,	r15	;
    6d8e:	82 4f 5c 1c 	mov	r15,	&0x1c5c	;

00006d92 <.Loc.149.1>:
    6d92:	c2 4e 5e 1c 	mov.b	r14,	&0x1c5e	;

00006d96 <.Loc.127.1>:
    6d96:	7b 90 03 00 	cmp.b	#3,	r11	;
    6d9a:	92 23       	jnz	$-218    	;abs 0x6cc0
    6d9c:	a6 3f       	jmp	$-178    	;abs 0x6cea

00006d9e <.L88>:
    6d9e:	07 4c       	mov	r12,	r7	;
    6da0:	0c 9e       	cmp	r14,	r12	;
    6da2:	9b 2f       	jc	$-200    	;abs 0x6cda
    6da4:	80 3f       	jmp	$-254    	;abs 0x6ca6

00006da6 <.L92>:
    6da6:	0f 93       	cmp	#0,	r15	;r3 As==00
    6da8:	03 20       	jnz	$+8      	;abs 0x6db0
    6daa:	05 4e       	mov	r14,	r5	;
    6dac:	0e 96       	cmp	r6,	r14	;
    6dae:	e7 2b       	jnc	$-48     	;abs 0x6d7e

00006db0 <.L47>:
    6db0:	06 9e       	cmp	r14,	r6	;
    6db2:	96 23       	jnz	$-210    	;abs 0x6ce0
    6db4:	0f 93       	cmp	#0,	r15	;r3 As==00
    6db6:	94 23       	jnz	$-214    	;abs 0x6ce0

00006db8 <.Loc.146.1>:
    6db8:	0e 49       	mov	r9,	r14	;
    6dba:	5e 06       	rlam	#2,	r14	;
    6dbc:	09 5e       	add	r14,	r9	;
    6dbe:	59 02       	rlam	#1,	r9	;
    6dc0:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

00006dc4 <.Loc.146.1>:
    6dc4:	5f 42 5e 1c 	mov.b	&0x1c5e,r15	;0x1c5e

00006dc8 <.Loc.146.1>:
    6dc8:	d9 92 5e 1c 	cmp.b	&0x1c5e,7224(r9);0x1c5e, 0x1c38
    6dcc:	38 1c 
    6dce:	dd 2b       	jnc	$-68     	;abs 0x6d8a
    6dd0:	0e 3c       	jmp	$+30     	;abs 0x6dee

00006dd2 <.L89>:
    6dd2:	0d 9f       	cmp	r15,	r13	;
    6dd4:	85 23       	jnz	$-244    	;abs 0x6ce0

00006dd6 <.Loc.155.1>:
    6dd6:	0e 49       	mov	r9,	r14	;
    6dd8:	5e 06       	rlam	#2,	r14	;
    6dda:	09 5e       	add	r14,	r9	;
    6ddc:	59 02       	rlam	#1,	r9	;
    6dde:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

00006de2 <.Loc.155.1>:
    6de2:	5f 42 5e 1c 	mov.b	&0x1c5e,r15	;0x1c5e

00006de6 <.Loc.155.1>:
    6de6:	d9 92 5e 1c 	cmp.b	&0x1c5e,7224(r9);0x1c5e, 0x1c38
    6dea:	38 1c 
    6dec:	62 2b       	jnc	$-314    	;abs 0x6cb2

00006dee <.L39>:
    6dee:	7b 90 03 00 	cmp.b	#3,	r11	;
    6df2:	66 23       	jnz	$-306    	;abs 0x6cc0

00006df4 <.Loc.155.1>:
    6df4:	0e 4f       	mov	r15,	r14	;

00006df6 <.Loc.164.1>:
    6df6:	79 3f       	jmp	$-268    	;abs 0x6cea

00006df8 <.L86>:
    6df8:	7b 90 03 00 	cmp.b	#3,	r11	;
    6dfc:	74 27       	jz	$-278    	;abs 0x6ce6

00006dfe <.Loc.130.1>:
    6dfe:	09 4a       	mov	r10,	r9	;
    6e00:	05 4a       	mov	r10,	r5	;
    6e02:	55 06       	rlam	#2,	r5	;
    6e04:	0c 45       	mov	r5,	r12	;
    6e06:	0c 5a       	add	r10,	r12	;
    6e08:	5c 02       	rlam	#1,	r12	;

00006e0a <.Loc.130.1>:
    6e0a:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    6e0e:	0f 23       	jnz	$-480    	;abs 0x6c2e
    6e10:	a1 3f       	jmp	$-188    	;abs 0x6d54

00006e12 <set_wkup_timer>:
    6e12:	4a 15       	pushm	#5,	r10	;16-bit words

00006e14 <.LCFI14>:
    6e14:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006e18 <.LCFI15>:
    6e18:	47 4c       	mov.b	r12,	r7	;
    6e1a:	09 4d       	mov	r13,	r9	;

00006e1c <.LBB12>:
    6e1c:	46 43       	clr.b	r6		;
    6e1e:	38 40 36 1c 	mov	#7222,	r8	;#0x1c36

00006e22 <.L94>:
    6e22:	0a 46       	mov	r6,	r10	;
    6e24:	5a 06       	rlam	#2,	r10	;
    6e26:	0a 56       	add	r6,	r10	;
    6e28:	5a 02       	rlam	#1,	r10	;
    6e2a:	0a 58       	add	r8,	r10	;
    6e2c:	4e 43       	clr.b	r14		;
    6e2e:	4d 46       	mov.b	r6,	r13	;
    6e30:	0c 41       	mov	r1,	r12	;
    6e32:	b0 12 90 7a 	call	#31376		;#0x7a90
    6e36:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6e3a:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6e3e:	02 00 
    6e40:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6e44:	04 00 
    6e46:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6e4a:	06 00 
    6e4c:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6e50:	08 00 

00006e52 <.LVL43>:
    6e52:	16 53       	inc	r6		;

00006e54 <.Loc.115.1>:
    6e54:	36 90 03 00 	cmp	#3,	r6	;
    6e58:	e4 23       	jnz	$-54     	;abs 0x6e22

00006e5a <.Loc.189.1>:
    6e5a:	b0 12 ee 76 	call	#30446		;#0x76ee

00006e5e <.Loc.192.1>:
    6e5e:	0e 49       	mov	r9,	r14	;
    6e60:	0f 43       	clr	r15		;

00006e62 <.Loc.194.1>:
    6e62:	82 93 36 1c 	cmp	#0,	&0x1c36	;r3 As==00
    6e66:	22 24       	jz	$+70     	;abs 0x6eac

00006e68 <.Loc.192.1>:
    6e68:	82 93 40 1c 	cmp	#0,	&0x1c40	;r3 As==00
    6e6c:	49 24       	jz	$+148    	;abs 0x6f00

00006e6e <.Loc.192.1>:
    6e6e:	82 93 4a 1c 	cmp	#0,	&0x1c4a	;r3 As==00
    6e72:	49 24       	jz	$+148    	;abs 0x6f06

00006e74 <.Loc.192.1>:
    6e74:	82 4e 4e 1c 	mov	r14,	&0x1c4e	;
    6e78:	82 4f 50 1c 	mov	r15,	&0x1c50	;

00006e7c <.Loc.216.1>:
    6e7c:	4d 43       	clr.b	r13		;
    6e7e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e80:	b0 12 f4 77 	call	#30708		;#0x77f4

00006e84 <.Loc.217.1>:
    6e84:	c2 47 4c 1c 	mov.b	r7,	&0x1c4c	;

00006e88 <.Loc.218.1>:
    6e88:	4e 47       	mov.b	r7,	r14	;
    6e8a:	4d 43       	clr.b	r13		;
    6e8c:	7c 40 03 00 	mov.b	#3,	r12	;
    6e90:	b0 12 48 78 	call	#30792		;#0x7848

00006e94 <.Loc.219.1>:
    6e94:	b0 12 0c 6c 	call	#27660		;#0x6c0c

00006e98 <.Loc.222.1>:
    6e98:	4c 43       	clr.b	r12		;
    6e9a:	b0 12 f8 78 	call	#30968		;#0x78f8

00006e9e <.Loc.223.1>:
    6e9e:	4c 43       	clr.b	r12		;
    6ea0:	b0 12 4c 7a 	call	#31308		;#0x7a4c

00006ea4 <.Loc.224.1>:
    6ea4:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006ea8 <.LCFI16>:
    6ea8:	46 17       	popm	#5,	r10	;16-bit words

00006eaa <.LCFI17>:
    6eaa:	30 41       	ret			

00006eac <.L97>:
    6eac:	1a 42 36 1c 	mov	&0x1c36,r10	;0x1c36

00006eb0 <.Loc.194.1>:
    6eb0:	0d 4a       	mov	r10,	r13	;

00006eb2 <.L95>:
    6eb2:	0c 4d       	mov	r13,	r12	;
    6eb4:	5c 06       	rlam	#2,	r12	;
    6eb6:	0c 5d       	add	r13,	r12	;
    6eb8:	5c 02       	rlam	#1,	r12	;
    6eba:	08 5c       	add	r12,	r8	;
    6ebc:	88 4e 04 00 	mov	r14,	4(r8)	;
    6ec0:	88 4f 06 00 	mov	r15,	6(r8)	;

00006ec4 <.Loc.197.1>:
    6ec4:	4d 43       	clr.b	r13		;
    6ec6:	4c 4a       	mov.b	r10,	r12	;
    6ec8:	b0 12 f4 77 	call	#30708		;#0x77f4

00006ecc <.Loc.198.1>:
    6ecc:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00006ed0 <.Loc.199.1>:
    6ed0:	4e 47       	mov.b	r7,	r14	;
    6ed2:	4d 43       	clr.b	r13		;
    6ed4:	4c 4a       	mov.b	r10,	r12	;
    6ed6:	b0 12 48 78 	call	#30792		;#0x7848

00006eda <.Loc.200.1>:
    6eda:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

00006ede <.Loc.201.1>:
    6ede:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6ee0:	4d 43       	clr.b	r13		;
    6ee2:	4c 4a       	mov.b	r10,	r12	;
    6ee4:	b0 12 94 78 	call	#30868		;#0x7894

00006ee8 <.Loc.202.1>:
    6ee8:	b0 12 0c 6c 	call	#27660		;#0x6c0c

00006eec <.Loc.222.1>:
    6eec:	4c 43       	clr.b	r12		;
    6eee:	b0 12 f8 78 	call	#30968		;#0x78f8

00006ef2 <.Loc.223.1>:
    6ef2:	4c 43       	clr.b	r12		;
    6ef4:	b0 12 4c 7a 	call	#31308		;#0x7a4c

00006ef8 <.Loc.224.1>:
    6ef8:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006efc <.LCFI19>:
    6efc:	46 17       	popm	#5,	r10	;16-bit words

00006efe <.LCFI20>:
    6efe:	30 41       	ret			

00006f00 <.L98>:
    6f00:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006f02 <.Loc.194.1>:
    6f02:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6f04:	d6 3f       	jmp	$-82     	;abs 0x6eb2

00006f06 <.L99>:
    6f06:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006f08 <.Loc.194.1>:
    6f08:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6f0a:	d3 3f       	jmp	$-88     	;abs 0x6eb2

00006f0c <clear_xpr_status>:
    6f0c:	4d 4c       	mov.b	r12,	r13	;

00006f0e <.Loc.236.1>:
    6f0e:	5c 92 1a 1c 	cmp.b	&0x1c1a,r12	;0x1c1a
    6f12:	14 24       	jz	$+42     	;abs 0x6f3c

00006f14 <.Loc.237.1>:
    6f14:	c2 9d 24 1c 	cmp.b	r13,	&0x1c24	;
    6f18:	14 24       	jz	$+42     	;abs 0x6f42

00006f1a <.Loc.237.1>:
    6f1a:	c2 9d 2e 1c 	cmp.b	r13,	&0x1c2e	;
    6f1e:	01 24       	jz	$+4      	;abs 0x6f22

00006f20 <.Loc.246.1>:
    6f20:	30 41       	ret			

00006f22 <.L106>:
    6f22:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006f24 <.LVL69>:
    6f24:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006f26 <.L102>:
    6f26:	0d 4e       	mov	r14,	r13	;

00006f28 <.LVL71>:
    6f28:	5d 06       	rlam	#2,	r13	;
    6f2a:	0d 5e       	add	r14,	r13	;
    6f2c:	5d 02       	rlam	#1,	r13	;
    6f2e:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

00006f32 <.Loc.241.1>:
    6f32:	4e 43       	clr.b	r14		;
    6f34:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6f36:	b0 12 94 78 	call	#30868		;#0x7894

00006f3a <.Loc.242.1>:
    6f3a:	30 41       	ret			

00006f3c <.L104>:
    6f3c:	4c 43       	clr.b	r12		;

00006f3e <.LVL74>:
    6f3e:	4e 43       	clr.b	r14		;
    6f40:	f2 3f       	jmp	$-26     	;abs 0x6f26

00006f42 <.L105>:
    6f42:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006f44 <.LVL76>:
    6f44:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6f46:	ef 3f       	jmp	$-32     	;abs 0x6f26

00006f48 <unpack_xpr_to_local>:
    6f48:	2a 15       	pushm	#3,	r10	;16-bit words

00006f4a <.LCFI22>:
    6f4a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006f4e <.LCFI23>:
    6f4e:	49 43       	clr.b	r9		;
    6f50:	38 40 18 1c 	mov	#7192,	r8	;#0x1c18

00006f54 <.L108>:
    6f54:	0a 49       	mov	r9,	r10	;
    6f56:	5a 06       	rlam	#2,	r10	;
    6f58:	0a 59       	add	r9,	r10	;
    6f5a:	5a 02       	rlam	#1,	r10	;
    6f5c:	0a 58       	add	r8,	r10	;
    6f5e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6f60:	4d 49       	mov.b	r9,	r13	;
    6f62:	0c 41       	mov	r1,	r12	;
    6f64:	b0 12 90 7a 	call	#31376		;#0x7a90
    6f68:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6f6c:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6f70:	02 00 
    6f72:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6f76:	04 00 
    6f78:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6f7c:	06 00 
    6f7e:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6f82:	08 00 

00006f84 <.LVL80>:
    6f84:	19 53       	inc	r9		;

00006f86 <.Loc.252.1>:
    6f86:	39 90 03 00 	cmp	#3,	r9	;
    6f8a:	e4 23       	jnz	$-54     	;abs 0x6f54

00006f8c <.Loc.257.1>:
    6f8c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006f90 <.LCFI24>:
    6f90:	28 17       	popm	#3,	r10	;16-bit words

00006f92 <.LCFI25>:
    6f92:	30 41       	ret			

00006f94 <refresh_xpr_timers>:
    6f94:	4a 15       	pushm	#5,	r10	;16-bit words

00006f96 <.LCFI26>:
    6f96:	92 93 18 1c 	cmp	#1,	&0x1c18	;r3 As==01
    6f9a:	62 24       	jz	$+198    	;abs 0x7060

00006f9c <.Loc.265.1>:
    6f9c:	92 93 22 1c 	cmp	#1,	&0x1c22	;r3 As==01
    6fa0:	07 24       	jz	$+16     	;abs 0x6fb0

00006fa2 <.Loc.265.1>:
    6fa2:	92 93 2c 1c 	cmp	#1,	&0x1c2c	;r3 As==01
    6fa6:	15 25       	jz	$+556    	;abs 0x71d2

00006fa8 <.Loc.265.1>:
    6fa8:	b0 12 2e 77 	call	#30510		;#0x772e

00006fac <.Loc.313.1>:
    6fac:	46 17       	popm	#5,	r10	;16-bit words

00006fae <.LCFI27>:
    6fae:	30 41       	ret			

00006fb0 <.L160>:
    6fb0:	16 42 26 1c 	mov	&0x1c26,r6	;0x1c26
    6fb4:	17 42 28 1c 	mov	&0x1c28,r7	;0x1c28

00006fb8 <.LVL88>:
    6fb8:	5a 42 24 1c 	mov.b	&0x1c24,r10	;0x1c24

00006fbc <.LVL89>:
    6fbc:	08 46       	mov	r6,	r8	;
    6fbe:	09 47       	mov	r7,	r9	;

00006fc0 <.L125>:
    6fc0:	b0 12 90 77 	call	#30608		;#0x7790

00006fc4 <.Loc.278.1>:
    6fc4:	0e 46       	mov	r6,	r14	;
    6fc6:	0f 47       	mov	r7,	r15	;
    6fc8:	0e 8c       	sub	r12,	r14	;
    6fca:	0f 7d       	subc	r13,	r15	;

00006fcc <.Loc.278.1>:
    6fcc:	82 4e 26 1c 	mov	r14,	&0x1c26	;
    6fd0:	82 4f 28 1c 	mov	r15,	&0x1c28	;

00006fd4 <.Loc.279.1>:
    6fd4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6fd6:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6fd8:	b0 12 f4 77 	call	#30708		;#0x77f4

00006fdc <.Loc.281.1>:
    6fdc:	1d 42 26 1c 	mov	&0x1c26,r13	;0x1c26
    6fe0:	1c 42 28 1c 	mov	&0x1c28,r12	;0x1c28

00006fe4 <.Loc.281.1>:
    6fe4:	4e 43       	clr.b	r14		;
    6fe6:	0e 9c       	cmp	r12,	r14	;
    6fe8:	a2 34       	jge	$+326    	;abs 0x712e

00006fea <.L132>:
    6fea:	0c 99       	cmp	r9,	r12	;
    6fec:	04 38       	jl	$+10     	;abs 0x6ff6

00006fee <.L170>:
    6fee:	09 9c       	cmp	r12,	r9	;
    6ff0:	e5 20       	jnz	$+460    	;abs 0x71bc
    6ff2:	0d 98       	cmp	r8,	r13	;
    6ff4:	e3 2c       	jc	$+456    	;abs 0x71bc

00006ff6 <.L152>:
    6ff6:	5a 42 24 1c 	mov.b	&0x1c24,r10	;0x1c24

00006ffa <.L130>:
    6ffa:	08 4d       	mov	r13,	r8	;
    6ffc:	09 4c       	mov	r12,	r9	;

00006ffe <.L117>:
    6ffe:	16 42 30 1c 	mov	&0x1c30,r6	;0x1c30
    7002:	17 42 32 1c 	mov	&0x1c32,r7	;0x1c32

00007006 <.Loc.268.1>:
    7006:	92 93 2c 1c 	cmp	#1,	&0x1c2c	;r3 As==01
    700a:	1d 20       	jnz	$+60     	;abs 0x7046

0000700c <.L142>:
    700c:	b0 12 90 77 	call	#30608		;#0x7790

00007010 <.Loc.278.1>:
    7010:	0e 46       	mov	r6,	r14	;
    7012:	0f 47       	mov	r7,	r15	;
    7014:	0e 8c       	sub	r12,	r14	;
    7016:	0f 7d       	subc	r13,	r15	;

00007018 <.Loc.278.1>:
    7018:	82 4e 30 1c 	mov	r14,	&0x1c30	;
    701c:	82 4f 32 1c 	mov	r15,	&0x1c32	;

00007020 <.Loc.279.1>:
    7020:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7022:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7024:	b0 12 f4 77 	call	#30708		;#0x77f4

00007028 <.Loc.281.1>:
    7028:	1d 42 30 1c 	mov	&0x1c30,r13	;0x1c30
    702c:	1c 42 32 1c 	mov	&0x1c32,r12	;0x1c32

00007030 <.Loc.281.1>:
    7030:	4e 43       	clr.b	r14		;
    7032:	0e 9c       	cmp	r12,	r14	;
    7034:	4c 34       	jge	$+154    	;abs 0x70ce

00007036 <.L134>:
    7036:	0c 99       	cmp	r9,	r12	;
    7038:	76 38       	jl	$+238    	;abs 0x7126

0000703a <.L168>:
    703a:	09 9c       	cmp	r12,	r9	;
    703c:	02 20       	jnz	$+6      	;abs 0x7042
    703e:	0d 98       	cmp	r8,	r13	;
    7040:	72 28       	jnc	$+230    	;abs 0x7126

00007042 <.L139>:
    7042:	08 9d       	cmp	r13,	r8	;
    7044:	d8 24       	jz	$+434    	;abs 0x71f6

00007046 <.L137>:
    7046:	4d 4a       	mov.b	r10,	r13	;
    7048:	6c 43       	mov.b	#2,	r12	;r3 As==10
    704a:	b0 12 dc 78 	call	#30940		;#0x78dc

0000704e <.Loc.305.1>:
    704e:	0d 48       	mov	r8,	r13	;
    7050:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7052:	b0 12 ea 78 	call	#30954		;#0x78ea

00007056 <.Loc.308.1>:
    7056:	0c 48       	mov	r8,	r12	;
    7058:	b0 12 18 77 	call	#30488		;#0x7718

0000705c <.Loc.313.1>:
    705c:	46 17       	popm	#5,	r10	;16-bit words

0000705e <.LCFI29>:
    705e:	30 41       	ret			

00007060 <.L159>:
    7060:	18 42 1c 1c 	mov	&0x1c1c,r8	;0x1c1c
    7064:	19 42 1e 1c 	mov	&0x1c1e,r9	;0x1c1e

00007068 <.LVL103>:
    7068:	5a 42 1a 1c 	mov.b	&0x1c1a,r10	;0x1c1a

0000706c <.LVL104>:
    706c:	b0 12 90 77 	call	#30608		;#0x7790

00007070 <.LVL105>:
    7070:	0e 48       	mov	r8,	r14	;
    7072:	0f 49       	mov	r9,	r15	;
    7074:	0e 8c       	sub	r12,	r14	;
    7076:	0f 7d       	subc	r13,	r15	;

00007078 <.Loc.278.1>:
    7078:	82 4e 1c 1c 	mov	r14,	&0x1c1c	;
    707c:	82 4f 1e 1c 	mov	r15,	&0x1c1e	;

00007080 <.Loc.279.1>:
    7080:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7082:	4c 43       	clr.b	r12		;
    7084:	b0 12 f4 77 	call	#30708		;#0x77f4

00007088 <.Loc.281.1>:
    7088:	1d 42 1c 1c 	mov	&0x1c1c,r13	;0x1c1c
    708c:	1c 42 1e 1c 	mov	&0x1c1e,r12	;0x1c1e

00007090 <.Loc.281.1>:
    7090:	4e 43       	clr.b	r14		;
    7092:	0e 9c       	cmp	r12,	r14	;
    7094:	74 34       	jge	$+234    	;abs 0x717e

00007096 <.L121>:
    7096:	0c 99       	cmp	r9,	r12	;
    7098:	0c 34       	jge	$+26     	;abs 0x70b2

0000709a <.L151>:
    709a:	5a 42 1a 1c 	mov.b	&0x1c1a,r10	;0x1c1a

0000709e <.L119>:
    709e:	92 93 22 1c 	cmp	#1,	&0x1c22	;r3 As==01
    70a2:	ab 23       	jnz	$-168    	;abs 0x6ffa

000070a4 <.Loc.271.1>:
    70a4:	16 42 26 1c 	mov	&0x1c26,r6	;0x1c26
    70a8:	17 42 28 1c 	mov	&0x1c28,r7	;0x1c28

000070ac <.Loc.268.1>:
    70ac:	08 4d       	mov	r13,	r8	;
    70ae:	09 4c       	mov	r12,	r9	;
    70b0:	87 3f       	jmp	$-240    	;abs 0x6fc0

000070b2 <.L165>:
    70b2:	09 9c       	cmp	r12,	r9	;
    70b4:	02 20       	jnz	$+6      	;abs 0x70ba
    70b6:	0d 98       	cmp	r8,	r13	;
    70b8:	f0 2b       	jnc	$-30     	;abs 0x709a

000070ba <.L114>:
    70ba:	0d 98       	cmp	r8,	r13	;
    70bc:	93 24       	jz	$+296    	;abs 0x71e4

000070be <.L118>:
    70be:	92 93 22 1c 	cmp	#1,	&0x1c22	;r3 As==01
    70c2:	9d 23       	jnz	$-196    	;abs 0x6ffe

000070c4 <.Loc.271.1>:
    70c4:	16 42 26 1c 	mov	&0x1c26,r6	;0x1c26
    70c8:	17 42 28 1c 	mov	&0x1c28,r7	;0x1c28
    70cc:	79 3f       	jmp	$-268    	;abs 0x6fc0

000070ce <.L162>:
    70ce:	0c 93       	cmp	#0,	r12	;r3 As==00
    70d0:	02 20       	jnz	$+6      	;abs 0x70d6
    70d2:	0d 93       	cmp	#0,	r13	;r3 As==00
    70d4:	b0 23       	jnz	$-158    	;abs 0x7036

000070d6 <.L153>:
    70d6:	5c 42 2e 1c 	mov.b	&0x1c2e,r12	;0x1c2e
    70da:	b0 12 8c 69 	call	#27020		;#0x698c
    70de:	b0 12 32 69 	call	#26930		;#0x6932

000070e2 <.Loc.289.1>:
    70e2:	5c 42 2e 1c 	mov.b	&0x1c2e,r12	;0x1c2e

000070e6 <.LBB18>:
    70e6:	d2 92 2e 1c 	cmp.b	&0x1c2e,&0x1c1a	;0x1c2e
    70ea:	1a 1c 
    70ec:	8e 24       	jz	$+286    	;abs 0x720a

000070ee <.Loc.237.1>:
    70ee:	c2 9c 24 1c 	cmp.b	r12,	&0x1c24	;
    70f2:	91 24       	jz	$+292    	;abs 0x7216

000070f4 <.Loc.237.1>:
    70f4:	6c 43       	mov.b	#2,	r12	;r3 As==10

000070f6 <.Loc.239.1>:
    70f6:	6e 43       	mov.b	#2,	r14	;r3 As==10

000070f8 <.L136>:
    70f8:	0d 4e       	mov	r14,	r13	;
    70fa:	5d 06       	rlam	#2,	r13	;
    70fc:	0d 5e       	add	r14,	r13	;
    70fe:	5d 02       	rlam	#1,	r13	;
    7100:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

00007104 <.Loc.241.1>:
    7104:	4e 43       	clr.b	r14		;
    7106:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7108:	b0 12 94 78 	call	#30868		;#0x7894

0000710c <.LBE18>:
    710c:	1d 42 30 1c 	mov	&0x1c30,r13	;0x1c30
    7110:	1c 42 32 1c 	mov	&0x1c32,r12	;0x1c32

00007114 <.Loc.292.1>:
    7114:	4e 43       	clr.b	r14		;
    7116:	0e 9c       	cmp	r12,	r14	;
    7118:	8e 3b       	jl	$-226    	;abs 0x7036
    711a:	0c 93       	cmp	#0,	r12	;r3 As==00
    711c:	94 23       	jnz	$-214    	;abs 0x7046
    711e:	0d 93       	cmp	#0,	r13	;r3 As==00
    7120:	92 27       	jz	$-218    	;abs 0x7046

00007122 <.Loc.294.1>:
    7122:	0c 99       	cmp	r9,	r12	;
    7124:	8a 37       	jge	$-234    	;abs 0x703a

00007126 <.L154>:
    7126:	5a 42 2e 1c 	mov.b	&0x1c2e,r10	;0x1c2e

0000712a <.LVL117>:
    712a:	08 4d       	mov	r13,	r8	;
    712c:	8c 3f       	jmp	$-230    	;abs 0x7046

0000712e <.L161>:
    712e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7130:	02 20       	jnz	$+6      	;abs 0x7136
    7132:	0d 93       	cmp	#0,	r13	;r3 As==00
    7134:	5a 23       	jnz	$-330    	;abs 0x6fea

00007136 <.L126>:
    7136:	5c 42 24 1c 	mov.b	&0x1c24,r12	;0x1c24
    713a:	b0 12 8c 69 	call	#27020		;#0x698c
    713e:	b0 12 32 69 	call	#26930		;#0x6932

00007142 <.LVL120>:
    7142:	d2 92 1a 1c 	cmp.b	&0x1c1a,&0x1c24	;0x1c1a
    7146:	24 1c 
    7148:	63 24       	jz	$+200    	;abs 0x7210

0000714a <.Loc.237.1>:
    714a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000714c <.Loc.239.1>:
    714c:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000714e <.L131>:
    714e:	0d 4e       	mov	r14,	r13	;
    7150:	5d 06       	rlam	#2,	r13	;
    7152:	0d 5e       	add	r14,	r13	;
    7154:	5d 02       	rlam	#1,	r13	;
    7156:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

0000715a <.Loc.241.1>:
    715a:	4e 43       	clr.b	r14		;
    715c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    715e:	b0 12 94 78 	call	#30868		;#0x7894

00007162 <.LVL122>:
    7162:	1d 42 26 1c 	mov	&0x1c26,r13	;0x1c26
    7166:	1c 42 28 1c 	mov	&0x1c28,r12	;0x1c28

0000716a <.Loc.292.1>:
    716a:	4e 43       	clr.b	r14		;
    716c:	0e 9c       	cmp	r12,	r14	;
    716e:	3d 3b       	jl	$-388    	;abs 0x6fea
    7170:	0c 93       	cmp	#0,	r12	;r3 As==00
    7172:	45 23       	jnz	$-372    	;abs 0x6ffe
    7174:	0d 93       	cmp	#0,	r13	;r3 As==00
    7176:	43 27       	jz	$-376    	;abs 0x6ffe

00007178 <.Loc.294.1>:
    7178:	0c 99       	cmp	r9,	r12	;
    717a:	3d 3b       	jl	$-388    	;abs 0x6ff6
    717c:	38 3f       	jmp	$-398    	;abs 0x6fee

0000717e <.L164>:
    717e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7180:	02 20       	jnz	$+6      	;abs 0x7186
    7182:	0d 93       	cmp	#0,	r13	;r3 As==00
    7184:	88 23       	jnz	$-238    	;abs 0x7096

00007186 <.L112>:
    7186:	5c 42 1a 1c 	mov.b	&0x1c1a,r12	;0x1c1a
    718a:	b0 12 8c 69 	call	#27020		;#0x698c
    718e:	b0 12 32 69 	call	#26930		;#0x6932

00007192 <.LVL125>:
    7192:	82 43 18 1c 	mov	#0,	&0x1c18	;r3 As==00

00007196 <.Loc.241.1>:
    7196:	4e 43       	clr.b	r14		;
    7198:	6d 43       	mov.b	#2,	r13	;r3 As==10
    719a:	4c 43       	clr.b	r12		;
    719c:	b0 12 94 78 	call	#30868		;#0x7894

000071a0 <.LVL126>:
    71a0:	1d 42 1c 1c 	mov	&0x1c1c,r13	;0x1c1c
    71a4:	1c 42 1e 1c 	mov	&0x1c1e,r12	;0x1c1e

000071a8 <.Loc.292.1>:
    71a8:	4e 43       	clr.b	r14		;
    71aa:	0e 9c       	cmp	r12,	r14	;
    71ac:	74 3b       	jl	$-278    	;abs 0x7096
    71ae:	0c 93       	cmp	#0,	r12	;r3 As==00
    71b0:	86 23       	jnz	$-242    	;abs 0x70be
    71b2:	0d 93       	cmp	#0,	r13	;r3 As==00
    71b4:	84 27       	jz	$-246    	;abs 0x70be

000071b6 <.Loc.294.1>:
    71b6:	0c 99       	cmp	r9,	r12	;
    71b8:	70 3b       	jl	$-286    	;abs 0x709a
    71ba:	7b 3f       	jmp	$-264    	;abs 0x70b2

000071bc <.L128>:
    71bc:	08 9d       	cmp	r13,	r8	;
    71be:	1f 23       	jnz	$-448    	;abs 0x6ffe
    71c0:	09 9c       	cmp	r12,	r9	;
    71c2:	1d 23       	jnz	$-452    	;abs 0x6ffe

000071c4 <.Loc.294.1>:
    71c4:	5e 42 24 1c 	mov.b	&0x1c24,r14	;0x1c24

000071c8 <.Loc.294.1>:
    71c8:	5a 92 24 1c 	cmp.b	&0x1c24,r10	;0x1c24
    71cc:	18 2f       	jc	$-462    	;abs 0x6ffe
    71ce:	0a 4e       	mov	r14,	r10	;

000071d0 <.LVL128>:
    71d0:	14 3f       	jmp	$-470    	;abs 0x6ffa

000071d2 <.L143>:
    71d2:	16 42 30 1c 	mov	&0x1c30,r6	;0x1c30
    71d6:	17 42 32 1c 	mov	&0x1c32,r7	;0x1c32

000071da <.LVL130>:
    71da:	5a 42 2e 1c 	mov.b	&0x1c2e,r10	;0x1c2e

000071de <.LVL131>:
    71de:	08 46       	mov	r6,	r8	;
    71e0:	09 47       	mov	r7,	r9	;
    71e2:	14 3f       	jmp	$-470    	;abs 0x700c

000071e4 <.L166>:
    71e4:	0c 99       	cmp	r9,	r12	;
    71e6:	6b 23       	jnz	$-296    	;abs 0x70be

000071e8 <.Loc.294.1>:
    71e8:	5e 42 1a 1c 	mov.b	&0x1c1a,r14	;0x1c1a

000071ec <.Loc.294.1>:
    71ec:	5a 92 1a 1c 	cmp.b	&0x1c1a,r10	;0x1c1a
    71f0:	66 2f       	jc	$-306    	;abs 0x70be
    71f2:	0a 4e       	mov	r14,	r10	;

000071f4 <.LVL133>:
    71f4:	54 3f       	jmp	$-342    	;abs 0x709e

000071f6 <.L163>:
    71f6:	09 9c       	cmp	r12,	r9	;
    71f8:	26 23       	jnz	$-434    	;abs 0x7046

000071fa <.Loc.294.1>:
    71fa:	5c 42 2e 1c 	mov.b	&0x1c2e,r12	;0x1c2e

000071fe <.Loc.294.1>:
    71fe:	5a 92 2e 1c 	cmp.b	&0x1c2e,r10	;0x1c2e
    7202:	21 2f       	jc	$-444    	;abs 0x7046
    7204:	0a 4c       	mov	r12,	r10	;

00007206 <.LVL135>:
    7206:	08 4d       	mov	r13,	r8	;
    7208:	1e 3f       	jmp	$-450    	;abs 0x7046

0000720a <.L149>:
    720a:	4c 43       	clr.b	r12		;

0000720c <.Loc.239.1>:
    720c:	4e 43       	clr.b	r14		;
    720e:	74 3f       	jmp	$-278    	;abs 0x70f8

00007210 <.L169>:
    7210:	4c 43       	clr.b	r12		;

00007212 <.Loc.239.1>:
    7212:	4e 43       	clr.b	r14		;
    7214:	9c 3f       	jmp	$-198    	;abs 0x714e

00007216 <.L167>:
    7216:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007218 <.Loc.239.1>:
    7218:	5e 43       	mov.b	#1,	r14	;r3 As==01
    721a:	6e 3f       	jmp	$-290    	;abs 0x70f8

0000721c <set_expire_timer>:
    721c:	5a 15       	pushm	#6,	r10	;16-bit words

0000721e <.LCFI31>:
    721e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007222 <.LCFI32>:
    7222:	47 4c       	mov.b	r12,	r7	;
    7224:	08 4d       	mov	r13,	r8	;
    7226:	06 4e       	mov	r14,	r6	;

00007228 <.LBB26>:
    7228:	45 43       	clr.b	r5		;
    722a:	39 40 18 1c 	mov	#7192,	r9	;#0x1c18

0000722e <.L172>:
    722e:	0a 45       	mov	r5,	r10	;
    7230:	5a 06       	rlam	#2,	r10	;
    7232:	0a 55       	add	r5,	r10	;
    7234:	5a 02       	rlam	#1,	r10	;
    7236:	0a 59       	add	r9,	r10	;
    7238:	6e 43       	mov.b	#2,	r14	;r3 As==10
    723a:	4d 45       	mov.b	r5,	r13	;
    723c:	0c 41       	mov	r1,	r12	;
    723e:	b0 12 90 7a 	call	#31376		;#0x7a90
    7242:	aa 41 00 00 	mov	@r1,	0(r10)	;
    7246:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    724a:	02 00 
    724c:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    7250:	04 00 
    7252:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7256:	06 00 
    7258:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    725c:	08 00 

0000725e <.LVL143>:
    725e:	15 53       	inc	r5		;

00007260 <.Loc.252.1>:
    7260:	35 90 03 00 	cmp	#3,	r5	;
    7264:	e4 23       	jnz	$-54     	;abs 0x722e

00007266 <.Loc.324.1>:
    7266:	82 93 18 1c 	cmp	#0,	&0x1c18	;r3 As==00
    726a:	1d 24       	jz	$+60     	;abs 0x72a6

0000726c <.Loc.324.1>:
    726c:	82 93 22 1c 	cmp	#0,	&0x1c22	;r3 As==00
    7270:	4e 24       	jz	$+158    	;abs 0x730e

00007272 <.Loc.324.1>:
    7272:	82 93 2c 1c 	cmp	#0,	&0x1c2c	;r3 As==00
    7276:	4e 24       	jz	$+158    	;abs 0x7314

00007278 <.Loc.324.1>:
    7278:	0e 48       	mov	r8,	r14	;
    727a:	0f 46       	mov	r6,	r15	;
    727c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    727e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7280:	b0 12 f4 77 	call	#30708		;#0x77f4

00007284 <.Loc.348.1>:
    7284:	4e 47       	mov.b	r7,	r14	;
    7286:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7288:	6c 43       	mov.b	#2,	r12	;r3 As==10
    728a:	b0 12 48 78 	call	#30792		;#0x7848

0000728e <.Loc.349.1>:
    728e:	b0 12 94 6f 	call	#28564		;#0x6f94

00007292 <.Loc.352.1>:
    7292:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7294:	b0 12 f8 78 	call	#30968		;#0x78f8

00007298 <.Loc.353.1>:
    7298:	6c 43       	mov.b	#2,	r12	;r3 As==10
    729a:	b0 12 4c 7a 	call	#31308		;#0x7a4c

0000729e <.Loc.354.1>:
    729e:	31 50 0a 00 	add	#10,	r1	;#0x000a

000072a2 <.LCFI33>:
    72a2:	55 17       	popm	#6,	r10	;16-bit words

000072a4 <.LCFI34>:
    72a4:	30 41       	ret			

000072a6 <.L175>:
    72a6:	1a 42 18 1c 	mov	&0x1c18,r10	;0x1c18

000072aa <.Loc.326.1>:
    72aa:	05 4a       	mov	r10,	r5	;

000072ac <.L173>:
    72ac:	b0 12 90 77 	call	#30608		;#0x7790

000072b0 <.Loc.328.1>:
    72b0:	0e 45       	mov	r5,	r14	;
    72b2:	5e 06       	rlam	#2,	r14	;
    72b4:	0e 55       	add	r5,	r14	;
    72b6:	5e 02       	rlam	#1,	r14	;
    72b8:	09 5e       	add	r14,	r9	;

000072ba <.Loc.328.1>:
    72ba:	0c 58       	add	r8,	r12	;
    72bc:	89 4c 04 00 	mov	r12,	4(r9)	;
    72c0:	0d 66       	addc	r6,	r13	;
    72c2:	89 4d 06 00 	mov	r13,	6(r9)	;

000072c6 <.Loc.329.1>:
    72c6:	b0 12 90 77 	call	#30608		;#0x7790

000072ca <.Loc.329.1>:
    72ca:	0e 4c       	mov	r12,	r14	;
    72cc:	0e 58       	add	r8,	r14	;
    72ce:	0f 4d       	mov	r13,	r15	;
    72d0:	0f 66       	addc	r6,	r15	;
    72d2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    72d4:	4c 4a       	mov.b	r10,	r12	;
    72d6:	b0 12 f4 77 	call	#30708		;#0x77f4

000072da <.Loc.330.1>:
    72da:	c9 47 02 00 	mov.b	r7,	2(r9)	;

000072de <.Loc.331.1>:
    72de:	4e 47       	mov.b	r7,	r14	;
    72e0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    72e2:	4c 4a       	mov.b	r10,	r12	;
    72e4:	b0 12 48 78 	call	#30792		;#0x7848

000072e8 <.Loc.332.1>:
    72e8:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

000072ec <.Loc.333.1>:
    72ec:	5e 43       	mov.b	#1,	r14	;r3 As==01
    72ee:	6d 43       	mov.b	#2,	r13	;r3 As==10
    72f0:	4c 4a       	mov.b	r10,	r12	;
    72f2:	b0 12 94 78 	call	#30868		;#0x7894

000072f6 <.Loc.334.1>:
    72f6:	b0 12 94 6f 	call	#28564		;#0x6f94

000072fa <.Loc.352.1>:
    72fa:	6c 43       	mov.b	#2,	r12	;r3 As==10
    72fc:	b0 12 f8 78 	call	#30968		;#0x78f8

00007300 <.Loc.353.1>:
    7300:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7302:	b0 12 4c 7a 	call	#31308		;#0x7a4c

00007306 <.Loc.354.1>:
    7306:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000730a <.LCFI36>:
    730a:	55 17       	popm	#6,	r10	;16-bit words

0000730c <.LCFI37>:
    730c:	30 41       	ret			

0000730e <.L176>:
    730e:	5a 43       	mov.b	#1,	r10	;r3 As==01

00007310 <.Loc.326.1>:
    7310:	55 43       	mov.b	#1,	r5	;r3 As==01
    7312:	cc 3f       	jmp	$-102    	;abs 0x72ac

00007314 <.L177>:
    7314:	6a 43       	mov.b	#2,	r10	;r3 As==10

00007316 <.Loc.326.1>:
    7316:	65 43       	mov.b	#2,	r5	;r3 As==10
    7318:	c9 3f       	jmp	$-108    	;abs 0x72ac

0000731a <stop_expire_timer>:
    731a:	3a 15       	pushm	#4,	r10	;16-bit words

0000731c <.LCFI39>:
    731c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007320 <.LCFI40>:
    7320:	47 4c       	mov.b	r12,	r7	;

00007322 <.LBB34>:
    7322:	49 43       	clr.b	r9		;
    7324:	38 40 18 1c 	mov	#7192,	r8	;#0x1c18

00007328 <.L180>:
    7328:	0a 49       	mov	r9,	r10	;
    732a:	5a 06       	rlam	#2,	r10	;
    732c:	0a 59       	add	r9,	r10	;
    732e:	5a 02       	rlam	#1,	r10	;
    7330:	0a 58       	add	r8,	r10	;
    7332:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7334:	4d 49       	mov.b	r9,	r13	;
    7336:	0c 41       	mov	r1,	r12	;
    7338:	b0 12 90 7a 	call	#31376		;#0x7a90
    733c:	aa 41 00 00 	mov	@r1,	0(r10)	;
    7340:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7344:	02 00 
    7346:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    734a:	04 00 
    734c:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7350:	06 00 
    7352:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7356:	08 00 

00007358 <.LVL170>:
    7358:	19 53       	inc	r9		;

0000735a <.Loc.252.1>:
    735a:	39 90 03 00 	cmp	#3,	r9	;
    735e:	e4 23       	jnz	$-54     	;abs 0x7328

00007360 <.LBB38>:
    7360:	c2 97 1a 1c 	cmp.b	r7,	&0x1c1a	;
    7364:	12 24       	jz	$+38     	;abs 0x738a

00007366 <.Loc.237.1>:
    7366:	c2 97 24 1c 	cmp.b	r7,	&0x1c24	;
    736a:	27 24       	jz	$+80     	;abs 0x73ba

0000736c <.Loc.237.1>:
    736c:	c2 97 2e 1c 	cmp.b	r7,	&0x1c2e	;
    7370:	27 24       	jz	$+80     	;abs 0x73c0

00007372 <.LBE38>:
    7372:	b0 12 94 6f 	call	#28564		;#0x6f94

00007376 <.Loc.368.1>:
    7376:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7378:	b0 12 f8 78 	call	#30968		;#0x78f8

0000737c <.Loc.369.1>:
    737c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    737e:	b0 12 4c 7a 	call	#31308		;#0x7a4c

00007382 <.Loc.371.1>:
    7382:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007386 <.LCFI41>:
    7386:	37 17       	popm	#4,	r10	;16-bit words

00007388 <.LCFI42>:
    7388:	30 41       	ret			

0000738a <.L183>:
    738a:	4c 43       	clr.b	r12		;

0000738c <.Loc.239.1>:
    738c:	4e 43       	clr.b	r14		;

0000738e <.L181>:
    738e:	0d 4e       	mov	r14,	r13	;
    7390:	5d 06       	rlam	#2,	r13	;
    7392:	0d 5e       	add	r14,	r13	;
    7394:	5d 02       	rlam	#1,	r13	;
    7396:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

0000739a <.Loc.241.1>:
    739a:	4e 43       	clr.b	r14		;
    739c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    739e:	b0 12 94 78 	call	#30868		;#0x7894

000073a2 <.Loc.242.1>:
    73a2:	b0 12 94 6f 	call	#28564		;#0x6f94

000073a6 <.Loc.368.1>:
    73a6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    73a8:	b0 12 f8 78 	call	#30968		;#0x78f8

000073ac <.Loc.369.1>:
    73ac:	6c 43       	mov.b	#2,	r12	;r3 As==10
    73ae:	b0 12 4c 7a 	call	#31308		;#0x7a4c

000073b2 <.Loc.371.1>:
    73b2:	31 50 0a 00 	add	#10,	r1	;#0x000a

000073b6 <.LCFI44>:
    73b6:	37 17       	popm	#4,	r10	;16-bit words

000073b8 <.LCFI45>:
    73b8:	30 41       	ret			

000073ba <.L184>:
    73ba:	5c 43       	mov.b	#1,	r12	;r3 As==01

000073bc <.Loc.239.1>:
    73bc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    73be:	e7 3f       	jmp	$-48     	;abs 0x738e

000073c0 <.L186>:
    73c0:	6c 43       	mov.b	#2,	r12	;r3 As==10

000073c2 <.Loc.239.1>:
    73c2:	6e 43       	mov.b	#2,	r14	;r3 As==10
    73c4:	e4 3f       	jmp	$-54     	;abs 0x738e

000073c6 <unpack_pdc_to_local>:
    73c6:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000073ca <.LCFI47>:
    73ca:	5e 43       	mov.b	#1,	r14	;r3 As==01
    73cc:	4d 43       	clr.b	r13		;
    73ce:	0c 41       	mov	r1,	r12	;
    73d0:	b0 12 90 7a 	call	#31376		;#0x7a90
    73d4:	a2 41 0e 1c 	mov	@r1,	&0x1c0e	;
    73d8:	92 41 02 00 	mov	2(r1),	&0x1c10	;
    73dc:	10 1c 
    73de:	92 41 04 00 	mov	4(r1),	&0x1c12	;
    73e2:	12 1c 
    73e4:	92 41 06 00 	mov	6(r1),	&0x1c14	;
    73e8:	14 1c 
    73ea:	92 41 08 00 	mov	8(r1),	&0x1c16	;
    73ee:	16 1c 

000073f0 <.Loc.383.1>:
    73f0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000073f4 <.LCFI48>:
    73f4:	30 41       	ret			

000073f6 <refresh_pdc_timers>:
    73f6:	2a 15       	pushm	#3,	r10	;16-bit words

000073f8 <.LCFI49>:
    73f8:	92 93 0e 1c 	cmp	#1,	&0x1c0e	;r3 As==01
    73fc:	8a 20       	jnz	$+278    	;abs 0x7512

000073fe <.Loc.463.1>:
    73fe:	18 42 12 1c 	mov	&0x1c12,r8	;0x1c12
    7402:	19 42 14 1c 	mov	&0x1c14,r9	;0x1c14

00007406 <.Loc.465.1>:
    7406:	82 48 54 1c 	mov	r8,	&0x1c54	;

0000740a <.Loc.466.1>:
    740a:	d2 42 10 1c 	mov.b	&0x1c10,&0x1c56	;0x1c10
    740e:	56 1c 

00007410 <.Loc.467.1>:
    7410:	b0 12 90 77 	call	#30608		;#0x7790

00007414 <.Loc.471.1>:
    7414:	0e 48       	mov	r8,	r14	;
    7416:	0f 49       	mov	r9,	r15	;
    7418:	0e 8c       	sub	r12,	r14	;
    741a:	0f 7d       	subc	r13,	r15	;

0000741c <.Loc.471.1>:
    741c:	82 4e 12 1c 	mov	r14,	&0x1c12	;
    7420:	82 4f 14 1c 	mov	r15,	&0x1c14	;

00007424 <.Loc.472.1>:
    7424:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7426:	4c 43       	clr.b	r12		;
    7428:	b0 12 f4 77 	call	#30708		;#0x77f4

0000742c <.Loc.474.1>:
    742c:	1c 42 12 1c 	mov	&0x1c12,r12	;0x1c12
    7430:	1d 42 14 1c 	mov	&0x1c14,r13	;0x1c14

00007434 <.Loc.474.1>:
    7434:	0d 93       	cmp	#0,	r13	;r3 As==00
    7436:	21 38       	jl	$+68     	;abs 0x747a

00007438 <.Loc.481.1>:
    7438:	0f 4c       	mov	r12,	r15	;
    743a:	0f dd       	bis	r13,	r15	;
    743c:	0f 93       	cmp	#0,	r15	;r3 As==00
    743e:	6d 24       	jz	$+220    	;abs 0x751a

00007440 <.Loc.485.1>:
    7440:	1f 42 54 1c 	mov	&0x1c54,r15	;0x1c54
    7444:	08 4f       	mov	r15,	r8	;
    7446:	09 43       	clr	r9		;

00007448 <.Loc.485.1>:
    7448:	0d 93       	cmp	#0,	r13	;r3 As==00
    744a:	54 38       	jl	$+170    	;abs 0x74f4
    744c:	0d 93       	cmp	#0,	r13	;r3 As==00
    744e:	02 20       	jnz	$+6      	;abs 0x7454
    7450:	0c 98       	cmp	r8,	r12	;
    7452:	50 28       	jnc	$+162    	;abs 0x74f4

00007454 <.L209>:
    7454:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56

00007458 <.Loc.485.1>:
    7458:	0c 98       	cmp	r8,	r12	;
    745a:	53 24       	jz	$+168    	;abs 0x7502

0000745c <.L197>:
    745c:	4d 4e       	mov.b	r14,	r13	;
    745e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7460:	b0 12 dc 78 	call	#30940		;#0x78dc

00007464 <.Loc.497.1>:
    7464:	1d 42 54 1c 	mov	&0x1c54,r13	;0x1c54
    7468:	5c 43       	mov.b	#1,	r12	;r3 As==01
    746a:	b0 12 ea 78 	call	#30954		;#0x78ea

0000746e <.Loc.500.1>:
    746e:	1c 42 54 1c 	mov	&0x1c54,r12	;0x1c54
    7472:	b0 12 38 77 	call	#30520		;#0x7738

00007476 <.Loc.507.1>:
    7476:	28 17       	popm	#3,	r10	;16-bit words

00007478 <.LCFI50>:
    7478:	30 41       	ret			

0000747a <.L210>:
    747a:	59 42 5f 1c 	mov.b	&0x1c5f,r9	;0x1c5f
    747e:	0f 43       	clr	r15		;
    7480:	0f 89       	sub	r9,	r15	;
    7482:	08 4f       	mov	r15,	r8	;
    7484:	09 4f       	mov	r15,	r9	;
    7486:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

0000748a <.Loc.474.1>:
    748a:	09 9d       	cmp	r13,	r9	;
    748c:	04 38       	jl	$+10     	;abs 0x7496

0000748e <.Loc.474.1>:
    748e:	0d 99       	cmp	r9,	r13	;
    7490:	25 20       	jnz	$+76     	;abs 0x74dc
    7492:	0f 9c       	cmp	r12,	r15	;
    7494:	23 2c       	jc	$+72     	;abs 0x74dc

00007496 <.L206>:
    7496:	1e 42 54 1c 	mov	&0x1c54,r14	;0x1c54
    749a:	0a 4e       	mov	r14,	r10	;
    749c:	0b 43       	clr	r11		;

0000749e <.Loc.476.1>:
    749e:	48 43       	clr.b	r8		;
    74a0:	49 43       	clr.b	r9		;
    74a2:	08 8c       	sub	r12,	r8	;
    74a4:	09 7d       	subc	r13,	r9	;

000074a6 <.Loc.476.1>:
    74a6:	09 93       	cmp	#0,	r9	;r3 As==00
    74a8:	04 38       	jl	$+10     	;abs 0x74b2
    74aa:	09 93       	cmp	#0,	r9	;r3 As==00
    74ac:	0b 20       	jnz	$+24     	;abs 0x74c4
    74ae:	08 9a       	cmp	r10,	r8	;
    74b0:	09 2c       	jc	$+20     	;abs 0x74c4

000074b2 <.L207>:
    74b2:	5e 42 10 1c 	mov.b	&0x1c10,r14	;0x1c10

000074b6 <.L196>:
    74b6:	4f 43       	clr.b	r15		;
    74b8:	0f 8c       	sub	r12,	r15	;
    74ba:	82 4f 54 1c 	mov	r15,	&0x1c54	;

000074be <.Loc.479.1>:
    74be:	c2 4e 56 1c 	mov.b	r14,	&0x1c56	;

000074c2 <.Loc.494.1>:
    74c2:	cc 3f       	jmp	$-102    	;abs 0x745c

000074c4 <.L194>:
    74c4:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56

000074c8 <.Loc.476.1>:
    74c8:	0a 98       	cmp	r8,	r10	;
    74ca:	c8 23       	jnz	$-110    	;abs 0x745c
    74cc:	09 93       	cmp	#0,	r9	;r3 As==00
    74ce:	c6 23       	jnz	$-114    	;abs 0x745c

000074d0 <.Loc.476.1>:
    74d0:	5f 42 10 1c 	mov.b	&0x1c10,r15	;0x1c10

000074d4 <.Loc.476.1>:
    74d4:	4f 9e       	cmp.b	r14,	r15	;
    74d6:	c2 2f       	jc	$-122    	;abs 0x745c
    74d8:	0e 4f       	mov	r15,	r14	;
    74da:	ed 3f       	jmp	$-36     	;abs 0x74b6

000074dc <.L192>:
    74dc:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56

000074e0 <.Loc.481.1>:
    74e0:	0d 99       	cmp	r9,	r13	;
    74e2:	05 38       	jl	$+12     	;abs 0x74ee
    74e4:	0a 49       	mov	r9,	r10	;
    74e6:	09 9d       	cmp	r13,	r9	;
    74e8:	b9 23       	jnz	$-140    	;abs 0x745c
    74ea:	0c 9f       	cmp	r15,	r12	;
    74ec:	b7 2f       	jc	$-144    	;abs 0x745c

000074ee <.L208>:
    74ee:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

000074f2 <.Loc.494.1>:
    74f2:	b4 3f       	jmp	$-150    	;abs 0x745c

000074f4 <.L201>:
    74f4:	5e 42 10 1c 	mov.b	&0x1c10,r14	;0x1c10

000074f8 <.L203>:
    74f8:	82 4c 54 1c 	mov	r12,	&0x1c54	;

000074fc <.Loc.488.1>:
    74fc:	c2 4e 56 1c 	mov.b	r14,	&0x1c56	;

00007500 <.Loc.494.1>:
    7500:	ad 3f       	jmp	$-164    	;abs 0x745c

00007502 <.L211>:
    7502:	0d 99       	cmp	r9,	r13	;
    7504:	ab 23       	jnz	$-168    	;abs 0x745c

00007506 <.Loc.485.1>:
    7506:	5f 42 10 1c 	mov.b	&0x1c10,r15	;0x1c10

0000750a <.Loc.485.1>:
    750a:	4f 9e       	cmp.b	r14,	r15	;
    750c:	a7 2f       	jc	$-176    	;abs 0x745c
    750e:	0e 4f       	mov	r15,	r14	;
    7510:	f3 3f       	jmp	$-24     	;abs 0x74f8

00007512 <.L189>:
    7512:	b0 12 ee 76 	call	#30446		;#0x76ee

00007516 <.Loc.507.1>:
    7516:	28 17       	popm	#3,	r10	;16-bit words

00007518 <.LCFI52>:
    7518:	30 41       	ret			

0000751a <.L199>:
    751a:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56
    751e:	9e 3f       	jmp	$-194    	;abs 0x745c

00007520 <set_periodic_timer>:
    7520:	1a 15       	pushm	#2,	r10	;16-bit words

00007522 <.LCFI54>:
    7522:	17 15       	pushm	#2,	r7	;16-bit words

00007524 <.LCFI55>:
    7524:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007528 <.LCFI56>:
    7528:	49 4c       	mov.b	r12,	r9	;
    752a:	0a 4d       	mov	r13,	r10	;

0000752c <.LBB44>:
    752c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    752e:	4d 43       	clr.b	r13		;

00007530 <.LVL210>:
    7530:	0c 41       	mov	r1,	r12	;

00007532 <.LVL211>:
    7532:	b0 12 90 7a 	call	#31376		;#0x7a90
    7536:	a2 41 0e 1c 	mov	@r1,	&0x1c0e	;
    753a:	92 41 02 00 	mov	2(r1),	&0x1c10	;
    753e:	10 1c 
    7540:	92 41 04 00 	mov	4(r1),	&0x1c12	;
    7544:	12 1c 
    7546:	92 41 06 00 	mov	6(r1),	&0x1c14	;
    754a:	14 1c 
    754c:	92 41 08 00 	mov	8(r1),	&0x1c16	;
    7550:	16 1c 

00007552 <.LBE44>:
    7552:	06 4a       	mov	r10,	r6	;
    7554:	07 43       	clr	r7		;

00007556 <.Loc.401.1>:
    7556:	82 93 0e 1c 	cmp	#0,	&0x1c0e	;r3 As==00
    755a:	31 20       	jnz	$+100    	;abs 0x75be

0000755c <.Loc.403.1>:
    755c:	4c 49       	mov.b	r9,	r12	;
    755e:	b0 12 8c 69 	call	#27020		;#0x698c
    7562:	0d 4a       	mov	r10,	r13	;
    7564:	b0 12 58 69 	call	#26968		;#0x6958

00007568 <.Loc.404.1>:
    7568:	4c 49       	mov.b	r9,	r12	;
    756a:	b0 12 8c 69 	call	#27020		;#0x698c
    756e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7570:	b0 12 5e 69 	call	#26974		;#0x695e

00007574 <.Loc.405.1>:
    7574:	0e 46       	mov	r6,	r14	;
    7576:	0f 47       	mov	r7,	r15	;
    7578:	5d 43       	mov.b	#1,	r13	;r3 As==01
    757a:	4c 43       	clr.b	r12		;
    757c:	b0 12 f4 77 	call	#30708		;#0x77f4

00007580 <.Loc.406.1>:
    7580:	82 46 12 1c 	mov	r6,	&0x1c12	;
    7584:	82 47 14 1c 	mov	r7,	&0x1c14	;

00007588 <.Loc.407.1>:
    7588:	4e 49       	mov.b	r9,	r14	;
    758a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    758c:	4c 43       	clr.b	r12		;
    758e:	b0 12 48 78 	call	#30792		;#0x7848

00007592 <.Loc.408.1>:
    7592:	c2 49 10 1c 	mov.b	r9,	&0x1c10	;

00007596 <.Loc.409.1>:
    7596:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7598:	5d 43       	mov.b	#1,	r13	;r3 As==01
    759a:	4c 43       	clr.b	r12		;
    759c:	b0 12 94 78 	call	#30868		;#0x7894

000075a0 <.Loc.410.1>:
    75a0:	92 43 0e 1c 	mov	#1,	&0x1c0e	;r3 As==01

000075a4 <.Loc.411.1>:
    75a4:	b0 12 f6 73 	call	#29686		;#0x73f6

000075a8 <.Loc.433.1>:
    75a8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    75aa:	b0 12 f8 78 	call	#30968		;#0x78f8

000075ae <.Loc.434.1>:
    75ae:	5c 43       	mov.b	#1,	r12	;r3 As==01
    75b0:	b0 12 4c 7a 	call	#31308		;#0x7a4c

000075b4 <.Loc.435.1>:
    75b4:	31 50 0a 00 	add	#10,	r1	;#0x000a

000075b8 <.LCFI57>:
    75b8:	16 17       	popm	#2,	r7	;16-bit words

000075ba <.LCFI58>:
    75ba:	19 17       	popm	#2,	r10	;16-bit words

000075bc <.LCFI59>:
    75bc:	30 41       	ret			

000075be <.L213>:
    75be:	82 46 12 1c 	mov	r6,	&0x1c12	;
    75c2:	82 47 14 1c 	mov	r7,	&0x1c14	;

000075c6 <.Loc.426.1>:
    75c6:	0e 46       	mov	r6,	r14	;
    75c8:	0f 47       	mov	r7,	r15	;
    75ca:	5d 43       	mov.b	#1,	r13	;r3 As==01
    75cc:	4c 43       	clr.b	r12		;
    75ce:	b0 12 f4 77 	call	#30708		;#0x77f4

000075d2 <.Loc.427.1>:
    75d2:	c2 49 10 1c 	mov.b	r9,	&0x1c10	;

000075d6 <.Loc.428.1>:
    75d6:	4e 49       	mov.b	r9,	r14	;
    75d8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    75da:	4c 43       	clr.b	r12		;
    75dc:	b0 12 48 78 	call	#30792		;#0x7848

000075e0 <.Loc.430.1>:
    75e0:	b0 12 f6 73 	call	#29686		;#0x73f6

000075e4 <.Loc.433.1>:
    75e4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    75e6:	b0 12 f8 78 	call	#30968		;#0x78f8

000075ea <.Loc.434.1>:
    75ea:	5c 43       	mov.b	#1,	r12	;r3 As==01
    75ec:	b0 12 4c 7a 	call	#31308		;#0x7a4c

000075f0 <.Loc.435.1>:
    75f0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000075f4 <.LCFI61>:
    75f4:	16 17       	popm	#2,	r7	;16-bit words

000075f6 <.LCFI62>:
    75f6:	19 17       	popm	#2,	r10	;16-bit words

000075f8 <.LCFI63>:
    75f8:	30 41       	ret			

000075fa <stop_periodic_timer>:
    75fa:	0a 15       	pushm	#1,	r10	;16-bit words

000075fc <.LCFI64>:
    75fc:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007600 <.LCFI65>:
    7600:	4a 4c       	mov.b	r12,	r10	;

00007602 <.LBB50>:
    7602:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7604:	4d 43       	clr.b	r13		;
    7606:	0c 41       	mov	r1,	r12	;

00007608 <.LVL233>:
    7608:	b0 12 90 7a 	call	#31376		;#0x7a90
    760c:	a2 41 0e 1c 	mov	@r1,	&0x1c0e	;
    7610:	92 41 02 00 	mov	2(r1),	&0x1c10	;
    7614:	10 1c 
    7616:	92 41 04 00 	mov	4(r1),	&0x1c12	;
    761a:	12 1c 
    761c:	92 41 06 00 	mov	6(r1),	&0x1c14	;
    7620:	14 1c 
    7622:	92 41 08 00 	mov	8(r1),	&0x1c16	;
    7626:	16 1c 

00007628 <.LBB52>:
    7628:	c2 9a 10 1c 	cmp.b	r10,	&0x1c10	;
    762c:	07 20       	jnz	$+16     	;abs 0x763c

0000762e <.Loc.516.1>:
    762e:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

00007632 <.Loc.517.1>:
    7632:	4e 43       	clr.b	r14		;
    7634:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7636:	4c 43       	clr.b	r12		;
    7638:	b0 12 94 78 	call	#30868		;#0x7894

0000763c <.L216>:
    763c:	b0 12 f6 73 	call	#29686		;#0x73f6

00007640 <.Loc.447.1>:
    7640:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7642:	b0 12 f8 78 	call	#30968		;#0x78f8

00007646 <.Loc.448.1>:
    7646:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7648:	b0 12 4c 7a 	call	#31308		;#0x7a4c

0000764c <.Loc.450.1>:
    764c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007650 <.LCFI66>:
    7650:	0a 17       	popm	#1,	r10	;16-bit words

00007652 <.LCFI67>:
    7652:	30 41       	ret			

00007654 <clear_pdc_status>:
    7654:	5c 92 10 1c 	cmp.b	&0x1c10,r12	;0x1c10
    7658:	07 20       	jnz	$+16     	;abs 0x7668

0000765a <.Loc.516.1>:
    765a:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

0000765e <.Loc.517.1>:
    765e:	4e 43       	clr.b	r14		;
    7660:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7662:	4c 43       	clr.b	r12		;

00007664 <.LVL242>:
    7664:	b0 12 94 78 	call	#30868		;#0x7894

00007668 <.L217>:
    7668:	30 41       	ret			

0000766a <__priority_init>:
    766a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000766e <.Loc.83.1>:
    766e:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00007672 <.Loc.83.1>:
    7672:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00007676 <.Loc.83.1>:
    7676:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

0000767a <.Loc.83.1>:
    767a:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000767e <.Loc.83.1>:
    767e:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00007682 <.Loc.83.1>:
    7682:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00007686 <.Loc.83.1>:
    7686:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

0000768a <.Loc.83.1>:
    768a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000768e <.Loc.88.1>:
    768e:	30 41       	ret			

00007690 <__priority_insert>:
    7690:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007694 <.Loc.93.1>:
    7694:	0e 4c       	mov	r12,	r14	;
    7696:	5e 09       	rram	#3,	r14	;

00007698 <.Loc.99.1>:
    7698:	7e f0 07 00 	and.b	#7,	r14	;

0000769c <.Loc.99.1>:
    769c:	dd de 06 45 	bis.b	17670(r14),8(r13)	;0x04506
    76a0:	08 00 

000076a2 <.Loc.100.1>:
    76a2:	0d 5e       	add	r14,	r13	;

000076a4 <.LVL12>:
    76a4:	7c f0 07 00 	and.b	#7,	r12	;

000076a8 <.LVL13>:
    76a8:	dd dc 06 45 	bis.b	17670(r12),0(r13)	;0x04506
    76ac:	00 00 

000076ae <.Loc.101.1>:
    76ae:	30 41       	ret			

000076b0 <__priority_remove>:
    76b0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000076b4 <.Loc.106.1>:
    76b4:	0e 4c       	mov	r12,	r14	;
    76b6:	5e 09       	rram	#3,	r14	;

000076b8 <.Loc.112.1>:
    76b8:	7e f0 07 00 	and.b	#7,	r14	;
    76bc:	0f 4d       	mov	r13,	r15	;
    76be:	0f 5e       	add	r14,	r15	;

000076c0 <.Loc.112.1>:
    76c0:	7c f0 07 00 	and.b	#7,	r12	;

000076c4 <.LVL16>:
    76c4:	df cc 06 45 	bic.b	17670(r12),0(r15)	;0x04506
    76c8:	00 00 

000076ca <.Loc.114.1>:
    76ca:	6c 4f       	mov.b	@r15,	r12	;

000076cc <.Loc.114.1>:
    76cc:	0c 93       	cmp	#0,	r12	;r3 As==00
    76ce:	03 20       	jnz	$+8      	;abs 0x76d6

000076d0 <.Loc.115.1>:
    76d0:	dd ce 06 45 	bic.b	17670(r14),8(r13)	;0x04506
    76d4:	08 00 

000076d6 <.L4>:
    76d6:	30 41       	ret			

000076d8 <__priority_highest>:
    76d8:	5d 4c 08 00 	mov.b	8(r12),	r13	;

000076dc <.LVL18>:
    76dc:	5d 4d 06 44 	mov.b	17414(r13),r13	;0x04406

000076e0 <.LVL19>:
    76e0:	0c 5d       	add	r13,	r12	;

000076e2 <.LVL20>:
    76e2:	6e 4c       	mov.b	@r12,	r14	;

000076e4 <.Loc.127.1>:
    76e4:	0c 4d       	mov	r13,	r12	;
    76e6:	5c 0a       	rlam	#3,	r12	;

000076e8 <.Loc.128.1>:
    76e8:	5c de 06 44 	bis.b	17414(r14),r12	;0x04406
    76ec:	30 41       	ret			

000076ee <stop_timer>:
    76ee:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

000076f2 <.Loc.158.1>:
    76f2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000076f6 <.Loc.159.1>:
    76f6:	30 41       	ret			

000076f8 <timerA2_init>:
    76f8:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    76fc:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7700:	30 41       	ret			

00007702 <set_timer_wkup>:
    7702:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00007706 <.Loc.172.1>:
    7706:	82 4c 52 03 	mov	r12,	&0x0352	;

0000770a <.Loc.173.1>:
    770a:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    770e:	42 03 

00007710 <.Loc.174.1>:
    7710:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    7714:	40 03 

00007716 <.Loc.175.1>:
    7716:	30 41       	ret			

00007718 <set_timer_xpr>:
    7718:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000771c <.Loc.179.1>:
    771c:	82 4c 12 04 	mov	r12,	&0x0412	;

00007720 <.Loc.180.1>:
    7720:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    7724:	02 04 

00007726 <.Loc.181.1>:
    7726:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    772a:	00 04 

0000772c <.Loc.183.1>:
    772c:	30 41       	ret			

0000772e <stop_timer_xpr>:
    772e:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7732:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7736:	30 41       	ret			

00007738 <set_timer_pdc>:
    7738:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

0000773c <.Loc.195.1>:
    773c:	82 4c 92 03 	mov	r12,	&0x0392	;

00007740 <.Loc.196.1>:
    7740:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7744:	82 03 

00007746 <.Loc.197.1>:
    7746:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    774a:	80 03 

0000774c <.Loc.198.1>:
    774c:	30 41       	ret			

0000774e <__setup_rtc>:
    774e:	30 41       	ret			

00007750 <__setup_clock>:
    7750:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    7754:	61 01 

00007756 <.Loc.246.1>:
    7756:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    775a:	64 01 

0000775c <.Loc.247.1>:
    775c:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00007760 <.Loc.248.1>:
    7760:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00007764 <.Loc.250.1>:
    7764:	30 41       	ret			

00007766 <__get_rtc_time>:
    7766:	4c 43       	clr.b	r12		;
    7768:	4d 43       	clr.b	r13		;
    776a:	30 41       	ret			

0000776c <__get_time_init>:
    776c:	82 43 fc 51 	mov	#0,	&0x51fc	;r3 As==00
    7770:	82 43 fe 51 	mov	#0,	&0x51fe	;r3 As==00

00007774 <.Loc.330.1>:
    7774:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007778 <.Loc.332.1>:
    7778:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    777c:	40 04 

0000777e <.Loc.334.1>:
    777e:	03 43       	nop			
    7780:	32 d2       	eint			
    7782:	03 43       	nop			

00007784 <.Loc.335.1>:
    7784:	30 41       	ret			

00007786 <__get_time_stop>:
    7786:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000778a <.Loc.343.1>:
    778a:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000778e <.Loc.344.1>:
    778e:	30 41       	ret			

00007790 <__get_time>:
    7790:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7794:	40 04 

00007796 <.Loc.356.1>:
    7796:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000779a <.Loc.358.1>:
    779a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    779e:	40 04 

000077a0 <.Loc.362.1>:
    77a0:	0d 43       	clr	r13		;

000077a2 <.LVL6>:
    77a2:	0e 4c       	mov	r12,	r14	;
    77a4:	0f 4d       	mov	r13,	r15	;
    77a6:	0e 5e       	rla	r14		;
    77a8:	0f 6f       	rlc	r15		;
    77aa:	0e 5e       	rla	r14		;
    77ac:	0f 6f       	rlc	r15		;
    77ae:	0c 5e       	add	r14,	r12	;

000077b0 <.LVL7>:
    77b0:	0d 6f       	addc	r15,	r13	;
    77b2:	0c 5c       	rla	r12		;
    77b4:	0d 6d       	rlc	r13		;

000077b6 <.Loc.363.1>:
    77b6:	1c 52 fc 51 	add	&0x51fc,r12	;0x51fc
    77ba:	1d 62 fe 51 	addc	&0x51fe,r13	;0x51fe
    77be:	30 41       	ret			

000077c0 <TIMER3_A1_ISR>:
    77c0:	b2 50 aa 00 	add	#170,	&0x51fc	;#0x00aa
    77c4:	fc 51 
    77c6:	b2 60 0a 00 	addc	#10,	&0x51fe	;#0x000a
    77ca:	fe 51 

000077cc <.Loc.380.1>:
    77cc:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

000077d0 <.Loc.381.1>:
    77d0:	00 13       	reti			

000077d2 <_pers_timer_init>:
    77d2:	3c 40 00 52 	mov	#20992,	r12	;#0x5200
    77d6:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000077da <.Loc.34.1>:
    77da:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

000077de <.Loc.34.1>:
    77de:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

000077e2 <.Loc.34.1>:
    77e2:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

000077e6 <.Loc.38.1>:
    77e6:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

000077ea <.Loc.38.1>:
    77ea:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

000077ee <.Loc.38.1>:
    77ee:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

000077f2 <.Loc.42.1>:
    77f2:	30 41       	ret			

000077f4 <_pers_timer_update_data>:
    77f4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000077f8 <.Loc.50.1>:
    77f8:	1d 93       	cmp	#1,	r13	;r3 As==01
    77fa:	1b 24       	jz	$+56     	;abs 0x7832
    77fc:	2d 93       	cmp	#2,	r13	;r3 As==10
    77fe:	0e 24       	jz	$+30     	;abs 0x781c
    7800:	0d 93       	cmp	#0,	r13	;r3 As==00
    7802:	01 24       	jz	$+4      	;abs 0x7806

00007804 <.Loc.69.1>:
    7804:	30 41       	ret			

00007806 <.L7>:
    7806:	0d 4c       	mov	r12,	r13	;

00007808 <.LVL9>:
    7808:	5d 06       	rlam	#2,	r13	;
    780a:	0c 5d       	add	r13,	r12	;

0000780c <.LVL10>:
    780c:	5c 02       	rlam	#1,	r12	;
    780e:	8c 4e 68 52 	mov	r14,	21096(r12); 0x5268
    7812:	8c 4f 6a 52 	mov	r15,	21098(r12); 0x526a

00007816 <.Loc.54.1>:
    7816:	9c 43 6c 52 	mov	#1,	21100(r12);r3 As==01, 0x526c

0000781a <.Loc.55.1>:
    781a:	30 41       	ret			

0000781c <.L5>:
    781c:	0d 4c       	mov	r12,	r13	;

0000781e <.LVL12>:
    781e:	5d 06       	rlam	#2,	r13	;
    7820:	0c 5d       	add	r13,	r12	;
    7822:	5c 02       	rlam	#1,	r12	;
    7824:	8c 4e 86 52 	mov	r14,	21126(r12); 0x5286
    7828:	8c 4f 88 52 	mov	r15,	21128(r12); 0x5288

0000782c <.Loc.58.1>:
    782c:	9c 43 8a 52 	mov	#1,	21130(r12);r3 As==01, 0x528a

00007830 <.Loc.59.1>:
    7830:	30 41       	ret			

00007832 <.L4>:
    7832:	0d 4c       	mov	r12,	r13	;

00007834 <.LVL14>:
    7834:	5d 06       	rlam	#2,	r13	;
    7836:	0c 5d       	add	r13,	r12	;
    7838:	5c 02       	rlam	#1,	r12	;
    783a:	8c 4e a4 52 	mov	r14,	21156(r12); 0x52a4
    783e:	8c 4f a6 52 	mov	r15,	21158(r12); 0x52a6

00007842 <.Loc.62.1>:
    7842:	9c 43 a8 52 	mov	#1,	21160(r12);r3 As==01, 0x52a8

00007846 <.Loc.63.1>:
    7846:	30 41       	ret			

00007848 <_pers_timer_update_thread_id>:
    7848:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    784c:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007850 <.Loc.73.1>:
    7850:	1d 93       	cmp	#1,	r13	;r3 As==01
    7852:	17 24       	jz	$+48     	;abs 0x7882
    7854:	2d 93       	cmp	#2,	r13	;r3 As==10
    7856:	0c 24       	jz	$+26     	;abs 0x7870
    7858:	0d 93       	cmp	#0,	r13	;r3 As==00
    785a:	01 24       	jz	$+4      	;abs 0x785e

0000785c <.Loc.91.1>:
    785c:	30 41       	ret			

0000785e <.L12>:
    785e:	0d 4c       	mov	r12,	r13	;

00007860 <.LVL16>:
    7860:	5d 06       	rlam	#2,	r13	;
    7862:	0c 5d       	add	r13,	r12	;

00007864 <.LVL17>:
    7864:	5c 02       	rlam	#1,	r12	;
    7866:	cc 4e 66 52 	mov.b	r14,	21094(r12); 0x5266

0000786a <.Loc.77.1>:
    786a:	9c 43 6c 52 	mov	#1,	21100(r12);r3 As==01, 0x526c

0000786e <.Loc.78.1>:
    786e:	30 41       	ret			

00007870 <.L10>:
    7870:	0d 4c       	mov	r12,	r13	;

00007872 <.LVL19>:
    7872:	5d 06       	rlam	#2,	r13	;
    7874:	0c 5d       	add	r13,	r12	;
    7876:	5c 02       	rlam	#1,	r12	;
    7878:	cc 4e 84 52 	mov.b	r14,	21124(r12); 0x5284

0000787c <.Loc.81.1>:
    787c:	9c 43 8a 52 	mov	#1,	21130(r12);r3 As==01, 0x528a

00007880 <.Loc.82.1>:
    7880:	30 41       	ret			

00007882 <.L9>:
    7882:	0d 4c       	mov	r12,	r13	;

00007884 <.LVL21>:
    7884:	5d 06       	rlam	#2,	r13	;
    7886:	0c 5d       	add	r13,	r12	;
    7888:	5c 02       	rlam	#1,	r12	;
    788a:	cc 4e a2 52 	mov.b	r14,	21154(r12); 0x52a2

0000788e <.Loc.85.1>:
    788e:	9c 43 a8 52 	mov	#1,	21160(r12);r3 As==01, 0x52a8

00007892 <.Loc.86.1>:
    7892:	30 41       	ret			

00007894 <_pers_timer_update_status>:
    7894:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007898 <.Loc.95.1>:
    7898:	1d 93       	cmp	#1,	r13	;r3 As==01
    789a:	17 24       	jz	$+48     	;abs 0x78ca
    789c:	2d 93       	cmp	#2,	r13	;r3 As==10
    789e:	0c 24       	jz	$+26     	;abs 0x78b8
    78a0:	0d 93       	cmp	#0,	r13	;r3 As==00
    78a2:	01 24       	jz	$+4      	;abs 0x78a6

000078a4 <.Loc.113.1>:
    78a4:	30 41       	ret			

000078a6 <.L17>:
    78a6:	0d 4c       	mov	r12,	r13	;

000078a8 <.LVL23>:
    78a8:	5d 06       	rlam	#2,	r13	;
    78aa:	0c 5d       	add	r13,	r12	;

000078ac <.LVL24>:
    78ac:	5c 02       	rlam	#1,	r12	;
    78ae:	8c 4e 64 52 	mov	r14,	21092(r12); 0x5264

000078b2 <.Loc.99.1>:
    78b2:	9c 43 6c 52 	mov	#1,	21100(r12);r3 As==01, 0x526c

000078b6 <.Loc.100.1>:
    78b6:	30 41       	ret			

000078b8 <.L15>:
    78b8:	0d 4c       	mov	r12,	r13	;

000078ba <.LVL26>:
    78ba:	5d 06       	rlam	#2,	r13	;
    78bc:	0c 5d       	add	r13,	r12	;
    78be:	5c 02       	rlam	#1,	r12	;
    78c0:	8c 4e 82 52 	mov	r14,	21122(r12); 0x5282

000078c4 <.Loc.103.1>:
    78c4:	9c 43 8a 52 	mov	#1,	21130(r12);r3 As==01, 0x528a

000078c8 <.Loc.104.1>:
    78c8:	30 41       	ret			

000078ca <.L14>:
    78ca:	0d 4c       	mov	r12,	r13	;

000078cc <.LVL28>:
    78cc:	5d 06       	rlam	#2,	r13	;
    78ce:	0c 5d       	add	r13,	r12	;
    78d0:	5c 02       	rlam	#1,	r12	;
    78d2:	8c 4e a0 52 	mov	r14,	21152(r12); 0x52a0

000078d6 <.Loc.107.1>:
    78d6:	9c 43 a8 52 	mov	#1,	21160(r12);r3 As==01, 0x52a8

000078da <.Loc.108.1>:
    78da:	30 41       	ret			

000078dc <_pers_timer_update_nxt_thread>:
    78dc:	0e 4c       	mov	r12,	r14	;
    78de:	5e 0a       	rlam	#3,	r14	;
    78e0:	ce 4d ac 52 	mov.b	r13,	21164(r14); 0x52ac

000078e4 <.Loc.118.1>:
    78e4:	9e 43 b0 52 	mov	#1,	21168(r14);r3 As==01, 0x52b0

000078e8 <.Loc.119.1>:
    78e8:	30 41       	ret			

000078ea <_pers_timer_update_nxt_time>:
    78ea:	0e 4c       	mov	r12,	r14	;
    78ec:	5e 0a       	rlam	#3,	r14	;
    78ee:	8e 4d ae 52 	mov	r13,	21166(r14); 0x52ae

000078f2 <.Loc.124.1>:
    78f2:	9e 43 b0 52 	mov	#1,	21168(r14);r3 As==01, 0x52b0

000078f6 <.Loc.125.1>:
    78f6:	30 41       	ret			

000078f8 <_pers_timer_update_lock>:
    78f8:	1c 93       	cmp	#1,	r12	;r3 As==01
    78fa:	0b 24       	jz	$+24     	;abs 0x7912
    78fc:	2c 93       	cmp	#2,	r12	;r3 As==10
    78fe:	06 24       	jz	$+14     	;abs 0x790c
    7900:	0c 93       	cmp	#0,	r12	;r3 As==00
    7902:	01 24       	jz	$+4      	;abs 0x7906

00007904 <.Loc.145.1>:
    7904:	30 41       	ret			

00007906 <.L24>:
    7906:	92 43 c8 52 	mov	#1,	&0x52c8	;r3 As==01

0000790a <.Loc.133.1>:
    790a:	30 41       	ret			

0000790c <.L22>:
    790c:	92 43 ca 52 	mov	#1,	&0x52ca	;r3 As==01

00007910 <.Loc.136.1>:
    7910:	30 41       	ret			

00007912 <.L21>:
    7912:	92 43 cc 52 	mov	#1,	&0x52cc	;r3 As==01

00007916 <.Loc.139.1>:
    7916:	30 41       	ret			

00007918 <_commit_timer_buffers>:
    7918:	3d 40 00 52 	mov	#20992,	r13	;#0x5200
    791c:	1c 93       	cmp	#1,	r12	;r3 As==01
    791e:	18 24       	jz	$+50     	;abs 0x7950
    7920:	2c 93       	cmp	#2,	r12	;r3 As==10
    7922:	40 24       	jz	$+130    	;abs 0x79a4
    7924:	0c 93       	cmp	#0,	r12	;r3 As==00
    7926:	26 24       	jz	$+78     	;abs 0x7974

00007928 <.L28>:
    7928:	0e 4c       	mov	r12,	r14	;
    792a:	5e 0a       	rlam	#3,	r14	;
    792c:	9e 93 b0 52 	cmp	#1,	21168(r14);r3 As==01, 0x52b0
    7930:	01 24       	jz	$+4      	;abs 0x7934

00007932 <.Loc.201.1>:
    7932:	30 41       	ret			

00007934 <.L40>:
    7934:	0c 4e       	mov	r14,	r12	;

00007936 <.LVL33>:
    7936:	0c 5d       	add	r13,	r12	;
    7938:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    793c:	46 00 
    793e:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    7942:	48 00 
    7944:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    7948:	4a 00 

0000794a <.Loc.197.1>:
    794a:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

0000794e <.Loc.191.1>:
    794e:	30 41       	ret			

00007950 <.L26>:
    7950:	92 93 a8 52 	cmp	#1,	&0x52a8	;r3 As==01
    7954:	e9 23       	jnz	$-44     	;abs 0x7928

00007956 <.Loc.182.1>:
    7956:	92 42 a0 52 	mov	&0x52a0,&0x523c	;0x52a0
    795a:	3c 52 
    795c:	92 42 a2 52 	mov	&0x52a2,&0x523e	;0x52a2
    7960:	3e 52 
    7962:	92 42 a4 52 	mov	&0x52a4,&0x5240	;0x52a4
    7966:	40 52 
    7968:	92 42 a6 52 	mov	&0x52a6,&0x5242	;0x52a6
    796c:	42 52 

0000796e <.Loc.183.1>:
    796e:	82 43 44 52 	mov	#0,	&0x5244	;r3 As==00

00007972 <.Loc.177.1>:
    7972:	da 3f       	jmp	$-74     	;abs 0x7928

00007974 <.L39>:
    7974:	92 93 6c 52 	cmp	#1,	&0x526c	;r3 As==01
    7978:	5a 24       	jz	$+182    	;abs 0x7a2e

0000797a <.L29>:
    797a:	92 93 76 52 	cmp	#1,	&0x5276	;r3 As==01
    797e:	48 24       	jz	$+146    	;abs 0x7a10

00007980 <.L30>:
    7980:	92 93 80 52 	cmp	#1,	&0x5280	;r3 As==01
    7984:	d1 23       	jnz	$-92     	;abs 0x7928

00007986 <.Loc.160.1>:
    7986:	92 42 78 52 	mov	&0x5278,&0x5214	;0x5278
    798a:	14 52 
    798c:	92 42 7a 52 	mov	&0x527a,&0x5216	;0x527a
    7990:	16 52 
    7992:	92 42 7c 52 	mov	&0x527c,&0x5218	;0x527c
    7996:	18 52 
    7998:	92 42 7e 52 	mov	&0x527e,&0x521a	;0x527e
    799c:	1a 52 

0000799e <.Loc.161.1>:
    799e:	82 43 1c 52 	mov	#0,	&0x521c	;r3 As==00

000079a2 <.Loc.155.1>:
    79a2:	c2 3f       	jmp	$-122    	;abs 0x7928

000079a4 <.L27>:
    79a4:	92 93 8a 52 	cmp	#1,	&0x528a	;r3 As==01
    79a8:	24 24       	jz	$+74     	;abs 0x79f2

000079aa <.L32>:
    79aa:	92 93 94 52 	cmp	#1,	&0x5294	;r3 As==01
    79ae:	12 24       	jz	$+38     	;abs 0x79d4

000079b0 <.L33>:
    79b0:	92 93 9e 52 	cmp	#1,	&0x529e	;r3 As==01
    79b4:	b9 23       	jnz	$-140    	;abs 0x7928

000079b6 <.Loc.171.1>:
    79b6:	92 42 96 52 	mov	&0x5296,&0x5232	;0x5296
    79ba:	32 52 
    79bc:	92 42 98 52 	mov	&0x5298,&0x5234	;0x5298
    79c0:	34 52 
    79c2:	92 42 9a 52 	mov	&0x529a,&0x5236	;0x529a
    79c6:	36 52 
    79c8:	92 42 9c 52 	mov	&0x529c,&0x5238	;0x529c
    79cc:	38 52 

000079ce <.Loc.172.1>:
    79ce:	82 43 3a 52 	mov	#0,	&0x523a	;r3 As==00

000079d2 <.Loc.166.1>:
    79d2:	aa 3f       	jmp	$-170    	;abs 0x7928

000079d4 <.L44>:
    79d4:	92 42 8c 52 	mov	&0x528c,&0x5228	;0x528c
    79d8:	28 52 
    79da:	92 42 8e 52 	mov	&0x528e,&0x522a	;0x528e
    79de:	2a 52 
    79e0:	92 42 90 52 	mov	&0x5290,&0x522c	;0x5290
    79e4:	2c 52 
    79e6:	92 42 92 52 	mov	&0x5292,&0x522e	;0x5292
    79ea:	2e 52 

000079ec <.Loc.172.1>:
    79ec:	82 43 30 52 	mov	#0,	&0x5230	;r3 As==00
    79f0:	df 3f       	jmp	$-64     	;abs 0x79b0

000079f2 <.L43>:
    79f2:	92 42 82 52 	mov	&0x5282,&0x521e	;0x5282
    79f6:	1e 52 
    79f8:	92 42 84 52 	mov	&0x5284,&0x5220	;0x5284
    79fc:	20 52 
    79fe:	92 42 86 52 	mov	&0x5286,&0x5222	;0x5286
    7a02:	22 52 
    7a04:	92 42 88 52 	mov	&0x5288,&0x5224	;0x5288
    7a08:	24 52 

00007a0a <.Loc.172.1>:
    7a0a:	82 43 26 52 	mov	#0,	&0x5226	;r3 As==00
    7a0e:	cd 3f       	jmp	$-100    	;abs 0x79aa

00007a10 <.L42>:
    7a10:	92 42 6e 52 	mov	&0x526e,&0x520a	;0x526e
    7a14:	0a 52 
    7a16:	92 42 70 52 	mov	&0x5270,&0x520c	;0x5270
    7a1a:	0c 52 
    7a1c:	92 42 72 52 	mov	&0x5272,&0x520e	;0x5272
    7a20:	0e 52 
    7a22:	92 42 74 52 	mov	&0x5274,&0x5210	;0x5274
    7a26:	10 52 

00007a28 <.Loc.161.1>:
    7a28:	82 43 12 52 	mov	#0,	&0x5212	;r3 As==00
    7a2c:	a9 3f       	jmp	$-172    	;abs 0x7980

00007a2e <.L41>:
    7a2e:	92 42 64 52 	mov	&0x5264,&0x5200	;0x5264
    7a32:	00 52 
    7a34:	92 42 66 52 	mov	&0x5266,&0x5202	;0x5266
    7a38:	02 52 
    7a3a:	92 42 68 52 	mov	&0x5268,&0x5204	;0x5268
    7a3e:	04 52 
    7a40:	92 42 6a 52 	mov	&0x526a,&0x5206	;0x526a
    7a44:	06 52 

00007a46 <.Loc.161.1>:
    7a46:	82 43 08 52 	mov	#0,	&0x5208	;r3 As==00
    7a4a:	97 3f       	jmp	$-208    	;abs 0x797a

00007a4c <_pers_timer_commit>:
    7a4c:	1c 93       	cmp	#1,	r12	;r3 As==01
    7a4e:	17 24       	jz	$+48     	;abs 0x7a7e
    7a50:	2c 93       	cmp	#2,	r12	;r3 As==10
    7a52:	0c 24       	jz	$+26     	;abs 0x7a6c
    7a54:	0c 93       	cmp	#0,	r12	;r3 As==00
    7a56:	01 24       	jz	$+4      	;abs 0x7a5a

00007a58 <.L45>:
    7a58:	30 41       	ret			

00007a5a <.L49>:
    7a5a:	1d 42 c8 52 	mov	&0x52c8,r13	;0x52c8

00007a5e <.Loc.207.1>:
    7a5e:	1d 93       	cmp	#1,	r13	;r3 As==01
    7a60:	fb 23       	jnz	$-8      	;abs 0x7a58

00007a62 <.Loc.209.1>:
    7a62:	b0 12 18 79 	call	#31000		;#0x7918

00007a66 <.LVL49>:
    7a66:	a2 43 c8 52 	mov	#2,	&0x52c8	;r3 As==10

00007a6a <.Loc.230.1>:
    7a6a:	30 41       	ret			

00007a6c <.L47>:
    7a6c:	1d 42 ca 52 	mov	&0x52ca,r13	;0x52ca

00007a70 <.Loc.214.1>:
    7a70:	1d 93       	cmp	#1,	r13	;r3 As==01
    7a72:	f2 23       	jnz	$-26     	;abs 0x7a58

00007a74 <.Loc.216.1>:
    7a74:	b0 12 18 79 	call	#31000		;#0x7918

00007a78 <.LVL51>:
    7a78:	a2 43 ca 52 	mov	#2,	&0x52ca	;r3 As==10

00007a7c <.Loc.230.1>:
    7a7c:	30 41       	ret			

00007a7e <.L46>:
    7a7e:	1d 42 cc 52 	mov	&0x52cc,r13	;0x52cc

00007a82 <.Loc.220.1>:
    7a82:	1d 93       	cmp	#1,	r13	;r3 As==01
    7a84:	e9 23       	jnz	$-44     	;abs 0x7a58

00007a86 <.Loc.222.1>:
    7a86:	b0 12 18 79 	call	#31000		;#0x7918

00007a8a <.LVL53>:
    7a8a:	a2 43 cc 52 	mov	#2,	&0x52cc	;r3 As==10

00007a8e <.Loc.230.1>:
    7a8e:	30 41       	ret			

00007a90 <_pers_timer_get>:
    7a90:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00007a94 <.Loc.233.1>:
    7a94:	1e 93       	cmp	#1,	r14	;r3 As==01
    7a96:	17 24       	jz	$+48     	;abs 0x7ac6
    7a98:	2e 93       	cmp	#2,	r14	;r3 As==10
    7a9a:	2a 24       	jz	$+86     	;abs 0x7af0

00007a9c <.Loc.242.1>:
    7a9c:	0e 4d       	mov	r13,	r14	;

00007a9e <.LVL55>:
    7a9e:	5e 06       	rlam	#2,	r14	;
    7aa0:	0d 5e       	add	r14,	r13	;

00007aa2 <.LVL56>:
    7aa2:	5d 02       	rlam	#1,	r13	;
    7aa4:	3d 50 00 52 	add	#20992,	r13	;#0x5200
    7aa8:	0e 4d       	mov	r13,	r14	;
    7aaa:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7aae:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7ab2:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7ab6:	04 00 
    7ab8:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7abc:	06 00 
    7abe:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7ac2:	08 00 

00007ac4 <.Loc.245.1>:
    7ac4:	30 41       	ret			

00007ac6 <.L51>:
    7ac6:	0e 4d       	mov	r13,	r14	;

00007ac8 <.LVL58>:
    7ac8:	5e 06       	rlam	#2,	r14	;
    7aca:	0d 5e       	add	r14,	r13	;
    7acc:	5d 02       	rlam	#1,	r13	;
    7ace:	3d 50 3c 52 	add	#21052,	r13	;#0x523c

00007ad2 <.Loc.242.1>:
    7ad2:	0e 4d       	mov	r13,	r14	;
    7ad4:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7ad8:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7adc:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7ae0:	04 00 
    7ae2:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7ae6:	06 00 
    7ae8:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7aec:	08 00 

00007aee <.Loc.245.1>:
    7aee:	30 41       	ret			

00007af0 <.L55>:
    7af0:	0e 4d       	mov	r13,	r14	;

00007af2 <.LVL60>:
    7af2:	5e 06       	rlam	#2,	r14	;
    7af4:	0d 5e       	add	r14,	r13	;
    7af6:	5d 02       	rlam	#1,	r13	;
    7af8:	3d 50 1e 52 	add	#21022,	r13	;#0x521e

00007afc <.Loc.242.1>:
    7afc:	0e 4d       	mov	r13,	r14	;
    7afe:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7b02:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7b06:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7b0a:	04 00 
    7b0c:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7b10:	06 00 
    7b12:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7b16:	08 00 

00007b18 <.Loc.245.1>:
    7b18:	30 41       	ret			

00007b1a <_pers_timer_get_data>:
    7b1a:	4e 4c       	mov.b	r12,	r14	;

00007b1c <.Loc.249.1>:
    7b1c:	1d 93       	cmp	#1,	r13	;r3 As==01
    7b1e:	14 24       	jz	$+42     	;abs 0x7b48
    7b20:	2d 93       	cmp	#2,	r13	;r3 As==10
    7b22:	0b 24       	jz	$+24     	;abs 0x7b3a
    7b24:	4c 43       	clr.b	r12		;

00007b26 <.LVL62>:
    7b26:	0d 93       	cmp	#0,	r13	;r3 As==00
    7b28:	01 24       	jz	$+4      	;abs 0x7b2c

00007b2a <.Loc.262.1>:
    7b2a:	30 41       	ret			

00007b2c <.L61>:
    7b2c:	0c 4e       	mov	r14,	r12	;
    7b2e:	5c 06       	rlam	#2,	r12	;
    7b30:	0c 5e       	add	r14,	r12	;
    7b32:	5c 02       	rlam	#1,	r12	;
    7b34:	1c 4c 04 52 	mov	20996(r12),r12	;0x05204

00007b38 <.Loc.262.1>:
    7b38:	30 41       	ret			

00007b3a <.L58>:
    7b3a:	0c 4e       	mov	r14,	r12	;

00007b3c <.LVL64>:
    7b3c:	5c 06       	rlam	#2,	r12	;
    7b3e:	0c 5e       	add	r14,	r12	;
    7b40:	5c 02       	rlam	#1,	r12	;
    7b42:	1c 4c 22 52 	mov	21026(r12),r12	;0x05222

00007b46 <.Loc.262.1>:
    7b46:	30 41       	ret			

00007b48 <.L57>:
    7b48:	0c 4e       	mov	r14,	r12	;

00007b4a <.LVL66>:
    7b4a:	5c 06       	rlam	#2,	r12	;
    7b4c:	0c 5e       	add	r14,	r12	;
    7b4e:	5c 02       	rlam	#1,	r12	;
    7b50:	1c 4c 40 52 	mov	21056(r12),r12	;0x05240

00007b54 <.Loc.262.1>:
    7b54:	30 41       	ret			

00007b56 <_pers_timer_get_thread_id>:
    7b56:	4e 4c       	mov.b	r12,	r14	;

00007b58 <.Loc.266.1>:
    7b58:	1d 93       	cmp	#1,	r13	;r3 As==01
    7b5a:	14 24       	jz	$+42     	;abs 0x7b84
    7b5c:	2d 93       	cmp	#2,	r13	;r3 As==10
    7b5e:	0b 24       	jz	$+24     	;abs 0x7b76
    7b60:	4c 43       	clr.b	r12		;

00007b62 <.LVL68>:
    7b62:	0d 93       	cmp	#0,	r13	;r3 As==00
    7b64:	01 24       	jz	$+4      	;abs 0x7b68

00007b66 <.Loc.279.1>:
    7b66:	30 41       	ret			

00007b68 <.L67>:
    7b68:	0c 4e       	mov	r14,	r12	;
    7b6a:	5c 06       	rlam	#2,	r12	;
    7b6c:	0c 5e       	add	r14,	r12	;
    7b6e:	5c 02       	rlam	#1,	r12	;
    7b70:	5c 4c 02 52 	mov.b	20994(r12),r12	;0x05202

00007b74 <.Loc.279.1>:
    7b74:	30 41       	ret			

00007b76 <.L64>:
    7b76:	0c 4e       	mov	r14,	r12	;

00007b78 <.LVL70>:
    7b78:	5c 06       	rlam	#2,	r12	;
    7b7a:	0c 5e       	add	r14,	r12	;
    7b7c:	5c 02       	rlam	#1,	r12	;
    7b7e:	5c 4c 20 52 	mov.b	21024(r12),r12	;0x05220

00007b82 <.Loc.279.1>:
    7b82:	30 41       	ret			

00007b84 <.L63>:
    7b84:	0c 4e       	mov	r14,	r12	;

00007b86 <.LVL72>:
    7b86:	5c 06       	rlam	#2,	r12	;
    7b88:	0c 5e       	add	r14,	r12	;
    7b8a:	5c 02       	rlam	#1,	r12	;
    7b8c:	5c 4c 3e 52 	mov.b	21054(r12),r12	;0x0523e

00007b90 <.Loc.279.1>:
    7b90:	30 41       	ret			

00007b92 <_pers_timer_get_status>:
    7b92:	4e 4c       	mov.b	r12,	r14	;

00007b94 <.Loc.283.1>:
    7b94:	1d 93       	cmp	#1,	r13	;r3 As==01
    7b96:	14 24       	jz	$+42     	;abs 0x7bc0
    7b98:	2d 93       	cmp	#2,	r13	;r3 As==10
    7b9a:	0b 24       	jz	$+24     	;abs 0x7bb2
    7b9c:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007b9e <.LVL74>:
    7b9e:	0d 93       	cmp	#0,	r13	;r3 As==00
    7ba0:	01 24       	jz	$+4      	;abs 0x7ba4

00007ba2 <.Loc.294.1>:
    7ba2:	30 41       	ret			

00007ba4 <.L73>:
    7ba4:	0c 4e       	mov	r14,	r12	;
    7ba6:	5c 06       	rlam	#2,	r12	;
    7ba8:	0c 5e       	add	r14,	r12	;
    7baa:	5c 02       	rlam	#1,	r12	;
    7bac:	1c 4c 00 52 	mov	20992(r12),r12	;0x05200

00007bb0 <.Loc.294.1>:
    7bb0:	30 41       	ret			

00007bb2 <.L70>:
    7bb2:	0c 4e       	mov	r14,	r12	;

00007bb4 <.LVL76>:
    7bb4:	5c 06       	rlam	#2,	r12	;
    7bb6:	0c 5e       	add	r14,	r12	;
    7bb8:	5c 02       	rlam	#1,	r12	;
    7bba:	1c 4c 1e 52 	mov	21022(r12),r12	;0x0521e

00007bbe <.Loc.294.1>:
    7bbe:	30 41       	ret			

00007bc0 <.L69>:
    7bc0:	0c 4e       	mov	r14,	r12	;

00007bc2 <.LVL78>:
    7bc2:	5c 06       	rlam	#2,	r12	;
    7bc4:	0c 5e       	add	r14,	r12	;
    7bc6:	5c 02       	rlam	#1,	r12	;
    7bc8:	1c 4c 3c 52 	mov	21052(r12),r12	;0x0523c

00007bcc <.Loc.294.1>:
    7bcc:	30 41       	ret			

00007bce <_pers_timer_get_nxt_thread>:
    7bce:	5c 0a       	rlam	#3,	r12	;

00007bd0 <.LVL80>:
    7bd0:	5c 4c 48 52 	mov.b	21064(r12),r12	;0x05248
    7bd4:	30 41       	ret			

00007bd6 <_pers_timer_get_nxt_time>:
    7bd6:	5c 0a       	rlam	#3,	r12	;

00007bd8 <.LVL82>:
    7bd8:	1c 4c 4a 52 	mov	21066(r12),r12	;0x0524a
    7bdc:	30 41       	ret			

00007bde <udivmodsi4>:
    7bde:	4a 15       	pushm	#5,	r10	;16-bit words

00007be0 <.LCFI0>:
    7be0:	0a 4c       	mov	r12,	r10	;
    7be2:	0b 4d       	mov	r13,	r11	;

00007be4 <.LVL1>:
    7be4:	7c 40 21 00 	mov.b	#33,	r12	;#0x0021

00007be8 <.LVL2>:
    7be8:	58 43       	mov.b	#1,	r8	;r3 As==01
    7bea:	49 43       	clr.b	r9		;

00007bec <L0^A>:
    7bec:	0f 9b       	cmp	r11,	r15	;
    7bee:	04 28       	jnc	$+10     	;abs 0x7bf8
    7bf0:	0b 9f       	cmp	r15,	r11	;
    7bf2:	07 20       	jnz	$+16     	;abs 0x7c02
    7bf4:	0e 9a       	cmp	r10,	r14	;
    7bf6:	05 2c       	jc	$+12     	;abs 0x7c02

00007bf8 <.L15>:
    7bf8:	3c 53       	add	#-1,	r12	;r3 As==11

00007bfa <.Loc.38.1>:
    7bfa:	0c 93       	cmp	#0,	r12	;r3 As==00
    7bfc:	2d 24       	jz	$+92     	;abs 0x7c58

00007bfe <.Loc.38.1>:
    7bfe:	0f 93       	cmp	#0,	r15	;r3 As==00
    7c00:	0d 34       	jge	$+28     	;abs 0x7c1c

00007c02 <.L13>:
    7c02:	4c 43       	clr.b	r12		;
    7c04:	4d 43       	clr.b	r13		;

00007c06 <.L8>:
    7c06:	07 48       	mov	r8,	r7	;
    7c08:	07 d9       	bis	r9,	r7	;
    7c0a:	07 93       	cmp	#0,	r7	;r3 As==00
    7c0c:	14 20       	jnz	$+42     	;abs 0x7c36

00007c0e <.L5>:
    7c0e:	81 93 0c 00 	cmp	#0,	12(r1)	;r3 As==00, 0x000c
    7c12:	02 24       	jz	$+6      	;abs 0x7c18
    7c14:	0c 4a       	mov	r10,	r12	;
    7c16:	0d 4b       	mov	r11,	r13	;

00007c18 <.L1>:
    7c18:	46 17       	popm	#5,	r10	;16-bit words

00007c1a <.LCFI1>:
    7c1a:	30 41       	ret			

00007c1c <.L6>:
    7c1c:	06 4e       	mov	r14,	r6	;
    7c1e:	07 4f       	mov	r15,	r7	;
    7c20:	06 5e       	add	r14,	r6	;
    7c22:	07 6f       	addc	r15,	r7	;
    7c24:	0e 46       	mov	r6,	r14	;

00007c26 <.LVL7>:
    7c26:	0f 47       	mov	r7,	r15	;

00007c28 <.LVL8>:
    7c28:	06 48       	mov	r8,	r6	;
    7c2a:	07 49       	mov	r9,	r7	;
    7c2c:	06 58       	add	r8,	r6	;
    7c2e:	07 69       	addc	r9,	r7	;
    7c30:	08 46       	mov	r6,	r8	;

00007c32 <.LVL9>:
    7c32:	09 47       	mov	r7,	r9	;

00007c34 <.LVL10>:
    7c34:	db 3f       	jmp	$-72     	;abs 0x7bec

00007c36 <.L11>:
    7c36:	0b 9f       	cmp	r15,	r11	;
    7c38:	08 28       	jnc	$+18     	;abs 0x7c4a
    7c3a:	0f 9b       	cmp	r11,	r15	;
    7c3c:	02 20       	jnz	$+6      	;abs 0x7c42
    7c3e:	0a 9e       	cmp	r14,	r10	;
    7c40:	04 28       	jnc	$+10     	;abs 0x7c4a

00007c42 <.L16>:
    7c42:	0a 8e       	sub	r14,	r10	;
    7c44:	0b 7f       	subc	r15,	r11	;

00007c46 <.Loc.48.1>:
    7c46:	0c d8       	bis	r8,	r12	;

00007c48 <.LVL13>:
    7c48:	0d d9       	bis	r9,	r13	;

00007c4a <.L9>:
    7c4a:	12 c3       	clrc			
    7c4c:	09 10       	rrc	r9		;
    7c4e:	08 10       	rrc	r8		;

00007c50 <.Loc.51.1>:
    7c50:	12 c3       	clrc			
    7c52:	0f 10       	rrc	r15		;
    7c54:	0e 10       	rrc	r14		;
    7c56:	d7 3f       	jmp	$-80     	;abs 0x7c06

00007c58 <.L14>:
    7c58:	4c 43       	clr.b	r12		;
    7c5a:	4d 43       	clr.b	r13		;
    7c5c:	d8 3f       	jmp	$-78     	;abs 0x7c0e

00007c5e <__mspabi_divli>:
    7c5e:	2a 15       	pushm	#3,	r10	;16-bit words

00007c60 <.LCFI3>:
    7c60:	21 83       	decd	r1		;

00007c62 <.LCFI4>:
    7c62:	4a 43       	clr.b	r10		;

00007c64 <L0^A>:
    7c64:	0d 93       	cmp	#0,	r13	;r3 As==00
    7c66:	07 34       	jge	$+16     	;abs 0x7c76

00007c68 <.Loc.66.1>:
    7c68:	48 43       	clr.b	r8		;
    7c6a:	49 43       	clr.b	r9		;
    7c6c:	08 8c       	sub	r12,	r8	;
    7c6e:	09 7d       	subc	r13,	r9	;
    7c70:	0c 48       	mov	r8,	r12	;

00007c72 <.LVL20>:
    7c72:	0d 49       	mov	r9,	r13	;

00007c74 <.LVL21>:
    7c74:	5a 43       	mov.b	#1,	r10	;r3 As==01

00007c76 <.L21>:
    7c76:	0f 93       	cmp	#0,	r15	;r3 As==00
    7c78:	07 34       	jge	$+16     	;abs 0x7c88

00007c7a <.Loc.72.1>:
    7c7a:	48 43       	clr.b	r8		;
    7c7c:	49 43       	clr.b	r9		;
    7c7e:	08 8e       	sub	r14,	r8	;
    7c80:	09 7f       	subc	r15,	r9	;
    7c82:	0e 48       	mov	r8,	r14	;

00007c84 <.LVL23>:
    7c84:	0f 49       	mov	r9,	r15	;

00007c86 <.LVL24>:
    7c86:	1a e3       	xor	#1,	r10	;r3 As==01

00007c88 <.L23>:
    7c88:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
    7c8c:	b0 12 de 7b 	call	#31710		;#0x7bde

00007c90 <.LVL26>:
    7c90:	0a 93       	cmp	#0,	r10	;r3 As==00
    7c92:	06 24       	jz	$+14     	;abs 0x7ca0

00007c94 <.LVL27>:
    7c94:	49 43       	clr.b	r9		;
    7c96:	4a 43       	clr.b	r10		;
    7c98:	09 8c       	sub	r12,	r9	;
    7c9a:	0a 7d       	subc	r13,	r10	;
    7c9c:	0c 49       	mov	r9,	r12	;

00007c9e <.LVL28>:
    7c9e:	0d 4a       	mov	r10,	r13	;

00007ca0 <.L20>:
    7ca0:	21 53       	incd	r1		;

00007ca2 <.LCFI5>:
    7ca2:	28 17       	popm	#3,	r10	;16-bit words

00007ca4 <.LCFI6>:
    7ca4:	30 41       	ret			

00007ca6 <__mspabi_remli>:
    7ca6:	4a 15       	pushm	#5,	r10	;16-bit words

00007ca8 <.LCFI7>:
    7ca8:	21 83       	decd	r1		;

00007caa <.LCFI8>:
    7caa:	08 4c       	mov	r12,	r8	;
    7cac:	09 4d       	mov	r13,	r9	;
    7cae:	0a 4e       	mov	r14,	r10	;
    7cb0:	06 4f       	mov	r15,	r6	;

00007cb2 <.LVL31>:
    7cb2:	47 43       	clr.b	r7		;

00007cb4 <.Loc.90.1>:
    7cb4:	0d 93       	cmp	#0,	r13	;r3 As==00
    7cb6:	07 34       	jge	$+16     	;abs 0x7cc6

00007cb8 <.Loc.92.1>:
    7cb8:	4c 43       	clr.b	r12		;

00007cba <.LVL32>:
    7cba:	4d 43       	clr.b	r13		;
    7cbc:	0c 88       	sub	r8,	r12	;
    7cbe:	0d 79       	subc	r9,	r13	;
    7cc0:	08 4c       	mov	r12,	r8	;
    7cc2:	09 4d       	mov	r13,	r9	;

00007cc4 <.LVL33>:
    7cc4:	57 43       	mov.b	#1,	r7	;r3 As==01

00007cc6 <.L31>:
    7cc6:	0c 4a       	mov	r10,	r12	;
    7cc8:	0d 46       	mov	r6,	r13	;
    7cca:	7e 40 1f 00 	mov.b	#31,	r14	;#0x001f
    7cce:	b0 12 06 7d 	call	#32006		;#0x7d06
    7cd2:	0e 4c       	mov	r12,	r14	;
    7cd4:	0e ea       	xor	r10,	r14	;
    7cd6:	0f 4d       	mov	r13,	r15	;
    7cd8:	0f e6       	xor	r6,	r15	;
    7cda:	91 43 00 00 	mov	#1,	0(r1)	;r3 As==01
    7cde:	0e 8c       	sub	r12,	r14	;
    7ce0:	0f 7d       	subc	r13,	r15	;
    7ce2:	0c 48       	mov	r8,	r12	;
    7ce4:	0d 49       	mov	r9,	r13	;
    7ce6:	b0 12 de 7b 	call	#31710		;#0x7bde

00007cea <.LVL36>:
    7cea:	07 93       	cmp	#0,	r7	;r3 As==00
    7cec:	06 24       	jz	$+14     	;abs 0x7cfa

00007cee <.LVL37>:
    7cee:	4e 43       	clr.b	r14		;
    7cf0:	4f 43       	clr.b	r15		;
    7cf2:	0e 8c       	sub	r12,	r14	;
    7cf4:	0f 7d       	subc	r13,	r15	;
    7cf6:	0c 4e       	mov	r14,	r12	;

00007cf8 <.LVL38>:
    7cf8:	0d 4f       	mov	r15,	r13	;

00007cfa <.L30>:
    7cfa:	21 53       	incd	r1		;

00007cfc <.LCFI9>:
    7cfc:	46 17       	popm	#5,	r10	;16-bit words

00007cfe <.LCFI10>:
    7cfe:	30 41       	ret			

00007d00 <L0^A>:
    7d00:	3e 53       	add	#-1,	r14	;r3 As==11
    7d02:	0d 11       	rra	r13		;
    7d04:	0c 10       	rrc	r12		;

00007d06 <__mspabi_sral>:
    7d06:	0e 93       	cmp	#0,	r14	;r3 As==00
    7d08:	fb 23       	jnz	$-8      	;abs 0x7d00
    7d0a:	30 41       	ret			

00007d0c <__mspabi_srlll>:
    7d0c:	0f 4b       	mov	r11,	r15	;
    7d0e:	0b 4c       	mov	r12,	r11	;
    7d10:	0e 4a       	mov	r10,	r14	;
    7d12:	0d 49       	mov	r9,	r13	;
    7d14:	0c 48       	mov	r8,	r12	;
    7d16:	0b 93       	cmp	#0,	r11	;r3 As==00
    7d18:	01 20       	jnz	$+4      	;abs 0x7d1c
    7d1a:	30 41       	ret			

00007d1c <.L1^B4>:
    7d1c:	12 c3       	clrc			
    7d1e:	0f 10       	rrc	r15		;
    7d20:	0e 10       	rrc	r14		;
    7d22:	0d 10       	rrc	r13		;
    7d24:	0c 10       	rrc	r12		;
    7d26:	3b 53       	add	#-1,	r11	;r3 As==11
    7d28:	f9 23       	jnz	$-12     	;abs 0x7d1c
    7d2a:	30 41       	ret			

00007d2c <__mulhi2>:
    7d2c:	02 12       	push	r2		;
    7d2e:	32 c2       	dint			
    7d30:	03 43       	nop			
    7d32:	82 4c c0 04 	mov	r12,	&0x04c0	;
    7d36:	82 4d c8 04 	mov	r13,	&0x04c8	;
    7d3a:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    7d3e:	00 13       	reti			

00007d40 <__mulsi2>:
    7d40:	02 12       	push	r2		;
    7d42:	32 c2       	dint			
    7d44:	03 43       	nop			
    7d46:	82 4c d0 04 	mov	r12,	&0x04d0	;
    7d4a:	82 4d d2 04 	mov	r13,	&0x04d2	;
    7d4e:	82 4e e0 04 	mov	r14,	&0x04e0	;
    7d52:	82 4f e2 04 	mov	r15,	&0x04e2	;
    7d56:	1c 42 e4 04 	mov	&0x04e4,r12	;0x04e4
    7d5a:	1d 42 e6 04 	mov	&0x04e6,r13	;0x04e6
    7d5e:	00 13       	reti			

00007d60 <__muldi3>:
    7d60:	02 12       	push	r2		;
    7d62:	32 c2       	dint			
    7d64:	03 43       	nop			
    7d66:	4a 15       	pushm	#5,	r10	;16-bit words
    7d68:	82 48 d0 04 	mov	r8,	&0x04d0	;
    7d6c:	82 49 d2 04 	mov	r9,	&0x04d2	;
    7d70:	82 4e e0 04 	mov	r14,	&0x04e0	;
    7d74:	82 4f e2 04 	mov	r15,	&0x04e2	;
    7d78:	16 42 e4 04 	mov	&0x04e4,r6	;0x04e4
    7d7c:	17 42 e6 04 	mov	&0x04e6,r7	;0x04e6
    7d80:	82 4a d0 04 	mov	r10,	&0x04d0	;
    7d84:	82 4b d2 04 	mov	r11,	&0x04d2	;
    7d88:	82 4c e0 04 	mov	r12,	&0x04e0	;
    7d8c:	82 4d e2 04 	mov	r13,	&0x04e2	;
    7d90:	16 52 e4 04 	add	&0x04e4,r6	;0x04e4
    7d94:	17 62 e6 04 	addc	&0x04e6,r7	;0x04e6
    7d98:	82 48 d0 04 	mov	r8,	&0x04d0	;
    7d9c:	82 49 d2 04 	mov	r9,	&0x04d2	;
    7da0:	82 4c e0 04 	mov	r12,	&0x04e0	;
    7da4:	82 4d e2 04 	mov	r13,	&0x04e2	;
    7da8:	1c 42 e4 04 	mov	&0x04e4,r12	;0x04e4
    7dac:	1d 42 e6 04 	mov	&0x04e6,r13	;0x04e6
    7db0:	1e 42 e8 04 	mov	&0x04e8,r14	;0x04e8
    7db4:	1f 42 ea 04 	mov	&0x04ea,r15	;0x04ea
    7db8:	0e 56       	add	r6,	r14	;
    7dba:	0f 67       	addc	r7,	r15	;
    7dbc:	46 17       	popm	#5,	r10	;16-bit words
    7dbe:	00 13       	reti			

00007dc0 <_exit>:
    7dc0:	ff 3f       	jmp	$+0      	;abs 0x7dc0

00007dc2 <memmove>:
    7dc2:	1a 15       	pushm	#2,	r10	;16-bit words

00007dc4 <L0^A>:
    7dc4:	0f 4d       	mov	r13,	r15	;
    7dc6:	0f 5e       	add	r14,	r15	;

00007dc8 <.Loc.69.1>:
    7dc8:	0d 9c       	cmp	r12,	r13	;
    7dca:	02 2c       	jc	$+6      	;abs 0x7dd0

00007dcc <.Loc.69.1>:
    7dcc:	0c 9f       	cmp	r15,	r12	;
    7dce:	07 28       	jnc	$+16     	;abs 0x7dde

00007dd0 <.L2>:
    7dd0:	0e 4c       	mov	r12,	r14	;

00007dd2 <.L4>:
    7dd2:	0d 9f       	cmp	r15,	r13	;
    7dd4:	0a 24       	jz	$+22     	;abs 0x7dea

00007dd6 <.LVL3>:
    7dd6:	fe 4d 00 00 	mov.b	@r13+,	0(r14)	;

00007dda <.LVL4>:
    7dda:	1e 53       	inc	r14		;
    7ddc:	fa 3f       	jmp	$-10     	;abs 0x7dd2

00007dde <.L3>:
    7dde:	09 4e       	mov	r14,	r9	;
    7de0:	39 e3       	inv	r9		;

00007de2 <.Loc.74.1>:
    7de2:	4d 43       	clr.b	r13		;

00007de4 <.L5>:
    7de4:	3d 53       	add	#-1,	r13	;r3 As==11

00007de6 <.LVL7>:
    7de6:	09 9d       	cmp	r13,	r9	;
    7de8:	02 20       	jnz	$+6      	;abs 0x7dee

00007dea <.L9>:
    7dea:	19 17       	popm	#2,	r10	;16-bit words

00007dec <.LCFI1>:
    7dec:	30 41       	ret			

00007dee <.L6>:
    7dee:	0b 4e       	mov	r14,	r11	;
    7df0:	0b 5d       	add	r13,	r11	;
    7df2:	0b 5c       	add	r12,	r11	;
    7df4:	0a 4f       	mov	r15,	r10	;
    7df6:	0a 5d       	add	r13,	r10	;

00007df8 <.LVL10>:
    7df8:	eb 4a 00 00 	mov.b	@r10,	0(r11)	;
    7dfc:	f3 3f       	jmp	$-24     	;abs 0x7de4

00007dfe <memset>:
    7dfe:	0e 5c       	add	r12,	r14	;

00007e00 <.LVL2>:
    7e00:	0f 4c       	mov	r12,	r15	;

00007e02 <L0^A>:
    7e02:	0f 9e       	cmp	r14,	r15	;
    7e04:	01 20       	jnz	$+4      	;abs 0x7e08

00007e06 <.Loc.104.1>:
    7e06:	30 41       	ret			

00007e08 <.L3>:
    7e08:	1f 53       	inc	r15		;

00007e0a <.LVL4>:
    7e0a:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7e0e:	f9 3f       	jmp	$-12     	;abs 0x7e02
