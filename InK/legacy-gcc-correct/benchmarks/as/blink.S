
bin/blink:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00005218 <__crt0_start>:
    5218:	31 40 00 24 	mov	#9216,	r1	;#0x2400

0000521c <__crt0_init_bss>:
    521c:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005220 <.Loc.76.1>:
    5220:	0d 43       	clr	r13		;

00005222 <.Loc.77.1>:
    5222:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00005226 <.Loc.81.1>:
    5226:	b0 12 32 66 	call	#26162		;#0x6632

0000522a <__crt0_call_main>:
    522a:	0c 43       	clr	r12		;

0000522c <.Loc.254.1>:
    522c:	b0 12 28 5c 	call	#23592		;#0x5c28

00005230 <__crt0_call_exit>:
    5230:	b0 12 30 66 	call	#26160		;#0x6630

00005234 <__app_init>:
    5234:	b0 12 b4 52 	call	#21172		;#0x52b4

00005238 <.Loc.32.1>:
    5238:	30 41       	ret			

0000523a <t_init>:
    523a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000523e <.Loc.40.1>:
    523e:	3c 40 48 52 	mov	#21064,	r12	;#0x5248

00005242 <.LVL1>:
    5242:	30 41       	ret			

00005244 <t_end>:
    5244:	4c 43       	clr.b	r12		;

00005246 <.LVL3>:
    5246:	30 41       	ret			

00005248 <t_blink_on>:
    5248:	0a 15       	pushm	#1,	r10	;16-bit words

0000524a <.LCFI0>:
    524a:	0a 4c       	mov	r12,	r10	;

0000524c <.Loc.45.1>:
    524c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    524e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005250 <.LVL5>:
    5250:	b0 12 8c 64 	call	#25740		;#0x648c

00005254 <.Loc.46.1>:
    5254:	9a 53 00 00 	inc	0(r10)		;

00005258 <.Loc.48.1>:
    5258:	1e 14       	pushm.a	#2,	r14	;20-bit words
    525a:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    525e:	0e 43       	clr	r14		;

00005260 <.L1^B1>:
    5260:	1d 83       	dec	r13		;
    5262:	0e 73       	sbc	r14		;
    5264:	fd 23       	jnz	$-4      	;abs 0x5260
    5266:	0d 93       	cmp	#0,	r13	;r3 As==00
    5268:	fb 23       	jnz	$-8      	;abs 0x5260
    526a:	1d 16       	popm.a	#2,	r14	;20-bit words

0000526c <L0^A>:
    526c:	00 3c       	jmp	$+2      	;abs 0x526e

0000526e <L0^A>:
    526e:	00 3c       	jmp	$+2      	;abs 0x5270
    5270:	03 43       	nop			

00005272 <.Loc.50.1>:
    5272:	3c 40 7a 52 	mov	#21114,	r12	;#0x527a
    5276:	0a 17       	popm	#1,	r10	;16-bit words

00005278 <.LCFI1>:
    5278:	30 41       	ret			

0000527a <t_blink_off>:
    527a:	0a 15       	pushm	#1,	r10	;16-bit words

0000527c <.LCFI2>:
    527c:	0a 4c       	mov	r12,	r10	;

0000527e <.Loc.55.1>:
    527e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5280:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005282 <.LVL8>:
    5282:	b0 12 a6 64 	call	#25766		;#0x64a6

00005286 <.Loc.57.1>:
    5286:	1e 14       	pushm.a	#2,	r14	;20-bit words
    5288:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    528c:	0e 43       	clr	r14		;

0000528e <.L1^B2>:
    528e:	1d 83       	dec	r13		;
    5290:	0e 73       	sbc	r14		;
    5292:	fd 23       	jnz	$-4      	;abs 0x528e
    5294:	0d 93       	cmp	#0,	r13	;r3 As==00
    5296:	fb 23       	jnz	$-8      	;abs 0x528e
    5298:	1d 16       	popm.a	#2,	r14	;20-bit words

0000529a <L0^A>:
    529a:	00 3c       	jmp	$+2      	;abs 0x529c

0000529c <L0^A>:
    529c:	00 3c       	jmp	$+2      	;abs 0x529e
    529e:	03 43       	nop			

000052a0 <.Loc.59.1>:
    52a0:	3c 40 48 52 	mov	#21064,	r12	;#0x5248

000052a4 <.Loc.59.1>:
    52a4:	ba 90 0a 00 	cmp	#10,	0(r10)	;#0x000a
    52a8:	00 00 
    52aa:	02 20       	jnz	$+6      	;abs 0x52b0

000052ac <.Loc.61.1>:
    52ac:	3c 40 44 52 	mov	#21060,	r12	;#0x5244

000052b0 <.L4>:
    52b0:	0a 17       	popm	#1,	r10	;16-bit words

000052b2 <.LCFI3>:
    52b2:	30 41       	ret			

000052b4 <thread1_init>:
    52b4:	21 83       	decd	r1		;

000052b6 <.LCFI4>:
    52b6:	a1 43 00 00 	mov	#2,	0(r1)	;r3 As==10
    52ba:	3f 40 26 45 	mov	#17702,	r15	;#0x4526
    52be:	3e 40 24 45 	mov	#17700,	r14	;#0x4524
    52c2:	3d 40 3a 52 	mov	#21050,	r13	;#0x523a
    52c6:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    52ca:	b0 12 26 53 	call	#21286		;#0x5326

000052ce <.Loc.23.1>:
    52ce:	32 c2       	dint			
    52d0:	03 43       	nop			

000052d2 <.Loc.23.1>:
    52d2:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    52d6:	b0 12 16 54 	call	#21526		;#0x5416
    52da:	b0 12 fa 53 	call	#21498		;#0x53fa

000052de <.Loc.23.1>:
    52de:	03 43       	nop			
    52e0:	32 d2       	eint			
    52e2:	03 43       	nop			

000052e4 <.Loc.24.1>:
    52e4:	21 53       	incd	r1		;

000052e6 <.LCFI5>:
    52e6:	30 41       	ret			

000052e8 <__app_reboot>:
    52e8:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    52ec:	22 02 

000052ee <.Loc.29.1>:
    52ee:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    52f2:	24 02 

000052f4 <.Loc.29.1>:
    52f4:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    52f8:	22 02 

000052fa <.Loc.29.1>:
    52fa:	30 41       	ret			

000052fc <__scheduler_boot_init>:
    52fc:	0a 15       	pushm	#1,	r10	;16-bit words

000052fe <.LCFI0>:
    52fe:	3c 40 2a 45 	mov	#17706,	r12	;#0x452a
    5302:	b0 12 18 5f 	call	#24344		;#0x5f18

00005306 <.Loc.65.1>:
    5306:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

0000530a <.L2>:
    530a:	0c 4a       	mov	r10,	r12	;
    530c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5310:	b0 12 f2 65 	call	#26098		;#0x65f2
    5314:	1c 4c 36 45 	mov	17718(r12),r12	;0x04536

00005318 <.LVL3>:
    5318:	3a 53       	add	#-1,	r10	;r3 As==11

0000531a <.Loc.67.1>:
    531a:	0a 93       	cmp	#0,	r10	;r3 As==00
    531c:	f6 23       	jnz	$-18     	;abs 0x530a

0000531e <.Loc.71.1>:
    531e:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00005322 <.Loc.72.1>:
    5322:	0a 17       	popm	#1,	r10	;16-bit words

00005324 <.LCFI1>:
    5324:	30 41       	ret			

00005326 <__create_thread>:
    5326:	3a 15       	pushm	#4,	r10	;16-bit words

00005328 <.LCFI2>:
    5328:	4a 4c       	mov.b	r12,	r10	;
    532a:	09 4d       	mov	r13,	r9	;
    532c:	07 4e       	mov	r14,	r7	;
    532e:	08 4f       	mov	r15,	r8	;

00005330 <.Loc.79.1>:
    5330:	0c 4a       	mov	r10,	r12	;

00005332 <.LVL6>:
    5332:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

00005336 <.LVL7>:
    5336:	b0 12 f2 65 	call	#26098		;#0x65f2

0000533a <.LVL8>:
    533a:	cc 4a 34 45 	mov.b	r10,	17716(r12); 0x4534

0000533e <.Loc.80.1>:
    533e:	0c 4a       	mov	r10,	r12	;
    5340:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5344:	b0 12 f2 65 	call	#26098		;#0x65f2
    5348:	8c 49 38 45 	mov	r9,	17720(r12); 0x4538

0000534c <.Loc.81.1>:
    534c:	0c 4a       	mov	r10,	r12	;
    534e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5352:	b0 12 f2 65 	call	#26098		;#0x65f2
    5356:	8c 49 3a 45 	mov	r9,	17722(r12); 0x453a

0000535a <.Loc.82.1>:
    535a:	0c 4a       	mov	r10,	r12	;
    535c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5360:	b0 12 f2 65 	call	#26098		;#0x65f2
    5364:	bc 42 36 45 	mov	#8,	17718(r12);r2 As==11, 0x4536

00005368 <.Loc.85.1>:
    5368:	0c 4a       	mov	r10,	r12	;
    536a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    536e:	b0 12 f2 65 	call	#26098		;#0x65f2
    5372:	8c 47 3e 45 	mov	r7,	17726(r12); 0x453e

00005376 <.Loc.86.1>:
    5376:	0c 4a       	mov	r10,	r12	;
    5378:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    537c:	b0 12 f2 65 	call	#26098		;#0x65f2
    5380:	8c 48 40 45 	mov	r8,	17728(r12); 0x4540

00005384 <.Loc.87.1>:
    5384:	0c 4a       	mov	r10,	r12	;
    5386:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    538a:	b0 12 f2 65 	call	#26098		;#0x65f2
    538e:	cc 43 42 45 	mov.b	#0,	17730(r12);r3 As==00, 0x4542

00005392 <.Loc.88.1>:
    5392:	0c 4a       	mov	r10,	r12	;
    5394:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5398:	b0 12 f2 65 	call	#26098		;#0x65f2
    539c:	9c 41 0a 00 	mov	10(r1),	17732(r12);0x0000a, 0x4544
    53a0:	44 45 

000053a2 <.Loc.89.1>:
    53a2:	37 17       	popm	#4,	r10	;16-bit words

000053a4 <.LCFI3>:
    53a4:	30 41       	ret			

000053a6 <__stop_thread>:
    53a6:	0a 15       	pushm	#1,	r10	;16-bit words

000053a8 <.LCFI4>:
    53a8:	0a 4c       	mov	r12,	r10	;

000053aa <.Loc.93.1>:
    53aa:	3d 40 2a 45 	mov	#17706,	r13	;#0x452a
    53ae:	6c 4c       	mov.b	@r12,	r12	;

000053b0 <.LVL17>:
    53b0:	b0 12 5e 5f 	call	#24414		;#0x5f5e

000053b4 <.Loc.94.1>:
    53b4:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000053b8 <.Loc.95.1>:
    53b8:	0a 17       	popm	#1,	r10	;16-bit words

000053ba <.LCFI5>:
    53ba:	30 41       	ret			

000053bc <__evict_thread>:
    53bc:	0a 15       	pushm	#1,	r10	;16-bit words

000053be <.LCFI6>:
    53be:	0a 4c       	mov	r12,	r10	;

000053c0 <.Loc.99.1>:
    53c0:	3d 40 2a 45 	mov	#17706,	r13	;#0x452a
    53c4:	6c 4c       	mov.b	@r12,	r12	;

000053c6 <.LVL20>:
    53c6:	b0 12 5e 5f 	call	#24414		;#0x5f5e

000053ca <.Loc.100.1>:
    53ca:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

000053ce <.Loc.101.1>:
    53ce:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000053d2 <.Loc.102.1>:
    53d2:	0a 17       	popm	#1,	r10	;16-bit words

000053d4 <.LCFI7>:
    53d4:	30 41       	ret			

000053d6 <__set_sing_timer>:
    53d6:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000053da <.Loc.106.1>:
    53da:	30 41       	ret			

000053dc <__set_expr_timer>:
    53dc:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

000053e0 <.Loc.112.1>:
    53e0:	30 41       	ret			

000053e2 <__set_pdc_timer>:
    53e2:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

000053e6 <.Loc.118.1>:
    53e6:	30 41       	ret			

000053e8 <__set_pdc_period>:
    53e8:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

000053ec <.Loc.123.1>:
    53ec:	30 41       	ret			

000053ee <__get_pdc_timer>:
    53ee:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

000053f2 <.LVL27>:
    53f2:	30 41       	ret			

000053f4 <__get_pdc_period>:
    53f4:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

000053f8 <.LVL29>:
    53f8:	30 41       	ret			

000053fa <__start_thread>:
    53fa:	0a 15       	pushm	#1,	r10	;16-bit words

000053fc <.LCFI8>:
    53fc:	0a 4c       	mov	r12,	r10	;

000053fe <.Loc.136.1>:
    53fe:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    5402:	06 00 

00005404 <.Loc.137.1>:
    5404:	3d 40 2a 45 	mov	#17706,	r13	;#0x452a
    5408:	6c 4c       	mov.b	@r12,	r12	;

0000540a <.LVL31>:
    540a:	b0 12 3e 5f 	call	#24382		;#0x5f3e

0000540e <.Loc.138.1>:
    540e:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005412 <.Loc.139.1>:
    5412:	0a 17       	popm	#1,	r10	;16-bit words

00005414 <.LCFI9>:
    5414:	30 41       	ret			

00005416 <__get_thread>:
    5416:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    541a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    541e:	b0 12 f2 65 	call	#26098		;#0x65f2

00005422 <.LVL34>:
    5422:	3c 50 34 45 	add	#17716,	r12	;#0x4534
    5426:	30 41       	ret			

00005428 <__scheduler_run>:
    5428:	b0 12 b6 5c 	call	#23734		;#0x5cb6

0000542c <.Loc.171.1>:
    542c:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005430 <.Loc.171.1>:
    5430:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005434 <.LBB8>:
    5434:	82 93 28 45 	cmp	#0,	&0x4528	;r3 As==00
    5438:	04 24       	jz	$+10     	;abs 0x5442

0000543a <.Loc.157.1>:
    543a:	1c 42 28 45 	mov	&0x4528,r12	;0x4528
    543e:	b0 12 ca 54 	call	#21706		;#0x54ca

00005442 <.L16>:
    5442:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005446 <.Loc.184.1>:
    5446:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000544a <.Loc.185.1>:
    544a:	b0 12 ce 55 	call	#21966		;#0x55ce

0000544e <.L31>:
    544e:	03 43       	nop			
    5450:	32 d2       	eint			
    5452:	03 43       	nop			

00005454 <.L20>:
    5454:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    5458:	0c 93       	cmp	#0,	r12	;r3 As==00
    545a:	0e 24       	jz	$+30     	;abs 0x5478
    545c:	1c 93       	cmp	#1,	r12	;r3 As==01
    545e:	fa 23       	jnz	$-10     	;abs 0x5454

00005460 <.L19>:
    5460:	82 93 28 45 	cmp	#0,	&0x4528	;r3 As==00
    5464:	21 24       	jz	$+68     	;abs 0x54a8

00005466 <.Loc.207.1>:
    5466:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000546a <.Loc.207.1>:
    546a:	1c 42 28 45 	mov	&0x4528,r12	;0x4528
    546e:	b0 12 ca 54 	call	#21706		;#0x54ca

00005472 <.Loc.211.1>:
    5472:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00005476 <.Loc.212.1>:
    5476:	ee 3f       	jmp	$-34     	;abs 0x5454

00005478 <.L18>:
    5478:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000547c <.LBB10>:
    547c:	3c 40 2a 45 	mov	#17706,	r12	;#0x452a
    5480:	b0 12 86 5f 	call	#24454		;#0x5f86
    5484:	4e 4c       	mov.b	r12,	r14	;
    5486:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000548a <.LVL40>:
    548a:	4d 43       	clr.b	r13		;

0000548c <.Loc.144.1>:
    548c:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    548e:	07 24       	jz	$+16     	;abs 0x549e

00005490 <.Loc.145.1>:
    5490:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5494:	b0 12 f2 65 	call	#26098		;#0x65f2

00005498 <.LVL41>:
    5498:	0d 4c       	mov	r12,	r13	;
    549a:	3d 50 34 45 	add	#17716,	r13	;#0x4534

0000549e <.L21>:
    549e:	82 4d 28 45 	mov	r13,	&0x4528	;

000054a2 <.Loc.201.1>:
    54a2:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01
    54a6:	dc 3f       	jmp	$-70     	;abs 0x5460

000054a8 <.L22>:
    54a8:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

000054ac <.Loc.215.1>:
    54ac:	32 c2       	dint			
    54ae:	03 43       	nop			

000054b0 <.LBB12>:
    54b0:	3c 40 2a 45 	mov	#17706,	r12	;#0x452a
    54b4:	b0 12 86 5f 	call	#24454		;#0x5f86

