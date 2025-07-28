
bin/thread_backup_test:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	64 c3       	bic.b	#2,	r4	;r3 As==10

Disassembly of section .text:

0000a844 <__crt0_start>:
    a844:	31 40 00 24 	mov	#9216,	r1	;#0x2400

0000a848 <__crt0_init_bss>:
    a848:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

0000a84c <.Loc.76.1>:
    a84c:	0d 43       	clr	r13		;

0000a84e <.Loc.77.1>:
    a84e:	3e 40 62 00 	mov	#98,	r14	;#0x0062

0000a852 <.Loc.81.1>:
    a852:	b0 12 de c9 	call	#-13858	;#0xc9de

0000a856 <__crt0_run_init_array>:
    a856:	34 40 24 45 	mov	#17700,	r4	;#0x4524

0000a85a <.Loc.189.1>:
    a85a:	35 40 34 45 	mov	#17716,	r5	;#0x4534

0000a85e <.Loc.190.1>:
    a85e:	26 43       	mov	#2,	r6	;r3 As==10

0000a860 <.Loc.191.1>:
    a860:	b0 12 6e a8 	call	#-22418	;#0xa86e

0000a864 <__crt0_call_main>:
    a864:	0c 43       	clr	r12		;

0000a866 <.Loc.254.1>:
    a866:	b0 12 7c a8 	call	#-22404	;#0xa87c

0000a86a <__crt0_call_exit>:
    a86a:	b0 12 dc c9 	call	#-13860	;#0xc9dc

0000a86e <__crt0_run_array>:
    a86e:	05 94       	cmp	r4,	r5	;

0000a870 <.Loc.294.1>:
    a870:	04 24       	jz	$+10     	;abs 0xa87a

0000a872 <.Loc.295.1>:
    a872:	27 44       	mov	@r4,	r7	;

0000a874 <.Loc.296.1>:
    a874:	04 56       	add	r6,	r4	;

0000a876 <.Loc.297.1>:
    a876:	87 12       	call	r7		;

0000a878 <.Loc.298.1>:
    a878:	fa 3f       	jmp	$-10     	;abs 0xa86e

0000a87a <_msp430_run_done>:
    a87a:	30 41       	ret			

0000a87c <main>:
#include "ink/ink.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    a87c:	
0000a87e <L0^A>:
    a87e:	80 5a 5c 01 	add	r10,	0x015c	; PC rel. 0xa9dc

0000a882 <.Loc.10.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    a882:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

0000a886 <.Loc.12.1>:
    /* Set the GPIO pin for the LED. */
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0);
    a886:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a888:	5c 43       	mov.b	#1,	r12	;r3 As==01
    a88a:	b0 12 82 c7 	call	#-14462	;#0xc782

0000a88e <.Loc.15.1>:

    /* Start the scheduler. */
    ink_scheduler_run();  // TODO: replace with call to custom scheduler.
    a88e:	b0 12 80 b1 	call	#-20096	;#0xb180

0000a892 <.Loc.16.1>:
}
    a892:	4c 43       	clr.b	r12		;
    a894:	30 41       	ret			

0000a896 <t_end>:
}

static void* t_end()
{
    return (void*)0;
}
    a896:	4c 43       	clr.b	r12		;
    a898:	30 41       	ret			

0000a89a <__ink_entry_task>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a89a:	b0 12 60 ab 	call	#-21664	;#0xab60

0000a89e <.LVL1>:
__INK_GET_VAR_FROM_BUF(blink_counter) = 0;
    a89e:	5c 06       	rlam	#2,	r12	;

0000a8a0 <.Loc.26.1>:
    a8a0:	1d 4c 36 45 	mov	17718(r12),r13	;0x04536

0000a8a4 <.Loc.26.1>:
    a8a4:	3c 50 34 45 	add	#17716,	r12	;#0x4534

0000a8a8 <.LVL3>:
    a8a8:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000a8ac <.Loc.27.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(test_array)[0] = 0xAB;
    a8ac:	2c 4c       	mov	@r12,	r12	;

0000a8ae <.LVL4>:
    a8ae:	fc 40 ab ff 	mov.b	#-85,	0(r12)	;#0xffab
    a8b2:	00 00 

0000a8b4 <.Loc.29.1>:
}
    a8b4:	3c 40 ba a8 	mov	#-22342,r12	;#0xa8ba
    a8b8:	30 41       	ret			

0000a8ba <t_blink_on>:
{
    a8ba:	0a 15       	pushm	#1,	r10	;16-bit words

0000a8bc <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a8bc:	b0 12 60 ab 	call	#-21664	;#0xab60
    a8c0:	0a 4c       	mov	r12,	r10	;

0000a8c2 <.Loc.35.1>:
GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    a8c2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a8c4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    a8c6:	b0 12 62 c8 	call	#-14238	;#0xc862

0000a8ca <.Loc.36.1>:
    __INK_GET_VAR_FROM_BUF(blink_counter) += 1;
    a8ca:	5a 06       	rlam	#2,	r10	;
    a8cc:	1c 4a 36 45 	mov	17718(r10),r12	;0x04536

0000a8d0 <.Loc.36.1>:
    a8d0:	9c 53 00 00 	inc	0(r12)		;

0000a8d4 <.Loc.38.1>:
    __delay_cycles(400000);
    a8d4:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a8d6:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a8da:	0e 43       	clr	r14		;

0000a8dc <.L1^B1>:
    a8dc:	1d 83       	dec	r13		;
    a8de:	0e 73       	sbc	r14		;
    a8e0:	fd 23       	jnz	$-4      	;abs 0xa8dc
    a8e2:	0d 93       	cmp	#0,	r13	;r3 As==00
    a8e4:	fb 23       	jnz	$-8      	;abs 0xa8dc
    a8e6:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a8e8 <L0^A>:
    a8e8:	00 3c       	jmp	$+2      	;abs 0xa8ea

0000a8ea <L0^A>:
    a8ea:	00 3c       	jmp	$+2      	;abs 0xa8ec
    a8ec:	03 43       	nop			

0000a8ee <.Loc.40.1>:
}
    a8ee:	3c 40 f6 a8 	mov	#-22282,r12	;#0xa8f6
    a8f2:	0a 17       	popm	#1,	r10	;16-bit words

0000a8f4 <.LCFI1>:
    a8f4:	30 41       	ret			

0000a8f6 <t_blink_off>:
{
    a8f6:	0a 15       	pushm	#1,	r10	;16-bit words

0000a8f8 <.LCFI2>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a8f8:	b0 12 60 ab 	call	#-21664	;#0xab60
    a8fc:	0a 4c       	mov	r12,	r10	;

0000a8fe <.Loc.46.1>:
GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    a8fe:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a900:	5c 43       	mov.b	#1,	r12	;r3 As==01
    a902:	b0 12 7c c8 	call	#-14212	;#0xc87c

0000a906 <.Loc.48.1>:
    __delay_cycles(400000);
    a906:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a908:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a90c:	0e 43       	clr	r14		;

0000a90e <.L1^B2>:
    a90e:	1d 83       	dec	r13		;
    a910:	0e 73       	sbc	r14		;
    a912:	fd 23       	jnz	$-4      	;abs 0xa90e
    a914:	0d 93       	cmp	#0,	r13	;r3 As==00
    a916:	fb 23       	jnz	$-8      	;abs 0xa90e
    a918:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a91a <L0^A>:
    a91a:	00 3c       	jmp	$+2      	;abs 0xa91c

0000a91c <L0^A>:
    a91c:	00 3c       	jmp	$+2      	;abs 0xa91e
    a91e:	03 43       	nop			

0000a920 <.Loc.50.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == MAX_BLINK)
    a920:	5a 06       	rlam	#2,	r10	;
    a922:	1d 4a 36 45 	mov	17718(r10),r13	;0x04536

0000a926 <.Loc.55.1>:
    return t_blink_on;
    a926:	3c 40 ba a8 	mov	#-22342,r12	;#0xa8ba

0000a92a <.Loc.50.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == MAX_BLINK)
    a92a:	bd 90 05 00 	cmp	#5,	0(r13)	;
    a92e:	00 00 
    a930:	02 24       	jz	$+6      	;abs 0xa936

0000a932 <.Loc.56.1>:
}
    a932:	0a 17       	popm	#1,	r10	;16-bit words

0000a934 <.LCFI3>:
    a934:	30 41       	ret			

0000a936 <.L8>:
        return t_end;
    a936:	3c 40 96 a8 	mov	#-22378,r12	;#0xa896

0000a93a <.Loc.56.1>:
}
    a93a:	0a 17       	popm	#1,	r10	;16-bit words

0000a93c <.LCFI5>:
    a93c:	30 41       	ret			

0000a93e <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    a93e:	b0 12 a6 ab 	call	#-21594	;#0xaba6
    a942:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    a944:	01 20       	jnz	$+4      	;abs 0xa948

0000a946 <.Loc.23.1>:
    a946:	30 41       	ret			

0000a948 <.L14>:
    a948:	5e 43       	mov.b	#1,	r14	;r3 As==01
    a94a:	3d 40 9a a8 	mov	#-22374,r13	;#0xa89a
    a94e:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    a952:	b0 12 14 ac 	call	#-21484	;#0xac14

0000a956 <.Loc.23.1>:
    a956:	30 41       	ret			

0000a958 <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS_ARRAY(test_array);
    a958:	3c 40 34 45 	mov	#17716,	r12	;#0x4534
    a95c:	bc 40 3e 52 	mov	#21054,	0(r12)	;#0x523e
    a960:	00 00 

0000a962 <.Loc.63.1>:
    a962:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02
    a966:	3d 50 3e 52 	add	#21054,	r13	;#0x523e
    a96a:	8c 4d 04 00 	mov	r13,	4(r12)	;

0000a96e <.Loc.63.1>:
    __INK_SET_BUFFER_POINTERS(blink_counter);
    a96e:	bc 40 3c 52 	mov	#21052,	2(r12)	;#0x523c
    a972:	02 00 

0000a974 <.Loc.64.1>:
    a974:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02
    a978:	3d 50 3c 52 	add	#21052,	r13	;#0x523c
    a97c:	8c 4d 06 00 	mov	r13,	6(r12)	;

0000a980 <.Loc.64.1>:
}
    a980:	30 41       	ret			

0000a982 <t_end>:
}

static void* t_end()
{
    return (void*)0;
}
    a982:	4c 43       	clr.b	r12		;
    a984:	30 41       	ret			

0000a986 <__ink_entry_task>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a986:	b0 12 60 ab 	call	#-21664	;#0xab60

0000a98a <.LVL1>:
__INK_GET_VAR_FROM_BUF(blink_counter) = 0;
    a98a:	5c 06       	rlam	#2,	r12	;

0000a98c <.Loc.26.1>:
    a98c:	1d 4c 3e 45 	mov	17726(r12),r13	;0x0453e

0000a990 <.Loc.26.1>:
    a990:	3c 50 3c 45 	add	#17724,	r12	;#0x453c

0000a994 <.LVL3>:
    a994:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000a998 <.Loc.27.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(test_array)[0] = 0xAB;
    a998:	2c 4c       	mov	@r12,	r12	;

0000a99a <.LVL4>:
    a99a:	fc 40 ab ff 	mov.b	#-85,	0(r12)	;#0xffab
    a99e:	00 00 

0000a9a0 <.Loc.29.1>:
}
    a9a0:	3c 40 a6 a9 	mov	#-22106,r12	;#0xa9a6
    a9a4:	30 41       	ret			

0000a9a6 <t_blink_on>:
{
    a9a6:	0a 15       	pushm	#1,	r10	;16-bit words

0000a9a8 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a9a8:	b0 12 60 ab 	call	#-21664	;#0xab60
    a9ac:	0a 4c       	mov	r12,	r10	;

0000a9ae <.Loc.35.1>:
GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    a9ae:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a9b0:	5c 43       	mov.b	#1,	r12	;r3 As==01
    a9b2:	b0 12 62 c8 	call	#-14238	;#0xc862

0000a9b6 <.Loc.36.1>:
    __INK_GET_VAR_FROM_BUF(blink_counter) += 1;
    a9b6:	5a 06       	rlam	#2,	r10	;
    a9b8:	1c 4a 3e 45 	mov	17726(r10),r12	;0x0453e

0000a9bc <.Loc.36.1>:
    a9bc:	9c 53 00 00 	inc	0(r12)		;

0000a9c0 <.Loc.38.1>:
    __delay_cycles(400000);
    a9c0:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a9c2:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a9c6:	0e 43       	clr	r14		;

0000a9c8 <.L1^B1>:
    a9c8:	1d 83       	dec	r13		;
    a9ca:	0e 73       	sbc	r14		;
    a9cc:	fd 23       	jnz	$-4      	;abs 0xa9c8
    a9ce:	0d 93       	cmp	#0,	r13	;r3 As==00
    a9d0:	fb 23       	jnz	$-8      	;abs 0xa9c8
    a9d2:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a9d4 <L0^A>:
    a9d4:	00 3c       	jmp	$+2      	;abs 0xa9d6

0000a9d6 <L0^A>:
    a9d6:	00 3c       	jmp	$+2      	;abs 0xa9d8
    a9d8:	03 43       	nop			

0000a9da <.Loc.40.1>:
}
    a9da:	3c 40 e2 a9 	mov	#-22046,r12	;#0xa9e2
    a9de:	0a 17       	popm	#1,	r10	;16-bit words

0000a9e0 <.LCFI1>:
    a9e0:	30 41       	ret			

0000a9e2 <t_blink_off>:
{
    a9e2:	0a 15       	pushm	#1,	r10	;16-bit words

0000a9e4 <.LCFI2>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a9e4:	b0 12 60 ab 	call	#-21664	;#0xab60
    a9e8:	0a 4c       	mov	r12,	r10	;

0000a9ea <.Loc.46.1>:
GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    a9ea:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a9ec:	5c 43       	mov.b	#1,	r12	;r3 As==01
    a9ee:	b0 12 7c c8 	call	#-14212	;#0xc87c

0000a9f2 <.Loc.48.1>:
    __delay_cycles(400000);
    a9f2:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a9f4:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a9f8:	0e 43       	clr	r14		;

0000a9fa <.L1^B2>:
    a9fa:	1d 83       	dec	r13		;
    a9fc:	0e 73       	sbc	r14		;
    a9fe:	fd 23       	jnz	$-4      	;abs 0xa9fa
    aa00:	0d 93       	cmp	#0,	r13	;r3 As==00
    aa02:	fb 23       	jnz	$-8      	;abs 0xa9fa
    aa04:	1d 16       	popm.a	#2,	r14	;20-bit words

0000aa06 <L0^A>:
    aa06:	00 3c       	jmp	$+2      	;abs 0xaa08

0000aa08 <L0^A>:
    aa08:	00 3c       	jmp	$+2      	;abs 0xaa0a
    aa0a:	03 43       	nop			

0000aa0c <.Loc.50.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == MAX_BLINK)
    aa0c:	5a 06       	rlam	#2,	r10	;
    aa0e:	1d 4a 3e 45 	mov	17726(r10),r13	;0x0453e

0000aa12 <.Loc.55.1>:
    return t_blink_on;
    aa12:	3c 40 a6 a9 	mov	#-22106,r12	;#0xa9a6

0000aa16 <.Loc.50.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == MAX_BLINK)
    aa16:	bd 90 05 00 	cmp	#5,	0(r13)	;
    aa1a:	00 00 
    aa1c:	02 24       	jz	$+6      	;abs 0xaa22

0000aa1e <.Loc.56.1>:
}
    aa1e:	0a 17       	popm	#1,	r10	;16-bit words

0000aa20 <.LCFI3>:
    aa20:	30 41       	ret			

0000aa22 <.L8>:
        return t_end;
    aa22:	3c 40 82 a9 	mov	#-22142,r12	;#0xa982

0000aa26 <.Loc.56.1>:
}
    aa26:	0a 17       	popm	#1,	r10	;16-bit words

0000aa28 <.LCFI5>:
    aa28:	30 41       	ret			

0000aa2a <__ink_create_thread_16>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(16, true)
    aa2a:	b0 12 a6 ab 	call	#-21594	;#0xaba6
    aa2e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    aa30:	01 20       	jnz	$+4      	;abs 0xaa34

0000aa32 <.Loc.23.1>:
    aa32:	30 41       	ret			

0000aa34 <.L14>:
    aa34:	5e 43       	mov.b	#1,	r14	;r3 As==01
    aa36:	3d 40 86 a9 	mov	#-22138,r13	;#0xa986
    aa3a:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
    aa3e:	b0 12 14 ac 	call	#-21484	;#0xac14

0000aa42 <.Loc.23.1>:
    aa42:	30 41       	ret			

0000aa44 <__ink_initialize_shared_vars_16>:
__INK_INITIALIZE_SHARED_VARS_FUNC(16){
    __INK_SET_BUFFER_POINTERS_ARRAY(test_array);
    aa44:	3c 40 3c 45 	mov	#17724,	r12	;#0x453c
    aa48:	bc 40 48 52 	mov	#21064,	0(r12)	;#0x5248
    aa4c:	00 00 

0000aa4e <.Loc.63.1>:
    aa4e:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02
    aa52:	3d 50 48 52 	add	#21064,	r13	;#0x5248
    aa56:	8c 4d 04 00 	mov	r13,	4(r12)	;

0000aa5a <.Loc.63.1>:
    __INK_SET_BUFFER_POINTERS(blink_counter);
    aa5a:	bc 40 46 52 	mov	#21062,	2(r12)	;#0x5246
    aa5e:	02 00 

0000aa60 <.Loc.64.1>:
    aa60:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02
    aa64:	3d 50 46 52 	add	#21062,	r13	;#0x5246
    aa68:	8c 4d 06 00 	mov	r13,	6(r12)	;

0000aa6c <.Loc.64.1>:
}
    aa6c:	30 41       	ret			

0000aa6e <t_end>:
}

static void* t_end()
{
    return (void*)0;
}
    aa6e:	4c 43       	clr.b	r12		;
    aa70:	30 41       	ret			

0000aa72 <__ink_entry_task>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    aa72:	b0 12 60 ab 	call	#-21664	;#0xab60

0000aa76 <.LVL1>:
__INK_GET_VAR_FROM_BUF(blink_counter) = 0;
    aa76:	5c 06       	rlam	#2,	r12	;

0000aa78 <.Loc.26.1>:
    aa78:	1d 4c 46 45 	mov	17734(r12),r13	;0x04546

0000aa7c <.Loc.26.1>:
    aa7c:	3c 50 44 45 	add	#17732,	r12	;#0x4544

0000aa80 <.LVL3>:
    aa80:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

0000aa84 <.Loc.27.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(test_array)[0] = 0xAB;
    aa84:	2c 4c       	mov	@r12,	r12	;

0000aa86 <.LVL4>:
    aa86:	fc 40 ab ff 	mov.b	#-85,	0(r12)	;#0xffab
    aa8a:	00 00 

0000aa8c <.Loc.29.1>:
}
    aa8c:	3c 40 92 aa 	mov	#-21870,r12	;#0xaa92
    aa90:	30 41       	ret			

0000aa92 <t_blink_on>:
{
    aa92:	0a 15       	pushm	#1,	r10	;16-bit words

0000aa94 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    aa94:	b0 12 60 ab 	call	#-21664	;#0xab60
    aa98:	0a 4c       	mov	r12,	r10	;

0000aa9a <.Loc.35.1>:
GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    aa9a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    aa9c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    aa9e:	b0 12 62 c8 	call	#-14238	;#0xc862

0000aaa2 <.Loc.36.1>:
    __INK_GET_VAR_FROM_BUF(blink_counter) += 1;
    aaa2:	5a 06       	rlam	#2,	r10	;
    aaa4:	1c 4a 46 45 	mov	17734(r10),r12	;0x04546

0000aaa8 <.Loc.36.1>:
    aaa8:	9c 53 00 00 	inc	0(r12)		;

0000aaac <.Loc.38.1>:
    __delay_cycles(400000);
    aaac:	1e 14       	pushm.a	#2,	r14	;20-bit words
    aaae:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    aab2:	0e 43       	clr	r14		;

0000aab4 <.L1^B1>:
    aab4:	1d 83       	dec	r13		;
    aab6:	0e 73       	sbc	r14		;
    aab8:	fd 23       	jnz	$-4      	;abs 0xaab4
    aaba:	0d 93       	cmp	#0,	r13	;r3 As==00
    aabc:	fb 23       	jnz	$-8      	;abs 0xaab4
    aabe:	1d 16       	popm.a	#2,	r14	;20-bit words

0000aac0 <L0^A>:
    aac0:	00 3c       	jmp	$+2      	;abs 0xaac2

0000aac2 <L0^A>:
    aac2:	00 3c       	jmp	$+2      	;abs 0xaac4
    aac4:	03 43       	nop			

0000aac6 <.Loc.40.1>:
}
    aac6:	3c 40 ce aa 	mov	#-21810,r12	;#0xaace
    aaca:	0a 17       	popm	#1,	r10	;16-bit words

0000aacc <.LCFI1>:
    aacc:	30 41       	ret			

0000aace <t_blink_off>:
{
    aace:	0a 15       	pushm	#1,	r10	;16-bit words

0000aad0 <.LCFI2>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    aad0:	b0 12 60 ab 	call	#-21664	;#0xab60
    aad4:	0a 4c       	mov	r12,	r10	;

0000aad6 <.Loc.46.1>:
GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    aad6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    aad8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    aada:	b0 12 7c c8 	call	#-14212	;#0xc87c

0000aade <.Loc.48.1>:
    __delay_cycles(400000);
    aade:	1e 14       	pushm.a	#2,	r14	;20-bit words
    aae0:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    aae4:	0e 43       	clr	r14		;

0000aae6 <.L1^B2>:
    aae6:	1d 83       	dec	r13		;
    aae8:	0e 73       	sbc	r14		;
    aaea:	fd 23       	jnz	$-4      	;abs 0xaae6
    aaec:	0d 93       	cmp	#0,	r13	;r3 As==00
    aaee:	fb 23       	jnz	$-8      	;abs 0xaae6
    aaf0:	1d 16       	popm.a	#2,	r14	;20-bit words

0000aaf2 <L0^A>:
    aaf2:	00 3c       	jmp	$+2      	;abs 0xaaf4

0000aaf4 <L0^A>:
    aaf4:	00 3c       	jmp	$+2      	;abs 0xaaf6
    aaf6:	03 43       	nop			

0000aaf8 <.Loc.50.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == MAX_BLINK)
    aaf8:	5a 06       	rlam	#2,	r10	;
    aafa:	1d 4a 46 45 	mov	17734(r10),r13	;0x04546

0000aafe <.Loc.55.1>:
    return t_blink_on;
    aafe:	3c 40 92 aa 	mov	#-21870,r12	;#0xaa92

0000ab02 <.Loc.50.1>:
    if (__INK_GET_VAR_FROM_BUF(blink_counter) == MAX_BLINK)
    ab02:	bd 90 05 00 	cmp	#5,	0(r13)	;
    ab06:	00 00 
    ab08:	02 24       	jz	$+6      	;abs 0xab0e

0000ab0a <.Loc.56.1>:
}
    ab0a:	0a 17       	popm	#1,	r10	;16-bit words

0000ab0c <.LCFI3>:
    ab0c:	30 41       	ret			

0000ab0e <.L8>:
        return t_end;
    ab0e:	3c 40 6e aa 	mov	#-21906,r12	;#0xaa6e

0000ab12 <.Loc.56.1>:
}
    ab12:	0a 17       	popm	#1,	r10	;16-bit words

0000ab14 <.LCFI5>:
    ab14:	30 41       	ret			

0000ab16 <__ink_create_thread_17>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(17, true)
    ab16:	b0 12 a6 ab 	call	#-21594	;#0xaba6
    ab1a:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    ab1c:	01 20       	jnz	$+4      	;abs 0xab20

0000ab1e <.Loc.23.1>:
    ab1e:	30 41       	ret			

0000ab20 <.L14>:
    ab20:	5e 43       	mov.b	#1,	r14	;r3 As==01
    ab22:	3d 40 72 aa 	mov	#-21902,r13	;#0xaa72
    ab26:	7c 40 11 00 	mov.b	#17,	r12	;#0x0011
    ab2a:	b0 12 14 ac 	call	#-21484	;#0xac14

0000ab2e <.Loc.23.1>:
    ab2e:	30 41       	ret			

0000ab30 <__ink_initialize_shared_vars_17>:
__INK_INITIALIZE_SHARED_VARS_FUNC(17){
    __INK_SET_BUFFER_POINTERS_ARRAY(test_array);
    ab30:	3c 40 44 45 	mov	#17732,	r12	;#0x4544
    ab34:	bc 40 30 56 	mov	#22064,	0(r12)	;#0x5630
    ab38:	00 00 

0000ab3a <.Loc.63.1>:
    ab3a:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02
    ab3e:	3d 50 30 56 	add	#22064,	r13	;#0x5630
    ab42:	8c 4d 04 00 	mov	r13,	4(r12)	;

0000ab46 <.Loc.63.1>:
    __INK_SET_BUFFER_POINTERS(blink_counter);
    ab46:	bc 40 2e 56 	mov	#22062,	2(r12)	;#0x562e
    ab4a:	02 00 

0000ab4c <.Loc.64.1>:
    ab4c:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02
    ab50:	3d 50 2e 56 	add	#22062,	r13	;#0x562e
    ab54:	8c 4d 06 00 	mov	r13,	6(r12)	;

0000ab58 <.Loc.64.1>:
}
    ab58:	30 41       	ret			

0000ab5a <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    ab5a:	3c 50 02 2b 	add	#11010,	r12	;#0x2b02

0000ab5e <.LVL1>:
    ab5e:	30 41       	ret			

0000ab60 <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    ab60:	5c 42 68 51 	mov.b	&0x5168,r12	;0x5168
    ab64:	30 41       	ret			

0000ab66 <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    ab66:	3c 90 3c 52 	cmp	#21052,	r12	;#0x523c
    ab6a:	06 28       	jnc	$+14     	;abs 0xab78

0000ab6c <.Loc.27.1>:
    ab6c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab6e:	3c 90 3e 7d 	cmp	#32062,	r12	;#0x7d3e
    ab72:	04 2c       	jc	$+10     	;abs 0xab7c
    ab74:	4c 4d       	mov.b	r13,	r12	;

0000ab76 <.L5>:
}
    ab76:	30 41       	ret			

0000ab78 <.L7>:
    ab78:	4c 43       	clr.b	r12		;

0000ab7a <.LVL5>:
    ab7a:	30 41       	ret			

0000ab7c <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    ab7c:	4d 43       	clr.b	r13		;
    ab7e:	4c 4d       	mov.b	r13,	r12	;

0000ab80 <.LVL7>:
    ab80:	fa 3f       	jmp	$-10     	;abs 0xab76

0000ab82 <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    ab82:	0a 15       	pushm	#1,	r10	;16-bit words

0000ab84 <.LCFI0>:
    ab84:	0a 4c       	mov	r12,	r10	;

0000ab86 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    ab86:	3c 90 3c 52 	cmp	#21052,	r12	;#0x523c
    ab8a:	0a 28       	jnc	$+22     	;abs 0xaba0
    ab8c:	3c 90 3e 7d 	cmp	#32062,	r12	;#0x7d3e
    ab90:	07 2c       	jc	$+16     	;abs 0xaba0

0000ab92 <.LBB14>:
    return address + buffer_offset * buffer_index;
    ab92:	5c 42 68 51 	mov.b	&0x5168,r12	;0x5168

