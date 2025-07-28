
bin/sort_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	04 73       	sbc	r4		;

Disassembly of section .text:

00005928 <__crt0_start>:
    5928:	31 40 00 24 	mov	#9216,	r1	;#0x2400

0000592c <__crt0_init_bss>:
    592c:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005930 <.Loc.76.1>:
    5930:	0d 43       	clr	r13		;

00005932 <.Loc.77.1>:
    5932:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00005936 <.Loc.81.1>:
    5936:	b0 12 38 77 	call	#30520		;#0x7738

0000593a <__crt0_run_init_array>:
    593a:	34 40 80 4a 	mov	#19072,	r4	;#0x4a80

0000593e <.Loc.189.1>:
    593e:	35 40 88 4a 	mov	#19080,	r5	;#0x4a88

00005942 <.Loc.190.1>:
    5942:	26 43       	mov	#2,	r6	;r3 As==10

00005944 <.Loc.191.1>:
    5944:	b0 12 52 59 	call	#22866		;#0x5952

00005948 <__crt0_call_main>:
    5948:	0c 43       	clr	r12		;

0000594a <.Loc.254.1>:
    594a:	b0 12 86 5a 	call	#23174		;#0x5a86

0000594e <__crt0_call_exit>:
    594e:	b0 12 36 77 	call	#30518		;#0x7736

00005952 <__crt0_run_array>:
    5952:	05 94       	cmp	r4,	r5	;

00005954 <.Loc.294.1>:
    5954:	04 24       	jz	$+10     	;abs 0x595e

00005956 <.Loc.295.1>:
    5956:	27 44       	mov	@r4,	r7	;

00005958 <.Loc.296.1>:
    5958:	04 56       	add	r6,	r4	;

0000595a <.Loc.297.1>:
    595a:	87 12       	call	r7		;

0000595c <.Loc.298.1>:
    595c:	fa 3f       	jmp	$-10     	;abs 0x5952

0000595e <_msp430_run_done>:
    595e:	30 41       	ret			

00005960 <task_inner_loop>:
    5960:	
00005962 <L0^A>:
    5962:	
00005964 <.LVL0>:
    5964:	5c 0a       	rlam	#3,	r12	;

00005966 <.LVL1>:
    5966:	1f 4c 8c 4a 	mov	19084(r12),r15	;0x04a8c

0000596a <.LVL2>:
    596a:	1d 4c 88 4a 	mov	19080(r12),r13	;0x04a88

0000596e <.Loc.130.1>:
    596e:	3c 50 88 4a 	add	#19080,	r12	;#0x4a88

00005972 <.LVL3>:
    5972:	1c 4c 02 00 	mov	2(r12),	r12	;

00005976 <.LVL4>:
    5976:	2e 4c       	mov	@r12,	r14	;
    5978:	5e 02       	rlam	#1,	r14	;
    597a:	0e 5d       	add	r13,	r14	;

0000597c <.Loc.132.1>:
    597c:	2b 4e       	mov	@r14,	r11	;

0000597e <.LVL5>:
    597e:	2c 4f       	mov	@r15,	r12	;
    5980:	5c 02       	rlam	#1,	r12	;
    5982:	0c 5d       	add	r13,	r12	;

00005984 <.Loc.133.1>:
    5984:	2d 4c       	mov	@r12,	r13	;

00005986 <.LVL6>:
    5986:	0d 9b       	cmp	r11,	r13	;
    5988:	02 2c       	jc	$+6      	;abs 0x598e
    598a:	0b 4d       	mov	r13,	r11	;

0000598c <.LVL7>:
    598c:	2d 4e       	mov	@r14,	r13	;

0000598e <.L2>:
    598e:	8e 4b 00 00 	mov	r11,	0(r14)	;

00005992 <.LVL9>:
    5992:	8c 4d 00 00 	mov	r13,	0(r12)	;

00005996 <.Loc.144.1>:
    5996:	2c 4f       	mov	@r15,	r12	;
    5998:	1c 53       	inc	r12		;
    599a:	8f 4c 00 00 	mov	r12,	0(r15)	;

0000599e <.Loc.146.1>:
    599e:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063

000059a2 <.LVL10>:
    59a2:	0d 9c       	cmp	r12,	r13	;
    59a4:	03 2c       	jc	$+8      	;abs 0x59ac

000059a6 <.Loc.152.1>:
    59a6:	3c 40 b2 59 	mov	#22962,	r12	;#0x59b2

000059aa <.Loc.154.1>:
    59aa:	30 41       	ret			

000059ac <.L4>:
    59ac:	3c 40 60 59 	mov	#22880,	r12	;#0x5960

000059b0 <.Loc.154.1>:
    59b0:	30 41       	ret			

000059b2 <task_outer_loop>:
    59b2:	b0 12 fe 5a 	call	#23294		;#0x5afe

000059b6 <.Loc.159.1>:
    59b6:	5c 0a       	rlam	#3,	r12	;
    59b8:	1d 4c 8a 4a 	mov	19082(r12),r13	;0x04a8a
    59bc:	3c 50 88 4a 	add	#19080,	r12	;#0x4a88

000059c0 <.LVL13>:
    59c0:	2e 4d       	mov	@r13,	r14	;

000059c2 <.Loc.159.1>:
    59c2:	0f 4e       	mov	r14,	r15	;
    59c4:	1f 53       	inc	r15		;
    59c6:	8d 4f 00 00 	mov	r15,	0(r13)	;

000059ca <.Loc.160.1>:
    59ca:	1c 4c 04 00 	mov	4(r12),	r12	;

000059ce <.LVL14>:
    59ce:	2e 53       	incd	r14		;
    59d0:	8c 4e 00 00 	mov	r14,	0(r12)	;

000059d4 <.Loc.162.1>:
    59d4:	7c 40 62 00 	mov.b	#98,	r12	;#0x0062
    59d8:	2c 9d       	cmp	@r13,	r12	;
    59da:	03 2c       	jc	$+8      	;abs 0x59e2

000059dc <.Loc.168.1>:
    59dc:	3c 40 50 5a 	mov	#23120,	r12	;#0x5a50

000059e0 <.Loc.170.1>:
    59e0:	30 41       	ret			

000059e2 <.L8>:
    59e2:	3c 40 60 59 	mov	#22880,	r12	;#0x5960

000059e6 <.Loc.170.1>:
    59e6:	30 41       	ret			

000059e8 <__ink_entry_task>:
    59e8:	2a 15       	pushm	#3,	r10	;16-bit words

000059ea <.LCFI0>:
    59ea:	d2 43 99 4a 	mov.b	#1,	&0x4a99	;r3 As==01

000059ee <.Loc.99.1>:
    59ee:	b0 12 fe 5a 	call	#23294		;#0x5afe

000059f2 <.LVL16>:
    59f2:	39 40 88 4a 	mov	#19080,	r9	;#0x4a88
    59f6:	5c 0a       	rlam	#3,	r12	;
    59f8:	0d 49       	mov	r9,	r13	;
    59fa:	0d 5c       	add	r12,	r13	;

000059fc <.LVL18>:
    59fc:	1e 4d 02 00 	mov	2(r13),	r14	;
    5a00:	8e 43 00 00 	mov	#0,	0(r14)	;r3 As==00

00005a04 <.Loc.101.1>:
    5a04:	1e 4d 04 00 	mov	4(r13),	r14	;
    5a08:	9e 43 00 00 	mov	#1,	0(r14)	;r3 As==01

00005a0c <.Loc.103.1>:
    5a0c:	1e 4d 06 00 	mov	6(r13),	r14	;

00005a10 <.Loc.105.1>:
    5a10:	6d 4e       	mov.b	@r14,	r13	;

00005a12 <.LVL19>:
    5a12:	5d 53       	inc.b	r13		;
    5a14:	ce 4d 00 00 	mov.b	r13,	0(r14)	;

00005a18 <.Loc.106.1>:
    5a18:	1d b3       	bit	#1,	r13	;r3 As==01
    5a1a:	17 20       	jnz	$+48     	;abs 0x5a4a

00005a1c <.Loc.112.1>:
    5a1c:	38 40 00 44 	mov	#17408,	r8	;#0x4400

00005a20 <.L10>:
    5a20:	4a 43       	clr.b	r10		;

00005a22 <.Loc.118.1>:
    5a22:	09 5c       	add	r12,	r9	;

00005a24 <.L11>:
    5a24:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    5a28:	4d 43       	clr.b	r13		;
    5a2a:	0c 48       	mov	r8,	r12	;
    5a2c:	b0 12 20 5b 	call	#23328		;#0x5b20

00005a30 <.Loc.118.1>:
    5a30:	0c 5a       	add	r10,	r12	;

00005a32 <.Loc.118.1>:
    5a32:	2d 49       	mov	@r9,	r13	;
    5a34:	0d 5a       	add	r10,	r13	;
    5a36:	ad 4c 00 00 	mov	@r12,	0(r13)	;

00005a3a <.Loc.116.1>:
    5a3a:	2a 53       	incd	r10		;

00005a3c <.Loc.116.1>:
    5a3c:	3a 90 c8 00 	cmp	#200,	r10	;#0x00c8
    5a40:	f1 23       	jnz	$-28     	;abs 0x5a24

00005a42 <.Loc.121.1>:
    5a42:	3c 40 60 59 	mov	#22880,	r12	;#0x5960
    5a46:	28 17       	popm	#3,	r10	;16-bit words

00005a48 <.LCFI1>:
    5a48:	30 41       	ret			

00005a4a <.L12>:
    5a4a:	38 40 b0 48 	mov	#18608,	r8	;#0x48b0
    5a4e:	e8 3f       	jmp	$-46     	;abs 0x5a20

00005a50 <task_finish>:
    5a50:	c2 93 99 4a 	cmp.b	#0,	&0x4a99	;r3 As==00
    5a54:	08 24       	jz	$+18     	;abs 0x5a66

00005a56 <.LBB4>:
    5a56:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    5a5a:	22 02 

00005a5c <.Loc.177.1>:
    5a5c:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5a60:	22 02 

00005a62 <.Loc.178.1>:
    5a62:	c2 43 99 4a 	mov.b	#0,	&0x4a99	;r3 As==00

00005a66 <.L15>:
    5a66:	3c 40 e8 59 	mov	#23016,	r12	;#0x59e8
    5a6a:	30 41       	ret			

00005a6c <__ink_create_thread_15>:
    5a6c:	b0 12 44 5b 	call	#23364		;#0x5b44
    5a70:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5a72:	01 20       	jnz	$+4      	;abs 0x5a76

00005a74 <.Loc.93.1>:
    5a74:	30 41       	ret			

00005a76 <.L21>:
    5a76:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5a78:	3d 40 e8 59 	mov	#23016,	r13	;#0x59e8
    5a7c:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5a80:	b0 12 b4 5b 	call	#23476		;#0x5bb4

00005a84 <.Loc.93.1>:
    5a84:	30 41       	ret			

00005a86 <main>:
    5a86:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    5a8a:	5c 01 

00005a8c <.Loc.190.1>:
    5a8c:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00005a90 <.Loc.193.1>:
    5a90:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5a94:	22 02 

00005a96 <.Loc.193.1>:
    5a96:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    5a9a:	24 02 

00005a9c <.Loc.193.1>:
    5a9c:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5aa0:	22 02 

00005aa2 <.Loc.193.1>:
    5aa2:	b0 12 20 61 	call	#24864		;#0x6120

00005aa6 <.Loc.199.1>:
    5aa6:	4c 43       	clr.b	r12		;
    5aa8:	30 41       	ret			

00005aaa <__ink_initialize_shared_vars_15>:
    5aaa:	3c 40 88 4a 	mov	#19080,	r12	;#0x4a88
    5aae:	bc 40 90 57 	mov	#22416,	0(r12)	;#0x5790
    5ab2:	00 00 

00005ab4 <.Loc.202.1>:
    5ab4:	3d 40 ce 00 	mov	#206,	r13	;#0x00ce
    5ab8:	3d 50 90 57 	add	#22416,	r13	;#0x5790
    5abc:	8c 4d 08 00 	mov	r13,	8(r12)	;

00005ac0 <.Loc.202.1>:
    5ac0:	bc 40 8e 57 	mov	#22414,	2(r12)	;#0x578e
    5ac4:	02 00 

00005ac6 <.Loc.203.1>:
    5ac6:	3d 40 ce 00 	mov	#206,	r13	;#0x00ce
    5aca:	3d 50 8e 57 	add	#22414,	r13	;#0x578e
    5ace:	8c 4d 0a 00 	mov	r13,	10(r12)	; 0x000a

00005ad2 <.Loc.203.1>:
    5ad2:	bc 40 8c 57 	mov	#22412,	4(r12)	;#0x578c
    5ad6:	04 00 

00005ad8 <.Loc.204.1>:
    5ad8:	3d 40 ce 00 	mov	#206,	r13	;#0x00ce
    5adc:	3d 50 8c 57 	add	#22412,	r13	;#0x578c
    5ae0:	8c 4d 0c 00 	mov	r13,	12(r12)	; 0x000c

00005ae4 <.Loc.204.1>:
    5ae4:	bc 40 8a 57 	mov	#22410,	6(r12)	;#0x578a
    5ae8:	06 00 

00005aea <.Loc.205.1>:
    5aea:	3d 40 ce 00 	mov	#206,	r13	;#0x00ce
    5aee:	3d 50 8a 57 	add	#22410,	r13	;#0x578a
    5af2:	8c 4d 0e 00 	mov	r13,	14(r12)	; 0x000e

00005af6 <.Loc.205.1>:
    5af6:	30 41       	ret			

00005af8 <__ink_get_variable_address_with_offset>:
    5af8:	
00005afa <L0^A>:
    5afa:	ce 00       	mova	r0,	r14	;

00005afc <.LVL1>:
    5afc:	30 41       	ret			

00005afe <__ink_get_current_task_buffer_index>:
    5afe:	5c 42 b6 56 	mov.b	&0x56b6,r12	;0x56b6
    5b02:	30 41       	ret			

00005b04 <is_shared>:
    5b04:	3c 90 8a 57 	cmp	#22410,	r12	;#0x578a
    5b08:	06 28       	jnc	$+14     	;abs 0x5b16

00005b0a <.Loc.27.1>:
    5b0a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5b0c:	3c 90 58 58 	cmp	#22616,	r12	;#0x5858
    5b10:	04 2c       	jc	$+10     	;abs 0x5b1a
    5b12:	4c 4d       	mov.b	r13,	r12	;

00005b14 <.L5>:
    5b14:	30 41       	ret			

00005b16 <.L7>:
    5b16:	4c 43       	clr.b	r12		;

00005b18 <.LVL5>:
    5b18:	30 41       	ret			

00005b1a <.L8>:
    5b1a:	4d 43       	clr.b	r13		;
    5b1c:	4c 4d       	mov.b	r13,	r12	;

00005b1e <.LVL7>:
    5b1e:	fa 3f       	jmp	$-10     	;abs 0x5b14

00005b20 <__ink_translate_pointer_address>:
    5b20:	0a 15       	pushm	#1,	r10	;16-bit words

00005b22 <.LCFI0>:
    5b22:	0a 4c       	mov	r12,	r10	;

00005b24 <.LBB12>:
    5b24:	3c 90 8a 57 	cmp	#22410,	r12	;#0x578a
    5b28:	0a 28       	jnc	$+22     	;abs 0x5b3e
    5b2a:	3c 90 58 58 	cmp	#22616,	r12	;#0x5858
    5b2e:	07 2c       	jc	$+16     	;abs 0x5b3e

00005b30 <.LBB14>:
    5b30:	5c 42 b6 56 	mov.b	&0x56b6,r12	;0x56b6

00005b34 <.LVL11>:
    5b34:	3d 40 ce 00 	mov	#206,	r13	;#0x00ce

00005b38 <.LVL12>:
    5b38:	b0 12 22 77 	call	#30498		;#0x7722

00005b3c <.LVL13>:
    5b3c:	0a 5c       	add	r12,	r10	;

00005b3e <.L12>:
    5b3e:	0c 4a       	mov	r10,	r12	;
    5b40:	0a 17       	popm	#1,	r10	;16-bit words

00005b42 <.LCFI1>:
    5b42:	30 41       	ret			

00005b44 <ink_is_first_boot>:
    5b44:	
00005b46 <L0^A>:
    5b46:	
00005b4a <ink_is_initialized>:
    5b4a:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    5b4e:	30 41       	ret			

00005b50 <__ink_init>:
    5b50:	b0 12 ac 63 	call	#25516		;#0x63ac

00005b54 <.LBB4>:
    5b54:	c2 93 9a 4a 	cmp.b	#0,	&0x4a9a	;r3 As==00
    5b58:	22 20       	jnz	$+70     	;abs 0x5b9e

00005b5a <.L5>:
    5b5a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005b5e <.Loc.50.1>:
    5b5e:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

00005b62 <.Loc.50.1>:
    5b62:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005b66 <.Loc.50.1>:
    5b66:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5b6a:	02 02 

00005b6c <.Loc.51.1>:
    5b6c:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    5b70:	04 02 

00005b72 <.Loc.51.1>:
    5b72:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5b76:	02 02 

00005b78 <.Loc.51.1>:
    5b78:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5b7c:	22 02 

00005b7e <.Loc.52.1>:
    5b7e:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    5b82:	24 02 

00005b84 <.Loc.52.1>:
    5b84:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5b88:	22 02 

00005b8a <.Loc.52.1>:
    5b8a:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5b8e:	22 02 

00005b90 <.Loc.53.1>:
    5b90:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    5b94:	24 02 

00005b96 <.Loc.53.1>:
    5b96:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5b9a:	22 02 

00005b9c <.Loc.53.1>:
    5b9c:	30 41       	ret			

00005b9e <.L6>:
    5b9e:	b0 12 04 64 	call	#25604		;#0x6404

00005ba2 <.Loc.36.1>:
    5ba2:	b0 12 26 61 	call	#24870		;#0x6126
    5ba6:	d9 3f       	jmp	$-76     	;abs 0x5b5a

00005ba8 <__ink_init_done>:
    5ba8:	c2 43 9a 4a 	mov.b	#0,	&0x4a9a	;r3 As==00

00005bac <.Loc.69.1>:
    5bac:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

00005bb0 <.Loc.70.1>:
    5bb0:	30 41       	ret			

00005bb2 <.LFE3>:
	...

00005bb4 <__ink_create_thread>:
    5bb4:	2a 15       	pushm	#3,	r10	;16-bit words

00005bb6 <.LCFI0>:
    5bb6:	21 83       	decd	r1		;

00005bb8 <.LCFI1>:
    5bb8:	4a 4c       	mov.b	r12,	r10	;
    5bba:	09 4d       	mov	r13,	r9	;
    5bbc:	48 4e       	mov.b	r14,	r8	;

00005bbe <.Loc.147.1>:
    5bbe:	b0 12 44 5b 	call	#23364		;#0x5b44

00005bc2 <.LVL1>:
    5bc2:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5bc4:	56 24       	jz	$+174    	;abs 0x5c72

00005bc6 <.Loc.152.1>:
    5bc6:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    5bca:	4c 9a       	cmp.b	r10,	r12	;
    5bcc:	47 28       	jnc	$+144    	;abs 0x5c5c
    5bce:	0c 4a       	mov	r10,	r12	;
    5bd0:	5c 02       	rlam	#1,	r12	;
    5bd2:	3c 50 dc 5b 	add	#23516,	r12	;#0x5bdc
    5bd6:	2c 4c       	mov	@r12,	r12	;
    5bd8:	00 4c       	br	r12		;
	...

00005bdc <.L6>:
    5bdc:	5c 5c f4 60 	add.b	24820(r12),r12	;0x060f4
    5be0:	e0 60 cc 60 	addc.b	@r0,	0x60cc	; PC rel. 0xbcae
    5be4:	b8 60 a4 60 	addc	#24740,	24720(r8);#0x60a4, 0x6090
    5be8:	90 60 
    5bea:	7c 60 68 60 	addc.b	#24680,	r12	;#0x6068
    5bee:	54 60 42 60 	addc.b	0x6042,	r4	;PC rel. 0xbc32
    5bf2:	30 60 1e 60 	addc	#24606,	r0	;#0x601e
    5bf6:	0c 60       	addc	r0,	r12	;
    5bf8:	fa 5f e8 5f 	add.b	@r15+,	24552(r10); 0x5fe8
    5bfc:	d6 5f c4 5f 	add.b	24516(r15),24498(r6);0x05fc4, 0x5fb2
    5c00:	b2 5f 
    5c02:	a0 5f 8e 5f 	add	@r15,	0x5f8e	; PC rel. 0xbb92
    5c06:	7c 5f       	add.b	@r15+,	r12	;
    5c08:	6a 5f       	add.b	@r15,	r10	;
    5c0a:	58 5f 46 5f 	add.b	24390(r15),r8	;0x05f46
    5c0e:	34 5f       	add	@r15+,	r4	;
    5c10:	22 5f       	add	@r15,	r2	;
    5c12:	10 5f fe 5e 	add	24318(r15),r0	;0x05efe
    5c16:	ec 5e da 5e 	add.b	@r14,	24282(r12); 0x5eda
    5c1a:	c8 5e b6 5e 	add.b	r14,	24246(r8); 0x5eb6
    5c1e:	a4 5e 92 5e 	add	@r14,	24210(r4); 0x5e92
    5c22:	80 5e 6e 5e 	add	r14,	0x5e6e	; PC rel. 0xba92
    5c26:	5c 5e 4a 5e 	add.b	24138(r14),r12	;0x05e4a
    5c2a:	38 5e       	add	@r14+,	r8	;
    5c2c:	26 5e       	add	@r14,	r6	;
    5c2e:	14 5e 02 5e 	add	24066(r14),r4	;0x05e02
    5c32:	f0 5d de 5d 	add.b	@r13+,	0x5dde	; PC rel. 0xba12
    5c36:	cc 5d ba 5d 	add.b	r13,	23994(r12); 0x5dba
    5c3a:	a8 5d 96 5d 	add	@r13,	23958(r8); 0x5d96
    5c3e:	84 5d 72 5d 	add	r13,	23922(r4); 0x5d72
    5c42:	60 5d       	add.b	@r13,	r0	;
    5c44:	4e 5d       	add.b	r13,	r14	;
    5c46:	3c 5d       	add	@r13+,	r12	;
    5c48:	2a 5d       	add	@r13,	r10	;
    5c4a:	18 5d 06 5d 	add	23814(r13),r8	;0x05d06
    5c4e:	f4 5c e2 5c 	add.b	@r12+,	23778(r4); 0x5ce2
    5c52:	d0 5c be 5c 	add.b	23742(r12),0x5cac	;0x05cbe, PC rel. 0xb902
    5c56:	ac 5c 
    5c58:	
00005c5c <.L70>:
    5c5c:	4c 43       	clr.b	r12		;
    5c5e:	4f 43       	clr.b	r15		;
    5c60:	4e 43       	clr.b	r14		;

00005c62 <.L4>:
    5c62:	81 4c 00 00 	mov	r12,	0(r1)	;
    5c66:	0d 49       	mov	r9,	r13	;
    5c68:	4c 4a       	mov.b	r10,	r12	;

