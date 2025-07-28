
bin/blink:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00005228 <__crt0_start>:
    5228:	31 40 00 24 	mov	#9216,	r1	;#0x2400

0000522c <__crt0_init_bss>:
    522c:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005230 <.Loc.76.1>:
    5230:	0d 43       	clr	r13		;

00005232 <.Loc.77.1>:
    5232:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00005236 <.Loc.81.1>:
    5236:	b0 12 ca 71 	call	#29130		;#0x71ca

0000523a <__crt0_run_init_array>:
    523a:	34 40 24 45 	mov	#17700,	r4	;#0x4524

0000523e <.Loc.189.1>:
    523e:	35 40 2c 45 	mov	#17708,	r5	;#0x452c

00005242 <.Loc.190.1>:
    5242:	26 43       	mov	#2,	r6	;r3 As==10

00005244 <.Loc.191.1>:
    5244:	b0 12 52 52 	call	#21074		;#0x5252

00005248 <__crt0_call_main>:
    5248:	0c 43       	clr	r12		;

0000524a <.Loc.254.1>:
    524a:	b0 12 60 52 	call	#21088		;#0x5260

0000524e <__crt0_call_exit>:
    524e:	b0 12 c8 71 	call	#29128		;#0x71c8

00005252 <__crt0_run_array>:
    5252:	05 94       	cmp	r4,	r5	;

00005254 <.Loc.294.1>:
    5254:	04 24       	jz	$+10     	;abs 0x525e

00005256 <.Loc.295.1>:
    5256:	27 44       	mov	@r4,	r7	;

00005258 <.Loc.296.1>:
    5258:	04 56       	add	r6,	r4	;

0000525a <.Loc.297.1>:
    525a:	87 12       	call	r7		;

0000525c <.Loc.298.1>:
    525c:	fa 3f       	jmp	$-10     	;abs 0x5252

0000525e <_msp430_run_done>:
    525e:	30 41       	ret			

00005260 <main>:
#include "ink/ink.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    5260:	
00005262 <L0^A>:
    5262:	80 5a 5c 01 	add	r10,	0x015c	; PC rel. 0x53c0

00005266 <.Loc.10.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    5266:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

0000526a <.Loc.12.1>:
    /* Set the GPIO pin for the LED. */
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0);
    526a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    526c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    526e:	b0 12 6e 6f 	call	#28526		;#0x6f6e

00005272 <.Loc.15.1>:

    /* Start the scheduler. */
    ink_scheduler_run();  // TODO: replace with call to custom scheduler.
    5272:	b0 12 6c 59 	call	#22892		;#0x596c

00005276 <.Loc.16.1>:
}
    5276:	4c 43       	clr.b	r12		;
    5278:	30 41       	ret			

0000527a <t_end>:
}

static void* t_end()
{
    return (void*)0;
}
    527a:	4c 43       	clr.b	r12		;
    527c:	30 41       	ret			

0000527e <__ink_entry_task>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    527e:	b0 12 4c 53 	call	#21324		;#0x534c

00005282 <.LVL1>:
__INK_GET_VAR_FROM_BUF(blink_counter) = 0;
    5282:	5c 02       	rlam	#1,	r12	;

00005284 <.Loc.22.1>:
    5284:	1c 4c 2c 45 	mov	17708(r12),r12	;0x0452c
    5288:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

0000528c <.Loc.24.1>:
}
    528c:	3c 40 92 52 	mov	#21138,	r12	;#0x5292
    5290:	30 41       	ret			

00005292 <t_blink_on>:
{
    5292:	0a 15       	pushm	#1,	r10	;16-bit words

00005294 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    5294:	b0 12 4c 53 	call	#21324		;#0x534c
    5298:	0a 4c       	mov	r12,	r10	;

0000529a <.Loc.30.1>:
GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    529a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    529c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    529e:	b0 12 4e 70 	call	#28750		;#0x704e

000052a2 <.Loc.31.1>:
    __INK_GET_VAR_FROM_BUF(blink_counter) += 1;
    52a2:	5a 02       	rlam	#1,	r10	;
    52a4:	1c 4a 2c 45 	mov	17708(r10),r12	;0x0452c

000052a8 <.Loc.31.1>:
    52a8:	dc 53 00 00 	inc.b	0(r12)		;

000052ac <.Loc.33.1>:
    __delay_cycles(400000);
    52ac:	1e 14       	pushm.a	#2,	r14	;20-bit words
    52ae:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    52b2:	0e 43       	clr	r14		;

000052b4 <.L1^B1>:
    52b4:	1d 83       	dec	r13		;
    52b6:	0e 73       	sbc	r14		;
    52b8:	fd 23       	jnz	$-4      	;abs 0x52b4
    52ba:	0d 93       	cmp	#0,	r13	;r3 As==00
    52bc:	fb 23       	jnz	$-8      	;abs 0x52b4
    52be:	1d 16       	popm.a	#2,	r14	;20-bit words

000052c0 <L0^A>:
    52c0:	00 3c       	jmp	$+2      	;abs 0x52c2

000052c2 <L0^A>:
    52c2:	00 3c       	jmp	$+2      	;abs 0x52c4
    52c4:	03 43       	nop			

000052c6 <.Loc.35.1>:
}
    52c6:	3c 40 ce 52 	mov	#21198,	r12	;#0x52ce
    52ca:	0a 17       	popm	#1,	r10	;16-bit words

000052cc <.LCFI1>:
    52cc:	30 41       	ret			

000052ce <t_blink_off>:
{
    52ce:	0a 15       	pushm	#1,	r10	;16-bit words

000052d0 <.LCFI2>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    52d0:	b0 12 4c 53 	call	#21324		;#0x534c
    52d4:	0a 4c       	mov	r12,	r10	;

000052d6 <.Loc.41.1>:
GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    52d6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    52d8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    52da:	b0 12 68 70 	call	#28776		;#0x7068

000052de <.Loc.43.1>:
    __delay_cycles(400000);
    52de:	1e 14       	pushm.a	#2,	r14	;20-bit words
    52e0:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    52e4:	0e 43       	clr	r14		;

000052e6 <.L1^B2>:
    52e6:	1d 83       	dec	r13		;
    52e8:	0e 73       	sbc	r14		;
    52ea:	fd 23       	jnz	$-4      	;abs 0x52e6
    52ec:	0d 93       	cmp	#0,	r13	;r3 As==00
    52ee:	fb 23       	jnz	$-8      	;abs 0x52e6
    52f0:	1d 16       	popm.a	#2,	r14	;20-bit words

000052f2 <L0^A>:
    52f2:	00 3c       	jmp	$+2      	;abs 0x52f4

000052f4 <L0^A>:
    52f4:	00 3c       	jmp	$+2      	;abs 0x52f6
    52f6:	03 43       	nop			

000052f8 <.Loc.45.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == 10)
    52f8:	5a 02       	rlam	#1,	r10	;
    52fa:	1d 4a 2c 45 	mov	17708(r10),r13	;0x0452c

000052fe <.Loc.50.1>:
    return t_blink_on;
    52fe:	3c 40 92 52 	mov	#21138,	r12	;#0x5292

00005302 <.Loc.45.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == 10)
    5302:	fd 90 0a 00 	cmp.b	#10,	0(r13)	;#0x000a
    5306:	00 00 
    5308:	02 24       	jz	$+6      	;abs 0x530e

0000530a <.Loc.51.1>:
}
    530a:	0a 17       	popm	#1,	r10	;16-bit words

0000530c <.LCFI3>:
    530c:	30 41       	ret			

0000530e <.L8>:
        return t_end;
    530e:	3c 40 7a 52 	mov	#21114,	r12	;#0x527a

00005312 <.Loc.51.1>:
}
    5312:	0a 17       	popm	#1,	r10	;16-bit words

00005314 <.LCFI5>:
    5314:	30 41       	ret			

00005316 <__ink_create_thread_1>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(1, true)
    5316:	b0 12 92 53 	call	#21394		;#0x5392
    531a:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    531c:	01 20       	jnz	$+4      	;abs 0x5320

0000531e <.Loc.19.1>:
    531e:	30 41       	ret			

00005320 <.L14>:
    5320:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5322:	3d 40 7e 52 	mov	#21118,	r13	;#0x527e
    5326:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5328:	b0 12 00 54 	call	#21504		;#0x5400

0000532c <.Loc.19.1>:
    532c:	30 41       	ret			

0000532e <__ink_initialize_shared_vars_1>:
__INK_INITIALIZE_SHARED_VARS_FUNC(1){
    __INK_SET_BUFFER_POINTERS(blink_counter);
    532e:	3c 40 2c 45 	mov	#17708,	r12	;#0x452c
    5332:	bc 40 20 52 	mov	#21024,	0(r12)	;#0x5220
    5336:	00 00 

00005338 <.Loc.58.1>:
    5338:	3d 40 20 52 	mov	#21024,	r13	;#0x5220
    533c:	3d 50 02 00 	add	#2,	r13	;
    5340:	8c 4d 02 00 	mov	r13,	2(r12)	;

00005344 <.Loc.58.1>:
}
    5344:	30 41       	ret			

00005346 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    5346:	3c 50 02 00 	add	#2,	r12	;

0000534a <.LVL1>:
    534a:	30 41       	ret			

0000534c <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    534c:	5c 42 4c 51 	mov.b	&0x514c,r12	;0x514c
    5350:	30 41       	ret			

00005352 <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    5352:	3c 90 20 52 	cmp	#21024,	r12	;#0x5220
    5356:	06 28       	jnc	$+14     	;abs 0x5364

00005358 <.Loc.27.1>:
    5358:	5d 43       	mov.b	#1,	r13	;r3 As==01
    535a:	3c 90 22 52 	cmp	#21026,	r12	;#0x5222
    535e:	04 2c       	jc	$+10     	;abs 0x5368
    5360:	4c 4d       	mov.b	r13,	r12	;

00005362 <.L5>:
}
    5362:	30 41       	ret			

00005364 <.L7>:
    5364:	4c 43       	clr.b	r12		;

00005366 <.LVL5>:
    5366:	30 41       	ret			

00005368 <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    5368:	4d 43       	clr.b	r13		;
    536a:	4c 4d       	mov.b	r13,	r12	;

0000536c <.LVL7>:
    536c:	fa 3f       	jmp	$-10     	;abs 0x5362

0000536e <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    536e:	0a 15       	pushm	#1,	r10	;16-bit words

00005370 <.LCFI0>:
    5370:	0a 4c       	mov	r12,	r10	;

00005372 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    5372:	3c 90 20 52 	cmp	#21024,	r12	;#0x5220
    5376:	0a 28       	jnc	$+22     	;abs 0x538c
    5378:	3c 90 22 52 	cmp	#21026,	r12	;#0x5222
    537c:	07 2c       	jc	$+16     	;abs 0x538c

0000537e <.LBB14>:
    return address + buffer_offset * buffer_index;
    537e:	5c 42 4c 51 	mov.b	&0x514c,r12	;0x514c

00005382 <.LVL11>:
    5382:	3d 40 02 00 	mov	#2,	r13	;

00005386 <.LVL12>:
    5386:	b0 12 b4 71 	call	#29108		;#0x71b4

0000538a <.LVL13>:
    538a:	0a 5c       	add	r12,	r10	;

0000538c <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    538c:	0c 4a       	mov	r10,	r12	;
    538e:	0a 17       	popm	#1,	r10	;16-bit words

00005390 <.LCFI1>:
    5390:	30 41       	ret			

00005392 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    5392:	
00005394 <L0^A>:
    5394:	30 45       	br	@r5+		;
    5396:	30 41       	ret			

00005398 <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    5398:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    539c:	30 41       	ret			

0000539e <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    539e:	b0 12 f8 5b 	call	#23544		;#0x5bf8

000053a2 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    53a2:	c2 93 30 45 	cmp.b	#0,	&0x4530	;r3 As==00
    53a6:	22 20       	jnz	$+70     	;abs 0x53ec

000053a8 <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    53a8:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000053ac <.Loc.50.1>:
    53ac:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

000053b0 <.Loc.50.1>:
    53b0:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000053b4 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    53b4:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    53b8:	02 02 

000053ba <.Loc.51.1>:
    53ba:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    53be:	04 02 

000053c0 <.Loc.51.1>:
    53c0:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    53c4:	02 02 

000053c6 <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    53c6:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    53ca:	22 02 

000053cc <.Loc.52.1>:
    53cc:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    53d0:	24 02 

000053d2 <.Loc.52.1>:
    53d2:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    53d6:	22 02 

000053d8 <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    53d8:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    53dc:	22 02 

000053de <.Loc.53.1>:
    53de:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    53e2:	24 02 

000053e4 <.Loc.53.1>:
    53e4:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    53e8:	22 02 

000053ea <.Loc.53.1>:
#endif
}
    53ea:	30 41       	ret			

000053ec <.L6>:
        __scheduler_boot_init();
    53ec:	b0 12 50 5c 	call	#23632		;#0x5c50

000053f0 <.Loc.36.1>:
        __events_boot_init();
    53f0:	b0 12 72 59 	call	#22898		;#0x5972
    53f4:	d9 3f       	jmp	$-76     	;abs 0x53a8

000053f6 <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    53f6:	c2 43 30 45 	mov.b	#0,	&0x4530	;r3 As==00

000053fa <.Loc.69.1>:
    __ink_initialized = true;
    53fa:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

000053fe <.Loc.70.1>:
    53fe:	30 41       	ret			

00005400 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    5400:	2a 15       	pushm	#3,	r10	;16-bit words

00005402 <L0^A>:
    5402:	21 83       	decd	r1		;

00005404 <.LCFI1>:
    5404:	4a 4c       	mov.b	r12,	r10	;
    5406:	09 4d       	mov	r13,	r9	;
    5408:	48 4e       	mov.b	r14,	r8	;

0000540a <.Loc.147.1>:
    if (!ink_is_first_boot())
    540a:	b0 12 92 53 	call	#21394		;#0x5392

0000540e <.LVL1>:
    540e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5410:	56 24       	jz	$+174    	;abs 0x54be

00005412 <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    5412:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    5416:	4c 9a       	cmp.b	r10,	r12	;
    5418:	47 28       	jnc	$+144    	;abs 0x54a8
    541a:	0c 4a       	mov	r10,	r12	;
    541c:	5c 02       	rlam	#1,	r12	;
    541e:	3c 50 28 54 	add	#21544,	r12	;#0x5428
    5422:	2c 4c       	mov	@r12,	r12	;
    5424:	00 4c       	br	r12		;
	...

00005428 <.L6>:
    5428:	a8 54 40 59 	add	@r4,	22848(r8); 0x5940
    542c:	2c 59       	add	@r9,	r12	;
    542e:	18 59 04 59 	add	22788(r9),r8	;0x05904
    5432:	f0 58 dc 58 	add.b	@r8+,	0x58dc	; PC rel. 0xad10
    5436:	c8 58 b4 58 	add.b	r8,	22708(r8); 0x58b4
    543a:	a0 58 8e 58 	add	@r8,	0x588e	; PC rel. 0xacca
    543e:	7c 58       	add.b	@r8+,	r12	;
    5440:	6a 58       	add.b	@r8,	r10	;
    5442:	58 58 46 58 	add.b	22598(r8),r8	;0x05846
    5446:	34 58       	add	@r8+,	r4	;
    5448:	22 58       	add	@r8,	r2	;
    544a:	10 58 fe 57 	add	22526(r8),r0	;0x057fe
    544e:	ec 57 da 57 	add.b	@r7,	22490(r12); 0x57da
    5452:	c8 57 b6 57 	add.b	r7,	22454(r8); 0x57b6
    5456:	a4 57 92 57 	add	@r7,	22418(r4); 0x5792
    545a:	80 57 6e 57 	add	r7,	0x576e	; PC rel. 0xabca
    545e:	5c 57 4a 57 	add.b	22346(r7),r12	;0x0574a
    5462:	38 57       	add	@r7+,	r8	;
    5464:	26 57       	add	@r7,	r6	;
    5466:	14 57 02 57 	add	22274(r7),r4	;0x05702
    546a:	f0 56 de 56 	add.b	@r6+,	0x56de	; PC rel. 0xab4a
    546e:	cc 56 ba 56 	add.b	r6,	22202(r12); 0x56ba
    5472:	a8 56 96 56 	add	@r6,	22166(r8); 0x5696
    5476:	84 56 72 56 	add	r6,	22130(r4); 0x5672
    547a:	60 56       	add.b	@r6,	r0	;
    547c:	4e 56       	add.b	r6,	r14	;
    547e:	3c 56       	add	@r6+,	r12	;
    5480:	2a 56       	add	@r6,	r10	;
    5482:	18 56 06 56 	add	22022(r6),r8	;0x05606
    5486:	f4 55 e2 55 	add.b	@r5+,	21986(r4); 0x55e2
    548a:	d0 55 be 55 	add.b	21950(r5),0x55ac	;0x055be, PC rel. 0xaa3a
    548e:	ac 55 
    5490:	9a 55 88 55 	add	21896(r5),21878(r10);0x05588, 0x5576
    5494:	76 55 
    5496:	64 55       	add.b	@r5,	r4	;
    5498:	52 55 40 55 	add.b	21824(r5),r2	;0x05540
    549c:	2e 55       	add	@r5,	r14	;
    549e:	1c 55 0a 55 	add	21770(r5),r12	;0x0550a
    54a2:	f8 54 e6 54 	add.b	@r4+,	21734(r8); 0x54e6
    54a6:	
000054a8 <.L70>:
    if (!ink_is_first_boot())
    54a8:	4c 43       	clr.b	r12		;
    54aa:	4f 43       	clr.b	r15		;
    54ac:	4e 43       	clr.b	r14		;

000054ae <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    54ae:	81 4c 00 00 	mov	r12,	0(r1)	;
    54b2:	0d 49       	mov	r9,	r13	;
    54b4:	4c 4a       	mov.b	r10,	r12	;

000054b6 <.LVL4>:
    54b6:	b0 12 78 5c 	call	#23672		;#0x5c78

000054ba <.LVL5>:

    if (start_on_first_boot)
    54ba:	08 93       	cmp	#0,	r8	;r3 As==00
    54bc:	03 20       	jnz	$+8      	;abs 0x54c4

000054be <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    54be:	21 53       	incd	r1		;

000054c0 <.LCFI2>:
    54c0:	28 17       	popm	#3,	r10	;16-bit words

000054c2 <.LCFI3>:
    54c2:	30 41       	ret			

000054c4 <.L75>:
        __start_thread(__get_thread(priority));
    54c4:	4c 4a       	mov.b	r10,	r12	;
    54c6:	b0 12 1c 5d 	call	#23836		;#0x5d1c
    54ca:	b0 12 00 5d 	call	#23808		;#0x5d00

000054ce <.Loc.232.1>:
}
    54ce:	21 53       	incd	r1		;

000054d0 <.LCFI5>:
    54d0:	28 17       	popm	#3,	r10	;16-bit words

000054d2 <.LCFI6>:
    54d2:	30 41       	ret			

000054d4 <.L5>:
        INK_CREATE_THREAD_CASE(63)
    54d4:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    54d8:	3f 50 02 00 	add	#2,	r15	;

000054dc <.LVL9>:
    54dc:	3c 40 00 00 	mov	#0,	r12	;

000054e0 <.Loc.220.1>:
    54e0:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    54e4:	e4 3f       	jmp	$-54     	;abs 0x54ae

000054e6 <.L7>:
        INK_CREATE_THREAD_CASE(62)
    54e6:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    54ea:	3f 50 02 00 	add	#2,	r15	;

000054ee <.LVL12>:
    54ee:	3c 40 00 00 	mov	#0,	r12	;

000054f2 <.Loc.219.1>:
    54f2:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    54f6:	db 3f       	jmp	$-72     	;abs 0x54ae

000054f8 <.L8>:
        INK_CREATE_THREAD_CASE(61)
    54f8:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    54fc:	3f 50 02 00 	add	#2,	r15	;

00005500 <.LVL15>:
    5500:	3c 40 00 00 	mov	#0,	r12	;

00005504 <.Loc.218.1>:
    5504:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5508:	d2 3f       	jmp	$-90     	;abs 0x54ae

0000550a <.L9>:
        INK_CREATE_THREAD_CASE(60)
    550a:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    550e:	3f 50 02 00 	add	#2,	r15	;

00005512 <.LVL18>:
    5512:	3c 40 00 00 	mov	#0,	r12	;

00005516 <.Loc.217.1>:
    5516:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    551a:	c9 3f       	jmp	$-108    	;abs 0x54ae

0000551c <.L10>:
        INK_CREATE_THREAD_CASE(59)
    551c:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5520:	3f 50 02 00 	add	#2,	r15	;

00005524 <.LVL21>:
    5524:	3c 40 00 00 	mov	#0,	r12	;

00005528 <.Loc.216.1>:
    5528:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    552c:	c0 3f       	jmp	$-126    	;abs 0x54ae

0000552e <.L11>:
        INK_CREATE_THREAD_CASE(58)
    552e:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5532:	3f 50 02 00 	add	#2,	r15	;

00005536 <.LVL24>:
    5536:	3c 40 00 00 	mov	#0,	r12	;

0000553a <.Loc.215.1>:
    553a:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    553e:	b7 3f       	jmp	$-144    	;abs 0x54ae

00005540 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    5540:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5544:	3f 50 02 00 	add	#2,	r15	;

00005548 <.LVL27>:
    5548:	3c 40 00 00 	mov	#0,	r12	;

0000554c <.Loc.214.1>:
    554c:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5550:	ae 3f       	jmp	$-162    	;abs 0x54ae

00005552 <.L13>:
        INK_CREATE_THREAD_CASE(56)
    5552:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5556:	3f 50 02 00 	add	#2,	r15	;

0000555a <.LVL30>:
    555a:	3c 40 00 00 	mov	#0,	r12	;

0000555e <.Loc.213.1>:
    555e:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5562:	a5 3f       	jmp	$-180    	;abs 0x54ae

00005564 <.L14>:
        INK_CREATE_THREAD_CASE(55)
    5564:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5568:	3f 50 02 00 	add	#2,	r15	;

0000556c <.LVL33>:
    556c:	3c 40 00 00 	mov	#0,	r12	;

00005570 <.Loc.212.1>:
    5570:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5574:	9c 3f       	jmp	$-198    	;abs 0x54ae

00005576 <.L15>:
        INK_CREATE_THREAD_CASE(54)
    5576:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    557a:	3f 50 02 00 	add	#2,	r15	;

0000557e <.LVL36>:
    557e:	3c 40 00 00 	mov	#0,	r12	;

00005582 <.Loc.211.1>:
    5582:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5586:	93 3f       	jmp	$-216    	;abs 0x54ae

00005588 <.L16>:
        INK_CREATE_THREAD_CASE(53)
    5588:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    558c:	3f 50 02 00 	add	#2,	r15	;

00005590 <.LVL39>:
    5590:	3c 40 00 00 	mov	#0,	r12	;

00005594 <.Loc.210.1>:
    5594:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5598:	8a 3f       	jmp	$-234    	;abs 0x54ae

0000559a <.L17>:
        INK_CREATE_THREAD_CASE(52)
    559a:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    559e:	3f 50 02 00 	add	#2,	r15	;

000055a2 <.LVL42>:
    55a2:	3c 40 00 00 	mov	#0,	r12	;

000055a6 <.Loc.209.1>:
    55a6:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    55aa:	81 3f       	jmp	$-252    	;abs 0x54ae

000055ac <.L18>:
        INK_CREATE_THREAD_CASE(51)
    55ac:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    55b0:	3f 50 02 00 	add	#2,	r15	;

000055b4 <.LVL45>:
    55b4:	3c 40 00 00 	mov	#0,	r12	;

000055b8 <.Loc.208.1>:
    55b8:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    55bc:	78 3f       	jmp	$-270    	;abs 0x54ae

000055be <.L19>:
        INK_CREATE_THREAD_CASE(50)
    55be:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    55c2:	3f 50 02 00 	add	#2,	r15	;

000055c6 <.LVL48>:
    55c6:	3c 40 00 00 	mov	#0,	r12	;

000055ca <.Loc.207.1>:
    55ca:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    55ce:	6f 3f       	jmp	$-288    	;abs 0x54ae

000055d0 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    55d0:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    55d4:	3f 50 02 00 	add	#2,	r15	;

000055d8 <.LVL51>:
    55d8:	3c 40 00 00 	mov	#0,	r12	;

000055dc <.Loc.206.1>:
    55dc:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    55e0:	66 3f       	jmp	$-306    	;abs 0x54ae

000055e2 <.L21>:
        INK_CREATE_THREAD_CASE(48)
    55e2:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    55e6:	3f 50 02 00 	add	#2,	r15	;

000055ea <.LVL54>:
    55ea:	3c 40 00 00 	mov	#0,	r12	;

000055ee <.Loc.205.1>:
    55ee:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    55f2:	5d 3f       	jmp	$-324    	;abs 0x54ae

000055f4 <.L22>:
        INK_CREATE_THREAD_CASE(47)
    55f4:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    55f8:	3f 50 02 00 	add	#2,	r15	;