000054b8 <.LVL42>:
    54b8:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    54ba:	cc 23       	jnz	$-102    	;abs 0x5454

000054bc <.LBE12>:
    54bc:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000054c0 <.Loc.219.1>:
    54c0:	03 43       	nop			
    54c2:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    54c6:	03 43       	nop			

000054c8 <.Loc.222.1>:
    54c8:	c2 3f       	jmp	$-122    	;abs 0x544e

000054ca <__tick>:
    54ca:	1a 15       	pushm	#2,	r10	;16-bit words

000054cc <.LCFI0>:
    54cc:	0a 4c       	mov	r12,	r10	;

000054ce <.Loc.53.1>:
    54ce:	
000054d0 <L0^A>:
    54d0:	02 00       	mova	@r0,	r2	;

000054d2 <.LVL1>:
    54d2:	2c 93       	cmp	#2,	r12	;r3 As==10
    54d4:	3f 24       	jz	$+128    	;abs 0x5554
    54d6:	2c 92       	cmp	#4,	r12	;r2 As==10
    54d8:	4d 24       	jz	$+156    	;abs 0x5574
    54da:	1c 93       	cmp	#1,	r12	;r3 As==01
    54dc:	67 20       	jnz	$+208    	;abs 0x55ac

000054de <.LBB5>:
    54de:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    54e2:	22 02 

000054e4 <.Loc.40.1>:
    54e4:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

000054e8 <.Loc.43.1>:
    54e8:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    54ec:	5c e3       	xor.b	#1,	r12	;r3 As==01
    54ee:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000054f2 <.Loc.43.1>:
    54f2:	5c 02       	rlam	#1,	r12	;
    54f4:	0c 5a       	add	r10,	r12	;
    54f6:	5f 02       	rlam	#1,	r15	;
    54f8:	0f 5a       	add	r10,	r15	;
    54fa:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    54fe:	5e 03       	rrum	#1,	r14	;
    5500:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    5504:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    5508:	b0 12 90 5e 	call	#24208		;#0x5e90

0000550c <.Loc.45.1>:
    550c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5510:	22 02 

00005512 <.LBE5>:
    5512:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5516:	02 02 

00005518 <.Loc.60.1>:
    5518:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    551c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    551e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005522 <.Loc.63.1>:
    5522:	3c 50 05 00 	add	#5,	r12	;
    5526:	5c 02       	rlam	#1,	r12	;
    5528:	0c 5a       	add	r10,	r12	;
    552a:	29 4c       	mov	@r12,	r9	;

0000552c <.LVL5>:
    552c:	1d 4a 06 00 	mov	6(r10),	r13	;

00005530 <.Loc.66.1>:
    5530:	1d 9a 04 00 	cmp	4(r10),	r13	;
    5534:	3d 20       	jnz	$+124    	;abs 0x55b0

00005536 <.LBB7>:
    5536:	0c 4a       	mov	r10,	r12	;
    5538:	b0 12 6a 5d 	call	#23914		;#0x5d6a

0000553c <.LVL6>:
    553c:	0d 4c       	mov	r12,	r13	;
    553e:	0c 49       	mov	r9,	r12	;

00005540 <.LVL7>:
    5540:	1e 4a 04 00 	mov	4(r10),	r14	;
    5544:	8e 12       	call	r14		;

00005546 <.L17>:
    5546:	8a 4c 08 00 	mov	r12,	8(r10)	;

0000554a <.Loc.76.1>:
    554a:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000554e <.Loc.78.1>:
    554e:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5552:	02 02 

00005554 <.L2>:
    5554:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5558:	22 02 

0000555a <.Loc.82.1>:
    555a:	0c 4a       	mov	r10,	r12	;
    555c:	b0 12 98 5d 	call	#23960		;#0x5d98

00005560 <.Loc.86.1>:
    5560:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    5564:	06 00 

00005566 <.Loc.88.1>:
    5566:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    556a:	5c e3       	xor.b	#1,	r12	;r3 As==01
    556c:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

00005570 <.Loc.89.1>:
    5570:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005574 <.L3>:
    5574:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5578:	0e 00 

0000557a <.Loc.94.1>:
    557a:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    557e:	22 02 

00005580 <.Loc.94.1>:
    5580:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5584:	22 02 

00005586 <.Loc.95.1>:
    5586:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    558a:	1b 20       	jnz	$+56     	;abs 0x55c2

0000558c <.Loc.101.1>:
    558c:	32 c2       	dint			
    558e:	03 43       	nop			

00005590 <.Loc.103.1>:
    5590:	0c 4a       	mov	r10,	r12	;
    5592:	b0 12 4c 5d 	call	#23884		;#0x5d4c

00005596 <.Loc.103.1>:
    5596:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5598:	0e 20       	jnz	$+30     	;abs 0x55b6

0000559a <.Loc.105.1>:
    559a:	0c 4a       	mov	r10,	r12	;
    559c:	b0 12 a6 53 	call	#21414		;#0x53a6

000055a0 <.L9>:
    55a0:	03 43       	nop			
    55a2:	32 d2       	eint			
    55a4:	03 43       	nop			

000055a6 <.L10>:
    55a6:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    55aa:	22 02 

000055ac <.L1>:
    55ac:	19 17       	popm	#2,	r10	;16-bit words

000055ae <.LCFI1>:
    55ae:	30 41       	ret			

000055b0 <.L5>:
    55b0:	2c 4c       	mov	@r12,	r12	;
    55b2:	8d 12       	call	r13		;
    55b4:	c8 3f       	jmp	$-110    	;abs 0x5546

000055b6 <.L8>:
    55b6:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    55ba:	06 00 

000055bc <.Loc.111.1>:
    55bc:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    55c0:	ef 3f       	jmp	$-32     	;abs 0x55a0

000055c2 <.L7>:
    55c2:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    55c6:	ef 3f       	jmp	$-32     	;abs 0x55a6

000055c8 <__timers_init>:
    55c8:	b0 12 6a 60 	call	#24682		;#0x606a

000055cc <.Loc.64.1>:
    55cc:	30 41       	ret			

000055ce <__reboot_timers>:
    55ce:	30 41       	ret			

000055d0 <clear_wkup_status>:
    55d0:	2a 15       	pushm	#3,	r10	;16-bit words

000055d2 <.LCFI0>:
    55d2:	48 4c       	mov.b	r12,	r8	;

000055d4 <.Loc.100.1>:
    55d4:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

000055d8 <.Loc.101.1>:
    55d8:	49 43       	clr.b	r9		;

000055da <.L5>:
    55da:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    55de:	07 20       	jnz	$+16     	;abs 0x55ee

000055e0 <.Loc.104.1>:
    55e0:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000055e4 <.Loc.105.1>:
    55e4:	4e 43       	clr.b	r14		;
    55e6:	4d 43       	clr.b	r13		;
    55e8:	4c 49       	mov.b	r9,	r12	;
    55ea:	b0 12 28 61 	call	#24872		;#0x6128

000055ee <.L4>:
    55ee:	4c 49       	mov.b	r9,	r12	;
    55f0:	5c 53       	inc.b	r12		;
    55f2:	49 4c       	mov.b	r12,	r9	;

000055f4 <.LVL5>:
    55f4:	3a 50 0a 00 	add	#10,	r10	;#0x000a

000055f8 <.Loc.101.1>:
    55f8:	7c 90 03 00 	cmp.b	#3,	r12	;
    55fc:	ee 23       	jnz	$-34     	;abs 0x55da

000055fe <.Loc.109.1>:
    55fe:	28 17       	popm	#3,	r10	;16-bit words

00005600 <.LCFI1>:
    5600:	30 41       	ret			

00005602 <unpack_wkup_to_local>:
    5602:	1a 15       	pushm	#2,	r10	;16-bit words

00005604 <.LCFI2>:
    5604:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005608 <.LCFI3>:
    5608:	49 43       	clr.b	r9		;

0000560a <.L8>:
    560a:	0a 49       	mov	r9,	r10	;
    560c:	5a 06       	rlam	#2,	r10	;
    560e:	0a 59       	add	r9,	r10	;
    5610:	5a 02       	rlam	#1,	r10	;
    5612:	3a 50 34 1c 	add	#7220,	r10	;#0x1c34
    5616:	4e 43       	clr.b	r14		;
    5618:	4d 49       	mov.b	r9,	r13	;
    561a:	0c 41       	mov	r1,	r12	;
    561c:	b0 12 b2 62 	call	#25266		;#0x62b2
    5620:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5624:	0d 41       	mov	r1,	r13	;
    5626:	0c 4a       	mov	r10,	r12	;
    5628:	b0 12 1e 66 	call	#26142		;#0x661e

0000562c <.LVL9>:
    562c:	19 53       	inc	r9		;

0000562e <.Loc.115.1>:
    562e:	39 90 03 00 	cmp	#3,	r9	;
    5632:	eb 23       	jnz	$-40     	;abs 0x560a

00005634 <.Loc.120.1>:
    5634:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005638 <.LCFI4>:
    5638:	19 17       	popm	#2,	r10	;16-bit words

0000563a <.LCFI5>:
    563a:	30 41       	ret			

0000563c <refresh_wkup_timers>:
    563c:	4a 15       	pushm	#5,	r10	;16-bit words

0000563e <.LCFI6>:
    563e:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

00005642 <.Loc.125.1>:
    5642:	5f 43       	mov.b	#1,	r15	;r3 As==01

00005644 <.Loc.127.1>:
    5644:	49 43       	clr.b	r9		;

00005646 <.L23>:
    5646:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    564a:	56 20       	jnz	$+174    	;abs 0x56f8

0000564c <.Loc.133.1>:
    564c:	16 4a 04 00 	mov	4(r10),	r6	;
    5650:	17 4a 06 00 	mov	6(r10),	r7	;

00005654 <.Loc.133.1>:
    5654:	0f 93       	cmp	#0,	r15	;r3 As==00
    5656:	05 24       	jz	$+12     	;abs 0x5662

00005658 <.Loc.135.1>:
    5658:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

0000565c <.Loc.136.1>:
    565c:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    5660:	5c 1c 

00005662 <.L12>:
    5662:	b0 12 36 60 	call	#24630		;#0x6036

00005666 <.Loc.141.1>:
    5666:	0e 46       	mov	r6,	r14	;
    5668:	0f 47       	mov	r7,	r15	;
    566a:	0e 8c       	sub	r12,	r14	;
    566c:	0f 7d       	subc	r13,	r15	;

0000566e <.Loc.141.1>:
    566e:	8a 4e 04 00 	mov	r14,	4(r10)	;
    5672:	8a 4f 06 00 	mov	r15,	6(r10)	;

00005676 <.Loc.142.1>:
    5676:	4d 43       	clr.b	r13		;
    5678:	4c 49       	mov.b	r9,	r12	;
    567a:	b0 12 8c 60 	call	#24716		;#0x608c

0000567e <.Loc.144.1>:
    567e:	1c 4a 04 00 	mov	4(r10),	r12	;
    5682:	1d 4a 06 00 	mov	6(r10),	r13	;

00005686 <.Loc.144.1>:
    5686:	07 4d       	mov	r13,	r7	;
    5688:	0d 93       	cmp	#0,	r13	;r3 As==00
    568a:	50 34       	jge	$+162    	;abs 0x572c

0000568c <.Loc.144.1>:
    568c:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    5690:	06 43       	clr	r6		;
    5692:	06 8e       	sub	r14,	r6	;
    5694:	0e 46       	mov	r6,	r14	;
    5696:	0f 46       	mov	r6,	r15	;
    5698:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000569c <.Loc.144.1>:
    569c:	0f 9d       	cmp	r13,	r15	;
    569e:	04 38       	jl	$+10     	;abs 0x56a8

000056a0 <.Loc.144.1>:
    56a0:	0d 9f       	cmp	r15,	r13	;
    56a2:	20 20       	jnz	$+66     	;abs 0x56e4
    56a4:	06 9c       	cmp	r12,	r6	;
    56a6:	1e 2c       	jc	$+62     	;abs 0x56e4

000056a8 <.L32>:
    56a8:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    56ac:	06 48       	mov	r8,	r6	;
    56ae:	07 43       	clr	r7		;

000056b0 <.Loc.146.1>:
    56b0:	4e 43       	clr.b	r14		;
    56b2:	4f 43       	clr.b	r15		;
    56b4:	0e 8c       	sub	r12,	r14	;
    56b6:	0f 7d       	subc	r13,	r15	;

000056b8 <.Loc.146.1>:
    56b8:	0f 93       	cmp	#0,	r15	;r3 As==00
    56ba:	0c 38       	jl	$+26     	;abs 0x56d4
    56bc:	0f 93       	cmp	#0,	r15	;r3 As==00
    56be:	02 20       	jnz	$+6      	;abs 0x56c4
    56c0:	0e 96       	cmp	r6,	r14	;
    56c2:	08 28       	jnc	$+18     	;abs 0x56d4

000056c4 <.L33>:
    56c4:	06 9e       	cmp	r14,	r6	;
    56c6:	17 20       	jnz	$+48     	;abs 0x56f6
    56c8:	0f 93       	cmp	#0,	r15	;r3 As==00
    56ca:	15 20       	jnz	$+44     	;abs 0x56f6

000056cc <.Loc.146.1>:
    56cc:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    56d0:	02 00 
    56d2:	12 2c       	jc	$+38     	;abs 0x56f8

000056d4 <.L17>:
    56d4:	4e 43       	clr.b	r14		;
    56d6:	0e 8c       	sub	r12,	r14	;
    56d8:	82 4e 5a 1c 	mov	r14,	&0x1c5a	;

000056dc <.L40>:
    56dc:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    56e0:	5c 1c 
    56e2:	09 3c       	jmp	$+20     	;abs 0x56f6

000056e4 <.L15>:
    56e4:	07 4d       	mov	r13,	r7	;
    56e6:	0d 9f       	cmp	r15,	r13	;
    56e8:	04 38       	jl	$+10     	;abs 0x56f2
    56ea:	0f 9d       	cmp	r13,	r15	;
    56ec:	04 20       	jnz	$+10     	;abs 0x56f6
    56ee:	0c 96       	cmp	r6,	r12	;
    56f0:	02 2c       	jc	$+6      	;abs 0x56f6

000056f2 <.L34>:
    56f2:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000056f6 <.L30>:
    56f6:	4f 43       	clr.b	r15		;

000056f8 <.L11>:
    56f8:	4c 49       	mov.b	r9,	r12	;
    56fa:	5c 53       	inc.b	r12		;
    56fc:	49 4c       	mov.b	r12,	r9	;

000056fe <.LVL17>:
    56fe:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005702 <.Loc.127.1>:
    5702:	7c 90 03 00 	cmp.b	#3,	r12	;
    5706:	9f 23       	jnz	$-192    	;abs 0x5646

00005708 <.Loc.164.1>:
    5708:	0f 93       	cmp	#0,	r15	;r3 As==00
    570a:	2d 20       	jnz	$+92     	;abs 0x5766

0000570c <.Loc.166.1>:
    570c:	5d 42 5c 1c 	mov.b	&0x1c5c,r13	;0x1c5c
    5710:	4c 43       	clr.b	r12		;

00005712 <.LVL18>:
    5712:	b0 12 6e 61 	call	#24942		;#0x616e

00005716 <.LVL19>:
    5716:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    571a:	4c 43       	clr.b	r12		;
    571c:	b0 12 7c 61 	call	#24956		;#0x617c

00005720 <.Loc.171.1>:
    5720:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    5724:	b0 12 ac 5f 	call	#24492		;#0x5fac

00005728 <.L10>:
    5728:	46 17       	popm	#5,	r10	;16-bit words

0000572a <.LCFI7>:
    572a:	30 41       	ret			

0000572c <.L13>:
    572c:	0e 4c       	mov	r12,	r14	;
    572e:	0e dd       	bis	r13,	r14	;
    5730:	4f 43       	clr.b	r15		;
    5732:	0e 93       	cmp	#0,	r14	;r3 As==00
    5734:	e1 27       	jz	$-60     	;abs 0x56f8

00005736 <.Loc.155.1>:
    5736:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    573a:	0e 48       	mov	r8,	r14	;
    573c:	0f 43       	clr	r15		;

0000573e <.Loc.155.1>:
    573e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5740:	0f 38       	jl	$+32     	;abs 0x5760
    5742:	0d 93       	cmp	#0,	r13	;r3 As==00
    5744:	03 20       	jnz	$+8      	;abs 0x574c
    5746:	07 4c       	mov	r12,	r7	;
    5748:	0c 9e       	cmp	r14,	r12	;
    574a:	0a 28       	jnc	$+22     	;abs 0x5760

0000574c <.L35>:
    574c:	07 4c       	mov	r12,	r7	;
    574e:	0c 9e       	cmp	r14,	r12	;
    5750:	d2 23       	jnz	$-90     	;abs 0x56f6
    5752:	0d 9f       	cmp	r15,	r13	;
    5754:	d0 23       	jnz	$-94     	;abs 0x56f6
    5756:	4f 43       	clr.b	r15		;