0000ab96 <.LVL11>:
    ab96:	3d 40 02 2b 	mov	#11010,	r13	;#0x2b02

0000ab9a <.LVL12>:
    ab9a:	b0 12 c8 c9 	call	#-13880	;#0xc9c8

0000ab9e <.LVL13>:
    ab9e:	0a 5c       	add	r12,	r10	;

0000aba0 <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    aba0:	0c 4a       	mov	r10,	r12	;
    aba2:	0a 17       	popm	#1,	r10	;16-bit words

0000aba4 <.LCFI1>:
    aba4:	30 41       	ret			

0000aba6 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    aba6:	
0000aba8 <L0^A>:
    aba8:	4c 45       	mov.b	r5,	r12	;
    abaa:	30 41       	ret			

0000abac <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    abac:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    abb0:	30 41       	ret			

0000abb2 <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    abb2:	b0 12 0c b4 	call	#-19444	;#0xb40c

0000abb6 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    abb6:	c2 93 4c 45 	cmp.b	#0,	&0x454c	;r3 As==00
    abba:	22 20       	jnz	$+70     	;abs 0xac00

0000abbc <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    abbc:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000abc0 <.Loc.50.1>:
    abc0:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

0000abc4 <.Loc.50.1>:
    abc4:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000abc8 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    abc8:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    abcc:	02 02 

0000abce <.Loc.51.1>:
    abce:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    abd2:	04 02 

0000abd4 <.Loc.51.1>:
    abd4:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    abd8:	02 02 

0000abda <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    abda:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    abde:	22 02 

0000abe0 <.Loc.52.1>:
    abe0:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    abe4:	24 02 

0000abe6 <.Loc.52.1>:
    abe6:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    abea:	22 02 

0000abec <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    abec:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    abf0:	22 02 

0000abf2 <.Loc.53.1>:
    abf2:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    abf6:	24 02 

0000abf8 <.Loc.53.1>:
    abf8:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    abfc:	22 02 

0000abfe <.Loc.53.1>:
#endif
}
    abfe:	30 41       	ret			

0000ac00 <.L6>:
        __scheduler_boot_init();
    ac00:	b0 12 64 b4 	call	#-19356	;#0xb464

0000ac04 <.Loc.36.1>:
        __events_boot_init();
    ac04:	b0 12 86 b1 	call	#-20090	;#0xb186
    ac08:	d9 3f       	jmp	$-76     	;abs 0xabbc

0000ac0a <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    ac0a:	c2 43 4c 45 	mov.b	#0,	&0x454c	;r3 As==00

0000ac0e <.Loc.69.1>:
    __ink_initialized = true;
    ac0e:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

0000ac12 <.Loc.70.1>:
    ac12:	30 41       	ret			

0000ac14 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    ac14:	2a 15       	pushm	#3,	r10	;16-bit words

0000ac16 <L0^A>:
    ac16:	21 83       	decd	r1		;

0000ac18 <.LCFI1>:
    ac18:	4a 4c       	mov.b	r12,	r10	;
    ac1a:	09 4d       	mov	r13,	r9	;
    ac1c:	48 4e       	mov.b	r14,	r8	;

0000ac1e <.Loc.147.1>:
    if (!ink_is_first_boot())
    ac1e:	b0 12 a6 ab 	call	#-21594	;#0xaba6

0000ac22 <.LVL1>:
    ac22:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    ac24:	56 24       	jz	$+174    	;abs 0xacd2

0000ac26 <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    ac26:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    ac2a:	4c 9a       	cmp.b	r10,	r12	;
    ac2c:	47 28       	jnc	$+144    	;abs 0xacbc
    ac2e:	0c 4a       	mov	r10,	r12	;
    ac30:	5c 02       	rlam	#1,	r12	;
    ac32:	3c 50 3c ac 	add	#-21444,r12	;#0xac3c
    ac36:	2c 4c       	mov	@r12,	r12	;
    ac38:	00 4c       	br	r12		;
	...

0000ac3c <.L6>:
    ac3c:	bc ac 54 b1 	dadd	@r12+,	-20140(r12); 0xb154
    ac40:	40 b1       	bit.b	r1,	r0	;
    ac42:	2c b1       	bit	@r1,	r12	;
    ac44:	18 b1 04 b1 	bit	-20220(r1),r8	;0xffffb104
    ac48:	f0 b0 dc b0 	bit.b	#-20260,0xb0c8	;#0xb0dc, PC rel. 0x5d14
    ac4c:	c8 b0 
    ac4e:	b4 b0 a2 b0 	bit	#-20318,-20336(r4);#0xb0a2, 0xb090
    ac52:	90 b0 
    ac54:	7e b0 6c b0 	bit.b	#-20372,r14	;#0xb06c
    ac58:	5a b0 48 b0 	bit.b	0xb048,	r10	;PC rel. 0x5ca2
    ac5c:	36 b0 24 b0 	bit	#-20444,r6	;#0xb024
    ac60:	12 b0 00 b0 	bit	0xb000,	r2	;PC rel. 0x5c62
    ac64:	ee af dc af 	dadd.b	@r15,	-20516(r14); 0xafdc
    ac68:	ca af b8 af 	dadd.b	r15,	-20552(r10); 0xafb8
    ac6c:	a6 af 94 af 	dadd	@r15,	-20588(r6); 0xaf94
    ac70:	82 af 70 af 	dadd	r15,	&0xaf70	;
    ac74:	5e af 4c af 	dadd.b	-20660(r15),r14	;0xffffaf4c
    ac78:	3a af       	dadd	@r15+,	r10	;
    ac7a:	28 af       	dadd	@r15,	r8	;
    ac7c:	16 af 04 af 	dadd	-20732(r15),r6	;0xffffaf04
    ac80:	f2 ae e0 ae 	dadd.b	@r14+,	&0xaee0	;
    ac84:	ce ae bc ae 	dadd.b	r14,	-20804(r14); 0xaebc
    ac88:	aa ae 98 ae 	dadd	@r14,	-20840(r10); 0xae98
    ac8c:	86 ae 74 ae 	dadd	r14,	-20876(r6); 0xae74
    ac90:	62 ae       	dadd.b	@r14,	r2	;
    ac92:	50 ae 3e ae 	dadd.b	-20930(r14),r0	;0xffffae3e
    ac96:	2c ae       	dadd	@r14,	r12	;
    ac98:	1a ae 08 ae 	dadd	-20984(r14),r10	;0xffffae08
    ac9c:	f6 ad e4 ad 	dadd.b	@r13+,	-21020(r6); 0xade4
    aca0:	d2 ad c0 ad 	dadd.b	-21056(r13),&0xadae	;0xffffadc0
    aca4:	ae ad 
    aca6:	9c ad 8a ad 	dadd	-21110(r13),-21128(r12);0xffffad8a, 0xad78
    acaa:	78 ad 
    acac:	66 ad       	dadd.b	@r13,	r6	;
    acae:	54 ad 42 ad 	dadd.b	-21182(r13),r4	;0xffffad42
    acb2:	30 ad       	dadd	@r13+,	r0	;
    acb4:	1e ad 0c ad 	dadd	-21236(r13),r14	;0xffffad0c
    acb8:	fa ac e8 ac 	dadd.b	@r12+,	-21272(r10); 0xace8

0000acbc <.L70>:
    if (!ink_is_first_boot())
    acbc:	4c 43       	clr.b	r12		;
    acbe:	4f 43       	clr.b	r15		;
    acc0:	4e 43       	clr.b	r14		;

0000acc2 <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    acc2:	81 4c 00 00 	mov	r12,	0(r1)	;
    acc6:	0d 49       	mov	r9,	r13	;
    acc8:	4c 4a       	mov.b	r10,	r12	;

0000acca <.LVL4>:
    acca:	b0 12 8c b4 	call	#-19316	;#0xb48c

0000acce <.LVL5>:

    if (start_on_first_boot)
    acce:	08 93       	cmp	#0,	r8	;r3 As==00
    acd0:	03 20       	jnz	$+8      	;abs 0xacd8

0000acd2 <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    acd2:	21 53       	incd	r1		;

0000acd4 <.LCFI2>:
    acd4:	28 17       	popm	#3,	r10	;16-bit words

0000acd6 <.LCFI3>:
    acd6:	30 41       	ret			

0000acd8 <.L75>:
        __start_thread(__get_thread(priority));
    acd8:	4c 4a       	mov.b	r10,	r12	;
    acda:	b0 12 30 b5 	call	#-19152	;#0xb530
    acde:	b0 12 14 b5 	call	#-19180	;#0xb514

0000ace2 <.Loc.232.1>:
}
    ace2:	21 53       	incd	r1		;

0000ace4 <.LCFI5>:
    ace4:	28 17       	popm	#3,	r10	;16-bit words

0000ace6 <.LCFI6>:
    ace6:	30 41       	ret			

0000ace8 <.L5>:
        INK_CREATE_THREAD_CASE(63)
    ace8:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    acec:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000acf0 <.LVL9>:
    acf0:	3c 40 00 00 	mov	#0,	r12	;

0000acf4 <.Loc.220.1>:
    acf4:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    acf8:	e4 3f       	jmp	$-54     	;abs 0xacc2

0000acfa <.L7>:
        INK_CREATE_THREAD_CASE(62)
    acfa:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    acfe:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad02 <.LVL12>:
    ad02:	3c 40 00 00 	mov	#0,	r12	;

0000ad06 <.Loc.219.1>:
    ad06:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad0a:	db 3f       	jmp	$-72     	;abs 0xacc2

0000ad0c <.L8>:
        INK_CREATE_THREAD_CASE(61)
    ad0c:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad10:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad14 <.LVL15>:
    ad14:	3c 40 00 00 	mov	#0,	r12	;

0000ad18 <.Loc.218.1>:
    ad18:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad1c:	d2 3f       	jmp	$-90     	;abs 0xacc2

0000ad1e <.L9>:
        INK_CREATE_THREAD_CASE(60)
    ad1e:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad22:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad26 <.LVL18>:
    ad26:	3c 40 00 00 	mov	#0,	r12	;

0000ad2a <.Loc.217.1>:
    ad2a:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad2e:	c9 3f       	jmp	$-108    	;abs 0xacc2

0000ad30 <.L10>:
        INK_CREATE_THREAD_CASE(59)
    ad30:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad34:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad38 <.LVL21>:
    ad38:	3c 40 00 00 	mov	#0,	r12	;

0000ad3c <.Loc.216.1>:
    ad3c:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad40:	c0 3f       	jmp	$-126    	;abs 0xacc2

0000ad42 <.L11>:
        INK_CREATE_THREAD_CASE(58)
    ad42:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad46:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad4a <.LVL24>:
    ad4a:	3c 40 00 00 	mov	#0,	r12	;

0000ad4e <.Loc.215.1>:
    ad4e:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad52:	b7 3f       	jmp	$-144    	;abs 0xacc2

0000ad54 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    ad54:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad58:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad5c <.LVL27>:
    ad5c:	3c 40 00 00 	mov	#0,	r12	;

0000ad60 <.Loc.214.1>:
    ad60:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad64:	ae 3f       	jmp	$-162    	;abs 0xacc2

0000ad66 <.L13>:
        INK_CREATE_THREAD_CASE(56)
    ad66:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad6a:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad6e <.LVL30>:
    ad6e:	3c 40 00 00 	mov	#0,	r12	;

0000ad72 <.Loc.213.1>:
    ad72:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad76:	a5 3f       	jmp	$-180    	;abs 0xacc2

0000ad78 <.L14>:
        INK_CREATE_THREAD_CASE(55)
    ad78:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad7c:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad80 <.LVL33>:
    ad80:	3c 40 00 00 	mov	#0,	r12	;

0000ad84 <.Loc.212.1>:
    ad84:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad88:	9c 3f       	jmp	$-198    	;abs 0xacc2

0000ad8a <.L15>:
        INK_CREATE_THREAD_CASE(54)
    ad8a:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ad8e:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ad92 <.LVL36>:
    ad92:	3c 40 00 00 	mov	#0,	r12	;

0000ad96 <.Loc.211.1>:
    ad96:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ad9a:	93 3f       	jmp	$-216    	;abs 0xacc2

0000ad9c <.L16>:
        INK_CREATE_THREAD_CASE(53)
    ad9c:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ada0:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ada4 <.LVL39>:
    ada4:	3c 40 00 00 	mov	#0,	r12	;

0000ada8 <.Loc.210.1>:
    ada8:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    adac:	8a 3f       	jmp	$-234    	;abs 0xacc2

0000adae <.L17>:
        INK_CREATE_THREAD_CASE(52)
    adae:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    adb2:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000adb6 <.LVL42>:
    adb6:	3c 40 00 00 	mov	#0,	r12	;

0000adba <.Loc.209.1>:
    adba:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    adbe:	81 3f       	jmp	$-252    	;abs 0xacc2

0000adc0 <.L18>:
        INK_CREATE_THREAD_CASE(51)
    adc0:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    adc4:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000adc8 <.LVL45>:
    adc8:	3c 40 00 00 	mov	#0,	r12	;

0000adcc <.Loc.208.1>:
    adcc:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    add0:	78 3f       	jmp	$-270    	;abs 0xacc2

0000add2 <.L19>:
        INK_CREATE_THREAD_CASE(50)
    add2:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    add6:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000adda <.LVL48>:
    adda:	3c 40 00 00 	mov	#0,	r12	;

0000adde <.Loc.207.1>:
    adde:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ade2:	6f 3f       	jmp	$-288    	;abs 0xacc2

0000ade4 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    ade4:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ade8:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000adec <.LVL51>:
    adec:	3c 40 00 00 	mov	#0,	r12	;

0000adf0 <.Loc.206.1>:
    adf0:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    adf4:	66 3f       	jmp	$-306    	;abs 0xacc2

0000adf6 <.L21>:
        INK_CREATE_THREAD_CASE(48)
    adf6:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    adfa:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000adfe <.LVL54>:
    adfe:	3c 40 00 00 	mov	#0,	r12	;

0000ae02 <.Loc.205.1>:
    ae02:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae06:	5d 3f       	jmp	$-324    	;abs 0xacc2

0000ae08 <.L22>:
        INK_CREATE_THREAD_CASE(47)
    ae08:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae0c:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae10 <.LVL57>:
    ae10:	3c 40 00 00 	mov	#0,	r12	;

0000ae14 <.Loc.204.1>:
    ae14:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae18:	54 3f       	jmp	$-342    	;abs 0xacc2

0000ae1a <.L23>:
        INK_CREATE_THREAD_CASE(46)
    ae1a:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae1e:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae22 <.LVL60>:
    ae22:	3c 40 00 00 	mov	#0,	r12	;

0000ae26 <.Loc.203.1>:
    ae26:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae2a:	4b 3f       	jmp	$-360    	;abs 0xacc2

0000ae2c <.L24>:
        INK_CREATE_THREAD_CASE(45)
    ae2c:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae30:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae34 <.LVL63>:
    ae34:	3c 40 00 00 	mov	#0,	r12	;

0000ae38 <.Loc.202.1>:
    ae38:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae3c:	42 3f       	jmp	$-378    	;abs 0xacc2

0000ae3e <.L25>:
        INK_CREATE_THREAD_CASE(44)
    ae3e:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae42:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae46 <.LVL66>:
    ae46:	3c 40 00 00 	mov	#0,	r12	;

0000ae4a <.Loc.201.1>:
    ae4a:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae4e:	39 3f       	jmp	$-396    	;abs 0xacc2

0000ae50 <.L26>:
        INK_CREATE_THREAD_CASE(43)
    ae50:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae54:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae58 <.LVL69>:
    ae58:	3c 40 00 00 	mov	#0,	r12	;

0000ae5c <.Loc.200.1>:
    ae5c:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae60:	30 3f       	jmp	$-414    	;abs 0xacc2

0000ae62 <.L27>:
        INK_CREATE_THREAD_CASE(42)
    ae62:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae66:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae6a <.LVL72>:
    ae6a:	3c 40 00 00 	mov	#0,	r12	;

0000ae6e <.Loc.199.1>:
    ae6e:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae72:	27 3f       	jmp	$-432    	;abs 0xacc2

0000ae74 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    ae74:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae78:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae7c <.LVL75>:
    ae7c:	3c 40 00 00 	mov	#0,	r12	;

0000ae80 <.Loc.198.1>:
    ae80:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae84:	1e 3f       	jmp	$-450    	;abs 0xacc2

0000ae86 <.L29>:
        INK_CREATE_THREAD_CASE(40)
    ae86:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae8a:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000ae8e <.LVL78>:
    ae8e:	3c 40 00 00 	mov	#0,	r12	;

0000ae92 <.Loc.197.1>:
    ae92:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    ae96:	15 3f       	jmp	$-468    	;abs 0xacc2

0000ae98 <.L30>:
        INK_CREATE_THREAD_CASE(39)
    ae98:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    ae9c:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aea0 <.LVL81>:
    aea0:	3c 40 00 00 	mov	#0,	r12	;

0000aea4 <.Loc.196.1>:
    aea4:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    aea8:	0c 3f       	jmp	$-486    	;abs 0xacc2

0000aeaa <.L31>:
        INK_CREATE_THREAD_CASE(38)
    aeaa:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    aeae:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aeb2 <.LVL84>:
    aeb2:	3c 40 00 00 	mov	#0,	r12	;

0000aeb6 <.Loc.195.1>:
    aeb6:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    aeba:	03 3f       	jmp	$-504    	;abs 0xacc2

0000aebc <.L32>:
        INK_CREATE_THREAD_CASE(37)
    aebc:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    aec0:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aec4 <.LVL87>:
    aec4:	3c 40 00 00 	mov	#0,	r12	;

0000aec8 <.Loc.194.1>:
    aec8:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    aecc:	fa 3e       	jmp	$-522    	;abs 0xacc2

0000aece <.L33>:
        INK_CREATE_THREAD_CASE(36)
    aece:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    aed2:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aed6 <.LVL90>:
    aed6:	3c 40 00 00 	mov	#0,	r12	;

0000aeda <.Loc.193.1>:
    aeda:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    aede:	f1 3e       	jmp	$-540    	;abs 0xacc2

0000aee0 <.L34>:
        INK_CREATE_THREAD_CASE(35)
    aee0:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    aee4:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aee8 <.LVL93>:
    aee8:	3c 40 00 00 	mov	#0,	r12	;

0000aeec <.Loc.192.1>:
    aeec:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    aef0:	e8 3e       	jmp	$-558    	;abs 0xacc2

0000aef2 <.L35>:
        INK_CREATE_THREAD_CASE(34)
    aef2:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    aef6:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aefa <.LVL96>:
    aefa:	3c 40 00 00 	mov	#0,	r12	;

0000aefe <.Loc.191.1>:
    aefe:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af02:	df 3e       	jmp	$-576    	;abs 0xacc2

0000af04 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    af04:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af08:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af0c <.LVL99>:
    af0c:	3c 40 00 00 	mov	#0,	r12	;

0000af10 <.Loc.190.1>:
    af10:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af14:	d6 3e       	jmp	$-594    	;abs 0xacc2

0000af16 <.L37>:
        INK_CREATE_THREAD_CASE(32)
    af16:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af1a:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af1e <.LVL102>:
    af1e:	3c 40 00 00 	mov	#0,	r12	;

0000af22 <.Loc.189.1>:
    af22:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af26:	cd 3e       	jmp	$-612    	;abs 0xacc2

0000af28 <.L38>:
        INK_CREATE_THREAD_CASE(31)
    af28:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af2c:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af30 <.LVL105>:
    af30:	3c 40 00 00 	mov	#0,	r12	;

0000af34 <.Loc.188.1>:
    af34:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af38:	c4 3e       	jmp	$-630    	;abs 0xacc2

0000af3a <.L39>:
        INK_CREATE_THREAD_CASE(30)
    af3a:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af3e:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af42 <.LVL108>:
    af42:	3c 40 00 00 	mov	#0,	r12	;

0000af46 <.Loc.187.1>:
    af46:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af4a:	bb 3e       	jmp	$-648    	;abs 0xacc2

0000af4c <.L40>:
        INK_CREATE_THREAD_CASE(29)
    af4c:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af50:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af54 <.LVL111>:
    af54:	3c 40 00 00 	mov	#0,	r12	;

0000af58 <.Loc.186.1>:
    af58:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af5c:	b2 3e       	jmp	$-666    	;abs 0xacc2

0000af5e <.L41>:
        INK_CREATE_THREAD_CASE(28)
    af5e:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af62:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af66 <.LVL114>:
    af66:	3c 40 00 00 	mov	#0,	r12	;

0000af6a <.Loc.185.1>:
    af6a:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af6e:	a9 3e       	jmp	$-684    	;abs 0xacc2

0000af70 <.L42>:
        INK_CREATE_THREAD_CASE(27)
    af70:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af74:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af78 <.LVL117>:
    af78:	3c 40 00 00 	mov	#0,	r12	;

0000af7c <.Loc.184.1>:
    af7c:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af80:	a0 3e       	jmp	$-702    	;abs 0xacc2

0000af82 <.L43>:
        INK_CREATE_THREAD_CASE(26)
    af82:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af86:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af8a <.LVL120>:
    af8a:	3c 40 00 00 	mov	#0,	r12	;

0000af8e <.Loc.183.1>:
    af8e:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    af92:	97 3e       	jmp	$-720    	;abs 0xacc2

0000af94 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    af94:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    af98:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000af9c <.LVL123>:
    af9c:	3c 40 00 00 	mov	#0,	r12	;

0000afa0 <.Loc.182.1>:
    afa0:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    afa4:	8e 3e       	jmp	$-738    	;abs 0xacc2

0000afa6 <.L45>:
        INK_CREATE_THREAD_CASE(24)
    afa6:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    afaa:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000afae <.LVL126>:
    afae:	3c 40 00 00 	mov	#0,	r12	;

0000afb2 <.Loc.181.1>:
    afb2:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    afb6:	85 3e       	jmp	$-756    	;abs 0xacc2

0000afb8 <.L46>:
        INK_CREATE_THREAD_CASE(23)
    afb8:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    afbc:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000afc0 <.LVL129>:
    afc0:	3c 40 00 00 	mov	#0,	r12	;

0000afc4 <.Loc.180.1>:
    afc4:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    afc8:	7c 3e       	jmp	$-774    	;abs 0xacc2

0000afca <.L47>:
        INK_CREATE_THREAD_CASE(22)
    afca:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    afce:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000afd2 <.LVL132>:
    afd2:	3c 40 00 00 	mov	#0,	r12	;

0000afd6 <.Loc.179.1>:
    afd6:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    afda:	73 3e       	jmp	$-792    	;abs 0xacc2

0000afdc <.L48>:
        INK_CREATE_THREAD_CASE(21)
    afdc:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    afe0:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000afe4 <.LVL135>:
    afe4:	3c 40 00 00 	mov	#0,	r12	;

0000afe8 <.Loc.178.1>:
    afe8:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    afec:	6a 3e       	jmp	$-810    	;abs 0xacc2

0000afee <.L49>:
        INK_CREATE_THREAD_CASE(20)
    afee:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    aff2:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000aff6 <.LVL138>:
    aff6:	3c 40 00 00 	mov	#0,	r12	;

0000affa <.Loc.177.1>:
    affa:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    affe:	61 3e       	jmp	$-828    	;abs 0xacc2

0000b000 <.L50>:
        INK_CREATE_THREAD_CASE(19)
    b000:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    b004:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b008 <.LVL141>:
    b008:	3c 40 00 00 	mov	#0,	r12	;

0000b00c <.Loc.176.1>:
    b00c:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    b010:	58 3e       	jmp	$-846    	;abs 0xacc2

0000b012 <.L51>:
        INK_CREATE_THREAD_CASE(18)
    b012:	3f 40 3e 7d 	mov	#32062,	r15	;#0x7d3e
    b016:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b01a <.LVL144>:
    b01a:	3c 40 00 00 	mov	#0,	r12	;

0000b01e <.Loc.175.1>:
    b01e:	3e 40 3e 7d 	mov	#32062,	r14	;#0x7d3e
    b022:	4f 3e       	jmp	$-864    	;abs 0xacc2

0000b024 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    b024:	3f 40 2e 56 	mov	#22062,	r15	;#0x562e
    b028:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b02c <.LVL147>:
    b02c:	3c 40 10 27 	mov	#10000,	r12	;#0x2710

0000b030 <.Loc.174.1>:
    b030:	3e 40 2e 56 	mov	#22062,	r14	;#0x562e
    b034:	46 3e       	jmp	$-882    	;abs 0xacc2

0000b036 <.L53>:
        INK_CREATE_THREAD_CASE(16)
    b036:	3f 40 46 52 	mov	#21062,	r15	;#0x5246
    b03a:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b03e <.LVL150>:
    b03e:	3c 40 e8 03 	mov	#1000,	r12	;#0x03e8

0000b042 <.Loc.173.1>:
    b042:	3e 40 46 52 	mov	#21062,	r14	;#0x5246
    b046:	3d 3e       	jmp	$-900    	;abs 0xacc2

0000b048 <.L54>:
        INK_CREATE_THREAD_CASE(15)
    b048:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b04c:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b050 <.LVL153>:
    b050:	3c 40 0a 00 	mov	#10,	r12	;#0x000a

0000b054 <.Loc.172.1>:
    b054:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b058:	34 3e       	jmp	$-918    	;abs 0xacc2

0000b05a <.L55>:
        INK_CREATE_THREAD_CASE(14)
    b05a:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b05e:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b062 <.LVL156>:
    b062:	3c 40 00 00 	mov	#0,	r12	;

0000b066 <.Loc.171.1>:
    b066:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b06a:	2b 3e       	jmp	$-936    	;abs 0xacc2

0000b06c <.L56>:
        INK_CREATE_THREAD_CASE(13)
    b06c:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b070:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b074 <.LVL159>:
    b074:	3c 40 00 00 	mov	#0,	r12	;

0000b078 <.Loc.170.1>:
    b078:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b07c:	22 3e       	jmp	$-954    	;abs 0xacc2

0000b07e <.L57>:
        INK_CREATE_THREAD_CASE(12)
    b07e:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b082:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b086 <.LVL162>:
    b086:	3c 40 00 00 	mov	#0,	r12	;

0000b08a <.Loc.169.1>:
    b08a:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b08e:	19 3e       	jmp	$-972    	;abs 0xacc2

0000b090 <.L58>:
        INK_CREATE_THREAD_CASE(11)
    b090:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b094:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b098 <.LVL165>:
    b098:	3c 40 00 00 	mov	#0,	r12	;

0000b09c <.Loc.168.1>:
    b09c:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b0a0:	10 3e       	jmp	$-990    	;abs 0xacc2

0000b0a2 <.L59>:
        INK_CREATE_THREAD_CASE(10)
    b0a2:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b0a6:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b0aa <.LVL168>:
    b0aa:	3c 40 00 00 	mov	#0,	r12	;

0000b0ae <.Loc.167.1>:
    b0ae:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b0b2:	07 3e       	jmp	$-1008   	;abs 0xacc2

0000b0b4 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    b0b4:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b0b8:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b0bc <.LVL171>:
    b0bc:	3c 40 00 00 	mov	#0,	r12	;

0000b0c0 <.Loc.166.1>:
    b0c0:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b0c4:	30 40 c2 ac 	br	#0xacc2		;

