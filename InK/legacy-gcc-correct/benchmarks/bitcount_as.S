
bin/bitcount_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:
Disassembly of section .text:

0000532c <__crt0_start>:
    532c:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005330 <__crt0_init_bss>:
    5330:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005334 <.Loc.76.1>:
    5334:	0d 43       	clr	r13		;

00005336 <.Loc.77.1>:
    5336:	3e 40 60 00 	mov	#96,	r14	;#0x0060

0000533a <.Loc.81.1>:
    533a:	b0 12 36 70 	call	#28726		;#0x7036

0000533e <__crt0_movedata>:
    533e:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005342 <.Loc.116.1>:
    5342:	3d 40 2a 53 	mov	#21290,	r13	;#0x532a

00005346 <.Loc.119.1>:
    5346:	0d 9c       	cmp	r12,	r13	;

00005348 <.Loc.120.1>:
    5348:	04 24       	jz	$+10     	;abs 0x5352

0000534a <.Loc.122.1>:
    534a:	3e 40 00 00 	mov	#0,	r14	;

0000534e <.Loc.124.1>:
    534e:	b0 12 fa 6f 	call	#28666		;#0x6ffa

00005352 <__crt0_call_main>:
    5352:	0c 43       	clr	r12		;

00005354 <.Loc.254.1>:
    5354:	b0 12 24 67 	call	#26404		;#0x6724

00005358 <__crt0_call_exit>:
    5358:	b0 12 f8 6f 	call	#28664		;#0x6ff8

0000535c <__app_init>:

extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init(){
    thread1_init();
    535c:	b0 12 94 58 	call	#22676		;#0x5894

00005360 <.Loc.31.1>:
}
    5360:	30 41       	ret

00005362 <t_init>:

uint32_t flag = 77;
TASK(t_init){

#ifdef RAISE_PIN
    full_run_started = 1;
    5362:	d2 43 08 45 	mov.b	#1,	&0x4508	;r3 As==01

00005366 <.Loc.108.1>:
#endif

    __SET(pinCont,1);
    5366:	dc 43 00 00 	mov.b	#1,	0(r12)	;r3 As==01

0000536a <.Loc.109.1>:
    __SET(function,0);
    536a:	8c 43 10 00 	mov	#0,	16(r12)	;r3 As==00, 0x0010

0000536e <.Loc.110.1>:
    __SET(n_0,0);
    536e:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

00005372 <.Loc.111.1>:
    __SET(n_1,0);
    5372:	8c 43 04 00 	mov	#0,	4(r12)	;r3 As==00

00005376 <.Loc.112.1>:
    __SET(n_2,0);
    5376:	8c 43 06 00 	mov	#0,	6(r12)	;r3 As==00

0000537a <.Loc.113.1>:
    __SET(n_3,0);
    537a:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

0000537e <.Loc.114.1>:
    __SET(n_4,0);
    537e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00005382 <.Loc.115.1>:
    __SET(n_5,0);
    5382:	8c 43 0c 00 	mov	#0,	12(r12)	;r3 As==00, 0x000c

00005386 <.Loc.116.1>:
    __SET(n_6,0);
    5386:	8c 43 0e 00 	mov	#0,	14(r12)	;r3 As==00, 0x000e

0000538a <.Loc.119.1>:

    // next task is t_select_func
    return t_select_func;
}
    538a:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

0000538e <.LVL1>:
    538e:	30 41       	ret

00005390 <t_select_func>:
        seed = rand();
    #else
        seed = SEED;
    #endif

    __SET(iteration, 0);
    5390:	8c 43 12 00 	mov	#0,	18(r12)	;r3 As==00, 0x0012

00005394 <.Loc.136.1>:
    __SET(seed,seed);
    5394:	ac 42 14 00 	mov	#4,	20(r12)	;r2 As==10, 0x0014
    5398:	8c 43 16 00 	mov	#0,	22(r12)	;r3 As==00, 0x0016

0000539c <.Loc.138.1>:

    function = __GET(function);
    539c:	1d 4c 10 00 	mov	16(r12),r13	;0x00010

000053a0 <.LVL4>:

    if (function == 0)
    53a0:	0d 93       	cmp	#0,	r13	;r3 As==00
    53a2:	15 24       	jz	$+44     	;abs 0x53ce

000053a4 <.Loc.145.1>:
    {
        __SET(function,++function);
        return t_bit_count;
    }
    else if(function == 1)
    53a4:	1d 93       	cmp	#1,	r13	;r3 As==01
    53a6:	24 24       	jz	$+74     	;abs 0x53f0

000053a8 <.Loc.150.1>:
    {
        __SET(function,++function);
        return t_bitcount;
    }
    else if(function == 2)
    53a8:	2d 93       	cmp	#2,	r13	;r3 As==10
    53aa:	16 24       	jz	$+46     	;abs 0x53d8

000053ac <.Loc.155.1>:
    {
        __SET(function,++function);
        return t_ntbl_bitcnt;
    }
    else if(function == 3)
    53ac:	3d 90 03 00 	cmp	#3,	r13	;
    53b0:	24 24       	jz	$+74     	;abs 0x53fa

000053b2 <.Loc.160.1>:
    {
        __SET(function,++function);
        return t_ntbl_bitcount;
    }
    else if(function == 4)
    53b2:	2d 92       	cmp	#4,	r13	;r2 As==10
    53b4:	27 24       	jz	$+80     	;abs 0x5404

000053b6 <.Loc.165.1>:
    {
        __SET(function,++function);
        return t_BW_btbl_bitcount;
    }
    else if(function == 5)
    53b6:	3d 90 05 00 	cmp	#5,	r13	;
    53ba:	2a 24       	jz	$+86     	;abs 0x5410

000053bc <.Loc.170.1>:
    {
        __SET(function,++function);
        return t_AR_btbl_bitcount;
    }
    else if(function == 6)
    53bc:	3d 90 06 00 	cmp	#6,	r13	;
    53c0:	11 24       	jz	$+36     	;abs 0x53e4

000053c2 <.LVL5>:
        __SET(function,++function);
        return t_bit_shifter;
    }
    else
    {
        __SET(function,++function);
    53c2:	1d 53       	inc	r13		;

000053c4 <.LVL6>:
    53c4:	8c 4d 10 00 	mov	r13,	16(r12)	; 0x0010

000053c8 <.Loc.178.1>:
        return t_end;
    53c8:	3c 40 6c 58 	mov	#22636,	r12	;#0x586c

000053cc <.LVL7>:
    }

}
    53cc:	30 41       	ret

000053ce <.L12>:
        __SET(function,++function);
    53ce:	9c 43 10 00 	mov	#1,	16(r12)	;r3 As==01, 0x0010

000053d2 <.Loc.143.1>:
        return t_bit_count;
    53d2:	3c 40 1c 54 	mov	#21532,	r12	;#0x541c

000053d6 <.LVL9>:
}
    53d6:	30 41       	ret

000053d8 <.L14>:
        __SET(function,++function);
    53d8:	bc 40 03 00 	mov	#3,	16(r12)	; 0x0010
    53dc:	10 00

000053de <.Loc.153.1>:
        return t_ntbl_bitcnt;
    53de:	3c 40 c8 55 	mov	#21960,	r12	;#0x55c8

000053e2 <.LVL11>:
}
    53e2:	30 41       	ret

000053e4 <.L18>:
        __SET(function,++function);
    53e4:	bc 40 07 00 	mov	#7,	16(r12)	; 0x0010
    53e8:	10 00

000053ea <.Loc.173.1>:
        return t_bit_shifter;
    53ea:	3c 40 f8 57 	mov	#22520,	r12	;#0x57f8

000053ee <.LVL13>:
}
    53ee:	30 41       	ret

000053f0 <.L13>:
        __SET(function,++function);
    53f0:	ac 43 10 00 	mov	#2,	16(r12)	;r3 As==10, 0x0010

000053f4 <.Loc.148.1>:
        return t_bitcount;
    53f4:	3c 40 8a 54 	mov	#21642,	r12	;#0x548a

000053f8 <.LVL15>:
}
    53f8:	30 41       	ret

000053fa <.L15>:
        __SET(function,++function);
    53fa:	ac 42 10 00 	mov	#4,	16(r12)	;r2 As==10, 0x0010

000053fe <.Loc.158.1>:
        return t_ntbl_bitcount;
    53fe:	3c 40 6c 56 	mov	#22124,	r12	;#0x566c

00005402 <.LVL17>:
}
    5402:	30 41       	ret

00005404 <.L16>:
        __SET(function,++function);
    5404:	bc 40 05 00 	mov	#5,	16(r12)	; 0x0010
    5408:	10 00

0000540a <.Loc.163.1>:
        return t_BW_btbl_bitcount;
    540a:	3c 40 34 57 	mov	#22324,	r12	;#0x5734

0000540e <.LVL19>:
}
    540e:	30 41       	ret

00005410 <.L17>:
        __SET(function,++function);
    5410:	bc 40 06 00 	mov	#6,	16(r12)	; 0x0010
    5414:	10 00

00005416 <.Loc.168.1>:
        return t_AR_btbl_bitcount;
    5416:	3c 40 9c 57 	mov	#22428,	r12	;#0x579c

0000541a <.LVL21>:
}
    541a:	30 41       	ret

0000541c <t_bit_count>:

TASK(t_bit_count){
    541c:	2a 15       	pushm	#3,	r10	;16-bit words

0000541e <.LCFI0>:

        uint32_t seed = __GET(seed);
    541e:	1d 4c 14 00 	mov	20(r12),r13	;0x00014
    5422:	1e 4c 16 00 	mov	22(r12),r14	;0x00016

00005426 <.LVL23>:
        unsigned n_0 = __GET(n_0);
    5426:	18 4c 02 00 	mov	2(r12),	r8	;

0000542a <.LVL24>:
        unsigned iteration = __GET(iteration);
    542a:	19 4c 12 00 	mov	18(r12),r9	;0x00012

0000542e <.LVL25>:

        uint32_t tmp_seed = seed;
        seed = tmp_seed + 13;
    542e:	0f 4d       	mov	r13,	r15	;
    5430:	3f 50 0d 00 	add	#13,	r15	;#0x000d
    5434:	8c 4f 14 00 	mov	r15,	20(r12)	; 0x0014
    5438:	0f 4e       	mov	r14,	r15	;
    543a:	0f 63       	adc	r15		;
    543c:	8c 4f 16 00 	mov	r15,	22(r12)	; 0x0016

00005440 <.Loc.193.1>:
        __SET(seed,seed);

        unsigned temp = 0;
        if(tmp_seed) do
    5440:	0f 4d       	mov	r13,	r15	;
    5442:	0f de       	bis	r14,	r15	;
    5444:	0f 93       	cmp	#0,	r15	;r3 As==00
    5446:	0f 24       	jz	$+32     	;abs 0x5466

00005448 <.Loc.193.1>:
        unsigned temp = 0;
    5448:	4a 43       	clr.b	r10		;

0000544a <.L22>:
            temp++;
    544a:	1a 53       	inc	r10		;

0000544c <.Loc.196.1>:
        while (0 != (tmp_seed = tmp_seed&(tmp_seed-1)));
    544c:	0b 4d       	mov	r13,	r11	;
    544e:	3b 53       	add	#-1,	r11	;r3 As==11
    5450:	0f 4e       	mov	r14,	r15	;
    5452:	3f 63       	addc	#-1,	r15	;r3 As==11

00005454 <.Loc.196.1>:
    5454:	0b fd       	and	r13,	r11	;
    5456:	0f fe       	and	r14,	r15	;
    5458:	0d 4b       	mov	r11,	r13	;

0000545a <.LVL29>:
    545a:	0e 4f       	mov	r15,	r14	;

0000545c <.LVL30>:
    545c:	0f 4b       	mov	r11,	r15	;
    545e:	0f de       	bis	r14,	r15	;
    5460:	0f 93       	cmp	#0,	r15	;r3 As==00
    5462:	f3 23       	jnz	$-24     	;abs 0x544a
    5464:	08 5a       	add	r10,	r8	;

00005466 <.L20>:

        __SET(n_0, n_0 += temp);
    5466:	8c 48 02 00 	mov	r8,	2(r12)	;

0000546a <.Loc.199.1>:
        __SET(iteration, ++iteration);
    546a:	0d 49       	mov	r9,	r13	;
    546c:	1d 53       	inc	r13		;

0000546e <.LVL32>:
    546e:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005472 <.Loc.201.1>:

        if(iteration < ITER){
    5472:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005476 <.LVL33>:
    5476:	0c 9d       	cmp	r13,	r12	;
    5478:	04 2c       	jc	$+10     	;abs 0x5482

0000547a <.Loc.205.1>:
            return t_bit_count;
        }
        else{
            return t_select_func;
    547a:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

0000547e <.Loc.208.1>:
        }

}
    547e:	28 17       	popm	#3,	r10	;16-bit words

00005480 <.LCFI1>:
    5480:	30 41       	ret

00005482 <.L24>:
            return t_bit_count;
    5482:	3c 40 1c 54 	mov	#21532,	r12	;#0x541c

00005486 <.Loc.208.1>:
}
    5486:	28 17       	popm	#3,	r10	;16-bit words

00005488 <.LCFI3>:
    5488:	30 41       	ret

0000548a <t_bitcount>:

TASK(t_bitcount){
    548a:	6a 15       	pushm	#7,	r10	;16-bit words

0000548c <.LCFI4>:
    548c:	21 82       	sub	#4,	r1	;r2 As==10

0000548e <.LCFI5>:

    uint32_t seed = __GET(seed);
    548e:	1e 4c 14 00 	mov	20(r12),r14	;0x00014
    5492:	1f 4c 16 00 	mov	22(r12),r15	;0x00016

00005496 <.LVL35>:
    unsigned n_1 = __GET(n_1);
    unsigned iteration = __GET(iteration);

    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    5496:	0a 4e       	mov	r14,	r10	;
    5498:	3a 50 0d 00 	add	#13,	r10	;#0x000d
    549c:	8c 4a 14 00 	mov	r10,	20(r12)	; 0x0014
    54a0:	0b 4f       	mov	r15,	r11	;
    54a2:	0b 63       	adc	r11		;
    54a4:	8c 4b 16 00 	mov	r11,	22(r12)	; 0x0016

000054a8 <.Loc.220.1>:
    __SET(seed,seed);

    tmp_seed = ((tmp_seed & 0xAAAAAAAAL) >>  1) + (tmp_seed & 0x55555555L);
    54a8:	0a 4e       	mov	r14,	r10	;
    54aa:	0b 4f       	mov	r15,	r11	;
    54ac:	12 c3       	clrc
    54ae:	0b 10       	rrc	r11		;
    54b0:	0a 10       	rrc	r10		;
    54b2:	81 4b 02 00 	mov	r11,	2(r1)	;
    54b6:	05 4a       	mov	r10,	r5	;
    54b8:	35 f0 55 55 	and	#21845,	r5	;#0x5555
    54bc:	04 4b       	mov	r11,	r4	;
    54be:	34 f0 55 55 	and	#21845,	r4	;#0x5555

000054c2 <.Loc.220.1>:
    54c2:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
    54c6:	0d 4e       	mov	r14,	r13	;
    54c8:	3d f0 55 55 	and	#21845,	r13	;#0x5555
    54cc:	0b 4f       	mov	r15,	r11	;
    54ce:	3b f0 55 55 	and	#21845,	r11	;#0x5555

000054d2 <.Loc.220.1>:
    54d2:	06 45       	mov	r5,	r6	;
    54d4:	06 5d       	add	r13,	r6	;
    54d6:	07 4b       	mov	r11,	r7	;
    54d8:	07 64       	addc	r4,	r7	;

000054da <.LVL36>:
    tmp_seed = ((tmp_seed & 0xCCCCCCCCL) >>  2) + (tmp_seed & 0x33333333L);
    54da:	0e 46       	mov	r6,	r14	;
    54dc:	0f 47       	mov	r7,	r15	;
    54de:	12 c3       	clrc
    54e0:	0f 10       	rrc	r15		;
    54e2:	0e 10       	rrc	r14		;
    54e4:	12 c3       	clrc
    54e6:	0f 10       	rrc	r15		;
    54e8:	0e 10       	rrc	r14		;
    54ea:	05 4e       	mov	r14,	r5	;
    54ec:	35 f0 33 33 	and	#13107,	r5	;#0x3333
    54f0:	04 4f       	mov	r15,	r4	;
    54f2:	34 f0 33 33 	and	#13107,	r4	;#0x3333

000054f6 <.Loc.221.1>:
    54f6:	0d 46       	mov	r6,	r13	;
    54f8:	3d f0 33 33 	and	#13107,	r13	;#0x3333
    54fc:	0e 47       	mov	r7,	r14	;
    54fe:	3e f0 33 33 	and	#13107,	r14	;#0x3333

00005502 <.Loc.221.1>:
    5502:	08 45       	mov	r5,	r8	;
    5504:	08 5d       	add	r13,	r8	;
    5506:	09 44       	mov	r4,	r9	;
    5508:	09 6e       	addc	r14,	r9	;

0000550a <.LVL38>:
    tmp_seed = ((tmp_seed & 0xF0F0F0F0L) >>  4) + (tmp_seed & 0x0F0F0F0FL);
    550a:	06 48       	mov	r8,	r6	;
    550c:	07 49       	mov	r9,	r7	;
    550e:	12 c3       	clrc
    5510:	07 10       	rrc	r7		;
    5512:	06 10       	rrc	r6		;
    5514:	12 c3       	clrc
    5516:	07 10       	rrc	r7		;
    5518:	06 10       	rrc	r6		;
    551a:	12 c3       	clrc
    551c:	07 10       	rrc	r7		;
    551e:	06 10       	rrc	r6		;
    5520:	12 c3       	clrc
    5522:	07 10       	rrc	r7		;
    5524:	06 10       	rrc	r6		;
    5526:	0e 46       	mov	r6,	r14	;
    5528:	3e f0 0f 0f 	and	#3855,	r14	;#0x0f0f
    552c:	05 47       	mov	r7,	r5	;
    552e:	35 f0 0f 0f 	and	#3855,	r5	;#0x0f0f

00005532 <.Loc.222.1>:
    5532:	0d 48       	mov	r8,	r13	;
    5534:	3d f0 0f 0f 	and	#3855,	r13	;#0x0f0f
    5538:	0f 49       	mov	r9,	r15	;
    553a:	3f f0 0f 0f 	and	#3855,	r15	;#0x0f0f

0000553e <.Loc.222.1>:
    553e:	0a 4e       	mov	r14,	r10	;
    5540:	0a 5d       	add	r13,	r10	;
    5542:	0b 45       	mov	r5,	r11	;
    5544:	0b 6f       	addc	r15,	r11	;

00005546 <.LVL39>:
    tmp_seed = ((tmp_seed & 0xFF00FF00L) >>  8) + (tmp_seed & 0x00FF00FFL);
    5546:	08 4a       	mov	r10,	r8	;
    5548:	09 4b       	mov	r11,	r9	;
    554a:	12 c3       	clrc
    554c:	09 10       	rrc	r9		;
    554e:	08 10       	rrc	r8		;
    5550:	12 c3       	clrc
    5552:	09 10       	rrc	r9		;
    5554:	08 10       	rrc	r8		;
    5556:	12 c3       	clrc
    5558:	09 10       	rrc	r9		;
    555a:	08 10       	rrc	r8		;
    555c:	12 c3       	clrc
    555e:	09 10       	rrc	r9		;
    5560:	08 10       	rrc	r8		;
    5562:	12 c3       	clrc
    5564:	09 10       	rrc	r9		;
    5566:	08 10       	rrc	r8		;
    5568:	12 c3       	clrc
    556a:	09 10       	rrc	r9		;
    556c:	08 10       	rrc	r8		;
    556e:	12 c3       	clrc
    5570:	09 10       	rrc	r9		;
    5572:	08 10       	rrc	r8		;
    5574:	12 c3       	clrc
    5576:	09 10       	rrc	r9		;
    5578:	08 10       	rrc	r8		;
    557a:	0d 48       	mov	r8,	r13	;
    557c:	7d f0 ff 00 	and.b	#255,	r13	;#0x00ff
    5580:	0e 49       	mov	r9,	r14	;
    5582:	7e f0 ff 00 	and.b	#255,	r14	;#0x00ff

00005586 <.Loc.223.1>:
    5586:	0f 4a       	mov	r10,	r15	;
    5588:	7f f0 ff 00 	and.b	#255,	r15	;#0x00ff
    558c:	09 4b       	mov	r11,	r9	;
    558e:	79 f0 ff 00 	and.b	#255,	r9	;#0x00ff

00005592 <.Loc.223.1>:
    5592:	0d 5f       	add	r15,	r13	;
    5594:	0e 69       	addc	r9,	r14	;

00005596 <.LVL40>:
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);
    5596:	0f 4d       	mov	r13,	r15	;

00005598 <.LVL41>:
    5598:	1f 5c 04 00 	add	4(r12),	r15	;

0000559c <.Loc.226.1>:

    __SET(n_1,n_1 += (int)tmp_seed);
    559c:	0f 5e       	add	r14,	r15	;
    559e:	8c 4f 04 00 	mov	r15,	4(r12)	;

000055a2 <.Loc.227.1>:
    __SET(iteration,++iteration);
    55a2:	1d 4c 12 00 	mov	18(r12),r13	;0x00012
    55a6:	1d 53       	inc	r13		;

000055a8 <.LVL44>:
    55a8:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000055ac <.Loc.229.1>:

    if(iteration < ITER){
    55ac:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

000055b0 <.LVL45>:
    55b0:	0c 9d       	cmp	r13,	r12	;
    55b2:	05 2c       	jc	$+12     	;abs 0x55be

000055b4 <.Loc.233.1>:
        return t_bitcount;
    }
    else{
        return t_select_func;
    55b4:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

000055b8 <.Loc.236.1>:
    }

}
    55b8:	21 52       	add	#4,	r1	;r2 As==10

000055ba <.LCFI6>:
    55ba:	64 17       	popm	#7,	r10	;16-bit words

000055bc <.LCFI7>:
    55bc:	30 41       	ret

000055be <.L31>:
        return t_bitcount;
    55be:	3c 40 8a 54 	mov	#21642,	r12	;#0x548a

000055c2 <.Loc.236.1>:
}
    55c2:	21 52       	add	#4,	r1	;r2 As==10

000055c4 <.LCFI9>:
    55c4:	64 17       	popm	#7,	r10	;16-bit words

000055c6 <.LCFI10>:
    55c6:	30 41       	ret

000055c8 <t_ntbl_bitcnt>:
    }

    return cnt;
}