00005c6a <.LVL4>:
    5c6a:	b0 12 2c 64 	call	#25644		;#0x642c

00005c6e <.LVL5>:
    5c6e:	08 93       	cmp	#0,	r8	;r3 As==00
    5c70:	03 20       	jnz	$+8      	;abs 0x5c78

00005c72 <.L1>:
    5c72:	21 53       	incd	r1		;

00005c74 <.LCFI2>:
    5c74:	28 17       	popm	#3,	r10	;16-bit words

00005c76 <.LCFI3>:
    5c76:	30 41       	ret			

00005c78 <.L75>:
    5c78:	4c 4a       	mov.b	r10,	r12	;
    5c7a:	b0 12 d0 64 	call	#25808		;#0x64d0
    5c7e:	b0 12 b4 64 	call	#25780		;#0x64b4

00005c82 <.Loc.232.1>:
    5c82:	21 53       	incd	r1		;

00005c84 <.LCFI5>:
    5c84:	28 17       	popm	#3,	r10	;16-bit words

00005c86 <.LCFI6>:
    5c86:	30 41       	ret			

00005c88 <.L5>:
    5c88:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5c8c:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005c90 <.LVL9>:
    5c90:	3c 40 00 00 	mov	#0,	r12	;

00005c94 <.Loc.220.1>:
    5c94:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5c98:	e4 3f       	jmp	$-54     	;abs 0x5c62

00005c9a <.L7>:
    5c9a:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5c9e:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005ca2 <.LVL12>:
    5ca2:	3c 40 00 00 	mov	#0,	r12	;

00005ca6 <.Loc.219.1>:
    5ca6:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5caa:	db 3f       	jmp	$-72     	;abs 0x5c62

00005cac <.L8>:
    5cac:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5cb0:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005cb4 <.LVL15>:
    5cb4:	3c 40 00 00 	mov	#0,	r12	;

00005cb8 <.Loc.218.1>:
    5cb8:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5cbc:	d2 3f       	jmp	$-90     	;abs 0x5c62

00005cbe <.L9>:
    5cbe:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5cc2:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005cc6 <.LVL18>:
    5cc6:	3c 40 00 00 	mov	#0,	r12	;

00005cca <.Loc.217.1>:
    5cca:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5cce:	c9 3f       	jmp	$-108    	;abs 0x5c62

00005cd0 <.L10>:
    5cd0:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5cd4:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005cd8 <.LVL21>:
    5cd8:	3c 40 00 00 	mov	#0,	r12	;

00005cdc <.Loc.216.1>:
    5cdc:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5ce0:	c0 3f       	jmp	$-126    	;abs 0x5c62

00005ce2 <.L11>:
    5ce2:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5ce6:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005cea <.LVL24>:
    5cea:	3c 40 00 00 	mov	#0,	r12	;

00005cee <.Loc.215.1>:
    5cee:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5cf2:	b7 3f       	jmp	$-144    	;abs 0x5c62

00005cf4 <.L12>:
    5cf4:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5cf8:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005cfc <.LVL27>:
    5cfc:	3c 40 00 00 	mov	#0,	r12	;

00005d00 <.Loc.214.1>:
    5d00:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d04:	ae 3f       	jmp	$-162    	;abs 0x5c62

00005d06 <.L13>:
    5d06:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d0a:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d0e <.LVL30>:
    5d0e:	3c 40 00 00 	mov	#0,	r12	;

00005d12 <.Loc.213.1>:
    5d12:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d16:	a5 3f       	jmp	$-180    	;abs 0x5c62

00005d18 <.L14>:
    5d18:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d1c:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d20 <.LVL33>:
    5d20:	3c 40 00 00 	mov	#0,	r12	;

00005d24 <.Loc.212.1>:
    5d24:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d28:	9c 3f       	jmp	$-198    	;abs 0x5c62

00005d2a <.L15>:
    5d2a:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d2e:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d32 <.LVL36>:
    5d32:	3c 40 00 00 	mov	#0,	r12	;

00005d36 <.Loc.211.1>:
    5d36:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d3a:	93 3f       	jmp	$-216    	;abs 0x5c62

00005d3c <.L16>:
    5d3c:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d40:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d44 <.LVL39>:
    5d44:	3c 40 00 00 	mov	#0,	r12	;

00005d48 <.Loc.210.1>:
    5d48:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d4c:	8a 3f       	jmp	$-234    	;abs 0x5c62

00005d4e <.L17>:
    5d4e:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d52:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d56 <.LVL42>:
    5d56:	3c 40 00 00 	mov	#0,	r12	;

00005d5a <.Loc.209.1>:
    5d5a:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d5e:	81 3f       	jmp	$-252    	;abs 0x5c62

00005d60 <.L18>:
    5d60:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d64:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d68 <.LVL45>:
    5d68:	3c 40 00 00 	mov	#0,	r12	;

00005d6c <.Loc.208.1>:
    5d6c:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d70:	78 3f       	jmp	$-270    	;abs 0x5c62

00005d72 <.L19>:
    5d72:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d76:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d7a <.LVL48>:
    5d7a:	3c 40 00 00 	mov	#0,	r12	;

00005d7e <.Loc.207.1>:
    5d7e:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d82:	6f 3f       	jmp	$-288    	;abs 0x5c62

00005d84 <.L20>:
    5d84:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d88:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d8c <.LVL51>:
    5d8c:	3c 40 00 00 	mov	#0,	r12	;

00005d90 <.Loc.206.1>:
    5d90:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5d94:	66 3f       	jmp	$-306    	;abs 0x5c62

00005d96 <.L21>:
    5d96:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5d9a:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005d9e <.LVL54>:
    5d9e:	3c 40 00 00 	mov	#0,	r12	;

00005da2 <.Loc.205.1>:
    5da2:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5da6:	5d 3f       	jmp	$-324    	;abs 0x5c62

00005da8 <.L22>:
    5da8:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5dac:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005db0 <.LVL57>:
    5db0:	3c 40 00 00 	mov	#0,	r12	;

00005db4 <.Loc.204.1>:
    5db4:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5db8:	54 3f       	jmp	$-342    	;abs 0x5c62

00005dba <.L23>:
    5dba:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5dbe:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005dc2 <.LVL60>:
    5dc2:	3c 40 00 00 	mov	#0,	r12	;

00005dc6 <.Loc.203.1>:
    5dc6:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5dca:	4b 3f       	jmp	$-360    	;abs 0x5c62

00005dcc <.L24>:
    5dcc:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5dd0:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005dd4 <.LVL63>:
    5dd4:	3c 40 00 00 	mov	#0,	r12	;

00005dd8 <.Loc.202.1>:
    5dd8:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5ddc:	42 3f       	jmp	$-378    	;abs 0x5c62

00005dde <.L25>:
    5dde:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5de2:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005de6 <.LVL66>:
    5de6:	3c 40 00 00 	mov	#0,	r12	;

00005dea <.Loc.201.1>:
    5dea:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5dee:	39 3f       	jmp	$-396    	;abs 0x5c62

00005df0 <.L26>:
    5df0:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5df4:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005df8 <.LVL69>:
    5df8:	3c 40 00 00 	mov	#0,	r12	;

00005dfc <.Loc.200.1>:
    5dfc:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e00:	30 3f       	jmp	$-414    	;abs 0x5c62

00005e02 <.L27>:
    5e02:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e06:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e0a <.LVL72>:
    5e0a:	3c 40 00 00 	mov	#0,	r12	;

00005e0e <.Loc.199.1>:
    5e0e:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e12:	27 3f       	jmp	$-432    	;abs 0x5c62

00005e14 <.L28>:
    5e14:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e18:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e1c <.LVL75>:
    5e1c:	3c 40 00 00 	mov	#0,	r12	;

00005e20 <.Loc.198.1>:
    5e20:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e24:	1e 3f       	jmp	$-450    	;abs 0x5c62

00005e26 <.L29>:
    5e26:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e2a:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e2e <.LVL78>:
    5e2e:	3c 40 00 00 	mov	#0,	r12	;

00005e32 <.Loc.197.1>:
    5e32:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e36:	15 3f       	jmp	$-468    	;abs 0x5c62

00005e38 <.L30>:
    5e38:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e3c:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e40 <.LVL81>:
    5e40:	3c 40 00 00 	mov	#0,	r12	;

00005e44 <.Loc.196.1>:
    5e44:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e48:	0c 3f       	jmp	$-486    	;abs 0x5c62

00005e4a <.L31>:
    5e4a:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e4e:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e52 <.LVL84>:
    5e52:	3c 40 00 00 	mov	#0,	r12	;

00005e56 <.Loc.195.1>:
    5e56:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e5a:	03 3f       	jmp	$-504    	;abs 0x5c62

00005e5c <.L32>:
    5e5c:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e60:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e64 <.LVL87>:
    5e64:	3c 40 00 00 	mov	#0,	r12	;

00005e68 <.Loc.194.1>:
    5e68:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e6c:	fa 3e       	jmp	$-522    	;abs 0x5c62

00005e6e <.L33>:
    5e6e:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e72:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e76 <.LVL90>:
    5e76:	3c 40 00 00 	mov	#0,	r12	;

00005e7a <.Loc.193.1>:
    5e7a:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e7e:	f1 3e       	jmp	$-540    	;abs 0x5c62

00005e80 <.L34>:
    5e80:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e84:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e88 <.LVL93>:
    5e88:	3c 40 00 00 	mov	#0,	r12	;

00005e8c <.Loc.192.1>:
    5e8c:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5e90:	e8 3e       	jmp	$-558    	;abs 0x5c62

00005e92 <.L35>:
    5e92:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5e96:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005e9a <.LVL96>:
    5e9a:	3c 40 00 00 	mov	#0,	r12	;

00005e9e <.Loc.191.1>:
    5e9e:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5ea2:	df 3e       	jmp	$-576    	;abs 0x5c62

00005ea4 <.L36>:
    5ea4:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5ea8:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005eac <.LVL99>:
    5eac:	3c 40 00 00 	mov	#0,	r12	;

00005eb0 <.Loc.190.1>:
    5eb0:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5eb4:	d6 3e       	jmp	$-594    	;abs 0x5c62

00005eb6 <.L37>:
    5eb6:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5eba:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005ebe <.LVL102>:
    5ebe:	3c 40 00 00 	mov	#0,	r12	;

00005ec2 <.Loc.189.1>:
    5ec2:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5ec6:	cd 3e       	jmp	$-612    	;abs 0x5c62

00005ec8 <.L38>:
    5ec8:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5ecc:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005ed0 <.LVL105>:
    5ed0:	3c 40 00 00 	mov	#0,	r12	;

00005ed4 <.Loc.188.1>:
    5ed4:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5ed8:	c4 3e       	jmp	$-630    	;abs 0x5c62

00005eda <.L39>:
    5eda:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5ede:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005ee2 <.LVL108>:
    5ee2:	3c 40 00 00 	mov	#0,	r12	;

00005ee6 <.Loc.187.1>:
    5ee6:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5eea:	bb 3e       	jmp	$-648    	;abs 0x5c62

00005eec <.L40>:
    5eec:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5ef0:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005ef4 <.LVL111>:
    5ef4:	3c 40 00 00 	mov	#0,	r12	;

00005ef8 <.Loc.186.1>:
    5ef8:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5efc:	b2 3e       	jmp	$-666    	;abs 0x5c62

00005efe <.L41>:
    5efe:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f02:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f06 <.LVL114>:
    5f06:	3c 40 00 00 	mov	#0,	r12	;

00005f0a <.Loc.185.1>:
    5f0a:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f0e:	a9 3e       	jmp	$-684    	;abs 0x5c62

00005f10 <.L42>:
    5f10:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f14:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f18 <.LVL117>:
    5f18:	3c 40 00 00 	mov	#0,	r12	;

00005f1c <.Loc.184.1>:
    5f1c:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f20:	a0 3e       	jmp	$-702    	;abs 0x5c62

00005f22 <.L43>:
    5f22:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f26:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f2a <.LVL120>:
    5f2a:	3c 40 00 00 	mov	#0,	r12	;

00005f2e <.Loc.183.1>:
    5f2e:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f32:	97 3e       	jmp	$-720    	;abs 0x5c62

00005f34 <.L44>:
    5f34:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f38:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f3c <.LVL123>:
    5f3c:	3c 40 00 00 	mov	#0,	r12	;

00005f40 <.Loc.182.1>:
    5f40:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f44:	8e 3e       	jmp	$-738    	;abs 0x5c62

00005f46 <.L45>:
    5f46:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f4a:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f4e <.LVL126>:
    5f4e:	3c 40 00 00 	mov	#0,	r12	;

00005f52 <.Loc.181.1>:
    5f52:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f56:	85 3e       	jmp	$-756    	;abs 0x5c62

00005f58 <.L46>:
    5f58:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f5c:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f60 <.LVL129>:
    5f60:	3c 40 00 00 	mov	#0,	r12	;

00005f64 <.Loc.180.1>:
    5f64:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f68:	7c 3e       	jmp	$-774    	;abs 0x5c62

00005f6a <.L47>:
    5f6a:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f6e:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f72 <.LVL132>:
    5f72:	3c 40 00 00 	mov	#0,	r12	;

00005f76 <.Loc.179.1>:
    5f76:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f7a:	73 3e       	jmp	$-792    	;abs 0x5c62

00005f7c <.L48>:
    5f7c:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f80:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f84 <.LVL135>:
    5f84:	3c 40 00 00 	mov	#0,	r12	;

00005f88 <.Loc.178.1>:
    5f88:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f8c:	6a 3e       	jmp	$-810    	;abs 0x5c62

00005f8e <.L49>:
    5f8e:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5f92:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005f96 <.LVL138>:
    5f96:	3c 40 00 00 	mov	#0,	r12	;

00005f9a <.Loc.177.1>:
    5f9a:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5f9e:	61 3e       	jmp	$-828    	;abs 0x5c62

00005fa0 <.L50>:
    5fa0:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5fa4:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005fa8 <.LVL141>:
    5fa8:	3c 40 00 00 	mov	#0,	r12	;

00005fac <.Loc.176.1>:
    5fac:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5fb0:	58 3e       	jmp	$-846    	;abs 0x5c62

00005fb2 <.L51>:
    5fb2:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5fb6:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005fba <.LVL144>:
    5fba:	3c 40 00 00 	mov	#0,	r12	;

00005fbe <.Loc.175.1>:
    5fbe:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5fc2:	4f 3e       	jmp	$-864    	;abs 0x5c62

00005fc4 <.L52>:
    5fc4:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5fc8:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005fcc <.LVL147>:
    5fcc:	3c 40 00 00 	mov	#0,	r12	;

00005fd0 <.Loc.174.1>:
    5fd0:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5fd4:	46 3e       	jmp	$-882    	;abs 0x5c62

00005fd6 <.L53>:
    5fd6:	3f 40 58 58 	mov	#22616,	r15	;#0x5858
    5fda:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005fde <.LVL150>:
    5fde:	3c 40 00 00 	mov	#0,	r12	;

00005fe2 <.Loc.173.1>:
    5fe2:	3e 40 58 58 	mov	#22616,	r14	;#0x5858
    5fe6:	3d 3e       	jmp	$-900    	;abs 0x5c62

00005fe8 <.L54>:
    5fe8:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    5fec:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00005ff0 <.LVL153>:
    5ff0:	3c 40 ce 00 	mov	#206,	r12	;#0x00ce

00005ff4 <.Loc.172.1>:
    5ff4:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    5ff8:	34 3e       	jmp	$-918    	;abs 0x5c62

00005ffa <.L55>:
    5ffa:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    5ffe:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006002 <.LVL156>:
    6002:	3c 40 00 00 	mov	#0,	r12	;

00006006 <.Loc.171.1>:
    6006:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    600a:	2b 3e       	jmp	$-936    	;abs 0x5c62

0000600c <.L56>:
    600c:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6010:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006014 <.LVL159>:
    6014:	3c 40 00 00 	mov	#0,	r12	;

00006018 <.Loc.170.1>:
    6018:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    601c:	22 3e       	jmp	$-954    	;abs 0x5c62

0000601e <.L57>:
    601e:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6022:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006026 <.LVL162>:
    6026:	3c 40 00 00 	mov	#0,	r12	;

0000602a <.Loc.169.1>:
    602a:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    602e:	19 3e       	jmp	$-972    	;abs 0x5c62

00006030 <.L58>:
    6030:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6034:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006038 <.LVL165>:
    6038:	3c 40 00 00 	mov	#0,	r12	;

0000603c <.Loc.168.1>:
    603c:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    6040:	10 3e       	jmp	$-990    	;abs 0x5c62

00006042 <.L59>:
    6042:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6046:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

0000604a <.LVL168>:
    604a:	3c 40 00 00 	mov	#0,	r12	;

0000604e <.Loc.167.1>:
    604e:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    6052:	07 3e       	jmp	$-1008   	;abs 0x5c62

00006054 <.L60>:
    6054:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6058:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

0000605c <.LVL171>:
    605c:	3c 40 00 00 	mov	#0,	r12	;

00006060 <.Loc.166.1>:
    6060:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    6064:	30 40 62 5c 	br	#0x5c62		;

00006068 <.L61>:
    6068:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    606c:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006070 <.LVL174>:
    6070:	3c 40 00 00 	mov	#0,	r12	;

00006074 <.Loc.165.1>:
    6074:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    6078:	30 40 62 5c 	br	#0x5c62		;

0000607c <.L62>:
    607c:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6080:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006084 <.LVL177>:
    6084:	3c 40 00 00 	mov	#0,	r12	;

00006088 <.Loc.164.1>:
    6088:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    608c:	30 40 62 5c 	br	#0x5c62		;

00006090 <.L63>:
    6090:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    6094:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

00006098 <.LVL180>:
    6098:	3c 40 00 00 	mov	#0,	r12	;

0000609c <.Loc.163.1>:
    609c:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    60a0:	30 40 62 5c 	br	#0x5c62		;

000060a4 <.L64>:
    60a4:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    60a8:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

000060ac <.LVL183>:
    60ac:	3c 40 00 00 	mov	#0,	r12	;

000060b0 <.Loc.162.1>:
    60b0:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    60b4:	30 40 62 5c 	br	#0x5c62		;

000060b8 <.L65>:
    60b8:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    60bc:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

000060c0 <.LVL186>:
    60c0:	3c 40 00 00 	mov	#0,	r12	;

000060c4 <.Loc.161.1>:
    60c4:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    60c8:	30 40 62 5c 	br	#0x5c62		;

000060cc <.L66>:
    60cc:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    60d0:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

000060d4 <.LVL189>:
    60d4:	3c 40 00 00 	mov	#0,	r12	;

000060d8 <.Loc.160.1>:
    60d8:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    60dc:	30 40 62 5c 	br	#0x5c62		;

000060e0 <.L67>:
    60e0:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    60e4:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

000060e8 <.LVL192>:
    60e8:	3c 40 00 00 	mov	#0,	r12	;

000060ec <.Loc.159.1>:
    60ec:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    60f0:	30 40 62 5c 	br	#0x5c62		;

000060f4 <.L68>:
    60f4:	3f 40 8a 57 	mov	#22410,	r15	;#0x578a
    60f8:	3f 50 ce 00 	add	#206,	r15	;#0x00ce

000060fc <.LVL195>:
    60fc:	3c 40 00 00 	mov	#0,	r12	;

00006100 <.Loc.158.1>:
    6100:	3e 40 8a 57 	mov	#22410,	r14	;#0x578a
    6104:	30 40 62 5c 	br	#0x5c62		;

00006108 <ink_activate_thread>:
    6108:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000610c <.Loc.236.1>:
    610c:	32 c2       	dint			
    610e:	03 43       	nop			

00006110 <.Loc.236.1>:
    6110:	b0 12 d0 64 	call	#25808		;#0x64d0

00006114 <.LVL198>:
    6114:	b0 12 b4 64 	call	#25780		;#0x64b4

00006118 <.Loc.236.1>:
    6118:	03 43       	nop			
    611a:	32 d2       	eint			
    611c:	03 43       	nop			

0000611e <.Loc.237.1>:
    611e:	30 41       	ret			

00006120 <ink_scheduler_run>:
    6120:	b0 12 e6 64 	call	#25830		;#0x64e6

00006124 <.Loc.7.1>:
    6124:	30 41       	ret			

00006126 <__events_boot_init>:
    6126:	1a 15       	pushm	#2,	r10	;16-bit words

00006128 <.LCFI0>:
    6128:	3a 40 1c 50 	mov	#20508,	r10	;#0x501c
    612c:	39 40 1c 4b 	mov	#19228,	r9	;#0x4b1c

00006130 <.L2>:
    6130:	0c 4a       	mov	r10,	r12	;
    6132:	b0 12 d8 62 	call	#25304		;#0x62d8

00006136 <.Loc.27.1>:
    6136:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

0000613a <.Loc.24.1>:
    613a:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    613e:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

00006142 <.Loc.24.1>:
    6142:	3a 90 1c 4b 	cmp	#19228,	r10	;#0x4b1c
    6146:	f4 23       	jnz	$-22     	;abs 0x6130

00006148 <.Loc.29.1>:
    6148:	19 17       	popm	#2,	r10	;16-bit words

0000614a <.LCFI1>:
    614a:	30 41       	ret			

0000614c <__events_commit>:
    614c:	5c 42 28 50 	mov.b	&0x5028,r12	;0x5028
    6150:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    6152:	14 24       	jz	$+42     	;abs 0x617c
    6154:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6156:	1f 24       	jz	$+64     	;abs 0x6196
    6158:	0c 93       	cmp	#0,	r12	;r3 As==00
    615a:	01 24       	jz	$+4      	;abs 0x615e

0000615c <.Loc.51.1>:
    615c:	30 41       	ret			

0000615e <.L16>:
    615e:	1d 42 26 50 	mov	&0x5026,r13	;0x5026

00006162 <.Loc.37.1>:
    6162:	6c 4d       	mov.b	@r13,	r12	;
    6164:	5c 06       	rlam	#2,	r12	;
    6166:	6d 4d       	mov.b	@r13,	r13	;
    6168:	0c 5d       	add	r13,	r12	;
    616a:	5c 06       	rlam	#2,	r12	;
    616c:	3d 40 1c 50 	mov	#20508,	r13	;#0x501c
    6170:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    6174:	b0 12 34 63 	call	#25396		;#0x6334

00006178 <.Loc.38.1>:
    6178:	d2 43 28 50 	mov.b	#1,	&0x5028	;r3 As==01

0000617c <.L6>:
    617c:	1d 42 26 50 	mov	&0x5026,r13	;0x5026

00006180 <.Loc.40.1>:
    6180:	6c 4d       	mov.b	@r13,	r12	;
    6182:	5c 06       	rlam	#2,	r12	;
    6184:	6d 4d       	mov.b	@r13,	r13	;
    6186:	0c 5d       	add	r13,	r12	;
    6188:	5c 06       	rlam	#2,	r12	;
    618a:	
0000618c <L0^A>:
    618c:	1c 4b b0 12 	mov	4784(r11),r12	;0x012b0
    6190:	6a 63       	addc.b	#2,	r10	;r3 As==10