0000b0c8 <.L61>:
        INK_CREATE_THREAD_CASE(8)
    b0c8:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b0cc:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b0d0 <.LVL174>:
    b0d0:	3c 40 00 00 	mov	#0,	r12	;

0000b0d4 <.Loc.165.1>:
    b0d4:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b0d8:	30 40 c2 ac 	br	#0xacc2		;

0000b0dc <.L62>:
        INK_CREATE_THREAD_CASE(7)
    b0dc:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b0e0:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b0e4 <.LVL177>:
    b0e4:	3c 40 00 00 	mov	#0,	r12	;

0000b0e8 <.Loc.164.1>:
    b0e8:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b0ec:	30 40 c2 ac 	br	#0xacc2		;

0000b0f0 <.L63>:
        INK_CREATE_THREAD_CASE(6)
    b0f0:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b0f4:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b0f8 <.LVL180>:
    b0f8:	3c 40 00 00 	mov	#0,	r12	;

0000b0fc <.Loc.163.1>:
    b0fc:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b100:	30 40 c2 ac 	br	#0xacc2		;

0000b104 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    b104:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b108:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b10c <.LVL183>:
    b10c:	3c 40 00 00 	mov	#0,	r12	;

0000b110 <.Loc.162.1>:
    b110:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b114:	30 40 c2 ac 	br	#0xacc2		;

0000b118 <.L65>:
        INK_CREATE_THREAD_CASE(4)
    b118:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b11c:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b120 <.LVL186>:
    b120:	3c 40 00 00 	mov	#0,	r12	;

0000b124 <.Loc.161.1>:
    b124:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b128:	30 40 c2 ac 	br	#0xacc2		;

0000b12c <.L66>:
        INK_CREATE_THREAD_CASE(3)
    b12c:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b130:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b134 <.LVL189>:
    b134:	3c 40 00 00 	mov	#0,	r12	;

0000b138 <.Loc.160.1>:
    b138:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b13c:	30 40 c2 ac 	br	#0xacc2		;

0000b140 <.L67>:
        INK_CREATE_THREAD_CASE(2)
    b140:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b144:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b148 <.LVL192>:
    b148:	3c 40 00 00 	mov	#0,	r12	;

0000b14c <.Loc.159.1>:
    b14c:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b150:	30 40 c2 ac 	br	#0xacc2		;

0000b154 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    b154:	3f 40 3c 52 	mov	#21052,	r15	;#0x523c
    b158:	3f 50 02 2b 	add	#11010,	r15	;#0x2b02

0000b15c <.LVL195>:
    b15c:	3c 40 00 00 	mov	#0,	r12	;

0000b160 <.Loc.158.1>:
    b160:	3e 40 3c 52 	mov	#21052,	r14	;#0x523c
    b164:	30 40 c2 ac 	br	#0xacc2		;

0000b168 <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    b168:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b16c <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    b16c:	32 c2       	dint			
    b16e:	03 43       	nop			

0000b170 <.Loc.236.1>:
    b170:	b0 12 30 b5 	call	#-19152	;#0xb530

0000b174 <.LVL198>:
    b174:	b0 12 14 b5 	call	#-19180	;#0xb514

0000b178 <.Loc.236.1>:
    b178:	03 43       	nop			
    b17a:	32 d2       	eint			
    b17c:	03 43       	nop			

0000b17e <.Loc.237.1>:
}
    b17e:	30 41       	ret			

0000b180 <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    b180:	b0 12 46 b5 	call	#-19130	;#0xb546

0000b184 <.Loc.7.1>:
}
    b184:	30 41       	ret			

0000b186 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    b186:	1a 15       	pushm	#2,	r10	;16-bit words

0000b188 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    b188:	3a 40 ce 4a 	mov	#19150,	r10	;#0x4ace
    b18c:	39 40 ce 45 	mov	#17870,	r9	;#0x45ce

0000b190 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    b190:	0c 4a       	mov	r10,	r12	;
    b192:	b0 12 38 b3 	call	#-19656	;#0xb338

0000b196 <.Loc.27.1>:
        _popped[i] = NULL;
    b196:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

0000b19a <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    b19a:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    b19e:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

0000b1a2 <.Loc.24.1>:
    b1a2:	3a 90 ce 45 	cmp	#17870,	r10	;#0x45ce
    b1a6:	f4 23       	jnz	$-22     	;abs 0xb190

0000b1a8 <.Loc.29.1>:
    }
}
    b1a8:	19 17       	popm	#2,	r10	;16-bit words

0000b1aa <.LCFI1>:
    b1aa:	30 41       	ret			

0000b1ac <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    b1ac:	5c 42 da 4a 	mov.b	&0x4ada,r12	;0x4ada
    b1b0:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    b1b2:	14 24       	jz	$+42     	;abs 0xb1dc
    b1b4:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    b1b6:	1f 24       	jz	$+64     	;abs 0xb1f6
    b1b8:	0c 93       	cmp	#0,	r12	;r3 As==00
    b1ba:	01 24       	jz	$+4      	;abs 0xb1be

0000b1bc <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    b1bc:	30 41       	ret			

0000b1be <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    b1be:	1d 42 d8 4a 	mov	&0x4ad8,r13	;0x4ad8

0000b1c2 <.Loc.37.1>:
    b1c2:	6c 4d       	mov.b	@r13,	r12	;
    b1c4:	5c 06       	rlam	#2,	r12	;
    b1c6:	6d 4d       	mov.b	@r13,	r13	;
    b1c8:	0c 5d       	add	r13,	r12	;
    b1ca:	5c 06       	rlam	#2,	r12	;
    b1cc:	3d 40 ce 4a 	mov	#19150,	r13	;#0x4ace
    b1d0:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b1d4:	b0 12 94 b3 	call	#-19564	;#0xb394

0000b1d8 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    b1d8:	d2 43 da 4a 	mov.b	#1,	&0x4ada	;r3 As==01

0000b1dc <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    b1dc:	1d 42 d8 4a 	mov	&0x4ad8,r13	;0x4ad8

0000b1e0 <.Loc.40.1>:
    b1e0:	6c 4d       	mov.b	@r13,	r12	;
    b1e2:	5c 06       	rlam	#2,	r12	;
    b1e4:	6d 4d       	mov.b	@r13,	r13	;
    b1e6:	0c 5d       	add	r13,	r12	;
    b1e8:	5c 06       	rlam	#2,	r12	;
    b1ea:	
0000b1ec <L0^A>:
    b1ec:	ce 45 b0 12 	mov.b	r5,	4784(r14); 0x12b0
    b1f0:	
0000b1f2 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    b1f2:	e2 43 da 4a 	mov.b	#2,	&0x4ada	;r3 As==10

0000b1f6 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    b1f6:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8
    b1fa:	1c 4c 02 00 	mov	2(r12),	r12	;

0000b1fe <.Loc.44.1>:
    b1fe:	3c 92       	cmp	#8,	r12	;r2 As==11
    b200:	04 24       	jz	$+10     	;abs 0xb20a

0000b202 <.L9>:
        _status = EVENT_DONE;
    b202:	f2 40 03 00 	mov.b	#3,	&0x4ada	;
    b206:	da 4a 

0000b208 <.Loc.51.1>:
}
    b208:	30 41       	ret			

0000b20a <.L17>:
            __disable_interrupt();
    b20a:	32 c2       	dint			
    b20c:	03 43       	nop			

0000b20e <.Loc.46.1>:
            __start_thread(_thread);
    b20e:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8
    b212:	b0 12 14 b5 	call	#-19180	;#0xb514

0000b216 <.Loc.47.1>:
            __enable_interrupt();
    b216:	03 43       	nop			
    b218:	32 d2       	eint			
    b21a:	03 43       	nop			
    b21c:	f2 3f       	jmp	$-26     	;abs 0xb202

0000b21e <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    b21e:	1d 42 d8 4a 	mov	&0x4ad8,r13	;0x4ad8

0000b222 <.Loc.55.1>:
    b222:	6c 4d       	mov.b	@r13,	r12	;

0000b224 <.LVL7>:
    b224:	5c 06       	rlam	#2,	r12	;
    b226:	6d 4d       	mov.b	@r13,	r13	;
    b228:	0c 5d       	add	r13,	r12	;
    b22a:	5c 06       	rlam	#2,	r12	;
    b22c:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b230:	b0 12 68 b3 	call	#-19608	;#0xb368

0000b234 <.Loc.56.1>:
}
    b234:	30 41       	ret			

0000b236 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    b236:	82 4c d8 4a 	mov	r12,	&0x4ad8	;

0000b23a <.Loc.64.1>:
    _event = *event;
    b23a:	0e 4d       	mov	r13,	r14	;
    b23c:	b2 4e ce 4a 	mov	@r14+,	&0x4ace	;
    b240:	b2 4e d0 4a 	mov	@r14+,	&0x4ad0	;
    b244:	92 4d 04 00 	mov	4(r13),	&0x4ad2	;
    b248:	d2 4a 
    b24a:	92 4d 06 00 	mov	6(r13),	&0x4ad4	;
    b24e:	d4 4a 
    b250:	92 4e 04 00 	mov	4(r14),	&0x4ad6	;
    b254:	d6 4a 

0000b256 <.Loc.65.1>:
    _status = EVENT_INSERT;
    b256:	c2 43 da 4a 	mov.b	#0,	&0x4ada	;r3 As==00

0000b25a <.LBB4>:
    switch(_status){
    b25a:	5d 42 da 4a 	mov.b	&0x4ada,r13	;0x4ada

0000b25e <.LVL10>:
    b25e:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    b260:	14 24       	jz	$+42     	;abs 0xb28a
    b262:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    b264:	1f 24       	jz	$+64     	;abs 0xb2a4
    b266:	0d 93       	cmp	#0,	r13	;r3 As==00
    b268:	01 24       	jz	$+4      	;abs 0xb26c

0000b26a <.LBE4>:
    __events_commit();
}
    b26a:	30 41       	ret			

0000b26c <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    b26c:	6d 4c       	mov.b	@r12,	r13	;
    b26e:	5d 06       	rlam	#2,	r13	;
    b270:	6c 4c       	mov.b	@r12,	r12	;

0000b272 <.LVL11>:
    b272:	0c 5d       	add	r13,	r12	;
    b274:	5c 06       	rlam	#2,	r12	;
    b276:	3d 40 ce 4a 	mov	#19150,	r13	;#0x4ace
    b27a:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b27e:	b0 12 94 b3 	call	#-19564	;#0xb394

0000b282 <.LVL12>:
        _status = EVENT_COMMIT;
    b282:	d2 43 da 4a 	mov.b	#1,	&0x4ada	;r3 As==01
    b286:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8

0000b28a <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    b28a:	6d 4c       	mov.b	@r12,	r13	;
    b28c:	5d 06       	rlam	#2,	r13	;
    b28e:	6c 4c       	mov.b	@r12,	r12	;
    b290:	0c 5d       	add	r13,	r12	;
    b292:	5c 06       	rlam	#2,	r12	;
    b294:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b298:	b0 12 ca b3 	call	#-19510	;#0xb3ca

0000b29c <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    b29c:	e2 43 da 4a 	mov.b	#2,	&0x4ada	;r3 As==10
    b2a0:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8

0000b2a4 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    b2a4:	1c 4c 02 00 	mov	2(r12),	r12	;

0000b2a8 <.Loc.44.1>:
    b2a8:	3c 92       	cmp	#8,	r12	;r2 As==11
    b2aa:	04 24       	jz	$+10     	;abs 0xb2b4

0000b2ac <.L23>:
        _status = EVENT_DONE;
    b2ac:	f2 40 03 00 	mov.b	#3,	&0x4ada	;
    b2b0:	da 4a 

0000b2b2 <.Loc.67.1>:
}
    b2b2:	30 41       	ret			

0000b2b4 <.L31>:
            __disable_interrupt();
    b2b4:	32 c2       	dint			
    b2b6:	03 43       	nop			

0000b2b8 <.Loc.46.1>:
            __start_thread(_thread);
    b2b8:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8
    b2bc:	b0 12 14 b5 	call	#-19180	;#0xb514

0000b2c0 <.Loc.47.1>:
            __enable_interrupt();
    b2c0:	03 43       	nop			
    b2c2:	32 d2       	eint			
    b2c4:	03 43       	nop			
    b2c6:	f2 3f       	jmp	$-26     	;abs 0xb2ac

0000b2c8 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    b2c8:	6d 4c       	mov.b	@r12,	r13	;
    b2ca:	5d 06       	rlam	#2,	r13	;
    b2cc:	6c 4c       	mov.b	@r12,	r12	;

0000b2ce <.LVL16>:
    b2ce:	0c 5d       	add	r13,	r12	;
    b2d0:	5c 06       	rlam	#2,	r12	;
    b2d2:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b2d6:	b0 12 52 b3 	call	#-19630	;#0xb352
    b2da:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b2de <.Loc.71.1>:
    b2de:	3c 53       	add	#-1,	r12	;r3 As==11

0000b2e0 <.Loc.75.1>:
        return 0;

    return 1;
}
    b2e0:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b2e4:	30 41       	ret			

0000b2e6 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    b2e6:	0a 15       	pushm	#1,	r10	;16-bit words

0000b2e8 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    b2e8:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8

0000b2ec <.LVL19>:
    b2ec:	6a 4c       	mov.b	@r12,	r10	;

0000b2ee <.Loc.81.1>:
    b2ee:	0c 4a       	mov	r10,	r12	;
    b2f0:	5c 06       	rlam	#2,	r12	;
    b2f2:	0c 5a       	add	r10,	r12	;
    b2f4:	5c 06       	rlam	#2,	r12	;
    b2f6:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b2fa:	b0 12 d2 b3 	call	#-19502	;#0xb3d2

0000b2fe <.Loc.81.1>:
    b2fe:	5a 02       	rlam	#1,	r10	;
    b300:	8a 4c 4e 45 	mov	r12,	17742(r10); 0x454e

0000b304 <.Loc.82.1>:
    return _popped[_thread->priority];
    b304:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8
    b308:	6c 4c       	mov.b	@r12,	r12	;
    b30a:	5c 02       	rlam	#1,	r12	;

0000b30c <.Loc.83.1>:
}
    b30c:	1c 4c 4e 45 	mov	17742(r12),r12	;0x0454e
    b310:	0a 17       	popm	#1,	r10	;16-bit words

0000b312 <.LCFI3>:
    b312:	30 41       	ret			

0000b314 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    b314:	1d 42 d8 4a 	mov	&0x4ad8,r13	;0x4ad8

0000b318 <.Loc.87.1>:
    b318:	6c 4d       	mov.b	@r13,	r12	;

0000b31a <.LVL22>:
    b31a:	5c 06       	rlam	#2,	r12	;
    b31c:	6d 4d       	mov.b	@r13,	r13	;
    b31e:	0c 5d       	add	r13,	r12	;
    b320:	5c 06       	rlam	#2,	r12	;
    b322:	3c 50 ce 45 	add	#17870,	r12	;#0x45ce
    b326:	b0 12 04 b4 	call	#-19452	;#0xb404

0000b32a <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    b32a:	1c 42 d8 4a 	mov	&0x4ad8,r12	;0x4ad8
    b32e:	6c 4c       	mov.b	@r12,	r12	;
    b330:	5c 02       	rlam	#1,	r12	;
    b332:	8c 43 4e 45 	mov	#0,	17742(r12);r3 As==00, 0x454e

0000b336 <.Loc.89.1>:
}
    b336:	30 41       	ret			

0000b338 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    b338:	
0000b33c <L0^A>:
    b33c:	10 00       	bra	@r0+		;

0000b33e <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    b33e:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    b342:	11 00 

0000b344 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    b344:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    b348:	12 00 

0000b34a <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    b34a:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    b34e:	13 00 

0000b350 <.Loc.10.1>:
}
    b350:	30 41       	ret			

0000b352 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    b352:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    b356:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    b35a:	4c 4d       	mov.b	r13,	r12	;

0000b35c <.LVL2>:
    b35c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b360:	3c 53       	add	#-1,	r12	;r3 As==11

0000b362 <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    b362:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b366:	30 41       	ret			

0000b368 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    b368:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    b36c:	5d 53       	inc.b	r13		;
    b36e:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

0000b372 <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    b372:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    b376:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    b378:	02 20       	jnz	$+6      	;abs 0xb37e

0000b37a <.Loc.25.1>:
        queue->__tail = 0;
    b37a:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000b37e <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    b37e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    b382:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    b386:	4c 4d       	mov.b	r13,	r12	;

0000b388 <.LVL4>:
    b388:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b38c:	3c 53       	add	#-1,	r12	;r3 As==11

0000b38e <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    b38e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b392:	30 41       	ret			

0000b394 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    b394:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    b398:	5e 53       	inc.b	r14		;
    b39a:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

0000b39e <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    b39e:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    b3a2:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    b3a4:	02 20       	jnz	$+6      	;abs 0xb3aa

0000b3a6 <.Loc.40.1>:
        queue->__tail = 0;
    b3a6:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000b3aa <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    b3aa:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

0000b3ae <.Loc.44.1>:
    b3ae:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

0000b3b2 <.Loc.44.1>:
    b3b2:	0f 9e       	cmp	r14,	r15	;
    b3b4:	08 24       	jz	$+18     	;abs 0xb3c6

0000b3b6 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    b3b6:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000b3ba <.Loc.49.1>:
    b3ba:	5e 02       	rlam	#1,	r14	;
    b3bc:	0c 5e       	add	r14,	r12	;

0000b3be <.LVL6>:
    b3be:	8c 4d 00 00 	mov	r13,	0(r12)	;

0000b3c2 <.Loc.51.1>:

    return 1;
    b3c2:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000b3c4 <.Loc.52.1>:
}
    b3c4:	30 41       	ret			

0000b3c6 <.L9>:
        return 0;
    b3c6:	4c 43       	clr.b	r12		;

0000b3c8 <.LVL8>:
}
    b3c8:	30 41       	ret			

0000b3ca <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    b3ca:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    b3ce:	11 00 

0000b3d0 <.Loc.59.1>:
}
    b3d0:	30 41       	ret			

0000b3d2 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    b3d2:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

0000b3d6 <.Loc.63.1>:
    b3d6:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

0000b3da <.Loc.63.1>:
    b3da:	0e 9d       	cmp	r13,	r14	;
    b3dc:	11 24       	jz	$+36     	;abs 0xb400

0000b3de <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    b3de:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    b3e2:	5d 53       	inc.b	r13		;
    b3e4:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

0000b3e8 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    b3e8:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    b3ec:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    b3ee:	02 20       	jnz	$+6      	;abs 0xb3f4

0000b3f0 <.Loc.70.1>:
        queue->__head = 0;
    b3f0:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

0000b3f4 <.L13>:

    return queue->_items[queue->_head];
    b3f4:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

0000b3f8 <.Loc.72.1>:
    b3f8:	5d 02       	rlam	#1,	r13	;
    b3fa:	0c 5d       	add	r13,	r12	;

0000b3fc <.LVL11>:
    b3fc:	2c 4c       	mov	@r12,	r12	;

0000b3fe <.Loc.73.1>:
}
    b3fe:	30 41       	ret			

0000b400 <.L14>:
        return NULL;
    b400:	4c 43       	clr.b	r12		;

0000b402 <.LVL13>:
}
    b402:	30 41       	ret			

0000b404 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    b404:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    b408:	10 00 

0000b40a <.Loc.79.1>:
}
    b40a:	30 41       	ret			

0000b40c <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    b40c:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    b410:	40 01 

0000b412 <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    b412:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    b416:	41 01 

0000b418 <.Loc.13.1>:
}
    b418:	30 41       	ret			

0000b41a <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    b41a:	0a 15       	pushm	#1,	r10	;16-bit words

0000b41c <.LCFI0>:
    b41c:	21 82       	sub	#4,	r1	;r2 As==10

0000b41e <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    b41e:	0a 4c       	mov	r12,	r10	;
    b420:	0b 43       	clr	r11		;
    b422:	81 4a 00 00 	mov	r10,	0(r1)	;
    b426:	81 4b 02 00 	mov	r11,	2(r1)	;

0000b42a <.Loc.20.1>:
    b42a:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

0000b42e <.LVL1>:
    b42e:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    b432:	00 00 

0000b434 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    b434:	0a 4d       	mov	r13,	r10	;
    b436:	0b 43       	clr	r11		;

0000b438 <.LVL2>:
    b438:	81 4a 00 00 	mov	r10,	0(r1)	;
    b43c:	81 4b 02 00 	mov	r11,	2(r1)	;

0000b440 <.Loc.21.1>:
    b440:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    b444:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    b448:	00 00 

0000b44a <.LBE3>:
    DMA0SZ = size;                          // Block size
    b44a:	82 4e 1a 05 	mov	r14,	&0x051a	;

0000b44e <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    b44e:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    b452:	10 05 

0000b454 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    b454:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    b458:	10 05 

0000b45a <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    b45a:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

0000b45e <.Loc.29.1>:
}
    b45e:	21 52       	add	#4,	r1	;r2 As==10

0000b460 <.LCFI2>:
    b460:	0a 17       	popm	#1,	r10	;16-bit words

0000b462 <.LCFI3>:
    b462:	30 41       	ret			

0000b464 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    b464:	3c 40 de 4a 	mov	#19166,	r12	;#0x4ade
    b468:	b0 12 0e c2 	call	#-15858	;#0xc20e

0000b46c <.Loc.54.1>:
    b46c:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

0000b470 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    b470:	0c 4d       	mov	r13,	r12	;
    b472:	5c 02       	rlam	#1,	r12	;
    b474:	0c 5d       	add	r13,	r12	;
    b476:	5c 06       	rlam	#2,	r12	;
    b478:	0c 5d       	add	r13,	r12	;
    b47a:	5c 02       	rlam	#1,	r12	;
    b47c:	1c 4c ea 4a 	mov	19178(r12),r12	;0x04aea

0000b480 <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    b480:	3d 53       	add	#-1,	r13	;r3 As==11

0000b482 <.Loc.56.1>:
    b482:	0d 93       	cmp	#0,	r13	;r3 As==00
    b484:	f5 23       	jnz	$-20     	;abs 0xb470

0000b486 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    b486:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000b48a <.Loc.61.1>:
}
    b48a:	30 41       	ret			

0000b48c <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    b48c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b490 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    b490:	0b 4c       	mov	r12,	r11	;
    b492:	5b 02       	rlam	#1,	r11	;
    b494:	0b 5c       	add	r12,	r11	;
    b496:	5b 06       	rlam	#2,	r11	;
    b498:	0b 5c       	add	r12,	r11	;
    b49a:	5b 02       	rlam	#1,	r11	;
    b49c:	cb 4c e8 4a 	mov.b	r12,	19176(r11); 0x4ae8

0000b4a0 <.Loc.69.1>:
    _threads[priority].entry = entry;
    b4a0:	8b 4d ec 4a 	mov	r13,	19180(r11); 0x4aec

0000b4a4 <.Loc.70.1>:
    _threads[priority].next = entry;
    b4a4:	8b 4d f0 4a 	mov	r13,	19184(r11); 0x4af0

0000b4a8 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    b4a8:	bb 42 ea 4a 	mov	#8,	19178(r11);r2 As==11, 0x4aea

0000b4ac <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    b4ac:	8b 4e f2 4a 	mov	r14,	19186(r11); 0x4af2

0000b4b0 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    b4b0:	8b 4f f4 4a 	mov	r15,	19188(r11); 0x4af4

0000b4b4 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    b4b4:	cb 43 f6 4a 	mov.b	#0,	19190(r11);r3 As==00, 0x4af6

0000b4b8 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    b4b8:	9b 41 02 00 	mov	2(r1),	19192(r11); 0x4af8
    b4bc:	f8 4a 

0000b4be <.Loc.78.1>:
}
    b4be:	30 41       	ret			

0000b4c0 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    b4c0:	0a 15       	pushm	#1,	r10	;16-bit words

0000b4c2 <.LCFI0>:
    b4c2:	0a 4c       	mov	r12,	r10	;

0000b4c4 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    b4c4:	3d 40 de 4a 	mov	#19166,	r13	;#0x4ade
    b4c8:	6c 4c       	mov.b	@r12,	r12	;

0000b4ca <.LVL6>:
    b4ca:	b0 12 54 c2 	call	#-15788	;#0xc254

0000b4ce <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    b4ce:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000b4d2 <.Loc.84.1>:
}
    b4d2:	0a 17       	popm	#1,	r10	;16-bit words

0000b4d4 <.LCFI1>:
    b4d4:	30 41       	ret			

0000b4d6 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    b4d6:	0a 15       	pushm	#1,	r10	;16-bit words

0000b4d8 <.LCFI2>:
    b4d8:	0a 4c       	mov	r12,	r10	;

0000b4da <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    b4da:	3d 40 de 4a 	mov	#19166,	r13	;#0x4ade
    b4de:	6c 4c       	mov.b	@r12,	r12	;

0000b4e0 <.LVL9>:
    b4e0:	b0 12 54 c2 	call	#-15788	;#0xc254

0000b4e4 <.Loc.89.1>:
    thread->next = NULL;
    b4e4:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

0000b4e8 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    b4e8:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000b4ec <.Loc.91.1>:
}
    b4ec:	0a 17       	popm	#1,	r10	;16-bit words

0000b4ee <.LCFI3>:
    b4ee:	30 41       	ret			

0000b4f0 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    b4f0:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000b4f4 <.Loc.95.1>:
    return;
}
    b4f4:	30 41       	ret			

0000b4f6 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    b4f6:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000b4fa <.Loc.101.1>:
    return;
}
    b4fa:	30 41       	ret			

0000b4fc <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    b4fc:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000b500 <.Loc.107.1>:
    return;
}
    b500:	30 41       	ret			

0000b502 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    b502:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

0000b506 <.Loc.112.1>:
    return;
}
    b506:	30 41       	ret			

0000b508 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    b508:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

0000b50c <.LVL16>:
    b50c:	30 41       	ret			

0000b50e <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    b50e:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000b512 <.LVL18>:
    b512:	30 41       	ret			

0000b514 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    b514:	0a 15       	pushm	#1,	r10	;16-bit words

0000b516 <.LCFI4>:
    b516:	0a 4c       	mov	r12,	r10	;

0000b518 <.Loc.125.1>:
    thread->next = thread->entry;
    b518:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    b51c:	08 00 

0000b51e <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    b51e:	3d 40 de 4a 	mov	#19166,	r13	;#0x4ade
    b522:	6c 4c       	mov.b	@r12,	r12	;

0000b524 <.LVL20>:
    b524:	b0 12 34 c2 	call	#-15820	;#0xc234

0000b528 <.Loc.127.1>:
    thread->state = TASK_READY;
    b528:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000b52c <.Loc.128.1>:
}
    b52c:	0a 17       	popm	#1,	r10	;16-bit words

0000b52e <.LCFI5>:
    b52e:	30 41       	ret			

0000b530 <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    b530:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b534 <.Loc.140.1>:
    return &_threads[priority];
    b534:	0d 4c       	mov	r12,	r13	;
    b536:	5d 02       	rlam	#1,	r13	;
    b538:	0d 5c       	add	r12,	r13	;
    b53a:	5d 06       	rlam	#2,	r13	;
    b53c:	0c 5d       	add	r13,	r12	;

0000b53e <.LVL23>:
    b53e:	5c 02       	rlam	#1,	r12	;

0000b540 <.Loc.141.1>:
}
    b540:	3c 50 e8 4a 	add	#19176,	r12	;#0x4ae8
    b544:	30 41       	ret			