TASK(t_ntbl_bitcnt){
    55c8:	3a 15       	pushm	#4,	r10	;16-bit words

000055ca <.LCFI11>:

    uint32_t seed = __GET(seed);
    55ca:	18 4c 14 00 	mov	20(r12),r8	;0x00014
    55ce:	19 4c 16 00 	mov	22(r12),r9	;0x00016

000055d2 <.LVL47>:
    unsigned n_2 = __GET(n_2);
    55d2:	17 4c 06 00 	mov	6(r12),	r7	;

000055d6 <.LVL48>:
    unsigned iteration = __GET(iteration);
    55d6:	1a 4c 12 00 	mov	18(r12),r10	;0x00012

000055da <.LBB4>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    55da:	0d 48       	mov	r8,	r13	;
    55dc:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

000055e0 <.Loc.249.1>:
    55e0:	5b 4d 3a 45 	mov.b	17722(r13),r11	;0x0453a

000055e4 <.LVL50>:
    while (0L != (x >>= 4)) {
    55e4:	0e 48       	mov	r8,	r14	;
    55e6:	0f 49       	mov	r9,	r15	;
    55e8:	12 c3       	clrc
    55ea:	0f 10       	rrc	r15		;
    55ec:	0e 10       	rrc	r14		;
    55ee:	12 c3       	clrc
    55f0:	0f 10       	rrc	r15		;
    55f2:	0e 10       	rrc	r14		;
    55f4:	12 c3       	clrc
    55f6:	0f 10       	rrc	r15		;
    55f8:	0e 10       	rrc	r14		;
    55fa:	12 c3       	clrc
    55fc:	0f 10       	rrc	r15		;
    55fe:	0e 10       	rrc	r14		;

00005600 <.LVL51>:
    5600:	0d 4e       	mov	r14,	r13	;
    5602:	0d df       	bis	r15,	r13	;
    5604:	0d 93       	cmp	#0,	r13	;r3 As==00
    5606:	16 24       	jz	$+46     	;abs 0x5634

00005608 <.L35>:
        cnt += bits[(int)(x & 0x0000000FL)];
    5608:	0d 4e       	mov	r14,	r13	;
    560a:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

0000560e <.Loc.252.1>:
    560e:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    5612:	0b 5d       	add	r13,	r11	;

00005614 <.Loc.251.1>:
    while (0L != (x >>= 4)) {
    5614:	12 c3       	clrc
    5616:	0f 10       	rrc	r15		;
    5618:	0e 10       	rrc	r14		;
    561a:	12 c3       	clrc
    561c:	0f 10       	rrc	r15		;
    561e:	0e 10       	rrc	r14		;
    5620:	12 c3       	clrc
    5622:	0f 10       	rrc	r15		;
    5624:	0e 10       	rrc	r14		;
    5626:	12 c3       	clrc
    5628:	0f 10       	rrc	r15		;
    562a:	0e 10       	rrc	r14		;

0000562c <.Loc.251.1>:
    562c:	0d 4e       	mov	r14,	r13	;
    562e:	0d df       	bis	r15,	r13	;
    5630:	0d 93       	cmp	#0,	r13	;r3 As==00
    5632:	ea 23       	jnz	$-42     	;abs 0x5608

00005634 <.L33>:

    uint32_t tmp_seed = seed;
    n_2 += non_recursive_cnt(tmp_seed);
    seed = tmp_seed + 13;
    iteration++;
    5634:	0d 4a       	mov	r10,	r13	;
    5636:	1d 53       	inc	r13		;

00005638 <.LVL55>:
    n_2 += non_recursive_cnt(tmp_seed);
    5638:	0b 57       	add	r7,	r11	;

0000563a <.LVL56>:
    563a:	8c 4b 06 00 	mov	r11,	6(r12)	;

0000563e <.Loc.266.1>:
    seed = tmp_seed + 13;
    563e:	0e 48       	mov	r8,	r14	;
    5640:	3e 50 0d 00 	add	#13,	r14	;#0x000d
    5644:	8c 4e 14 00 	mov	r14,	20(r12)	; 0x0014
    5648:	0e 49       	mov	r9,	r14	;
    564a:	0e 63       	adc	r14		;
    564c:	8c 4e 16 00 	mov	r14,	22(r12)	; 0x0016

00005650 <.Loc.271.1>:

    __SET(n_2,n_2);
    __SET(seed, seed);
    __SET(iteration,iteration);
    5650:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005654 <.Loc.273.1>:

    if(iteration < ITER){
    5654:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005658 <.LVL57>:
    5658:	0c 9d       	cmp	r13,	r12	;
    565a:	04 2c       	jc	$+10     	;abs 0x5664

0000565c <.Loc.277.1>:
        return t_ntbl_bitcnt;
    }
    else{
        return t_select_func;
    565c:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

00005660 <.Loc.279.1>:
    }
}
    5660:	37 17       	popm	#4,	r10	;16-bit words

00005662 <.LCFI12>:
    5662:	30 41       	ret

00005664 <.L37>:
        return t_ntbl_bitcnt;
    5664:	3c 40 c8 55 	mov	#21960,	r12	;#0x55c8

00005668 <.Loc.279.1>:
}
    5668:	37 17       	popm	#4,	r10	;16-bit words

0000566a <.LCFI14>:
    566a:	30 41       	ret

0000566c <t_ntbl_bitcount>:

TASK(t_ntbl_bitcount){
    566c:	2a 15       	pushm	#3,	r10	;16-bit words

0000566e <.LCFI15>:
    /* ------ local variables for persistents ------*/
    uint32_t seed = __GET(seed);
    566e:	1e 4c 14 00 	mov	20(r12),r14	;0x00014
    5672:	1f 4c 16 00 	mov	22(r12),r15	;0x00016

00005676 <.LVL59>:
    uint16_t __cry = seed;
    n_3 += bits[ (int) (__cry & 0x0000000FUL)       ] +
        bits[ (int)((__cry & 0x000000F0UL) >> 4) ] +
        bits[ (int)((__cry & 0x00000F00UL) >> 8) ] +
        bits[ (int)((__cry & 0x0000F000UL) >> 12)] +
        bits[ (int)((__cry & 0x000F0000UL) >> 16)] +
    5676:	5b 42 3a 45 	mov.b	&0x453a,r11	;0x453a

0000567a <.LVL60>:
        bits[ (int)((__cry & 0x0F000000UL) >> 24)] +
        bits[ (int)((__cry & 0xF0000000UL) >> 28)];

    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;
    567a:	1a 4c 12 00 	mov	18(r12),r10	;0x00012
    567e:	1a 53       	inc	r10		;

00005680 <.LVL61>:
        bits[ (int)((__cry & 0x000000F0UL) >> 4) ] +
    5680:	08 4e       	mov	r14,	r8	;
    5682:	09 4f       	mov	r15,	r9	;
    5684:	12 c3       	clrc
    5686:	09 10       	rrc	r9		;
    5688:	08 10       	rrc	r8		;
    568a:	12 c3       	clrc
    568c:	09 10       	rrc	r9		;
    568e:	08 10       	rrc	r8		;
    5690:	12 c3       	clrc
    5692:	09 10       	rrc	r9		;
    5694:	08 10       	rrc	r8		;
    5696:	12 c3       	clrc
    5698:	09 10       	rrc	r9		;
    569a:	08 10       	rrc	r8		;

0000569c <.Loc.289.1>:
    569c:	78 f0 0f 00 	and.b	#15,	r8	;#0x000f

000056a0 <.Loc.288.1>:
    n_3 += bits[ (int) (__cry & 0x0000000FUL)       ] +
    56a0:	0d 4e       	mov	r14,	r13	;
    56a2:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

000056a6 <.Loc.288.1>:
    56a6:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    56aa:	58 48 3a 45 	mov.b	17722(r8),r8	;0x0453a
    56ae:	0d 58       	add	r8,	r13	;

000056b0 <.Loc.290.1>:
        bits[ (int)((__cry & 0x00000F00UL) >> 8) ] +
    56b0:	08 4e       	mov	r14,	r8	;
    56b2:	09 4f       	mov	r15,	r9	;
    56b4:	12 c3       	clrc
    56b6:	09 10       	rrc	r9		;
    56b8:	08 10       	rrc	r8		;
    56ba:	12 c3       	clrc
    56bc:	09 10       	rrc	r9		;
    56be:	08 10       	rrc	r8		;
    56c0:	12 c3       	clrc
    56c2:	09 10       	rrc	r9		;
    56c4:	08 10       	rrc	r8		;
    56c6:	12 c3       	clrc
    56c8:	09 10       	rrc	r9		;
    56ca:	08 10       	rrc	r8		;
    56cc:	12 c3       	clrc
    56ce:	09 10       	rrc	r9		;
    56d0:	08 10       	rrc	r8		;
    56d2:	12 c3       	clrc
    56d4:	09 10       	rrc	r9		;
    56d6:	08 10       	rrc	r8		;
    56d8:	12 c3       	clrc
    56da:	09 10       	rrc	r9		;
    56dc:	08 10       	rrc	r8		;
    56de:	12 c3       	clrc
    56e0:	09 10       	rrc	r9		;
    56e2:	08 10       	rrc	r8		;

000056e4 <.Loc.290.1>:
    56e4:	78 f0 0f 00 	and.b	#15,	r8	;#0x000f

000056e8 <.Loc.289.1>:
        bits[ (int)((__cry & 0x000000F0UL) >> 4) ] +
    56e8:	58 48 3a 45 	mov.b	17722(r8),r8	;0x0453a
    56ec:	0d 58       	add	r8,	r13	;

000056ee <.Loc.291.1>:
        bits[ (int)((__cry & 0x0000F000UL) >> 12)] +
    56ee:	09 4e       	mov	r14,	r9	;
    56f0:	4b 19 09 10 	rpt #12 { rrux.w	r9		;

000056f4 <.Loc.290.1>:
        bits[ (int)((__cry & 0x00000F00UL) >> 8) ] +
    56f4:	59 49 3a 45 	mov.b	17722(r9),r9	;0x0453a
    56f8:	0d 59       	add	r9,	r13	;

000056fa <.Loc.291.1>:
        bits[ (int)((__cry & 0x0000F000UL) >> 12)] +
    56fa:	0d 5b       	add	r11,	r13	;

000056fc <.Loc.292.1>:
        bits[ (int)((__cry & 0x000F0000UL) >> 16)] +
    56fc:	0d 5b       	add	r11,	r13	;

000056fe <.Loc.293.1>:
        bits[ (int)((__cry & 0x00F00000UL) >> 20)] +
    56fe:	0d 5b       	add	r11,	r13	;

00005700 <.Loc.294.1>:
        bits[ (int)((__cry & 0x0F000000UL) >> 24)] +
    5700:	0d 5b       	add	r11,	r13	;

00005702 <.Loc.288.1>:
    n_3 += bits[ (int) (__cry & 0x0000000FUL)       ] +
    5702:	8c 5d 08 00 	add	r13,	8(r12)	;

00005706 <.Loc.298.1>:
    seed = tmp_seed + 13;
    5706:	0d 4e       	mov	r14,	r13	;
    5708:	3d 50 0d 00 	add	#13,	r13	;#0x000d
    570c:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014
    5710:	0d 4f       	mov	r15,	r13	;
    5712:	0d 63       	adc	r13		;
    5714:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005718 <.Loc.303.1>:

    __SET(n_3,n_3);
    __SET(seed, seed);
    __SET(iteration,iteration);
    5718:	8c 4a 12 00 	mov	r10,	18(r12)	; 0x0012

0000571c <.Loc.305.1>:

    if(iteration < ITER){
    571c:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005720 <.LVL63>:
    5720:	0c 9a       	cmp	r10,	r12	;
    5722:	04 2c       	jc	$+10     	;abs 0x572c

00005724 <.Loc.309.1>:
        return t_ntbl_bitcount;
    }
    else{
        return t_select_func;
    5724:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

00005728 <.Loc.311.1>:
    }
}
    5728:	28 17       	popm	#3,	r10	;16-bit words

0000572a <.LCFI16>:
    572a:	30 41       	ret

0000572c <.L44>:
        return t_ntbl_bitcount;
    572c:	3c 40 6c 56 	mov	#22124,	r12	;#0x566c

00005730 <.Loc.311.1>:
}
    5730:	28 17       	popm	#3,	r10	;16-bit words

00005732 <.LCFI18>:
    5732:	30 41       	ret

00005734 <t_BW_btbl_bitcount>:

TASK(t_BW_btbl_bitcount){
    5734:	1a 15       	pushm	#2,	r10	;16-bit words

00005736 <.LCFI19>:

    /* ------ local variables for persistents ------*/
    uint32_t seed = __GET(seed);
    5736:	1e 4c 14 00 	mov	20(r12),r14	;0x00014
    573a:	1a 4c 16 00 	mov	22(r12),r10	;0x00016

0000573e <.LVL65>:
    {
        unsigned char ch[4];
        long y;
    } U;

    U.y = seed;
    573e:	0d 4e       	mov	r14,	r13	;
    5740:	0f 4a       	mov	r10,	r15	;

00005742 <.LVL66>:

    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
        bits[ U.ch[3] ] + bits[ U.ch[2] ];
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;
    5742:	1b 4c 12 00 	mov	18(r12),r11	;0x00012
    5746:	1b 53       	inc	r11		;

00005748 <.LVL67>:
    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
    5748:	49 4e       	mov.b	r14,	r9	;

0000574a <.Loc.328.1>:
    574a:	47 19 0d 10 	rpt #8 { rrux.w	r13		;

0000574e <.Loc.328.1>:
    574e:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    5752:	59 49 3a 45 	mov.b	17722(r9),r9	;0x0453a
    5756:	0d 59       	add	r9,	r13	;

00005758 <.Loc.329.1>:
        bits[ U.ch[3] ] + bits[ U.ch[2] ];
    5758:	09 4a       	mov	r10,	r9	;
    575a:	47 19 09 10 	rpt #8 { rrux.w	r9		;

0000575e <.Loc.328.1>:
    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
    575e:	59 49 3a 45 	mov.b	17722(r9),r9	;0x0453a
    5762:	0d 59       	add	r9,	r13	;

00005764 <.Loc.329.1>:
        bits[ U.ch[3] ] + bits[ U.ch[2] ];
    5764:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

00005768 <.Loc.329.1>:
    5768:	5f 4f 3a 45 	mov.b	17722(r15),r15	;0x0453a
    576c:	0d 5f       	add	r15,	r13	;

0000576e <.Loc.328.1>:
    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
    576e:	8c 5d 0a 00 	add	r13,	10(r12)	; 0x000a

00005772 <.Loc.331.1>:
    seed = tmp_seed + 13;
    5772:	3e 50 0d 00 	add	#13,	r14	;#0x000d

00005776 <.LVL69>:
    5776:	8c 4e 14 00 	mov	r14,	20(r12)	; 0x0014

0000577a <.LVL70>:
    577a:	0a 63       	adc	r10		;
    577c:	8c 4a 16 00 	mov	r10,	22(r12)	; 0x0016

00005780 <.Loc.336.1>:

    __SET(n_4,n_4);
    __SET(seed, seed);
    __SET(iteration,iteration);
    5780:	8c 4b 12 00 	mov	r11,	18(r12)	; 0x0012

00005784 <.Loc.338.1>:

    if(iteration < ITER){
    5784:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005788 <.LVL73>:
    5788:	0c 9b       	cmp	r11,	r12	;
    578a:	04 2c       	jc	$+10     	;abs 0x5794

0000578c <.Loc.342.1>:
        return t_BW_btbl_bitcount;
    }
    else{
        return t_select_func;
    578c:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

00005790 <.Loc.345.1>:
    }

}
    5790:	19 17       	popm	#2,	r10	;16-bit words

00005792 <.LCFI20>:
    5792:	30 41       	ret

00005794 <.L47>:
        return t_BW_btbl_bitcount;
    5794:	3c 40 34 57 	mov	#22324,	r12	;#0x5734

00005798 <.Loc.345.1>:
}
    5798:	19 17       	popm	#2,	r10	;16-bit words

0000579a <.LCFI22>:
    579a:	30 41       	ret

0000579c <t_AR_btbl_bitcount>:

TASK(t_AR_btbl_bitcount) {
    579c:	0a 15       	pushm	#1,	r10	;16-bit words

0000579e <.LCFI23>:
    unsigned iteration = __GET(iteration);

    unsigned char * Ptr = (unsigned char *) &seed ;
    int Accu ;

    Accu  = bits[ *Ptr++ ];
    579e:	3d 40 3a 45 	mov	#17722,	r13	;#0x453a
    57a2:	5e 4c 14 00 	mov.b	20(r12),r14	;0x00014
    57a6:	0e 5d       	add	r13,	r14	;

000057a8 <.Loc.358.1>:
    Accu += bits[ *Ptr++ ];
    57a8:	5f 4c 15 00 	mov.b	21(r12),r15	;0x00015
    57ac:	0f 5d       	add	r13,	r15	;

000057ae <.Loc.358.1>:
    57ae:	6e 4e       	mov.b	@r14,	r14	;
    57b0:	6f 4f       	mov.b	@r15,	r15	;
    57b2:	0e 5f       	add	r15,	r14	;

000057b4 <.LVL78>:
    Accu += bits[ *Ptr++ ];
    57b4:	5f 4c 16 00 	mov.b	22(r12),r15	;0x00016
    57b8:	0f 5d       	add	r13,	r15	;

000057ba <.Loc.359.1>:
    57ba:	6f 4f       	mov.b	@r15,	r15	;
    57bc:	0e 5f       	add	r15,	r14	;

000057be <.LVL79>:
    Accu += bits[ *Ptr ];
    n_5+= Accu;
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;
    57be:	1f 4c 12 00 	mov	18(r12),r15	;0x00012
    57c2:	1f 53       	inc	r15		;

000057c4 <.LVL80>:
    Accu += bits[ *Ptr ];
    57c4:	5a 4c 17 00 	mov.b	23(r12),r10	;0x00017
    57c8:	0d 5a       	add	r10,	r13	;

000057ca <.Loc.360.1>:
    57ca:	6d 4d       	mov.b	@r13,	r13	;
    57cc:	0d 5e       	add	r14,	r13	;

000057ce <.Loc.361.1>:
    n_5+= Accu;
    57ce:	8c 5d 0c 00 	add	r13,	12(r12)	; 0x000c

000057d2 <.Loc.363.1>:
    seed = tmp_seed + 13;
    57d2:	bc 50 0d 00 	add	#13,	20(r12)	;#0x000d, 0x0014
    57d6:	14 00
    57d8:	8c 63 16 00 	adc	22(r12)		;

000057dc <.LVL82>:

    __SET(n_5,n_5);
    __SET(seed, seed);
    __SET(iteration,iteration);
    57dc:	8c 4f 12 00 	mov	r15,	18(r12)	; 0x0012

000057e0 <.Loc.370.1>:

    if(iteration < ITER){
    57e0:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

000057e4 <.LVL83>:
    57e4:	0c 9f       	cmp	r15,	r12	;
    57e6:	04 2c       	jc	$+10     	;abs 0x57f0

000057e8 <.Loc.374.1>:
        return t_AR_btbl_bitcount;
    }
    else{
        return t_select_func;
    57e8:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

000057ec <.Loc.376.1>:
    }
}
    57ec:	0a 17       	popm	#1,	r10	;16-bit words

000057ee <.LCFI24>:
    57ee:	30 41       	ret

000057f0 <.L50>:
        return t_AR_btbl_bitcount;
    57f0:	3c 40 9c 57 	mov	#22428,	r12	;#0x579c

000057f4 <.Loc.376.1>:
}
    57f4:	0a 17       	popm	#1,	r10	;16-bit words

000057f6 <.LCFI26>:
    57f6:	30 41       	ret

000057f8 <t_bit_shifter>:

TASK(t_bit_shifter){
    57f8:	4a 15       	pushm	#5,	r10	;16-bit words

000057fa <.LCFI27>:
        /* ------ local variables for persistents ------*/
    uint32_t seed = __GET(seed);
    57fa:	18 4c 14 00 	mov	20(r12),r8	;0x00014
    57fe:	17 4c 16 00 	mov	22(r12),r7	;0x00016

00005802 <.LVL86>:
    unsigned n_6 = __GET(n_6);
    5802:	16 4c 0e 00 	mov	14(r12),r6	;0x0000e

00005806 <.LVL87>:
    unsigned iteration = __GET(iteration);
    5806:	19 4c 12 00 	mov	18(r12),r9	;0x00012

0000580a <.LVL88>:

    unsigned i, nn;
    uint32_t tmp_seed = seed;
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    580a:	0d 48       	mov	r8,	r13	;
    580c:	0d d7       	bis	r7,	r13	;
    580e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5810:	14 24       	jz	$+42     	;abs 0x583a
    5812:	0e 48       	mov	r8,	r14	;
    5814:	0f 47       	mov	r7,	r15	;
    5816:	7b 40 20 00 	mov.b	#32,	r11	;#0x0020

0000581a <.Loc.386.1>:
    581a:	4a 43       	clr.b	r10		;
    581c:	03 3c       	jmp	$+8      	;abs 0x5824

0000581e <.L54>:
    581e:	3b 53       	add	#-1,	r11	;r3 As==11

00005820 <.Loc.386.1>:
    5820:	0b 93       	cmp	#0,	r11	;r3 As==00
    5822:	0a 24       	jz	$+22     	;abs 0x5838

00005824 <.L55>:
        nn += (unsigned)(tmp_seed & 1L);
    5824:	0d 4e       	mov	r14,	r13	;
    5826:	5d f3       	and.b	#1,	r13	;r3 As==01

00005828 <.Loc.387.1>:
    5828:	0a 5d       	add	r13,	r10	;

0000582a <.Loc.386.1>:
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    582a:	12 c3       	clrc
    582c:	0f 10       	rrc	r15		;
    582e:	0e 10       	rrc	r14		;

00005830 <.Loc.386.1>:
    5830:	0d 4e       	mov	r14,	r13	;
    5832:	0d df       	bis	r15,	r13	;
    5834:	0d 93       	cmp	#0,	r13	;r3 As==00
    5836:	f3 23       	jnz	$-24     	;abs 0x581e

00005838 <.L62>:
    5838:	06 5a       	add	r10,	r6	;

0000583a <.L52>:
    n_6 += nn;
    tmp_seed = seed;
    tmp_seed += 13;
    seed = tmp_seed;

    iteration++;
    583a:	0d 49       	mov	r9,	r13	;
    583c:	1d 53       	inc	r13		;

0000583e <.LVL94>:

    __SET(n_6,n_6);
    583e:	8c 46 0e 00 	mov	r6,	14(r12)	; 0x000e

00005842 <.Loc.390.1>:
    tmp_seed += 13;
    5842:	38 50 0d 00 	add	#13,	r8	;#0x000d
    5846:	8c 48 14 00 	mov	r8,	20(r12)	; 0x0014
    584a:	07 63       	adc	r7		;
    584c:	8c 47 16 00 	mov	r7,	22(r12)	; 0x0016

00005850 <.Loc.397.1>:
    __SET(seed, seed);
    __SET(iteration,iteration);
    5850:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005854 <.Loc.399.1>:

    if(iteration < ITER){
    5854:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005858 <.LVL99>:
    5858:	0c 9d       	cmp	r13,	r12	;
    585a:	04 2c       	jc	$+10     	;abs 0x5864

0000585c <.Loc.403.1>:
        return t_bit_shifter;
    }
    else{
        return t_select_func;
    585c:	3c 40 90 53 	mov	#21392,	r12	;#0x5390

00005860 <.Loc.405.1>:
    }
}
    5860:	46 17       	popm	#5,	r10	;16-bit words

00005862 <.LCFI28>:
    5862:	30 41       	ret

00005864 <.L57>:
        return t_bit_shifter;
    5864:	3c 40 f8 57 	mov	#22520,	r12	;#0x57f8

00005868 <.Loc.405.1>:
}
    5868:	46 17       	popm	#5,	r10	;16-bit words

0000586a <.LCFI30>:
    586a:	30 41       	ret

0000586c <t_end>:

TASK(t_end){
        /* ------ local variables for persistents ------*/
    uint8_t pinCont = __GET(pinCont);
    586c:	6d 4c       	mov.b	@r12,	r13	;

0000586e <.LVL101>:
    /* ------------------------------------- */

#ifdef RAISE_PIN
    if (full_run_started) {
    586e:	c2 93 08 45 	cmp.b	#0,	&0x4508	;r3 As==00
    5872:	08 24       	jz	$+18     	;abs 0x5884

00005874 <.Loc.414.1>:
        __port_on(3, 4);
    5874:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    5878:	22 02

0000587a <.Loc.414.1>:
        __port_off(3, 4);
    587a:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    587e:	22 02

00005880 <.Loc.415.1>:
        full_run_started = 0;
    5880:	c2 43 08 45 	mov.b	#0,	&0x4508	;r3 As==00

00005884 <.L64>:
    }
#endif

    if (pinCont){
    5884:	0d 93       	cmp	#0,	r13	;r3 As==00
    5886:	01 24       	jz	$+4      	;abs 0x588a

00005888 <.Loc.421.1>:
        __no_operation();
    5888:	03 43       	nop

0000588a <.L65>:
    }


    __SET(pinCont,0);
    588a:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

0000588e <.Loc.427.1>:

    return t_init;
}
    588e:	3c 40 62 53 	mov	#21346,	r12	;#0x5362

00005892 <.LVL103>:
    5892:	30 41       	ret

00005894 <thread1_init>:
void thread1_init(){
    5894:	21 83       	decd	r1		;

00005896 <.LCFI31>:
    __CREATE(15,t_init);
    5896:	b1 40 18 00 	mov	#24,	0(r1)	;#0x0018
    589a:	00 00
    589c:	3f 40 22 45 	mov	#17698,	r15	;#0x4522
    58a0:	3e 40 0a 45 	mov	#17674,	r14	;#0x450a
    58a4:	3d 40 62 53 	mov	#21346,	r13	;#0x5362
    58a8:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    58ac:	b0 12 be 59 	call	#22974		;#0x59be

000058b0 <.Loc.90.1>:
    __SIGNAL(15);
    58b0:	32 c2       	dint
    58b2:	03 43       	nop

000058b4 <.Loc.90.1>:
    58b4:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    58b8:	b0 12 62 5a 	call	#23138		;#0x5a62
    58bc:	b0 12 46 5a 	call	#23110		;#0x5a46

000058c0 <.Loc.90.1>:
    58c0:	03 43       	nop
    58c2:	32 d2       	eint
    58c4:	03 43       	nop

000058c6 <.Loc.91.1>:
}
    58c6:	21 53       	incd	r1		;

000058c8 <.LCFI32>:
    58c8:	30 41       	ret

000058ca <__app_reboot>:
    __port_init(3, 4);
    58ca:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    58ce:	22 02

000058d0 <.Loc.95.1>:
    58d0:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    58d4:	24 02

000058d6 <.Loc.95.1>:
    58d6:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    58da:	22 02

000058dc <.Loc.95.1>:
}
    58dc:	30 41       	ret

000058de <recursive_cnt>:
int recursive_cnt(uint32_t x){
    58de:	0e 4c       	mov	r12,	r14	;
    58e0:	0f 4d       	mov	r13,	r15	;

000058e2 <.Loc.240.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    58e2:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

000058e6 <.LVL108>:
    58e6:	5c 4c 3a 45 	mov.b	17722(r12),r12	;0x0453a

000058ea <.LVL109>:
    if (0L != (x >>= 4))
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

00005902 <.LVL110>:
    5902:	0d 4e       	mov	r14,	r13	;
    5904:	0d df       	bis	r15,	r13	;
    5906:	0d 93       	cmp	#0,	r13	;r3 As==00
    5908:	18 24       	jz	$+50     	;abs 0x593a
    590a:	4b 43       	clr.b	r11		;

0000590c <.L74>:
        cnt += recursive_cnt(x);
    590c:	0b 5c       	add	r12,	r11	;

0000590e <.Loc.240.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    590e:	0c 4e       	mov	r14,	r12	;

00005910 <.LVL111>:
    5910:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005914 <.Loc.240.1>:
    5914:	5c 4c 3a 45 	mov.b	17722(r12),r12	;0x0453a

00005918 <.LVL112>:
    if (0L != (x >>= 4))
    5918:	12 c3       	clrc
    591a:	0f 10       	rrc	r15		;
    591c:	0e 10       	rrc	r14		;
    591e:	12 c3       	clrc
    5920:	0f 10       	rrc	r15		;
    5922:	0e 10       	rrc	r14		;
    5924:	12 c3       	clrc
    5926:	0f 10       	rrc	r15		;
    5928:	0e 10       	rrc	r14		;
    592a:	12 c3       	clrc
    592c:	0f 10       	rrc	r15		;
    592e:	0e 10       	rrc	r14		;

00005930 <.Loc.242.1>:
    5930:	0d 4e       	mov	r14,	r13	;
    5932:	0d df       	bis	r15,	r13	;
    5934:	0d 93       	cmp	#0,	r13	;r3 As==00
    5936:	ea 23       	jnz	$-42     	;abs 0x590c
    5938:	0c 5b       	add	r11,	r12	;

0000593a <.L71>:
}
    593a:	30 41       	ret