000055fc <.LVL57>:
    55fc:	3c 40 00 00 	mov	#0,	r12	;

00005600 <.Loc.204.1>:
    5600:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5604:	54 3f       	jmp	$-342    	;abs 0x54ae

00005606 <.L23>:
        INK_CREATE_THREAD_CASE(46)
    5606:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    560a:	3f 50 02 00 	add	#2,	r15	;

0000560e <.LVL60>:
    560e:	3c 40 00 00 	mov	#0,	r12	;

00005612 <.Loc.203.1>:
    5612:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5616:	4b 3f       	jmp	$-360    	;abs 0x54ae

00005618 <.L24>:
        INK_CREATE_THREAD_CASE(45)
    5618:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    561c:	3f 50 02 00 	add	#2,	r15	;

00005620 <.LVL63>:
    5620:	3c 40 00 00 	mov	#0,	r12	;

00005624 <.Loc.202.1>:
    5624:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5628:	42 3f       	jmp	$-378    	;abs 0x54ae

0000562a <.L25>:
        INK_CREATE_THREAD_CASE(44)
    562a:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    562e:	3f 50 02 00 	add	#2,	r15	;

00005632 <.LVL66>:
    5632:	3c 40 00 00 	mov	#0,	r12	;

00005636 <.Loc.201.1>:
    5636:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    563a:	39 3f       	jmp	$-396    	;abs 0x54ae

0000563c <.L26>:
        INK_CREATE_THREAD_CASE(43)
    563c:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5640:	3f 50 02 00 	add	#2,	r15	;

00005644 <.LVL69>:
    5644:	3c 40 00 00 	mov	#0,	r12	;

00005648 <.Loc.200.1>:
    5648:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    564c:	30 3f       	jmp	$-414    	;abs 0x54ae

0000564e <.L27>:
        INK_CREATE_THREAD_CASE(42)
    564e:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5652:	3f 50 02 00 	add	#2,	r15	;

00005656 <.LVL72>:
    5656:	3c 40 00 00 	mov	#0,	r12	;

0000565a <.Loc.199.1>:
    565a:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    565e:	27 3f       	jmp	$-432    	;abs 0x54ae

00005660 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    5660:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5664:	3f 50 02 00 	add	#2,	r15	;

00005668 <.LVL75>:
    5668:	3c 40 00 00 	mov	#0,	r12	;

0000566c <.Loc.198.1>:
    566c:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5670:	1e 3f       	jmp	$-450    	;abs 0x54ae

00005672 <.L29>:
        INK_CREATE_THREAD_CASE(40)
    5672:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5676:	3f 50 02 00 	add	#2,	r15	;

0000567a <.LVL78>:
    567a:	3c 40 00 00 	mov	#0,	r12	;

0000567e <.Loc.197.1>:
    567e:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5682:	15 3f       	jmp	$-468    	;abs 0x54ae

00005684 <.L30>:
        INK_CREATE_THREAD_CASE(39)
    5684:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5688:	3f 50 02 00 	add	#2,	r15	;

0000568c <.LVL81>:
    568c:	3c 40 00 00 	mov	#0,	r12	;

00005690 <.Loc.196.1>:
    5690:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5694:	0c 3f       	jmp	$-486    	;abs 0x54ae

00005696 <.L31>:
        INK_CREATE_THREAD_CASE(38)
    5696:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    569a:	3f 50 02 00 	add	#2,	r15	;

0000569e <.LVL84>:
    569e:	3c 40 00 00 	mov	#0,	r12	;

000056a2 <.Loc.195.1>:
    56a2:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    56a6:	03 3f       	jmp	$-504    	;abs 0x54ae

000056a8 <.L32>:
        INK_CREATE_THREAD_CASE(37)
    56a8:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    56ac:	3f 50 02 00 	add	#2,	r15	;

000056b0 <.LVL87>:
    56b0:	3c 40 00 00 	mov	#0,	r12	;

000056b4 <.Loc.194.1>:
    56b4:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    56b8:	fa 3e       	jmp	$-522    	;abs 0x54ae

000056ba <.L33>:
        INK_CREATE_THREAD_CASE(36)
    56ba:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    56be:	3f 50 02 00 	add	#2,	r15	;

000056c2 <.LVL90>:
    56c2:	3c 40 00 00 	mov	#0,	r12	;

000056c6 <.Loc.193.1>:
    56c6:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    56ca:	f1 3e       	jmp	$-540    	;abs 0x54ae

000056cc <.L34>:
        INK_CREATE_THREAD_CASE(35)
    56cc:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    56d0:	3f 50 02 00 	add	#2,	r15	;

000056d4 <.LVL93>:
    56d4:	3c 40 00 00 	mov	#0,	r12	;

000056d8 <.Loc.192.1>:
    56d8:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    56dc:	e8 3e       	jmp	$-558    	;abs 0x54ae

000056de <.L35>:
        INK_CREATE_THREAD_CASE(34)
    56de:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    56e2:	3f 50 02 00 	add	#2,	r15	;

000056e6 <.LVL96>:
    56e6:	3c 40 00 00 	mov	#0,	r12	;

000056ea <.Loc.191.1>:
    56ea:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    56ee:	df 3e       	jmp	$-576    	;abs 0x54ae

000056f0 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    56f0:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    56f4:	3f 50 02 00 	add	#2,	r15	;

000056f8 <.LVL99>:
    56f8:	3c 40 00 00 	mov	#0,	r12	;

000056fc <.Loc.190.1>:
    56fc:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5700:	d6 3e       	jmp	$-594    	;abs 0x54ae

00005702 <.L37>:
        INK_CREATE_THREAD_CASE(32)
    5702:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5706:	3f 50 02 00 	add	#2,	r15	;

0000570a <.LVL102>:
    570a:	3c 40 00 00 	mov	#0,	r12	;

0000570e <.Loc.189.1>:
    570e:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5712:	cd 3e       	jmp	$-612    	;abs 0x54ae

00005714 <.L38>:
        INK_CREATE_THREAD_CASE(31)
    5714:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5718:	3f 50 02 00 	add	#2,	r15	;

0000571c <.LVL105>:
    571c:	3c 40 00 00 	mov	#0,	r12	;

00005720 <.Loc.188.1>:
    5720:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5724:	c4 3e       	jmp	$-630    	;abs 0x54ae

00005726 <.L39>:
        INK_CREATE_THREAD_CASE(30)
    5726:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    572a:	3f 50 02 00 	add	#2,	r15	;

0000572e <.LVL108>:
    572e:	3c 40 00 00 	mov	#0,	r12	;

00005732 <.Loc.187.1>:
    5732:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5736:	bb 3e       	jmp	$-648    	;abs 0x54ae

00005738 <.L40>:
        INK_CREATE_THREAD_CASE(29)
    5738:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    573c:	3f 50 02 00 	add	#2,	r15	;

00005740 <.LVL111>:
    5740:	3c 40 00 00 	mov	#0,	r12	;

00005744 <.Loc.186.1>:
    5744:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5748:	b2 3e       	jmp	$-666    	;abs 0x54ae

0000574a <.L41>:
        INK_CREATE_THREAD_CASE(28)
    574a:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    574e:	3f 50 02 00 	add	#2,	r15	;

00005752 <.LVL114>:
    5752:	3c 40 00 00 	mov	#0,	r12	;

00005756 <.Loc.185.1>:
    5756:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    575a:	a9 3e       	jmp	$-684    	;abs 0x54ae

0000575c <.L42>:
        INK_CREATE_THREAD_CASE(27)
    575c:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5760:	3f 50 02 00 	add	#2,	r15	;

00005764 <.LVL117>:
    5764:	3c 40 00 00 	mov	#0,	r12	;

00005768 <.Loc.184.1>:
    5768:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    576c:	a0 3e       	jmp	$-702    	;abs 0x54ae

0000576e <.L43>:
        INK_CREATE_THREAD_CASE(26)
    576e:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5772:	3f 50 02 00 	add	#2,	r15	;

00005776 <.LVL120>:
    5776:	3c 40 00 00 	mov	#0,	r12	;

0000577a <.Loc.183.1>:
    577a:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    577e:	97 3e       	jmp	$-720    	;abs 0x54ae

00005780 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    5780:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5784:	3f 50 02 00 	add	#2,	r15	;

00005788 <.LVL123>:
    5788:	3c 40 00 00 	mov	#0,	r12	;

0000578c <.Loc.182.1>:
    578c:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5790:	8e 3e       	jmp	$-738    	;abs 0x54ae

00005792 <.L45>:
        INK_CREATE_THREAD_CASE(24)
    5792:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5796:	3f 50 02 00 	add	#2,	r15	;

0000579a <.LVL126>:
    579a:	3c 40 00 00 	mov	#0,	r12	;

0000579e <.Loc.181.1>:
    579e:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    57a2:	85 3e       	jmp	$-756    	;abs 0x54ae

000057a4 <.L46>:
        INK_CREATE_THREAD_CASE(23)
    57a4:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    57a8:	3f 50 02 00 	add	#2,	r15	;

000057ac <.LVL129>:
    57ac:	3c 40 00 00 	mov	#0,	r12	;

000057b0 <.Loc.180.1>:
    57b0:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    57b4:	7c 3e       	jmp	$-774    	;abs 0x54ae

000057b6 <.L47>:
        INK_CREATE_THREAD_CASE(22)
    57b6:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    57ba:	3f 50 02 00 	add	#2,	r15	;

000057be <.LVL132>:
    57be:	3c 40 00 00 	mov	#0,	r12	;

000057c2 <.Loc.179.1>:
    57c2:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    57c6:	73 3e       	jmp	$-792    	;abs 0x54ae

000057c8 <.L48>:
        INK_CREATE_THREAD_CASE(21)
    57c8:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    57cc:	3f 50 02 00 	add	#2,	r15	;

000057d0 <.LVL135>:
    57d0:	3c 40 00 00 	mov	#0,	r12	;

000057d4 <.Loc.178.1>:
    57d4:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    57d8:	6a 3e       	jmp	$-810    	;abs 0x54ae

000057da <.L49>:
        INK_CREATE_THREAD_CASE(20)
    57da:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    57de:	3f 50 02 00 	add	#2,	r15	;

000057e2 <.LVL138>:
    57e2:	3c 40 00 00 	mov	#0,	r12	;

000057e6 <.Loc.177.1>:
    57e6:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    57ea:	61 3e       	jmp	$-828    	;abs 0x54ae

000057ec <.L50>:
        INK_CREATE_THREAD_CASE(19)
    57ec:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    57f0:	3f 50 02 00 	add	#2,	r15	;

000057f4 <.LVL141>:
    57f4:	3c 40 00 00 	mov	#0,	r12	;

000057f8 <.Loc.176.1>:
    57f8:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    57fc:	58 3e       	jmp	$-846    	;abs 0x54ae

000057fe <.L51>:
        INK_CREATE_THREAD_CASE(18)
    57fe:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5802:	3f 50 02 00 	add	#2,	r15	;

00005806 <.LVL144>:
    5806:	3c 40 00 00 	mov	#0,	r12	;

0000580a <.Loc.175.1>:
    580a:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    580e:	4f 3e       	jmp	$-864    	;abs 0x54ae

00005810 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    5810:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5814:	3f 50 02 00 	add	#2,	r15	;

00005818 <.LVL147>:
    5818:	3c 40 00 00 	mov	#0,	r12	;

0000581c <.Loc.174.1>:
    581c:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5820:	46 3e       	jmp	$-882    	;abs 0x54ae

00005822 <.L53>:
        INK_CREATE_THREAD_CASE(16)
    5822:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5826:	3f 50 02 00 	add	#2,	r15	;

0000582a <.LVL150>:
    582a:	3c 40 00 00 	mov	#0,	r12	;

0000582e <.Loc.173.1>:
    582e:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5832:	3d 3e       	jmp	$-900    	;abs 0x54ae

00005834 <.L54>:
        INK_CREATE_THREAD_CASE(15)
    5834:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5838:	3f 50 02 00 	add	#2,	r15	;

0000583c <.LVL153>:
    583c:	3c 40 00 00 	mov	#0,	r12	;

00005840 <.Loc.172.1>:
    5840:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5844:	34 3e       	jmp	$-918    	;abs 0x54ae

00005846 <.L55>:
        INK_CREATE_THREAD_CASE(14)
    5846:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    584a:	3f 50 02 00 	add	#2,	r15	;

0000584e <.LVL156>:
    584e:	3c 40 00 00 	mov	#0,	r12	;

00005852 <.Loc.171.1>:
    5852:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5856:	2b 3e       	jmp	$-936    	;abs 0x54ae

00005858 <.L56>:
        INK_CREATE_THREAD_CASE(13)
    5858:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    585c:	3f 50 02 00 	add	#2,	r15	;

00005860 <.LVL159>:
    5860:	3c 40 00 00 	mov	#0,	r12	;

00005864 <.Loc.170.1>:
    5864:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5868:	22 3e       	jmp	$-954    	;abs 0x54ae

0000586a <.L57>:
        INK_CREATE_THREAD_CASE(12)
    586a:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    586e:	3f 50 02 00 	add	#2,	r15	;

00005872 <.LVL162>:
    5872:	3c 40 00 00 	mov	#0,	r12	;

00005876 <.Loc.169.1>:
    5876:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    587a:	19 3e       	jmp	$-972    	;abs 0x54ae

0000587c <.L58>:
        INK_CREATE_THREAD_CASE(11)
    587c:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5880:	3f 50 02 00 	add	#2,	r15	;

00005884 <.LVL165>:
    5884:	3c 40 00 00 	mov	#0,	r12	;

00005888 <.Loc.168.1>:
    5888:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    588c:	10 3e       	jmp	$-990    	;abs 0x54ae

0000588e <.L59>:
        INK_CREATE_THREAD_CASE(10)
    588e:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5892:	3f 50 02 00 	add	#2,	r15	;

00005896 <.LVL168>:
    5896:	3c 40 00 00 	mov	#0,	r12	;

0000589a <.Loc.167.1>:
    589a:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    589e:	07 3e       	jmp	$-1008   	;abs 0x54ae

000058a0 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    58a0:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    58a4:	3f 50 02 00 	add	#2,	r15	;

000058a8 <.LVL171>:
    58a8:	3c 40 00 00 	mov	#0,	r12	;

000058ac <.Loc.166.1>:
    58ac:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    58b0:	30 40 ae 54 	br	#0x54ae		;

000058b4 <.L61>:
        INK_CREATE_THREAD_CASE(8)
    58b4:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    58b8:	3f 50 02 00 	add	#2,	r15	;

000058bc <.LVL174>:
    58bc:	3c 40 00 00 	mov	#0,	r12	;

000058c0 <.Loc.165.1>:
    58c0:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    58c4:	30 40 ae 54 	br	#0x54ae		;

000058c8 <.L62>:
        INK_CREATE_THREAD_CASE(7)
    58c8:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    58cc:	3f 50 02 00 	add	#2,	r15	;

000058d0 <.LVL177>:
    58d0:	3c 40 00 00 	mov	#0,	r12	;

000058d4 <.Loc.164.1>:
    58d4:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    58d8:	30 40 ae 54 	br	#0x54ae		;

000058dc <.L63>:
        INK_CREATE_THREAD_CASE(6)
    58dc:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    58e0:	3f 50 02 00 	add	#2,	r15	;

000058e4 <.LVL180>:
    58e4:	3c 40 00 00 	mov	#0,	r12	;

000058e8 <.Loc.163.1>:
    58e8:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    58ec:	30 40 ae 54 	br	#0x54ae		;

000058f0 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    58f0:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    58f4:	3f 50 02 00 	add	#2,	r15	;

000058f8 <.LVL183>:
    58f8:	3c 40 00 00 	mov	#0,	r12	;

000058fc <.Loc.162.1>:
    58fc:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5900:	30 40 ae 54 	br	#0x54ae		;

00005904 <.L65>:
        INK_CREATE_THREAD_CASE(4)
    5904:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5908:	3f 50 02 00 	add	#2,	r15	;

0000590c <.LVL186>:
    590c:	3c 40 00 00 	mov	#0,	r12	;

00005910 <.Loc.161.1>:
    5910:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5914:	30 40 ae 54 	br	#0x54ae		;

00005918 <.L66>:
        INK_CREATE_THREAD_CASE(3)
    5918:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    591c:	3f 50 02 00 	add	#2,	r15	;

00005920 <.LVL189>:
    5920:	3c 40 00 00 	mov	#0,	r12	;

00005924 <.Loc.160.1>:
    5924:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    5928:	30 40 ae 54 	br	#0x54ae		;

0000592c <.L67>:
        INK_CREATE_THREAD_CASE(2)
    592c:	3f 40 22 52 	mov	#21026,	r15	;#0x5222
    5930:	3f 50 02 00 	add	#2,	r15	;

00005934 <.LVL192>:
    5934:	3c 40 00 00 	mov	#0,	r12	;

00005938 <.Loc.159.1>:
    5938:	3e 40 22 52 	mov	#21026,	r14	;#0x5222
    593c:	30 40 ae 54 	br	#0x54ae		;

00005940 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    5940:	3f 40 20 52 	mov	#21024,	r15	;#0x5220
    5944:	3f 50 02 00 	add	#2,	r15	;

00005948 <.LVL195>:
    5948:	3c 40 02 00 	mov	#2,	r12	;

0000594c <.Loc.158.1>:
    594c:	3e 40 20 52 	mov	#21024,	r14	;#0x5220
    5950:	30 40 ae 54 	br	#0x54ae		;

00005954 <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    5954:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005958 <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    5958:	32 c2       	dint			
    595a:	03 43       	nop			

0000595c <.Loc.236.1>:
    595c:	b0 12 1c 5d 	call	#23836		;#0x5d1c

00005960 <.LVL198>:
    5960:	b0 12 00 5d 	call	#23808		;#0x5d00

00005964 <.Loc.236.1>:
    5964:	03 43       	nop			
    5966:	32 d2       	eint			
    5968:	03 43       	nop			

0000596a <.Loc.237.1>:
}
    596a:	30 41       	ret			

0000596c <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    596c:	b0 12 32 5d 	call	#23858		;#0x5d32

00005970 <.Loc.7.1>:
}
    5970:	30 41       	ret			

00005972 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    5972:	1a 15       	pushm	#2,	r10	;16-bit words

00005974 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    5974:	3a 40 b2 4a 	mov	#19122,	r10	;#0x4ab2
    5978:	39 40 b2 45 	mov	#17842,	r9	;#0x45b2

0000597c <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    597c:	0c 4a       	mov	r10,	r12	;
    597e:	b0 12 24 5b 	call	#23332		;#0x5b24

00005982 <.Loc.27.1>:
        _popped[i] = NULL;
    5982:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

00005986 <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    5986:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    598a:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

0000598e <.Loc.24.1>:
    598e:	3a 90 b2 45 	cmp	#17842,	r10	;#0x45b2
    5992:	f4 23       	jnz	$-22     	;abs 0x597c

00005994 <.Loc.29.1>:
    }
}
    5994:	19 17       	popm	#2,	r10	;16-bit words

00005996 <.LCFI1>:
    5996:	30 41       	ret			

00005998 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    5998:	5c 42 be 4a 	mov.b	&0x4abe,r12	;0x4abe
    599c:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    599e:	14 24       	jz	$+42     	;abs 0x59c8
    59a0:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    59a2:	1f 24       	jz	$+64     	;abs 0x59e2
    59a4:	0c 93       	cmp	#0,	r12	;r3 As==00
    59a6:	01 24       	jz	$+4      	;abs 0x59aa

000059a8 <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    59a8:	30 41       	ret			

000059aa <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    59aa:	1d 42 bc 4a 	mov	&0x4abc,r13	;0x4abc

000059ae <.Loc.37.1>:
    59ae:	6c 4d       	mov.b	@r13,	r12	;
    59b0:	5c 06       	rlam	#2,	r12	;
    59b2:	6d 4d       	mov.b	@r13,	r13	;
    59b4:	0c 5d       	add	r13,	r12	;
    59b6:	5c 06       	rlam	#2,	r12	;
    59b8:	3d 40 b2 4a 	mov	#19122,	r13	;#0x4ab2
    59bc:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    59c0:	b0 12 80 5b 	call	#23424		;#0x5b80

000059c4 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    59c4:	d2 43 be 4a 	mov.b	#1,	&0x4abe	;r3 As==01

000059c8 <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    59c8:	1d 42 bc 4a 	mov	&0x4abc,r13	;0x4abc

000059cc <.Loc.40.1>:
    59cc:	6c 4d       	mov.b	@r13,	r12	;
    59ce:	5c 06       	rlam	#2,	r12	;
    59d0:	6d 4d       	mov.b	@r13,	r13	;
    59d2:	0c 5d       	add	r13,	r12	;
    59d4:	5c 06       	rlam	#2,	r12	;
    59d6:	
000059d8 <L0^A>:
    59d8:	b2 45 b0 12 	mov	@r5+,	&0x12b0	;
    59dc:	
000059de <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    59de:	e2 43 be 4a 	mov.b	#2,	&0x4abe	;r3 As==10

000059e2 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    59e2:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc
    59e6:	1c 4c 02 00 	mov	2(r12),	r12	;

000059ea <.Loc.44.1>:
    59ea:	3c 92       	cmp	#8,	r12	;r2 As==11
    59ec:	04 24       	jz	$+10     	;abs 0x59f6

000059ee <.L9>:
        _status = EVENT_DONE;
    59ee:	f2 40 03 00 	mov.b	#3,	&0x4abe	;
    59f2:	be 4a 

000059f4 <.Loc.51.1>:
}
    59f4:	30 41       	ret			

000059f6 <.L17>:
            __disable_interrupt();
    59f6:	32 c2       	dint			
    59f8:	03 43       	nop			

000059fa <.Loc.46.1>:
            __start_thread(_thread);
    59fa:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc
    59fe:	b0 12 00 5d 	call	#23808		;#0x5d00

00005a02 <.Loc.47.1>:
            __enable_interrupt();
    5a02:	03 43       	nop			
    5a04:	32 d2       	eint			
    5a06:	03 43       	nop			
    5a08:	f2 3f       	jmp	$-26     	;abs 0x59ee

00005a0a <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    5a0a:	1d 42 bc 4a 	mov	&0x4abc,r13	;0x4abc

00005a0e <.Loc.55.1>:
    5a0e:	6c 4d       	mov.b	@r13,	r12	;

00005a10 <.LVL7>:
    5a10:	5c 06       	rlam	#2,	r12	;
    5a12:	6d 4d       	mov.b	@r13,	r13	;
    5a14:	0c 5d       	add	r13,	r12	;
    5a16:	5c 06       	rlam	#2,	r12	;
    5a18:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    5a1c:	b0 12 54 5b 	call	#23380		;#0x5b54

00005a20 <.Loc.56.1>:
}
    5a20:	30 41       	ret			

00005a22 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    5a22:	82 4c bc 4a 	mov	r12,	&0x4abc	;

00005a26 <.Loc.64.1>:
    _event = *event;
    5a26:	0e 4d       	mov	r13,	r14	;
    5a28:	b2 4e b2 4a 	mov	@r14+,	&0x4ab2	;
    5a2c:	b2 4e b4 4a 	mov	@r14+,	&0x4ab4	;
    5a30:	92 4d 04 00 	mov	4(r13),	&0x4ab6	;
    5a34:	b6 4a 
    5a36:	92 4d 06 00 	mov	6(r13),	&0x4ab8	;
    5a3a:	b8 4a 
    5a3c:	92 4e 04 00 	mov	4(r14),	&0x4aba	;
    5a40:	ba 4a 

00005a42 <.Loc.65.1>:
    _status = EVENT_INSERT;
    5a42:	c2 43 be 4a 	mov.b	#0,	&0x4abe	;r3 As==00

00005a46 <.LBB4>:
    switch(_status){
    5a46:	5d 42 be 4a 	mov.b	&0x4abe,r13	;0x4abe

00005a4a <.LVL10>:
    5a4a:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    5a4c:	14 24       	jz	$+42     	;abs 0x5a76
    5a4e:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    5a50:	1f 24       	jz	$+64     	;abs 0x5a90
    5a52:	0d 93       	cmp	#0,	r13	;r3 As==00
    5a54:	01 24       	jz	$+4      	;abs 0x5a58

00005a56 <.LBE4>:
    __events_commit();
}
    5a56:	30 41       	ret			

00005a58 <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    5a58:	6d 4c       	mov.b	@r12,	r13	;
    5a5a:	5d 06       	rlam	#2,	r13	;
    5a5c:	6c 4c       	mov.b	@r12,	r12	;

00005a5e <.LVL11>:
    5a5e:	0c 5d       	add	r13,	r12	;
    5a60:	5c 06       	rlam	#2,	r12	;
    5a62:	3d 40 b2 4a 	mov	#19122,	r13	;#0x4ab2
    5a66:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    5a6a:	b0 12 80 5b 	call	#23424		;#0x5b80

00005a6e <.LVL12>:
        _status = EVENT_COMMIT;
    5a6e:	d2 43 be 4a 	mov.b	#1,	&0x4abe	;r3 As==01
    5a72:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc

