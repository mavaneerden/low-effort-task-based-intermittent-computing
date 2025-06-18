
bin/bitcount_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	70 6b       	addc.b	@r11+,	r0	;

Disassembly of section .text:

000052ac <__crt0_start>:
__crt0_start():
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:58
    52ac:	31 40 00 24 	mov	#9216,	r1	;#0x2400

000052b0 <__crt0_init_bss>:
__crt0_init_bss():
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:75
    52b0:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

000052b4 <.Loc.76.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:76
    52b4:	0d 43       	clr	r13		;

000052b6 <.Loc.77.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:77
    52b6:	3e 40 60 00 	mov	#96,	r14	;#0x0060

000052ba <.Loc.81.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:81
    52ba:	b0 12 cc 6f 	call	#28620		;#0x6fcc

000052be <__crt0_movedata>:
__crt0_movedata():
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:115
    52be:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

000052c2 <.Loc.116.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:116
    52c2:	3d 40 aa 52 	mov	#21162,	r13	;#0x52aa

000052c6 <.Loc.119.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:119
    52c6:	0d 9c       	cmp	r12,	r13	;

000052c8 <.Loc.120.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:120
    52c8:	04 24       	jz	$+10     	;abs 0x52d2

000052ca <.Loc.122.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:122
    52ca:	3e 40 00 00 	mov	#0,	r14	;

000052ce <.Loc.124.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:124
    52ce:	b0 12 90 6f 	call	#28560		;#0x6f90

000052d2 <__crt0_call_main>:
__crt0_call_main():
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:253
    52d2:	0c 43       	clr	r12		;

000052d4 <.Loc.254.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:254
    52d4:	b0 12 b6 66 	call	#26294		;#0x66b6

000052d8 <__crt0_call_exit>:
__crt0_call_exit():
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/libgloss/msp430/../../../../../gcc/libgloss/msp430/crt0.S:267
    52d8:	b0 12 8e 6f 	call	#28558		;#0x6f8e

000052dc <__app_init>:
__app_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/appinit.c:30

extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init(){
    thread1_init();
    52dc:	b0 12 14 58 	call	#22548		;#0x5814

000052e0 <.Loc.31.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/appinit.c:31
}
    52e0:	30 41       	ret			

000052e2 <t_init>:
t_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:105

uint32_t flag = 77;
TASK(t_init){

#ifdef RAISE_PIN
    full_run_started = 1;
    52e2:	d2 43 08 45 	mov.b	#1,	&0x4508	;r3 As==01

000052e6 <.Loc.108.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:108
#endif

    __SET(pinCont,1);
    52e6:	dc 43 00 00 	mov.b	#1,	0(r12)	;r3 As==01

000052ea <.Loc.109.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:109
    __SET(function,0);
    52ea:	8c 43 10 00 	mov	#0,	16(r12)	;r3 As==00, 0x0010

000052ee <.Loc.110.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:110
    __SET(n_0,0);
    52ee:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

000052f2 <.Loc.111.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:111
    __SET(n_1,0);
    52f2:	8c 43 04 00 	mov	#0,	4(r12)	;r3 As==00

000052f6 <.Loc.112.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:112
    __SET(n_2,0);
    52f6:	8c 43 06 00 	mov	#0,	6(r12)	;r3 As==00

000052fa <.Loc.113.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:113
    __SET(n_3,0);
    52fa:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

000052fe <.Loc.114.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:114
    __SET(n_4,0);
    52fe:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00005302 <.Loc.115.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:115
    __SET(n_5,0);
    5302:	8c 43 0c 00 	mov	#0,	12(r12)	;r3 As==00, 0x000c

00005306 <.Loc.116.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:116
    __SET(n_6,0);
    5306:	8c 43 0e 00 	mov	#0,	14(r12)	;r3 As==00, 0x000e

0000530a <.Loc.119.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:120

    // next task is t_select_func
    return t_select_func;
}
    530a:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

0000530e <.LVL1>:
    530e:	30 41       	ret			

00005310 <t_select_func>:
t_select_func():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:135
        seed = rand();
    #else
        seed = SEED;
    #endif

    __SET(iteration, 0);
    5310:	8c 43 12 00 	mov	#0,	18(r12)	;r3 As==00, 0x0012

00005314 <.Loc.136.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:136
    __SET(seed,seed);
    5314:	ac 42 14 00 	mov	#4,	20(r12)	;r2 As==10, 0x0014
    5318:	8c 43 16 00 	mov	#0,	22(r12)	;r3 As==00, 0x0016

0000531c <.Loc.138.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:138

    function = __GET(function);
    531c:	1d 4c 10 00 	mov	16(r12),r13	;0x00010

00005320 <.LVL4>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:140

    if (function == 0)
    5320:	0d 93       	cmp	#0,	r13	;r3 As==00
    5322:	15 24       	jz	$+44     	;abs 0x534e

00005324 <.Loc.145.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:145
    {
        __SET(function,++function);
        return t_bit_count;
    }
    else if(function == 1)
    5324:	1d 93       	cmp	#1,	r13	;r3 As==01
    5326:	24 24       	jz	$+74     	;abs 0x5370

00005328 <.Loc.150.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:150
    {
        __SET(function,++function);
        return t_bitcount;
    }
    else if(function == 2)
    5328:	2d 93       	cmp	#2,	r13	;r3 As==10
    532a:	16 24       	jz	$+46     	;abs 0x5358

0000532c <.Loc.155.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:155
    {
        __SET(function,++function);
        return t_ntbl_bitcnt;
    }
    else if(function == 3)
    532c:	3d 90 03 00 	cmp	#3,	r13	;
    5330:	24 24       	jz	$+74     	;abs 0x537a

00005332 <.Loc.160.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:160
    {
        __SET(function,++function);
        return t_ntbl_bitcount;
    }
    else if(function == 4)
    5332:	2d 92       	cmp	#4,	r13	;r2 As==10
    5334:	27 24       	jz	$+80     	;abs 0x5384

00005336 <.Loc.165.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:165
    {
        __SET(function,++function);
        return t_BW_btbl_bitcount;
    }
    else if(function == 5)
    5336:	3d 90 05 00 	cmp	#5,	r13	;
    533a:	2a 24       	jz	$+86     	;abs 0x5390

0000533c <.Loc.170.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:170
    {
        __SET(function,++function);
        return t_AR_btbl_bitcount;
    }
    else if(function == 6)
    533c:	3d 90 06 00 	cmp	#6,	r13	;
    5340:	11 24       	jz	$+36     	;abs 0x5364

00005342 <.LVL5>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:177
        __SET(function,++function);
        return t_bit_shifter;
    }
    else
    {
        __SET(function,++function);
    5342:	1d 53       	inc	r13		;

00005344 <.LVL6>:
    5344:	8c 4d 10 00 	mov	r13,	16(r12)	; 0x0010

00005348 <.Loc.178.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:178
        return t_end;
    5348:	3c 40 ec 57 	mov	#22508,	r12	;#0x57ec

0000534c <.LVL7>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
    }

}
    534c:	30 41       	ret			

0000534e <.L12>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:142
        __SET(function,++function);
    534e:	9c 43 10 00 	mov	#1,	16(r12)	;r3 As==01, 0x0010

00005352 <.Loc.143.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:143
        return t_bit_count;
    5352:	3c 40 9c 53 	mov	#21404,	r12	;#0x539c

00005356 <.LVL9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    5356:	30 41       	ret			

00005358 <.L14>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:152
        __SET(function,++function);
    5358:	bc 40 03 00 	mov	#3,	16(r12)	; 0x0010
    535c:	10 00 

0000535e <.Loc.153.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:153
        return t_ntbl_bitcnt;
    535e:	3c 40 48 55 	mov	#21832,	r12	;#0x5548

00005362 <.LVL11>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    5362:	30 41       	ret			

00005364 <.L18>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:172
        __SET(function,++function);
    5364:	bc 40 07 00 	mov	#7,	16(r12)	; 0x0010
    5368:	10 00 

0000536a <.Loc.173.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:173
        return t_bit_shifter;
    536a:	3c 40 78 57 	mov	#22392,	r12	;#0x5778

0000536e <.LVL13>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    536e:	30 41       	ret			

00005370 <.L13>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:147
        __SET(function,++function);
    5370:	ac 43 10 00 	mov	#2,	16(r12)	;r3 As==10, 0x0010

00005374 <.Loc.148.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:148
        return t_bitcount;
    5374:	3c 40 0a 54 	mov	#21514,	r12	;#0x540a

00005378 <.LVL15>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    5378:	30 41       	ret			

0000537a <.L15>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:157
        __SET(function,++function);
    537a:	ac 42 10 00 	mov	#4,	16(r12)	;r2 As==10, 0x0010

0000537e <.Loc.158.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:158
        return t_ntbl_bitcount;
    537e:	3c 40 ec 55 	mov	#21996,	r12	;#0x55ec

00005382 <.LVL17>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    5382:	30 41       	ret			

00005384 <.L16>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:162
        __SET(function,++function);
    5384:	bc 40 05 00 	mov	#5,	16(r12)	; 0x0010
    5388:	10 00 

0000538a <.Loc.163.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:163
        return t_BW_btbl_bitcount;
    538a:	3c 40 b4 56 	mov	#22196,	r12	;#0x56b4

0000538e <.LVL19>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    538e:	30 41       	ret			

00005390 <.L17>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:167
        __SET(function,++function);
    5390:	bc 40 06 00 	mov	#6,	16(r12)	; 0x0010
    5394:	10 00 

00005396 <.Loc.168.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:168
        return t_AR_btbl_bitcount;
    5396:	3c 40 1c 57 	mov	#22300,	r12	;#0x571c

0000539a <.LVL21>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:181
}
    539a:	30 41       	ret			

0000539c <t_bit_count>:
t_bit_count():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:183

TASK(t_bit_count){
    539c:	2a 15       	pushm	#3,	r10	;16-bit words

0000539e <.LCFI0>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:185

        uint32_t seed = __GET(seed);
    539e:	1d 4c 14 00 	mov	20(r12),r13	;0x00014
    53a2:	1e 4c 16 00 	mov	22(r12),r14	;0x00016

000053a6 <.LVL23>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:186
        unsigned n_0 = __GET(n_0);
    53a6:	18 4c 02 00 	mov	2(r12),	r8	;

000053aa <.LVL24>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:187
        unsigned iteration = __GET(iteration);
    53aa:	19 4c 12 00 	mov	18(r12),r9	;0x00012

000053ae <.LVL25>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:190

        uint32_t tmp_seed = seed;
        seed = tmp_seed + 13;
    53ae:	0f 4d       	mov	r13,	r15	;
    53b0:	3f 50 0d 00 	add	#13,	r15	;#0x000d
    53b4:	8c 4f 14 00 	mov	r15,	20(r12)	; 0x0014
    53b8:	0f 4e       	mov	r14,	r15	;
    53ba:	0f 63       	adc	r15		;
    53bc:	8c 4f 16 00 	mov	r15,	22(r12)	; 0x0016

000053c0 <.Loc.193.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:194
        __SET(seed,seed);

        unsigned temp = 0;
        if(tmp_seed) do
    53c0:	0f 4d       	mov	r13,	r15	;
    53c2:	0f de       	bis	r14,	r15	;
    53c4:	0f 93       	cmp	#0,	r15	;r3 As==00
    53c6:	0f 24       	jz	$+32     	;abs 0x53e6

000053c8 <.Loc.193.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:193
        unsigned temp = 0;
    53c8:	4a 43       	clr.b	r10		;

000053ca <.L22>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:195
            temp++;
    53ca:	1a 53       	inc	r10		;

000053cc <.Loc.196.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:196
        while (0 != (tmp_seed = tmp_seed&(tmp_seed-1)));
    53cc:	0b 4d       	mov	r13,	r11	;
    53ce:	3b 53       	add	#-1,	r11	;r3 As==11
    53d0:	0f 4e       	mov	r14,	r15	;
    53d2:	3f 63       	addc	#-1,	r15	;r3 As==11

000053d4 <.Loc.196.1>:
    53d4:	0b fd       	and	r13,	r11	;
    53d6:	0f fe       	and	r14,	r15	;
    53d8:	0d 4b       	mov	r11,	r13	;

000053da <.LVL29>:
    53da:	0e 4f       	mov	r15,	r14	;

000053dc <.LVL30>:
    53dc:	0f 4b       	mov	r11,	r15	;
    53de:	0f de       	bis	r14,	r15	;
    53e0:	0f 93       	cmp	#0,	r15	;r3 As==00
    53e2:	f3 23       	jnz	$-24     	;abs 0x53ca
    53e4:	08 5a       	add	r10,	r8	;

000053e6 <.L20>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:198

        __SET(n_0, n_0 += temp);
    53e6:	8c 48 02 00 	mov	r8,	2(r12)	;

000053ea <.Loc.199.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:199
        __SET(iteration, ++iteration);
    53ea:	0d 49       	mov	r9,	r13	;
    53ec:	1d 53       	inc	r13		;

000053ee <.LVL32>:
    53ee:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000053f2 <.Loc.201.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:201

        if(iteration < ITER){
    53f2:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

000053f6 <.LVL33>:
    53f6:	0c 9d       	cmp	r13,	r12	;
    53f8:	04 2c       	jc	$+10     	;abs 0x5402

000053fa <.Loc.205.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:205
            return t_bit_count;
        }
        else{
            return t_select_func;
    53fa:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

000053fe <.Loc.208.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:208
        }

}
    53fe:	28 17       	popm	#3,	r10	;16-bit words

00005400 <.LCFI1>:
    5400:	30 41       	ret			

00005402 <.L24>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:202
            return t_bit_count;
    5402:	3c 40 9c 53 	mov	#21404,	r12	;#0x539c

00005406 <.Loc.208.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:208
}
    5406:	28 17       	popm	#3,	r10	;16-bit words

00005408 <.LCFI3>:
    5408:	30 41       	ret			

0000540a <t_bitcount>:
t_bitcount():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:210

TASK(t_bitcount){
    540a:	6a 15       	pushm	#7,	r10	;16-bit words

0000540c <.LCFI4>:
    540c:	21 82       	sub	#4,	r1	;r2 As==10

0000540e <.LCFI5>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:212

    uint32_t seed = __GET(seed);
    540e:	1e 4c 14 00 	mov	20(r12),r14	;0x00014
    5412:	1f 4c 16 00 	mov	22(r12),r15	;0x00016

00005416 <.LVL35>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:217
    unsigned n_1 = __GET(n_1);
    unsigned iteration = __GET(iteration);

    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    5416:	0a 4e       	mov	r14,	r10	;
    5418:	3a 50 0d 00 	add	#13,	r10	;#0x000d
    541c:	8c 4a 14 00 	mov	r10,	20(r12)	; 0x0014
    5420:	0b 4f       	mov	r15,	r11	;
    5422:	0b 63       	adc	r11		;
    5424:	8c 4b 16 00 	mov	r11,	22(r12)	; 0x0016

00005428 <.Loc.220.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:220
    __SET(seed,seed);

    tmp_seed = ((tmp_seed & 0xAAAAAAAAL) >>  1) + (tmp_seed & 0x55555555L);
    5428:	0a 4e       	mov	r14,	r10	;
    542a:	0b 4f       	mov	r15,	r11	;
    542c:	12 c3       	clrc			
    542e:	0b 10       	rrc	r11		;
    5430:	0a 10       	rrc	r10		;
    5432:	81 4b 02 00 	mov	r11,	2(r1)	;
    5436:	05 4a       	mov	r10,	r5	;
    5438:	35 f0 55 55 	and	#21845,	r5	;#0x5555
    543c:	04 4b       	mov	r11,	r4	;
    543e:	34 f0 55 55 	and	#21845,	r4	;#0x5555

00005442 <.Loc.220.1>:
    5442:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
    5446:	0d 4e       	mov	r14,	r13	;
    5448:	3d f0 55 55 	and	#21845,	r13	;#0x5555
    544c:	0b 4f       	mov	r15,	r11	;
    544e:	3b f0 55 55 	and	#21845,	r11	;#0x5555

00005452 <.Loc.220.1>:
    5452:	06 45       	mov	r5,	r6	;
    5454:	06 5d       	add	r13,	r6	;
    5456:	07 4b       	mov	r11,	r7	;
    5458:	07 64       	addc	r4,	r7	;

0000545a <.LVL36>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:221
    tmp_seed = ((tmp_seed & 0xCCCCCCCCL) >>  2) + (tmp_seed & 0x33333333L);
    545a:	0e 46       	mov	r6,	r14	;
    545c:	0f 47       	mov	r7,	r15	;
    545e:	12 c3       	clrc			
    5460:	0f 10       	rrc	r15		;
    5462:	0e 10       	rrc	r14		;
    5464:	12 c3       	clrc			
    5466:	0f 10       	rrc	r15		;
    5468:	0e 10       	rrc	r14		;
    546a:	05 4e       	mov	r14,	r5	;
    546c:	35 f0 33 33 	and	#13107,	r5	;#0x3333
    5470:	04 4f       	mov	r15,	r4	;
    5472:	34 f0 33 33 	and	#13107,	r4	;#0x3333

00005476 <.Loc.221.1>:
    5476:	0d 46       	mov	r6,	r13	;
    5478:	3d f0 33 33 	and	#13107,	r13	;#0x3333
    547c:	0e 47       	mov	r7,	r14	;
    547e:	3e f0 33 33 	and	#13107,	r14	;#0x3333

00005482 <.Loc.221.1>:
    5482:	08 45       	mov	r5,	r8	;
    5484:	08 5d       	add	r13,	r8	;
    5486:	09 44       	mov	r4,	r9	;
    5488:	09 6e       	addc	r14,	r9	;

0000548a <.LVL38>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:222
    tmp_seed = ((tmp_seed & 0xF0F0F0F0L) >>  4) + (tmp_seed & 0x0F0F0F0FL);
    548a:	06 48       	mov	r8,	r6	;
    548c:	07 49       	mov	r9,	r7	;
    548e:	12 c3       	clrc			
    5490:	07 10       	rrc	r7		;
    5492:	06 10       	rrc	r6		;
    5494:	12 c3       	clrc			
    5496:	07 10       	rrc	r7		;
    5498:	06 10       	rrc	r6		;
    549a:	12 c3       	clrc			
    549c:	07 10       	rrc	r7		;
    549e:	06 10       	rrc	r6		;
    54a0:	12 c3       	clrc			
    54a2:	07 10       	rrc	r7		;
    54a4:	06 10       	rrc	r6		;
    54a6:	0e 46       	mov	r6,	r14	;
    54a8:	3e f0 0f 0f 	and	#3855,	r14	;#0x0f0f
    54ac:	05 47       	mov	r7,	r5	;
    54ae:	35 f0 0f 0f 	and	#3855,	r5	;#0x0f0f

000054b2 <.Loc.222.1>:
    54b2:	0d 48       	mov	r8,	r13	;
    54b4:	3d f0 0f 0f 	and	#3855,	r13	;#0x0f0f
    54b8:	0f 49       	mov	r9,	r15	;
    54ba:	3f f0 0f 0f 	and	#3855,	r15	;#0x0f0f

000054be <.Loc.222.1>:
    54be:	0a 4e       	mov	r14,	r10	;
    54c0:	0a 5d       	add	r13,	r10	;
    54c2:	0b 45       	mov	r5,	r11	;
    54c4:	0b 6f       	addc	r15,	r11	;

000054c6 <.LVL39>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:223
    tmp_seed = ((tmp_seed & 0xFF00FF00L) >>  8) + (tmp_seed & 0x00FF00FFL);
    54c6:	08 4a       	mov	r10,	r8	;
    54c8:	09 4b       	mov	r11,	r9	;
    54ca:	12 c3       	clrc			
    54cc:	09 10       	rrc	r9		;
    54ce:	08 10       	rrc	r8		;
    54d0:	12 c3       	clrc			
    54d2:	09 10       	rrc	r9		;
    54d4:	08 10       	rrc	r8		;
    54d6:	12 c3       	clrc			
    54d8:	09 10       	rrc	r9		;
    54da:	08 10       	rrc	r8		;
    54dc:	12 c3       	clrc			
    54de:	09 10       	rrc	r9		;
    54e0:	08 10       	rrc	r8		;
    54e2:	12 c3       	clrc			
    54e4:	09 10       	rrc	r9		;
    54e6:	08 10       	rrc	r8		;
    54e8:	12 c3       	clrc			
    54ea:	09 10       	rrc	r9		;
    54ec:	08 10       	rrc	r8		;
    54ee:	12 c3       	clrc			
    54f0:	09 10       	rrc	r9		;
    54f2:	08 10       	rrc	r8		;
    54f4:	12 c3       	clrc			
    54f6:	09 10       	rrc	r9		;
    54f8:	08 10       	rrc	r8		;
    54fa:	0d 48       	mov	r8,	r13	;
    54fc:	7d f0 ff 00 	and.b	#255,	r13	;#0x00ff
    5500:	0e 49       	mov	r9,	r14	;
    5502:	7e f0 ff 00 	and.b	#255,	r14	;#0x00ff

00005506 <.Loc.223.1>:
    5506:	0f 4a       	mov	r10,	r15	;
    5508:	7f f0 ff 00 	and.b	#255,	r15	;#0x00ff
    550c:	09 4b       	mov	r11,	r9	;
    550e:	79 f0 ff 00 	and.b	#255,	r9	;#0x00ff

00005512 <.Loc.223.1>:
    5512:	0d 5f       	add	r15,	r13	;
    5514:	0e 69       	addc	r9,	r14	;

00005516 <.LVL40>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:224
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);
    5516:	0f 4d       	mov	r13,	r15	;

00005518 <.LVL41>:
    5518:	1f 5c 04 00 	add	4(r12),	r15	;

0000551c <.Loc.226.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:226

    __SET(n_1,n_1 += (int)tmp_seed);
    551c:	0f 5e       	add	r14,	r15	;
    551e:	8c 4f 04 00 	mov	r15,	4(r12)	;

00005522 <.Loc.227.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:227
    __SET(iteration,++iteration);
    5522:	1d 4c 12 00 	mov	18(r12),r13	;0x00012
    5526:	1d 53       	inc	r13		;

00005528 <.LVL44>:
    5528:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000552c <.Loc.229.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:229

    if(iteration < ITER){
    552c:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005530 <.LVL45>:
    5530:	0c 9d       	cmp	r13,	r12	;
    5532:	05 2c       	jc	$+12     	;abs 0x553e

00005534 <.Loc.233.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:233
        return t_bitcount;
    }
    else{
        return t_select_func;
    5534:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

00005538 <.Loc.236.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:236
    }

}
    5538:	21 52       	add	#4,	r1	;r2 As==10

0000553a <.LCFI6>:
    553a:	64 17       	popm	#7,	r10	;16-bit words

0000553c <.LCFI7>:
    553c:	30 41       	ret			

0000553e <.L31>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:230
        return t_bitcount;
    553e:	3c 40 0a 54 	mov	#21514,	r12	;#0x540a

00005542 <.Loc.236.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:236
}
    5542:	21 52       	add	#4,	r1	;r2 As==10

00005544 <.LCFI9>:
    5544:	64 17       	popm	#7,	r10	;16-bit words

00005546 <.LCFI10>:
    5546:	30 41       	ret			

00005548 <t_ntbl_bitcnt>:
t_ntbl_bitcnt():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:258
    }

    return cnt;
}

TASK(t_ntbl_bitcnt){
    5548:	3a 15       	pushm	#4,	r10	;16-bit words

0000554a <.LCFI11>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:260

    uint32_t seed = __GET(seed);
    554a:	18 4c 14 00 	mov	20(r12),r8	;0x00014
    554e:	19 4c 16 00 	mov	22(r12),r9	;0x00016

00005552 <.LVL47>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:261
    unsigned n_2 = __GET(n_2);
    5552:	17 4c 06 00 	mov	6(r12),	r7	;

00005556 <.LVL48>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:262
    unsigned iteration = __GET(iteration);
    5556:	1a 4c 12 00 	mov	18(r12),r10	;0x00012

0000555a <.LBB4>:
non_recursive_cnt():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:249
    int cnt = bits[(int)(x & 0x0000000FL)];
    555a:	0d 48       	mov	r8,	r13	;
    555c:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

00005560 <.Loc.249.1>:
    5560:	5b 4d 3a 45 	mov.b	17722(r13),r11	;0x0453a

00005564 <.LVL50>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:251
    while (0L != (x >>= 4)) {
    5564:	0e 48       	mov	r8,	r14	;
    5566:	0f 49       	mov	r9,	r15	;
    5568:	12 c3       	clrc			
    556a:	0f 10       	rrc	r15		;
    556c:	0e 10       	rrc	r14		;
    556e:	12 c3       	clrc			
    5570:	0f 10       	rrc	r15		;
    5572:	0e 10       	rrc	r14		;
    5574:	12 c3       	clrc			
    5576:	0f 10       	rrc	r15		;
    5578:	0e 10       	rrc	r14		;
    557a:	12 c3       	clrc			
    557c:	0f 10       	rrc	r15		;
    557e:	0e 10       	rrc	r14		;

00005580 <.LVL51>:
    5580:	0d 4e       	mov	r14,	r13	;
    5582:	0d df       	bis	r15,	r13	;
    5584:	0d 93       	cmp	#0,	r13	;r3 As==00
    5586:	16 24       	jz	$+46     	;abs 0x55b4

00005588 <.L35>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:252
        cnt += bits[(int)(x & 0x0000000FL)];
    5588:	0d 4e       	mov	r14,	r13	;
    558a:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

0000558e <.Loc.252.1>:
    558e:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    5592:	0b 5d       	add	r13,	r11	;

00005594 <.Loc.251.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:251
    while (0L != (x >>= 4)) {
    5594:	12 c3       	clrc			
    5596:	0f 10       	rrc	r15		;
    5598:	0e 10       	rrc	r14		;
    559a:	12 c3       	clrc			
    559c:	0f 10       	rrc	r15		;
    559e:	0e 10       	rrc	r14		;
    55a0:	12 c3       	clrc			
    55a2:	0f 10       	rrc	r15		;
    55a4:	0e 10       	rrc	r14		;
    55a6:	12 c3       	clrc			
    55a8:	0f 10       	rrc	r15		;
    55aa:	0e 10       	rrc	r14		;

000055ac <.Loc.251.1>:
    55ac:	0d 4e       	mov	r14,	r13	;
    55ae:	0d df       	bis	r15,	r13	;
    55b0:	0d 93       	cmp	#0,	r13	;r3 As==00
    55b2:	ea 23       	jnz	$-42     	;abs 0x5588

000055b4 <.L33>:
t_ntbl_bitcnt():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:267

    uint32_t tmp_seed = seed;
    n_2 += non_recursive_cnt(tmp_seed);
    seed = tmp_seed + 13;
    iteration++;
    55b4:	0d 4a       	mov	r10,	r13	;
    55b6:	1d 53       	inc	r13		;

000055b8 <.LVL55>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:265
    n_2 += non_recursive_cnt(tmp_seed);
    55b8:	0b 57       	add	r7,	r11	;

000055ba <.LVL56>:
    55ba:	8c 4b 06 00 	mov	r11,	6(r12)	;

000055be <.Loc.266.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:266
    seed = tmp_seed + 13;
    55be:	0e 48       	mov	r8,	r14	;
    55c0:	3e 50 0d 00 	add	#13,	r14	;#0x000d
    55c4:	8c 4e 14 00 	mov	r14,	20(r12)	; 0x0014
    55c8:	0e 49       	mov	r9,	r14	;
    55ca:	0e 63       	adc	r14		;
    55cc:	8c 4e 16 00 	mov	r14,	22(r12)	; 0x0016

000055d0 <.Loc.271.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:271

    __SET(n_2,n_2);
    __SET(seed, seed);
    __SET(iteration,iteration);
    55d0:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000055d4 <.Loc.273.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:273

    if(iteration < ITER){
    55d4:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

000055d8 <.LVL57>:
    55d8:	0c 9d       	cmp	r13,	r12	;
    55da:	04 2c       	jc	$+10     	;abs 0x55e4

000055dc <.Loc.277.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:277
        return t_ntbl_bitcnt;
    }
    else{
        return t_select_func;
    55dc:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

000055e0 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:279
    }
}
    55e0:	37 17       	popm	#4,	r10	;16-bit words

000055e2 <.LCFI12>:
    55e2:	30 41       	ret			

000055e4 <.L37>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:274
        return t_ntbl_bitcnt;
    55e4:	3c 40 48 55 	mov	#21832,	r12	;#0x5548

000055e8 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:279
}
    55e8:	37 17       	popm	#4,	r10	;16-bit words

000055ea <.LCFI14>:
    55ea:	30 41       	ret			

000055ec <t_ntbl_bitcount>:
t_ntbl_bitcount():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:281

TASK(t_ntbl_bitcount){
    55ec:	2a 15       	pushm	#3,	r10	;16-bit words

000055ee <.LCFI15>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:283
    /* ------ local variables for persistents ------*/
    uint32_t seed = __GET(seed);
    55ee:	1e 4c 14 00 	mov	20(r12),r14	;0x00014
    55f2:	1f 4c 16 00 	mov	22(r12),r15	;0x00016

000055f6 <.LVL59>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:292
    uint16_t __cry = seed;
    n_3 += bits[ (int) (__cry & 0x0000000FUL)       ] +
        bits[ (int)((__cry & 0x000000F0UL) >> 4) ] +
        bits[ (int)((__cry & 0x00000F00UL) >> 8) ] +
        bits[ (int)((__cry & 0x0000F000UL) >> 12)] +
        bits[ (int)((__cry & 0x000F0000UL) >> 16)] +
    55f6:	5b 42 3a 45 	mov.b	&0x453a,r11	;0x453a

000055fa <.LVL60>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:299
        bits[ (int)((__cry & 0x0F000000UL) >> 24)] +
        bits[ (int)((__cry & 0xF0000000UL) >> 28)];

    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;
    55fa:	1a 4c 12 00 	mov	18(r12),r10	;0x00012
    55fe:	1a 53       	inc	r10		;

00005600 <.LVL61>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:289
        bits[ (int)((__cry & 0x000000F0UL) >> 4) ] +
    5600:	08 4e       	mov	r14,	r8	;
    5602:	09 4f       	mov	r15,	r9	;
    5604:	12 c3       	clrc			
    5606:	09 10       	rrc	r9		;
    5608:	08 10       	rrc	r8		;
    560a:	12 c3       	clrc			
    560c:	09 10       	rrc	r9		;
    560e:	08 10       	rrc	r8		;
    5610:	12 c3       	clrc			
    5612:	09 10       	rrc	r9		;
    5614:	08 10       	rrc	r8		;
    5616:	12 c3       	clrc			
    5618:	09 10       	rrc	r9		;
    561a:	08 10       	rrc	r8		;

0000561c <.Loc.289.1>:
    561c:	78 f0 0f 00 	and.b	#15,	r8	;#0x000f

00005620 <.Loc.288.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:288
    n_3 += bits[ (int) (__cry & 0x0000000FUL)       ] +
    5620:	0d 4e       	mov	r14,	r13	;
    5622:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

00005626 <.Loc.288.1>:
    5626:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    562a:	58 48 3a 45 	mov.b	17722(r8),r8	;0x0453a
    562e:	0d 58       	add	r8,	r13	;

00005630 <.Loc.290.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:290
        bits[ (int)((__cry & 0x00000F00UL) >> 8) ] +
    5630:	08 4e       	mov	r14,	r8	;
    5632:	09 4f       	mov	r15,	r9	;
    5634:	12 c3       	clrc			
    5636:	09 10       	rrc	r9		;
    5638:	08 10       	rrc	r8		;
    563a:	12 c3       	clrc			
    563c:	09 10       	rrc	r9		;
    563e:	08 10       	rrc	r8		;
    5640:	12 c3       	clrc			
    5642:	09 10       	rrc	r9		;
    5644:	08 10       	rrc	r8		;
    5646:	12 c3       	clrc			
    5648:	09 10       	rrc	r9		;
    564a:	08 10       	rrc	r8		;
    564c:	12 c3       	clrc			
    564e:	09 10       	rrc	r9		;
    5650:	08 10       	rrc	r8		;
    5652:	12 c3       	clrc			
    5654:	09 10       	rrc	r9		;
    5656:	08 10       	rrc	r8		;
    5658:	12 c3       	clrc			
    565a:	09 10       	rrc	r9		;
    565c:	08 10       	rrc	r8		;
    565e:	12 c3       	clrc			
    5660:	09 10       	rrc	r9		;
    5662:	08 10       	rrc	r8		;

00005664 <.Loc.290.1>:
    5664:	78 f0 0f 00 	and.b	#15,	r8	;#0x000f

00005668 <.Loc.289.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:289
        bits[ (int)((__cry & 0x000000F0UL) >> 4) ] +
    5668:	58 48 3a 45 	mov.b	17722(r8),r8	;0x0453a
    566c:	0d 58       	add	r8,	r13	;

0000566e <.Loc.291.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:291
        bits[ (int)((__cry & 0x0000F000UL) >> 12)] +
    566e:	09 4e       	mov	r14,	r9	;
    5670:	4b 19 09 10 	rpt #12 { rrux.w	r9		;

00005674 <.Loc.290.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:290
        bits[ (int)((__cry & 0x00000F00UL) >> 8) ] +
    5674:	59 49 3a 45 	mov.b	17722(r9),r9	;0x0453a
    5678:	0d 59       	add	r9,	r13	;

0000567a <.Loc.291.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:291
        bits[ (int)((__cry & 0x0000F000UL) >> 12)] +
    567a:	0d 5b       	add	r11,	r13	;

0000567c <.Loc.292.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:292
        bits[ (int)((__cry & 0x000F0000UL) >> 16)] +
    567c:	0d 5b       	add	r11,	r13	;

0000567e <.Loc.293.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:293
        bits[ (int)((__cry & 0x00F00000UL) >> 20)] +
    567e:	0d 5b       	add	r11,	r13	;

00005680 <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:294
        bits[ (int)((__cry & 0x0F000000UL) >> 24)] +
    5680:	0d 5b       	add	r11,	r13	;

00005682 <.Loc.288.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:288
    n_3 += bits[ (int) (__cry & 0x0000000FUL)       ] +
    5682:	8c 5d 08 00 	add	r13,	8(r12)	;

00005686 <.Loc.298.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:298
    seed = tmp_seed + 13;
    5686:	0d 4e       	mov	r14,	r13	;
    5688:	3d 50 0d 00 	add	#13,	r13	;#0x000d
    568c:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014
    5690:	0d 4f       	mov	r15,	r13	;
    5692:	0d 63       	adc	r13		;
    5694:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005698 <.Loc.303.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:303

    __SET(n_3,n_3);
    __SET(seed, seed);
    __SET(iteration,iteration);
    5698:	8c 4a 12 00 	mov	r10,	18(r12)	; 0x0012

0000569c <.Loc.305.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:305

    if(iteration < ITER){
    569c:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

000056a0 <.LVL63>:
    56a0:	0c 9a       	cmp	r10,	r12	;
    56a2:	04 2c       	jc	$+10     	;abs 0x56ac

000056a4 <.Loc.309.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:309
        return t_ntbl_bitcount;
    }
    else{
        return t_select_func;
    56a4:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

000056a8 <.Loc.311.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:311
    }
}
    56a8:	28 17       	popm	#3,	r10	;16-bit words

000056aa <.LCFI16>:
    56aa:	30 41       	ret			

000056ac <.L44>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:306
        return t_ntbl_bitcount;
    56ac:	3c 40 ec 55 	mov	#21996,	r12	;#0x55ec

000056b0 <.Loc.311.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:311
}
    56b0:	28 17       	popm	#3,	r10	;16-bit words