00006192 <.Loc.41.1>:
    6192:	e2 43 28 50 	mov.b	#2,	&0x5028	;r3 As==10

00006196 <.L7>:
    6196:	1c 42 26 50 	mov	&0x5026,r12	;0x5026
    619a:	1c 4c 02 00 	mov	2(r12),	r12	;

0000619e <.Loc.44.1>:
    619e:	3c 92       	cmp	#8,	r12	;r2 As==11
    61a0:	04 24       	jz	$+10     	;abs 0x61aa

000061a2 <.L9>:
    61a2:	f2 40 03 00 	mov.b	#3,	&0x5028	;
    61a6:	28 50 

000061a8 <.Loc.51.1>:
    61a8:	30 41       	ret			

000061aa <.L17>:
    61aa:	32 c2       	dint			
    61ac:	03 43       	nop			

000061ae <.Loc.46.1>:
    61ae:	1c 42 26 50 	mov	&0x5026,r12	;0x5026
    61b2:	b0 12 b4 64 	call	#25780		;#0x64b4

000061b6 <.Loc.47.1>:
    61b6:	03 43       	nop			
    61b8:	32 d2       	eint			
    61ba:	03 43       	nop			
    61bc:	f2 3f       	jmp	$-26     	;abs 0x61a2

000061be <__event_buffer_full_ISR>:
    61be:	1d 42 26 50 	mov	&0x5026,r13	;0x5026

000061c2 <.Loc.55.1>:
    61c2:	6c 4d       	mov.b	@r13,	r12	;

000061c4 <.LVL7>:
    61c4:	5c 06       	rlam	#2,	r12	;
    61c6:	6d 4d       	mov.b	@r13,	r13	;
    61c8:	0c 5d       	add	r13,	r12	;
    61ca:	5c 06       	rlam	#2,	r12	;
    61cc:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    61d0:	b0 12 08 63 	call	#25352		;#0x6308

000061d4 <.Loc.56.1>:
    61d4:	30 41       	ret			

000061d6 <__event_signal_ISR>:
    61d6:	82 4c 26 50 	mov	r12,	&0x5026	;

000061da <.Loc.64.1>:
    61da:	0e 4d       	mov	r13,	r14	;
    61dc:	b2 4e 1c 50 	mov	@r14+,	&0x501c	;
    61e0:	b2 4e 1e 50 	mov	@r14+,	&0x501e	;
    61e4:	92 4d 04 00 	mov	4(r13),	&0x5020	;
    61e8:	20 50 
    61ea:	92 4d 06 00 	mov	6(r13),	&0x5022	;
    61ee:	22 50 
    61f0:	92 4e 04 00 	mov	4(r14),	&0x5024	;
    61f4:	24 50 

000061f6 <.Loc.65.1>:
    61f6:	c2 43 28 50 	mov.b	#0,	&0x5028	;r3 As==00

000061fa <.LBB4>:
    61fa:	5d 42 28 50 	mov.b	&0x5028,r13	;0x5028

000061fe <.LVL10>:
    61fe:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    6200:	14 24       	jz	$+42     	;abs 0x622a
    6202:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    6204:	1f 24       	jz	$+64     	;abs 0x6244
    6206:	0d 93       	cmp	#0,	r13	;r3 As==00
    6208:	01 24       	jz	$+4      	;abs 0x620c

0000620a <.LBE4>:
    620a:	30 41       	ret			

0000620c <.L30>:
    620c:	6d 4c       	mov.b	@r12,	r13	;
    620e:	5d 06       	rlam	#2,	r13	;
    6210:	6c 4c       	mov.b	@r12,	r12	;

00006212 <.LVL11>:
    6212:	0c 5d       	add	r13,	r12	;
    6214:	5c 06       	rlam	#2,	r12	;
    6216:	3d 40 1c 50 	mov	#20508,	r13	;#0x501c
    621a:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    621e:	b0 12 34 63 	call	#25396		;#0x6334

00006222 <.LVL12>:
    6222:	d2 43 28 50 	mov.b	#1,	&0x5028	;r3 As==01
    6226:	1c 42 26 50 	mov	&0x5026,r12	;0x5026

0000622a <.L20>:
    622a:	6d 4c       	mov.b	@r12,	r13	;
    622c:	5d 06       	rlam	#2,	r13	;
    622e:	6c 4c       	mov.b	@r12,	r12	;
    6230:	0c 5d       	add	r13,	r12	;
    6232:	5c 06       	rlam	#2,	r12	;
    6234:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    6238:	b0 12 6a 63 	call	#25450		;#0x636a

0000623c <.Loc.41.1>:
    623c:	e2 43 28 50 	mov.b	#2,	&0x5028	;r3 As==10
    6240:	1c 42 26 50 	mov	&0x5026,r12	;0x5026

00006244 <.L21>:
    6244:	1c 4c 02 00 	mov	2(r12),	r12	;

00006248 <.Loc.44.1>:
    6248:	3c 92       	cmp	#8,	r12	;r2 As==11
    624a:	04 24       	jz	$+10     	;abs 0x6254

0000624c <.L23>:
    624c:	f2 40 03 00 	mov.b	#3,	&0x5028	;
    6250:	28 50 

00006252 <.Loc.67.1>:
    6252:	30 41       	ret			

00006254 <.L31>:
    6254:	32 c2       	dint			
    6256:	03 43       	nop			

00006258 <.Loc.46.1>:
    6258:	1c 42 26 50 	mov	&0x5026,r12	;0x5026
    625c:	b0 12 b4 64 	call	#25780		;#0x64b4

00006260 <.Loc.47.1>:
    6260:	03 43       	nop			
    6262:	32 d2       	eint			
    6264:	03 43       	nop			
    6266:	f2 3f       	jmp	$-26     	;abs 0x624c

00006268 <__has_events>:
    6268:	6d 4c       	mov.b	@r12,	r13	;
    626a:	5d 06       	rlam	#2,	r13	;
    626c:	6c 4c       	mov.b	@r12,	r12	;

0000626e <.LVL16>:
    626e:	0c 5d       	add	r13,	r12	;
    6270:	5c 06       	rlam	#2,	r12	;
    6272:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    6276:	b0 12 f2 62 	call	#25330		;#0x62f2
    627a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000627e <.Loc.71.1>:
    627e:	3c 53       	add	#-1,	r12	;r3 As==11

00006280 <.Loc.75.1>:
    6280:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6284:	30 41       	ret			

00006286 <__lock_event>:
    6286:	0a 15       	pushm	#1,	r10	;16-bit words

00006288 <.LCFI2>:
    6288:	1c 42 26 50 	mov	&0x5026,r12	;0x5026

0000628c <.LVL19>:
    628c:	6a 4c       	mov.b	@r12,	r10	;

0000628e <.Loc.81.1>:
    628e:	0c 4a       	mov	r10,	r12	;
    6290:	5c 06       	rlam	#2,	r12	;
    6292:	0c 5a       	add	r10,	r12	;
    6294:	5c 06       	rlam	#2,	r12	;
    6296:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    629a:	b0 12 72 63 	call	#25458		;#0x6372

0000629e <.Loc.81.1>:
    629e:	5a 02       	rlam	#1,	r10	;
    62a0:	8a 4c 9c 4a 	mov	r12,	19100(r10); 0x4a9c

000062a4 <.Loc.82.1>:
    62a4:	1c 42 26 50 	mov	&0x5026,r12	;0x5026
    62a8:	6c 4c       	mov.b	@r12,	r12	;
    62aa:	5c 02       	rlam	#1,	r12	;

000062ac <.Loc.83.1>:
    62ac:	1c 4c 9c 4a 	mov	19100(r12),r12	;0x04a9c
    62b0:	0a 17       	popm	#1,	r10	;16-bit words

000062b2 <.LCFI3>:
    62b2:	30 41       	ret			

000062b4 <__release_event>:
    62b4:	1d 42 26 50 	mov	&0x5026,r13	;0x5026

000062b8 <.Loc.87.1>:
    62b8:	6c 4d       	mov.b	@r13,	r12	;

000062ba <.LVL22>:
    62ba:	5c 06       	rlam	#2,	r12	;
    62bc:	6d 4d       	mov.b	@r13,	r13	;
    62be:	0c 5d       	add	r13,	r12	;
    62c0:	5c 06       	rlam	#2,	r12	;
    62c2:	3c 50 1c 4b 	add	#19228,	r12	;#0x4b1c
    62c6:	b0 12 a4 63 	call	#25508		;#0x63a4

000062ca <.Loc.88.1>:
    62ca:	1c 42 26 50 	mov	&0x5026,r12	;0x5026
    62ce:	6c 4c       	mov.b	@r12,	r12	;
    62d0:	5c 02       	rlam	#1,	r12	;
    62d2:	8c 43 9c 4a 	mov	#0,	19100(r12);r3 As==00, 0x4a9c

000062d6 <.Loc.89.1>:
    62d6:	30 41       	ret			

000062d8 <__perqueue_init>:
    62d8:	
000062dc <L0^A>:
    62dc:	10 00       	bra	@r0+		;

000062de <.Loc.7.1>:
    62de:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    62e2:	11 00 

000062e4 <.Loc.8.1>:
    62e4:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    62e8:	12 00 

000062ea <.Loc.9.1>:
    62ea:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    62ee:	13 00 

000062f0 <.Loc.10.1>:
    62f0:	30 41       	ret			

000062f2 <__perqueue_is_empty>:
    62f2:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    62f6:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    62fa:	4c 4d       	mov.b	r13,	r12	;

000062fc <.LVL2>:
    62fc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6300:	3c 53       	add	#-1,	r12	;r3 As==11

00006302 <.Loc.19.1>:
    6302:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6306:	30 41       	ret			

00006308 <__perqueue_is_full>:
    6308:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    630c:	5d 53       	inc.b	r13		;
    630e:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006312 <.Loc.24.1>:
    6312:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6316:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6318:	02 20       	jnz	$+6      	;abs 0x631e

0000631a <.Loc.25.1>:
    631a:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000631e <.L5>:
    631e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6322:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6326:	4c 4d       	mov.b	r13,	r12	;

00006328 <.LVL4>:
    6328:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    632c:	3c 53       	add	#-1,	r12	;r3 As==11

0000632e <.Loc.34.1>:
    632e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6332:	30 41       	ret			

00006334 <__perqueue_push>:
    6334:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    6338:	5e 53       	inc.b	r14		;
    633a:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

0000633e <.Loc.39.1>:
    633e:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    6342:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    6344:	02 20       	jnz	$+6      	;abs 0x634a

00006346 <.Loc.40.1>:
    6346:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000634a <.L7>:
    634a:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

0000634e <.Loc.44.1>:
    634e:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006352 <.Loc.44.1>:
    6352:	0f 9e       	cmp	r14,	r15	;
    6354:	08 24       	jz	$+18     	;abs 0x6366

00006356 <.Loc.49.1>:
    6356:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000635a <.Loc.49.1>:
    635a:	5e 02       	rlam	#1,	r14	;
    635c:	0c 5e       	add	r14,	r12	;

0000635e <.LVL6>:
    635e:	8c 4d 00 00 	mov	r13,	0(r12)	;

00006362 <.Loc.51.1>:
    6362:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006364 <.Loc.52.1>:
    6364:	30 41       	ret			

00006366 <.L9>:
    6366:	4c 43       	clr.b	r12		;

00006368 <.LVL8>:
    6368:	30 41       	ret			

0000636a <__perqueue_push_commit>:
    636a:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    636e:	11 00 

00006370 <.Loc.59.1>:
    6370:	30 41       	ret			

00006372 <__perqueue_pop>:
    6372:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006376 <.Loc.63.1>:
    6376:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

0000637a <.Loc.63.1>:
    637a:	0e 9d       	cmp	r13,	r14	;
    637c:	11 24       	jz	$+36     	;abs 0x63a0

0000637e <.Loc.68.1>:
    637e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6382:	5d 53       	inc.b	r13		;
    6384:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00006388 <.Loc.69.1>:
    6388:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    638c:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    638e:	02 20       	jnz	$+6      	;abs 0x6394

00006390 <.Loc.70.1>:
    6390:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00006394 <.L13>:
    6394:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00006398 <.Loc.72.1>:
    6398:	5d 02       	rlam	#1,	r13	;
    639a:	0c 5d       	add	r13,	r12	;

0000639c <.LVL11>:
    639c:	2c 4c       	mov	@r12,	r12	;

0000639e <.Loc.73.1>:
    639e:	30 41       	ret			

000063a0 <.L14>:
    63a0:	4c 43       	clr.b	r12		;

000063a2 <.LVL13>:
    63a2:	30 41       	ret			

000063a4 <__perqueue_pop_commit>:
    63a4:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    63a8:	10 00 

000063aa <.Loc.79.1>:
    63aa:	30 41       	ret			

000063ac <__fram_init>:
    63ac:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    63b0:	40 01 

000063b2 <.Loc.12.1>:
    63b2:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    63b6:	41 01 

000063b8 <.Loc.13.1>:
    63b8:	30 41       	ret			

000063ba <__fram_word_copy>:
    63ba:	0a 15       	pushm	#1,	r10	;16-bit words

000063bc <.LCFI0>:
    63bc:	21 82       	sub	#4,	r1	;r2 As==10

000063be <.LBB2>:
    63be:	0a 4c       	mov	r12,	r10	;
    63c0:	0b 43       	clr	r11		;
    63c2:	81 4a 00 00 	mov	r10,	0(r1)	;
    63c6:	81 4b 02 00 	mov	r11,	2(r1)	;

000063ca <.Loc.20.1>:
    63ca:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

000063ce <.LVL1>:
    63ce:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    63d2:	00 00 

000063d4 <.LBB3>:
    63d4:	0a 4d       	mov	r13,	r10	;
    63d6:	0b 43       	clr	r11		;

000063d8 <.LVL2>:
    63d8:	81 4a 00 00 	mov	r10,	0(r1)	;
    63dc:	81 4b 02 00 	mov	r11,	2(r1)	;

000063e0 <.Loc.21.1>:
    63e0:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    63e4:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    63e8:	00 00 

000063ea <.LBE3>:
    63ea:	82 4e 1a 05 	mov	r14,	&0x051a	;

000063ee <.Loc.25.1>:
    63ee:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    63f2:	10 05 

000063f4 <.Loc.26.1>:
    63f4:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    63f8:	10 05 

000063fa <.Loc.28.1>:
    63fa:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

000063fe <.Loc.29.1>:
    63fe:	21 52       	add	#4,	r1	;r2 As==10

00006400 <.LCFI2>:
    6400:	0a 17       	popm	#1,	r10	;16-bit words

00006402 <.LCFI3>:
    6402:	30 41       	ret			

00006404 <__scheduler_boot_init>:
    6404:	3c 40 2c 50 	mov	#20524,	r12	;#0x502c
    6408:	b0 12 ae 71 	call	#29102		;#0x71ae

0000640c <.Loc.54.1>:
    640c:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00006410 <.L2>:
    6410:	0c 4d       	mov	r13,	r12	;
    6412:	5c 02       	rlam	#1,	r12	;
    6414:	0c 5d       	add	r13,	r12	;
    6416:	5c 06       	rlam	#2,	r12	;
    6418:	0c 5d       	add	r13,	r12	;
    641a:	5c 02       	rlam	#1,	r12	;
    641c:	1c 4c 38 50 	mov	20536(r12),r12	;0x05038

00006420 <.LVL2>:
    6420:	3d 53       	add	#-1,	r13	;r3 As==11

00006422 <.Loc.56.1>:
    6422:	0d 93       	cmp	#0,	r13	;r3 As==00
    6424:	f5 23       	jnz	$-20     	;abs 0x6410

00006426 <.Loc.60.1>:
    6426:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000642a <.Loc.61.1>:
    642a:	30 41       	ret			

0000642c <__create_thread>:
    642c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006430 <.Loc.68.1>:
    6430:	0b 4c       	mov	r12,	r11	;
    6432:	5b 02       	rlam	#1,	r11	;
    6434:	0b 5c       	add	r12,	r11	;
    6436:	5b 06       	rlam	#2,	r11	;
    6438:	0b 5c       	add	r12,	r11	;
    643a:	5b 02       	rlam	#1,	r11	;
    643c:	cb 4c 36 50 	mov.b	r12,	20534(r11); 0x5036

00006440 <.Loc.69.1>:
    6440:	8b 4d 3a 50 	mov	r13,	20538(r11); 0x503a

00006444 <.Loc.70.1>:
    6444:	8b 4d 3e 50 	mov	r13,	20542(r11); 0x503e

00006448 <.Loc.71.1>:
    6448:	bb 42 38 50 	mov	#8,	20536(r11);r2 As==11, 0x5038

0000644c <.Loc.74.1>:
    644c:	8b 4e 40 50 	mov	r14,	20544(r11); 0x5040

00006450 <.Loc.75.1>:
    6450:	8b 4f 42 50 	mov	r15,	20546(r11); 0x5042

00006454 <.Loc.76.1>:
    6454:	cb 43 44 50 	mov.b	#0,	20548(r11);r3 As==00, 0x5044

00006458 <.Loc.77.1>:
    6458:	9b 41 02 00 	mov	2(r1),	20550(r11); 0x5046
    645c:	46 50 

0000645e <.Loc.78.1>:
    645e:	30 41       	ret			

00006460 <__stop_thread>:
    6460:	0a 15       	pushm	#1,	r10	;16-bit words

00006462 <.LCFI0>:
    6462:	0a 4c       	mov	r12,	r10	;

00006464 <.Loc.82.1>:
    6464:	3d 40 2c 50 	mov	#20524,	r13	;#0x502c
    6468:	6c 4c       	mov.b	@r12,	r12	;

0000646a <.LVL6>:
    646a:	b0 12 f4 71 	call	#29172		;#0x71f4

0000646e <.Loc.83.1>:
    646e:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006472 <.Loc.84.1>:
    6472:	0a 17       	popm	#1,	r10	;16-bit words

00006474 <.LCFI1>:
    6474:	30 41       	ret			

00006476 <__evict_thread>:
    6476:	0a 15       	pushm	#1,	r10	;16-bit words

00006478 <.LCFI2>:
    6478:	0a 4c       	mov	r12,	r10	;

0000647a <.Loc.88.1>:
    647a:	3d 40 2c 50 	mov	#20524,	r13	;#0x502c
    647e:	6c 4c       	mov.b	@r12,	r12	;

00006480 <.LVL9>:
    6480:	b0 12 f4 71 	call	#29172		;#0x71f4

00006484 <.Loc.89.1>:
    6484:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00006488 <.Loc.90.1>:
    6488:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000648c <.Loc.91.1>:
    648c:	0a 17       	popm	#1,	r10	;16-bit words

0000648e <.LCFI3>:
    648e:	30 41       	ret			

00006490 <__set_sing_timer>:
    6490:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00006494 <.Loc.95.1>:
    6494:	30 41       	ret			

00006496 <__set_expr_timer>:
    6496:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000649a <.Loc.101.1>:
    649a:	30 41       	ret			

0000649c <__set_pdc_timer>:
    649c:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

000064a0 <.Loc.107.1>:
    64a0:	30 41       	ret			

000064a2 <__set_pdc_period>:
    64a2:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

000064a6 <.Loc.112.1>:
    64a6:	30 41       	ret			

000064a8 <__get_pdc_timer>:
    64a8:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

000064ac <.LVL16>:
    64ac:	30 41       	ret			

000064ae <__get_pdc_period>:
    64ae:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

000064b2 <.LVL18>:
    64b2:	30 41       	ret			

000064b4 <__start_thread>:
    64b4:	0a 15       	pushm	#1,	r10	;16-bit words

000064b6 <.LCFI4>:
    64b6:	0a 4c       	mov	r12,	r10	;

000064b8 <.Loc.125.1>:
    64b8:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    64bc:	08 00 

000064be <.Loc.126.1>:
    64be:	3d 40 2c 50 	mov	#20524,	r13	;#0x502c
    64c2:	6c 4c       	mov.b	@r12,	r12	;

000064c4 <.LVL20>:
    64c4:	b0 12 d4 71 	call	#29140		;#0x71d4

000064c8 <.Loc.127.1>:
    64c8:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

000064cc <.Loc.128.1>:
    64cc:	0a 17       	popm	#1,	r10	;16-bit words

000064ce <.LCFI5>:
    64ce:	30 41       	ret			

000064d0 <__get_thread>:
    64d0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064d4 <.Loc.140.1>:
    64d4:	0d 4c       	mov	r12,	r13	;
    64d6:	5d 02       	rlam	#1,	r13	;
    64d8:	0d 5c       	add	r12,	r13	;
    64da:	5d 06       	rlam	#2,	r13	;
    64dc:	0c 5d       	add	r13,	r12	;

000064de <.LVL23>:
    64de:	5c 02       	rlam	#1,	r12	;

000064e0 <.Loc.141.1>:
    64e0:	3c 50 36 50 	add	#20534,	r12	;#0x5036
    64e4:	30 41       	ret			

000064e6 <__scheduler_run>:
    64e6:	32 c2       	dint			
    64e8:	03 43       	nop			

000064ea <.Loc.159.1>:
    64ea:	b0 12 4c 61 	call	#24908		;#0x614c

000064ee <.Loc.162.1>:
    64ee:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000064f2 <.Loc.162.1>:
    64f2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000064f6 <.LBB8>:
    64f6:	82 93 2a 50 	cmp	#0,	&0x502a	;r3 As==00
    64fa:	04 24       	jz	$+10     	;abs 0x6504

000064fc <.Loc.146.1>:
    64fc:	1c 42 2a 50 	mov	&0x502a,r12	;0x502a
    6500:	b0 12 9a 65 	call	#26010		;#0x659a

00006504 <.L17>:
    6504:	b0 12 b6 66 	call	#26294		;#0x66b6

00006508 <.Loc.176.1>:
    6508:	03 43       	nop			
    650a:	32 d2       	eint			
    650c:	03 43       	nop			

0000650e <.Loc.179.1>:
    650e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006512 <.Loc.179.1>:
    6512:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006516 <.L20>:
    6516:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    651a:	0c 93       	cmp	#0,	r12	;r3 As==00
    651c:	10 24       	jz	$+34     	;abs 0x653e

0000651e <.L29>:
    651e:	1c 93       	cmp	#1,	r12	;r3 As==01
    6520:	fa 23       	jnz	$-10     	;abs 0x6516
    6522:	1c 42 2a 50 	mov	&0x502a,r12	;0x502a

00006526 <.Loc.196.1>:
    6526:	0c 93       	cmp	#0,	r12	;r3 As==00
    6528:	24 24       	jz	$+74     	;abs 0x6572

0000652a <.L21>:
    652a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000652e <.Loc.198.1>:
    652e:	b0 12 9a 65 	call	#26010		;#0x659a

00006532 <.Loc.202.1>:
    6532:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006536 <.Loc.180.1>:
    6536:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    653a:	0c 93       	cmp	#0,	r12	;r3 As==00
    653c:	f0 23       	jnz	$-30     	;abs 0x651e

0000653e <.L19>:
    653e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006542 <.LBB10>:
    6542:	3c 40 2c 50 	mov	#20524,	r12	;#0x502c
    6546:	b0 12 1c 72 	call	#29212		;#0x721c
    654a:	4d 4c       	mov.b	r12,	r13	;