00005a76 <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    5a76:	6d 4c       	mov.b	@r12,	r13	;
    5a78:	5d 06       	rlam	#2,	r13	;
    5a7a:	6c 4c       	mov.b	@r12,	r12	;
    5a7c:	0c 5d       	add	r13,	r12	;
    5a7e:	5c 06       	rlam	#2,	r12	;
    5a80:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    5a84:	b0 12 b6 5b 	call	#23478		;#0x5bb6

00005a88 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    5a88:	e2 43 be 4a 	mov.b	#2,	&0x4abe	;r3 As==10
    5a8c:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc

00005a90 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    5a90:	1c 4c 02 00 	mov	2(r12),	r12	;

00005a94 <.Loc.44.1>:
    5a94:	3c 92       	cmp	#8,	r12	;r2 As==11
    5a96:	04 24       	jz	$+10     	;abs 0x5aa0

00005a98 <.L23>:
        _status = EVENT_DONE;
    5a98:	f2 40 03 00 	mov.b	#3,	&0x4abe	;
    5a9c:	be 4a 

00005a9e <.Loc.67.1>:
}
    5a9e:	30 41       	ret			

00005aa0 <.L31>:
            __disable_interrupt();
    5aa0:	32 c2       	dint			
    5aa2:	03 43       	nop			

00005aa4 <.Loc.46.1>:
            __start_thread(_thread);
    5aa4:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc
    5aa8:	b0 12 00 5d 	call	#23808		;#0x5d00

00005aac <.Loc.47.1>:
            __enable_interrupt();
    5aac:	03 43       	nop			
    5aae:	32 d2       	eint			
    5ab0:	03 43       	nop			
    5ab2:	f2 3f       	jmp	$-26     	;abs 0x5a98

00005ab4 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    5ab4:	6d 4c       	mov.b	@r12,	r13	;
    5ab6:	5d 06       	rlam	#2,	r13	;
    5ab8:	6c 4c       	mov.b	@r12,	r12	;

00005aba <.LVL16>:
    5aba:	0c 5d       	add	r13,	r12	;
    5abc:	5c 06       	rlam	#2,	r12	;
    5abe:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    5ac2:	b0 12 3e 5b 	call	#23358		;#0x5b3e
    5ac6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005aca <.Loc.71.1>:
    5aca:	3c 53       	add	#-1,	r12	;r3 As==11

00005acc <.Loc.75.1>:
        return 0;

    return 1;
}
    5acc:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    5ad0:	30 41       	ret			

00005ad2 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    5ad2:	0a 15       	pushm	#1,	r10	;16-bit words

00005ad4 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    5ad4:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc

00005ad8 <.LVL19>:
    5ad8:	6a 4c       	mov.b	@r12,	r10	;

00005ada <.Loc.81.1>:
    5ada:	0c 4a       	mov	r10,	r12	;
    5adc:	5c 06       	rlam	#2,	r12	;
    5ade:	0c 5a       	add	r10,	r12	;
    5ae0:	5c 06       	rlam	#2,	r12	;
    5ae2:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    5ae6:	b0 12 be 5b 	call	#23486		;#0x5bbe

00005aea <.Loc.81.1>:
    5aea:	5a 02       	rlam	#1,	r10	;
    5aec:	8a 4c 32 45 	mov	r12,	17714(r10); 0x4532

00005af0 <.Loc.82.1>:
    return _popped[_thread->priority];
    5af0:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc
    5af4:	6c 4c       	mov.b	@r12,	r12	;
    5af6:	5c 02       	rlam	#1,	r12	;

00005af8 <.Loc.83.1>:
}
    5af8:	1c 4c 32 45 	mov	17714(r12),r12	;0x04532
    5afc:	0a 17       	popm	#1,	r10	;16-bit words

00005afe <.LCFI3>:
    5afe:	30 41       	ret			

00005b00 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    5b00:	1d 42 bc 4a 	mov	&0x4abc,r13	;0x4abc

00005b04 <.Loc.87.1>:
    5b04:	6c 4d       	mov.b	@r13,	r12	;

00005b06 <.LVL22>:
    5b06:	5c 06       	rlam	#2,	r12	;
    5b08:	6d 4d       	mov.b	@r13,	r13	;
    5b0a:	0c 5d       	add	r13,	r12	;
    5b0c:	5c 06       	rlam	#2,	r12	;
    5b0e:	3c 50 b2 45 	add	#17842,	r12	;#0x45b2
    5b12:	b0 12 f0 5b 	call	#23536		;#0x5bf0

00005b16 <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    5b16:	1c 42 bc 4a 	mov	&0x4abc,r12	;0x4abc
    5b1a:	6c 4c       	mov.b	@r12,	r12	;
    5b1c:	5c 02       	rlam	#1,	r12	;
    5b1e:	8c 43 32 45 	mov	#0,	17714(r12);r3 As==00, 0x4532

00005b22 <.Loc.89.1>:
}
    5b22:	30 41       	ret			

00005b24 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    5b24:	
00005b28 <L0^A>:
    5b28:	10 00       	bra	@r0+		;

00005b2a <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    5b2a:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    5b2e:	11 00 

00005b30 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    5b30:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    5b34:	12 00 

00005b36 <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    5b36:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    5b3a:	13 00 

00005b3c <.Loc.10.1>:
}
    5b3c:	30 41       	ret			

00005b3e <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    5b3e:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    5b42:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    5b46:	4c 4d       	mov.b	r13,	r12	;

00005b48 <.LVL2>:
    5b48:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5b4c:	3c 53       	add	#-1,	r12	;r3 As==11

00005b4e <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    5b4e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    5b52:	30 41       	ret			

00005b54 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    5b54:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    5b58:	5d 53       	inc.b	r13		;
    5b5a:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00005b5e <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    5b5e:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    5b62:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    5b64:	02 20       	jnz	$+6      	;abs 0x5b6a

00005b66 <.Loc.25.1>:
        queue->__tail = 0;
    5b66:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00005b6a <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    5b6a:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    5b6e:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    5b72:	4c 4d       	mov.b	r13,	r12	;

00005b74 <.LVL4>:
    5b74:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5b78:	3c 53       	add	#-1,	r12	;r3 As==11

00005b7a <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    5b7a:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    5b7e:	30 41       	ret			

00005b80 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    5b80:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    5b84:	5e 53       	inc.b	r14		;
    5b86:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

00005b8a <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    5b8a:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    5b8e:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    5b90:	02 20       	jnz	$+6      	;abs 0x5b96

00005b92 <.Loc.40.1>:
        queue->__tail = 0;
    5b92:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00005b96 <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    5b96:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

00005b9a <.Loc.44.1>:
    5b9a:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00005b9e <.Loc.44.1>:
    5b9e:	0f 9e       	cmp	r14,	r15	;
    5ba0:	08 24       	jz	$+18     	;abs 0x5bb2

00005ba2 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    5ba2:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00005ba6 <.Loc.49.1>:
    5ba6:	5e 02       	rlam	#1,	r14	;
    5ba8:	0c 5e       	add	r14,	r12	;

00005baa <.LVL6>:
    5baa:	8c 4d 00 00 	mov	r13,	0(r12)	;

00005bae <.Loc.51.1>:

    return 1;
    5bae:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005bb0 <.Loc.52.1>:
}
    5bb0:	30 41       	ret			

00005bb2 <.L9>:
        return 0;
    5bb2:	4c 43       	clr.b	r12		;

00005bb4 <.LVL8>:
}
    5bb4:	30 41       	ret			

00005bb6 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    5bb6:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    5bba:	11 00 

00005bbc <.Loc.59.1>:
}
    5bbc:	30 41       	ret			

00005bbe <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    5bbe:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00005bc2 <.Loc.63.1>:
    5bc2:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

00005bc6 <.Loc.63.1>:
    5bc6:	0e 9d       	cmp	r13,	r14	;
    5bc8:	11 24       	jz	$+36     	;abs 0x5bec

00005bca <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    5bca:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    5bce:	5d 53       	inc.b	r13		;
    5bd0:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00005bd4 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    5bd4:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    5bd8:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    5bda:	02 20       	jnz	$+6      	;abs 0x5be0

00005bdc <.Loc.70.1>:
        queue->__head = 0;
    5bdc:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00005be0 <.L13>:

    return queue->_items[queue->_head];
    5be0:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00005be4 <.Loc.72.1>:
    5be4:	5d 02       	rlam	#1,	r13	;
    5be6:	0c 5d       	add	r13,	r12	;

00005be8 <.LVL11>:
    5be8:	2c 4c       	mov	@r12,	r12	;

00005bea <.Loc.73.1>:
}
    5bea:	30 41       	ret			

00005bec <.L14>:
        return NULL;
    5bec:	4c 43       	clr.b	r12		;

00005bee <.LVL13>:
}
    5bee:	30 41       	ret			

00005bf0 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    5bf0:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    5bf4:	10 00 

00005bf6 <.Loc.79.1>:
}
    5bf6:	30 41       	ret			

00005bf8 <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    5bf8:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    5bfc:	40 01 

00005bfe <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    5bfe:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    5c02:	41 01 

00005c04 <.Loc.13.1>:
}
    5c04:	30 41       	ret			

00005c06 <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    5c06:	0a 15       	pushm	#1,	r10	;16-bit words

00005c08 <.LCFI0>:
    5c08:	21 82       	sub	#4,	r1	;r2 As==10

00005c0a <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    5c0a:	0a 4c       	mov	r12,	r10	;
    5c0c:	0b 43       	clr	r11		;
    5c0e:	81 4a 00 00 	mov	r10,	0(r1)	;
    5c12:	81 4b 02 00 	mov	r11,	2(r1)	;

00005c16 <.Loc.20.1>:
    5c16:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00005c1a <.LVL1>:
    5c1a:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    5c1e:	00 00 

00005c20 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    5c20:	0a 4d       	mov	r13,	r10	;
    5c22:	0b 43       	clr	r11		;

00005c24 <.LVL2>:
    5c24:	81 4a 00 00 	mov	r10,	0(r1)	;
    5c28:	81 4b 02 00 	mov	r11,	2(r1)	;

00005c2c <.Loc.21.1>:
    5c2c:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    5c30:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    5c34:	00 00 

00005c36 <.LBE3>:
    DMA0SZ = size;                          // Block size
    5c36:	82 4e 1a 05 	mov	r14,	&0x051a	;

00005c3a <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    5c3a:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    5c3e:	10 05 

00005c40 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    5c40:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    5c44:	10 05 

00005c46 <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    5c46:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00005c4a <.Loc.29.1>:
}
    5c4a:	21 52       	add	#4,	r1	;r2 As==10

00005c4c <.LCFI2>:
    5c4c:	0a 17       	popm	#1,	r10	;16-bit words

00005c4e <.LCFI3>:
    5c4e:	30 41       	ret			

00005c50 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    5c50:	3c 40 c2 4a 	mov	#19138,	r12	;#0x4ac2
    5c54:	b0 12 fa 69 	call	#27130		;#0x69fa

00005c58 <.Loc.54.1>:
    5c58:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00005c5c <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    5c5c:	0c 4d       	mov	r13,	r12	;
    5c5e:	5c 02       	rlam	#1,	r12	;
    5c60:	0c 5d       	add	r13,	r12	;
    5c62:	5c 06       	rlam	#2,	r12	;
    5c64:	0c 5d       	add	r13,	r12	;
    5c66:	5c 02       	rlam	#1,	r12	;
    5c68:	1c 4c ce 4a 	mov	19150(r12),r12	;0x04ace

00005c6c <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    5c6c:	3d 53       	add	#-1,	r13	;r3 As==11

00005c6e <.Loc.56.1>:
    5c6e:	0d 93       	cmp	#0,	r13	;r3 As==00
    5c70:	f5 23       	jnz	$-20     	;abs 0x5c5c

00005c72 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    5c72:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00005c76 <.Loc.61.1>:
}
    5c76:	30 41       	ret			

00005c78 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    5c78:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005c7c <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    5c7c:	0b 4c       	mov	r12,	r11	;
    5c7e:	5b 02       	rlam	#1,	r11	;
    5c80:	0b 5c       	add	r12,	r11	;
    5c82:	5b 06       	rlam	#2,	r11	;
    5c84:	0b 5c       	add	r12,	r11	;
    5c86:	5b 02       	rlam	#1,	r11	;
    5c88:	cb 4c cc 4a 	mov.b	r12,	19148(r11); 0x4acc

00005c8c <.Loc.69.1>:
    _threads[priority].entry = entry;
    5c8c:	8b 4d d0 4a 	mov	r13,	19152(r11); 0x4ad0

00005c90 <.Loc.70.1>:
    _threads[priority].next = entry;
    5c90:	8b 4d d4 4a 	mov	r13,	19156(r11); 0x4ad4

00005c94 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    5c94:	bb 42 ce 4a 	mov	#8,	19150(r11);r2 As==11, 0x4ace

00005c98 <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    5c98:	8b 4e d6 4a 	mov	r14,	19158(r11); 0x4ad6

00005c9c <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    5c9c:	8b 4f d8 4a 	mov	r15,	19160(r11); 0x4ad8

00005ca0 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    5ca0:	cb 43 da 4a 	mov.b	#0,	19162(r11);r3 As==00, 0x4ada

00005ca4 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    5ca4:	9b 41 02 00 	mov	2(r1),	19164(r11); 0x4adc
    5ca8:	dc 4a 

00005caa <.Loc.78.1>:
}
    5caa:	30 41       	ret			

00005cac <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    5cac:	0a 15       	pushm	#1,	r10	;16-bit words

00005cae <.LCFI0>:
    5cae:	0a 4c       	mov	r12,	r10	;

00005cb0 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    5cb0:	3d 40 c2 4a 	mov	#19138,	r13	;#0x4ac2
    5cb4:	6c 4c       	mov.b	@r12,	r12	;

00005cb6 <.LVL6>:
    5cb6:	b0 12 40 6a 	call	#27200		;#0x6a40

00005cba <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    5cba:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005cbe <.Loc.84.1>:
}
    5cbe:	0a 17       	popm	#1,	r10	;16-bit words

00005cc0 <.LCFI1>:
    5cc0:	30 41       	ret			

00005cc2 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    5cc2:	0a 15       	pushm	#1,	r10	;16-bit words

00005cc4 <.LCFI2>:
    5cc4:	0a 4c       	mov	r12,	r10	;

00005cc6 <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    5cc6:	3d 40 c2 4a 	mov	#19138,	r13	;#0x4ac2
    5cca:	6c 4c       	mov.b	@r12,	r12	;

00005ccc <.LVL9>:
    5ccc:	b0 12 40 6a 	call	#27200		;#0x6a40

00005cd0 <.Loc.89.1>:
    thread->next = NULL;
    5cd0:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00005cd4 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    5cd4:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005cd8 <.Loc.91.1>:
}
    5cd8:	0a 17       	popm	#1,	r10	;16-bit words

00005cda <.LCFI3>:
    5cda:	30 41       	ret			

00005cdc <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    5cdc:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005ce0 <.Loc.95.1>:
    return;
}
    5ce0:	30 41       	ret			

00005ce2 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    5ce2:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005ce6 <.Loc.101.1>:
    return;
}
    5ce6:	30 41       	ret			

00005ce8 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    5ce8:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00005cec <.Loc.107.1>:
    return;
}
    5cec:	30 41       	ret			

00005cee <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    5cee:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005cf2 <.Loc.112.1>:
    return;
}
    5cf2:	30 41       	ret			

00005cf4 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    5cf4:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00005cf8 <.LVL16>:
    5cf8:	30 41       	ret			

00005cfa <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    5cfa:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00005cfe <.LVL18>:
    5cfe:	30 41       	ret			

00005d00 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    5d00:	0a 15       	pushm	#1,	r10	;16-bit words

00005d02 <.LCFI4>:
    5d02:	0a 4c       	mov	r12,	r10	;

00005d04 <.Loc.125.1>:
    thread->next = thread->entry;
    5d04:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    5d08:	08 00 

00005d0a <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    5d0a:	3d 40 c2 4a 	mov	#19138,	r13	;#0x4ac2
    5d0e:	6c 4c       	mov.b	@r12,	r12	;

00005d10 <.LVL20>:
    5d10:	b0 12 20 6a 	call	#27168		;#0x6a20

00005d14 <.Loc.127.1>:
    thread->state = TASK_READY;
    5d14:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005d18 <.Loc.128.1>:
}
    5d18:	0a 17       	popm	#1,	r10	;16-bit words

00005d1a <.LCFI5>:
    5d1a:	30 41       	ret			

00005d1c <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    5d1c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005d20 <.Loc.140.1>:
    return &_threads[priority];
    5d20:	0d 4c       	mov	r12,	r13	;
    5d22:	5d 02       	rlam	#1,	r13	;
    5d24:	0d 5c       	add	r12,	r13	;
    5d26:	5d 06       	rlam	#2,	r13	;
    5d28:	0c 5d       	add	r13,	r12	;

00005d2a <.LVL23>:
    5d2a:	5c 02       	rlam	#1,	r12	;

00005d2c <.Loc.141.1>:
}
    5d2c:	3c 50 cc 4a 	add	#19148,	r12	;#0x4acc
    5d30:	30 41       	ret			

00005d32 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    5d32:	32 c2       	dint			
    5d34:	03 43       	nop			

00005d36 <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    5d36:	b0 12 98 59 	call	#22936		;#0x5998