00005758 <.Loc.155.1>:
    5758:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    575c:	02 00 
    575e:	cc 2f       	jc	$-102    	;abs 0x56f8

00005760 <.L21>:
    5760:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;
    5764:	bb 3f       	jmp	$-136    	;abs 0x56dc

00005766 <.L24>:
    5766:	b0 12 9c 5f 	call	#24476		;#0x5f9c

0000576a <.LVL24>:
    576a:	de 3f       	jmp	$-66     	;abs 0x5728

0000576c <set_wkup_timer>:
    576c:	2a 15       	pushm	#3,	r10	;16-bit words

0000576e <.LCFI9>:
    576e:	21 83       	decd	r1		;

00005770 <.LCFI10>:
    5770:	49 4c       	mov.b	r12,	r9	;

00005772 <.Loc.182.1>:
    5772:	81 4d 00 00 	mov	r13,	0(r1)	;
    5776:	b0 12 02 56 	call	#22018		;#0x5602

0000577a <.LVL27>:
    577a:	b0 12 9c 5f 	call	#24476		;#0x5f9c

0000577e <.Loc.192.1>:
    577e:	2e 41       	mov	@r1,	r14	;
    5780:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    5784:	22 24       	jz	$+70     	;abs 0x57ca

00005786 <.Loc.192.1>:
    5786:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    578a:	41 24       	jz	$+132    	;abs 0x580e

0000578c <.Loc.192.1>:
    578c:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    5790:	41 24       	jz	$+132    	;abs 0x5814

00005792 <.Loc.192.1>:
    5792:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    5796:	82 43 4e 1c 	mov	#0,	&0x1c4e	;r3 As==00

0000579a <.Loc.216.1>:
    579a:	4f 43       	clr.b	r15		;
    579c:	4d 43       	clr.b	r13		;
    579e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    57a0:	b0 12 8c 60 	call	#24716		;#0x608c

000057a4 <.Loc.217.1>:
    57a4:	c2 49 4a 1c 	mov.b	r9,	&0x1c4a	;

000057a8 <.Loc.218.1>:
    57a8:	4e 49       	mov.b	r9,	r14	;
    57aa:	4d 43       	clr.b	r13		;
    57ac:	7c 40 03 00 	mov.b	#3,	r12	;
    57b0:	b0 12 de 60 	call	#24798		;#0x60de

000057b4 <.L47>:
    57b4:	b0 12 3c 56 	call	#22076		;#0x563c

000057b8 <.Loc.222.1>:
    57b8:	4c 43       	clr.b	r12		;
    57ba:	b0 12 8a 61 	call	#24970		;#0x618a

000057be <.Loc.223.1>:
    57be:	4c 43       	clr.b	r12		;
    57c0:	b0 12 70 62 	call	#25200		;#0x6270

000057c4 <.Loc.224.1>:
    57c4:	21 53       	incd	r1		;

000057c6 <.LCFI11>:
    57c6:	28 17       	popm	#3,	r10	;16-bit words

000057c8 <.LCFI12>:
    57c8:	30 41       	ret			

000057ca <.L44>:
    57ca:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

000057ce <.Loc.194.1>:
    57ce:	0d 4a       	mov	r10,	r13	;

000057d0 <.L42>:
    57d0:	0c 4d       	mov	r13,	r12	;
    57d2:	5c 06       	rlam	#2,	r12	;
    57d4:	0c 5d       	add	r13,	r12	;
    57d6:	5c 02       	rlam	#1,	r12	;
    57d8:	08 4c       	mov	r12,	r8	;
    57da:	8c 4e 38 1c 	mov	r14,	7224(r12); 0x1c38
    57de:	8c 43 3a 1c 	mov	#0,	7226(r12);r3 As==00, 0x1c3a

000057e2 <.Loc.197.1>:
    57e2:	4f 43       	clr.b	r15		;
    57e4:	4d 43       	clr.b	r13		;
    57e6:	4c 4a       	mov.b	r10,	r12	;
    57e8:	b0 12 8c 60 	call	#24716		;#0x608c

000057ec <.Loc.198.1>:
    57ec:	c8 49 36 1c 	mov.b	r9,	7222(r8); 0x1c36

000057f0 <.Loc.199.1>:
    57f0:	4e 49       	mov.b	r9,	r14	;
    57f2:	4d 43       	clr.b	r13		;
    57f4:	4c 4a       	mov.b	r10,	r12	;
    57f6:	b0 12 de 60 	call	#24798		;#0x60de

000057fa <.Loc.200.1>:
    57fa:	98 43 34 1c 	mov	#1,	7220(r8);r3 As==01, 0x1c34

000057fe <.Loc.196.1>:
    57fe:	38 50 34 1c 	add	#7220,	r8	;#0x1c34

00005802 <.Loc.201.1>:
    5802:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5804:	4d 43       	clr.b	r13		;
    5806:	4c 4a       	mov.b	r10,	r12	;
    5808:	b0 12 28 61 	call	#24872		;#0x6128
    580c:	d3 3f       	jmp	$-88     	;abs 0x57b4

0000580e <.L45>:
    580e:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005810 <.Loc.194.1>:
    5810:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5812:	de 3f       	jmp	$-66     	;abs 0x57d0

00005814 <.L46>:
    5814:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005816 <.Loc.194.1>:
    5816:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5818:	db 3f       	jmp	$-72     	;abs 0x57d0

0000581a <clear_xpr_status>:
    581a:	4d 4c       	mov.b	r12,	r13	;

0000581c <.Loc.236.1>:
    581c:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    5820:	13 24       	jz	$+40     	;abs 0x5848

00005822 <.Loc.237.1>:
    5822:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    5826:	13 24       	jz	$+40     	;abs 0x584e

00005828 <.Loc.237.1>:
    5828:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    582c:	0c 20       	jnz	$+26     	;abs 0x5846

0000582e <.Loc.237.1>:
    582e:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005830 <.LVL48>:
    5830:	6e 43       	mov.b	#2,	r14	;r3 As==10

00005832 <.L49>:
    5832:	0d 4e       	mov	r14,	r13	;

00005834 <.LVL50>:
    5834:	5d 06       	rlam	#2,	r13	;
    5836:	0d 5e       	add	r14,	r13	;
    5838:	5d 02       	rlam	#1,	r13	;
    583a:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000583e <.Loc.241.1>:
    583e:	4e 43       	clr.b	r14		;
    5840:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5842:	b0 12 28 61 	call	#24872		;#0x6128

00005846 <.L48>:
    5846:	30 41       	ret			

00005848 <.L51>:
    5848:	4c 43       	clr.b	r12		;

0000584a <.LVL53>:
    584a:	4e 43       	clr.b	r14		;
    584c:	f2 3f       	jmp	$-26     	;abs 0x5832

0000584e <.L52>:
    584e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005850 <.LVL55>:
    5850:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5852:	ef 3f       	jmp	$-32     	;abs 0x5832

00005854 <unpack_xpr_to_local>:
    5854:	1a 15       	pushm	#2,	r10	;16-bit words

00005856 <.LCFI14>:
    5856:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000585a <.LCFI15>:
    585a:	49 43       	clr.b	r9		;

0000585c <.L54>:
    585c:	0a 49       	mov	r9,	r10	;
    585e:	5a 06       	rlam	#2,	r10	;
    5860:	0a 59       	add	r9,	r10	;
    5862:	5a 02       	rlam	#1,	r10	;
    5864:	3a 50 16 1c 	add	#7190,	r10	;#0x1c16
    5868:	6e 43       	mov.b	#2,	r14	;r3 As==10
    586a:	4d 49       	mov.b	r9,	r13	;
    586c:	0c 41       	mov	r1,	r12	;
    586e:	b0 12 b2 62 	call	#25266		;#0x62b2
    5872:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5876:	0d 41       	mov	r1,	r13	;
    5878:	0c 4a       	mov	r10,	r12	;
    587a:	b0 12 1e 66 	call	#26142		;#0x661e

0000587e <.LVL59>:
    587e:	19 53       	inc	r9		;

00005880 <.Loc.252.1>:
    5880:	39 90 03 00 	cmp	#3,	r9	;
    5884:	eb 23       	jnz	$-40     	;abs 0x585c

00005886 <.Loc.257.1>:
    5886:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000588a <.LCFI16>:
    588a:	19 17       	popm	#2,	r10	;16-bit words

0000588c <.LCFI17>:
    588c:	30 41       	ret			

0000588e <refresh_xpr_timers>:
    588e:	6a 15       	pushm	#7,	r10	;16-bit words

00005890 <.LCFI18>:
    5890:	47 43       	clr.b	r7		;

00005892 <.Loc.261.1>:
    5892:	3a 40 16 1c 	mov	#7190,	r10	;#0x1c16

00005896 <.Loc.261.1>:
    5896:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005898 <.Loc.265.1>:
    5898:	46 43       	clr.b	r6		;

0000589a <.L64>:
    589a:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    589e:	4a 20       	jnz	$+150    	;abs 0x5934

000058a0 <.Loc.271.1>:
    58a0:	14 4a 04 00 	mov	4(r10),	r4	;
    58a4:	15 4a 06 00 	mov	6(r10),	r5	;

000058a8 <.Loc.271.1>:
    58a8:	0c 93       	cmp	#0,	r12	;r3 As==00
    58aa:	04 24       	jz	$+10     	;abs 0x58b4

000058ac <.LVL63>:
    58ac:	57 4a 02 00 	mov.b	2(r10),	r7	;

000058b0 <.LVL64>:
    58b0:	09 44       	mov	r4,	r9	;
    58b2:	08 45       	mov	r5,	r8	;

000058b4 <.L58>:
    58b4:	b0 12 36 60 	call	#24630		;#0x6036

000058b8 <.Loc.278.1>:
    58b8:	0e 44       	mov	r4,	r14	;
    58ba:	0f 45       	mov	r5,	r15	;
    58bc:	0e 8c       	sub	r12,	r14	;
    58be:	0f 7d       	subc	r13,	r15	;

000058c0 <.Loc.278.1>:
    58c0:	8a 4e 04 00 	mov	r14,	4(r10)	;
    58c4:	8a 4f 06 00 	mov	r15,	6(r10)	;

000058c8 <.Loc.279.1>:
    58c8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    58ca:	4c 46       	mov.b	r6,	r12	;
    58cc:	b0 12 8c 60 	call	#24716		;#0x608c

000058d0 <.Loc.281.1>:
    58d0:	4c 43       	clr.b	r12		;
    58d2:	1c 9a 06 00 	cmp	6(r10),	r12	;
    58d6:	10 38       	jl	$+34     	;abs 0x58f8
    58d8:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    58dc:	03 20       	jnz	$+8      	;abs 0x58e4
    58de:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    58e2:	0a 20       	jnz	$+22     	;abs 0x58f8

000058e4 <.L70>:
    58e4:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    58e8:	b0 12 16 54 	call	#21526		;#0x5416
    58ec:	b0 12 bc 53 	call	#21436		;#0x53bc

000058f0 <.Loc.289.1>:
    58f0:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    58f4:	b0 12 1a 58 	call	#22554		;#0x581a

000058f8 <.L59>:
    58f8:	1e 4a 04 00 	mov	4(r10),	r14	;
    58fc:	1d 4a 06 00 	mov	6(r10),	r13	;

00005900 <.Loc.292.1>:
    5900:	4c 43       	clr.b	r12		;
    5902:	0c 9d       	cmp	r13,	r12	;
    5904:	04 38       	jl	$+10     	;abs 0x590e
    5906:	0d 93       	cmp	#0,	r13	;r3 As==00
    5908:	14 20       	jnz	$+42     	;abs 0x5932
    590a:	0e 93       	cmp	#0,	r14	;r3 As==00
    590c:	12 24       	jz	$+38     	;abs 0x5932

0000590e <.L71>:
    590e:	0d 98       	cmp	r8,	r13	;
    5910:	0c 38       	jl	$+26     	;abs 0x592a
    5912:	08 9d       	cmp	r13,	r8	;
    5914:	02 20       	jnz	$+6      	;abs 0x591a
    5916:	0e 99       	cmp	r9,	r14	;
    5918:	08 28       	jnc	$+18     	;abs 0x592a

0000591a <.L72>:
    591a:	4c 43       	clr.b	r12		;

0000591c <.Loc.294.1>:
    591c:	0e 99       	cmp	r9,	r14	;
    591e:	0a 20       	jnz	$+22     	;abs 0x5934
    5920:	0d 98       	cmp	r8,	r13	;
    5922:	08 20       	jnz	$+18     	;abs 0x5934

00005924 <.Loc.294.1>:
    5924:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    5928:	05 2c       	jc	$+12     	;abs 0x5934

0000592a <.L62>:
    592a:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000592e <.LVL72>:
    592e:	09 4e       	mov	r14,	r9	;
    5930:	08 4d       	mov	r13,	r8	;

00005932 <.L67>:
    5932:	4c 43       	clr.b	r12		;

00005934 <.L57>:
    5934:	4d 46       	mov.b	r6,	r13	;
    5936:	5d 53       	inc.b	r13		;
    5938:	46 4d       	mov.b	r13,	r6	;

0000593a <.LVL75>:
    593a:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000593e <.Loc.265.1>:
    593e:	7d 90 03 00 	cmp.b	#3,	r13	;
    5942:	ab 23       	jnz	$-168    	;abs 0x589a

00005944 <.Loc.303.1>:
    5944:	0c 93       	cmp	#0,	r12	;r3 As==00
    5946:	0d 20       	jnz	$+28     	;abs 0x5962

00005948 <.Loc.304.1>:
    5948:	4d 47       	mov.b	r7,	r13	;

0000594a <.LVL76>:
    594a:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000594c <.LVL77>:
    594c:	b0 12 6e 61 	call	#24942		;#0x616e

00005950 <.Loc.305.1>:
    5950:	0d 49       	mov	r9,	r13	;
    5952:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5954:	b0 12 7c 61 	call	#24956		;#0x617c

00005958 <.Loc.308.1>:
    5958:	0c 49       	mov	r9,	r12	;
    595a:	b0 12 c2 5f 	call	#24514		;#0x5fc2

0000595e <.L56>:
    595e:	64 17       	popm	#7,	r10	;16-bit words

00005960 <.LCFI19>:
    5960:	30 41       	ret			

00005962 <.L65>:
    5962:	b0 12 d8 5f 	call	#24536		;#0x5fd8

00005966 <.LVL82>:
    5966:	fb 3f       	jmp	$-8      	;abs 0x595e

00005968 <set_expire_timer>:
    5968:	5a 15       	pushm	#6,	r10	;16-bit words

0000596a <.LCFI21>:
    596a:	48 4c       	mov.b	r12,	r8	;
    596c:	09 4d       	mov	r13,	r9	;
    596e:	07 4e       	mov	r14,	r7	;

00005970 <.Loc.318.1>:
    5970:	b0 12 54 58 	call	#22612		;#0x5854

00005974 <.LVL85>:
    5974:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    5978:	1b 24       	jz	$+56     	;abs 0x59b0

0000597a <.Loc.324.1>:
    597a:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    597e:	43 24       	jz	$+136    	;abs 0x5a06

00005980 <.Loc.324.1>:
    5980:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    5984:	43 24       	jz	$+136    	;abs 0x5a0c

00005986 <.Loc.324.1>:
    5986:	0e 49       	mov	r9,	r14	;
    5988:	0f 47       	mov	r7,	r15	;
    598a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    598c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    598e:	b0 12 8c 60 	call	#24716		;#0x608c

00005992 <.Loc.348.1>:
    5992:	4e 48       	mov.b	r8,	r14	;
    5994:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5996:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5998:	b0 12 de 60 	call	#24798		;#0x60de

0000599c <.L83>:
    599c:	b0 12 8e 58 	call	#22670		;#0x588e

000059a0 <.Loc.352.1>:
    59a0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    59a2:	b0 12 8a 61 	call	#24970		;#0x618a

000059a6 <.Loc.353.1>:
    59a6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    59a8:	b0 12 70 62 	call	#25200		;#0x6270

000059ac <.Loc.354.1>:
    59ac:	55 17       	popm	#6,	r10	;16-bit words

000059ae <.LCFI22>:
    59ae:	30 41       	ret			

000059b0 <.L80>:
    59b0:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

000059b4 <.Loc.326.1>:
    59b4:	06 4a       	mov	r10,	r6	;

000059b6 <.L78>:
    59b6:	35 40 36 60 	mov	#24630,	r5	;#0x6036
    59ba:	85 12       	call	r5		;

000059bc <.Loc.328.1>:
    59bc:	0e 46       	mov	r6,	r14	;
    59be:	5e 06       	rlam	#2,	r14	;
    59c0:	0e 56       	add	r6,	r14	;
    59c2:	5e 02       	rlam	#1,	r14	;
    59c4:	06 4e       	mov	r14,	r6	;