000056b2 <.LCFI18>:
    56b2:	30 41       	ret			

000056b4 <t_BW_btbl_bitcount>:
t_BW_btbl_bitcount():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:313

TASK(t_BW_btbl_bitcount){
    56b4:	1a 15       	pushm	#2,	r10	;16-bit words

000056b6 <.LCFI19>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:316

    /* ------ local variables for persistents ------*/
    uint32_t seed = __GET(seed);
    56b6:	1e 4c 14 00 	mov	20(r12),r14	;0x00014
    56ba:	1a 4c 16 00 	mov	22(r12),r10	;0x00016

000056be <.LVL65>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:326
    {
        unsigned char ch[4];
        long y;
    } U;

    U.y = seed;
    56be:	0d 4e       	mov	r14,	r13	;
    56c0:	0f 4a       	mov	r10,	r15	;

000056c2 <.LVL66>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:332

    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
        bits[ U.ch[3] ] + bits[ U.ch[2] ];
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;
    56c2:	1b 4c 12 00 	mov	18(r12),r11	;0x00012
    56c6:	1b 53       	inc	r11		;

000056c8 <.LVL67>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:328
    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
    56c8:	49 4e       	mov.b	r14,	r9	;

000056ca <.Loc.328.1>:
    56ca:	47 19 0d 10 	rpt #8 { rrux.w	r13		;

000056ce <.Loc.328.1>:
    56ce:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    56d2:	59 49 3a 45 	mov.b	17722(r9),r9	;0x0453a
    56d6:	0d 59       	add	r9,	r13	;

000056d8 <.Loc.329.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:329
        bits[ U.ch[3] ] + bits[ U.ch[2] ];
    56d8:	09 4a       	mov	r10,	r9	;
    56da:	47 19 09 10 	rpt #8 { rrux.w	r9		;

000056de <.Loc.328.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:328
    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
    56de:	59 49 3a 45 	mov.b	17722(r9),r9	;0x0453a
    56e2:	0d 59       	add	r9,	r13	;

000056e4 <.Loc.329.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:329
        bits[ U.ch[3] ] + bits[ U.ch[2] ];
    56e4:	3f f0 ff 00 	and	#255,	r15	;#0x00ff

000056e8 <.Loc.329.1>:
    56e8:	5f 4f 3a 45 	mov.b	17722(r15),r15	;0x0453a
    56ec:	0d 5f       	add	r15,	r13	;

000056ee <.Loc.328.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:328
    n_4 += bits[ U.ch[0] ] + bits[ U.ch[1] ] +
    56ee:	8c 5d 0a 00 	add	r13,	10(r12)	; 0x000a

000056f2 <.Loc.331.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:331
    seed = tmp_seed + 13;
    56f2:	3e 50 0d 00 	add	#13,	r14	;#0x000d

000056f6 <.LVL69>:
    56f6:	8c 4e 14 00 	mov	r14,	20(r12)	; 0x0014

000056fa <.LVL70>:
    56fa:	0a 63       	adc	r10		;
    56fc:	8c 4a 16 00 	mov	r10,	22(r12)	; 0x0016

00005700 <.Loc.336.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:336

    __SET(n_4,n_4);
    __SET(seed, seed);
    __SET(iteration,iteration);
    5700:	8c 4b 12 00 	mov	r11,	18(r12)	; 0x0012

00005704 <.Loc.338.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:338

    if(iteration < ITER){
    5704:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005708 <.LVL73>:
    5708:	0c 9b       	cmp	r11,	r12	;
    570a:	04 2c       	jc	$+10     	;abs 0x5714

0000570c <.Loc.342.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:342
        return t_BW_btbl_bitcount;
    }
    else{
        return t_select_func;
    570c:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

00005710 <.Loc.345.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:345
    }

}
    5710:	19 17       	popm	#2,	r10	;16-bit words

00005712 <.LCFI20>:
    5712:	30 41       	ret			

00005714 <.L47>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:339
        return t_BW_btbl_bitcount;
    5714:	3c 40 b4 56 	mov	#22196,	r12	;#0x56b4

00005718 <.Loc.345.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:345
}
    5718:	19 17       	popm	#2,	r10	;16-bit words

0000571a <.LCFI22>:
    571a:	30 41       	ret			

0000571c <t_AR_btbl_bitcount>:
t_AR_btbl_bitcount():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:347

TASK(t_AR_btbl_bitcount) {
    571c:	0a 15       	pushm	#1,	r10	;16-bit words

0000571e <.LCFI23>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:357
    unsigned iteration = __GET(iteration);

    unsigned char * Ptr = (unsigned char *) &seed ;
    int Accu ;

    Accu  = bits[ *Ptr++ ];
    571e:	3d 40 3a 45 	mov	#17722,	r13	;#0x453a
    5722:	5e 4c 14 00 	mov.b	20(r12),r14	;0x00014
    5726:	0e 5d       	add	r13,	r14	;

00005728 <.Loc.358.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:358
    Accu += bits[ *Ptr++ ];
    5728:	5f 4c 15 00 	mov.b	21(r12),r15	;0x00015
    572c:	0f 5d       	add	r13,	r15	;

0000572e <.Loc.358.1>:
    572e:	6e 4e       	mov.b	@r14,	r14	;
    5730:	6f 4f       	mov.b	@r15,	r15	;
    5732:	0e 5f       	add	r15,	r14	;

00005734 <.LVL78>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:359
    Accu += bits[ *Ptr++ ];
    5734:	5f 4c 16 00 	mov.b	22(r12),r15	;0x00016
    5738:	0f 5d       	add	r13,	r15	;

0000573a <.Loc.359.1>:
    573a:	6f 4f       	mov.b	@r15,	r15	;
    573c:	0e 5f       	add	r15,	r14	;

0000573e <.LVL79>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:364
    Accu += bits[ *Ptr ];
    n_5+= Accu;
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;
    573e:	1f 4c 12 00 	mov	18(r12),r15	;0x00012
    5742:	1f 53       	inc	r15		;

00005744 <.LVL80>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:360
    Accu += bits[ *Ptr ];
    5744:	5a 4c 17 00 	mov.b	23(r12),r10	;0x00017
    5748:	0d 5a       	add	r10,	r13	;

0000574a <.Loc.360.1>:
    574a:	6d 4d       	mov.b	@r13,	r13	;
    574c:	0d 5e       	add	r14,	r13	;

0000574e <.Loc.361.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:361
    n_5+= Accu;
    574e:	8c 5d 0c 00 	add	r13,	12(r12)	; 0x000c

00005752 <.Loc.363.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:363
    seed = tmp_seed + 13;
    5752:	bc 50 0d 00 	add	#13,	20(r12)	;#0x000d, 0x0014
    5756:	14 00 
    5758:	8c 63 16 00 	adc	22(r12)		;

0000575c <.LVL82>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:368

    __SET(n_5,n_5);
    __SET(seed, seed);
    __SET(iteration,iteration);
    575c:	8c 4f 12 00 	mov	r15,	18(r12)	; 0x0012

00005760 <.Loc.370.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:370

    if(iteration < ITER){
    5760:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

00005764 <.LVL83>:
    5764:	0c 9f       	cmp	r15,	r12	;
    5766:	04 2c       	jc	$+10     	;abs 0x5770

00005768 <.Loc.374.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:374
        return t_AR_btbl_bitcount;
    }
    else{
        return t_select_func;
    5768:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

0000576c <.Loc.376.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:376
    }
}
    576c:	0a 17       	popm	#1,	r10	;16-bit words

0000576e <.LCFI24>:
    576e:	30 41       	ret			

00005770 <.L50>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:371
        return t_AR_btbl_bitcount;
    5770:	3c 40 1c 57 	mov	#22300,	r12	;#0x571c

00005774 <.Loc.376.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:376
}
    5774:	0a 17       	popm	#1,	r10	;16-bit words

00005776 <.LCFI26>:
    5776:	30 41       	ret			

00005778 <t_bit_shifter>:
t_bit_shifter():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:378

TASK(t_bit_shifter){
    5778:	4a 15       	pushm	#5,	r10	;16-bit words

0000577a <.LCFI27>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:380
        /* ------ local variables for persistents ------*/
    uint32_t seed = __GET(seed);
    577a:	18 4c 14 00 	mov	20(r12),r8	;0x00014
    577e:	17 4c 16 00 	mov	22(r12),r7	;0x00016

00005782 <.LVL86>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:381
    unsigned n_6 = __GET(n_6);
    5782:	16 4c 0e 00 	mov	14(r12),r6	;0x0000e

00005786 <.LVL87>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:382
    unsigned iteration = __GET(iteration);
    5786:	19 4c 12 00 	mov	18(r12),r9	;0x00012

0000578a <.LVL88>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:386

    unsigned i, nn;
    uint32_t tmp_seed = seed;
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    578a:	0d 48       	mov	r8,	r13	;
    578c:	0d d7       	bis	r7,	r13	;
    578e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5790:	14 24       	jz	$+42     	;abs 0x57ba
    5792:	0e 48       	mov	r8,	r14	;
    5794:	0f 47       	mov	r7,	r15	;
    5796:	7b 40 20 00 	mov.b	#32,	r11	;#0x0020

0000579a <.Loc.386.1>:
    579a:	4a 43       	clr.b	r10		;
    579c:	03 3c       	jmp	$+8      	;abs 0x57a4

0000579e <.L54>:
    579e:	3b 53       	add	#-1,	r11	;r3 As==11

000057a0 <.Loc.386.1>:
    57a0:	0b 93       	cmp	#0,	r11	;r3 As==00
    57a2:	0a 24       	jz	$+22     	;abs 0x57b8

000057a4 <.L55>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:387
        nn += (unsigned)(tmp_seed & 1L);
    57a4:	0d 4e       	mov	r14,	r13	;
    57a6:	5d f3       	and.b	#1,	r13	;r3 As==01

000057a8 <.Loc.387.1>:
    57a8:	0a 5d       	add	r13,	r10	;

000057aa <.Loc.386.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:386
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
    57aa:	12 c3       	clrc			
    57ac:	0f 10       	rrc	r15		;
    57ae:	0e 10       	rrc	r14		;

000057b0 <.Loc.386.1>:
    57b0:	0d 4e       	mov	r14,	r13	;
    57b2:	0d df       	bis	r15,	r13	;
    57b4:	0d 93       	cmp	#0,	r13	;r3 As==00
    57b6:	f3 23       	jnz	$-24     	;abs 0x579e

000057b8 <.L62>:
    57b8:	06 5a       	add	r10,	r6	;

000057ba <.L52>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:393
    n_6 += nn;
    tmp_seed = seed;
    tmp_seed += 13;
    seed = tmp_seed;

    iteration++;
    57ba:	0d 49       	mov	r9,	r13	;
    57bc:	1d 53       	inc	r13		;

000057be <.LVL94>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:395

    __SET(n_6,n_6);
    57be:	8c 46 0e 00 	mov	r6,	14(r12)	; 0x000e

000057c2 <.Loc.390.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:390
    tmp_seed += 13;
    57c2:	38 50 0d 00 	add	#13,	r8	;#0x000d
    57c6:	8c 48 14 00 	mov	r8,	20(r12)	; 0x0014
    57ca:	07 63       	adc	r7		;
    57cc:	8c 47 16 00 	mov	r7,	22(r12)	; 0x0016

000057d0 <.Loc.397.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:397
    __SET(seed, seed);
    __SET(iteration,iteration);
    57d0:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000057d4 <.Loc.399.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:399

    if(iteration < ITER){
    57d4:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063

000057d8 <.LVL99>:
    57d8:	0c 9d       	cmp	r13,	r12	;
    57da:	04 2c       	jc	$+10     	;abs 0x57e4

000057dc <.Loc.403.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:403
        return t_bit_shifter;
    }
    else{
        return t_select_func;
    57dc:	3c 40 10 53 	mov	#21264,	r12	;#0x5310

000057e0 <.Loc.405.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:405
    }
}
    57e0:	46 17       	popm	#5,	r10	;16-bit words

000057e2 <.LCFI28>:
    57e2:	30 41       	ret			

000057e4 <.L57>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:400
        return t_bit_shifter;
    57e4:	3c 40 78 57 	mov	#22392,	r12	;#0x5778

000057e8 <.Loc.405.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:405
}
    57e8:	46 17       	popm	#5,	r10	;16-bit words

000057ea <.LCFI30>:
    57ea:	30 41       	ret			

000057ec <t_end>:
t_end():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:409

TASK(t_end){
        /* ------ local variables for persistents ------*/
    uint8_t pinCont = __GET(pinCont);
    57ec:	6d 4c       	mov.b	@r12,	r13	;

000057ee <.LVL101>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:413
    /* ------------------------------------- */

#ifdef RAISE_PIN
    if (full_run_started) {
    57ee:	c2 93 08 45 	cmp.b	#0,	&0x4508	;r3 As==00
    57f2:	08 24       	jz	$+18     	;abs 0x5804

000057f4 <.Loc.414.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:414
        __port_on(3, 4);
    57f4:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    57f8:	22 02 

000057fa <.Loc.414.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:415
        __port_off(3, 4);
    57fa:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    57fe:	22 02 

00005800 <.Loc.415.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:416
        full_run_started = 0;
    5800:	c2 43 08 45 	mov.b	#0,	&0x4508	;r3 As==00

00005804 <.L64>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:420
    }
#endif

    if (pinCont){
    5804:	0d 93       	cmp	#0,	r13	;r3 As==00
    5806:	01 24       	jz	$+4      	;abs 0x580a

00005808 <.Loc.421.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:421
        __no_operation();
    5808:	03 43       	nop			

0000580a <.L65>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:425
    }


    __SET(pinCont,0);
    580a:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

0000580e <.Loc.427.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:428

    return t_init;
}
    580e:	3c 40 e2 52 	mov	#21218,	r12	;#0x52e2

00005812 <.LVL103>:
    5812:	30 41       	ret			

00005814 <thread1_init>:
thread1_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:87
void thread1_init(){
    5814:	21 83       	decd	r1		;

00005816 <.LCFI31>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:89
    __CREATE(15,t_init);
    5816:	b1 40 18 00 	mov	#24,	0(r1)	;#0x0018
    581a:	00 00 
    581c:	3f 40 22 45 	mov	#17698,	r15	;#0x4522
    5820:	3e 40 0a 45 	mov	#17674,	r14	;#0x450a
    5824:	3d 40 e2 52 	mov	#21218,	r13	;#0x52e2
    5828:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    582c:	b0 12 3a 59 	call	#22842		;#0x593a

00005830 <.Loc.90.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:90
    __SIGNAL(15);
    5830:	32 c2       	dint			
    5832:	03 43       	nop			

00005834 <.Loc.90.1>:
    5834:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5838:	b0 12 e0 59 	call	#23008		;#0x59e0
    583c:	b0 12 c4 59 	call	#22980		;#0x59c4

00005840 <.Loc.90.1>:
    5840:	03 43       	nop			
    5842:	32 d2       	eint			
    5844:	03 43       	nop			

00005846 <.Loc.91.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:91
}
    5846:	21 53       	incd	r1		;

00005848 <.LCFI32>:
    5848:	30 41       	ret			

0000584a <__app_reboot>:
__app_reboot():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:95
    __port_init(3, 4);
    584a:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    584e:	22 02 

00005850 <.Loc.95.1>:
    5850:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    5854:	24 02 

00005856 <.Loc.95.1>:
    5856:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    585a:	22 02 

0000585c <.Loc.95.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:99
}
    585c:	30 41       	ret			

0000585e <recursive_cnt>:
recursive_cnt():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:239
int recursive_cnt(uint32_t x){
    585e:	0e 4c       	mov	r12,	r14	;
    5860:	0f 4d       	mov	r13,	r15	;

00005862 <.Loc.240.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:240
    int cnt = bits[(int)(x & 0x0000000FL)];
    5862:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005866 <.LVL108>:
    5866:	5c 4c 3a 45 	mov.b	17722(r12),r12	;0x0453a

0000586a <.LVL109>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:242
    if (0L != (x >>= 4))
    586a:	12 c3       	clrc			
    586c:	0f 10       	rrc	r15		;
    586e:	0e 10       	rrc	r14		;
    5870:	12 c3       	clrc			
    5872:	0f 10       	rrc	r15		;
    5874:	0e 10       	rrc	r14		;
    5876:	12 c3       	clrc			
    5878:	0f 10       	rrc	r15		;
    587a:	0e 10       	rrc	r14		;
    587c:	12 c3       	clrc			
    587e:	0f 10       	rrc	r15		;
    5880:	0e 10       	rrc	r14		;

00005882 <.LVL110>:
    5882:	0d 4e       	mov	r14,	r13	;
    5884:	0d df       	bis	r15,	r13	;
    5886:	0d 93       	cmp	#0,	r13	;r3 As==00
    5888:	18 24       	jz	$+50     	;abs 0x58ba
    588a:	4b 43       	clr.b	r11		;

0000588c <.L74>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:243
        cnt += recursive_cnt(x);
    588c:	0b 5c       	add	r12,	r11	;

0000588e <.Loc.240.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:240
    int cnt = bits[(int)(x & 0x0000000FL)];
    588e:	0c 4e       	mov	r14,	r12	;

00005890 <.LVL111>:
    5890:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

00005894 <.Loc.240.1>:
    5894:	5c 4c 3a 45 	mov.b	17722(r12),r12	;0x0453a

00005898 <.LVL112>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:242
    if (0L != (x >>= 4))
    5898:	12 c3       	clrc			
    589a:	0f 10       	rrc	r15		;
    589c:	0e 10       	rrc	r14		;
    589e:	12 c3       	clrc			
    58a0:	0f 10       	rrc	r15		;
    58a2:	0e 10       	rrc	r14		;
    58a4:	12 c3       	clrc			
    58a6:	0f 10       	rrc	r15		;
    58a8:	0e 10       	rrc	r14		;
    58aa:	12 c3       	clrc			
    58ac:	0f 10       	rrc	r15		;
    58ae:	0e 10       	rrc	r14		;

000058b0 <.Loc.242.1>:
    58b0:	0d 4e       	mov	r14,	r13	;
    58b2:	0d df       	bis	r15,	r13	;
    58b4:	0d 93       	cmp	#0,	r13	;r3 As==00
    58b6:	ea 23       	jnz	$-42     	;abs 0x588c
    58b8:	0c 5b       	add	r11,	r12	;

000058ba <.L71>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:246
}
    58ba:	30 41       	ret			

000058bc <non_recursive_cnt>:
non_recursive_cnt():
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:248
int non_recursive_cnt(uint32_t x){
    58bc:	0e 4c       	mov	r12,	r14	;
    58be:	0f 4d       	mov	r13,	r15	;

000058c0 <.Loc.249.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:249
    int cnt = bits[(int)(x & 0x0000000FL)];
    58c0:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f

000058c4 <.LVL116>:
    58c4:	5c 4c 3a 45 	mov.b	17722(r12),r12	;0x0453a

000058c8 <.LVL117>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:251
    while (0L != (x >>= 4)) {
    58c8:	12 c3       	clrc			
    58ca:	0f 10       	rrc	r15		;
    58cc:	0e 10       	rrc	r14		;
    58ce:	12 c3       	clrc			
    58d0:	0f 10       	rrc	r15		;
    58d2:	0e 10       	rrc	r14		;
    58d4:	12 c3       	clrc			
    58d6:	0f 10       	rrc	r15		;
    58d8:	0e 10       	rrc	r14		;
    58da:	12 c3       	clrc			
    58dc:	0f 10       	rrc	r15		;
    58de:	0e 10       	rrc	r14		;

000058e0 <.Loc.251.1>:
    58e0:	0d 4e       	mov	r14,	r13	;
    58e2:	0d df       	bis	r15,	r13	;
    58e4:	0d 93       	cmp	#0,	r13	;r3 As==00
    58e6:	16 24       	jz	$+46     	;abs 0x5914

000058e8 <.L82>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:252
        cnt += bits[(int)(x & 0x0000000FL)];
    58e8:	0d 4e       	mov	r14,	r13	;
    58ea:	7d f0 0f 00 	and.b	#15,	r13	;#0x000f

000058ee <.Loc.252.1>:
    58ee:	5d 4d 3a 45 	mov.b	17722(r13),r13	;0x0453a
    58f2:	0c 5d       	add	r13,	r12	;

000058f4 <.Loc.251.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:251
    while (0L != (x >>= 4)) {
    58f4:	12 c3       	clrc			
    58f6:	0f 10       	rrc	r15		;
    58f8:	0e 10       	rrc	r14		;
    58fa:	12 c3       	clrc			
    58fc:	0f 10       	rrc	r15		;
    58fe:	0e 10       	rrc	r14		;
    5900:	12 c3       	clrc			
    5902:	0f 10       	rrc	r15		;
    5904:	0e 10       	rrc	r14		;
    5906:	12 c3       	clrc			
    5908:	0f 10       	rrc	r15		;
    590a:	0e 10       	rrc	r14		;

0000590c <.Loc.251.1>:
    590c:	0d 4e       	mov	r14,	r13	;
    590e:	0d df       	bis	r15,	r13	;
    5910:	0d 93       	cmp	#0,	r13	;r3 As==00
    5912:	ea 23       	jnz	$-42     	;abs 0x58e8

00005914 <.L79>:
/workspaces/Thesis_Repo/InK/legacy-gcc/benchmarks/bitcount_eval/thread1.c:256
}
    5914:	30 41       	ret			

00005916 <__scheduler_boot_init>:
__scheduler_boot_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:54

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    5916:	
00005918 <L0^A>:
    5918:	3e 46       	mov	@r6+,	r14	;
    591a:	b0 12 1a 6a 	call	#27162		;#0x6a1a

0000591e <.Loc.54.1>:
    591e:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00005922 <.L2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:58

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    5922:	0c 4d       	mov	r13,	r12	;
    5924:	5c 02       	rlam	#1,	r12	;
    5926:	0c 5d       	add	r13,	r12	;
    5928:	5c 0a       	rlam	#3,	r12	;
    592a:	1c 4c 4a 46 	mov	17994(r12),r12	;0x0464a

0000592e <.LVL2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:56
    for (i = MAX_THREADS; i > 0; i--){
    592e:	3d 53       	add	#-1,	r13	;r3 As==11

00005930 <.Loc.56.1>:
    5930:	0d 93       	cmp	#0,	r13	;r3 As==00
    5932:	f7 23       	jnz	$-16     	;abs 0x5922

00005934 <.Loc.60.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:60
    }
    _sched_state = SCHED_SELECT;
    5934:	c2 43 3a 46 	mov.b	#0,	&0x463a	;r3 As==00

00005938 <.Loc.61.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:61
}
    5938:	30 41       	ret			

0000593a <__create_thread>:
__create_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:66

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    593a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000593e <.Loc.68.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:68
    // init properties
    _threads[priority].priority = priority;
    593e:	0b 4c       	mov	r12,	r11	;
    5940:	5b 02       	rlam	#1,	r11	;
    5942:	0b 5c       	add	r12,	r11	;
    5944:	5b 0a       	rlam	#3,	r11	;
    5946:	cb 4c 48 46 	mov.b	r12,	17992(r11); 0x4648

0000594a <.Loc.69.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:69
    _threads[priority].entry = entry;
    594a:	8b 4d 4c 46 	mov	r13,	17996(r11); 0x464c

0000594e <.Loc.70.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:70
    _threads[priority].next = entry;
    594e:	8b 4d 4e 46 	mov	r13,	17998(r11); 0x464e

00005952 <.Loc.71.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:71
    _threads[priority].state = THREAD_STOPPED;
    5952:	bb 40 10 00 	mov	#16,	17994(r11);#0x0010, 0x464a
    5956:	4a 46 

00005958 <.Loc.74.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:74

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    5958:	8b 4e 50 46 	mov	r14,	18000(r11); 0x4650

0000595c <.Loc.75.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:75
    _threads[priority].buffer.buf[1] = data_temp;
    595c:	8b 4f 52 46 	mov	r15,	18002(r11); 0x4652

00005960 <.Loc.76.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:76
    _threads[priority].buffer.idx = 0;
    5960:	cb 43 54 46 	mov.b	#0,	18004(r11);r3 As==00, 0x4654

00005964 <.Loc.77.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:77
    _threads[priority].buffer.size = size;
    5964:	9b 41 02 00 	mov	2(r1),	18006(r11); 0x4656
    5968:	56 46 

0000596a <.Loc.78.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:78
}
    596a:	30 41       	ret			