00005d3a <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    5d3a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005d3e <.Loc.162.1>:
    __port_off(1, 3);
    5d3e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005d42 <.LBB8>:
    if(_thread){
    5d42:	82 93 c0 4a 	cmp	#0,	&0x4ac0	;r3 As==00
    5d46:	04 24       	jz	$+10     	;abs 0x5d50

00005d48 <.Loc.146.1>:
        __tick(_thread);
    5d48:	1c 42 c0 4a 	mov	&0x4ac0,r12	;0x4ac0
    5d4c:	b0 12 e6 5d 	call	#24038		;#0x5de6

00005d50 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    5d50:	b0 12 02 5f 	call	#24322		;#0x5f02

00005d54 <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    5d54:	03 43       	nop			
    5d56:	32 d2       	eint			
    5d58:	03 43       	nop			

00005d5a <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    5d5a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005d5e <.Loc.179.1>:
    __port_off(1, 3);
    5d5e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005d62 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    5d62:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    5d66:	0c 93       	cmp	#0,	r12	;r3 As==00
    5d68:	10 24       	jz	$+34     	;abs 0x5d8a

00005d6a <.L29>:
    5d6a:	1c 93       	cmp	#1,	r12	;r3 As==01
    5d6c:	fa 23       	jnz	$-10     	;abs 0x5d62
    5d6e:	1c 42 c0 4a 	mov	&0x4ac0,r12	;0x4ac0

00005d72 <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    5d72:	0c 93       	cmp	#0,	r12	;r3 As==00
    5d74:	24 24       	jz	$+74     	;abs 0x5dbe

00005d76 <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    5d76:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005d7a <.Loc.198.1>:
#endif
                __tick(_thread);
    5d7a:	b0 12 e6 5d 	call	#24038		;#0x5de6

00005d7e <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    5d7e:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00005d82 <.Loc.180.1>:
        switch (_sched_state){
    5d82:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    5d86:	0c 93       	cmp	#0,	r12	;r3 As==00
    5d88:	f0 23       	jnz	$-30     	;abs 0x5d6a

00005d8a <.L19>:
            __port_on(1, 3);
    5d8a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005d8e <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    5d8e:	3c 40 c2 4a 	mov	#19138,	r12	;#0x4ac2
    5d92:	b0 12 68 6a 	call	#27240		;#0x6a68
    5d96:	4d 4c       	mov.b	r12,	r13	;

00005d98 <.LVL29>:
    if(idx)
    5d98:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5d9a:	0d 24       	jz	$+28     	;abs 0x5db6

00005d9c <.Loc.134.1>:
        return &_threads[idx];
    5d9c:	0c 4d       	mov	r13,	r12	;
    5d9e:	5c 02       	rlam	#1,	r12	;

00005da0 <.LVL30>:
    5da0:	0c 5d       	add	r13,	r12	;
    5da2:	5c 06       	rlam	#2,	r12	;
    5da4:	0c 5d       	add	r13,	r12	;
    5da6:	5c 02       	rlam	#1,	r12	;
    5da8:	3c 50 cc 4a 	add	#19148,	r12	;#0x4acc

00005dac <.LBE10>:
            _thread = __next_thread();
    5dac:	82 4c c0 4a 	mov	r12,	&0x4ac0	;

00005db0 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    5db0:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00005db4 <.Loc.196.1>:
            if (_thread){
    5db4:	e0 3f       	jmp	$-62     	;abs 0x5d76

00005db6 <.L30>:
            _thread = __next_thread();
    5db6:	82 43 c0 4a 	mov	#0,	&0x4ac0	;r3 As==00

00005dba <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    5dba:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00005dbe <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    5dbe:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00005dc2 <.Loc.206.1>:
            __disable_interrupt();
    5dc2:	32 c2       	dint			
    5dc4:	03 43       	nop			

00005dc6 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    5dc6:	3c 40 c2 4a 	mov	#19138,	r12	;#0x4ac2
    5dca:	b0 12 68 6a 	call	#27240		;#0x6a68

00005dce <.LVL33>:
    if(idx)
    5dce:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5dd0:	c8 23       	jnz	$-110    	;abs 0x5d62

00005dd2 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    5dd2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005dd6 <.Loc.210.1>:
#endif
                __mcu_sleep();
    5dd6:	03 43       	nop			
    5dd8:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    5ddc:	03 43       	nop			

00005dde <.Loc.213.1>:
                __enable_interrupt();
    5dde:	03 43       	nop			
    5de0:	32 d2       	eint			
    5de2:	03 43       	nop			
    5de4:	be 3f       	jmp	$-130    	;abs 0x5d62

00005de6 <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    5de6:	0a 15       	pushm	#1,	r10	;16-bit words

00005de8 <.LCFI0>:
    5de8:	0a 4c       	mov	r12,	r10	;

00005dea <L0^A>:
    switch (thread->state)
    5dea:	1c 4c 02 00 	mov	2(r12),	r12	;

00005dee <.LVL1>:
    5dee:	2c 93       	cmp	#2,	r12	;r3 As==10
    5df0:	35 24       	jz	$+108    	;abs 0x5e5c
    5df2:	2c 92       	cmp	#4,	r12	;r2 As==10
    5df4:	56 24       	jz	$+174    	;abs 0x5ea2
    5df6:	1c 93       	cmp	#1,	r12	;r3 As==01
    5df8:	02 24       	jz	$+6      	;abs 0x5dfe

00005dfa <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    5dfa:	0a 17       	popm	#1,	r10	;16-bit words

00005dfc <.LCFI1>:
    5dfc:	30 41       	ret			

00005dfe <.L17>:
    __port_on(3,6);
    5dfe:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    5e02:	22 02 

00005e04 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    5e04:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00005e08 <.Loc.14.1>:
    5e08:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5e0c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5e0e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005e12 <.Loc.14.1>:
    5e12:	5c 02       	rlam	#1,	r12	;
    5e14:	0c 5a       	add	r10,	r12	;
    5e16:	5f 02       	rlam	#1,	r15	;
    5e18:	0f 5a       	add	r10,	r15	;
    5e1a:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    5e1e:	5e 03       	rrum	#1,	r14	;
    5e20:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    5e24:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    5e28:	b0 12 06 5c 	call	#23558		;#0x5c06

00005e2c <.Loc.17.1>:
    __port_off(3,6);
    5e2c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5e30:	22 02 

00005e32 <.LBE5>:
        __port_on(1, 4);
    5e32:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5e36:	02 02 

00005e38 <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    5e38:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5e3c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5e3e:	c2 4c 4c 51 	mov.b	r12,	&0x514c	;

00005e42 <.Loc.60.1>:
        if(thread->next == thread->entry){
    5e42:	1c 4a 08 00 	mov	8(r10),	r12	;

00005e46 <.Loc.60.1>:
    5e46:	1c 9a 04 00 	cmp	4(r10),	r12	;
    5e4a:	48 24       	jz	$+146    	;abs 0x5edc

00005e4c <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    5e4c:	8c 12       	call	r12		;

00005e4e <.Loc.77.1>:
    5e4e:	8a 4c 06 00 	mov	r12,	6(r10)	;

00005e52 <.L8>:
        thread->state = TASK_PRECOMMIT;
    5e52:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00005e56 <.Loc.83.1>:
            __port_off(1, 4);
    5e56:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5e5a:	02 02 

00005e5c <.L2>:
        __port_on(3,5);
    5e5c:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5e60:	22 02 

00005e62 <.Loc.87.1>:
        __release_event(thread);
    5e62:	0c 4a       	mov	r10,	r12	;
    5e64:	b0 12 00 5b 	call	#23296		;#0x5b00

00005e68 <.Loc.96.1>:
        thread->next = thread->next_temp;
    5e68:	1c 4a 06 00 	mov	6(r10),	r12	;

00005e6c <.Loc.96.1>:
    5e6c:	8a 4c 08 00 	mov	r12,	8(r10)	;

00005e70 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    5e70:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    5e74:	5d e3       	xor.b	#1,	r13	;r3 As==01
    5e76:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

00005e7a <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    5e7a:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005e7e <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    5e7e:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5e82:	0e 00 

00005e84 <.Loc.117.1>:
        __port_off(3,5);
    5e84:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5e88:	22 02 

00005e8a <.Loc.117.1>:
        __port_on(3,5);
    5e8a:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5e8e:	22 02 

00005e90 <.Loc.118.1>:
        if (thread->next == NULL)
    5e90:	0c 93       	cmp	#0,	r12	;r3 As==00
    5e92:	14 24       	jz	$+42     	;abs 0x5ebc

00005e94 <.L9>:
            thread->state = TASK_READY;
    5e94:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005e98 <.L12>:
        __port_off(3,5);
    5e98:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5e9c:	22 02 

00005e9e <.Loc.142.1>:
}
    5e9e:	0a 17       	popm	#1,	r10	;16-bit words

00005ea0 <.LCFI3>:
    5ea0:	30 41       	ret			

00005ea2 <.L3>:
    5ea2:	1c 4a 08 00 	mov	8(r10),	r12	;

00005ea6 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    5ea6:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5eaa:	0e 00 

00005eac <.Loc.117.1>:
        __port_off(3,5);
    5eac:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5eb0:	22 02 

00005eb2 <.Loc.117.1>:
        __port_on(3,5);
    5eb2:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5eb6:	22 02 

00005eb8 <.Loc.118.1>:
        if (thread->next == NULL)
    5eb8:	0c 93       	cmp	#0,	r12	;r3 As==00
    5eba:	ec 23       	jnz	$-38     	;abs 0x5e94

00005ebc <.L19>:
            __disable_interrupt();
    5ebc:	32 c2       	dint			
    5ebe:	03 43       	nop			

00005ec0 <.Loc.125.1>:
            if(!__has_events(thread)){
    5ec0:	0c 4a       	mov	r10,	r12	;
    5ec2:	b0 12 b4 5a 	call	#23220		;#0x5ab4

00005ec6 <.Loc.125.1>:
    5ec6:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5ec8:	12 24       	jz	$+38     	;abs 0x5eee

00005eca <.Loc.131.1>:
                thread->next = thread->entry;
    5eca:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    5ece:	08 00 

00005ed0 <.Loc.133.1>:
                thread->state = TASK_READY;
    5ed0:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005ed4 <.Loc.135.1>:
            __enable_interrupt();
    5ed4:	03 43       	nop			
    5ed6:	32 d2       	eint			
    5ed8:	03 43       	nop			
    5eda:	de 3f       	jmp	$-66     	;abs 0x5e98

00005edc <.L18>:
            isr_event_t *event = __lock_event(thread);
    5edc:	0c 4a       	mov	r10,	r12	;
    5ede:	b0 12 d2 5a 	call	#23250		;#0x5ad2

00005ee2 <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    5ee2:	1d 4a 04 00 	mov	4(r10),	r13	;
    5ee6:	8d 12       	call	r13		;

00005ee8 <.LVL11>:
    5ee8:	8a 4c 06 00 	mov	r12,	6(r10)	;

00005eec <.LBE7>:
    5eec:	b2 3f       	jmp	$-154    	;abs 0x5e52

00005eee <.L20>:
                __stop_thread(thread);
    5eee:	0c 4a       	mov	r10,	r12	;
    5ef0:	b0 12 ac 5c 	call	#23724		;#0x5cac

00005ef4 <.Loc.135.1>:
            __enable_interrupt();
    5ef4:	03 43       	nop			
    5ef6:	32 d2       	eint			
    5ef8:	03 43       	nop			
    5efa:	ce 3f       	jmp	$-98     	;abs 0x5e98

00005efc <__timers_init>:
    5efc:	b0 12 62 6b 	call	#27490		;#0x6b62

00005f00 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    5f00:	30 41       	ret			

00005f02 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    5f02:	30 41       	ret			

00005f04 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    5f04:	0a 15       	pushm	#1,	r10	;16-bit words

00005f06 <.LCFI0>:
    5f06:	4a 4c       	mov.b	r12,	r10	;

00005f08 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    5f08:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    5f0c:	19 24       	jz	$+52     	;abs 0x5f40

00005f0e <.L5>:
    5f0e:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    5f12:	0e 24       	jz	$+30     	;abs 0x5f30

00005f14 <.L6>:
    5f14:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    5f18:	02 24       	jz	$+6      	;abs 0x5f1e

00005f1a <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    5f1a:	0a 17       	popm	#1,	r10	;16-bit words

00005f1c <.LCFI1>:
    5f1c:	30 41       	ret			

00005f1e <.L10>:
            wkup_timing[i].status = NOT_USED;
    5f1e:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

00005f22 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5f22:	4e 43       	clr.b	r14		;
    5f24:	4d 43       	clr.b	r13		;
    5f26:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5f28:	b0 12 24 6c 	call	#27684		;#0x6c24

00005f2c <.Loc.101.1>:
}
    5f2c:	0a 17       	popm	#1,	r10	;16-bit words

00005f2e <.LCFI3>:
    5f2e:	30 41       	ret			

00005f30 <.L9>:
            wkup_timing[i].status = NOT_USED;
    5f30:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

00005f34 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5f34:	4e 43       	clr.b	r14		;
    5f36:	4d 43       	clr.b	r13		;
    5f38:	5c 43       	mov.b	#1,	r12	;r3 As==01
    5f3a:	b0 12 24 6c 	call	#27684		;#0x6c24
    5f3e:	ea 3f       	jmp	$-42     	;abs 0x5f14

00005f40 <.L8>:
            wkup_timing[i].status = NOT_USED;
    5f40:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

00005f44 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5f44:	4e 43       	clr.b	r14		;
    5f46:	4d 43       	clr.b	r13		;
    5f48:	4c 43       	clr.b	r12		;

00005f4a <.LVL9>:
    5f4a:	b0 12 24 6c 	call	#27684		;#0x6c24
    5f4e:	df 3f       	jmp	$-64     	;abs 0x5f0e

00005f50 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    5f50:	2a 15       	pushm	#3,	r10	;16-bit words

00005f52 <.LCFI5>:
    5f52:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005f56 <.LCFI6>:
    5f56:	49 43       	clr.b	r9		;
    5f58:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00005f5c <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5f5c:	0a 49       	mov	r9,	r10	;
    5f5e:	5a 06       	rlam	#2,	r10	;
    5f60:	0a 59       	add	r9,	r10	;
    5f62:	5a 02       	rlam	#1,	r10	;
    5f64:	0a 58       	add	r8,	r10	;
    5f66:	4e 43       	clr.b	r14		;
    5f68:	4d 49       	mov.b	r9,	r13	;
    5f6a:	0c 41       	mov	r1,	r12	;
    5f6c:	b0 12 20 6e 	call	#28192		;#0x6e20
    5f70:	aa 41 00 00 	mov	@r1,	0(r10)	;
    5f74:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    5f78:	02 00 
    5f7a:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    5f7e:	04 00 
    5f80:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    5f84:	06 00 
    5f86:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    5f8a:	08 00 

00005f8c <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f8c:	19 53       	inc	r9		;

00005f8e <.Loc.115.1>:
    5f8e:	39 90 03 00 	cmp	#3,	r9	;
    5f92:	e4 23       	jnz	$-54     	;abs 0x5f5c

00005f94 <.Loc.120.1>:
    }

}
    5f94:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005f98 <.LCFI7>:
    5f98:	28 17       	popm	#3,	r10	;16-bit words

00005f9a <.LCFI8>:
    5f9a:	30 41       	ret			

00005f9c <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    5f9c:	5a 15       	pushm	#6,	r10	;16-bit words

00005f9e <.LCFI9>:

    uint8_t i,first = 1;
    5f9e:	5e 43       	mov.b	#1,	r14	;r3 As==01

00005fa0 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5fa0:	4a 43       	clr.b	r10		;
    5fa2:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00005fa6 <.L40>:
    {

        if (wkup_timing[i].status == USED)
    5fa6:	09 4a       	mov	r10,	r9	;
    5fa8:	05 4a       	mov	r10,	r5	;
    5faa:	55 06       	rlam	#2,	r5	;
    5fac:	0c 45       	mov	r5,	r12	;
    5fae:	0c 5a       	add	r10,	r12	;
    5fb0:	5c 02       	rlam	#1,	r12	;
    5fb2:	0d 4c       	mov	r12,	r13	;
    5fb4:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

00005fb8 <.Loc.130.1>:
    5fb8:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    5fbc:	0c 24       	jz	$+26     	;abs 0x5fd6

00005fbe <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5fbe:	4c 4a       	mov.b	r10,	r12	;
    5fc0:	5c 53       	inc.b	r12		;
    5fc2:	4a 4c       	mov.b	r12,	r10	;

00005fc4 <.LVL19>:
    5fc4:	7c 90 03 00 	cmp.b	#3,	r12	;
    5fc8:	ee 23       	jnz	$-34     	;abs 0x5fa6

00005fca <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    5fca:	0e 93       	cmp	#0,	r14	;r3 As==00
    5fcc:	54 24       	jz	$+170    	;abs 0x6076

00005fce <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    5fce:	b0 12 7e 6a 	call	#27262		;#0x6a7e

00005fd2 <.LVL20>:


}
    5fd2:	55 17       	popm	#6,	r10	;16-bit words

00005fd4 <.LCFI10>:
    5fd4:	30 41       	ret			

00005fd6 <.L84>:
            if (first)
    5fd6:	16 4d 04 00 	mov	4(r13),	r6	;
    5fda:	17 4d 06 00 	mov	6(r13),	r7	;

00005fde <.Loc.133.1>:
    5fde:	0e 93       	cmp	#0,	r14	;r3 As==00
    5fe0:	05 24       	jz	$+12     	;abs 0x5fec

00005fe2 <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    5fe2:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

00005fe6 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    5fe6:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    5fea:	5c 1c 

00005fec <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    5fec:	b0 12 20 6b 	call	#27424		;#0x6b20

00005ff0 <.Loc.141.1>:
    5ff0:	0e 46       	mov	r6,	r14	;
    5ff2:	0f 47       	mov	r7,	r15	;
    5ff4:	0e 8c       	sub	r12,	r14	;
    5ff6:	0f 7d       	subc	r13,	r15	;

00005ff8 <.Loc.141.1>:
    5ff8:	05 5a       	add	r10,	r5	;
    5ffa:	55 02       	rlam	#1,	r5	;
    5ffc:	05 58       	add	r8,	r5	;
    5ffe:	85 4e 04 00 	mov	r14,	4(r5)	;
    6002:	85 4f 06 00 	mov	r15,	6(r5)	;

00006006 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    6006:	4d 43       	clr.b	r13		;
    6008:	4c 4a       	mov.b	r10,	r12	;
    600a:	b0 12 84 6b 	call	#27524		;#0x6b84

0000600e <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    600e:	1c 45 04 00 	mov	4(r5),	r12	;
    6012:	1d 45 06 00 	mov	6(r5),	r13	;
    6016:	4b 4a       	mov.b	r10,	r11	;
    6018:	5b 53       	inc.b	r11		;
    601a:	4a 4b       	mov.b	r11,	r10	;

0000601c <.Loc.144.1>:
    601c:	07 4d       	mov	r13,	r7	;
    601e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6020:	3b 38       	jl	$+120    	;abs 0x6098

00006022 <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    6022:	0e 4c       	mov	r12,	r14	;
    6024:	0e dd       	bis	r13,	r14	;
    6026:	0e 93       	cmp	#0,	r14	;r3 As==00
    6028:	af 24       	jz	$+352    	;abs 0x6188

0000602a <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    602a:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    602e:	0e 46       	mov	r6,	r14	;
    6030:	0f 43       	clr	r15		;

00006032 <.Loc.155.1>:
    6032:	0d 93       	cmp	#0,	r13	;r3 As==00
    6034:	18 34       	jge	$+50     	;abs 0x6066

00006036 <.L50>:
    6036:	0e 49       	mov	r9,	r14	;
    6038:	5e 06       	rlam	#2,	r14	;
    603a:	09 5e       	add	r14,	r9	;
    603c:	59 02       	rlam	#1,	r9	;
    603e:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006042 <.L37>:
                    min_wkup = wkup_timing[i].data;
    6042:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

00006046 <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    6046:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000604a <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    604a:	7b 90 03 00 	cmp.b	#3,	r11	;
    604e:	15 24       	jz	$+44     	;abs 0x607a

00006050 <.L74>:
        if (wkup_timing[i].status == USED)
    6050:	09 4a       	mov	r10,	r9	;
    6052:	05 4a       	mov	r10,	r5	;
    6054:	55 06       	rlam	#2,	r5	;
    6056:	0c 45       	mov	r5,	r12	;
    6058:	0c 5a       	add	r10,	r12	;
    605a:	5c 02       	rlam	#1,	r12	;

0000605c <.Loc.130.1>:
    605c:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6060:	41 24       	jz	$+132    	;abs 0x60e4

00006062 <.L91>:
    6062:	4e 43       	clr.b	r14		;
    6064:	ac 3f       	jmp	$-166    	;abs 0x5fbe

00006066 <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6066:	0d 93       	cmp	#0,	r13	;r3 As==00
    6068:	62 24       	jz	$+198    	;abs 0x612e

0000606a <.L35>:
    606a:	07 4c       	mov	r12,	r7	;
    606c:	0c 9e       	cmp	r14,	r12	;
    606e:	79 24       	jz	$+244    	;abs 0x6162

00006070 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6070:	7b 90 03 00 	cmp.b	#3,	r11	;
    6074:	ed 23       	jnz	$-36     	;abs 0x6050

00006076 <.L72>:
    6076:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

0000607a <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    607a:	4d 4e       	mov.b	r14,	r13	;
    607c:	4c 43       	clr.b	r12		;
    607e:	b0 12 6c 6c 	call	#27756		;#0x6c6c

00006082 <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    6082:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    6086:	4c 43       	clr.b	r12		;
    6088:	b0 12 7a 6c 	call	#27770		;#0x6c7a

0000608c <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    608c:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    6090:	b0 12 92 6a 	call	#27282		;#0x6a92

00006094 <.Loc.177.1>:
}
    6094:	55 17       	popm	#6,	r10	;16-bit words

00006096 <.LCFI12>:
    6096:	30 41       	ret			

00006098 <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    6098:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    609c:	06 43       	clr	r6		;
    609e:	06 8e       	sub	r14,	r6	;
    60a0:	0e 46       	mov	r6,	r14	;
    60a2:	0f 46       	mov	r6,	r15	;
    60a4:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000060a8 <.Loc.144.1>:
    60a8:	05 4f       	mov	r15,	r5	;
    60aa:	0f 9d       	cmp	r13,	r15	;
    60ac:	25 38       	jl	$+76     	;abs 0x60f8

000060ae <.Loc.144.1>:
    60ae:	0d 9f       	cmp	r15,	r13	;
    60b0:	21 24       	jz	$+68     	;abs 0x60f4

000060b2 <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    60b2:	07 4d       	mov	r13,	r7	;
    60b4:	0d 9f       	cmp	r15,	r13	;
    60b6:	04 38       	jl	$+10     	;abs 0x60c0
    60b8:	0f 9d       	cmp	r13,	r15	;
    60ba:	da 23       	jnz	$-74     	;abs 0x6070
    60bc:	0c 96       	cmp	r6,	r12	;
    60be:	d8 2f       	jc	$-78     	;abs 0x6070

000060c0 <.L30>:
    60c0:	0c 49       	mov	r9,	r12	;
    60c2:	5c 06       	rlam	#2,	r12	;
    60c4:	09 5c       	add	r12,	r9	;
    60c6:	59 02       	rlam	#1,	r9	;
    60c8:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

000060cc <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    60cc:	7b 90 03 00 	cmp.b	#3,	r11	;
    60d0:	d2 27       	jz	$-90     	;abs 0x6076

000060d2 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    60d2:	09 4a       	mov	r10,	r9	;
    60d4:	05 4a       	mov	r10,	r5	;
    60d6:	55 06       	rlam	#2,	r5	;
    60d8:	0c 45       	mov	r5,	r12	;
    60da:	0c 5a       	add	r10,	r12	;
    60dc:	5c 02       	rlam	#1,	r12	;

000060de <.Loc.130.1>:
    60de:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    60e2:	bf 23       	jnz	$-128    	;abs 0x6062

000060e4 <.L27>:
    60e4:	0c 45       	mov	r5,	r12	;
    60e6:	0c 5a       	add	r10,	r12	;
    60e8:	5c 02       	rlam	#1,	r12	;
    60ea:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    60ee:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    60f2:	7c 3f       	jmp	$-262    	;abs 0x5fec

000060f4 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    60f4:	06 9c       	cmp	r12,	r6	;
    60f6:	dd 2f       	jc	$-68     	;abs 0x60b2

000060f8 <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    60f8:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    60fc:	06 4e       	mov	r14,	r6	;
    60fe:	07 43       	clr	r7		;

00006100 <.Loc.146.1>:
    6100:	4e 43       	clr.b	r14		;
    6102:	4f 43       	clr.b	r15		;
    6104:	0e 8c       	sub	r12,	r14	;
    6106:	0f 7d       	subc	r13,	r15	;

00006108 <.Loc.146.1>:
    6108:	05 4f       	mov	r15,	r5	;
    610a:	0f 93       	cmp	#0,	r15	;r3 As==00
    610c:	14 34       	jge	$+42     	;abs 0x6136

0000610e <.L22>:
    610e:	0e 49       	mov	r9,	r14	;
    6110:	5e 06       	rlam	#2,	r14	;
    6112:	09 5e       	add	r14,	r9	;
    6114:	59 02       	rlam	#1,	r9	;
    6116:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000611a <.L28>:
                    min_wkup = -wkup_timing[i].data;
    611a:	4f 43       	clr.b	r15		;
    611c:	0f 8c       	sub	r12,	r15	;
    611e:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

00006122 <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    6122:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

00006126 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6126:	7b 90 03 00 	cmp.b	#3,	r11	;
    612a:	92 23       	jnz	$-218    	;abs 0x6050
    612c:	a6 3f       	jmp	$-178    	;abs 0x607a

0000612e <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    612e:	07 4c       	mov	r12,	r7	;
    6130:	0c 9e       	cmp	r14,	r12	;
    6132:	9b 2f       	jc	$-200    	;abs 0x606a
    6134:	80 3f       	jmp	$-254    	;abs 0x6036

00006136 <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6136:	0f 93       	cmp	#0,	r15	;r3 As==00
    6138:	03 20       	jnz	$+8      	;abs 0x6140
    613a:	05 4e       	mov	r14,	r5	;
    613c:	0e 96       	cmp	r6,	r14	;
    613e:	e7 2b       	jnc	$-48     	;abs 0x610e

00006140 <.L47>:
    6140:	06 9e       	cmp	r14,	r6	;
    6142:	96 23       	jnz	$-210    	;abs 0x6070
    6144:	0f 93       	cmp	#0,	r15	;r3 As==00
    6146:	94 23       	jnz	$-214    	;abs 0x6070

00006148 <.Loc.146.1>:
    6148:	0e 49       	mov	r9,	r14	;
    614a:	5e 06       	rlam	#2,	r14	;
    614c:	09 5e       	add	r14,	r9	;
    614e:	59 02       	rlam	#1,	r9	;
    6150:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006154 <.Loc.146.1>:
    6154:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

00006158 <.Loc.146.1>:
    6158:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    615c:	36 1c 
    615e:	dd 2b       	jnc	$-68     	;abs 0x611a
    6160:	0e 3c       	jmp	$+30     	;abs 0x617e

00006162 <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6162:	0d 9f       	cmp	r15,	r13	;
    6164:	85 23       	jnz	$-244    	;abs 0x6070

00006166 <.Loc.155.1>:
    6166:	0e 49       	mov	r9,	r14	;
    6168:	5e 06       	rlam	#2,	r14	;
    616a:	09 5e       	add	r14,	r9	;
    616c:	59 02       	rlam	#1,	r9	;
    616e:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006172 <.Loc.155.1>:
    6172:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

00006176 <.Loc.155.1>:
    6176:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    617a:	36 1c 
    617c:	62 2b       	jnc	$-314    	;abs 0x6042

0000617e <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    617e:	7b 90 03 00 	cmp.b	#3,	r11	;
    6182:	66 23       	jnz	$-306    	;abs 0x6050

00006184 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    6184:	0e 4f       	mov	r15,	r14	;

00006186 <.Loc.164.1>:
    if (!first)
    6186:	79 3f       	jmp	$-268    	;abs 0x607a

00006188 <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6188:	7b 90 03 00 	cmp.b	#3,	r11	;
    618c:	74 27       	jz	$-278    	;abs 0x6076

0000618e <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    618e:	09 4a       	mov	r10,	r9	;
    6190:	05 4a       	mov	r10,	r5	;
    6192:	55 06       	rlam	#2,	r5	;
    6194:	0c 45       	mov	r5,	r12	;
    6196:	0c 5a       	add	r10,	r12	;
    6198:	5c 02       	rlam	#1,	r12	;

0000619a <.Loc.130.1>:
    619a:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    619e:	0f 23       	jnz	$-480    	;abs 0x5fbe
    61a0:	a1 3f       	jmp	$-188    	;abs 0x60e4

000061a2 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    61a2:	4a 15       	pushm	#5,	r10	;16-bit words

000061a4 <.LCFI14>:
    61a4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000061a8 <.LCFI15>:
    61a8:	47 4c       	mov.b	r12,	r7	;
    61aa:	09 4d       	mov	r13,	r9	;

000061ac <.LBB12>:
    61ac:	46 43       	clr.b	r6		;
    61ae:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

000061b2 <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    61b2:	0a 46       	mov	r6,	r10	;
    61b4:	5a 06       	rlam	#2,	r10	;
    61b6:	0a 56       	add	r6,	r10	;
    61b8:	5a 02       	rlam	#1,	r10	;
    61ba:	0a 58       	add	r8,	r10	;
    61bc:	4e 43       	clr.b	r14		;
    61be:	4d 46       	mov.b	r6,	r13	;
    61c0:	0c 41       	mov	r1,	r12	;
    61c2:	b0 12 20 6e 	call	#28192		;#0x6e20
    61c6:	aa 41 00 00 	mov	@r1,	0(r10)	;
    61ca:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    61ce:	02 00 
    61d0:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    61d4:	04 00 
    61d6:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    61da:	06 00 
    61dc:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    61e0:	08 00 

000061e2 <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    61e2:	16 53       	inc	r6		;

000061e4 <.Loc.115.1>:
    61e4:	36 90 03 00 	cmp	#3,	r6	;
    61e8:	e4 23       	jnz	$-54     	;abs 0x61b2

000061ea <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    61ea:	b0 12 7e 6a 	call	#27262		;#0x6a7e

000061ee <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    61ee:	0e 49       	mov	r9,	r14	;
    61f0:	0f 43       	clr	r15		;

000061f2 <.Loc.194.1>:
    61f2:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    61f6:	22 24       	jz	$+70     	;abs 0x623c

000061f8 <.Loc.192.1>:
    61f8:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    61fc:	49 24       	jz	$+148    	;abs 0x6290

000061fe <.Loc.192.1>:
    61fe:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    6202:	49 24       	jz	$+148    	;abs 0x6296

00006204 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    6204:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    6208:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

0000620c <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    620c:	4d 43       	clr.b	r13		;
    620e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6210:	b0 12 84 6b 	call	#27524		;#0x6b84

00006214 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    6214:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

00006218 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    6218:	4e 47       	mov.b	r7,	r14	;
    621a:	4d 43       	clr.b	r13		;
    621c:	7c 40 03 00 	mov.b	#3,	r12	;
    6220:	b0 12 d8 6b 	call	#27608		;#0x6bd8

00006224 <.Loc.219.1>:
        refresh_wkup_timers();
    6224:	b0 12 9c 5f 	call	#24476		;#0x5f9c

00006228 <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    6228:	4c 43       	clr.b	r12		;
    622a:	b0 12 88 6c 	call	#27784		;#0x6c88

0000622e <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    622e:	4c 43       	clr.b	r12		;
    6230:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006234 <.Loc.224.1>:
}
    6234:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006238 <.LCFI16>:
    6238:	46 17       	popm	#5,	r10	;16-bit words

0000623a <.LCFI17>:
    623a:	30 41       	ret			

0000623c <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    623c:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

00006240 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6240:	0d 4a       	mov	r10,	r13	;

00006242 <.L95>:
            wkup_timing[i].data = ticks;
    6242:	0c 4d       	mov	r13,	r12	;
    6244:	5c 06       	rlam	#2,	r12	;
    6246:	0c 5d       	add	r13,	r12	;
    6248:	5c 02       	rlam	#1,	r12	;
    624a:	08 5c       	add	r12,	r8	;
    624c:	88 4e 04 00 	mov	r14,	4(r8)	;
    6250:	88 4f 06 00 	mov	r15,	6(r8)	;

00006254 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    6254:	4d 43       	clr.b	r13		;
    6256:	4c 4a       	mov.b	r10,	r12	;
    6258:	b0 12 84 6b 	call	#27524		;#0x6b84