0000593c <non_recursive_cnt>:
int non_recursive_cnt(uint32_t x){
    593c:	0e 4c       	mov	r12,	r14	;
    593e:	0f 4d       	mov	r13,	r15	;

00005940 <.Loc.249.1>:
    int cnt = bits[(int)(x & 0x0000000FL)];
    5940:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005944 <.LVL116>:
    5944:	5c 4c 3a 45 	mov.b	17722(r12),r12	;0x0453a

00005948 <.LVL117>:
    while (0L != (x >>= 4)) {
    5948:	12 c3       	clrc
    594a:	0f 10       	rrc	r15		;
    594c:	0e 10       	rrc	r14		;
    594e:	12 c3       	clrc
    5950:	0f 10       	rrc	r15		;
    5952:	0e 10       	rrc	r14		;
    5954:	12 c3       	clrc
    5956:	0f 10       	rrc	r15		;
    5958:	0e 10       	rrc	r14		;
    595a:	12 c3       	clrc
    595c:	0f 10       	rrc	r15		;
    595e:	0e 10       	rrc	r14		;

00005960 <.Loc.251.1>:
    5960:	0d 4e       	mov	r14,	r13	;
    5962:	0d df       	bis	r15,	r13	;
    5964:	0d 93       	cmp	#0,	r13	;r3 As==00
    5966:	16 24       	jz	$+46     	;abs 0x5994

00005968 <.L82>:
        cnt += bits[(int)(x & 0x0000000FL)];
    5968:	0d 4e       	mov	r14,	r13	;
    596a:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

0000596e <.Loc.252.1>:
    596e:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    5972:	0c 5d       	add	r13,	r12	;

00005974 <.Loc.251.1>:
    while (0L != (x >>= 4)) {
    5974:	12 c3       	clrc
    5976:	0f 10       	rrc	r15		;
    5978:	0e 10       	rrc	r14		;
    597a:	12 c3       	clrc
    597c:	0f 10       	rrc	r15		;
    597e:	0e 10       	rrc	r14		;
    5980:	12 c3       	clrc
    5982:	0f 10       	rrc	r15		;
    5984:	0e 10       	rrc	r14		;
    5986:	12 c3       	clrc
    5988:	0f 10       	rrc	r15		;
    598a:	0e 10       	rrc	r14		;

0000598c <.Loc.251.1>:
    598c:	0d 4e       	mov	r14,	r13	;
    598e:	0d df       	bis	r15,	r13	;
    5990:	0d 93       	cmp	#0,	r13	;r3 As==00
    5992:	ea 23       	jnz	$-42     	;abs 0x5968

00005994 <.L79>:
}
    5994:	30 41       	ret

00005996 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    5996:
00005998 <L0^A>:
    5998:	3e 46       	mov	@r6+,	r14	;
    599a:	b0 12 84 6a 	call	#27268		;#0x6a84

0000599e <.Loc.54.1>:
    599e:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

000059a2 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    59a2:	0c 4d       	mov	r13,	r12	;
    59a4:	5c 02       	rlam	#1,	r12	;
    59a6:	0c 5d       	add	r13,	r12	;
    59a8:	5c 06       	rlam	#2,	r12	;
    59aa:	0c 5d       	add	r13,	r12	;
    59ac:	5c 02       	rlam	#1,	r12	;
    59ae:	1c 4c 4a 46 	mov	17994(r12),r12	;0x0464a

000059b2 <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    59b2:	3d 53       	add	#-1,	r13	;r3 As==11

000059b4 <.Loc.56.1>:
    59b4:	0d 93       	cmp	#0,	r13	;r3 As==00
    59b6:	f5 23       	jnz	$-20     	;abs 0x59a2

000059b8 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    59b8:	c2 43 3a 46 	mov.b	#0,	&0x463a	;r3 As==00

000059bc <.Loc.61.1>:
}
    59bc:	30 41       	ret

000059be <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    59be:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000059c2 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    59c2:	0b 4c       	mov	r12,	r11	;
    59c4:	5b 02       	rlam	#1,	r11	;
    59c6:	0b 5c       	add	r12,	r11	;
    59c8:	5b 06       	rlam	#2,	r11	;
    59ca:	0b 5c       	add	r12,	r11	;
    59cc:	5b 02       	rlam	#1,	r11	;
    59ce:	cb 4c 48 46 	mov.b	r12,	17992(r11); 0x4648

000059d2 <.Loc.69.1>:
    _threads[priority].entry = entry;
    59d2:	8b 4d 4c 46 	mov	r13,	17996(r11); 0x464c

000059d6 <.Loc.70.1>:
    _threads[priority].next = entry;
    59d6:	8b 4d 4e 46 	mov	r13,	17998(r11); 0x464e

000059da <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    59da:	bb 42 4a 46 	mov	#8,	17994(r11);r2 As==11, 0x464a

000059de <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    59de:	8b 4e 52 46 	mov	r14,	18002(r11); 0x4652

000059e2 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    59e2:	8b 4f 54 46 	mov	r15,	18004(r11); 0x4654

000059e6 <.Loc.76.1>:
    _threads[priority].buffer.idx = 0;
    59e6:	cb 43 56 46 	mov.b	#0,	18006(r11);r3 As==00, 0x4656

000059ea <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    59ea:	9b 41 02 00 	mov	2(r1),	18008(r11); 0x4658
    59ee:	58 46

000059f0 <.Loc.78.1>:
}
    59f0:	30 41       	ret

000059f2 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    59f2:	0a 15       	pushm	#1,	r10	;16-bit words

000059f4 <.LCFI0>:
    59f4:	0a 4c       	mov	r12,	r10	;

000059f6 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    59f6:	3d 40 3e 46 	mov	#17982,	r13	;#0x463e
    59fa:	6c 4c       	mov.b	@r12,	r12	;

000059fc <.LVL6>:
    59fc:	b0 12 ca 6a 	call	#27338		;#0x6aca

00005a00 <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    5a00:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005a04 <.Loc.84.1>:
}
    5a04:	0a 17       	popm	#1,	r10	;16-bit words

00005a06 <.LCFI1>:
    5a06:	30 41       	ret

00005a08 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    5a08:	0a 15       	pushm	#1,	r10	;16-bit words

00005a0a <.LCFI2>:
    5a0a:	0a 4c       	mov	r12,	r10	;

00005a0c <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    5a0c:	3d 40 3e 46 	mov	#17982,	r13	;#0x463e
    5a10:	6c 4c       	mov.b	@r12,	r12	;

00005a12 <.LVL9>:
    5a12:	b0 12 ca 6a 	call	#27338		;#0x6aca

00005a16 <.Loc.89.1>:
    thread->next = NULL;
    5a16:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

00005a1a <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    5a1a:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005a1e <.Loc.91.1>:
}
    5a1e:	0a 17       	popm	#1,	r10	;16-bit words

00005a20 <.LCFI3>:
    5a20:	30 41       	ret

00005a22 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    5a22:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005a26 <.Loc.95.1>:
    return;
}
    5a26:	30 41       	ret

00005a28 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    5a28:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005a2c <.Loc.101.1>:
    return;
}
    5a2c:	30 41       	ret

00005a2e <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    5a2e:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00005a32 <.Loc.107.1>:
    return;
}
    5a32:	30 41       	ret

00005a34 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    5a34:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005a38 <.Loc.112.1>:
    return;
}
    5a38:	30 41       	ret

00005a3a <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    5a3a:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00005a3e <.LVL16>:
    5a3e:	30 41       	ret

00005a40 <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    5a40:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00005a44 <.LVL18>:
    5a44:	30 41       	ret

00005a46 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    5a46:	0a 15       	pushm	#1,	r10	;16-bit words

00005a48 <.LCFI4>:
    5a48:	0a 4c       	mov	r12,	r10	;

00005a4a <.Loc.125.1>:
    thread->next = thread->entry;
    5a4a:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    5a4e:	06 00

00005a50 <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    5a50:	3d 40 3e 46 	mov	#17982,	r13	;#0x463e
    5a54:	6c 4c       	mov.b	@r12,	r12	;

00005a56 <.LVL20>:
    5a56:	b0 12 aa 6a 	call	#27306		;#0x6aaa

00005a5a <.Loc.127.1>:
    thread->state = TASK_READY;
    5a5a:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005a5e <.Loc.128.1>:
}
    5a5e:	0a 17       	popm	#1,	r10	;16-bit words

00005a60 <.LCFI5>:
    5a60:	30 41       	ret

00005a62 <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    5a62:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005a66 <.Loc.140.1>:
    return &_threads[priority];
    5a66:	0d 4c       	mov	r12,	r13	;
    5a68:	5d 02       	rlam	#1,	r13	;
    5a6a:	0d 5c       	add	r12,	r13	;
    5a6c:	5d 06       	rlam	#2,	r13	;
    5a6e:	0c 5d       	add	r13,	r12	;

00005a70 <.LVL23>:
    5a70:	5c 02       	rlam	#1,	r12	;

00005a72 <.Loc.141.1>:
}
    5a72:	3c 50 48 46 	add	#17992,	r12	;#0x4648
    5a76:	30 41       	ret

00005a78 <__scheduler_run>:
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    5a78:	b0 12 b4 67 	call	#26548		;#0x67b4

00005a7c <.LBB8>:
    if(_thread){
    5a7c:	82 93 3c 46 	cmp	#0,	&0x463c	;r3 As==00
    5a80:	04 24       	jz	$+10     	;abs 0x5a8a

00005a82 <.Loc.146.1>:
        __tick(_thread);
    5a82:	1c 42 3c 46 	mov	&0x463c,r12	;0x463c
    5a86:	b0 12 18 5b 	call	#23320		;#0x5b18

00005a8a <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    5a8a:	b0 12 2c 5c 	call	#23596		;#0x5c2c

00005a8e <.Loc.169.1>:
    // enable interrupts
    __enable_interrupt();
    5a8e:	03 43       	nop
    5a90:	32 d2       	eint
    5a92:	03 43       	nop

00005a94 <.L20>:

    while (1){
        switch (_sched_state){
    5a94:	5c 42 3a 46 	mov.b	&0x463a,r12	;0x463a
    5a98:	0c 93       	cmp	#0,	r12	;r3 As==00
    5a9a:	10 24       	jz	$+34     	;abs 0x5abc

00005a9c <.L29>:
    5a9c:	1c 93       	cmp	#1,	r12	;r3 As==01
    5a9e:	fa 23       	jnz	$-10     	;abs 0x5a94
    5aa0:	1c 42 3c 46 	mov	&0x463c,r12	;0x463c

00005aa4 <.Loc.184.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    5aa4:	0c 93       	cmp	#0,	r12	;r3 As==00
    5aa6:	24 24       	jz	$+74     	;abs 0x5af0

00005aa8 <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    5aa8:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005aac <.Loc.186.1>:
#endif
                __tick(_thread);
    5aac:	b0 12 18 5b 	call	#23320		;#0x5b18

00005ab0 <.Loc.190.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    5ab0:	c2 43 3a 46 	mov.b	#0,	&0x463a	;r3 As==00

00005ab4 <.Loc.171.1>:
        switch (_sched_state){
    5ab4:	5c 42 3a 46 	mov.b	&0x463a,r12	;0x463a
    5ab8:	0c 93       	cmp	#0,	r12	;r3 As==00
    5aba:	f0 23       	jnz	$-30     	;abs 0x5a9c

00005abc <.L19>:
            __port_on(1, 3);
    5abc:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005ac0 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    5ac0:	3c 40 3e 46 	mov	#17982,	r12	;#0x463e
    5ac4:	b0 12 f2 6a 	call	#27378		;#0x6af2
    5ac8:	4d 4c       	mov.b	r12,	r13	;

00005aca <.LVL29>:
    if(idx)
    5aca:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5acc:	0d 24       	jz	$+28     	;abs 0x5ae8

00005ace <.Loc.134.1>:
        return &_threads[idx];
    5ace:	0c 4d       	mov	r13,	r12	;
    5ad0:	5c 02       	rlam	#1,	r12	;

00005ad2 <.LVL30>:
    5ad2:	0c 5d       	add	r13,	r12	;
    5ad4:	5c 06       	rlam	#2,	r12	;
    5ad6:	0c 5d       	add	r13,	r12	;
    5ad8:	5c 02       	rlam	#1,	r12	;
    5ada:	3c 50 48 46 	add	#17992,	r12	;#0x4648

00005ade <.LBE10>:
            _thread = __next_thread();
    5ade:	82 4c 3c 46 	mov	r12,	&0x463c	;

00005ae2 <.Loc.180.1>:
            _sched_state = SCHED_BUSY;
    5ae2:	d2 43 3a 46 	mov.b	#1,	&0x463a	;r3 As==01

00005ae6 <.Loc.184.1>:
            if (_thread){
    5ae6:	e0 3f       	jmp	$-62     	;abs 0x5aa8

00005ae8 <.L30>:
            _thread = __next_thread();
    5ae8:	82 43 3c 46 	mov	#0,	&0x463c	;r3 As==00

00005aec <.Loc.180.1>:
            _sched_state = SCHED_BUSY;
    5aec:	d2 43 3a 46 	mov.b	#1,	&0x463a	;r3 As==01

00005af0 <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    5af0:	c2 43 3a 46 	mov.b	#0,	&0x463a	;r3 As==00

00005af4 <.Loc.194.1>:
            __disable_interrupt();
    5af4:	32 c2       	dint
    5af6:	03 43       	nop

00005af8 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    5af8:	3c 40 3e 46 	mov	#17982,	r12	;#0x463e
    5afc:	b0 12 f2 6a 	call	#27378		;#0x6af2

00005b00 <.LVL33>:
    if(idx)
    5b00:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5b02:	c8 23       	jnz	$-110    	;abs 0x5a94

00005b04 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    5b04:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005b08 <.Loc.198.1>:
#endif
                __mcu_sleep();
    5b08:	03 43       	nop
    5b0a:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    5b0e:	03 43       	nop

00005b10 <.Loc.201.1>:
                __enable_interrupt();
    5b10:	03 43       	nop
    5b12:	32 d2       	eint
    5b14:	03 43       	nop
    5b16:	be 3f       	jmp	$-130    	;abs 0x5a94

00005b18 <__tick>:

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    5b18:	1a 15       	pushm	#2,	r10	;16-bit words

00005b1a <.LCFI0>:
    5b1a:	0a 4c       	mov	r12,	r10	;

00005b1c <L0^A>:
    void *buf;
    switch (thread->state)
    5b1c:	1c 4c 02 00 	mov	2(r12),	r12	;

00005b20 <.LVL1>:
    5b20:	2c 93       	cmp	#2,	r12	;r3 As==10
    5b22:	3b 24       	jz	$+120    	;abs 0x5b9a
    5b24:	2c 92       	cmp	#4,	r12	;r2 As==10
    5b26:	56 24       	jz	$+174    	;abs 0x5bd4
    5b28:	1c 93       	cmp	#1,	r12	;r3 As==01
    5b2a:	02 24       	jz	$+6      	;abs 0x5b30

00005b2c <.Loc.118.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    5b2c:	19 17       	popm	#2,	r10	;16-bit words

00005b2e <.LCFI1>:
    5b2e:	30 41       	ret

00005b30 <.L17>:
    __port_on(3,6);
    5b30:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    5b34:	22 02

00005b36 <.Loc.40.1>:
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    5b36:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00005b3a <.Loc.43.1>:
    5b3a:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5b3e:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5b40:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005b44 <.Loc.43.1>:
    5b44:	5c 02       	rlam	#1,	r12	;
    5b46:	0c 5a       	add	r10,	r12	;
    5b48:	5f 02       	rlam	#1,	r15	;
    5b4a:	0f 5a       	add	r10,	r15	;
    5b4c:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    5b50:	5e 03       	rrum	#1,	r14	;
    5b52:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    5b56:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    5b5a:	b0 12 fc 69 	call	#27132		;#0x69fc

00005b5e <.Loc.45.1>:
    __port_off(3,6);
    5b5e:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5b62:	22 02

00005b64 <.LBE5>:
        __port_on(1, 4);
    5b64:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5b68:	02 02

00005b6a <.Loc.60.1>:
        buf = thread->buffer.buf[thread->buffer._idx^1];
    5b6a:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    5b6e:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5b70:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005b74 <.Loc.63.1>:
    5b74:	3c 50 05 00 	add	#5,	r12	;
    5b78:	5c 02       	rlam	#1,	r12	;
    5b7a:	0c 5a       	add	r10,	r12	;
    5b7c:	29 4c       	mov	@r12,	r9	;

00005b7e <.LVL5>:
        if(thread->next == thread->entry){
    5b7e:	1d 4a 06 00 	mov	6(r10),	r13	;

00005b82 <.Loc.66.1>:
    5b82:	1d 9a 04 00 	cmp	4(r10),	r13	;
    5b86:	3d 24       	jz	$+124    	;abs 0x5c02
    5b88:	0c 49       	mov	r9,	r12	;

00005b8a <.Loc.74.1>:
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    5b8a:	8d 12       	call	r13		;

00005b8c <.Loc.74.1>:
    5b8c:	8a 4c 08 00 	mov	r12,	8(r10)	;

00005b90 <.L8>:
        thread->state = TASK_PRECOMMIT;
    5b90:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00005b94 <.Loc.78.1>:
        __port_off(1, 4);
    5b94:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5b98:	02 02

00005b9a <.L2>:
        __port_on(3,5);
    5b9a:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5b9e:	22 02

00005ba0 <.Loc.82.1>:
        __release_event(thread);
    5ba0:	0c 4a       	mov	r10,	r12	;
    5ba2:	b0 12 04 69 	call	#26884		;#0x6904

00005ba6 <.Loc.86.1>:
        thread->next = thread->next_temp;
    5ba6:	1c 4a 08 00 	mov	8(r10),	r12	;

00005baa <.Loc.86.1>:
    5baa:	8a 4c 06 00 	mov	r12,	6(r10)	;

00005bae <.Loc.88.1>:
        thread->buffer._idx = thread->buffer.idx ^ 1;
    5bae:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    5bb2:	5d e3       	xor.b	#1,	r13	;r3 As==01
    5bb4:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

00005bb8 <.Loc.89.1>:
        thread->state = TASK_COMMIT;
    5bb8:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005bbc <.Loc.92.1>:
        thread->buffer.idx = thread->buffer._idx;
    5bbc:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5bc0:	0e 00

00005bc2 <.Loc.94.1>:
        if (thread->next == NULL)
    5bc2:	0c 93       	cmp	#0,	r12	;r3 As==00
    5bc4:	0e 24       	jz	$+30     	;abs 0x5be2

00005bc6 <.L9>:
            thread->state = TASK_READY;
    5bc6:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005bca <.L12>:
        __port_off(3,5);
    5bca:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5bce:	22 02

00005bd0 <.Loc.115.1>:
}
    5bd0:	19 17       	popm	#2,	r10	;16-bit words

00005bd2 <.LCFI3>:
    5bd2:	30 41       	ret

00005bd4 <.L3>:
    5bd4:	1c 4a 06 00 	mov	6(r10),	r12	;

00005bd8 <.Loc.92.1>:
        thread->buffer.idx = thread->buffer._idx;
    5bd8:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5bdc:	0e 00

00005bde <.Loc.94.1>:
        if (thread->next == NULL)
    5bde:	0c 93       	cmp	#0,	r12	;r3 As==00
    5be0:	f2 23       	jnz	$-26     	;abs 0x5bc6

00005be2 <.L19>:
            __disable_interrupt();
    5be2:	32 c2       	dint
    5be4:	03 43       	nop

00005be6 <.Loc.98.1>:
            if(!__has_events(thread)){
    5be6:	0c 4a       	mov	r10,	r12	;
    5be8:	b0 12 b8 68 	call	#26808		;#0x68b8

00005bec <.Loc.98.1>:
    5bec:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5bee:	14 24       	jz	$+42     	;abs 0x5c18

00005bf0 <.Loc.104.1>:
                thread->next = thread->entry;
    5bf0:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    5bf4:	06 00

00005bf6 <.Loc.106.1>:
                thread->state = TASK_READY;
    5bf6:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005bfa <.Loc.108.1>:
            __enable_interrupt();
    5bfa:	03 43       	nop
    5bfc:	32 d2       	eint
    5bfe:	03 43       	nop
    5c00:	e4 3f       	jmp	$-54     	;abs 0x5bca

00005c02 <.L18>:
            isr_event_t *event = __lock_event(thread);
    5c02:	0c 4a       	mov	r10,	r12	;
    5c04:	b0 12 d6 68 	call	#26838		;#0x68d6

00005c08 <.LVL11>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    5c08:	0d 4c       	mov	r12,	r13	;
    5c0a:	0c 49       	mov	r9,	r12	;

00005c0c <.LVL12>:
    5c0c:	1e 4a 04 00 	mov	4(r10),	r14	;
    5c10:	8e 12       	call	r14		;

00005c12 <.LVL13>:
    5c12:	8a 4c 08 00 	mov	r12,	8(r10)	;

00005c16 <.LBE7>:
    5c16:	bc 3f       	jmp	$-134    	;abs 0x5b90

00005c18 <.L20>:
                __stop_thread(thread);
    5c18:	0c 4a       	mov	r10,	r12	;
    5c1a:	b0 12 f2 59 	call	#23026		;#0x59f2

00005c1e <.Loc.108.1>:
            __enable_interrupt();
    5c1e:	03 43       	nop
    5c20:	32 d2       	eint
    5c22:	03 43       	nop
    5c24:	d2 3f       	jmp	$-90     	;abs 0x5bca

00005c26 <__timers_init>:
    5c26:	b0 12 ec 6b 	call	#27628		;#0x6bec

00005c2a <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    5c2a:	30 41       	ret

00005c2c <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    5c2c:	30 41       	ret

00005c2e <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    5c2e:	0a 15       	pushm	#1,	r10	;16-bit words

00005c30 <.LCFI0>:
    5c30:	4a 4c       	mov.b	r12,	r10	;

00005c32 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    5c32:	5c 92 34 1c 	cmp.b	&0x1c34,r12	;0x1c34
    5c36:	19 24       	jz	$+52     	;abs 0x5c6a

00005c38 <.L5>:
    5c38:	c2 9a 3e 1c 	cmp.b	r10,	&0x1c3e	;
    5c3c:	0e 24       	jz	$+30     	;abs 0x5c5a

00005c3e <.L6>:
    5c3e:	c2 9a 48 1c 	cmp.b	r10,	&0x1c48	;
    5c42:	02 24       	jz	$+6      	;abs 0x5c48

00005c44 <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    5c44:	0a 17       	popm	#1,	r10	;16-bit words

00005c46 <.LCFI1>:
    5c46:	30 41       	ret

00005c48 <.L10>:
            wkup_timing[i].status = NOT_USED;
    5c48:	82 43 46 1c 	mov	#0,	&0x1c46	;r3 As==00

00005c4c <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5c4c:	4e 43       	clr.b	r14		;
    5c4e:	4d 43       	clr.b	r13		;
    5c50:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5c52:	b0 12 ae 6c 	call	#27822		;#0x6cae

00005c56 <.Loc.101.1>:
}
    5c56:	0a 17       	popm	#1,	r10	;16-bit words

00005c58 <.LCFI3>:
    5c58:	30 41       	ret

00005c5a <.L9>:
            wkup_timing[i].status = NOT_USED;
    5c5a:	82 43 3c 1c 	mov	#0,	&0x1c3c	;r3 As==00

00005c5e <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5c5e:	4e 43       	clr.b	r14		;
    5c60:	4d 43       	clr.b	r13		;
    5c62:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5c64:	b0 12 ae 6c 	call	#27822		;#0x6cae
    5c68:	ea 3f       	jmp	$-42     	;abs 0x5c3e

00005c6a <.L8>:
            wkup_timing[i].status = NOT_USED;
    5c6a:	82 43 32 1c 	mov	#0,	&0x1c32	;r3 As==00

00005c6e <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5c6e:	4e 43       	clr.b	r14		;
    5c70:	4d 43       	clr.b	r13		;
    5c72:	4c 43       	clr.b	r12		;

00005c74 <.LVL9>:
    5c74:	b0 12 ae 6c 	call	#27822		;#0x6cae
    5c78:	df 3f       	jmp	$-64     	;abs 0x5c38

00005c7a <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    5c7a:	2a 15       	pushm	#3,	r10	;16-bit words

00005c7c <.LCFI5>:
    5c7c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005c80 <.LCFI6>:
    5c80:	49 43       	clr.b	r9		;
    5c82:	38 40 32 1c 	mov	#7218,	r8	;#0x1c32

00005c86 <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5c86:	0a 49       	mov	r9,	r10	;
    5c88:	5a 06       	rlam	#2,	r10	;
    5c8a:	0a 59       	add	r9,	r10	;
    5c8c:	5a 02       	rlam	#1,	r10	;
    5c8e:	0a 58       	add	r8,	r10	;
    5c90:	4e 43       	clr.b	r14		;
    5c92:	4d 49       	mov.b	r9,	r13	;
    5c94:	0c 41       	mov	r1,	r12	;
    5c96:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    5c9a:	aa 41 00 00 	mov	@r1,	0(r10)	;
    5c9e:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    5ca2:	02 00
    5ca4:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    5ca8:	04 00
    5caa:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    5cae:	06 00
    5cb0:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    5cb4:	08 00

00005cb6 <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5cb6:	19 53       	inc	r9		;

00005cb8 <.Loc.115.1>:
    5cb8:	39 90 03 00 	cmp	#3,	r9	;
    5cbc:	e4 23       	jnz	$-54     	;abs 0x5c86

00005cbe <.Loc.120.1>:
    }

}
    5cbe:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005cc2 <.LCFI7>:
    5cc2:	28 17       	popm	#3,	r10	;16-bit words

00005cc4 <.LCFI8>:
    5cc4:	30 41       	ret

00005cc6 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    5cc6:	5a 15       	pushm	#6,	r10	;16-bit words

00005cc8 <.LCFI9>:

    uint8_t i,first = 1;
    5cc8:	5e 43       	mov.b	#1,	r14	;r3 As==01

00005cca <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5cca:	4a 43       	clr.b	r10		;
    5ccc:	38 40 32 1c 	mov	#7218,	r8	;#0x1c32

00005cd0 <.L40>:
    {

        if (wkup_timing[i].status == USED)
    5cd0:	09 4a       	mov	r10,	r9	;
    5cd2:	05 4a       	mov	r10,	r5	;
    5cd4:	55 06       	rlam	#2,	r5	;
    5cd6:	0c 45       	mov	r5,	r12	;
    5cd8:	0c 5a       	add	r10,	r12	;
    5cda:	5c 02       	rlam	#1,	r12	;
    5cdc:	0d 4c       	mov	r12,	r13	;
    5cde:	3d 50 32 1c 	add	#7218,	r13	;#0x1c32

00005ce2 <.Loc.130.1>:
    5ce2:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5ce6:	0c 24       	jz	$+26     	;abs 0x5d00

00005ce8 <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5ce8:	4c 4a       	mov.b	r10,	r12	;
    5cea:	5c 53       	inc.b	r12		;
    5cec:	4a 4c       	mov.b	r12,	r10	;

00005cee <.LVL19>:
    5cee:	7c 90 03 00 	cmp.b	#3,	r12	;
    5cf2:	ee 23       	jnz	$-34     	;abs 0x5cd0

00005cf4 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    5cf4:	0e 93       	cmp	#0,	r14	;r3 As==00
    5cf6:	54 24       	jz	$+170    	;abs 0x5da0

00005cf8 <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    5cf8:	b0 12 08 6b 	call	#27400		;#0x6b08

00005cfc <.LVL20>:


}
    5cfc:	55 17       	popm	#6,	r10	;16-bit words

00005cfe <.LCFI10>:
    5cfe:	30 41       	ret

00005d00 <.L84>:
            if (first)
    5d00:	16 4d 04 00 	mov	4(r13),	r6	;
    5d04:	17 4d 06 00 	mov	6(r13),	r7	;

00005d08 <.Loc.133.1>:
    5d08:	0e 93       	cmp	#0,	r14	;r3 As==00
    5d0a:	05 24       	jz	$+12     	;abs 0x5d16

00005d0c <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    5d0c:	82 46 58 1c 	mov	r6,	&0x1c58	;

00005d10 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    5d10:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5a	;
    5d14:	5a 1c

00005d16 <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    5d16:	b0 12 aa 6b 	call	#27562		;#0x6baa

00005d1a <.Loc.141.1>:
    5d1a:	0e 46       	mov	r6,	r14	;
    5d1c:	0f 47       	mov	r7,	r15	;
    5d1e:	0e 8c       	sub	r12,	r14	;
    5d20:	0f 7d       	subc	r13,	r15	;

00005d22 <.Loc.141.1>:
    5d22:	05 5a       	add	r10,	r5	;
    5d24:	55 02       	rlam	#1,	r5	;
    5d26:	05 58       	add	r8,	r5	;
    5d28:	85 4e 04 00 	mov	r14,	4(r5)	;
    5d2c:	85 4f 06 00 	mov	r15,	6(r5)	;

00005d30 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    5d30:	4d 43       	clr.b	r13		;
    5d32:	4c 4a       	mov.b	r10,	r12	;
    5d34:	b0 12 0e 6c 	call	#27662		;#0x6c0e

00005d38 <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5d38:	1c 45 04 00 	mov	4(r5),	r12	;
    5d3c:	1d 45 06 00 	mov	6(r5),	r13	;
    5d40:	4b 4a       	mov.b	r10,	r11	;
    5d42:	5b 53       	inc.b	r11		;
    5d44:	4a 4b       	mov.b	r11,	r10	;

00005d46 <.Loc.144.1>:
    5d46:	07 4d       	mov	r13,	r7	;
    5d48:	0d 93       	cmp	#0,	r13	;r3 As==00
    5d4a:	3b 38       	jl	$+120    	;abs 0x5dc2

00005d4c <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    5d4c:	0e 4c       	mov	r12,	r14	;
    5d4e:	0e dd       	bis	r13,	r14	;
    5d50:	0e 93       	cmp	#0,	r14	;r3 As==00
    5d52:	af 24       	jz	$+352    	;abs 0x5eb2

00005d54 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5d54:	16 42 58 1c 	mov	&0x1c58,r6	;0x1c58
    5d58:	0e 46       	mov	r6,	r14	;
    5d5a:	0f 43       	clr	r15		;

00005d5c <.Loc.155.1>:
    5d5c:	0d 93       	cmp	#0,	r13	;r3 As==00
    5d5e:	18 34       	jge	$+50     	;abs 0x5d90

00005d60 <.L50>:
    5d60:	0e 49       	mov	r9,	r14	;
    5d62:	5e 06       	rlam	#2,	r14	;
    5d64:	09 5e       	add	r14,	r9	;
    5d66:	59 02       	rlam	#1,	r9	;
    5d68:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005d6c <.L37>:
                    min_wkup = wkup_timing[i].data;
    5d6c:	82 4c 58 1c 	mov	r12,	&0x1c58	;

00005d70 <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    5d70:	c2 4e 5a 1c 	mov.b	r14,	&0x1c5a	;

00005d74 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d74:	7b 90 03 00 	cmp.b	#3,	r11	;
    5d78:	15 24       	jz	$+44     	;abs 0x5da4

00005d7a <.L74>:
        if (wkup_timing[i].status == USED)
    5d7a:	09 4a       	mov	r10,	r9	;
    5d7c:	05 4a       	mov	r10,	r5	;
    5d7e:	55 06       	rlam	#2,	r5	;
    5d80:	0c 45       	mov	r5,	r12	;
    5d82:	0c 5a       	add	r10,	r12	;
    5d84:	5c 02       	rlam	#1,	r12	;

00005d86 <.Loc.130.1>:
    5d86:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5d8a:	41 24       	jz	$+132    	;abs 0x5e0e

00005d8c <.L91>:
    5d8c:	4e 43       	clr.b	r14		;
    5d8e:	ac 3f       	jmp	$-166    	;abs 0x5ce8

00005d90 <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5d90:	0d 93       	cmp	#0,	r13	;r3 As==00
    5d92:	62 24       	jz	$+198    	;abs 0x5e58

00005d94 <.L35>:
    5d94:	07 4c       	mov	r12,	r7	;
    5d96:	0c 9e       	cmp	r14,	r12	;
    5d98:	79 24       	jz	$+244    	;abs 0x5e8c

00005d9a <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d9a:	7b 90 03 00 	cmp.b	#3,	r11	;
    5d9e:	ed 23       	jnz	$-36     	;abs 0x5d7a

00005da0 <.L72>:
    5da0:	5e 42 5a 1c 	mov.b	&0x1c5a,r14	;0x1c5a

00005da4 <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    5da4:	4d 4e       	mov.b	r14,	r13	;
    5da6:	4c 43       	clr.b	r12		;
    5da8:	b0 12 f6 6c 	call	#27894		;#0x6cf6

00005dac <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    5dac:	1d 42 58 1c 	mov	&0x1c58,r13	;0x1c58
    5db0:	4c 43       	clr.b	r12		;
    5db2:	b0 12 04 6d 	call	#27908		;#0x6d04

00005db6 <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    5db6:	1c 42 58 1c 	mov	&0x1c58,r12	;0x1c58
    5dba:	b0 12 1c 6b 	call	#27420		;#0x6b1c

00005dbe <.Loc.177.1>:
}
    5dbe:	55 17       	popm	#6,	r10	;16-bit words

00005dc0 <.LCFI12>:
    5dc0:	30 41       	ret

00005dc2 <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5dc2:	5e 42 5b 1c 	mov.b	&0x1c5b,r14	;0x1c5b
    5dc6:	06 43       	clr	r6		;
    5dc8:	06 8e       	sub	r14,	r6	;
    5dca:	0e 46       	mov	r6,	r14	;
    5dcc:	0f 46       	mov	r6,	r15	;
    5dce:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005dd2 <.Loc.144.1>:
    5dd2:	05 4f       	mov	r15,	r5	;
    5dd4:	0f 9d       	cmp	r13,	r15	;
    5dd6:	25 38       	jl	$+76     	;abs 0x5e22

00005dd8 <.Loc.144.1>:
    5dd8:	0d 9f       	cmp	r15,	r13	;
    5dda:	21 24       	jz	$+68     	;abs 0x5e1e

00005ddc <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    5ddc:	07 4d       	mov	r13,	r7	;
    5dde:	0d 9f       	cmp	r15,	r13	;
    5de0:	04 38       	jl	$+10     	;abs 0x5dea
    5de2:	0f 9d       	cmp	r13,	r15	;
    5de4:	da 23       	jnz	$-74     	;abs 0x5d9a
    5de6:	0c 96       	cmp	r6,	r12	;
    5de8:	d8 2f       	jc	$-78     	;abs 0x5d9a

00005dea <.L30>:
    5dea:	0c 49       	mov	r9,	r12	;
    5dec:	5c 06       	rlam	#2,	r12	;
    5dee:	09 5c       	add	r12,	r9	;
    5df0:	59 02       	rlam	#1,	r9	;
    5df2:	89 43 32 1c 	mov	#0,	7218(r9);r3 As==00, 0x1c32

00005df6 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5df6:	7b 90 03 00 	cmp.b	#3,	r11	;
    5dfa:	d2 27       	jz	$-90     	;abs 0x5da0

00005dfc <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    5dfc:	09 4a       	mov	r10,	r9	;
    5dfe:	05 4a       	mov	r10,	r5	;
    5e00:	55 06       	rlam	#2,	r5	;
    5e02:	0c 45       	mov	r5,	r12	;
    5e04:	0c 5a       	add	r10,	r12	;
    5e06:	5c 02       	rlam	#1,	r12	;

00005e08 <.Loc.130.1>:
    5e08:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5e0c:	bf 23       	jnz	$-128    	;abs 0x5d8c

00005e0e <.L27>:
    5e0e:	0c 45       	mov	r5,	r12	;
    5e10:	0c 5a       	add	r10,	r12	;
    5e12:	5c 02       	rlam	#1,	r12	;
    5e14:	16 4c 36 1c 	mov	7222(r12),r6	;0x01c36
    5e18:	17 4c 38 1c 	mov	7224(r12),r7	;0x01c38
    5e1c:	7c 3f       	jmp	$-262    	;abs 0x5d16

00005e1e <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5e1e:	06 9c       	cmp	r12,	r6	;
    5e20:	dd 2f       	jc	$-68     	;abs 0x5ddc

00005e22 <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e22:	1e 42 58 1c 	mov	&0x1c58,r14	;0x1c58
    5e26:	06 4e       	mov	r14,	r6	;
    5e28:	07 43       	clr	r7		;

00005e2a <.Loc.146.1>:
    5e2a:	4e 43       	clr.b	r14		;
    5e2c:	4f 43       	clr.b	r15		;
    5e2e:	0e 8c       	sub	r12,	r14	;
    5e30:	0f 7d       	subc	r13,	r15	;

00005e32 <.Loc.146.1>:
    5e32:	05 4f       	mov	r15,	r5	;
    5e34:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e36:	14 34       	jge	$+42     	;abs 0x5e60

00005e38 <.L22>:
    5e38:	0e 49       	mov	r9,	r14	;
    5e3a:	5e 06       	rlam	#2,	r14	;
    5e3c:	09 5e       	add	r14,	r9	;
    5e3e:	59 02       	rlam	#1,	r9	;
    5e40:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005e44 <.L28>:
                    min_wkup = -wkup_timing[i].data;
    5e44:	4f 43       	clr.b	r15		;
    5e46:	0f 8c       	sub	r12,	r15	;
    5e48:	82 4f 58 1c 	mov	r15,	&0x1c58	;

00005e4c <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    5e4c:	c2 4e 5a 1c 	mov.b	r14,	&0x1c5a	;

00005e50 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5e50:	7b 90 03 00 	cmp.b	#3,	r11	;
    5e54:	92 23       	jnz	$-218    	;abs 0x5d7a
    5e56:	a6 3f       	jmp	$-178    	;abs 0x5da4

00005e58 <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e58:	07 4c       	mov	r12,	r7	;
    5e5a:	0c 9e       	cmp	r14,	r12	;
    5e5c:	9b 2f       	jc	$-200    	;abs 0x5d94
    5e5e:	80 3f       	jmp	$-254    	;abs 0x5d60

00005e60 <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e60:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e62:	03 20       	jnz	$+8      	;abs 0x5e6a
    5e64:	05 4e       	mov	r14,	r5	;
    5e66:	0e 96       	cmp	r6,	r14	;
    5e68:	e7 2b       	jnc	$-48     	;abs 0x5e38

00005e6a <.L47>:
    5e6a:	06 9e       	cmp	r14,	r6	;
    5e6c:	96 23       	jnz	$-210    	;abs 0x5d9a
    5e6e:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e70:	94 23       	jnz	$-214    	;abs 0x5d9a

00005e72 <.Loc.146.1>:
    5e72:	0e 49       	mov	r9,	r14	;
    5e74:	5e 06       	rlam	#2,	r14	;
    5e76:	09 5e       	add	r14,	r9	;
    5e78:	59 02       	rlam	#1,	r9	;
    5e7a:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005e7e <.Loc.146.1>:
    5e7e:	5f 42 5a 1c 	mov.b	&0x1c5a,r15	;0x1c5a

00005e82 <.Loc.146.1>:
    5e82:	d9 92 5a 1c 	cmp.b	&0x1c5a,7220(r9);0x1c5a, 0x1c34
    5e86:	34 1c
    5e88:	dd 2b       	jnc	$-68     	;abs 0x5e44
    5e8a:	0e 3c       	jmp	$+30     	;abs 0x5ea8

00005e8c <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e8c:	0d 9f       	cmp	r15,	r13	;
    5e8e:	85 23       	jnz	$-244    	;abs 0x5d9a

00005e90 <.Loc.155.1>:
    5e90:	0e 49       	mov	r9,	r14	;
    5e92:	5e 06       	rlam	#2,	r14	;
    5e94:	09 5e       	add	r14,	r9	;
    5e96:	59 02       	rlam	#1,	r9	;
    5e98:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005e9c <.Loc.155.1>:
    5e9c:	5f 42 5a 1c 	mov.b	&0x1c5a,r15	;0x1c5a

00005ea0 <.Loc.155.1>:
    5ea0:	d9 92 5a 1c 	cmp.b	&0x1c5a,7220(r9);0x1c5a, 0x1c34
    5ea4:	34 1c
    5ea6:	62 2b       	jnc	$-314    	;abs 0x5d6c

00005ea8 <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5ea8:	7b 90 03 00 	cmp.b	#3,	r11	;
    5eac:	66 23       	jnz	$-306    	;abs 0x5d7a

00005eae <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5eae:	0e 4f       	mov	r15,	r14	;

00005eb0 <.Loc.164.1>:
    if (!first)
    5eb0:	79 3f       	jmp	$-268    	;abs 0x5da4

00005eb2 <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5eb2:	7b 90 03 00 	cmp.b	#3,	r11	;
    5eb6:	74 27       	jz	$-278    	;abs 0x5da0

00005eb8 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    5eb8:	09 4a       	mov	r10,	r9	;
    5eba:	05 4a       	mov	r10,	r5	;
    5ebc:	55 06       	rlam	#2,	r5	;
    5ebe:	0c 45       	mov	r5,	r12	;
    5ec0:	0c 5a       	add	r10,	r12	;
    5ec2:	5c 02       	rlam	#1,	r12	;

00005ec4 <.Loc.130.1>:
    5ec4:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5ec8:	0f 23       	jnz	$-480    	;abs 0x5ce8
    5eca:	a1 3f       	jmp	$-188    	;abs 0x5e0e

00005ecc <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    5ecc:	4a 15       	pushm	#5,	r10	;16-bit words

00005ece <.LCFI14>:
    5ece:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005ed2 <.LCFI15>:
    5ed2:	47 4c       	mov.b	r12,	r7	;
    5ed4:	09 4d       	mov	r13,	r9	;

00005ed6 <.LBB12>:
    5ed6:	46 43       	clr.b	r6		;
    5ed8:	38 40 32 1c 	mov	#7218,	r8	;#0x1c32

00005edc <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5edc:	0a 46       	mov	r6,	r10	;
    5ede:	5a 06       	rlam	#2,	r10	;
    5ee0:	0a 56       	add	r6,	r10	;
    5ee2:	5a 02       	rlam	#1,	r10	;
    5ee4:	0a 58       	add	r8,	r10	;
    5ee6:	4e 43       	clr.b	r14		;
    5ee8:	4d 46       	mov.b	r6,	r13	;
    5eea:	0c 41       	mov	r1,	r12	;
    5eec:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    5ef0:	aa 41 00 00 	mov	@r1,	0(r10)	;
    5ef4:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    5ef8:	02 00
    5efa:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    5efe:	04 00
    5f00:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    5f04:	06 00
    5f06:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    5f0a:	08 00

00005f0c <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f0c:	16 53       	inc	r6		;

00005f0e <.Loc.115.1>:
    5f0e:	36 90 03 00 	cmp	#3,	r6	;
    5f12:	e4 23       	jnz	$-54     	;abs 0x5edc

00005f14 <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    5f14:	b0 12 08 6b 	call	#27400		;#0x6b08

00005f18 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    5f18:	0e 49       	mov	r9,	r14	;
    5f1a:	0f 43       	clr	r15		;

00005f1c <.Loc.194.1>:
    5f1c:	82 93 32 1c 	cmp	#0,	&0x1c32	;r3 As==00
    5f20:	22 24       	jz	$+70     	;abs 0x5f66

00005f22 <.Loc.192.1>:
    5f22:	82 93 3c 1c 	cmp	#0,	&0x1c3c	;r3 As==00
    5f26:	49 24       	jz	$+148    	;abs 0x5fba

00005f28 <.Loc.192.1>:
    5f28:	82 93 46 1c 	cmp	#0,	&0x1c46	;r3 As==00
    5f2c:	49 24       	jz	$+148    	;abs 0x5fc0

00005f2e <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    5f2e:	82 4e 4a 1c 	mov	r14,	&0x1c4a	;
    5f32:	82 4f 4c 1c 	mov	r15,	&0x1c4c	;

00005f36 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    5f36:	4d 43       	clr.b	r13		;
    5f38:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5f3a:	b0 12 0e 6c 	call	#27662		;#0x6c0e

00005f3e <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    5f3e:	c2 47 48 1c 	mov.b	r7,	&0x1c48	;

00005f42 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    5f42:	4e 47       	mov.b	r7,	r14	;
    5f44:	4d 43       	clr.b	r13		;
    5f46:	7c 40 03 00 	mov.b	#3,	r12	;
    5f4a:	b0 12 62 6c 	call	#27746		;#0x6c62

00005f4e <.Loc.219.1>:
        refresh_wkup_timers();
    5f4e:	b0 12 c6 5c 	call	#23750		;#0x5cc6

00005f52 <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    5f52:	4c 43       	clr.b	r12		;
    5f54:	b0 12 12 6d 	call	#27922		;#0x6d12

00005f58 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    5f58:	4c 43       	clr.b	r12		;
    5f5a:	b0 12 66 6e 	call	#28262		;#0x6e66

00005f5e <.Loc.224.1>:
}
    5f5e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005f62 <.LCFI16>:
    5f62:	46 17       	popm	#5,	r10	;16-bit words

00005f64 <.LCFI17>:
    5f64:	30 41       	ret

00005f66 <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f66:	1a 42 32 1c 	mov	&0x1c32,r10	;0x1c32

00005f6a <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5f6a:	0d 4a       	mov	r10,	r13	;

00005f6c <.L95>:
            wkup_timing[i].data = ticks;
    5f6c:	0c 4d       	mov	r13,	r12	;
    5f6e:	5c 06       	rlam	#2,	r12	;
    5f70:	0c 5d       	add	r13,	r12	;
    5f72:	5c 02       	rlam	#1,	r12	;
    5f74:	08 5c       	add	r12,	r8	;
    5f76:	88 4e 04 00 	mov	r14,	4(r8)	;
    5f7a:	88 4f 06 00 	mov	r15,	6(r8)	;

00005f7e <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    5f7e:	4d 43       	clr.b	r13		;
    5f80:	4c 4a       	mov.b	r10,	r12	;
    5f82:	b0 12 0e 6c 	call	#27662		;#0x6c0e

00005f86 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    5f86:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00005f8a <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    5f8a:	4e 47       	mov.b	r7,	r14	;
    5f8c:	4d 43       	clr.b	r13		;
    5f8e:	4c 4a       	mov.b	r10,	r12	;
    5f90:	b0 12 62 6c 	call	#27746		;#0x6c62

00005f94 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    5f94:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

00005f98 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    5f98:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f9a:	4d 43       	clr.b	r13		;
    5f9c:	4c 4a       	mov.b	r10,	r12	;
    5f9e:	b0 12 ae 6c 	call	#27822		;#0x6cae

00005fa2 <.Loc.202.1>:
        refresh_wkup_timers();
    5fa2:	b0 12 c6 5c 	call	#23750		;#0x5cc6

00005fa6 <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    5fa6:	4c 43       	clr.b	r12		;
    5fa8:	b0 12 12 6d 	call	#27922		;#0x6d12

00005fac <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    5fac:	4c 43       	clr.b	r12		;
    5fae:	b0 12 66 6e 	call	#28262		;#0x6e66

00005fb2 <.Loc.224.1>:
}
    5fb2:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005fb6 <.LCFI19>:
    5fb6:	46 17       	popm	#5,	r10	;16-bit words