0000596c <__stop_thread>:
__stop_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:81

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    596c:	0a 15       	pushm	#1,	r10	;16-bit words

0000596e <.LCFI0>:
    596e:	0a 4c       	mov	r12,	r10	;

00005970 <.Loc.82.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:82
    __priority_remove(thread->priority, &_priorities);
    5970:	3d 40 3e 46 	mov	#17982,	r13	;#0x463e
    5974:	6c 4c       	mov.b	@r12,	r12	;

00005976 <.LVL6>:
    5976:	b0 12 60 6a 	call	#27232		;#0x6a60

0000597a <.Loc.83.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:83
    thread->state = THREAD_STOPPED;
    597a:	ba 40 10 00 	mov	#16,	2(r10)	;#0x0010
    597e:	02 00 

00005980 <.Loc.84.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:84
}
    5980:	0a 17       	popm	#1,	r10	;16-bit words

00005982 <.LCFI1>:
    5982:	30 41       	ret			

00005984 <__evict_thread>:
__evict_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:87

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    5984:	0a 15       	pushm	#1,	r10	;16-bit words

00005986 <.LCFI2>:
    5986:	0a 4c       	mov	r12,	r10	;

00005988 <.Loc.88.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:88
    __priority_remove(thread->priority, &_priorities);
    5988:	3d 40 3e 46 	mov	#17982,	r13	;#0x463e
    598c:	6c 4c       	mov.b	@r12,	r12	;

0000598e <.LVL9>:
    598e:	b0 12 60 6a 	call	#27232		;#0x6a60

00005992 <.Loc.89.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:89
    thread->next = NULL;
    5992:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

00005996 <.Loc.90.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:90
    thread->state = THREAD_STOPPED;
    5996:	ba 40 10 00 	mov	#16,	2(r10)	;#0x0010
    599a:	02 00 

0000599c <.Loc.91.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:91
}
    599c:	0a 17       	popm	#1,	r10	;16-bit words

0000599e <.LCFI3>:
    599e:	30 41       	ret			

000059a0 <__set_sing_timer>:
__set_sing_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:94

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    59a0:	8c 4d 10 00 	mov	r13,	16(r12)	; 0x0010

000059a4 <.Loc.95.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:96
    return;
}
    59a4:	30 41       	ret			

000059a6 <__set_expr_timer>:
__set_expr_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:100

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    59a6:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

000059aa <.Loc.101.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:102
    return;
}
    59aa:	30 41       	ret			

000059ac <__set_pdc_timer>:
__set_pdc_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:106


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    59ac:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000059b0 <.Loc.107.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:108
    return;
}
    59b0:	30 41       	ret			

000059b2 <__set_pdc_period>:
__set_pdc_period():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:111

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    59b2:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

000059b6 <.Loc.112.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:113
    return;
}
    59b6:	30 41       	ret			

000059b8 <__get_pdc_timer>:
__get_pdc_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:117

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    59b8:	1c 4c 12 00 	mov	18(r12),r12	;0x00012

000059bc <.LVL16>:
    59bc:	30 41       	ret			

000059be <__get_pdc_period>:
__get_pdc_period():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:121

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    59be:	1c 4c 16 00 	mov	22(r12),r12	;0x00016

000059c2 <.LVL18>:
    59c2:	30 41       	ret			

000059c4 <__start_thread>:
__start_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:124

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    59c4:	0a 15       	pushm	#1,	r10	;16-bit words

000059c6 <.LCFI4>:
    59c6:	0a 4c       	mov	r12,	r10	;

000059c8 <.Loc.125.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:125
    thread->next = thread->entry;
    59c8:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    59cc:	06 00 

000059ce <.Loc.126.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:126
    __priority_insert(thread->priority, &_priorities);
    59ce:	3d 40 3e 46 	mov	#17982,	r13	;#0x463e
    59d2:	6c 4c       	mov.b	@r12,	r12	;

000059d4 <.LVL20>:
    59d4:	b0 12 40 6a 	call	#27200		;#0x6a40

000059d8 <.Loc.127.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:127
    thread->state = TASK_READY;
    59d8:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

000059dc <.Loc.128.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:128
}
    59dc:	0a 17       	popm	#1,	r10	;16-bit words

000059de <.LCFI5>:
    59de:	30 41       	ret			

000059e0 <__get_thread>:
__get_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:139
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    59e0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000059e4 <.Loc.140.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:140
    return &_threads[priority];
    59e4:	0d 4c       	mov	r12,	r13	;
    59e6:	5d 02       	rlam	#1,	r13	;
    59e8:	0c 5d       	add	r13,	r12	;

000059ea <.LVL23>:
    59ea:	5c 0a       	rlam	#3,	r12	;

000059ec <.Loc.141.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:141
}
    59ec:	3c 50 48 46 	add	#17992,	r12	;#0x4648
    59f0:	30 41       	ret			

000059f2 <__scheduler_run>:
__scheduler_run():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:157
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    59f2:	b0 12 46 67 	call	#26438		;#0x6746

000059f6 <.LBB8>:
__task_commit():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:145
    if(_thread){
    59f6:	82 93 3c 46 	cmp	#0,	&0x463c	;r3 As==00
    59fa:	04 24       	jz	$+10     	;abs 0x5a04

000059fc <.Loc.146.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:146
        __tick(_thread);
    59fc:	1c 42 3c 46 	mov	&0x463c,r12	;0x463c
    5a00:	b0 12 8e 5a 	call	#23182		;#0x5a8e

00005a04 <.L17>:
__scheduler_run():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:167
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    5a04:	b0 12 be 5b 	call	#23486		;#0x5bbe

00005a08 <.Loc.169.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:169
    // enable interrupts
    __enable_interrupt();
    5a08:	03 43       	nop			
    5a0a:	32 d2       	eint			
    5a0c:	03 43       	nop			

00005a0e <.L20>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:172

    while (1){
        switch (_sched_state){
    5a0e:	5c 42 3a 46 	mov.b	&0x463a,r12	;0x463a
    5a12:	0c 93       	cmp	#0,	r12	;r3 As==00
    5a14:	10 24       	jz	$+34     	;abs 0x5a36

00005a16 <.L29>:
    5a16:	1c 93       	cmp	#1,	r12	;r3 As==01
    5a18:	fa 23       	jnz	$-10     	;abs 0x5a0e
    5a1a:	1c 42 3c 46 	mov	&0x463c,r12	;0x463c

00005a1e <.Loc.184.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:184
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    5a1e:	0c 93       	cmp	#0,	r12	;r3 As==00
    5a20:	22 24       	jz	$+70     	;abs 0x5a66

00005a22 <.L21>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:186
#ifdef RAISE_PIN
                __port_off(1, 3);
    5a22:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005a26 <.Loc.186.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:188
#endif
                __tick(_thread);
    5a26:	b0 12 8e 5a 	call	#23182		;#0x5a8e

00005a2a <.Loc.190.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:190
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    5a2a:	c2 43 3a 46 	mov.b	#0,	&0x463a	;r3 As==00

00005a2e <.Loc.171.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:172
        switch (_sched_state){
    5a2e:	5c 42 3a 46 	mov.b	&0x463a,r12	;0x463a
    5a32:	0c 93       	cmp	#0,	r12	;r3 As==00
    5a34:	f0 23       	jnz	$-30     	;abs 0x5a16

00005a36 <.L19>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:175
            __port_on(1, 3);
    5a36:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005a3a <.LBB10>:
__next_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:132
    uint8_t idx = __priority_highest(&_priorities);
    5a3a:	3c 40 3e 46 	mov	#17982,	r12	;#0x463e
    5a3e:	b0 12 88 6a 	call	#27272		;#0x6a88
    5a42:	4d 4c       	mov.b	r12,	r13	;

00005a44 <.LVL29>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:133
    if(idx)
    5a44:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5a46:	0b 24       	jz	$+24     	;abs 0x5a5e

00005a48 <.Loc.134.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:134
        return &_threads[idx];
    5a48:	0c 4d       	mov	r13,	r12	;
    5a4a:	5c 02       	rlam	#1,	r12	;

00005a4c <.LVL30>:
    5a4c:	0c 5d       	add	r13,	r12	;
    5a4e:	5c 0a       	rlam	#3,	r12	;
    5a50:	3c 50 48 46 	add	#17992,	r12	;#0x4648

00005a54 <.LBE10>:
__scheduler_run():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:179
            _thread = __next_thread();
    5a54:	82 4c 3c 46 	mov	r12,	&0x463c	;

00005a58 <.Loc.180.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:180
            _sched_state = SCHED_BUSY;
    5a58:	d2 43 3a 46 	mov.b	#1,	&0x463a	;r3 As==01

00005a5c <.Loc.184.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:184
            if (_thread){
    5a5c:	e2 3f       	jmp	$-58     	;abs 0x5a22

00005a5e <.L30>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:179
            _thread = __next_thread();
    5a5e:	82 43 3c 46 	mov	#0,	&0x463c	;r3 As==00

00005a62 <.Loc.180.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:180
            _sched_state = SCHED_BUSY;
    5a62:	d2 43 3a 46 	mov.b	#1,	&0x463a	;r3 As==01

00005a66 <.L22>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:193
                break;
            }
            _sched_state = SCHED_SELECT;
    5a66:	c2 43 3a 46 	mov.b	#0,	&0x463a	;r3 As==00

00005a6a <.Loc.194.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:194
            __disable_interrupt();
    5a6a:	32 c2       	dint			
    5a6c:	03 43       	nop			

00005a6e <.LBB12>:
__next_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:132
    uint8_t idx = __priority_highest(&_priorities);
    5a6e:	3c 40 3e 46 	mov	#17982,	r12	;#0x463e
    5a72:	b0 12 88 6a 	call	#27272		;#0x6a88

00005a76 <.LVL33>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:133
    if(idx)
    5a76:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5a78:	ca 23       	jnz	$-106    	;abs 0x5a0e

00005a7a <.LBE12>:
__scheduler_run():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:198
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    5a7a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005a7e <.Loc.198.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:200
#endif
                __mcu_sleep();
    5a7e:	03 43       	nop			
    5a80:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    5a84:	03 43       	nop			

00005a86 <.Loc.201.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/scheduler.c:201
                __enable_interrupt();
    5a86:	03 43       	nop			
    5a88:	32 d2       	eint			
    5a8a:	03 43       	nop			
    5a8c:	c0 3f       	jmp	$-126    	;abs 0x5a0e

00005a8e <__tick>:
__tick():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:52

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    5a8e:	1a 15       	pushm	#2,	r10	;16-bit words

00005a90 <.LCFI0>:
    5a90:	0a 4c       	mov	r12,	r10	;

00005a92 <L0^A>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:54
    void *buf;
    switch (thread->state)
    5a92:	1c 4c 02 00 	mov	2(r12),	r12	;

00005a96 <.LVL1>:
    5a96:	2c 92       	cmp	#4,	r12	;r2 As==10
    5a98:	0f 24       	jz	$+32     	;abs 0x5ab8
    5a9a:	6d 42       	mov.b	#4,	r13	;r2 As==10
    5a9c:	0d 9c       	cmp	r12,	r13	;
    5a9e:	30 28       	jnc	$+98     	;abs 0x5b00
    5aa0:	1c 93       	cmp	#1,	r12	;r3 As==01
    5aa2:	3d 24       	jz	$+124    	;abs 0x5b1e
    5aa4:	2c 93       	cmp	#2,	r12	;r3 As==10
    5aa6:	2a 20       	jnz	$+86     	;abs 0x5afc

00005aa8 <.L5>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:88
#ifdef RAISE_PIN
        __port_off(1, 4);
#endif
    case TASK_RELEASE_EVENT:
#ifdef RAISE_PIN
        __port_on(3,5);
    5aa8:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5aac:	22 02 

00005aae <.Loc.88.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:91
#endif
        // release any event which is popped by the task
        __release_event(thread);
    5aae:	0c 4a       	mov	r10,	r12	;
    5ab0:	b0 12 9a 68 	call	#26778		;#0x689a

00005ab4 <.Loc.92.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:92
        thread->state = TASK_FINISHED;
    5ab4:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005ab8 <.L2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:95
    case TASK_FINISHED:
#ifdef RAISE_PIN
        __port_on(3,5);
    5ab8:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5abc:	22 02 

00005abe <.Loc.95.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:98
#endif
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
    5abe:	5c 4a 0c 00 	mov.b	12(r10),r12	;0x0000c
    5ac2:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5ac4:	ca 4c 0d 00 	mov.b	r12,	13(r10)	; 0x000d

00005ac8 <.Loc.99.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:99
        thread->state = TASK_COMMIT;
    5ac8:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005acc <.Loc.102.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:102
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
    5acc:	da 4a 0d 00 	mov.b	13(r10),12(r10)	;0x0000d, 0x000c
    5ad0:	0c 00 

00005ad2 <.Loc.104.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:104
        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
    5ad2:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    5ad6:	1c 20       	jnz	$+58     	;abs 0x5b10

00005ad8 <.L24>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:106
        {
            __disable_interrupt();
    5ad8:	32 c2       	dint			
    5ada:	03 43       	nop			

00005adc <.Loc.108.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:108
            // check if there are any pending events
            if(!__has_events(thread)){
    5adc:	0c 4a       	mov	r10,	r12	;
    5ade:	b0 12 4e 68 	call	#26702		;#0x684e

00005ae2 <.Loc.108.1>:
    5ae2:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5ae4:	52 24       	jz	$+166    	;abs 0x5b8a

00005ae6 <.Loc.114.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:114
                // suspend the thread if there are no pending events
                __stop_thread(thread);
            }
            else{
                // thread re-starts from the entry task
                thread->next = thread->entry;
    5ae6:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    5aea:	06 00 

00005aec <.Loc.116.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:116
                // ready to execute tasks again.
                thread->state = TASK_READY;
    5aec:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005af0 <.Loc.118.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:118
            }
            __enable_interrupt();
    5af0:	03 43       	nop			
    5af2:	32 d2       	eint			
    5af4:	03 43       	nop			

00005af6 <.L26>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:125
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    5af6:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5afa:	22 02 

00005afc <.L1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:128
#endif
    }
}
    5afc:	19 17       	popm	#2,	r10	;16-bit words

00005afe <.LCFI1>:
    5afe:	30 41       	ret			

00005b00 <.L3>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:54
    switch (thread->state)
    5b00:	3c 92       	cmp	#8,	r12	;r2 As==11
    5b02:	fc 23       	jnz	$-6      	;abs 0x5afc

00005b04 <.Loc.102.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:102
        thread->buffer.idx = thread->buffer._idx;
    5b04:	da 4a 0d 00 	mov.b	13(r10),12(r10)	;0x0000d, 0x000c
    5b08:	0c 00 

00005b0a <.Loc.104.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:104
        if (thread->next == NULL)
    5b0a:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    5b0e:	e4 27       	jz	$-54     	;abs 0x5ad8

00005b10 <.L9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:122
            thread->state = TASK_READY;
    5b10:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005b14 <.Loc.125.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:125
        __port_off(3,5);
    5b14:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5b18:	22 02 

00005b1a <.Loc.125.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:128
}
    5b1a:	19 17       	popm	#2,	r10	;16-bit words

00005b1c <.LCFI3>:
    5b1c:	30 41       	ret			

00005b1e <.L4>:
__prologue():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:40
    __port_on(3,6);
    5b1e:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    5b22:	22 02 

00005b24 <.Loc.40.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:43
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    5b24:	5f 4a 0c 00 	mov.b	12(r10),r15	;0x0000c

00005b28 <.Loc.43.1>:
    5b28:	5c 4a 0c 00 	mov.b	12(r10),r12	;0x0000c
    5b2c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5b2e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005b32 <.Loc.43.1>:
    5b32:	5c 02       	rlam	#1,	r12	;
    5b34:	0c 5a       	add	r10,	r12	;
    5b36:	5f 02       	rlam	#1,	r15	;
    5b38:	0f 5a       	add	r10,	r15	;
    5b3a:	1e 4a 0e 00 	mov	14(r10),r14	;0x0000e
    5b3e:	5e 03       	rrum	#1,	r14	;
    5b40:	1d 4c 08 00 	mov	8(r12),	r13	;
    5b44:	1c 4f 08 00 	mov	8(r15),	r12	;
    5b48:	b0 12 92 69 	call	#27026		;#0x6992

00005b4c <.Loc.45.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:45
    __port_off(3,6);
    5b4c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5b50:	22 02 

00005b52 <.LBE5>:
__tick():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:60
        __port_on(1, 4);
    5b52:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5b56:	02 02 

00005b58 <.Loc.60.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:63
        buf = thread->buffer.buf[thread->buffer._idx^1];
    5b58:	5c 4a 0d 00 	mov.b	13(r10),r12	;0x0000d
    5b5c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5b5e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005b62 <.Loc.63.1>:
    5b62:	2c 52       	add	#4,	r12	;r2 As==10
    5b64:	5c 02       	rlam	#1,	r12	;
    5b66:	0c 5a       	add	r10,	r12	;
    5b68:	29 4c       	mov	@r12,	r9	;

00005b6a <.LVL7>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:66
        if(thread->next == thread->entry){
    5b6a:	1d 4a 06 00 	mov	6(r10),	r13	;

00005b6e <.Loc.66.1>:
    5b6e:	1d 9a 04 00 	cmp	4(r10),	r13	;
    5b72:	12 24       	jz	$+38     	;abs 0x5b98
    5b74:	0c 49       	mov	r9,	r12	;

00005b76 <.Loc.76.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:76
            thread->next = (void *)(((task_t)thread->next)(buf));
    5b76:	8d 12       	call	r13		;

00005b78 <.Loc.76.1>:
    5b78:	8a 4c 06 00 	mov	r12,	6(r10)	;

00005b7c <.Loc.77.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:77
            thread->state = TASK_FINISHED;
    5b7c:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005b80 <.Loc.79.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:79
            __port_off(1, 4);
    5b80:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5b84:	02 02 

00005b86 <.Loc.128.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:128
}
    5b86:	19 17       	popm	#2,	r10	;16-bit words

00005b88 <.LCFI5>:
    5b88:	30 41       	ret			

00005b8a <.L23>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:110
                __stop_thread(thread);
    5b8a:	0c 4a       	mov	r10,	r12	;
    5b8c:	b0 12 6c 59 	call	#22892		;#0x596c

00005b90 <.Loc.118.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:118
            __enable_interrupt();
    5b90:	03 43       	nop			
    5b92:	32 d2       	eint			
    5b94:	03 43       	nop			
    5b96:	af 3f       	jmp	$-160    	;abs 0x5af6

00005b98 <.L25>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:69
            isr_event_t *event = __lock_event(thread);
    5b98:	0c 4a       	mov	r10,	r12	;
    5b9a:	b0 12 6c 68 	call	#26732		;#0x686c

00005b9e <.LVL12>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:71
            thread->next = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    5b9e:	0d 4c       	mov	r12,	r13	;
    5ba0:	0c 49       	mov	r9,	r12	;

00005ba2 <.LVL13>:
    5ba2:	1e 4a 04 00 	mov	4(r10),	r14	;
    5ba6:	8e 12       	call	r14		;

00005ba8 <.LVL14>:
    5ba8:	8a 4c 06 00 	mov	r12,	6(r10)	;

00005bac <.Loc.73.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:73
            thread->state = TASK_RELEASE_EVENT;
    5bac:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00005bb0 <.LBE7>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:84
        __port_off(1, 4);
    5bb0:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5bb4:	02 02 
    5bb6:	78 3f       	jmp	$-270    	;abs 0x5aa8

00005bb8 <__timers_init>:
__timers_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/thread.c:84
    5bb8:	b0 12 82 6b 	call	#27522		;#0x6b82

00005bbc <L0^A>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:64


void __timers_init()
{
    _pers_timer_init();
}
    5bbc:	30 41       	ret			

00005bbe <__reboot_timers>:
__reboot_timers():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:91
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    5bbe:	30 41       	ret			

00005bc0 <clear_wkup_status>:
clear_wkup_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:98
//WKUP timers 
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    5bc0:	0a 15       	pushm	#1,	r10	;16-bit words

00005bc2 <.LCFI0>:
    5bc2:	4a 4c       	mov.b	r12,	r10	;

00005bc4 <.Loc.100.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:103
    
    uint8_t i; 
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    5bc4:	5c 92 34 1c 	cmp.b	&0x1c34,r12	;0x1c34
    5bc8:	19 24       	jz	$+52     	;abs 0x5bfc

00005bca <.L5>:
    5bca:	c2 9a 3e 1c 	cmp.b	r10,	&0x1c3e	;
    5bce:	0e 24       	jz	$+30     	;abs 0x5bec

00005bd0 <.L6>:
    5bd0:	c2 9a 48 1c 	cmp.b	r10,	&0x1c48	;
    5bd4:	02 24       	jz	$+6      	;abs 0x5bda

00005bd6 <.Loc.109.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:109
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    5bd6:	0a 17       	popm	#1,	r10	;16-bit words

00005bd8 <.LCFI1>:
    5bd8:	30 41       	ret			

00005bda <.L10>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:104
            wkup_timing[i].status = NOT_USED;
    5bda:	82 43 46 1c 	mov	#0,	&0x1c46	;r3 As==00

00005bde <.Loc.105.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:105
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5bde:	4e 43       	clr.b	r14		;
    5be0:	4d 43       	clr.b	r13		;
    5be2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5be4:	b0 12 44 6c 	call	#27716		;#0x6c44

00005be8 <.Loc.101.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:109
}
    5be8:	0a 17       	popm	#1,	r10	;16-bit words

00005bea <.LCFI3>:
    5bea:	30 41       	ret			

00005bec <.L9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:104
            wkup_timing[i].status = NOT_USED;
    5bec:	82 43 3c 1c 	mov	#0,	&0x1c3c	;r3 As==00

00005bf0 <.Loc.105.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:105
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5bf0:	4e 43       	clr.b	r14		;
    5bf2:	4d 43       	clr.b	r13		;
    5bf4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5bf6:	b0 12 44 6c 	call	#27716		;#0x6c44
    5bfa:	ea 3f       	jmp	$-42     	;abs 0x5bd0

00005bfc <.L8>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:104
            wkup_timing[i].status = NOT_USED;
    5bfc:	82 43 32 1c 	mov	#0,	&0x1c32	;r3 As==00

00005c00 <.Loc.105.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:105
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5c00:	4e 43       	clr.b	r14		;
    5c02:	4d 43       	clr.b	r13		;
    5c04:	4c 43       	clr.b	r12		;

00005c06 <.LVL9>:
    5c06:	b0 12 44 6c 	call	#27716		;#0x6c44
    5c0a:	df 3f       	jmp	$-64     	;abs 0x5bca

00005c0c <unpack_wkup_to_local>:
unpack_wkup_to_local():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:112

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    5c0c:	2a 15       	pushm	#3,	r10	;16-bit words

00005c0e <.LCFI5>:
    5c0e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005c12 <.LCFI6>:
    5c12:	49 43       	clr.b	r9		;
    5c14:	38 40 32 1c 	mov	#7218,	r8	;#0x1c32

00005c18 <.L12>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:117

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5c18:	0a 49       	mov	r9,	r10	;
    5c1a:	5a 06       	rlam	#2,	r10	;
    5c1c:	0a 59       	add	r9,	r10	;
    5c1e:	5a 02       	rlam	#1,	r10	;
    5c20:	0a 58       	add	r8,	r10	;
    5c22:	4e 43       	clr.b	r14		;
    5c24:	4d 49       	mov.b	r9,	r13	;
    5c26:	0c 41       	mov	r1,	r12	;
    5c28:	b0 12 40 6e 	call	#28224		;#0x6e40
    5c2c:	aa 41 00 00 	mov	@r1,	0(r10)	;
    5c30:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    5c34:	02 00 
    5c36:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    5c3a:	04 00 
    5c3c:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    5c40:	06 00 
    5c42:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    5c46:	08 00 

00005c48 <.LVL14>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:115
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5c48:	19 53       	inc	r9		;

00005c4a <.Loc.115.1>:
    5c4a:	39 90 03 00 	cmp	#3,	r9	;
    5c4e:	e4 23       	jnz	$-54     	;abs 0x5c18

00005c50 <.Loc.120.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:120
    }

}
    5c50:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005c54 <.LCFI7>:
    5c54:	28 17       	popm	#3,	r10	;16-bit words

00005c56 <.LCFI8>:
    5c56:	30 41       	ret			

00005c58 <refresh_wkup_timers>:
refresh_wkup_timers():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:123

//updates the information on which thread is scheduled to execute next based on timing 
void refresh_wkup_timers(){
    5c58:	5a 15       	pushm	#6,	r10	;16-bit words

00005c5a <.LCFI9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:125

    uint8_t i,first = 1;
    5c5a:	5e 43       	mov.b	#1,	r14	;r3 As==01

00005c5c <.Loc.127.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5c5c:	4a 43       	clr.b	r10		;
    5c5e:	38 40 32 1c 	mov	#7218,	r8	;#0x1c32

00005c62 <.L40>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:130
    {

        if (wkup_timing[i].status == USED)
    5c62:	09 4a       	mov	r10,	r9	;
    5c64:	05 4a       	mov	r10,	r5	;
    5c66:	55 06       	rlam	#2,	r5	;
    5c68:	0c 45       	mov	r5,	r12	;
    5c6a:	0c 5a       	add	r10,	r12	;
    5c6c:	5c 02       	rlam	#1,	r12	;
    5c6e:	0d 4c       	mov	r12,	r13	;
    5c70:	3d 50 32 1c 	add	#7218,	r13	;#0x1c32

00005c74 <.Loc.130.1>:
    5c74:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5c78:	0c 24       	jz	$+26     	;abs 0x5c92

00005c7a <.L15>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5c7a:	4c 4a       	mov.b	r10,	r12	;
    5c7c:	5c 53       	inc.b	r12		;
    5c7e:	4a 4c       	mov.b	r12,	r10	;

00005c80 <.LVL19>:
    5c80:	7c 90 03 00 	cmp.b	#3,	r12	;
    5c84:	ee 23       	jnz	$-34     	;abs 0x5c62

00005c86 <.Loc.164.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:164
                }
            }
       }
    }

    if (!first)
    5c86:	0e 93       	cmp	#0,	r14	;r3 As==00
    5c88:	54 24       	jz	$+170    	;abs 0x5d32

00005c8a <.Loc.174.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:174
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    5c8a:	b0 12 9e 6a 	call	#27294		;#0x6a9e

00005c8e <.LVL20>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:177


}
    5c8e:	55 17       	popm	#6,	r10	;16-bit words

00005c90 <.LCFI10>:
    5c90:	30 41       	ret			

00005c92 <.L84>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:133
            if (first)
    5c92:	16 4d 04 00 	mov	4(r13),	r6	;
    5c96:	17 4d 06 00 	mov	6(r13),	r7	;

00005c9a <.Loc.133.1>:
    5c9a:	0e 93       	cmp	#0,	r14	;r3 As==00
    5c9c:	05 24       	jz	$+12     	;abs 0x5ca8

00005c9e <.Loc.135.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:135
                min_wkup = wkup_timing[i].data;
    5c9e:	82 46 58 1c 	mov	r6,	&0x1c58	;

00005ca2 <.Loc.136.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:136
                nxt_wkup = wkup_timing[i].thread_id;
    5ca2:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5a	;
    5ca6:	5a 1c 

00005ca8 <.L17>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:141
            wkup_timing[i].data = wkup_timing[i].data - __get_time(); 
    5ca8:	b0 12 40 6b 	call	#27456		;#0x6b40

00005cac <.Loc.141.1>:
    5cac:	0e 46       	mov	r6,	r14	;
    5cae:	0f 47       	mov	r7,	r15	;
    5cb0:	0e 8c       	sub	r12,	r14	;
    5cb2:	0f 7d       	subc	r13,	r15	;

00005cb4 <.Loc.141.1>:
    5cb4:	05 5a       	add	r10,	r5	;
    5cb6:	55 02       	rlam	#1,	r5	;
    5cb8:	05 58       	add	r8,	r5	;
    5cba:	85 4e 04 00 	mov	r14,	4(r5)	;
    5cbe:	85 4f 06 00 	mov	r15,	6(r5)	;

00005cc2 <.Loc.142.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:142
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    5cc2:	4d 43       	clr.b	r13		;
    5cc4:	4c 4a       	mov.b	r10,	r12	;
    5cc6:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00005cca <.Loc.144.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:144
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5cca:	1c 45 04 00 	mov	4(r5),	r12	;
    5cce:	1d 45 06 00 	mov	6(r5),	r13	;
    5cd2:	4b 4a       	mov.b	r10,	r11	;
    5cd4:	5b 53       	inc.b	r11		;
    5cd6:	4a 4b       	mov.b	r11,	r10	;

00005cd8 <.Loc.144.1>:
    5cd8:	07 4d       	mov	r13,	r7	;
    5cda:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cdc:	3b 38       	jl	$+120    	;abs 0x5d54