000059c6 <.Loc.328.1>:
    59c6:	0c 59       	add	r9,	r12	;
    59c8:	8e 4c 1a 1c 	mov	r12,	7194(r14); 0x1c1a
    59cc:	0d 67       	addc	r7,	r13	;
    59ce:	8e 4d 1c 1c 	mov	r13,	7196(r14); 0x1c1c

000059d2 <.Loc.329.1>:
    59d2:	85 12       	call	r5		;

000059d4 <.Loc.329.1>:
    59d4:	0e 4c       	mov	r12,	r14	;
    59d6:	0e 59       	add	r9,	r14	;
    59d8:	0f 4d       	mov	r13,	r15	;
    59da:	0f 67       	addc	r7,	r15	;
    59dc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    59de:	4c 4a       	mov.b	r10,	r12	;
    59e0:	b0 12 8c 60 	call	#24716		;#0x608c

000059e4 <.Loc.330.1>:
    59e4:	c6 48 18 1c 	mov.b	r8,	7192(r6); 0x1c18

000059e8 <.Loc.331.1>:
    59e8:	4e 48       	mov.b	r8,	r14	;
    59ea:	6d 43       	mov.b	#2,	r13	;r3 As==10
    59ec:	4c 4a       	mov.b	r10,	r12	;
    59ee:	b0 12 de 60 	call	#24798		;#0x60de

000059f2 <.Loc.332.1>:
    59f2:	96 43 16 1c 	mov	#1,	7190(r6);r3 As==01, 0x1c16

000059f6 <.Loc.328.1>:
    59f6:	36 50 16 1c 	add	#7190,	r6	;#0x1c16

000059fa <.Loc.333.1>:
    59fa:	5e 43       	mov.b	#1,	r14	;r3 As==01
    59fc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    59fe:	4c 4a       	mov.b	r10,	r12	;
    5a00:	b0 12 28 61 	call	#24872		;#0x6128
    5a04:	cb 3f       	jmp	$-104    	;abs 0x599c

00005a06 <.L81>:
    5a06:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005a08 <.Loc.326.1>:
    5a08:	56 43       	mov.b	#1,	r6	;r3 As==01
    5a0a:	d5 3f       	jmp	$-84     	;abs 0x59b6

00005a0c <.L82>:
    5a0c:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005a0e <.Loc.326.1>:
    5a0e:	66 43       	mov.b	#2,	r6	;r3 As==10
    5a10:	d2 3f       	jmp	$-90     	;abs 0x59b6

00005a12 <stop_expire_timer>:
    5a12:	0a 15       	pushm	#1,	r10	;16-bit words

00005a14 <.LCFI24>:
    5a14:	4a 4c       	mov.b	r12,	r10	;

00005a16 <.Loc.361.1>:
    5a16:	b0 12 54 58 	call	#22612		;#0x5854

00005a1a <.LVL104>:
    5a1a:	4c 4a       	mov.b	r10,	r12	;
    5a1c:	b0 12 1a 58 	call	#22554		;#0x581a

00005a20 <.Loc.366.1>:
    5a20:	b0 12 8e 58 	call	#22670		;#0x588e

00005a24 <.Loc.368.1>:
    5a24:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5a26:	b0 12 8a 61 	call	#24970		;#0x618a

00005a2a <.Loc.369.1>:
    5a2a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5a2c:	b0 12 70 62 	call	#25200		;#0x6270

00005a30 <.Loc.371.1>:
    5a30:	0a 17       	popm	#1,	r10	;16-bit words

00005a32 <.LCFI25>:
    5a32:	30 41       	ret			

00005a34 <unpack_pdc_to_local>:
    5a34:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005a38 <.LCFI26>:
    5a38:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5a3a:	4d 43       	clr.b	r13		;
    5a3c:	0c 41       	mov	r1,	r12	;
    5a3e:	b0 12 b2 62 	call	#25266		;#0x62b2
    5a42:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5a46:	0d 41       	mov	r1,	r13	;
    5a48:	3c 40 0c 1c 	mov	#7180,	r12	;#0x1c0c
    5a4c:	b0 12 1e 66 	call	#26142		;#0x661e

00005a50 <.Loc.383.1>:
    5a50:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005a54 <.LCFI27>:
    5a54:	30 41       	ret			

00005a56 <refresh_pdc_timers>:
    5a56:	2a 15       	pushm	#3,	r10	;16-bit words

00005a58 <.LCFI28>:
    5a58:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    5a5c:	7d 20       	jnz	$+252    	;abs 0x5b58

00005a5e <.Loc.463.1>:
    5a5e:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    5a62:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

00005a66 <.Loc.465.1>:
    5a66:	82 48 52 1c 	mov	r8,	&0x1c52	;

00005a6a <.Loc.466.1>:
    5a6a:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    5a6e:	54 1c 

00005a70 <.Loc.467.1>:
    5a70:	b0 12 36 60 	call	#24630		;#0x6036

00005a74 <.Loc.471.1>:
    5a74:	0e 48       	mov	r8,	r14	;
    5a76:	0f 49       	mov	r9,	r15	;
    5a78:	0e 8c       	sub	r12,	r14	;
    5a7a:	0f 7d       	subc	r13,	r15	;

00005a7c <.Loc.471.1>:
    5a7c:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    5a80:	82 4f 12 1c 	mov	r15,	&0x1c12	;

00005a84 <.Loc.472.1>:
    5a84:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5a86:	4c 43       	clr.b	r12		;
    5a88:	b0 12 8c 60 	call	#24716		;#0x608c

00005a8c <.Loc.474.1>:
    5a8c:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    5a90:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

00005a94 <.Loc.474.1>:
    5a94:	09 4d       	mov	r13,	r9	;
    5a96:	0d 93       	cmp	#0,	r13	;r3 As==00
    5a98:	44 34       	jge	$+138    	;abs 0x5b22

00005a9a <.Loc.474.1>:
    5a9a:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    5a9e:	08 43       	clr	r8		;
    5aa0:	08 8e       	sub	r14,	r8	;
    5aa2:	0e 48       	mov	r8,	r14	;
    5aa4:	0f 48       	mov	r8,	r15	;
    5aa6:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005aaa <.Loc.474.1>:
    5aaa:	0f 9d       	cmp	r13,	r15	;
    5aac:	04 38       	jl	$+10     	;abs 0x5ab6

00005aae <.Loc.474.1>:
    5aae:	0d 9f       	cmp	r15,	r13	;
    5ab0:	20 20       	jnz	$+66     	;abs 0x5af2
    5ab2:	08 9c       	cmp	r12,	r8	;
    5ab4:	1e 2c       	jc	$+62     	;abs 0x5af2

00005ab6 <.L100>:
    5ab6:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    5aba:	08 4a       	mov	r10,	r8	;
    5abc:	09 43       	clr	r9		;

00005abe <.Loc.476.1>:
    5abe:	4e 43       	clr.b	r14		;
    5ac0:	4f 43       	clr.b	r15		;
    5ac2:	0e 8c       	sub	r12,	r14	;
    5ac4:	0f 7d       	subc	r13,	r15	;

00005ac6 <.Loc.476.1>:
    5ac6:	0f 93       	cmp	#0,	r15	;r3 As==00
    5ac8:	0c 38       	jl	$+26     	;abs 0x5ae2
    5aca:	0f 93       	cmp	#0,	r15	;r3 As==00
    5acc:	02 20       	jnz	$+6      	;abs 0x5ad2
    5ace:	0e 98       	cmp	r8,	r14	;
    5ad0:	08 28       	jnc	$+18     	;abs 0x5ae2

00005ad2 <.L101>:
    5ad2:	08 9e       	cmp	r14,	r8	;
    5ad4:	17 20       	jnz	$+48     	;abs 0x5b04
    5ad6:	0f 93       	cmp	#0,	r15	;r3 As==00
    5ad8:	15 20       	jnz	$+44     	;abs 0x5b04

00005ada <.Loc.476.1>:
    5ada:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    5ade:	0e 1c 
    5ae0:	11 2c       	jc	$+36     	;abs 0x5b04

00005ae2 <.L92>:
    5ae2:	4e 43       	clr.b	r14		;
    5ae4:	0e 8c       	sub	r12,	r14	;
    5ae6:	82 4e 52 1c 	mov	r14,	&0x1c52	;

00005aea <.L107>:
    5aea:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    5aee:	54 1c 

00005af0 <.Loc.494.1>:
    5af0:	09 3c       	jmp	$+20     	;abs 0x5b04

00005af2 <.L90>:
    5af2:	09 4d       	mov	r13,	r9	;
    5af4:	0d 9f       	cmp	r15,	r13	;
    5af6:	04 38       	jl	$+10     	;abs 0x5b00
    5af8:	0f 9d       	cmp	r13,	r15	;
    5afa:	04 20       	jnz	$+10     	;abs 0x5b04
    5afc:	0c 98       	cmp	r8,	r12	;
    5afe:	02 2c       	jc	$+6      	;abs 0x5b04

00005b00 <.L102>:
    5b00:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00005b04 <.L94>:
    5b04:	5d 42 54 1c 	mov.b	&0x1c54,r13	;0x1c54
    5b08:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5b0a:	b0 12 6e 61 	call	#24942		;#0x616e

00005b0e <.Loc.497.1>:
    5b0e:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    5b12:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5b14:	b0 12 7c 61 	call	#24956		;#0x617c

00005b18 <.Loc.500.1>:
    5b18:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    5b1c:	b0 12 de 5f 	call	#24542		;#0x5fde

00005b20 <.Loc.507.1>:
    5b20:	1d 3c       	jmp	$+60     	;abs 0x5b5c

00005b22 <.L88>:
    5b22:	0e 4c       	mov	r12,	r14	;
    5b24:	0e dd       	bis	r13,	r14	;
    5b26:	0e 93       	cmp	#0,	r14	;r3 As==00
    5b28:	ed 27       	jz	$-36     	;abs 0x5b04

00005b2a <.Loc.485.1>:
    5b2a:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    5b2e:	0e 4a       	mov	r10,	r14	;
    5b30:	0f 43       	clr	r15		;

00005b32 <.Loc.485.1>:
    5b32:	0d 93       	cmp	#0,	r13	;r3 As==00
    5b34:	0e 38       	jl	$+30     	;abs 0x5b52
    5b36:	0d 93       	cmp	#0,	r13	;r3 As==00
    5b38:	03 20       	jnz	$+8      	;abs 0x5b40
    5b3a:	09 4c       	mov	r12,	r9	;
    5b3c:	0c 9e       	cmp	r14,	r12	;
    5b3e:	09 28       	jnc	$+20     	;abs 0x5b52

00005b40 <.L103>:
    5b40:	09 4c       	mov	r12,	r9	;
    5b42:	0c 9e       	cmp	r14,	r12	;
    5b44:	df 23       	jnz	$-64     	;abs 0x5b04
    5b46:	0d 9f       	cmp	r15,	r13	;
    5b48:	dd 23       	jnz	$-68     	;abs 0x5b04

00005b4a <.Loc.485.1>:
    5b4a:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    5b4e:	0e 1c 
    5b50:	d9 2f       	jc	$-76     	;abs 0x5b04

00005b52 <.L97>:
    5b52:	82 4c 52 1c 	mov	r12,	&0x1c52	;
    5b56:	c9 3f       	jmp	$-108    	;abs 0x5aea

00005b58 <.L87>:
    5b58:	b0 12 9c 5f 	call	#24476		;#0x5f9c

00005b5c <.L86>:
    5b5c:	28 17       	popm	#3,	r10	;16-bit words

00005b5e <.LCFI29>:
    5b5e:	30 41       	ret			

00005b60 <set_periodic_timer>:
    5b60:	2a 15       	pushm	#3,	r10	;16-bit words

00005b62 <.LCFI30>:
    5b62:	49 4c       	mov.b	r12,	r9	;
    5b64:	0a 4d       	mov	r13,	r10	;

00005b66 <.Loc.392.1>:
    5b66:	b0 12 34 5a 	call	#23092		;#0x5a34

00005b6a <.LVL127>:
    5b6a:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    5b6e:	2e 20       	jnz	$+94     	;abs 0x5bcc

00005b70 <.Loc.403.1>:
    5b70:	38 40 16 54 	mov	#21526,	r8	;#0x5416
    5b74:	4c 49       	mov.b	r9,	r12	;
    5b76:	88 12       	call	r8		;
    5b78:	0d 4a       	mov	r10,	r13	;
    5b7a:	b0 12 e2 53 	call	#21474		;#0x53e2

00005b7e <.Loc.404.1>:
    5b7e:	4c 49       	mov.b	r9,	r12	;
    5b80:	88 12       	call	r8		;
    5b82:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5b84:	b0 12 e8 53 	call	#21480		;#0x53e8

00005b88 <.Loc.405.1>:
    5b88:	0e 4a       	mov	r10,	r14	;
    5b8a:	4f 43       	clr.b	r15		;
    5b8c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5b8e:	4c 43       	clr.b	r12		;
    5b90:	b0 12 8c 60 	call	#24716		;#0x608c

00005b94 <.Loc.406.1>:
    5b94:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    5b98:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

00005b9c <.Loc.407.1>:
    5b9c:	4e 49       	mov.b	r9,	r14	;
    5b9e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5ba0:	4c 43       	clr.b	r12		;
    5ba2:	b0 12 de 60 	call	#24798		;#0x60de

00005ba6 <.Loc.408.1>:
    5ba6:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00005baa <.Loc.409.1>:
    5baa:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5bac:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5bae:	4c 43       	clr.b	r12		;
    5bb0:	b0 12 28 61 	call	#24872		;#0x6128

00005bb4 <.Loc.410.1>:
    5bb4:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

00005bb8 <.L111>:
    5bb8:	b0 12 56 5a 	call	#23126		;#0x5a56

00005bbc <.Loc.433.1>:
    5bbc:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5bbe:	b0 12 8a 61 	call	#24970		;#0x618a

00005bc2 <.Loc.434.1>:
    5bc2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5bc4:	b0 12 70 62 	call	#25200		;#0x6270

00005bc8 <.Loc.435.1>:
    5bc8:	28 17       	popm	#3,	r10	;16-bit words

00005bca <.LCFI31>:
    5bca:	30 41       	ret			

00005bcc <.L109>:
    5bcc:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    5bd0:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

00005bd4 <.Loc.426.1>:
    5bd4:	0e 4a       	mov	r10,	r14	;
    5bd6:	4f 43       	clr.b	r15		;
    5bd8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5bda:	4c 43       	clr.b	r12		;
    5bdc:	b0 12 8c 60 	call	#24716		;#0x608c

00005be0 <.Loc.427.1>:
    5be0:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00005be4 <.Loc.428.1>:
    5be4:	4e 49       	mov.b	r9,	r14	;
    5be6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5be8:	4c 43       	clr.b	r12		;
    5bea:	b0 12 de 60 	call	#24798		;#0x60de
    5bee:	e4 3f       	jmp	$-54     	;abs 0x5bb8

00005bf0 <clear_pdc_status>:
    5bf0:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    5bf4:	07 20       	jnz	$+16     	;abs 0x5c04

00005bf6 <.Loc.516.1>:
    5bf6:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00005bfa <.Loc.517.1>:
    5bfa:	4e 43       	clr.b	r14		;
    5bfc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5bfe:	4c 43       	clr.b	r12		;

00005c00 <.LVL144>:
    5c00:	b0 12 28 61 	call	#24872		;#0x6128

00005c04 <.L112>:
    5c04:	30 41       	ret			

00005c06 <stop_periodic_timer>:
    5c06:	0a 15       	pushm	#1,	r10	;16-bit words

00005c08 <.LCFI33>:
    5c08:	4a 4c       	mov.b	r12,	r10	;

00005c0a <.Loc.440.1>:
    5c0a:	b0 12 34 5a 	call	#23092		;#0x5a34

00005c0e <.LVL147>:
    5c0e:	4c 4a       	mov.b	r10,	r12	;
    5c10:	b0 12 f0 5b 	call	#23536		;#0x5bf0

00005c14 <.Loc.445.1>:
    5c14:	b0 12 56 5a 	call	#23126		;#0x5a56

00005c18 <.Loc.447.1>:
    5c18:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5c1a:	b0 12 8a 61 	call	#24970		;#0x618a

00005c1e <.Loc.448.1>:
    5c1e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5c20:	b0 12 70 62 	call	#25200		;#0x6270

00005c24 <.Loc.450.1>:
    5c24:	0a 17       	popm	#1,	r10	;16-bit words

00005c26 <.LCFI34>:
    5c26:	30 41       	ret			

00005c28 <main>:
    5c28:	b0 12 da 5e 	call	#24282		;#0x5eda

00005c2c <.Loc.46.1>:
    5c2c:	c2 93 b4 4b 	cmp.b	#0,	&0x4bb4	;r3 As==00
    5c30:	08 20       	jnz	$+18     	;abs 0x5c42