0000625c <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    625c:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00006260 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    6260:	4e 47       	mov.b	r7,	r14	;
    6262:	4d 43       	clr.b	r13		;
    6264:	4c 4a       	mov.b	r10,	r12	;
    6266:	b0 12 d8 6b 	call	#27608		;#0x6bd8

0000626a <.Loc.200.1>:
            wkup_timing[i].status = USED;
    626a:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

0000626e <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    626e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6270:	4d 43       	clr.b	r13		;
    6272:	4c 4a       	mov.b	r10,	r12	;
    6274:	b0 12 24 6c 	call	#27684		;#0x6c24

00006278 <.Loc.202.1>:
        refresh_wkup_timers();
    6278:	b0 12 9c 5f 	call	#24476		;#0x5f9c

0000627c <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    627c:	4c 43       	clr.b	r12		;
    627e:	b0 12 88 6c 	call	#27784		;#0x6c88

00006282 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    6282:	4c 43       	clr.b	r12		;
    6284:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006288 <.Loc.224.1>:
}
    6288:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000628c <.LCFI19>:
    628c:	46 17       	popm	#5,	r10	;16-bit words

0000628e <.LCFI20>:
    628e:	30 41       	ret			

00006290 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6290:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006292 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6292:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6294:	d6 3f       	jmp	$-82     	;abs 0x6242

00006296 <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6296:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006298 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6298:	6d 43       	mov.b	#2,	r13	;r3 As==10
    629a:	d3 3f       	jmp	$-88     	;abs 0x6242

0000629c <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    629c:	4d 4c       	mov.b	r12,	r13	;

0000629e <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    629e:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    62a2:	14 24       	jz	$+42     	;abs 0x62cc

000062a4 <.Loc.237.1>:
    62a4:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    62a8:	14 24       	jz	$+42     	;abs 0x62d2

000062aa <.Loc.237.1>:
    62aa:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    62ae:	01 24       	jz	$+4      	;abs 0x62b2

000062b0 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    62b0:	30 41       	ret			

000062b2 <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62b2:	6c 43       	mov.b	#2,	r12	;r3 As==10

000062b4 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    62b4:	6e 43       	mov.b	#2,	r14	;r3 As==10

000062b6 <.L102>:
            xpr_timing[i].status = NOT_USED;
    62b6:	0d 4e       	mov	r14,	r13	;

000062b8 <.LVL71>:
    62b8:	5d 06       	rlam	#2,	r13	;
    62ba:	0d 5e       	add	r14,	r13	;
    62bc:	5d 02       	rlam	#1,	r13	;
    62be:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

000062c2 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    62c2:	4e 43       	clr.b	r14		;
    62c4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    62c6:	b0 12 24 6c 	call	#27684		;#0x6c24

000062ca <.Loc.242.1>:
}
    62ca:	30 41       	ret			

000062cc <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62cc:	4c 43       	clr.b	r12		;

000062ce <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    62ce:	4e 43       	clr.b	r14		;
    62d0:	f2 3f       	jmp	$-26     	;abs 0x62b6

000062d2 <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    62d2:	5c 43       	mov.b	#1,	r12	;r3 As==01

000062d4 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    62d4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    62d6:	ef 3f       	jmp	$-32     	;abs 0x62b6

000062d8 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    62d8:	2a 15       	pushm	#3,	r10	;16-bit words

000062da <.LCFI22>:
    62da:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000062de <.LCFI23>:
    62de:	49 43       	clr.b	r9		;
    62e0:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

000062e4 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    62e4:	0a 49       	mov	r9,	r10	;
    62e6:	5a 06       	rlam	#2,	r10	;
    62e8:	0a 59       	add	r9,	r10	;
    62ea:	5a 02       	rlam	#1,	r10	;
    62ec:	0a 58       	add	r8,	r10	;
    62ee:	6e 43       	mov.b	#2,	r14	;r3 As==10
    62f0:	4d 49       	mov.b	r9,	r13	;
    62f2:	0c 41       	mov	r1,	r12	;
    62f4:	b0 12 20 6e 	call	#28192		;#0x6e20
    62f8:	aa 41 00 00 	mov	@r1,	0(r10)	;
    62fc:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6300:	02 00 
    6302:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6306:	04 00 
    6308:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    630c:	06 00 
    630e:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6312:	08 00 

00006314 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6314:	19 53       	inc	r9		;

00006316 <.Loc.252.1>:
    6316:	39 90 03 00 	cmp	#3,	r9	;
    631a:	e4 23       	jnz	$-54     	;abs 0x62e4

0000631c <.Loc.257.1>:
    }

}
    631c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006320 <.LCFI24>:
    6320:	28 17       	popm	#3,	r10	;16-bit words

00006322 <.LCFI25>:
    6322:	30 41       	ret			

00006324 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    6324:	4a 15       	pushm	#5,	r10	;16-bit words

00006326 <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    6326:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    632a:	62 24       	jz	$+198    	;abs 0x63f0

0000632c <.Loc.265.1>:
    632c:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6330:	07 24       	jz	$+16     	;abs 0x6340

00006332 <.Loc.265.1>:
    6332:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    6336:	15 25       	jz	$+556    	;abs 0x6562

00006338 <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    6338:	b0 12 be 6a 	call	#27326		;#0x6abe

0000633c <.Loc.313.1>:

}
    633c:	46 17       	popm	#5,	r10	;16-bit words

0000633e <.LCFI27>:
    633e:	30 41       	ret			

00006340 <.L160>:
            if (first)
    6340:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6344:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00006348 <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    6348:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000634c <.LVL89>:
    634c:	08 46       	mov	r6,	r8	;
    634e:	09 47       	mov	r7,	r9	;

00006350 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    6350:	b0 12 20 6b 	call	#27424		;#0x6b20

00006354 <.Loc.278.1>:
    6354:	0e 46       	mov	r6,	r14	;
    6356:	0f 47       	mov	r7,	r15	;
    6358:	0e 8c       	sub	r12,	r14	;
    635a:	0f 7d       	subc	r13,	r15	;

0000635c <.Loc.278.1>:
    635c:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    6360:	82 4f 26 1c 	mov	r15,	&0x1c26	;

00006364 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6364:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6366:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6368:	b0 12 84 6b 	call	#27524		;#0x6b84

0000636c <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    636c:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    6370:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

00006374 <.Loc.281.1>:
    6374:	4e 43       	clr.b	r14		;
    6376:	0e 9c       	cmp	r12,	r14	;
    6378:	a2 34       	jge	$+326    	;abs 0x64be

0000637a <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    637a:	0c 99       	cmp	r9,	r12	;
    637c:	04 38       	jl	$+10     	;abs 0x6386

0000637e <.L170>:
    637e:	09 9c       	cmp	r12,	r9	;
    6380:	e5 20       	jnz	$+460    	;abs 0x654c
    6382:	0d 98       	cmp	r8,	r13	;
    6384:	e3 2c       	jc	$+456    	;abs 0x654c

00006386 <.L152>:
    6386:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000638a <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    638a:	08 4d       	mov	r13,	r8	;
    638c:	09 4c       	mov	r12,	r9	;

0000638e <.L117>:
        if (xpr_timing[i].status == USED)
    638e:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    6392:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

00006396 <.Loc.268.1>:
    6396:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    639a:	1d 20       	jnz	$+60     	;abs 0x63d6

0000639c <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    639c:	b0 12 20 6b 	call	#27424		;#0x6b20

000063a0 <.Loc.278.1>:
    63a0:	0e 46       	mov	r6,	r14	;
    63a2:	0f 47       	mov	r7,	r15	;
    63a4:	0e 8c       	sub	r12,	r14	;
    63a6:	0f 7d       	subc	r13,	r15	;

000063a8 <.Loc.278.1>:
    63a8:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    63ac:	82 4f 30 1c 	mov	r15,	&0x1c30	;

000063b0 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    63b0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    63b2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63b4:	b0 12 84 6b 	call	#27524		;#0x6b84

000063b8 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    63b8:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    63bc:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

000063c0 <.Loc.281.1>:
    63c0:	4e 43       	clr.b	r14		;
    63c2:	0e 9c       	cmp	r12,	r14	;
    63c4:	4c 34       	jge	$+154    	;abs 0x645e

000063c6 <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    63c6:	0c 99       	cmp	r9,	r12	;
    63c8:	76 38       	jl	$+238    	;abs 0x64b6

000063ca <.L168>:
    63ca:	09 9c       	cmp	r12,	r9	;
    63cc:	02 20       	jnz	$+6      	;abs 0x63d2
    63ce:	0d 98       	cmp	r8,	r13	;
    63d0:	72 28       	jnc	$+230    	;abs 0x64b6

000063d2 <.L139>:
    63d2:	08 9d       	cmp	r13,	r8	;
    63d4:	d8 24       	jz	$+434    	;abs 0x6586

000063d6 <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    63d6:	4d 4a       	mov.b	r10,	r13	;
    63d8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63da:	b0 12 6c 6c 	call	#27756		;#0x6c6c

000063de <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    63de:	0d 48       	mov	r8,	r13	;
    63e0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    63e2:	b0 12 7a 6c 	call	#27770		;#0x6c7a

000063e6 <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    63e6:	0c 48       	mov	r8,	r12	;
    63e8:	b0 12 a8 6a 	call	#27304		;#0x6aa8

000063ec <.Loc.313.1>:
}
    63ec:	46 17       	popm	#5,	r10	;16-bit words

000063ee <.LCFI29>:
    63ee:	30 41       	ret			

000063f0 <.L159>:
            if (first)
    63f0:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    63f4:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

000063f8 <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    63f8:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

000063fc <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    63fc:	b0 12 20 6b 	call	#27424		;#0x6b20

00006400 <.LVL105>:
    6400:	0e 48       	mov	r8,	r14	;
    6402:	0f 49       	mov	r9,	r15	;
    6404:	0e 8c       	sub	r12,	r14	;
    6406:	0f 7d       	subc	r13,	r15	;

00006408 <.Loc.278.1>:
    6408:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    640c:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

00006410 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6410:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6412:	4c 43       	clr.b	r12		;
    6414:	b0 12 84 6b 	call	#27524		;#0x6b84

00006418 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    6418:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    641c:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00006420 <.Loc.281.1>:
    6420:	4e 43       	clr.b	r14		;
    6422:	0e 9c       	cmp	r12,	r14	;
    6424:	74 34       	jge	$+234    	;abs 0x650e

00006426 <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6426:	0c 99       	cmp	r9,	r12	;
    6428:	0c 34       	jge	$+26     	;abs 0x6442

0000642a <.L151>:
    642a:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000642e <.L119>:
        if (xpr_timing[i].status == USED)
    642e:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6432:	ab 23       	jnz	$-168    	;abs 0x638a

00006434 <.Loc.271.1>:
            if (first)
    6434:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6438:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000643c <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    643c:	08 4d       	mov	r13,	r8	;
    643e:	09 4c       	mov	r12,	r9	;
    6440:	87 3f       	jmp	$-240    	;abs 0x6350

00006442 <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6442:	09 9c       	cmp	r12,	r9	;
    6444:	02 20       	jnz	$+6      	;abs 0x644a
    6446:	0d 98       	cmp	r8,	r13	;
    6448:	f0 2b       	jnc	$-30     	;abs 0x642a

0000644a <.L114>:
    644a:	0d 98       	cmp	r8,	r13	;
    644c:	93 24       	jz	$+296    	;abs 0x6574

0000644e <.L118>:
        if (xpr_timing[i].status == USED)
    644e:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6452:	9d 23       	jnz	$-196    	;abs 0x638e

00006454 <.Loc.271.1>:
            if (first)
    6454:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6458:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    645c:	79 3f       	jmp	$-268    	;abs 0x6350

0000645e <.L162>:
            if (xpr_timing[i].data <= 0)
    645e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6460:	02 20       	jnz	$+6      	;abs 0x6466
    6462:	0d 93       	cmp	#0,	r13	;r3 As==00
    6464:	b0 23       	jnz	$-158    	;abs 0x63c6

00006466 <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6466:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    646a:	b0 12 1c 5d 	call	#23836		;#0x5d1c
    646e:	b0 12 c2 5c 	call	#23746		;#0x5cc2

00006472 <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    6472:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

00006476 <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    6476:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    647a:	18 1c 
    647c:	8e 24       	jz	$+286    	;abs 0x659a

0000647e <.Loc.237.1>:
    647e:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    6482:	91 24       	jz	$+292    	;abs 0x65a6

00006484 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6484:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006486 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6486:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006488 <.L136>:
            xpr_timing[i].status = NOT_USED;
    6488:	0d 4e       	mov	r14,	r13	;
    648a:	5d 06       	rlam	#2,	r13	;
    648c:	0d 5e       	add	r14,	r13	;
    648e:	5d 02       	rlam	#1,	r13	;
    6490:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006494 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6494:	4e 43       	clr.b	r14		;
    6496:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6498:	b0 12 24 6c 	call	#27684		;#0x6c24

0000649c <.LBE18>:
            if (xpr_timing[i].data > 0)
    649c:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    64a0:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

000064a4 <.Loc.292.1>:
    64a4:	4e 43       	clr.b	r14		;
    64a6:	0e 9c       	cmp	r12,	r14	;
    64a8:	8e 3b       	jl	$-226    	;abs 0x63c6
    64aa:	0c 93       	cmp	#0,	r12	;r3 As==00
    64ac:	94 23       	jnz	$-214    	;abs 0x63d6
    64ae:	0d 93       	cmp	#0,	r13	;r3 As==00
    64b0:	92 27       	jz	$-218    	;abs 0x63d6

000064b2 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    64b2:	0c 99       	cmp	r9,	r12	;
    64b4:	8a 37       	jge	$-234    	;abs 0x63ca

000064b6 <.L154>:
    64b6:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

000064ba <.LVL117>:
    if (!first)
    64ba:	08 4d       	mov	r13,	r8	;
    64bc:	8c 3f       	jmp	$-230    	;abs 0x63d6

000064be <.L161>:
            if (xpr_timing[i].data <= 0)
    64be:	0c 93       	cmp	#0,	r12	;r3 As==00
    64c0:	02 20       	jnz	$+6      	;abs 0x64c6
    64c2:	0d 93       	cmp	#0,	r13	;r3 As==00
    64c4:	5a 23       	jnz	$-330    	;abs 0x637a

000064c6 <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    64c6:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    64ca:	b0 12 1c 5d 	call	#23836		;#0x5d1c
    64ce:	b0 12 c2 5c 	call	#23746		;#0x5cc2

000064d2 <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    64d2:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    64d6:	22 1c 
    64d8:	63 24       	jz	$+200    	;abs 0x65a0

000064da <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    64da:	5c 43       	mov.b	#1,	r12	;r3 As==01

000064dc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    64dc:	5e 43       	mov.b	#1,	r14	;r3 As==01

000064de <.L131>:
            xpr_timing[i].status = NOT_USED;
    64de:	0d 4e       	mov	r14,	r13	;
    64e0:	5d 06       	rlam	#2,	r13	;
    64e2:	0d 5e       	add	r14,	r13	;
    64e4:	5d 02       	rlam	#1,	r13	;
    64e6:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

000064ea <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    64ea:	4e 43       	clr.b	r14		;
    64ec:	6d 43       	mov.b	#2,	r13	;r3 As==10
    64ee:	b0 12 24 6c 	call	#27684		;#0x6c24

000064f2 <.LVL122>:
            if (xpr_timing[i].data > 0)
    64f2:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    64f6:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

000064fa <.Loc.292.1>:
    64fa:	4e 43       	clr.b	r14		;
    64fc:	0e 9c       	cmp	r12,	r14	;
    64fe:	3d 3b       	jl	$-388    	;abs 0x637a
    6500:	0c 93       	cmp	#0,	r12	;r3 As==00
    6502:	45 23       	jnz	$-372    	;abs 0x638e
    6504:	0d 93       	cmp	#0,	r13	;r3 As==00
    6506:	43 27       	jz	$-376    	;abs 0x638e

00006508 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6508:	0c 99       	cmp	r9,	r12	;
    650a:	3d 3b       	jl	$-388    	;abs 0x6386
    650c:	38 3f       	jmp	$-398    	;abs 0x637e

0000650e <.L164>:
            if (xpr_timing[i].data <= 0)
    650e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6510:	02 20       	jnz	$+6      	;abs 0x6516
    6512:	0d 93       	cmp	#0,	r13	;r3 As==00
    6514:	88 23       	jnz	$-238    	;abs 0x6426

00006516 <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6516:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    651a:	b0 12 1c 5d 	call	#23836		;#0x5d1c
    651e:	b0 12 c2 5c 	call	#23746		;#0x5cc2

00006522 <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    6522:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

00006526 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6526:	4e 43       	clr.b	r14		;
    6528:	6d 43       	mov.b	#2,	r13	;r3 As==10
    652a:	4c 43       	clr.b	r12		;
    652c:	b0 12 24 6c 	call	#27684		;#0x6c24

00006530 <.LVL126>:
            if (xpr_timing[i].data > 0)
    6530:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    6534:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00006538 <.Loc.292.1>:
    6538:	4e 43       	clr.b	r14		;
    653a:	0e 9c       	cmp	r12,	r14	;
    653c:	74 3b       	jl	$-278    	;abs 0x6426
    653e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6540:	86 23       	jnz	$-242    	;abs 0x644e
    6542:	0d 93       	cmp	#0,	r13	;r3 As==00
    6544:	84 27       	jz	$-246    	;abs 0x644e

00006546 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6546:	0c 99       	cmp	r9,	r12	;
    6548:	70 3b       	jl	$-286    	;abs 0x642a
    654a:	7b 3f       	jmp	$-264    	;abs 0x6442

0000654c <.L128>:
    654c:	08 9d       	cmp	r13,	r8	;
    654e:	1f 23       	jnz	$-448    	;abs 0x638e
    6550:	09 9c       	cmp	r12,	r9	;
    6552:	1d 23       	jnz	$-452    	;abs 0x638e

00006554 <.Loc.294.1>:
    6554:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

00006558 <.Loc.294.1>:
    6558:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    655c:	18 2f       	jc	$-462    	;abs 0x638e
    655e:	0a 4e       	mov	r14,	r10	;

00006560 <.LVL128>:
    6560:	14 3f       	jmp	$-470    	;abs 0x638a

00006562 <.L143>:
            if (first)
    6562:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    6566:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000656a <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    656a:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

0000656e <.LVL131>:
    656e:	08 46       	mov	r6,	r8	;
    6570:	09 47       	mov	r7,	r9	;
    6572:	14 3f       	jmp	$-470    	;abs 0x639c

00006574 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6574:	0c 99       	cmp	r9,	r12	;
    6576:	6b 23       	jnz	$-296    	;abs 0x644e

00006578 <.Loc.294.1>:
    6578:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

0000657c <.Loc.294.1>:
    657c:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    6580:	66 2f       	jc	$-306    	;abs 0x644e
    6582:	0a 4e       	mov	r14,	r10	;

00006584 <.LVL133>:
    6584:	54 3f       	jmp	$-342    	;abs 0x642e

00006586 <.L163>:
    6586:	09 9c       	cmp	r12,	r9	;
    6588:	26 23       	jnz	$-434    	;abs 0x63d6

0000658a <.Loc.294.1>:
    658a:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

0000658e <.Loc.294.1>:
    658e:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    6592:	21 2f       	jc	$-444    	;abs 0x63d6
    6594:	0a 4c       	mov	r12,	r10	;

00006596 <.LVL135>:
    if (!first)
    6596:	08 4d       	mov	r13,	r8	;
    6598:	1e 3f       	jmp	$-450    	;abs 0x63d6

0000659a <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    659a:	4c 43       	clr.b	r12		;

0000659c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    659c:	4e 43       	clr.b	r14		;
    659e:	74 3f       	jmp	$-278    	;abs 0x6488

000065a0 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    65a0:	4c 43       	clr.b	r12		;

000065a2 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    65a2:	4e 43       	clr.b	r14		;
    65a4:	9c 3f       	jmp	$-198    	;abs 0x64de

000065a6 <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    65a6:	5c 43       	mov.b	#1,	r12	;r3 As==01

000065a8 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    65a8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    65aa:	6e 3f       	jmp	$-290    	;abs 0x6488

000065ac <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    65ac:	5a 15       	pushm	#6,	r10	;16-bit words

000065ae <.LCFI31>:
    65ae:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000065b2 <.LCFI32>:
    65b2:	47 4c       	mov.b	r12,	r7	;
    65b4:	08 4d       	mov	r13,	r8	;
    65b6:	06 4e       	mov	r14,	r6	;

000065b8 <.LBB26>:
    65b8:	45 43       	clr.b	r5		;
    65ba:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

000065be <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    65be:	0a 45       	mov	r5,	r10	;
    65c0:	5a 06       	rlam	#2,	r10	;
    65c2:	0a 55       	add	r5,	r10	;
    65c4:	5a 02       	rlam	#1,	r10	;
    65c6:	0a 59       	add	r9,	r10	;
    65c8:	6e 43       	mov.b	#2,	r14	;r3 As==10
    65ca:	4d 45       	mov.b	r5,	r13	;
    65cc:	0c 41       	mov	r1,	r12	;
    65ce:	b0 12 20 6e 	call	#28192		;#0x6e20
    65d2:	aa 41 00 00 	mov	@r1,	0(r10)	;
    65d6:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    65da:	02 00 
    65dc:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    65e0:	04 00 
    65e2:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    65e6:	06 00 
    65e8:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    65ec:	08 00 

000065ee <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    65ee:	15 53       	inc	r5		;

000065f0 <.Loc.252.1>:
    65f0:	35 90 03 00 	cmp	#3,	r5	;
    65f4:	e4 23       	jnz	$-54     	;abs 0x65be

000065f6 <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    65f6:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    65fa:	1d 24       	jz	$+60     	;abs 0x6636

000065fc <.Loc.324.1>:
    65fc:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    6600:	4e 24       	jz	$+158    	;abs 0x669e

00006602 <.Loc.324.1>:
    6602:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    6606:	4e 24       	jz	$+158    	;abs 0x66a4

00006608 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    6608:	0e 48       	mov	r8,	r14	;
    660a:	0f 46       	mov	r6,	r15	;
    660c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    660e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6610:	b0 12 84 6b 	call	#27524		;#0x6b84

00006614 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    6614:	4e 47       	mov.b	r7,	r14	;
    6616:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6618:	6c 43       	mov.b	#2,	r12	;r3 As==10
    661a:	b0 12 d8 6b 	call	#27608		;#0x6bd8

0000661e <.Loc.349.1>:
        refresh_xpr_timers();
    661e:	b0 12 24 63 	call	#25380		;#0x6324

00006622 <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    6622:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6624:	b0 12 88 6c 	call	#27784		;#0x6c88

00006628 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6628:	6c 43       	mov.b	#2,	r12	;r3 As==10
    662a:	b0 12 dc 6d 	call	#28124		;#0x6ddc

0000662e <.Loc.354.1>:
}
    662e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006632 <.LCFI33>:
    6632:	55 17       	popm	#6,	r10	;16-bit words

00006634 <.LCFI34>:
    6634:	30 41       	ret			

00006636 <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6636:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000663a <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    663a:	05 4a       	mov	r10,	r5	;

0000663c <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    663c:	b0 12 20 6b 	call	#27424		;#0x6b20

00006640 <.Loc.328.1>:
    6640:	0e 45       	mov	r5,	r14	;
    6642:	5e 06       	rlam	#2,	r14	;
    6644:	0e 55       	add	r5,	r14	;
    6646:	5e 02       	rlam	#1,	r14	;
    6648:	09 5e       	add	r14,	r9	;

0000664a <.Loc.328.1>:
    664a:	0c 58       	add	r8,	r12	;
    664c:	89 4c 04 00 	mov	r12,	4(r9)	;
    6650:	0d 66       	addc	r6,	r13	;
    6652:	89 4d 06 00 	mov	r13,	6(r9)	;

00006656 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    6656:	b0 12 20 6b 	call	#27424		;#0x6b20

0000665a <.Loc.329.1>:
    665a:	0e 4c       	mov	r12,	r14	;
    665c:	0e 58       	add	r8,	r14	;
    665e:	0f 4d       	mov	r13,	r15	;
    6660:	0f 66       	addc	r6,	r15	;
    6662:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6664:	4c 4a       	mov.b	r10,	r12	;
    6666:	b0 12 84 6b 	call	#27524		;#0x6b84

0000666a <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    666a:	c9 47 02 00 	mov.b	r7,	2(r9)	;

0000666e <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    666e:	4e 47       	mov.b	r7,	r14	;
    6670:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6672:	4c 4a       	mov.b	r10,	r12	;
    6674:	b0 12 d8 6b 	call	#27608		;#0x6bd8

00006678 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    6678:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

0000667c <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    667c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    667e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6680:	4c 4a       	mov.b	r10,	r12	;
    6682:	b0 12 24 6c 	call	#27684		;#0x6c24

00006686 <.Loc.334.1>:
        refresh_xpr_timers();
    6686:	b0 12 24 63 	call	#25380		;#0x6324

0000668a <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    668a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    668c:	b0 12 88 6c 	call	#27784		;#0x6c88