00005cde <.Loc.151.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:153
            if (wkup_timing[i].data > 0)
    5cde:	0e 4c       	mov	r12,	r14	;
    5ce0:	0e dd       	bis	r13,	r14	;
    5ce2:	0e 93       	cmp	#0,	r14	;r3 As==00
    5ce4:	af 24       	jz	$+352    	;abs 0x5e44

00005ce6 <.Loc.155.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:155
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5ce6:	16 42 58 1c 	mov	&0x1c58,r6	;0x1c58
    5cea:	0e 46       	mov	r6,	r14	;
    5cec:	0f 43       	clr	r15		;

00005cee <.Loc.155.1>:
    5cee:	0d 93       	cmp	#0,	r13	;r3 As==00
    5cf0:	18 34       	jge	$+50     	;abs 0x5d22

00005cf2 <.L50>:
    5cf2:	0e 49       	mov	r9,	r14	;
    5cf4:	5e 06       	rlam	#2,	r14	;
    5cf6:	09 5e       	add	r14,	r9	;
    5cf8:	59 02       	rlam	#1,	r9	;
    5cfa:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005cfe <.L37>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:157
                    min_wkup = wkup_timing[i].data;
    5cfe:	82 4c 58 1c 	mov	r12,	&0x1c58	;

00005d02 <.Loc.158.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:158
                    nxt_wkup = wkup_timing[i].thread_id;
    5d02:	c2 4e 5a 1c 	mov.b	r14,	&0x1c5a	;

00005d06 <.Loc.127.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d06:	7b 90 03 00 	cmp.b	#3,	r11	;
    5d0a:	15 24       	jz	$+44     	;abs 0x5d36

00005d0c <.L74>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:130
        if (wkup_timing[i].status == USED)
    5d0c:	09 4a       	mov	r10,	r9	;
    5d0e:	05 4a       	mov	r10,	r5	;
    5d10:	55 06       	rlam	#2,	r5	;
    5d12:	0c 45       	mov	r5,	r12	;
    5d14:	0c 5a       	add	r10,	r12	;
    5d16:	5c 02       	rlam	#1,	r12	;

00005d18 <.Loc.130.1>:
    5d18:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5d1c:	41 24       	jz	$+132    	;abs 0x5da0

00005d1e <.L91>:
    5d1e:	4e 43       	clr.b	r14		;
    5d20:	ac 3f       	jmp	$-166    	;abs 0x5c7a

00005d22 <.L87>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:155
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5d22:	0d 93       	cmp	#0,	r13	;r3 As==00
    5d24:	62 24       	jz	$+198    	;abs 0x5dea

00005d26 <.L35>:
    5d26:	07 4c       	mov	r12,	r7	;
    5d28:	0c 9e       	cmp	r14,	r12	;
    5d2a:	79 24       	jz	$+244    	;abs 0x5e1e

00005d2c <.L38>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d2c:	7b 90 03 00 	cmp.b	#3,	r11	;
    5d30:	ed 23       	jnz	$-36     	;abs 0x5d0c

00005d32 <.L72>:
    5d32:	5e 42 5a 1c 	mov.b	&0x1c5a,r14	;0x1c5a

00005d36 <.L43>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:166
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    5d36:	4d 4e       	mov.b	r14,	r13	;
    5d38:	4c 43       	clr.b	r12		;
    5d3a:	b0 12 8c 6c 	call	#27788		;#0x6c8c

00005d3e <.Loc.167.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:167
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    5d3e:	1d 42 58 1c 	mov	&0x1c58,r13	;0x1c58
    5d42:	4c 43       	clr.b	r12		;
    5d44:	b0 12 9a 6c 	call	#27802		;#0x6c9a

00005d48 <.Loc.171.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:171
        set_timer_wkup(min_wkup);
    5d48:	1c 42 58 1c 	mov	&0x1c58,r12	;0x1c58
    5d4c:	b0 12 b2 6a 	call	#27314		;#0x6ab2

00005d50 <.Loc.177.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:177
}
    5d50:	55 17       	popm	#6,	r10	;16-bit words

00005d52 <.LCFI12>:
    5d52:	30 41       	ret			

00005d54 <.L85>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:144
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5d54:	5e 42 5b 1c 	mov.b	&0x1c5b,r14	;0x1c5b
    5d58:	06 43       	clr	r6		;
    5d5a:	06 8e       	sub	r14,	r6	;
    5d5c:	0e 46       	mov	r6,	r14	;
    5d5e:	0f 46       	mov	r6,	r15	;
    5d60:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005d64 <.Loc.144.1>:
    5d64:	05 4f       	mov	r15,	r5	;
    5d66:	0f 9d       	cmp	r13,	r15	;
    5d68:	25 38       	jl	$+76     	;abs 0x5db4

00005d6a <.Loc.144.1>:
    5d6a:	0d 9f       	cmp	r15,	r13	;
    5d6c:	21 24       	jz	$+68     	;abs 0x5db0

00005d6e <.L20>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:151
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    5d6e:	07 4d       	mov	r13,	r7	;
    5d70:	0d 9f       	cmp	r15,	r13	;
    5d72:	04 38       	jl	$+10     	;abs 0x5d7c
    5d74:	0f 9d       	cmp	r13,	r15	;
    5d76:	da 23       	jnz	$-74     	;abs 0x5d2c
    5d78:	0c 96       	cmp	r6,	r12	;
    5d7a:	d8 2f       	jc	$-78     	;abs 0x5d2c

00005d7c <.L30>:
    5d7c:	0c 49       	mov	r9,	r12	;
    5d7e:	5c 06       	rlam	#2,	r12	;
    5d80:	09 5c       	add	r12,	r9	;
    5d82:	59 02       	rlam	#1,	r9	;
    5d84:	89 43 32 1c 	mov	#0,	7218(r9);r3 As==00, 0x1c32

00005d88 <.Loc.127.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d88:	7b 90 03 00 	cmp.b	#3,	r11	;
    5d8c:	d2 27       	jz	$-90     	;abs 0x5d32

00005d8e <.Loc.130.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:130
        if (wkup_timing[i].status == USED)
    5d8e:	09 4a       	mov	r10,	r9	;
    5d90:	05 4a       	mov	r10,	r5	;
    5d92:	55 06       	rlam	#2,	r5	;
    5d94:	0c 45       	mov	r5,	r12	;
    5d96:	0c 5a       	add	r10,	r12	;
    5d98:	5c 02       	rlam	#1,	r12	;

00005d9a <.Loc.130.1>:
    5d9a:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5d9e:	bf 23       	jnz	$-128    	;abs 0x5d1e

00005da0 <.L27>:
    5da0:	0c 45       	mov	r5,	r12	;
    5da2:	0c 5a       	add	r10,	r12	;
    5da4:	5c 02       	rlam	#1,	r12	;
    5da6:	16 4c 36 1c 	mov	7222(r12),r6	;0x01c36
    5daa:	17 4c 38 1c 	mov	7224(r12),r7	;0x01c38
    5dae:	7c 3f       	jmp	$-262    	;abs 0x5ca8

00005db0 <.L90>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:144
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5db0:	06 9c       	cmp	r12,	r6	;
    5db2:	dd 2f       	jc	$-68     	;abs 0x5d6e

00005db4 <.L46>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:146
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5db4:	1e 42 58 1c 	mov	&0x1c58,r14	;0x1c58
    5db8:	06 4e       	mov	r14,	r6	;
    5dba:	07 43       	clr	r7		;

00005dbc <.Loc.146.1>:
    5dbc:	4e 43       	clr.b	r14		;
    5dbe:	4f 43       	clr.b	r15		;
    5dc0:	0e 8c       	sub	r12,	r14	;
    5dc2:	0f 7d       	subc	r13,	r15	;

00005dc4 <.Loc.146.1>:
    5dc4:	05 4f       	mov	r15,	r5	;
    5dc6:	0f 93       	cmp	#0,	r15	;r3 As==00
    5dc8:	14 34       	jge	$+42     	;abs 0x5df2

00005dca <.L22>:
    5dca:	0e 49       	mov	r9,	r14	;
    5dcc:	5e 06       	rlam	#2,	r14	;
    5dce:	09 5e       	add	r14,	r9	;
    5dd0:	59 02       	rlam	#1,	r9	;
    5dd2:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005dd6 <.L28>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:148
                    min_wkup = -wkup_timing[i].data;
    5dd6:	4f 43       	clr.b	r15		;
    5dd8:	0f 8c       	sub	r12,	r15	;
    5dda:	82 4f 58 1c 	mov	r15,	&0x1c58	;

00005dde <.Loc.149.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:149
                    nxt_wkup = wkup_timing[i].thread_id;
    5dde:	c2 4e 5a 1c 	mov.b	r14,	&0x1c5a	;

00005de2 <.Loc.127.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5de2:	7b 90 03 00 	cmp.b	#3,	r11	;
    5de6:	92 23       	jnz	$-218    	;abs 0x5d0c
    5de8:	a6 3f       	jmp	$-178    	;abs 0x5d36

00005dea <.L88>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:155
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5dea:	07 4c       	mov	r12,	r7	;
    5dec:	0c 9e       	cmp	r14,	r12	;
    5dee:	9b 2f       	jc	$-200    	;abs 0x5d26
    5df0:	80 3f       	jmp	$-254    	;abs 0x5cf2

00005df2 <.L92>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:146
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5df2:	0f 93       	cmp	#0,	r15	;r3 As==00
    5df4:	03 20       	jnz	$+8      	;abs 0x5dfc
    5df6:	05 4e       	mov	r14,	r5	;
    5df8:	0e 96       	cmp	r6,	r14	;
    5dfa:	e7 2b       	jnc	$-48     	;abs 0x5dca

00005dfc <.L47>:
    5dfc:	06 9e       	cmp	r14,	r6	;
    5dfe:	96 23       	jnz	$-210    	;abs 0x5d2c
    5e00:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e02:	94 23       	jnz	$-214    	;abs 0x5d2c

00005e04 <.Loc.146.1>:
    5e04:	0e 49       	mov	r9,	r14	;
    5e06:	5e 06       	rlam	#2,	r14	;
    5e08:	09 5e       	add	r14,	r9	;
    5e0a:	59 02       	rlam	#1,	r9	;
    5e0c:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005e10 <.Loc.146.1>:
    5e10:	5f 42 5a 1c 	mov.b	&0x1c5a,r15	;0x1c5a

00005e14 <.Loc.146.1>:
    5e14:	d9 92 5a 1c 	cmp.b	&0x1c5a,7220(r9);0x1c5a, 0x1c34
    5e18:	34 1c 
    5e1a:	dd 2b       	jnc	$-68     	;abs 0x5dd6
    5e1c:	0e 3c       	jmp	$+30     	;abs 0x5e3a

00005e1e <.L89>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:155
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e1e:	0d 9f       	cmp	r15,	r13	;
    5e20:	85 23       	jnz	$-244    	;abs 0x5d2c

00005e22 <.Loc.155.1>:
    5e22:	0e 49       	mov	r9,	r14	;
    5e24:	5e 06       	rlam	#2,	r14	;
    5e26:	09 5e       	add	r14,	r9	;
    5e28:	59 02       	rlam	#1,	r9	;
    5e2a:	5e 49 34 1c 	mov.b	7220(r9),r14	;0x01c34

00005e2e <.Loc.155.1>:
    5e2e:	5f 42 5a 1c 	mov.b	&0x1c5a,r15	;0x1c5a

00005e32 <.Loc.155.1>:
    5e32:	d9 92 5a 1c 	cmp.b	&0x1c5a,7220(r9);0x1c5a, 0x1c34
    5e36:	34 1c 
    5e38:	62 2b       	jnc	$-314    	;abs 0x5cfe

00005e3a <.L39>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5e3a:	7b 90 03 00 	cmp.b	#3,	r11	;
    5e3e:	66 23       	jnz	$-306    	;abs 0x5d0c

00005e40 <.Loc.155.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:155
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e40:	0e 4f       	mov	r15,	r14	;

00005e42 <.Loc.164.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:164
    if (!first)
    5e42:	79 3f       	jmp	$-268    	;abs 0x5d36

00005e44 <.L86>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:127
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5e44:	7b 90 03 00 	cmp.b	#3,	r11	;
    5e48:	74 27       	jz	$-278    	;abs 0x5d32

00005e4a <.Loc.130.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:130
        if (wkup_timing[i].status == USED)
    5e4a:	09 4a       	mov	r10,	r9	;
    5e4c:	05 4a       	mov	r10,	r5	;
    5e4e:	55 06       	rlam	#2,	r5	;
    5e50:	0c 45       	mov	r5,	r12	;
    5e52:	0c 5a       	add	r10,	r12	;
    5e54:	5c 02       	rlam	#1,	r12	;

00005e56 <.Loc.130.1>:
    5e56:	9c 93 32 1c 	cmp	#1,	7218(r12);r3 As==01, 0x1c32
    5e5a:	0f 23       	jnz	$-480    	;abs 0x5c7a
    5e5c:	a1 3f       	jmp	$-188    	;abs 0x5da0

00005e5e <set_wkup_timer>:
set_wkup_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:181

// sets a one-shot timer using Timer A2 
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    5e5e:	4a 15       	pushm	#5,	r10	;16-bit words

00005e60 <.LCFI14>:
    5e60:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005e64 <.LCFI15>:
    5e64:	47 4c       	mov.b	r12,	r7	;
    5e66:	09 4d       	mov	r13,	r9	;

00005e68 <.LBB12>:
    5e68:	46 43       	clr.b	r6		;
    5e6a:	38 40 32 1c 	mov	#7218,	r8	;#0x1c32

00005e6e <.L94>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:117
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5e6e:	0a 46       	mov	r6,	r10	;
    5e70:	5a 06       	rlam	#2,	r10	;
    5e72:	0a 56       	add	r6,	r10	;
    5e74:	5a 02       	rlam	#1,	r10	;
    5e76:	0a 58       	add	r8,	r10	;
    5e78:	4e 43       	clr.b	r14		;
    5e7a:	4d 46       	mov.b	r6,	r13	;
    5e7c:	0c 41       	mov	r1,	r12	;
    5e7e:	b0 12 40 6e 	call	#28224		;#0x6e40
    5e82:	aa 41 00 00 	mov	@r1,	0(r10)	;
    5e86:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    5e8a:	02 00 
    5e8c:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    5e90:	04 00 
    5e92:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    5e96:	06 00 
    5e98:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    5e9c:	08 00 

00005e9e <.LVL43>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:115
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5e9e:	16 53       	inc	r6		;

00005ea0 <.Loc.115.1>:
    5ea0:	36 90 03 00 	cmp	#3,	r6	;
    5ea4:	e4 23       	jnz	$-54     	;abs 0x5e6e

00005ea6 <.Loc.189.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:189
    //fetch from persistent buffer to local variables 
    unpack_wkup_to_local();

    //init the timer 
    //TODO:check if needed 
    stop_timer();
    5ea6:	b0 12 9e 6a 	call	#27294		;#0x6a9e

00005eaa <.Loc.192.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:194

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    5eaa:	0e 49       	mov	r9,	r14	;
    5eac:	0f 43       	clr	r15		;

00005eae <.Loc.194.1>:
    5eae:	82 93 32 1c 	cmp	#0,	&0x1c32	;r3 As==00
    5eb2:	22 24       	jz	$+70     	;abs 0x5ef8

00005eb4 <.Loc.192.1>:
    5eb4:	82 93 3c 1c 	cmp	#0,	&0x1c3c	;r3 As==00
    5eb8:	49 24       	jz	$+148    	;abs 0x5f4c

00005eba <.Loc.192.1>:
    5eba:	82 93 46 1c 	cmp	#0,	&0x1c46	;r3 As==00
    5ebe:	49 24       	jz	$+148    	;abs 0x5f52

00005ec0 <.Loc.192.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:215
    
    }else{

        //buffer is full
        //TODO: ADD failcheck 
        wkup_timing[2].data = ticks;
    5ec0:	82 4e 4a 1c 	mov	r14,	&0x1c4a	;
    5ec4:	82 4f 4c 1c 	mov	r15,	&0x1c4c	;

00005ec8 <.Loc.216.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:216
        _pers_timer_update_data(2,WKUP,ticks);
    5ec8:	4d 43       	clr.b	r13		;
    5eca:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5ecc:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00005ed0 <.Loc.217.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:217
        wkup_timing[2].thread_id = thread_id;
    5ed0:	c2 47 48 1c 	mov.b	r7,	&0x1c48	;

00005ed4 <.Loc.218.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:218
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    5ed4:	4e 47       	mov.b	r7,	r14	;
    5ed6:	4d 43       	clr.b	r13		;
    5ed8:	7c 40 03 00 	mov.b	#3,	r12	;
    5edc:	b0 12 f8 6b 	call	#27640		;#0x6bf8

00005ee0 <.Loc.219.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:219
        refresh_wkup_timers();
    5ee0:	b0 12 58 5c 	call	#23640		;#0x5c58

00005ee4 <.Loc.222.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:222
    }

    _pers_timer_update_lock(WKUP);
    5ee4:	4c 43       	clr.b	r12		;
    5ee6:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00005eea <.Loc.223.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:223
    _pers_timer_commit(WKUP);
    5eea:	4c 43       	clr.b	r12		;
    5eec:	b0 12 fc 6d 	call	#28156		;#0x6dfc

00005ef0 <.Loc.224.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:224
}
    5ef0:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005ef4 <.LCFI16>:
    5ef4:	46 17       	popm	#5,	r10	;16-bit words

00005ef6 <.LCFI17>:
    5ef6:	30 41       	ret			

00005ef8 <.L97>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:192
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5ef8:	1a 42 32 1c 	mov	&0x1c32,r10	;0x1c32

00005efc <.Loc.194.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:194
        if (wkup_timing[i].status == NOT_USED)
    5efc:	0d 4a       	mov	r10,	r13	;

00005efe <.L95>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:196
            wkup_timing[i].data = ticks;
    5efe:	0c 4d       	mov	r13,	r12	;
    5f00:	5c 06       	rlam	#2,	r12	;
    5f02:	0c 5d       	add	r13,	r12	;
    5f04:	5c 02       	rlam	#1,	r12	;
    5f06:	08 5c       	add	r12,	r8	;
    5f08:	88 4e 04 00 	mov	r14,	4(r8)	;
    5f0c:	88 4f 06 00 	mov	r15,	6(r8)	;

00005f10 <.Loc.197.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:197
            _pers_timer_update_data(i,WKUP , ticks);
    5f10:	4d 43       	clr.b	r13		;
    5f12:	4c 4a       	mov.b	r10,	r12	;
    5f14:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00005f18 <.Loc.198.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:198
            wkup_timing[i].thread_id = thread_id;
    5f18:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00005f1c <.Loc.199.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:199
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    5f1c:	4e 47       	mov.b	r7,	r14	;
    5f1e:	4d 43       	clr.b	r13		;
    5f20:	4c 4a       	mov.b	r10,	r12	;
    5f22:	b0 12 f8 6b 	call	#27640		;#0x6bf8

00005f26 <.Loc.200.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:200
            wkup_timing[i].status = USED;
    5f26:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

00005f2a <.Loc.201.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:201
            _pers_timer_update_status(i, WKUP, USED);
    5f2a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f2c:	4d 43       	clr.b	r13		;
    5f2e:	4c 4a       	mov.b	r10,	r12	;
    5f30:	b0 12 44 6c 	call	#27716		;#0x6c44

00005f34 <.Loc.202.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:209
        refresh_wkup_timers();
    5f34:	b0 12 58 5c 	call	#23640		;#0x5c58

00005f38 <.Loc.222.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:222
    _pers_timer_update_lock(WKUP);
    5f38:	4c 43       	clr.b	r12		;
    5f3a:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00005f3e <.Loc.223.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:223
    _pers_timer_commit(WKUP);
    5f3e:	4c 43       	clr.b	r12		;
    5f40:	b0 12 fc 6d 	call	#28156		;#0x6dfc

00005f44 <.Loc.224.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:224
}
    5f44:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005f48 <.LCFI19>:
    5f48:	46 17       	popm	#5,	r10	;16-bit words

00005f4a <.LCFI20>:
    5f4a:	30 41       	ret			

00005f4c <.L98>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:192
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f4c:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005f4e <.Loc.194.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:194
        if (wkup_timing[i].status == NOT_USED)
    5f4e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5f50:	d6 3f       	jmp	$-82     	;abs 0x5efe

00005f52 <.L99>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:192
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f52:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005f54 <.Loc.194.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:194
        if (wkup_timing[i].status == NOT_USED)
    5f54:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f56:	d3 3f       	jmp	$-88     	;abs 0x5efe

00005f58 <clear_xpr_status>:
clear_xpr_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:234
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    5f58:	4d 4c       	mov.b	r12,	r13	;

00005f5a <.Loc.236.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
    
    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    5f5a:	5c 92 16 1c 	cmp.b	&0x1c16,r12	;0x1c16
    5f5e:	14 24       	jz	$+42     	;abs 0x5f88

00005f60 <.Loc.237.1>:
    5f60:	c2 9d 20 1c 	cmp.b	r13,	&0x1c20	;
    5f64:	14 24       	jz	$+42     	;abs 0x5f8e

00005f66 <.Loc.237.1>:
    5f66:	c2 9d 2a 1c 	cmp.b	r13,	&0x1c2a	;
    5f6a:	01 24       	jz	$+4      	;abs 0x5f6e

00005f6c <.Loc.246.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:246
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }    
    }

}
    5f6c:	30 41       	ret			

00005f6e <.L106>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5f6e:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005f70 <.LVL69>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    5f70:	6e 43       	mov.b	#2,	r14	;r3 As==10

00005f72 <.L102>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:240
            xpr_timing[i].status = NOT_USED;
    5f72:	0d 4e       	mov	r14,	r13	;

00005f74 <.LVL71>:
    5f74:	5d 06       	rlam	#2,	r13	;
    5f76:	0d 5e       	add	r14,	r13	;
    5f78:	5d 02       	rlam	#1,	r13	;
    5f7a:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

00005f7e <.Loc.241.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:241
            _pers_timer_update_status(i,XPR,NOT_USED);
    5f7e:	4e 43       	clr.b	r14		;
    5f80:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f82:	b0 12 44 6c 	call	#27716		;#0x6c44

00005f86 <.Loc.242.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:246
}
    5f86:	30 41       	ret			

00005f88 <.L104>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5f88:	4c 43       	clr.b	r12		;

00005f8a <.LVL74>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    5f8a:	4e 43       	clr.b	r14		;
    5f8c:	f2 3f       	jmp	$-26     	;abs 0x5f72

00005f8e <.L105>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5f8e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005f90 <.LVL76>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    5f90:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f92:	ef 3f       	jmp	$-32     	;abs 0x5f72

00005f94 <unpack_xpr_to_local>:
unpack_xpr_to_local():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:249

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    5f94:	2a 15       	pushm	#3,	r10	;16-bit words

00005f96 <.LCFI22>:
    5f96:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005f9a <.LCFI23>:
    5f9a:	49 43       	clr.b	r9		;
    5f9c:	38 40 14 1c 	mov	#7188,	r8	;#0x1c14

00005fa0 <.L108>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:254

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    5fa0:	0a 49       	mov	r9,	r10	;
    5fa2:	5a 06       	rlam	#2,	r10	;
    5fa4:	0a 59       	add	r9,	r10	;
    5fa6:	5a 02       	rlam	#1,	r10	;
    5fa8:	0a 58       	add	r8,	r10	;
    5faa:	6e 43       	mov.b	#2,	r14	;r3 As==10
    5fac:	4d 49       	mov.b	r9,	r13	;
    5fae:	0c 41       	mov	r1,	r12	;
    5fb0:	b0 12 40 6e 	call	#28224		;#0x6e40
    5fb4:	aa 41 00 00 	mov	@r1,	0(r10)	;
    5fb8:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    5fbc:	02 00 
    5fbe:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    5fc2:	04 00 
    5fc4:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    5fc8:	06 00 
    5fca:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    5fce:	08 00 

00005fd0 <.LVL80>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:252
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5fd0:	19 53       	inc	r9		;

00005fd2 <.Loc.252.1>:
    5fd2:	39 90 03 00 	cmp	#3,	r9	;
    5fd6:	e4 23       	jnz	$-54     	;abs 0x5fa0

00005fd8 <.Loc.257.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:257
    }

}
    5fd8:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005fdc <.LCFI24>:
    5fdc:	28 17       	popm	#3,	r10	;16-bit words

00005fde <.LCFI25>:
    5fde:	30 41       	ret			

00005fe0 <refresh_xpr_timers>:
refresh_xpr_timers():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:259

void refresh_xpr_timers(){
    5fe0:	4a 15       	pushm	#5,	r10	;16-bit words

00005fe2 <.LCFI26>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:268
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    5fe2:	92 93 14 1c 	cmp	#1,	&0x1c14	;r3 As==01
    5fe6:	62 24       	jz	$+198    	;abs 0x60ac

00005fe8 <.Loc.265.1>:
    5fe8:	92 93 1e 1c 	cmp	#1,	&0x1c1e	;r3 As==01
    5fec:	07 24       	jz	$+16     	;abs 0x5ffc

00005fee <.Loc.265.1>:
    5fee:	92 93 28 1c 	cmp	#1,	&0x1c28	;r3 As==01
    5ff2:	15 25       	jz	$+556    	;abs 0x621e

00005ff4 <.Loc.265.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:311
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    5ff4:	b0 12 de 6a 	call	#27358		;#0x6ade

00005ff8 <.Loc.313.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:313

}
    5ff8:	46 17       	popm	#5,	r10	;16-bit words

00005ffa <.LCFI27>:
    5ffa:	30 41       	ret			

00005ffc <.L160>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:271
            if (first)
    5ffc:	16 42 22 1c 	mov	&0x1c22,r6	;0x1c22
    6000:	17 42 24 1c 	mov	&0x1c24,r7	;0x1c24

00006004 <.LVL88>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:274
                nxt_xpr = xpr_timing[i].thread_id;
    6004:	5a 42 20 1c 	mov.b	&0x1c20,r10	;0x1c20

00006008 <.LVL89>:
    6008:	08 46       	mov	r6,	r8	;
    600a:	09 47       	mov	r7,	r9	;

0000600c <.L125>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:278
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    600c:	b0 12 40 6b 	call	#27456		;#0x6b40

00006010 <.Loc.278.1>:
    6010:	0e 46       	mov	r6,	r14	;
    6012:	0f 47       	mov	r7,	r15	;
    6014:	0e 8c       	sub	r12,	r14	;
    6016:	0f 7d       	subc	r13,	r15	;

00006018 <.Loc.278.1>:
    6018:	82 4e 22 1c 	mov	r14,	&0x1c22	;
    601c:	82 4f 24 1c 	mov	r15,	&0x1c24	;

00006020 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:279
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6020:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6022:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6024:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00006028 <.Loc.281.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:281
            if (xpr_timing[i].data <= 0)
    6028:	1d 42 22 1c 	mov	&0x1c22,r13	;0x1c22
    602c:	1c 42 24 1c 	mov	&0x1c24,r12	;0x1c24

00006030 <.Loc.281.1>:
    6030:	4e 43       	clr.b	r14		;
    6032:	0e 9c       	cmp	r12,	r14	;
    6034:	a2 34       	jge	$+326    	;abs 0x617a

00006036 <.L132>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6036:	0c 99       	cmp	r9,	r12	;
    6038:	04 38       	jl	$+10     	;abs 0x6042

0000603a <.L170>:
    603a:	09 9c       	cmp	r12,	r9	;
    603c:	e5 20       	jnz	$+460    	;abs 0x6208
    603e:	0d 98       	cmp	r8,	r13	;
    6040:	e3 2c       	jc	$+456    	;abs 0x6208

00006042 <.L152>:
    6042:	5a 42 20 1c 	mov.b	&0x1c20,r10	;0x1c20

00006046 <.L130>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:297
                    nxt_xpr = xpr_timing[i].thread_id;
    6046:	08 4d       	mov	r13,	r8	;
    6048:	09 4c       	mov	r12,	r9	;

0000604a <.L117>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:268
        if (xpr_timing[i].status == USED)
    604a:	16 42 2c 1c 	mov	&0x1c2c,r6	;0x1c2c
    604e:	17 42 2e 1c 	mov	&0x1c2e,r7	;0x1c2e

00006052 <.Loc.268.1>:
    6052:	92 93 28 1c 	cmp	#1,	&0x1c28	;r3 As==01
    6056:	1d 20       	jnz	$+60     	;abs 0x6092

00006058 <.L142>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:278
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    6058:	b0 12 40 6b 	call	#27456		;#0x6b40

0000605c <.Loc.278.1>:
    605c:	0e 46       	mov	r6,	r14	;
    605e:	0f 47       	mov	r7,	r15	;
    6060:	0e 8c       	sub	r12,	r14	;
    6062:	0f 7d       	subc	r13,	r15	;

00006064 <.Loc.278.1>:
    6064:	82 4e 2c 1c 	mov	r14,	&0x1c2c	;
    6068:	82 4f 2e 1c 	mov	r15,	&0x1c2e	;

0000606c <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:279
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    606c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    606e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6070:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00006074 <.Loc.281.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:281
            if (xpr_timing[i].data <= 0)
    6074:	1d 42 2c 1c 	mov	&0x1c2c,r13	;0x1c2c
    6078:	1c 42 2e 1c 	mov	&0x1c2e,r12	;0x1c2e

0000607c <.Loc.281.1>:
    607c:	4e 43       	clr.b	r14		;
    607e:	0e 9c       	cmp	r12,	r14	;
    6080:	4c 34       	jge	$+154    	;abs 0x611a