00005c32 <.Loc.48.1>:
    5c32:	b0 12 fc 52 	call	#21244		;#0x52fc

00005c36 <.Loc.50.1>:
    5c36:	b0 12 90 5c 	call	#23696		;#0x5c90

00005c3a <.Loc.57.1>:
    5c3a:	b0 12 34 52 	call	#21044		;#0x5234

00005c3e <.Loc.59.1>:
    5c3e:	d2 43 b4 4b 	mov.b	#1,	&0x4bb4	;r3 As==01

00005c42 <.L2>:
    5c42:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c46 <.Loc.68.1>:
    5c46:	
00005c48 <L0^A>:
    5c48:	04 02       	mova	@r2,	r4	;

00005c4a <.Loc.68.1>:
    5c4a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005c4e <.Loc.68.1>:
    5c4e:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c52:	02 02 

00005c54 <.Loc.69.1>:
    5c54:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    5c58:	04 02 

00005c5a <.Loc.69.1>:
    5c5a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c5e:	02 02 

00005c60 <.Loc.69.1>:
    5c60:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c64:	22 02 

00005c66 <.Loc.70.1>:
    5c66:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    5c6a:	24 02 

00005c6c <.Loc.70.1>:
    5c6c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5c70:	22 02 

00005c72 <.Loc.70.1>:
    5c72:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c76:	22 02 

00005c78 <.Loc.71.1>:
    5c78:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    5c7c:	24 02 

00005c7e <.Loc.71.1>:
    5c7e:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c82:	22 02 

00005c84 <.Loc.71.1>:
    5c84:	b0 12 e8 52 	call	#21224		;#0x52e8

00005c88 <.Loc.78.1>:
    5c88:	b0 12 28 54 	call	#21544		;#0x5428

00005c8c <.Loc.80.1>:
    5c8c:	4c 43       	clr.b	r12		;
    5c8e:	30 41       	ret			

00005c90 <__events_boot_init>:
    5c90:	1a 15       	pushm	#2,	r10	;16-bit words

00005c92 <.LCFI0>:
    5c92:	3a 40 36 51 	mov	#20790,	r10	;#0x5136
    5c96:	39 40 b6 4b 	mov	#19382,	r9	;#0x4bb6

00005c9a <.L2>:
    5c9a:	0c 4a       	mov	r10,	r12	;
    5c9c:	b0 12 bc 5d 	call	#23996		;#0x5dbc

00005ca0 <.Loc.56.1>:
    5ca0:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

00005ca4 <.Loc.53.1>:
    5ca4:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    5ca8:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

00005cac <.Loc.53.1>:
    5cac:	3a 90 36 4c 	cmp	#19510,	r10	;#0x4c36
    5cb0:	f4 23       	jnz	$-22     	;abs 0x5c9a

00005cb2 <.Loc.58.1>:
    5cb2:	19 17       	popm	#2,	r10	;16-bit words

00005cb4 <.LCFI1>:
    5cb4:	30 41       	ret			

00005cb6 <__events_commit>:
    5cb6:	5c 42 42 51 	mov.b	&0x5142,r12	;0x5142
    5cba:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    5cbc:	13 24       	jz	$+40     	;abs 0x5ce4
    5cbe:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    5cc0:	1e 24       	jz	$+62     	;abs 0x5cfe
    5cc2:	0c 93       	cmp	#0,	r12	;r3 As==00
    5cc4:	29 20       	jnz	$+84     	;abs 0x5d18

00005cc6 <.Loc.65.1>:
    5cc6:	1d 42 40 51 	mov	&0x5140,r13	;0x5140

00005cca <.Loc.65.1>:
    5cca:	6c 4d       	mov.b	@r13,	r12	;
    5ccc:	5c 06       	rlam	#2,	r12	;
    5cce:	6d 4d       	mov.b	@r13,	r13	;
    5cd0:	0c 5d       	add	r13,	r12	;
    5cd2:	5c 06       	rlam	#2,	r12	;
    5cd4:	3d 40 36 51 	mov	#20790,	r13	;#0x5136
    5cd8:	3c 50 36 4c 	add	#19510,	r12	;#0x4c36
    5cdc:	b0 12 18 5e 	call	#24088		;#0x5e18

00005ce0 <.Loc.66.1>:
    5ce0:	d2 43 42 51 	mov.b	#1,	&0x5142	;r3 As==01

00005ce4 <.L5>:
    5ce4:	1d 42 40 51 	mov	&0x5140,r13	;0x5140

00005ce8 <.Loc.68.1>:
    5ce8:	6c 4d       	mov.b	@r13,	r12	;
    5cea:	5c 06       	rlam	#2,	r12	;
    5cec:	6d 4d       	mov.b	@r13,	r13	;
    5cee:	0c 5d       	add	r13,	r12	;
    5cf0:	5c 06       	rlam	#2,	r12	;
    5cf2:	3c 50 36 4c 	add	#19510,	r12	;#0x4c36
    5cf6:	b0 12 4e 5e 	call	#24142		;#0x5e4e

00005cfa <.Loc.69.1>:
    5cfa:	e2 43 42 51 	mov.b	#2,	&0x5142	;r3 As==10

00005cfe <.L6>:
    5cfe:	1c 42 40 51 	mov	&0x5140,r12	;0x5140
    5d02:	1c 4c 02 00 	mov	2(r12),	r12	;

00005d06 <.Loc.72.1>:
    5d06:	3c 92       	cmp	#8,	r12	;r2 As==11
    5d08:	04 20       	jnz	$+10     	;abs 0x5d12

00005d0a <.Loc.73.1>:
    5d0a:	1c 42 40 51 	mov	&0x5140,r12	;0x5140
    5d0e:	b0 12 fa 53 	call	#21498		;#0x53fa

00005d12 <.L8>:
    5d12:	f2 40 03 00 	mov.b	#3,	&0x5142	;
    5d16:	42 51 

00005d18 <.L4>:
    5d18:	30 41       	ret			

00005d1a <__event_buffer_full_ISR>:
    5d1a:	1d 42 40 51 	mov	&0x5140,r13	;0x5140

00005d1e <.Loc.81.1>:
    5d1e:	6c 4d       	mov.b	@r13,	r12	;

00005d20 <.LVL7>:
    5d20:	5c 06       	rlam	#2,	r12	;
    5d22:	6d 4d       	mov.b	@r13,	r13	;
    5d24:	0c 5d       	add	r13,	r12	;
    5d26:	5c 06       	rlam	#2,	r12	;
    5d28:	3c 50 36 4c 	add	#19510,	r12	;#0x4c36
    5d2c:	b0 12 ec 5d 	call	#24044		;#0x5dec

00005d30 <.Loc.82.1>:
    5d30:	30 41       	ret			

00005d32 <__event_signal_ISR>:
    5d32:	82 4c 40 51 	mov	r12,	&0x5140	;

00005d36 <.Loc.90.1>:
    5d36:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5d3a:	3c 40 36 51 	mov	#20790,	r12	;#0x5136

00005d3e <.LVL10>:
    5d3e:	b0 12 1e 66 	call	#26142		;#0x661e

00005d42 <.LVL11>:
    5d42:	c2 43 42 51 	mov.b	#0,	&0x5142	;r3 As==00

00005d46 <.Loc.92.1>:
    5d46:	b0 12 b6 5c 	call	#23734		;#0x5cb6

00005d4a <.Loc.93.1>:
    5d4a:	30 41       	ret			

00005d4c <__has_events>:
    5d4c:	6d 4c       	mov.b	@r12,	r13	;
    5d4e:	5d 06       	rlam	#2,	r13	;
    5d50:	6c 4c       	mov.b	@r12,	r12	;

00005d52 <.LVL14>:
    5d52:	0c 5d       	add	r13,	r12	;
    5d54:	5c 06       	rlam	#2,	r12	;
    5d56:	3c 50 36 4c 	add	#19510,	r12	;#0x4c36
    5d5a:	b0 12 d6 5d 	call	#24022		;#0x5dd6
    5d5e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005d62 <.Loc.97.1>:
    5d62:	3c 53       	add	#-1,	r12	;r3 As==11

00005d64 <.Loc.101.1>:
    5d64:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    5d68:	30 41       	ret			

00005d6a <__lock_event>:
    5d6a:	0a 15       	pushm	#1,	r10	;16-bit words

00005d6c <.LCFI2>:
    5d6c:	1c 42 40 51 	mov	&0x5140,r12	;0x5140

00005d70 <.LVL17>:
    5d70:	6a 4c       	mov.b	@r12,	r10	;

00005d72 <.Loc.107.1>:
    5d72:	0c 4a       	mov	r10,	r12	;
    5d74:	5c 06       	rlam	#2,	r12	;
    5d76:	0c 5a       	add	r10,	r12	;
    5d78:	5c 06       	rlam	#2,	r12	;
    5d7a:	3c 50 36 4c 	add	#19510,	r12	;#0x4c36
    5d7e:	b0 12 56 5e 	call	#24150		;#0x5e56

00005d82 <.Loc.107.1>:
    5d82:	5a 02       	rlam	#1,	r10	;
    5d84:	8a 4c b6 4b 	mov	r12,	19382(r10); 0x4bb6

00005d88 <.Loc.108.1>:
    5d88:	1c 42 40 51 	mov	&0x5140,r12	;0x5140
    5d8c:	6c 4c       	mov.b	@r12,	r12	;
    5d8e:	5c 02       	rlam	#1,	r12	;

00005d90 <.Loc.109.1>:
    5d90:	1c 4c b6 4b 	mov	19382(r12),r12	;0x04bb6
    5d94:	0a 17       	popm	#1,	r10	;16-bit words

00005d96 <.LCFI3>:
    5d96:	30 41       	ret			

00005d98 <__release_event>:
    5d98:	1d 42 40 51 	mov	&0x5140,r13	;0x5140

00005d9c <.Loc.113.1>:
    5d9c:	6c 4d       	mov.b	@r13,	r12	;

00005d9e <.LVL20>:
    5d9e:	5c 06       	rlam	#2,	r12	;
    5da0:	6d 4d       	mov.b	@r13,	r13	;
    5da2:	0c 5d       	add	r13,	r12	;
    5da4:	5c 06       	rlam	#2,	r12	;
    5da6:	3c 50 36 4c 	add	#19510,	r12	;#0x4c36
    5daa:	b0 12 88 5e 	call	#24200		;#0x5e88

00005dae <.Loc.114.1>:
    5dae:	1c 42 40 51 	mov	&0x5140,r12	;0x5140
    5db2:	6c 4c       	mov.b	@r12,	r12	;
    5db4:	5c 02       	rlam	#1,	r12	;
    5db6:	8c 43 b6 4b 	mov	#0,	19382(r12);r3 As==00, 0x4bb6

00005dba <.Loc.115.1>:
    5dba:	30 41       	ret			

00005dbc <__perqueue_init>:
    5dbc:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    5dc0:	10 00 

00005dc2 <.Loc.37.1>:
    5dc2:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    5dc6:	11 00 

00005dc8 <.Loc.38.1>:
    5dc8:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    5dcc:	12 00 

00005dce <.Loc.39.1>:
    5dce:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    5dd2:	13 00 

00005dd4 <.Loc.40.1>:
    5dd4:	30 41       	ret			

00005dd6 <__perqueue_is_empty>:
    5dd6:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    5dda:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    5dde:	4c 4d       	mov.b	r13,	r12	;

00005de0 <.LVL2>:
    5de0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5de4:	3c 53       	add	#-1,	r12	;r3 As==11

00005de6 <.Loc.49.1>:
    5de6:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    5dea:	30 41       	ret			

00005dec <__perqueue_is_full>:
    5dec:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    5df0:	5d 53       	inc.b	r13		;
    5df2:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00005df6 <.Loc.54.1>:
    5df6:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    5dfa:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    5dfc:	02 20       	jnz	$+6      	;abs 0x5e02

00005dfe <.Loc.55.1>:
    5dfe:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00005e02 <.L4>:
    5e02:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    5e06:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    5e0a:	4c 4d       	mov.b	r13,	r12	;

00005e0c <.LVL4>:
    5e0c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5e10:	3c 53       	add	#-1,	r12	;r3 As==11

00005e12 <.Loc.64.1>:
    5e12:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    5e16:	30 41       	ret			

00005e18 <__perqueue_push>:
    5e18:	0e 4c       	mov	r12,	r14	;

00005e1a <.Loc.68.1>:
    5e1a:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

00005e1e <.LVL6>:
    5e1e:	5c 53       	inc.b	r12		;
    5e20:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

00005e24 <.Loc.69.1>:
    5e24:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    5e28:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    5e2a:	02 20       	jnz	$+6      	;abs 0x5e30

00005e2c <.Loc.70.1>:
    5e2c:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

00005e30 <.L6>:
    5e30:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

00005e34 <.Loc.74.1>:
    5e34:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

00005e38 <.Loc.75.1>:
    5e38:	4c 43       	clr.b	r12		;

00005e3a <.Loc.74.1>:
    5e3a:	0b 9f       	cmp	r15,	r11	;
    5e3c:	07 24       	jz	$+16     	;abs 0x5e4c

00005e3e <.Loc.79.1>:
    5e3e:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

00005e42 <.Loc.79.1>:
    5e42:	5c 02       	rlam	#1,	r12	;
    5e44:	0e 5c       	add	r12,	r14	;

00005e46 <.LVL7>:
    5e46:	8e 4d 00 00 	mov	r13,	0(r14)	;

00005e4a <.Loc.81.1>:
    5e4a:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005e4c <.L7>:
    5e4c:	30 41       	ret			

00005e4e <__perqueue_push_commit>:
    5e4e:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    5e52:	11 00 

00005e54 <.Loc.89.1>:
    5e54:	30 41       	ret			

00005e56 <__perqueue_pop>:
    5e56:	0d 4c       	mov	r12,	r13	;

00005e58 <.Loc.93.1>:
    5e58:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

00005e5c <.Loc.93.1>:
    5e5c:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00005e60 <.Loc.94.1>:
    5e60:	4c 43       	clr.b	r12		;

00005e62 <.LVL10>:
    5e62:	0f 9e       	cmp	r14,	r15	;
    5e64:	10 24       	jz	$+34     	;abs 0x5e86

00005e66 <.Loc.98.1>:
    5e66:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    5e6a:	5c 53       	inc.b	r12		;
    5e6c:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

00005e70 <.Loc.99.1>:
    5e70:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    5e74:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    5e76:	02 20       	jnz	$+6      	;abs 0x5e7c

00005e78 <.Loc.100.1>:
    5e78:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

00005e7c <.L12>:
    5e7c:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

00005e80 <.Loc.102.1>:
    5e80:	5c 02       	rlam	#1,	r12	;
    5e82:	0d 5c       	add	r12,	r13	;

00005e84 <.LVL11>:
    5e84:	2c 4d       	mov	@r13,	r12	;

00005e86 <.L10>:
    5e86:	30 41       	ret			

00005e88 <__perqueue_pop_commit>:
    5e88:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    5e8c:	10 00 

00005e8e <.Loc.109.1>:
    5e8e:	30 41       	ret			

00005e90 <__dma_word_copy>:
    5e90:	0a 15       	pushm	#1,	r10	;16-bit words

00005e92 <.LCFI0>:
    5e92:	21 82       	sub	#4,	r1	;r2 As==10

00005e94 <.LBB2>:
    5e94:	0a 4c       	mov	r12,	r10	;
    5e96:	0b 43       	clr	r11		;
    5e98:	81 4a 00 00 	mov	r10,	0(r1)	;
    5e9c:	81 4b 02 00 	mov	r11,	2(r1)	;

00005ea0 <.Loc.38.1>:
    5ea0:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00005ea4 <.LVL1>:
    5ea4:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    5ea8:	00 00 

00005eaa <.LBB3>:
    5eaa:	0a 4d       	mov	r13,	r10	;
    5eac:	0b 43       	clr	r11		;

00005eae <.LVL2>:
    5eae:	81 4a 00 00 	mov	r10,	0(r1)	;
    5eb2:	81 4b 02 00 	mov	r11,	2(r1)	;

00005eb6 <.Loc.40.1>:
    5eb6:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    5eba:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    5ebe:	00 00 

00005ec0 <.LBE3>:
    5ec0:	82 4e 1a 05 	mov	r14,	&0x051a	;

00005ec4 <.Loc.43.1>:
    5ec4:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    5ec8:	10 05 

00005eca <.Loc.44.1>:
    5eca:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    5ece:	10 05 

00005ed0 <.Loc.46.1>:
    5ed0:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00005ed4 <.Loc.47.1>:
    5ed4:	21 52       	add	#4,	r1	;r2 As==10

00005ed6 <.LCFI2>:
    5ed6:	0a 17       	popm	#1,	r10	;16-bit words

00005ed8 <.LCFI3>:
    5ed8:	30 41       	ret			