00005fb8 <.LCFI20>:
    5fb8:	30 41       	ret

00005fba <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5fba:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005fbc <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5fbc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5fbe:	d6 3f       	jmp	$-82     	;abs 0x5f6c

00005fc0 <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5fc0:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005fc2 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5fc2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5fc4:	d3 3f       	jmp	$-88     	;abs 0x5f6c

00005fc6 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    5fc6:	4d 4c       	mov.b	r12,	r13	;

00005fc8 <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    5fc8:	5c 92 16 1c 	cmp.b	&0x1c16,r12	;0x1c16
    5fcc:	14 24       	jz	$+42     	;abs 0x5ff6

00005fce <.Loc.237.1>:
    5fce:	c2 9d 20 1c 	cmp.b	r13,	&0x1c20	;
    5fd2:	14 24       	jz	$+42     	;abs 0x5ffc

00005fd4 <.Loc.237.1>:
    5fd4:	c2 9d 2a 1c 	cmp.b	r13,	&0x1c2a	;
    5fd8:	01 24       	jz	$+4      	;abs 0x5fdc

00005fda <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    5fda:	30 41       	ret

00005fdc <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5fdc:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005fde <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    5fde:	6e 43       	mov.b	#2,	r14	;r3 As==10

00005fe0 <.L102>:
            xpr_timing[i].status = NOT_USED;
    5fe0:	0d 4e       	mov	r14,	r13	;

00005fe2 <.LVL71>:
    5fe2:	5d 06       	rlam	#2,	r13	;
    5fe4:	0d 5e       	add	r14,	r13	;
    5fe6:	5d 02       	rlam	#1,	r13	;
    5fe8:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

00005fec <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    5fec:	4e 43       	clr.b	r14		;
    5fee:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5ff0:	b0 12 ae 6c 	call	#27822		;#0x6cae

00005ff4 <.Loc.242.1>:
}
    5ff4:	30 41       	ret

00005ff6 <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5ff6:	4c 43       	clr.b	r12		;

00005ff8 <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    5ff8:	4e 43       	clr.b	r14		;
    5ffa:	f2 3f       	jmp	$-26     	;abs 0x5fe0

00005ffc <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5ffc:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005ffe <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    5ffe:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6000:	ef 3f       	jmp	$-32     	;abs 0x5fe0

00006002 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    6002:	2a 15       	pushm	#3,	r10	;16-bit words

00006004 <.LCFI22>:
    6004:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006008 <.LCFI23>:
    6008:	49 43       	clr.b	r9		;
    600a:	38 40 14 1c 	mov	#7188,	r8	;#0x1c14

0000600e <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    600e:	0a 49       	mov	r9,	r10	;
    6010:	5a 06       	rlam	#2,	r10	;
    6012:	0a 59       	add	r9,	r10	;
    6014:	5a 02       	rlam	#1,	r10	;
    6016:	0a 58       	add	r8,	r10	;
    6018:	6e 43       	mov.b	#2,	r14	;r3 As==10
    601a:	4d 49       	mov.b	r9,	r13	;
    601c:	0c 41       	mov	r1,	r12	;
    601e:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    6022:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6026:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    602a:	02 00
    602c:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6030:	04 00
    6032:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6036:	06 00
    6038:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    603c:	08 00

0000603e <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    603e:	19 53       	inc	r9		;

00006040 <.Loc.252.1>:
    6040:	39 90 03 00 	cmp	#3,	r9	;
    6044:	e4 23       	jnz	$-54     	;abs 0x600e

00006046 <.Loc.257.1>:
    }

}
    6046:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000604a <.LCFI24>:
    604a:	28 17       	popm	#3,	r10	;16-bit words

0000604c <.LCFI25>:
    604c:	30 41       	ret

0000604e <refresh_xpr_timers>:

void refresh_xpr_timers(){
    604e:	4a 15       	pushm	#5,	r10	;16-bit words

00006050 <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    6050:	92 93 14 1c 	cmp	#1,	&0x1c14	;r3 As==01
    6054:	62 24       	jz	$+198    	;abs 0x611a

00006056 <.Loc.265.1>:
    6056:	92 93 1e 1c 	cmp	#1,	&0x1c1e	;r3 As==01
    605a:	07 24       	jz	$+16     	;abs 0x606a

0000605c <.Loc.265.1>:
    605c:	92 93 28 1c 	cmp	#1,	&0x1c28	;r3 As==01
    6060:	15 25       	jz	$+556    	;abs 0x628c

00006062 <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    6062:	b0 12 48 6b 	call	#27464		;#0x6b48

00006066 <.Loc.313.1>:

}
    6066:	46 17       	popm	#5,	r10	;16-bit words

00006068 <.LCFI27>:
    6068:	30 41       	ret

0000606a <.L160>:
            if (first)
    606a:	16 42 22 1c 	mov	&0x1c22,r6	;0x1c22
    606e:	17 42 24 1c 	mov	&0x1c24,r7	;0x1c24

00006072 <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    6072:	5a 42 20 1c 	mov.b	&0x1c20,r10	;0x1c20

00006076 <.LVL89>:
    6076:	08 46       	mov	r6,	r8	;
    6078:	09 47       	mov	r7,	r9	;

0000607a <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    607a:	b0 12 aa 6b 	call	#27562		;#0x6baa

0000607e <.Loc.278.1>:
    607e:	0e 46       	mov	r6,	r14	;
    6080:	0f 47       	mov	r7,	r15	;
    6082:	0e 8c       	sub	r12,	r14	;
    6084:	0f 7d       	subc	r13,	r15	;

00006086 <.Loc.278.1>:
    6086:	82 4e 22 1c 	mov	r14,	&0x1c22	;
    608a:	82 4f 24 1c 	mov	r15,	&0x1c24	;

0000608e <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    608e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6090:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6092:	b0 12 0e 6c 	call	#27662		;#0x6c0e

00006096 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6096:	1d 42 22 1c 	mov	&0x1c22,r13	;0x1c22
    609a:	1c 42 24 1c 	mov	&0x1c24,r12	;0x1c24

0000609e <.Loc.281.1>:
    609e:	4e 43       	clr.b	r14		;
    60a0:	0e 9c       	cmp	r12,	r14	;
    60a2:	a2 34       	jge	$+326    	;abs 0x61e8

000060a4 <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    60a4:	0c 99       	cmp	r9,	r12	;
    60a6:	04 38       	jl	$+10     	;abs 0x60b0

000060a8 <.L170>:
    60a8:	09 9c       	cmp	r12,	r9	;
    60aa:	e5 20       	jnz	$+460    	;abs 0x6276
    60ac:	0d 98       	cmp	r8,	r13	;
    60ae:	e3 2c       	jc	$+456    	;abs 0x6276

000060b0 <.L152>:
    60b0:	5a 42 20 1c 	mov.b	&0x1c20,r10	;0x1c20

000060b4 <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    60b4:	08 4d       	mov	r13,	r8	;
    60b6:	09 4c       	mov	r12,	r9	;

000060b8 <.L117>:
        if (xpr_timing[i].status == USED)
    60b8:	16 42 2c 1c 	mov	&0x1c2c,r6	;0x1c2c
    60bc:	17 42 2e 1c 	mov	&0x1c2e,r7	;0x1c2e

000060c0 <.Loc.268.1>:
    60c0:	92 93 28 1c 	cmp	#1,	&0x1c28	;r3 As==01
    60c4:	1d 20       	jnz	$+60     	;abs 0x6100

000060c6 <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    60c6:	b0 12 aa 6b 	call	#27562		;#0x6baa

000060ca <.Loc.278.1>:
    60ca:	0e 46       	mov	r6,	r14	;
    60cc:	0f 47       	mov	r7,	r15	;
    60ce:	0e 8c       	sub	r12,	r14	;
    60d0:	0f 7d       	subc	r13,	r15	;