00006690 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    6690:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6692:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006696 <.Loc.354.1>:
}
    6696:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000669a <.LCFI36>:
    669a:	55 17       	popm	#6,	r10	;16-bit words

0000669c <.LCFI37>:
    669c:	30 41       	ret			

0000669e <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    669e:	5a 43       	mov.b	#1,	r10	;r3 As==01

000066a0 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    66a0:	55 43       	mov.b	#1,	r5	;r3 As==01
    66a2:	cc 3f       	jmp	$-102    	;abs 0x663c

000066a4 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    66a4:	6a 43       	mov.b	#2,	r10	;r3 As==10

000066a6 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    66a6:	65 43       	mov.b	#2,	r5	;r3 As==10
    66a8:	c9 3f       	jmp	$-108    	;abs 0x663c

000066aa <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    66aa:	3a 15       	pushm	#4,	r10	;16-bit words

000066ac <.LCFI39>:
    66ac:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000066b0 <.LCFI40>:
    66b0:	47 4c       	mov.b	r12,	r7	;

000066b2 <.LBB34>:
    66b2:	49 43       	clr.b	r9		;
    66b4:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

000066b8 <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    66b8:	0a 49       	mov	r9,	r10	;
    66ba:	5a 06       	rlam	#2,	r10	;
    66bc:	0a 59       	add	r9,	r10	;
    66be:	5a 02       	rlam	#1,	r10	;
    66c0:	0a 58       	add	r8,	r10	;
    66c2:	6e 43       	mov.b	#2,	r14	;r3 As==10
    66c4:	4d 49       	mov.b	r9,	r13	;
    66c6:	0c 41       	mov	r1,	r12	;
    66c8:	b0 12 20 6e 	call	#28192		;#0x6e20
    66cc:	aa 41 00 00 	mov	@r1,	0(r10)	;
    66d0:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    66d4:	02 00 
    66d6:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    66da:	04 00 
    66dc:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    66e0:	06 00 
    66e2:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    66e6:	08 00 

000066e8 <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    66e8:	19 53       	inc	r9		;

000066ea <.Loc.252.1>:
    66ea:	39 90 03 00 	cmp	#3,	r9	;
    66ee:	e4 23       	jnz	$-54     	;abs 0x66b8

000066f0 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    66f0:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    66f4:	12 24       	jz	$+38     	;abs 0x671a

000066f6 <.Loc.237.1>:
    66f6:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    66fa:	27 24       	jz	$+80     	;abs 0x674a

000066fc <.Loc.237.1>:
    66fc:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    6700:	27 24       	jz	$+80     	;abs 0x6750

00006702 <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    6702:	b0 12 24 63 	call	#25380		;#0x6324

00006706 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    6706:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6708:	b0 12 88 6c 	call	#27784		;#0x6c88

0000670c <.Loc.369.1>:
    _pers_timer_commit(XPR);
    670c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    670e:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006712 <.Loc.371.1>:

}
    6712:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006716 <.LCFI41>:
    6716:	37 17       	popm	#4,	r10	;16-bit words

00006718 <.LCFI42>:
    6718:	30 41       	ret			

0000671a <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    671a:	4c 43       	clr.b	r12		;

0000671c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    671c:	4e 43       	clr.b	r14		;

0000671e <.L181>:
            xpr_timing[i].status = NOT_USED;
    671e:	0d 4e       	mov	r14,	r13	;
    6720:	5d 06       	rlam	#2,	r13	;
    6722:	0d 5e       	add	r14,	r13	;
    6724:	5d 02       	rlam	#1,	r13	;
    6726:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000672a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    672a:	4e 43       	clr.b	r14		;
    672c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    672e:	b0 12 24 6c 	call	#27684		;#0x6c24

00006732 <.Loc.242.1>:
    refresh_xpr_timers();
    6732:	b0 12 24 63 	call	#25380		;#0x6324

00006736 <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    6736:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6738:	b0 12 88 6c 	call	#27784		;#0x6c88

0000673c <.Loc.369.1>:
    _pers_timer_commit(XPR);
    673c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    673e:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006742 <.Loc.371.1>:
}
    6742:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006746 <.LCFI44>:
    6746:	37 17       	popm	#4,	r10	;16-bit words

00006748 <.LCFI45>:
    6748:	30 41       	ret			

0000674a <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    674a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000674c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    674c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    674e:	e7 3f       	jmp	$-48     	;abs 0x671e

00006750 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6750:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006752 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    6752:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6754:	e4 3f       	jmp	$-54     	;abs 0x671e

00006756 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    6756:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000675a <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    675a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    675c:	4d 43       	clr.b	r13		;
    675e:	0c 41       	mov	r1,	r12	;
    6760:	b0 12 20 6e 	call	#28192		;#0x6e20
    6764:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    6768:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    676c:	0e 1c 
    676e:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    6772:	10 1c 
    6774:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    6778:	12 1c 
    677a:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    677e:	14 1c 

00006780 <.Loc.383.1>:
    }

}
    6780:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006784 <.LCFI48>:
    6784:	30 41       	ret			

00006786 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    6786:	2a 15       	pushm	#3,	r10	;16-bit words

00006788 <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    6788:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    678c:	8a 20       	jnz	$+278    	;abs 0x68a2

0000678e <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    678e:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    6792:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

00006796 <.Loc.465.1>:
    6796:	82 48 52 1c 	mov	r8,	&0x1c52	;

0000679a <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    679a:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    679e:	54 1c 

000067a0 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    67a0:	b0 12 20 6b 	call	#27424		;#0x6b20

000067a4 <.Loc.471.1>:
    67a4:	0e 48       	mov	r8,	r14	;
    67a6:	0f 49       	mov	r9,	r15	;
    67a8:	0e 8c       	sub	r12,	r14	;
    67aa:	0f 7d       	subc	r13,	r15	;

000067ac <.Loc.471.1>:
    67ac:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    67b0:	82 4f 12 1c 	mov	r15,	&0x1c12	;

000067b4 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    67b4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    67b6:	4c 43       	clr.b	r12		;
    67b8:	b0 12 84 6b 	call	#27524		;#0x6b84

000067bc <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    67bc:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    67c0:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

000067c4 <.Loc.474.1>:
    67c4:	0d 93       	cmp	#0,	r13	;r3 As==00
    67c6:	21 38       	jl	$+68     	;abs 0x680a

000067c8 <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    67c8:	0f 4c       	mov	r12,	r15	;
    67ca:	0f dd       	bis	r13,	r15	;
    67cc:	0f 93       	cmp	#0,	r15	;r3 As==00
    67ce:	6d 24       	jz	$+220    	;abs 0x68aa

000067d0 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    67d0:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    67d4:	08 4f       	mov	r15,	r8	;
    67d6:	09 43       	clr	r9		;

000067d8 <.Loc.485.1>:
    67d8:	0d 93       	cmp	#0,	r13	;r3 As==00
    67da:	54 38       	jl	$+170    	;abs 0x6884
    67dc:	0d 93       	cmp	#0,	r13	;r3 As==00
    67de:	02 20       	jnz	$+6      	;abs 0x67e4
    67e0:	0c 98       	cmp	r8,	r12	;
    67e2:	50 28       	jnc	$+162    	;abs 0x6884

000067e4 <.L209>:
    67e4:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

000067e8 <.Loc.485.1>:
    67e8:	0c 98       	cmp	r8,	r12	;
    67ea:	53 24       	jz	$+168    	;abs 0x6892

000067ec <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    67ec:	4d 4e       	mov.b	r14,	r13	;
    67ee:	5c 43       	mov.b	#1,	r12	;r3 As==01
    67f0:	b0 12 6c 6c 	call	#27756		;#0x6c6c

000067f4 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    67f4:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    67f8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    67fa:	b0 12 7a 6c 	call	#27770		;#0x6c7a

000067fe <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    67fe:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    6802:	b0 12 c8 6a 	call	#27336		;#0x6ac8

00006806 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    6806:	28 17       	popm	#3,	r10	;16-bit words

00006808 <.LCFI50>:
    6808:	30 41       	ret			

0000680a <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    680a:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    680e:	0f 43       	clr	r15		;
    6810:	0f 89       	sub	r9,	r15	;
    6812:	08 4f       	mov	r15,	r8	;
    6814:	09 4f       	mov	r15,	r9	;
    6816:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

0000681a <.Loc.474.1>:
    681a:	09 9d       	cmp	r13,	r9	;
    681c:	04 38       	jl	$+10     	;abs 0x6826

0000681e <.Loc.474.1>:
    681e:	0d 99       	cmp	r9,	r13	;
    6820:	25 20       	jnz	$+76     	;abs 0x686c
    6822:	0f 9c       	cmp	r12,	r15	;
    6824:	23 2c       	jc	$+72     	;abs 0x686c

00006826 <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6826:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    682a:	0a 4e       	mov	r14,	r10	;
    682c:	0b 43       	clr	r11		;

0000682e <.Loc.476.1>:
    682e:	48 43       	clr.b	r8		;
    6830:	49 43       	clr.b	r9		;
    6832:	08 8c       	sub	r12,	r8	;
    6834:	09 7d       	subc	r13,	r9	;

00006836 <.Loc.476.1>:
    6836:	09 93       	cmp	#0,	r9	;r3 As==00
    6838:	04 38       	jl	$+10     	;abs 0x6842
    683a:	09 93       	cmp	#0,	r9	;r3 As==00
    683c:	0b 20       	jnz	$+24     	;abs 0x6854
    683e:	08 9a       	cmp	r10,	r8	;
    6840:	09 2c       	jc	$+20     	;abs 0x6854

00006842 <.L207>:
    6842:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

00006846 <.L196>:
                    min_pdc = -pdc_timing[i].data;
    6846:	4f 43       	clr.b	r15		;
    6848:	0f 8c       	sub	r12,	r15	;
    684a:	82 4f 52 1c 	mov	r15,	&0x1c52	;

0000684e <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    684e:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00006852 <.Loc.494.1>:
    if (!first)
    6852:	cc 3f       	jmp	$-102    	;abs 0x67ec

00006854 <.L194>:
    6854:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00006858 <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6858:	0a 98       	cmp	r8,	r10	;
    685a:	c8 23       	jnz	$-110    	;abs 0x67ec
    685c:	09 93       	cmp	#0,	r9	;r3 As==00
    685e:	c6 23       	jnz	$-114    	;abs 0x67ec

00006860 <.Loc.476.1>:
    6860:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

00006864 <.Loc.476.1>:
    6864:	4f 9e       	cmp.b	r14,	r15	;
    6866:	c2 2f       	jc	$-122    	;abs 0x67ec
    6868:	0e 4f       	mov	r15,	r14	;
    686a:	ed 3f       	jmp	$-36     	;abs 0x6846

0000686c <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    686c:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00006870 <.Loc.481.1>:
    6870:	0d 99       	cmp	r9,	r13	;
    6872:	05 38       	jl	$+12     	;abs 0x687e
    6874:	0a 49       	mov	r9,	r10	;
    6876:	09 9d       	cmp	r13,	r9	;
    6878:	b9 23       	jnz	$-140    	;abs 0x67ec
    687a:	0c 9f       	cmp	r15,	r12	;
    687c:	b7 2f       	jc	$-144    	;abs 0x67ec

0000687e <.L208>:
    687e:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00006882 <.Loc.494.1>:
    if (!first)
    6882:	b4 3f       	jmp	$-150    	;abs 0x67ec

00006884 <.L201>:
    6884:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

00006888 <.L203>:
                    min_pdc = pdc_timing[i].data;
    6888:	82 4c 52 1c 	mov	r12,	&0x1c52	;

0000688c <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    688c:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00006890 <.Loc.494.1>:
    if (!first)
    6890:	ad 3f       	jmp	$-164    	;abs 0x67ec

00006892 <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6892:	0d 99       	cmp	r9,	r13	;
    6894:	ab 23       	jnz	$-168    	;abs 0x67ec

00006896 <.Loc.485.1>:
    6896:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000689a <.Loc.485.1>:
    689a:	4f 9e       	cmp.b	r14,	r15	;
    689c:	a7 2f       	jc	$-176    	;abs 0x67ec
    689e:	0e 4f       	mov	r15,	r14	;
    68a0:	f3 3f       	jmp	$-24     	;abs 0x6888

000068a2 <.L189>:
    else stop_timer();
    68a2:	b0 12 7e 6a 	call	#27262		;#0x6a7e

000068a6 <.Loc.507.1>:
}
    68a6:	28 17       	popm	#3,	r10	;16-bit words

000068a8 <.LCFI52>:
    68a8:	30 41       	ret			

000068aa <.L199>:
    if (!first)
    68aa:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    68ae:	9e 3f       	jmp	$-194    	;abs 0x67ec

000068b0 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    68b0:	1a 15       	pushm	#2,	r10	;16-bit words

000068b2 <.LCFI54>:
    68b2:	17 15       	pushm	#2,	r7	;16-bit words

000068b4 <.LCFI55>:
    68b4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000068b8 <.LCFI56>:
    68b8:	49 4c       	mov.b	r12,	r9	;
    68ba:	0a 4d       	mov	r13,	r10	;

000068bc <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    68bc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    68be:	4d 43       	clr.b	r13		;

000068c0 <.LVL210>:
    68c0:	0c 41       	mov	r1,	r12	;

000068c2 <.LVL211>:
    68c2:	b0 12 20 6e 	call	#28192		;#0x6e20
    68c6:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    68ca:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    68ce:	0e 1c 
    68d0:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    68d4:	10 1c 
    68d6:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    68da:	12 1c 
    68dc:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    68e0:	14 1c 

000068e2 <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    68e2:	06 4a       	mov	r10,	r6	;
    68e4:	07 43       	clr	r7		;

000068e6 <.Loc.401.1>:
    68e6:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    68ea:	31 20       	jnz	$+100    	;abs 0x694e

000068ec <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    68ec:	4c 49       	mov.b	r9,	r12	;
    68ee:	b0 12 1c 5d 	call	#23836		;#0x5d1c
    68f2:	0d 4a       	mov	r10,	r13	;
    68f4:	b0 12 e8 5c 	call	#23784		;#0x5ce8

000068f8 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    68f8:	4c 49       	mov.b	r9,	r12	;
    68fa:	b0 12 1c 5d 	call	#23836		;#0x5d1c
    68fe:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6900:	b0 12 ee 5c 	call	#23790		;#0x5cee

00006904 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    6904:	0e 46       	mov	r6,	r14	;
    6906:	0f 47       	mov	r7,	r15	;
    6908:	5d 43       	mov.b	#1,	r13	;r3 As==01
    690a:	4c 43       	clr.b	r12		;
    690c:	b0 12 84 6b 	call	#27524		;#0x6b84

00006910 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    6910:	82 46 10 1c 	mov	r6,	&0x1c10	;
    6914:	82 47 12 1c 	mov	r7,	&0x1c12	;

00006918 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    6918:	4e 49       	mov.b	r9,	r14	;
    691a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    691c:	4c 43       	clr.b	r12		;
    691e:	b0 12 d8 6b 	call	#27608		;#0x6bd8

00006922 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    6922:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00006926 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    6926:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6928:	5d 43       	mov.b	#1,	r13	;r3 As==01
    692a:	4c 43       	clr.b	r12		;
    692c:	b0 12 24 6c 	call	#27684		;#0x6c24

00006930 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    6930:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

00006934 <.Loc.411.1>:
        refresh_pdc_timers();
    6934:	b0 12 86 67 	call	#26502		;#0x6786

00006938 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    6938:	5c 43       	mov.b	#1,	r12	;r3 As==01
    693a:	b0 12 88 6c 	call	#27784		;#0x6c88

0000693e <.Loc.434.1>:
    _pers_timer_commit(PDC);
    693e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6940:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006944 <.Loc.435.1>:
}
    6944:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006948 <.LCFI57>:
    6948:	16 17       	popm	#2,	r7	;16-bit words

0000694a <.LCFI58>:
    694a:	19 17       	popm	#2,	r10	;16-bit words

0000694c <.LCFI59>:
    694c:	30 41       	ret			

0000694e <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    694e:	82 46 10 1c 	mov	r6,	&0x1c10	;
    6952:	82 47 12 1c 	mov	r7,	&0x1c12	;

00006956 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    6956:	0e 46       	mov	r6,	r14	;
    6958:	0f 47       	mov	r7,	r15	;
    695a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    695c:	4c 43       	clr.b	r12		;
    695e:	b0 12 84 6b 	call	#27524		;#0x6b84

00006962 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    6962:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00006966 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    6966:	4e 49       	mov.b	r9,	r14	;
    6968:	5d 43       	mov.b	#1,	r13	;r3 As==01
    696a:	4c 43       	clr.b	r12		;
    696c:	b0 12 d8 6b 	call	#27608		;#0x6bd8

00006970 <.Loc.430.1>:
        refresh_pdc_timers();
    6970:	b0 12 86 67 	call	#26502		;#0x6786

00006974 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    6974:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6976:	b0 12 88 6c 	call	#27784		;#0x6c88

0000697a <.Loc.434.1>:
    _pers_timer_commit(PDC);
    697a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    697c:	b0 12 dc 6d 	call	#28124		;#0x6ddc

00006980 <.Loc.435.1>:
}
    6980:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006984 <.LCFI61>:
    6984:	16 17       	popm	#2,	r7	;16-bit words

00006986 <.LCFI62>:
    6986:	19 17       	popm	#2,	r10	;16-bit words

00006988 <.LCFI63>:
    6988:	30 41       	ret			

0000698a <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    698a:	0a 15       	pushm	#1,	r10	;16-bit words

0000698c <.LCFI64>:
    698c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006990 <.LCFI65>:
    6990:	4a 4c       	mov.b	r12,	r10	;

00006992 <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    6992:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6994:	4d 43       	clr.b	r13		;
    6996:	0c 41       	mov	r1,	r12	;

00006998 <.LVL233>:
    6998:	b0 12 20 6e 	call	#28192		;#0x6e20
    699c:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    69a0:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    69a4:	0e 1c 
    69a6:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    69aa:	10 1c 
    69ac:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    69b0:	12 1c 
    69b2:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    69b6:	14 1c 

000069b8 <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    69b8:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    69bc:	07 20       	jnz	$+16     	;abs 0x69cc

000069be <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    69be:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000069c2 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    69c2:	4e 43       	clr.b	r14		;
    69c4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    69c6:	4c 43       	clr.b	r12		;
    69c8:	b0 12 24 6c 	call	#27684		;#0x6c24

000069cc <.L216>:
    refresh_pdc_timers();
    69cc:	b0 12 86 67 	call	#26502		;#0x6786

000069d0 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    69d0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69d2:	b0 12 88 6c 	call	#27784		;#0x6c88

000069d6 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    69d6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69d8:	b0 12 dc 6d 	call	#28124		;#0x6ddc

000069dc <.Loc.450.1>:
}
    69dc:	31 50 0a 00 	add	#10,	r1	;#0x000a

000069e0 <.LCFI66>:
    69e0:	0a 17       	popm	#1,	r10	;16-bit words

000069e2 <.LCFI67>:
    69e2:	30 41       	ret			

000069e4 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    69e4:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    69e8:	07 20       	jnz	$+16     	;abs 0x69f8

000069ea <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    69ea:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000069ee <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    69ee:	4e 43       	clr.b	r14		;
    69f0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    69f2:	4c 43       	clr.b	r12		;

000069f4 <.LVL242>:
    69f4:	b0 12 24 6c 	call	#27684		;#0x6c24

000069f8 <.L217>:

        }
    }
}
    69f8:	30 41       	ret			

000069fa <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    69fa:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

000069fe <.Loc.83.1>:
    69fe:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00006a02 <.Loc.83.1>:
    6a02:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006a06 <.Loc.83.1>:
    6a06:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006a0a <.Loc.83.1>:
    6a0a:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006a0e <.Loc.83.1>:
    6a0e:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00006a12 <.Loc.83.1>:
    6a12:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006a16 <.Loc.83.1>:
    6a16:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006a1a <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    6a1a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006a1e <.Loc.88.1>:
}
    6a1e:	30 41       	ret			

00006a20 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    6a20:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006a24 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    6a24:	0e 4c       	mov	r12,	r14	;
    6a26:	5e 09       	rram	#3,	r14	;

00006a28 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    6a28:	7e f0 07 00 	and.b	#7,	r14	;

00006a2c <.Loc.99.1>:
    6a2c:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    6a30:	08 00 

00006a32 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    6a32:	0d 5e       	add	r14,	r13	;

00006a34 <.LVL12>:
    6a34:	7c f0 07 00 	and.b	#7,	r12	;

00006a38 <.LVL13>:
    6a38:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    6a3c:	00 00 

00006a3e <.Loc.101.1>:
}
    6a3e:	30 41       	ret			

00006a40 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    6a40:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006a44 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    6a44:	0e 4c       	mov	r12,	r14	;
    6a46:	5e 09       	rram	#3,	r14	;

00006a48 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    6a48:	7e f0 07 00 	and.b	#7,	r14	;
    6a4c:	0f 4d       	mov	r13,	r15	;
    6a4e:	0f 5e       	add	r14,	r15	;

00006a50 <.Loc.112.1>:
    6a50:	7c f0 07 00 	and.b	#7,	r12	;

00006a54 <.LVL16>:
    6a54:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    6a58:	00 00 

00006a5a <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    6a5a:	6c 4f       	mov.b	@r15,	r12	;

00006a5c <.Loc.114.1>:
    6a5c:	0c 93       	cmp	#0,	r12	;r3 As==00
    6a5e:	03 20       	jnz	$+8      	;abs 0x6a66

00006a60 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    6a60:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    6a64:	08 00 

00006a66 <.L4>:
    }
}
    6a66:	30 41       	ret			

00006a68 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    6a68:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00006a6c <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    6a6c:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00006a70 <.LVL19>:
    6a70:	0c 5d       	add	r13,	r12	;

00006a72 <.LVL20>:
    6a72:	6e 4c       	mov.b	@r12,	r14	;

00006a74 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    6a74:	0c 4d       	mov	r13,	r12	;
    6a76:	5c 0a       	rlam	#3,	r12	;

00006a78 <.Loc.128.1>:
}
    6a78:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    6a7c:	30 41       	ret			

00006a7e <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    6a7e:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00006a82 <.Loc.158.1>:
    TA2CTL = 0;
    6a82:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006a86 <.Loc.159.1>:
}
    6a86:	30 41       	ret			

00006a88 <timerA2_init>:
    6a88:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    6a8c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    6a90:	30 41       	ret			

00006a92 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    6a92:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00006a96 <.Loc.172.1>:
    TA0CCR0 = ticks;
    6a96:	82 4c 52 03 	mov	r12,	&0x0352	;

00006a9a <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    6a9a:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    6a9e:	42 03 

00006aa0 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6aa0:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    6aa4:	40 03 

00006aa6 <.Loc.175.1>:
}
    6aa6:	30 41       	ret			

00006aa8 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    6aa8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006aac <.Loc.179.1>:
    TA2CCR0 = ticks;
    6aac:	82 4c 12 04 	mov	r12,	&0x0412	;

00006ab0 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    6ab0:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    6ab4:	02 04 

00006ab6 <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    6ab6:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    6aba:	00 04 

00006abc <.Loc.183.1>:

}
    6abc:	30 41       	ret			

00006abe <stop_timer_xpr>:
    6abe:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    6ac2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    6ac6:	30 41       	ret			

00006ac8 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    6ac8:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00006acc <.Loc.195.1>:
    TA1CCR0 = ticks;
    6acc:	82 4c 92 03 	mov	r12,	&0x0392	;

00006ad0 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    6ad0:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    6ad4:	82 03 

00006ad6 <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6ad6:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    6ada:	80 03 

00006adc <.Loc.198.1>:
}
    6adc:	30 41       	ret			

00006ade <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    6ade:	30 41       	ret			

00006ae0 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    6ae0:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    6ae4:	61 01 

00006ae6 <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    6ae6:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    6aea:	64 01 

00006aec <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    6aec:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00006af0 <.Loc.248.1>:
  CSCTL0_H = 0;
    6af0:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00006af4 <.Loc.250.1>:

}
    6af4:	30 41       	ret			

00006af6 <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    6af6:	4c 43       	clr.b	r12		;
    6af8:	4d 43       	clr.b	r13		;
    6afa:	30 41       	ret			

00006afc <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    6afc:	82 43 4e 51 	mov	#0,	&0x514e	;r3 As==00
    6b00:	82 43 50 51 	mov	#0,	&0x5150	;r3 As==00

00006b04 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    6b04:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006b08 <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    6b08:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    6b0c:	40 04 

00006b0e <.Loc.334.1>:

    __bis_SR_register(GIE);
    6b0e:	03 43       	nop			
    6b10:	32 d2       	eint			
    6b12:	03 43       	nop			

00006b14 <.Loc.335.1>:
}
    6b14:	30 41       	ret			

00006b16 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    6b16:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006b1a <.Loc.343.1>:
    TA3CCTL0 = 0;
    6b1a:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00006b1e <.Loc.344.1>:
}
    6b1e:	30 41       	ret			

00006b20 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    6b20:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6b24:	40 04 