00005eda <__mcu_init>:
    5eda:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    5ede:	5c 01 

00005ee0 <.Loc.40.1>:
    5ee0:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    5ee4:	40 01 

00005ee6 <L0^A>:
    5ee6:	00 3c       	jmp	$+2      	;abs 0x5ee8
    5ee8:	03 43       	nop			

00005eea <.Loc.44.1>:
    5eea:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    5eee:	41 01 

00005ef0 <L0^A>:
    5ef0:	00 3c       	jmp	$+2      	;abs 0x5ef2
    5ef2:	03 43       	nop			

00005ef4 <.Loc.48.1>:
    5ef4:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    5ef8:	23 02 

00005efa <.Loc.48.1>:
    5efa:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    5efe:	25 02 

00005f00 <.Loc.48.1>:
    5f00:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    5f04:	23 02 

00005f06 <.Loc.48.1>:
    5f06:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00005f0a <.Loc.49.1>:
    5f0a:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

00005f0e <.Loc.49.1>:
    5f0e:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00005f12 <.Loc.49.1>:
    5f12:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00005f16 <.Loc.53.1>:
    5f16:	30 41       	ret			

00005f18 <__priority_init>:
    5f18:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00005f1c <.Loc.83.1>:
    5f1c:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00005f20 <.Loc.83.1>:
    5f20:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00005f24 <.Loc.83.1>:
    5f24:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00005f28 <.Loc.83.1>:
    5f28:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00005f2c <.Loc.83.1>:
    5f2c:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00005f30 <.Loc.83.1>:
    5f30:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00005f34 <.Loc.83.1>:
    5f34:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00005f38 <.Loc.83.1>:
    5f38:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00005f3c <.Loc.88.1>:
    5f3c:	30 41       	ret			

00005f3e <__priority_insert>:
    5f3e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005f42 <.Loc.93.1>:
    5f42:	0e 4c       	mov	r12,	r14	;
    5f44:	5e 09       	rram	#3,	r14	;

00005f46 <.Loc.99.1>:
    5f46:	7e f0 07 00 	and.b	#7,	r14	;

00005f4a <.Loc.99.1>:
    5f4a:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    5f4e:	08 00 

00005f50 <.Loc.100.1>:
    5f50:	0d 5e       	add	r14,	r13	;

00005f52 <.LVL12>:
    5f52:	7c f0 07 00 	and.b	#7,	r12	;

00005f56 <.LVL13>:
    5f56:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    5f5a:	00 00 

00005f5c <.Loc.101.1>:
    5f5c:	30 41       	ret			

00005f5e <__priority_remove>:
    5f5e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005f62 <.Loc.106.1>:
    5f62:	0e 4c       	mov	r12,	r14	;
    5f64:	5e 09       	rram	#3,	r14	;

00005f66 <.Loc.112.1>:
    5f66:	7e f0 07 00 	and.b	#7,	r14	;
    5f6a:	0f 4d       	mov	r13,	r15	;
    5f6c:	0f 5e       	add	r14,	r15	;

00005f6e <.Loc.112.1>:
    5f6e:	7c f0 07 00 	and.b	#7,	r12	;

00005f72 <.LVL16>:
    5f72:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    5f76:	00 00 

00005f78 <.Loc.114.1>:
    5f78:	6c 4f       	mov.b	@r15,	r12	;

00005f7a <.Loc.114.1>:
    5f7a:	0c 93       	cmp	#0,	r12	;r3 As==00
    5f7c:	03 20       	jnz	$+8      	;abs 0x5f84

00005f7e <.Loc.115.1>:
    5f7e:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    5f82:	08 00 

00005f84 <.L3>:
    5f84:	30 41       	ret			

00005f86 <__priority_highest>:
    5f86:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00005f8a <.LVL18>:
    5f8a:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00005f8e <.LVL19>:
    5f8e:	0c 5d       	add	r13,	r12	;

00005f90 <.LVL20>:
    5f90:	6e 4c       	mov.b	@r12,	r14	;

00005f92 <.Loc.127.1>:
    5f92:	0c 4d       	mov	r13,	r12	;
    5f94:	5c 0a       	rlam	#3,	r12	;

00005f96 <.Loc.128.1>:
    5f96:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    5f9a:	30 41       	ret			

00005f9c <stop_timer>:
    5f9c:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00005fa0 <.Loc.157.1>:
    5fa0:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00005fa4 <.Loc.158.1>:
    5fa4:	30 41       	ret			

00005fa6 <timerA2_init>:
    5fa6:	b0 12 9c 5f 	call	#24476		;#0x5f9c
    5faa:	30 41       	ret			

00005fac <set_timer_wkup>:
    5fac:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00005fb0 <.Loc.179.1>:
    5fb0:	82 4c 52 03 	mov	r12,	&0x0352	;

00005fb4 <.Loc.180.1>:
    5fb4:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    5fb8:	42 03 

00005fba <.Loc.181.1>:
    5fba:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    5fbe:	40 03 

00005fc0 <.Loc.182.1>:
    5fc0:	30 41       	ret			

00005fc2 <set_timer_xpr>:
    5fc2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00005fc6 <.Loc.186.1>:
    5fc6:	82 4c 12 04 	mov	r12,	&0x0412	;

00005fca <.Loc.187.1>:
    5fca:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    5fce:	02 04 

00005fd0 <.Loc.188.1>:
    5fd0:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    5fd4:	00 04 

00005fd6 <.Loc.190.1>:
    5fd6:	30 41       	ret			

00005fd8 <stop_timer_xpr>:
    5fd8:	b0 12 9c 5f 	call	#24476		;#0x5f9c
    5fdc:	30 41       	ret			

00005fde <set_timer_pdc>:
    5fde:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00005fe2 <.Loc.202.1>:
    5fe2:	82 4c 92 03 	mov	r12,	&0x0392	;

00005fe6 <.Loc.203.1>:
    5fe6:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    5fea:	82 03 

00005fec <.Loc.204.1>:
    5fec:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    5ff0:	80 03 

00005ff2 <.Loc.205.1>:
    5ff2:	30 41       	ret			

00005ff4 <__setup_rtc>:
    5ff4:	30 41       	ret			

00005ff6 <__setup_clock>:
    5ff6:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    5ffa:	61 01 

00005ffc <.Loc.253.1>:
    5ffc:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    6000:	64 01 

00006002 <.Loc.254.1>:
    6002:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00006006 <.Loc.255.1>:
    6006:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

0000600a <.Loc.257.1>:
    600a:	30 41       	ret			

0000600c <__get_rtc_time>:
    600c:	4c 43       	clr.b	r12		;
    600e:	4d 43       	clr.b	r13		;
    6010:	30 41       	ret			

00006012 <__get_time_init>:
    6012:	82 43 44 51 	mov	#0,	&0x5144	;r3 As==00
    6016:	82 43 46 51 	mov	#0,	&0x5146	;r3 As==00

0000601a <.Loc.337.1>:
    601a:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000601e <.Loc.339.1>:
    601e:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    6022:	40 04 

00006024 <.Loc.341.1>:
    6024:	03 43       	nop			
    6026:	32 d2       	eint			
    6028:	03 43       	nop			

0000602a <.Loc.342.1>:
    602a:	30 41       	ret			

0000602c <__get_time_stop>:
    602c:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006030 <.Loc.350.1>:
    6030:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006034 <.Loc.351.1>:
    6034:	30 41       	ret			

00006036 <__get_time>:
    6036:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    603a:	40 04 

0000603c <.Loc.363.1>:
    603c:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00006040 <.Loc.365.1>:
    6040:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6044:	40 04 

00006046 <.Loc.369.1>:
    6046:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    604a:	b0 12 06 66 	call	#26118		;#0x6606

0000604e <.Loc.370.1>:
    604e:	1c 52 44 51 	add	&0x5144,r12	;0x5144
    6052:	1d 62 46 51 	addc	&0x5146,r13	;0x5146
    6056:	30 41       	ret			

00006058 <isr_TIMER3_A1_VECTOR>:
    6058:	b2 50 aa 00 	add	#170,	&0x5144	;#0x00aa
    605c:	44 51 
    605e:	b2 60 0a 00 	addc	#10,	&0x5146	;#0x000a
    6062:	46 51 

00006064 <.Loc.380.1>:
    6064:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00006068 <.Loc.381.1>:
    6068:	00 13       	reti			

0000606a <_pers_timer_init>:
    606a:	3c 40 48 51 	mov	#20808,	r12	;#0x5148
    606e:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00006072 <.Loc.34.1>:
    6072:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00006076 <.Loc.34.1>:
    6076:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

0000607a <.Loc.34.1>:
    607a:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000607e <.Loc.38.1>:
    607e:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00006082 <.Loc.38.1>:
    6082:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00006086 <.Loc.38.1>:
    6086:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

0000608a <.Loc.42.1>:
    608a:	30 41       	ret			

0000608c <_pers_timer_update_data>:
    608c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006090 <.Loc.50.1>:
    6090:	1d 93       	cmp	#1,	r13	;r3 As==01
    6092:	1a 24       	jz	$+54     	;abs 0x60c8
    6094:	2d 93       	cmp	#2,	r13	;r3 As==10
    6096:	0d 24       	jz	$+28     	;abs 0x60b2
    6098:	0d 93       	cmp	#0,	r13	;r3 As==00
    609a:	0a 20       	jnz	$+22     	;abs 0x60b0

0000609c <.Loc.53.1>:
    609c:	0d 4c       	mov	r12,	r13	;

0000609e <.LVL9>:
    609e:	5d 06       	rlam	#2,	r13	;
    60a0:	0c 5d       	add	r13,	r12	;

000060a2 <.LVL10>:
    60a2:	5c 02       	rlam	#1,	r12	;
    60a4:	8c 4e b0 51 	mov	r14,	20912(r12); 0x51b0
    60a8:	8c 4f b2 51 	mov	r15,	20914(r12); 0x51b2

000060ac <.Loc.54.1>:
    60ac:	9c 43 b4 51 	mov	#1,	20916(r12);r3 As==01, 0x51b4

000060b0 <.L2>:
    60b0:	30 41       	ret			

000060b2 <.L4>:
    60b2:	0d 4c       	mov	r12,	r13	;

000060b4 <.LVL12>:
    60b4:	5d 06       	rlam	#2,	r13	;
    60b6:	0c 5d       	add	r13,	r12	;
    60b8:	5c 02       	rlam	#1,	r12	;
    60ba:	8c 4e ce 51 	mov	r14,	20942(r12); 0x51ce
    60be:	8c 4f d0 51 	mov	r15,	20944(r12); 0x51d0

000060c2 <.Loc.58.1>:
    60c2:	9c 43 d2 51 	mov	#1,	20946(r12);r3 As==01, 0x51d2
    60c6:	f4 3f       	jmp	$-22     	;abs 0x60b0

000060c8 <.L3>:
    60c8:	0d 4c       	mov	r12,	r13	;

000060ca <.LVL14>:
    60ca:	5d 06       	rlam	#2,	r13	;
    60cc:	0c 5d       	add	r13,	r12	;
    60ce:	5c 02       	rlam	#1,	r12	;
    60d0:	8c 4e ec 51 	mov	r14,	20972(r12); 0x51ec
    60d4:	8c 4f ee 51 	mov	r15,	20974(r12); 0x51ee

000060d8 <.Loc.62.1>:
    60d8:	9c 43 f0 51 	mov	#1,	20976(r12);r3 As==01, 0x51f0

000060dc <.Loc.63.1>:
    60dc:	e9 3f       	jmp	$-44     	;abs 0x60b0

000060de <_pers_timer_update_thread_id>:
    60de:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    60e2:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

000060e6 <.Loc.73.1>:
    60e6:	1d 93       	cmp	#1,	r13	;r3 As==01
    60e8:	16 24       	jz	$+46     	;abs 0x6116
    60ea:	2d 93       	cmp	#2,	r13	;r3 As==10
    60ec:	0b 24       	jz	$+24     	;abs 0x6104
    60ee:	0d 93       	cmp	#0,	r13	;r3 As==00
    60f0:	08 20       	jnz	$+18     	;abs 0x6102

000060f2 <.Loc.76.1>:
    60f2:	0d 4c       	mov	r12,	r13	;

000060f4 <.LVL16>:
    60f4:	5d 06       	rlam	#2,	r13	;
    60f6:	0c 5d       	add	r13,	r12	;

000060f8 <.LVL17>:
    60f8:	5c 02       	rlam	#1,	r12	;
    60fa:	cc 4e ae 51 	mov.b	r14,	20910(r12); 0x51ae

000060fe <.Loc.77.1>:
    60fe:	9c 43 b4 51 	mov	#1,	20916(r12);r3 As==01, 0x51b4

00006102 <.L7>:
    6102:	30 41       	ret			

00006104 <.L9>:
    6104:	0d 4c       	mov	r12,	r13	;

00006106 <.LVL19>:
    6106:	5d 06       	rlam	#2,	r13	;
    6108:	0c 5d       	add	r13,	r12	;
    610a:	5c 02       	rlam	#1,	r12	;
    610c:	cc 4e cc 51 	mov.b	r14,	20940(r12); 0x51cc

00006110 <.Loc.81.1>:
    6110:	9c 43 d2 51 	mov	#1,	20946(r12);r3 As==01, 0x51d2
    6114:	f6 3f       	jmp	$-18     	;abs 0x6102

00006116 <.L8>:
    6116:	0d 4c       	mov	r12,	r13	;

00006118 <.LVL21>:
    6118:	5d 06       	rlam	#2,	r13	;
    611a:	0c 5d       	add	r13,	r12	;
    611c:	5c 02       	rlam	#1,	r12	;
    611e:	cc 4e ea 51 	mov.b	r14,	20970(r12); 0x51ea

00006122 <.Loc.85.1>:
    6122:	9c 43 f0 51 	mov	#1,	20976(r12);r3 As==01, 0x51f0

00006126 <.Loc.86.1>:
    6126:	ed 3f       	jmp	$-36     	;abs 0x6102

00006128 <_pers_timer_update_status>:
    6128:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000612c <.Loc.95.1>:
    612c:	1d 93       	cmp	#1,	r13	;r3 As==01
    612e:	16 24       	jz	$+46     	;abs 0x615c
    6130:	2d 93       	cmp	#2,	r13	;r3 As==10
    6132:	0b 24       	jz	$+24     	;abs 0x614a
    6134:	0d 93       	cmp	#0,	r13	;r3 As==00
    6136:	08 20       	jnz	$+18     	;abs 0x6148

00006138 <.Loc.98.1>:
    6138:	0d 4c       	mov	r12,	r13	;

0000613a <.LVL23>:
    613a:	5d 06       	rlam	#2,	r13	;
    613c:	0c 5d       	add	r13,	r12	;

0000613e <.LVL24>:
    613e:	5c 02       	rlam	#1,	r12	;
    6140:	8c 4e ac 51 	mov	r14,	20908(r12); 0x51ac

00006144 <.Loc.99.1>:
    6144:	9c 43 b4 51 	mov	#1,	20916(r12);r3 As==01, 0x51b4

00006148 <.L12>:
    6148:	30 41       	ret			

0000614a <.L14>:
    614a:	0d 4c       	mov	r12,	r13	;

0000614c <.LVL26>:
    614c:	5d 06       	rlam	#2,	r13	;
    614e:	0c 5d       	add	r13,	r12	;
    6150:	5c 02       	rlam	#1,	r12	;
    6152:	8c 4e ca 51 	mov	r14,	20938(r12); 0x51ca

00006156 <.Loc.103.1>:
    6156:	9c 43 d2 51 	mov	#1,	20946(r12);r3 As==01, 0x51d2
    615a:	f6 3f       	jmp	$-18     	;abs 0x6148

0000615c <.L13>:
    615c:	0d 4c       	mov	r12,	r13	;

0000615e <.LVL28>:
    615e:	5d 06       	rlam	#2,	r13	;
    6160:	0c 5d       	add	r13,	r12	;
    6162:	5c 02       	rlam	#1,	r12	;
    6164:	8c 4e e8 51 	mov	r14,	20968(r12); 0x51e8

00006168 <.Loc.107.1>:
    6168:	9c 43 f0 51 	mov	#1,	20976(r12);r3 As==01, 0x51f0

0000616c <.Loc.108.1>:
    616c:	ed 3f       	jmp	$-36     	;abs 0x6148

0000616e <_pers_timer_update_nxt_thread>:
    616e:	0e 4c       	mov	r12,	r14	;
    6170:	5e 0a       	rlam	#3,	r14	;
    6172:	ce 4d f4 51 	mov.b	r13,	20980(r14); 0x51f4

00006176 <.Loc.118.1>:
    6176:	9e 43 f8 51 	mov	#1,	20984(r14);r3 As==01, 0x51f8

0000617a <.Loc.119.1>:
    617a:	30 41       	ret			