000060d2 <.Loc.278.1>:
    60d2:	82 4e 2c 1c 	mov	r14,	&0x1c2c	;
    60d6:	82 4f 2e 1c 	mov	r15,	&0x1c2e	;

000060da <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    60da:	6d 43       	mov.b	#2,	r13	;r3 As==10
    60dc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    60de:	b0 12 0e 6c 	call	#27662		;#0x6c0e

000060e2 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    60e2:	1d 42 2c 1c 	mov	&0x1c2c,r13	;0x1c2c
    60e6:	1c 42 2e 1c 	mov	&0x1c2e,r12	;0x1c2e

000060ea <.Loc.281.1>:
    60ea:	4e 43       	clr.b	r14		;
    60ec:	0e 9c       	cmp	r12,	r14	;
    60ee:	4c 34       	jge	$+154    	;abs 0x6188

000060f0 <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    60f0:	0c 99       	cmp	r9,	r12	;
    60f2:	76 38       	jl	$+238    	;abs 0x61e0

000060f4 <.L168>:
    60f4:	09 9c       	cmp	r12,	r9	;
    60f6:	02 20       	jnz	$+6      	;abs 0x60fc
    60f8:	0d 98       	cmp	r8,	r13	;
    60fa:	72 28       	jnc	$+230    	;abs 0x61e0

000060fc <.L139>:
    60fc:	08 9d       	cmp	r13,	r8	;
    60fe:	d8 24       	jz	$+434    	;abs 0x62b0

00006100 <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    6100:	4d 4a       	mov.b	r10,	r13	;
    6102:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6104:	b0 12 f6 6c 	call	#27894		;#0x6cf6

00006108 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    6108:	0d 48       	mov	r8,	r13	;
    610a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    610c:	b0 12 04 6d 	call	#27908		;#0x6d04

00006110 <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    6110:	0c 48       	mov	r8,	r12	;
    6112:	b0 12 32 6b 	call	#27442		;#0x6b32

00006116 <.Loc.313.1>:
}
    6116:	46 17       	popm	#5,	r10	;16-bit words

00006118 <.LCFI29>:
    6118:	30 41       	ret

0000611a <.L159>:
            if (first)
    611a:	18 42 18 1c 	mov	&0x1c18,r8	;0x1c18
    611e:	19 42 1a 1c 	mov	&0x1c1a,r9	;0x1c1a

00006122 <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    6122:	5a 42 16 1c 	mov.b	&0x1c16,r10	;0x1c16

00006126 <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6126:	b0 12 aa 6b 	call	#27562		;#0x6baa

0000612a <.LVL105>:
    612a:	0e 48       	mov	r8,	r14	;
    612c:	0f 49       	mov	r9,	r15	;
    612e:	0e 8c       	sub	r12,	r14	;
    6130:	0f 7d       	subc	r13,	r15	;

00006132 <.Loc.278.1>:
    6132:	82 4e 18 1c 	mov	r14,	&0x1c18	;
    6136:	82 4f 1a 1c 	mov	r15,	&0x1c1a	;

0000613a <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    613a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    613c:	4c 43       	clr.b	r12		;
    613e:	b0 12 0e 6c 	call	#27662		;#0x6c0e

00006142 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6142:	1d 42 18 1c 	mov	&0x1c18,r13	;0x1c18
    6146:	1c 42 1a 1c 	mov	&0x1c1a,r12	;0x1c1a

0000614a <.Loc.281.1>:
    614a:	4e 43       	clr.b	r14		;
    614c:	0e 9c       	cmp	r12,	r14	;
    614e:	74 34       	jge	$+234    	;abs 0x6238

00006150 <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6150:	0c 99       	cmp	r9,	r12	;
    6152:	0c 34       	jge	$+26     	;abs 0x616c

00006154 <.L151>:
    6154:	5a 42 16 1c 	mov.b	&0x1c16,r10	;0x1c16

00006158 <.L119>:
        if (xpr_timing[i].status == USED)
    6158:	92 93 1e 1c 	cmp	#1,	&0x1c1e	;r3 As==01
    615c:	ab 23       	jnz	$-168    	;abs 0x60b4

0000615e <.Loc.271.1>:
            if (first)
    615e:	16 42 22 1c 	mov	&0x1c22,r6	;0x1c22
    6162:	17 42 24 1c 	mov	&0x1c24,r7	;0x1c24

00006166 <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    6166:	08 4d       	mov	r13,	r8	;
    6168:	09 4c       	mov	r12,	r9	;
    616a:	87 3f       	jmp	$-240    	;abs 0x607a

0000616c <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    616c:	09 9c       	cmp	r12,	r9	;
    616e:	02 20       	jnz	$+6      	;abs 0x6174
    6170:	0d 98       	cmp	r8,	r13	;
    6172:	f0 2b       	jnc	$-30     	;abs 0x6154

00006174 <.L114>:
    6174:	0d 98       	cmp	r8,	r13	;
    6176:	93 24       	jz	$+296    	;abs 0x629e

00006178 <.L118>:
        if (xpr_timing[i].status == USED)
    6178:	92 93 1e 1c 	cmp	#1,	&0x1c1e	;r3 As==01
    617c:	9d 23       	jnz	$-196    	;abs 0x60b8

0000617e <.Loc.271.1>:
            if (first)
    617e:	16 42 22 1c 	mov	&0x1c22,r6	;0x1c22
    6182:	17 42 24 1c 	mov	&0x1c24,r7	;0x1c24
    6186:	79 3f       	jmp	$-268    	;abs 0x607a

00006188 <.L162>:
            if (xpr_timing[i].data <= 0)
    6188:	0c 93       	cmp	#0,	r12	;r3 As==00
    618a:	02 20       	jnz	$+6      	;abs 0x6190
    618c:	0d 93       	cmp	#0,	r13	;r3 As==00
    618e:	b0 23       	jnz	$-158    	;abs 0x60f0

00006190 <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6190:	5c 42 2a 1c 	mov.b	&0x1c2a,r12	;0x1c2a
    6194:	b0 12 62 5a 	call	#23138		;#0x5a62
    6198:	b0 12 08 5a 	call	#23048		;#0x5a08

0000619c <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    619c:	5c 42 2a 1c 	mov.b	&0x1c2a,r12	;0x1c2a

000061a0 <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    61a0:	d2 92 2a 1c 	cmp.b	&0x1c2a,&0x1c16	;0x1c2a
    61a4:	16 1c
    61a6:	8e 24       	jz	$+286    	;abs 0x62c4

000061a8 <.Loc.237.1>:
    61a8:	c2 9c 20 1c 	cmp.b	r12,	&0x1c20	;
    61ac:	91 24       	jz	$+292    	;abs 0x62d0

000061ae <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    61ae:	6c 43       	mov.b	#2,	r12	;r3 As==10

000061b0 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    61b0:	6e 43       	mov.b	#2,	r14	;r3 As==10

000061b2 <.L136>:
            xpr_timing[i].status = NOT_USED;
    61b2:	0d 4e       	mov	r14,	r13	;
    61b4:	5d 06       	rlam	#2,	r13	;
    61b6:	0d 5e       	add	r14,	r13	;
    61b8:	5d 02       	rlam	#1,	r13	;
    61ba:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

000061be <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    61be:	4e 43       	clr.b	r14		;
    61c0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    61c2:	b0 12 ae 6c 	call	#27822		;#0x6cae

000061c6 <.LBE18>:
            if (xpr_timing[i].data > 0)
    61c6:	1d 42 2c 1c 	mov	&0x1c2c,r13	;0x1c2c
    61ca:	1c 42 2e 1c 	mov	&0x1c2e,r12	;0x1c2e

000061ce <.Loc.292.1>:
    61ce:	4e 43       	clr.b	r14		;
    61d0:	0e 9c       	cmp	r12,	r14	;
    61d2:	8e 3b       	jl	$-226    	;abs 0x60f0
    61d4:	0c 93       	cmp	#0,	r12	;r3 As==00
    61d6:	94 23       	jnz	$-214    	;abs 0x6100
    61d8:	0d 93       	cmp	#0,	r13	;r3 As==00
    61da:	92 27       	jz	$-218    	;abs 0x6100

000061dc <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    61dc:	0c 99       	cmp	r9,	r12	;
    61de:	8a 37       	jge	$-234    	;abs 0x60f4

000061e0 <.L154>:
    61e0:	5a 42 2a 1c 	mov.b	&0x1c2a,r10	;0x1c2a

000061e4 <.LVL117>:
    if (!first)
    61e4:	08 4d       	mov	r13,	r8	;
    61e6:	8c 3f       	jmp	$-230    	;abs 0x6100

000061e8 <.L161>:
            if (xpr_timing[i].data <= 0)
    61e8:	0c 93       	cmp	#0,	r12	;r3 As==00
    61ea:	02 20       	jnz	$+6      	;abs 0x61f0
    61ec:	0d 93       	cmp	#0,	r13	;r3 As==00
    61ee:	5a 23       	jnz	$-330    	;abs 0x60a4

000061f0 <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    61f0:	5c 42 20 1c 	mov.b	&0x1c20,r12	;0x1c20
    61f4:	b0 12 62 5a 	call	#23138		;#0x5a62
    61f8:	b0 12 08 5a 	call	#23048		;#0x5a08

000061fc <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    61fc:	d2 92 16 1c 	cmp.b	&0x1c16,&0x1c20	;0x1c16
    6200:	20 1c
    6202:	63 24       	jz	$+200    	;abs 0x62ca

00006204 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6204:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006206 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6206:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006208 <.L131>:
            xpr_timing[i].status = NOT_USED;
    6208:	0d 4e       	mov	r14,	r13	;
    620a:	5d 06       	rlam	#2,	r13	;
    620c:	0d 5e       	add	r14,	r13	;
    620e:	5d 02       	rlam	#1,	r13	;
    6210:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

00006214 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6214:	4e 43       	clr.b	r14		;
    6216:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6218:	b0 12 ae 6c 	call	#27822		;#0x6cae

0000621c <.LVL122>:
            if (xpr_timing[i].data > 0)
    621c:	1d 42 22 1c 	mov	&0x1c22,r13	;0x1c22
    6220:	1c 42 24 1c 	mov	&0x1c24,r12	;0x1c24

00006224 <.Loc.292.1>:
    6224:	4e 43       	clr.b	r14		;
    6226:	0e 9c       	cmp	r12,	r14	;
    6228:	3d 3b       	jl	$-388    	;abs 0x60a4
    622a:	0c 93       	cmp	#0,	r12	;r3 As==00
    622c:	45 23       	jnz	$-372    	;abs 0x60b8
    622e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6230:	43 27       	jz	$-376    	;abs 0x60b8

00006232 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6232:	0c 99       	cmp	r9,	r12	;
    6234:	3d 3b       	jl	$-388    	;abs 0x60b0
    6236:	38 3f       	jmp	$-398    	;abs 0x60a8

00006238 <.L164>:
            if (xpr_timing[i].data <= 0)
    6238:	0c 93       	cmp	#0,	r12	;r3 As==00
    623a:	02 20       	jnz	$+6      	;abs 0x6240
    623c:	0d 93       	cmp	#0,	r13	;r3 As==00
    623e:	88 23       	jnz	$-238    	;abs 0x6150

00006240 <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6240:	5c 42 16 1c 	mov.b	&0x1c16,r12	;0x1c16
    6244:	b0 12 62 5a 	call	#23138		;#0x5a62
    6248:	b0 12 08 5a 	call	#23048		;#0x5a08

0000624c <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    624c:	82 43 14 1c 	mov	#0,	&0x1c14	;r3 As==00

00006250 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6250:	4e 43       	clr.b	r14		;
    6252:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6254:	4c 43       	clr.b	r12		;
    6256:	b0 12 ae 6c 	call	#27822		;#0x6cae

0000625a <.LVL126>:
            if (xpr_timing[i].data > 0)
    625a:	1d 42 18 1c 	mov	&0x1c18,r13	;0x1c18
    625e:	1c 42 1a 1c 	mov	&0x1c1a,r12	;0x1c1a

00006262 <.Loc.292.1>:
    6262:	4e 43       	clr.b	r14		;
    6264:	0e 9c       	cmp	r12,	r14	;
    6266:	74 3b       	jl	$-278    	;abs 0x6150
    6268:	0c 93       	cmp	#0,	r12	;r3 As==00
    626a:	86 23       	jnz	$-242    	;abs 0x6178
    626c:	0d 93       	cmp	#0,	r13	;r3 As==00
    626e:	84 27       	jz	$-246    	;abs 0x6178

00006270 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6270:	0c 99       	cmp	r9,	r12	;
    6272:	70 3b       	jl	$-286    	;abs 0x6154
    6274:	7b 3f       	jmp	$-264    	;abs 0x616c

00006276 <.L128>:
    6276:	08 9d       	cmp	r13,	r8	;
    6278:	1f 23       	jnz	$-448    	;abs 0x60b8
    627a:	09 9c       	cmp	r12,	r9	;
    627c:	1d 23       	jnz	$-452    	;abs 0x60b8

0000627e <.Loc.294.1>:
    627e:	5e 42 20 1c 	mov.b	&0x1c20,r14	;0x1c20

00006282 <.Loc.294.1>:
    6282:	5a 92 20 1c 	cmp.b	&0x1c20,r10	;0x1c20
    6286:	18 2f       	jc	$-462    	;abs 0x60b8
    6288:	0a 4e       	mov	r14,	r10	;

0000628a <.LVL128>:
    628a:	14 3f       	jmp	$-470    	;abs 0x60b4

0000628c <.L143>:
            if (first)
    628c:	16 42 2c 1c 	mov	&0x1c2c,r6	;0x1c2c
    6290:	17 42 2e 1c 	mov	&0x1c2e,r7	;0x1c2e

00006294 <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    6294:	5a 42 2a 1c 	mov.b	&0x1c2a,r10	;0x1c2a

00006298 <.LVL131>:
    6298:	08 46       	mov	r6,	r8	;
    629a:	09 47       	mov	r7,	r9	;
    629c:	14 3f       	jmp	$-470    	;abs 0x60c6

0000629e <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    629e:	0c 99       	cmp	r9,	r12	;
    62a0:	6b 23       	jnz	$-296    	;abs 0x6178

000062a2 <.Loc.294.1>:
    62a2:	5e 42 16 1c 	mov.b	&0x1c16,r14	;0x1c16

000062a6 <.Loc.294.1>:
    62a6:	5a 92 16 1c 	cmp.b	&0x1c16,r10	;0x1c16
    62aa:	66 2f       	jc	$-306    	;abs 0x6178
    62ac:	0a 4e       	mov	r14,	r10	;

000062ae <.LVL133>:
    62ae:	54 3f       	jmp	$-342    	;abs 0x6158

000062b0 <.L163>:
    62b0:	09 9c       	cmp	r12,	r9	;
    62b2:	26 23       	jnz	$-434    	;abs 0x6100

000062b4 <.Loc.294.1>:
    62b4:	5c 42 2a 1c 	mov.b	&0x1c2a,r12	;0x1c2a

000062b8 <.Loc.294.1>:
    62b8:	5a 92 2a 1c 	cmp.b	&0x1c2a,r10	;0x1c2a
    62bc:	21 2f       	jc	$-444    	;abs 0x6100
    62be:	0a 4c       	mov	r12,	r10	;

000062c0 <.LVL135>:
    if (!first)
    62c0:	08 4d       	mov	r13,	r8	;
    62c2:	1e 3f       	jmp	$-450    	;abs 0x6100

000062c4 <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62c4:	4c 43       	clr.b	r12		;

000062c6 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    62c6:	4e 43       	clr.b	r14		;
    62c8:	74 3f       	jmp	$-278    	;abs 0x61b2

000062ca <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62ca:	4c 43       	clr.b	r12		;

000062cc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    62cc:	4e 43       	clr.b	r14		;
    62ce:	9c 3f       	jmp	$-198    	;abs 0x6208

000062d0 <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62d0:	5c 43       	mov.b	#1,	r12	;r3 As==01

000062d2 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    62d2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    62d4:	6e 3f       	jmp	$-290    	;abs 0x61b2

000062d6 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    62d6:	5a 15       	pushm	#6,	r10	;16-bit words

000062d8 <.LCFI31>:
    62d8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000062dc <.LCFI32>:
    62dc:	47 4c       	mov.b	r12,	r7	;
    62de:	08 4d       	mov	r13,	r8	;
    62e0:	06 4e       	mov	r14,	r6	;

000062e2 <.LBB26>:
    62e2:	45 43       	clr.b	r5		;
    62e4:	39 40 14 1c 	mov	#7188,	r9	;#0x1c14

000062e8 <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    62e8:	0a 45       	mov	r5,	r10	;
    62ea:	5a 06       	rlam	#2,	r10	;
    62ec:	0a 55       	add	r5,	r10	;
    62ee:	5a 02       	rlam	#1,	r10	;
    62f0:	0a 59       	add	r9,	r10	;
    62f2:	6e 43       	mov.b	#2,	r14	;r3 As==10
    62f4:	4d 45       	mov.b	r5,	r13	;
    62f6:	0c 41       	mov	r1,	r12	;
    62f8:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    62fc:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6300:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6304:	02 00
    6306:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    630a:	04 00
    630c:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6310:	06 00
    6312:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6316:	08 00

00006318 <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6318:	15 53       	inc	r5		;

0000631a <.Loc.252.1>:
    631a:	35 90 03 00 	cmp	#3,	r5	;
    631e:	e4 23       	jnz	$-54     	;abs 0x62e8

00006320 <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    6320:	82 93 14 1c 	cmp	#0,	&0x1c14	;r3 As==00
    6324:	1d 24       	jz	$+60     	;abs 0x6360

00006326 <.Loc.324.1>:
    6326:	82 93 1e 1c 	cmp	#0,	&0x1c1e	;r3 As==00
    632a:	4e 24       	jz	$+158    	;abs 0x63c8

0000632c <.Loc.324.1>:
    632c:	82 93 28 1c 	cmp	#0,	&0x1c28	;r3 As==00
    6330:	4e 24       	jz	$+158    	;abs 0x63ce

00006332 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    6332:	0e 48       	mov	r8,	r14	;
    6334:	0f 46       	mov	r6,	r15	;
    6336:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6338:	6c 43       	mov.b	#2,	r12	;r3 As==10
    633a:	b0 12 0e 6c 	call	#27662		;#0x6c0e

0000633e <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    633e:	4e 47       	mov.b	r7,	r14	;
    6340:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6342:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6344:	b0 12 62 6c 	call	#27746		;#0x6c62

00006348 <.Loc.349.1>:
        refresh_xpr_timers();
    6348:	b0 12 4e 60 	call	#24654		;#0x604e

0000634c <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    634c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    634e:	b0 12 12 6d 	call	#27922		;#0x6d12

00006352 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6352:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6354:	b0 12 66 6e 	call	#28262		;#0x6e66

00006358 <.Loc.354.1>:
}
    6358:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000635c <.LCFI33>:
    635c:	55 17       	popm	#6,	r10	;16-bit words

0000635e <.LCFI34>:
    635e:	30 41       	ret

00006360 <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6360:	1a 42 14 1c 	mov	&0x1c14,r10	;0x1c14

00006364 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6364:	05 4a       	mov	r10,	r5	;

00006366 <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    6366:	b0 12 aa 6b 	call	#27562		;#0x6baa

0000636a <.Loc.328.1>:
    636a:	0e 45       	mov	r5,	r14	;
    636c:	5e 06       	rlam	#2,	r14	;
    636e:	0e 55       	add	r5,	r14	;
    6370:	5e 02       	rlam	#1,	r14	;
    6372:	09 5e       	add	r14,	r9	;

00006374 <.Loc.328.1>:
    6374:	0c 58       	add	r8,	r12	;
    6376:	89 4c 04 00 	mov	r12,	4(r9)	;
    637a:	0d 66       	addc	r6,	r13	;
    637c:	89 4d 06 00 	mov	r13,	6(r9)	;

00006380 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    6380:	b0 12 aa 6b 	call	#27562		;#0x6baa

00006384 <.Loc.329.1>:
    6384:	0e 4c       	mov	r12,	r14	;
    6386:	0e 58       	add	r8,	r14	;
    6388:	0f 4d       	mov	r13,	r15	;
    638a:	0f 66       	addc	r6,	r15	;
    638c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    638e:	4c 4a       	mov.b	r10,	r12	;
    6390:	b0 12 0e 6c 	call	#27662		;#0x6c0e

00006394 <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    6394:	c9 47 02 00 	mov.b	r7,	2(r9)	;

00006398 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    6398:	4e 47       	mov.b	r7,	r14	;
    639a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    639c:	4c 4a       	mov.b	r10,	r12	;
    639e:	b0 12 62 6c 	call	#27746		;#0x6c62

000063a2 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    63a2:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

000063a6 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    63a6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    63a8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    63aa:	4c 4a       	mov.b	r10,	r12	;
    63ac:	b0 12 ae 6c 	call	#27822		;#0x6cae

000063b0 <.Loc.334.1>:
        refresh_xpr_timers();
    63b0:	b0 12 4e 60 	call	#24654		;#0x604e

000063b4 <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    63b4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63b6:	b0 12 12 6d 	call	#27922		;#0x6d12

000063ba <.Loc.353.1>:
    _pers_timer_commit(XPR);
    63ba:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63bc:	b0 12 66 6e 	call	#28262		;#0x6e66

000063c0 <.Loc.354.1>:
}
    63c0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000063c4 <.LCFI36>:
    63c4:	55 17       	popm	#6,	r10	;16-bit words

000063c6 <.LCFI37>:
    63c6:	30 41       	ret

000063c8 <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    63c8:	5a 43       	mov.b	#1,	r10	;r3 As==01

000063ca <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    63ca:	55 43       	mov.b	#1,	r5	;r3 As==01
    63cc:	cc 3f       	jmp	$-102    	;abs 0x6366

000063ce <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    63ce:	6a 43       	mov.b	#2,	r10	;r3 As==10

000063d0 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    63d0:	65 43       	mov.b	#2,	r5	;r3 As==10
    63d2:	c9 3f       	jmp	$-108    	;abs 0x6366

000063d4 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    63d4:	3a 15       	pushm	#4,	r10	;16-bit words

000063d6 <.LCFI39>:
    63d6:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000063da <.LCFI40>:
    63da:	47 4c       	mov.b	r12,	r7	;

000063dc <.LBB34>:
    63dc:	49 43       	clr.b	r9		;
    63de:	38 40 14 1c 	mov	#7188,	r8	;#0x1c14

000063e2 <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    63e2:	0a 49       	mov	r9,	r10	;
    63e4:	5a 06       	rlam	#2,	r10	;
    63e6:	0a 59       	add	r9,	r10	;
    63e8:	5a 02       	rlam	#1,	r10	;
    63ea:	0a 58       	add	r8,	r10	;
    63ec:	6e 43       	mov.b	#2,	r14	;r3 As==10
    63ee:	4d 49       	mov.b	r9,	r13	;
    63f0:	0c 41       	mov	r1,	r12	;
    63f2:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    63f6:	aa 41 00 00 	mov	@r1,	0(r10)	;
    63fa:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    63fe:	02 00
    6400:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6404:	04 00
    6406:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    640a:	06 00
    640c:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6410:	08 00

00006412 <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6412:	19 53       	inc	r9		;

00006414 <.Loc.252.1>:
    6414:	39 90 03 00 	cmp	#3,	r9	;
    6418:	e4 23       	jnz	$-54     	;abs 0x63e2

0000641a <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    641a:	c2 97 16 1c 	cmp.b	r7,	&0x1c16	;
    641e:	12 24       	jz	$+38     	;abs 0x6444

00006420 <.Loc.237.1>:
    6420:	c2 97 20 1c 	cmp.b	r7,	&0x1c20	;
    6424:	27 24       	jz	$+80     	;abs 0x6474

00006426 <.Loc.237.1>:
    6426:	c2 97 2a 1c 	cmp.b	r7,	&0x1c2a	;
    642a:	27 24       	jz	$+80     	;abs 0x647a

0000642c <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    642c:	b0 12 4e 60 	call	#24654		;#0x604e

00006430 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    6430:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6432:	b0 12 12 6d 	call	#27922		;#0x6d12

00006436 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6436:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6438:	b0 12 66 6e 	call	#28262		;#0x6e66

0000643c <.Loc.371.1>:

}
    643c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006440 <.LCFI41>:
    6440:	37 17       	popm	#4,	r10	;16-bit words

00006442 <.LCFI42>:
    6442:	30 41       	ret

00006444 <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6444:	4c 43       	clr.b	r12		;

00006446 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6446:	4e 43       	clr.b	r14		;

00006448 <.L181>:
            xpr_timing[i].status = NOT_USED;
    6448:	0d 4e       	mov	r14,	r13	;
    644a:	5d 06       	rlam	#2,	r13	;
    644c:	0d 5e       	add	r14,	r13	;
    644e:	5d 02       	rlam	#1,	r13	;
    6450:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

00006454 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6454:	4e 43       	clr.b	r14		;
    6456:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6458:	b0 12 ae 6c 	call	#27822		;#0x6cae

0000645c <.Loc.242.1>:
    refresh_xpr_timers();
    645c:	b0 12 4e 60 	call	#24654		;#0x604e

00006460 <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    6460:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6462:	b0 12 12 6d 	call	#27922		;#0x6d12

00006466 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6466:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6468:	b0 12 66 6e 	call	#28262		;#0x6e66

0000646c <.Loc.371.1>:
}
    646c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006470 <.LCFI44>:
    6470:	37 17       	popm	#4,	r10	;16-bit words

00006472 <.LCFI45>:
    6472:	30 41       	ret

00006474 <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6474:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006476 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6476:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6478:	e7 3f       	jmp	$-48     	;abs 0x6448

0000647a <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    647a:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000647c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    647c:	6e 43       	mov.b	#2,	r14	;r3 As==10
    647e:	e4 3f       	jmp	$-54     	;abs 0x6448

00006480 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    6480:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006484 <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    6484:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6486:	4d 43       	clr.b	r13		;
    6488:	0c 41       	mov	r1,	r12	;
    648a:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    648e:	a2 41 0a 1c 	mov	@r1,	&0x1c0a	;
    6492:	92 41 02 00 	mov	2(r1),	&0x1c0c	;
    6496:	0c 1c
    6498:	92 41 04 00 	mov	4(r1),	&0x1c0e	;
    649c:	0e 1c
    649e:	92 41 06 00 	mov	6(r1),	&0x1c10	;
    64a2:	10 1c
    64a4:	92 41 08 00 	mov	8(r1),	&0x1c12	;
    64a8:	12 1c

000064aa <.Loc.383.1>:
    }

}
    64aa:	31 50 0a 00 	add	#10,	r1	;#0x000a

000064ae <.LCFI48>:
    64ae:	30 41       	ret

000064b0 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    64b0:	2a 15       	pushm	#3,	r10	;16-bit words