00006082 <.L134>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6082:	0c 99       	cmp	r9,	r12	;
    6084:	76 38       	jl	$+238    	;abs 0x6172

00006086 <.L168>:
    6086:	09 9c       	cmp	r12,	r9	;
    6088:	02 20       	jnz	$+6      	;abs 0x608e
    608a:	0d 98       	cmp	r8,	r13	;
    608c:	72 28       	jnc	$+230    	;abs 0x6172

0000608e <.L139>:
    608e:	08 9d       	cmp	r13,	r8	;
    6090:	d8 24       	jz	$+434    	;abs 0x6242

00006092 <.L137>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:304
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    6092:	4d 4a       	mov.b	r10,	r13	;
    6094:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6096:	b0 12 8c 6c 	call	#27788		;#0x6c8c

0000609a <.Loc.305.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:305
        _pers_timer_update_nxt_time(XPR,min_xpr); 
    609a:	0d 48       	mov	r8,	r13	;
    609c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    609e:	b0 12 9a 6c 	call	#27802		;#0x6c9a

000060a2 <.Loc.308.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:308
        set_timer_xpr(min_xpr);
    60a2:	0c 48       	mov	r8,	r12	;
    60a4:	b0 12 c8 6a 	call	#27336		;#0x6ac8

000060a8 <.Loc.313.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:313
}
    60a8:	46 17       	popm	#5,	r10	;16-bit words

000060aa <.LCFI29>:
    60aa:	30 41       	ret			

000060ac <.L159>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:271
            if (first)
    60ac:	18 42 18 1c 	mov	&0x1c18,r8	;0x1c18
    60b0:	19 42 1a 1c 	mov	&0x1c1a,r9	;0x1c1a

000060b4 <.LVL103>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:274
                nxt_xpr = xpr_timing[i].thread_id;
    60b4:	5a 42 16 1c 	mov.b	&0x1c16,r10	;0x1c16

000060b8 <.LVL104>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:278
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    60b8:	b0 12 40 6b 	call	#27456		;#0x6b40

000060bc <.LVL105>:
    60bc:	0e 48       	mov	r8,	r14	;
    60be:	0f 49       	mov	r9,	r15	;
    60c0:	0e 8c       	sub	r12,	r14	;
    60c2:	0f 7d       	subc	r13,	r15	;

000060c4 <.Loc.278.1>:
    60c4:	82 4e 18 1c 	mov	r14,	&0x1c18	;
    60c8:	82 4f 1a 1c 	mov	r15,	&0x1c1a	;

000060cc <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:279
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    60cc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    60ce:	4c 43       	clr.b	r12		;
    60d0:	b0 12 a4 6b 	call	#27556		;#0x6ba4

000060d4 <.Loc.281.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:281
            if (xpr_timing[i].data <= 0)
    60d4:	1d 42 18 1c 	mov	&0x1c18,r13	;0x1c18
    60d8:	1c 42 1a 1c 	mov	&0x1c1a,r12	;0x1c1a

000060dc <.Loc.281.1>:
    60dc:	4e 43       	clr.b	r14		;
    60de:	0e 9c       	cmp	r12,	r14	;
    60e0:	74 34       	jge	$+234    	;abs 0x61ca

000060e2 <.L121>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    60e2:	0c 99       	cmp	r9,	r12	;
    60e4:	0c 34       	jge	$+26     	;abs 0x60fe

000060e6 <.L151>:
    60e6:	5a 42 16 1c 	mov.b	&0x1c16,r10	;0x1c16

000060ea <.L119>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:268
        if (xpr_timing[i].status == USED)
    60ea:	92 93 1e 1c 	cmp	#1,	&0x1c1e	;r3 As==01
    60ee:	ab 23       	jnz	$-168    	;abs 0x6046

000060f0 <.Loc.271.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:271
            if (first)
    60f0:	16 42 22 1c 	mov	&0x1c22,r6	;0x1c22
    60f4:	17 42 24 1c 	mov	&0x1c24,r7	;0x1c24

000060f8 <.Loc.268.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:268
        if (xpr_timing[i].status == USED)
    60f8:	08 4d       	mov	r13,	r8	;
    60fa:	09 4c       	mov	r12,	r9	;
    60fc:	87 3f       	jmp	$-240    	;abs 0x600c

000060fe <.L165>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    60fe:	09 9c       	cmp	r12,	r9	;
    6100:	02 20       	jnz	$+6      	;abs 0x6106
    6102:	0d 98       	cmp	r8,	r13	;
    6104:	f0 2b       	jnc	$-30     	;abs 0x60e6

00006106 <.L114>:
    6106:	0d 98       	cmp	r8,	r13	;
    6108:	93 24       	jz	$+296    	;abs 0x6230

0000610a <.L118>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:268
        if (xpr_timing[i].status == USED)
    610a:	92 93 1e 1c 	cmp	#1,	&0x1c1e	;r3 As==01
    610e:	9d 23       	jnz	$-196    	;abs 0x604a

00006110 <.Loc.271.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:271
            if (first)
    6110:	16 42 22 1c 	mov	&0x1c22,r6	;0x1c22
    6114:	17 42 24 1c 	mov	&0x1c24,r7	;0x1c24
    6118:	79 3f       	jmp	$-268    	;abs 0x600c

0000611a <.L162>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:281
            if (xpr_timing[i].data <= 0)
    611a:	0c 93       	cmp	#0,	r12	;r3 As==00
    611c:	02 20       	jnz	$+6      	;abs 0x6122
    611e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6120:	b0 23       	jnz	$-158    	;abs 0x6082

00006122 <.L153>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:287
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6122:	5c 42 2a 1c 	mov.b	&0x1c2a,r12	;0x1c2a
    6126:	b0 12 e0 59 	call	#23008		;#0x59e0
    612a:	b0 12 84 59 	call	#22916		;#0x5984

0000612e <.Loc.289.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:289
                clear_xpr_status(xpr_timing[i].thread_id);
    612e:	5c 42 2a 1c 	mov.b	&0x1c2a,r12	;0x1c2a

00006132 <.LBB18>:
clear_xpr_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    6132:	d2 92 2a 1c 	cmp.b	&0x1c2a,&0x1c16	;0x1c2a
    6136:	16 1c 
    6138:	8e 24       	jz	$+286    	;abs 0x6256

0000613a <.Loc.237.1>:
    613a:	c2 9c 20 1c 	cmp.b	r12,	&0x1c20	;
    613e:	91 24       	jz	$+292    	;abs 0x6262

00006140 <.Loc.237.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6140:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006142 <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    6142:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006144 <.L136>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:240
            xpr_timing[i].status = NOT_USED;
    6144:	0d 4e       	mov	r14,	r13	;
    6146:	5d 06       	rlam	#2,	r13	;
    6148:	0d 5e       	add	r14,	r13	;
    614a:	5d 02       	rlam	#1,	r13	;
    614c:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

00006150 <.Loc.241.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:241
            _pers_timer_update_status(i,XPR,NOT_USED);
    6150:	4e 43       	clr.b	r14		;
    6152:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6154:	b0 12 44 6c 	call	#27716		;#0x6c44

00006158 <.LBE18>:
refresh_xpr_timers():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:292
            if (xpr_timing[i].data > 0)
    6158:	1d 42 2c 1c 	mov	&0x1c2c,r13	;0x1c2c
    615c:	1c 42 2e 1c 	mov	&0x1c2e,r12	;0x1c2e

00006160 <.Loc.292.1>:
    6160:	4e 43       	clr.b	r14		;
    6162:	0e 9c       	cmp	r12,	r14	;
    6164:	8e 3b       	jl	$-226    	;abs 0x6082
    6166:	0c 93       	cmp	#0,	r12	;r3 As==00
    6168:	94 23       	jnz	$-214    	;abs 0x6092
    616a:	0d 93       	cmp	#0,	r13	;r3 As==00
    616c:	92 27       	jz	$-218    	;abs 0x6092

0000616e <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    616e:	0c 99       	cmp	r9,	r12	;
    6170:	8a 37       	jge	$-234    	;abs 0x6086

00006172 <.L154>:
    6172:	5a 42 2a 1c 	mov.b	&0x1c2a,r10	;0x1c2a

00006176 <.LVL117>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:303
    if (!first)
    6176:	08 4d       	mov	r13,	r8	;
    6178:	8c 3f       	jmp	$-230    	;abs 0x6092

0000617a <.L161>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:281
            if (xpr_timing[i].data <= 0)
    617a:	0c 93       	cmp	#0,	r12	;r3 As==00
    617c:	02 20       	jnz	$+6      	;abs 0x6182
    617e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6180:	5a 23       	jnz	$-330    	;abs 0x6036

00006182 <.L126>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:287
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6182:	5c 42 20 1c 	mov.b	&0x1c20,r12	;0x1c20
    6186:	b0 12 e0 59 	call	#23008		;#0x59e0
    618a:	b0 12 84 59 	call	#22916		;#0x5984

0000618e <.LVL120>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    618e:	d2 92 16 1c 	cmp.b	&0x1c16,&0x1c20	;0x1c16
    6192:	20 1c 
    6194:	63 24       	jz	$+200    	;abs 0x625c

00006196 <.Loc.237.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6196:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006198 <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    6198:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000619a <.L131>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:240
            xpr_timing[i].status = NOT_USED;
    619a:	0d 4e       	mov	r14,	r13	;
    619c:	5d 06       	rlam	#2,	r13	;
    619e:	0d 5e       	add	r14,	r13	;
    61a0:	5d 02       	rlam	#1,	r13	;
    61a2:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

000061a6 <.Loc.241.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:241
            _pers_timer_update_status(i,XPR,NOT_USED);
    61a6:	4e 43       	clr.b	r14		;
    61a8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    61aa:	b0 12 44 6c 	call	#27716		;#0x6c44

000061ae <.LVL122>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:292
            if (xpr_timing[i].data > 0)
    61ae:	1d 42 22 1c 	mov	&0x1c22,r13	;0x1c22
    61b2:	1c 42 24 1c 	mov	&0x1c24,r12	;0x1c24

000061b6 <.Loc.292.1>:
    61b6:	4e 43       	clr.b	r14		;
    61b8:	0e 9c       	cmp	r12,	r14	;
    61ba:	3d 3b       	jl	$-388    	;abs 0x6036
    61bc:	0c 93       	cmp	#0,	r12	;r3 As==00
    61be:	45 23       	jnz	$-372    	;abs 0x604a
    61c0:	0d 93       	cmp	#0,	r13	;r3 As==00
    61c2:	43 27       	jz	$-376    	;abs 0x604a

000061c4 <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    61c4:	0c 99       	cmp	r9,	r12	;
    61c6:	3d 3b       	jl	$-388    	;abs 0x6042
    61c8:	38 3f       	jmp	$-398    	;abs 0x603a

000061ca <.L164>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:281
            if (xpr_timing[i].data <= 0)
    61ca:	0c 93       	cmp	#0,	r12	;r3 As==00
    61cc:	02 20       	jnz	$+6      	;abs 0x61d2
    61ce:	0d 93       	cmp	#0,	r13	;r3 As==00
    61d0:	88 23       	jnz	$-238    	;abs 0x60e2

000061d2 <.L112>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:287
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    61d2:	5c 42 16 1c 	mov.b	&0x1c16,r12	;0x1c16
    61d6:	b0 12 e0 59 	call	#23008		;#0x59e0
    61da:	b0 12 84 59 	call	#22916		;#0x5984

000061de <.LVL125>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:240
            xpr_timing[i].status = NOT_USED;
    61de:	82 43 14 1c 	mov	#0,	&0x1c14	;r3 As==00

000061e2 <.Loc.241.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:241
            _pers_timer_update_status(i,XPR,NOT_USED);
    61e2:	4e 43       	clr.b	r14		;
    61e4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    61e6:	4c 43       	clr.b	r12		;
    61e8:	b0 12 44 6c 	call	#27716		;#0x6c44

000061ec <.LVL126>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:292
            if (xpr_timing[i].data > 0)
    61ec:	1d 42 18 1c 	mov	&0x1c18,r13	;0x1c18
    61f0:	1c 42 1a 1c 	mov	&0x1c1a,r12	;0x1c1a

000061f4 <.Loc.292.1>:
    61f4:	4e 43       	clr.b	r14		;
    61f6:	0e 9c       	cmp	r12,	r14	;
    61f8:	74 3b       	jl	$-278    	;abs 0x60e2
    61fa:	0c 93       	cmp	#0,	r12	;r3 As==00
    61fc:	86 23       	jnz	$-242    	;abs 0x610a
    61fe:	0d 93       	cmp	#0,	r13	;r3 As==00
    6200:	84 27       	jz	$-246    	;abs 0x610a

00006202 <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6202:	0c 99       	cmp	r9,	r12	;
    6204:	70 3b       	jl	$-286    	;abs 0x60e6
    6206:	7b 3f       	jmp	$-264    	;abs 0x60fe

00006208 <.L128>:
    6208:	08 9d       	cmp	r13,	r8	;
    620a:	1f 23       	jnz	$-448    	;abs 0x604a
    620c:	09 9c       	cmp	r12,	r9	;
    620e:	1d 23       	jnz	$-452    	;abs 0x604a

00006210 <.Loc.294.1>:
    6210:	5e 42 20 1c 	mov.b	&0x1c20,r14	;0x1c20

00006214 <.Loc.294.1>:
    6214:	5a 92 20 1c 	cmp.b	&0x1c20,r10	;0x1c20
    6218:	18 2f       	jc	$-462    	;abs 0x604a
    621a:	0a 4e       	mov	r14,	r10	;

0000621c <.LVL128>:
    621c:	14 3f       	jmp	$-470    	;abs 0x6046

0000621e <.L143>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:271
            if (first)
    621e:	16 42 2c 1c 	mov	&0x1c2c,r6	;0x1c2c
    6222:	17 42 2e 1c 	mov	&0x1c2e,r7	;0x1c2e

00006226 <.LVL130>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:274
                nxt_xpr = xpr_timing[i].thread_id;
    6226:	5a 42 2a 1c 	mov.b	&0x1c2a,r10	;0x1c2a

0000622a <.LVL131>:
    622a:	08 46       	mov	r6,	r8	;
    622c:	09 47       	mov	r7,	r9	;
    622e:	14 3f       	jmp	$-470    	;abs 0x6058

00006230 <.L166>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:294
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6230:	0c 99       	cmp	r9,	r12	;
    6232:	6b 23       	jnz	$-296    	;abs 0x610a

00006234 <.Loc.294.1>:
    6234:	5e 42 16 1c 	mov.b	&0x1c16,r14	;0x1c16

00006238 <.Loc.294.1>:
    6238:	5a 92 16 1c 	cmp.b	&0x1c16,r10	;0x1c16
    623c:	66 2f       	jc	$-306    	;abs 0x610a
    623e:	0a 4e       	mov	r14,	r10	;

00006240 <.LVL133>:
    6240:	54 3f       	jmp	$-342    	;abs 0x60ea

00006242 <.L163>:
    6242:	09 9c       	cmp	r12,	r9	;
    6244:	26 23       	jnz	$-434    	;abs 0x6092

00006246 <.Loc.294.1>:
    6246:	5c 42 2a 1c 	mov.b	&0x1c2a,r12	;0x1c2a

0000624a <.Loc.294.1>:
    624a:	5a 92 2a 1c 	cmp.b	&0x1c2a,r10	;0x1c2a
    624e:	21 2f       	jc	$-444    	;abs 0x6092
    6250:	0a 4c       	mov	r12,	r10	;

00006252 <.LVL135>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:303
    if (!first)
    6252:	08 4d       	mov	r13,	r8	;
    6254:	1e 3f       	jmp	$-450    	;abs 0x6092

00006256 <.L149>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6256:	4c 43       	clr.b	r12		;

00006258 <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    6258:	4e 43       	clr.b	r14		;
    625a:	74 3f       	jmp	$-278    	;abs 0x6144

0000625c <.L169>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    625c:	4c 43       	clr.b	r12		;

0000625e <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    625e:	4e 43       	clr.b	r14		;
    6260:	9c 3f       	jmp	$-198    	;abs 0x619a

00006262 <.L167>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6262:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006264 <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    6264:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6266:	6e 3f       	jmp	$-290    	;abs 0x6144

00006268 <set_expire_timer>:
set_expire_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:316


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    6268:	5a 15       	pushm	#6,	r10	;16-bit words

0000626a <.LCFI31>:
    626a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000626e <.LCFI32>:
    626e:	47 4c       	mov.b	r12,	r7	;
    6270:	08 4d       	mov	r13,	r8	;
    6272:	06 4e       	mov	r14,	r6	;

00006274 <.LBB26>:
    6274:	45 43       	clr.b	r5		;
    6276:	39 40 14 1c 	mov	#7188,	r9	;#0x1c14

0000627a <.L172>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:254
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    627a:	0a 45       	mov	r5,	r10	;
    627c:	5a 06       	rlam	#2,	r10	;
    627e:	0a 55       	add	r5,	r10	;
    6280:	5a 02       	rlam	#1,	r10	;
    6282:	0a 59       	add	r9,	r10	;
    6284:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6286:	4d 45       	mov.b	r5,	r13	;
    6288:	0c 41       	mov	r1,	r12	;
    628a:	b0 12 40 6e 	call	#28224		;#0x6e40
    628e:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6292:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6296:	02 00 
    6298:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    629c:	04 00 
    629e:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    62a2:	06 00 
    62a4:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    62a8:	08 00 

000062aa <.LVL143>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:252
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62aa:	15 53       	inc	r5		;

000062ac <.Loc.252.1>:
    62ac:	35 90 03 00 	cmp	#3,	r5	;
    62b0:	e4 23       	jnz	$-54     	;abs 0x627a

000062b2 <.Loc.324.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:326

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    62b2:	82 93 14 1c 	cmp	#0,	&0x1c14	;r3 As==00
    62b6:	1d 24       	jz	$+60     	;abs 0x62f2

000062b8 <.Loc.324.1>:
    62b8:	82 93 1e 1c 	cmp	#0,	&0x1c1e	;r3 As==00
    62bc:	4e 24       	jz	$+158    	;abs 0x635a

000062be <.Loc.324.1>:
    62be:	82 93 28 1c 	cmp	#0,	&0x1c28	;r3 As==00
    62c2:	4e 24       	jz	$+158    	;abs 0x6360

000062c4 <.Loc.324.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:347
    
    }else{

        //failure 
        //TODO: ADD fail check 
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    62c4:	0e 48       	mov	r8,	r14	;
    62c6:	0f 46       	mov	r6,	r15	;
    62c8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    62ca:	6c 43       	mov.b	#2,	r12	;r3 As==10
    62cc:	b0 12 a4 6b 	call	#27556		;#0x6ba4

000062d0 <.Loc.348.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:348
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    62d0:	4e 47       	mov.b	r7,	r14	;
    62d2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    62d4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    62d6:	b0 12 f8 6b 	call	#27640		;#0x6bf8

000062da <.Loc.349.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:349
        refresh_xpr_timers();
    62da:	b0 12 e0 5f 	call	#24544		;#0x5fe0

000062de <.Loc.352.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:352
    }

    _pers_timer_update_lock(XPR);
    62de:	6c 43       	mov.b	#2,	r12	;r3 As==10
    62e0:	b0 12 a8 6c 	call	#27816		;#0x6ca8

000062e4 <.Loc.353.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:353
    _pers_timer_commit(XPR);
    62e4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    62e6:	b0 12 fc 6d 	call	#28156		;#0x6dfc

000062ea <.Loc.354.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:354
}
    62ea:	31 50 0a 00 	add	#10,	r1	;#0x000a

000062ee <.LCFI33>:
    62ee:	55 17       	popm	#6,	r10	;16-bit words

000062f0 <.LCFI34>:
    62f0:	30 41       	ret			

000062f2 <.L175>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:324
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    62f2:	1a 42 14 1c 	mov	&0x1c14,r10	;0x1c14

000062f6 <.Loc.326.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:326
        if (xpr_timing[i].status == NOT_USED)
    62f6:	05 4a       	mov	r10,	r5	;

000062f8 <.L173>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:328
            xpr_timing[i].data = ticks + __get_time();
    62f8:	b0 12 40 6b 	call	#27456		;#0x6b40

000062fc <.Loc.328.1>:
    62fc:	0e 45       	mov	r5,	r14	;
    62fe:	5e 06       	rlam	#2,	r14	;
    6300:	0e 55       	add	r5,	r14	;
    6302:	5e 02       	rlam	#1,	r14	;
    6304:	09 5e       	add	r14,	r9	;

00006306 <.Loc.328.1>:
    6306:	0c 58       	add	r8,	r12	;
    6308:	89 4c 04 00 	mov	r12,	4(r9)	;
    630c:	0d 66       	addc	r6,	r13	;
    630e:	89 4d 06 00 	mov	r13,	6(r9)	;

00006312 <.Loc.329.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:329
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    6312:	b0 12 40 6b 	call	#27456		;#0x6b40

00006316 <.Loc.329.1>:
    6316:	0e 4c       	mov	r12,	r14	;
    6318:	0e 58       	add	r8,	r14	;
    631a:	0f 4d       	mov	r13,	r15	;
    631c:	0f 66       	addc	r6,	r15	;
    631e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6320:	4c 4a       	mov.b	r10,	r12	;
    6322:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00006326 <.Loc.330.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:330
            xpr_timing[i].thread_id = thread_id;
    6326:	c9 47 02 00 	mov.b	r7,	2(r9)	;

0000632a <.Loc.331.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:331
            _pers_timer_update_thread_id(i,XPR,thread_id);
    632a:	4e 47       	mov.b	r7,	r14	;
    632c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    632e:	4c 4a       	mov.b	r10,	r12	;
    6330:	b0 12 f8 6b 	call	#27640		;#0x6bf8

00006334 <.Loc.332.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:332
            xpr_timing[i].status = USED;
    6334:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

00006338 <.Loc.333.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:333
            _pers_timer_update_status(i,XPR,USED);
    6338:	5e 43       	mov.b	#1,	r14	;r3 As==01
    633a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    633c:	4c 4a       	mov.b	r10,	r12	;
    633e:	b0 12 44 6c 	call	#27716		;#0x6c44

00006342 <.Loc.334.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:341
        refresh_xpr_timers();
    6342:	b0 12 e0 5f 	call	#24544		;#0x5fe0

00006346 <.Loc.352.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:352
    _pers_timer_update_lock(XPR);
    6346:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6348:	b0 12 a8 6c 	call	#27816		;#0x6ca8

0000634c <.Loc.353.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:353
    _pers_timer_commit(XPR);
    634c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    634e:	b0 12 fc 6d 	call	#28156		;#0x6dfc

00006352 <.Loc.354.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:354
}
    6352:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006356 <.LCFI36>:
    6356:	55 17       	popm	#6,	r10	;16-bit words

00006358 <.LCFI37>:
    6358:	30 41       	ret			

0000635a <.L176>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:324
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    635a:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000635c <.Loc.326.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:326
        if (xpr_timing[i].status == NOT_USED)
    635c:	55 43       	mov.b	#1,	r5	;r3 As==01
    635e:	cc 3f       	jmp	$-102    	;abs 0x62f8

00006360 <.L177>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:324
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6360:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006362 <.Loc.326.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:326
        if (xpr_timing[i].status == NOT_USED)
    6362:	65 43       	mov.b	#2,	r5	;r3 As==10
    6364:	c9 3f       	jmp	$-108    	;abs 0x62f8

00006366 <stop_expire_timer>:
stop_expire_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:357


void stop_expire_timer(uint8_t thread_id){
    6366:	3a 15       	pushm	#4,	r10	;16-bit words

00006368 <.LCFI39>:
    6368:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000636c <.LCFI40>:
    636c:	47 4c       	mov.b	r12,	r7	;

0000636e <.LBB34>:
    636e:	49 43       	clr.b	r9		;
    6370:	38 40 14 1c 	mov	#7188,	r8	;#0x1c14

00006374 <.L180>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:254
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    6374:	0a 49       	mov	r9,	r10	;
    6376:	5a 06       	rlam	#2,	r10	;
    6378:	0a 59       	add	r9,	r10	;
    637a:	5a 02       	rlam	#1,	r10	;
    637c:	0a 58       	add	r8,	r10	;
    637e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6380:	4d 49       	mov.b	r9,	r13	;
    6382:	0c 41       	mov	r1,	r12	;
    6384:	b0 12 40 6e 	call	#28224		;#0x6e40
    6388:	aa 41 00 00 	mov	@r1,	0(r10)	;
    638c:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6390:	02 00 
    6392:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6396:	04 00 
    6398:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    639c:	06 00 
    639e:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    63a2:	08 00 

000063a4 <.LVL170>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:252
    for (i = 0; i < MAX_XPR_THREADS; i++)
    63a4:	19 53       	inc	r9		;

000063a6 <.Loc.252.1>:
    63a6:	39 90 03 00 	cmp	#3,	r9	;
    63aa:	e4 23       	jnz	$-54     	;abs 0x6374

000063ac <.LBB38>:
clear_xpr_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    63ac:	c2 97 16 1c 	cmp.b	r7,	&0x1c16	;
    63b0:	12 24       	jz	$+38     	;abs 0x63d6

000063b2 <.Loc.237.1>:
    63b2:	c2 97 20 1c 	cmp.b	r7,	&0x1c20	;
    63b6:	27 24       	jz	$+80     	;abs 0x6406

000063b8 <.Loc.237.1>:
    63b8:	c2 97 2a 1c 	cmp.b	r7,	&0x1c2a	;
    63bc:	27 24       	jz	$+80     	;abs 0x640c

000063be <.LBE38>:
stop_expire_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:366
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    63be:	b0 12 e0 5f 	call	#24544		;#0x5fe0

000063c2 <.Loc.368.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:368

    _pers_timer_update_lock(XPR);
    63c2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63c4:	b0 12 a8 6c 	call	#27816		;#0x6ca8

000063c8 <.Loc.369.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:369
    _pers_timer_commit(XPR);
    63c8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63ca:	b0 12 fc 6d 	call	#28156		;#0x6dfc

000063ce <.Loc.371.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:371

}
    63ce:	31 50 0a 00 	add	#10,	r1	;#0x000a

000063d2 <.LCFI41>:
    63d2:	37 17       	popm	#4,	r10	;16-bit words

000063d4 <.LCFI42>:
    63d4:	30 41       	ret			

000063d6 <.L183>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    63d6:	4c 43       	clr.b	r12		;

000063d8 <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    63d8:	4e 43       	clr.b	r14		;

000063da <.L181>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:240
            xpr_timing[i].status = NOT_USED;
    63da:	0d 4e       	mov	r14,	r13	;
    63dc:	5d 06       	rlam	#2,	r13	;
    63de:	0d 5e       	add	r14,	r13	;
    63e0:	5d 02       	rlam	#1,	r13	;
    63e2:	8d 43 14 1c 	mov	#0,	7188(r13);r3 As==00, 0x1c14

000063e6 <.Loc.241.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:241
            _pers_timer_update_status(i,XPR,NOT_USED);
    63e6:	4e 43       	clr.b	r14		;
    63e8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    63ea:	b0 12 44 6c 	call	#27716		;#0x6c44

000063ee <.Loc.242.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:366
    refresh_xpr_timers();
    63ee:	b0 12 e0 5f 	call	#24544		;#0x5fe0

000063f2 <.Loc.368.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:368
    _pers_timer_update_lock(XPR);
    63f2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63f4:	b0 12 a8 6c 	call	#27816		;#0x6ca8

000063f8 <.Loc.369.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:369
    _pers_timer_commit(XPR);
    63f8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63fa:	b0 12 fc 6d 	call	#28156		;#0x6dfc

000063fe <.Loc.371.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:371
}
    63fe:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006402 <.LCFI44>:
    6402:	37 17       	popm	#4,	r10	;16-bit words

00006404 <.LCFI45>:
    6404:	30 41       	ret			

00006406 <.L184>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6406:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006408 <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    6408:	5e 43       	mov.b	#1,	r14	;r3 As==01
    640a:	e7 3f       	jmp	$-48     	;abs 0x63da

0000640c <.L186>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:237
    for (i = 0; i < MAX_XPR_THREADS; i++)
    640c:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000640e <.Loc.239.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:239
        if (xpr_timing[i].thread_id == thread_id){
    640e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6410:	e4 3f       	jmp	$-54     	;abs 0x63da

00006412 <unpack_pdc_to_local>:
unpack_pdc_to_local():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:380
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    6412:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006416 <.LCFI47>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:385

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    6416:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6418:	4d 43       	clr.b	r13		;
    641a:	0c 41       	mov	r1,	r12	;
    641c:	b0 12 40 6e 	call	#28224		;#0x6e40
    6420:	a2 41 0a 1c 	mov	@r1,	&0x1c0a	;
    6424:	92 41 02 00 	mov	2(r1),	&0x1c0c	;
    6428:	0c 1c 
    642a:	92 41 04 00 	mov	4(r1),	&0x1c0e	;
    642e:	0e 1c 
    6430:	92 41 06 00 	mov	6(r1),	&0x1c10	;
    6434:	10 1c 
    6436:	92 41 08 00 	mov	8(r1),	&0x1c12	;
    643a:	12 1c 

0000643c <.Loc.383.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:388
    }

}
    643c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006440 <.LCFI48>:
    6440:	30 41       	ret			

00006442 <refresh_pdc_timers>:
refresh_pdc_timers():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:453
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    6442:	2a 15       	pushm	#3,	r10	;16-bit words

00006444 <.LCFI49>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:460
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    6444:	92 93 0a 1c 	cmp	#1,	&0x1c0a	;r3 As==01
    6448:	8a 20       	jnz	$+278    	;abs 0x655e