0000617c <_pers_timer_update_nxt_time>:
    617c:	0e 4c       	mov	r12,	r14	;
    617e:	5e 0a       	rlam	#3,	r14	;
    6180:	8e 4d f6 51 	mov	r13,	20982(r14); 0x51f6

00006184 <.Loc.124.1>:
    6184:	9e 43 f8 51 	mov	#1,	20984(r14);r3 As==01, 0x51f8

00006188 <.Loc.125.1>:
    6188:	30 41       	ret			

0000618a <_pers_timer_update_lock>:
    618a:	1c 93       	cmp	#1,	r12	;r3 As==01
    618c:	0a 24       	jz	$+22     	;abs 0x61a2
    618e:	2c 93       	cmp	#2,	r12	;r3 As==10
    6190:	05 24       	jz	$+12     	;abs 0x619c
    6192:	0c 93       	cmp	#0,	r12	;r3 As==00
    6194:	02 20       	jnz	$+6      	;abs 0x619a

00006196 <.Loc.132.1>:
    6196:	92 43 10 52 	mov	#1,	&0x5210	;r3 As==01

0000619a <.L19>:
    619a:	30 41       	ret			

0000619c <.L21>:
    619c:	92 43 12 52 	mov	#1,	&0x5212	;r3 As==01

000061a0 <.Loc.136.1>:
    61a0:	fc 3f       	jmp	$-6      	;abs 0x619a

000061a2 <.L20>:
    61a2:	92 43 14 52 	mov	#1,	&0x5214	;r3 As==01

000061a6 <.Loc.139.1>:
    61a6:	f9 3f       	jmp	$-12     	;abs 0x619a

000061a8 <_commit_timer_buffers>:
    61a8:	1a 15       	pushm	#2,	r10	;16-bit words

000061aa <.LCFI0>:
    61aa:	0a 4c       	mov	r12,	r10	;

000061ac <.Loc.151.1>:
    61ac:	1c 93       	cmp	#1,	r12	;r3 As==01
    61ae:	52 24       	jz	$+166    	;abs 0x6254
    61b0:	2c 93       	cmp	#2,	r12	;r3 As==10
    61b2:	39 24       	jz	$+116    	;abs 0x6226
    61b4:	0c 93       	cmp	#0,	r12	;r3 As==00
    61b6:	16 20       	jnz	$+46     	;abs 0x61e4
    61b8:	3f 40 48 51 	mov	#20808,	r15	;#0x5148
    61bc:	39 40 66 51 	mov	#20838,	r9	;#0x5166

000061c0 <.L28>:
    61c0:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    61c4:	0b 20       	jnz	$+24     	;abs 0x61dc

000061c6 <.Loc.160.1>:
    61c6:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    61ca:	0d 4f       	mov	r15,	r13	;
    61cc:	3d 50 64 00 	add	#100,	r13	;#0x0064
    61d0:	0c 4f       	mov	r15,	r12	;
    61d2:	b0 12 1e 66 	call	#26142		;#0x661e
    61d6:	0f 4c       	mov	r12,	r15	;

000061d8 <.Loc.161.1>:
    61d8:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

000061dc <.L27>:
    61dc:	3f 50 0a 00 	add	#10,	r15	;#0x000a

000061e0 <.Loc.155.1>:
    61e0:	09 9f       	cmp	r15,	r9	;
    61e2:	ee 23       	jnz	$-34     	;abs 0x61c0

000061e4 <.L26>:
    61e4:	7f 40 03 00 	mov.b	#3,	r15	;

000061e8 <.L33>:
    61e8:	0c 4a       	mov	r10,	r12	;
    61ea:	5c 0a       	rlam	#3,	r12	;

000061ec <.Loc.193.1>:
    61ec:	9c 93 f8 51 	cmp	#1,	20984(r12);r3 As==01, 0x51f8
    61f0:	13 20       	jnz	$+40     	;abs 0x6218

000061f2 <.Loc.195.1>:
    61f2:	0c 4a       	mov	r10,	r12	;
    61f4:	5c 0a       	rlam	#3,	r12	;
    61f6:	0d 4c       	mov	r12,	r13	;
    61f8:	3d 50 48 51 	add	#20808,	r13	;#0x5148
    61fc:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    6200:	46 00 
    6202:	9c 4c f4 51 	mov	20980(r12),20880(r12);0x051f4, 0x5190
    6206:	90 51 
    6208:	9c 4c f6 51 	mov	20982(r12),20882(r12);0x051f6, 0x5192
    620c:	92 51 
    620e:	9c 4c f8 51 	mov	20984(r12),20884(r12);0x051f8, 0x5194
    6212:	94 51 

00006214 <.Loc.197.1>:
    6214:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

00006218 <.L32>:
    6218:	4c 4f       	mov.b	r15,	r12	;
    621a:	7c 53       	add.b	#-1,	r12	;r3 As==11
    621c:	4f 4c       	mov.b	r12,	r15	;

0000621e <.Loc.191.1>:
    621e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6220:	e3 23       	jnz	$-56     	;abs 0x61e8

00006222 <.Loc.201.1>:
    6222:	19 17       	popm	#2,	r10	;16-bit words

00006224 <.LCFI1>:
    6224:	30 41       	ret			

00006226 <.L25>:
    6226:	39 40 48 51 	mov	#20808,	r9	;#0x5148

0000622a <.L30>:
    622a:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    622e:	0c 20       	jnz	$+26     	;abs 0x6248

00006230 <.Loc.171.1>:
    6230:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6234:	0d 49       	mov	r9,	r13	;
    6236:	3d 50 82 00 	add	#130,	r13	;#0x0082
    623a:	0c 49       	mov	r9,	r12	;
    623c:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    6240:	b0 12 1e 66 	call	#26142		;#0x661e

00006244 <.Loc.172.1>:
    6244:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

00006248 <.L29>:
    6248:	39 50 0a 00 	add	#10,	r9	;#0x000a

0000624c <.Loc.166.1>:
    624c:	39 90 66 51 	cmp	#20838,	r9	;#0x5166
    6250:	ec 23       	jnz	$-38     	;abs 0x622a
    6252:	c8 3f       	jmp	$-110    	;abs 0x61e4

00006254 <.L24>:
    6254:	92 93 f0 51 	cmp	#1,	&0x51f0	;r3 As==01
    6258:	c5 23       	jnz	$-116    	;abs 0x61e4

0000625a <.Loc.182.1>:
    625a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    625e:	3d 40 e8 51 	mov	#20968,	r13	;#0x51e8
    6262:	3c 40 84 51 	mov	#20868,	r12	;#0x5184
    6266:	b0 12 1e 66 	call	#26142		;#0x661e

0000626a <.Loc.183.1>:
    626a:	82 43 8c 51 	mov	#0,	&0x518c	;r3 As==00

0000626e <.Loc.177.1>:
    626e:	ba 3f       	jmp	$-138    	;abs 0x61e4

00006270 <_pers_timer_commit>:
    6270:	1c 93       	cmp	#1,	r12	;r3 As==01
    6272:	16 24       	jz	$+46     	;abs 0x62a0
    6274:	2c 93       	cmp	#2,	r12	;r3 As==10
    6276:	0b 24       	jz	$+24     	;abs 0x628e
    6278:	0c 93       	cmp	#0,	r12	;r3 As==00
    627a:	08 20       	jnz	$+18     	;abs 0x628c

0000627c <.Loc.207.1>:
    627c:	1d 42 10 52 	mov	&0x5210,r13	;0x5210

00006280 <.Loc.207.1>:
    6280:	1d 93       	cmp	#1,	r13	;r3 As==01
    6282:	04 20       	jnz	$+10     	;abs 0x628c

00006284 <.Loc.209.1>:
    6284:	b0 12 a8 61 	call	#25000		;#0x61a8

00006288 <.LVL43>:
    6288:	a2 43 10 52 	mov	#2,	&0x5210	;r3 As==10

0000628c <.L39>:
    628c:	30 41       	ret			

0000628e <.L41>:
    628e:	1d 42 12 52 	mov	&0x5212,r13	;0x5212

00006292 <.Loc.214.1>:
    6292:	1d 93       	cmp	#1,	r13	;r3 As==01
    6294:	fb 23       	jnz	$-8      	;abs 0x628c

00006296 <.Loc.216.1>:
    6296:	b0 12 a8 61 	call	#25000		;#0x61a8

0000629a <.LVL45>:
    629a:	a2 43 12 52 	mov	#2,	&0x5212	;r3 As==10
    629e:	f6 3f       	jmp	$-18     	;abs 0x628c

000062a0 <.L40>:
    62a0:	1d 42 14 52 	mov	&0x5214,r13	;0x5214

000062a4 <.Loc.220.1>:
    62a4:	1d 93       	cmp	#1,	r13	;r3 As==01
    62a6:	f2 23       	jnz	$-26     	;abs 0x628c

000062a8 <.Loc.222.1>:
    62a8:	b0 12 a8 61 	call	#25000		;#0x61a8

000062ac <.LVL47>:
    62ac:	a2 43 14 52 	mov	#2,	&0x5214	;r3 As==10

000062b0 <.Loc.230.1>:
    62b0:	ed 3f       	jmp	$-36     	;abs 0x628c

000062b2 <_pers_timer_get>:
    62b2:	0a 15       	pushm	#1,	r10	;16-bit words

000062b4 <.LCFI3>:
    62b4:	0a 4c       	mov	r12,	r10	;
    62b6:	4f 4d       	mov.b	r13,	r15	;

000062b8 <.Loc.233.1>:
    62b8:	0d 4f       	mov	r15,	r13	;
    62ba:	5d 06       	rlam	#2,	r13	;

000062bc <.LVL49>:
    62bc:	0d 5f       	add	r15,	r13	;
    62be:	5d 02       	rlam	#1,	r13	;

000062c0 <.Loc.233.1>:
    62c0:	1e 93       	cmp	#1,	r14	;r3 As==01
    62c2:	0b 24       	jz	$+24     	;abs 0x62da
    62c4:	2e 93       	cmp	#2,	r14	;r3 As==10
    62c6:	0e 20       	jnz	$+30     	;abs 0x62e4

000062c8 <.Loc.238.1>:
    62c8:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000062cc <.LVL50>:
    62cc:	3d 50 66 51 	add	#20838,	r13	;#0x5166

000062d0 <.L47>:
    62d0:	b0 12 1e 66 	call	#26142		;#0x661e

000062d4 <.LVL51>:
    62d4:	0c 4a       	mov	r10,	r12	;
    62d6:	0a 17       	popm	#1,	r10	;16-bit words

000062d8 <.LCFI4>:
    62d8:	30 41       	ret			

000062da <.L44>:
    62da:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000062de <.LVL53>:
    62de:	3d 50 84 51 	add	#20868,	r13	;#0x5184
    62e2:	f6 3f       	jmp	$-18     	;abs 0x62d0

000062e4 <.L45>:
    62e4:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000062e8 <.LVL55>:
    62e8:	3d 50 48 51 	add	#20808,	r13	;#0x5148
    62ec:	f1 3f       	jmp	$-28     	;abs 0x62d0

000062ee <_pers_timer_get_data>:
    62ee:	4e 4c       	mov.b	r12,	r14	;

000062f0 <.Loc.249.1>:
    62f0:	1d 93       	cmp	#1,	r13	;r3 As==01
    62f2:	13 24       	jz	$+40     	;abs 0x631a
    62f4:	2d 93       	cmp	#2,	r13	;r3 As==10
    62f6:	0a 24       	jz	$+22     	;abs 0x630c
    62f8:	4c 43       	clr.b	r12		;

000062fa <.LVL57>:
    62fa:	0d 93       	cmp	#0,	r13	;r3 As==00
    62fc:	06 20       	jnz	$+14     	;abs 0x630a

000062fe <.Loc.252.1>:
    62fe:	0c 4e       	mov	r14,	r12	;
    6300:	5c 06       	rlam	#2,	r12	;
    6302:	0c 5e       	add	r14,	r12	;
    6304:	5c 02       	rlam	#1,	r12	;
    6306:	1c 4c 4c 51 	mov	20812(r12),r12	;0x0514c

0000630a <.L48>:
    630a:	30 41       	ret			

0000630c <.L50>:
    630c:	0c 4e       	mov	r14,	r12	;

0000630e <.LVL59>:
    630e:	5c 06       	rlam	#2,	r12	;
    6310:	0c 5e       	add	r14,	r12	;
    6312:	5c 02       	rlam	#1,	r12	;
    6314:	1c 4c 6a 51 	mov	20842(r12),r12	;0x0516a
    6318:	f8 3f       	jmp	$-14     	;abs 0x630a

0000631a <.L49>:
    631a:	0c 4e       	mov	r14,	r12	;

0000631c <.LVL61>:
    631c:	5c 06       	rlam	#2,	r12	;
    631e:	0c 5e       	add	r14,	r12	;
    6320:	5c 02       	rlam	#1,	r12	;
    6322:	1c 4c 88 51 	mov	20872(r12),r12	;0x05188
    6326:	f1 3f       	jmp	$-28     	;abs 0x630a

00006328 <_pers_timer_get_thread_id>:
    6328:	4e 4c       	mov.b	r12,	r14	;

0000632a <.Loc.266.1>:
    632a:	1d 93       	cmp	#1,	r13	;r3 As==01
    632c:	13 24       	jz	$+40     	;abs 0x6354
    632e:	2d 93       	cmp	#2,	r13	;r3 As==10
    6330:	0a 24       	jz	$+22     	;abs 0x6346
    6332:	4c 43       	clr.b	r12		;

00006334 <.LVL63>:
    6334:	0d 93       	cmp	#0,	r13	;r3 As==00
    6336:	06 20       	jnz	$+14     	;abs 0x6344

00006338 <.Loc.269.1>:
    6338:	0c 4e       	mov	r14,	r12	;
    633a:	5c 06       	rlam	#2,	r12	;
    633c:	0c 5e       	add	r14,	r12	;
    633e:	5c 02       	rlam	#1,	r12	;
    6340:	5c 4c 4a 51 	mov.b	20810(r12),r12	;0x0514a

00006344 <.L56>:
    6344:	30 41       	ret			

00006346 <.L55>:
    6346:	0c 4e       	mov	r14,	r12	;

00006348 <.LVL65>:
    6348:	5c 06       	rlam	#2,	r12	;
    634a:	0c 5e       	add	r14,	r12	;
    634c:	5c 02       	rlam	#1,	r12	;
    634e:	5c 4c 68 51 	mov.b	20840(r12),r12	;0x05168
    6352:	f8 3f       	jmp	$-14     	;abs 0x6344

00006354 <.L54>:
    6354:	0c 4e       	mov	r14,	r12	;

00006356 <.LVL67>:
    6356:	5c 06       	rlam	#2,	r12	;
    6358:	0c 5e       	add	r14,	r12	;
    635a:	5c 02       	rlam	#1,	r12	;
    635c:	5c 4c 86 51 	mov.b	20870(r12),r12	;0x05186
    6360:	f1 3f       	jmp	$-28     	;abs 0x6344

00006362 <_pers_timer_get_status>:
    6362:	4e 4c       	mov.b	r12,	r14	;

00006364 <.Loc.283.1>:
    6364:	1d 93       	cmp	#1,	r13	;r3 As==01
    6366:	13 24       	jz	$+40     	;abs 0x638e
    6368:	2d 93       	cmp	#2,	r13	;r3 As==10
    636a:	0a 24       	jz	$+22     	;abs 0x6380
    636c:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000636e <.LVL69>:
    636e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6370:	06 20       	jnz	$+14     	;abs 0x637e

00006372 <.Loc.286.1>:
    6372:	0c 4e       	mov	r14,	r12	;
    6374:	5c 06       	rlam	#2,	r12	;
    6376:	0c 5e       	add	r14,	r12	;
    6378:	5c 02       	rlam	#1,	r12	;
    637a:	1c 4c 48 51 	mov	20808(r12),r12	;0x05148

0000637e <.L58>:
    637e:	30 41       	ret			

00006380 <.L60>:
    6380:	0c 4e       	mov	r14,	r12	;

00006382 <.LVL71>:
    6382:	5c 06       	rlam	#2,	r12	;
    6384:	0c 5e       	add	r14,	r12	;
    6386:	5c 02       	rlam	#1,	r12	;
    6388:	1c 4c 66 51 	mov	20838(r12),r12	;0x05166
    638c:	f8 3f       	jmp	$-14     	;abs 0x637e

0000638e <.L59>:
    638e:	0c 4e       	mov	r14,	r12	;

00006390 <.LVL73>:
    6390:	5c 06       	rlam	#2,	r12	;
    6392:	0c 5e       	add	r14,	r12	;
    6394:	5c 02       	rlam	#1,	r12	;
    6396:	1c 4c 84 51 	mov	20868(r12),r12	;0x05184
    639a:	f1 3f       	jmp	$-28     	;abs 0x637e

0000639c <_pers_timer_get_nxt_thread>:
    639c:	5c 0a       	rlam	#3,	r12	;