0000b546 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    b546:	32 c2       	dint			
    b548:	03 43       	nop			

0000b54a <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    b54a:	b0 12 ac b1 	call	#-20052	;#0xb1ac

0000b54e <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    b54e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000b552 <.Loc.162.1>:
    __port_off(1, 3);
    b552:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b556 <.LBB8>:
    if(_thread){
    b556:	82 93 dc 4a 	cmp	#0,	&0x4adc	;r3 As==00
    b55a:	04 24       	jz	$+10     	;abs 0xb564

0000b55c <.Loc.146.1>:
        __tick(_thread);
    b55c:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc
    b560:	b0 12 fa b5 	call	#-18950	;#0xb5fa

0000b564 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    b564:	b0 12 16 b7 	call	#-18666	;#0xb716

0000b568 <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    b568:	03 43       	nop			
    b56a:	32 d2       	eint			
    b56c:	03 43       	nop			

0000b56e <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    b56e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000b572 <.Loc.179.1>:
    __port_off(1, 3);
    b572:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b576 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    b576:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    b57a:	0c 93       	cmp	#0,	r12	;r3 As==00
    b57c:	10 24       	jz	$+34     	;abs 0xb59e

0000b57e <.L29>:
    b57e:	1c 93       	cmp	#1,	r12	;r3 As==01
    b580:	fa 23       	jnz	$-10     	;abs 0xb576
    b582:	1c 42 dc 4a 	mov	&0x4adc,r12	;0x4adc

0000b586 <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    b586:	0c 93       	cmp	#0,	r12	;r3 As==00
    b588:	24 24       	jz	$+74     	;abs 0xb5d2

0000b58a <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    b58a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b58e <.Loc.198.1>:
#endif
                __tick(_thread);
    b58e:	b0 12 fa b5 	call	#-18950	;#0xb5fa

0000b592 <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    b592:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000b596 <.Loc.180.1>:
        switch (_sched_state){
    b596:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    b59a:	0c 93       	cmp	#0,	r12	;r3 As==00
    b59c:	f0 23       	jnz	$-30     	;abs 0xb57e

0000b59e <.L19>:
            __port_on(1, 3);
    b59e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000b5a2 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    b5a2:	3c 40 de 4a 	mov	#19166,	r12	;#0x4ade
    b5a6:	b0 12 7c c2 	call	#-15748	;#0xc27c
    b5aa:	4d 4c       	mov.b	r12,	r13	;

0000b5ac <.LVL29>:
    if(idx)
    b5ac:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b5ae:	0d 24       	jz	$+28     	;abs 0xb5ca

0000b5b0 <.Loc.134.1>:
        return &_threads[idx];
    b5b0:	0c 4d       	mov	r13,	r12	;
    b5b2:	5c 02       	rlam	#1,	r12	;

0000b5b4 <.LVL30>:
    b5b4:	0c 5d       	add	r13,	r12	;
    b5b6:	5c 06       	rlam	#2,	r12	;
    b5b8:	0c 5d       	add	r13,	r12	;
    b5ba:	5c 02       	rlam	#1,	r12	;
    b5bc:	3c 50 e8 4a 	add	#19176,	r12	;#0x4ae8

0000b5c0 <.LBE10>:
            _thread = __next_thread();
    b5c0:	82 4c dc 4a 	mov	r12,	&0x4adc	;

0000b5c4 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    b5c4:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

0000b5c8 <.Loc.196.1>:
            if (_thread){
    b5c8:	e0 3f       	jmp	$-62     	;abs 0xb58a

0000b5ca <.L30>:
            _thread = __next_thread();
    b5ca:	82 43 dc 4a 	mov	#0,	&0x4adc	;r3 As==00

0000b5ce <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    b5ce:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

0000b5d2 <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    b5d2:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000b5d6 <.Loc.206.1>:
            __disable_interrupt();
    b5d6:	32 c2       	dint			
    b5d8:	03 43       	nop			

0000b5da <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    b5da:	3c 40 de 4a 	mov	#19166,	r12	;#0x4ade
    b5de:	b0 12 7c c2 	call	#-15748	;#0xc27c

0000b5e2 <.LVL33>:
    if(idx)
    b5e2:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b5e4:	c8 23       	jnz	$-110    	;abs 0xb576

0000b5e6 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    b5e6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b5ea <.Loc.210.1>:
#endif
                __mcu_sleep();
    b5ea:	03 43       	nop			
    b5ec:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    b5f0:	03 43       	nop			

0000b5f2 <.Loc.213.1>:
                __enable_interrupt();
    b5f2:	03 43       	nop			
    b5f4:	32 d2       	eint			
    b5f6:	03 43       	nop			
    b5f8:	be 3f       	jmp	$-130    	;abs 0xb576

0000b5fa <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    b5fa:	0a 15       	pushm	#1,	r10	;16-bit words

0000b5fc <.LCFI0>:
    b5fc:	0a 4c       	mov	r12,	r10	;

0000b5fe <L0^A>:
    switch (thread->state)
    b5fe:	1c 4c 02 00 	mov	2(r12),	r12	;

0000b602 <.LVL1>:
    b602:	2c 93       	cmp	#2,	r12	;r3 As==10
    b604:	35 24       	jz	$+108    	;abs 0xb670
    b606:	2c 92       	cmp	#4,	r12	;r2 As==10
    b608:	56 24       	jz	$+174    	;abs 0xb6b6
    b60a:	1c 93       	cmp	#1,	r12	;r3 As==01
    b60c:	02 24       	jz	$+6      	;abs 0xb612

0000b60e <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    b60e:	0a 17       	popm	#1,	r10	;16-bit words

0000b610 <.LCFI1>:
    b610:	30 41       	ret			

0000b612 <.L17>:
    __port_on(3,6);
    b612:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    b616:	22 02 

0000b618 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    b618:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

0000b61c <.Loc.14.1>:
    b61c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    b620:	5c e3       	xor.b	#1,	r12	;r3 As==01
    b622:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b626 <.Loc.14.1>:
    b626:	5c 02       	rlam	#1,	r12	;
    b628:	0c 5a       	add	r10,	r12	;
    b62a:	5f 02       	rlam	#1,	r15	;
    b62c:	0f 5a       	add	r10,	r15	;
    b62e:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    b632:	5e 03       	rrum	#1,	r14	;
    b634:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    b638:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    b63c:	b0 12 1a b4 	call	#-19430	;#0xb41a

0000b640 <.Loc.17.1>:
    __port_off(3,6);
    b640:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    b644:	22 02 

0000b646 <.LBE5>:
        __port_on(1, 4);
    b646:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    b64a:	02 02 

0000b64c <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    b64c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    b650:	5c e3       	xor.b	#1,	r12	;r3 As==01
    b652:	c2 4c 68 51 	mov.b	r12,	&0x5168	;

0000b656 <.Loc.60.1>:
        if(thread->next == thread->entry){
    b656:	1c 4a 08 00 	mov	8(r10),	r12	;

0000b65a <.Loc.60.1>:
    b65a:	1c 9a 04 00 	cmp	4(r10),	r12	;
    b65e:	48 24       	jz	$+146    	;abs 0xb6f0

0000b660 <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    b660:	8c 12       	call	r12		;

0000b662 <.Loc.77.1>:
    b662:	8a 4c 06 00 	mov	r12,	6(r10)	;

0000b666 <.L8>:
        thread->state = TASK_PRECOMMIT;
    b666:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000b66a <.Loc.83.1>:
            __port_off(1, 4);
    b66a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    b66e:	02 02 

0000b670 <.L2>:
        __port_on(3,5);
    b670:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    b674:	22 02 

0000b676 <.Loc.87.1>:
        __release_event(thread);
    b676:	0c 4a       	mov	r10,	r12	;
    b678:	b0 12 14 b3 	call	#-19692	;#0xb314

0000b67c <.Loc.96.1>:
        thread->next = thread->next_temp;
    b67c:	1c 4a 06 00 	mov	6(r10),	r12	;

0000b680 <.Loc.96.1>:
    b680:	8a 4c 08 00 	mov	r12,	8(r10)	;

0000b684 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    b684:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    b688:	5d e3       	xor.b	#1,	r13	;r3 As==01
    b68a:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

0000b68e <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    b68e:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

0000b692 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    b692:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    b696:	0e 00 

0000b698 <.Loc.117.1>:
        __port_off(3,5);
    b698:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b69c:	22 02 

0000b69e <.Loc.117.1>:
        __port_on(3,5);
    b69e:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    b6a2:	22 02 

0000b6a4 <.Loc.118.1>:
        if (thread->next == NULL)
    b6a4:	0c 93       	cmp	#0,	r12	;r3 As==00
    b6a6:	14 24       	jz	$+42     	;abs 0xb6d0

0000b6a8 <.L9>:
            thread->state = TASK_READY;
    b6a8:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000b6ac <.L12>:
        __port_off(3,5);
    b6ac:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b6b0:	22 02 

0000b6b2 <.Loc.142.1>:
}
    b6b2:	0a 17       	popm	#1,	r10	;16-bit words

0000b6b4 <.LCFI3>:
    b6b4:	30 41       	ret			

0000b6b6 <.L3>:
    b6b6:	1c 4a 08 00 	mov	8(r10),	r12	;

0000b6ba <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    b6ba:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    b6be:	0e 00 

0000b6c0 <.Loc.117.1>:
        __port_off(3,5);
    b6c0:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b6c4:	22 02 

0000b6c6 <.Loc.117.1>:
        __port_on(3,5);
    b6c6:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    b6ca:	22 02 

0000b6cc <.Loc.118.1>:
        if (thread->next == NULL)
    b6cc:	0c 93       	cmp	#0,	r12	;r3 As==00
    b6ce:	ec 23       	jnz	$-38     	;abs 0xb6a8

0000b6d0 <.L19>:
            __disable_interrupt();
    b6d0:	32 c2       	dint			
    b6d2:	03 43       	nop			

0000b6d4 <.Loc.125.1>:
            if(!__has_events(thread)){
    b6d4:	0c 4a       	mov	r10,	r12	;
    b6d6:	b0 12 c8 b2 	call	#-19768	;#0xb2c8

0000b6da <.Loc.125.1>:
    b6da:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b6dc:	12 24       	jz	$+38     	;abs 0xb702

0000b6de <.Loc.131.1>:
                thread->next = thread->entry;
    b6de:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    b6e2:	08 00 

0000b6e4 <.Loc.133.1>:
                thread->state = TASK_READY;
    b6e4:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000b6e8 <.Loc.135.1>:
            __enable_interrupt();
    b6e8:	03 43       	nop			
    b6ea:	32 d2       	eint			
    b6ec:	03 43       	nop			
    b6ee:	de 3f       	jmp	$-66     	;abs 0xb6ac

0000b6f0 <.L18>:
            isr_event_t *event = __lock_event(thread);
    b6f0:	0c 4a       	mov	r10,	r12	;
    b6f2:	b0 12 e6 b2 	call	#-19738	;#0xb2e6

0000b6f6 <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    b6f6:	1d 4a 04 00 	mov	4(r10),	r13	;
    b6fa:	8d 12       	call	r13		;

0000b6fc <.LVL11>:
    b6fc:	8a 4c 06 00 	mov	r12,	6(r10)	;

0000b700 <.LBE7>:
    b700:	b2 3f       	jmp	$-154    	;abs 0xb666

0000b702 <.L20>:
                __stop_thread(thread);
    b702:	0c 4a       	mov	r10,	r12	;
    b704:	b0 12 c0 b4 	call	#-19264	;#0xb4c0

0000b708 <.Loc.135.1>:
            __enable_interrupt();
    b708:	03 43       	nop			
    b70a:	32 d2       	eint			
    b70c:	03 43       	nop			
    b70e:	ce 3f       	jmp	$-98     	;abs 0xb6ac

0000b710 <__timers_init>:
    b710:	b0 12 76 c3 	call	#-15498	;#0xc376

0000b714 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    b714:	30 41       	ret			

0000b716 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    b716:	30 41       	ret			

0000b718 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    b718:	0a 15       	pushm	#1,	r10	;16-bit words

0000b71a <.LCFI0>:
    b71a:	4a 4c       	mov.b	r12,	r10	;

0000b71c <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    b71c:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    b720:	19 24       	jz	$+52     	;abs 0xb754

0000b722 <.L5>:
    b722:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    b726:	0e 24       	jz	$+30     	;abs 0xb744

0000b728 <.L6>:
    b728:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    b72c:	02 24       	jz	$+6      	;abs 0xb732

0000b72e <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    b72e:	0a 17       	popm	#1,	r10	;16-bit words

0000b730 <.LCFI1>:
    b730:	30 41       	ret			

0000b732 <.L10>:
            wkup_timing[i].status = NOT_USED;
    b732:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

0000b736 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    b736:	4e 43       	clr.b	r14		;
    b738:	4d 43       	clr.b	r13		;
    b73a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b73c:	b0 12 38 c4 	call	#-15304	;#0xc438

0000b740 <.Loc.101.1>:
}
    b740:	0a 17       	popm	#1,	r10	;16-bit words

0000b742 <.LCFI3>:
    b742:	30 41       	ret			

0000b744 <.L9>:
            wkup_timing[i].status = NOT_USED;
    b744:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

0000b748 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    b748:	4e 43       	clr.b	r14		;
    b74a:	4d 43       	clr.b	r13		;
    b74c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b74e:	b0 12 38 c4 	call	#-15304	;#0xc438
    b752:	ea 3f       	jmp	$-42     	;abs 0xb728

0000b754 <.L8>:
            wkup_timing[i].status = NOT_USED;
    b754:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

0000b758 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    b758:	4e 43       	clr.b	r14		;
    b75a:	4d 43       	clr.b	r13		;
    b75c:	4c 43       	clr.b	r12		;

0000b75e <.LVL9>:
    b75e:	b0 12 38 c4 	call	#-15304	;#0xc438
    b762:	df 3f       	jmp	$-64     	;abs 0xb722

0000b764 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    b764:	2a 15       	pushm	#3,	r10	;16-bit words

0000b766 <.LCFI5>:
    b766:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000b76a <.LCFI6>:
    b76a:	49 43       	clr.b	r9		;
    b76c:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000b770 <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    b770:	0a 49       	mov	r9,	r10	;
    b772:	5a 06       	rlam	#2,	r10	;
    b774:	0a 59       	add	r9,	r10	;
    b776:	5a 02       	rlam	#1,	r10	;
    b778:	0a 58       	add	r8,	r10	;
    b77a:	4e 43       	clr.b	r14		;
    b77c:	4d 49       	mov.b	r9,	r13	;
    b77e:	0c 41       	mov	r1,	r12	;
    b780:	b0 12 34 c6 	call	#-14796	;#0xc634
    b784:	aa 41 00 00 	mov	@r1,	0(r10)	;
    b788:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    b78c:	02 00 
    b78e:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    b792:	04 00 
    b794:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    b798:	06 00 
    b79a:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    b79e:	08 00 

0000b7a0 <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b7a0:	19 53       	inc	r9		;

0000b7a2 <.Loc.115.1>:
    b7a2:	39 90 03 00 	cmp	#3,	r9	;
    b7a6:	e4 23       	jnz	$-54     	;abs 0xb770

0000b7a8 <.Loc.120.1>:
    }

}
    b7a8:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000b7ac <.LCFI7>:
    b7ac:	28 17       	popm	#3,	r10	;16-bit words

0000b7ae <.LCFI8>:
    b7ae:	30 41       	ret			

0000b7b0 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    b7b0:	5a 15       	pushm	#6,	r10	;16-bit words

0000b7b2 <.LCFI9>:

    uint8_t i,first = 1;
    b7b2:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000b7b4 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b7b4:	4a 43       	clr.b	r10		;
    b7b6:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000b7ba <.L40>:
    {

        if (wkup_timing[i].status == USED)
    b7ba:	09 4a       	mov	r10,	r9	;
    b7bc:	05 4a       	mov	r10,	r5	;
    b7be:	55 06       	rlam	#2,	r5	;
    b7c0:	0c 45       	mov	r5,	r12	;
    b7c2:	0c 5a       	add	r10,	r12	;
    b7c4:	5c 02       	rlam	#1,	r12	;
    b7c6:	0d 4c       	mov	r12,	r13	;
    b7c8:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

0000b7cc <.Loc.130.1>:
    b7cc:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b7d0:	0c 24       	jz	$+26     	;abs 0xb7ea

0000b7d2 <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b7d2:	4c 4a       	mov.b	r10,	r12	;
    b7d4:	5c 53       	inc.b	r12		;
    b7d6:	4a 4c       	mov.b	r12,	r10	;

0000b7d8 <.LVL19>:
    b7d8:	7c 90 03 00 	cmp.b	#3,	r12	;
    b7dc:	ee 23       	jnz	$-34     	;abs 0xb7ba

0000b7de <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    b7de:	0e 93       	cmp	#0,	r14	;r3 As==00
    b7e0:	54 24       	jz	$+170    	;abs 0xb88a

0000b7e2 <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    b7e2:	b0 12 92 c2 	call	#-15726	;#0xc292

0000b7e6 <.LVL20>:


}
    b7e6:	55 17       	popm	#6,	r10	;16-bit words

0000b7e8 <.LCFI10>:
    b7e8:	30 41       	ret			

0000b7ea <.L84>:
            if (first)
    b7ea:	16 4d 04 00 	mov	4(r13),	r6	;
    b7ee:	17 4d 06 00 	mov	6(r13),	r7	;

0000b7f2 <.Loc.133.1>:
    b7f2:	0e 93       	cmp	#0,	r14	;r3 As==00
    b7f4:	05 24       	jz	$+12     	;abs 0xb800

0000b7f6 <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    b7f6:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

0000b7fa <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    b7fa:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    b7fe:	5c 1c 

0000b800 <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    b800:	b0 12 34 c3 	call	#-15564	;#0xc334

0000b804 <.Loc.141.1>:
    b804:	0e 46       	mov	r6,	r14	;
    b806:	0f 47       	mov	r7,	r15	;
    b808:	0e 8c       	sub	r12,	r14	;
    b80a:	0f 7d       	subc	r13,	r15	;

0000b80c <.Loc.141.1>:
    b80c:	05 5a       	add	r10,	r5	;
    b80e:	55 02       	rlam	#1,	r5	;
    b810:	05 58       	add	r8,	r5	;
    b812:	85 4e 04 00 	mov	r14,	4(r5)	;
    b816:	85 4f 06 00 	mov	r15,	6(r5)	;

0000b81a <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    b81a:	4d 43       	clr.b	r13		;
    b81c:	4c 4a       	mov.b	r10,	r12	;
    b81e:	b0 12 98 c3 	call	#-15464	;#0xc398

0000b822 <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    b822:	1c 45 04 00 	mov	4(r5),	r12	;
    b826:	1d 45 06 00 	mov	6(r5),	r13	;
    b82a:	4b 4a       	mov.b	r10,	r11	;
    b82c:	5b 53       	inc.b	r11		;
    b82e:	4a 4b       	mov.b	r11,	r10	;

0000b830 <.Loc.144.1>:
    b830:	07 4d       	mov	r13,	r7	;
    b832:	0d 93       	cmp	#0,	r13	;r3 As==00
    b834:	3b 38       	jl	$+120    	;abs 0xb8ac

0000b836 <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    b836:	0e 4c       	mov	r12,	r14	;
    b838:	0e dd       	bis	r13,	r14	;
    b83a:	0e 93       	cmp	#0,	r14	;r3 As==00
    b83c:	af 24       	jz	$+352    	;abs 0xb99c

0000b83e <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b83e:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    b842:	0e 46       	mov	r6,	r14	;
    b844:	0f 43       	clr	r15		;

0000b846 <.Loc.155.1>:
    b846:	0d 93       	cmp	#0,	r13	;r3 As==00
    b848:	18 34       	jge	$+50     	;abs 0xb87a

0000b84a <.L50>:
    b84a:	0e 49       	mov	r9,	r14	;
    b84c:	5e 06       	rlam	#2,	r14	;
    b84e:	09 5e       	add	r14,	r9	;
    b850:	59 02       	rlam	#1,	r9	;
    b852:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b856 <.L37>:
                    min_wkup = wkup_timing[i].data;
    b856:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

0000b85a <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    b85a:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000b85e <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b85e:	7b 90 03 00 	cmp.b	#3,	r11	;
    b862:	15 24       	jz	$+44     	;abs 0xb88e

0000b864 <.L74>:
        if (wkup_timing[i].status == USED)
    b864:	09 4a       	mov	r10,	r9	;
    b866:	05 4a       	mov	r10,	r5	;
    b868:	55 06       	rlam	#2,	r5	;
    b86a:	0c 45       	mov	r5,	r12	;
    b86c:	0c 5a       	add	r10,	r12	;
    b86e:	5c 02       	rlam	#1,	r12	;

0000b870 <.Loc.130.1>:
    b870:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b874:	41 24       	jz	$+132    	;abs 0xb8f8

0000b876 <.L91>:
    b876:	4e 43       	clr.b	r14		;
    b878:	ac 3f       	jmp	$-166    	;abs 0xb7d2

0000b87a <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b87a:	0d 93       	cmp	#0,	r13	;r3 As==00
    b87c:	62 24       	jz	$+198    	;abs 0xb942

0000b87e <.L35>:
    b87e:	07 4c       	mov	r12,	r7	;
    b880:	0c 9e       	cmp	r14,	r12	;
    b882:	79 24       	jz	$+244    	;abs 0xb976

0000b884 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b884:	7b 90 03 00 	cmp.b	#3,	r11	;
    b888:	ed 23       	jnz	$-36     	;abs 0xb864

0000b88a <.L72>:
    b88a:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

0000b88e <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    b88e:	4d 4e       	mov.b	r14,	r13	;
    b890:	4c 43       	clr.b	r12		;
    b892:	b0 12 80 c4 	call	#-15232	;#0xc480

0000b896 <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    b896:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    b89a:	4c 43       	clr.b	r12		;
    b89c:	b0 12 8e c4 	call	#-15218	;#0xc48e

0000b8a0 <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    b8a0:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    b8a4:	b0 12 a6 c2 	call	#-15706	;#0xc2a6

0000b8a8 <.Loc.177.1>:
}
    b8a8:	55 17       	popm	#6,	r10	;16-bit words

0000b8aa <.LCFI12>:
    b8aa:	30 41       	ret			

0000b8ac <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    b8ac:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    b8b0:	06 43       	clr	r6		;
    b8b2:	06 8e       	sub	r14,	r6	;
    b8b4:	0e 46       	mov	r6,	r14	;
    b8b6:	0f 46       	mov	r6,	r15	;
    b8b8:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000b8bc <.Loc.144.1>:
    b8bc:	05 4f       	mov	r15,	r5	;
    b8be:	0f 9d       	cmp	r13,	r15	;
    b8c0:	25 38       	jl	$+76     	;abs 0xb90c

0000b8c2 <.Loc.144.1>:
    b8c2:	0d 9f       	cmp	r15,	r13	;
    b8c4:	21 24       	jz	$+68     	;abs 0xb908

0000b8c6 <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    b8c6:	07 4d       	mov	r13,	r7	;
    b8c8:	0d 9f       	cmp	r15,	r13	;
    b8ca:	04 38       	jl	$+10     	;abs 0xb8d4
    b8cc:	0f 9d       	cmp	r13,	r15	;
    b8ce:	da 23       	jnz	$-74     	;abs 0xb884
    b8d0:	0c 96       	cmp	r6,	r12	;
    b8d2:	d8 2f       	jc	$-78     	;abs 0xb884

0000b8d4 <.L30>:
    b8d4:	0c 49       	mov	r9,	r12	;
    b8d6:	5c 06       	rlam	#2,	r12	;
    b8d8:	09 5c       	add	r12,	r9	;
    b8da:	59 02       	rlam	#1,	r9	;
    b8dc:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

0000b8e0 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b8e0:	7b 90 03 00 	cmp.b	#3,	r11	;
    b8e4:	d2 27       	jz	$-90     	;abs 0xb88a

0000b8e6 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    b8e6:	09 4a       	mov	r10,	r9	;
    b8e8:	05 4a       	mov	r10,	r5	;
    b8ea:	55 06       	rlam	#2,	r5	;
    b8ec:	0c 45       	mov	r5,	r12	;
    b8ee:	0c 5a       	add	r10,	r12	;
    b8f0:	5c 02       	rlam	#1,	r12	;

0000b8f2 <.Loc.130.1>:
    b8f2:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b8f6:	bf 23       	jnz	$-128    	;abs 0xb876

0000b8f8 <.L27>:
    b8f8:	0c 45       	mov	r5,	r12	;
    b8fa:	0c 5a       	add	r10,	r12	;
    b8fc:	5c 02       	rlam	#1,	r12	;
    b8fe:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    b902:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    b906:	7c 3f       	jmp	$-262    	;abs 0xb800

0000b908 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    b908:	06 9c       	cmp	r12,	r6	;
    b90a:	dd 2f       	jc	$-68     	;abs 0xb8c6

0000b90c <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b90c:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    b910:	06 4e       	mov	r14,	r6	;
    b912:	07 43       	clr	r7		;

0000b914 <.Loc.146.1>:
    b914:	4e 43       	clr.b	r14		;
    b916:	4f 43       	clr.b	r15		;
    b918:	0e 8c       	sub	r12,	r14	;
    b91a:	0f 7d       	subc	r13,	r15	;

0000b91c <.Loc.146.1>:
    b91c:	05 4f       	mov	r15,	r5	;
    b91e:	0f 93       	cmp	#0,	r15	;r3 As==00
    b920:	14 34       	jge	$+42     	;abs 0xb94a

0000b922 <.L22>:
    b922:	0e 49       	mov	r9,	r14	;
    b924:	5e 06       	rlam	#2,	r14	;
    b926:	09 5e       	add	r14,	r9	;
    b928:	59 02       	rlam	#1,	r9	;
    b92a:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b92e <.L28>:
                    min_wkup = -wkup_timing[i].data;
    b92e:	4f 43       	clr.b	r15		;
    b930:	0f 8c       	sub	r12,	r15	;
    b932:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

0000b936 <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    b936:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000b93a <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b93a:	7b 90 03 00 	cmp.b	#3,	r11	;
    b93e:	92 23       	jnz	$-218    	;abs 0xb864
    b940:	a6 3f       	jmp	$-178    	;abs 0xb88e

0000b942 <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b942:	07 4c       	mov	r12,	r7	;
    b944:	0c 9e       	cmp	r14,	r12	;
    b946:	9b 2f       	jc	$-200    	;abs 0xb87e
    b948:	80 3f       	jmp	$-254    	;abs 0xb84a

0000b94a <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b94a:	0f 93       	cmp	#0,	r15	;r3 As==00
    b94c:	03 20       	jnz	$+8      	;abs 0xb954
    b94e:	05 4e       	mov	r14,	r5	;
    b950:	0e 96       	cmp	r6,	r14	;
    b952:	e7 2b       	jnc	$-48     	;abs 0xb922

0000b954 <.L47>:
    b954:	06 9e       	cmp	r14,	r6	;
    b956:	96 23       	jnz	$-210    	;abs 0xb884
    b958:	0f 93       	cmp	#0,	r15	;r3 As==00
    b95a:	94 23       	jnz	$-214    	;abs 0xb884