0000644a <.Loc.463.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:465
        {
            
            if (first)
            {
                min_pdc = pdc_timing[i].data;
    644a:	18 42 0e 1c 	mov	&0x1c0e,r8	;0x1c0e
    644e:	19 42 10 1c 	mov	&0x1c10,r9	;0x1c10

00006452 <.Loc.465.1>:
    6452:	82 48 50 1c 	mov	r8,	&0x1c50	;

00006456 <.Loc.466.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:466
                nxt_pdc = pdc_timing[i].thread_id;
    6456:	d2 42 0c 1c 	mov.b	&0x1c0c,&0x1c52	;0x1c0c
    645a:	52 1c 

0000645c <.Loc.467.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:471
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time(); 
    645c:	b0 12 40 6b 	call	#27456		;#0x6b40

00006460 <.Loc.471.1>:
    6460:	0e 48       	mov	r8,	r14	;
    6462:	0f 49       	mov	r9,	r15	;
    6464:	0e 8c       	sub	r12,	r14	;
    6466:	0f 7d       	subc	r13,	r15	;

00006468 <.Loc.471.1>:
    6468:	82 4e 0e 1c 	mov	r14,	&0x1c0e	;
    646c:	82 4f 10 1c 	mov	r15,	&0x1c10	;

00006470 <.Loc.472.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:472
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    6470:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6472:	4c 43       	clr.b	r12		;
    6474:	b0 12 a4 6b 	call	#27556		;#0x6ba4

00006478 <.Loc.474.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:474
            
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    6478:	1c 42 0e 1c 	mov	&0x1c0e,r12	;0x1c0e
    647c:	1d 42 10 1c 	mov	&0x1c10,r13	;0x1c10

00006480 <.Loc.474.1>:
    6480:	0d 93       	cmp	#0,	r13	;r3 As==00
    6482:	21 38       	jl	$+68     	;abs 0x64c6

00006484 <.Loc.481.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:483
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    6484:	0f 4c       	mov	r12,	r15	;
    6486:	0f dd       	bis	r13,	r15	;
    6488:	0f 93       	cmp	#0,	r15	;r3 As==00
    648a:	6d 24       	jz	$+220    	;abs 0x6566

0000648c <.Loc.485.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:485
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    648c:	1f 42 50 1c 	mov	&0x1c50,r15	;0x1c50
    6490:	08 4f       	mov	r15,	r8	;
    6492:	09 43       	clr	r9		;

00006494 <.Loc.485.1>:
    6494:	0d 93       	cmp	#0,	r13	;r3 As==00
    6496:	54 38       	jl	$+170    	;abs 0x6540
    6498:	0d 93       	cmp	#0,	r13	;r3 As==00
    649a:	02 20       	jnz	$+6      	;abs 0x64a0
    649c:	0c 98       	cmp	r8,	r12	;
    649e:	50 28       	jnc	$+162    	;abs 0x6540

000064a0 <.L209>:
    64a0:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52

000064a4 <.Loc.485.1>:
    64a4:	0c 98       	cmp	r8,	r12	;
    64a6:	53 24       	jz	$+168    	;abs 0x654e

000064a8 <.L197>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:496
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    64a8:	4d 4e       	mov.b	r14,	r13	;
    64aa:	5c 43       	mov.b	#1,	r12	;r3 As==01
    64ac:	b0 12 8c 6c 	call	#27788		;#0x6c8c

000064b0 <.Loc.497.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:497
       _pers_timer_update_nxt_time(PDC,min_pdc);
    64b0:	1d 42 50 1c 	mov	&0x1c50,r13	;0x1c50
    64b4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    64b6:	b0 12 9a 6c 	call	#27802		;#0x6c9a

000064ba <.Loc.500.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:500
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    64ba:	1c 42 50 1c 	mov	&0x1c50,r12	;0x1c50
    64be:	b0 12 e8 6a 	call	#27368		;#0x6ae8

000064c2 <.Loc.507.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:507
    //no pending wake up timer was found.
    else stop_timer();



}
    64c2:	28 17       	popm	#3,	r10	;16-bit words

000064c4 <.LCFI50>:
    64c4:	30 41       	ret			

000064c6 <.L210>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:474
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    64c6:	59 42 5b 1c 	mov.b	&0x1c5b,r9	;0x1c5b
    64ca:	0f 43       	clr	r15		;
    64cc:	0f 89       	sub	r9,	r15	;
    64ce:	08 4f       	mov	r15,	r8	;
    64d0:	09 4f       	mov	r15,	r9	;
    64d2:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

000064d6 <.Loc.474.1>:
    64d6:	09 9d       	cmp	r13,	r9	;
    64d8:	04 38       	jl	$+10     	;abs 0x64e2

000064da <.Loc.474.1>:
    64da:	0d 99       	cmp	r9,	r13	;
    64dc:	25 20       	jnz	$+76     	;abs 0x6528
    64de:	0f 9c       	cmp	r12,	r15	;
    64e0:	23 2c       	jc	$+72     	;abs 0x6528

000064e2 <.L206>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:476
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    64e2:	1e 42 50 1c 	mov	&0x1c50,r14	;0x1c50
    64e6:	0a 4e       	mov	r14,	r10	;
    64e8:	0b 43       	clr	r11		;

000064ea <.Loc.476.1>:
    64ea:	48 43       	clr.b	r8		;
    64ec:	49 43       	clr.b	r9		;
    64ee:	08 8c       	sub	r12,	r8	;
    64f0:	09 7d       	subc	r13,	r9	;

000064f2 <.Loc.476.1>:
    64f2:	09 93       	cmp	#0,	r9	;r3 As==00
    64f4:	04 38       	jl	$+10     	;abs 0x64fe
    64f6:	09 93       	cmp	#0,	r9	;r3 As==00
    64f8:	0b 20       	jnz	$+24     	;abs 0x6510
    64fa:	08 9a       	cmp	r10,	r8	;
    64fc:	09 2c       	jc	$+20     	;abs 0x6510

000064fe <.L207>:
    64fe:	5e 42 0c 1c 	mov.b	&0x1c0c,r14	;0x1c0c

00006502 <.L196>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:478
                    min_pdc = -pdc_timing[i].data;
    6502:	4f 43       	clr.b	r15		;
    6504:	0f 8c       	sub	r12,	r15	;
    6506:	82 4f 50 1c 	mov	r15,	&0x1c50	;

0000650a <.Loc.479.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:479
                    nxt_pdc = pdc_timing[i].thread_id;
    650a:	c2 4e 52 1c 	mov.b	r14,	&0x1c52	;

0000650e <.Loc.494.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:494
    if (!first)
    650e:	cc 3f       	jmp	$-102    	;abs 0x64a8

00006510 <.L194>:
    6510:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52

00006514 <.Loc.476.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:476
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6514:	0a 98       	cmp	r8,	r10	;
    6516:	c8 23       	jnz	$-110    	;abs 0x64a8
    6518:	09 93       	cmp	#0,	r9	;r3 As==00
    651a:	c6 23       	jnz	$-114    	;abs 0x64a8

0000651c <.Loc.476.1>:
    651c:	5f 42 0c 1c 	mov.b	&0x1c0c,r15	;0x1c0c

00006520 <.Loc.476.1>:
    6520:	4f 9e       	cmp.b	r14,	r15	;
    6522:	c2 2f       	jc	$-122    	;abs 0x64a8
    6524:	0e 4f       	mov	r15,	r14	;
    6526:	ed 3f       	jmp	$-36     	;abs 0x6502

00006528 <.L192>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:481
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    6528:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52

0000652c <.Loc.481.1>:
    652c:	0d 99       	cmp	r9,	r13	;
    652e:	05 38       	jl	$+12     	;abs 0x653a
    6530:	0a 49       	mov	r9,	r10	;
    6532:	09 9d       	cmp	r13,	r9	;
    6534:	b9 23       	jnz	$-140    	;abs 0x64a8
    6536:	0c 9f       	cmp	r15,	r12	;
    6538:	b7 2f       	jc	$-144    	;abs 0x64a8

0000653a <.L208>:
    653a:	82 43 0a 1c 	mov	#0,	&0x1c0a	;r3 As==00

0000653e <.Loc.494.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:494
    if (!first)
    653e:	b4 3f       	jmp	$-150    	;abs 0x64a8

00006540 <.L201>:
    6540:	5e 42 0c 1c 	mov.b	&0x1c0c,r14	;0x1c0c

00006544 <.L203>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:487
                    min_pdc = pdc_timing[i].data;
    6544:	82 4c 50 1c 	mov	r12,	&0x1c50	;

00006548 <.Loc.488.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:488
                    nxt_pdc = pdc_timing[i].thread_id;
    6548:	c2 4e 52 1c 	mov.b	r14,	&0x1c52	;

0000654c <.Loc.494.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:494
    if (!first)
    654c:	ad 3f       	jmp	$-164    	;abs 0x64a8

0000654e <.L211>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:485
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    654e:	0d 99       	cmp	r9,	r13	;
    6550:	ab 23       	jnz	$-168    	;abs 0x64a8

00006552 <.Loc.485.1>:
    6552:	5f 42 0c 1c 	mov.b	&0x1c0c,r15	;0x1c0c

00006556 <.Loc.485.1>:
    6556:	4f 9e       	cmp.b	r14,	r15	;
    6558:	a7 2f       	jc	$-176    	;abs 0x64a8
    655a:	0e 4f       	mov	r15,	r14	;
    655c:	f3 3f       	jmp	$-24     	;abs 0x6544

0000655e <.L189>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:503
    else stop_timer();
    655e:	b0 12 9e 6a 	call	#27294		;#0x6a9e

00006562 <.Loc.507.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:507
}
    6562:	28 17       	popm	#3,	r10	;16-bit words

00006564 <.LCFI52>:
    6564:	30 41       	ret			

00006566 <.L199>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:494
    if (!first)
    6566:	5e 42 52 1c 	mov.b	&0x1c52,r14	;0x1c52
    656a:	9e 3f       	jmp	$-194    	;abs 0x64a8

0000656c <set_periodic_timer>:
set_periodic_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:391
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    656c:	1a 15       	pushm	#2,	r10	;16-bit words

0000656e <.LCFI54>:
    656e:	17 15       	pushm	#2,	r7	;16-bit words

00006570 <.LCFI55>:
    6570:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006574 <.LCFI56>:
    6574:	49 4c       	mov.b	r12,	r9	;
    6576:	0a 4d       	mov	r13,	r10	;

00006578 <.LBB44>:
unpack_pdc_to_local():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:385
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    6578:	5e 43       	mov.b	#1,	r14	;r3 As==01
    657a:	4d 43       	clr.b	r13		;

0000657c <.LVL210>:
    657c:	0c 41       	mov	r1,	r12	;

0000657e <.LVL211>:
    657e:	b0 12 40 6e 	call	#28224		;#0x6e40
    6582:	a2 41 0a 1c 	mov	@r1,	&0x1c0a	;
    6586:	92 41 02 00 	mov	2(r1),	&0x1c0c	;
    658a:	0c 1c 
    658c:	92 41 04 00 	mov	4(r1),	&0x1c0e	;
    6590:	0e 1c 
    6592:	92 41 06 00 	mov	6(r1),	&0x1c10	;
    6596:	10 1c 
    6598:	92 41 08 00 	mov	8(r1),	&0x1c12	;
    659c:	12 1c 

0000659e <.LBE44>:
set_periodic_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:401
        if (pdc_timing[i].status == NOT_USED)
    659e:	06 4a       	mov	r10,	r6	;
    65a0:	07 43       	clr	r7		;

000065a2 <.Loc.401.1>:
    65a2:	82 93 0a 1c 	cmp	#0,	&0x1c0a	;r3 As==00
    65a6:	31 20       	jnz	$+100    	;abs 0x660a

000065a8 <.Loc.403.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:403
            __set_pdc_timer(__get_thread(thread_id), ticks);
    65a8:	4c 49       	mov.b	r9,	r12	;
    65aa:	b0 12 e0 59 	call	#23008		;#0x59e0
    65ae:	0d 4a       	mov	r10,	r13	;
    65b0:	b0 12 ac 59 	call	#22956		;#0x59ac

000065b4 <.Loc.404.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:404
            __set_pdc_period(__get_thread(thread_id), 1);
    65b4:	4c 49       	mov.b	r9,	r12	;
    65b6:	b0 12 e0 59 	call	#23008		;#0x59e0
    65ba:	5d 43       	mov.b	#1,	r13	;r3 As==01
    65bc:	b0 12 b2 59 	call	#22962		;#0x59b2

000065c0 <.Loc.405.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:405
            _pers_timer_update_data(i,PDC,ticks);
    65c0:	0e 46       	mov	r6,	r14	;
    65c2:	0f 47       	mov	r7,	r15	;
    65c4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    65c6:	4c 43       	clr.b	r12		;
    65c8:	b0 12 a4 6b 	call	#27556		;#0x6ba4

000065cc <.Loc.406.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:406
            pdc_timing[i].data = ticks;
    65cc:	82 46 0e 1c 	mov	r6,	&0x1c0e	;
    65d0:	82 47 10 1c 	mov	r7,	&0x1c10	;

000065d4 <.Loc.407.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:407
            _pers_timer_update_thread_id(i,PDC,thread_id);
    65d4:	4e 49       	mov.b	r9,	r14	;
    65d6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    65d8:	4c 43       	clr.b	r12		;
    65da:	b0 12 f8 6b 	call	#27640		;#0x6bf8

000065de <.Loc.408.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:408
            pdc_timing[i].thread_id = thread_id;
    65de:	c2 49 0c 1c 	mov.b	r9,	&0x1c0c	;

000065e2 <.Loc.409.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:409
            _pers_timer_update_status(i,PDC,USED);
    65e2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    65e4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    65e6:	4c 43       	clr.b	r12		;
    65e8:	b0 12 44 6c 	call	#27716		;#0x6c44

000065ec <.Loc.410.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:410
            pdc_timing[i].status = USED;
    65ec:	92 43 0a 1c 	mov	#1,	&0x1c0a	;r3 As==01

000065f0 <.Loc.411.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:419
        refresh_pdc_timers();
    65f0:	b0 12 42 64 	call	#25666		;#0x6442

000065f4 <.Loc.433.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:433
    _pers_timer_update_lock(PDC);
    65f4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    65f6:	b0 12 a8 6c 	call	#27816		;#0x6ca8

000065fa <.Loc.434.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:434
    _pers_timer_commit(PDC);
    65fa:	5c 43       	mov.b	#1,	r12	;r3 As==01
    65fc:	b0 12 fc 6d 	call	#28156		;#0x6dfc

00006600 <.Loc.435.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:435
}
    6600:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006604 <.LCFI57>:
    6604:	16 17       	popm	#2,	r7	;16-bit words

00006606 <.LCFI58>:
    6606:	19 17       	popm	#2,	r10	;16-bit words

00006608 <.LCFI59>:
    6608:	30 41       	ret			

0000660a <.L213>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:425
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    660a:	82 46 0e 1c 	mov	r6,	&0x1c0e	;
    660e:	82 47 10 1c 	mov	r7,	&0x1c10	;

00006612 <.Loc.426.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:426
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    6612:	0e 46       	mov	r6,	r14	;
    6614:	0f 47       	mov	r7,	r15	;
    6616:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6618:	4c 43       	clr.b	r12		;
    661a:	b0 12 a4 6b 	call	#27556		;#0x6ba4

0000661e <.Loc.427.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:427
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    661e:	c2 49 0c 1c 	mov.b	r9,	&0x1c0c	;

00006622 <.Loc.428.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:428
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    6622:	4e 49       	mov.b	r9,	r14	;
    6624:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6626:	4c 43       	clr.b	r12		;
    6628:	b0 12 f8 6b 	call	#27640		;#0x6bf8

0000662c <.Loc.430.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:430
        refresh_pdc_timers();
    662c:	b0 12 42 64 	call	#25666		;#0x6442

00006630 <.Loc.433.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:433
    _pers_timer_update_lock(PDC);
    6630:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6632:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00006636 <.Loc.434.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:434
    _pers_timer_commit(PDC);
    6636:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6638:	b0 12 fc 6d 	call	#28156		;#0x6dfc

0000663c <.Loc.435.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:435
}
    663c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006640 <.LCFI61>:
    6640:	16 17       	popm	#2,	r7	;16-bit words

00006642 <.LCFI62>:
    6642:	19 17       	popm	#2,	r10	;16-bit words

00006644 <.LCFI63>:
    6644:	30 41       	ret			

00006646 <stop_periodic_timer>:
stop_periodic_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:438
void stop_periodic_timer(uint8_t thread_id){
    6646:	0a 15       	pushm	#1,	r10	;16-bit words

00006648 <.LCFI64>:
    6648:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000664c <.LCFI65>:
    664c:	4a 4c       	mov.b	r12,	r10	;

0000664e <.LBB50>:
unpack_pdc_to_local():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:385
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    664e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6650:	4d 43       	clr.b	r13		;
    6652:	0c 41       	mov	r1,	r12	;

00006654 <.LVL233>:
    6654:	b0 12 40 6e 	call	#28224		;#0x6e40
    6658:	a2 41 0a 1c 	mov	@r1,	&0x1c0a	;
    665c:	92 41 02 00 	mov	2(r1),	&0x1c0c	;
    6660:	0c 1c 
    6662:	92 41 04 00 	mov	4(r1),	&0x1c0e	;
    6666:	0e 1c 
    6668:	92 41 06 00 	mov	6(r1),	&0x1c10	;
    666c:	10 1c 
    666e:	92 41 08 00 	mov	8(r1),	&0x1c12	;
    6672:	12 1c 

00006674 <.LBB52>:
clear_pdc_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:514
void clear_pdc_status(uint8_t thread_id){
    
    uint8_t i; 
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    6674:	c2 9a 0c 1c 	cmp.b	r10,	&0x1c0c	;
    6678:	07 20       	jnz	$+16     	;abs 0x6688

0000667a <.Loc.516.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:516

            pdc_timing[i].status = NOT_USED;
    667a:	82 43 0a 1c 	mov	#0,	&0x1c0a	;r3 As==00

0000667e <.Loc.517.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:517
            _pers_timer_update_status(i,PDC,NOT_USED);
    667e:	4e 43       	clr.b	r14		;
    6680:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6682:	4c 43       	clr.b	r12		;
    6684:	b0 12 44 6c 	call	#27716		;#0x6c44

00006688 <.L216>:
stop_periodic_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:445
    refresh_pdc_timers();
    6688:	b0 12 42 64 	call	#25666		;#0x6442

0000668c <.Loc.447.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:447
    _pers_timer_update_lock(XPR);
    668c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    668e:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00006692 <.Loc.448.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:448
    _pers_timer_commit(XPR);
    6692:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6694:	b0 12 fc 6d 	call	#28156		;#0x6dfc

00006698 <.Loc.450.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:450
}
    6698:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000669c <.LCFI66>:
    669c:	0a 17       	popm	#1,	r10	;16-bit words

0000669e <.LCFI67>:
    669e:	30 41       	ret			

000066a0 <clear_pdc_status>:
clear_pdc_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:514
        if (pdc_timing[i].thread_id == thread_id){
    66a0:	5c 92 0c 1c 	cmp.b	&0x1c0c,r12	;0x1c0c
    66a4:	07 20       	jnz	$+16     	;abs 0x66b4

000066a6 <.Loc.516.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:516
            pdc_timing[i].status = NOT_USED;
    66a6:	82 43 0a 1c 	mov	#0,	&0x1c0a	;r3 As==00

000066aa <.Loc.517.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:517
            _pers_timer_update_status(i,PDC,NOT_USED);
    66aa:	4e 43       	clr.b	r14		;
    66ac:	5d 43       	mov.b	#1,	r13	;r3 As==01
    66ae:	4c 43       	clr.b	r12		;

000066b0 <.LVL242>:
    66b0:	b0 12 44 6c 	call	#27716		;#0x6c44

000066b4 <.L217>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/timer.c:521

        } 
    }
}
    66b4:	30 41       	ret			

000066b6 <main>:
main():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:43
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    66b6:	b0 12 dc 69 	call	#27100		;#0x69dc

000066ba <.Loc.46.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:46

	// if this is the first boot
	if(!__inited){
    66ba:	c2 93 48 4c 	cmp.b	#0,	&0x4c48	;r3 As==00
    66be:	27 24       	jz	$+80     	;abs 0x670e

000066c0 <.L2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:68
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    66c0:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000066c4 <.Loc.68.1>:
    66c4:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

000066c8 <.Loc.68.1>:
    66c8:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000066cc <.Loc.68.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:69
    __port_init(1, 4); // Task Execution
    66cc:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    66d0:	02 02 

000066d2 <.Loc.69.1>:
    66d2:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    66d6:	04 02 

000066d8 <.Loc.69.1>:
    66d8:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    66dc:	02 02 

000066de <.Loc.69.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:70
    __port_init(3, 5); // Task commit
    66de:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    66e2:	22 02 

000066e4 <.Loc.70.1>:
    66e4:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    66e8:	24 02 

000066ea <.Loc.70.1>:
    66ea:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    66ee:	22 02 

000066f0 <.Loc.70.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:71
    __port_init(3, 6); // Task buffer copy
    66f0:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    66f4:	22 02 

000066f6 <.Loc.71.1>:
    66f6:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    66fa:	24 02 

000066fc <L0^A>:
    66fc:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6700:	22 02 

00006702 <.Loc.71.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:75
#endif

	// will be called at each reboot of the application
	__app_reboot();
    6702:	b0 12 4a 58 	call	#22602		;#0x584a

00006706 <.Loc.78.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:78

	// activate the scheduler
	__scheduler_run();
    6706:	b0 12 f2 59 	call	#23026		;#0x59f2

0000670a <.Loc.80.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:81

	return 0;
}
    670a:	4c 43       	clr.b	r12		;
    670c:	30 41       	ret			

0000670e <.L4>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:48
	    __scheduler_boot_init();
    670e:	b0 12 16 59 	call	#22806		;#0x5916

00006712 <.Loc.50.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:50
	    __events_boot_init();
    6712:	b0 12 20 67 	call	#26400		;#0x6720

00006716 <.Loc.57.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:57
	    __app_init();
    6716:	b0 12 dc 52 	call	#21212		;#0x52dc

0000671a <.Loc.59.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:59
	    __inited = 1;
    671a:	d2 43 48 4c 	mov.b	#1,	&0x4c48	;r3 As==01
    671e:	d0 3f       	jmp	$-94     	;abs 0x66c0

00006720 <__events_boot_init>:
__events_boot_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/main.c:59
    6720:	1a 15       	pushm	#2,	r10	;16-bit words

00006722 <L0^A>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:53

// should be called at the first boot only
void __events_boot_init(){
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    6722:	3a 40 ca 51 	mov	#20938,	r10	;#0x51ca
    6726:	39 40 ca 4c 	mov	#19658,	r9	;#0x4cca

0000672a <.L2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:55
        // initialize each queue
        __perqueue_init(&_events[i]);
    672a:	0c 4a       	mov	r10,	r12	;
    672c:	b0 12 be 68 	call	#26814		;#0x68be

00006730 <.Loc.56.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:56
        _popped[i] = NULL;
    6730:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

00006734 <.Loc.53.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:53
    for(i=MAX_THREADS;i>0;i--){
    6734:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    6738:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

0000673c <.Loc.53.1>:
    673c:	3a 90 ca 4c 	cmp	#19658,	r10	;#0x4cca
    6740:	f4 23       	jnz	$-22     	;abs 0x672a

00006742 <.Loc.58.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:58
    }
}
    6742:	19 17       	popm	#2,	r10	;16-bit words

00006744 <.LCFI1>:
    6744:	30 41       	ret			

00006746 <__events_commit>:
__events_commit():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:63

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    6746:	5c 42 d6 51 	mov.b	&0x51d6,r12	;0x51d6
    674a:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    674c:	14 24       	jz	$+42     	;abs 0x6776
    674e:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6750:	1f 24       	jz	$+64     	;abs 0x6790
    6752:	0c 93       	cmp	#0,	r12	;r3 As==00
    6754:	01 24       	jz	$+4      	;abs 0x6758

00006756 <.Loc.77.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:77
        if(_thread->state == THREAD_STOPPED){
            __start_thread(_thread);
        }
        _status = EVENT_DONE;
    }
}
    6756:	30 41       	ret			

00006758 <.L16>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:65
        __perqueue_push(&_events[_thread->priority], &_event);
    6758:	1d 42 d4 51 	mov	&0x51d4,r13	;0x51d4

0000675c <.Loc.65.1>:
    675c:	6c 4d       	mov.b	@r13,	r12	;
    675e:	5c 06       	rlam	#2,	r12	;
    6760:	6d 4d       	mov.b	@r13,	r13	;
    6762:	0c 5d       	add	r13,	r12	;
    6764:	5c 06       	rlam	#2,	r12	;
    6766:	3d 40 ca 51 	mov	#20938,	r13	;#0x51ca
    676a:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    676e:	b0 12 1a 69 	call	#26906		;#0x691a

00006772 <.Loc.66.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:66
        _status = EVENT_COMMIT;
    6772:	d2 43 d6 51 	mov.b	#1,	&0x51d6	;r3 As==01

00006776 <.L6>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:68
        __perqueue_push_commit(&_events[_thread->priority]);
    6776:	1d 42 d4 51 	mov	&0x51d4,r13	;0x51d4

0000677a <.Loc.68.1>:
    677a:	6c 4d       	mov.b	@r13,	r12	;
    677c:	5c 06       	rlam	#2,	r12	;
    677e:	6d 4d       	mov.b	@r13,	r13	;
    6780:	0c 5d       	add	r13,	r12	;
    6782:	5c 06       	rlam	#2,	r12	;
    6784:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    6788:	b0 12 50 69 	call	#26960		;#0x6950

0000678c <.Loc.69.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:69
        _status = EVENT_SIGNAL;
    678c:	e2 43 d6 51 	mov.b	#2,	&0x51d6	;r3 As==10

00006790 <.L7>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:72
        if(_thread->state == THREAD_STOPPED){
    6790:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4
    6794:	1c 4c 02 00 	mov	2(r12),	r12	;

00006798 <.Loc.72.1>:
    6798:	3c 90 10 00 	cmp	#16,	r12	;#0x0010
    679c:	04 24       	jz	$+10     	;abs 0x67a6

0000679e <.L9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:75
        _status = EVENT_DONE;
    679e:	f2 40 03 00 	mov.b	#3,	&0x51d6	;
    67a2:	d6 51 

000067a4 <.Loc.77.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:77
}
    67a4:	30 41       	ret			

000067a6 <.L17>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:73
            __start_thread(_thread);
    67a6:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4
    67aa:	b0 12 c4 59 	call	#22980		;#0x59c4
    67ae:	f7 3f       	jmp	$-16     	;abs 0x679e

000067b0 <__event_buffer_full_ISR>:
__event_buffer_full_ISR():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:81

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    67b0:	1d 42 d4 51 	mov	&0x51d4,r13	;0x51d4

000067b4 <.Loc.81.1>:
    67b4:	6c 4d       	mov.b	@r13,	r12	;

000067b6 <.LVL7>:
    67b6:	5c 06       	rlam	#2,	r12	;
    67b8:	6d 4d       	mov.b	@r13,	r13	;
    67ba:	0c 5d       	add	r13,	r12	;
    67bc:	5c 06       	rlam	#2,	r12	;
    67be:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    67c2:	b0 12 ee 68 	call	#26862		;#0x68ee

000067c6 <.Loc.82.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:82
}
    67c6:	30 41       	ret			

000067c8 <__event_signal_ISR>:
__event_signal_ISR():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:89

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    67c8:	82 4c d4 51 	mov	r12,	&0x51d4	;

000067cc <.Loc.90.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:90
    _event = *event;
    67cc:	0e 4d       	mov	r13,	r14	;
    67ce:	b2 4e ca 51 	mov	@r14+,	&0x51ca	;
    67d2:	b2 4e cc 51 	mov	@r14+,	&0x51cc	;
    67d6:	92 4d 04 00 	mov	4(r13),	&0x51ce	;
    67da:	ce 51 
    67dc:	92 4d 06 00 	mov	6(r13),	&0x51d0	;
    67e0:	d0 51 
    67e2:	92 4e 04 00 	mov	4(r14),	&0x51d2	;
    67e6:	d2 51 

000067e8 <.Loc.91.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:91
    _status = EVENT_INSERT;
    67e8:	c2 43 d6 51 	mov.b	#0,	&0x51d6	;r3 As==00

000067ec <.LBB4>:
__events_commit():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:63
    switch(_status){
    67ec:	5d 42 d6 51 	mov.b	&0x51d6,r13	;0x51d6

000067f0 <.LVL10>:
    67f0:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    67f2:	14 24       	jz	$+42     	;abs 0x681c
    67f4:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    67f6:	1f 24       	jz	$+64     	;abs 0x6836
    67f8:	0d 93       	cmp	#0,	r13	;r3 As==00
    67fa:	01 24       	jz	$+4      	;abs 0x67fe

000067fc <.LBE4>:
__event_signal_ISR():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:93
    __events_commit();
}
    67fc:	30 41       	ret			

000067fe <.L30>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:65
        __perqueue_push(&_events[_thread->priority], &_event);
    67fe:	6d 4c       	mov.b	@r12,	r13	;
    6800:	5d 06       	rlam	#2,	r13	;
    6802:	6c 4c       	mov.b	@r12,	r12	;

00006804 <.LVL11>:
    6804:	0c 5d       	add	r13,	r12	;
    6806:	5c 06       	rlam	#2,	r12	;
    6808:	3d 40 ca 51 	mov	#20938,	r13	;#0x51ca
    680c:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    6810:	b0 12 1a 69 	call	#26906		;#0x691a