0000654c <.LVL29>:
    654c:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    654e:	0d 24       	jz	$+28     	;abs 0x656a

00006550 <.Loc.134.1>:
    6550:	0c 4d       	mov	r13,	r12	;
    6552:	5c 02       	rlam	#1,	r12	;

00006554 <.LVL30>:
    6554:	0c 5d       	add	r13,	r12	;
    6556:	5c 06       	rlam	#2,	r12	;
    6558:	0c 5d       	add	r13,	r12	;
    655a:	5c 02       	rlam	#1,	r12	;
    655c:	3c 50 36 50 	add	#20534,	r12	;#0x5036

00006560 <.LBE10>:
    6560:	82 4c 2a 50 	mov	r12,	&0x502a	;

00006564 <.Loc.192.1>:
    6564:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006568 <.Loc.196.1>:
    6568:	e0 3f       	jmp	$-62     	;abs 0x652a

0000656a <.L30>:
    656a:	82 43 2a 50 	mov	#0,	&0x502a	;r3 As==00

0000656e <.Loc.192.1>:
    656e:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006572 <.L22>:
    6572:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006576 <.Loc.206.1>:
    6576:	32 c2       	dint			
    6578:	03 43       	nop			

0000657a <.LBB12>:
    657a:	3c 40 2c 50 	mov	#20524,	r12	;#0x502c
    657e:	b0 12 1c 72 	call	#29212		;#0x721c

00006582 <.LVL33>:
    6582:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6584:	c8 23       	jnz	$-110    	;abs 0x6516

00006586 <.LBE12>:
    6586:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000658a <.Loc.210.1>:
    658a:	03 43       	nop			
    658c:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    6590:	03 43       	nop			

00006592 <.Loc.213.1>:
    6592:	03 43       	nop			
    6594:	32 d2       	eint			
    6596:	03 43       	nop			
    6598:	be 3f       	jmp	$-130    	;abs 0x6516

0000659a <__tick>:
    659a:	0a 15       	pushm	#1,	r10	;16-bit words

0000659c <.LCFI0>:
    659c:	0a 4c       	mov	r12,	r10	;

0000659e <L0^A>:
    659e:	1c 4c 02 00 	mov	2(r12),	r12	;

000065a2 <.LVL1>:
    65a2:	2c 93       	cmp	#2,	r12	;r3 As==10
    65a4:	35 24       	jz	$+108    	;abs 0x6610
    65a6:	2c 92       	cmp	#4,	r12	;r2 As==10
    65a8:	56 24       	jz	$+174    	;abs 0x6656
    65aa:	1c 93       	cmp	#1,	r12	;r3 As==01
    65ac:	02 24       	jz	$+6      	;abs 0x65b2

000065ae <.Loc.145.1>:
    65ae:	0a 17       	popm	#1,	r10	;16-bit words

000065b0 <.LCFI1>:
    65b0:	30 41       	ret			

000065b2 <.L17>:
    65b2:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    65b6:	22 02 

000065b8 <.Loc.11.1>:
    65b8:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

000065bc <.Loc.14.1>:
    65bc:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    65c0:	5c e3       	xor.b	#1,	r12	;r3 As==01
    65c2:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000065c6 <.Loc.14.1>:
    65c6:	5c 02       	rlam	#1,	r12	;
    65c8:	0c 5a       	add	r10,	r12	;
    65ca:	5f 02       	rlam	#1,	r15	;
    65cc:	0f 5a       	add	r10,	r15	;
    65ce:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    65d2:	5e 03       	rrum	#1,	r14	;
    65d4:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    65d8:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    65dc:	b0 12 ba 63 	call	#25530		;#0x63ba

000065e0 <.Loc.17.1>:
    65e0:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    65e4:	22 02 

000065e6 <.LBE5>:
    65e6:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    65ea:	02 02 

000065ec <.Loc.48.1>:
    65ec:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    65f0:	5c e3       	xor.b	#1,	r12	;r3 As==01
    65f2:	c2 4c b6 56 	mov.b	r12,	&0x56b6	;

000065f6 <.Loc.60.1>:
    65f6:	1c 4a 08 00 	mov	8(r10),	r12	;

000065fa <.Loc.60.1>:
    65fa:	1c 9a 04 00 	cmp	4(r10),	r12	;
    65fe:	48 24       	jz	$+146    	;abs 0x6690

00006600 <.Loc.77.1>:
    6600:	8c 12       	call	r12		;

00006602 <.Loc.77.1>:
    6602:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006606 <.L8>:
    6606:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000660a <.Loc.83.1>:
    660a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    660e:	02 02 

00006610 <.L2>:
    6610:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6614:	22 02 

00006616 <.Loc.87.1>:
    6616:	0c 4a       	mov	r10,	r12	;
    6618:	b0 12 b4 62 	call	#25268		;#0x62b4

0000661c <.Loc.96.1>:
    661c:	1c 4a 06 00 	mov	6(r10),	r12	;

00006620 <.Loc.96.1>:
    6620:	8a 4c 08 00 	mov	r12,	8(r10)	;

00006624 <.Loc.108.1>:
    6624:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    6628:	5d e3       	xor.b	#1,	r13	;r3 As==01
    662a:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

0000662e <.Loc.110.1>:
    662e:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006632 <.Loc.115.1>:
    6632:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6636:	0e 00 

00006638 <.Loc.117.1>:
    6638:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    663c:	22 02 

0000663e <.Loc.117.1>:
    663e:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6642:	22 02 

00006644 <.Loc.118.1>:
    6644:	0c 93       	cmp	#0,	r12	;r3 As==00
    6646:	14 24       	jz	$+42     	;abs 0x6670

00006648 <.L9>:
    6648:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000664c <.L12>:
    664c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6650:	22 02 

00006652 <.Loc.142.1>:
    6652:	0a 17       	popm	#1,	r10	;16-bit words

00006654 <.LCFI3>:
    6654:	30 41       	ret			

00006656 <.L3>:
    6656:	1c 4a 08 00 	mov	8(r10),	r12	;

0000665a <.Loc.115.1>:
    665a:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    665e:	0e 00 

00006660 <.Loc.117.1>:
    6660:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6664:	22 02 

00006666 <.Loc.117.1>:
    6666:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    666a:	22 02 

0000666c <.Loc.118.1>:
    666c:	0c 93       	cmp	#0,	r12	;r3 As==00
    666e:	ec 23       	jnz	$-38     	;abs 0x6648

00006670 <.L19>:
    6670:	32 c2       	dint			
    6672:	03 43       	nop			

00006674 <.Loc.125.1>:
    6674:	0c 4a       	mov	r10,	r12	;
    6676:	b0 12 68 62 	call	#25192		;#0x6268

0000667a <.Loc.125.1>:
    667a:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    667c:	12 24       	jz	$+38     	;abs 0x66a2

0000667e <.Loc.131.1>:
    667e:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    6682:	08 00 

00006684 <.Loc.133.1>:
    6684:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006688 <.Loc.135.1>:
    6688:	03 43       	nop			
    668a:	32 d2       	eint			
    668c:	03 43       	nop			
    668e:	de 3f       	jmp	$-66     	;abs 0x664c

00006690 <.L18>:
    6690:	0c 4a       	mov	r10,	r12	;
    6692:	b0 12 86 62 	call	#25222		;#0x6286

00006696 <.LVL10>:
    6696:	1d 4a 04 00 	mov	4(r10),	r13	;
    669a:	8d 12       	call	r13		;

0000669c <.LVL11>:
    669c:	8a 4c 06 00 	mov	r12,	6(r10)	;

000066a0 <.LBE7>:
    66a0:	b2 3f       	jmp	$-154    	;abs 0x6606

000066a2 <.L20>:
    66a2:	0c 4a       	mov	r10,	r12	;
    66a4:	b0 12 60 64 	call	#25696		;#0x6460

000066a8 <.Loc.135.1>:
    66a8:	03 43       	nop			
    66aa:	32 d2       	eint			
    66ac:	03 43       	nop			
    66ae:	ce 3f       	jmp	$-98     	;abs 0x664c

000066b0 <__timers_init>:
    66b0:	b0 12 16 73 	call	#29462		;#0x7316

000066b4 <.Loc.64.1>:
    66b4:	30 41       	ret			

000066b6 <__reboot_timers>:
    66b6:	30 41       	ret			

000066b8 <clear_wkup_status>:
    66b8:	0a 15       	pushm	#1,	r10	;16-bit words

000066ba <.LCFI0>:
    66ba:	4a 4c       	mov.b	r12,	r10	;

000066bc <.Loc.100.1>:
    66bc:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    66c0:	19 24       	jz	$+52     	;abs 0x66f4

000066c2 <.L5>:
    66c2:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    66c6:	0e 24       	jz	$+30     	;abs 0x66e4

000066c8 <.L6>:
    66c8:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    66cc:	02 24       	jz	$+6      	;abs 0x66d2

000066ce <.Loc.109.1>:
    66ce:	0a 17       	popm	#1,	r10	;16-bit words

000066d0 <.LCFI1>:
    66d0:	30 41       	ret			

000066d2 <.L10>:
    66d2:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

000066d6 <.Loc.105.1>:
    66d6:	4e 43       	clr.b	r14		;
    66d8:	4d 43       	clr.b	r13		;
    66da:	6c 43       	mov.b	#2,	r12	;r3 As==10
    66dc:	b0 12 d8 73 	call	#29656		;#0x73d8

000066e0 <.Loc.101.1>:
    66e0:	0a 17       	popm	#1,	r10	;16-bit words

000066e2 <.LCFI3>:
    66e2:	30 41       	ret			

000066e4 <.L9>:
    66e4:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

000066e8 <.Loc.105.1>:
    66e8:	4e 43       	clr.b	r14		;
    66ea:	4d 43       	clr.b	r13		;
    66ec:	5c 43       	mov.b	#1,	r12	;r3 As==01
    66ee:	b0 12 d8 73 	call	#29656		;#0x73d8
    66f2:	ea 3f       	jmp	$-42     	;abs 0x66c8

000066f4 <.L8>:
    66f4:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

000066f8 <.Loc.105.1>:
    66f8:	4e 43       	clr.b	r14		;
    66fa:	4d 43       	clr.b	r13		;
    66fc:	4c 43       	clr.b	r12		;

000066fe <.LVL9>:
    66fe:	b0 12 d8 73 	call	#29656		;#0x73d8
    6702:	df 3f       	jmp	$-64     	;abs 0x66c2

00006704 <unpack_wkup_to_local>:
    6704:	2a 15       	pushm	#3,	r10	;16-bit words

00006706 <.LCFI5>:
    6706:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000670a <.LCFI6>:
    670a:	49 43       	clr.b	r9		;
    670c:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00006710 <.L12>:
    6710:	0a 49       	mov	r9,	r10	;
    6712:	5a 06       	rlam	#2,	r10	;
    6714:	0a 59       	add	r9,	r10	;
    6716:	5a 02       	rlam	#1,	r10	;
    6718:	0a 58       	add	r8,	r10	;
    671a:	4e 43       	clr.b	r14		;
    671c:	4d 49       	mov.b	r9,	r13	;
    671e:	0c 41       	mov	r1,	r12	;
    6720:	b0 12 d4 75 	call	#30164		;#0x75d4
    6724:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6728:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    672c:	02 00 
    672e:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6732:	04 00 
    6734:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6738:	06 00 
    673a:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    673e:	08 00 

00006740 <.LVL14>:
    6740:	19 53       	inc	r9		;

00006742 <.Loc.115.1>:
    6742:	39 90 03 00 	cmp	#3,	r9	;
    6746:	e4 23       	jnz	$-54     	;abs 0x6710

00006748 <.Loc.120.1>:
    6748:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000674c <.LCFI7>:
    674c:	28 17       	popm	#3,	r10	;16-bit words

0000674e <.LCFI8>:
    674e:	30 41       	ret			

00006750 <refresh_wkup_timers>:
    6750:	5a 15       	pushm	#6,	r10	;16-bit words

00006752 <.LCFI9>:
    6752:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006754 <.Loc.127.1>:
    6754:	4a 43       	clr.b	r10		;
    6756:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000675a <.L40>:
    675a:	09 4a       	mov	r10,	r9	;
    675c:	05 4a       	mov	r10,	r5	;
    675e:	55 06       	rlam	#2,	r5	;
    6760:	0c 45       	mov	r5,	r12	;
    6762:	0c 5a       	add	r10,	r12	;
    6764:	5c 02       	rlam	#1,	r12	;
    6766:	0d 4c       	mov	r12,	r13	;
    6768:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

0000676c <.Loc.130.1>:
    676c:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6770:	0c 24       	jz	$+26     	;abs 0x678a

00006772 <.L15>:
    6772:	4c 4a       	mov.b	r10,	r12	;
    6774:	5c 53       	inc.b	r12		;
    6776:	4a 4c       	mov.b	r12,	r10	;

00006778 <.LVL19>:
    6778:	7c 90 03 00 	cmp.b	#3,	r12	;
    677c:	ee 23       	jnz	$-34     	;abs 0x675a

0000677e <.Loc.164.1>:
    677e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6780:	54 24       	jz	$+170    	;abs 0x682a

00006782 <.Loc.174.1>:
    6782:	b0 12 32 72 	call	#29234		;#0x7232

00006786 <.LVL20>:
    6786:	55 17       	popm	#6,	r10	;16-bit words

00006788 <.LCFI10>:
    6788:	30 41       	ret			

0000678a <.L84>:
    678a:	16 4d 04 00 	mov	4(r13),	r6	;
    678e:	17 4d 06 00 	mov	6(r13),	r7	;

00006792 <.Loc.133.1>:
    6792:	0e 93       	cmp	#0,	r14	;r3 As==00
    6794:	05 24       	jz	$+12     	;abs 0x67a0

00006796 <.Loc.135.1>:
    6796:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

0000679a <.Loc.136.1>:
    679a:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    679e:	5c 1c 

000067a0 <.L17>:
    67a0:	b0 12 d4 72 	call	#29396		;#0x72d4

000067a4 <.Loc.141.1>:
    67a4:	0e 46       	mov	r6,	r14	;
    67a6:	0f 47       	mov	r7,	r15	;
    67a8:	0e 8c       	sub	r12,	r14	;
    67aa:	0f 7d       	subc	r13,	r15	;

000067ac <.Loc.141.1>:
    67ac:	05 5a       	add	r10,	r5	;
    67ae:	55 02       	rlam	#1,	r5	;
    67b0:	05 58       	add	r8,	r5	;
    67b2:	85 4e 04 00 	mov	r14,	4(r5)	;
    67b6:	85 4f 06 00 	mov	r15,	6(r5)	;

000067ba <.Loc.142.1>:
    67ba:	4d 43       	clr.b	r13		;
    67bc:	4c 4a       	mov.b	r10,	r12	;
    67be:	b0 12 38 73 	call	#29496		;#0x7338

000067c2 <.Loc.144.1>:
    67c2:	1c 45 04 00 	mov	4(r5),	r12	;
    67c6:	1d 45 06 00 	mov	6(r5),	r13	;
    67ca:	4b 4a       	mov.b	r10,	r11	;
    67cc:	5b 53       	inc.b	r11		;
    67ce:	4a 4b       	mov.b	r11,	r10	;

000067d0 <.Loc.144.1>:
    67d0:	07 4d       	mov	r13,	r7	;
    67d2:	0d 93       	cmp	#0,	r13	;r3 As==00
    67d4:	3b 38       	jl	$+120    	;abs 0x684c

000067d6 <.Loc.151.1>:
    67d6:	0e 4c       	mov	r12,	r14	;
    67d8:	0e dd       	bis	r13,	r14	;
    67da:	0e 93       	cmp	#0,	r14	;r3 As==00
    67dc:	af 24       	jz	$+352    	;abs 0x693c

000067de <.Loc.155.1>:
    67de:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    67e2:	0e 46       	mov	r6,	r14	;
    67e4:	0f 43       	clr	r15		;

000067e6 <.Loc.155.1>:
    67e6:	0d 93       	cmp	#0,	r13	;r3 As==00
    67e8:	18 34       	jge	$+50     	;abs 0x681a

000067ea <.L50>:
    67ea:	0e 49       	mov	r9,	r14	;
    67ec:	5e 06       	rlam	#2,	r14	;
    67ee:	09 5e       	add	r14,	r9	;
    67f0:	59 02       	rlam	#1,	r9	;
    67f2:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

000067f6 <.L37>:
    67f6:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

000067fa <.Loc.158.1>:
    67fa:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

000067fe <.Loc.127.1>:
    67fe:	7b 90 03 00 	cmp.b	#3,	r11	;
    6802:	15 24       	jz	$+44     	;abs 0x682e

00006804 <.L74>:
    6804:	09 4a       	mov	r10,	r9	;
    6806:	05 4a       	mov	r10,	r5	;
    6808:	55 06       	rlam	#2,	r5	;
    680a:	0c 45       	mov	r5,	r12	;
    680c:	0c 5a       	add	r10,	r12	;
    680e:	5c 02       	rlam	#1,	r12	;

00006810 <.Loc.130.1>:
    6810:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6814:	41 24       	jz	$+132    	;abs 0x6898

00006816 <.L91>:
    6816:	4e 43       	clr.b	r14		;
    6818:	ac 3f       	jmp	$-166    	;abs 0x6772

0000681a <.L87>:
    681a:	0d 93       	cmp	#0,	r13	;r3 As==00
    681c:	62 24       	jz	$+198    	;abs 0x68e2

0000681e <.L35>:
    681e:	07 4c       	mov	r12,	r7	;
    6820:	0c 9e       	cmp	r14,	r12	;
    6822:	79 24       	jz	$+244    	;abs 0x6916

00006824 <.L38>:
    6824:	7b 90 03 00 	cmp.b	#3,	r11	;
    6828:	ed 23       	jnz	$-36     	;abs 0x6804

0000682a <.L72>:
    682a:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

0000682e <.L43>:
    682e:	4d 4e       	mov.b	r14,	r13	;
    6830:	4c 43       	clr.b	r12		;
    6832:	b0 12 20 74 	call	#29728		;#0x7420

00006836 <.Loc.167.1>:
    6836:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    683a:	4c 43       	clr.b	r12		;
    683c:	b0 12 2e 74 	call	#29742		;#0x742e

00006840 <.Loc.171.1>:
    6840:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    6844:	b0 12 46 72 	call	#29254		;#0x7246

00006848 <.Loc.177.1>:
    6848:	55 17       	popm	#6,	r10	;16-bit words

0000684a <.LCFI12>:
    684a:	30 41       	ret			

0000684c <.L85>:
    684c:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    6850:	06 43       	clr	r6		;
    6852:	06 8e       	sub	r14,	r6	;
    6854:	0e 46       	mov	r6,	r14	;
    6856:	0f 46       	mov	r6,	r15	;
    6858:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000685c <.Loc.144.1>:
    685c:	05 4f       	mov	r15,	r5	;
    685e:	0f 9d       	cmp	r13,	r15	;
    6860:	25 38       	jl	$+76     	;abs 0x68ac

00006862 <.Loc.144.1>:
    6862:	0d 9f       	cmp	r15,	r13	;
    6864:	21 24       	jz	$+68     	;abs 0x68a8

00006866 <.L20>:
    6866:	07 4d       	mov	r13,	r7	;
    6868:	0d 9f       	cmp	r15,	r13	;
    686a:	04 38       	jl	$+10     	;abs 0x6874
    686c:	0f 9d       	cmp	r13,	r15	;
    686e:	da 23       	jnz	$-74     	;abs 0x6824
    6870:	0c 96       	cmp	r6,	r12	;
    6872:	d8 2f       	jc	$-78     	;abs 0x6824

00006874 <.L30>:
    6874:	0c 49       	mov	r9,	r12	;
    6876:	5c 06       	rlam	#2,	r12	;
    6878:	09 5c       	add	r12,	r9	;
    687a:	59 02       	rlam	#1,	r9	;
    687c:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

00006880 <.Loc.127.1>:
    6880:	7b 90 03 00 	cmp.b	#3,	r11	;
    6884:	d2 27       	jz	$-90     	;abs 0x682a

00006886 <.Loc.130.1>:
    6886:	09 4a       	mov	r10,	r9	;
    6888:	05 4a       	mov	r10,	r5	;
    688a:	55 06       	rlam	#2,	r5	;
    688c:	0c 45       	mov	r5,	r12	;
    688e:	0c 5a       	add	r10,	r12	;
    6890:	5c 02       	rlam	#1,	r12	;

00006892 <.Loc.130.1>:
    6892:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6896:	bf 23       	jnz	$-128    	;abs 0x6816

00006898 <.L27>:
    6898:	0c 45       	mov	r5,	r12	;
    689a:	0c 5a       	add	r10,	r12	;
    689c:	5c 02       	rlam	#1,	r12	;
    689e:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    68a2:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    68a6:	7c 3f       	jmp	$-262    	;abs 0x67a0

000068a8 <.L90>:
    68a8:	06 9c       	cmp	r12,	r6	;
    68aa:	dd 2f       	jc	$-68     	;abs 0x6866

000068ac <.L46>:
    68ac:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    68b0:	06 4e       	mov	r14,	r6	;
    68b2:	07 43       	clr	r7		;

000068b4 <.Loc.146.1>:
    68b4:	4e 43       	clr.b	r14		;
    68b6:	4f 43       	clr.b	r15		;
    68b8:	0e 8c       	sub	r12,	r14	;
    68ba:	0f 7d       	subc	r13,	r15	;

000068bc <.Loc.146.1>:
    68bc:	05 4f       	mov	r15,	r5	;
    68be:	0f 93       	cmp	#0,	r15	;r3 As==00
    68c0:	14 34       	jge	$+42     	;abs 0x68ea

000068c2 <.L22>:
    68c2:	0e 49       	mov	r9,	r14	;
    68c4:	5e 06       	rlam	#2,	r14	;
    68c6:	09 5e       	add	r14,	r9	;
    68c8:	59 02       	rlam	#1,	r9	;
    68ca:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

000068ce <.L28>:
    68ce:	4f 43       	clr.b	r15		;
    68d0:	0f 8c       	sub	r12,	r15	;
    68d2:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

000068d6 <.Loc.149.1>:
    68d6:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

000068da <.Loc.127.1>:
    68da:	7b 90 03 00 	cmp.b	#3,	r11	;
    68de:	92 23       	jnz	$-218    	;abs 0x6804
    68e0:	a6 3f       	jmp	$-178    	;abs 0x682e

000068e2 <.L88>:
    68e2:	07 4c       	mov	r12,	r7	;
    68e4:	0c 9e       	cmp	r14,	r12	;
    68e6:	9b 2f       	jc	$-200    	;abs 0x681e
    68e8:	80 3f       	jmp	$-254    	;abs 0x67ea

000068ea <.L92>:
    68ea:	0f 93       	cmp	#0,	r15	;r3 As==00
    68ec:	03 20       	jnz	$+8      	;abs 0x68f4
    68ee:	05 4e       	mov	r14,	r5	;
    68f0:	0e 96       	cmp	r6,	r14	;
    68f2:	e7 2b       	jnc	$-48     	;abs 0x68c2