00006b26 <.Loc.356.1>:

   tmp = TA3R;
    6b26:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00006b2a <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    6b2a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6b2e:	40 04 

00006b30 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    6b30:	0d 43       	clr	r13		;

00006b32 <.LVL6>:
    6b32:	0e 4c       	mov	r12,	r14	;
    6b34:	0f 4d       	mov	r13,	r15	;
    6b36:	0e 5e       	rla	r14		;
    6b38:	0f 6f       	rlc	r15		;
    6b3a:	0e 5e       	rla	r14		;
    6b3c:	0f 6f       	rlc	r15		;
    6b3e:	0c 5e       	add	r14,	r12	;

00006b40 <.LVL7>:
    6b40:	0d 6f       	addc	r15,	r13	;
    6b42:	0c 5c       	rla	r12		;
    6b44:	0d 6d       	rlc	r13		;

00006b46 <.Loc.363.1>:
}
    6b46:	1c 52 4e 51 	add	&0x514e,r12	;0x514e
    6b4a:	1d 62 50 51 	addc	&0x5150,r13	;0x5150
    6b4e:	30 41       	ret			

00006b50 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    6b50:	b2 50 aa 00 	add	#170,	&0x514e	;#0x00aa
    6b54:	4e 51 
    6b56:	b2 60 0a 00 	addc	#10,	&0x5150	;#0x000a
    6b5a:	50 51 

00006b5c <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    6b5c:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00006b60 <.Loc.381.1>:
}
    6b60:	00 13       	reti			

00006b62 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    6b62:	3c 40 52 51 	mov	#20818,	r12	;#0x5152
    6b66:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00006b6a <.Loc.34.1>:
    6b6a:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00006b6e <.Loc.34.1>:
    6b6e:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00006b72 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    6b72:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00006b76 <.Loc.38.1>:
    6b76:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00006b7a <.Loc.38.1>:
    6b7a:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00006b7e <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    6b7e:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00006b82 <.Loc.42.1>:
    }
}
    6b82:	30 41       	ret			

00006b84 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    6b84:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006b88 <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    6b88:	1d 93       	cmp	#1,	r13	;r3 As==01
    6b8a:	1b 24       	jz	$+56     	;abs 0x6bc2
    6b8c:	2d 93       	cmp	#2,	r13	;r3 As==10
    6b8e:	0e 24       	jz	$+30     	;abs 0x6bac
    6b90:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b92:	01 24       	jz	$+4      	;abs 0x6b96

00006b94 <.Loc.69.1>:
        default:
            break;
    }


}
    6b94:	30 41       	ret			

00006b96 <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    6b96:	0d 4c       	mov	r12,	r13	;

00006b98 <.LVL9>:
    6b98:	5d 06       	rlam	#2,	r13	;
    6b9a:	0c 5d       	add	r13,	r12	;

00006b9c <.LVL10>:
    6b9c:	5c 02       	rlam	#1,	r12	;
    6b9e:	8c 4e ba 51 	mov	r14,	20922(r12); 0x51ba
    6ba2:	8c 4f bc 51 	mov	r15,	20924(r12); 0x51bc

00006ba6 <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6ba6:	9c 43 be 51 	mov	#1,	20926(r12);r3 As==01, 0x51be

00006baa <.Loc.55.1>:
}
    6baa:	30 41       	ret			

00006bac <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    6bac:	0d 4c       	mov	r12,	r13	;

00006bae <.LVL12>:
    6bae:	5d 06       	rlam	#2,	r13	;
    6bb0:	0c 5d       	add	r13,	r12	;
    6bb2:	5c 02       	rlam	#1,	r12	;
    6bb4:	8c 4e d8 51 	mov	r14,	20952(r12); 0x51d8
    6bb8:	8c 4f da 51 	mov	r15,	20954(r12); 0x51da

00006bbc <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6bbc:	9c 43 dc 51 	mov	#1,	20956(r12);r3 As==01, 0x51dc

00006bc0 <.Loc.59.1>:
}
    6bc0:	30 41       	ret			

00006bc2 <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    6bc2:	0d 4c       	mov	r12,	r13	;

00006bc4 <.LVL14>:
    6bc4:	5d 06       	rlam	#2,	r13	;
    6bc6:	0c 5d       	add	r13,	r12	;
    6bc8:	5c 02       	rlam	#1,	r12	;
    6bca:	8c 4e f6 51 	mov	r14,	20982(r12); 0x51f6
    6bce:	8c 4f f8 51 	mov	r15,	20984(r12); 0x51f8

00006bd2 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6bd2:	9c 43 fa 51 	mov	#1,	20986(r12);r3 As==01, 0x51fa

00006bd6 <.Loc.63.1>:
}
    6bd6:	30 41       	ret			

00006bd8 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    6bd8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6bdc:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006be0 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    6be0:	1d 93       	cmp	#1,	r13	;r3 As==01
    6be2:	17 24       	jz	$+48     	;abs 0x6c12
    6be4:	2d 93       	cmp	#2,	r13	;r3 As==10
    6be6:	0c 24       	jz	$+26     	;abs 0x6c00
    6be8:	0d 93       	cmp	#0,	r13	;r3 As==00
    6bea:	01 24       	jz	$+4      	;abs 0x6bee

00006bec <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    6bec:	30 41       	ret			

00006bee <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    6bee:	0d 4c       	mov	r12,	r13	;

00006bf0 <.LVL16>:
    6bf0:	5d 06       	rlam	#2,	r13	;
    6bf2:	0c 5d       	add	r13,	r12	;

00006bf4 <.LVL17>:
    6bf4:	5c 02       	rlam	#1,	r12	;
    6bf6:	cc 4e b8 51 	mov.b	r14,	20920(r12); 0x51b8

00006bfa <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6bfa:	9c 43 be 51 	mov	#1,	20926(r12);r3 As==01, 0x51be

00006bfe <.Loc.78.1>:
}
    6bfe:	30 41       	ret			

00006c00 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    6c00:	0d 4c       	mov	r12,	r13	;

00006c02 <.LVL19>:
    6c02:	5d 06       	rlam	#2,	r13	;
    6c04:	0c 5d       	add	r13,	r12	;
    6c06:	5c 02       	rlam	#1,	r12	;
    6c08:	cc 4e d6 51 	mov.b	r14,	20950(r12); 0x51d6

00006c0c <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6c0c:	9c 43 dc 51 	mov	#1,	20956(r12);r3 As==01, 0x51dc

00006c10 <.Loc.82.1>:
}
    6c10:	30 41       	ret			

00006c12 <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    6c12:	0d 4c       	mov	r12,	r13	;

00006c14 <.LVL21>:
    6c14:	5d 06       	rlam	#2,	r13	;
    6c16:	0c 5d       	add	r13,	r12	;
    6c18:	5c 02       	rlam	#1,	r12	;
    6c1a:	cc 4e f4 51 	mov.b	r14,	20980(r12); 0x51f4

00006c1e <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6c1e:	9c 43 fa 51 	mov	#1,	20986(r12);r3 As==01, 0x51fa

00006c22 <.Loc.86.1>:
}
    6c22:	30 41       	ret			

00006c24 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    6c24:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006c28 <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    6c28:	1d 93       	cmp	#1,	r13	;r3 As==01
    6c2a:	17 24       	jz	$+48     	;abs 0x6c5a
    6c2c:	2d 93       	cmp	#2,	r13	;r3 As==10
    6c2e:	0c 24       	jz	$+26     	;abs 0x6c48
    6c30:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c32:	01 24       	jz	$+4      	;abs 0x6c36

00006c34 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    6c34:	30 41       	ret			

00006c36 <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    6c36:	0d 4c       	mov	r12,	r13	;

00006c38 <.LVL23>:
    6c38:	5d 06       	rlam	#2,	r13	;
    6c3a:	0c 5d       	add	r13,	r12	;

00006c3c <.LVL24>:
    6c3c:	5c 02       	rlam	#1,	r12	;
    6c3e:	8c 4e b6 51 	mov	r14,	20918(r12); 0x51b6

00006c42 <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6c42:	9c 43 be 51 	mov	#1,	20926(r12);r3 As==01, 0x51be

00006c46 <.Loc.100.1>:
}
    6c46:	30 41       	ret			

00006c48 <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    6c48:	0d 4c       	mov	r12,	r13	;

00006c4a <.LVL26>:
    6c4a:	5d 06       	rlam	#2,	r13	;
    6c4c:	0c 5d       	add	r13,	r12	;
    6c4e:	5c 02       	rlam	#1,	r12	;
    6c50:	8c 4e d4 51 	mov	r14,	20948(r12); 0x51d4

00006c54 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6c54:	9c 43 dc 51 	mov	#1,	20956(r12);r3 As==01, 0x51dc

00006c58 <.Loc.104.1>:
}
    6c58:	30 41       	ret			

00006c5a <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    6c5a:	0d 4c       	mov	r12,	r13	;

00006c5c <.LVL28>:
    6c5c:	5d 06       	rlam	#2,	r13	;
    6c5e:	0c 5d       	add	r13,	r12	;
    6c60:	5c 02       	rlam	#1,	r12	;
    6c62:	8c 4e f2 51 	mov	r14,	20978(r12); 0x51f2

00006c66 <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6c66:	9c 43 fa 51 	mov	#1,	20986(r12);r3 As==01, 0x51fa

00006c6a <.Loc.108.1>:
}
    6c6a:	30 41       	ret			

00006c6c <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    6c6c:	0e 4c       	mov	r12,	r14	;
    6c6e:	5e 0a       	rlam	#3,	r14	;
    6c70:	ce 4d fe 51 	mov.b	r13,	20990(r14); 0x51fe

00006c74 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6c74:	9e 43 02 52 	mov	#1,	20994(r14);r3 As==01, 0x5202

00006c78 <.Loc.119.1>:
}
    6c78:	30 41       	ret			

00006c7a <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    6c7a:	0e 4c       	mov	r12,	r14	;
    6c7c:	5e 0a       	rlam	#3,	r14	;
    6c7e:	8e 4d 00 52 	mov	r13,	20992(r14); 0x5200

00006c82 <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    6c82:	9e 43 02 52 	mov	#1,	20994(r14);r3 As==01, 0x5202

00006c86 <.Loc.125.1>:
}
    6c86:	30 41       	ret			

00006c88 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    6c88:	1c 93       	cmp	#1,	r12	;r3 As==01
    6c8a:	0b 24       	jz	$+24     	;abs 0x6ca2
    6c8c:	2c 93       	cmp	#2,	r12	;r3 As==10
    6c8e:	06 24       	jz	$+14     	;abs 0x6c9c
    6c90:	0c 93       	cmp	#0,	r12	;r3 As==00
    6c92:	01 24       	jz	$+4      	;abs 0x6c96

00006c94 <.Loc.145.1>:
        default:
            break;

    }

}
    6c94:	30 41       	ret			

00006c96 <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    6c96:	92 43 1a 52 	mov	#1,	&0x521a	;r3 As==01

00006c9a <.Loc.133.1>:
}
    6c9a:	30 41       	ret			

00006c9c <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    6c9c:	92 43 1c 52 	mov	#1,	&0x521c	;r3 As==01

00006ca0 <.Loc.136.1>:
}
    6ca0:	30 41       	ret			

00006ca2 <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    6ca2:	92 43 1e 52 	mov	#1,	&0x521e	;r3 As==01

00006ca6 <.Loc.139.1>:
}
    6ca6:	30 41       	ret			

00006ca8 <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    6ca8:	3d 40 52 51 	mov	#20818,	r13	;#0x5152
    6cac:	1c 93       	cmp	#1,	r12	;r3 As==01
    6cae:	18 24       	jz	$+50     	;abs 0x6ce0
    6cb0:	2c 93       	cmp	#2,	r12	;r3 As==10
    6cb2:	40 24       	jz	$+130    	;abs 0x6d34
    6cb4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cb6:	26 24       	jz	$+78     	;abs 0x6d04

00006cb8 <.L28>:
    6cb8:	0e 4c       	mov	r12,	r14	;
    6cba:	5e 0a       	rlam	#3,	r14	;
    6cbc:	9e 93 02 52 	cmp	#1,	20994(r14);r3 As==01, 0x5202
    6cc0:	01 24       	jz	$+4      	;abs 0x6cc4

00006cc2 <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    6cc2:	30 41       	ret			

00006cc4 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    6cc4:	0c 4e       	mov	r14,	r12	;

00006cc6 <.LVL33>:
    6cc6:	0c 5d       	add	r13,	r12	;
    6cc8:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    6ccc:	46 00 
    6cce:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    6cd2:	48 00 
    6cd4:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    6cd8:	4a 00 

00006cda <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    6cda:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00006cde <.Loc.191.1>:
}
    6cde:	30 41       	ret			

00006ce0 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    6ce0:	92 93 fa 51 	cmp	#1,	&0x51fa	;r3 As==01
    6ce4:	e9 23       	jnz	$-44     	;abs 0x6cb8

00006ce6 <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    6ce6:	92 42 f2 51 	mov	&0x51f2,&0x518e	;0x51f2
    6cea:	8e 51 
    6cec:	92 42 f4 51 	mov	&0x51f4,&0x5190	;0x51f4
    6cf0:	90 51 
    6cf2:	92 42 f6 51 	mov	&0x51f6,&0x5192	;0x51f6
    6cf6:	92 51 
    6cf8:	92 42 f8 51 	mov	&0x51f8,&0x5194	;0x51f8
    6cfc:	94 51 

00006cfe <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    6cfe:	82 43 96 51 	mov	#0,	&0x5196	;r3 As==00

00006d02 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    6d02:	da 3f       	jmp	$-74     	;abs 0x6cb8

00006d04 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    6d04:	92 93 be 51 	cmp	#1,	&0x51be	;r3 As==01
    6d08:	5a 24       	jz	$+182    	;abs 0x6dbe

00006d0a <.L29>:
    6d0a:	92 93 c8 51 	cmp	#1,	&0x51c8	;r3 As==01
    6d0e:	48 24       	jz	$+146    	;abs 0x6da0

00006d10 <.L30>:
    6d10:	92 93 d2 51 	cmp	#1,	&0x51d2	;r3 As==01
    6d14:	d1 23       	jnz	$-92     	;abs 0x6cb8

00006d16 <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6d16:	92 42 ca 51 	mov	&0x51ca,&0x5166	;0x51ca
    6d1a:	66 51 
    6d1c:	92 42 cc 51 	mov	&0x51cc,&0x5168	;0x51cc
    6d20:	68 51 
    6d22:	92 42 ce 51 	mov	&0x51ce,&0x516a	;0x51ce
    6d26:	6a 51 
    6d28:	92 42 d0 51 	mov	&0x51d0,&0x516c	;0x51d0
    6d2c:	6c 51 

00006d2e <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6d2e:	82 43 6e 51 	mov	#0,	&0x516e	;r3 As==00

00006d32 <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    6d32:	c2 3f       	jmp	$-122    	;abs 0x6cb8

00006d34 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    6d34:	92 93 dc 51 	cmp	#1,	&0x51dc	;r3 As==01
    6d38:	24 24       	jz	$+74     	;abs 0x6d82

00006d3a <.L32>:
    6d3a:	92 93 e6 51 	cmp	#1,	&0x51e6	;r3 As==01
    6d3e:	12 24       	jz	$+38     	;abs 0x6d64

00006d40 <.L33>:
    6d40:	92 93 f0 51 	cmp	#1,	&0x51f0	;r3 As==01
    6d44:	b9 23       	jnz	$-140    	;abs 0x6cb8

00006d46 <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6d46:	92 42 e8 51 	mov	&0x51e8,&0x5184	;0x51e8
    6d4a:	84 51 
    6d4c:	92 42 ea 51 	mov	&0x51ea,&0x5186	;0x51ea
    6d50:	86 51 
    6d52:	92 42 ec 51 	mov	&0x51ec,&0x5188	;0x51ec
    6d56:	88 51 
    6d58:	92 42 ee 51 	mov	&0x51ee,&0x518a	;0x51ee
    6d5c:	8a 51 

00006d5e <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6d5e:	82 43 8c 51 	mov	#0,	&0x518c	;r3 As==00

00006d62 <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    6d62:	aa 3f       	jmp	$-170    	;abs 0x6cb8

00006d64 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6d64:	92 42 de 51 	mov	&0x51de,&0x517a	;0x51de
    6d68:	7a 51 
    6d6a:	92 42 e0 51 	mov	&0x51e0,&0x517c	;0x51e0
    6d6e:	7c 51 
    6d70:	92 42 e2 51 	mov	&0x51e2,&0x517e	;0x51e2
    6d74:	7e 51 
    6d76:	92 42 e4 51 	mov	&0x51e4,&0x5180	;0x51e4
    6d7a:	80 51 

00006d7c <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6d7c:	82 43 82 51 	mov	#0,	&0x5182	;r3 As==00
    6d80:	df 3f       	jmp	$-64     	;abs 0x6d40

00006d82 <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6d82:	92 42 d4 51 	mov	&0x51d4,&0x5170	;0x51d4
    6d86:	70 51 
    6d88:	92 42 d6 51 	mov	&0x51d6,&0x5172	;0x51d6
    6d8c:	72 51 
    6d8e:	92 42 d8 51 	mov	&0x51d8,&0x5174	;0x51d8
    6d92:	74 51 
    6d94:	92 42 da 51 	mov	&0x51da,&0x5176	;0x51da
    6d98:	76 51 

00006d9a <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    6d9a:	82 43 78 51 	mov	#0,	&0x5178	;r3 As==00
    6d9e:	cd 3f       	jmp	$-100    	;abs 0x6d3a

00006da0 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6da0:	92 42 c0 51 	mov	&0x51c0,&0x515c	;0x51c0
    6da4:	5c 51 
    6da6:	92 42 c2 51 	mov	&0x51c2,&0x515e	;0x51c2
    6daa:	5e 51 
    6dac:	92 42 c4 51 	mov	&0x51c4,&0x5160	;0x51c4
    6db0:	60 51 
    6db2:	92 42 c6 51 	mov	&0x51c6,&0x5162	;0x51c6
    6db6:	62 51 

00006db8 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6db8:	82 43 64 51 	mov	#0,	&0x5164	;r3 As==00
    6dbc:	a9 3f       	jmp	$-172    	;abs 0x6d10

00006dbe <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    6dbe:	92 42 b6 51 	mov	&0x51b6,&0x5152	;0x51b6
    6dc2:	52 51 
    6dc4:	92 42 b8 51 	mov	&0x51b8,&0x5154	;0x51b8
    6dc8:	54 51 
    6dca:	92 42 ba 51 	mov	&0x51ba,&0x5156	;0x51ba
    6dce:	56 51 
    6dd0:	92 42 bc 51 	mov	&0x51bc,&0x5158	;0x51bc
    6dd4:	58 51 

00006dd6 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6dd6:	82 43 5a 51 	mov	#0,	&0x515a	;r3 As==00
    6dda:	97 3f       	jmp	$-208    	;abs 0x6d0a

00006ddc <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    6ddc:	1c 93       	cmp	#1,	r12	;r3 As==01
    6dde:	17 24       	jz	$+48     	;abs 0x6e0e
    6de0:	2c 93       	cmp	#2,	r12	;r3 As==10
    6de2:	0c 24       	jz	$+26     	;abs 0x6dfc
    6de4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6de6:	01 24       	jz	$+4      	;abs 0x6dea

00006de8 <.L45>:
            break;
        default:
            break;

    }
}
    6de8:	30 41       	ret			

00006dea <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    6dea:	1d 42 1a 52 	mov	&0x521a,r13	;0x521a

00006dee <.Loc.207.1>:
    6dee:	1d 93       	cmp	#1,	r13	;r3 As==01
    6df0:	fb 23       	jnz	$-8      	;abs 0x6de8

00006df2 <.Loc.209.1>:
                _commit_timer_buffers(interface);
    6df2:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00006df6 <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    6df6:	a2 43 1a 52 	mov	#2,	&0x521a	;r3 As==10

00006dfa <.Loc.230.1>:
}
    6dfa:	30 41       	ret			

00006dfc <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    6dfc:	1d 42 1c 52 	mov	&0x521c,r13	;0x521c

00006e00 <.Loc.214.1>:
    6e00:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e02:	f2 23       	jnz	$-26     	;abs 0x6de8

00006e04 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    6e04:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00006e08 <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    6e08:	a2 43 1c 52 	mov	#2,	&0x521c	;r3 As==10

00006e0c <.Loc.230.1>:
}
    6e0c:	30 41       	ret			

00006e0e <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    6e0e:	1d 42 1e 52 	mov	&0x521e,r13	;0x521e

00006e12 <.Loc.220.1>:
    6e12:	1d 93       	cmp	#1,	r13	;r3 As==01
    6e14:	e9 23       	jnz	$-44     	;abs 0x6de8

00006e16 <.Loc.222.1>:
                _commit_timer_buffers(interface);
    6e16:	b0 12 a8 6c 	call	#27816		;#0x6ca8

00006e1a <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    6e1a:	a2 43 1e 52 	mov	#2,	&0x521e	;r3 As==10

00006e1e <.Loc.230.1>:
}
    6e1e:	30 41       	ret			

00006e20 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    6e20:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00006e24 <.Loc.233.1>:
    switch (interface)
    6e24:	1e 93       	cmp	#1,	r14	;r3 As==01
    6e26:	17 24       	jz	$+48     	;abs 0x6e56
    6e28:	2e 93       	cmp	#2,	r14	;r3 As==10
    6e2a:	2a 24       	jz	$+86     	;abs 0x6e80

00006e2c <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    6e2c:	0e 4d       	mov	r13,	r14	;

00006e2e <.LVL55>:
    6e2e:	5e 06       	rlam	#2,	r14	;
    6e30:	0d 5e       	add	r14,	r13	;

00006e32 <.LVL56>:
    6e32:	5d 02       	rlam	#1,	r13	;
    6e34:	3d 50 52 51 	add	#20818,	r13	;#0x5152
    6e38:	0e 4d       	mov	r13,	r14	;
    6e3a:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6e3e:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6e42:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6e46:	04 00 
    6e48:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6e4c:	06 00 
    6e4e:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6e52:	08 00 

00006e54 <.Loc.245.1>:
    }

}
    6e54:	30 41       	ret			

00006e56 <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    6e56:	0e 4d       	mov	r13,	r14	;

00006e58 <.LVL58>:
    6e58:	5e 06       	rlam	#2,	r14	;
    6e5a:	0d 5e       	add	r14,	r13	;
    6e5c:	5d 02       	rlam	#1,	r13	;
    6e5e:	3d 50 8e 51 	add	#20878,	r13	;#0x518e

00006e62 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    6e62:	0e 4d       	mov	r13,	r14	;
    6e64:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6e68:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6e6c:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6e70:	04 00 
    6e72:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6e76:	06 00 
    6e78:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6e7c:	08 00 

00006e7e <.Loc.245.1>:
}
    6e7e:	30 41       	ret			

00006e80 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    6e80:	0e 4d       	mov	r13,	r14	;

00006e82 <.LVL60>:
    6e82:	5e 06       	rlam	#2,	r14	;
    6e84:	0d 5e       	add	r14,	r13	;
    6e86:	5d 02       	rlam	#1,	r13	;
    6e88:	3d 50 70 51 	add	#20848,	r13	;#0x5170

00006e8c <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    6e8c:	0e 4d       	mov	r13,	r14	;
    6e8e:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    6e92:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    6e96:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    6e9a:	04 00 
    6e9c:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    6ea0:	06 00 
    6ea2:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    6ea6:	08 00 

00006ea8 <.Loc.245.1>:
}
    6ea8:	30 41       	ret			

00006eaa <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    6eaa:	4e 4c       	mov.b	r12,	r14	;

00006eac <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    6eac:	1d 93       	cmp	#1,	r13	;r3 As==01
    6eae:	14 24       	jz	$+42     	;abs 0x6ed8
    6eb0:	2d 93       	cmp	#2,	r13	;r3 As==10
    6eb2:	0b 24       	jz	$+24     	;abs 0x6eca
    6eb4:	4c 43       	clr.b	r12		;

00006eb6 <.LVL62>:
    6eb6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6eb8:	01 24       	jz	$+4      	;abs 0x6ebc

00006eba <.Loc.262.1>:
        default:
            return 0;

    }

}
    6eba:	30 41       	ret			

00006ebc <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    6ebc:	0c 4e       	mov	r14,	r12	;
    6ebe:	5c 06       	rlam	#2,	r12	;
    6ec0:	0c 5e       	add	r14,	r12	;
    6ec2:	5c 02       	rlam	#1,	r12	;
    6ec4:	1c 4c 56 51 	mov	20822(r12),r12	;0x05156

00006ec8 <.Loc.262.1>:
}
    6ec8:	30 41       	ret			

00006eca <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    6eca:	0c 4e       	mov	r14,	r12	;

00006ecc <.LVL64>:
    6ecc:	5c 06       	rlam	#2,	r12	;
    6ece:	0c 5e       	add	r14,	r12	;
    6ed0:	5c 02       	rlam	#1,	r12	;
    6ed2:	1c 4c 74 51 	mov	20852(r12),r12	;0x05174

00006ed6 <.Loc.262.1>:
}
    6ed6:	30 41       	ret			