00006814 <.LVL12>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:66
        _status = EVENT_COMMIT;
    6814:	d2 43 d6 51 	mov.b	#1,	&0x51d6	;r3 As==01
    6818:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4

0000681c <.L20>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:68
        __perqueue_push_commit(&_events[_thread->priority]);
    681c:	6d 4c       	mov.b	@r12,	r13	;
    681e:	5d 06       	rlam	#2,	r13	;
    6820:	6c 4c       	mov.b	@r12,	r12	;
    6822:	0c 5d       	add	r13,	r12	;
    6824:	5c 06       	rlam	#2,	r12	;
    6826:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    682a:	b0 12 50 69 	call	#26960		;#0x6950

0000682e <.Loc.69.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:69
        _status = EVENT_SIGNAL;
    682e:	e2 43 d6 51 	mov.b	#2,	&0x51d6	;r3 As==10
    6832:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4

00006836 <.L21>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:72
        if(_thread->state == THREAD_STOPPED){
    6836:	1d 4c 02 00 	mov	2(r12),	r13	;

0000683a <.Loc.72.1>:
    683a:	3d 90 10 00 	cmp	#16,	r13	;#0x0010
    683e:	04 24       	jz	$+10     	;abs 0x6848

00006840 <.L23>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:75
        _status = EVENT_DONE;
    6840:	f2 40 03 00 	mov.b	#3,	&0x51d6	;
    6844:	d6 51 

00006846 <.Loc.93.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:93
}
    6846:	30 41       	ret			

00006848 <.L31>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:73
            __start_thread(_thread);
    6848:	b0 12 c4 59 	call	#22980		;#0x59c4
    684c:	f9 3f       	jmp	$-12     	;abs 0x6840

0000684e <__has_events>:
__has_events():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:97

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    684e:	6d 4c       	mov.b	@r12,	r13	;
    6850:	5d 06       	rlam	#2,	r13	;
    6852:	6c 4c       	mov.b	@r12,	r12	;

00006854 <.LVL16>:
    6854:	0c 5d       	add	r13,	r12	;
    6856:	5c 06       	rlam	#2,	r12	;
    6858:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    685c:	b0 12 d8 68 	call	#26840		;#0x68d8
    6860:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006864 <.Loc.97.1>:
    6864:	3c 53       	add	#-1,	r12	;r3 As==11

00006866 <.Loc.101.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:101
        return 0;

    return 1;
}
    6866:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    686a:	30 41       	ret			

0000686c <__lock_event>:
__lock_event():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:106

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    686c:	0a 15       	pushm	#1,	r10	;16-bit words

0000686e <.LCFI2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:107
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    686e:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4

00006872 <.LVL19>:
    6872:	6a 4c       	mov.b	@r12,	r10	;

00006874 <.Loc.107.1>:
    6874:	0c 4a       	mov	r10,	r12	;
    6876:	5c 06       	rlam	#2,	r12	;
    6878:	0c 5a       	add	r10,	r12	;
    687a:	5c 06       	rlam	#2,	r12	;
    687c:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    6880:	b0 12 58 69 	call	#26968		;#0x6958

00006884 <.Loc.107.1>:
    6884:	5a 02       	rlam	#1,	r10	;
    6886:	8a 4c 4a 4c 	mov	r12,	19530(r10); 0x4c4a

0000688a <.Loc.108.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:108
    return _popped[_thread->priority];
    688a:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4
    688e:	6c 4c       	mov.b	@r12,	r12	;
    6890:	5c 02       	rlam	#1,	r12	;

00006892 <.Loc.109.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:109
}
    6892:	1c 4c 4a 4c 	mov	19530(r12),r12	;0x04c4a
    6896:	0a 17       	popm	#1,	r10	;16-bit words

00006898 <.LCFI3>:
    6898:	30 41       	ret			

0000689a <__release_event>:
__release_event():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:113

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    689a:	1d 42 d4 51 	mov	&0x51d4,r13	;0x51d4

0000689e <.Loc.113.1>:
    689e:	6c 4d       	mov.b	@r13,	r12	;

000068a0 <.LVL22>:
    68a0:	5c 06       	rlam	#2,	r12	;
    68a2:	6d 4d       	mov.b	@r13,	r13	;
    68a4:	0c 5d       	add	r13,	r12	;
    68a6:	5c 06       	rlam	#2,	r12	;
    68a8:	3c 50 ca 4c 	add	#19658,	r12	;#0x4cca
    68ac:	b0 12 8a 69 	call	#27018		;#0x698a

000068b0 <.Loc.114.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:114
    _popped[_thread->priority] = NULL;
    68b0:	1c 42 d4 51 	mov	&0x51d4,r12	;0x51d4
    68b4:	6c 4c       	mov.b	@r12,	r12	;
    68b6:	5c 02       	rlam	#1,	r12	;
    68b8:	8c 43 4a 4c 	mov	#0,	19530(r12);r3 As==00, 0x4c4a

000068bc <.Loc.115.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/isrmanager.c:115
}
    68bc:	30 41       	ret			

000068be <__perqueue_init>:
__perqueue_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:36
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    68be:	
000068c2 <L0^A>:
    68c2:	10 00       	bra	@r0+		;

000068c4 <.Loc.37.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:37
    queue->_tail ^= queue->_tail;
    68c4:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    68c8:	11 00 

000068ca <.Loc.38.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:38
    queue->__head ^= queue->__head;
    68ca:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    68ce:	12 00 

000068d0 <.Loc.39.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:39
    queue->__tail ^= queue->__tail;
    68d0:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    68d4:	13 00 

000068d6 <.Loc.40.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:40
}
    68d6:	30 41       	ret			

000068d8 <__perqueue_is_empty>:
__perqueue_is_empty():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:44

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    68d8:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    68dc:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    68e0:	4c 4d       	mov.b	r13,	r12	;

000068e2 <.LVL2>:
    68e2:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    68e6:	3c 53       	add	#-1,	r12	;r3 As==11

000068e8 <.Loc.49.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:49
        return 1;
    }

    return 0;
}
    68e8:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    68ec:	30 41       	ret			

000068ee <__perqueue_is_full>:
__perqueue_is_full():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:53

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    68ee:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    68f2:	5d 53       	inc.b	r13		;
    68f4:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

000068f8 <.Loc.54.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:54
    if (queue->__tail == MAX_QUEUE_ITEMS){
    68f8:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    68fc:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    68fe:	02 20       	jnz	$+6      	;abs 0x6904

00006900 <.Loc.55.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:55
        queue->__tail = 0;
    6900:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006904 <.L5>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:59
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    6904:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6908:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    690c:	4c 4d       	mov.b	r13,	r12	;

0000690e <.LVL4>:
    690e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6912:	3c 53       	add	#-1,	r12	;r3 As==11

00006914 <.Loc.64.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:64
        return 1;
    }

    return 0;
}
    6914:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6918:	30 41       	ret			

0000691a <__perqueue_push>:
__perqueue_push():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:68

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    691a:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    691e:	5e 53       	inc.b	r14		;
    6920:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

00006924 <.Loc.69.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:69
    if (queue->__tail == MAX_QUEUE_ITEMS)
    6924:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    6928:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    692a:	02 20       	jnz	$+6      	;abs 0x6930

0000692c <.Loc.70.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:70
        queue->__tail = 0;
    692c:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006930 <.L7>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:74
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    6930:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

00006934 <.Loc.74.1>:
    6934:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006938 <.Loc.74.1>:
    6938:	0f 9e       	cmp	r14,	r15	;
    693a:	08 24       	jz	$+18     	;abs 0x694c

0000693c <.Loc.79.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:79
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    693c:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006940 <.Loc.79.1>:
    6940:	5e 02       	rlam	#1,	r14	;
    6942:	0c 5e       	add	r14,	r12	;

00006944 <.LVL6>:
    6944:	8c 4d 00 00 	mov	r13,	0(r12)	;

00006948 <.Loc.81.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:81

    return 1;
    6948:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000694a <.Loc.82.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:82
}
    694a:	30 41       	ret			

0000694c <.L9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:75
        return 0;
    694c:	4c 43       	clr.b	r12		;

0000694e <.LVL8>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:82
}
    694e:	30 41       	ret			

00006950 <__perqueue_push_commit>:
__perqueue_push_commit():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:88

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    6950:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    6954:	11 00 

00006956 <.Loc.89.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:89
}
    6956:	30 41       	ret			

00006958 <__perqueue_pop>:
__perqueue_pop():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:93

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6958:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

0000695c <.Loc.93.1>:
    695c:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

00006960 <.Loc.93.1>:
    6960:	0e 9d       	cmp	r13,	r14	;
    6962:	11 24       	jz	$+36     	;abs 0x6986

00006964 <.Loc.98.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:98
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    6964:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6968:	5d 53       	inc.b	r13		;
    696a:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

0000696e <.Loc.99.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:99
    if (queue->__head == MAX_QUEUE_ITEMS)
    696e:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    6972:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6974:	02 20       	jnz	$+6      	;abs 0x697a

00006976 <.Loc.100.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:100
        queue->__head = 0;
    6976:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

0000697a <.L13>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:102

    return queue->_items[queue->_head];
    697a:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

0000697e <.Loc.102.1>:
    697e:	5d 02       	rlam	#1,	r13	;
    6980:	0c 5d       	add	r13,	r12	;

00006982 <.LVL11>:
    6982:	2c 4c       	mov	@r12,	r12	;

00006984 <.Loc.103.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:103
}
    6984:	30 41       	ret			

00006986 <.L14>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:94
        return NULL;
    6986:	4c 43       	clr.b	r12		;

00006988 <.LVL13>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:103
}
    6988:	30 41       	ret			

0000698a <__perqueue_pop_commit>:
__perqueue_pop_commit():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:108

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    698a:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    698e:	10 00 

00006990 <.Loc.109.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/isr/persistentqueue.c:109
}
    6990:	30 41       	ret			

00006992 <__dma_word_copy>:
__dma_word_copy():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:36
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    6992:	0a 15       	pushm	#1,	r10	;16-bit words

00006994 <.LCFI0>:
    6994:	21 82       	sub	#4,	r1	;r2 As==10

00006996 <.LBB2>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:38
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    6996:	0a 4c       	mov	r12,	r10	;
    6998:	0b 43       	clr	r11		;
    699a:	81 4a 00 00 	mov	r10,	0(r1)	;
    699e:	81 4b 02 00 	mov	r11,	2(r1)	;

000069a2 <.Loc.38.1>:
    69a2:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

000069a6 <.LVL1>:
    69a6:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    69aa:	00 00 

000069ac <.LBB3>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:40
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    69ac:	0a 4d       	mov	r13,	r10	;
    69ae:	0b 43       	clr	r11		;

000069b0 <.LVL2>:
    69b0:	81 4a 00 00 	mov	r10,	0(r1)	;
    69b4:	81 4b 02 00 	mov	r11,	2(r1)	;

000069b8 <.Loc.40.1>:
    69b8:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    69bc:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    69c0:	00 00 

000069c2 <.LBE3>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:42
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    69c2:	82 4e 1a 05 	mov	r14,	&0x051a	;

000069c6 <.Loc.43.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:43
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    69c6:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    69ca:	10 05 

000069cc <.Loc.44.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:44
    DMA0CTL |= DMAEN;                         // Enable DMA0
    69cc:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    69d0:	10 05 

000069d2 <.Loc.46.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:46

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    69d2:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

000069d6 <.Loc.47.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/dma.c:47
}
    69d6:	21 52       	add	#4,	r1	;r2 As==10

000069d8 <.LCFI2>:
    69d8:	0a 17       	popm	#1,	r10	;16-bit words

000069da <.LCFI3>:
    69da:	30 41       	ret			

000069dc <__mcu_init>:
__mcu_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:36

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    69dc:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    69e0:	5c 01 

000069e2 <.Loc.40.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:40


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    69e2:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    69e6:	40 01 

000069e8 <L0^A>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:41
  __delay_cycles(3);
    69e8:	00 3c       	jmp	$+2      	;abs 0x69ea
    69ea:	03 43       	nop			

000069ec <.Loc.44.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:44

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    69ec:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    69f0:	41 01 

000069f2 <L0^A>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:46
  
  __delay_cycles(3);
    69f2:	00 3c       	jmp	$+2      	;abs 0x69f4
    69f4:	03 43       	nop			

000069f6 <.Loc.48.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:48

  __led_init(LED1);
    69f6:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    69fa:	23 02 

000069fc <.Loc.48.1>:
    69fc:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    6a00:	25 02 

00006a02 <.Loc.48.1>:
    6a02:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6a06:	23 02 

00006a08 <.Loc.48.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:49
  __led_init(LED2);
    6a08:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006a0c <.Loc.49.1>:
    6a0c:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

00006a10 <.Loc.49.1>:
    6a10:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006a14 <.Loc.49.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:51
  
  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    6a14:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00006a18 <.Loc.53.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/mcu/msp430/msp430fr5969.c:53

}
    6a18:	30 41       	ret			

00006a1a <__priority_init>:
__priority_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:84

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    6a1a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006a1e <.Loc.83.1>:
    6a1e:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00006a22 <.Loc.83.1>:
    6a22:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006a26 <.Loc.83.1>:
    6a26:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006a2a <.Loc.83.1>:
    6a2a:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006a2e <.Loc.83.1>:
    6a2e:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00006a32 <.Loc.83.1>:
    6a32:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006a36 <.Loc.83.1>:
    6a36:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006a3a <.Loc.83.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:87
    }

    p->_readyLevel = 0x0;
    6a3a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006a3e <.Loc.88.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:88
}
    6a3e:	30 41       	ret			

00006a40 <__priority_insert>:
__priority_insert():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:92

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    6a40:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006a44 <.Loc.93.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:96
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    6a44:	0e 4c       	mov	r12,	r14	;
    6a46:	5e 09       	rram	#3,	r14	;

00006a48 <.Loc.99.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:99
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    6a48:	7e f0 07 00 	and.b	#7,	r14	;

00006a4c <.Loc.99.1>:
    6a4c:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    6a50:	08 00 

00006a52 <.Loc.100.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:100
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    6a52:	0d 5e       	add	r14,	r13	;

00006a54 <.LVL12>:
    6a54:	7c f0 07 00 	and.b	#7,	r12	;

00006a58 <.LVL13>:
    6a58:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    6a5c:	00 00 

00006a5e <.Loc.101.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:101
}
    6a5e:	30 41       	ret			

00006a60 <__priority_remove>:
__priority_remove():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:105

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    6a60:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006a64 <.Loc.106.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:109
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    6a64:	0e 4c       	mov	r12,	r14	;
    6a66:	5e 09       	rram	#3,	r14	;

00006a68 <.Loc.112.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:112
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    6a68:	7e f0 07 00 	and.b	#7,	r14	;
    6a6c:	0f 4d       	mov	r13,	r15	;
    6a6e:	0f 5e       	add	r14,	r15	;

00006a70 <.Loc.112.1>:
    6a70:	7c f0 07 00 	and.b	#7,	r12	;

00006a74 <.LVL16>:
    6a74:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    6a78:	00 00 

00006a7a <.Loc.114.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:114

    if(!p->_readyTable[priorityLevel])    {
    6a7a:	6c 4f       	mov.b	@r15,	r12	;

00006a7c <.Loc.114.1>:
    6a7c:	0c 93       	cmp	#0,	r12	;r3 As==00
    6a7e:	03 20       	jnz	$+8      	;abs 0x6a86

00006a80 <.Loc.115.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:115
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    6a80:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    6a84:	08 00 

00006a86 <.L4>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:117
    }
}
    6a86:	30 41       	ret			

00006a88 <__priority_highest>:
__priority_highest():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:124
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    6a88:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00006a8c <.LVL18>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:125
    priorityBits = p->_readyTable[priorityLevel];
    6a8c:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00006a90 <.LVL19>:
    6a90:	0c 5d       	add	r13,	r12	;

00006a92 <.LVL20>:
    6a92:	6e 4c       	mov.b	@r12,	r14	;

00006a94 <.Loc.127.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:127

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    6a94:	0c 4d       	mov	r13,	r12	;
    6a96:	5c 0a       	rlam	#3,	r12	;

00006a98 <.Loc.128.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/scheduler/priority.c:128
}
    6a98:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    6a9c:	30 41       	ret			

00006a9e <stop_timer>:
stop_timer():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:156


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    6a9e:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00006aa2 <.Loc.157.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:157
    TA2CTL = 0;
    6aa2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006aa6 <.Loc.158.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:158
}
    6aa6:	30 41       	ret			

00006aa8 <timerA2_init>:
timerA2_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:158
    6aa8:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    6aac:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    6ab0:	30 41       	ret			

00006ab2 <set_timer_wkup>:
set_timer_wkup():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:178
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    6ab2:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00006ab6 <.Loc.179.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:179
    TA0CCR0 = ticks;
    6ab6:	82 4c 52 03 	mov	r12,	&0x0352	;

00006aba <.Loc.180.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:180
    TA0CCTL0 = CCIE;
    6aba:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    6abe:	42 03 

00006ac0 <.Loc.181.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:181
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6ac0:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    6ac4:	40 03 

00006ac6 <.Loc.182.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:182
}
    6ac6:	30 41       	ret			

00006ac8 <set_timer_xpr>:
set_timer_xpr():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:185

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    6ac8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006acc <.Loc.186.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:186
    TA2CCR0 = ticks;
    6acc:	82 4c 12 04 	mov	r12,	&0x0412	;

00006ad0 <.Loc.187.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:187
    TA2CCTL0 = CCIE;
    6ad0:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    6ad4:	02 04 

00006ad6 <.Loc.188.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:188
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    6ad6:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    6ada:	00 04 

00006adc <.Loc.190.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:190

}
    6adc:	30 41       	ret			

00006ade <stop_timer_xpr>:
stop_timer_xpr():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:190
    6ade:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    6ae2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    6ae6:	30 41       	ret			

00006ae8 <set_timer_pdc>:
set_timer_pdc():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:201
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    6ae8:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00006aec <.Loc.202.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:202
    TA1CCR0 = ticks;
    6aec:	82 4c 92 03 	mov	r12,	&0x0392	;

00006af0 <.Loc.203.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:203
    TA1CCTL0 = CCIE;
    6af0:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    6af4:	82 03 

00006af6 <.Loc.204.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:204
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6af6:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    6afa:	80 03 

00006afc <.Loc.205.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:205
}
    6afc:	30 41       	ret			

00006afe <__setup_rtc>:
__setup_rtc():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:247
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    6afe:	30 41       	ret			

00006b00 <__setup_clock>:
__setup_clock():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:252

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    6b00:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    6b04:	61 01 

00006b06 <.Loc.253.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:253
  CSCTL2 = SELA__VLOCLK;
    6b06:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    6b0a:	64 01 

00006b0c <.Loc.254.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:254
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    6b0c:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00006b10 <.Loc.255.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:255
  CSCTL0_H = 0;
    6b10:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00006b14 <.Loc.257.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:257

}
    6b14:	30 41       	ret			

00006b16 <__get_rtc_time>:
__get_rtc_time():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:298
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    6b16:	4c 43       	clr.b	r12		;
    6b18:	4d 43       	clr.b	r13		;
    6b1a:	30 41       	ret			

00006b1c <__get_time_init>:
__get_time_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:334
{   
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    6b1c:	82 43 d8 51 	mov	#0,	&0x51d8	;r3 As==00
    6b20:	82 43 da 51 	mov	#0,	&0x51da	;r3 As==00

00006b24 <.Loc.337.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:337

    //stop TA1 timer
    TA3CTL = 0;
    6b24:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006b28 <.Loc.339.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:339
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    6b28:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    6b2c:	40 04 

00006b2e <.Loc.341.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:341

    __bis_SR_register(GIE);
    6b2e:	03 43       	nop			
    6b30:	32 d2       	eint			
    6b32:	03 43       	nop			

00006b34 <.Loc.342.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:342
}
    6b34:	30 41       	ret			

00006b36 <__get_time_stop>:
__get_time_stop():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:349
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    6b36:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006b3a <.Loc.350.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:350
    TA3CCTL0 = 0;
    6b3a:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006b3e <.Loc.351.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:351
}
    6b3e:	30 41       	ret			

00006b40 <__get_time>:
__get_time():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:361
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    6b40:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6b44:	40 04 

00006b46 <.Loc.363.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:363

   tmp = TA3R;
    6b46:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00006b4a <.Loc.365.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:365

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    6b4a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6b4e:	40 04 

00006b50 <.Loc.369.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:369



   return (tmp*10 + current_ticks);//current_ticks/1000;
    6b50:	0d 43       	clr	r13		;

00006b52 <.LVL4>:
    6b52:	0e 4c       	mov	r12,	r14	;
    6b54:	0f 4d       	mov	r13,	r15	;
    6b56:	0e 5e       	rla	r14		;
    6b58:	0f 6f       	rlc	r15		;
    6b5a:	0e 5e       	rla	r14		;
    6b5c:	0f 6f       	rlc	r15		;
    6b5e:	0c 5e       	add	r14,	r12	;

00006b60 <.LVL5>:
    6b60:	0d 6f       	addc	r15,	r13	;
    6b62:	0c 5c       	rla	r12		;
    6b64:	0d 6d       	rlc	r13		;

00006b66 <.Loc.370.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:370
}
    6b66:	1c 52 d8 51 	add	&0x51d8,r12	;0x51d8
    6b6a:	1d 62 da 51 	addc	&0x51da,r13	;0x51da
    6b6e:	30 41       	ret			

00006b70 <isr_TIMER3_A1_VECTOR>:
isr_TIMER3_A1_VECTOR():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:378
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    6b70:	b2 50 aa 00 	add	#170,	&0x51d8	;#0x00aa
    6b74:	d8 51 
    6b76:	b2 60 0a 00 	addc	#10,	&0x51da	;#0x000a
    6b7a:	da 51 

00006b7c <.Loc.380.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:380
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    6b7c:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00006b80 <.Loc.381.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/mcu_specifics/clk.c:381
}
    6b80:	00 13       	reti			

00006b82 <_pers_timer_init>:
_pers_timer_init():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:36

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    6b82:	3c 40 dc 51 	mov	#20956,	r12	;#0x51dc
    6b86:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00006b8a <.Loc.34.1>:
    6b8a:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00006b8e <.Loc.34.1>:
    6b8e:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00006b92 <.Loc.34.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:40
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED; 
    6b92:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00006b96 <.Loc.38.1>:
    6b96:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00006b9a <.Loc.38.1>:
    6b9a:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00006b9e <.Loc.38.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:44
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED; 
    6b9e:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00006ba2 <.Loc.42.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:46
	}
}
    6ba2:	30 41       	ret			

00006ba4 <_pers_timer_update_data>:
_pers_timer_update_data():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:48

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    6ba4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006ba8 <.Loc.50.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:50
	//update the persistent timer dirty buffer
	switch(interface)
    6ba8:	1d 93       	cmp	#1,	r13	;r3 As==01
    6baa:	1b 24       	jz	$+56     	;abs 0x6be2
    6bac:	2d 93       	cmp	#2,	r13	;r3 As==10
    6bae:	0e 24       	jz	$+30     	;abs 0x6bcc
    6bb0:	0d 93       	cmp	#0,	r13	;r3 As==00
    6bb2:	01 24       	jz	$+4      	;abs 0x6bb6

00006bb4 <.Loc.69.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:69
		default:
			break;
	}

		
}
    6bb4:	30 41       	ret			

00006bb6 <.L7>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:53
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    6bb6:	0d 4c       	mov	r12,	r13	;

00006bb8 <.LVL9>:
    6bb8:	5d 06       	rlam	#2,	r13	;
    6bba:	0c 5d       	add	r13,	r12	;

00006bbc <.LVL10>:
    6bbc:	5c 02       	rlam	#1,	r12	;
    6bbe:	8c 4e 44 52 	mov	r14,	21060(r12); 0x5244
    6bc2:	8c 4f 46 52 	mov	r15,	21062(r12); 0x5246

00006bc6 <.Loc.54.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:54
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6bc6:	9c 43 48 52 	mov	#1,	21064(r12);r3 As==01, 0x5248

00006bca <.Loc.55.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:69
}
    6bca:	30 41       	ret			

00006bcc <.L5>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:57
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    6bcc:	0d 4c       	mov	r12,	r13	;

00006bce <.LVL12>:
    6bce:	5d 06       	rlam	#2,	r13	;
    6bd0:	0c 5d       	add	r13,	r12	;
    6bd2:	5c 02       	rlam	#1,	r12	;
    6bd4:	8c 4e 62 52 	mov	r14,	21090(r12); 0x5262
    6bd8:	8c 4f 64 52 	mov	r15,	21092(r12); 0x5264

00006bdc <.Loc.58.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:58
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6bdc:	9c 43 66 52 	mov	#1,	21094(r12);r3 As==01, 0x5266

00006be0 <.Loc.59.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:69
}
    6be0:	30 41       	ret			

00006be2 <.L4>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:61
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    6be2:	0d 4c       	mov	r12,	r13	;

00006be4 <.LVL14>:
    6be4:	5d 06       	rlam	#2,	r13	;
    6be6:	0c 5d       	add	r13,	r12	;
    6be8:	5c 02       	rlam	#1,	r12	;
    6bea:	8c 4e 80 52 	mov	r14,	21120(r12); 0x5280
    6bee:	8c 4f 82 52 	mov	r15,	21122(r12); 0x5282

00006bf2 <.Loc.62.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:62
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6bf2:	9c 43 84 52 	mov	#1,	21124(r12);r3 As==01, 0x5284

00006bf6 <.Loc.63.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:69
}
    6bf6:	30 41       	ret			

00006bf8 <_pers_timer_update_thread_id>:
_pers_timer_update_thread_id():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:71

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    6bf8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6bfc:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006c00 <.Loc.73.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:73
	//update the persistent timer dirty buffer
	switch (interface)
    6c00:	1d 93       	cmp	#1,	r13	;r3 As==01
    6c02:	17 24       	jz	$+48     	;abs 0x6c32
    6c04:	2d 93       	cmp	#2,	r13	;r3 As==10
    6c06:	0c 24       	jz	$+26     	;abs 0x6c20
    6c08:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c0a:	01 24       	jz	$+4      	;abs 0x6c0e

00006c0c <.Loc.91.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:91
			break;
		default:
			break;
	}

}
    6c0c:	30 41       	ret			

00006c0e <.L12>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:76
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    6c0e:	0d 4c       	mov	r12,	r13	;

00006c10 <.LVL16>:
    6c10:	5d 06       	rlam	#2,	r13	;
    6c12:	0c 5d       	add	r13,	r12	;

00006c14 <.LVL17>:
    6c14:	5c 02       	rlam	#1,	r12	;
    6c16:	cc 4e 42 52 	mov.b	r14,	21058(r12); 0x5242

00006c1a <.Loc.77.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:77
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6c1a:	9c 43 48 52 	mov	#1,	21064(r12);r3 As==01, 0x5248

00006c1e <.Loc.78.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:91
}
    6c1e:	30 41       	ret			

00006c20 <.L10>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:80
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    6c20:	0d 4c       	mov	r12,	r13	;

00006c22 <.LVL19>:
    6c22:	5d 06       	rlam	#2,	r13	;
    6c24:	0c 5d       	add	r13,	r12	;
    6c26:	5c 02       	rlam	#1,	r12	;
    6c28:	cc 4e 60 52 	mov.b	r14,	21088(r12); 0x5260

00006c2c <.Loc.81.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:81
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6c2c:	9c 43 66 52 	mov	#1,	21094(r12);r3 As==01, 0x5266

00006c30 <.Loc.82.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:91
}
    6c30:	30 41       	ret			

00006c32 <.L9>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:84
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    6c32:	0d 4c       	mov	r12,	r13	;

00006c34 <.LVL21>:
    6c34:	5d 06       	rlam	#2,	r13	;
    6c36:	0c 5d       	add	r13,	r12	;
    6c38:	5c 02       	rlam	#1,	r12	;
    6c3a:	cc 4e 7e 52 	mov.b	r14,	21118(r12); 0x527e

00006c3e <.Loc.85.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:85
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6c3e:	9c 43 84 52 	mov	#1,	21124(r12);r3 As==01, 0x5284

00006c42 <.Loc.86.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:91
}
    6c42:	30 41       	ret			

00006c44 <_pers_timer_update_status>:
_pers_timer_update_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:93

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    6c44:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006c48 <.Loc.95.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:95
	//update the persistent timer dirty buffer
	switch (interface)
    6c48:	1d 93       	cmp	#1,	r13	;r3 As==01
    6c4a:	17 24       	jz	$+48     	;abs 0x6c7a
    6c4c:	2d 93       	cmp	#2,	r13	;r3 As==10
    6c4e:	0c 24       	jz	$+26     	;abs 0x6c68
    6c50:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c52:	01 24       	jz	$+4      	;abs 0x6c56

00006c54 <.Loc.113.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:113
			break;
		default:
			break;

	}
}
    6c54:	30 41       	ret			

00006c56 <.L17>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:98
			pers_timer_vars[1].wkup_timing[idx].status = status;
    6c56:	0d 4c       	mov	r12,	r13	;

00006c58 <.LVL23>:
    6c58:	5d 06       	rlam	#2,	r13	;
    6c5a:	0c 5d       	add	r13,	r12	;

00006c5c <.LVL24>:
    6c5c:	5c 02       	rlam	#1,	r12	;
    6c5e:	8c 4e 40 52 	mov	r14,	21056(r12); 0x5240

00006c62 <.Loc.99.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:99
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6c62:	9c 43 48 52 	mov	#1,	21064(r12);r3 As==01, 0x5248

00006c66 <.Loc.100.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:113
}
    6c66:	30 41       	ret			