000068f4 <.L47>:
    68f4:	06 9e       	cmp	r14,	r6	;
    68f6:	96 23       	jnz	$-210    	;abs 0x6824
    68f8:	0f 93       	cmp	#0,	r15	;r3 As==00
    68fa:	94 23       	jnz	$-214    	;abs 0x6824

000068fc <.Loc.146.1>:
    68fc:	0e 49       	mov	r9,	r14	;
    68fe:	5e 06       	rlam	#2,	r14	;
    6900:	09 5e       	add	r14,	r9	;
    6902:	59 02       	rlam	#1,	r9	;
    6904:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006908 <.Loc.146.1>:
    6908:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000690c <.Loc.146.1>:
    690c:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    6910:	36 1c 
    6912:	dd 2b       	jnc	$-68     	;abs 0x68ce
    6914:	0e 3c       	jmp	$+30     	;abs 0x6932

00006916 <.L89>:
    6916:	0d 9f       	cmp	r15,	r13	;
    6918:	85 23       	jnz	$-244    	;abs 0x6824

0000691a <.Loc.155.1>:
    691a:	0e 49       	mov	r9,	r14	;
    691c:	5e 06       	rlam	#2,	r14	;
    691e:	09 5e       	add	r14,	r9	;
    6920:	59 02       	rlam	#1,	r9	;
    6922:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00006926 <.Loc.155.1>:
    6926:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000692a <.Loc.155.1>:
    692a:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    692e:	36 1c 
    6930:	62 2b       	jnc	$-314    	;abs 0x67f6

00006932 <.L39>:
    6932:	7b 90 03 00 	cmp.b	#3,	r11	;
    6936:	66 23       	jnz	$-306    	;abs 0x6804

00006938 <.Loc.155.1>:
    6938:	0e 4f       	mov	r15,	r14	;

0000693a <.Loc.164.1>:
    693a:	79 3f       	jmp	$-268    	;abs 0x682e

0000693c <.L86>:
    693c:	7b 90 03 00 	cmp.b	#3,	r11	;
    6940:	74 27       	jz	$-278    	;abs 0x682a

00006942 <.Loc.130.1>:
    6942:	09 4a       	mov	r10,	r9	;
    6944:	05 4a       	mov	r10,	r5	;
    6946:	55 06       	rlam	#2,	r5	;
    6948:	0c 45       	mov	r5,	r12	;
    694a:	0c 5a       	add	r10,	r12	;
    694c:	5c 02       	rlam	#1,	r12	;

0000694e <.Loc.130.1>:
    694e:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    6952:	0f 23       	jnz	$-480    	;abs 0x6772
    6954:	a1 3f       	jmp	$-188    	;abs 0x6898

00006956 <set_wkup_timer>:
    6956:	4a 15       	pushm	#5,	r10	;16-bit words

00006958 <.LCFI14>:
    6958:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000695c <.LCFI15>:
    695c:	47 4c       	mov.b	r12,	r7	;
    695e:	09 4d       	mov	r13,	r9	;

00006960 <.LBB12>:
    6960:	46 43       	clr.b	r6		;
    6962:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

00006966 <.L94>:
    6966:	0a 46       	mov	r6,	r10	;
    6968:	5a 06       	rlam	#2,	r10	;
    696a:	0a 56       	add	r6,	r10	;
    696c:	5a 02       	rlam	#1,	r10	;
    696e:	0a 58       	add	r8,	r10	;
    6970:	4e 43       	clr.b	r14		;
    6972:	4d 46       	mov.b	r6,	r13	;
    6974:	0c 41       	mov	r1,	r12	;
    6976:	b0 12 d4 75 	call	#30164		;#0x75d4
    697a:	aa 41 00 00 	mov	@r1,	0(r10)	;
    697e:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6982:	02 00 
    6984:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6988:	04 00 
    698a:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    698e:	06 00 
    6990:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6994:	08 00 

00006996 <.LVL43>:
    6996:	16 53       	inc	r6		;

00006998 <.Loc.115.1>:
    6998:	36 90 03 00 	cmp	#3,	r6	;
    699c:	e4 23       	jnz	$-54     	;abs 0x6966

0000699e <.Loc.189.1>:
    699e:	b0 12 32 72 	call	#29234		;#0x7232

000069a2 <.Loc.192.1>:
    69a2:	0e 49       	mov	r9,	r14	;
    69a4:	0f 43       	clr	r15		;

000069a6 <.Loc.194.1>:
    69a6:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    69aa:	22 24       	jz	$+70     	;abs 0x69f0

000069ac <.Loc.192.1>:
    69ac:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    69b0:	49 24       	jz	$+148    	;abs 0x6a44

000069b2 <.Loc.192.1>:
    69b2:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    69b6:	49 24       	jz	$+148    	;abs 0x6a4a

000069b8 <.Loc.192.1>:
    69b8:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    69bc:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

000069c0 <.Loc.216.1>:
    69c0:	4d 43       	clr.b	r13		;
    69c2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69c4:	b0 12 38 73 	call	#29496		;#0x7338

000069c8 <.Loc.217.1>:
    69c8:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

000069cc <.Loc.218.1>:
    69cc:	4e 47       	mov.b	r7,	r14	;
    69ce:	4d 43       	clr.b	r13		;
    69d0:	7c 40 03 00 	mov.b	#3,	r12	;
    69d4:	b0 12 8c 73 	call	#29580		;#0x738c

000069d8 <.Loc.219.1>:
    69d8:	b0 12 50 67 	call	#26448		;#0x6750

000069dc <.Loc.222.1>:
    69dc:	4c 43       	clr.b	r12		;
    69de:	b0 12 3c 74 	call	#29756		;#0x743c

000069e2 <.Loc.223.1>:
    69e2:	4c 43       	clr.b	r12		;
    69e4:	b0 12 90 75 	call	#30096		;#0x7590

000069e8 <.Loc.224.1>:
    69e8:	31 50 0a 00 	add	#10,	r1	;#0x000a

000069ec <.LCFI16>:
    69ec:	46 17       	popm	#5,	r10	;16-bit words

000069ee <.LCFI17>:
    69ee:	30 41       	ret			

000069f0 <.L97>:
    69f0:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

000069f4 <.Loc.194.1>:
    69f4:	0d 4a       	mov	r10,	r13	;

000069f6 <.L95>:
    69f6:	0c 4d       	mov	r13,	r12	;
    69f8:	5c 06       	rlam	#2,	r12	;
    69fa:	0c 5d       	add	r13,	r12	;
    69fc:	5c 02       	rlam	#1,	r12	;
    69fe:	08 5c       	add	r12,	r8	;
    6a00:	88 4e 04 00 	mov	r14,	4(r8)	;
    6a04:	88 4f 06 00 	mov	r15,	6(r8)	;

00006a08 <.Loc.197.1>:
    6a08:	4d 43       	clr.b	r13		;
    6a0a:	4c 4a       	mov.b	r10,	r12	;
    6a0c:	b0 12 38 73 	call	#29496		;#0x7338

00006a10 <.Loc.198.1>:
    6a10:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00006a14 <.Loc.199.1>:
    6a14:	4e 47       	mov.b	r7,	r14	;
    6a16:	4d 43       	clr.b	r13		;
    6a18:	4c 4a       	mov.b	r10,	r12	;
    6a1a:	b0 12 8c 73 	call	#29580		;#0x738c

00006a1e <.Loc.200.1>:
    6a1e:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

00006a22 <.Loc.201.1>:
    6a22:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6a24:	4d 43       	clr.b	r13		;
    6a26:	4c 4a       	mov.b	r10,	r12	;
    6a28:	b0 12 d8 73 	call	#29656		;#0x73d8

00006a2c <.Loc.202.1>:
    6a2c:	b0 12 50 67 	call	#26448		;#0x6750

00006a30 <.Loc.222.1>:
    6a30:	4c 43       	clr.b	r12		;
    6a32:	b0 12 3c 74 	call	#29756		;#0x743c

00006a36 <.Loc.223.1>:
    6a36:	4c 43       	clr.b	r12		;
    6a38:	b0 12 90 75 	call	#30096		;#0x7590

00006a3c <.Loc.224.1>:
    6a3c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006a40 <.LCFI19>:
    6a40:	46 17       	popm	#5,	r10	;16-bit words

00006a42 <.LCFI20>:
    6a42:	30 41       	ret			

00006a44 <.L98>:
    6a44:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006a46 <.Loc.194.1>:
    6a46:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6a48:	d6 3f       	jmp	$-82     	;abs 0x69f6

00006a4a <.L99>:
    6a4a:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006a4c <.Loc.194.1>:
    6a4c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a4e:	d3 3f       	jmp	$-88     	;abs 0x69f6

00006a50 <clear_xpr_status>:
    6a50:	4d 4c       	mov.b	r12,	r13	;

00006a52 <.Loc.236.1>:
    6a52:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    6a56:	14 24       	jz	$+42     	;abs 0x6a80

00006a58 <.Loc.237.1>:
    6a58:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    6a5c:	14 24       	jz	$+42     	;abs 0x6a86

00006a5e <.Loc.237.1>:
    6a5e:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    6a62:	01 24       	jz	$+4      	;abs 0x6a66

00006a64 <.Loc.246.1>:
    6a64:	30 41       	ret			

00006a66 <.L106>:
    6a66:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006a68 <.LVL69>:
    6a68:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006a6a <.L102>:
    6a6a:	0d 4e       	mov	r14,	r13	;

00006a6c <.LVL71>:
    6a6c:	5d 06       	rlam	#2,	r13	;
    6a6e:	0d 5e       	add	r14,	r13	;
    6a70:	5d 02       	rlam	#1,	r13	;
    6a72:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006a76 <.Loc.241.1>:
    6a76:	4e 43       	clr.b	r14		;
    6a78:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a7a:	b0 12 d8 73 	call	#29656		;#0x73d8

00006a7e <.Loc.242.1>:
    6a7e:	30 41       	ret			

00006a80 <.L104>:
    6a80:	4c 43       	clr.b	r12		;

00006a82 <.LVL74>:
    6a82:	4e 43       	clr.b	r14		;
    6a84:	f2 3f       	jmp	$-26     	;abs 0x6a6a

00006a86 <.L105>:
    6a86:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006a88 <.LVL76>:
    6a88:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6a8a:	ef 3f       	jmp	$-32     	;abs 0x6a6a

00006a8c <unpack_xpr_to_local>:
    6a8c:	2a 15       	pushm	#3,	r10	;16-bit words

00006a8e <.LCFI22>:
    6a8e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006a92 <.LCFI23>:
    6a92:	49 43       	clr.b	r9		;
    6a94:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

00006a98 <.L108>:
    6a98:	0a 49       	mov	r9,	r10	;
    6a9a:	5a 06       	rlam	#2,	r10	;
    6a9c:	0a 59       	add	r9,	r10	;
    6a9e:	5a 02       	rlam	#1,	r10	;
    6aa0:	0a 58       	add	r8,	r10	;
    6aa2:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6aa4:	4d 49       	mov.b	r9,	r13	;
    6aa6:	0c 41       	mov	r1,	r12	;
    6aa8:	b0 12 d4 75 	call	#30164		;#0x75d4
    6aac:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6ab0:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6ab4:	02 00 
    6ab6:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6aba:	04 00 
    6abc:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6ac0:	06 00 
    6ac2:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6ac6:	08 00 

00006ac8 <.LVL80>:
    6ac8:	19 53       	inc	r9		;

00006aca <.Loc.252.1>:
    6aca:	39 90 03 00 	cmp	#3,	r9	;
    6ace:	e4 23       	jnz	$-54     	;abs 0x6a98

00006ad0 <.Loc.257.1>:
    6ad0:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006ad4 <.LCFI24>:
    6ad4:	28 17       	popm	#3,	r10	;16-bit words

00006ad6 <.LCFI25>:
    6ad6:	30 41       	ret			

00006ad8 <refresh_xpr_timers>:
    6ad8:	4a 15       	pushm	#5,	r10	;16-bit words

00006ada <.LCFI26>:
    6ada:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    6ade:	62 24       	jz	$+198    	;abs 0x6ba4

00006ae0 <.Loc.265.1>:
    6ae0:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6ae4:	07 24       	jz	$+16     	;abs 0x6af4

00006ae6 <.Loc.265.1>:
    6ae6:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    6aea:	15 25       	jz	$+556    	;abs 0x6d16

00006aec <.Loc.265.1>:
    6aec:	b0 12 72 72 	call	#29298		;#0x7272

00006af0 <.Loc.313.1>:
    6af0:	46 17       	popm	#5,	r10	;16-bit words

00006af2 <.LCFI27>:
    6af2:	30 41       	ret			

00006af4 <.L160>:
    6af4:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6af8:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00006afc <.LVL88>:
    6afc:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

00006b00 <.LVL89>:
    6b00:	08 46       	mov	r6,	r8	;
    6b02:	09 47       	mov	r7,	r9	;

00006b04 <.L125>:
    6b04:	b0 12 d4 72 	call	#29396		;#0x72d4

00006b08 <.Loc.278.1>:
    6b08:	0e 46       	mov	r6,	r14	;
    6b0a:	0f 47       	mov	r7,	r15	;
    6b0c:	0e 8c       	sub	r12,	r14	;
    6b0e:	0f 7d       	subc	r13,	r15	;

00006b10 <.Loc.278.1>:
    6b10:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    6b14:	82 4f 26 1c 	mov	r15,	&0x1c26	;

00006b18 <.Loc.279.1>:
    6b18:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6b1a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6b1c:	b0 12 38 73 	call	#29496		;#0x7338

00006b20 <.Loc.281.1>:
    6b20:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    6b24:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

00006b28 <.Loc.281.1>:
    6b28:	4e 43       	clr.b	r14		;
    6b2a:	0e 9c       	cmp	r12,	r14	;
    6b2c:	a2 34       	jge	$+326    	;abs 0x6c72

00006b2e <.L132>:
    6b2e:	0c 99       	cmp	r9,	r12	;
    6b30:	04 38       	jl	$+10     	;abs 0x6b3a

00006b32 <.L170>:
    6b32:	09 9c       	cmp	r12,	r9	;
    6b34:	e5 20       	jnz	$+460    	;abs 0x6d00
    6b36:	0d 98       	cmp	r8,	r13	;
    6b38:	e3 2c       	jc	$+456    	;abs 0x6d00

00006b3a <.L152>:
    6b3a:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

00006b3e <.L130>:
    6b3e:	08 4d       	mov	r13,	r8	;
    6b40:	09 4c       	mov	r12,	r9	;

00006b42 <.L117>:
    6b42:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    6b46:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

00006b4a <.Loc.268.1>:
    6b4a:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    6b4e:	1d 20       	jnz	$+60     	;abs 0x6b8a

00006b50 <.L142>:
    6b50:	b0 12 d4 72 	call	#29396		;#0x72d4

00006b54 <.Loc.278.1>:
    6b54:	0e 46       	mov	r6,	r14	;
    6b56:	0f 47       	mov	r7,	r15	;
    6b58:	0e 8c       	sub	r12,	r14	;
    6b5a:	0f 7d       	subc	r13,	r15	;

00006b5c <.Loc.278.1>:
    6b5c:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    6b60:	82 4f 30 1c 	mov	r15,	&0x1c30	;

00006b64 <.Loc.279.1>:
    6b64:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6b66:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6b68:	b0 12 38 73 	call	#29496		;#0x7338

00006b6c <.Loc.281.1>:
    6b6c:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    6b70:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

00006b74 <.Loc.281.1>:
    6b74:	4e 43       	clr.b	r14		;
    6b76:	0e 9c       	cmp	r12,	r14	;
    6b78:	4c 34       	jge	$+154    	;abs 0x6c12

00006b7a <.L134>:
    6b7a:	0c 99       	cmp	r9,	r12	;
    6b7c:	76 38       	jl	$+238    	;abs 0x6c6a

00006b7e <.L168>:
    6b7e:	09 9c       	cmp	r12,	r9	;
    6b80:	02 20       	jnz	$+6      	;abs 0x6b86
    6b82:	0d 98       	cmp	r8,	r13	;
    6b84:	72 28       	jnc	$+230    	;abs 0x6c6a

00006b86 <.L139>:
    6b86:	08 9d       	cmp	r13,	r8	;
    6b88:	d8 24       	jz	$+434    	;abs 0x6d3a

00006b8a <.L137>:
    6b8a:	4d 4a       	mov.b	r10,	r13	;
    6b8c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6b8e:	b0 12 20 74 	call	#29728		;#0x7420

00006b92 <.Loc.305.1>:
    6b92:	0d 48       	mov	r8,	r13	;
    6b94:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6b96:	b0 12 2e 74 	call	#29742		;#0x742e

00006b9a <.Loc.308.1>:
    6b9a:	0c 48       	mov	r8,	r12	;
    6b9c:	b0 12 5c 72 	call	#29276		;#0x725c

00006ba0 <.Loc.313.1>:
    6ba0:	46 17       	popm	#5,	r10	;16-bit words

00006ba2 <.LCFI29>:
    6ba2:	30 41       	ret			

00006ba4 <.L159>:
    6ba4:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    6ba8:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

00006bac <.LVL103>:
    6bac:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

00006bb0 <.LVL104>:
    6bb0:	b0 12 d4 72 	call	#29396		;#0x72d4

00006bb4 <.LVL105>:
    6bb4:	0e 48       	mov	r8,	r14	;
    6bb6:	0f 49       	mov	r9,	r15	;
    6bb8:	0e 8c       	sub	r12,	r14	;
    6bba:	0f 7d       	subc	r13,	r15	;

00006bbc <.Loc.278.1>:
    6bbc:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    6bc0:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

00006bc4 <.Loc.279.1>:
    6bc4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6bc6:	4c 43       	clr.b	r12		;
    6bc8:	b0 12 38 73 	call	#29496		;#0x7338

00006bcc <.Loc.281.1>:
    6bcc:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    6bd0:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00006bd4 <.Loc.281.1>:
    6bd4:	4e 43       	clr.b	r14		;
    6bd6:	0e 9c       	cmp	r12,	r14	;
    6bd8:	74 34       	jge	$+234    	;abs 0x6cc2

00006bda <.L121>:
    6bda:	0c 99       	cmp	r9,	r12	;
    6bdc:	0c 34       	jge	$+26     	;abs 0x6bf6

00006bde <.L151>:
    6bde:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

00006be2 <.L119>:
    6be2:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6be6:	ab 23       	jnz	$-168    	;abs 0x6b3e

00006be8 <.Loc.271.1>:
    6be8:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6bec:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00006bf0 <.Loc.268.1>:
    6bf0:	08 4d       	mov	r13,	r8	;
    6bf2:	09 4c       	mov	r12,	r9	;
    6bf4:	87 3f       	jmp	$-240    	;abs 0x6b04

00006bf6 <.L165>:
    6bf6:	09 9c       	cmp	r12,	r9	;
    6bf8:	02 20       	jnz	$+6      	;abs 0x6bfe
    6bfa:	0d 98       	cmp	r8,	r13	;
    6bfc:	f0 2b       	jnc	$-30     	;abs 0x6bde

00006bfe <.L114>:
    6bfe:	0d 98       	cmp	r8,	r13	;
    6c00:	93 24       	jz	$+296    	;abs 0x6d28

00006c02 <.L118>:
    6c02:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    6c06:	9d 23       	jnz	$-196    	;abs 0x6b42

00006c08 <.Loc.271.1>:
    6c08:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    6c0c:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    6c10:	79 3f       	jmp	$-268    	;abs 0x6b04

00006c12 <.L162>:
    6c12:	0c 93       	cmp	#0,	r12	;r3 As==00
    6c14:	02 20       	jnz	$+6      	;abs 0x6c1a
    6c16:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c18:	b0 23       	jnz	$-158    	;abs 0x6b7a

00006c1a <.L153>:
    6c1a:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    6c1e:	b0 12 d0 64 	call	#25808		;#0x64d0
    6c22:	b0 12 76 64 	call	#25718		;#0x6476

00006c26 <.Loc.289.1>:
    6c26:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

00006c2a <.LBB18>:
    6c2a:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    6c2e:	18 1c 
    6c30:	8e 24       	jz	$+286    	;abs 0x6d4e

00006c32 <.Loc.237.1>:
    6c32:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    6c36:	91 24       	jz	$+292    	;abs 0x6d5a

00006c38 <.Loc.237.1>:
    6c38:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006c3a <.Loc.239.1>:
    6c3a:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006c3c <.L136>:
    6c3c:	0d 4e       	mov	r14,	r13	;
    6c3e:	5d 06       	rlam	#2,	r13	;
    6c40:	0d 5e       	add	r14,	r13	;
    6c42:	5d 02       	rlam	#1,	r13	;
    6c44:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006c48 <.Loc.241.1>:
    6c48:	4e 43       	clr.b	r14		;
    6c4a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6c4c:	b0 12 d8 73 	call	#29656		;#0x73d8

00006c50 <.LBE18>:
    6c50:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    6c54:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

00006c58 <.Loc.292.1>:
    6c58:	4e 43       	clr.b	r14		;
    6c5a:	0e 9c       	cmp	r12,	r14	;
    6c5c:	8e 3b       	jl	$-226    	;abs 0x6b7a
    6c5e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6c60:	94 23       	jnz	$-214    	;abs 0x6b8a
    6c62:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c64:	92 27       	jz	$-218    	;abs 0x6b8a

00006c66 <.Loc.294.1>:
    6c66:	0c 99       	cmp	r9,	r12	;
    6c68:	8a 37       	jge	$-234    	;abs 0x6b7e

00006c6a <.L154>:
    6c6a:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

00006c6e <.LVL117>:
    6c6e:	08 4d       	mov	r13,	r8	;
    6c70:	8c 3f       	jmp	$-230    	;abs 0x6b8a

00006c72 <.L161>:
    6c72:	0c 93       	cmp	#0,	r12	;r3 As==00
    6c74:	02 20       	jnz	$+6      	;abs 0x6c7a
    6c76:	0d 93       	cmp	#0,	r13	;r3 As==00
    6c78:	5a 23       	jnz	$-330    	;abs 0x6b2e

00006c7a <.L126>:
    6c7a:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    6c7e:	b0 12 d0 64 	call	#25808		;#0x64d0
    6c82:	b0 12 76 64 	call	#25718		;#0x6476

00006c86 <.LVL120>:
    6c86:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    6c8a:	22 1c 
    6c8c:	63 24       	jz	$+200    	;abs 0x6d54

00006c8e <.Loc.237.1>:
    6c8e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006c90 <.Loc.239.1>:
    6c90:	5e 43       	mov.b	#1,	r14	;r3 As==01

00006c92 <.L131>:
    6c92:	0d 4e       	mov	r14,	r13	;
    6c94:	5d 06       	rlam	#2,	r13	;
    6c96:	0d 5e       	add	r14,	r13	;
    6c98:	5d 02       	rlam	#1,	r13	;
    6c9a:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006c9e <.Loc.241.1>:
    6c9e:	4e 43       	clr.b	r14		;
    6ca0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ca2:	b0 12 d8 73 	call	#29656		;#0x73d8