000064b2 <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    64b2:	92 93 0a 1c 	cmp	#1,	&0x1c0a	;r3 As==01
    64b6:	8a 20       	jnz	$+278    	;abs 0x65cc

000064b8 <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    64b8:	18 42 0e 1c 	mov	&0x1c0e,r8	;0x1c0e
    64bc:	19 42 10 1c 	mov	&0x1c10,r9	;0x1c10

000064c0 <.Loc.465.1>:
    64c0:	82 48 50 1c 	mov	r8,	&0x1c50	;

000064c4 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    64c4:	d2 42 0c 1c 	mov.b	&0x1c0c,&0x1c52	;0x1c0c
    64c8:	52 1c

000064ca <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    64ca:	b0 12 aa 6b 	call	#27562		;#0x6baa

000064ce <.Loc.471.1>:
    64ce:	0e 48       	mov	r8,	r14	;
    64d0:	0f 49       	mov	r9,	r15	;
    64d2:	0e 8c       	sub	r12,	r14	;
    64d4:	0f 7d       	subc	r13,	r15	;

000064d6 <.Loc.471.1>:
    64d6:	82 4e 0e 1c 	mov	r14,	&0x1c0e	;
    64da:	82 4f 10 1c 	mov	r15,	&0x1c10	;

000064de <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    64de:	5d 43       	mov.b	#1,	r13	;r3 As==01
    64e0:	4c 43       	clr.b	r12		;
    64e2:	b0 12 0e 6c 	call	#27662		;#0x6c0e

000064e6 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    64e6:	1c 42 0e 1c 	mov	&0x1c0e,r12	;0x1c0e
    64ea:	1d 42 10 1c 	mov	&0x1c10,r13	;0x1c10

000064ee <.Loc.474.1>:
    64ee:	0d 93       	cmp	#0,	r13	;r3 As==00
    64f0:	21 38       	jl	$+68     	;abs 0x6534

000064f2 <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    64f2:	0f 4c       	mov	r12,	r15	;
    64f4:	0f dd       	bis	r13,	r15	;
    64f6:	0f 93       	cmp	#0,	r15	;r3 As==00
    64f8:	6d 24       	jz	$+220    	;abs 0x65d4

000064fa <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    64fa:	1f 42 50 1c 	mov	&0x1c50,r15	;0x1c50
    64fe:	08 4f       	mov	r15,	r8	;
    6500:	09 43       	clr	r9		;

00006502 <.Loc.485.1>:
    6502:	0d 93       	cmp	#0,	r13	;r3 As==00
    6504:	54 38       	jl	$+170    	;abs 0x65ae
    6506:	0d 93       	cmp	#0,	r13	;r3 As==00
    6508:	02 20       	jnz	$+6      	;abs 0x650e
    650a:	0c 98       	cmp	r8,	r12	;
    650c:	50 28       	jnc	$+162    	;abs 0x65ae

0000650e <.L209>:
    650e:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52

00006512 <.Loc.485.1>:
    6512:	0c 98       	cmp	r8,	r12	;
    6514:	53 24       	jz	$+168    	;abs 0x65bc

00006516 <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    6516:	4d 4e       	mov.b	r14,	r13	;
    6518:	5c 43       	mov.b	#1,	r12	;r3 As==01
    651a:	b0 12 f6 6c 	call	#27894		;#0x6cf6

0000651e <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    651e:	1d 42 50 1c 	mov	&0x1c50,r13	;0x1c50
    6522:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6524:	b0 12 04 6d 	call	#27908		;#0x6d04

00006528 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    6528:	1c 42 50 1c 	mov	&0x1c50,r12	;0x1c50
    652c:	b0 12 52 6b 	call	#27474		;#0x6b52

00006530 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    6530:	28 17       	popm	#3,	r10	;16-bit words

00006532 <.LCFI50>:
    6532:	30 41       	ret

00006534 <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    6534:	59 42 5b 1c 	mov.b	&0x1c5b,r9	;0x1c5b
    6538:	0f 43       	clr	r15		;
    653a:	0f 89       	sub	r9,	r15	;
    653c:	08 4f       	mov	r15,	r8	;
    653e:	09 4f       	mov	r15,	r9	;
    6540:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

00006544 <.Loc.474.1>:
    6544:	09 9d       	cmp	r13,	r9	;
    6546:	04 38       	jl	$+10     	;abs 0x6550

00006548 <.Loc.474.1>:
    6548:	0d 99       	cmp	r9,	r13	;
    654a:	25 20       	jnz	$+76     	;abs 0x6596
    654c:	0f 9c       	cmp	r12,	r15	;
    654e:	23 2c       	jc	$+72     	;abs 0x6596

00006550 <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6550:	1e 42 50 1c 	mov	&0x1c50,r14	;0x1c50
    6554:	0a 4e       	mov	r14,	r10	;
    6556:	0b 43       	clr	r11		;

00006558 <.Loc.476.1>:
    6558:	48 43       	clr.b	r8		;
    655a:	49 43       	clr.b	r9		;
    655c:	08 8c       	sub	r12,	r8	;
    655e:	09 7d       	subc	r13,	r9	;

00006560 <.Loc.476.1>:
    6560:	09 93       	cmp	#0,	r9	;r3 As==00
    6562:	04 38       	jl	$+10     	;abs 0x656c
    6564:	09 93       	cmp	#0,	r9	;r3 As==00
    6566:	0b 20       	jnz	$+24     	;abs 0x657e
    6568:	08 9a       	cmp	r10,	r8	;
    656a:	09 2c       	jc	$+20     	;abs 0x657e

0000656c <.L207>:
    656c:	5e 42 0c 1c 	mov.b	&0x1c0c,r14	;0x1c0c

00006570 <.L196>:
                    min_pdc = -pdc_timing[i].data;
    6570:	4f 43       	clr.b	r15		;
    6572:	0f 8c       	sub	r12,	r15	;
    6574:	82 4f 50 1c 	mov	r15,	&0x1c50	;

00006578 <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    6578:	c2 4e 52 1c 	mov.b	r14,	&0x1c52	;

0000657c <.Loc.494.1>:
    if (!first)
    657c:	cc 3f       	jmp	$-102    	;abs 0x6516

0000657e <.L194>:
    657e:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52

00006582 <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6582:	0a 98       	cmp	r8,	r10	;
    6584:	c8 23       	jnz	$-110    	;abs 0x6516
    6586:	09 93       	cmp	#0,	r9	;r3 As==00
    6588:	c6 23       	jnz	$-114    	;abs 0x6516

0000658a <.Loc.476.1>:
    658a:	5f 42 0c 1c 	mov.b	&0x1c0c,r15	;0x1c0c

0000658e <.Loc.476.1>:
    658e:	4f 9e       	cmp.b	r14,	r15	;
    6590:	c2 2f       	jc	$-122    	;abs 0x6516
    6592:	0e 4f       	mov	r15,	r14	;
    6594:	ed 3f       	jmp	$-36     	;abs 0x6570

00006596 <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    6596:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52

0000659a <.Loc.481.1>:
    659a:	0d 99       	cmp	r9,	r13	;
    659c:	05 38       	jl	$+12     	;abs 0x65a8
    659e:	0a 49       	mov	r9,	r10	;
    65a0:	09 9d       	cmp	r13,	r9	;
    65a2:	b9 23       	jnz	$-140    	;abs 0x6516
    65a4:	0c 9f       	cmp	r15,	r12	;
    65a6:	b7 2f       	jc	$-144    	;abs 0x6516

000065a8 <.L208>:
    65a8:	82 43 0a 1c 	mov	#0,	&0x1c0a	;r3 As==00

000065ac <.Loc.494.1>:
    if (!first)
    65ac:	b4 3f       	jmp	$-150    	;abs 0x6516

000065ae <.L201>:
    65ae:	5e 42 0c 1c 	mov.b	&0x1c0c,r14	;0x1c0c

000065b2 <.L203>:
                    min_pdc = pdc_timing[i].data;
    65b2:	82 4c 50 1c 	mov	r12,	&0x1c50	;

000065b6 <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    65b6:	c2 4e 52 1c 	mov.b	r14,	&0x1c52	;

000065ba <.Loc.494.1>:
    if (!first)
    65ba:	ad 3f       	jmp	$-164    	;abs 0x6516

000065bc <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    65bc:	0d 99       	cmp	r9,	r13	;
    65be:	ab 23       	jnz	$-168    	;abs 0x6516

000065c0 <.Loc.485.1>:
    65c0:	5f 42 0c 1c 	mov.b	&0x1c0c,r15	;0x1c0c

000065c4 <.Loc.485.1>:
    65c4:	4f 9e       	cmp.b	r14,	r15	;
    65c6:	a7 2f       	jc	$-176    	;abs 0x6516
    65c8:	0e 4f       	mov	r15,	r14	;
    65ca:	f3 3f       	jmp	$-24     	;abs 0x65b2

000065cc <.L189>:
    else stop_timer();
    65cc:	b0 12 08 6b 	call	#27400		;#0x6b08

000065d0 <.Loc.507.1>:
}
    65d0:	28 17       	popm	#3,	r10	;16-bit words

000065d2 <.LCFI52>:
    65d2:	30 41       	ret

000065d4 <.L199>:
    if (!first)
    65d4:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52
    65d8:	9e 3f       	jmp	$-194    	;abs 0x6516

000065da <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    65da:	1a 15       	pushm	#2,	r10	;16-bit words

000065dc <.LCFI54>:
    65dc:	17 15       	pushm	#2,	r7	;16-bit words

000065de <.LCFI55>:
    65de:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000065e2 <.LCFI56>:
    65e2:	49 4c       	mov.b	r12,	r9	;
    65e4:	0a 4d       	mov	r13,	r10	;

000065e6 <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    65e6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    65e8:	4d 43       	clr.b	r13		;

000065ea <.LVL210>:
    65ea:	0c 41       	mov	r1,	r12	;

000065ec <.LVL211>:
    65ec:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    65f0:	a2 41 0a 1c 	mov	@r1,	&0x1c0a	;
    65f4:	92 41 02 00 	mov	2(r1),	&0x1c0c	;
    65f8:	0c 1c
    65fa:	92 41 04 00 	mov	4(r1),	&0x1c0e	;
    65fe:	0e 1c
    6600:	92 41 06 00 	mov	6(r1),	&0x1c10	;
    6604:	10 1c
    6606:	92 41 08 00 	mov	8(r1),	&0x1c12	;
    660a:	12 1c

0000660c <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    660c:	06 4a       	mov	r10,	r6	;
    660e:	07 43       	clr	r7		;

00006610 <.Loc.401.1>:
    6610:	82 93 0a 1c 	cmp	#0,	&0x1c0a	;r3 As==00
    6614:	31 20       	jnz	$+100    	;abs 0x6678

00006616 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    6616:	4c 49       	mov.b	r9,	r12	;
    6618:	b0 12 62 5a 	call	#23138		;#0x5a62
    661c:	0d 4a       	mov	r10,	r13	;
    661e:	b0 12 2e 5a 	call	#23086		;#0x5a2e

00006622 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    6622:	4c 49       	mov.b	r9,	r12	;
    6624:	b0 12 62 5a 	call	#23138		;#0x5a62
    6628:	5d 43       	mov.b	#1,	r13	;r3 As==01
    662a:	b0 12 34 5a 	call	#23092		;#0x5a34

0000662e <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    662e:	0e 46       	mov	r6,	r14	;
    6630:	0f 47       	mov	r7,	r15	;
    6632:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6634:	4c 43       	clr.b	r12		;
    6636:	b0 12 0e 6c 	call	#27662		;#0x6c0e

0000663a <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    663a:	82 46 0e 1c 	mov	r6,	&0x1c0e	;
    663e:	82 47 10 1c 	mov	r7,	&0x1c10	;

00006642 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    6642:	4e 49       	mov.b	r9,	r14	;
    6644:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6646:	4c 43       	clr.b	r12		;
    6648:	b0 12 62 6c 	call	#27746		;#0x6c62

0000664c <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    664c:	c2 49 0c 1c 	mov.b	r9,	&0x1c0c	;

00006650 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    6650:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6652:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6654:	4c 43       	clr.b	r12		;
    6656:	b0 12 ae 6c 	call	#27822		;#0x6cae

0000665a <.Loc.410.1>:
            pdc_timing[i].status = USED;
    665a:	92 43 0a 1c 	mov	#1,	&0x1c0a	;r3 As==01

0000665e <.Loc.411.1>:
        refresh_pdc_timers();
    665e:	b0 12 b0 64 	call	#25776		;#0x64b0

00006662 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    6662:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6664:	b0 12 12 6d 	call	#27922		;#0x6d12

00006668 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    6668:	5c 43       	mov.b	#1,	r12	;r3 As==01
    666a:	b0 12 66 6e 	call	#28262		;#0x6e66

0000666e <.Loc.435.1>:
}
    666e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006672 <.LCFI57>:
    6672:	16 17       	popm	#2,	r7	;16-bit words

00006674 <.LCFI58>:
    6674:	19 17       	popm	#2,	r10	;16-bit words

00006676 <.LCFI59>:
    6676:	30 41       	ret

00006678 <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    6678:	82 46 0e 1c 	mov	r6,	&0x1c0e	;
    667c:	82 47 10 1c 	mov	r7,	&0x1c10	;

00006680 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    6680:	0e 46       	mov	r6,	r14	;
    6682:	0f 47       	mov	r7,	r15	;
    6684:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6686:	4c 43       	clr.b	r12		;
    6688:	b0 12 0e 6c 	call	#27662		;#0x6c0e

0000668c <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    668c:	c2 49 0c 1c 	mov.b	r9,	&0x1c0c	;

00006690 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    6690:	4e 49       	mov.b	r9,	r14	;
    6692:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6694:	4c 43       	clr.b	r12		;
    6696:	b0 12 62 6c 	call	#27746		;#0x6c62

0000669a <.Loc.430.1>:
        refresh_pdc_timers();
    669a:	b0 12 b0 64 	call	#25776		;#0x64b0

0000669e <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    669e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    66a0:	b0 12 12 6d 	call	#27922		;#0x6d12

000066a4 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    66a4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    66a6:	b0 12 66 6e 	call	#28262		;#0x6e66

000066aa <.Loc.435.1>:
}
    66aa:	31 50 0a 00 	add	#10,	r1	;#0x000a

000066ae <.LCFI61>:
    66ae:	16 17       	popm	#2,	r7	;16-bit words

000066b0 <.LCFI62>:
    66b0:	19 17       	popm	#2,	r10	;16-bit words

000066b2 <.LCFI63>:
    66b2:	30 41       	ret

000066b4 <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    66b4:	0a 15       	pushm	#1,	r10	;16-bit words

000066b6 <.LCFI64>:
    66b6:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000066ba <.LCFI65>:
    66ba:	4a 4c       	mov.b	r12,	r10	;

000066bc <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    66bc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    66be:	4d 43       	clr.b	r13		;
    66c0:	0c 41       	mov	r1,	r12	;

000066c2 <.LVL233>:
    66c2:	b0 12 aa 6e 	call	#28330		;#0x6eaa
    66c6:	a2 41 0a 1c 	mov	@r1,	&0x1c0a	;
    66ca:	92 41 02 00 	mov	2(r1),	&0x1c0c	;
    66ce:	0c 1c
    66d0:	92 41 04 00 	mov	4(r1),	&0x1c0e	;
    66d4:	0e 1c
    66d6:	92 41 06 00 	mov	6(r1),	&0x1c10	;
    66da:	10 1c
    66dc:	92 41 08 00 	mov	8(r1),	&0x1c12	;
    66e0:	12 1c

000066e2 <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    66e2:	c2 9a 0c 1c 	cmp.b	r10,	&0x1c0c	;
    66e6:	07 20       	jnz	$+16     	;abs 0x66f6

000066e8 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    66e8:	82 43 0a 1c 	mov	#0,	&0x1c0a	;r3 As==00

000066ec <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    66ec:	4e 43       	clr.b	r14		;
    66ee:	5d 43       	mov.b	#1,	r13	;r3 As==01
    66f0:	4c 43       	clr.b	r12		;
    66f2:	b0 12 ae 6c 	call	#27822		;#0x6cae

000066f6 <.L216>:
    refresh_pdc_timers();
    66f6:	b0 12 b0 64 	call	#25776		;#0x64b0

000066fa <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    66fa:	6c 43       	mov.b	#2,	r12	;r3 As==10
    66fc:	b0 12 12 6d 	call	#27922		;#0x6d12

00006700 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    6700:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6702:	b0 12 66 6e 	call	#28262		;#0x6e66

00006706 <.Loc.450.1>:
}
    6706:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000670a <.LCFI66>:
    670a:	0a 17       	popm	#1,	r10	;16-bit words

0000670c <.LCFI67>:
    670c:	30 41       	ret

0000670e <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    670e:	5c 92 0c 1c 	cmp.b	&0x1c0c,r12	;0x1c0c
    6712:	07 20       	jnz	$+16     	;abs 0x6722

00006714 <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    6714:	82 43 0a 1c 	mov	#0,	&0x1c0a	;r3 As==00

00006718 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    6718:	4e 43       	clr.b	r14		;
    671a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    671c:	4c 43       	clr.b	r12		;

0000671e <.LVL242>:
    671e:	b0 12 ae 6c 	call	#27822		;#0x6cae

00006722 <.L217>:

        }
    }
}
    6722:	30 41       	ret

00006724 <main>:
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    6724:	b0 12 46 6a 	call	#27206		;#0x6a46

00006728 <.Loc.46.1>:

	// if this is the first boot
	if(!__inited){
    6728:	c2 93 c8 4c 	cmp.b	#0,	&0x4cc8	;r3 As==00
    672c:	27 24       	jz	$+80     	;abs 0x677c

0000672e <.L2>:
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    672e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006732 <.Loc.68.1>:
    6732:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

00006736 <.Loc.68.1>:
    6736:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000673a <.Loc.68.1>:
    __port_init(1, 4); // Task Execution
    673a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    673e:	02 02

00006740 <.Loc.69.1>:
    6740:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    6744:	04 02

00006746 <.Loc.69.1>:
    6746:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    674a:	02 02

0000674c <.Loc.69.1>:
    __port_init(3, 5); // Task commit
    674c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6750:	22 02

00006752 <.Loc.70.1>:
    6752:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    6756:	24 02

00006758 <.Loc.70.1>:
    6758:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    675c:	22 02

0000675e <.Loc.70.1>:
    __port_init(3, 6); // Task buffer copy
    675e:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6762:	22 02

00006764 <.Loc.71.1>:
    6764:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    6768:	24 02

0000676a <L0^A>:
    676a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    676e:	22 02

00006770 <.Loc.71.1>:
#endif

	// will be called at each reboot of the application
	__app_reboot();
    6770:	b0 12 ca 58 	call	#22730		;#0x58ca

00006774 <.Loc.78.1>:

	// activate the scheduler
	__scheduler_run();
    6774:	b0 12 78 5a 	call	#23160		;#0x5a78

00006778 <.Loc.80.1>:

	return 0;
}
    6778:	4c 43       	clr.b	r12		;
    677a:	30 41       	ret

0000677c <.L4>:
	    __scheduler_boot_init();
    677c:	b0 12 96 59 	call	#22934		;#0x5996

00006780 <.Loc.50.1>:
	    __events_boot_init();
    6780:	b0 12 8e 67 	call	#26510		;#0x678e

00006784 <.Loc.57.1>:
	    __app_init();
    6784:	b0 12 5c 53 	call	#21340		;#0x535c

00006788 <.Loc.59.1>:
	    __inited = 1;
    6788:	d2 43 c8 4c 	mov.b	#1,	&0x4cc8	;r3 As==01
    678c:	d0 3f       	jmp	$-94     	;abs 0x672e

0000678e <__events_boot_init>:
    678e:	1a 15       	pushm	#2,	r10	;16-bit words

00006790 <L0^A>:

// should be called at the first boot only
void __events_boot_init(){
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    6790:	3a 40 4a 52 	mov	#21066,	r10	;#0x524a
    6794:	39 40 4a 4d 	mov	#19786,	r9	;#0x4d4a

00006798 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    6798:	0c 4a       	mov	r10,	r12	;
    679a:	b0 12 28 69 	call	#26920		;#0x6928

0000679e <.Loc.56.1>:
        _popped[i] = NULL;
    679e:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

000067a2 <.Loc.53.1>:
    for(i=MAX_THREADS;i>0;i--){
    67a2:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    67a6:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000067aa <.Loc.53.1>:
    67aa:	3a 90 4a 4d 	cmp	#19786,	r10	;#0x4d4a
    67ae:	f4 23       	jnz	$-22     	;abs 0x6798

000067b0 <.Loc.58.1>:
    }
}
    67b0:	19 17       	popm	#2,	r10	;16-bit words

000067b2 <.LCFI1>:
    67b2:	30 41       	ret

000067b4 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    67b4:	5c 42 56 52 	mov.b	&0x5256,r12	;0x5256
    67b8:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    67ba:	14 24       	jz	$+42     	;abs 0x67e4
    67bc:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    67be:	1f 24       	jz	$+64     	;abs 0x67fe
    67c0:	0c 93       	cmp	#0,	r12	;r3 As==00
    67c2:	01 24       	jz	$+4      	;abs 0x67c6

000067c4 <.Loc.77.1>:
        if(_thread->state == THREAD_STOPPED){
            __start_thread(_thread);
        }
        _status = EVENT_DONE;
    }
}
    67c4:	30 41       	ret

000067c6 <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    67c6:	1d 42 54 52 	mov	&0x5254,r13	;0x5254

000067ca <.Loc.65.1>:
    67ca:	6c 4d       	mov.b	@r13,	r12	;
    67cc:	5c 06       	rlam	#2,	r12	;
    67ce:	6d 4d       	mov.b	@r13,	r13	;
    67d0:	0c 5d       	add	r13,	r12	;
    67d2:	5c 06       	rlam	#2,	r12	;
    67d4:	3d 40 4a 52 	mov	#21066,	r13	;#0x524a
    67d8:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    67dc:	b0 12 84 69 	call	#27012		;#0x6984

000067e0 <.Loc.66.1>:
        _status = EVENT_COMMIT;
    67e0:	d2 43 56 52 	mov.b	#1,	&0x5256	;r3 As==01

000067e4 <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    67e4:	1d 42 54 52 	mov	&0x5254,r13	;0x5254

000067e8 <.Loc.68.1>:
    67e8:	6c 4d       	mov.b	@r13,	r12	;
    67ea:	5c 06       	rlam	#2,	r12	;
    67ec:	6d 4d       	mov.b	@r13,	r13	;
    67ee:	0c 5d       	add	r13,	r12	;
    67f0:	5c 06       	rlam	#2,	r12	;
    67f2:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    67f6:	b0 12 ba 69 	call	#27066		;#0x69ba

000067fa <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    67fa:	e2 43 56 52 	mov.b	#2,	&0x5256	;r3 As==10

000067fe <.L7>:
        if(_thread->state == THREAD_STOPPED){
    67fe:	1c 42 54 52 	mov	&0x5254,r12	;0x5254
    6802:	1c 4c 02 00 	mov	2(r12),	r12	;

00006806 <.Loc.72.1>:
    6806:	3c 92       	cmp	#8,	r12	;r2 As==11
    6808:	04 24       	jz	$+10     	;abs 0x6812

0000680a <.L9>:
        _status = EVENT_DONE;
    680a:	f2 40 03 00 	mov.b	#3,	&0x5256	;
    680e:	56 52

00006810 <.Loc.77.1>:
}
    6810:	30 41       	ret

00006812 <.L17>:
            __start_thread(_thread);
    6812:	1c 42 54 52 	mov	&0x5254,r12	;0x5254
    6816:	b0 12 46 5a 	call	#23110		;#0x5a46
    681a:	f7 3f       	jmp	$-16     	;abs 0x680a

0000681c <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    681c:	1d 42 54 52 	mov	&0x5254,r13	;0x5254

00006820 <.Loc.81.1>:
    6820:	6c 4d       	mov.b	@r13,	r12	;

00006822 <.LVL7>:
    6822:	5c 06       	rlam	#2,	r12	;
    6824:	6d 4d       	mov.b	@r13,	r13	;
    6826:	0c 5d       	add	r13,	r12	;
    6828:	5c 06       	rlam	#2,	r12	;
    682a:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    682e:	b0 12 58 69 	call	#26968		;#0x6958

00006832 <.Loc.82.1>:
}
    6832:	30 41       	ret

00006834 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6834:	82 4c 54 52 	mov	r12,	&0x5254	;

00006838 <.Loc.90.1>:
    _event = *event;
    6838:	0e 4d       	mov	r13,	r14	;
    683a:	b2 4e 4a 52 	mov	@r14+,	&0x524a	;
    683e:	b2 4e 4c 52 	mov	@r14+,	&0x524c	;
    6842:	92 4d 04 00 	mov	4(r13),	&0x524e	;
    6846:	4e 52
    6848:	92 4d 06 00 	mov	6(r13),	&0x5250	;
    684c:	50 52
    684e:	92 4e 04 00 	mov	4(r14),	&0x5252	;
    6852:	52 52

00006854 <.Loc.91.1>:
    _status = EVENT_INSERT;
    6854:	c2 43 56 52 	mov.b	#0,	&0x5256	;r3 As==00

00006858 <.LBB4>:
    switch(_status){
    6858:	5d 42 56 52 	mov.b	&0x5256,r13	;0x5256

0000685c <.LVL10>:
    685c:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    685e:	14 24       	jz	$+42     	;abs 0x6888
    6860:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    6862:	1f 24       	jz	$+64     	;abs 0x68a2
    6864:	0d 93       	cmp	#0,	r13	;r3 As==00
    6866:	01 24       	jz	$+4      	;abs 0x686a

00006868 <.LBE4>:
    __events_commit();
}
    6868:	30 41       	ret

0000686a <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    686a:	6d 4c       	mov.b	@r12,	r13	;
    686c:	5d 06       	rlam	#2,	r13	;
    686e:	6c 4c       	mov.b	@r12,	r12	;

00006870 <.LVL11>:
    6870:	0c 5d       	add	r13,	r12	;
    6872:	5c 06       	rlam	#2,	r12	;
    6874:	3d 40 4a 52 	mov	#21066,	r13	;#0x524a
    6878:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    687c:	b0 12 84 69 	call	#27012		;#0x6984

00006880 <.LVL12>:
        _status = EVENT_COMMIT;
    6880:	d2 43 56 52 	mov.b	#1,	&0x5256	;r3 As==01
    6884:	1c 42 54 52 	mov	&0x5254,r12	;0x5254