0000b95c <.Loc.146.1>:
    b95c:	0e 49       	mov	r9,	r14	;
    b95e:	5e 06       	rlam	#2,	r14	;
    b960:	09 5e       	add	r14,	r9	;
    b962:	59 02       	rlam	#1,	r9	;
    b964:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b968 <.Loc.146.1>:
    b968:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000b96c <.Loc.146.1>:
    b96c:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    b970:	36 1c 
    b972:	dd 2b       	jnc	$-68     	;abs 0xb92e
    b974:	0e 3c       	jmp	$+30     	;abs 0xb992

0000b976 <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b976:	0d 9f       	cmp	r15,	r13	;
    b978:	85 23       	jnz	$-244    	;abs 0xb884

0000b97a <.Loc.155.1>:
    b97a:	0e 49       	mov	r9,	r14	;
    b97c:	5e 06       	rlam	#2,	r14	;
    b97e:	09 5e       	add	r14,	r9	;
    b980:	59 02       	rlam	#1,	r9	;
    b982:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b986 <.Loc.155.1>:
    b986:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000b98a <.Loc.155.1>:
    b98a:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    b98e:	36 1c 
    b990:	62 2b       	jnc	$-314    	;abs 0xb856

0000b992 <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b992:	7b 90 03 00 	cmp.b	#3,	r11	;
    b996:	66 23       	jnz	$-306    	;abs 0xb864

0000b998 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b998:	0e 4f       	mov	r15,	r14	;

0000b99a <.Loc.164.1>:
    if (!first)
    b99a:	79 3f       	jmp	$-268    	;abs 0xb88e

0000b99c <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b99c:	7b 90 03 00 	cmp.b	#3,	r11	;
    b9a0:	74 27       	jz	$-278    	;abs 0xb88a

0000b9a2 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    b9a2:	09 4a       	mov	r10,	r9	;
    b9a4:	05 4a       	mov	r10,	r5	;
    b9a6:	55 06       	rlam	#2,	r5	;
    b9a8:	0c 45       	mov	r5,	r12	;
    b9aa:	0c 5a       	add	r10,	r12	;
    b9ac:	5c 02       	rlam	#1,	r12	;

0000b9ae <.Loc.130.1>:
    b9ae:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b9b2:	0f 23       	jnz	$-480    	;abs 0xb7d2
    b9b4:	a1 3f       	jmp	$-188    	;abs 0xb8f8

0000b9b6 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    b9b6:	4a 15       	pushm	#5,	r10	;16-bit words

0000b9b8 <.LCFI14>:
    b9b8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000b9bc <.LCFI15>:
    b9bc:	47 4c       	mov.b	r12,	r7	;
    b9be:	09 4d       	mov	r13,	r9	;

0000b9c0 <.LBB12>:
    b9c0:	46 43       	clr.b	r6		;
    b9c2:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000b9c6 <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    b9c6:	0a 46       	mov	r6,	r10	;
    b9c8:	5a 06       	rlam	#2,	r10	;
    b9ca:	0a 56       	add	r6,	r10	;
    b9cc:	5a 02       	rlam	#1,	r10	;
    b9ce:	0a 58       	add	r8,	r10	;
    b9d0:	4e 43       	clr.b	r14		;
    b9d2:	4d 46       	mov.b	r6,	r13	;
    b9d4:	0c 41       	mov	r1,	r12	;
    b9d6:	b0 12 34 c6 	call	#-14796	;#0xc634
    b9da:	aa 41 00 00 	mov	@r1,	0(r10)	;
    b9de:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    b9e2:	02 00 
    b9e4:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    b9e8:	04 00 
    b9ea:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    b9ee:	06 00 
    b9f0:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    b9f4:	08 00 

0000b9f6 <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b9f6:	16 53       	inc	r6		;

0000b9f8 <.Loc.115.1>:
    b9f8:	36 90 03 00 	cmp	#3,	r6	;
    b9fc:	e4 23       	jnz	$-54     	;abs 0xb9c6

0000b9fe <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    b9fe:	b0 12 92 c2 	call	#-15726	;#0xc292

0000ba02 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    ba02:	0e 49       	mov	r9,	r14	;
    ba04:	0f 43       	clr	r15		;

0000ba06 <.Loc.194.1>:
    ba06:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    ba0a:	22 24       	jz	$+70     	;abs 0xba50

0000ba0c <.Loc.192.1>:
    ba0c:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    ba10:	49 24       	jz	$+148    	;abs 0xbaa4

0000ba12 <.Loc.192.1>:
    ba12:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    ba16:	49 24       	jz	$+148    	;abs 0xbaaa

0000ba18 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    ba18:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    ba1c:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

0000ba20 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    ba20:	4d 43       	clr.b	r13		;
    ba22:	6c 43       	mov.b	#2,	r12	;r3 As==10
    ba24:	b0 12 98 c3 	call	#-15464	;#0xc398

0000ba28 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    ba28:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

0000ba2c <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    ba2c:	4e 47       	mov.b	r7,	r14	;
    ba2e:	4d 43       	clr.b	r13		;
    ba30:	7c 40 03 00 	mov.b	#3,	r12	;
    ba34:	b0 12 ec c3 	call	#-15380	;#0xc3ec

0000ba38 <.Loc.219.1>:
        refresh_wkup_timers();
    ba38:	b0 12 b0 b7 	call	#-18512	;#0xb7b0

0000ba3c <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    ba3c:	4c 43       	clr.b	r12		;
    ba3e:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000ba42 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    ba42:	4c 43       	clr.b	r12		;
    ba44:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000ba48 <.Loc.224.1>:
}
    ba48:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000ba4c <.LCFI16>:
    ba4c:	46 17       	popm	#5,	r10	;16-bit words

0000ba4e <.LCFI17>:
    ba4e:	30 41       	ret			

0000ba50 <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    ba50:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

0000ba54 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    ba54:	0d 4a       	mov	r10,	r13	;

0000ba56 <.L95>:
            wkup_timing[i].data = ticks;
    ba56:	0c 4d       	mov	r13,	r12	;
    ba58:	5c 06       	rlam	#2,	r12	;
    ba5a:	0c 5d       	add	r13,	r12	;
    ba5c:	5c 02       	rlam	#1,	r12	;
    ba5e:	08 5c       	add	r12,	r8	;
    ba60:	88 4e 04 00 	mov	r14,	4(r8)	;
    ba64:	88 4f 06 00 	mov	r15,	6(r8)	;

0000ba68 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    ba68:	4d 43       	clr.b	r13		;
    ba6a:	4c 4a       	mov.b	r10,	r12	;
    ba6c:	b0 12 98 c3 	call	#-15464	;#0xc398

0000ba70 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    ba70:	c8 47 02 00 	mov.b	r7,	2(r8)	;

0000ba74 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    ba74:	4e 47       	mov.b	r7,	r14	;
    ba76:	4d 43       	clr.b	r13		;
    ba78:	4c 4a       	mov.b	r10,	r12	;
    ba7a:	b0 12 ec c3 	call	#-15380	;#0xc3ec

0000ba7e <.Loc.200.1>:
            wkup_timing[i].status = USED;
    ba7e:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

0000ba82 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    ba82:	5e 43       	mov.b	#1,	r14	;r3 As==01
    ba84:	4d 43       	clr.b	r13		;
    ba86:	4c 4a       	mov.b	r10,	r12	;
    ba88:	b0 12 38 c4 	call	#-15304	;#0xc438

0000ba8c <.Loc.202.1>:
        refresh_wkup_timers();
    ba8c:	b0 12 b0 b7 	call	#-18512	;#0xb7b0

0000ba90 <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    ba90:	4c 43       	clr.b	r12		;
    ba92:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000ba96 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    ba96:	4c 43       	clr.b	r12		;
    ba98:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000ba9c <.Loc.224.1>:
}
    ba9c:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000baa0 <.LCFI19>:
    baa0:	46 17       	popm	#5,	r10	;16-bit words

0000baa2 <.LCFI20>:
    baa2:	30 41       	ret			

0000baa4 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    baa4:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000baa6 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    baa6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    baa8:	d6 3f       	jmp	$-82     	;abs 0xba56

0000baaa <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    baaa:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000baac <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    baac:	6d 43       	mov.b	#2,	r13	;r3 As==10
    baae:	d3 3f       	jmp	$-88     	;abs 0xba56

0000bab0 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    bab0:	4d 4c       	mov.b	r12,	r13	;

0000bab2 <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    bab2:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    bab6:	14 24       	jz	$+42     	;abs 0xbae0

0000bab8 <.Loc.237.1>:
    bab8:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    babc:	14 24       	jz	$+42     	;abs 0xbae6

0000babe <.Loc.237.1>:
    babe:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    bac2:	01 24       	jz	$+4      	;abs 0xbac6

0000bac4 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    bac4:	30 41       	ret			

0000bac6 <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bac6:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000bac8 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    bac8:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000baca <.L102>:
            xpr_timing[i].status = NOT_USED;
    baca:	0d 4e       	mov	r14,	r13	;

0000bacc <.LVL71>:
    bacc:	5d 06       	rlam	#2,	r13	;
    bace:	0d 5e       	add	r14,	r13	;
    bad0:	5d 02       	rlam	#1,	r13	;
    bad2:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000bad6 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    bad6:	4e 43       	clr.b	r14		;
    bad8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bada:	b0 12 38 c4 	call	#-15304	;#0xc438

0000bade <.Loc.242.1>:
}
    bade:	30 41       	ret			

0000bae0 <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bae0:	4c 43       	clr.b	r12		;

0000bae2 <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    bae2:	4e 43       	clr.b	r14		;
    bae4:	f2 3f       	jmp	$-26     	;abs 0xbaca

0000bae6 <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bae6:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bae8 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    bae8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    baea:	ef 3f       	jmp	$-32     	;abs 0xbaca

0000baec <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    baec:	2a 15       	pushm	#3,	r10	;16-bit words

0000baee <.LCFI22>:
    baee:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000baf2 <.LCFI23>:
    baf2:	49 43       	clr.b	r9		;
    baf4:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

0000baf8 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    baf8:	0a 49       	mov	r9,	r10	;
    bafa:	5a 06       	rlam	#2,	r10	;
    bafc:	0a 59       	add	r9,	r10	;
    bafe:	5a 02       	rlam	#1,	r10	;
    bb00:	0a 58       	add	r8,	r10	;
    bb02:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bb04:	4d 49       	mov.b	r9,	r13	;
    bb06:	0c 41       	mov	r1,	r12	;
    bb08:	b0 12 34 c6 	call	#-14796	;#0xc634
    bb0c:	aa 41 00 00 	mov	@r1,	0(r10)	;
    bb10:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    bb14:	02 00 
    bb16:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    bb1a:	04 00 
    bb1c:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    bb20:	06 00 
    bb22:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    bb26:	08 00 

0000bb28 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bb28:	19 53       	inc	r9		;

0000bb2a <.Loc.252.1>:
    bb2a:	39 90 03 00 	cmp	#3,	r9	;
    bb2e:	e4 23       	jnz	$-54     	;abs 0xbaf8

0000bb30 <.Loc.257.1>:
    }

}
    bb30:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bb34 <.LCFI24>:
    bb34:	28 17       	popm	#3,	r10	;16-bit words

0000bb36 <.LCFI25>:
    bb36:	30 41       	ret			

0000bb38 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    bb38:	4a 15       	pushm	#5,	r10	;16-bit words

0000bb3a <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    bb3a:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    bb3e:	62 24       	jz	$+198    	;abs 0xbc04

0000bb40 <.Loc.265.1>:
    bb40:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    bb44:	07 24       	jz	$+16     	;abs 0xbb54

0000bb46 <.Loc.265.1>:
    bb46:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    bb4a:	15 25       	jz	$+556    	;abs 0xbd76

0000bb4c <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    bb4c:	b0 12 d2 c2 	call	#-15662	;#0xc2d2

0000bb50 <.Loc.313.1>:

}
    bb50:	46 17       	popm	#5,	r10	;16-bit words

0000bb52 <.LCFI27>:
    bb52:	30 41       	ret			

0000bb54 <.L160>:
            if (first)
    bb54:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    bb58:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000bb5c <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    bb5c:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000bb60 <.LVL89>:
    bb60:	08 46       	mov	r6,	r8	;
    bb62:	09 47       	mov	r7,	r9	;

0000bb64 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    bb64:	b0 12 34 c3 	call	#-15564	;#0xc334

0000bb68 <.Loc.278.1>:
    bb68:	0e 46       	mov	r6,	r14	;
    bb6a:	0f 47       	mov	r7,	r15	;
    bb6c:	0e 8c       	sub	r12,	r14	;
    bb6e:	0f 7d       	subc	r13,	r15	;

0000bb70 <.Loc.278.1>:
    bb70:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    bb74:	82 4f 26 1c 	mov	r15,	&0x1c26	;

0000bb78 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    bb78:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bb7a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    bb7c:	b0 12 98 c3 	call	#-15464	;#0xc398

0000bb80 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    bb80:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    bb84:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

0000bb88 <.Loc.281.1>:
    bb88:	4e 43       	clr.b	r14		;
    bb8a:	0e 9c       	cmp	r12,	r14	;
    bb8c:	a2 34       	jge	$+326    	;abs 0xbcd2

0000bb8e <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bb8e:	0c 99       	cmp	r9,	r12	;
    bb90:	04 38       	jl	$+10     	;abs 0xbb9a

0000bb92 <.L170>:
    bb92:	09 9c       	cmp	r12,	r9	;
    bb94:	e5 20       	jnz	$+460    	;abs 0xbd60
    bb96:	0d 98       	cmp	r8,	r13	;
    bb98:	e3 2c       	jc	$+456    	;abs 0xbd60

0000bb9a <.L152>:
    bb9a:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000bb9e <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    bb9e:	08 4d       	mov	r13,	r8	;
    bba0:	09 4c       	mov	r12,	r9	;

0000bba2 <.L117>:
        if (xpr_timing[i].status == USED)
    bba2:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    bba6:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000bbaa <.Loc.268.1>:
    bbaa:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    bbae:	1d 20       	jnz	$+60     	;abs 0xbbea

0000bbb0 <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    bbb0:	b0 12 34 c3 	call	#-15564	;#0xc334

0000bbb4 <.Loc.278.1>:
    bbb4:	0e 46       	mov	r6,	r14	;
    bbb6:	0f 47       	mov	r7,	r15	;
    bbb8:	0e 8c       	sub	r12,	r14	;
    bbba:	0f 7d       	subc	r13,	r15	;

0000bbbc <.Loc.278.1>:
    bbbc:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    bbc0:	82 4f 30 1c 	mov	r15,	&0x1c30	;

0000bbc4 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    bbc4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bbc6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bbc8:	b0 12 98 c3 	call	#-15464	;#0xc398

0000bbcc <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    bbcc:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    bbd0:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

0000bbd4 <.Loc.281.1>:
    bbd4:	4e 43       	clr.b	r14		;
    bbd6:	0e 9c       	cmp	r12,	r14	;
    bbd8:	4c 34       	jge	$+154    	;abs 0xbc72

0000bbda <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bbda:	0c 99       	cmp	r9,	r12	;
    bbdc:	76 38       	jl	$+238    	;abs 0xbcca

0000bbde <.L168>:
    bbde:	09 9c       	cmp	r12,	r9	;
    bbe0:	02 20       	jnz	$+6      	;abs 0xbbe6
    bbe2:	0d 98       	cmp	r8,	r13	;
    bbe4:	72 28       	jnc	$+230    	;abs 0xbcca

0000bbe6 <.L139>:
    bbe6:	08 9d       	cmp	r13,	r8	;
    bbe8:	d8 24       	jz	$+434    	;abs 0xbd9a

0000bbea <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    bbea:	4d 4a       	mov.b	r10,	r13	;
    bbec:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bbee:	b0 12 80 c4 	call	#-15232	;#0xc480

0000bbf2 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    bbf2:	0d 48       	mov	r8,	r13	;
    bbf4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bbf6:	b0 12 8e c4 	call	#-15218	;#0xc48e

0000bbfa <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    bbfa:	0c 48       	mov	r8,	r12	;
    bbfc:	b0 12 bc c2 	call	#-15684	;#0xc2bc

0000bc00 <.Loc.313.1>:
}
    bc00:	46 17       	popm	#5,	r10	;16-bit words

0000bc02 <.LCFI29>:
    bc02:	30 41       	ret			

0000bc04 <.L159>:
            if (first)
    bc04:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    bc08:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

0000bc0c <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    bc0c:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000bc10 <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    bc10:	b0 12 34 c3 	call	#-15564	;#0xc334

0000bc14 <.LVL105>:
    bc14:	0e 48       	mov	r8,	r14	;
    bc16:	0f 49       	mov	r9,	r15	;
    bc18:	0e 8c       	sub	r12,	r14	;
    bc1a:	0f 7d       	subc	r13,	r15	;

0000bc1c <.Loc.278.1>:
    bc1c:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    bc20:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

0000bc24 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    bc24:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bc26:	4c 43       	clr.b	r12		;
    bc28:	b0 12 98 c3 	call	#-15464	;#0xc398

0000bc2c <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    bc2c:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    bc30:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

0000bc34 <.Loc.281.1>:
    bc34:	4e 43       	clr.b	r14		;
    bc36:	0e 9c       	cmp	r12,	r14	;
    bc38:	74 34       	jge	$+234    	;abs 0xbd22

0000bc3a <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bc3a:	0c 99       	cmp	r9,	r12	;
    bc3c:	0c 34       	jge	$+26     	;abs 0xbc56

0000bc3e <.L151>:
    bc3e:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000bc42 <.L119>:
        if (xpr_timing[i].status == USED)
    bc42:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    bc46:	ab 23       	jnz	$-168    	;abs 0xbb9e

0000bc48 <.Loc.271.1>:
            if (first)
    bc48:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    bc4c:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000bc50 <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    bc50:	08 4d       	mov	r13,	r8	;
    bc52:	09 4c       	mov	r12,	r9	;
    bc54:	87 3f       	jmp	$-240    	;abs 0xbb64

0000bc56 <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bc56:	09 9c       	cmp	r12,	r9	;
    bc58:	02 20       	jnz	$+6      	;abs 0xbc5e
    bc5a:	0d 98       	cmp	r8,	r13	;
    bc5c:	f0 2b       	jnc	$-30     	;abs 0xbc3e

0000bc5e <.L114>:
    bc5e:	0d 98       	cmp	r8,	r13	;
    bc60:	93 24       	jz	$+296    	;abs 0xbd88

0000bc62 <.L118>:
        if (xpr_timing[i].status == USED)
    bc62:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    bc66:	9d 23       	jnz	$-196    	;abs 0xbba2

0000bc68 <.Loc.271.1>:
            if (first)
    bc68:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    bc6c:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    bc70:	79 3f       	jmp	$-268    	;abs 0xbb64

0000bc72 <.L162>:
            if (xpr_timing[i].data <= 0)
    bc72:	0c 93       	cmp	#0,	r12	;r3 As==00
    bc74:	02 20       	jnz	$+6      	;abs 0xbc7a
    bc76:	0d 93       	cmp	#0,	r13	;r3 As==00
    bc78:	b0 23       	jnz	$-158    	;abs 0xbbda

0000bc7a <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    bc7a:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    bc7e:	b0 12 30 b5 	call	#-19152	;#0xb530
    bc82:	b0 12 d6 b4 	call	#-19242	;#0xb4d6

0000bc86 <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    bc86:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

0000bc8a <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    bc8a:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    bc8e:	18 1c 
    bc90:	8e 24       	jz	$+286    	;abs 0xbdae

0000bc92 <.Loc.237.1>:
    bc92:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    bc96:	91 24       	jz	$+292    	;abs 0xbdba

0000bc98 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bc98:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000bc9a <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bc9a:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000bc9c <.L136>:
            xpr_timing[i].status = NOT_USED;
    bc9c:	0d 4e       	mov	r14,	r13	;
    bc9e:	5d 06       	rlam	#2,	r13	;
    bca0:	0d 5e       	add	r14,	r13	;
    bca2:	5d 02       	rlam	#1,	r13	;
    bca4:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000bca8 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    bca8:	4e 43       	clr.b	r14		;
    bcaa:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bcac:	b0 12 38 c4 	call	#-15304	;#0xc438

0000bcb0 <.LBE18>:
            if (xpr_timing[i].data > 0)
    bcb0:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    bcb4:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

0000bcb8 <.Loc.292.1>:
    bcb8:	4e 43       	clr.b	r14		;
    bcba:	0e 9c       	cmp	r12,	r14	;
    bcbc:	8e 3b       	jl	$-226    	;abs 0xbbda
    bcbe:	0c 93       	cmp	#0,	r12	;r3 As==00
    bcc0:	94 23       	jnz	$-214    	;abs 0xbbea
    bcc2:	0d 93       	cmp	#0,	r13	;r3 As==00
    bcc4:	92 27       	jz	$-218    	;abs 0xbbea

0000bcc6 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bcc6:	0c 99       	cmp	r9,	r12	;
    bcc8:	8a 37       	jge	$-234    	;abs 0xbbde

0000bcca <.L154>:
    bcca:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

0000bcce <.LVL117>:
    if (!first)
    bcce:	08 4d       	mov	r13,	r8	;
    bcd0:	8c 3f       	jmp	$-230    	;abs 0xbbea

0000bcd2 <.L161>:
            if (xpr_timing[i].data <= 0)
    bcd2:	0c 93       	cmp	#0,	r12	;r3 As==00
    bcd4:	02 20       	jnz	$+6      	;abs 0xbcda
    bcd6:	0d 93       	cmp	#0,	r13	;r3 As==00
    bcd8:	5a 23       	jnz	$-330    	;abs 0xbb8e

0000bcda <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    bcda:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    bcde:	b0 12 30 b5 	call	#-19152	;#0xb530
    bce2:	b0 12 d6 b4 	call	#-19242	;#0xb4d6

0000bce6 <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    bce6:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    bcea:	22 1c 
    bcec:	63 24       	jz	$+200    	;abs 0xbdb4

0000bcee <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bcee:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bcf0 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bcf0:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000bcf2 <.L131>:
            xpr_timing[i].status = NOT_USED;
    bcf2:	0d 4e       	mov	r14,	r13	;
    bcf4:	5d 06       	rlam	#2,	r13	;
    bcf6:	0d 5e       	add	r14,	r13	;
    bcf8:	5d 02       	rlam	#1,	r13	;
    bcfa:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000bcfe <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    bcfe:	4e 43       	clr.b	r14		;
    bd00:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bd02:	b0 12 38 c4 	call	#-15304	;#0xc438

0000bd06 <.LVL122>:
            if (xpr_timing[i].data > 0)
    bd06:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    bd0a:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

0000bd0e <.Loc.292.1>:
    bd0e:	4e 43       	clr.b	r14		;
    bd10:	0e 9c       	cmp	r12,	r14	;
    bd12:	3d 3b       	jl	$-388    	;abs 0xbb8e
    bd14:	0c 93       	cmp	#0,	r12	;r3 As==00
    bd16:	45 23       	jnz	$-372    	;abs 0xbba2
    bd18:	0d 93       	cmp	#0,	r13	;r3 As==00
    bd1a:	43 27       	jz	$-376    	;abs 0xbba2

0000bd1c <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bd1c:	0c 99       	cmp	r9,	r12	;
    bd1e:	3d 3b       	jl	$-388    	;abs 0xbb9a
    bd20:	38 3f       	jmp	$-398    	;abs 0xbb92

0000bd22 <.L164>:
            if (xpr_timing[i].data <= 0)
    bd22:	0c 93       	cmp	#0,	r12	;r3 As==00
    bd24:	02 20       	jnz	$+6      	;abs 0xbd2a
    bd26:	0d 93       	cmp	#0,	r13	;r3 As==00
    bd28:	88 23       	jnz	$-238    	;abs 0xbc3a

0000bd2a <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    bd2a:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    bd2e:	b0 12 30 b5 	call	#-19152	;#0xb530
    bd32:	b0 12 d6 b4 	call	#-19242	;#0xb4d6

0000bd36 <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    bd36:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

0000bd3a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    bd3a:	4e 43       	clr.b	r14		;
    bd3c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bd3e:	4c 43       	clr.b	r12		;
    bd40:	b0 12 38 c4 	call	#-15304	;#0xc438

0000bd44 <.LVL126>:
            if (xpr_timing[i].data > 0)
    bd44:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    bd48:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

0000bd4c <.Loc.292.1>:
    bd4c:	4e 43       	clr.b	r14		;
    bd4e:	0e 9c       	cmp	r12,	r14	;
    bd50:	74 3b       	jl	$-278    	;abs 0xbc3a
    bd52:	0c 93       	cmp	#0,	r12	;r3 As==00
    bd54:	86 23       	jnz	$-242    	;abs 0xbc62
    bd56:	0d 93       	cmp	#0,	r13	;r3 As==00
    bd58:	84 27       	jz	$-246    	;abs 0xbc62

0000bd5a <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bd5a:	0c 99       	cmp	r9,	r12	;
    bd5c:	70 3b       	jl	$-286    	;abs 0xbc3e
    bd5e:	7b 3f       	jmp	$-264    	;abs 0xbc56

0000bd60 <.L128>:
    bd60:	08 9d       	cmp	r13,	r8	;
    bd62:	1f 23       	jnz	$-448    	;abs 0xbba2
    bd64:	09 9c       	cmp	r12,	r9	;
    bd66:	1d 23       	jnz	$-452    	;abs 0xbba2

0000bd68 <.Loc.294.1>:
    bd68:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

0000bd6c <.Loc.294.1>:
    bd6c:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    bd70:	18 2f       	jc	$-462    	;abs 0xbba2
    bd72:	0a 4e       	mov	r14,	r10	;

0000bd74 <.LVL128>:
    bd74:	14 3f       	jmp	$-470    	;abs 0xbb9e

0000bd76 <.L143>:
            if (first)
    bd76:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    bd7a:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000bd7e <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    bd7e:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

0000bd82 <.LVL131>:
    bd82:	08 46       	mov	r6,	r8	;
    bd84:	09 47       	mov	r7,	r9	;
    bd86:	14 3f       	jmp	$-470    	;abs 0xbbb0

0000bd88 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bd88:	0c 99       	cmp	r9,	r12	;
    bd8a:	6b 23       	jnz	$-296    	;abs 0xbc62

0000bd8c <.Loc.294.1>:
    bd8c:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

0000bd90 <.Loc.294.1>:
    bd90:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    bd94:	66 2f       	jc	$-306    	;abs 0xbc62
    bd96:	0a 4e       	mov	r14,	r10	;

0000bd98 <.LVL133>:
    bd98:	54 3f       	jmp	$-342    	;abs 0xbc42

0000bd9a <.L163>:
    bd9a:	09 9c       	cmp	r12,	r9	;
    bd9c:	26 23       	jnz	$-434    	;abs 0xbbea

0000bd9e <.Loc.294.1>:
    bd9e:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

0000bda2 <.Loc.294.1>:
    bda2:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    bda6:	21 2f       	jc	$-444    	;abs 0xbbea
    bda8:	0a 4c       	mov	r12,	r10	;

0000bdaa <.LVL135>:
    if (!first)
    bdaa:	08 4d       	mov	r13,	r8	;
    bdac:	1e 3f       	jmp	$-450    	;abs 0xbbea

0000bdae <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bdae:	4c 43       	clr.b	r12		;

0000bdb0 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bdb0:	4e 43       	clr.b	r14		;
    bdb2:	74 3f       	jmp	$-278    	;abs 0xbc9c

0000bdb4 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bdb4:	4c 43       	clr.b	r12		;

0000bdb6 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bdb6:	4e 43       	clr.b	r14		;
    bdb8:	9c 3f       	jmp	$-198    	;abs 0xbcf2