00006ca6 <.LVL122>:
    6ca6:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    6caa:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

00006cae <.Loc.292.1>:
    6cae:	4e 43       	clr.b	r14		;
    6cb0:	0e 9c       	cmp	r12,	r14	;
    6cb2:	3d 3b       	jl	$-388    	;abs 0x6b2e
    6cb4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cb6:	45 23       	jnz	$-372    	;abs 0x6b42
    6cb8:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cba:	43 27       	jz	$-376    	;abs 0x6b42

00006cbc <.Loc.294.1>:
    6cbc:	0c 99       	cmp	r9,	r12	;
    6cbe:	3d 3b       	jl	$-388    	;abs 0x6b3a
    6cc0:	38 3f       	jmp	$-398    	;abs 0x6b32

00006cc2 <.L164>:
    6cc2:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cc4:	02 20       	jnz	$+6      	;abs 0x6cca
    6cc6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cc8:	88 23       	jnz	$-238    	;abs 0x6bda

00006cca <.L112>:
    6cca:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    6cce:	b0 12 d0 64 	call	#25808		;#0x64d0
    6cd2:	b0 12 76 64 	call	#25718		;#0x6476

00006cd6 <.LVL125>:
    6cd6:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

00006cda <.Loc.241.1>:
    6cda:	4e 43       	clr.b	r14		;
    6cdc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6cde:	4c 43       	clr.b	r12		;
    6ce0:	b0 12 d8 73 	call	#29656		;#0x73d8

00006ce4 <.LVL126>:
    6ce4:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    6ce8:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00006cec <.Loc.292.1>:
    6cec:	4e 43       	clr.b	r14		;
    6cee:	0e 9c       	cmp	r12,	r14	;
    6cf0:	74 3b       	jl	$-278    	;abs 0x6bda
    6cf2:	0c 93       	cmp	#0,	r12	;r3 As==00
    6cf4:	86 23       	jnz	$-242    	;abs 0x6c02
    6cf6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6cf8:	84 27       	jz	$-246    	;abs 0x6c02

00006cfa <.Loc.294.1>:
    6cfa:	0c 99       	cmp	r9,	r12	;
    6cfc:	70 3b       	jl	$-286    	;abs 0x6bde
    6cfe:	7b 3f       	jmp	$-264    	;abs 0x6bf6

00006d00 <.L128>:
    6d00:	08 9d       	cmp	r13,	r8	;
    6d02:	1f 23       	jnz	$-448    	;abs 0x6b42
    6d04:	09 9c       	cmp	r12,	r9	;
    6d06:	1d 23       	jnz	$-452    	;abs 0x6b42

00006d08 <.Loc.294.1>:
    6d08:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

00006d0c <.Loc.294.1>:
    6d0c:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    6d10:	18 2f       	jc	$-462    	;abs 0x6b42
    6d12:	0a 4e       	mov	r14,	r10	;

00006d14 <.LVL128>:
    6d14:	14 3f       	jmp	$-470    	;abs 0x6b3e

00006d16 <.L143>:
    6d16:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    6d1a:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

00006d1e <.LVL130>:
    6d1e:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

00006d22 <.LVL131>:
    6d22:	08 46       	mov	r6,	r8	;
    6d24:	09 47       	mov	r7,	r9	;
    6d26:	14 3f       	jmp	$-470    	;abs 0x6b50

00006d28 <.L166>:
    6d28:	0c 99       	cmp	r9,	r12	;
    6d2a:	6b 23       	jnz	$-296    	;abs 0x6c02

00006d2c <.Loc.294.1>:
    6d2c:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

00006d30 <.Loc.294.1>:
    6d30:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    6d34:	66 2f       	jc	$-306    	;abs 0x6c02
    6d36:	0a 4e       	mov	r14,	r10	;

00006d38 <.LVL133>:
    6d38:	54 3f       	jmp	$-342    	;abs 0x6be2

00006d3a <.L163>:
    6d3a:	09 9c       	cmp	r12,	r9	;
    6d3c:	26 23       	jnz	$-434    	;abs 0x6b8a

00006d3e <.Loc.294.1>:
    6d3e:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

00006d42 <.Loc.294.1>:
    6d42:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    6d46:	21 2f       	jc	$-444    	;abs 0x6b8a
    6d48:	0a 4c       	mov	r12,	r10	;

00006d4a <.LVL135>:
    6d4a:	08 4d       	mov	r13,	r8	;
    6d4c:	1e 3f       	jmp	$-450    	;abs 0x6b8a

00006d4e <.L149>:
    6d4e:	4c 43       	clr.b	r12		;

00006d50 <.Loc.239.1>:
    6d50:	4e 43       	clr.b	r14		;
    6d52:	74 3f       	jmp	$-278    	;abs 0x6c3c

00006d54 <.L169>:
    6d54:	4c 43       	clr.b	r12		;

00006d56 <.Loc.239.1>:
    6d56:	4e 43       	clr.b	r14		;
    6d58:	9c 3f       	jmp	$-198    	;abs 0x6c92

00006d5a <.L167>:
    6d5a:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006d5c <.Loc.239.1>:
    6d5c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6d5e:	6e 3f       	jmp	$-290    	;abs 0x6c3c

00006d60 <set_expire_timer>:
    6d60:	5a 15       	pushm	#6,	r10	;16-bit words

00006d62 <.LCFI31>:
    6d62:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006d66 <.LCFI32>:
    6d66:	47 4c       	mov.b	r12,	r7	;
    6d68:	08 4d       	mov	r13,	r8	;
    6d6a:	06 4e       	mov	r14,	r6	;

00006d6c <.LBB26>:
    6d6c:	45 43       	clr.b	r5		;
    6d6e:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

00006d72 <.L172>:
    6d72:	0a 45       	mov	r5,	r10	;
    6d74:	5a 06       	rlam	#2,	r10	;
    6d76:	0a 55       	add	r5,	r10	;
    6d78:	5a 02       	rlam	#1,	r10	;
    6d7a:	0a 59       	add	r9,	r10	;
    6d7c:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6d7e:	4d 45       	mov.b	r5,	r13	;
    6d80:	0c 41       	mov	r1,	r12	;
    6d82:	b0 12 d4 75 	call	#30164		;#0x75d4
    6d86:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6d8a:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6d8e:	02 00 
    6d90:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6d94:	04 00 
    6d96:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6d9a:	06 00 
    6d9c:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6da0:	08 00 

00006da2 <.LVL143>:
    6da2:	15 53       	inc	r5		;

00006da4 <.Loc.252.1>:
    6da4:	35 90 03 00 	cmp	#3,	r5	;
    6da8:	e4 23       	jnz	$-54     	;abs 0x6d72

00006daa <.Loc.324.1>:
    6daa:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    6dae:	1d 24       	jz	$+60     	;abs 0x6dea

00006db0 <.Loc.324.1>:
    6db0:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    6db4:	4e 24       	jz	$+158    	;abs 0x6e52

00006db6 <.Loc.324.1>:
    6db6:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    6dba:	4e 24       	jz	$+158    	;abs 0x6e58

00006dbc <.Loc.324.1>:
    6dbc:	0e 48       	mov	r8,	r14	;
    6dbe:	0f 46       	mov	r6,	r15	;
    6dc0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6dc2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6dc4:	b0 12 38 73 	call	#29496		;#0x7338

00006dc8 <.Loc.348.1>:
    6dc8:	4e 47       	mov.b	r7,	r14	;
    6dca:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6dcc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6dce:	b0 12 8c 73 	call	#29580		;#0x738c

00006dd2 <.Loc.349.1>:
    6dd2:	b0 12 d8 6a 	call	#27352		;#0x6ad8

00006dd6 <.Loc.352.1>:
    6dd6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6dd8:	b0 12 3c 74 	call	#29756		;#0x743c

00006ddc <.Loc.353.1>:
    6ddc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6dde:	b0 12 90 75 	call	#30096		;#0x7590

00006de2 <.Loc.354.1>:
    6de2:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006de6 <.LCFI33>:
    6de6:	55 17       	popm	#6,	r10	;16-bit words

00006de8 <.LCFI34>:
    6de8:	30 41       	ret			

00006dea <.L175>:
    6dea:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

00006dee <.Loc.326.1>:
    6dee:	05 4a       	mov	r10,	r5	;

00006df0 <.L173>:
    6df0:	b0 12 d4 72 	call	#29396		;#0x72d4

00006df4 <.Loc.328.1>:
    6df4:	0e 45       	mov	r5,	r14	;
    6df6:	5e 06       	rlam	#2,	r14	;
    6df8:	0e 55       	add	r5,	r14	;
    6dfa:	5e 02       	rlam	#1,	r14	;
    6dfc:	09 5e       	add	r14,	r9	;

00006dfe <.Loc.328.1>:
    6dfe:	0c 58       	add	r8,	r12	;
    6e00:	89 4c 04 00 	mov	r12,	4(r9)	;
    6e04:	0d 66       	addc	r6,	r13	;
    6e06:	89 4d 06 00 	mov	r13,	6(r9)	;

00006e0a <.Loc.329.1>:
    6e0a:	b0 12 d4 72 	call	#29396		;#0x72d4

00006e0e <.Loc.329.1>:
    6e0e:	0e 4c       	mov	r12,	r14	;
    6e10:	0e 58       	add	r8,	r14	;
    6e12:	0f 4d       	mov	r13,	r15	;
    6e14:	0f 66       	addc	r6,	r15	;
    6e16:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6e18:	4c 4a       	mov.b	r10,	r12	;
    6e1a:	b0 12 38 73 	call	#29496		;#0x7338

00006e1e <.Loc.330.1>:
    6e1e:	c9 47 02 00 	mov.b	r7,	2(r9)	;

00006e22 <.Loc.331.1>:
    6e22:	4e 47       	mov.b	r7,	r14	;
    6e24:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6e26:	4c 4a       	mov.b	r10,	r12	;
    6e28:	b0 12 8c 73 	call	#29580		;#0x738c

00006e2c <.Loc.332.1>:
    6e2c:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

00006e30 <.Loc.333.1>:
    6e30:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6e32:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6e34:	4c 4a       	mov.b	r10,	r12	;
    6e36:	b0 12 d8 73 	call	#29656		;#0x73d8

00006e3a <.Loc.334.1>:
    6e3a:	b0 12 d8 6a 	call	#27352		;#0x6ad8

00006e3e <.Loc.352.1>:
    6e3e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e40:	b0 12 3c 74 	call	#29756		;#0x743c

00006e44 <.Loc.353.1>:
    6e44:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6e46:	b0 12 90 75 	call	#30096		;#0x7590

00006e4a <.Loc.354.1>:
    6e4a:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006e4e <.LCFI36>:
    6e4e:	55 17       	popm	#6,	r10	;16-bit words

00006e50 <.LCFI37>:
    6e50:	30 41       	ret			

00006e52 <.L176>:
    6e52:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006e54 <.Loc.326.1>:
    6e54:	55 43       	mov.b	#1,	r5	;r3 As==01
    6e56:	cc 3f       	jmp	$-102    	;abs 0x6df0

00006e58 <.L177>:
    6e58:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006e5a <.Loc.326.1>:
    6e5a:	65 43       	mov.b	#2,	r5	;r3 As==10
    6e5c:	c9 3f       	jmp	$-108    	;abs 0x6df0

00006e5e <stop_expire_timer>:
    6e5e:	3a 15       	pushm	#4,	r10	;16-bit words

00006e60 <.LCFI39>:
    6e60:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006e64 <.LCFI40>:
    6e64:	47 4c       	mov.b	r12,	r7	;

00006e66 <.LBB34>:
    6e66:	49 43       	clr.b	r9		;
    6e68:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

00006e6c <.L180>:
    6e6c:	0a 49       	mov	r9,	r10	;
    6e6e:	5a 06       	rlam	#2,	r10	;
    6e70:	0a 59       	add	r9,	r10	;
    6e72:	5a 02       	rlam	#1,	r10	;
    6e74:	0a 58       	add	r8,	r10	;
    6e76:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6e78:	4d 49       	mov.b	r9,	r13	;
    6e7a:	0c 41       	mov	r1,	r12	;
    6e7c:	b0 12 d4 75 	call	#30164		;#0x75d4
    6e80:	aa 41 00 00 	mov	@r1,	0(r10)	;
    6e84:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    6e88:	02 00 
    6e8a:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    6e8e:	04 00 
    6e90:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    6e94:	06 00 
    6e96:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    6e9a:	08 00 

00006e9c <.LVL170>:
    6e9c:	19 53       	inc	r9		;

00006e9e <.Loc.252.1>:
    6e9e:	39 90 03 00 	cmp	#3,	r9	;
    6ea2:	e4 23       	jnz	$-54     	;abs 0x6e6c

00006ea4 <.LBB38>:
    6ea4:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    6ea8:	12 24       	jz	$+38     	;abs 0x6ece

00006eaa <.Loc.237.1>:
    6eaa:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    6eae:	27 24       	jz	$+80     	;abs 0x6efe

00006eb0 <.Loc.237.1>:
    6eb0:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    6eb4:	27 24       	jz	$+80     	;abs 0x6f04

00006eb6 <.LBE38>:
    6eb6:	b0 12 d8 6a 	call	#27352		;#0x6ad8

00006eba <.Loc.368.1>:
    6eba:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ebc:	b0 12 3c 74 	call	#29756		;#0x743c

00006ec0 <.Loc.369.1>:
    6ec0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ec2:	b0 12 90 75 	call	#30096		;#0x7590

00006ec6 <.Loc.371.1>:
    6ec6:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006eca <.LCFI41>:
    6eca:	37 17       	popm	#4,	r10	;16-bit words

00006ecc <.LCFI42>:
    6ecc:	30 41       	ret			

00006ece <.L183>:
    6ece:	4c 43       	clr.b	r12		;

00006ed0 <.Loc.239.1>:
    6ed0:	4e 43       	clr.b	r14		;

00006ed2 <.L181>:
    6ed2:	0d 4e       	mov	r14,	r13	;
    6ed4:	5d 06       	rlam	#2,	r13	;
    6ed6:	0d 5e       	add	r14,	r13	;
    6ed8:	5d 02       	rlam	#1,	r13	;
    6eda:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006ede <.Loc.241.1>:
    6ede:	4e 43       	clr.b	r14		;
    6ee0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6ee2:	b0 12 d8 73 	call	#29656		;#0x73d8

00006ee6 <.Loc.242.1>:
    6ee6:	b0 12 d8 6a 	call	#27352		;#0x6ad8

00006eea <.Loc.368.1>:
    6eea:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6eec:	b0 12 3c 74 	call	#29756		;#0x743c

00006ef0 <.Loc.369.1>:
    6ef0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6ef2:	b0 12 90 75 	call	#30096		;#0x7590

00006ef6 <.Loc.371.1>:
    6ef6:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006efa <.LCFI44>:
    6efa:	37 17       	popm	#4,	r10	;16-bit words

00006efc <.LCFI45>:
    6efc:	30 41       	ret			

00006efe <.L184>:
    6efe:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006f00 <.Loc.239.1>:
    6f00:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6f02:	e7 3f       	jmp	$-48     	;abs 0x6ed2

00006f04 <.L186>:
    6f04:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006f06 <.Loc.239.1>:
    6f06:	6e 43       	mov.b	#2,	r14	;r3 As==10
    6f08:	e4 3f       	jmp	$-54     	;abs 0x6ed2

00006f0a <unpack_pdc_to_local>:
    6f0a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006f0e <.LCFI47>:
    6f0e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6f10:	4d 43       	clr.b	r13		;
    6f12:	0c 41       	mov	r1,	r12	;
    6f14:	b0 12 d4 75 	call	#30164		;#0x75d4
    6f18:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    6f1c:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    6f20:	0e 1c 
    6f22:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    6f26:	10 1c 
    6f28:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    6f2c:	12 1c 
    6f2e:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    6f32:	14 1c 

00006f34 <.Loc.383.1>:
    6f34:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006f38 <.LCFI48>:
    6f38:	30 41       	ret			

00006f3a <refresh_pdc_timers>:
    6f3a:	2a 15       	pushm	#3,	r10	;16-bit words

00006f3c <.LCFI49>:
    6f3c:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    6f40:	8a 20       	jnz	$+278    	;abs 0x7056

00006f42 <.Loc.463.1>:
    6f42:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    6f46:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

00006f4a <.Loc.465.1>:
    6f4a:	82 48 52 1c 	mov	r8,	&0x1c52	;

00006f4e <.Loc.466.1>:
    6f4e:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    6f52:	54 1c 

00006f54 <.Loc.467.1>:
    6f54:	b0 12 d4 72 	call	#29396		;#0x72d4

00006f58 <.Loc.471.1>:
    6f58:	0e 48       	mov	r8,	r14	;
    6f5a:	0f 49       	mov	r9,	r15	;
    6f5c:	0e 8c       	sub	r12,	r14	;
    6f5e:	0f 7d       	subc	r13,	r15	;

00006f60 <.Loc.471.1>:
    6f60:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    6f64:	82 4f 12 1c 	mov	r15,	&0x1c12	;

00006f68 <.Loc.472.1>:
    6f68:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6f6a:	4c 43       	clr.b	r12		;
    6f6c:	b0 12 38 73 	call	#29496		;#0x7338

00006f70 <.Loc.474.1>:
    6f70:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    6f74:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

00006f78 <.Loc.474.1>:
    6f78:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f7a:	21 38       	jl	$+68     	;abs 0x6fbe

00006f7c <.Loc.481.1>:
    6f7c:	0f 4c       	mov	r12,	r15	;
    6f7e:	0f dd       	bis	r13,	r15	;
    6f80:	0f 93       	cmp	#0,	r15	;r3 As==00
    6f82:	6d 24       	jz	$+220    	;abs 0x705e

00006f84 <.Loc.485.1>:
    6f84:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    6f88:	08 4f       	mov	r15,	r8	;
    6f8a:	09 43       	clr	r9		;

00006f8c <.Loc.485.1>:
    6f8c:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f8e:	54 38       	jl	$+170    	;abs 0x7038
    6f90:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f92:	02 20       	jnz	$+6      	;abs 0x6f98
    6f94:	0c 98       	cmp	r8,	r12	;
    6f96:	50 28       	jnc	$+162    	;abs 0x7038

00006f98 <.L209>:
    6f98:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00006f9c <.Loc.485.1>:
    6f9c:	0c 98       	cmp	r8,	r12	;
    6f9e:	53 24       	jz	$+168    	;abs 0x7046

00006fa0 <.L197>:
    6fa0:	4d 4e       	mov.b	r14,	r13	;
    6fa2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6fa4:	b0 12 20 74 	call	#29728		;#0x7420

00006fa8 <.Loc.497.1>:
    6fa8:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    6fac:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6fae:	b0 12 2e 74 	call	#29742		;#0x742e

00006fb2 <.Loc.500.1>:
    6fb2:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    6fb6:	b0 12 7c 72 	call	#29308		;#0x727c

00006fba <.Loc.507.1>:
    6fba:	28 17       	popm	#3,	r10	;16-bit words

00006fbc <.LCFI50>:
    6fbc:	30 41       	ret			

00006fbe <.L210>:
    6fbe:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    6fc2:	0f 43       	clr	r15		;
    6fc4:	0f 89       	sub	r9,	r15	;
    6fc6:	08 4f       	mov	r15,	r8	;
    6fc8:	09 4f       	mov	r15,	r9	;
    6fca:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

00006fce <.Loc.474.1>:
    6fce:	09 9d       	cmp	r13,	r9	;
    6fd0:	04 38       	jl	$+10     	;abs 0x6fda

00006fd2 <.Loc.474.1>:
    6fd2:	0d 99       	cmp	r9,	r13	;
    6fd4:	25 20       	jnz	$+76     	;abs 0x7020
    6fd6:	0f 9c       	cmp	r12,	r15	;
    6fd8:	23 2c       	jc	$+72     	;abs 0x7020

00006fda <.L206>:
    6fda:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    6fde:	0a 4e       	mov	r14,	r10	;
    6fe0:	0b 43       	clr	r11		;

00006fe2 <.Loc.476.1>:
    6fe2:	48 43       	clr.b	r8		;
    6fe4:	49 43       	clr.b	r9		;
    6fe6:	08 8c       	sub	r12,	r8	;
    6fe8:	09 7d       	subc	r13,	r9	;

00006fea <.Loc.476.1>:
    6fea:	09 93       	cmp	#0,	r9	;r3 As==00
    6fec:	04 38       	jl	$+10     	;abs 0x6ff6
    6fee:	09 93       	cmp	#0,	r9	;r3 As==00
    6ff0:	0b 20       	jnz	$+24     	;abs 0x7008
    6ff2:	08 9a       	cmp	r10,	r8	;
    6ff4:	09 2c       	jc	$+20     	;abs 0x7008

00006ff6 <.L207>:
    6ff6:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

00006ffa <.L196>:
    6ffa:	4f 43       	clr.b	r15		;
    6ffc:	0f 8c       	sub	r12,	r15	;
    6ffe:	82 4f 52 1c 	mov	r15,	&0x1c52	;

00007002 <.Loc.479.1>:
    7002:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00007006 <.Loc.494.1>:
    7006:	cc 3f       	jmp	$-102    	;abs 0x6fa0

00007008 <.L194>:
    7008:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000700c <.Loc.476.1>:
    700c:	0a 98       	cmp	r8,	r10	;
    700e:	c8 23       	jnz	$-110    	;abs 0x6fa0
    7010:	09 93       	cmp	#0,	r9	;r3 As==00
    7012:	c6 23       	jnz	$-114    	;abs 0x6fa0

00007014 <.Loc.476.1>:
    7014:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

00007018 <.Loc.476.1>:
    7018:	4f 9e       	cmp.b	r14,	r15	;
    701a:	c2 2f       	jc	$-122    	;abs 0x6fa0
    701c:	0e 4f       	mov	r15,	r14	;
    701e:	ed 3f       	jmp	$-36     	;abs 0x6ffa

00007020 <.L192>:
    7020:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00007024 <.Loc.481.1>:
    7024:	0d 99       	cmp	r9,	r13	;
    7026:	05 38       	jl	$+12     	;abs 0x7032
    7028:	0a 49       	mov	r9,	r10	;
    702a:	09 9d       	cmp	r13,	r9	;
    702c:	b9 23       	jnz	$-140    	;abs 0x6fa0
    702e:	0c 9f       	cmp	r15,	r12	;
    7030:	b7 2f       	jc	$-144    	;abs 0x6fa0

00007032 <.L208>:
    7032:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007036 <.Loc.494.1>:
    7036:	b4 3f       	jmp	$-150    	;abs 0x6fa0

00007038 <.L201>:
    7038:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000703c <.L203>:
    703c:	82 4c 52 1c 	mov	r12,	&0x1c52	;

00007040 <.Loc.488.1>:
    7040:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00007044 <.Loc.494.1>:
    7044:	ad 3f       	jmp	$-164    	;abs 0x6fa0

00007046 <.L211>:
    7046:	0d 99       	cmp	r9,	r13	;
    7048:	ab 23       	jnz	$-168    	;abs 0x6fa0