00006888 <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    6888:	6d 4c       	mov.b	@r12,	r13	;
    688a:	5d 06       	rlam	#2,	r13	;
    688c:	6c 4c       	mov.b	@r12,	r12	;
    688e:	0c 5d       	add	r13,	r12	;
    6890:	5c 06       	rlam	#2,	r12	;
    6892:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    6896:	b0 12 ba 69 	call	#27066		;#0x69ba

0000689a <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    689a:	e2 43 56 52 	mov.b	#2,	&0x5256	;r3 As==10
    689e:	1c 42 54 52 	mov	&0x5254,r12	;0x5254

000068a2 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    68a2:	1d 4c 02 00 	mov	2(r12),	r13	;

000068a6 <.Loc.72.1>:
    68a6:	3d 92       	cmp	#8,	r13	;r2 As==11
    68a8:	04 24       	jz	$+10     	;abs 0x68b2

000068aa <.L23>:
        _status = EVENT_DONE;
    68aa:	f2 40 03 00 	mov.b	#3,	&0x5256	;
    68ae:	56 52

000068b0 <.Loc.93.1>:
}
    68b0:	30 41       	ret

000068b2 <.L31>:
            __start_thread(_thread);
    68b2:	b0 12 46 5a 	call	#23110		;#0x5a46
    68b6:	f9 3f       	jmp	$-12     	;abs 0x68aa

000068b8 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    68b8:	6d 4c       	mov.b	@r12,	r13	;
    68ba:	5d 06       	rlam	#2,	r13	;
    68bc:	6c 4c       	mov.b	@r12,	r12	;

000068be <.LVL16>:
    68be:	0c 5d       	add	r13,	r12	;
    68c0:	5c 06       	rlam	#2,	r12	;
    68c2:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    68c6:	b0 12 42 69 	call	#26946		;#0x6942
    68ca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000068ce <.Loc.97.1>:
    68ce:	3c 53       	add	#-1,	r12	;r3 As==11

000068d0 <.Loc.101.1>:
        return 0;

    return 1;
}
    68d0:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    68d4:	30 41       	ret

000068d6 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    68d6:	0a 15       	pushm	#1,	r10	;16-bit words

000068d8 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    68d8:	1c 42 54 52 	mov	&0x5254,r12	;0x5254

000068dc <.LVL19>:
    68dc:	6a 4c       	mov.b	@r12,	r10	;

000068de <.Loc.107.1>:
    68de:	0c 4a       	mov	r10,	r12	;
    68e0:	5c 06       	rlam	#2,	r12	;
    68e2:	0c 5a       	add	r10,	r12	;
    68e4:	5c 06       	rlam	#2,	r12	;
    68e6:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    68ea:	b0 12 c2 69 	call	#27074		;#0x69c2

000068ee <.Loc.107.1>:
    68ee:	5a 02       	rlam	#1,	r10	;
    68f0:	8a 4c ca 4c 	mov	r12,	19658(r10); 0x4cca

000068f4 <.Loc.108.1>:
    return _popped[_thread->priority];
    68f4:	1c 42 54 52 	mov	&0x5254,r12	;0x5254
    68f8:	6c 4c       	mov.b	@r12,	r12	;
    68fa:	5c 02       	rlam	#1,	r12	;

000068fc <.Loc.109.1>:
}
    68fc:	1c 4c ca 4c 	mov	19658(r12),r12	;0x04cca
    6900:	0a 17       	popm	#1,	r10	;16-bit words

00006902 <.LCFI3>:
    6902:	30 41       	ret

00006904 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    6904:	1d 42 54 52 	mov	&0x5254,r13	;0x5254

00006908 <.Loc.113.1>:
    6908:	6c 4d       	mov.b	@r13,	r12	;

0000690a <.LVL22>:
    690a:	5c 06       	rlam	#2,	r12	;
    690c:	6d 4d       	mov.b	@r13,	r13	;
    690e:	0c 5d       	add	r13,	r12	;
    6910:	5c 06       	rlam	#2,	r12	;
    6912:	3c 50 4a 4d 	add	#19786,	r12	;#0x4d4a
    6916:	b0 12 f4 69 	call	#27124		;#0x69f4

0000691a <.Loc.114.1>:
    _popped[_thread->priority] = NULL;
    691a:	1c 42 54 52 	mov	&0x5254,r12	;0x5254
    691e:	6c 4c       	mov.b	@r12,	r12	;
    6920:	5c 02       	rlam	#1,	r12	;
    6922:	8c 43 ca 4c 	mov	#0,	19658(r12);r3 As==00, 0x4cca

00006926 <.Loc.115.1>:
}
    6926:	30 41       	ret

00006928 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    6928:
0000692c <L0^A>:
    692c:	10 00       	bra	@r0+		;

0000692e <.Loc.37.1>:
    queue->_tail ^= queue->_tail;
    692e:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    6932:	11 00

00006934 <.Loc.38.1>:
    queue->__head ^= queue->__head;
    6934:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    6938:	12 00

0000693a <.Loc.39.1>:
    queue->__tail ^= queue->__tail;
    693a:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    693e:	13 00

00006940 <.Loc.40.1>:
}
    6940:	30 41       	ret

00006942 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    6942:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6946:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    694a:	4c 4d       	mov.b	r13,	r12	;

0000694c <.LVL2>:
    694c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6950:	3c 53       	add	#-1,	r12	;r3 As==11

00006952 <.Loc.49.1>:
        return 1;
    }

    return 0;
}
    6952:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6956:	30 41       	ret

00006958 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6958:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    695c:	5d 53       	inc.b	r13		;
    695e:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006962 <.Loc.54.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    6962:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6966:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6968:	02 20       	jnz	$+6      	;abs 0x696e

0000696a <.Loc.55.1>:
        queue->__tail = 0;
    696a:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000696e <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    696e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6972:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6976:	4c 4d       	mov.b	r13,	r12	;

00006978 <.LVL4>:
    6978:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    697c:	3c 53       	add	#-1,	r12	;r3 As==11

0000697e <.Loc.64.1>:
        return 1;
    }

    return 0;
}
    697e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6982:	30 41       	ret

00006984 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6984:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    6988:	5e 53       	inc.b	r14		;
    698a:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

0000698e <.Loc.69.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    698e:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    6992:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    6994:	02 20       	jnz	$+6      	;abs 0x699a

00006996 <.Loc.70.1>:
        queue->__tail = 0;
    6996:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000699a <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    699a:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

0000699e <.Loc.74.1>:
    699e:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

000069a2 <.Loc.74.1>:
    69a2:	0f 9e       	cmp	r14,	r15	;
    69a4:	08 24       	jz	$+18     	;abs 0x69b6

000069a6 <.Loc.79.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    69a6:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

000069aa <.Loc.79.1>:
    69aa:	5e 02       	rlam	#1,	r14	;
    69ac:	0c 5e       	add	r14,	r12	;

000069ae <.LVL6>:
    69ae:	8c 4d 00 00 	mov	r13,	0(r12)	;

000069b2 <.Loc.81.1>:

    return 1;
    69b2:	5c 43       	mov.b	#1,	r12	;r3 As==01

000069b4 <.Loc.82.1>:
}
    69b4:	30 41       	ret

000069b6 <.L9>:
        return 0;
    69b6:	4c 43       	clr.b	r12		;

000069b8 <.LVL8>:
}
    69b8:	30 41       	ret

000069ba <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    69ba:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    69be:	11 00

000069c0 <.Loc.89.1>:
}
    69c0:	30 41       	ret

000069c2 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    69c2:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

000069c6 <.Loc.93.1>:
    69c6:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

000069ca <.Loc.93.1>:
    69ca:	0e 9d       	cmp	r13,	r14	;
    69cc:	11 24       	jz	$+36     	;abs 0x69f0

000069ce <.Loc.98.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    69ce:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    69d2:	5d 53       	inc.b	r13		;
    69d4:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

000069d8 <.Loc.99.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    69d8:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    69dc:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    69de:	02 20       	jnz	$+6      	;abs 0x69e4

000069e0 <.Loc.100.1>:
        queue->__head = 0;
    69e0:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

000069e4 <.L13>:

    return queue->_items[queue->_head];
    69e4:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

000069e8 <.Loc.102.1>:
    69e8:	5d 02       	rlam	#1,	r13	;
    69ea:	0c 5d       	add	r13,	r12	;

000069ec <.LVL11>:
    69ec:	2c 4c       	mov	@r12,	r12	;

000069ee <.Loc.103.1>:
}
    69ee:	30 41       	ret

000069f0 <.L14>:
        return NULL;
    69f0:	4c 43       	clr.b	r12		;

000069f2 <.LVL13>:
}
    69f2:	30 41       	ret

000069f4 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    69f4:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    69f8:	10 00

000069fa <.Loc.109.1>:
}
    69fa:	30 41       	ret

000069fc <__dma_word_copy>:
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    69fc:	0a 15       	pushm	#1,	r10	;16-bit words

000069fe <.LCFI0>:
    69fe:	21 82       	sub	#4,	r1	;r2 As==10

00006a00 <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    6a00:	0a 4c       	mov	r12,	r10	;
    6a02:	0b 43       	clr	r11		;
    6a04:	81 4a 00 00 	mov	r10,	0(r1)	;
    6a08:	81 4b 02 00 	mov	r11,	2(r1)	;

00006a0c <.Loc.38.1>:
    6a0c:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00006a10 <.LVL1>:
    6a10:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6a14:	00 00

00006a16 <.LBB3>:
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    6a16:	0a 4d       	mov	r13,	r10	;
    6a18:	0b 43       	clr	r11		;

00006a1a <.LVL2>:
    6a1a:	81 4a 00 00 	mov	r10,	0(r1)	;
    6a1e:	81 4b 02 00 	mov	r11,	2(r1)	;

00006a22 <.Loc.40.1>:
    6a22:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    6a26:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6a2a:	00 00

00006a2c <.LBE3>:
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    6a2c:	82 4e 1a 05 	mov	r14,	&0x051a	;

00006a30 <.Loc.43.1>:
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    6a30:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6a34:	10 05

00006a36 <.Loc.44.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6a36:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    6a3a:	10 05

00006a3c <.Loc.46.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    6a3c:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00006a40 <.Loc.47.1>:
}
    6a40:	21 52       	add	#4,	r1	;r2 As==10

00006a42 <.LCFI2>:
    6a42:	0a 17       	popm	#1,	r10	;16-bit words

00006a44 <.LCFI3>:
    6a44:	30 41       	ret

00006a46 <__mcu_init>:

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    6a46:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    6a4a:	5c 01

00006a4c <.Loc.40.1>:


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    6a4c:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6a50:	40 01

00006a52 <L0^A>:
  __delay_cycles(3);
    6a52:	00 3c       	jmp	$+2      	;abs 0x6a54
    6a54:	03 43       	nop

00006a56 <.Loc.44.1>:

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    6a56:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6a5a:	41 01

00006a5c <L0^A>:

  __delay_cycles(3);
    6a5c:	00 3c       	jmp	$+2      	;abs 0x6a5e
    6a5e:	03 43       	nop

00006a60 <.Loc.48.1>:

  __led_init(LED1);
    6a60:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6a64:	23 02

00006a66 <.Loc.48.1>:
    6a66:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    6a6a:	25 02

00006a6c <.Loc.48.1>:
    6a6c:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6a70:	23 02

00006a72 <.Loc.48.1>:
  __led_init(LED2);
    6a72:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006a76 <.Loc.49.1>:
    6a76:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

00006a7a <.Loc.49.1>:
    6a7a:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006a7e <.Loc.49.1>:

  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    6a7e:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00006a82 <.Loc.53.1>:

}
    6a82:	30 41       	ret

00006a84 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    6a84:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006a88 <.Loc.83.1>:
    6a88:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00006a8c <.Loc.83.1>:
    6a8c:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006a90 <.Loc.83.1>:
    6a90:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006a94 <.Loc.83.1>:
    6a94:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006a98 <.Loc.83.1>:
    6a98:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00006a9c <.Loc.83.1>:
    6a9c:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006aa0 <.Loc.83.1>:
    6aa0:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006aa4 <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    6aa4:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006aa8 <.Loc.88.1>:
}
    6aa8:	30 41       	ret

00006aaa <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    6aaa:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006aae <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    6aae:	0e 4c       	mov	r12,	r14	;
    6ab0:	5e 09       	rram	#3,	r14	;

00006ab2 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    6ab2:	7e f0 07 00 	and.b	#7,	r14	;

00006ab6 <.Loc.99.1>:
    6ab6:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    6aba:	08 00

00006abc <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    6abc:	0d 5e       	add	r14,	r13	;

00006abe <.LVL12>:
    6abe:	7c f0 07 00 	and.b	#7,	r12	;

00006ac2 <.LVL13>:
    6ac2:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    6ac6:	00 00

00006ac8 <.Loc.101.1>:
}
    6ac8:	30 41       	ret

00006aca <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    6aca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006ace <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    6ace:	0e 4c       	mov	r12,	r14	;
    6ad0:	5e 09       	rram	#3,	r14	;

00006ad2 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    6ad2:	7e f0 07 00 	and.b	#7,	r14	;
    6ad6:	0f 4d       	mov	r13,	r15	;
    6ad8:	0f 5e       	add	r14,	r15	;

00006ada <.Loc.112.1>:
    6ada:	7c f0 07 00 	and.b	#7,	r12	;

00006ade <.LVL16>:
    6ade:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    6ae2:	00 00

00006ae4 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    6ae4:	6c 4f       	mov.b	@r15,	r12	;

00006ae6 <.Loc.114.1>:
    6ae6:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ae8:	03 20       	jnz	$+8      	;abs 0x6af0

00006aea <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    6aea:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    6aee:	08 00

00006af0 <.L4>:
    }
}
    6af0:	30 41       	ret

00006af2 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    6af2:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00006af6 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    6af6:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00006afa <.LVL19>:
    6afa:	0c 5d       	add	r13,	r12	;

00006afc <.LVL20>:
    6afc:	6e 4c       	mov.b	@r12,	r14	;

00006afe <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    6afe:	0c 4d       	mov	r13,	r12	;
    6b00:	5c 0a       	rlam	#3,	r12	;

00006b02 <.Loc.128.1>:
}
    6b02:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    6b06:	30 41       	ret

00006b08 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    6b08:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00006b0c <.Loc.157.1>:
    TA2CTL = 0;
    6b0c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006b10 <.Loc.158.1>:
}
    6b10:	30 41       	ret

00006b12 <timerA2_init>:
    6b12:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    6b16:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    6b1a:	30 41       	ret

00006b1c <set_timer_wkup>:
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    6b1c:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00006b20 <.Loc.179.1>:
    TA0CCR0 = ticks;
    6b20:	82 4c 52 03 	mov	r12,	&0x0352	;

00006b24 <.Loc.180.1>:
    TA0CCTL0 = CCIE;
    6b24:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    6b28:	42 03

00006b2a <.Loc.181.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6b2a:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    6b2e:	40 03

00006b30 <.Loc.182.1>:
}
    6b30:	30 41       	ret

00006b32 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    6b32:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006b36 <.Loc.186.1>:
    TA2CCR0 = ticks;
    6b36:	82 4c 12 04 	mov	r12,	&0x0412	;

00006b3a <.Loc.187.1>:
    TA2CCTL0 = CCIE;
    6b3a:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    6b3e:	02 04

00006b40 <.Loc.188.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    6b40:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    6b44:	00 04

00006b46 <.Loc.190.1>:

}
    6b46:	30 41       	ret

00006b48 <stop_timer_xpr>:
    6b48:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    6b4c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    6b50:	30 41       	ret

00006b52 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    6b52:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00006b56 <.Loc.202.1>:
    TA1CCR0 = ticks;
    6b56:	82 4c 92 03 	mov	r12,	&0x0392	;

00006b5a <.Loc.203.1>:
    TA1CCTL0 = CCIE;
    6b5a:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    6b5e:	82 03

00006b60 <.Loc.204.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6b60:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    6b64:	80 03

00006b66 <.Loc.205.1>:
}
    6b66:	30 41       	ret

00006b68 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    6b68:	30 41       	ret

00006b6a <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    6b6a:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    6b6e:	61 01

00006b70 <.Loc.253.1>:
  CSCTL2 = SELA__VLOCLK;
    6b70:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    6b74:	64 01

00006b76 <.Loc.254.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    6b76:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00006b7a <.Loc.255.1>:
  CSCTL0_H = 0;
    6b7a:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00006b7e <.Loc.257.1>:

}
    6b7e:	30 41       	ret

00006b80 <__get_rtc_time>:
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    6b80:	4c 43       	clr.b	r12		;
    6b82:	4d 43       	clr.b	r13		;
    6b84:	30 41       	ret

00006b86 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    6b86:	82 43 58 52 	mov	#0,	&0x5258	;r3 As==00
    6b8a:	82 43 5a 52 	mov	#0,	&0x525a	;r3 As==00

00006b8e <.Loc.337.1>:

    //stop TA1 timer
    TA3CTL = 0;
    6b8e:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006b92 <.Loc.339.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    6b92:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    6b96:	40 04

00006b98 <.Loc.341.1>:

    __bis_SR_register(GIE);
    6b98:	03 43       	nop
    6b9a:	32 d2       	eint
    6b9c:	03 43       	nop

00006b9e <.Loc.342.1>:
}
    6b9e:	30 41       	ret

00006ba0 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    6ba0:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006ba4 <.Loc.350.1>:
    TA3CCTL0 = 0;
    6ba4:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006ba8 <.Loc.351.1>:
}
    6ba8:	30 41       	ret

00006baa <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    6baa:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6bae:	40 04

00006bb0 <.Loc.363.1>:

   tmp = TA3R;
    6bb0:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00006bb4 <.Loc.365.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    6bb4:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6bb8:	40 04

00006bba <.Loc.369.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    6bba:	0d 43       	clr	r13		;

00006bbc <.LVL4>:
    6bbc:	0e 4c       	mov	r12,	r14	;
    6bbe:	0f 4d       	mov	r13,	r15	;
    6bc0:	0e 5e       	rla	r14		;
    6bc2:	0f 6f       	rlc	r15		;
    6bc4:	0e 5e       	rla	r14		;
    6bc6:	0f 6f       	rlc	r15		;
    6bc8:	0c 5e       	add	r14,	r12	;

00006bca <.LVL5>:
    6bca:	0d 6f       	addc	r15,	r13	;
    6bcc:	0c 5c       	rla	r12		;
    6bce:	0d 6d       	rlc	r13		;

00006bd0 <.Loc.370.1>:
}
    6bd0:	1c 52 58 52 	add	&0x5258,r12	;0x5258
    6bd4:	1d 62 5a 52 	addc	&0x525a,r13	;0x525a
    6bd8:	30 41       	ret

00006bda <isr_TIMER3_A1_VECTOR>:
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    6bda:	b2 50 aa 00 	add	#170,	&0x5258	;#0x00aa
    6bde:	58 52
    6be0:	b2 60 0a 00 	addc	#10,	&0x525a	;#0x000a
    6be4:	5a 52

00006be6 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    6be6:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00006bea <.Loc.381.1>:
}
    6bea:	00 13       	reti

00006bec <_pers_timer_init>:

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    6bec:	3c 40 5c 52 	mov	#21084,	r12	;#0x525c
    6bf0:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00006bf4 <.Loc.34.1>:
    6bf4:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00006bf8 <.Loc.34.1>:
    6bf8:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00006bfc <.Loc.34.1>:
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    6bfc:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00006c00 <.Loc.38.1>:
    6c00:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00006c04 <.Loc.38.1>:
    6c04:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00006c08 <.Loc.38.1>:
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    6c08:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00006c0c <.Loc.42.1>:
	}
}
    6c0c:	30 41       	ret

00006c0e <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    6c0e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006c12 <.Loc.50.1>:
	//update the persistent timer dirty buffer
	switch(interface)
    6c12:	1d 93       	cmp	#1,	r13	;r3 As==01
    6c14:	1b 24       	jz	$+56     	;abs 0x6c4c
    6c16:	2d 93       	cmp	#2,	r13	;r3 As==10
    6c18:	0e 24       	jz	$+30     	;abs 0x6c36
    6c1a:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c1c:	01 24       	jz	$+4      	;abs 0x6c20

00006c1e <.Loc.69.1>:
		default:
			break;
	}


}
    6c1e:	30 41       	ret

00006c20 <.L7>:
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    6c20:	0d 4c       	mov	r12,	r13	;

00006c22 <.LVL9>:
    6c22:	5d 06       	rlam	#2,	r13	;
    6c24:	0c 5d       	add	r13,	r12	;

00006c26 <.LVL10>:
    6c26:	5c 02       	rlam	#1,	r12	;
    6c28:	8c 4e c4 52 	mov	r14,	21188(r12); 0x52c4
    6c2c:	8c 4f c6 52 	mov	r15,	21190(r12); 0x52c6

00006c30 <.Loc.54.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6c30:	9c 43 c8 52 	mov	#1,	21192(r12);r3 As==01, 0x52c8

00006c34 <.Loc.55.1>:
}
    6c34:	30 41       	ret

00006c36 <.L5>:
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    6c36:	0d 4c       	mov	r12,	r13	;

00006c38 <.LVL12>:
    6c38:	5d 06       	rlam	#2,	r13	;
    6c3a:	0c 5d       	add	r13,	r12	;
    6c3c:	5c 02       	rlam	#1,	r12	;
    6c3e:	8c 4e e2 52 	mov	r14,	21218(r12); 0x52e2
    6c42:	8c 4f e4 52 	mov	r15,	21220(r12); 0x52e4

00006c46 <.Loc.58.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6c46:	9c 43 e6 52 	mov	#1,	21222(r12);r3 As==01, 0x52e6

00006c4a <.Loc.59.1>:
}
    6c4a:	30 41       	ret

00006c4c <.L4>:
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    6c4c:	0d 4c       	mov	r12,	r13	;

00006c4e <.LVL14>:
    6c4e:	5d 06       	rlam	#2,	r13	;
    6c50:	0c 5d       	add	r13,	r12	;
    6c52:	5c 02       	rlam	#1,	r12	;
    6c54:	8c 4e 00 53 	mov	r14,	21248(r12); 0x5300
    6c58:	8c 4f 02 53 	mov	r15,	21250(r12); 0x5302

00006c5c <.Loc.62.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6c5c:	9c 43 04 53 	mov	#1,	21252(r12);r3 As==01, 0x5304

00006c60 <.Loc.63.1>:
}
    6c60:	30 41       	ret

00006c62 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    6c62:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6c66:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006c6a <.Loc.73.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    6c6a:	1d 93       	cmp	#1,	r13	;r3 As==01
    6c6c:	17 24       	jz	$+48     	;abs 0x6c9c
    6c6e:	2d 93       	cmp	#2,	r13	;r3 As==10
    6c70:	0c 24       	jz	$+26     	;abs 0x6c8a
    6c72:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c74:	01 24       	jz	$+4      	;abs 0x6c78

00006c76 <.Loc.91.1>:
			break;
		default:
			break;
	}

}
    6c76:	30 41       	ret

00006c78 <.L12>:
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    6c78:	0d 4c       	mov	r12,	r13	;

00006c7a <.LVL16>:
    6c7a:	5d 06       	rlam	#2,	r13	;
    6c7c:	0c 5d       	add	r13,	r12	;

00006c7e <.LVL17>:
    6c7e:	5c 02       	rlam	#1,	r12	;
    6c80:	cc 4e c2 52 	mov.b	r14,	21186(r12); 0x52c2

00006c84 <.Loc.77.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6c84:	9c 43 c8 52 	mov	#1,	21192(r12);r3 As==01, 0x52c8

00006c88 <.Loc.78.1>:
}
    6c88:	30 41       	ret

00006c8a <.L10>:
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    6c8a:	0d 4c       	mov	r12,	r13	;

00006c8c <.LVL19>:
    6c8c:	5d 06       	rlam	#2,	r13	;
    6c8e:	0c 5d       	add	r13,	r12	;
    6c90:	5c 02       	rlam	#1,	r12	;
    6c92:	cc 4e e0 52 	mov.b	r14,	21216(r12); 0x52e0

00006c96 <.Loc.81.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6c96:	9c 43 e6 52 	mov	#1,	21222(r12);r3 As==01, 0x52e6

00006c9a <.Loc.82.1>:
}
    6c9a:	30 41       	ret

00006c9c <.L9>:
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    6c9c:	0d 4c       	mov	r12,	r13	;

00006c9e <.LVL21>:
    6c9e:	5d 06       	rlam	#2,	r13	;
    6ca0:	0c 5d       	add	r13,	r12	;
    6ca2:	5c 02       	rlam	#1,	r12	;
    6ca4:	cc 4e fe 52 	mov.b	r14,	21246(r12); 0x52fe

00006ca8 <.Loc.85.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6ca8:	9c 43 04 53 	mov	#1,	21252(r12);r3 As==01, 0x5304

00006cac <.Loc.86.1>:
}
    6cac:	30 41       	ret

00006cae <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    6cae:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006cb2 <.Loc.95.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    6cb2:	1d 93       	cmp	#1,	r13	;r3 As==01
    6cb4:	17 24       	jz	$+48     	;abs 0x6ce4
    6cb6:	2d 93       	cmp	#2,	r13	;r3 As==10
    6cb8:	0c 24       	jz	$+26     	;abs 0x6cd2
    6cba:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cbc:	01 24       	jz	$+4      	;abs 0x6cc0

00006cbe <.Loc.113.1>:
			break;
		default:
			break;

	}
}
    6cbe:	30 41       	ret

00006cc0 <.L17>:
			pers_timer_vars[1].wkup_timing[idx].status = status;
    6cc0:	0d 4c       	mov	r12,	r13	;

00006cc2 <.LVL23>:
    6cc2:	5d 06       	rlam	#2,	r13	;
    6cc4:	0c 5d       	add	r13,	r12	;

00006cc6 <.LVL24>:
    6cc6:	5c 02       	rlam	#1,	r12	;
    6cc8:	8c 4e c0 52 	mov	r14,	21184(r12); 0x52c0

00006ccc <.Loc.99.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6ccc:	9c 43 c8 52 	mov	#1,	21192(r12);r3 As==01, 0x52c8

00006cd0 <.Loc.100.1>:
}
    6cd0:	30 41       	ret

00006cd2 <.L15>:
			pers_timer_vars[1].xpr_timing[idx].status = status;
    6cd2:	0d 4c       	mov	r12,	r13	;

00006cd4 <.LVL26>:
    6cd4:	5d 06       	rlam	#2,	r13	;
    6cd6:	0c 5d       	add	r13,	r12	;
    6cd8:	5c 02       	rlam	#1,	r12	;
    6cda:	8c 4e de 52 	mov	r14,	21214(r12); 0x52de

00006cde <.Loc.103.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6cde:	9c 43 e6 52 	mov	#1,	21222(r12);r3 As==01, 0x52e6

00006ce2 <.Loc.104.1>:
}
    6ce2:	30 41       	ret