00006ed8 <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    6ed8:	0c 4e       	mov	r14,	r12	;

00006eda <.LVL66>:
    6eda:	5c 06       	rlam	#2,	r12	;
    6edc:	0c 5e       	add	r14,	r12	;
    6ede:	5c 02       	rlam	#1,	r12	;
    6ee0:	1c 4c 92 51 	mov	20882(r12),r12	;0x05192

00006ee4 <.Loc.262.1>:
}
    6ee4:	30 41       	ret			

00006ee6 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    6ee6:	4e 4c       	mov.b	r12,	r14	;

00006ee8 <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    6ee8:	1d 93       	cmp	#1,	r13	;r3 As==01
    6eea:	14 24       	jz	$+42     	;abs 0x6f14
    6eec:	2d 93       	cmp	#2,	r13	;r3 As==10
    6eee:	0b 24       	jz	$+24     	;abs 0x6f06
    6ef0:	4c 43       	clr.b	r12		;

00006ef2 <.LVL68>:
    6ef2:	0d 93       	cmp	#0,	r13	;r3 As==00
    6ef4:	01 24       	jz	$+4      	;abs 0x6ef8

00006ef6 <.Loc.279.1>:
        default:
            return    0;
    }


}
    6ef6:	30 41       	ret			

00006ef8 <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    6ef8:	0c 4e       	mov	r14,	r12	;
    6efa:	5c 06       	rlam	#2,	r12	;
    6efc:	0c 5e       	add	r14,	r12	;
    6efe:	5c 02       	rlam	#1,	r12	;
    6f00:	5c 4c 54 51 	mov.b	20820(r12),r12	;0x05154

00006f04 <.Loc.279.1>:
}
    6f04:	30 41       	ret			

00006f06 <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    6f06:	0c 4e       	mov	r14,	r12	;

00006f08 <.LVL70>:
    6f08:	5c 06       	rlam	#2,	r12	;
    6f0a:	0c 5e       	add	r14,	r12	;
    6f0c:	5c 02       	rlam	#1,	r12	;
    6f0e:	5c 4c 72 51 	mov.b	20850(r12),r12	;0x05172

00006f12 <.Loc.279.1>:
}
    6f12:	30 41       	ret			

00006f14 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    6f14:	0c 4e       	mov	r14,	r12	;

00006f16 <.LVL72>:
    6f16:	5c 06       	rlam	#2,	r12	;
    6f18:	0c 5e       	add	r14,	r12	;
    6f1a:	5c 02       	rlam	#1,	r12	;
    6f1c:	5c 4c 90 51 	mov.b	20880(r12),r12	;0x05190

00006f20 <.Loc.279.1>:
}
    6f20:	30 41       	ret			

00006f22 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    6f22:	4e 4c       	mov.b	r12,	r14	;

00006f24 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    6f24:	1d 93       	cmp	#1,	r13	;r3 As==01
    6f26:	14 24       	jz	$+42     	;abs 0x6f50
    6f28:	2d 93       	cmp	#2,	r13	;r3 As==10
    6f2a:	0b 24       	jz	$+24     	;abs 0x6f42
    6f2c:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006f2e <.LVL74>:
    6f2e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f30:	01 24       	jz	$+4      	;abs 0x6f34

00006f32 <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    6f32:	30 41       	ret			

00006f34 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    6f34:	0c 4e       	mov	r14,	r12	;
    6f36:	5c 06       	rlam	#2,	r12	;
    6f38:	0c 5e       	add	r14,	r12	;
    6f3a:	5c 02       	rlam	#1,	r12	;
    6f3c:	1c 4c 52 51 	mov	20818(r12),r12	;0x05152

00006f40 <.Loc.294.1>:
}
    6f40:	30 41       	ret			

00006f42 <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    6f42:	0c 4e       	mov	r14,	r12	;

00006f44 <.LVL76>:
    6f44:	5c 06       	rlam	#2,	r12	;
    6f46:	0c 5e       	add	r14,	r12	;
    6f48:	5c 02       	rlam	#1,	r12	;
    6f4a:	1c 4c 70 51 	mov	20848(r12),r12	;0x05170

00006f4e <.Loc.294.1>:
}
    6f4e:	30 41       	ret			

00006f50 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    6f50:	0c 4e       	mov	r14,	r12	;

00006f52 <.LVL78>:
    6f52:	5c 06       	rlam	#2,	r12	;
    6f54:	0c 5e       	add	r14,	r12	;
    6f56:	5c 02       	rlam	#1,	r12	;
    6f58:	1c 4c 8e 51 	mov	20878(r12),r12	;0x0518e

00006f5c <.Loc.294.1>:
}
    6f5c:	30 41       	ret			

00006f5e <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    6f5e:	5c 0a       	rlam	#3,	r12	;

00006f60 <.LVL80>:
}
    6f60:	5c 4c 9a 51 	mov.b	20890(r12),r12	;0x0519a
    6f64:	30 41       	ret			

00006f66 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    6f66:	5c 0a       	rlam	#3,	r12	;

00006f68 <.LVL82>:
}
    6f68:	1c 4c 9c 51 	mov	20892(r12),r12	;0x0519c
    6f6c:	30 41       	ret			

00006f6e <GPIO_setAsOutputPin>:
#else
    0xFFFF
#endif
};

void GPIO_setAsOutputPin(uint8_t selectedPort, uint16_t selectedPins) {
    6f6e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006f72 <.Loc.113.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    6f72:	0e 4c       	mov	r12,	r14	;
    6f74:	5e 02       	rlam	#1,	r14	;
    6f76:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00006f7a <.Loc.122.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    6f7a:	1c b3       	bit	#1,	r12	;r3 As==01

00006f7c <L0^A>:
    6f7c:	02 20       	jnz	$+6      	;abs 0x6f82

00006f7e <.Loc.123.1>:
        selectedPins <<= 8;
    6f7e:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006f82 <.L2>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    6f82:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

00006f86 <.Loc.127.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    6f86:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

00006f8a <.Loc.128.1>:
    HWREG16(baseAddress + OFS_PADIR) |= selectedPins;
    6f8a:	8e dd 04 00 	bis	r13,	4(r14)	;

00006f8e <.Loc.130.1>:

    return;
}
    6f8e:	30 41       	ret			

00006f90 <GPIO_setAsInputPin>:

void GPIO_setAsInputPin(uint8_t selectedPort, uint16_t selectedPins) {
    6f90:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006f94 <.Loc.135.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    6f94:	0e 4c       	mov	r12,	r14	;
    6f96:	5e 02       	rlam	#1,	r14	;
    6f98:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00006f9c <.Loc.144.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    6f9c:	1c b3       	bit	#1,	r12	;r3 As==01
    6f9e:	02 20       	jnz	$+6      	;abs 0x6fa4

00006fa0 <.Loc.145.1>:
        selectedPins <<= 8;
    6fa0:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006fa4 <.L5>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    6fa4:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

00006fa8 <.Loc.149.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    6fa8:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

00006fac <.Loc.150.1>:
    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    6fac:	8e cd 04 00 	bic	r13,	4(r14)	;

00006fb0 <.Loc.151.1>:
    HWREG16(baseAddress + OFS_PAREN) &= ~selectedPins;
    6fb0:	8e cd 06 00 	bic	r13,	6(r14)	;

00006fb4 <.Loc.152.1>:
}
    6fb4:	30 41       	ret			

00006fb6 <GPIO_setAsPeripheralModuleFunctionOutputPin>:

void GPIO_setAsPeripheralModuleFunctionOutputPin(uint8_t selectedPort,
                                                      uint16_t selectedPins
                                                     ,uint8_t mode) {
    6fb6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6fba:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00006fbe <.Loc.158.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    6fbe:	0f 4c       	mov	r12,	r15	;
    6fc0:	5f 02       	rlam	#1,	r15	;
    6fc2:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

00006fc6 <.Loc.167.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    6fc6:	1c b3       	bit	#1,	r12	;r3 As==01
    6fc8:	02 20       	jnz	$+6      	;abs 0x6fce

00006fca <.Loc.168.1>:
        selectedPins <<= 8;
    6fca:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00006fce <.L7>:
    }

    HWREG16(baseAddress + OFS_PADIR) |= selectedPins;
    6fce:	8f dd 04 00 	bis	r13,	4(r15)	;

00006fd2 <.Loc.172.1>:
    switch (mode){
    6fd2:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    6fd4:	10 24       	jz	$+34     	;abs 0x6ff6
    6fd6:	7e 90 03 00 	cmp.b	#3,	r14	;
    6fda:	08 24       	jz	$+18     	;abs 0x6fec
    6fdc:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    6fde:	01 24       	jz	$+4      	;abs 0x6fe2

00006fe0 <.Loc.186.1>:
        case GPIO_TERNARY_MODULE_FUNCTION:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
            break;
    }
}
    6fe0:	30 41       	ret			

00006fe2 <.L11>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    6fe2:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

00006fe6 <.Loc.175.1>:
            HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    6fe6:	8f cd 0c 00 	bic	r13,	12(r15)	; 0x000c

00006fea <.Loc.176.1>:
}
    6fea:	30 41       	ret			

00006fec <.L9>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    6fec:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

00006ff0 <.Loc.183.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    6ff0:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

00006ff4 <.Loc.184.1>:
}
    6ff4:	30 41       	ret			

00006ff6 <.L8>:
            HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    6ff6:	8f cd 0a 00 	bic	r13,	10(r15)	; 0x000a

00006ffa <.Loc.179.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    6ffa:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

00006ffe <.Loc.180.1>:
}
    6ffe:	30 41       	ret			

00007000 <GPIO_setAsPeripheralModuleFunctionInputPin>:

void GPIO_setAsPeripheralModuleFunctionInputPin(uint8_t selectedPort,
                                                     uint16_t selectedPins
                                                     ,uint8_t mode) {
    7000:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7004:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007008 <.Loc.191.1>:
    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7008:	0f 4c       	mov	r12,	r15	;
    700a:	5f 02       	rlam	#1,	r15	;
    700c:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

00007010 <.Loc.200.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    7010:	1c b3       	bit	#1,	r12	;r3 As==01
    7012:	02 20       	jnz	$+6      	;abs 0x7018

00007014 <.Loc.201.1>:
        selectedPins <<= 8;
    7014:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007018 <.L13>:
    }

    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    7018:	0c 4d       	mov	r13,	r12	;

0000701a <.LVL12>:
    701a:	3c e3       	inv	r12		;

0000701c <.Loc.204.1>:
    701c:	8f cd 04 00 	bic	r13,	4(r15)	;

00007020 <.Loc.205.1>:
    switch (mode){
    7020:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    7022:	10 24       	jz	$+34     	;abs 0x7044
    7024:	7e 90 03 00 	cmp.b	#3,	r14	;
    7028:	08 24       	jz	$+18     	;abs 0x703a
    702a:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    702c:	01 24       	jz	$+4      	;abs 0x7030

0000702e <.Loc.219.1>:
        case GPIO_TERNARY_MODULE_FUNCTION:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
            break;
    }
}
    702e:	30 41       	ret			

00007030 <.L17>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    7030:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

00007034 <.Loc.208.1>:
            HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    7034:	8f fc 0c 00 	and	r12,	12(r15)	; 0x000c

00007038 <.Loc.209.1>:
}
    7038:	30 41       	ret			

0000703a <.L15>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    703a:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000703e <.Loc.216.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    703e:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

00007042 <.Loc.217.1>:
}
    7042:	30 41       	ret			

00007044 <.L14>:
            HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    7044:	8f fc 0a 00 	and	r12,	10(r15)	; 0x000a

00007048 <.Loc.212.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    7048:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000704c <.Loc.213.1>:
}
    704c:	30 41       	ret			

0000704e <GPIO_setOutputHighOnPin>:

void GPIO_setOutputHighOnPin (uint8_t selectedPort,
                                   uint16_t selectedPins) {
    704e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007052 <.Loc.224.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7052:	0e 4c       	mov	r12,	r14	;
    7054:	5e 02       	rlam	#1,	r14	;
    7056:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000705a <.Loc.233.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    705a:	1c b3       	bit	#1,	r12	;r3 As==01
    705c:	02 20       	jnz	$+6      	;abs 0x7062

0000705e <.Loc.234.1>:
        selectedPins <<= 8;
    705e:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007062 <.L19>:
    }

    HWREG16(baseAddress + OFS_PAOUT) |= selectedPins;
    7062:	8e dd 02 00 	bis	r13,	2(r14)	;

00007066 <.Loc.238.1>:
}
    7066:	30 41       	ret			

00007068 <GPIO_setOutputLowOnPin>:

void GPIO_setOutputLowOnPin (uint8_t selectedPort, uint16_t selectedPins) {
    7068:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000706c <.Loc.242.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    706c:	0e 4c       	mov	r12,	r14	;
    706e:	5e 02       	rlam	#1,	r14	;
    7070:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00007074 <.Loc.251.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    7074:	1c b3       	bit	#1,	r12	;r3 As==01
    7076:	02 20       	jnz	$+6      	;abs 0x707c

00007078 <.Loc.252.1>:
        selectedPins <<= 8;
    7078:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000707c <.L21>:
    }

    HWREG16(baseAddress + OFS_PAOUT) &= ~selectedPins;
    707c:	8e cd 02 00 	bic	r13,	2(r14)	;

00007080 <.Loc.256.1>:
}
    7080:	30 41       	ret			

00007082 <GPIO_toggleOutputOnPin>:

void GPIO_toggleOutputOnPin (uint8_t selectedPort, uint16_t selectedPins) {
    7082:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007086 <.Loc.260.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7086:	0e 4c       	mov	r12,	r14	;
    7088:	5e 02       	rlam	#1,	r14	;
    708a:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000708e <.Loc.269.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    708e:	1c b3       	bit	#1,	r12	;r3 As==01
    7090:	02 20       	jnz	$+6      	;abs 0x7096

00007092 <.Loc.270.1>:
        selectedPins <<= 8;
    7092:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007096 <.L23>:
    }

    HWREG16(baseAddress + OFS_PAOUT) ^= selectedPins;
    7096:	8e ed 02 00 	xor	r13,	2(r14)	;

0000709a <.Loc.274.1>:
}
    709a:	30 41       	ret			

0000709c <GPIO_setAsInputPinWithPullDownResistor>:

void GPIO_setAsInputPinWithPullDownResistor(uint8_t selectedPort,
                                                 uint16_t selectedPins) {
    709c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000070a0 <.Loc.279.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    70a0:	0e 4c       	mov	r12,	r14	;
    70a2:	5e 02       	rlam	#1,	r14	;
    70a4:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000070a8 <.Loc.288.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    70a8:	1c b3       	bit	#1,	r12	;r3 As==01
    70aa:	02 20       	jnz	$+6      	;abs 0x70b0

000070ac <.Loc.289.1>:
        selectedPins <<= 8;
    70ac:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000070b0 <.L25>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    70b0:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

000070b4 <.Loc.293.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    70b4:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

000070b8 <.Loc.295.1>:

    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    70b8:	8e cd 04 00 	bic	r13,	4(r14)	;

000070bc <.Loc.296.1>:
    HWREG16(baseAddress + OFS_PAREN) |= selectedPins;
    70bc:	8e dd 06 00 	bis	r13,	6(r14)	;

000070c0 <.Loc.297.1>:
    HWREG16(baseAddress + OFS_PAOUT) &= ~selectedPins;
    70c0:	8e cd 02 00 	bic	r13,	2(r14)	;

000070c4 <.Loc.298.1>:
}
    70c4:	30 41       	ret			

000070c6 <GPIO_setAsInputPinWithPullUpResistor>:

void GPIO_setAsInputPinWithPullUpResistor(uint8_t selectedPort,
                                                uint16_t selectedPins) {
    70c6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000070ca <.Loc.303.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    70ca:	0e 4c       	mov	r12,	r14	;
    70cc:	5e 02       	rlam	#1,	r14	;
    70ce:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000070d2 <.Loc.312.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    70d2:	1c b3       	bit	#1,	r12	;r3 As==01
    70d4:	02 20       	jnz	$+6      	;abs 0x70da

000070d6 <.Loc.313.1>:
        selectedPins <<= 8;
    70d6:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000070da <.L27>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    70da:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

000070de <.Loc.317.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    70de:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

000070e2 <.Loc.318.1>:
    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    70e2:	8e cd 04 00 	bic	r13,	4(r14)	;

000070e6 <.Loc.319.1>:
    HWREG16(baseAddress + OFS_PAREN) |= selectedPins;
    70e6:	8e dd 06 00 	bis	r13,	6(r14)	;

000070ea <.Loc.320.1>:
    HWREG16(baseAddress + OFS_PAOUT) |= selectedPins;
    70ea:	8e dd 02 00 	bis	r13,	2(r14)	;

000070ee <.Loc.321.1>:
}
    70ee:	30 41       	ret			

000070f0 <GPIO_getInputPinValue>:

uint8_t GPIO_getInputPinValue(uint8_t selectedPort,
                                   uint16_t selectedPins) {
    70f0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000070f4 <.Loc.326.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    70f4:	0e 4c       	mov	r12,	r14	;
    70f6:	5e 02       	rlam	#1,	r14	;
    70f8:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

000070fc <.Loc.335.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    70fc:	1c b3       	bit	#1,	r12	;r3 As==01
    70fe:	02 20       	jnz	$+6      	;abs 0x7104

00007100 <.Loc.336.1>:
        selectedPins <<= 8;
    7100:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007104 <.L29>:
    }

    uint16_t inputPinValue = HWREG16(baseAddress + OFS_PAIN) & (selectedPins);
    7104:	2d fe       	and	@r14,	r13	;

00007106 <.LVL31>:

    if(inputPinValue > 0){
    7106:	0c 43       	clr	r12		;
    7108:	0c 8d       	sub	r13,	r12	;

0000710a <.LVL32>:
    710a:	0c dd       	bis	r13,	r12	;

0000710c <.Loc.345.1>:
        return (GPIO_INPUT_PIN_HIGH);
    }
    return (GPIO_INPUT_PIN_LOW);
}
    710c:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7110:	30 41       	ret			

00007112 <GPIO_enableInterrupt>:

void GPIO_enableInterrupt(uint8_t selectedPort, uint16_t selectedPins) {
    7112:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007116 <.Loc.349.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7116:	0e 4c       	mov	r12,	r14	;
    7118:	5e 02       	rlam	#1,	r14	;
    711a:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000711e <.Loc.358.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    711e:	1c b3       	bit	#1,	r12	;r3 As==01
    7120:	02 20       	jnz	$+6      	;abs 0x7126

00007122 <.Loc.359.1>:
        selectedPins <<= 8;
    7122:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007126 <.L31>:
    }

    HWREG16(baseAddress + OFS_PAIE) |= selectedPins;
    7126:	8e dd 1a 00 	bis	r13,	26(r14)	; 0x001a

0000712a <.Loc.363.1>:
}
    712a:	30 41       	ret			

0000712c <GPIO_disableInterrupt>:

void GPIO_disableInterrupt(uint8_t selectedPort, uint16_t selectedPins) {
    712c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007130 <.Loc.367.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7130:	0e 4c       	mov	r12,	r14	;
    7132:	5e 02       	rlam	#1,	r14	;
    7134:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00007138 <.Loc.376.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    7138:	1c b3       	bit	#1,	r12	;r3 As==01
    713a:	02 20       	jnz	$+6      	;abs 0x7140

0000713c <.Loc.377.1>:
        selectedPins <<= 8;
    713c:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007140 <.L33>:
    }

    HWREG16(baseAddress + OFS_PAIE) &= ~selectedPins;
    7140:	8e cd 1a 00 	bic	r13,	26(r14)	; 0x001a

00007144 <.Loc.381.1>:
}
    7144:	30 41       	ret			

00007146 <GPIO_getInterruptStatus>:

uint16_t GPIO_getInterruptStatus(uint8_t selectedPort, uint16_t selectedPins) {
    7146:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000714a <.Loc.385.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    714a:	0e 4c       	mov	r12,	r14	;
    714c:	5e 02       	rlam	#1,	r14	;
    714e:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

00007152 <.Loc.394.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    7152:	1c b3       	bit	#1,	r12	;r3 As==01
    7154:	0a 20       	jnz	$+22     	;abs 0x716a

00007156 <.Loc.395.1>:
        if((baseAddress & 0x1) ^ 0x1)
    7156:	1e b3       	bit	#1,	r14	;r3 As==01
    7158:	04 20       	jnz	$+10     	;abs 0x7162

0000715a <.Loc.397.1>:
        {
            return (HWREG8(baseAddress + OFS_PAIFG_H) & selectedPins);
    715a:	5c 4e 1d 00 	mov.b	29(r14),r12	;0x0001d

0000715e <.LVL41>:
    715e:	0c fd       	and	r13,	r12	;

00007160 <.Loc.407.1>:
        }
    }
    else {
        return (HWREG16(baseAddress + OFS_PAIFG) & selectedPins);
    }
}
    7160:	30 41       	ret			

00007162 <.L36>:
            return (HWREG8(baseAddress + OFS_PAIFG) & selectedPins);
    7162:	5c 4e 1c 00 	mov.b	28(r14),r12	;0x0001c

00007166 <.Loc.401.1>:
    7166:	0c fd       	and	r13,	r12	;

00007168 <.Loc.407.1>:
}
    7168:	30 41       	ret			

0000716a <.L35>:
        return (HWREG16(baseAddress + OFS_PAIFG) & selectedPins);
    716a:	1c 4e 1c 00 	mov	28(r14),r12	;0x0001c
    716e:	0c fd       	and	r13,	r12	;

00007170 <.Loc.407.1>:
}
    7170:	30 41       	ret			

00007172 <GPIO_clearInterrupt>:

void GPIO_clearInterrupt(uint8_t selectedPort, uint16_t selectedPins) {
    7172:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007176 <.Loc.411.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7176:	0e 4c       	mov	r12,	r14	;
    7178:	5e 02       	rlam	#1,	r14	;
    717a:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000717e <.Loc.420.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    717e:	1c b3       	bit	#1,	r12	;r3 As==01
    7180:	02 20       	jnz	$+6      	;abs 0x7186

00007182 <.Loc.421.1>:
        selectedPins <<= 8;
    7182:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

00007186 <.L39>:
    }

    HWREG16(baseAddress + OFS_PAIFG) &= ~selectedPins;
    7186:	8e cd 1c 00 	bic	r13,	28(r14)	; 0x001c

0000718a <.Loc.425.1>:
}
    718a:	30 41       	ret			

0000718c <GPIO_selectInterruptEdge>:

void GPIO_selectInterruptEdge(uint8_t selectedPort, uint16_t selectedPins,
                                   uint8_t edgeSelect) {
    718c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7190:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007194 <.Loc.430.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    7194:	0f 4c       	mov	r12,	r15	;
    7196:	5f 02       	rlam	#1,	r15	;
    7198:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000719c <.Loc.439.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    719c:	1c b3       	bit	#1,	r12	;r3 As==01
    719e:	02 20       	jnz	$+6      	;abs 0x71a4

000071a0 <.Loc.440.1>:
        selectedPins <<= 8;
    71a0:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

000071a4 <.L41>:
    }

    if (GPIO_LOW_TO_HIGH_TRANSITION == edgeSelect){
    71a4:	0e 93       	cmp	#0,	r14	;r3 As==00
    71a6:	03 20       	jnz	$+8      	;abs 0x71ae

000071a8 <.Loc.444.1>:
        HWREG16(baseAddress + OFS_PAIES) &= ~selectedPins;
    71a8:	8f cd 18 00 	bic	r13,	24(r15)	; 0x0018

000071ac <.Loc.449.1>:
    }
    else {
        HWREG16(baseAddress + OFS_PAIES) |= selectedPins;
    }
}
    71ac:	30 41       	ret			

000071ae <.L42>:
        HWREG16(baseAddress + OFS_PAIES) |= selectedPins;
    71ae:	8f dd 18 00 	bis	r13,	24(r15)	; 0x0018

000071b2 <.Loc.449.1>:
}
    71b2:	30 41       	ret			

000071b4 <__mulhi2>:
    71b4:	02 12       	push	r2		;
    71b6:	32 c2       	dint			
    71b8:	03 43       	nop			
    71ba:	82 4c c0 04 	mov	r12,	&0x04c0	;
    71be:	82 4d c8 04 	mov	r13,	&0x04c8	;
    71c2:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    71c6:	00 13       	reti			

000071c8 <_exit>:
    71c8:	ff 3f       	jmp	$+0      	;abs 0x71c8

000071ca <memset>:
    71ca:	0e 5c       	add	r12,	r14	;

000071cc <L0^A>:
    71cc:	0f 4c       	mov	r12,	r15	;

000071ce <.L2>:
    71ce:	0f 9e       	cmp	r14,	r15	;
    71d0:	01 20       	jnz	$+4      	;abs 0x71d4

000071d2 <.Loc.104.1>:
    71d2:	30 41       	ret			

000071d4 <.L3>:
    71d4:	1f 53       	inc	r15		;

000071d6 <.LVL4>:
    71d6:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    71da:	f9 3f       	jmp	$-12     	;abs 0x71ce