0000639e <.LVL75>:
    639e:	5c 4c 90 51 	mov.b	20880(r12),r12	;0x05190
    63a2:	30 41       	ret			

000063a4 <_pers_timer_get_nxt_time>:
    63a4:	5c 0a       	rlam	#3,	r12	;

000063a6 <.LVL77>:
    63a6:	1c 4c 92 51 	mov	20882(r12),r12	;0x05192
    63aa:	30 41       	ret			

000063ac <GPIO_setAsOutputPin>:
    63ac:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000063b0 <.Loc.113.1>:
    63b0:	0e 4c       	mov	r12,	r14	;
    63b2:	5e 02       	rlam	#1,	r14	;
    63b4:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000063b8 <.Loc.122.1>:
    63b8:	1c b3       	bit	#1,	r12	;r3 As==01
    63ba:	02 20       	jnz	$+6      	;abs 0x63c0

000063bc <.Loc.123.1>:
    63bc:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000063c0 <.L2>:
    63c0:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

000063c4 <.Loc.127.1>:
    63c4:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

000063c8 <.Loc.128.1>:
    63c8:	8e dd 04 00 	bis	r13,	4(r14)	;

000063cc <.Loc.130.1>:
    63cc:	30 41       	ret			

000063ce <GPIO_setAsInputPin>:
    63ce:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000063d2 <.Loc.135.1>:
    63d2:	0e 4c       	mov	r12,	r14	;

000063d4 <L0^A>:
    63d4:	5e 02       	rlam	#1,	r14	;
    63d6:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000063da <.Loc.144.1>:
    63da:	1c b3       	bit	#1,	r12	;r3 As==01
    63dc:	02 20       	jnz	$+6      	;abs 0x63e2

000063de <.Loc.145.1>:
    63de:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000063e2 <.L5>:
    63e2:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

000063e6 <.Loc.149.1>:
    63e6:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

000063ea <.Loc.150.1>:
    63ea:	8e cd 04 00 	bic	r13,	4(r14)	;

000063ee <.Loc.151.1>:
    63ee:	8e cd 06 00 	bic	r13,	6(r14)	;

000063f2 <.Loc.152.1>:
    63f2:	30 41       	ret			

000063f4 <GPIO_setAsPeripheralModuleFunctionOutputPin>:
    63f4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    63f8:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

000063fc <.Loc.158.1>:
    63fc:	0f 4c       	mov	r12,	r15	;
    63fe:	5f 02       	rlam	#1,	r15	;
    6400:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

00006404 <.Loc.167.1>:
    6404:	1c b3       	bit	#1,	r12	;r3 As==01
    6406:	02 20       	jnz	$+6      	;abs 0x640c

00006408 <.Loc.168.1>:
    6408:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000640c <.L7>:
    640c:	8f dd 04 00 	bis	r13,	4(r15)	;

00006410 <.Loc.172.1>:
    6410:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    6412:	10 24       	jz	$+34     	;abs 0x6434
    6414:	7e 90 03 00 	cmp.b	#3,	r14	;
    6418:	08 24       	jz	$+18     	;abs 0x642a
    641a:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    641c:	01 24       	jz	$+4      	;abs 0x6420

0000641e <.Loc.186.1>:
    641e:	30 41       	ret			

00006420 <.L11>:
    6420:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

00006424 <.Loc.175.1>:
    6424:	8f cd 0c 00 	bic	r13,	12(r15)	; 0x000c

00006428 <.Loc.176.1>:
    6428:	30 41       	ret			

0000642a <.L9>:
    642a:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000642e <.Loc.183.1>:
    642e:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

00006432 <.Loc.184.1>:
    6432:	30 41       	ret			

00006434 <.L8>:
    6434:	8f cd 0a 00 	bic	r13,	10(r15)	; 0x000a

00006438 <.Loc.179.1>:
    6438:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000643c <.Loc.180.1>:
    643c:	30 41       	ret			

0000643e <GPIO_setAsPeripheralModuleFunctionInputPin>:
    643e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6442:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006446 <.Loc.191.1>:
    6446:	0f 4c       	mov	r12,	r15	;
    6448:	5f 02       	rlam	#1,	r15	;
    644a:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000644e <.Loc.200.1>:
    644e:	1c b3       	bit	#1,	r12	;r3 As==01
    6450:	02 20       	jnz	$+6      	;abs 0x6456

00006452 <.Loc.201.1>:
    6452:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006456 <.L13>:
    6456:	0c 4d       	mov	r13,	r12	;

00006458 <.LVL12>:
    6458:	3c e3       	inv	r12		;

0000645a <.Loc.204.1>:
    645a:	8f cd 04 00 	bic	r13,	4(r15)	;

0000645e <.Loc.205.1>:
    645e:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    6460:	10 24       	jz	$+34     	;abs 0x6482
    6462:	7e 90 03 00 	cmp.b	#3,	r14	;
    6466:	08 24       	jz	$+18     	;abs 0x6478
    6468:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    646a:	01 24       	jz	$+4      	;abs 0x646e

0000646c <.Loc.219.1>:
    646c:	30 41       	ret			

0000646e <.L17>:
    646e:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

00006472 <.Loc.208.1>:
    6472:	8f fc 0c 00 	and	r12,	12(r15)	; 0x000c

00006476 <.Loc.209.1>:
    6476:	30 41       	ret			

00006478 <.L15>:
    6478:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000647c <.Loc.216.1>:
    647c:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

00006480 <.Loc.217.1>:
    6480:	30 41       	ret			

00006482 <.L14>:
    6482:	8f fc 0a 00 	and	r12,	10(r15)	; 0x000a

00006486 <.Loc.212.1>:
    6486:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000648a <.Loc.213.1>:
    648a:	30 41       	ret			

0000648c <GPIO_setOutputHighOnPin>:
    648c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006490 <.Loc.224.1>:
    6490:	0e 4c       	mov	r12,	r14	;
    6492:	5e 02       	rlam	#1,	r14	;
    6494:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00006498 <.Loc.233.1>:
    6498:	1c b3       	bit	#1,	r12	;r3 As==01
    649a:	02 20       	jnz	$+6      	;abs 0x64a0

0000649c <.Loc.234.1>:
    649c:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000064a0 <.L19>:
    64a0:	8e dd 02 00 	bis	r13,	2(r14)	;

000064a4 <.Loc.238.1>:
    64a4:	30 41       	ret			

000064a6 <GPIO_setOutputLowOnPin>:
    64a6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064aa <.Loc.242.1>:
    64aa:	0e 4c       	mov	r12,	r14	;
    64ac:	5e 02       	rlam	#1,	r14	;
    64ae:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000064b2 <.Loc.251.1>:
    64b2:	1c b3       	bit	#1,	r12	;r3 As==01
    64b4:	02 20       	jnz	$+6      	;abs 0x64ba

000064b6 <.Loc.252.1>:
    64b6:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000064ba <.L21>:
    64ba:	8e cd 02 00 	bic	r13,	2(r14)	;

000064be <.Loc.256.1>:
    64be:	30 41       	ret			

000064c0 <GPIO_toggleOutputOnPin>:
    64c0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064c4 <.Loc.260.1>:
    64c4:	0e 4c       	mov	r12,	r14	;
    64c6:	5e 02       	rlam	#1,	r14	;
    64c8:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000064cc <.Loc.269.1>:
    64cc:	1c b3       	bit	#1,	r12	;r3 As==01
    64ce:	02 20       	jnz	$+6      	;abs 0x64d4

000064d0 <.Loc.270.1>:
    64d0:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000064d4 <.L23>:
    64d4:	8e ed 02 00 	xor	r13,	2(r14)	;

000064d8 <.Loc.274.1>:
    64d8:	30 41       	ret			

000064da <GPIO_setAsInputPinWithPullDownResistor>:
    64da:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064de <.Loc.279.1>:
    64de:	0e 4c       	mov	r12,	r14	;
    64e0:	5e 02       	rlam	#1,	r14	;
    64e2:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000064e6 <.Loc.288.1>:
    64e6:	1c b3       	bit	#1,	r12	;r3 As==01
    64e8:	02 20       	jnz	$+6      	;abs 0x64ee

000064ea <.Loc.289.1>:
    64ea:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000064ee <.L25>:
    64ee:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

000064f2 <.Loc.293.1>:
    64f2:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

000064f6 <.Loc.295.1>:
    64f6:	8e cd 04 00 	bic	r13,	4(r14)	;

000064fa <.Loc.296.1>:
    64fa:	8e dd 06 00 	bis	r13,	6(r14)	;

000064fe <.Loc.297.1>:
    64fe:	8e cd 02 00 	bic	r13,	2(r14)	;

00006502 <.Loc.298.1>:
    6502:	30 41       	ret			

00006504 <GPIO_setAsInputPinWithPullUpResistor>:
    6504:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006508 <.Loc.303.1>:
    6508:	0e 4c       	mov	r12,	r14	;
    650a:	5e 02       	rlam	#1,	r14	;
    650c:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00006510 <.Loc.312.1>:
    6510:	1c b3       	bit	#1,	r12	;r3 As==01
    6512:	02 20       	jnz	$+6      	;abs 0x6518

00006514 <.Loc.313.1>:
    6514:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006518 <.L27>:
    6518:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000651c <.Loc.317.1>:
    651c:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

00006520 <.Loc.318.1>:
    6520:	8e cd 04 00 	bic	r13,	4(r14)	;

00006524 <.Loc.319.1>:
    6524:	8e dd 06 00 	bis	r13,	6(r14)	;

00006528 <.Loc.320.1>:
    6528:	8e dd 02 00 	bis	r13,	2(r14)	;

0000652c <.Loc.321.1>:
    652c:	30 41       	ret			

0000652e <GPIO_getInputPinValue>:
    652e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006532 <.Loc.326.1>:
    6532:	0e 4c       	mov	r12,	r14	;
    6534:	5e 02       	rlam	#1,	r14	;
    6536:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000653a <.Loc.335.1>:
    653a:	1c b3       	bit	#1,	r12	;r3 As==01
    653c:	02 20       	jnz	$+6      	;abs 0x6542

0000653e <.Loc.336.1>:
    653e:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006542 <.L29>:
    6542:	2d fe       	and	@r14,	r13	;

00006544 <.LVL31>:
    6544:	0c 43       	clr	r12		;
    6546:	0c 8d       	sub	r13,	r12	;

00006548 <.LVL32>:
    6548:	0c dd       	bis	r13,	r12	;

0000654a <.Loc.345.1>:
    654a:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    654e:	30 41       	ret			

00006550 <GPIO_enableInterrupt>:
    6550:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006554 <.Loc.349.1>:
    6554:	0e 4c       	mov	r12,	r14	;
    6556:	5e 02       	rlam	#1,	r14	;
    6558:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000655c <.Loc.358.1>:
    655c:	1c b3       	bit	#1,	r12	;r3 As==01
    655e:	02 20       	jnz	$+6      	;abs 0x6564

00006560 <.Loc.359.1>:
    6560:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006564 <.L31>:
    6564:	8e dd 1a 00 	bis	r13,	26(r14)	; 0x001a

00006568 <.Loc.363.1>:
    6568:	30 41       	ret			

0000656a <GPIO_disableInterrupt>:
    656a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000656e <.Loc.367.1>:
    656e:	0e 4c       	mov	r12,	r14	;
    6570:	5e 02       	rlam	#1,	r14	;
    6572:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00006576 <.Loc.376.1>:
    6576:	1c b3       	bit	#1,	r12	;r3 As==01
    6578:	02 20       	jnz	$+6      	;abs 0x657e

0000657a <.Loc.377.1>:
    657a:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000657e <.L33>:
    657e:	8e cd 1a 00 	bic	r13,	26(r14)	; 0x001a

00006582 <.Loc.381.1>:
    6582:	30 41       	ret			

00006584 <GPIO_getInterruptStatus>:
    6584:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006588 <.Loc.385.1>:
    6588:	0e 4c       	mov	r12,	r14	;
    658a:	5e 02       	rlam	#1,	r14	;
    658c:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00006590 <.Loc.394.1>:
    6590:	1c b3       	bit	#1,	r12	;r3 As==01
    6592:	0a 20       	jnz	$+22     	;abs 0x65a8

00006594 <.Loc.395.1>:
    6594:	1e b3       	bit	#1,	r14	;r3 As==01
    6596:	04 20       	jnz	$+10     	;abs 0x65a0

00006598 <.Loc.397.1>:
    6598:	5c 4e 1d 00 	mov.b	29(r14),r12	;0x0001d

0000659c <.LVL41>:
    659c:	0c fd       	and	r13,	r12	;

0000659e <.Loc.407.1>:
    659e:	30 41       	ret			

000065a0 <.L36>:
    65a0:	5c 4e 1c 00 	mov.b	28(r14),r12	;0x0001c

000065a4 <.Loc.401.1>:
    65a4:	0c fd       	and	r13,	r12	;

000065a6 <.Loc.407.1>:
    65a6:	30 41       	ret			

000065a8 <.L35>:
    65a8:	1c 4e 1c 00 	mov	28(r14),r12	;0x0001c
    65ac:	0c fd       	and	r13,	r12	;

000065ae <.Loc.407.1>:
    65ae:	30 41       	ret			

000065b0 <GPIO_clearInterrupt>:
    65b0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000065b4 <.Loc.411.1>:
    65b4:	0e 4c       	mov	r12,	r14	;
    65b6:	5e 02       	rlam	#1,	r14	;
    65b8:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000065bc <.Loc.420.1>:
    65bc:	1c b3       	bit	#1,	r12	;r3 As==01
    65be:	02 20       	jnz	$+6      	;abs 0x65c4

000065c0 <.Loc.421.1>:
    65c0:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000065c4 <.L39>:
    65c4:	8e cd 1c 00 	bic	r13,	28(r14)	; 0x001c

000065c8 <.Loc.425.1>:
    65c8:	30 41       	ret			

000065ca <GPIO_selectInterruptEdge>:
    65ca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    65ce:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

000065d2 <.Loc.430.1>:
    65d2:	0f 4c       	mov	r12,	r15	;
    65d4:	5f 02       	rlam	#1,	r15	;
    65d6:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

000065da <.Loc.439.1>:
    65da:	1c b3       	bit	#1,	r12	;r3 As==01
    65dc:	02 20       	jnz	$+6      	;abs 0x65e2

000065de <.Loc.440.1>:
    65de:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000065e2 <.L41>:
    65e2:	0e 93       	cmp	#0,	r14	;r3 As==00
    65e4:	03 20       	jnz	$+8      	;abs 0x65ec

000065e6 <.Loc.444.1>:
    65e6:	8f cd 18 00 	bic	r13,	24(r15)	; 0x0018

000065ea <.Loc.449.1>:
    65ea:	30 41       	ret			

000065ec <.L42>:
    65ec:	8f dd 18 00 	bis	r13,	24(r15)	; 0x0018

000065f0 <.Loc.449.1>:
    65f0:	30 41       	ret			

000065f2 <__mulhi2>:
    65f2:	02 12       	push	r2		;
    65f4:	32 c2       	dint			
    65f6:	03 43       	nop			
    65f8:	82 4c c0 04 	mov	r12,	&0x04c0	;
    65fc:	82 4d c8 04 	mov	r13,	&0x04c8	;
    6600:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6604:	00 13       	reti			

00006606 <__umulhisi2>:
    6606:	02 12       	push	r2		;
    6608:	32 c2       	dint			
    660a:	03 43       	nop			
    660c:	82 4c c0 04 	mov	r12,	&0x04c0	;
    6610:	82 4d c8 04 	mov	r13,	&0x04c8	;
    6614:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6618:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    661c:	00 13       	reti			

0000661e <memcpy>:
    661e:	0f 4c       	mov	r12,	r15	;
    6620:	0e 5d       	add	r13,	r14	;

00006622 <.L2>:
    6622:	0d 9e       	cmp	r14,	r13	;
    6624:	01 20       	jnz	$+4      	;abs 0x6628

00006626 <.Loc.111.1>:
    6626:	30 41       	ret			

00006628 <.L3>:
    6628:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

0000662c <.LVL4>:
    662c:	1f 53       	inc	r15		;
    662e:	f9 3f       	jmp	$-12     	;abs 0x6622

00006630 <_exit>:
    6630:	ff 3f       	jmp	$+0      	;abs 0x6630

00006632 <memset>:
    6632:	0e 5c       	add	r12,	r14	;

00006634 <L0^A>:
    6634:	0f 4c       	mov	r12,	r15	;

00006636 <.L2>:
    6636:	0f 9e       	cmp	r14,	r15	;
    6638:	01 20       	jnz	$+4      	;abs 0x663c

0000663a <.Loc.104.1>:
    663a:	30 41       	ret			

0000663c <.L3>:
    663c:	1f 53       	inc	r15		;

0000663e <.LVL4>:
    663e:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    6642:	f9 3f       	jmp	$-12     	;abs 0x6636