00006ce4 <.L14>:
			pers_timer_vars[1].pdc_timing[idx].status = status;
    6ce4:	0d 4c       	mov	r12,	r13	;

00006ce6 <.LVL28>:
    6ce6:	5d 06       	rlam	#2,	r13	;
    6ce8:	0c 5d       	add	r13,	r12	;
    6cea:	5c 02       	rlam	#1,	r12	;
    6cec:	8c 4e fc 52 	mov	r14,	21244(r12); 0x52fc

00006cf0 <.Loc.107.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6cf0:	9c 43 04 53 	mov	#1,	21252(r12);r3 As==01, 0x5304

00006cf4 <.Loc.108.1>:
}
    6cf4:	30 41       	ret

00006cf6 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    6cf6:	0e 4c       	mov	r12,	r14	;
    6cf8:	5e 0a       	rlam	#3,	r14	;
    6cfa:	ce 4d 08 53 	mov.b	r13,	21256(r14); 0x5308

00006cfe <.Loc.118.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6cfe:	9e 43 0c 53 	mov	#1,	21260(r14);r3 As==01, 0x530c

00006d02 <.Loc.119.1>:
}
    6d02:	30 41       	ret

00006d04 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    6d04:	0e 4c       	mov	r12,	r14	;
    6d06:	5e 0a       	rlam	#3,	r14	;
    6d08:	8e 4d 0a 53 	mov	r13,	21258(r14); 0x530a

00006d0c <.Loc.124.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6d0c:	9e 43 0c 53 	mov	#1,	21260(r14);r3 As==01, 0x530c

00006d10 <.Loc.125.1>:
}
    6d10:	30 41       	ret

00006d12 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    6d12:	1c 93       	cmp	#1,	r12	;r3 As==01
    6d14:	0b 24       	jz	$+24     	;abs 0x6d2c
    6d16:	2c 93       	cmp	#2,	r12	;r3 As==10
    6d18:	06 24       	jz	$+14     	;abs 0x6d26
    6d1a:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d1c:	01 24       	jz	$+4      	;abs 0x6d20

00006d1e <.Loc.145.1>:
		default:
			break;

	}

}
    6d1e:	30 41       	ret

00006d20 <.L24>:
			wkup_tstatus = TIMER_COMMIT;
    6d20:	92 43 24 53 	mov	#1,	&0x5324	;r3 As==01

00006d24 <.Loc.133.1>:
}
    6d24:	30 41       	ret

00006d26 <.L22>:
			xpr_tstatus = TIMER_COMMIT;
    6d26:	92 43 26 53 	mov	#1,	&0x5326	;r3 As==01

00006d2a <.Loc.136.1>:
}
    6d2a:	30 41       	ret

00006d2c <.L21>:
			pdc_tstatus = TIMER_COMMIT;
    6d2c:	92 43 28 53 	mov	#1,	&0x5328	;r3 As==01

00006d30 <.Loc.139.1>:
}
    6d30:	30 41       	ret

00006d32 <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

	uint8_t i;

	switch (interface){
    6d32:	3d 40 5c 52 	mov	#21084,	r13	;#0x525c
    6d36:	1c 93       	cmp	#1,	r12	;r3 As==01
    6d38:	18 24       	jz	$+50     	;abs 0x6d6a
    6d3a:	2c 93       	cmp	#2,	r12	;r3 As==10
    6d3c:	40 24       	jz	$+130    	;abs 0x6dbe
    6d3e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6d40:	26 24       	jz	$+78     	;abs 0x6d8e

00006d42 <.L28>:
    6d42:	0e 4c       	mov	r12,	r14	;
    6d44:	5e 0a       	rlam	#3,	r14	;
    6d46:	9e 93 0c 53 	cmp	#1,	21260(r14);r3 As==01, 0x530c
    6d4a:	01 24       	jz	$+4      	;abs 0x6d4e

00006d4c <.Loc.201.1>:
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty =
				NOT_DIRTY;
		}
	}
}
    6d4c:	30 41       	ret

00006d4e <.L40>:
			pers_timer_vars[0].next_info[interface] =
    6d4e:	0c 4e       	mov	r14,	r12	;

00006d50 <.LVL33>:
    6d50:	0c 5d       	add	r13,	r12	;
    6d52:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    6d56:	46 00
    6d58:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    6d5c:	48 00
    6d5e:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    6d62:	4a 00

00006d64 <.Loc.197.1>:
			pers_timer_vars[0].next_info[interface].__dirty =
    6d64:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00006d68 <.Loc.191.1>:
}
    6d68:	30 41       	ret

00006d6a <.L26>:
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    6d6a:	92 93 04 53 	cmp	#1,	&0x5304	;r3 As==01
    6d6e:	e9 23       	jnz	$-44     	;abs 0x6d42

00006d70 <.Loc.182.1>:
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    6d70:	92 42 fc 52 	mov	&0x52fc,&0x5298	;0x52fc
    6d74:	98 52
    6d76:	92 42 fe 52 	mov	&0x52fe,&0x529a	;0x52fe
    6d7a:	9a 52
    6d7c:	92 42 00 53 	mov	&0x5300,&0x529c	;0x5300
    6d80:	9c 52
    6d82:	92 42 02 53 	mov	&0x5302,&0x529e	;0x5302
    6d86:	9e 52

00006d88 <.Loc.183.1>:
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    6d88:	82 43 a0 52 	mov	#0,	&0x52a0	;r3 As==00

00006d8c <.Loc.177.1>:
		for (i = 0; i < MAX_PDC_THREADS; i++)
    6d8c:	da 3f       	jmp	$-74     	;abs 0x6d42

00006d8e <.L39>:
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    6d8e:	92 93 c8 52 	cmp	#1,	&0x52c8	;r3 As==01
    6d92:	5a 24       	jz	$+182    	;abs 0x6e48

00006d94 <.L29>:
    6d94:	92 93 d2 52 	cmp	#1,	&0x52d2	;r3 As==01
    6d98:	48 24       	jz	$+146    	;abs 0x6e2a

00006d9a <.L30>:
    6d9a:	92 93 dc 52 	cmp	#1,	&0x52dc	;r3 As==01
    6d9e:	d1 23       	jnz	$-92     	;abs 0x6d42

00006da0 <.Loc.160.1>:
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6da0:	92 42 d4 52 	mov	&0x52d4,&0x5270	;0x52d4
    6da4:	70 52
    6da6:	92 42 d6 52 	mov	&0x52d6,&0x5272	;0x52d6
    6daa:	72 52
    6dac:	92 42 d8 52 	mov	&0x52d8,&0x5274	;0x52d8
    6db0:	74 52
    6db2:	92 42 da 52 	mov	&0x52da,&0x5276	;0x52da
    6db6:	76 52

00006db8 <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6db8:	82 43 78 52 	mov	#0,	&0x5278	;r3 As==00

00006dbc <.Loc.155.1>:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    6dbc:	c2 3f       	jmp	$-122    	;abs 0x6d42

00006dbe <.L27>:
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    6dbe:	92 93 e6 52 	cmp	#1,	&0x52e6	;r3 As==01
    6dc2:	24 24       	jz	$+74     	;abs 0x6e0c

00006dc4 <.L32>:
    6dc4:	92 93 f0 52 	cmp	#1,	&0x52f0	;r3 As==01
    6dc8:	12 24       	jz	$+38     	;abs 0x6dee

00006dca <.L33>:
    6dca:	92 93 fa 52 	cmp	#1,	&0x52fa	;r3 As==01
    6dce:	b9 23       	jnz	$-140    	;abs 0x6d42

00006dd0 <.Loc.171.1>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6dd0:	92 42 f2 52 	mov	&0x52f2,&0x528e	;0x52f2
    6dd4:	8e 52
    6dd6:	92 42 f4 52 	mov	&0x52f4,&0x5290	;0x52f4
    6dda:	90 52
    6ddc:	92 42 f6 52 	mov	&0x52f6,&0x5292	;0x52f6
    6de0:	92 52
    6de2:	92 42 f8 52 	mov	&0x52f8,&0x5294	;0x52f8
    6de6:	94 52

00006de8 <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6de8:	82 43 96 52 	mov	#0,	&0x5296	;r3 As==00

00006dec <.Loc.166.1>:
		for (i = 0; i < MAX_XPR_THREADS; i++)
    6dec:	aa 3f       	jmp	$-170    	;abs 0x6d42

00006dee <.L44>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6dee:	92 42 e8 52 	mov	&0x52e8,&0x5284	;0x52e8
    6df2:	84 52
    6df4:	92 42 ea 52 	mov	&0x52ea,&0x5286	;0x52ea
    6df8:	86 52
    6dfa:	92 42 ec 52 	mov	&0x52ec,&0x5288	;0x52ec
    6dfe:	88 52
    6e00:	92 42 ee 52 	mov	&0x52ee,&0x528a	;0x52ee
    6e04:	8a 52

00006e06 <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6e06:	82 43 8c 52 	mov	#0,	&0x528c	;r3 As==00
    6e0a:	df 3f       	jmp	$-64     	;abs 0x6dca

00006e0c <.L43>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6e0c:	92 42 de 52 	mov	&0x52de,&0x527a	;0x52de
    6e10:	7a 52
    6e12:	92 42 e0 52 	mov	&0x52e0,&0x527c	;0x52e0
    6e16:	7c 52
    6e18:	92 42 e2 52 	mov	&0x52e2,&0x527e	;0x52e2
    6e1c:	7e 52
    6e1e:	92 42 e4 52 	mov	&0x52e4,&0x5280	;0x52e4
    6e22:	80 52

00006e24 <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6e24:	82 43 82 52 	mov	#0,	&0x5282	;r3 As==00
    6e28:	cd 3f       	jmp	$-100    	;abs 0x6dc4

00006e2a <.L42>:
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6e2a:	92 42 ca 52 	mov	&0x52ca,&0x5266	;0x52ca
    6e2e:	66 52
    6e30:	92 42 cc 52 	mov	&0x52cc,&0x5268	;0x52cc
    6e34:	68 52
    6e36:	92 42 ce 52 	mov	&0x52ce,&0x526a	;0x52ce
    6e3a:	6a 52
    6e3c:	92 42 d0 52 	mov	&0x52d0,&0x526c	;0x52d0
    6e40:	6c 52

00006e42 <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6e42:	82 43 6e 52 	mov	#0,	&0x526e	;r3 As==00
    6e46:	a9 3f       	jmp	$-172    	;abs 0x6d9a

00006e48 <.L41>:
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6e48:	92 42 c0 52 	mov	&0x52c0,&0x525c	;0x52c0
    6e4c:	5c 52
    6e4e:	92 42 c2 52 	mov	&0x52c2,&0x525e	;0x52c2
    6e52:	5e 52
    6e54:	92 42 c4 52 	mov	&0x52c4,&0x5260	;0x52c4
    6e58:	60 52
    6e5a:	92 42 c6 52 	mov	&0x52c6,&0x5262	;0x52c6
    6e5e:	62 52

00006e60 <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6e60:	82 43 64 52 	mov	#0,	&0x5264	;r3 As==00
    6e64:	97 3f       	jmp	$-208    	;abs 0x6d94

00006e66 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    6e66:	1c 93       	cmp	#1,	r12	;r3 As==01
    6e68:	17 24       	jz	$+48     	;abs 0x6e98
    6e6a:	2c 93       	cmp	#2,	r12	;r3 As==10
    6e6c:	0c 24       	jz	$+26     	;abs 0x6e86
    6e6e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e70:	01 24       	jz	$+4      	;abs 0x6e74

00006e72 <.L45>:
			break;
		default:
			break;

	}
}
    6e72:	30 41       	ret

00006e74 <.L49>:
		    if (wkup_tstatus == TIMER_COMMIT)
    6e74:	1d 42 24 53 	mov	&0x5324,r13	;0x5324

00006e78 <.Loc.207.1>:
    6e78:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e7a:	fb 23       	jnz	$-8      	;abs 0x6e72

00006e7c <.Loc.209.1>:
		    	_commit_timer_buffers(interface);
    6e7c:	b0 12 32 6d 	call	#27954		;#0x6d32

00006e80 <.LVL49>:
		        wkup_tstatus = TIMER_DONE;
    6e80:	a2 43 24 53 	mov	#2,	&0x5324	;r3 As==10

00006e84 <.Loc.230.1>:
}
    6e84:	30 41       	ret

00006e86 <.L47>:
			if (xpr_tstatus == TIMER_COMMIT)
    6e86:	1d 42 26 53 	mov	&0x5326,r13	;0x5326

00006e8a <.Loc.214.1>:
    6e8a:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e8c:	f2 23       	jnz	$-26     	;abs 0x6e72

00006e8e <.Loc.216.1>:
		    	_commit_timer_buffers(interface);
    6e8e:	b0 12 32 6d 	call	#27954		;#0x6d32

00006e92 <.LVL51>:
		        xpr_tstatus = TIMER_DONE;
    6e92:	a2 43 26 53 	mov	#2,	&0x5326	;r3 As==10

00006e96 <.Loc.230.1>:
}
    6e96:	30 41       	ret

00006e98 <.L46>:
			if (pdc_tstatus == TIMER_COMMIT)
    6e98:	1d 42 28 53 	mov	&0x5328,r13	;0x5328

00006e9c <.Loc.220.1>:
    6e9c:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e9e:	e9 23       	jnz	$-44     	;abs 0x6e72

00006ea0 <.Loc.222.1>:
		    	_commit_timer_buffers(interface);
    6ea0:	b0 12 32 6d 	call	#27954		;#0x6d32

00006ea4 <.LVL53>:
		        pdc_tstatus = TIMER_DONE;
    6ea4:	a2 43 28 53 	mov	#2,	&0x5328	;r3 As==10

00006ea8 <.Loc.230.1>:
}
    6ea8:	30 41       	ret

00006eaa <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    6eaa:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00006eae <.Loc.233.1>:
	switch (interface)
    6eae:	1e 93       	cmp	#1,	r14	;r3 As==01
    6eb0:	17 24       	jz	$+48     	;abs 0x6ee0
    6eb2:	2e 93       	cmp	#2,	r14	;r3 As==10
    6eb4:	2a 24       	jz	$+86     	;abs 0x6f0a

00006eb6 <.Loc.242.1>:
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    6eb6:	0e 4d       	mov	r13,	r14	;

00006eb8 <.LVL55>:
    6eb8:	5e 06       	rlam	#2,	r14	;
    6eba:	0d 5e       	add	r14,	r13	;

00006ebc <.LVL56>:
    6ebc:	5d 02       	rlam	#1,	r13	;
    6ebe:	3d 50 5c 52 	add	#21084,	r13	;#0x525c
    6ec2:	0e 4d       	mov	r13,	r14	;
    6ec4:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6ec8:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6ecc:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6ed0:	04 00
    6ed2:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6ed6:	06 00
    6ed8:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6edc:	08 00

00006ede <.Loc.245.1>:
	}

}
    6ede:	30 41       	ret

00006ee0 <.L51>:
			return pers_timer_vars[0].pdc_timing[idx];
    6ee0:	0e 4d       	mov	r13,	r14	;

00006ee2 <.LVL58>:
    6ee2:	5e 06       	rlam	#2,	r14	;
    6ee4:	0d 5e       	add	r14,	r13	;
    6ee6:	5d 02       	rlam	#1,	r13	;
    6ee8:	3d 50 98 52 	add	#21144,	r13	;#0x5298

00006eec <.Loc.242.1>:
		    return pers_timer_vars[0].wkup_timing[idx];
    6eec:	0e 4d       	mov	r13,	r14	;
    6eee:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6ef2:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6ef6:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6efa:	04 00
    6efc:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6f00:	06 00
    6f02:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6f06:	08 00

00006f08 <.Loc.245.1>:
}
    6f08:	30 41       	ret

00006f0a <.L55>:
			return pers_timer_vars[0].xpr_timing[idx];
    6f0a:	0e 4d       	mov	r13,	r14	;

00006f0c <.LVL60>:
    6f0c:	5e 06       	rlam	#2,	r14	;
    6f0e:	0d 5e       	add	r14,	r13	;
    6f10:	5d 02       	rlam	#1,	r13	;
    6f12:	3d 50 7a 52 	add	#21114,	r13	;#0x527a

00006f16 <.Loc.242.1>:
		    return pers_timer_vars[0].wkup_timing[idx];
    6f16:	0e 4d       	mov	r13,	r14	;
    6f18:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6f1c:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6f20:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6f24:	04 00
    6f26:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6f2a:	06 00
    6f2c:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6f30:	08 00

00006f32 <.Loc.245.1>:
}
    6f32:	30 41       	ret

00006f34 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    6f34:	4e 4c       	mov.b	r12,	r14	;

00006f36 <.Loc.249.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    6f36:	1d 93       	cmp	#1,	r13	;r3 As==01
    6f38:	14 24       	jz	$+42     	;abs 0x6f62
    6f3a:	2d 93       	cmp	#2,	r13	;r3 As==10
    6f3c:	0b 24       	jz	$+24     	;abs 0x6f54
    6f3e:	4c 43       	clr.b	r12		;

00006f40 <.LVL62>:
    6f40:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f42:	01 24       	jz	$+4      	;abs 0x6f46

00006f44 <.Loc.262.1>:
		default:
			return 0;

	}

}
    6f44:	30 41       	ret

00006f46 <.L61>:
			return pers_timer_vars[0].wkup_timing[idx].data ;
    6f46:	0c 4e       	mov	r14,	r12	;
    6f48:	5c 06       	rlam	#2,	r12	;
    6f4a:	0c 5e       	add	r14,	r12	;
    6f4c:	5c 02       	rlam	#1,	r12	;
    6f4e:	1c 4c 60 52 	mov	21088(r12),r12	;0x05260

00006f52 <.Loc.262.1>:
}
    6f52:	30 41       	ret

00006f54 <.L58>:
			return pers_timer_vars[0].xpr_timing[idx].data ;
    6f54:	0c 4e       	mov	r14,	r12	;

00006f56 <.LVL64>:
    6f56:	5c 06       	rlam	#2,	r12	;
    6f58:	0c 5e       	add	r14,	r12	;
    6f5a:	5c 02       	rlam	#1,	r12	;
    6f5c:	1c 4c 7e 52 	mov	21118(r12),r12	;0x0527e

00006f60 <.Loc.262.1>:
}
    6f60:	30 41       	ret

00006f62 <.L57>:
			return pers_timer_vars[0].pdc_timing[idx].data ;
    6f62:	0c 4e       	mov	r14,	r12	;

00006f64 <.LVL66>:
    6f64:	5c 06       	rlam	#2,	r12	;
    6f66:	0c 5e       	add	r14,	r12	;
    6f68:	5c 02       	rlam	#1,	r12	;
    6f6a:	1c 4c 9c 52 	mov	21148(r12),r12	;0x0529c

00006f6e <.Loc.262.1>:
}
    6f6e:	30 41       	ret

00006f70 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    6f70:	4e 4c       	mov.b	r12,	r14	;

00006f72 <.Loc.266.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    6f72:	1d 93       	cmp	#1,	r13	;r3 As==01
    6f74:	14 24       	jz	$+42     	;abs 0x6f9e
    6f76:	2d 93       	cmp	#2,	r13	;r3 As==10
    6f78:	0b 24       	jz	$+24     	;abs 0x6f90
    6f7a:	4c 43       	clr.b	r12		;

00006f7c <.LVL68>:
    6f7c:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f7e:	01 24       	jz	$+4      	;abs 0x6f82

00006f80 <.Loc.279.1>:
		default:
		    return	0;
	}


}
    6f80:	30 41       	ret

00006f82 <.L67>:
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    6f82:	0c 4e       	mov	r14,	r12	;
    6f84:	5c 06       	rlam	#2,	r12	;
    6f86:	0c 5e       	add	r14,	r12	;
    6f88:	5c 02       	rlam	#1,	r12	;
    6f8a:	5c 4c 5e 52 	mov.b	21086(r12),r12	;0x0525e

00006f8e <.Loc.279.1>:
}
    6f8e:	30 41       	ret

00006f90 <.L64>:
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    6f90:	0c 4e       	mov	r14,	r12	;

00006f92 <.LVL70>:
    6f92:	5c 06       	rlam	#2,	r12	;
    6f94:	0c 5e       	add	r14,	r12	;
    6f96:	5c 02       	rlam	#1,	r12	;
    6f98:	5c 4c 7c 52 	mov.b	21116(r12),r12	;0x0527c

00006f9c <.Loc.279.1>:
}
    6f9c:	30 41       	ret

00006f9e <.L63>:
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    6f9e:	0c 4e       	mov	r14,	r12	;

00006fa0 <.LVL72>:
    6fa0:	5c 06       	rlam	#2,	r12	;
    6fa2:	0c 5e       	add	r14,	r12	;
    6fa4:	5c 02       	rlam	#1,	r12	;
    6fa6:	5c 4c 9a 52 	mov.b	21146(r12),r12	;0x0529a

00006faa <.Loc.279.1>:
}
    6faa:	30 41       	ret

00006fac <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    6fac:	4e 4c       	mov.b	r12,	r14	;

00006fae <.Loc.283.1>:
	//get the persistent timer from persistent buffer
switch (interface)
    6fae:	1d 93       	cmp	#1,	r13	;r3 As==01
    6fb0:	14 24       	jz	$+42     	;abs 0x6fda
    6fb2:	2d 93       	cmp	#2,	r13	;r3 As==10
    6fb4:	0b 24       	jz	$+24     	;abs 0x6fcc
    6fb6:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006fb8 <.LVL74>:
    6fb8:	0d 93       	cmp	#0,	r13	;r3 As==00
    6fba:	01 24       	jz	$+4      	;abs 0x6fbe

00006fbc <.Loc.294.1>:
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    6fbc:	30 41       	ret

00006fbe <.L73>:
			return pers_timer_vars[0].wkup_timing[idx].status ;
    6fbe:	0c 4e       	mov	r14,	r12	;
    6fc0:	5c 06       	rlam	#2,	r12	;
    6fc2:	0c 5e       	add	r14,	r12	;
    6fc4:	5c 02       	rlam	#1,	r12	;
    6fc6:	1c 4c 5c 52 	mov	21084(r12),r12	;0x0525c

00006fca <.Loc.294.1>:
}
    6fca:	30 41       	ret

00006fcc <.L70>:
			return pers_timer_vars[0].xpr_timing[idx].status ;
    6fcc:	0c 4e       	mov	r14,	r12	;

00006fce <.LVL76>:
    6fce:	5c 06       	rlam	#2,	r12	;
    6fd0:	0c 5e       	add	r14,	r12	;
    6fd2:	5c 02       	rlam	#1,	r12	;
    6fd4:	1c 4c 7a 52 	mov	21114(r12),r12	;0x0527a

00006fd8 <.Loc.294.1>:
}
    6fd8:	30 41       	ret

00006fda <.L69>:
			return pers_timer_vars[0].pdc_timing[idx].status ;
    6fda:	0c 4e       	mov	r14,	r12	;

00006fdc <.LVL78>:
    6fdc:	5c 06       	rlam	#2,	r12	;
    6fde:	0c 5e       	add	r14,	r12	;
    6fe0:	5c 02       	rlam	#1,	r12	;
    6fe2:	1c 4c 98 52 	mov	21144(r12),r12	;0x05298

00006fe6 <.Loc.294.1>:
}
    6fe6:	30 41       	ret

00006fe8 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    6fe8:	5c 0a       	rlam	#3,	r12	;

00006fea <.LVL80>:
}
    6fea:	5c 4c a4 52 	mov.b	21156(r12),r12	;0x052a4
    6fee:	30 41       	ret

00006ff0 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    6ff0:	5c 0a       	rlam	#3,	r12	;

00006ff2 <.LVL82>:
}
    6ff2:	1c 4c a6 52 	mov	21158(r12),r12	;0x052a6
    6ff6:	30 41       	ret

00006ff8 <_exit>:
    6ff8:	ff 3f       	jmp	$+0      	;abs 0x6ff8

00006ffa <memmove>:
    6ffa:	1a 15       	pushm	#2,	r10	;16-bit words

00006ffc <L0^A>:
    6ffc:	0f 4d       	mov	r13,	r15	;
    6ffe:	0f 5e       	add	r14,	r15	;

00007000 <.Loc.69.1>:
    7000:	0d 9c       	cmp	r12,	r13	;
    7002:	02 2c       	jc	$+6      	;abs 0x7008

00007004 <.Loc.69.1>:
    7004:	0c 9f       	cmp	r15,	r12	;

00007006 <L0^A>:
    7006:	07 28       	jnc	$+16     	;abs 0x7016

00007008 <.L2>:
    7008:	0e 4c       	mov	r12,	r14	;

0000700a <.L4>:
    700a:	0d 9f       	cmp	r15,	r13	;
    700c:	0a 24       	jz	$+22     	;abs 0x7022

0000700e <.LVL3>:
    700e:	fe 4d 00 00 	mov.b	@r13+,	0(r14)	;

00007012 <.LVL4>:
    7012:	1e 53       	inc	r14		;
    7014:	fa 3f       	jmp	$-10     	;abs 0x700a

00007016 <.L3>:
    7016:	09 4e       	mov	r14,	r9	;
    7018:	39 e3       	inv	r9		;

0000701a <.Loc.74.1>:
    701a:	4d 43       	clr.b	r13		;

0000701c <.L5>:
    701c:	3d 53       	add	#-1,	r13	;r3 As==11

0000701e <.LVL7>:
    701e:	09 9d       	cmp	r13,	r9	;
    7020:	02 20       	jnz	$+6      	;abs 0x7026

00007022 <.L9>:
    7022:	19 17       	popm	#2,	r10	;16-bit words

00007024 <.LCFI1>:
    7024:	30 41       	ret

00007026 <.L6>:
    7026:	0b 4e       	mov	r14,	r11	;
    7028:	0b 5d       	add	r13,	r11	;
    702a:	0b 5c       	add	r12,	r11	;
    702c:	0a 4f       	mov	r15,	r10	;
    702e:	0a 5d       	add	r13,	r10	;

00007030 <.LVL10>:
    7030:	eb 4a 00 00 	mov.b	@r10,	0(r11)	;
    7034:	f3 3f       	jmp	$-24     	;abs 0x701c

00007036 <memset>:
    7036:	0e 5c       	add	r12,	r14	;

00007038 <.LVL2>:
    7038:	0f 4c       	mov	r12,	r15	;

0000703a <L0^A>:
    703a:	0f 9e       	cmp	r14,	r15	;
    703c:	01 20       	jnz	$+4      	;abs 0x7040

0000703e <.Loc.104.1>:
    703e:	30 41       	ret

00007040 <.L3>:
    7040:	1f 53       	inc	r15		;

00007042 <.LVL4>:
    7042:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7046:	f9 3f       	jmp	$-12     	;abs 0x703a