0000704a <.Loc.485.1>:
    704a:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000704e <.Loc.485.1>:
    704e:	4f 9e       	cmp.b	r14,	r15	;
    7050:	a7 2f       	jc	$-176    	;abs 0x6fa0
    7052:	0e 4f       	mov	r15,	r14	;
    7054:	f3 3f       	jmp	$-24     	;abs 0x703c

00007056 <.L189>:
    7056:	b0 12 32 72 	call	#29234		;#0x7232

0000705a <.Loc.507.1>:
    705a:	28 17       	popm	#3,	r10	;16-bit words

0000705c <.LCFI52>:
    705c:	30 41       	ret			

0000705e <.L199>:
    705e:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    7062:	9e 3f       	jmp	$-194    	;abs 0x6fa0

00007064 <set_periodic_timer>:
    7064:	1a 15       	pushm	#2,	r10	;16-bit words

00007066 <.LCFI54>:
    7066:	17 15       	pushm	#2,	r7	;16-bit words

00007068 <.LCFI55>:
    7068:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000706c <.LCFI56>:
    706c:	49 4c       	mov.b	r12,	r9	;
    706e:	0a 4d       	mov	r13,	r10	;

00007070 <.LBB44>:
    7070:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7072:	4d 43       	clr.b	r13		;

00007074 <.LVL210>:
    7074:	0c 41       	mov	r1,	r12	;

00007076 <.LVL211>:
    7076:	b0 12 d4 75 	call	#30164		;#0x75d4
    707a:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    707e:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7082:	0e 1c 
    7084:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    7088:	10 1c 
    708a:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    708e:	12 1c 
    7090:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    7094:	14 1c 

00007096 <.LBE44>:
    7096:	06 4a       	mov	r10,	r6	;
    7098:	07 43       	clr	r7		;

0000709a <.Loc.401.1>:
    709a:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    709e:	31 20       	jnz	$+100    	;abs 0x7102

000070a0 <.Loc.403.1>:
    70a0:	4c 49       	mov.b	r9,	r12	;
    70a2:	b0 12 d0 64 	call	#25808		;#0x64d0
    70a6:	0d 4a       	mov	r10,	r13	;
    70a8:	b0 12 9c 64 	call	#25756		;#0x649c

000070ac <.Loc.404.1>:
    70ac:	4c 49       	mov.b	r9,	r12	;
    70ae:	b0 12 d0 64 	call	#25808		;#0x64d0
    70b2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    70b4:	b0 12 a2 64 	call	#25762		;#0x64a2

000070b8 <.Loc.405.1>:
    70b8:	0e 46       	mov	r6,	r14	;
    70ba:	0f 47       	mov	r7,	r15	;
    70bc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    70be:	4c 43       	clr.b	r12		;
    70c0:	b0 12 38 73 	call	#29496		;#0x7338

000070c4 <.Loc.406.1>:
    70c4:	82 46 10 1c 	mov	r6,	&0x1c10	;
    70c8:	82 47 12 1c 	mov	r7,	&0x1c12	;

000070cc <.Loc.407.1>:
    70cc:	4e 49       	mov.b	r9,	r14	;
    70ce:	5d 43       	mov.b	#1,	r13	;r3 As==01
    70d0:	4c 43       	clr.b	r12		;
    70d2:	b0 12 8c 73 	call	#29580		;#0x738c

000070d6 <.Loc.408.1>:
    70d6:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

000070da <.Loc.409.1>:
    70da:	5e 43       	mov.b	#1,	r14	;r3 As==01
    70dc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    70de:	4c 43       	clr.b	r12		;
    70e0:	b0 12 d8 73 	call	#29656		;#0x73d8

000070e4 <.Loc.410.1>:
    70e4:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

000070e8 <.Loc.411.1>:
    70e8:	b0 12 3a 6f 	call	#28474		;#0x6f3a

000070ec <.Loc.433.1>:
    70ec:	5c 43       	mov.b	#1,	r12	;r3 As==01
    70ee:	b0 12 3c 74 	call	#29756		;#0x743c

000070f2 <.Loc.434.1>:
    70f2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    70f4:	b0 12 90 75 	call	#30096		;#0x7590

000070f8 <.Loc.435.1>:
    70f8:	31 50 0a 00 	add	#10,	r1	;#0x000a

000070fc <.LCFI57>:
    70fc:	16 17       	popm	#2,	r7	;16-bit words

000070fe <.LCFI58>:
    70fe:	19 17       	popm	#2,	r10	;16-bit words

00007100 <.LCFI59>:
    7100:	30 41       	ret			

00007102 <.L213>:
    7102:	82 46 10 1c 	mov	r6,	&0x1c10	;
    7106:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000710a <.Loc.426.1>:
    710a:	0e 46       	mov	r6,	r14	;
    710c:	0f 47       	mov	r7,	r15	;
    710e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7110:	4c 43       	clr.b	r12		;
    7112:	b0 12 38 73 	call	#29496		;#0x7338

00007116 <.Loc.427.1>:
    7116:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000711a <.Loc.428.1>:
    711a:	4e 49       	mov.b	r9,	r14	;
    711c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    711e:	4c 43       	clr.b	r12		;
    7120:	b0 12 8c 73 	call	#29580		;#0x738c

00007124 <.Loc.430.1>:
    7124:	b0 12 3a 6f 	call	#28474		;#0x6f3a

00007128 <.Loc.433.1>:
    7128:	5c 43       	mov.b	#1,	r12	;r3 As==01
    712a:	b0 12 3c 74 	call	#29756		;#0x743c

0000712e <.Loc.434.1>:
    712e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7130:	b0 12 90 75 	call	#30096		;#0x7590

00007134 <.Loc.435.1>:
    7134:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007138 <.LCFI61>:
    7138:	16 17       	popm	#2,	r7	;16-bit words

0000713a <.LCFI62>:
    713a:	19 17       	popm	#2,	r10	;16-bit words

0000713c <.LCFI63>:
    713c:	30 41       	ret			

0000713e <stop_periodic_timer>:
    713e:	0a 15       	pushm	#1,	r10	;16-bit words

00007140 <.LCFI64>:
    7140:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007144 <.LCFI65>:
    7144:	4a 4c       	mov.b	r12,	r10	;

00007146 <.LBB50>:
    7146:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7148:	4d 43       	clr.b	r13		;
    714a:	0c 41       	mov	r1,	r12	;

0000714c <.LVL233>:
    714c:	b0 12 d4 75 	call	#30164		;#0x75d4
    7150:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    7154:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7158:	0e 1c 
    715a:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    715e:	10 1c 
    7160:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    7164:	12 1c 
    7166:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    716a:	14 1c 

0000716c <.LBB52>:
    716c:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    7170:	07 20       	jnz	$+16     	;abs 0x7180

00007172 <.Loc.516.1>:
    7172:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007176 <.Loc.517.1>:
    7176:	4e 43       	clr.b	r14		;
    7178:	5d 43       	mov.b	#1,	r13	;r3 As==01
    717a:	4c 43       	clr.b	r12		;
    717c:	b0 12 d8 73 	call	#29656		;#0x73d8

00007180 <.L216>:
    7180:	b0 12 3a 6f 	call	#28474		;#0x6f3a

00007184 <.Loc.447.1>:
    7184:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7186:	b0 12 3c 74 	call	#29756		;#0x743c

0000718a <.Loc.448.1>:
    718a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    718c:	b0 12 90 75 	call	#30096		;#0x7590

00007190 <.Loc.450.1>:
    7190:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007194 <.LCFI66>:
    7194:	0a 17       	popm	#1,	r10	;16-bit words

00007196 <.LCFI67>:
    7196:	30 41       	ret			

00007198 <clear_pdc_status>:
    7198:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    719c:	07 20       	jnz	$+16     	;abs 0x71ac

0000719e <.Loc.516.1>:
    719e:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000071a2 <.Loc.517.1>:
    71a2:	4e 43       	clr.b	r14		;
    71a4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    71a6:	4c 43       	clr.b	r12		;

000071a8 <.LVL242>:
    71a8:	b0 12 d8 73 	call	#29656		;#0x73d8

000071ac <.L217>:
    71ac:	30 41       	ret			

000071ae <__priority_init>:
    71ae:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

000071b2 <.Loc.83.1>:
    71b2:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

000071b6 <.Loc.83.1>:
    71b6:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

000071ba <.Loc.83.1>:
    71ba:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

000071be <.Loc.83.1>:
    71be:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

000071c2 <.Loc.83.1>:
    71c2:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

000071c6 <.Loc.83.1>:
    71c6:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

000071ca <.Loc.83.1>:
    71ca:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

000071ce <.Loc.83.1>:
    71ce:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

000071d2 <.Loc.88.1>:
    71d2:	30 41       	ret			

000071d4 <__priority_insert>:
    71d4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000071d8 <.Loc.93.1>:
    71d8:	0e 4c       	mov	r12,	r14	;
    71da:	5e 09       	rram	#3,	r14	;

000071dc <.Loc.99.1>:
    71dc:	7e f0 07 00 	and.b	#7,	r14	;

000071e0 <.Loc.99.1>:
    71e0:	dd de 78 4a 	bis.b	19064(r14),8(r13)	;0x04a78
    71e4:	08 00 

000071e6 <.Loc.100.1>:
    71e6:	0d 5e       	add	r14,	r13	;

000071e8 <.LVL12>:
    71e8:	7c f0 07 00 	and.b	#7,	r12	;

000071ec <.LVL13>:
    71ec:	dd dc 78 4a 	bis.b	19064(r12),0(r13)	;0x04a78
    71f0:	00 00 

000071f2 <.Loc.101.1>:
    71f2:	30 41       	ret			

000071f4 <__priority_remove>:
    71f4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000071f8 <.Loc.106.1>:
    71f8:	0e 4c       	mov	r12,	r14	;
    71fa:	5e 09       	rram	#3,	r14	;

000071fc <.Loc.112.1>:
    71fc:	7e f0 07 00 	and.b	#7,	r14	;
    7200:	0f 4d       	mov	r13,	r15	;
    7202:	0f 5e       	add	r14,	r15	;

00007204 <.Loc.112.1>:
    7204:	7c f0 07 00 	and.b	#7,	r12	;

00007208 <.LVL16>:
    7208:	df cc 78 4a 	bic.b	19064(r12),0(r15)	;0x04a78
    720c:	00 00 

0000720e <.Loc.114.1>:
    720e:	6c 4f       	mov.b	@r15,	r12	;

00007210 <.Loc.114.1>:
    7210:	0c 93       	cmp	#0,	r12	;r3 As==00
    7212:	03 20       	jnz	$+8      	;abs 0x721a

00007214 <.Loc.115.1>:
    7214:	dd ce 78 4a 	bic.b	19064(r14),8(r13)	;0x04a78
    7218:	08 00 

0000721a <.L4>:
    721a:	30 41       	ret			

0000721c <__priority_highest>:
    721c:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00007220 <.LVL18>:
    7220:	5d 4d 78 49 	mov.b	18808(r13),r13	;0x04978

00007224 <.LVL19>:
    7224:	0c 5d       	add	r13,	r12	;

00007226 <.LVL20>:
    7226:	6e 4c       	mov.b	@r12,	r14	;

00007228 <.Loc.127.1>:
    7228:	0c 4d       	mov	r13,	r12	;
    722a:	5c 0a       	rlam	#3,	r12	;

0000722c <.Loc.128.1>:
    722c:	5c de 78 49 	bis.b	18808(r14),r12	;0x04978
    7230:	30 41       	ret			

00007232 <stop_timer>:
    7232:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00007236 <.Loc.158.1>:
    7236:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000723a <.Loc.159.1>:
    723a:	30 41       	ret			

0000723c <timerA2_init>:
    723c:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7240:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7244:	30 41       	ret			

00007246 <set_timer_wkup>:
    7246:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000724a <.Loc.172.1>:
    724a:	82 4c 52 03 	mov	r12,	&0x0352	;

0000724e <.Loc.173.1>:
    724e:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    7252:	42 03 

00007254 <.Loc.174.1>:
    7254:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    7258:	40 03 

0000725a <.Loc.175.1>:
    725a:	30 41       	ret			

0000725c <set_timer_xpr>:
    725c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00007260 <.Loc.179.1>:
    7260:	82 4c 12 04 	mov	r12,	&0x0412	;

00007264 <.Loc.180.1>:
    7264:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    7268:	02 04 

0000726a <.Loc.181.1>:
    726a:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    726e:	00 04 

00007270 <.Loc.183.1>:
    7270:	30 41       	ret			

00007272 <stop_timer_xpr>:
    7272:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7276:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    727a:	30 41       	ret			

0000727c <set_timer_pdc>:
    727c:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007280 <.Loc.195.1>:
    7280:	82 4c 92 03 	mov	r12,	&0x0392	;

00007284 <.Loc.196.1>:
    7284:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7288:	82 03 

0000728a <.Loc.197.1>:
    728a:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    728e:	80 03 

00007290 <.Loc.198.1>:
    7290:	30 41       	ret			

00007292 <__setup_rtc>:
    7292:	30 41       	ret			

00007294 <__setup_clock>:
    7294:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    7298:	61 01 

0000729a <.Loc.246.1>:
    729a:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    729e:	64 01 

000072a0 <.Loc.247.1>:
    72a0:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

000072a4 <.Loc.248.1>:
    72a4:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

000072a8 <.Loc.250.1>:
    72a8:	30 41       	ret			

000072aa <__get_rtc_time>:
    72aa:	4c 43       	clr.b	r12		;
    72ac:	4d 43       	clr.b	r13		;
    72ae:	30 41       	ret			

000072b0 <__get_time_init>:
    72b0:	82 43 b8 56 	mov	#0,	&0x56b8	;r3 As==00
    72b4:	82 43 ba 56 	mov	#0,	&0x56ba	;r3 As==00

000072b8 <.Loc.330.1>:
    72b8:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

000072bc <.Loc.332.1>:
    72bc:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    72c0:	40 04 

000072c2 <.Loc.334.1>:
    72c2:	03 43       	nop			
    72c4:	32 d2       	eint			
    72c6:	03 43       	nop			

000072c8 <.Loc.335.1>:
    72c8:	30 41       	ret			

000072ca <__get_time_stop>:
    72ca:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

000072ce <.Loc.343.1>:
    72ce:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

000072d2 <.Loc.344.1>:
    72d2:	30 41       	ret			

000072d4 <__get_time>:
    72d4:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    72d8:	40 04 

000072da <.Loc.356.1>:
    72da:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

000072de <.Loc.358.1>:
    72de:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    72e2:	40 04 

000072e4 <.Loc.362.1>:
    72e4:	0d 43       	clr	r13		;

000072e6 <.LVL6>:
    72e6:	0e 4c       	mov	r12,	r14	;
    72e8:	0f 4d       	mov	r13,	r15	;
    72ea:	0e 5e       	rla	r14		;
    72ec:	0f 6f       	rlc	r15		;
    72ee:	0e 5e       	rla	r14		;
    72f0:	0f 6f       	rlc	r15		;
    72f2:	0c 5e       	add	r14,	r12	;

000072f4 <.LVL7>:
    72f4:	0d 6f       	addc	r15,	r13	;
    72f6:	0c 5c       	rla	r12		;
    72f8:	0d 6d       	rlc	r13		;

000072fa <.Loc.363.1>:
    72fa:	1c 52 b8 56 	add	&0x56b8,r12	;0x56b8
    72fe:	1d 62 ba 56 	addc	&0x56ba,r13	;0x56ba
    7302:	30 41       	ret			

00007304 <TIMER3_A1_ISR>:
    7304:	b2 50 aa 00 	add	#170,	&0x56b8	;#0x00aa
    7308:	b8 56 
    730a:	b2 60 0a 00 	addc	#10,	&0x56ba	;#0x000a
    730e:	ba 56 

00007310 <.Loc.380.1>:
    7310:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00007314 <.Loc.381.1>:
    7314:	00 13       	reti			

00007316 <_pers_timer_init>:
    7316:	3c 40 bc 56 	mov	#22204,	r12	;#0x56bc
    731a:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000731e <.Loc.34.1>:
    731e:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00007322 <.Loc.34.1>:
    7322:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00007326 <.Loc.34.1>:
    7326:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000732a <.Loc.38.1>:
    732a:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000732e <.Loc.38.1>:
    732e:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00007332 <.Loc.38.1>:
    7332:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00007336 <.Loc.42.1>:
    7336:	30 41       	ret			

00007338 <_pers_timer_update_data>:
    7338:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000733c <.Loc.50.1>:
    733c:	1d 93       	cmp	#1,	r13	;r3 As==01
    733e:	1b 24       	jz	$+56     	;abs 0x7376
    7340:	2d 93       	cmp	#2,	r13	;r3 As==10
    7342:	0e 24       	jz	$+30     	;abs 0x7360
    7344:	0d 93       	cmp	#0,	r13	;r3 As==00
    7346:	01 24       	jz	$+4      	;abs 0x734a

00007348 <.Loc.69.1>:
    7348:	30 41       	ret			

0000734a <.L7>:
    734a:	0d 4c       	mov	r12,	r13	;

0000734c <.LVL9>:
    734c:	5d 06       	rlam	#2,	r13	;
    734e:	0c 5d       	add	r13,	r12	;

00007350 <.LVL10>:
    7350:	5c 02       	rlam	#1,	r12	;
    7352:	8c 4e 24 57 	mov	r14,	22308(r12); 0x5724
    7356:	8c 4f 26 57 	mov	r15,	22310(r12); 0x5726

0000735a <.Loc.54.1>:
    735a:	9c 43 28 57 	mov	#1,	22312(r12);r3 As==01, 0x5728

0000735e <.Loc.55.1>:
    735e:	30 41       	ret			

00007360 <.L5>:
    7360:	0d 4c       	mov	r12,	r13	;

00007362 <.LVL12>:
    7362:	5d 06       	rlam	#2,	r13	;
    7364:	0c 5d       	add	r13,	r12	;
    7366:	5c 02       	rlam	#1,	r12	;
    7368:	8c 4e 42 57 	mov	r14,	22338(r12); 0x5742
    736c:	8c 4f 44 57 	mov	r15,	22340(r12); 0x5744

00007370 <.Loc.58.1>:
    7370:	9c 43 46 57 	mov	#1,	22342(r12);r3 As==01, 0x5746

00007374 <.Loc.59.1>:
    7374:	30 41       	ret			

00007376 <.L4>:
    7376:	0d 4c       	mov	r12,	r13	;

00007378 <.LVL14>:
    7378:	5d 06       	rlam	#2,	r13	;
    737a:	0c 5d       	add	r13,	r12	;
    737c:	5c 02       	rlam	#1,	r12	;
    737e:	8c 4e 60 57 	mov	r14,	22368(r12); 0x5760
    7382:	8c 4f 62 57 	mov	r15,	22370(r12); 0x5762

00007386 <.Loc.62.1>:
    7386:	9c 43 64 57 	mov	#1,	22372(r12);r3 As==01, 0x5764

0000738a <.Loc.63.1>:
    738a:	30 41       	ret			

0000738c <_pers_timer_update_thread_id>:
    738c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7390:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007394 <.Loc.73.1>:
    7394:	1d 93       	cmp	#1,	r13	;r3 As==01
    7396:	17 24       	jz	$+48     	;abs 0x73c6
    7398:	2d 93       	cmp	#2,	r13	;r3 As==10
    739a:	0c 24       	jz	$+26     	;abs 0x73b4
    739c:	0d 93       	cmp	#0,	r13	;r3 As==00
    739e:	01 24       	jz	$+4      	;abs 0x73a2

000073a0 <.Loc.91.1>:
    73a0:	30 41       	ret			

000073a2 <.L12>:
    73a2:	0d 4c       	mov	r12,	r13	;

000073a4 <.LVL16>:
    73a4:	5d 06       	rlam	#2,	r13	;
    73a6:	0c 5d       	add	r13,	r12	;

000073a8 <.LVL17>:
    73a8:	5c 02       	rlam	#1,	r12	;
    73aa:	cc 4e 22 57 	mov.b	r14,	22306(r12); 0x5722

000073ae <.Loc.77.1>:
    73ae:	9c 43 28 57 	mov	#1,	22312(r12);r3 As==01, 0x5728

000073b2 <.Loc.78.1>:
    73b2:	30 41       	ret			

000073b4 <.L10>:
    73b4:	0d 4c       	mov	r12,	r13	;

000073b6 <.LVL19>:
    73b6:	5d 06       	rlam	#2,	r13	;
    73b8:	0c 5d       	add	r13,	r12	;
    73ba:	5c 02       	rlam	#1,	r12	;
    73bc:	cc 4e 40 57 	mov.b	r14,	22336(r12); 0x5740

000073c0 <.Loc.81.1>:
    73c0:	9c 43 46 57 	mov	#1,	22342(r12);r3 As==01, 0x5746

000073c4 <.Loc.82.1>:
    73c4:	30 41       	ret			

000073c6 <.L9>:
    73c6:	0d 4c       	mov	r12,	r13	;

000073c8 <.LVL21>:
    73c8:	5d 06       	rlam	#2,	r13	;
    73ca:	0c 5d       	add	r13,	r12	;
    73cc:	5c 02       	rlam	#1,	r12	;
    73ce:	cc 4e 5e 57 	mov.b	r14,	22366(r12); 0x575e

000073d2 <.Loc.85.1>:
    73d2:	9c 43 64 57 	mov	#1,	22372(r12);r3 As==01, 0x5764

000073d6 <.Loc.86.1>:
    73d6:	30 41       	ret			

000073d8 <_pers_timer_update_status>:
    73d8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000073dc <.Loc.95.1>:
    73dc:	1d 93       	cmp	#1,	r13	;r3 As==01
    73de:	17 24       	jz	$+48     	;abs 0x740e
    73e0:	2d 93       	cmp	#2,	r13	;r3 As==10
    73e2:	0c 24       	jz	$+26     	;abs 0x73fc
    73e4:	0d 93       	cmp	#0,	r13	;r3 As==00
    73e6:	01 24       	jz	$+4      	;abs 0x73ea

000073e8 <.Loc.113.1>:
    73e8:	30 41       	ret			

000073ea <.L17>:
    73ea:	0d 4c       	mov	r12,	r13	;

000073ec <.LVL23>:
    73ec:	5d 06       	rlam	#2,	r13	;
    73ee:	0c 5d       	add	r13,	r12	;

000073f0 <.LVL24>:
    73f0:	5c 02       	rlam	#1,	r12	;
    73f2:	8c 4e 20 57 	mov	r14,	22304(r12); 0x5720

000073f6 <.Loc.99.1>:
    73f6:	9c 43 28 57 	mov	#1,	22312(r12);r3 As==01, 0x5728

000073fa <.Loc.100.1>:
    73fa:	30 41       	ret			

000073fc <.L15>:
    73fc:	0d 4c       	mov	r12,	r13	;

000073fe <.LVL26>:
    73fe:	5d 06       	rlam	#2,	r13	;
    7400:	0c 5d       	add	r13,	r12	;
    7402:	5c 02       	rlam	#1,	r12	;
    7404:	8c 4e 3e 57 	mov	r14,	22334(r12); 0x573e

00007408 <.Loc.103.1>:
    7408:	9c 43 46 57 	mov	#1,	22342(r12);r3 As==01, 0x5746