00006c68 <.L15>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:102
			pers_timer_vars[1].xpr_timing[idx].status = status;
    6c68:	0d 4c       	mov	r12,	r13	;

00006c6a <.LVL26>:
    6c6a:	5d 06       	rlam	#2,	r13	;
    6c6c:	0c 5d       	add	r13,	r12	;
    6c6e:	5c 02       	rlam	#1,	r12	;
    6c70:	8c 4e 5e 52 	mov	r14,	21086(r12); 0x525e

00006c74 <.Loc.103.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:103
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6c74:	9c 43 66 52 	mov	#1,	21094(r12);r3 As==01, 0x5266

00006c78 <.Loc.104.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:113
}
    6c78:	30 41       	ret			

00006c7a <.L14>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:106
			pers_timer_vars[1].pdc_timing[idx].status = status;
    6c7a:	0d 4c       	mov	r12,	r13	;

00006c7c <.LVL28>:
    6c7c:	5d 06       	rlam	#2,	r13	;
    6c7e:	0c 5d       	add	r13,	r12	;
    6c80:	5c 02       	rlam	#1,	r12	;
    6c82:	8c 4e 7c 52 	mov	r14,	21116(r12); 0x527c

00006c86 <.Loc.107.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:107
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6c86:	9c 43 84 52 	mov	#1,	21124(r12);r3 As==01, 0x5284

00006c8a <.Loc.108.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:113
}
    6c8a:	30 41       	ret			

00006c8c <_pers_timer_update_nxt_thread>:
_pers_timer_update_nxt_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:117

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    6c8c:	0e 4c       	mov	r12,	r14	;
    6c8e:	5e 0a       	rlam	#3,	r14	;
    6c90:	ce 4d 88 52 	mov.b	r13,	21128(r14); 0x5288

00006c94 <.Loc.118.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:118
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6c94:	9e 43 8c 52 	mov	#1,	21132(r14);r3 As==01, 0x528c

00006c98 <.Loc.119.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:119
}
    6c98:	30 41       	ret			

00006c9a <_pers_timer_update_nxt_time>:
_pers_timer_update_nxt_time():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:123

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    6c9a:	0e 4c       	mov	r12,	r14	;
    6c9c:	5e 0a       	rlam	#3,	r14	;
    6c9e:	8e 4d 8a 52 	mov	r13,	21130(r14); 0x528a

00006ca2 <.Loc.124.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:124
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6ca2:	9e 43 8c 52 	mov	#1,	21132(r14);r3 As==01, 0x528c

00006ca6 <.Loc.125.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:125
}
    6ca6:	30 41       	ret			

00006ca8 <_pers_timer_update_lock>:
_pers_timer_update_lock():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:129

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    6ca8:	1c 93       	cmp	#1,	r12	;r3 As==01
    6caa:	0b 24       	jz	$+24     	;abs 0x6cc2
    6cac:	2c 93       	cmp	#2,	r12	;r3 As==10
    6cae:	06 24       	jz	$+14     	;abs 0x6cbc
    6cb0:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cb2:	01 24       	jz	$+4      	;abs 0x6cb6

00006cb4 <.Loc.145.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:145
		default:
			break;

	}

}
    6cb4:	30 41       	ret			

00006cb6 <.L24>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:132
			wkup_tstatus = TIMER_COMMIT;
    6cb6:	92 43 a4 52 	mov	#1,	&0x52a4	;r3 As==01

00006cba <.Loc.133.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:145
}
    6cba:	30 41       	ret			

00006cbc <.L22>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:135
			xpr_tstatus = TIMER_COMMIT;
    6cbc:	92 43 a6 52 	mov	#1,	&0x52a6	;r3 As==01

00006cc0 <.Loc.136.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:145
}
    6cc0:	30 41       	ret			

00006cc2 <.L21>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:138
			pdc_tstatus = TIMER_COMMIT;
    6cc2:	92 43 a8 52 	mov	#1,	&0x52a8	;r3 As==01

00006cc6 <.Loc.139.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:145
}
    6cc6:	30 41       	ret			

00006cc8 <_commit_timer_buffers>:
_commit_timer_buffers():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:153

void _commit_timer_buffers(ink_time_interface_t interface){
	
	uint8_t i;
	
	switch (interface){
    6cc8:	3d 40 dc 51 	mov	#20956,	r13	;#0x51dc
    6ccc:	1c 93       	cmp	#1,	r12	;r3 As==01
    6cce:	18 24       	jz	$+50     	;abs 0x6d00
    6cd0:	2c 93       	cmp	#2,	r12	;r3 As==10
    6cd2:	40 24       	jz	$+130    	;abs 0x6d54
    6cd4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cd6:	26 24       	jz	$+78     	;abs 0x6d24

00006cd8 <.L28>:
    6cd8:	0e 4c       	mov	r12,	r14	;
    6cda:	5e 0a       	rlam	#3,	r14	;
    6cdc:	9e 93 8c 52 	cmp	#1,	21132(r14);r3 As==01, 0x528c
    6ce0:	01 24       	jz	$+4      	;abs 0x6ce4

00006ce2 <.Loc.201.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:201
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty = 
				NOT_DIRTY;
		}
	}
}
    6ce2:	30 41       	ret			

00006ce4 <.L40>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:195
			pers_timer_vars[0].next_info[interface] = 
    6ce4:	0c 4e       	mov	r14,	r12	;

00006ce6 <.LVL33>:
    6ce6:	0c 5d       	add	r13,	r12	;
    6ce8:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    6cec:	46 00 
    6cee:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    6cf2:	48 00 
    6cf4:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    6cf8:	4a 00 

00006cfa <.Loc.197.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:197
			pers_timer_vars[0].next_info[interface].__dirty = 
    6cfa:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00006cfe <.Loc.191.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:201
}
    6cfe:	30 41       	ret			

00006d00 <.L26>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:179
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    6d00:	92 93 84 52 	cmp	#1,	&0x5284	;r3 As==01
    6d04:	e9 23       	jnz	$-44     	;abs 0x6cd8

00006d06 <.Loc.182.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:182
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    6d06:	92 42 7c 52 	mov	&0x527c,&0x5218	;0x527c
    6d0a:	18 52 
    6d0c:	92 42 7e 52 	mov	&0x527e,&0x521a	;0x527e
    6d10:	1a 52 
    6d12:	92 42 80 52 	mov	&0x5280,&0x521c	;0x5280
    6d16:	1c 52 
    6d18:	92 42 82 52 	mov	&0x5282,&0x521e	;0x5282
    6d1c:	1e 52 

00006d1e <.Loc.183.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:183
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    6d1e:	82 43 20 52 	mov	#0,	&0x5220	;r3 As==00

00006d22 <.Loc.177.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:177
		for (i = 0; i < MAX_PDC_THREADS; i++)
    6d22:	da 3f       	jmp	$-74     	;abs 0x6cd8

00006d24 <.L39>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:157
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    6d24:	92 93 48 52 	cmp	#1,	&0x5248	;r3 As==01
    6d28:	5a 24       	jz	$+182    	;abs 0x6dde

00006d2a <.L29>:
    6d2a:	92 93 52 52 	cmp	#1,	&0x5252	;r3 As==01
    6d2e:	48 24       	jz	$+146    	;abs 0x6dc0

00006d30 <.L30>:
    6d30:	92 93 5c 52 	cmp	#1,	&0x525c	;r3 As==01
    6d34:	d1 23       	jnz	$-92     	;abs 0x6cd8

00006d36 <.Loc.160.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:160
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6d36:	92 42 54 52 	mov	&0x5254,&0x51f0	;0x5254
    6d3a:	f0 51 
    6d3c:	92 42 56 52 	mov	&0x5256,&0x51f2	;0x5256
    6d40:	f2 51 
    6d42:	92 42 58 52 	mov	&0x5258,&0x51f4	;0x5258
    6d46:	f4 51 
    6d48:	92 42 5a 52 	mov	&0x525a,&0x51f6	;0x525a
    6d4c:	f6 51 

00006d4e <.Loc.161.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:161
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6d4e:	82 43 f8 51 	mov	#0,	&0x51f8	;r3 As==00

00006d52 <.Loc.155.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:155
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    6d52:	c2 3f       	jmp	$-122    	;abs 0x6cd8

00006d54 <.L27>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:168
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    6d54:	92 93 66 52 	cmp	#1,	&0x5266	;r3 As==01
    6d58:	24 24       	jz	$+74     	;abs 0x6da2

00006d5a <.L32>:
    6d5a:	92 93 70 52 	cmp	#1,	&0x5270	;r3 As==01
    6d5e:	12 24       	jz	$+38     	;abs 0x6d84

00006d60 <.L33>:
    6d60:	92 93 7a 52 	cmp	#1,	&0x527a	;r3 As==01
    6d64:	b9 23       	jnz	$-140    	;abs 0x6cd8

00006d66 <.Loc.171.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:171
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6d66:	92 42 72 52 	mov	&0x5272,&0x520e	;0x5272
    6d6a:	0e 52 
    6d6c:	92 42 74 52 	mov	&0x5274,&0x5210	;0x5274
    6d70:	10 52 
    6d72:	92 42 76 52 	mov	&0x5276,&0x5212	;0x5276
    6d76:	12 52 
    6d78:	92 42 78 52 	mov	&0x5278,&0x5214	;0x5278
    6d7c:	14 52 

00006d7e <.Loc.172.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:172
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6d7e:	82 43 16 52 	mov	#0,	&0x5216	;r3 As==00

00006d82 <.Loc.166.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:166
		for (i = 0; i < MAX_XPR_THREADS; i++)
    6d82:	aa 3f       	jmp	$-170    	;abs 0x6cd8

00006d84 <.L44>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:171
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6d84:	92 42 68 52 	mov	&0x5268,&0x5204	;0x5268
    6d88:	04 52 
    6d8a:	92 42 6a 52 	mov	&0x526a,&0x5206	;0x526a
    6d8e:	06 52 
    6d90:	92 42 6c 52 	mov	&0x526c,&0x5208	;0x526c
    6d94:	08 52 
    6d96:	92 42 6e 52 	mov	&0x526e,&0x520a	;0x526e
    6d9a:	0a 52 

00006d9c <.Loc.172.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:172
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6d9c:	82 43 0c 52 	mov	#0,	&0x520c	;r3 As==00
    6da0:	df 3f       	jmp	$-64     	;abs 0x6d60

00006da2 <.L43>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:171
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6da2:	92 42 5e 52 	mov	&0x525e,&0x51fa	;0x525e
    6da6:	fa 51 
    6da8:	92 42 60 52 	mov	&0x5260,&0x51fc	;0x5260
    6dac:	fc 51 
    6dae:	92 42 62 52 	mov	&0x5262,&0x51fe	;0x5262
    6db2:	fe 51 
    6db4:	92 42 64 52 	mov	&0x5264,&0x5200	;0x5264
    6db8:	00 52 

00006dba <.Loc.172.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:172
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6dba:	82 43 02 52 	mov	#0,	&0x5202	;r3 As==00
    6dbe:	cd 3f       	jmp	$-100    	;abs 0x6d5a

00006dc0 <.L42>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:160
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6dc0:	92 42 4a 52 	mov	&0x524a,&0x51e6	;0x524a
    6dc4:	e6 51 
    6dc6:	92 42 4c 52 	mov	&0x524c,&0x51e8	;0x524c
    6dca:	e8 51 
    6dcc:	92 42 4e 52 	mov	&0x524e,&0x51ea	;0x524e
    6dd0:	ea 51 
    6dd2:	92 42 50 52 	mov	&0x5250,&0x51ec	;0x5250
    6dd6:	ec 51 

00006dd8 <.Loc.161.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:161
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6dd8:	82 43 ee 51 	mov	#0,	&0x51ee	;r3 As==00
    6ddc:	a9 3f       	jmp	$-172    	;abs 0x6d30

00006dde <.L41>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:160
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6dde:	92 42 40 52 	mov	&0x5240,&0x51dc	;0x5240
    6de2:	dc 51 
    6de4:	92 42 42 52 	mov	&0x5242,&0x51de	;0x5242
    6de8:	de 51 
    6dea:	92 42 44 52 	mov	&0x5244,&0x51e0	;0x5244
    6dee:	e0 51 
    6df0:	92 42 46 52 	mov	&0x5246,&0x51e2	;0x5246
    6df4:	e2 51 

00006df6 <.Loc.161.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:161
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6df6:	82 43 e4 51 	mov	#0,	&0x51e4	;r3 As==00
    6dfa:	97 3f       	jmp	$-208    	;abs 0x6d2a

00006dfc <_pers_timer_commit>:
_pers_timer_commit():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:204

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    6dfc:	1c 93       	cmp	#1,	r12	;r3 As==01
    6dfe:	17 24       	jz	$+48     	;abs 0x6e2e
    6e00:	2c 93       	cmp	#2,	r12	;r3 As==10
    6e02:	0c 24       	jz	$+26     	;abs 0x6e1c
    6e04:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e06:	01 24       	jz	$+4      	;abs 0x6e0a

00006e08 <.L45>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:230
			break;
		default:
			break;

	}
}
    6e08:	30 41       	ret			

00006e0a <.L49>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:207
		    if (wkup_tstatus == TIMER_COMMIT)
    6e0a:	1d 42 a4 52 	mov	&0x52a4,r13	;0x52a4

00006e0e <.Loc.207.1>:
    6e0e:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e10:	fb 23       	jnz	$-8      	;abs 0x6e08

00006e12 <.Loc.209.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:209
		    	_commit_timer_buffers(interface);
    6e12:	b0 12 c8 6c 	call	#27848		;#0x6cc8

00006e16 <.LVL49>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:210
		        wkup_tstatus = TIMER_DONE;
    6e16:	a2 43 a4 52 	mov	#2,	&0x52a4	;r3 As==10

00006e1a <.Loc.230.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:230
}
    6e1a:	30 41       	ret			

00006e1c <.L47>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:214
			if (xpr_tstatus == TIMER_COMMIT)
    6e1c:	1d 42 a6 52 	mov	&0x52a6,r13	;0x52a6

00006e20 <.Loc.214.1>:
    6e20:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e22:	f2 23       	jnz	$-26     	;abs 0x6e08

00006e24 <.Loc.216.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:216
		    	_commit_timer_buffers(interface);
    6e24:	b0 12 c8 6c 	call	#27848		;#0x6cc8

00006e28 <.LVL51>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:217
		        xpr_tstatus = TIMER_DONE;
    6e28:	a2 43 a6 52 	mov	#2,	&0x52a6	;r3 As==10

00006e2c <.Loc.230.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:230
}
    6e2c:	30 41       	ret			

00006e2e <.L46>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:220
			if (pdc_tstatus == TIMER_COMMIT)
    6e2e:	1d 42 a8 52 	mov	&0x52a8,r13	;0x52a8

00006e32 <.Loc.220.1>:
    6e32:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e34:	e9 23       	jnz	$-44     	;abs 0x6e08

00006e36 <.Loc.222.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:222
		    	_commit_timer_buffers(interface);
    6e36:	b0 12 c8 6c 	call	#27848		;#0x6cc8

00006e3a <.LVL53>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:223
		        pdc_tstatus = TIMER_DONE;
    6e3a:	a2 43 a8 52 	mov	#2,	&0x52a8	;r3 As==10

00006e3e <.Loc.230.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:230
}
    6e3e:	30 41       	ret			

00006e40 <_pers_timer_get>:
_pers_timer_get():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:232

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    6e40:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00006e44 <.Loc.233.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:233
	switch (interface)
    6e44:	1e 93       	cmp	#1,	r14	;r3 As==01
    6e46:	17 24       	jz	$+48     	;abs 0x6e76
    6e48:	2e 93       	cmp	#2,	r14	;r3 As==10
    6e4a:	2a 24       	jz	$+86     	;abs 0x6ea0

00006e4c <.Loc.242.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:242
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    6e4c:	0e 4d       	mov	r13,	r14	;

00006e4e <.LVL55>:
    6e4e:	5e 06       	rlam	#2,	r14	;
    6e50:	0d 5e       	add	r14,	r13	;

00006e52 <.LVL56>:
    6e52:	5d 02       	rlam	#1,	r13	;
    6e54:	3d 50 dc 51 	add	#20956,	r13	;#0x51dc
    6e58:	0e 4d       	mov	r13,	r14	;
    6e5a:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6e5e:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6e62:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6e66:	04 00 
    6e68:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6e6c:	06 00 
    6e6e:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6e72:	08 00 

00006e74 <.Loc.245.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:245
	}
		
}
    6e74:	30 41       	ret			

00006e76 <.L51>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:240
			return pers_timer_vars[0].pdc_timing[idx];
    6e76:	0e 4d       	mov	r13,	r14	;

00006e78 <.LVL58>:
    6e78:	5e 06       	rlam	#2,	r14	;
    6e7a:	0d 5e       	add	r14,	r13	;
    6e7c:	5d 02       	rlam	#1,	r13	;
    6e7e:	3d 50 18 52 	add	#21016,	r13	;#0x5218

00006e82 <.Loc.242.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:242
		    return pers_timer_vars[0].wkup_timing[idx];
    6e82:	0e 4d       	mov	r13,	r14	;
    6e84:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6e88:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6e8c:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6e90:	04 00 
    6e92:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6e96:	06 00 
    6e98:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6e9c:	08 00 

00006e9e <.Loc.245.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:245
}
    6e9e:	30 41       	ret			

00006ea0 <.L55>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:238
			return pers_timer_vars[0].xpr_timing[idx];
    6ea0:	0e 4d       	mov	r13,	r14	;

00006ea2 <.LVL60>:
    6ea2:	5e 06       	rlam	#2,	r14	;
    6ea4:	0d 5e       	add	r14,	r13	;
    6ea6:	5d 02       	rlam	#1,	r13	;
    6ea8:	3d 50 fa 51 	add	#20986,	r13	;#0x51fa

00006eac <.Loc.242.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:242
		    return pers_timer_vars[0].wkup_timing[idx];
    6eac:	0e 4d       	mov	r13,	r14	;
    6eae:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6eb2:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6eb6:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6eba:	04 00 
    6ebc:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6ec0:	06 00 
    6ec2:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6ec6:	08 00 

00006ec8 <.Loc.245.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:245
}
    6ec8:	30 41       	ret			

00006eca <_pers_timer_get_data>:
_pers_timer_get_data():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:247

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    6eca:	4e 4c       	mov.b	r12,	r14	;

00006ecc <.Loc.249.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:249
	//get the persistent timer from persistent buffer
	switch (interface)
    6ecc:	1d 93       	cmp	#1,	r13	;r3 As==01
    6ece:	14 24       	jz	$+42     	;abs 0x6ef8
    6ed0:	2d 93       	cmp	#2,	r13	;r3 As==10
    6ed2:	0b 24       	jz	$+24     	;abs 0x6eea
    6ed4:	4c 43       	clr.b	r12		;

00006ed6 <.LVL62>:
    6ed6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6ed8:	01 24       	jz	$+4      	;abs 0x6edc

00006eda <.Loc.262.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:262
		default:
			return 0;

	}

}
    6eda:	30 41       	ret			

00006edc <.L61>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:252
			return pers_timer_vars[0].wkup_timing[idx].data ;		
    6edc:	0c 4e       	mov	r14,	r12	;
    6ede:	5c 06       	rlam	#2,	r12	;
    6ee0:	0c 5e       	add	r14,	r12	;
    6ee2:	5c 02       	rlam	#1,	r12	;
    6ee4:	1c 4c e0 51 	mov	20960(r12),r12	;0x051e0

00006ee8 <.Loc.262.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:262
}
    6ee8:	30 41       	ret			

00006eea <.L58>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:254
			return pers_timer_vars[0].xpr_timing[idx].data ;			
    6eea:	0c 4e       	mov	r14,	r12	;

00006eec <.LVL64>:
    6eec:	5c 06       	rlam	#2,	r12	;
    6eee:	0c 5e       	add	r14,	r12	;
    6ef0:	5c 02       	rlam	#1,	r12	;
    6ef2:	1c 4c fe 51 	mov	20990(r12),r12	;0x051fe

00006ef6 <.Loc.262.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:262
}
    6ef6:	30 41       	ret			

00006ef8 <.L57>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:256
			return pers_timer_vars[0].pdc_timing[idx].data ;			
    6ef8:	0c 4e       	mov	r14,	r12	;

00006efa <.LVL66>:
    6efa:	5c 06       	rlam	#2,	r12	;
    6efc:	0c 5e       	add	r14,	r12	;
    6efe:	5c 02       	rlam	#1,	r12	;
    6f00:	1c 4c 1c 52 	mov	21020(r12),r12	;0x0521c

00006f04 <.Loc.262.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:262
}
    6f04:	30 41       	ret			

00006f06 <_pers_timer_get_thread_id>:
_pers_timer_get_thread_id():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:264

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    6f06:	4e 4c       	mov.b	r12,	r14	;

00006f08 <.Loc.266.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:266
	//get the persistent timer from persistent buffer
	switch (interface)
    6f08:	1d 93       	cmp	#1,	r13	;r3 As==01
    6f0a:	14 24       	jz	$+42     	;abs 0x6f34
    6f0c:	2d 93       	cmp	#2,	r13	;r3 As==10
    6f0e:	0b 24       	jz	$+24     	;abs 0x6f26
    6f10:	4c 43       	clr.b	r12		;

00006f12 <.LVL68>:
    6f12:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f14:	01 24       	jz	$+4      	;abs 0x6f18

00006f16 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:279
		default:
		    return	0;
	}


}
    6f16:	30 41       	ret			

00006f18 <.L67>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:269
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    6f18:	0c 4e       	mov	r14,	r12	;
    6f1a:	5c 06       	rlam	#2,	r12	;
    6f1c:	0c 5e       	add	r14,	r12	;
    6f1e:	5c 02       	rlam	#1,	r12	;
    6f20:	5c 4c de 51 	mov.b	20958(r12),r12	;0x051de

00006f24 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:279
}
    6f24:	30 41       	ret			

00006f26 <.L64>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:271
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    6f26:	0c 4e       	mov	r14,	r12	;

00006f28 <.LVL70>:
    6f28:	5c 06       	rlam	#2,	r12	;
    6f2a:	0c 5e       	add	r14,	r12	;
    6f2c:	5c 02       	rlam	#1,	r12	;
    6f2e:	5c 4c fc 51 	mov.b	20988(r12),r12	;0x051fc

00006f32 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:279
}
    6f32:	30 41       	ret			

00006f34 <.L63>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:273
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    6f34:	0c 4e       	mov	r14,	r12	;

00006f36 <.LVL72>:
    6f36:	5c 06       	rlam	#2,	r12	;
    6f38:	0c 5e       	add	r14,	r12	;
    6f3a:	5c 02       	rlam	#1,	r12	;
    6f3c:	5c 4c 1a 52 	mov.b	21018(r12),r12	;0x0521a

00006f40 <.Loc.279.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:279
}
    6f40:	30 41       	ret			

00006f42 <_pers_timer_get_status>:
_pers_timer_get_status():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:281

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    6f42:	4e 4c       	mov.b	r12,	r14	;

00006f44 <.Loc.283.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:283
	//get the persistent timer from persistent buffer
switch (interface)
    6f44:	1d 93       	cmp	#1,	r13	;r3 As==01
    6f46:	14 24       	jz	$+42     	;abs 0x6f70
    6f48:	2d 93       	cmp	#2,	r13	;r3 As==10
    6f4a:	0b 24       	jz	$+24     	;abs 0x6f62
    6f4c:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006f4e <.LVL74>:
    6f4e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f50:	01 24       	jz	$+4      	;abs 0x6f54

00006f52 <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:294
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    6f52:	30 41       	ret			

00006f54 <.L73>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:286
			return pers_timer_vars[0].wkup_timing[idx].status ;
    6f54:	0c 4e       	mov	r14,	r12	;
    6f56:	5c 06       	rlam	#2,	r12	;
    6f58:	0c 5e       	add	r14,	r12	;
    6f5a:	5c 02       	rlam	#1,	r12	;
    6f5c:	1c 4c dc 51 	mov	20956(r12),r12	;0x051dc

00006f60 <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:294
}
    6f60:	30 41       	ret			

00006f62 <.L70>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:288
			return pers_timer_vars[0].xpr_timing[idx].status ;
    6f62:	0c 4e       	mov	r14,	r12	;

00006f64 <.LVL76>:
    6f64:	5c 06       	rlam	#2,	r12	;
    6f66:	0c 5e       	add	r14,	r12	;
    6f68:	5c 02       	rlam	#1,	r12	;
    6f6a:	1c 4c fa 51 	mov	20986(r12),r12	;0x051fa

00006f6e <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:294
}
    6f6e:	30 41       	ret			

00006f70 <.L69>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:290
			return pers_timer_vars[0].pdc_timing[idx].status ;
    6f70:	0c 4e       	mov	r14,	r12	;

00006f72 <.LVL78>:
    6f72:	5c 06       	rlam	#2,	r12	;
    6f74:	0c 5e       	add	r14,	r12	;
    6f76:	5c 02       	rlam	#1,	r12	;
    6f78:	1c 4c 18 52 	mov	21016(r12),r12	;0x05218

00006f7c <.Loc.294.1>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:294
}
    6f7c:	30 41       	ret			

00006f7e <_pers_timer_get_nxt_thread>:
_pers_timer_get_nxt_thread():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:298
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    6f7e:	5c 0a       	rlam	#3,	r12	;

00006f80 <.LVL80>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:299
}
    6f80:	5c 4c 24 52 	mov.b	21028(r12),r12	;0x05224
    6f84:	30 41       	ret			

00006f86 <_pers_timer_get_nxt_time>:
_pers_timer_get_nxt_time():
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:303

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    6f86:	5c 0a       	rlam	#3,	r12	;

00006f88 <.LVL82>:
/workspaces/Thesis_Repo/InK/legacy-gcc/kernel/timer/persistent_timer_commit/persistent_timer.c:304
}
    6f88:	1c 4c 26 52 	mov	21030(r12),r12	;0x05226
    6f8c:	30 41       	ret			

00006f8e <_exit>:
exit():
../../../../../gcc/libgloss/msp430/exit.c:9 (discriminator 1)
    6f8e:	ff 3f       	jmp	$+0      	;abs 0x6f8e

00006f90 <memmove>:
memmove():
../../../../../gcc/libgloss/msp430/exit.c:9 (discriminator 1)
    6f90:	1a 15       	pushm	#2,	r10	;16-bit words

00006f92 <L0^A>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:69
    6f92:	0f 4d       	mov	r13,	r15	;
    6f94:	0f 5e       	add	r14,	r15	;

00006f96 <.Loc.69.1>:
    6f96:	0d 9c       	cmp	r12,	r13	;
    6f98:	02 2c       	jc	$+6      	;abs 0x6f9e

00006f9a <.Loc.69.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:69 (discriminator 1)
    6f9a:	0c 9f       	cmp	r15,	r12	;

00006f9c <L0^A>:
    6f9c:	07 28       	jnc	$+16     	;abs 0x6fac

00006f9e <.L2>:
    6f9e:	0e 4c       	mov	r12,	r14	;

00006fa0 <.L4>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:81
    6fa0:	0d 9f       	cmp	r15,	r13	;
    6fa2:	0a 24       	jz	$+22     	;abs 0x6fb8

00006fa4 <.LVL3>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:83
    6fa4:	fe 4d 00 00 	mov.b	@r13+,	0(r14)	;

00006fa8 <.LVL4>:
    6fa8:	1e 53       	inc	r14		;
    6faa:	fa 3f       	jmp	$-10     	;abs 0x6fa0

00006fac <.L3>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:74
    6fac:	09 4e       	mov	r14,	r9	;
    6fae:	39 e3       	inv	r9		;

00006fb0 <.Loc.74.1>:
    6fb0:	4d 43       	clr.b	r13		;

00006fb2 <.L5>:
    6fb2:	3d 53       	add	#-1,	r13	;r3 As==11

00006fb4 <.LVL7>:
    6fb4:	09 9d       	cmp	r13,	r9	;
    6fb6:	02 20       	jnz	$+6      	;abs 0x6fbc

00006fb8 <.L9>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:144
    6fb8:	19 17       	popm	#2,	r10	;16-bit words

00006fba <.LCFI1>:
    6fba:	30 41       	ret			

00006fbc <.L6>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memmove.c:76
    6fbc:	0b 4e       	mov	r14,	r11	;
    6fbe:	0b 5d       	add	r13,	r11	;
    6fc0:	0b 5c       	add	r12,	r11	;
    6fc2:	0a 4f       	mov	r15,	r10	;
    6fc4:	0a 5d       	add	r13,	r10	;

00006fc6 <.LVL10>:
    6fc6:	eb 4a 00 00 	mov.b	@r10,	0(r11)	;
    6fca:	f3 3f       	jmp	$-24     	;abs 0x6fb2

00006fcc <memset>:
memset():
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memset.c:100
    6fcc:	0e 5c       	add	r12,	r14	;

00006fce <.LVL2>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memset.c:50
    6fce:	0f 4c       	mov	r12,	r15	;

00006fd0 <L0^A>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memset.c:100
    6fd0:	0f 9e       	cmp	r14,	r15	;
    6fd2:	01 20       	jnz	$+4      	;abs 0x6fd6

00006fd4 <.Loc.104.1>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memset.c:104
    6fd4:	30 41       	ret			

00006fd6 <.L3>:
/workspaces/Thesis_Repo_ARCHIVE/devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/build/gcc/msp430-elf/newlib/libc/string/../../../../../../gcc/newlib/libc/string/memset.c:101
    6fd6:	1f 53       	inc	r15		;

00006fd8 <.LVL4>:
    6fd8:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    6fdc:	f9 3f       	jmp	$-12     	;abs 0x6fd0