0000bdba <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bdba:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bdbc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bdbc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bdbe:	6e 3f       	jmp	$-290    	;abs 0xbc9c

0000bdc0 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    bdc0:	5a 15       	pushm	#6,	r10	;16-bit words

0000bdc2 <.LCFI31>:
    bdc2:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bdc6 <.LCFI32>:
    bdc6:	47 4c       	mov.b	r12,	r7	;
    bdc8:	08 4d       	mov	r13,	r8	;
    bdca:	06 4e       	mov	r14,	r6	;

0000bdcc <.LBB26>:
    bdcc:	45 43       	clr.b	r5		;
    bdce:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

0000bdd2 <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    bdd2:	0a 45       	mov	r5,	r10	;
    bdd4:	5a 06       	rlam	#2,	r10	;
    bdd6:	0a 55       	add	r5,	r10	;
    bdd8:	5a 02       	rlam	#1,	r10	;
    bdda:	0a 59       	add	r9,	r10	;
    bddc:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bdde:	4d 45       	mov.b	r5,	r13	;
    bde0:	0c 41       	mov	r1,	r12	;
    bde2:	b0 12 34 c6 	call	#-14796	;#0xc634
    bde6:	aa 41 00 00 	mov	@r1,	0(r10)	;
    bdea:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    bdee:	02 00 
    bdf0:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    bdf4:	04 00 
    bdf6:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    bdfa:	06 00 
    bdfc:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    be00:	08 00 

0000be02 <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    be02:	15 53       	inc	r5		;

0000be04 <.Loc.252.1>:
    be04:	35 90 03 00 	cmp	#3,	r5	;
    be08:	e4 23       	jnz	$-54     	;abs 0xbdd2

0000be0a <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    be0a:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    be0e:	1d 24       	jz	$+60     	;abs 0xbe4a

0000be10 <.Loc.324.1>:
    be10:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    be14:	4e 24       	jz	$+158    	;abs 0xbeb2

0000be16 <.Loc.324.1>:
    be16:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    be1a:	4e 24       	jz	$+158    	;abs 0xbeb8

0000be1c <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    be1c:	0e 48       	mov	r8,	r14	;
    be1e:	0f 46       	mov	r6,	r15	;
    be20:	6d 43       	mov.b	#2,	r13	;r3 As==10
    be22:	6c 43       	mov.b	#2,	r12	;r3 As==10
    be24:	b0 12 98 c3 	call	#-15464	;#0xc398

0000be28 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    be28:	4e 47       	mov.b	r7,	r14	;
    be2a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    be2c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    be2e:	b0 12 ec c3 	call	#-15380	;#0xc3ec

0000be32 <.Loc.349.1>:
        refresh_xpr_timers();
    be32:	b0 12 38 bb 	call	#-17608	;#0xbb38

0000be36 <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    be36:	6c 43       	mov.b	#2,	r12	;r3 As==10
    be38:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000be3c <.Loc.353.1>:
    _pers_timer_commit(XPR);
    be3c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    be3e:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000be42 <.Loc.354.1>:
}
    be42:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000be46 <.LCFI33>:
    be46:	55 17       	popm	#6,	r10	;16-bit words

0000be48 <.LCFI34>:
    be48:	30 41       	ret			

0000be4a <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    be4a:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000be4e <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    be4e:	05 4a       	mov	r10,	r5	;

0000be50 <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    be50:	b0 12 34 c3 	call	#-15564	;#0xc334

0000be54 <.Loc.328.1>:
    be54:	0e 45       	mov	r5,	r14	;
    be56:	5e 06       	rlam	#2,	r14	;
    be58:	0e 55       	add	r5,	r14	;
    be5a:	5e 02       	rlam	#1,	r14	;
    be5c:	09 5e       	add	r14,	r9	;

0000be5e <.Loc.328.1>:
    be5e:	0c 58       	add	r8,	r12	;
    be60:	89 4c 04 00 	mov	r12,	4(r9)	;
    be64:	0d 66       	addc	r6,	r13	;
    be66:	89 4d 06 00 	mov	r13,	6(r9)	;

0000be6a <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    be6a:	b0 12 34 c3 	call	#-15564	;#0xc334

0000be6e <.Loc.329.1>:
    be6e:	0e 4c       	mov	r12,	r14	;
    be70:	0e 58       	add	r8,	r14	;
    be72:	0f 4d       	mov	r13,	r15	;
    be74:	0f 66       	addc	r6,	r15	;
    be76:	6d 43       	mov.b	#2,	r13	;r3 As==10
    be78:	4c 4a       	mov.b	r10,	r12	;
    be7a:	b0 12 98 c3 	call	#-15464	;#0xc398

0000be7e <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    be7e:	c9 47 02 00 	mov.b	r7,	2(r9)	;

0000be82 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    be82:	4e 47       	mov.b	r7,	r14	;
    be84:	6d 43       	mov.b	#2,	r13	;r3 As==10
    be86:	4c 4a       	mov.b	r10,	r12	;
    be88:	b0 12 ec c3 	call	#-15380	;#0xc3ec

0000be8c <.Loc.332.1>:
            xpr_timing[i].status = USED;
    be8c:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

0000be90 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    be90:	5e 43       	mov.b	#1,	r14	;r3 As==01
    be92:	6d 43       	mov.b	#2,	r13	;r3 As==10
    be94:	4c 4a       	mov.b	r10,	r12	;
    be96:	b0 12 38 c4 	call	#-15304	;#0xc438

0000be9a <.Loc.334.1>:
        refresh_xpr_timers();
    be9a:	b0 12 38 bb 	call	#-17608	;#0xbb38

0000be9e <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    be9e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bea0:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000bea4 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    bea4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bea6:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000beaa <.Loc.354.1>:
}
    beaa:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000beae <.LCFI36>:
    beae:	55 17       	popm	#6,	r10	;16-bit words

0000beb0 <.LCFI37>:
    beb0:	30 41       	ret			

0000beb2 <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    beb2:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000beb4 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    beb4:	55 43       	mov.b	#1,	r5	;r3 As==01
    beb6:	cc 3f       	jmp	$-102    	;abs 0xbe50

0000beb8 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    beb8:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000beba <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    beba:	65 43       	mov.b	#2,	r5	;r3 As==10
    bebc:	c9 3f       	jmp	$-108    	;abs 0xbe50

0000bebe <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    bebe:	3a 15       	pushm	#4,	r10	;16-bit words

0000bec0 <.LCFI39>:
    bec0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bec4 <.LCFI40>:
    bec4:	47 4c       	mov.b	r12,	r7	;

0000bec6 <.LBB34>:
    bec6:	49 43       	clr.b	r9		;
    bec8:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

0000becc <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    becc:	0a 49       	mov	r9,	r10	;
    bece:	5a 06       	rlam	#2,	r10	;
    bed0:	0a 59       	add	r9,	r10	;
    bed2:	5a 02       	rlam	#1,	r10	;
    bed4:	0a 58       	add	r8,	r10	;
    bed6:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bed8:	4d 49       	mov.b	r9,	r13	;
    beda:	0c 41       	mov	r1,	r12	;
    bedc:	b0 12 34 c6 	call	#-14796	;#0xc634
    bee0:	aa 41 00 00 	mov	@r1,	0(r10)	;
    bee4:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    bee8:	02 00 
    beea:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    beee:	04 00 
    bef0:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    bef4:	06 00 
    bef6:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    befa:	08 00 

0000befc <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    befc:	19 53       	inc	r9		;

0000befe <.Loc.252.1>:
    befe:	39 90 03 00 	cmp	#3,	r9	;
    bf02:	e4 23       	jnz	$-54     	;abs 0xbecc

0000bf04 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    bf04:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    bf08:	12 24       	jz	$+38     	;abs 0xbf2e

0000bf0a <.Loc.237.1>:
    bf0a:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    bf0e:	27 24       	jz	$+80     	;abs 0xbf5e

0000bf10 <.Loc.237.1>:
    bf10:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    bf14:	27 24       	jz	$+80     	;abs 0xbf64

0000bf16 <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    bf16:	b0 12 38 bb 	call	#-17608	;#0xbb38

0000bf1a <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    bf1a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bf1c:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000bf20 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    bf20:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bf22:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000bf26 <.Loc.371.1>:

}
    bf26:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bf2a <.LCFI41>:
    bf2a:	37 17       	popm	#4,	r10	;16-bit words

0000bf2c <.LCFI42>:
    bf2c:	30 41       	ret			

0000bf2e <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bf2e:	4c 43       	clr.b	r12		;

0000bf30 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bf30:	4e 43       	clr.b	r14		;

0000bf32 <.L181>:
            xpr_timing[i].status = NOT_USED;
    bf32:	0d 4e       	mov	r14,	r13	;
    bf34:	5d 06       	rlam	#2,	r13	;
    bf36:	0d 5e       	add	r14,	r13	;
    bf38:	5d 02       	rlam	#1,	r13	;
    bf3a:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000bf3e <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    bf3e:	4e 43       	clr.b	r14		;
    bf40:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bf42:	b0 12 38 c4 	call	#-15304	;#0xc438

0000bf46 <.Loc.242.1>:
    refresh_xpr_timers();
    bf46:	b0 12 38 bb 	call	#-17608	;#0xbb38

0000bf4a <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    bf4a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bf4c:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000bf50 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    bf50:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bf52:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000bf56 <.Loc.371.1>:
}
    bf56:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bf5a <.LCFI44>:
    bf5a:	37 17       	popm	#4,	r10	;16-bit words

0000bf5c <.LCFI45>:
    bf5c:	30 41       	ret			

0000bf5e <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bf5e:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bf60 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bf60:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bf62:	e7 3f       	jmp	$-48     	;abs 0xbf32

0000bf64 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bf64:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000bf66 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bf66:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bf68:	e4 3f       	jmp	$-54     	;abs 0xbf32

0000bf6a <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    bf6a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bf6e <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    bf6e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bf70:	4d 43       	clr.b	r13		;
    bf72:	0c 41       	mov	r1,	r12	;
    bf74:	b0 12 34 c6 	call	#-14796	;#0xc634
    bf78:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    bf7c:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    bf80:	0e 1c 
    bf82:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    bf86:	10 1c 
    bf88:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    bf8c:	12 1c 
    bf8e:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    bf92:	14 1c 

0000bf94 <.Loc.383.1>:
    }

}
    bf94:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bf98 <.LCFI48>:
    bf98:	30 41       	ret			

0000bf9a <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    bf9a:	2a 15       	pushm	#3,	r10	;16-bit words

0000bf9c <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    bf9c:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    bfa0:	8a 20       	jnz	$+278    	;abs 0xc0b6

0000bfa2 <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    bfa2:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    bfa6:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000bfaa <.Loc.465.1>:
    bfaa:	82 48 52 1c 	mov	r8,	&0x1c52	;

0000bfae <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    bfae:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    bfb2:	54 1c 

0000bfb4 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    bfb4:	b0 12 34 c3 	call	#-15564	;#0xc334

0000bfb8 <.Loc.471.1>:
    bfb8:	0e 48       	mov	r8,	r14	;
    bfba:	0f 49       	mov	r9,	r15	;
    bfbc:	0e 8c       	sub	r12,	r14	;
    bfbe:	0f 7d       	subc	r13,	r15	;

0000bfc0 <.Loc.471.1>:
    bfc0:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    bfc4:	82 4f 12 1c 	mov	r15,	&0x1c12	;

0000bfc8 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    bfc8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    bfca:	4c 43       	clr.b	r12		;
    bfcc:	b0 12 98 c3 	call	#-15464	;#0xc398

0000bfd0 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    bfd0:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    bfd4:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

0000bfd8 <.Loc.474.1>:
    bfd8:	0d 93       	cmp	#0,	r13	;r3 As==00
    bfda:	21 38       	jl	$+68     	;abs 0xc01e

0000bfdc <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    bfdc:	0f 4c       	mov	r12,	r15	;
    bfde:	0f dd       	bis	r13,	r15	;
    bfe0:	0f 93       	cmp	#0,	r15	;r3 As==00
    bfe2:	6d 24       	jz	$+220    	;abs 0xc0be

0000bfe4 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    bfe4:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    bfe8:	08 4f       	mov	r15,	r8	;
    bfea:	09 43       	clr	r9		;

0000bfec <.Loc.485.1>:
    bfec:	0d 93       	cmp	#0,	r13	;r3 As==00
    bfee:	54 38       	jl	$+170    	;abs 0xc098
    bff0:	0d 93       	cmp	#0,	r13	;r3 As==00
    bff2:	02 20       	jnz	$+6      	;abs 0xbff8
    bff4:	0c 98       	cmp	r8,	r12	;
    bff6:	50 28       	jnc	$+162    	;abs 0xc098

0000bff8 <.L209>:
    bff8:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000bffc <.Loc.485.1>:
    bffc:	0c 98       	cmp	r8,	r12	;
    bffe:	53 24       	jz	$+168    	;abs 0xc0a6

0000c000 <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    c000:	4d 4e       	mov.b	r14,	r13	;
    c002:	5c 43       	mov.b	#1,	r12	;r3 As==01
    c004:	b0 12 80 c4 	call	#-15232	;#0xc480

0000c008 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    c008:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    c00c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    c00e:	b0 12 8e c4 	call	#-15218	;#0xc48e

0000c012 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    c012:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    c016:	b0 12 dc c2 	call	#-15652	;#0xc2dc

0000c01a <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    c01a:	28 17       	popm	#3,	r10	;16-bit words

0000c01c <.LCFI50>:
    c01c:	30 41       	ret			

0000c01e <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    c01e:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    c022:	0f 43       	clr	r15		;
    c024:	0f 89       	sub	r9,	r15	;
    c026:	08 4f       	mov	r15,	r8	;
    c028:	09 4f       	mov	r15,	r9	;
    c02a:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

0000c02e <.Loc.474.1>:
    c02e:	09 9d       	cmp	r13,	r9	;
    c030:	04 38       	jl	$+10     	;abs 0xc03a

0000c032 <.Loc.474.1>:
    c032:	0d 99       	cmp	r9,	r13	;
    c034:	25 20       	jnz	$+76     	;abs 0xc080
    c036:	0f 9c       	cmp	r12,	r15	;
    c038:	23 2c       	jc	$+72     	;abs 0xc080

0000c03a <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    c03a:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    c03e:	0a 4e       	mov	r14,	r10	;
    c040:	0b 43       	clr	r11		;

0000c042 <.Loc.476.1>:
    c042:	48 43       	clr.b	r8		;
    c044:	49 43       	clr.b	r9		;
    c046:	08 8c       	sub	r12,	r8	;
    c048:	09 7d       	subc	r13,	r9	;

0000c04a <.Loc.476.1>:
    c04a:	09 93       	cmp	#0,	r9	;r3 As==00
    c04c:	04 38       	jl	$+10     	;abs 0xc056
    c04e:	09 93       	cmp	#0,	r9	;r3 As==00
    c050:	0b 20       	jnz	$+24     	;abs 0xc068
    c052:	08 9a       	cmp	r10,	r8	;
    c054:	09 2c       	jc	$+20     	;abs 0xc068

0000c056 <.L207>:
    c056:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000c05a <.L196>:
                    min_pdc = -pdc_timing[i].data;
    c05a:	4f 43       	clr.b	r15		;
    c05c:	0f 8c       	sub	r12,	r15	;
    c05e:	82 4f 52 1c 	mov	r15,	&0x1c52	;

0000c062 <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    c062:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

0000c066 <.Loc.494.1>:
    if (!first)
    c066:	cc 3f       	jmp	$-102    	;abs 0xc000

0000c068 <.L194>:
    c068:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000c06c <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    c06c:	0a 98       	cmp	r8,	r10	;
    c06e:	c8 23       	jnz	$-110    	;abs 0xc000
    c070:	09 93       	cmp	#0,	r9	;r3 As==00
    c072:	c6 23       	jnz	$-114    	;abs 0xc000

0000c074 <.Loc.476.1>:
    c074:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000c078 <.Loc.476.1>:
    c078:	4f 9e       	cmp.b	r14,	r15	;
    c07a:	c2 2f       	jc	$-122    	;abs 0xc000
    c07c:	0e 4f       	mov	r15,	r14	;
    c07e:	ed 3f       	jmp	$-36     	;abs 0xc05a

0000c080 <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    c080:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000c084 <.Loc.481.1>:
    c084:	0d 99       	cmp	r9,	r13	;
    c086:	05 38       	jl	$+12     	;abs 0xc092
    c088:	0a 49       	mov	r9,	r10	;
    c08a:	09 9d       	cmp	r13,	r9	;
    c08c:	b9 23       	jnz	$-140    	;abs 0xc000
    c08e:	0c 9f       	cmp	r15,	r12	;
    c090:	b7 2f       	jc	$-144    	;abs 0xc000

0000c092 <.L208>:
    c092:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000c096 <.Loc.494.1>:
    if (!first)
    c096:	b4 3f       	jmp	$-150    	;abs 0xc000

0000c098 <.L201>:
    c098:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000c09c <.L203>:
                    min_pdc = pdc_timing[i].data;
    c09c:	82 4c 52 1c 	mov	r12,	&0x1c52	;

0000c0a0 <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    c0a0:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

0000c0a4 <.Loc.494.1>:
    if (!first)
    c0a4:	ad 3f       	jmp	$-164    	;abs 0xc000

0000c0a6 <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    c0a6:	0d 99       	cmp	r9,	r13	;
    c0a8:	ab 23       	jnz	$-168    	;abs 0xc000

0000c0aa <.Loc.485.1>:
    c0aa:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000c0ae <.Loc.485.1>:
    c0ae:	4f 9e       	cmp.b	r14,	r15	;
    c0b0:	a7 2f       	jc	$-176    	;abs 0xc000
    c0b2:	0e 4f       	mov	r15,	r14	;
    c0b4:	f3 3f       	jmp	$-24     	;abs 0xc09c

0000c0b6 <.L189>:
    else stop_timer();
    c0b6:	b0 12 92 c2 	call	#-15726	;#0xc292

0000c0ba <.Loc.507.1>:
}
    c0ba:	28 17       	popm	#3,	r10	;16-bit words

0000c0bc <.LCFI52>:
    c0bc:	30 41       	ret			

0000c0be <.L199>:
    if (!first)
    c0be:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    c0c2:	9e 3f       	jmp	$-194    	;abs 0xc000

0000c0c4 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    c0c4:	1a 15       	pushm	#2,	r10	;16-bit words

0000c0c6 <.LCFI54>:
    c0c6:	17 15       	pushm	#2,	r7	;16-bit words

0000c0c8 <.LCFI55>:
    c0c8:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000c0cc <.LCFI56>:
    c0cc:	49 4c       	mov.b	r12,	r9	;
    c0ce:	0a 4d       	mov	r13,	r10	;

0000c0d0 <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    c0d0:	5e 43       	mov.b	#1,	r14	;r3 As==01
    c0d2:	4d 43       	clr.b	r13		;

0000c0d4 <.LVL210>:
    c0d4:	0c 41       	mov	r1,	r12	;

0000c0d6 <.LVL211>:
    c0d6:	b0 12 34 c6 	call	#-14796	;#0xc634
    c0da:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    c0de:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    c0e2:	0e 1c 
    c0e4:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    c0e8:	10 1c 
    c0ea:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    c0ee:	12 1c 
    c0f0:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    c0f4:	14 1c 

0000c0f6 <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    c0f6:	06 4a       	mov	r10,	r6	;
    c0f8:	07 43       	clr	r7		;

0000c0fa <.Loc.401.1>:
    c0fa:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    c0fe:	31 20       	jnz	$+100    	;abs 0xc162

0000c100 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    c100:	4c 49       	mov.b	r9,	r12	;
    c102:	b0 12 30 b5 	call	#-19152	;#0xb530
    c106:	0d 4a       	mov	r10,	r13	;
    c108:	b0 12 fc b4 	call	#-19204	;#0xb4fc

0000c10c <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    c10c:	4c 49       	mov.b	r9,	r12	;
    c10e:	b0 12 30 b5 	call	#-19152	;#0xb530
    c112:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c114:	b0 12 02 b5 	call	#-19198	;#0xb502

0000c118 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    c118:	0e 46       	mov	r6,	r14	;
    c11a:	0f 47       	mov	r7,	r15	;
    c11c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c11e:	4c 43       	clr.b	r12		;
    c120:	b0 12 98 c3 	call	#-15464	;#0xc398

0000c124 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    c124:	82 46 10 1c 	mov	r6,	&0x1c10	;
    c128:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000c12c <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    c12c:	4e 49       	mov.b	r9,	r14	;
    c12e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c130:	4c 43       	clr.b	r12		;
    c132:	b0 12 ec c3 	call	#-15380	;#0xc3ec

0000c136 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    c136:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000c13a <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    c13a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    c13c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c13e:	4c 43       	clr.b	r12		;
    c140:	b0 12 38 c4 	call	#-15304	;#0xc438

0000c144 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    c144:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

0000c148 <.Loc.411.1>:
        refresh_pdc_timers();
    c148:	b0 12 9a bf 	call	#-16486	;#0xbf9a

0000c14c <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    c14c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    c14e:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000c152 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    c152:	5c 43       	mov.b	#1,	r12	;r3 As==01
    c154:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000c158 <.Loc.435.1>:
}
    c158:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000c15c <.LCFI57>:
    c15c:	16 17       	popm	#2,	r7	;16-bit words

0000c15e <.LCFI58>:
    c15e:	19 17       	popm	#2,	r10	;16-bit words

0000c160 <.LCFI59>:
    c160:	30 41       	ret			

0000c162 <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    c162:	82 46 10 1c 	mov	r6,	&0x1c10	;
    c166:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000c16a <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    c16a:	0e 46       	mov	r6,	r14	;
    c16c:	0f 47       	mov	r7,	r15	;
    c16e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c170:	4c 43       	clr.b	r12		;
    c172:	b0 12 98 c3 	call	#-15464	;#0xc398

0000c176 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    c176:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000c17a <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    c17a:	4e 49       	mov.b	r9,	r14	;
    c17c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c17e:	4c 43       	clr.b	r12		;
    c180:	b0 12 ec c3 	call	#-15380	;#0xc3ec

0000c184 <.Loc.430.1>:
        refresh_pdc_timers();
    c184:	b0 12 9a bf 	call	#-16486	;#0xbf9a

0000c188 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    c188:	5c 43       	mov.b	#1,	r12	;r3 As==01
    c18a:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000c18e <.Loc.434.1>:
    _pers_timer_commit(PDC);
    c18e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    c190:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000c194 <.Loc.435.1>:
}
    c194:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000c198 <.LCFI61>:
    c198:	16 17       	popm	#2,	r7	;16-bit words

0000c19a <.LCFI62>:
    c19a:	19 17       	popm	#2,	r10	;16-bit words

0000c19c <.LCFI63>:
    c19c:	30 41       	ret			

0000c19e <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    c19e:	0a 15       	pushm	#1,	r10	;16-bit words

0000c1a0 <.LCFI64>:
    c1a0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000c1a4 <.LCFI65>:
    c1a4:	4a 4c       	mov.b	r12,	r10	;

0000c1a6 <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    c1a6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    c1a8:	4d 43       	clr.b	r13		;
    c1aa:	0c 41       	mov	r1,	r12	;

0000c1ac <.LVL233>:
    c1ac:	b0 12 34 c6 	call	#-14796	;#0xc634
    c1b0:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    c1b4:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    c1b8:	0e 1c 
    c1ba:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    c1be:	10 1c 
    c1c0:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    c1c4:	12 1c 
    c1c6:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    c1ca:	14 1c 

0000c1cc <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    c1cc:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    c1d0:	07 20       	jnz	$+16     	;abs 0xc1e0

0000c1d2 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    c1d2:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000c1d6 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    c1d6:	4e 43       	clr.b	r14		;
    c1d8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c1da:	4c 43       	clr.b	r12		;
    c1dc:	b0 12 38 c4 	call	#-15304	;#0xc438

0000c1e0 <.L216>:
    refresh_pdc_timers();
    c1e0:	b0 12 9a bf 	call	#-16486	;#0xbf9a

0000c1e4 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    c1e4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    c1e6:	b0 12 9c c4 	call	#-15204	;#0xc49c

0000c1ea <.Loc.448.1>:
    _pers_timer_commit(XPR);
    c1ea:	6c 43       	mov.b	#2,	r12	;r3 As==10
    c1ec:	b0 12 f0 c5 	call	#-14864	;#0xc5f0

0000c1f0 <.Loc.450.1>:
}
    c1f0:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000c1f4 <.LCFI66>:
    c1f4:	0a 17       	popm	#1,	r10	;16-bit words

0000c1f6 <.LCFI67>:
    c1f6:	30 41       	ret			

0000c1f8 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    c1f8:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    c1fc:	07 20       	jnz	$+16     	;abs 0xc20c

0000c1fe <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    c1fe:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000c202 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    c202:	4e 43       	clr.b	r14		;
    c204:	5d 43       	mov.b	#1,	r13	;r3 As==01
    c206:	4c 43       	clr.b	r12		;

0000c208 <.LVL242>:
    c208:	b0 12 38 c4 	call	#-15304	;#0xc438

0000c20c <.L217>:

        }
    }
}
    c20c:	30 41       	ret			

0000c20e <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    c20e:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000c212 <.Loc.83.1>:
    c212:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000c216 <.Loc.83.1>:
    c216:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000c21a <.Loc.83.1>:
    c21a:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

0000c21e <.Loc.83.1>:
    c21e:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000c222 <.Loc.83.1>:
    c222:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000c226 <.Loc.83.1>:
    c226:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000c22a <.Loc.83.1>:
    c22a:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

0000c22e <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    c22e:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000c232 <.Loc.88.1>:
}
    c232:	30 41       	ret			

0000c234 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    c234:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c238 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    c238:	0e 4c       	mov	r12,	r14	;
    c23a:	5e 09       	rram	#3,	r14	;

0000c23c <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    c23c:	7e f0 07 00 	and.b	#7,	r14	;

0000c240 <.Loc.99.1>:
    c240:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    c244:	08 00 

0000c246 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    c246:	0d 5e       	add	r14,	r13	;

0000c248 <.LVL12>:
    c248:	7c f0 07 00 	and.b	#7,	r12	;

0000c24c <.LVL13>:
    c24c:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    c250:	00 00 

0000c252 <.Loc.101.1>:
}
    c252:	30 41       	ret			

0000c254 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    c254:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c258 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    c258:	0e 4c       	mov	r12,	r14	;
    c25a:	5e 09       	rram	#3,	r14	;

0000c25c <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    c25c:	7e f0 07 00 	and.b	#7,	r14	;
    c260:	0f 4d       	mov	r13,	r15	;
    c262:	0f 5e       	add	r14,	r15	;

0000c264 <.Loc.112.1>:
    c264:	7c f0 07 00 	and.b	#7,	r12	;

0000c268 <.LVL16>:
    c268:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    c26c:	00 00 

0000c26e <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    c26e:	6c 4f       	mov.b	@r15,	r12	;

0000c270 <.Loc.114.1>:
    c270:	0c 93       	cmp	#0,	r12	;r3 As==00
    c272:	03 20       	jnz	$+8      	;abs 0xc27a

0000c274 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    c274:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    c278:	08 00 

0000c27a <.L4>:
    }
}
    c27a:	30 41       	ret			

0000c27c <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    c27c:	5d 4c 08 00 	mov.b	8(r12),	r13	;

0000c280 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    c280:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

0000c284 <.LVL19>:
    c284:	0c 5d       	add	r13,	r12	;