0000740c <.Loc.104.1>:
    740c:	30 41       	ret			

0000740e <.L14>:
    740e:	0d 4c       	mov	r12,	r13	;

00007410 <.LVL28>:
    7410:	5d 06       	rlam	#2,	r13	;
    7412:	0c 5d       	add	r13,	r12	;
    7414:	5c 02       	rlam	#1,	r12	;
    7416:	8c 4e 5c 57 	mov	r14,	22364(r12); 0x575c

0000741a <.Loc.107.1>:
    741a:	9c 43 64 57 	mov	#1,	22372(r12);r3 As==01, 0x5764

0000741e <.Loc.108.1>:
    741e:	30 41       	ret			

00007420 <_pers_timer_update_nxt_thread>:
    7420:	0e 4c       	mov	r12,	r14	;
    7422:	5e 0a       	rlam	#3,	r14	;
    7424:	ce 4d 68 57 	mov.b	r13,	22376(r14); 0x5768

00007428 <.Loc.118.1>:
    7428:	9e 43 6c 57 	mov	#1,	22380(r14);r3 As==01, 0x576c

0000742c <.Loc.119.1>:
    742c:	30 41       	ret			

0000742e <_pers_timer_update_nxt_time>:
    742e:	0e 4c       	mov	r12,	r14	;
    7430:	5e 0a       	rlam	#3,	r14	;
    7432:	8e 4d 6a 57 	mov	r13,	22378(r14); 0x576a

00007436 <.Loc.124.1>:
    7436:	9e 43 6c 57 	mov	#1,	22380(r14);r3 As==01, 0x576c

0000743a <.Loc.125.1>:
    743a:	30 41       	ret			

0000743c <_pers_timer_update_lock>:
    743c:	1c 93       	cmp	#1,	r12	;r3 As==01
    743e:	0b 24       	jz	$+24     	;abs 0x7456
    7440:	2c 93       	cmp	#2,	r12	;r3 As==10
    7442:	06 24       	jz	$+14     	;abs 0x7450
    7444:	0c 93       	cmp	#0,	r12	;r3 As==00
    7446:	01 24       	jz	$+4      	;abs 0x744a

00007448 <.Loc.145.1>:
    7448:	30 41       	ret			

0000744a <.L24>:
    744a:	92 43 84 57 	mov	#1,	&0x5784	;r3 As==01

0000744e <.Loc.133.1>:
    744e:	30 41       	ret			

00007450 <.L22>:
    7450:	92 43 86 57 	mov	#1,	&0x5786	;r3 As==01

00007454 <.Loc.136.1>:
    7454:	30 41       	ret			

00007456 <.L21>:
    7456:	92 43 88 57 	mov	#1,	&0x5788	;r3 As==01

0000745a <.Loc.139.1>:
    745a:	30 41       	ret			

0000745c <_commit_timer_buffers>:
    745c:	3d 40 bc 56 	mov	#22204,	r13	;#0x56bc
    7460:	1c 93       	cmp	#1,	r12	;r3 As==01
    7462:	18 24       	jz	$+50     	;abs 0x7494
    7464:	2c 93       	cmp	#2,	r12	;r3 As==10
    7466:	40 24       	jz	$+130    	;abs 0x74e8
    7468:	0c 93       	cmp	#0,	r12	;r3 As==00
    746a:	26 24       	jz	$+78     	;abs 0x74b8

0000746c <.L28>:
    746c:	0e 4c       	mov	r12,	r14	;
    746e:	5e 0a       	rlam	#3,	r14	;
    7470:	9e 93 6c 57 	cmp	#1,	22380(r14);r3 As==01, 0x576c
    7474:	01 24       	jz	$+4      	;abs 0x7478

00007476 <.Loc.201.1>:
    7476:	30 41       	ret			

00007478 <.L40>:
    7478:	0c 4e       	mov	r14,	r12	;

0000747a <.LVL33>:
    747a:	0c 5d       	add	r13,	r12	;
    747c:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    7480:	46 00 
    7482:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    7486:	48 00 
    7488:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    748c:	4a 00 

0000748e <.Loc.197.1>:
    748e:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00007492 <.Loc.191.1>:
    7492:	30 41       	ret			

00007494 <.L26>:
    7494:	92 93 64 57 	cmp	#1,	&0x5764	;r3 As==01
    7498:	e9 23       	jnz	$-44     	;abs 0x746c

0000749a <.Loc.182.1>:
    749a:	92 42 5c 57 	mov	&0x575c,&0x56f8	;0x575c
    749e:	f8 56 
    74a0:	92 42 5e 57 	mov	&0x575e,&0x56fa	;0x575e
    74a4:	fa 56 
    74a6:	92 42 60 57 	mov	&0x5760,&0x56fc	;0x5760
    74aa:	fc 56 
    74ac:	92 42 62 57 	mov	&0x5762,&0x56fe	;0x5762
    74b0:	fe 56 

000074b2 <.Loc.183.1>:
    74b2:	82 43 00 57 	mov	#0,	&0x5700	;r3 As==00

000074b6 <.Loc.177.1>:
    74b6:	da 3f       	jmp	$-74     	;abs 0x746c

000074b8 <.L39>:
    74b8:	92 93 28 57 	cmp	#1,	&0x5728	;r3 As==01
    74bc:	5a 24       	jz	$+182    	;abs 0x7572

000074be <.L29>:
    74be:	92 93 32 57 	cmp	#1,	&0x5732	;r3 As==01
    74c2:	48 24       	jz	$+146    	;abs 0x7554

000074c4 <.L30>:
    74c4:	92 93 3c 57 	cmp	#1,	&0x573c	;r3 As==01
    74c8:	d1 23       	jnz	$-92     	;abs 0x746c

000074ca <.Loc.160.1>:
    74ca:	92 42 34 57 	mov	&0x5734,&0x56d0	;0x5734
    74ce:	d0 56 
    74d0:	92 42 36 57 	mov	&0x5736,&0x56d2	;0x5736
    74d4:	d2 56 
    74d6:	92 42 38 57 	mov	&0x5738,&0x56d4	;0x5738
    74da:	d4 56 
    74dc:	92 42 3a 57 	mov	&0x573a,&0x56d6	;0x573a
    74e0:	d6 56 

000074e2 <.Loc.161.1>:
    74e2:	82 43 d8 56 	mov	#0,	&0x56d8	;r3 As==00

000074e6 <.Loc.155.1>:
    74e6:	c2 3f       	jmp	$-122    	;abs 0x746c

000074e8 <.L27>:
    74e8:	92 93 46 57 	cmp	#1,	&0x5746	;r3 As==01
    74ec:	24 24       	jz	$+74     	;abs 0x7536

000074ee <.L32>:
    74ee:	92 93 50 57 	cmp	#1,	&0x5750	;r3 As==01
    74f2:	12 24       	jz	$+38     	;abs 0x7518

000074f4 <.L33>:
    74f4:	92 93 5a 57 	cmp	#1,	&0x575a	;r3 As==01
    74f8:	b9 23       	jnz	$-140    	;abs 0x746c

000074fa <.Loc.171.1>:
    74fa:	92 42 52 57 	mov	&0x5752,&0x56ee	;0x5752
    74fe:	ee 56 
    7500:	92 42 54 57 	mov	&0x5754,&0x56f0	;0x5754
    7504:	f0 56 
    7506:	92 42 56 57 	mov	&0x5756,&0x56f2	;0x5756
    750a:	f2 56 
    750c:	92 42 58 57 	mov	&0x5758,&0x56f4	;0x5758
    7510:	f4 56 

00007512 <.Loc.172.1>:
    7512:	82 43 f6 56 	mov	#0,	&0x56f6	;r3 As==00

00007516 <.Loc.166.1>:
    7516:	aa 3f       	jmp	$-170    	;abs 0x746c

00007518 <.L44>:
    7518:	92 42 48 57 	mov	&0x5748,&0x56e4	;0x5748
    751c:	e4 56 
    751e:	92 42 4a 57 	mov	&0x574a,&0x56e6	;0x574a
    7522:	e6 56 
    7524:	92 42 4c 57 	mov	&0x574c,&0x56e8	;0x574c
    7528:	e8 56 
    752a:	92 42 4e 57 	mov	&0x574e,&0x56ea	;0x574e
    752e:	ea 56 

00007530 <.Loc.172.1>:
    7530:	82 43 ec 56 	mov	#0,	&0x56ec	;r3 As==00
    7534:	df 3f       	jmp	$-64     	;abs 0x74f4

00007536 <.L43>:
    7536:	92 42 3e 57 	mov	&0x573e,&0x56da	;0x573e
    753a:	da 56 
    753c:	92 42 40 57 	mov	&0x5740,&0x56dc	;0x5740
    7540:	dc 56 
    7542:	92 42 42 57 	mov	&0x5742,&0x56de	;0x5742
    7546:	de 56 
    7548:	92 42 44 57 	mov	&0x5744,&0x56e0	;0x5744
    754c:	e0 56 

0000754e <.Loc.172.1>:
    754e:	82 43 e2 56 	mov	#0,	&0x56e2	;r3 As==00
    7552:	cd 3f       	jmp	$-100    	;abs 0x74ee

00007554 <.L42>:
    7554:	92 42 2a 57 	mov	&0x572a,&0x56c6	;0x572a
    7558:	c6 56 
    755a:	92 42 2c 57 	mov	&0x572c,&0x56c8	;0x572c
    755e:	c8 56 
    7560:	92 42 2e 57 	mov	&0x572e,&0x56ca	;0x572e
    7564:	ca 56 
    7566:	92 42 30 57 	mov	&0x5730,&0x56cc	;0x5730
    756a:	cc 56 

0000756c <.Loc.161.1>:
    756c:	82 43 ce 56 	mov	#0,	&0x56ce	;r3 As==00
    7570:	a9 3f       	jmp	$-172    	;abs 0x74c4

00007572 <.L41>:
    7572:	92 42 20 57 	mov	&0x5720,&0x56bc	;0x5720
    7576:	bc 56 
    7578:	92 42 22 57 	mov	&0x5722,&0x56be	;0x5722
    757c:	be 56 
    757e:	92 42 24 57 	mov	&0x5724,&0x56c0	;0x5724
    7582:	c0 56 
    7584:	92 42 26 57 	mov	&0x5726,&0x56c2	;0x5726
    7588:	c2 56 

0000758a <.Loc.161.1>:
    758a:	82 43 c4 56 	mov	#0,	&0x56c4	;r3 As==00
    758e:	97 3f       	jmp	$-208    	;abs 0x74be

00007590 <_pers_timer_commit>:
    7590:	1c 93       	cmp	#1,	r12	;r3 As==01
    7592:	17 24       	jz	$+48     	;abs 0x75c2
    7594:	2c 93       	cmp	#2,	r12	;r3 As==10
    7596:	0c 24       	jz	$+26     	;abs 0x75b0
    7598:	0c 93       	cmp	#0,	r12	;r3 As==00
    759a:	01 24       	jz	$+4      	;abs 0x759e

0000759c <.L45>:
    759c:	30 41       	ret			

0000759e <.L49>:
    759e:	1d 42 84 57 	mov	&0x5784,r13	;0x5784

000075a2 <.Loc.207.1>:
    75a2:	1d 93       	cmp	#1,	r13	;r3 As==01
    75a4:	fb 23       	jnz	$-8      	;abs 0x759c

000075a6 <.Loc.209.1>:
    75a6:	b0 12 5c 74 	call	#29788		;#0x745c

000075aa <.LVL49>:
    75aa:	a2 43 84 57 	mov	#2,	&0x5784	;r3 As==10

000075ae <.Loc.230.1>:
    75ae:	30 41       	ret			

000075b0 <.L47>:
    75b0:	1d 42 86 57 	mov	&0x5786,r13	;0x5786

000075b4 <.Loc.214.1>:
    75b4:	1d 93       	cmp	#1,	r13	;r3 As==01
    75b6:	f2 23       	jnz	$-26     	;abs 0x759c

000075b8 <.Loc.216.1>:
    75b8:	b0 12 5c 74 	call	#29788		;#0x745c

000075bc <.LVL51>:
    75bc:	a2 43 86 57 	mov	#2,	&0x5786	;r3 As==10

000075c0 <.Loc.230.1>:
    75c0:	30 41       	ret			

000075c2 <.L46>:
    75c2:	1d 42 88 57 	mov	&0x5788,r13	;0x5788

000075c6 <.Loc.220.1>:
    75c6:	1d 93       	cmp	#1,	r13	;r3 As==01
    75c8:	e9 23       	jnz	$-44     	;abs 0x759c

000075ca <.Loc.222.1>:
    75ca:	b0 12 5c 74 	call	#29788		;#0x745c

000075ce <.LVL53>:
    75ce:	a2 43 88 57 	mov	#2,	&0x5788	;r3 As==10

000075d2 <.Loc.230.1>:
    75d2:	30 41       	ret			

000075d4 <_pers_timer_get>:
    75d4:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

000075d8 <.Loc.233.1>:
    75d8:	1e 93       	cmp	#1,	r14	;r3 As==01
    75da:	17 24       	jz	$+48     	;abs 0x760a
    75dc:	2e 93       	cmp	#2,	r14	;r3 As==10
    75de:	2a 24       	jz	$+86     	;abs 0x7634

000075e0 <.Loc.242.1>:
    75e0:	0e 4d       	mov	r13,	r14	;

000075e2 <.LVL55>:
    75e2:	5e 06       	rlam	#2,	r14	;
    75e4:	0d 5e       	add	r14,	r13	;

000075e6 <.LVL56>:
    75e6:	5d 02       	rlam	#1,	r13	;
    75e8:	3d 50 bc 56 	add	#22204,	r13	;#0x56bc
    75ec:	0e 4d       	mov	r13,	r14	;
    75ee:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    75f2:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    75f6:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    75fa:	04 00 
    75fc:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7600:	06 00 
    7602:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7606:	08 00 

00007608 <.Loc.245.1>:
    7608:	30 41       	ret			

0000760a <.L51>:
    760a:	0e 4d       	mov	r13,	r14	;

0000760c <.LVL58>:
    760c:	5e 06       	rlam	#2,	r14	;
    760e:	0d 5e       	add	r14,	r13	;
    7610:	5d 02       	rlam	#1,	r13	;
    7612:	3d 50 f8 56 	add	#22264,	r13	;#0x56f8

00007616 <.Loc.242.1>:
    7616:	0e 4d       	mov	r13,	r14	;
    7618:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    761c:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7620:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7624:	04 00 
    7626:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    762a:	06 00 
    762c:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7630:	08 00 

00007632 <.Loc.245.1>:
    7632:	30 41       	ret			

00007634 <.L55>:
    7634:	0e 4d       	mov	r13,	r14	;

00007636 <.LVL60>:
    7636:	5e 06       	rlam	#2,	r14	;
    7638:	0d 5e       	add	r14,	r13	;
    763a:	5d 02       	rlam	#1,	r13	;
    763c:	3d 50 da 56 	add	#22234,	r13	;#0x56da

00007640 <.Loc.242.1>:
    7640:	0e 4d       	mov	r13,	r14	;
    7642:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7646:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    764a:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    764e:	04 00 
    7650:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7654:	06 00 
    7656:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    765a:	08 00 

0000765c <.Loc.245.1>:
    765c:	30 41       	ret			

0000765e <_pers_timer_get_data>:
    765e:	4e 4c       	mov.b	r12,	r14	;

00007660 <.Loc.249.1>:
    7660:	1d 93       	cmp	#1,	r13	;r3 As==01
    7662:	14 24       	jz	$+42     	;abs 0x768c
    7664:	2d 93       	cmp	#2,	r13	;r3 As==10
    7666:	0b 24       	jz	$+24     	;abs 0x767e
    7668:	4c 43       	clr.b	r12		;

0000766a <.LVL62>:
    766a:	0d 93       	cmp	#0,	r13	;r3 As==00
    766c:	01 24       	jz	$+4      	;abs 0x7670

0000766e <.Loc.262.1>:
    766e:	30 41       	ret			

00007670 <.L61>:
    7670:	0c 4e       	mov	r14,	r12	;
    7672:	5c 06       	rlam	#2,	r12	;
    7674:	0c 5e       	add	r14,	r12	;
    7676:	5c 02       	rlam	#1,	r12	;
    7678:	1c 4c c0 56 	mov	22208(r12),r12	;0x056c0

0000767c <.Loc.262.1>:
    767c:	30 41       	ret			

0000767e <.L58>:
    767e:	0c 4e       	mov	r14,	r12	;

00007680 <.LVL64>:
    7680:	5c 06       	rlam	#2,	r12	;
    7682:	0c 5e       	add	r14,	r12	;
    7684:	5c 02       	rlam	#1,	r12	;
    7686:	1c 4c de 56 	mov	22238(r12),r12	;0x056de

0000768a <.Loc.262.1>:
    768a:	30 41       	ret			

0000768c <.L57>:
    768c:	0c 4e       	mov	r14,	r12	;

0000768e <.LVL66>:
    768e:	5c 06       	rlam	#2,	r12	;
    7690:	0c 5e       	add	r14,	r12	;
    7692:	5c 02       	rlam	#1,	r12	;
    7694:	1c 4c fc 56 	mov	22268(r12),r12	;0x056fc

00007698 <.Loc.262.1>:
    7698:	30 41       	ret			

0000769a <_pers_timer_get_thread_id>:
    769a:	4e 4c       	mov.b	r12,	r14	;

0000769c <.Loc.266.1>:
    769c:	1d 93       	cmp	#1,	r13	;r3 As==01
    769e:	14 24       	jz	$+42     	;abs 0x76c8
    76a0:	2d 93       	cmp	#2,	r13	;r3 As==10
    76a2:	0b 24       	jz	$+24     	;abs 0x76ba
    76a4:	4c 43       	clr.b	r12		;

000076a6 <.LVL68>:
    76a6:	0d 93       	cmp	#0,	r13	;r3 As==00
    76a8:	01 24       	jz	$+4      	;abs 0x76ac

000076aa <.Loc.279.1>:
    76aa:	30 41       	ret			

000076ac <.L67>:
    76ac:	0c 4e       	mov	r14,	r12	;
    76ae:	5c 06       	rlam	#2,	r12	;
    76b0:	0c 5e       	add	r14,	r12	;
    76b2:	5c 02       	rlam	#1,	r12	;
    76b4:	5c 4c be 56 	mov.b	22206(r12),r12	;0x056be

000076b8 <.Loc.279.1>:
    76b8:	30 41       	ret			

000076ba <.L64>:
    76ba:	0c 4e       	mov	r14,	r12	;

000076bc <.LVL70>:
    76bc:	5c 06       	rlam	#2,	r12	;
    76be:	0c 5e       	add	r14,	r12	;
    76c0:	5c 02       	rlam	#1,	r12	;
    76c2:	5c 4c dc 56 	mov.b	22236(r12),r12	;0x056dc

000076c6 <.Loc.279.1>:
    76c6:	30 41       	ret			

000076c8 <.L63>:
    76c8:	0c 4e       	mov	r14,	r12	;

000076ca <.LVL72>:
    76ca:	5c 06       	rlam	#2,	r12	;
    76cc:	0c 5e       	add	r14,	r12	;
    76ce:	5c 02       	rlam	#1,	r12	;
    76d0:	5c 4c fa 56 	mov.b	22266(r12),r12	;0x056fa

000076d4 <.Loc.279.1>:
    76d4:	30 41       	ret			

000076d6 <_pers_timer_get_status>:
    76d6:	4e 4c       	mov.b	r12,	r14	;

000076d8 <.Loc.283.1>:
    76d8:	1d 93       	cmp	#1,	r13	;r3 As==01
    76da:	14 24       	jz	$+42     	;abs 0x7704
    76dc:	2d 93       	cmp	#2,	r13	;r3 As==10
    76de:	0b 24       	jz	$+24     	;abs 0x76f6
    76e0:	5c 43       	mov.b	#1,	r12	;r3 As==01

000076e2 <.LVL74>:
    76e2:	0d 93       	cmp	#0,	r13	;r3 As==00
    76e4:	01 24       	jz	$+4      	;abs 0x76e8

000076e6 <.Loc.294.1>:
    76e6:	30 41       	ret			

000076e8 <.L73>:
    76e8:	0c 4e       	mov	r14,	r12	;
    76ea:	5c 06       	rlam	#2,	r12	;
    76ec:	0c 5e       	add	r14,	r12	;
    76ee:	5c 02       	rlam	#1,	r12	;
    76f0:	1c 4c bc 56 	mov	22204(r12),r12	;0x056bc

000076f4 <.Loc.294.1>:
    76f4:	30 41       	ret			

000076f6 <.L70>:
    76f6:	0c 4e       	mov	r14,	r12	;

000076f8 <.LVL76>:
    76f8:	5c 06       	rlam	#2,	r12	;
    76fa:	0c 5e       	add	r14,	r12	;
    76fc:	5c 02       	rlam	#1,	r12	;
    76fe:	1c 4c da 56 	mov	22234(r12),r12	;0x056da

00007702 <.Loc.294.1>:
    7702:	30 41       	ret			

00007704 <.L69>:
    7704:	0c 4e       	mov	r14,	r12	;

00007706 <.LVL78>:
    7706:	5c 06       	rlam	#2,	r12	;
    7708:	0c 5e       	add	r14,	r12	;
    770a:	5c 02       	rlam	#1,	r12	;
    770c:	1c 4c f8 56 	mov	22264(r12),r12	;0x056f8

00007710 <.Loc.294.1>:
    7710:	30 41       	ret			

00007712 <_pers_timer_get_nxt_thread>:
    7712:	5c 0a       	rlam	#3,	r12	;

00007714 <.LVL80>:
    7714:	5c 4c 04 57 	mov.b	22276(r12),r12	;0x05704
    7718:	30 41       	ret			

0000771a <_pers_timer_get_nxt_time>:
    771a:	5c 0a       	rlam	#3,	r12	;

0000771c <.LVL82>:
    771c:	1c 4c 06 57 	mov	22278(r12),r12	;0x05706
    7720:	30 41       	ret			

00007722 <__mulhi2>:
    7722:	02 12       	push	r2		;
    7724:	32 c2       	dint			
    7726:	03 43       	nop			
    7728:	82 4c c0 04 	mov	r12,	&0x04c0	;
    772c:	82 4d c8 04 	mov	r13,	&0x04c8	;

00007730 <L0^A>:
    7730:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    7734:	00 13       	reti			

00007736 <_exit>:
    7736:	ff 3f       	jmp	$+0      	;abs 0x7736

00007738 <memset>:
    7738:	0e 5c       	add	r12,	r14	;

0000773a <L0^A>:
    773a:	0f 4c       	mov	r12,	r15	;

0000773c <.L2>:
    773c:	0f 9e       	cmp	r14,	r15	;
    773e:	01 20       	jnz	$+4      	;abs 0x7742

00007740 <.Loc.104.1>:
    7740:	30 41       	ret			

00007742 <.L3>:
    7742:	1f 53       	inc	r15		;

00007744 <.LVL4>:
    7744:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7748:	f9 3f       	jmp	$-12     	;abs 0x773c