0000c286 <.LVL20>:
    c286:	6e 4c       	mov.b	@r12,	r14	;

0000c288 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    c288:	0c 4d       	mov	r13,	r12	;
    c28a:	5c 0a       	rlam	#3,	r12	;

0000c28c <.Loc.128.1>:
}
    c28c:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    c290:	30 41       	ret			

0000c292 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    c292:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

0000c296 <.Loc.158.1>:
    TA2CTL = 0;
    c296:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000c29a <.Loc.159.1>:
}
    c29a:	30 41       	ret			

0000c29c <timerA2_init>:
    c29c:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    c2a0:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    c2a4:	30 41       	ret			

0000c2a6 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    c2a6:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000c2aa <.Loc.172.1>:
    TA0CCR0 = ticks;
    c2aa:	82 4c 52 03 	mov	r12,	&0x0352	;

0000c2ae <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    c2ae:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    c2b2:	42 03 

0000c2b4 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    c2b4:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    c2b8:	40 03 

0000c2ba <.Loc.175.1>:
}
    c2ba:	30 41       	ret			

0000c2bc <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    c2bc:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000c2c0 <.Loc.179.1>:
    TA2CCR0 = ticks;
    c2c0:	82 4c 12 04 	mov	r12,	&0x0412	;

0000c2c4 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    c2c4:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    c2c8:	02 04 

0000c2ca <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    c2ca:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    c2ce:	00 04 

0000c2d0 <.Loc.183.1>:

}
    c2d0:	30 41       	ret			

0000c2d2 <stop_timer_xpr>:
    c2d2:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    c2d6:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    c2da:	30 41       	ret			

0000c2dc <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    c2dc:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

0000c2e0 <.Loc.195.1>:
    TA1CCR0 = ticks;
    c2e0:	82 4c 92 03 	mov	r12,	&0x0392	;

0000c2e4 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    c2e4:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    c2e8:	82 03 

0000c2ea <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    c2ea:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    c2ee:	80 03 

0000c2f0 <.Loc.198.1>:
}
    c2f0:	30 41       	ret			

0000c2f2 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    c2f2:	30 41       	ret			

0000c2f4 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    c2f4:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    c2f8:	61 01 

0000c2fa <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    c2fa:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    c2fe:	64 01 

0000c300 <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    c300:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000c304 <.Loc.248.1>:
  CSCTL0_H = 0;
    c304:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

0000c308 <.Loc.250.1>:

}
    c308:	30 41       	ret			

0000c30a <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    c30a:	4c 43       	clr.b	r12		;
    c30c:	4d 43       	clr.b	r13		;
    c30e:	30 41       	ret			

0000c310 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    c310:	82 43 6a 51 	mov	#0,	&0x516a	;r3 As==00
    c314:	82 43 6c 51 	mov	#0,	&0x516c	;r3 As==00

0000c318 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    c318:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000c31c <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    c31c:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    c320:	40 04 

0000c322 <.Loc.334.1>:

    __bis_SR_register(GIE);
    c322:	03 43       	nop			
    c324:	32 d2       	eint			
    c326:	03 43       	nop			

0000c328 <.Loc.335.1>:
}
    c328:	30 41       	ret			

0000c32a <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    c32a:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000c32e <.Loc.343.1>:
    TA3CCTL0 = 0;
    c32e:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000c332 <.Loc.344.1>:
}
    c332:	30 41       	ret			

0000c334 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    c334:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    c338:	40 04 

0000c33a <.Loc.356.1>:

   tmp = TA3R;
    c33a:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000c33e <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    c33e:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    c342:	40 04 

0000c344 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    c344:	0d 43       	clr	r13		;

0000c346 <.LVL6>:
    c346:	0e 4c       	mov	r12,	r14	;
    c348:	0f 4d       	mov	r13,	r15	;
    c34a:	0e 5e       	rla	r14		;
    c34c:	0f 6f       	rlc	r15		;
    c34e:	0e 5e       	rla	r14		;
    c350:	0f 6f       	rlc	r15		;
    c352:	0c 5e       	add	r14,	r12	;

0000c354 <.LVL7>:
    c354:	0d 6f       	addc	r15,	r13	;
    c356:	0c 5c       	rla	r12		;
    c358:	0d 6d       	rlc	r13		;

0000c35a <.Loc.363.1>:
}
    c35a:	1c 52 6a 51 	add	&0x516a,r12	;0x516a
    c35e:	1d 62 6c 51 	addc	&0x516c,r13	;0x516c
    c362:	30 41       	ret			

0000c364 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    c364:	b2 50 aa 00 	add	#170,	&0x516a	;#0x00aa
    c368:	6a 51 
    c36a:	b2 60 0a 00 	addc	#10,	&0x516c	;#0x000a
    c36e:	6c 51 

0000c370 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    c370:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

0000c374 <.Loc.381.1>:
}
    c374:	00 13       	reti			

0000c376 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    c376:	3c 40 6e 51 	mov	#20846,	r12	;#0x516e
    c37a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000c37e <.Loc.34.1>:
    c37e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

0000c382 <.Loc.34.1>:
    c382:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

0000c386 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    c386:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000c38a <.Loc.38.1>:
    c38a:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000c38e <.Loc.38.1>:
    c38e:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

0000c392 <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    c392:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

0000c396 <.Loc.42.1>:
    }
}
    c396:	30 41       	ret			

0000c398 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    c398:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c39c <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    c39c:	1d 93       	cmp	#1,	r13	;r3 As==01
    c39e:	1b 24       	jz	$+56     	;abs 0xc3d6
    c3a0:	2d 93       	cmp	#2,	r13	;r3 As==10
    c3a2:	0e 24       	jz	$+30     	;abs 0xc3c0
    c3a4:	0d 93       	cmp	#0,	r13	;r3 As==00
    c3a6:	01 24       	jz	$+4      	;abs 0xc3aa

0000c3a8 <.Loc.69.1>:
        default:
            break;
    }


}
    c3a8:	30 41       	ret			

0000c3aa <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    c3aa:	0d 4c       	mov	r12,	r13	;

0000c3ac <.LVL9>:
    c3ac:	5d 06       	rlam	#2,	r13	;
    c3ae:	0c 5d       	add	r13,	r12	;

0000c3b0 <.LVL10>:
    c3b0:	5c 02       	rlam	#1,	r12	;
    c3b2:	8c 4e d6 51 	mov	r14,	20950(r12); 0x51d6
    c3b6:	8c 4f d8 51 	mov	r15,	20952(r12); 0x51d8

0000c3ba <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    c3ba:	9c 43 da 51 	mov	#1,	20954(r12);r3 As==01, 0x51da

0000c3be <.Loc.55.1>:
}
    c3be:	30 41       	ret			

0000c3c0 <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    c3c0:	0d 4c       	mov	r12,	r13	;

0000c3c2 <.LVL12>:
    c3c2:	5d 06       	rlam	#2,	r13	;
    c3c4:	0c 5d       	add	r13,	r12	;
    c3c6:	5c 02       	rlam	#1,	r12	;
    c3c8:	8c 4e f4 51 	mov	r14,	20980(r12); 0x51f4
    c3cc:	8c 4f f6 51 	mov	r15,	20982(r12); 0x51f6

0000c3d0 <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    c3d0:	9c 43 f8 51 	mov	#1,	20984(r12);r3 As==01, 0x51f8

0000c3d4 <.Loc.59.1>:
}
    c3d4:	30 41       	ret			

0000c3d6 <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    c3d6:	0d 4c       	mov	r12,	r13	;

0000c3d8 <.LVL14>:
    c3d8:	5d 06       	rlam	#2,	r13	;
    c3da:	0c 5d       	add	r13,	r12	;
    c3dc:	5c 02       	rlam	#1,	r12	;
    c3de:	8c 4e 12 52 	mov	r14,	21010(r12); 0x5212
    c3e2:	8c 4f 14 52 	mov	r15,	21012(r12); 0x5214

0000c3e6 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    c3e6:	9c 43 16 52 	mov	#1,	21014(r12);r3 As==01, 0x5216

0000c3ea <.Loc.63.1>:
}
    c3ea:	30 41       	ret			

0000c3ec <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    c3ec:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    c3f0:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000c3f4 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    c3f4:	1d 93       	cmp	#1,	r13	;r3 As==01
    c3f6:	17 24       	jz	$+48     	;abs 0xc426
    c3f8:	2d 93       	cmp	#2,	r13	;r3 As==10
    c3fa:	0c 24       	jz	$+26     	;abs 0xc414
    c3fc:	0d 93       	cmp	#0,	r13	;r3 As==00
    c3fe:	01 24       	jz	$+4      	;abs 0xc402

0000c400 <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    c400:	30 41       	ret			

0000c402 <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    c402:	0d 4c       	mov	r12,	r13	;

0000c404 <.LVL16>:
    c404:	5d 06       	rlam	#2,	r13	;
    c406:	0c 5d       	add	r13,	r12	;

0000c408 <.LVL17>:
    c408:	5c 02       	rlam	#1,	r12	;
    c40a:	cc 4e d4 51 	mov.b	r14,	20948(r12); 0x51d4

0000c40e <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    c40e:	9c 43 da 51 	mov	#1,	20954(r12);r3 As==01, 0x51da

0000c412 <.Loc.78.1>:
}
    c412:	30 41       	ret			

0000c414 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    c414:	0d 4c       	mov	r12,	r13	;

0000c416 <.LVL19>:
    c416:	5d 06       	rlam	#2,	r13	;
    c418:	0c 5d       	add	r13,	r12	;
    c41a:	5c 02       	rlam	#1,	r12	;
    c41c:	cc 4e f2 51 	mov.b	r14,	20978(r12); 0x51f2

0000c420 <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    c420:	9c 43 f8 51 	mov	#1,	20984(r12);r3 As==01, 0x51f8

0000c424 <.Loc.82.1>:
}
    c424:	30 41       	ret			

0000c426 <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    c426:	0d 4c       	mov	r12,	r13	;

0000c428 <.LVL21>:
    c428:	5d 06       	rlam	#2,	r13	;
    c42a:	0c 5d       	add	r13,	r12	;
    c42c:	5c 02       	rlam	#1,	r12	;
    c42e:	cc 4e 10 52 	mov.b	r14,	21008(r12); 0x5210

0000c432 <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    c432:	9c 43 16 52 	mov	#1,	21014(r12);r3 As==01, 0x5216

0000c436 <.Loc.86.1>:
}
    c436:	30 41       	ret			

0000c438 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    c438:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c43c <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    c43c:	1d 93       	cmp	#1,	r13	;r3 As==01
    c43e:	17 24       	jz	$+48     	;abs 0xc46e
    c440:	2d 93       	cmp	#2,	r13	;r3 As==10
    c442:	0c 24       	jz	$+26     	;abs 0xc45c
    c444:	0d 93       	cmp	#0,	r13	;r3 As==00
    c446:	01 24       	jz	$+4      	;abs 0xc44a

0000c448 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    c448:	30 41       	ret			

0000c44a <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    c44a:	0d 4c       	mov	r12,	r13	;

0000c44c <.LVL23>:
    c44c:	5d 06       	rlam	#2,	r13	;
    c44e:	0c 5d       	add	r13,	r12	;

0000c450 <.LVL24>:
    c450:	5c 02       	rlam	#1,	r12	;
    c452:	8c 4e d2 51 	mov	r14,	20946(r12); 0x51d2

0000c456 <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    c456:	9c 43 da 51 	mov	#1,	20954(r12);r3 As==01, 0x51da

0000c45a <.Loc.100.1>:
}
    c45a:	30 41       	ret			

0000c45c <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    c45c:	0d 4c       	mov	r12,	r13	;

0000c45e <.LVL26>:
    c45e:	5d 06       	rlam	#2,	r13	;
    c460:	0c 5d       	add	r13,	r12	;
    c462:	5c 02       	rlam	#1,	r12	;
    c464:	8c 4e f0 51 	mov	r14,	20976(r12); 0x51f0

0000c468 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    c468:	9c 43 f8 51 	mov	#1,	20984(r12);r3 As==01, 0x51f8

0000c46c <.Loc.104.1>:
}
    c46c:	30 41       	ret			

0000c46e <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    c46e:	0d 4c       	mov	r12,	r13	;

0000c470 <.LVL28>:
    c470:	5d 06       	rlam	#2,	r13	;
    c472:	0c 5d       	add	r13,	r12	;
    c474:	5c 02       	rlam	#1,	r12	;
    c476:	8c 4e 0e 52 	mov	r14,	21006(r12); 0x520e

0000c47a <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    c47a:	9c 43 16 52 	mov	#1,	21014(r12);r3 As==01, 0x5216

0000c47e <.Loc.108.1>:
}
    c47e:	30 41       	ret			

0000c480 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    c480:	0e 4c       	mov	r12,	r14	;
    c482:	5e 0a       	rlam	#3,	r14	;
    c484:	ce 4d 1a 52 	mov.b	r13,	21018(r14); 0x521a

0000c488 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    c488:	9e 43 1e 52 	mov	#1,	21022(r14);r3 As==01, 0x521e

0000c48c <.Loc.119.1>:
}
    c48c:	30 41       	ret			

0000c48e <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    c48e:	0e 4c       	mov	r12,	r14	;
    c490:	5e 0a       	rlam	#3,	r14	;
    c492:	8e 4d 1c 52 	mov	r13,	21020(r14); 0x521c

0000c496 <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    c496:	9e 43 1e 52 	mov	#1,	21022(r14);r3 As==01, 0x521e

0000c49a <.Loc.125.1>:
}
    c49a:	30 41       	ret			

0000c49c <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    c49c:	1c 93       	cmp	#1,	r12	;r3 As==01
    c49e:	0b 24       	jz	$+24     	;abs 0xc4b6
    c4a0:	2c 93       	cmp	#2,	r12	;r3 As==10
    c4a2:	06 24       	jz	$+14     	;abs 0xc4b0
    c4a4:	0c 93       	cmp	#0,	r12	;r3 As==00
    c4a6:	01 24       	jz	$+4      	;abs 0xc4aa

0000c4a8 <.Loc.145.1>:
        default:
            break;

    }

}
    c4a8:	30 41       	ret			

0000c4aa <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    c4aa:	92 43 36 52 	mov	#1,	&0x5236	;r3 As==01

0000c4ae <.Loc.133.1>:
}
    c4ae:	30 41       	ret			

0000c4b0 <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    c4b0:	92 43 38 52 	mov	#1,	&0x5238	;r3 As==01

0000c4b4 <.Loc.136.1>:
}
    c4b4:	30 41       	ret			

0000c4b6 <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    c4b6:	92 43 3a 52 	mov	#1,	&0x523a	;r3 As==01

0000c4ba <.Loc.139.1>:
}
    c4ba:	30 41       	ret			

0000c4bc <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    c4bc:	3d 40 6e 51 	mov	#20846,	r13	;#0x516e
    c4c0:	1c 93       	cmp	#1,	r12	;r3 As==01
    c4c2:	18 24       	jz	$+50     	;abs 0xc4f4
    c4c4:	2c 93       	cmp	#2,	r12	;r3 As==10
    c4c6:	40 24       	jz	$+130    	;abs 0xc548
    c4c8:	0c 93       	cmp	#0,	r12	;r3 As==00
    c4ca:	26 24       	jz	$+78     	;abs 0xc518

0000c4cc <.L28>:
    c4cc:	0e 4c       	mov	r12,	r14	;
    c4ce:	5e 0a       	rlam	#3,	r14	;
    c4d0:	9e 93 1e 52 	cmp	#1,	21022(r14);r3 As==01, 0x521e
    c4d4:	01 24       	jz	$+4      	;abs 0xc4d8

0000c4d6 <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    c4d6:	30 41       	ret			

0000c4d8 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    c4d8:	0c 4e       	mov	r14,	r12	;

0000c4da <.LVL33>:
    c4da:	0c 5d       	add	r13,	r12	;
    c4dc:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    c4e0:	46 00 
    c4e2:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    c4e6:	48 00 
    c4e8:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    c4ec:	4a 00 

0000c4ee <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    c4ee:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

0000c4f2 <.Loc.191.1>:
}
    c4f2:	30 41       	ret			

0000c4f4 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    c4f4:	92 93 16 52 	cmp	#1,	&0x5216	;r3 As==01
    c4f8:	e9 23       	jnz	$-44     	;abs 0xc4cc

0000c4fa <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    c4fa:	92 42 0e 52 	mov	&0x520e,&0x51aa	;0x520e
    c4fe:	aa 51 
    c500:	92 42 10 52 	mov	&0x5210,&0x51ac	;0x5210
    c504:	ac 51 
    c506:	92 42 12 52 	mov	&0x5212,&0x51ae	;0x5212
    c50a:	ae 51 
    c50c:	92 42 14 52 	mov	&0x5214,&0x51b0	;0x5214
    c510:	b0 51 

0000c512 <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    c512:	82 43 b2 51 	mov	#0,	&0x51b2	;r3 As==00

0000c516 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    c516:	da 3f       	jmp	$-74     	;abs 0xc4cc

0000c518 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    c518:	92 93 da 51 	cmp	#1,	&0x51da	;r3 As==01
    c51c:	5a 24       	jz	$+182    	;abs 0xc5d2

0000c51e <.L29>:
    c51e:	92 93 e4 51 	cmp	#1,	&0x51e4	;r3 As==01
    c522:	48 24       	jz	$+146    	;abs 0xc5b4

0000c524 <.L30>:
    c524:	92 93 ee 51 	cmp	#1,	&0x51ee	;r3 As==01
    c528:	d1 23       	jnz	$-92     	;abs 0xc4cc

0000c52a <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    c52a:	92 42 e6 51 	mov	&0x51e6,&0x5182	;0x51e6
    c52e:	82 51 
    c530:	92 42 e8 51 	mov	&0x51e8,&0x5184	;0x51e8
    c534:	84 51 
    c536:	92 42 ea 51 	mov	&0x51ea,&0x5186	;0x51ea
    c53a:	86 51 
    c53c:	92 42 ec 51 	mov	&0x51ec,&0x5188	;0x51ec
    c540:	88 51 

0000c542 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    c542:	82 43 8a 51 	mov	#0,	&0x518a	;r3 As==00

0000c546 <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    c546:	c2 3f       	jmp	$-122    	;abs 0xc4cc

0000c548 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    c548:	92 93 f8 51 	cmp	#1,	&0x51f8	;r3 As==01
    c54c:	24 24       	jz	$+74     	;abs 0xc596

0000c54e <.L32>:
    c54e:	92 93 02 52 	cmp	#1,	&0x5202	;r3 As==01
    c552:	12 24       	jz	$+38     	;abs 0xc578

0000c554 <.L33>:
    c554:	92 93 0c 52 	cmp	#1,	&0x520c	;r3 As==01
    c558:	b9 23       	jnz	$-140    	;abs 0xc4cc

0000c55a <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    c55a:	92 42 04 52 	mov	&0x5204,&0x51a0	;0x5204
    c55e:	a0 51 
    c560:	92 42 06 52 	mov	&0x5206,&0x51a2	;0x5206
    c564:	a2 51 
    c566:	92 42 08 52 	mov	&0x5208,&0x51a4	;0x5208
    c56a:	a4 51 
    c56c:	92 42 0a 52 	mov	&0x520a,&0x51a6	;0x520a
    c570:	a6 51 

0000c572 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    c572:	82 43 a8 51 	mov	#0,	&0x51a8	;r3 As==00

0000c576 <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    c576:	aa 3f       	jmp	$-170    	;abs 0xc4cc

0000c578 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    c578:	92 42 fa 51 	mov	&0x51fa,&0x5196	;0x51fa
    c57c:	96 51 
    c57e:	92 42 fc 51 	mov	&0x51fc,&0x5198	;0x51fc
    c582:	98 51 
    c584:	92 42 fe 51 	mov	&0x51fe,&0x519a	;0x51fe
    c588:	9a 51 
    c58a:	92 42 00 52 	mov	&0x5200,&0x519c	;0x5200
    c58e:	9c 51 

0000c590 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    c590:	82 43 9e 51 	mov	#0,	&0x519e	;r3 As==00
    c594:	df 3f       	jmp	$-64     	;abs 0xc554

0000c596 <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    c596:	92 42 f0 51 	mov	&0x51f0,&0x518c	;0x51f0
    c59a:	8c 51 
    c59c:	92 42 f2 51 	mov	&0x51f2,&0x518e	;0x51f2
    c5a0:	8e 51 
    c5a2:	92 42 f4 51 	mov	&0x51f4,&0x5190	;0x51f4
    c5a6:	90 51 
    c5a8:	92 42 f6 51 	mov	&0x51f6,&0x5192	;0x51f6
    c5ac:	92 51 

0000c5ae <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    c5ae:	82 43 94 51 	mov	#0,	&0x5194	;r3 As==00
    c5b2:	cd 3f       	jmp	$-100    	;abs 0xc54e

0000c5b4 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    c5b4:	92 42 dc 51 	mov	&0x51dc,&0x5178	;0x51dc
    c5b8:	78 51 
    c5ba:	92 42 de 51 	mov	&0x51de,&0x517a	;0x51de
    c5be:	7a 51 
    c5c0:	92 42 e0 51 	mov	&0x51e0,&0x517c	;0x51e0
    c5c4:	7c 51 
    c5c6:	92 42 e2 51 	mov	&0x51e2,&0x517e	;0x51e2
    c5ca:	7e 51 

0000c5cc <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    c5cc:	82 43 80 51 	mov	#0,	&0x5180	;r3 As==00
    c5d0:	a9 3f       	jmp	$-172    	;abs 0xc524

0000c5d2 <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    c5d2:	92 42 d2 51 	mov	&0x51d2,&0x516e	;0x51d2
    c5d6:	6e 51 
    c5d8:	92 42 d4 51 	mov	&0x51d4,&0x5170	;0x51d4
    c5dc:	70 51 
    c5de:	92 42 d6 51 	mov	&0x51d6,&0x5172	;0x51d6
    c5e2:	72 51 
    c5e4:	92 42 d8 51 	mov	&0x51d8,&0x5174	;0x51d8
    c5e8:	74 51 

0000c5ea <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    c5ea:	82 43 76 51 	mov	#0,	&0x5176	;r3 As==00
    c5ee:	97 3f       	jmp	$-208    	;abs 0xc51e

0000c5f0 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    c5f0:	1c 93       	cmp	#1,	r12	;r3 As==01
    c5f2:	17 24       	jz	$+48     	;abs 0xc622
    c5f4:	2c 93       	cmp	#2,	r12	;r3 As==10
    c5f6:	0c 24       	jz	$+26     	;abs 0xc610
    c5f8:	0c 93       	cmp	#0,	r12	;r3 As==00
    c5fa:	01 24       	jz	$+4      	;abs 0xc5fe

0000c5fc <.L45>:
            break;
        default:
            break;

    }
}
    c5fc:	30 41       	ret			

0000c5fe <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    c5fe:	1d 42 36 52 	mov	&0x5236,r13	;0x5236

0000c602 <.Loc.207.1>:
    c602:	1d 93       	cmp	#1,	r13	;r3 As==01
    c604:	fb 23       	jnz	$-8      	;abs 0xc5fc

0000c606 <.Loc.209.1>:
                _commit_timer_buffers(interface);
    c606:	b0 12 bc c4 	call	#-15172	;#0xc4bc

0000c60a <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    c60a:	a2 43 36 52 	mov	#2,	&0x5236	;r3 As==10

0000c60e <.Loc.230.1>:
}
    c60e:	30 41       	ret			

0000c610 <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    c610:	1d 42 38 52 	mov	&0x5238,r13	;0x5238

0000c614 <.Loc.214.1>:
    c614:	1d 93       	cmp	#1,	r13	;r3 As==01
    c616:	f2 23       	jnz	$-26     	;abs 0xc5fc

0000c618 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    c618:	b0 12 bc c4 	call	#-15172	;#0xc4bc

0000c61c <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    c61c:	a2 43 38 52 	mov	#2,	&0x5238	;r3 As==10

0000c620 <.Loc.230.1>:
}
    c620:	30 41       	ret			

0000c622 <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    c622:	1d 42 3a 52 	mov	&0x523a,r13	;0x523a

0000c626 <.Loc.220.1>:
    c626:	1d 93       	cmp	#1,	r13	;r3 As==01
    c628:	e9 23       	jnz	$-44     	;abs 0xc5fc

0000c62a <.Loc.222.1>:
                _commit_timer_buffers(interface);
    c62a:	b0 12 bc c4 	call	#-15172	;#0xc4bc

0000c62e <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    c62e:	a2 43 3a 52 	mov	#2,	&0x523a	;r3 As==10

0000c632 <.Loc.230.1>:
}
    c632:	30 41       	ret			

0000c634 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    c634:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

0000c638 <.Loc.233.1>:
    switch (interface)
    c638:	1e 93       	cmp	#1,	r14	;r3 As==01
    c63a:	17 24       	jz	$+48     	;abs 0xc66a
    c63c:	2e 93       	cmp	#2,	r14	;r3 As==10
    c63e:	2a 24       	jz	$+86     	;abs 0xc694

0000c640 <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    c640:	0e 4d       	mov	r13,	r14	;

0000c642 <.LVL55>:
    c642:	5e 06       	rlam	#2,	r14	;
    c644:	0d 5e       	add	r14,	r13	;

0000c646 <.LVL56>:
    c646:	5d 02       	rlam	#1,	r13	;
    c648:	3d 50 6e 51 	add	#20846,	r13	;#0x516e
    c64c:	0e 4d       	mov	r13,	r14	;
    c64e:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    c652:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    c656:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    c65a:	04 00 
    c65c:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    c660:	06 00 
    c662:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    c666:	08 00 

0000c668 <.Loc.245.1>:
    }

}
    c668:	30 41       	ret			

0000c66a <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    c66a:	0e 4d       	mov	r13,	r14	;

0000c66c <.LVL58>:
    c66c:	5e 06       	rlam	#2,	r14	;
    c66e:	0d 5e       	add	r14,	r13	;
    c670:	5d 02       	rlam	#1,	r13	;
    c672:	3d 50 aa 51 	add	#20906,	r13	;#0x51aa

0000c676 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    c676:	0e 4d       	mov	r13,	r14	;
    c678:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    c67c:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    c680:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    c684:	04 00 
    c686:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    c68a:	06 00 
    c68c:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    c690:	08 00 

0000c692 <.Loc.245.1>:
}
    c692:	30 41       	ret			

0000c694 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    c694:	0e 4d       	mov	r13,	r14	;

0000c696 <.LVL60>:
    c696:	5e 06       	rlam	#2,	r14	;
    c698:	0d 5e       	add	r14,	r13	;
    c69a:	5d 02       	rlam	#1,	r13	;
    c69c:	3d 50 8c 51 	add	#20876,	r13	;#0x518c

0000c6a0 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    c6a0:	0e 4d       	mov	r13,	r14	;
    c6a2:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    c6a6:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    c6aa:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    c6ae:	04 00 
    c6b0:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    c6b4:	06 00 
    c6b6:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    c6ba:	08 00 

0000c6bc <.Loc.245.1>:
}
    c6bc:	30 41       	ret			

0000c6be <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    c6be:	4e 4c       	mov.b	r12,	r14	;

0000c6c0 <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    c6c0:	1d 93       	cmp	#1,	r13	;r3 As==01
    c6c2:	14 24       	jz	$+42     	;abs 0xc6ec
    c6c4:	2d 93       	cmp	#2,	r13	;r3 As==10
    c6c6:	0b 24       	jz	$+24     	;abs 0xc6de
    c6c8:	4c 43       	clr.b	r12		;

0000c6ca <.LVL62>:
    c6ca:	0d 93       	cmp	#0,	r13	;r3 As==00
    c6cc:	01 24       	jz	$+4      	;abs 0xc6d0

0000c6ce <.Loc.262.1>:
        default:
            return 0;

    }

}
    c6ce:	30 41       	ret			

0000c6d0 <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    c6d0:	0c 4e       	mov	r14,	r12	;
    c6d2:	5c 06       	rlam	#2,	r12	;
    c6d4:	0c 5e       	add	r14,	r12	;
    c6d6:	5c 02       	rlam	#1,	r12	;
    c6d8:	1c 4c 72 51 	mov	20850(r12),r12	;0x05172

0000c6dc <.Loc.262.1>:
}
    c6dc:	30 41       	ret			

0000c6de <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    c6de:	0c 4e       	mov	r14,	r12	;

0000c6e0 <.LVL64>:
    c6e0:	5c 06       	rlam	#2,	r12	;
    c6e2:	0c 5e       	add	r14,	r12	;
    c6e4:	5c 02       	rlam	#1,	r12	;
    c6e6:	1c 4c 90 51 	mov	20880(r12),r12	;0x05190

0000c6ea <.Loc.262.1>:
}
    c6ea:	30 41       	ret			

0000c6ec <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    c6ec:	0c 4e       	mov	r14,	r12	;

0000c6ee <.LVL66>:
    c6ee:	5c 06       	rlam	#2,	r12	;
    c6f0:	0c 5e       	add	r14,	r12	;
    c6f2:	5c 02       	rlam	#1,	r12	;
    c6f4:	1c 4c ae 51 	mov	20910(r12),r12	;0x051ae

0000c6f8 <.Loc.262.1>:
}
    c6f8:	30 41       	ret			

0000c6fa <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    c6fa:	4e 4c       	mov.b	r12,	r14	;

0000c6fc <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    c6fc:	1d 93       	cmp	#1,	r13	;r3 As==01
    c6fe:	14 24       	jz	$+42     	;abs 0xc728
    c700:	2d 93       	cmp	#2,	r13	;r3 As==10
    c702:	0b 24       	jz	$+24     	;abs 0xc71a
    c704:	4c 43       	clr.b	r12		;

0000c706 <.LVL68>:
    c706:	0d 93       	cmp	#0,	r13	;r3 As==00
    c708:	01 24       	jz	$+4      	;abs 0xc70c

0000c70a <.Loc.279.1>:
        default:
            return    0;
    }


}
    c70a:	30 41       	ret			

0000c70c <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    c70c:	0c 4e       	mov	r14,	r12	;
    c70e:	5c 06       	rlam	#2,	r12	;
    c710:	0c 5e       	add	r14,	r12	;
    c712:	5c 02       	rlam	#1,	r12	;
    c714:	5c 4c 70 51 	mov.b	20848(r12),r12	;0x05170

0000c718 <.Loc.279.1>:
}
    c718:	30 41       	ret			

0000c71a <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    c71a:	0c 4e       	mov	r14,	r12	;

0000c71c <.LVL70>:
    c71c:	5c 06       	rlam	#2,	r12	;
    c71e:	0c 5e       	add	r14,	r12	;
    c720:	5c 02       	rlam	#1,	r12	;
    c722:	5c 4c 8e 51 	mov.b	20878(r12),r12	;0x0518e

0000c726 <.Loc.279.1>:
}
    c726:	30 41       	ret			

0000c728 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    c728:	0c 4e       	mov	r14,	r12	;

0000c72a <.LVL72>:
    c72a:	5c 06       	rlam	#2,	r12	;
    c72c:	0c 5e       	add	r14,	r12	;
    c72e:	5c 02       	rlam	#1,	r12	;
    c730:	5c 4c ac 51 	mov.b	20908(r12),r12	;0x051ac

0000c734 <.Loc.279.1>:
}
    c734:	30 41       	ret			

0000c736 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    c736:	4e 4c       	mov.b	r12,	r14	;

0000c738 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    c738:	1d 93       	cmp	#1,	r13	;r3 As==01
    c73a:	14 24       	jz	$+42     	;abs 0xc764
    c73c:	2d 93       	cmp	#2,	r13	;r3 As==10
    c73e:	0b 24       	jz	$+24     	;abs 0xc756
    c740:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000c742 <.LVL74>:
    c742:	0d 93       	cmp	#0,	r13	;r3 As==00
    c744:	01 24       	jz	$+4      	;abs 0xc748

0000c746 <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    c746:	30 41       	ret			

0000c748 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    c748:	0c 4e       	mov	r14,	r12	;
    c74a:	5c 06       	rlam	#2,	r12	;
    c74c:	0c 5e       	add	r14,	r12	;
    c74e:	5c 02       	rlam	#1,	r12	;
    c750:	1c 4c 6e 51 	mov	20846(r12),r12	;0x0516e

0000c754 <.Loc.294.1>:
}
    c754:	30 41       	ret			

0000c756 <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    c756:	0c 4e       	mov	r14,	r12	;

0000c758 <.LVL76>:
    c758:	5c 06       	rlam	#2,	r12	;
    c75a:	0c 5e       	add	r14,	r12	;
    c75c:	5c 02       	rlam	#1,	r12	;
    c75e:	1c 4c 8c 51 	mov	20876(r12),r12	;0x0518c

0000c762 <.Loc.294.1>:
}
    c762:	30 41       	ret			

0000c764 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    c764:	0c 4e       	mov	r14,	r12	;

0000c766 <.LVL78>:
    c766:	5c 06       	rlam	#2,	r12	;
    c768:	0c 5e       	add	r14,	r12	;
    c76a:	5c 02       	rlam	#1,	r12	;
    c76c:	1c 4c aa 51 	mov	20906(r12),r12	;0x051aa

0000c770 <.Loc.294.1>:
}
    c770:	30 41       	ret			

0000c772 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    c772:	5c 0a       	rlam	#3,	r12	;

0000c774 <.LVL80>:
}
    c774:	5c 4c b6 51 	mov.b	20918(r12),r12	;0x051b6
    c778:	30 41       	ret			

0000c77a <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    c77a:	5c 0a       	rlam	#3,	r12	;

0000c77c <.LVL82>:
}
    c77c:	1c 4c b8 51 	mov	20920(r12),r12	;0x051b8
    c780:	30 41       	ret			

0000c782 <GPIO_setAsOutputPin>:
#else
    0xFFFF
#endif
};

void GPIO_setAsOutputPin(uint8_t selectedPort, uint16_t selectedPins) {
    c782:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c786 <.Loc.113.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c786:	0e 4c       	mov	r12,	r14	;
    c788:	5e 02       	rlam	#1,	r14	;
    c78a:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c78e <.Loc.122.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c78e:	1c b3       	bit	#1,	r12	;r3 As==01

0000c790 <L0^A>:
    c790:	02 20       	jnz	$+6      	;abs 0xc796

0000c792 <.Loc.123.1>:
        selectedPins <<= 8;
    c792:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c796 <.L2>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    c796:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000c79a <.Loc.127.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    c79a:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000c79e <.Loc.128.1>:
    HWREG16(baseAddress + OFS_PADIR) |= selectedPins;
    c79e:	8e dd 04 00 	bis	r13,	4(r14)	;

0000c7a2 <.Loc.130.1>:

    return;
}
    c7a2:	30 41       	ret			

0000c7a4 <GPIO_setAsInputPin>:

void GPIO_setAsInputPin(uint8_t selectedPort, uint16_t selectedPins) {
    c7a4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c7a8 <.Loc.135.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c7a8:	0e 4c       	mov	r12,	r14	;
    c7aa:	5e 02       	rlam	#1,	r14	;
    c7ac:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c7b0 <.Loc.144.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c7b0:	1c b3       	bit	#1,	r12	;r3 As==01
    c7b2:	02 20       	jnz	$+6      	;abs 0xc7b8

0000c7b4 <.Loc.145.1>:
        selectedPins <<= 8;
    c7b4:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c7b8 <.L5>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    c7b8:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000c7bc <.Loc.149.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    c7bc:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000c7c0 <.Loc.150.1>:
    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    c7c0:	8e cd 04 00 	bic	r13,	4(r14)	;

0000c7c4 <.Loc.151.1>:
    HWREG16(baseAddress + OFS_PAREN) &= ~selectedPins;
    c7c4:	8e cd 06 00 	bic	r13,	6(r14)	;

0000c7c8 <.Loc.152.1>:
}
    c7c8:	30 41       	ret			

0000c7ca <GPIO_setAsPeripheralModuleFunctionOutputPin>:

void GPIO_setAsPeripheralModuleFunctionOutputPin(uint8_t selectedPort,
                                                      uint16_t selectedPins
                                                     ,uint8_t mode) {
    c7ca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    c7ce:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000c7d2 <.Loc.158.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c7d2:	0f 4c       	mov	r12,	r15	;
    c7d4:	5f 02       	rlam	#1,	r15	;
    c7d6:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000c7da <.Loc.167.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c7da:	1c b3       	bit	#1,	r12	;r3 As==01
    c7dc:	02 20       	jnz	$+6      	;abs 0xc7e2

0000c7de <.Loc.168.1>:
        selectedPins <<= 8;
    c7de:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c7e2 <.L7>:
    }

    HWREG16(baseAddress + OFS_PADIR) |= selectedPins;
    c7e2:	8f dd 04 00 	bis	r13,	4(r15)	;

0000c7e6 <.Loc.172.1>:
    switch (mode){
    c7e6:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    c7e8:	10 24       	jz	$+34     	;abs 0xc80a
    c7ea:	7e 90 03 00 	cmp.b	#3,	r14	;
    c7ee:	08 24       	jz	$+18     	;abs 0xc800
    c7f0:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    c7f2:	01 24       	jz	$+4      	;abs 0xc7f6

0000c7f4 <.Loc.186.1>:
        case GPIO_TERNARY_MODULE_FUNCTION:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
            break;
    }
}
    c7f4:	30 41       	ret			

0000c7f6 <.L11>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    c7f6:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000c7fa <.Loc.175.1>:
            HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    c7fa:	8f cd 0c 00 	bic	r13,	12(r15)	; 0x000c

0000c7fe <.Loc.176.1>:
}
    c7fe:	30 41       	ret			

0000c800 <.L9>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    c800:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000c804 <.Loc.183.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    c804:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000c808 <.Loc.184.1>:
}
    c808:	30 41       	ret			

0000c80a <.L8>:
            HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    c80a:	8f cd 0a 00 	bic	r13,	10(r15)	; 0x000a

0000c80e <.Loc.179.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    c80e:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000c812 <.Loc.180.1>:
}
    c812:	30 41       	ret			

0000c814 <GPIO_setAsPeripheralModuleFunctionInputPin>:

void GPIO_setAsPeripheralModuleFunctionInputPin(uint8_t selectedPort,
                                                     uint16_t selectedPins
                                                     ,uint8_t mode) {
    c814:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    c818:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000c81c <.Loc.191.1>:
    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c81c:	0f 4c       	mov	r12,	r15	;
    c81e:	5f 02       	rlam	#1,	r15	;
    c820:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000c824 <.Loc.200.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c824:	1c b3       	bit	#1,	r12	;r3 As==01
    c826:	02 20       	jnz	$+6      	;abs 0xc82c

0000c828 <.Loc.201.1>:
        selectedPins <<= 8;
    c828:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c82c <.L13>:
    }

    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    c82c:	0c 4d       	mov	r13,	r12	;

0000c82e <.LVL12>:
    c82e:	3c e3       	inv	r12		;

0000c830 <.Loc.204.1>:
    c830:	8f cd 04 00 	bic	r13,	4(r15)	;

0000c834 <.Loc.205.1>:
    switch (mode){
    c834:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    c836:	10 24       	jz	$+34     	;abs 0xc858
    c838:	7e 90 03 00 	cmp.b	#3,	r14	;
    c83c:	08 24       	jz	$+18     	;abs 0xc84e
    c83e:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    c840:	01 24       	jz	$+4      	;abs 0xc844

0000c842 <.Loc.219.1>:
        case GPIO_TERNARY_MODULE_FUNCTION:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
            break;
    }
}
    c842:	30 41       	ret			

0000c844 <.L17>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    c844:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000c848 <.Loc.208.1>:
            HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    c848:	8f fc 0c 00 	and	r12,	12(r15)	; 0x000c

0000c84c <.Loc.209.1>:
}
    c84c:	30 41       	ret			

0000c84e <.L15>:
            HWREG16(baseAddress + OFS_PASEL0) |= selectedPins;
    c84e:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000c852 <.Loc.216.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    c852:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000c856 <.Loc.217.1>:
}
    c856:	30 41       	ret			

0000c858 <.L14>:
            HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    c858:	8f fc 0a 00 	and	r12,	10(r15)	; 0x000a

0000c85c <.Loc.212.1>:
            HWREG16(baseAddress + OFS_PASEL1) |= selectedPins;
    c85c:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000c860 <.Loc.213.1>:
}
    c860:	30 41       	ret			

0000c862 <GPIO_setOutputHighOnPin>:

void GPIO_setOutputHighOnPin (uint8_t selectedPort,
                                   uint16_t selectedPins) {
    c862:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c866 <.Loc.224.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c866:	0e 4c       	mov	r12,	r14	;
    c868:	5e 02       	rlam	#1,	r14	;
    c86a:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c86e <.Loc.233.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c86e:	1c b3       	bit	#1,	r12	;r3 As==01
    c870:	02 20       	jnz	$+6      	;abs 0xc876

0000c872 <.Loc.234.1>:
        selectedPins <<= 8;
    c872:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c876 <.L19>:
    }

    HWREG16(baseAddress + OFS_PAOUT) |= selectedPins;
    c876:	8e dd 02 00 	bis	r13,	2(r14)	;

0000c87a <.Loc.238.1>:
}
    c87a:	30 41       	ret			

0000c87c <GPIO_setOutputLowOnPin>:

void GPIO_setOutputLowOnPin (uint8_t selectedPort, uint16_t selectedPins) {
    c87c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c880 <.Loc.242.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c880:	0e 4c       	mov	r12,	r14	;
    c882:	5e 02       	rlam	#1,	r14	;
    c884:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c888 <.Loc.251.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c888:	1c b3       	bit	#1,	r12	;r3 As==01
    c88a:	02 20       	jnz	$+6      	;abs 0xc890

0000c88c <.Loc.252.1>:
        selectedPins <<= 8;
    c88c:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c890 <.L21>:
    }

    HWREG16(baseAddress + OFS_PAOUT) &= ~selectedPins;
    c890:	8e cd 02 00 	bic	r13,	2(r14)	;

0000c894 <.Loc.256.1>:
}
    c894:	30 41       	ret			

0000c896 <GPIO_toggleOutputOnPin>:

void GPIO_toggleOutputOnPin (uint8_t selectedPort, uint16_t selectedPins) {
    c896:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c89a <.Loc.260.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c89a:	0e 4c       	mov	r12,	r14	;
    c89c:	5e 02       	rlam	#1,	r14	;
    c89e:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c8a2 <.Loc.269.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c8a2:	1c b3       	bit	#1,	r12	;r3 As==01
    c8a4:	02 20       	jnz	$+6      	;abs 0xc8aa

0000c8a6 <.Loc.270.1>:
        selectedPins <<= 8;
    c8a6:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c8aa <.L23>:
    }

    HWREG16(baseAddress + OFS_PAOUT) ^= selectedPins;
    c8aa:	8e ed 02 00 	xor	r13,	2(r14)	;

0000c8ae <.Loc.274.1>:
}
    c8ae:	30 41       	ret			

0000c8b0 <GPIO_setAsInputPinWithPullDownResistor>:

void GPIO_setAsInputPinWithPullDownResistor(uint8_t selectedPort,
                                                 uint16_t selectedPins) {
    c8b0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c8b4 <.Loc.279.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c8b4:	0e 4c       	mov	r12,	r14	;
    c8b6:	5e 02       	rlam	#1,	r14	;
    c8b8:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c8bc <.Loc.288.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c8bc:	1c b3       	bit	#1,	r12	;r3 As==01
    c8be:	02 20       	jnz	$+6      	;abs 0xc8c4

0000c8c0 <.Loc.289.1>:
        selectedPins <<= 8;
    c8c0:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c8c4 <.L25>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    c8c4:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000c8c8 <.Loc.293.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    c8c8:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000c8cc <.Loc.295.1>:

    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    c8cc:	8e cd 04 00 	bic	r13,	4(r14)	;

0000c8d0 <.Loc.296.1>:
    HWREG16(baseAddress + OFS_PAREN) |= selectedPins;
    c8d0:	8e dd 06 00 	bis	r13,	6(r14)	;

0000c8d4 <.Loc.297.1>:
    HWREG16(baseAddress + OFS_PAOUT) &= ~selectedPins;
    c8d4:	8e cd 02 00 	bic	r13,	2(r14)	;

0000c8d8 <.Loc.298.1>:
}
    c8d8:	30 41       	ret			

0000c8da <GPIO_setAsInputPinWithPullUpResistor>:

void GPIO_setAsInputPinWithPullUpResistor(uint8_t selectedPort,
                                                uint16_t selectedPins) {
    c8da:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c8de <.Loc.303.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c8de:	0e 4c       	mov	r12,	r14	;
    c8e0:	5e 02       	rlam	#1,	r14	;
    c8e2:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c8e6 <.Loc.312.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c8e6:	1c b3       	bit	#1,	r12	;r3 As==01
    c8e8:	02 20       	jnz	$+6      	;abs 0xc8ee

0000c8ea <.Loc.313.1>:
        selectedPins <<= 8;
    c8ea:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c8ee <.L27>:
    }

    HWREG16(baseAddress + OFS_PASEL0) &= ~selectedPins;
    c8ee:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000c8f2 <.Loc.317.1>:
    HWREG16(baseAddress + OFS_PASEL1) &= ~selectedPins;
    c8f2:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000c8f6 <.Loc.318.1>:
    HWREG16(baseAddress + OFS_PADIR) &= ~selectedPins;
    c8f6:	8e cd 04 00 	bic	r13,	4(r14)	;

0000c8fa <.Loc.319.1>:
    HWREG16(baseAddress + OFS_PAREN) |= selectedPins;
    c8fa:	8e dd 06 00 	bis	r13,	6(r14)	;

0000c8fe <.Loc.320.1>:
    HWREG16(baseAddress + OFS_PAOUT) |= selectedPins;
    c8fe:	8e dd 02 00 	bis	r13,	2(r14)	;

0000c902 <.Loc.321.1>:
}
    c902:	30 41       	ret			

0000c904 <GPIO_getInputPinValue>:

uint8_t GPIO_getInputPinValue(uint8_t selectedPort,
                                   uint16_t selectedPins) {
    c904:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c908 <.Loc.326.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c908:	0e 4c       	mov	r12,	r14	;
    c90a:	5e 02       	rlam	#1,	r14	;
    c90c:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c910 <.Loc.335.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c910:	1c b3       	bit	#1,	r12	;r3 As==01
    c912:	02 20       	jnz	$+6      	;abs 0xc918

0000c914 <.Loc.336.1>:
        selectedPins <<= 8;
    c914:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c918 <.L29>:
    }

    uint16_t inputPinValue = HWREG16(baseAddress + OFS_PAIN) & (selectedPins);
    c918:	2d fe       	and	@r14,	r13	;

0000c91a <.LVL31>:

    if(inputPinValue > 0){
    c91a:	0c 43       	clr	r12		;
    c91c:	0c 8d       	sub	r13,	r12	;

0000c91e <.LVL32>:
    c91e:	0c dd       	bis	r13,	r12	;

0000c920 <.Loc.345.1>:
        return (GPIO_INPUT_PIN_HIGH);
    }
    return (GPIO_INPUT_PIN_LOW);
}
    c920:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    c924:	30 41       	ret			

0000c926 <GPIO_enableInterrupt>:

void GPIO_enableInterrupt(uint8_t selectedPort, uint16_t selectedPins) {
    c926:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c92a <.Loc.349.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c92a:	0e 4c       	mov	r12,	r14	;
    c92c:	5e 02       	rlam	#1,	r14	;
    c92e:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c932 <.Loc.358.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c932:	1c b3       	bit	#1,	r12	;r3 As==01
    c934:	02 20       	jnz	$+6      	;abs 0xc93a

0000c936 <.Loc.359.1>:
        selectedPins <<= 8;
    c936:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c93a <.L31>:
    }

    HWREG16(baseAddress + OFS_PAIE) |= selectedPins;
    c93a:	8e dd 1a 00 	bis	r13,	26(r14)	; 0x001a

0000c93e <.Loc.363.1>:
}
    c93e:	30 41       	ret			

0000c940 <GPIO_disableInterrupt>:

void GPIO_disableInterrupt(uint8_t selectedPort, uint16_t selectedPins) {
    c940:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c944 <.Loc.367.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c944:	0e 4c       	mov	r12,	r14	;
    c946:	5e 02       	rlam	#1,	r14	;
    c948:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c94c <.Loc.376.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c94c:	1c b3       	bit	#1,	r12	;r3 As==01
    c94e:	02 20       	jnz	$+6      	;abs 0xc954

0000c950 <.Loc.377.1>:
        selectedPins <<= 8;
    c950:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c954 <.L33>:
    }

    HWREG16(baseAddress + OFS_PAIE) &= ~selectedPins;
    c954:	8e cd 1a 00 	bic	r13,	26(r14)	; 0x001a

0000c958 <.Loc.381.1>:
}
    c958:	30 41       	ret			

0000c95a <GPIO_getInterruptStatus>:

uint16_t GPIO_getInterruptStatus(uint8_t selectedPort, uint16_t selectedPins) {
    c95a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c95e <.Loc.385.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c95e:	0e 4c       	mov	r12,	r14	;
    c960:	5e 02       	rlam	#1,	r14	;
    c962:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c966 <.Loc.394.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c966:	1c b3       	bit	#1,	r12	;r3 As==01
    c968:	0a 20       	jnz	$+22     	;abs 0xc97e

0000c96a <.Loc.395.1>:
        if((baseAddress & 0x1) ^ 0x1)
    c96a:	1e b3       	bit	#1,	r14	;r3 As==01
    c96c:	04 20       	jnz	$+10     	;abs 0xc976

0000c96e <.Loc.397.1>:
        {
            return (HWREG8(baseAddress + OFS_PAIFG_H) & selectedPins);
    c96e:	5c 4e 1d 00 	mov.b	29(r14),r12	;0x0001d

0000c972 <.LVL41>:
    c972:	0c fd       	and	r13,	r12	;

0000c974 <.Loc.407.1>:
        }
    }
    else {
        return (HWREG16(baseAddress + OFS_PAIFG) & selectedPins);
    }
}
    c974:	30 41       	ret			

0000c976 <.L36>:
            return (HWREG8(baseAddress + OFS_PAIFG) & selectedPins);
    c976:	5c 4e 1c 00 	mov.b	28(r14),r12	;0x0001c

0000c97a <.Loc.401.1>:
    c97a:	0c fd       	and	r13,	r12	;

0000c97c <.Loc.407.1>:
}
    c97c:	30 41       	ret			

0000c97e <.L35>:
        return (HWREG16(baseAddress + OFS_PAIFG) & selectedPins);
    c97e:	1c 4e 1c 00 	mov	28(r14),r12	;0x0001c
    c982:	0c fd       	and	r13,	r12	;

0000c984 <.Loc.407.1>:
}
    c984:	30 41       	ret			

0000c986 <GPIO_clearInterrupt>:

void GPIO_clearInterrupt(uint8_t selectedPort, uint16_t selectedPins) {
    c986:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c98a <.Loc.411.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c98a:	0e 4c       	mov	r12,	r14	;
    c98c:	5e 02       	rlam	#1,	r14	;
    c98e:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000c992 <.Loc.420.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c992:	1c b3       	bit	#1,	r12	;r3 As==01
    c994:	02 20       	jnz	$+6      	;abs 0xc99a

0000c996 <.Loc.421.1>:
        selectedPins <<= 8;
    c996:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c99a <.L39>:
    }

    HWREG16(baseAddress + OFS_PAIFG) &= ~selectedPins;
    c99a:	8e cd 1c 00 	bic	r13,	28(r14)	; 0x001c

0000c99e <.Loc.425.1>:
}
    c99e:	30 41       	ret			

0000c9a0 <GPIO_selectInterruptEdge>:

void GPIO_selectInterruptEdge(uint8_t selectedPort, uint16_t selectedPins,
                                   uint8_t edgeSelect) {
    c9a0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    c9a4:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000c9a8 <.Loc.430.1>:

    uint16_t baseAddress = GPIO_PORT_TO_BASE[selectedPort];
    c9a8:	0f 4c       	mov	r12,	r15	;
    c9aa:	5f 02       	rlam	#1,	r15	;
    c9ac:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000c9b0 <.Loc.439.1>:
        return;
    }
    #endif

    // Shift by 8 if port is even (upper 8-bits)
    if((selectedPort & 1) ^ 1) {
    c9b0:	1c b3       	bit	#1,	r12	;r3 As==01
    c9b2:	02 20       	jnz	$+6      	;abs 0xc9b8

0000c9b4 <.Loc.440.1>:
        selectedPins <<= 8;
    c9b4:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000c9b8 <.L41>:
    }

    if (GPIO_LOW_TO_HIGH_TRANSITION == edgeSelect){
    c9b8:	0e 93       	cmp	#0,	r14	;r3 As==00
    c9ba:	03 20       	jnz	$+8      	;abs 0xc9c2

0000c9bc <.Loc.444.1>:
        HWREG16(baseAddress + OFS_PAIES) &= ~selectedPins;
    c9bc:	8f cd 18 00 	bic	r13,	24(r15)	; 0x0018

0000c9c0 <.Loc.449.1>:
    }
    else {
        HWREG16(baseAddress + OFS_PAIES) |= selectedPins;
    }
}
    c9c0:	30 41       	ret			

0000c9c2 <.L42>:
        HWREG16(baseAddress + OFS_PAIES) |= selectedPins;
    c9c2:	8f dd 18 00 	bis	r13,	24(r15)	; 0x0018

0000c9c6 <.Loc.449.1>:
}
    c9c6:	30 41       	ret			

0000c9c8 <__mulhi2>:
    c9c8:	02 12       	push	r2		;
    c9ca:	32 c2       	dint			
    c9cc:	03 43       	nop			
    c9ce:	82 4c c0 04 	mov	r12,	&0x04c0	;
    c9d2:	82 4d c8 04 	mov	r13,	&0x04c8	;
    c9d6:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    c9da:	00 13       	reti			

0000c9dc <_exit>:
    c9dc:	ff 3f       	jmp	$+0      	;abs 0xc9dc

0000c9de <memset>:
    c9de:	0e 5c       	add	r12,	r14	;

0000c9e0 <L0^A>:
    c9e0:	0f 4c       	mov	r12,	r15	;

0000c9e2 <.L2>:
    c9e2:	0f 9e       	cmp	r14,	r15	;
    c9e4:	01 20       	jnz	$+4      	;abs 0xc9e8

0000c9e6 <.Loc.104.1>:
    c9e6:	30 41       	ret			

0000c9e8 <.L3>:
    c9e8:	1f 53       	inc	r15		;

0000c9ea <.LVL4>:
    c9ea:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    c9ee:	f9 3f       	jmp	$-12     	;abs 0xc9e2
