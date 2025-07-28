
bin/thread_backup_test:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

0000a818 <__crt0_start>:
    a818:	31 40 00 24 	mov	#9216,	r1	;#0x2400

0000a81c <__crt0_init_bss>:
    a81c:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

0000a820 <.Loc.76.1>:
    a820:	0d 43       	clr	r13		;

0000a822 <.Loc.77.1>:
    a822:	3e 40 62 00 	mov	#98,	r14	;#0x0062

0000a826 <.Loc.81.1>:
    a826:	b0 12 9e bd 	call	#-16994	;#0xbd9e

0000a82a <__crt0_call_main>:
    a82a:	0c 43       	clr	r12		;

0000a82c <.Loc.254.1>:
    a82c:	b0 12 94 b3 	call	#-19564	;#0xb394

0000a830 <__crt0_call_exit>:
    a830:	b0 12 9c bd 	call	#-16996	;#0xbd9c

0000a834 <__app_init>:
    a834:	b0 12 c2 a8 	call	#-22334	;#0xa8c2

0000a838 <.Loc.34.1>:
    a838:	b0 12 7c a9 	call	#-22148	;#0xa97c

0000a83c <.Loc.35.1>:
    a83c:	b0 12 32 aa 	call	#-21966	;#0xaa32

0000a840 <.Loc.36.1>:
    a840:	30 41       	ret			

0000a842 <t_init>:
    a842:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

0000a846 <.Loc.36.1>:
    a846:	fc 40 ab ff 	mov.b	#-85,	0(r12)	;#0xffab
    a84a:	00 00 

0000a84c <.Loc.38.1>:
    a84c:	3c 40 56 a8 	mov	#-22442,r12	;#0xa856

0000a850 <.LVL1>:
    a850:	30 41       	ret			

0000a852 <t_end>:
    a852:	4c 43       	clr.b	r12		;

0000a854 <.LVL3>:
    a854:	30 41       	ret			

0000a856 <t_blink_on>:
    a856:	0a 15       	pushm	#1,	r10	;16-bit words

0000a858 <.LCFI0>:
    a858:	0a 4c       	mov	r12,	r10	;

0000a85a <.Loc.43.1>:
    a85a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a85c:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a85e <.LVL5>:
    a85e:	b0 12 f8 bb 	call	#-17416	;#0xbbf8

0000a862 <.Loc.44.1>:
    a862:	9a 53 08 00 	inc	8(r10)		;

0000a866 <.Loc.46.1>:
    a866:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a868:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a86c:	0e 43       	clr	r14		;

0000a86e <.L1^B1>:
    a86e:	1d 83       	dec	r13		;
    a870:	0e 73       	sbc	r14		;
    a872:	fd 23       	jnz	$-4      	;abs 0xa86e
    a874:	0d 93       	cmp	#0,	r13	;r3 As==00
    a876:	fb 23       	jnz	$-8      	;abs 0xa86e
    a878:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a87a <L0^A>:
    a87a:	00 3c       	jmp	$+2      	;abs 0xa87c

0000a87c <L0^A>:
    a87c:	00 3c       	jmp	$+2      	;abs 0xa87e
    a87e:	03 43       	nop			

0000a880 <.Loc.48.1>:
    a880:	3c 40 88 a8 	mov	#-22392,r12	;#0xa888
    a884:	0a 17       	popm	#1,	r10	;16-bit words

0000a886 <.LCFI1>:
    a886:	30 41       	ret			

0000a888 <t_blink_off>:
    a888:	0a 15       	pushm	#1,	r10	;16-bit words

0000a88a <.LCFI2>:
    a88a:	0a 4c       	mov	r12,	r10	;

0000a88c <.Loc.53.1>:
    a88c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a88e:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a890 <.LVL8>:
    a890:	b0 12 12 bc 	call	#-17390	;#0xbc12

0000a894 <.Loc.55.1>:
    a894:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a896:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a89a:	0e 43       	clr	r14		;

0000a89c <.L1^B2>:
    a89c:	1d 83       	dec	r13		;
    a89e:	0e 73       	sbc	r14		;
    a8a0:	fd 23       	jnz	$-4      	;abs 0xa89c
    a8a2:	0d 93       	cmp	#0,	r13	;r3 As==00
    a8a4:	fb 23       	jnz	$-8      	;abs 0xa89c
    a8a6:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a8a8 <L0^A>:
    a8a8:	00 3c       	jmp	$+2      	;abs 0xa8aa

0000a8aa <L0^A>:
    a8aa:	00 3c       	jmp	$+2      	;abs 0xa8ac
    a8ac:	03 43       	nop			

0000a8ae <.Loc.57.1>:
    a8ae:	3c 40 56 a8 	mov	#-22442,r12	;#0xa856

0000a8b2 <.Loc.57.1>:
    a8b2:	ba 90 05 00 	cmp	#5,	8(r10)	;
    a8b6:	08 00 
    a8b8:	02 20       	jnz	$+6      	;abs 0xa8be

0000a8ba <.Loc.59.1>:
    a8ba:	3c 40 52 a8 	mov	#-22446,r12	;#0xa852

0000a8be <.L4>:
    a8be:	0a 17       	popm	#1,	r10	;16-bit words

0000a8c0 <.LCFI3>:
    a8c0:	30 41       	ret			

0000a8c2 <thread1_init>:
    a8c2:	21 83       	decd	r1		;

0000a8c4 <.LCFI4>:
    a8c4:	b1 40 0a 00 	mov	#10,	0(r1)	;#0x000a
    a8c8:	00 00 
    a8ca:	3f 40 2e 45 	mov	#17710,	r15	;#0x452e
    a8ce:	3e 40 24 45 	mov	#17700,	r14	;#0x4524
    a8d2:	3d 40 42 a8 	mov	#-22462,r13	;#0xa842
    a8d6:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    a8da:	b0 12 92 aa 	call	#-21870	;#0xaa92

0000a8de <.Loc.24.1>:
    a8de:	32 c2       	dint			
    a8e0:	03 43       	nop			

0000a8e2 <.Loc.24.1>:
    a8e2:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    a8e6:	b0 12 82 ab 	call	#-21630	;#0xab82
    a8ea:	b0 12 66 ab 	call	#-21658	;#0xab66

0000a8ee <.Loc.24.1>:
    a8ee:	03 43       	nop			
    a8f0:	32 d2       	eint			
    a8f2:	03 43       	nop			

0000a8f4 <.Loc.25.1>:
    a8f4:	21 53       	incd	r1		;

0000a8f6 <.LCFI5>:
    a8f6:	30 41       	ret			

0000a8f8 <__app_reboot>:
    a8f8:	03 43       	nop			

0000a8fa <.Loc.30.1>:
    a8fa:	30 41       	ret			

0000a8fc <t_init>:
    a8fc:	8c 43 e6 03 	mov	#0,	998(r12);r3 As==00, 0x03e6

0000a900 <.Loc.30.1>:
    a900:	fc 40 ab ff 	mov.b	#-85,	0(r12)	;#0xffab
    a904:	00 00 

0000a906 <.Loc.32.1>:
    a906:	3c 40 10 a9 	mov	#-22256,r12	;#0xa910

0000a90a <.LVL1>:
    a90a:	30 41       	ret			

0000a90c <t_end>:
    a90c:	4c 43       	clr.b	r12		;

0000a90e <.LVL3>:
    a90e:	30 41       	ret			

0000a910 <t_blink_on>:
    a910:	0a 15       	pushm	#1,	r10	;16-bit words

0000a912 <.LCFI0>:
    a912:	0a 4c       	mov	r12,	r10	;

0000a914 <.Loc.37.1>:
    a914:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a916:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a918 <.LVL5>:
    a918:	b0 12 f8 bb 	call	#-17416	;#0xbbf8

0000a91c <.Loc.38.1>:
    a91c:	9a 53 e6 03 	inc	998(r10)		;

0000a920 <.Loc.40.1>:
    a920:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a922:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a926:	0e 43       	clr	r14		;

0000a928 <.L1^B1>:
    a928:	1d 83       	dec	r13		;
    a92a:	0e 73       	sbc	r14		;
    a92c:	fd 23       	jnz	$-4      	;abs 0xa928
    a92e:	0d 93       	cmp	#0,	r13	;r3 As==00
    a930:	fb 23       	jnz	$-8      	;abs 0xa928
    a932:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a934 <L0^A>:
    a934:	00 3c       	jmp	$+2      	;abs 0xa936

0000a936 <L0^A>:
    a936:	00 3c       	jmp	$+2      	;abs 0xa938
    a938:	03 43       	nop			

0000a93a <.Loc.42.1>:
    a93a:	3c 40 42 a9 	mov	#-22206,r12	;#0xa942
    a93e:	0a 17       	popm	#1,	r10	;16-bit words

0000a940 <.LCFI1>:
    a940:	30 41       	ret			

0000a942 <t_blink_off>:
    a942:	0a 15       	pushm	#1,	r10	;16-bit words

0000a944 <.LCFI2>:
    a944:	0a 4c       	mov	r12,	r10	;

0000a946 <.Loc.47.1>:
    a946:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a948:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a94a <.LVL8>:
    a94a:	b0 12 12 bc 	call	#-17390	;#0xbc12

0000a94e <.Loc.49.1>:
    a94e:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a950:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a954:	0e 43       	clr	r14		;

0000a956 <.L1^B2>:
    a956:	1d 83       	dec	r13		;
    a958:	0e 73       	sbc	r14		;
    a95a:	fd 23       	jnz	$-4      	;abs 0xa956
    a95c:	0d 93       	cmp	#0,	r13	;r3 As==00
    a95e:	fb 23       	jnz	$-8      	;abs 0xa956
    a960:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a962 <L0^A>:
    a962:	00 3c       	jmp	$+2      	;abs 0xa964

0000a964 <L0^A>:
    a964:	00 3c       	jmp	$+2      	;abs 0xa966
    a966:	03 43       	nop			

0000a968 <.Loc.51.1>:
    a968:	3c 40 10 a9 	mov	#-22256,r12	;#0xa910

0000a96c <.Loc.51.1>:
    a96c:	ba 90 05 00 	cmp	#5,	998(r10); 0x03e6
    a970:	e6 03 
    a972:	02 20       	jnz	$+6      	;abs 0xa978

0000a974 <.Loc.53.1>:
    a974:	3c 40 0c a9 	mov	#-22260,r12	;#0xa90c

0000a978 <.L4>:
    a978:	0a 17       	popm	#1,	r10	;16-bit words

0000a97a <.LCFI3>:
    a97a:	30 41       	ret			

0000a97c <thread2_init>:
    a97c:	21 83       	decd	r1		;

0000a97e <.LCFI4>:
    a97e:	b1 40 e8 03 	mov	#1000,	0(r1)	;#0x03e8
    a982:	00 00 
    a984:	3f 40 20 49 	mov	#18720,	r15	;#0x4920
    a988:	3e 40 38 45 	mov	#17720,	r14	;#0x4538
    a98c:	3d 40 fc a8 	mov	#-22276,r13	;#0xa8fc
    a990:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
    a994:	b0 12 92 aa 	call	#-21870	;#0xaa92

0000a998 <.Loc.23.1>:
    a998:	32 c2       	dint			
    a99a:	03 43       	nop			

0000a99c <.Loc.23.1>:
    a99c:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
    a9a0:	b0 12 82 ab 	call	#-21630	;#0xab82
    a9a4:	b0 12 66 ab 	call	#-21658	;#0xab66

0000a9a8 <.Loc.23.1>:
    a9a8:	03 43       	nop			
    a9aa:	32 d2       	eint			
    a9ac:	03 43       	nop			

0000a9ae <.Loc.24.1>:
    a9ae:	21 53       	incd	r1		;

0000a9b0 <.LCFI5>:
    a9b0:	30 41       	ret			

0000a9b2 <t_init>:
    a9b2:	8c 43 0e 27 	mov	#0,	9998(r12);r3 As==00, 0x270e

0000a9b6 <.Loc.30.1>:
    a9b6:	fc 40 ab ff 	mov.b	#-85,	0(r12)	;#0xffab
    a9ba:	00 00 

0000a9bc <.Loc.32.1>:
    a9bc:	3c 40 c6 a9 	mov	#-22074,r12	;#0xa9c6

0000a9c0 <.LVL1>:
    a9c0:	30 41       	ret			

0000a9c2 <t_end>:
    a9c2:	4c 43       	clr.b	r12		;

0000a9c4 <.LVL3>:
    a9c4:	30 41       	ret			

0000a9c6 <t_blink_on>:
    a9c6:	0a 15       	pushm	#1,	r10	;16-bit words

0000a9c8 <.LCFI0>:
    a9c8:	0a 4c       	mov	r12,	r10	;

0000a9ca <.Loc.37.1>:
    a9ca:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a9cc:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a9ce <.LVL5>:
    a9ce:	b0 12 f8 bb 	call	#-17416	;#0xbbf8

0000a9d2 <.Loc.38.1>:
    a9d2:	9a 53 0e 27 	inc	9998(r10)		;

0000a9d6 <.Loc.40.1>:
    a9d6:	1e 14       	pushm.a	#2,	r14	;20-bit words
    a9d8:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    a9dc:	0e 43       	clr	r14		;

0000a9de <.L1^B1>:
    a9de:	1d 83       	dec	r13		;
    a9e0:	0e 73       	sbc	r14		;
    a9e2:	fd 23       	jnz	$-4      	;abs 0xa9de
    a9e4:	0d 93       	cmp	#0,	r13	;r3 As==00
    a9e6:	fb 23       	jnz	$-8      	;abs 0xa9de
    a9e8:	1d 16       	popm.a	#2,	r14	;20-bit words

0000a9ea <L0^A>:
    a9ea:	00 3c       	jmp	$+2      	;abs 0xa9ec

0000a9ec <L0^A>:
    a9ec:	00 3c       	jmp	$+2      	;abs 0xa9ee
    a9ee:	03 43       	nop			

0000a9f0 <.Loc.42.1>:
    a9f0:	3c 40 f8 a9 	mov	#-22024,r12	;#0xa9f8
    a9f4:	0a 17       	popm	#1,	r10	;16-bit words

0000a9f6 <.LCFI1>:
    a9f6:	30 41       	ret			

0000a9f8 <t_blink_off>:
    a9f8:	0a 15       	pushm	#1,	r10	;16-bit words

0000a9fa <.LCFI2>:
    a9fa:	0a 4c       	mov	r12,	r10	;

0000a9fc <.Loc.47.1>:
    a9fc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a9fe:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000aa00 <.LVL8>:
    aa00:	b0 12 12 bc 	call	#-17390	;#0xbc12

0000aa04 <.Loc.49.1>:
    aa04:	1e 14       	pushm.a	#2,	r14	;20-bit words
    aa06:	3d 40 34 df 	mov	#-8396,	r13	;#0xdf34
    aa0a:	0e 43       	clr	r14		;

0000aa0c <.L1^B2>:
    aa0c:	1d 83       	dec	r13		;
    aa0e:	0e 73       	sbc	r14		;
    aa10:	fd 23       	jnz	$-4      	;abs 0xaa0c
    aa12:	0d 93       	cmp	#0,	r13	;r3 As==00
    aa14:	fb 23       	jnz	$-8      	;abs 0xaa0c
    aa16:	1d 16       	popm.a	#2,	r14	;20-bit words

0000aa18 <L0^A>:
    aa18:	00 3c       	jmp	$+2      	;abs 0xaa1a

0000aa1a <L0^A>:
    aa1a:	00 3c       	jmp	$+2      	;abs 0xaa1c
    aa1c:	03 43       	nop			

0000aa1e <.Loc.51.1>:
    aa1e:	3c 40 c6 a9 	mov	#-22074,r12	;#0xa9c6

0000aa22 <.Loc.51.1>:
    aa22:	ba 90 05 00 	cmp	#5,	9998(r10); 0x270e
    aa26:	0e 27 
    aa28:	02 20       	jnz	$+6      	;abs 0xaa2e

0000aa2a <.Loc.53.1>:
    aa2a:	3c 40 c2 a9 	mov	#-22078,r12	;#0xa9c2

0000aa2e <.L4>:
    aa2e:	0a 17       	popm	#1,	r10	;16-bit words

0000aa30 <.LCFI3>:
    aa30:	30 41       	ret			

0000aa32 <thread3_init>:
    aa32:	21 83       	decd	r1		;

0000aa34 <.LCFI4>:
    aa34:	b1 40 10 27 	mov	#10000,	0(r1)	;#0x2710
    aa38:	00 00 
    aa3a:	3f 40 18 74 	mov	#29720,	r15	;#0x7418
    aa3e:	3e 40 08 4d 	mov	#19720,	r14	;#0x4d08
    aa42:	3d 40 b2 a9 	mov	#-22094,r13	;#0xa9b2
    aa46:	7c 40 11 00 	mov.b	#17,	r12	;#0x0011
    aa4a:	b0 12 92 aa 	call	#-21870	;#0xaa92

0000aa4e <.Loc.23.1>:
    aa4e:	32 c2       	dint			
    aa50:	03 43       	nop			

0000aa52 <.Loc.23.1>:
    aa52:	7c 40 11 00 	mov.b	#17,	r12	;#0x0011
    aa56:	b0 12 82 ab 	call	#-21630	;#0xab82
    aa5a:	b0 12 66 ab 	call	#-21658	;#0xab66

0000aa5e <.Loc.23.1>:
    aa5e:	03 43       	nop			
    aa60:	32 d2       	eint			
    aa62:	03 43       	nop			

0000aa64 <.Loc.24.1>:
    aa64:	21 53       	incd	r1		;

0000aa66 <.LCFI5>:
    aa66:	30 41       	ret			

0000aa68 <__scheduler_boot_init>:
    aa68:	0a 15       	pushm	#1,	r10	;16-bit words

0000aa6a <.LCFI0>:
    aa6a:	3c 40 2a 9b 	mov	#-25814,r12	;#0x9b2a
    aa6e:	b0 12 84 b6 	call	#-18812	;#0xb684

0000aa72 <.Loc.65.1>:
    aa72:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

0000aa76 <.L2>:
    aa76:	0c 4a       	mov	r10,	r12	;
    aa78:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aa7c:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aa80:	1c 4c 36 9b 	mov	-25802(r12),r12	;0xffff9b36

0000aa84 <.LVL3>:
    aa84:	3a 53       	add	#-1,	r10	;r3 As==11

0000aa86 <.Loc.67.1>:
    aa86:	0a 93       	cmp	#0,	r10	;r3 As==00
    aa88:	f6 23       	jnz	$-18     	;abs 0xaa76

0000aa8a <.Loc.71.1>:
    aa8a:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000aa8e <.Loc.72.1>:
    aa8e:	0a 17       	popm	#1,	r10	;16-bit words

0000aa90 <.LCFI1>:
    aa90:	30 41       	ret			

0000aa92 <__create_thread>:
    aa92:	3a 15       	pushm	#4,	r10	;16-bit words

0000aa94 <.LCFI2>:
    aa94:	4a 4c       	mov.b	r12,	r10	;
    aa96:	09 4d       	mov	r13,	r9	;
    aa98:	07 4e       	mov	r14,	r7	;
    aa9a:	08 4f       	mov	r15,	r8	;

0000aa9c <.Loc.79.1>:
    aa9c:	0c 4a       	mov	r10,	r12	;

0000aa9e <.LVL6>:
    aa9e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

0000aaa2 <.LVL7>:
    aaa2:	b0 12 5e bd 	call	#-17058	;#0xbd5e

0000aaa6 <.LVL8>:
    aaa6:	cc 4a 34 9b 	mov.b	r10,	-25804(r12); 0x9b34

0000aaaa <.Loc.80.1>:
    aaaa:	0c 4a       	mov	r10,	r12	;
    aaac:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aab0:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aab4:	8c 49 38 9b 	mov	r9,	-25800(r12); 0x9b38

0000aab8 <.Loc.81.1>:
    aab8:	0c 4a       	mov	r10,	r12	;
    aaba:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aabe:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aac2:	8c 49 3a 9b 	mov	r9,	-25798(r12); 0x9b3a

0000aac6 <.Loc.82.1>:
    aac6:	0c 4a       	mov	r10,	r12	;
    aac8:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aacc:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aad0:	bc 42 36 9b 	mov	#8,	-25802(r12);r2 As==11, 0x9b36

0000aad4 <.Loc.85.1>:
    aad4:	0c 4a       	mov	r10,	r12	;
    aad6:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aada:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aade:	8c 47 3e 9b 	mov	r7,	-25794(r12); 0x9b3e

0000aae2 <.Loc.86.1>:
    aae2:	0c 4a       	mov	r10,	r12	;
    aae4:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aae8:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aaec:	8c 48 40 9b 	mov	r8,	-25792(r12); 0x9b40

0000aaf0 <.Loc.87.1>:
    aaf0:	0c 4a       	mov	r10,	r12	;
    aaf2:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    aaf6:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    aafa:	cc 43 42 9b 	mov.b	#0,	-25790(r12);r3 As==00, 0x9b42

0000aafe <.Loc.88.1>:
    aafe:	0c 4a       	mov	r10,	r12	;
    ab00:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    ab04:	b0 12 5e bd 	call	#-17058	;#0xbd5e
    ab08:	9c 41 0a 00 	mov	10(r1),	-25788(r12);0x0000a, 0x9b44
    ab0c:	44 9b 

0000ab0e <.Loc.89.1>:
    ab0e:	37 17       	popm	#4,	r10	;16-bit words

0000ab10 <.LCFI3>:
    ab10:	30 41       	ret			

0000ab12 <__stop_thread>:
    ab12:	0a 15       	pushm	#1,	r10	;16-bit words

0000ab14 <.LCFI4>:
    ab14:	0a 4c       	mov	r12,	r10	;

0000ab16 <.Loc.93.1>:
    ab16:	3d 40 2a 9b 	mov	#-25814,r13	;#0x9b2a
    ab1a:	6c 4c       	mov.b	@r12,	r12	;

0000ab1c <.LVL17>:
    ab1c:	b0 12 ca b6 	call	#-18742	;#0xb6ca

0000ab20 <.Loc.94.1>:
    ab20:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000ab24 <.Loc.95.1>:
    ab24:	0a 17       	popm	#1,	r10	;16-bit words

0000ab26 <.LCFI5>:
    ab26:	30 41       	ret			

0000ab28 <__evict_thread>:
    ab28:	0a 15       	pushm	#1,	r10	;16-bit words

0000ab2a <.LCFI6>:
    ab2a:	0a 4c       	mov	r12,	r10	;

0000ab2c <.Loc.99.1>:
    ab2c:	3d 40 2a 9b 	mov	#-25814,r13	;#0x9b2a
    ab30:	6c 4c       	mov.b	@r12,	r12	;

0000ab32 <.LVL20>:
    ab32:	b0 12 ca b6 	call	#-18742	;#0xb6ca

0000ab36 <.Loc.100.1>:
    ab36:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

0000ab3a <.Loc.101.1>:
    ab3a:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000ab3e <.Loc.102.1>:
    ab3e:	0a 17       	popm	#1,	r10	;16-bit words

0000ab40 <.LCFI7>:
    ab40:	30 41       	ret			

0000ab42 <__set_sing_timer>:
    ab42:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000ab46 <.Loc.106.1>:
    ab46:	30 41       	ret			

0000ab48 <__set_expr_timer>:
    ab48:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000ab4c <.Loc.112.1>:
    ab4c:	30 41       	ret			

0000ab4e <__set_pdc_timer>:
    ab4e:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000ab52 <.Loc.118.1>:
    ab52:	30 41       	ret			

0000ab54 <__set_pdc_period>:
    ab54:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

0000ab58 <.Loc.123.1>:
    ab58:	30 41       	ret			

0000ab5a <__get_pdc_timer>:
    ab5a:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

0000ab5e <.LVL27>:
    ab5e:	30 41       	ret			

0000ab60 <__get_pdc_period>:
    ab60:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000ab64 <.LVL29>:
    ab64:	30 41       	ret			

0000ab66 <__start_thread>:
    ab66:	0a 15       	pushm	#1,	r10	;16-bit words

0000ab68 <.LCFI8>:
    ab68:	0a 4c       	mov	r12,	r10	;

0000ab6a <.Loc.136.1>:
    ab6a:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    ab6e:	06 00 

0000ab70 <.Loc.137.1>:
    ab70:	3d 40 2a 9b 	mov	#-25814,r13	;#0x9b2a
    ab74:	6c 4c       	mov.b	@r12,	r12	;

0000ab76 <.LVL31>:
    ab76:	b0 12 aa b6 	call	#-18774	;#0xb6aa

0000ab7a <.Loc.138.1>:
    ab7a:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000ab7e <.Loc.139.1>:
    ab7e:	0a 17       	popm	#1,	r10	;16-bit words

0000ab80 <.LCFI9>:
    ab80:	30 41       	ret			

0000ab82 <__get_thread>:
    ab82:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    ab86:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    ab8a:	b0 12 5e bd 	call	#-17058	;#0xbd5e

0000ab8e <.LVL34>:
    ab8e:	3c 50 34 9b 	add	#-25804,r12	;#0x9b34
    ab92:	30 41       	ret			

0000ab94 <__scheduler_run>:
    ab94:	b0 12 22 b4 	call	#-19422	;#0xb422

0000ab98 <.Loc.171.1>:
    ab98:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000ab9c <.Loc.171.1>:
    ab9c:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000aba0 <.LBB8>:
    aba0:	82 93 28 9b 	cmp	#0,	&0x9b28	;r3 As==00
    aba4:	04 24       	jz	$+10     	;abs 0xabae

0000aba6 <.Loc.157.1>:
    aba6:	1c 42 28 9b 	mov	&0x9b28,r12	;0x9b28
    abaa:	b0 12 36 ac 	call	#-21450	;#0xac36

0000abae <.L16>:
    abae:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000abb2 <.Loc.184.1>:
    abb2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000abb6 <.Loc.185.1>:
    abb6:	b0 12 3a ad 	call	#-21190	;#0xad3a

0000abba <.L31>:
    abba:	03 43       	nop			
    abbc:	32 d2       	eint			
    abbe:	03 43       	nop			

0000abc0 <.L20>:
    abc0:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    abc4:	0c 93       	cmp	#0,	r12	;r3 As==00
    abc6:	0e 24       	jz	$+30     	;abs 0xabe4
    abc8:	1c 93       	cmp	#1,	r12	;r3 As==01
    abca:	fa 23       	jnz	$-10     	;abs 0xabc0

0000abcc <.L19>:
    abcc:	82 93 28 9b 	cmp	#0,	&0x9b28	;r3 As==00
    abd0:	21 24       	jz	$+68     	;abs 0xac14

0000abd2 <.Loc.207.1>:
    abd2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000abd6 <.Loc.207.1>:
    abd6:	1c 42 28 9b 	mov	&0x9b28,r12	;0x9b28
    abda:	b0 12 36 ac 	call	#-21450	;#0xac36

0000abde <.Loc.211.1>:
    abde:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000abe2 <.Loc.212.1>:
    abe2:	ee 3f       	jmp	$-34     	;abs 0xabc0

0000abe4 <.L18>:
    abe4:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000abe8 <.LBB10>:
    abe8:	3c 40 2a 9b 	mov	#-25814,r12	;#0x9b2a
    abec:	b0 12 f2 b6 	call	#-18702	;#0xb6f2
    abf0:	4e 4c       	mov.b	r12,	r14	;
    abf2:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000abf6 <.LVL40>:
    abf6:	4d 43       	clr.b	r13		;

0000abf8 <.Loc.144.1>:
    abf8:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    abfa:	07 24       	jz	$+16     	;abs 0xac0a

0000abfc <.Loc.145.1>:
    abfc:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    ac00:	b0 12 5e bd 	call	#-17058	;#0xbd5e

0000ac04 <.LVL41>:
    ac04:	0d 4c       	mov	r12,	r13	;
    ac06:	3d 50 34 9b 	add	#-25804,r13	;#0x9b34

0000ac0a <.L21>:
    ac0a:	82 4d 28 9b 	mov	r13,	&0x9b28	;

0000ac0e <.Loc.201.1>:
    ac0e:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01
    ac12:	dc 3f       	jmp	$-70     	;abs 0xabcc

0000ac14 <.L22>:
    ac14:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000ac18 <.Loc.215.1>:
    ac18:	32 c2       	dint			
    ac1a:	03 43       	nop			

0000ac1c <.LBB12>:
    ac1c:	3c 40 2a 9b 	mov	#-25814,r12	;#0x9b2a
    ac20:	b0 12 f2 b6 	call	#-18702	;#0xb6f2

0000ac24 <.LVL42>:
    ac24:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    ac26:	cc 23       	jnz	$-102    	;abs 0xabc0

0000ac28 <.LBE12>:
    ac28:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000ac2c <.Loc.219.1>:
    ac2c:	03 43       	nop			
    ac2e:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    ac32:	03 43       	nop			

0000ac34 <.Loc.222.1>:
    ac34:	c2 3f       	jmp	$-122    	;abs 0xabba

0000ac36 <__tick>:
    ac36:	1a 15       	pushm	#2,	r10	;16-bit words

0000ac38 <.LCFI0>:
    ac38:	0a 4c       	mov	r12,	r10	;

0000ac3a <.Loc.53.1>:
    ac3a:	
0000ac3c <L0^A>:
    ac3c:	02 00       	mova	@r0,	r2	;

0000ac3e <.LVL1>:
    ac3e:	2c 93       	cmp	#2,	r12	;r3 As==10
    ac40:	3f 24       	jz	$+128    	;abs 0xacc0
    ac42:	2c 92       	cmp	#4,	r12	;r2 As==10
    ac44:	4d 24       	jz	$+156    	;abs 0xace0
    ac46:	1c 93       	cmp	#1,	r12	;r3 As==01
    ac48:	67 20       	jnz	$+208    	;abs 0xad18

0000ac4a <.LBB5>:
    ac4a:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    ac4e:	22 02 

0000ac50 <.Loc.40.1>:
    ac50:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

0000ac54 <.Loc.43.1>:
    ac54:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    ac58:	5c e3       	xor.b	#1,	r12	;r3 As==01
    ac5a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000ac5e <.Loc.43.1>:
    ac5e:	5c 02       	rlam	#1,	r12	;
    ac60:	0c 5a       	add	r10,	r12	;
    ac62:	5f 02       	rlam	#1,	r15	;
    ac64:	0f 5a       	add	r10,	r15	;
    ac66:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    ac6a:	5e 03       	rrum	#1,	r14	;
    ac6c:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    ac70:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    ac74:	b0 12 fc b5 	call	#-18948	;#0xb5fc

0000ac78 <.Loc.45.1>:
    ac78:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    ac7c:	22 02 

0000ac7e <.LBE5>:
    ac7e:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    ac82:	02 02 

0000ac84 <.Loc.60.1>:
    ac84:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    ac88:	5c e3       	xor.b	#1,	r12	;r3 As==01
    ac8a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000ac8e <.Loc.63.1>:
    ac8e:	3c 50 05 00 	add	#5,	r12	;
    ac92:	5c 02       	rlam	#1,	r12	;
    ac94:	0c 5a       	add	r10,	r12	;
    ac96:	29 4c       	mov	@r12,	r9	;

0000ac98 <.LVL5>:
    ac98:	1d 4a 06 00 	mov	6(r10),	r13	;

0000ac9c <.Loc.66.1>:
    ac9c:	1d 9a 04 00 	cmp	4(r10),	r13	;
    aca0:	3d 20       	jnz	$+124    	;abs 0xad1c

0000aca2 <.LBB7>:
    aca2:	0c 4a       	mov	r10,	r12	;
    aca4:	b0 12 d6 b4 	call	#-19242	;#0xb4d6

0000aca8 <.LVL6>:
    aca8:	0d 4c       	mov	r12,	r13	;
    acaa:	0c 49       	mov	r9,	r12	;

0000acac <.LVL7>:
    acac:	1e 4a 04 00 	mov	4(r10),	r14	;
    acb0:	8e 12       	call	r14		;

0000acb2 <.L17>:
    acb2:	8a 4c 08 00 	mov	r12,	8(r10)	;

0000acb6 <.Loc.76.1>:
    acb6:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000acba <.Loc.78.1>:
    acba:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    acbe:	02 02 

0000acc0 <.L2>:
    acc0:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    acc4:	22 02 

0000acc6 <.Loc.82.1>:
    acc6:	0c 4a       	mov	r10,	r12	;
    acc8:	b0 12 04 b5 	call	#-19196	;#0xb504

0000accc <.Loc.86.1>:
    accc:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    acd0:	06 00 

0000acd2 <.Loc.88.1>:
    acd2:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    acd6:	5c e3       	xor.b	#1,	r12	;r3 As==01
    acd8:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

0000acdc <.Loc.89.1>:
    acdc:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

0000ace0 <.L3>:
    ace0:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    ace4:	0e 00 

0000ace6 <.Loc.94.1>:
    ace6:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    acea:	22 02 

0000acec <.Loc.94.1>:
    acec:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    acf0:	22 02 

0000acf2 <.Loc.95.1>:
    acf2:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    acf6:	1b 20       	jnz	$+56     	;abs 0xad2e

0000acf8 <.Loc.101.1>:
    acf8:	32 c2       	dint			
    acfa:	03 43       	nop			

0000acfc <.Loc.103.1>:
    acfc:	0c 4a       	mov	r10,	r12	;
    acfe:	b0 12 b8 b4 	call	#-19272	;#0xb4b8

0000ad02 <.Loc.103.1>:
    ad02:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    ad04:	0e 20       	jnz	$+30     	;abs 0xad22

0000ad06 <.Loc.105.1>:
    ad06:	0c 4a       	mov	r10,	r12	;
    ad08:	b0 12 12 ab 	call	#-21742	;#0xab12

0000ad0c <.L9>:
    ad0c:	03 43       	nop			
    ad0e:	32 d2       	eint			
    ad10:	03 43       	nop			

0000ad12 <.L10>:
    ad12:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    ad16:	22 02 

0000ad18 <.L1>:
    ad18:	19 17       	popm	#2,	r10	;16-bit words

0000ad1a <.LCFI1>:
    ad1a:	30 41       	ret			

0000ad1c <.L5>:
    ad1c:	2c 4c       	mov	@r12,	r12	;
    ad1e:	8d 12       	call	r13		;
    ad20:	c8 3f       	jmp	$-110    	;abs 0xacb2

0000ad22 <.L8>:
    ad22:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    ad26:	06 00 

0000ad28 <.Loc.111.1>:
    ad28:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    ad2c:	ef 3f       	jmp	$-32     	;abs 0xad0c

0000ad2e <.L7>:
    ad2e:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    ad32:	ef 3f       	jmp	$-32     	;abs 0xad12

0000ad34 <__timers_init>:
    ad34:	b0 12 d6 b7 	call	#-18474	;#0xb7d6

0000ad38 <.Loc.64.1>:
    ad38:	30 41       	ret			

0000ad3a <__reboot_timers>:
    ad3a:	30 41       	ret			

0000ad3c <clear_wkup_status>:
    ad3c:	2a 15       	pushm	#3,	r10	;16-bit words

0000ad3e <.LCFI0>:
    ad3e:	48 4c       	mov.b	r12,	r8	;

0000ad40 <.Loc.100.1>:
    ad40:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

0000ad44 <.Loc.101.1>:
    ad44:	49 43       	clr.b	r9		;

0000ad46 <.L5>:
    ad46:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    ad4a:	07 20       	jnz	$+16     	;abs 0xad5a

0000ad4c <.Loc.104.1>:
    ad4c:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

0000ad50 <.Loc.105.1>:
    ad50:	4e 43       	clr.b	r14		;
    ad52:	4d 43       	clr.b	r13		;
    ad54:	4c 49       	mov.b	r9,	r12	;
    ad56:	b0 12 94 b8 	call	#-18284	;#0xb894

0000ad5a <.L4>:
    ad5a:	4c 49       	mov.b	r9,	r12	;
    ad5c:	5c 53       	inc.b	r12		;
    ad5e:	49 4c       	mov.b	r12,	r9	;

0000ad60 <.LVL5>:
    ad60:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000ad64 <.Loc.101.1>:
    ad64:	7c 90 03 00 	cmp.b	#3,	r12	;
    ad68:	ee 23       	jnz	$-34     	;abs 0xad46

0000ad6a <.Loc.109.1>:
    ad6a:	28 17       	popm	#3,	r10	;16-bit words

0000ad6c <.LCFI1>:
    ad6c:	30 41       	ret			

0000ad6e <unpack_wkup_to_local>:
    ad6e:	1a 15       	pushm	#2,	r10	;16-bit words

0000ad70 <.LCFI2>:
    ad70:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000ad74 <.LCFI3>:
    ad74:	49 43       	clr.b	r9		;

0000ad76 <.L8>:
    ad76:	0a 49       	mov	r9,	r10	;
    ad78:	5a 06       	rlam	#2,	r10	;
    ad7a:	0a 59       	add	r9,	r10	;
    ad7c:	5a 02       	rlam	#1,	r10	;
    ad7e:	3a 50 34 1c 	add	#7220,	r10	;#0x1c34
    ad82:	4e 43       	clr.b	r14		;
    ad84:	4d 49       	mov.b	r9,	r13	;
    ad86:	0c 41       	mov	r1,	r12	;
    ad88:	b0 12 1e ba 	call	#-17890	;#0xba1e
    ad8c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    ad90:	0d 41       	mov	r1,	r13	;
    ad92:	0c 4a       	mov	r10,	r12	;
    ad94:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000ad98 <.LVL9>:
    ad98:	19 53       	inc	r9		;

0000ad9a <.Loc.115.1>:
    ad9a:	39 90 03 00 	cmp	#3,	r9	;
    ad9e:	eb 23       	jnz	$-40     	;abs 0xad76

0000ada0 <.Loc.120.1>:
    ada0:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000ada4 <.LCFI4>:
    ada4:	19 17       	popm	#2,	r10	;16-bit words

0000ada6 <.LCFI5>:
    ada6:	30 41       	ret			

0000ada8 <refresh_wkup_timers>:
    ada8:	4a 15       	pushm	#5,	r10	;16-bit words

0000adaa <.LCFI6>:
    adaa:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

0000adae <.Loc.125.1>:
    adae:	5f 43       	mov.b	#1,	r15	;r3 As==01

0000adb0 <.Loc.127.1>:
    adb0:	49 43       	clr.b	r9		;

0000adb2 <.L23>:
    adb2:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    adb6:	56 20       	jnz	$+174    	;abs 0xae64

0000adb8 <.Loc.133.1>:
    adb8:	16 4a 04 00 	mov	4(r10),	r6	;
    adbc:	17 4a 06 00 	mov	6(r10),	r7	;

0000adc0 <.Loc.133.1>:
    adc0:	0f 93       	cmp	#0,	r15	;r3 As==00
    adc2:	05 24       	jz	$+12     	;abs 0xadce

0000adc4 <.Loc.135.1>:
    adc4:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

0000adc8 <.Loc.136.1>:
    adc8:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    adcc:	5c 1c 

0000adce <.L12>:
    adce:	b0 12 a2 b7 	call	#-18526	;#0xb7a2

0000add2 <.Loc.141.1>:
    add2:	0e 46       	mov	r6,	r14	;
    add4:	0f 47       	mov	r7,	r15	;
    add6:	0e 8c       	sub	r12,	r14	;
    add8:	0f 7d       	subc	r13,	r15	;

0000adda <.Loc.141.1>:
    adda:	8a 4e 04 00 	mov	r14,	4(r10)	;
    adde:	8a 4f 06 00 	mov	r15,	6(r10)	;

0000ade2 <.Loc.142.1>:
    ade2:	4d 43       	clr.b	r13		;
    ade4:	4c 49       	mov.b	r9,	r12	;
    ade6:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000adea <.Loc.144.1>:
    adea:	1c 4a 04 00 	mov	4(r10),	r12	;
    adee:	1d 4a 06 00 	mov	6(r10),	r13	;

0000adf2 <.Loc.144.1>:
    adf2:	07 4d       	mov	r13,	r7	;
    adf4:	0d 93       	cmp	#0,	r13	;r3 As==00
    adf6:	50 34       	jge	$+162    	;abs 0xae98

0000adf8 <.Loc.144.1>:
    adf8:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    adfc:	06 43       	clr	r6		;
    adfe:	06 8e       	sub	r14,	r6	;
    ae00:	0e 46       	mov	r6,	r14	;
    ae02:	0f 46       	mov	r6,	r15	;
    ae04:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000ae08 <.Loc.144.1>:
    ae08:	0f 9d       	cmp	r13,	r15	;
    ae0a:	04 38       	jl	$+10     	;abs 0xae14

0000ae0c <.Loc.144.1>:
    ae0c:	0d 9f       	cmp	r15,	r13	;
    ae0e:	20 20       	jnz	$+66     	;abs 0xae50
    ae10:	06 9c       	cmp	r12,	r6	;
    ae12:	1e 2c       	jc	$+62     	;abs 0xae50

0000ae14 <.L32>:
    ae14:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    ae18:	06 48       	mov	r8,	r6	;
    ae1a:	07 43       	clr	r7		;

0000ae1c <.Loc.146.1>:
    ae1c:	4e 43       	clr.b	r14		;
    ae1e:	4f 43       	clr.b	r15		;
    ae20:	0e 8c       	sub	r12,	r14	;
    ae22:	0f 7d       	subc	r13,	r15	;

0000ae24 <.Loc.146.1>:
    ae24:	0f 93       	cmp	#0,	r15	;r3 As==00
    ae26:	0c 38       	jl	$+26     	;abs 0xae40
    ae28:	0f 93       	cmp	#0,	r15	;r3 As==00
    ae2a:	02 20       	jnz	$+6      	;abs 0xae30
    ae2c:	0e 96       	cmp	r6,	r14	;
    ae2e:	08 28       	jnc	$+18     	;abs 0xae40

0000ae30 <.L33>:
    ae30:	06 9e       	cmp	r14,	r6	;
    ae32:	17 20       	jnz	$+48     	;abs 0xae62
    ae34:	0f 93       	cmp	#0,	r15	;r3 As==00
    ae36:	15 20       	jnz	$+44     	;abs 0xae62

0000ae38 <.Loc.146.1>:
    ae38:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    ae3c:	02 00 
    ae3e:	12 2c       	jc	$+38     	;abs 0xae64

0000ae40 <.L17>:
    ae40:	4e 43       	clr.b	r14		;
    ae42:	0e 8c       	sub	r12,	r14	;
    ae44:	82 4e 5a 1c 	mov	r14,	&0x1c5a	;

0000ae48 <.L40>:
    ae48:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    ae4c:	5c 1c 
    ae4e:	09 3c       	jmp	$+20     	;abs 0xae62

0000ae50 <.L15>:
    ae50:	07 4d       	mov	r13,	r7	;
    ae52:	0d 9f       	cmp	r15,	r13	;
    ae54:	04 38       	jl	$+10     	;abs 0xae5e
    ae56:	0f 9d       	cmp	r13,	r15	;
    ae58:	04 20       	jnz	$+10     	;abs 0xae62
    ae5a:	0c 96       	cmp	r6,	r12	;
    ae5c:	02 2c       	jc	$+6      	;abs 0xae62

0000ae5e <.L34>:
    ae5e:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

0000ae62 <.L30>:
    ae62:	4f 43       	clr.b	r15		;

0000ae64 <.L11>:
    ae64:	4c 49       	mov.b	r9,	r12	;
    ae66:	5c 53       	inc.b	r12		;
    ae68:	49 4c       	mov.b	r12,	r9	;

0000ae6a <.LVL17>:
    ae6a:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000ae6e <.Loc.127.1>:
    ae6e:	7c 90 03 00 	cmp.b	#3,	r12	;
    ae72:	9f 23       	jnz	$-192    	;abs 0xadb2

0000ae74 <.Loc.164.1>:
    ae74:	0f 93       	cmp	#0,	r15	;r3 As==00
    ae76:	2d 20       	jnz	$+92     	;abs 0xaed2

0000ae78 <.Loc.166.1>:
    ae78:	5d 42 5c 1c 	mov.b	&0x1c5c,r13	;0x1c5c
    ae7c:	4c 43       	clr.b	r12		;

0000ae7e <.LVL18>:
    ae7e:	b0 12 da b8 	call	#-18214	;#0xb8da

0000ae82 <.LVL19>:
    ae82:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    ae86:	4c 43       	clr.b	r12		;
    ae88:	b0 12 e8 b8 	call	#-18200	;#0xb8e8

0000ae8c <.Loc.171.1>:
    ae8c:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    ae90:	b0 12 18 b7 	call	#-18664	;#0xb718

0000ae94 <.L10>:
    ae94:	46 17       	popm	#5,	r10	;16-bit words

0000ae96 <.LCFI7>:
    ae96:	30 41       	ret			

0000ae98 <.L13>:
    ae98:	0e 4c       	mov	r12,	r14	;
    ae9a:	0e dd       	bis	r13,	r14	;
    ae9c:	4f 43       	clr.b	r15		;
    ae9e:	0e 93       	cmp	#0,	r14	;r3 As==00
    aea0:	e1 27       	jz	$-60     	;abs 0xae64

0000aea2 <.Loc.155.1>:
    aea2:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    aea6:	0e 48       	mov	r8,	r14	;
    aea8:	0f 43       	clr	r15		;

0000aeaa <.Loc.155.1>:
    aeaa:	0d 93       	cmp	#0,	r13	;r3 As==00
    aeac:	0f 38       	jl	$+32     	;abs 0xaecc
    aeae:	0d 93       	cmp	#0,	r13	;r3 As==00
    aeb0:	03 20       	jnz	$+8      	;abs 0xaeb8
    aeb2:	07 4c       	mov	r12,	r7	;
    aeb4:	0c 9e       	cmp	r14,	r12	;
    aeb6:	0a 28       	jnc	$+22     	;abs 0xaecc

0000aeb8 <.L35>:
    aeb8:	07 4c       	mov	r12,	r7	;
    aeba:	0c 9e       	cmp	r14,	r12	;
    aebc:	d2 23       	jnz	$-90     	;abs 0xae62
    aebe:	0d 9f       	cmp	r15,	r13	;
    aec0:	d0 23       	jnz	$-94     	;abs 0xae62
    aec2:	4f 43       	clr.b	r15		;

0000aec4 <.Loc.155.1>:
    aec4:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    aec8:	02 00 
    aeca:	cc 2f       	jc	$-102    	;abs 0xae64

0000aecc <.L21>:
    aecc:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;
    aed0:	bb 3f       	jmp	$-136    	;abs 0xae48

0000aed2 <.L24>:
    aed2:	b0 12 08 b7 	call	#-18680	;#0xb708

0000aed6 <.LVL24>:
    aed6:	de 3f       	jmp	$-66     	;abs 0xae94

0000aed8 <set_wkup_timer>:
    aed8:	2a 15       	pushm	#3,	r10	;16-bit words

0000aeda <.LCFI9>:
    aeda:	21 83       	decd	r1		;

0000aedc <.LCFI10>:
    aedc:	49 4c       	mov.b	r12,	r9	;

0000aede <.Loc.182.1>:
    aede:	81 4d 00 00 	mov	r13,	0(r1)	;
    aee2:	b0 12 6e ad 	call	#-21138	;#0xad6e

0000aee6 <.LVL27>:
    aee6:	b0 12 08 b7 	call	#-18680	;#0xb708

0000aeea <.Loc.192.1>:
    aeea:	2e 41       	mov	@r1,	r14	;
    aeec:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    aef0:	22 24       	jz	$+70     	;abs 0xaf36

0000aef2 <.Loc.192.1>:
    aef2:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    aef6:	41 24       	jz	$+132    	;abs 0xaf7a

0000aef8 <.Loc.192.1>:
    aef8:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    aefc:	41 24       	jz	$+132    	;abs 0xaf80

0000aefe <.Loc.192.1>:
    aefe:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    af02:	82 43 4e 1c 	mov	#0,	&0x1c4e	;r3 As==00

0000af06 <.Loc.216.1>:
    af06:	4f 43       	clr.b	r15		;
    af08:	4d 43       	clr.b	r13		;
    af0a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    af0c:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000af10 <.Loc.217.1>:
    af10:	c2 49 4a 1c 	mov.b	r9,	&0x1c4a	;

0000af14 <.Loc.218.1>:
    af14:	4e 49       	mov.b	r9,	r14	;
    af16:	4d 43       	clr.b	r13		;
    af18:	7c 40 03 00 	mov.b	#3,	r12	;
    af1c:	b0 12 4a b8 	call	#-18358	;#0xb84a

0000af20 <.L47>:
    af20:	b0 12 a8 ad 	call	#-21080	;#0xada8

0000af24 <.Loc.222.1>:
    af24:	4c 43       	clr.b	r12		;
    af26:	b0 12 f6 b8 	call	#-18186	;#0xb8f6

0000af2a <.Loc.223.1>:
    af2a:	4c 43       	clr.b	r12		;
    af2c:	b0 12 dc b9 	call	#-17956	;#0xb9dc

0000af30 <.Loc.224.1>:
    af30:	21 53       	incd	r1		;

0000af32 <.LCFI11>:
    af32:	28 17       	popm	#3,	r10	;16-bit words

0000af34 <.LCFI12>:
    af34:	30 41       	ret			

0000af36 <.L44>:
    af36:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

0000af3a <.Loc.194.1>:
    af3a:	0d 4a       	mov	r10,	r13	;

0000af3c <.L42>:
    af3c:	0c 4d       	mov	r13,	r12	;
    af3e:	5c 06       	rlam	#2,	r12	;
    af40:	0c 5d       	add	r13,	r12	;
    af42:	5c 02       	rlam	#1,	r12	;
    af44:	08 4c       	mov	r12,	r8	;
    af46:	8c 4e 38 1c 	mov	r14,	7224(r12); 0x1c38
    af4a:	8c 43 3a 1c 	mov	#0,	7226(r12);r3 As==00, 0x1c3a

0000af4e <.Loc.197.1>:
    af4e:	4f 43       	clr.b	r15		;
    af50:	4d 43       	clr.b	r13		;
    af52:	4c 4a       	mov.b	r10,	r12	;
    af54:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000af58 <.Loc.198.1>:
    af58:	c8 49 36 1c 	mov.b	r9,	7222(r8); 0x1c36

0000af5c <.Loc.199.1>:
    af5c:	4e 49       	mov.b	r9,	r14	;
    af5e:	4d 43       	clr.b	r13		;
    af60:	4c 4a       	mov.b	r10,	r12	;
    af62:	b0 12 4a b8 	call	#-18358	;#0xb84a

0000af66 <.Loc.200.1>:
    af66:	98 43 34 1c 	mov	#1,	7220(r8);r3 As==01, 0x1c34

0000af6a <.Loc.196.1>:
    af6a:	38 50 34 1c 	add	#7220,	r8	;#0x1c34

0000af6e <.Loc.201.1>:
    af6e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    af70:	4d 43       	clr.b	r13		;
    af72:	4c 4a       	mov.b	r10,	r12	;
    af74:	b0 12 94 b8 	call	#-18284	;#0xb894
    af78:	d3 3f       	jmp	$-88     	;abs 0xaf20

0000af7a <.L45>:
    af7a:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000af7c <.Loc.194.1>:
    af7c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    af7e:	de 3f       	jmp	$-66     	;abs 0xaf3c

0000af80 <.L46>:
    af80:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000af82 <.Loc.194.1>:
    af82:	6d 43       	mov.b	#2,	r13	;r3 As==10
    af84:	db 3f       	jmp	$-72     	;abs 0xaf3c

0000af86 <clear_xpr_status>:
    af86:	4d 4c       	mov.b	r12,	r13	;

0000af88 <.Loc.236.1>:
    af88:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    af8c:	13 24       	jz	$+40     	;abs 0xafb4

0000af8e <.Loc.237.1>:
    af8e:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    af92:	13 24       	jz	$+40     	;abs 0xafba

0000af94 <.Loc.237.1>:
    af94:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    af98:	0c 20       	jnz	$+26     	;abs 0xafb2

0000af9a <.Loc.237.1>:
    af9a:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000af9c <.LVL48>:
    af9c:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000af9e <.L49>:
    af9e:	0d 4e       	mov	r14,	r13	;

0000afa0 <.LVL50>:
    afa0:	5d 06       	rlam	#2,	r13	;
    afa2:	0d 5e       	add	r14,	r13	;
    afa4:	5d 02       	rlam	#1,	r13	;
    afa6:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000afaa <.Loc.241.1>:
    afaa:	4e 43       	clr.b	r14		;
    afac:	6d 43       	mov.b	#2,	r13	;r3 As==10
    afae:	b0 12 94 b8 	call	#-18284	;#0xb894

0000afb2 <.L48>:
    afb2:	30 41       	ret			

0000afb4 <.L51>:
    afb4:	4c 43       	clr.b	r12		;

0000afb6 <.LVL53>:
    afb6:	4e 43       	clr.b	r14		;
    afb8:	f2 3f       	jmp	$-26     	;abs 0xaf9e

0000afba <.L52>:
    afba:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000afbc <.LVL55>:
    afbc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    afbe:	ef 3f       	jmp	$-32     	;abs 0xaf9e

0000afc0 <unpack_xpr_to_local>:
    afc0:	1a 15       	pushm	#2,	r10	;16-bit words

0000afc2 <.LCFI14>:
    afc2:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000afc6 <.LCFI15>:
    afc6:	49 43       	clr.b	r9		;

0000afc8 <.L54>:
    afc8:	0a 49       	mov	r9,	r10	;
    afca:	5a 06       	rlam	#2,	r10	;
    afcc:	0a 59       	add	r9,	r10	;
    afce:	5a 02       	rlam	#1,	r10	;
    afd0:	3a 50 16 1c 	add	#7190,	r10	;#0x1c16
    afd4:	6e 43       	mov.b	#2,	r14	;r3 As==10
    afd6:	4d 49       	mov.b	r9,	r13	;
    afd8:	0c 41       	mov	r1,	r12	;
    afda:	b0 12 1e ba 	call	#-17890	;#0xba1e
    afde:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    afe2:	0d 41       	mov	r1,	r13	;
    afe4:	0c 4a       	mov	r10,	r12	;
    afe6:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000afea <.LVL59>:
    afea:	19 53       	inc	r9		;

0000afec <.Loc.252.1>:
    afec:	39 90 03 00 	cmp	#3,	r9	;
    aff0:	eb 23       	jnz	$-40     	;abs 0xafc8

0000aff2 <.Loc.257.1>:
    aff2:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000aff6 <.LCFI16>:
    aff6:	19 17       	popm	#2,	r10	;16-bit words

0000aff8 <.LCFI17>:
    aff8:	30 41       	ret			

0000affa <refresh_xpr_timers>:
    affa:	6a 15       	pushm	#7,	r10	;16-bit words

0000affc <.LCFI18>:
    affc:	47 43       	clr.b	r7		;

0000affe <.Loc.261.1>:
    affe:	3a 40 16 1c 	mov	#7190,	r10	;#0x1c16

0000b002 <.Loc.261.1>:
    b002:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000b004 <.Loc.265.1>:
    b004:	46 43       	clr.b	r6		;

0000b006 <.L64>:
    b006:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    b00a:	4a 20       	jnz	$+150    	;abs 0xb0a0

0000b00c <.Loc.271.1>:
    b00c:	14 4a 04 00 	mov	4(r10),	r4	;
    b010:	15 4a 06 00 	mov	6(r10),	r5	;

0000b014 <.Loc.271.1>:
    b014:	0c 93       	cmp	#0,	r12	;r3 As==00
    b016:	04 24       	jz	$+10     	;abs 0xb020

0000b018 <.LVL63>:
    b018:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000b01c <.LVL64>:
    b01c:	09 44       	mov	r4,	r9	;
    b01e:	08 45       	mov	r5,	r8	;

0000b020 <.L58>:
    b020:	b0 12 a2 b7 	call	#-18526	;#0xb7a2

0000b024 <.Loc.278.1>:
    b024:	0e 44       	mov	r4,	r14	;
    b026:	0f 45       	mov	r5,	r15	;
    b028:	0e 8c       	sub	r12,	r14	;
    b02a:	0f 7d       	subc	r13,	r15	;

0000b02c <.Loc.278.1>:
    b02c:	8a 4e 04 00 	mov	r14,	4(r10)	;
    b030:	8a 4f 06 00 	mov	r15,	6(r10)	;

0000b034 <.Loc.279.1>:
    b034:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b036:	4c 46       	mov.b	r6,	r12	;
    b038:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000b03c <.Loc.281.1>:
    b03c:	4c 43       	clr.b	r12		;
    b03e:	1c 9a 06 00 	cmp	6(r10),	r12	;
    b042:	10 38       	jl	$+34     	;abs 0xb064
    b044:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    b048:	03 20       	jnz	$+8      	;abs 0xb050
    b04a:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    b04e:	0a 20       	jnz	$+22     	;abs 0xb064

0000b050 <.L70>:
    b050:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    b054:	b0 12 82 ab 	call	#-21630	;#0xab82
    b058:	b0 12 28 ab 	call	#-21720	;#0xab28

0000b05c <.Loc.289.1>:
    b05c:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    b060:	b0 12 86 af 	call	#-20602	;#0xaf86

0000b064 <.L59>:
    b064:	1e 4a 04 00 	mov	4(r10),	r14	;
    b068:	1d 4a 06 00 	mov	6(r10),	r13	;

0000b06c <.Loc.292.1>:
    b06c:	4c 43       	clr.b	r12		;
    b06e:	0c 9d       	cmp	r13,	r12	;
    b070:	04 38       	jl	$+10     	;abs 0xb07a
    b072:	0d 93       	cmp	#0,	r13	;r3 As==00
    b074:	14 20       	jnz	$+42     	;abs 0xb09e
    b076:	0e 93       	cmp	#0,	r14	;r3 As==00
    b078:	12 24       	jz	$+38     	;abs 0xb09e

0000b07a <.L71>:
    b07a:	0d 98       	cmp	r8,	r13	;
    b07c:	0c 38       	jl	$+26     	;abs 0xb096
    b07e:	08 9d       	cmp	r13,	r8	;
    b080:	02 20       	jnz	$+6      	;abs 0xb086
    b082:	0e 99       	cmp	r9,	r14	;
    b084:	08 28       	jnc	$+18     	;abs 0xb096

0000b086 <.L72>:
    b086:	4c 43       	clr.b	r12		;

0000b088 <.Loc.294.1>:
    b088:	0e 99       	cmp	r9,	r14	;
    b08a:	0a 20       	jnz	$+22     	;abs 0xb0a0
    b08c:	0d 98       	cmp	r8,	r13	;
    b08e:	08 20       	jnz	$+18     	;abs 0xb0a0

0000b090 <.Loc.294.1>:
    b090:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    b094:	05 2c       	jc	$+12     	;abs 0xb0a0

0000b096 <.L62>:
    b096:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000b09a <.LVL72>:
    b09a:	09 4e       	mov	r14,	r9	;
    b09c:	08 4d       	mov	r13,	r8	;

0000b09e <.L67>:
    b09e:	4c 43       	clr.b	r12		;

0000b0a0 <.L57>:
    b0a0:	4d 46       	mov.b	r6,	r13	;
    b0a2:	5d 53       	inc.b	r13		;
    b0a4:	46 4d       	mov.b	r13,	r6	;

0000b0a6 <.LVL75>:
    b0a6:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000b0aa <.Loc.265.1>:
    b0aa:	7d 90 03 00 	cmp.b	#3,	r13	;
    b0ae:	ab 23       	jnz	$-168    	;abs 0xb006

0000b0b0 <.Loc.303.1>:
    b0b0:	0c 93       	cmp	#0,	r12	;r3 As==00
    b0b2:	0d 20       	jnz	$+28     	;abs 0xb0ce

0000b0b4 <.Loc.304.1>:
    b0b4:	4d 47       	mov.b	r7,	r13	;

0000b0b6 <.LVL76>:
    b0b6:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000b0b8 <.LVL77>:
    b0b8:	b0 12 da b8 	call	#-18214	;#0xb8da

0000b0bc <.Loc.305.1>:
    b0bc:	0d 49       	mov	r9,	r13	;
    b0be:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b0c0:	b0 12 e8 b8 	call	#-18200	;#0xb8e8

0000b0c4 <.Loc.308.1>:
    b0c4:	0c 49       	mov	r9,	r12	;
    b0c6:	b0 12 2e b7 	call	#-18642	;#0xb72e

0000b0ca <.L56>:
    b0ca:	64 17       	popm	#7,	r10	;16-bit words

0000b0cc <.LCFI19>:
    b0cc:	30 41       	ret			

0000b0ce <.L65>:
    b0ce:	b0 12 44 b7 	call	#-18620	;#0xb744

0000b0d2 <.LVL82>:
    b0d2:	fb 3f       	jmp	$-8      	;abs 0xb0ca

0000b0d4 <set_expire_timer>:
    b0d4:	5a 15       	pushm	#6,	r10	;16-bit words

0000b0d6 <.LCFI21>:
    b0d6:	48 4c       	mov.b	r12,	r8	;
    b0d8:	09 4d       	mov	r13,	r9	;
    b0da:	07 4e       	mov	r14,	r7	;

0000b0dc <.Loc.318.1>:
    b0dc:	b0 12 c0 af 	call	#-20544	;#0xafc0

0000b0e0 <.LVL85>:
    b0e0:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    b0e4:	1b 24       	jz	$+56     	;abs 0xb11c

0000b0e6 <.Loc.324.1>:
    b0e6:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    b0ea:	43 24       	jz	$+136    	;abs 0xb172

0000b0ec <.Loc.324.1>:
    b0ec:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    b0f0:	43 24       	jz	$+136    	;abs 0xb178

0000b0f2 <.Loc.324.1>:
    b0f2:	0e 49       	mov	r9,	r14	;
    b0f4:	0f 47       	mov	r7,	r15	;
    b0f6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b0f8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b0fa:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000b0fe <.Loc.348.1>:
    b0fe:	4e 48       	mov.b	r8,	r14	;
    b100:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b102:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b104:	b0 12 4a b8 	call	#-18358	;#0xb84a

0000b108 <.L83>:
    b108:	b0 12 fa af 	call	#-20486	;#0xaffa

0000b10c <.Loc.352.1>:
    b10c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b10e:	b0 12 f6 b8 	call	#-18186	;#0xb8f6

0000b112 <.Loc.353.1>:
    b112:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b114:	b0 12 dc b9 	call	#-17956	;#0xb9dc

0000b118 <.Loc.354.1>:
    b118:	55 17       	popm	#6,	r10	;16-bit words

0000b11a <.LCFI22>:
    b11a:	30 41       	ret			

0000b11c <.L80>:
    b11c:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000b120 <.Loc.326.1>:
    b120:	06 4a       	mov	r10,	r6	;

0000b122 <.L78>:
    b122:	35 40 a2 b7 	mov	#-18526,r5	;#0xb7a2
    b126:	85 12       	call	r5		;

0000b128 <.Loc.328.1>:
    b128:	0e 46       	mov	r6,	r14	;
    b12a:	5e 06       	rlam	#2,	r14	;
    b12c:	0e 56       	add	r6,	r14	;
    b12e:	5e 02       	rlam	#1,	r14	;
    b130:	06 4e       	mov	r14,	r6	;

0000b132 <.Loc.328.1>:
    b132:	0c 59       	add	r9,	r12	;
    b134:	8e 4c 1a 1c 	mov	r12,	7194(r14); 0x1c1a
    b138:	0d 67       	addc	r7,	r13	;
    b13a:	8e 4d 1c 1c 	mov	r13,	7196(r14); 0x1c1c

0000b13e <.Loc.329.1>:
    b13e:	85 12       	call	r5		;

0000b140 <.Loc.329.1>:
    b140:	0e 4c       	mov	r12,	r14	;
    b142:	0e 59       	add	r9,	r14	;
    b144:	0f 4d       	mov	r13,	r15	;
    b146:	0f 67       	addc	r7,	r15	;
    b148:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b14a:	4c 4a       	mov.b	r10,	r12	;
    b14c:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000b150 <.Loc.330.1>:
    b150:	c6 48 18 1c 	mov.b	r8,	7192(r6); 0x1c18

0000b154 <.Loc.331.1>:
    b154:	4e 48       	mov.b	r8,	r14	;
    b156:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b158:	4c 4a       	mov.b	r10,	r12	;
    b15a:	b0 12 4a b8 	call	#-18358	;#0xb84a

0000b15e <.Loc.332.1>:
    b15e:	96 43 16 1c 	mov	#1,	7190(r6);r3 As==01, 0x1c16

0000b162 <.Loc.328.1>:
    b162:	36 50 16 1c 	add	#7190,	r6	;#0x1c16

0000b166 <.Loc.333.1>:
    b166:	5e 43       	mov.b	#1,	r14	;r3 As==01
    b168:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b16a:	4c 4a       	mov.b	r10,	r12	;
    b16c:	b0 12 94 b8 	call	#-18284	;#0xb894
    b170:	cb 3f       	jmp	$-104    	;abs 0xb108

0000b172 <.L81>:
    b172:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000b174 <.Loc.326.1>:
    b174:	56 43       	mov.b	#1,	r6	;r3 As==01
    b176:	d5 3f       	jmp	$-84     	;abs 0xb122

0000b178 <.L82>:
    b178:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000b17a <.Loc.326.1>:
    b17a:	66 43       	mov.b	#2,	r6	;r3 As==10
    b17c:	d2 3f       	jmp	$-90     	;abs 0xb122

0000b17e <stop_expire_timer>:
    b17e:	0a 15       	pushm	#1,	r10	;16-bit words

0000b180 <.LCFI24>:
    b180:	4a 4c       	mov.b	r12,	r10	;

0000b182 <.Loc.361.1>:
    b182:	b0 12 c0 af 	call	#-20544	;#0xafc0

0000b186 <.LVL104>:
    b186:	4c 4a       	mov.b	r10,	r12	;
    b188:	b0 12 86 af 	call	#-20602	;#0xaf86

0000b18c <.Loc.366.1>:
    b18c:	b0 12 fa af 	call	#-20486	;#0xaffa

0000b190 <.Loc.368.1>:
    b190:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b192:	b0 12 f6 b8 	call	#-18186	;#0xb8f6

0000b196 <.Loc.369.1>:
    b196:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b198:	b0 12 dc b9 	call	#-17956	;#0xb9dc

0000b19c <.Loc.371.1>:
    b19c:	0a 17       	popm	#1,	r10	;16-bit words

0000b19e <.LCFI25>:
    b19e:	30 41       	ret			

0000b1a0 <unpack_pdc_to_local>:
    b1a0:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000b1a4 <.LCFI26>:
    b1a4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    b1a6:	4d 43       	clr.b	r13		;
    b1a8:	0c 41       	mov	r1,	r12	;
    b1aa:	b0 12 1e ba 	call	#-17890	;#0xba1e
    b1ae:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b1b2:	0d 41       	mov	r1,	r13	;
    b1b4:	3c 40 0c 1c 	mov	#7180,	r12	;#0x1c0c
    b1b8:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000b1bc <.Loc.383.1>:
    b1bc:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000b1c0 <.LCFI27>:
    b1c0:	30 41       	ret			

0000b1c2 <refresh_pdc_timers>:
    b1c2:	2a 15       	pushm	#3,	r10	;16-bit words

0000b1c4 <.LCFI28>:
    b1c4:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    b1c8:	7d 20       	jnz	$+252    	;abs 0xb2c4

0000b1ca <.Loc.463.1>:
    b1ca:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    b1ce:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000b1d2 <.Loc.465.1>:
    b1d2:	82 48 52 1c 	mov	r8,	&0x1c52	;

0000b1d6 <.Loc.466.1>:
    b1d6:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    b1da:	54 1c 

0000b1dc <.Loc.467.1>:
    b1dc:	b0 12 a2 b7 	call	#-18526	;#0xb7a2

0000b1e0 <.Loc.471.1>:
    b1e0:	0e 48       	mov	r8,	r14	;
    b1e2:	0f 49       	mov	r9,	r15	;
    b1e4:	0e 8c       	sub	r12,	r14	;
    b1e6:	0f 7d       	subc	r13,	r15	;

0000b1e8 <.Loc.471.1>:
    b1e8:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    b1ec:	82 4f 12 1c 	mov	r15,	&0x1c12	;

0000b1f0 <.Loc.472.1>:
    b1f0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b1f2:	4c 43       	clr.b	r12		;
    b1f4:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000b1f8 <.Loc.474.1>:
    b1f8:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    b1fc:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

0000b200 <.Loc.474.1>:
    b200:	09 4d       	mov	r13,	r9	;
    b202:	0d 93       	cmp	#0,	r13	;r3 As==00
    b204:	44 34       	jge	$+138    	;abs 0xb28e

0000b206 <.Loc.474.1>:
    b206:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    b20a:	08 43       	clr	r8		;
    b20c:	08 8e       	sub	r14,	r8	;
    b20e:	0e 48       	mov	r8,	r14	;
    b210:	0f 48       	mov	r8,	r15	;
    b212:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000b216 <.Loc.474.1>:
    b216:	0f 9d       	cmp	r13,	r15	;
    b218:	04 38       	jl	$+10     	;abs 0xb222

0000b21a <.Loc.474.1>:
    b21a:	0d 9f       	cmp	r15,	r13	;
    b21c:	20 20       	jnz	$+66     	;abs 0xb25e
    b21e:	08 9c       	cmp	r12,	r8	;
    b220:	1e 2c       	jc	$+62     	;abs 0xb25e

0000b222 <.L100>:
    b222:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    b226:	08 4a       	mov	r10,	r8	;
    b228:	09 43       	clr	r9		;

0000b22a <.Loc.476.1>:
    b22a:	4e 43       	clr.b	r14		;
    b22c:	4f 43       	clr.b	r15		;
    b22e:	0e 8c       	sub	r12,	r14	;
    b230:	0f 7d       	subc	r13,	r15	;

0000b232 <.Loc.476.1>:
    b232:	0f 93       	cmp	#0,	r15	;r3 As==00
    b234:	0c 38       	jl	$+26     	;abs 0xb24e
    b236:	0f 93       	cmp	#0,	r15	;r3 As==00
    b238:	02 20       	jnz	$+6      	;abs 0xb23e
    b23a:	0e 98       	cmp	r8,	r14	;
    b23c:	08 28       	jnc	$+18     	;abs 0xb24e

0000b23e <.L101>:
    b23e:	08 9e       	cmp	r14,	r8	;
    b240:	17 20       	jnz	$+48     	;abs 0xb270
    b242:	0f 93       	cmp	#0,	r15	;r3 As==00
    b244:	15 20       	jnz	$+44     	;abs 0xb270

0000b246 <.Loc.476.1>:
    b246:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    b24a:	0e 1c 
    b24c:	11 2c       	jc	$+36     	;abs 0xb270

0000b24e <.L92>:
    b24e:	4e 43       	clr.b	r14		;
    b250:	0e 8c       	sub	r12,	r14	;
    b252:	82 4e 52 1c 	mov	r14,	&0x1c52	;

0000b256 <.L107>:
    b256:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    b25a:	54 1c 

0000b25c <.Loc.494.1>:
    b25c:	09 3c       	jmp	$+20     	;abs 0xb270

0000b25e <.L90>:
    b25e:	09 4d       	mov	r13,	r9	;
    b260:	0d 9f       	cmp	r15,	r13	;
    b262:	04 38       	jl	$+10     	;abs 0xb26c
    b264:	0f 9d       	cmp	r13,	r15	;
    b266:	04 20       	jnz	$+10     	;abs 0xb270
    b268:	0c 98       	cmp	r8,	r12	;
    b26a:	02 2c       	jc	$+6      	;abs 0xb270

0000b26c <.L102>:
    b26c:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000b270 <.L94>:
    b270:	5d 42 54 1c 	mov.b	&0x1c54,r13	;0x1c54
    b274:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b276:	b0 12 da b8 	call	#-18214	;#0xb8da

0000b27a <.Loc.497.1>:
    b27a:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    b27e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b280:	b0 12 e8 b8 	call	#-18200	;#0xb8e8

0000b284 <.Loc.500.1>:
    b284:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    b288:	b0 12 4a b7 	call	#-18614	;#0xb74a

0000b28c <.Loc.507.1>:
    b28c:	1d 3c       	jmp	$+60     	;abs 0xb2c8

0000b28e <.L88>:
    b28e:	0e 4c       	mov	r12,	r14	;
    b290:	0e dd       	bis	r13,	r14	;
    b292:	0e 93       	cmp	#0,	r14	;r3 As==00
    b294:	ed 27       	jz	$-36     	;abs 0xb270

0000b296 <.Loc.485.1>:
    b296:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    b29a:	0e 4a       	mov	r10,	r14	;
    b29c:	0f 43       	clr	r15		;

0000b29e <.Loc.485.1>:
    b29e:	0d 93       	cmp	#0,	r13	;r3 As==00
    b2a0:	0e 38       	jl	$+30     	;abs 0xb2be
    b2a2:	0d 93       	cmp	#0,	r13	;r3 As==00
    b2a4:	03 20       	jnz	$+8      	;abs 0xb2ac
    b2a6:	09 4c       	mov	r12,	r9	;
    b2a8:	0c 9e       	cmp	r14,	r12	;
    b2aa:	09 28       	jnc	$+20     	;abs 0xb2be

0000b2ac <.L103>:
    b2ac:	09 4c       	mov	r12,	r9	;
    b2ae:	0c 9e       	cmp	r14,	r12	;
    b2b0:	df 23       	jnz	$-64     	;abs 0xb270
    b2b2:	0d 9f       	cmp	r15,	r13	;
    b2b4:	dd 23       	jnz	$-68     	;abs 0xb270

0000b2b6 <.Loc.485.1>:
    b2b6:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    b2ba:	0e 1c 
    b2bc:	d9 2f       	jc	$-76     	;abs 0xb270

0000b2be <.L97>:
    b2be:	82 4c 52 1c 	mov	r12,	&0x1c52	;
    b2c2:	c9 3f       	jmp	$-108    	;abs 0xb256

0000b2c4 <.L87>:
    b2c4:	b0 12 08 b7 	call	#-18680	;#0xb708

0000b2c8 <.L86>:
    b2c8:	28 17       	popm	#3,	r10	;16-bit words

0000b2ca <.LCFI29>:
    b2ca:	30 41       	ret			

0000b2cc <set_periodic_timer>:
    b2cc:	2a 15       	pushm	#3,	r10	;16-bit words

0000b2ce <.LCFI30>:
    b2ce:	49 4c       	mov.b	r12,	r9	;
    b2d0:	0a 4d       	mov	r13,	r10	;

0000b2d2 <.Loc.392.1>:
    b2d2:	b0 12 a0 b1 	call	#-20064	;#0xb1a0

0000b2d6 <.LVL127>:
    b2d6:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    b2da:	2e 20       	jnz	$+94     	;abs 0xb338

0000b2dc <.Loc.403.1>:
    b2dc:	38 40 82 ab 	mov	#-21630,r8	;#0xab82
    b2e0:	4c 49       	mov.b	r9,	r12	;
    b2e2:	88 12       	call	r8		;
    b2e4:	0d 4a       	mov	r10,	r13	;
    b2e6:	b0 12 4e ab 	call	#-21682	;#0xab4e

0000b2ea <.Loc.404.1>:
    b2ea:	4c 49       	mov.b	r9,	r12	;
    b2ec:	88 12       	call	r8		;
    b2ee:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b2f0:	b0 12 54 ab 	call	#-21676	;#0xab54

0000b2f4 <.Loc.405.1>:
    b2f4:	0e 4a       	mov	r10,	r14	;
    b2f6:	4f 43       	clr.b	r15		;
    b2f8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b2fa:	4c 43       	clr.b	r12		;
    b2fc:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000b300 <.Loc.406.1>:
    b300:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    b304:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

0000b308 <.Loc.407.1>:
    b308:	4e 49       	mov.b	r9,	r14	;
    b30a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b30c:	4c 43       	clr.b	r12		;
    b30e:	b0 12 4a b8 	call	#-18358	;#0xb84a

0000b312 <.Loc.408.1>:
    b312:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000b316 <.Loc.409.1>:
    b316:	5e 43       	mov.b	#1,	r14	;r3 As==01
    b318:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b31a:	4c 43       	clr.b	r12		;
    b31c:	b0 12 94 b8 	call	#-18284	;#0xb894

0000b320 <.Loc.410.1>:
    b320:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

0000b324 <.L111>:
    b324:	b0 12 c2 b1 	call	#-20030	;#0xb1c2

0000b328 <.Loc.433.1>:
    b328:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b32a:	b0 12 f6 b8 	call	#-18186	;#0xb8f6

0000b32e <.Loc.434.1>:
    b32e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b330:	b0 12 dc b9 	call	#-17956	;#0xb9dc

0000b334 <.Loc.435.1>:
    b334:	28 17       	popm	#3,	r10	;16-bit words

0000b336 <.LCFI31>:
    b336:	30 41       	ret			

0000b338 <.L109>:
    b338:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    b33c:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

0000b340 <.Loc.426.1>:
    b340:	0e 4a       	mov	r10,	r14	;
    b342:	4f 43       	clr.b	r15		;
    b344:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b346:	4c 43       	clr.b	r12		;
    b348:	b0 12 f8 b7 	call	#-18440	;#0xb7f8

0000b34c <.Loc.427.1>:
    b34c:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000b350 <.Loc.428.1>:
    b350:	4e 49       	mov.b	r9,	r14	;
    b352:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b354:	4c 43       	clr.b	r12		;
    b356:	b0 12 4a b8 	call	#-18358	;#0xb84a
    b35a:	e4 3f       	jmp	$-54     	;abs 0xb324

0000b35c <clear_pdc_status>:
    b35c:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    b360:	07 20       	jnz	$+16     	;abs 0xb370

0000b362 <.Loc.516.1>:
    b362:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000b366 <.Loc.517.1>:
    b366:	4e 43       	clr.b	r14		;
    b368:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b36a:	4c 43       	clr.b	r12		;

0000b36c <.LVL144>:
    b36c:	b0 12 94 b8 	call	#-18284	;#0xb894

0000b370 <.L112>:
    b370:	30 41       	ret			

0000b372 <stop_periodic_timer>:
    b372:	0a 15       	pushm	#1,	r10	;16-bit words

0000b374 <.LCFI33>:
    b374:	4a 4c       	mov.b	r12,	r10	;

0000b376 <.Loc.440.1>:
    b376:	b0 12 a0 b1 	call	#-20064	;#0xb1a0

0000b37a <.LVL147>:
    b37a:	4c 4a       	mov.b	r10,	r12	;
    b37c:	b0 12 5c b3 	call	#-19620	;#0xb35c

0000b380 <.Loc.445.1>:
    b380:	b0 12 c2 b1 	call	#-20030	;#0xb1c2

0000b384 <.Loc.447.1>:
    b384:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b386:	b0 12 f6 b8 	call	#-18186	;#0xb8f6

0000b38a <.Loc.448.1>:
    b38a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b38c:	b0 12 dc b9 	call	#-17956	;#0xb9dc

0000b390 <.Loc.450.1>:
    b390:	0a 17       	popm	#1,	r10	;16-bit words

0000b392 <.LCFI34>:
    b392:	30 41       	ret			

0000b394 <main>:
    b394:	b0 12 46 b6 	call	#-18874	;#0xb646

0000b398 <.Loc.46.1>:
    b398:	c2 93 b4 a1 	cmp.b	#0,	&0xa1b4	;r3 As==00
    b39c:	08 20       	jnz	$+18     	;abs 0xb3ae

0000b39e <.Loc.48.1>:
    b39e:	b0 12 68 aa 	call	#-21912	;#0xaa68

0000b3a2 <.Loc.50.1>:
    b3a2:	b0 12 fc b3 	call	#-19460	;#0xb3fc

0000b3a6 <.Loc.57.1>:
    b3a6:	b0 12 34 a8 	call	#-22476	;#0xa834

0000b3aa <.Loc.59.1>:
    b3aa:	d2 43 b4 a1 	mov.b	#1,	&0xa1b4	;r3 As==01

0000b3ae <.L2>:
    b3ae:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b3b2 <.Loc.68.1>:
    b3b2:	
0000b3b4 <L0^A>:
    b3b4:	04 02       	mova	@r2,	r4	;

0000b3b6 <.Loc.68.1>:
    b3b6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b3ba <.Loc.68.1>:
    b3ba:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    b3be:	02 02 

0000b3c0 <.Loc.69.1>:
    b3c0:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    b3c4:	04 02 

0000b3c6 <.Loc.69.1>:
    b3c6:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    b3ca:	02 02 

0000b3cc <.Loc.69.1>:
    b3cc:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b3d0:	22 02 

0000b3d2 <.Loc.70.1>:
    b3d2:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    b3d6:	24 02 

0000b3d8 <.Loc.70.1>:
    b3d8:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b3dc:	22 02 

0000b3de <.Loc.70.1>:
    b3de:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    b3e2:	22 02 

0000b3e4 <.Loc.71.1>:
    b3e4:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    b3e8:	24 02 

0000b3ea <.Loc.71.1>:
    b3ea:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    b3ee:	22 02 

0000b3f0 <.Loc.71.1>:
    b3f0:	b0 12 f8 a8 	call	#-22280	;#0xa8f8

0000b3f4 <.Loc.78.1>:
    b3f4:	b0 12 94 ab 	call	#-21612	;#0xab94

0000b3f8 <.Loc.80.1>:
    b3f8:	4c 43       	clr.b	r12		;
    b3fa:	30 41       	ret			

0000b3fc <__events_boot_init>:
    b3fc:	1a 15       	pushm	#2,	r10	;16-bit words

0000b3fe <.LCFI0>:
    b3fe:	3a 40 36 a7 	mov	#-22730,r10	;#0xa736
    b402:	39 40 b6 a1 	mov	#-24138,r9	;#0xa1b6

0000b406 <.L2>:
    b406:	0c 4a       	mov	r10,	r12	;
    b408:	b0 12 28 b5 	call	#-19160	;#0xb528

0000b40c <.Loc.56.1>:
    b40c:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

0000b410 <.Loc.53.1>:
    b410:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    b414:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

0000b418 <.Loc.53.1>:
    b418:	3a 90 36 a2 	cmp	#-24010,r10	;#0xa236
    b41c:	f4 23       	jnz	$-22     	;abs 0xb406

0000b41e <.Loc.58.1>:
    b41e:	19 17       	popm	#2,	r10	;16-bit words

0000b420 <.LCFI1>:
    b420:	30 41       	ret			

0000b422 <__events_commit>:
    b422:	5c 42 42 a7 	mov.b	&0xa742,r12	;0xa742
    b426:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    b428:	13 24       	jz	$+40     	;abs 0xb450
    b42a:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    b42c:	1e 24       	jz	$+62     	;abs 0xb46a
    b42e:	0c 93       	cmp	#0,	r12	;r3 As==00
    b430:	29 20       	jnz	$+84     	;abs 0xb484

0000b432 <.Loc.65.1>:
    b432:	1d 42 40 a7 	mov	&0xa740,r13	;0xa740

0000b436 <.Loc.65.1>:
    b436:	6c 4d       	mov.b	@r13,	r12	;
    b438:	5c 06       	rlam	#2,	r12	;
    b43a:	6d 4d       	mov.b	@r13,	r13	;
    b43c:	0c 5d       	add	r13,	r12	;
    b43e:	5c 06       	rlam	#2,	r12	;
    b440:	3d 40 36 a7 	mov	#-22730,r13	;#0xa736
    b444:	3c 50 36 a2 	add	#-24010,r12	;#0xa236
    b448:	b0 12 84 b5 	call	#-19068	;#0xb584

0000b44c <.Loc.66.1>:
    b44c:	d2 43 42 a7 	mov.b	#1,	&0xa742	;r3 As==01

0000b450 <.L5>:
    b450:	1d 42 40 a7 	mov	&0xa740,r13	;0xa740

0000b454 <.Loc.68.1>:
    b454:	6c 4d       	mov.b	@r13,	r12	;
    b456:	5c 06       	rlam	#2,	r12	;
    b458:	6d 4d       	mov.b	@r13,	r13	;
    b45a:	0c 5d       	add	r13,	r12	;
    b45c:	5c 06       	rlam	#2,	r12	;
    b45e:	3c 50 36 a2 	add	#-24010,r12	;#0xa236
    b462:	b0 12 ba b5 	call	#-19014	;#0xb5ba

0000b466 <.Loc.69.1>:
    b466:	e2 43 42 a7 	mov.b	#2,	&0xa742	;r3 As==10

0000b46a <.L6>:
    b46a:	1c 42 40 a7 	mov	&0xa740,r12	;0xa740
    b46e:	1c 4c 02 00 	mov	2(r12),	r12	;

0000b472 <.Loc.72.1>:
    b472:	3c 92       	cmp	#8,	r12	;r2 As==11
    b474:	04 20       	jnz	$+10     	;abs 0xb47e

0000b476 <.Loc.73.1>:
    b476:	1c 42 40 a7 	mov	&0xa740,r12	;0xa740
    b47a:	b0 12 66 ab 	call	#-21658	;#0xab66

0000b47e <.L8>:
    b47e:	f2 40 03 00 	mov.b	#3,	&0xa742	;
    b482:	42 a7 

0000b484 <.L4>:
    b484:	30 41       	ret			

0000b486 <__event_buffer_full_ISR>:
    b486:	1d 42 40 a7 	mov	&0xa740,r13	;0xa740

0000b48a <.Loc.81.1>:
    b48a:	6c 4d       	mov.b	@r13,	r12	;

0000b48c <.LVL7>:
    b48c:	5c 06       	rlam	#2,	r12	;
    b48e:	6d 4d       	mov.b	@r13,	r13	;
    b490:	0c 5d       	add	r13,	r12	;
    b492:	5c 06       	rlam	#2,	r12	;
    b494:	3c 50 36 a2 	add	#-24010,r12	;#0xa236
    b498:	b0 12 58 b5 	call	#-19112	;#0xb558

0000b49c <.Loc.82.1>:
    b49c:	30 41       	ret			

0000b49e <__event_signal_ISR>:
    b49e:	82 4c 40 a7 	mov	r12,	&0xa740	;

0000b4a2 <.Loc.90.1>:
    b4a2:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b4a6:	3c 40 36 a7 	mov	#-22730,r12	;#0xa736

0000b4aa <.LVL10>:
    b4aa:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000b4ae <.LVL11>:
    b4ae:	c2 43 42 a7 	mov.b	#0,	&0xa742	;r3 As==00

0000b4b2 <.Loc.92.1>:
    b4b2:	b0 12 22 b4 	call	#-19422	;#0xb422

0000b4b6 <.Loc.93.1>:
    b4b6:	30 41       	ret			

0000b4b8 <__has_events>:
    b4b8:	6d 4c       	mov.b	@r12,	r13	;
    b4ba:	5d 06       	rlam	#2,	r13	;
    b4bc:	6c 4c       	mov.b	@r12,	r12	;

0000b4be <.LVL14>:
    b4be:	0c 5d       	add	r13,	r12	;
    b4c0:	5c 06       	rlam	#2,	r12	;
    b4c2:	3c 50 36 a2 	add	#-24010,r12	;#0xa236
    b4c6:	b0 12 42 b5 	call	#-19134	;#0xb542
    b4ca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b4ce <.Loc.97.1>:
    b4ce:	3c 53       	add	#-1,	r12	;r3 As==11

0000b4d0 <.Loc.101.1>:
    b4d0:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b4d4:	30 41       	ret			

0000b4d6 <__lock_event>:
    b4d6:	0a 15       	pushm	#1,	r10	;16-bit words

0000b4d8 <.LCFI2>:
    b4d8:	1c 42 40 a7 	mov	&0xa740,r12	;0xa740

0000b4dc <.LVL17>:
    b4dc:	6a 4c       	mov.b	@r12,	r10	;

0000b4de <.Loc.107.1>:
    b4de:	0c 4a       	mov	r10,	r12	;
    b4e0:	5c 06       	rlam	#2,	r12	;
    b4e2:	0c 5a       	add	r10,	r12	;
    b4e4:	5c 06       	rlam	#2,	r12	;
    b4e6:	3c 50 36 a2 	add	#-24010,r12	;#0xa236
    b4ea:	b0 12 c2 b5 	call	#-19006	;#0xb5c2

0000b4ee <.Loc.107.1>:
    b4ee:	5a 02       	rlam	#1,	r10	;
    b4f0:	8a 4c b6 a1 	mov	r12,	-24138(r10); 0xa1b6

0000b4f4 <.Loc.108.1>:
    b4f4:	1c 42 40 a7 	mov	&0xa740,r12	;0xa740
    b4f8:	6c 4c       	mov.b	@r12,	r12	;
    b4fa:	5c 02       	rlam	#1,	r12	;

0000b4fc <.Loc.109.1>:
    b4fc:	1c 4c b6 a1 	mov	-24138(r12),r12	;0xffffa1b6
    b500:	0a 17       	popm	#1,	r10	;16-bit words

0000b502 <.LCFI3>:
    b502:	30 41       	ret			

0000b504 <__release_event>:
    b504:	1d 42 40 a7 	mov	&0xa740,r13	;0xa740

0000b508 <.Loc.113.1>:
    b508:	6c 4d       	mov.b	@r13,	r12	;

0000b50a <.LVL20>:
    b50a:	5c 06       	rlam	#2,	r12	;
    b50c:	6d 4d       	mov.b	@r13,	r13	;
    b50e:	0c 5d       	add	r13,	r12	;
    b510:	5c 06       	rlam	#2,	r12	;
    b512:	3c 50 36 a2 	add	#-24010,r12	;#0xa236
    b516:	b0 12 f4 b5 	call	#-18956	;#0xb5f4

0000b51a <.Loc.114.1>:
    b51a:	1c 42 40 a7 	mov	&0xa740,r12	;0xa740
    b51e:	6c 4c       	mov.b	@r12,	r12	;
    b520:	5c 02       	rlam	#1,	r12	;
    b522:	8c 43 b6 a1 	mov	#0,	-24138(r12);r3 As==00, 0xa1b6

0000b526 <.Loc.115.1>:
    b526:	30 41       	ret			

0000b528 <__perqueue_init>:
    b528:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    b52c:	10 00 

0000b52e <.Loc.37.1>:
    b52e:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    b532:	11 00 

0000b534 <.Loc.38.1>:
    b534:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    b538:	12 00 

0000b53a <.Loc.39.1>:
    b53a:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    b53e:	13 00 

0000b540 <.Loc.40.1>:
    b540:	30 41       	ret			

0000b542 <__perqueue_is_empty>:
    b542:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    b546:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    b54a:	4c 4d       	mov.b	r13,	r12	;

0000b54c <.LVL2>:
    b54c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b550:	3c 53       	add	#-1,	r12	;r3 As==11

0000b552 <.Loc.49.1>:
    b552:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b556:	30 41       	ret			

0000b558 <__perqueue_is_full>:
    b558:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    b55c:	5d 53       	inc.b	r13		;
    b55e:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

0000b562 <.Loc.54.1>:
    b562:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    b566:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    b568:	02 20       	jnz	$+6      	;abs 0xb56e

0000b56a <.Loc.55.1>:
    b56a:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000b56e <.L4>:
    b56e:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    b572:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    b576:	4c 4d       	mov.b	r13,	r12	;

0000b578 <.LVL4>:
    b578:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b57c:	3c 53       	add	#-1,	r12	;r3 As==11

0000b57e <.Loc.64.1>:
    b57e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b582:	30 41       	ret			

0000b584 <__perqueue_push>:
    b584:	0e 4c       	mov	r12,	r14	;

0000b586 <.Loc.68.1>:
    b586:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

0000b58a <.LVL6>:
    b58a:	5c 53       	inc.b	r12		;
    b58c:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

0000b590 <.Loc.69.1>:
    b590:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    b594:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    b596:	02 20       	jnz	$+6      	;abs 0xb59c

0000b598 <.Loc.70.1>:
    b598:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

0000b59c <.L6>:
    b59c:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

0000b5a0 <.Loc.74.1>:
    b5a0:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

0000b5a4 <.Loc.75.1>:
    b5a4:	4c 43       	clr.b	r12		;

0000b5a6 <.Loc.74.1>:
    b5a6:	0b 9f       	cmp	r15,	r11	;
    b5a8:	07 24       	jz	$+16     	;abs 0xb5b8

0000b5aa <.Loc.79.1>:
    b5aa:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

0000b5ae <.Loc.79.1>:
    b5ae:	5c 02       	rlam	#1,	r12	;
    b5b0:	0e 5c       	add	r12,	r14	;

0000b5b2 <.LVL7>:
    b5b2:	8e 4d 00 00 	mov	r13,	0(r14)	;

0000b5b6 <.Loc.81.1>:
    b5b6:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000b5b8 <.L7>:
    b5b8:	30 41       	ret			

0000b5ba <__perqueue_push_commit>:
    b5ba:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    b5be:	11 00 

0000b5c0 <.Loc.89.1>:
    b5c0:	30 41       	ret			

0000b5c2 <__perqueue_pop>:
    b5c2:	0d 4c       	mov	r12,	r13	;

0000b5c4 <.Loc.93.1>:
    b5c4:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

0000b5c8 <.Loc.93.1>:
    b5c8:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000b5cc <.Loc.94.1>:
    b5cc:	4c 43       	clr.b	r12		;

0000b5ce <.LVL10>:
    b5ce:	0f 9e       	cmp	r14,	r15	;
    b5d0:	10 24       	jz	$+34     	;abs 0xb5f2

0000b5d2 <.Loc.98.1>:
    b5d2:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    b5d6:	5c 53       	inc.b	r12		;
    b5d8:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

0000b5dc <.Loc.99.1>:
    b5dc:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    b5e0:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    b5e2:	02 20       	jnz	$+6      	;abs 0xb5e8

0000b5e4 <.Loc.100.1>:
    b5e4:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

0000b5e8 <.L12>:
    b5e8:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

0000b5ec <.Loc.102.1>:
    b5ec:	5c 02       	rlam	#1,	r12	;
    b5ee:	0d 5c       	add	r12,	r13	;

0000b5f0 <.LVL11>:
    b5f0:	2c 4d       	mov	@r13,	r12	;

0000b5f2 <.L10>:
    b5f2:	30 41       	ret			

0000b5f4 <__perqueue_pop_commit>:
    b5f4:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    b5f8:	10 00 

0000b5fa <.Loc.109.1>:
    b5fa:	30 41       	ret			

0000b5fc <__dma_word_copy>:
    b5fc:	0a 15       	pushm	#1,	r10	;16-bit words

0000b5fe <.LCFI0>:
    b5fe:	21 82       	sub	#4,	r1	;r2 As==10

0000b600 <.LBB2>:
    b600:	0a 4c       	mov	r12,	r10	;
    b602:	0b 43       	clr	r11		;
    b604:	81 4a 00 00 	mov	r10,	0(r1)	;
    b608:	81 4b 02 00 	mov	r11,	2(r1)	;

0000b60c <.Loc.38.1>:
    b60c:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

0000b610 <.LVL1>:
    b610:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    b614:	00 00 

0000b616 <.LBB3>:
    b616:	0a 4d       	mov	r13,	r10	;
    b618:	0b 43       	clr	r11		;

0000b61a <.LVL2>:
    b61a:	81 4a 00 00 	mov	r10,	0(r1)	;
    b61e:	81 4b 02 00 	mov	r11,	2(r1)	;

0000b622 <.Loc.40.1>:
    b622:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    b626:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    b62a:	00 00 

0000b62c <.LBE3>:
    b62c:	82 4e 1a 05 	mov	r14,	&0x051a	;

0000b630 <.Loc.43.1>:
    b630:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    b634:	10 05 

0000b636 <.Loc.44.1>:
    b636:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    b63a:	10 05 

0000b63c <.Loc.46.1>:
    b63c:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

0000b640 <.Loc.47.1>:
    b640:	21 52       	add	#4,	r1	;r2 As==10

0000b642 <.LCFI2>:
    b642:	0a 17       	popm	#1,	r10	;16-bit words

0000b644 <.LCFI3>:
    b644:	30 41       	ret			

0000b646 <__mcu_init>:
    b646:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    b64a:	5c 01 

0000b64c <.Loc.40.1>:
    b64c:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    b650:	40 01 

0000b652 <L0^A>:
    b652:	00 3c       	jmp	$+2      	;abs 0xb654
    b654:	03 43       	nop			

0000b656 <.Loc.44.1>:
    b656:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    b65a:	41 01 

0000b65c <L0^A>:
    b65c:	00 3c       	jmp	$+2      	;abs 0xb65e
    b65e:	03 43       	nop			

0000b660 <.Loc.48.1>:
    b660:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    b664:	23 02 

0000b666 <.Loc.48.1>:
    b666:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    b66a:	25 02 

0000b66c <.Loc.48.1>:
    b66c:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    b670:	23 02 

0000b672 <.Loc.48.1>:
    b672:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

0000b676 <.Loc.49.1>:
    b676:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

0000b67a <.Loc.49.1>:
    b67a:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

0000b67e <.Loc.49.1>:
    b67e:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

0000b682 <.Loc.53.1>:
    b682:	30 41       	ret			

0000b684 <__priority_init>:
    b684:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000b688 <.Loc.83.1>:
    b688:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000b68c <.Loc.83.1>:
    b68c:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000b690 <.Loc.83.1>:
    b690:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

0000b694 <.Loc.83.1>:
    b694:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000b698 <.Loc.83.1>:
    b698:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000b69c <.Loc.83.1>:
    b69c:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000b6a0 <.Loc.83.1>:
    b6a0:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

0000b6a4 <.Loc.83.1>:
    b6a4:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000b6a8 <.Loc.88.1>:
    b6a8:	30 41       	ret			

0000b6aa <__priority_insert>:
    b6aa:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b6ae <.Loc.93.1>:
    b6ae:	0e 4c       	mov	r12,	r14	;
    b6b0:	5e 09       	rram	#3,	r14	;

0000b6b2 <.Loc.99.1>:
    b6b2:	7e f0 07 00 	and.b	#7,	r14	;

0000b6b6 <.Loc.99.1>:
    b6b6:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    b6ba:	08 00 

0000b6bc <.Loc.100.1>:
    b6bc:	0d 5e       	add	r14,	r13	;

0000b6be <.LVL12>:
    b6be:	7c f0 07 00 	and.b	#7,	r12	;

0000b6c2 <.LVL13>:
    b6c2:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    b6c6:	00 00 

0000b6c8 <.Loc.101.1>:
    b6c8:	30 41       	ret			

0000b6ca <__priority_remove>:
    b6ca:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b6ce <.Loc.106.1>:
    b6ce:	0e 4c       	mov	r12,	r14	;
    b6d0:	5e 09       	rram	#3,	r14	;

0000b6d2 <.Loc.112.1>:
    b6d2:	7e f0 07 00 	and.b	#7,	r14	;
    b6d6:	0f 4d       	mov	r13,	r15	;
    b6d8:	0f 5e       	add	r14,	r15	;

0000b6da <.Loc.112.1>:
    b6da:	7c f0 07 00 	and.b	#7,	r12	;

0000b6de <.LVL16>:
    b6de:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    b6e2:	00 00 

0000b6e4 <.Loc.114.1>:
    b6e4:	6c 4f       	mov.b	@r15,	r12	;

0000b6e6 <.Loc.114.1>:
    b6e6:	0c 93       	cmp	#0,	r12	;r3 As==00
    b6e8:	03 20       	jnz	$+8      	;abs 0xb6f0

0000b6ea <.Loc.115.1>:
    b6ea:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    b6ee:	08 00 

0000b6f0 <.L3>:
    b6f0:	30 41       	ret			

0000b6f2 <__priority_highest>:
    b6f2:	5d 4c 08 00 	mov.b	8(r12),	r13	;

0000b6f6 <.LVL18>:
    b6f6:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

0000b6fa <.LVL19>:
    b6fa:	0c 5d       	add	r13,	r12	;

0000b6fc <.LVL20>:
    b6fc:	6e 4c       	mov.b	@r12,	r14	;

0000b6fe <.Loc.127.1>:
    b6fe:	0c 4d       	mov	r13,	r12	;
    b700:	5c 0a       	rlam	#3,	r12	;

0000b702 <.Loc.128.1>:
    b702:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    b706:	30 41       	ret			

0000b708 <stop_timer>:
    b708:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

0000b70c <.Loc.157.1>:
    b70c:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000b710 <.Loc.158.1>:
    b710:	30 41       	ret			

0000b712 <timerA2_init>:
    b712:	b0 12 08 b7 	call	#-18680	;#0xb708
    b716:	30 41       	ret			

0000b718 <set_timer_wkup>:
    b718:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000b71c <.Loc.179.1>:
    b71c:	82 4c 52 03 	mov	r12,	&0x0352	;

0000b720 <.Loc.180.1>:
    b720:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    b724:	42 03 

0000b726 <.Loc.181.1>:
    b726:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    b72a:	40 03 

0000b72c <.Loc.182.1>:
    b72c:	30 41       	ret			

0000b72e <set_timer_xpr>:
    b72e:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000b732 <.Loc.186.1>:
    b732:	82 4c 12 04 	mov	r12,	&0x0412	;

0000b736 <.Loc.187.1>:
    b736:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    b73a:	02 04 

0000b73c <.Loc.188.1>:
    b73c:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    b740:	00 04 

0000b742 <.Loc.190.1>:
    b742:	30 41       	ret			

0000b744 <stop_timer_xpr>:
    b744:	b0 12 08 b7 	call	#-18680	;#0xb708
    b748:	30 41       	ret			

0000b74a <set_timer_pdc>:
    b74a:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

0000b74e <.Loc.202.1>:
    b74e:	82 4c 92 03 	mov	r12,	&0x0392	;

0000b752 <.Loc.203.1>:
    b752:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    b756:	82 03 

0000b758 <.Loc.204.1>:
    b758:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    b75c:	80 03 

0000b75e <.Loc.205.1>:
    b75e:	30 41       	ret			

0000b760 <__setup_rtc>:
    b760:	30 41       	ret			

0000b762 <__setup_clock>:
    b762:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    b766:	61 01 

0000b768 <.Loc.253.1>:
    b768:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    b76c:	64 01 

0000b76e <.Loc.254.1>:
    b76e:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000b772 <.Loc.255.1>:
    b772:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

0000b776 <.Loc.257.1>:
    b776:	30 41       	ret			

0000b778 <__get_rtc_time>:
    b778:	4c 43       	clr.b	r12		;
    b77a:	4d 43       	clr.b	r13		;
    b77c:	30 41       	ret			

0000b77e <__get_time_init>:
    b77e:	82 43 44 a7 	mov	#0,	&0xa744	;r3 As==00
    b782:	82 43 46 a7 	mov	#0,	&0xa746	;r3 As==00

0000b786 <.Loc.337.1>:
    b786:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000b78a <.Loc.339.1>:
    b78a:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    b78e:	40 04 

0000b790 <.Loc.341.1>:
    b790:	03 43       	nop			
    b792:	32 d2       	eint			
    b794:	03 43       	nop			

0000b796 <.Loc.342.1>:
    b796:	30 41       	ret			

0000b798 <__get_time_stop>:
    b798:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000b79c <.Loc.350.1>:
    b79c:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000b7a0 <.Loc.351.1>:
    b7a0:	30 41       	ret			

0000b7a2 <__get_time>:
    b7a2:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    b7a6:	40 04 

0000b7a8 <.Loc.363.1>:
    b7a8:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000b7ac <.Loc.365.1>:
    b7ac:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    b7b0:	40 04 

0000b7b2 <.Loc.369.1>:
    b7b2:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    b7b6:	b0 12 72 bd 	call	#-17038	;#0xbd72

0000b7ba <.Loc.370.1>:
    b7ba:	1c 52 44 a7 	add	&0xa744,r12	;0xa744
    b7be:	1d 62 46 a7 	addc	&0xa746,r13	;0xa746
    b7c2:	30 41       	ret			

0000b7c4 <isr_TIMER3_A1_VECTOR>:
    b7c4:	b2 50 aa 00 	add	#170,	&0xa744	;#0x00aa
    b7c8:	44 a7 
    b7ca:	b2 60 0a 00 	addc	#10,	&0xa746	;#0x000a
    b7ce:	46 a7 

0000b7d0 <.Loc.380.1>:
    b7d0:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

0000b7d4 <.Loc.381.1>:
    b7d4:	00 13       	reti			

0000b7d6 <_pers_timer_init>:
    b7d6:	3c 40 48 a7 	mov	#-22712,r12	;#0xa748
    b7da:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000b7de <.Loc.34.1>:
    b7de:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

0000b7e2 <.Loc.34.1>:
    b7e2:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

0000b7e6 <.Loc.34.1>:
    b7e6:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000b7ea <.Loc.38.1>:
    b7ea:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000b7ee <.Loc.38.1>:
    b7ee:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

0000b7f2 <.Loc.38.1>:
    b7f2:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

0000b7f6 <.Loc.42.1>:
    b7f6:	30 41       	ret			

0000b7f8 <_pers_timer_update_data>:
    b7f8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b7fc <.Loc.50.1>:
    b7fc:	1d 93       	cmp	#1,	r13	;r3 As==01
    b7fe:	1a 24       	jz	$+54     	;abs 0xb834
    b800:	2d 93       	cmp	#2,	r13	;r3 As==10
    b802:	0d 24       	jz	$+28     	;abs 0xb81e
    b804:	0d 93       	cmp	#0,	r13	;r3 As==00
    b806:	0a 20       	jnz	$+22     	;abs 0xb81c

0000b808 <.Loc.53.1>:
    b808:	0d 4c       	mov	r12,	r13	;

0000b80a <.LVL9>:
    b80a:	5d 06       	rlam	#2,	r13	;
    b80c:	0c 5d       	add	r13,	r12	;

0000b80e <.LVL10>:
    b80e:	5c 02       	rlam	#1,	r12	;
    b810:	8c 4e b0 a7 	mov	r14,	-22608(r12); 0xa7b0
    b814:	8c 4f b2 a7 	mov	r15,	-22606(r12); 0xa7b2

0000b818 <.Loc.54.1>:
    b818:	9c 43 b4 a7 	mov	#1,	-22604(r12);r3 As==01, 0xa7b4

0000b81c <.L2>:
    b81c:	30 41       	ret			

0000b81e <.L4>:
    b81e:	0d 4c       	mov	r12,	r13	;

0000b820 <.LVL12>:
    b820:	5d 06       	rlam	#2,	r13	;
    b822:	0c 5d       	add	r13,	r12	;
    b824:	5c 02       	rlam	#1,	r12	;
    b826:	8c 4e ce a7 	mov	r14,	-22578(r12); 0xa7ce
    b82a:	8c 4f d0 a7 	mov	r15,	-22576(r12); 0xa7d0

0000b82e <.Loc.58.1>:
    b82e:	9c 43 d2 a7 	mov	#1,	-22574(r12);r3 As==01, 0xa7d2
    b832:	f4 3f       	jmp	$-22     	;abs 0xb81c

0000b834 <.L3>:
    b834:	0d 4c       	mov	r12,	r13	;

0000b836 <.LVL14>:
    b836:	5d 06       	rlam	#2,	r13	;
    b838:	0c 5d       	add	r13,	r12	;
    b83a:	5c 02       	rlam	#1,	r12	;
    b83c:	8c 4e ec a7 	mov	r14,	-22548(r12); 0xa7ec
    b840:	8c 4f ee a7 	mov	r15,	-22546(r12); 0xa7ee

0000b844 <.Loc.62.1>:
    b844:	9c 43 f0 a7 	mov	#1,	-22544(r12);r3 As==01, 0xa7f0

0000b848 <.Loc.63.1>:
    b848:	e9 3f       	jmp	$-44     	;abs 0xb81c

0000b84a <_pers_timer_update_thread_id>:
    b84a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b84e:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000b852 <.Loc.73.1>:
    b852:	1d 93       	cmp	#1,	r13	;r3 As==01
    b854:	16 24       	jz	$+46     	;abs 0xb882
    b856:	2d 93       	cmp	#2,	r13	;r3 As==10
    b858:	0b 24       	jz	$+24     	;abs 0xb870
    b85a:	0d 93       	cmp	#0,	r13	;r3 As==00
    b85c:	08 20       	jnz	$+18     	;abs 0xb86e

0000b85e <.Loc.76.1>:
    b85e:	0d 4c       	mov	r12,	r13	;

0000b860 <.LVL16>:
    b860:	5d 06       	rlam	#2,	r13	;
    b862:	0c 5d       	add	r13,	r12	;

0000b864 <.LVL17>:
    b864:	5c 02       	rlam	#1,	r12	;
    b866:	cc 4e ae a7 	mov.b	r14,	-22610(r12); 0xa7ae

0000b86a <.Loc.77.1>:
    b86a:	9c 43 b4 a7 	mov	#1,	-22604(r12);r3 As==01, 0xa7b4

0000b86e <.L7>:
    b86e:	30 41       	ret			

0000b870 <.L9>:
    b870:	0d 4c       	mov	r12,	r13	;

0000b872 <.LVL19>:
    b872:	5d 06       	rlam	#2,	r13	;
    b874:	0c 5d       	add	r13,	r12	;
    b876:	5c 02       	rlam	#1,	r12	;
    b878:	cc 4e cc a7 	mov.b	r14,	-22580(r12); 0xa7cc

0000b87c <.Loc.81.1>:
    b87c:	9c 43 d2 a7 	mov	#1,	-22574(r12);r3 As==01, 0xa7d2
    b880:	f6 3f       	jmp	$-18     	;abs 0xb86e

0000b882 <.L8>:
    b882:	0d 4c       	mov	r12,	r13	;

0000b884 <.LVL21>:
    b884:	5d 06       	rlam	#2,	r13	;
    b886:	0c 5d       	add	r13,	r12	;
    b888:	5c 02       	rlam	#1,	r12	;
    b88a:	cc 4e ea a7 	mov.b	r14,	-22550(r12); 0xa7ea

0000b88e <.Loc.85.1>:
    b88e:	9c 43 f0 a7 	mov	#1,	-22544(r12);r3 As==01, 0xa7f0

0000b892 <.Loc.86.1>:
    b892:	ed 3f       	jmp	$-36     	;abs 0xb86e

0000b894 <_pers_timer_update_status>:
    b894:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b898 <.Loc.95.1>:
    b898:	1d 93       	cmp	#1,	r13	;r3 As==01
    b89a:	16 24       	jz	$+46     	;abs 0xb8c8
    b89c:	2d 93       	cmp	#2,	r13	;r3 As==10
    b89e:	0b 24       	jz	$+24     	;abs 0xb8b6
    b8a0:	0d 93       	cmp	#0,	r13	;r3 As==00
    b8a2:	08 20       	jnz	$+18     	;abs 0xb8b4

0000b8a4 <.Loc.98.1>:
    b8a4:	0d 4c       	mov	r12,	r13	;

0000b8a6 <.LVL23>:
    b8a6:	5d 06       	rlam	#2,	r13	;
    b8a8:	0c 5d       	add	r13,	r12	;

0000b8aa <.LVL24>:
    b8aa:	5c 02       	rlam	#1,	r12	;
    b8ac:	8c 4e ac a7 	mov	r14,	-22612(r12); 0xa7ac

0000b8b0 <.Loc.99.1>:
    b8b0:	9c 43 b4 a7 	mov	#1,	-22604(r12);r3 As==01, 0xa7b4

0000b8b4 <.L12>:
    b8b4:	30 41       	ret			

0000b8b6 <.L14>:
    b8b6:	0d 4c       	mov	r12,	r13	;

0000b8b8 <.LVL26>:
    b8b8:	5d 06       	rlam	#2,	r13	;
    b8ba:	0c 5d       	add	r13,	r12	;
    b8bc:	5c 02       	rlam	#1,	r12	;
    b8be:	8c 4e ca a7 	mov	r14,	-22582(r12); 0xa7ca

0000b8c2 <.Loc.103.1>:
    b8c2:	9c 43 d2 a7 	mov	#1,	-22574(r12);r3 As==01, 0xa7d2
    b8c6:	f6 3f       	jmp	$-18     	;abs 0xb8b4

0000b8c8 <.L13>:
    b8c8:	0d 4c       	mov	r12,	r13	;

0000b8ca <.LVL28>:
    b8ca:	5d 06       	rlam	#2,	r13	;
    b8cc:	0c 5d       	add	r13,	r12	;
    b8ce:	5c 02       	rlam	#1,	r12	;
    b8d0:	8c 4e e8 a7 	mov	r14,	-22552(r12); 0xa7e8

0000b8d4 <.Loc.107.1>:
    b8d4:	9c 43 f0 a7 	mov	#1,	-22544(r12);r3 As==01, 0xa7f0

0000b8d8 <.Loc.108.1>:
    b8d8:	ed 3f       	jmp	$-36     	;abs 0xb8b4

0000b8da <_pers_timer_update_nxt_thread>:
    b8da:	0e 4c       	mov	r12,	r14	;
    b8dc:	5e 0a       	rlam	#3,	r14	;
    b8de:	ce 4d f4 a7 	mov.b	r13,	-22540(r14); 0xa7f4

0000b8e2 <.Loc.118.1>:
    b8e2:	9e 43 f8 a7 	mov	#1,	-22536(r14);r3 As==01, 0xa7f8

0000b8e6 <.Loc.119.1>:
    b8e6:	30 41       	ret			

0000b8e8 <_pers_timer_update_nxt_time>:
    b8e8:	0e 4c       	mov	r12,	r14	;
    b8ea:	5e 0a       	rlam	#3,	r14	;
    b8ec:	8e 4d f6 a7 	mov	r13,	-22538(r14); 0xa7f6

0000b8f0 <.Loc.124.1>:
    b8f0:	9e 43 f8 a7 	mov	#1,	-22536(r14);r3 As==01, 0xa7f8

0000b8f4 <.Loc.125.1>:
    b8f4:	30 41       	ret			

0000b8f6 <_pers_timer_update_lock>:
    b8f6:	1c 93       	cmp	#1,	r12	;r3 As==01
    b8f8:	0a 24       	jz	$+22     	;abs 0xb90e
    b8fa:	2c 93       	cmp	#2,	r12	;r3 As==10
    b8fc:	05 24       	jz	$+12     	;abs 0xb908
    b8fe:	0c 93       	cmp	#0,	r12	;r3 As==00
    b900:	02 20       	jnz	$+6      	;abs 0xb906

0000b902 <.Loc.132.1>:
    b902:	92 43 10 a8 	mov	#1,	&0xa810	;r3 As==01

0000b906 <.L19>:
    b906:	30 41       	ret			

0000b908 <.L21>:
    b908:	92 43 12 a8 	mov	#1,	&0xa812	;r3 As==01

0000b90c <.Loc.136.1>:
    b90c:	fc 3f       	jmp	$-6      	;abs 0xb906

0000b90e <.L20>:
    b90e:	92 43 14 a8 	mov	#1,	&0xa814	;r3 As==01

0000b912 <.Loc.139.1>:
    b912:	f9 3f       	jmp	$-12     	;abs 0xb906

0000b914 <_commit_timer_buffers>:
    b914:	1a 15       	pushm	#2,	r10	;16-bit words

0000b916 <.LCFI0>:
    b916:	0a 4c       	mov	r12,	r10	;

0000b918 <.Loc.151.1>:
    b918:	1c 93       	cmp	#1,	r12	;r3 As==01
    b91a:	52 24       	jz	$+166    	;abs 0xb9c0
    b91c:	2c 93       	cmp	#2,	r12	;r3 As==10
    b91e:	39 24       	jz	$+116    	;abs 0xb992
    b920:	0c 93       	cmp	#0,	r12	;r3 As==00
    b922:	16 20       	jnz	$+46     	;abs 0xb950
    b924:	3f 40 48 a7 	mov	#-22712,r15	;#0xa748
    b928:	39 40 66 a7 	mov	#-22682,r9	;#0xa766

0000b92c <.L28>:
    b92c:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    b930:	0b 20       	jnz	$+24     	;abs 0xb948

0000b932 <.Loc.160.1>:
    b932:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b936:	0d 4f       	mov	r15,	r13	;
    b938:	3d 50 64 00 	add	#100,	r13	;#0x0064
    b93c:	0c 4f       	mov	r15,	r12	;
    b93e:	b0 12 8a bd 	call	#-17014	;#0xbd8a
    b942:	0f 4c       	mov	r12,	r15	;

0000b944 <.Loc.161.1>:
    b944:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

0000b948 <.L27>:
    b948:	3f 50 0a 00 	add	#10,	r15	;#0x000a

0000b94c <.Loc.155.1>:
    b94c:	09 9f       	cmp	r15,	r9	;
    b94e:	ee 23       	jnz	$-34     	;abs 0xb92c

0000b950 <.L26>:
    b950:	7f 40 03 00 	mov.b	#3,	r15	;

0000b954 <.L33>:
    b954:	0c 4a       	mov	r10,	r12	;
    b956:	5c 0a       	rlam	#3,	r12	;

0000b958 <.Loc.193.1>:
    b958:	9c 93 f8 a7 	cmp	#1,	-22536(r12);r3 As==01, 0xa7f8
    b95c:	13 20       	jnz	$+40     	;abs 0xb984

0000b95e <.Loc.195.1>:
    b95e:	0c 4a       	mov	r10,	r12	;
    b960:	5c 0a       	rlam	#3,	r12	;
    b962:	0d 4c       	mov	r12,	r13	;
    b964:	3d 50 48 a7 	add	#-22712,r13	;#0xa748
    b968:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    b96c:	46 00 
    b96e:	9c 4c f4 a7 	mov	-22540(r12),-22640(r12);0xffffa7f4, 0xa790
    b972:	90 a7 
    b974:	9c 4c f6 a7 	mov	-22538(r12),-22638(r12);0xffffa7f6, 0xa792
    b978:	92 a7 
    b97a:	9c 4c f8 a7 	mov	-22536(r12),-22636(r12);0xffffa7f8, 0xa794
    b97e:	94 a7 

0000b980 <.Loc.197.1>:
    b980:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

0000b984 <.L32>:
    b984:	4c 4f       	mov.b	r15,	r12	;
    b986:	7c 53       	add.b	#-1,	r12	;r3 As==11
    b988:	4f 4c       	mov.b	r12,	r15	;

0000b98a <.Loc.191.1>:
    b98a:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b98c:	e3 23       	jnz	$-56     	;abs 0xb954

0000b98e <.Loc.201.1>:
    b98e:	19 17       	popm	#2,	r10	;16-bit words

0000b990 <.LCFI1>:
    b990:	30 41       	ret			

0000b992 <.L25>:
    b992:	39 40 48 a7 	mov	#-22712,r9	;#0xa748

0000b996 <.L30>:
    b996:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    b99a:	0c 20       	jnz	$+26     	;abs 0xb9b4

0000b99c <.Loc.171.1>:
    b99c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b9a0:	0d 49       	mov	r9,	r13	;
    b9a2:	3d 50 82 00 	add	#130,	r13	;#0x0082
    b9a6:	0c 49       	mov	r9,	r12	;
    b9a8:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    b9ac:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000b9b0 <.Loc.172.1>:
    b9b0:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

0000b9b4 <.L29>:
    b9b4:	39 50 0a 00 	add	#10,	r9	;#0x000a

0000b9b8 <.Loc.166.1>:
    b9b8:	39 90 66 a7 	cmp	#-22682,r9	;#0xa766
    b9bc:	ec 23       	jnz	$-38     	;abs 0xb996
    b9be:	c8 3f       	jmp	$-110    	;abs 0xb950

0000b9c0 <.L24>:
    b9c0:	92 93 f0 a7 	cmp	#1,	&0xa7f0	;r3 As==01
    b9c4:	c5 23       	jnz	$-116    	;abs 0xb950

0000b9c6 <.Loc.182.1>:
    b9c6:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b9ca:	3d 40 e8 a7 	mov	#-22552,r13	;#0xa7e8
    b9ce:	3c 40 84 a7 	mov	#-22652,r12	;#0xa784
    b9d2:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000b9d6 <.Loc.183.1>:
    b9d6:	82 43 8c a7 	mov	#0,	&0xa78c	;r3 As==00

0000b9da <.Loc.177.1>:
    b9da:	ba 3f       	jmp	$-138    	;abs 0xb950

0000b9dc <_pers_timer_commit>:
    b9dc:	1c 93       	cmp	#1,	r12	;r3 As==01
    b9de:	16 24       	jz	$+46     	;abs 0xba0c
    b9e0:	2c 93       	cmp	#2,	r12	;r3 As==10
    b9e2:	0b 24       	jz	$+24     	;abs 0xb9fa
    b9e4:	0c 93       	cmp	#0,	r12	;r3 As==00
    b9e6:	08 20       	jnz	$+18     	;abs 0xb9f8

0000b9e8 <.Loc.207.1>:
    b9e8:	1d 42 10 a8 	mov	&0xa810,r13	;0xa810

0000b9ec <.Loc.207.1>:
    b9ec:	1d 93       	cmp	#1,	r13	;r3 As==01
    b9ee:	04 20       	jnz	$+10     	;abs 0xb9f8

0000b9f0 <.Loc.209.1>:
    b9f0:	b0 12 14 b9 	call	#-18156	;#0xb914

0000b9f4 <.LVL43>:
    b9f4:	a2 43 10 a8 	mov	#2,	&0xa810	;r3 As==10

0000b9f8 <.L39>:
    b9f8:	30 41       	ret			

0000b9fa <.L41>:
    b9fa:	1d 42 12 a8 	mov	&0xa812,r13	;0xa812

0000b9fe <.Loc.214.1>:
    b9fe:	1d 93       	cmp	#1,	r13	;r3 As==01
    ba00:	fb 23       	jnz	$-8      	;abs 0xb9f8

0000ba02 <.Loc.216.1>:
    ba02:	b0 12 14 b9 	call	#-18156	;#0xb914

0000ba06 <.LVL45>:
    ba06:	a2 43 12 a8 	mov	#2,	&0xa812	;r3 As==10
    ba0a:	f6 3f       	jmp	$-18     	;abs 0xb9f8

0000ba0c <.L40>:
    ba0c:	1d 42 14 a8 	mov	&0xa814,r13	;0xa814

0000ba10 <.Loc.220.1>:
    ba10:	1d 93       	cmp	#1,	r13	;r3 As==01
    ba12:	f2 23       	jnz	$-26     	;abs 0xb9f8

0000ba14 <.Loc.222.1>:
    ba14:	b0 12 14 b9 	call	#-18156	;#0xb914

0000ba18 <.LVL47>:
    ba18:	a2 43 14 a8 	mov	#2,	&0xa814	;r3 As==10

0000ba1c <.Loc.230.1>:
    ba1c:	ed 3f       	jmp	$-36     	;abs 0xb9f8

0000ba1e <_pers_timer_get>:
    ba1e:	0a 15       	pushm	#1,	r10	;16-bit words

0000ba20 <.LCFI3>:
    ba20:	0a 4c       	mov	r12,	r10	;
    ba22:	4f 4d       	mov.b	r13,	r15	;

0000ba24 <.Loc.233.1>:
    ba24:	0d 4f       	mov	r15,	r13	;
    ba26:	5d 06       	rlam	#2,	r13	;

0000ba28 <.LVL49>:
    ba28:	0d 5f       	add	r15,	r13	;
    ba2a:	5d 02       	rlam	#1,	r13	;

0000ba2c <.Loc.233.1>:
    ba2c:	1e 93       	cmp	#1,	r14	;r3 As==01
    ba2e:	0b 24       	jz	$+24     	;abs 0xba46
    ba30:	2e 93       	cmp	#2,	r14	;r3 As==10
    ba32:	0e 20       	jnz	$+30     	;abs 0xba50

0000ba34 <.Loc.238.1>:
    ba34:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000ba38 <.LVL50>:
    ba38:	3d 50 66 a7 	add	#-22682,r13	;#0xa766

0000ba3c <.L47>:
    ba3c:	b0 12 8a bd 	call	#-17014	;#0xbd8a

0000ba40 <.LVL51>:
    ba40:	0c 4a       	mov	r10,	r12	;
    ba42:	0a 17       	popm	#1,	r10	;16-bit words

0000ba44 <.LCFI4>:
    ba44:	30 41       	ret			

0000ba46 <.L44>:
    ba46:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000ba4a <.LVL53>:
    ba4a:	3d 50 84 a7 	add	#-22652,r13	;#0xa784
    ba4e:	f6 3f       	jmp	$-18     	;abs 0xba3c

0000ba50 <.L45>:
    ba50:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000ba54 <.LVL55>:
    ba54:	3d 50 48 a7 	add	#-22712,r13	;#0xa748
    ba58:	f1 3f       	jmp	$-28     	;abs 0xba3c

0000ba5a <_pers_timer_get_data>:
    ba5a:	4e 4c       	mov.b	r12,	r14	;

0000ba5c <.Loc.249.1>:
    ba5c:	1d 93       	cmp	#1,	r13	;r3 As==01
    ba5e:	13 24       	jz	$+40     	;abs 0xba86
    ba60:	2d 93       	cmp	#2,	r13	;r3 As==10
    ba62:	0a 24       	jz	$+22     	;abs 0xba78
    ba64:	4c 43       	clr.b	r12		;

0000ba66 <.LVL57>:
    ba66:	0d 93       	cmp	#0,	r13	;r3 As==00
    ba68:	06 20       	jnz	$+14     	;abs 0xba76

0000ba6a <.Loc.252.1>:
    ba6a:	0c 4e       	mov	r14,	r12	;
    ba6c:	5c 06       	rlam	#2,	r12	;
    ba6e:	0c 5e       	add	r14,	r12	;
    ba70:	5c 02       	rlam	#1,	r12	;
    ba72:	1c 4c 4c a7 	mov	-22708(r12),r12	;0xffffa74c

0000ba76 <.L48>:
    ba76:	30 41       	ret			

0000ba78 <.L50>:
    ba78:	0c 4e       	mov	r14,	r12	;

0000ba7a <.LVL59>:
    ba7a:	5c 06       	rlam	#2,	r12	;
    ba7c:	0c 5e       	add	r14,	r12	;
    ba7e:	5c 02       	rlam	#1,	r12	;
    ba80:	1c 4c 6a a7 	mov	-22678(r12),r12	;0xffffa76a
    ba84:	f8 3f       	jmp	$-14     	;abs 0xba76

0000ba86 <.L49>:
    ba86:	0c 4e       	mov	r14,	r12	;

0000ba88 <.LVL61>:
    ba88:	5c 06       	rlam	#2,	r12	;
    ba8a:	0c 5e       	add	r14,	r12	;
    ba8c:	5c 02       	rlam	#1,	r12	;
    ba8e:	1c 4c 88 a7 	mov	-22648(r12),r12	;0xffffa788
    ba92:	f1 3f       	jmp	$-28     	;abs 0xba76

0000ba94 <_pers_timer_get_thread_id>:
    ba94:	4e 4c       	mov.b	r12,	r14	;

0000ba96 <.Loc.266.1>:
    ba96:	1d 93       	cmp	#1,	r13	;r3 As==01
    ba98:	13 24       	jz	$+40     	;abs 0xbac0
    ba9a:	2d 93       	cmp	#2,	r13	;r3 As==10
    ba9c:	0a 24       	jz	$+22     	;abs 0xbab2
    ba9e:	4c 43       	clr.b	r12		;

0000baa0 <.LVL63>:
    baa0:	0d 93       	cmp	#0,	r13	;r3 As==00
    baa2:	06 20       	jnz	$+14     	;abs 0xbab0

0000baa4 <.Loc.269.1>:
    baa4:	0c 4e       	mov	r14,	r12	;
    baa6:	5c 06       	rlam	#2,	r12	;
    baa8:	0c 5e       	add	r14,	r12	;
    baaa:	5c 02       	rlam	#1,	r12	;
    baac:	5c 4c 4a a7 	mov.b	-22710(r12),r12	;0xffffa74a

0000bab0 <.L56>:
    bab0:	30 41       	ret			

0000bab2 <.L55>:
    bab2:	0c 4e       	mov	r14,	r12	;

0000bab4 <.LVL65>:
    bab4:	5c 06       	rlam	#2,	r12	;
    bab6:	0c 5e       	add	r14,	r12	;
    bab8:	5c 02       	rlam	#1,	r12	;
    baba:	5c 4c 68 a7 	mov.b	-22680(r12),r12	;0xffffa768
    babe:	f8 3f       	jmp	$-14     	;abs 0xbab0

0000bac0 <.L54>:
    bac0:	0c 4e       	mov	r14,	r12	;

0000bac2 <.LVL67>:
    bac2:	5c 06       	rlam	#2,	r12	;
    bac4:	0c 5e       	add	r14,	r12	;
    bac6:	5c 02       	rlam	#1,	r12	;
    bac8:	5c 4c 86 a7 	mov.b	-22650(r12),r12	;0xffffa786
    bacc:	f1 3f       	jmp	$-28     	;abs 0xbab0

0000bace <_pers_timer_get_status>:
    bace:	4e 4c       	mov.b	r12,	r14	;

0000bad0 <.Loc.283.1>:
    bad0:	1d 93       	cmp	#1,	r13	;r3 As==01
    bad2:	13 24       	jz	$+40     	;abs 0xbafa
    bad4:	2d 93       	cmp	#2,	r13	;r3 As==10
    bad6:	0a 24       	jz	$+22     	;abs 0xbaec
    bad8:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bada <.LVL69>:
    bada:	0d 93       	cmp	#0,	r13	;r3 As==00
    badc:	06 20       	jnz	$+14     	;abs 0xbaea

0000bade <.Loc.286.1>:
    bade:	0c 4e       	mov	r14,	r12	;
    bae0:	5c 06       	rlam	#2,	r12	;
    bae2:	0c 5e       	add	r14,	r12	;
    bae4:	5c 02       	rlam	#1,	r12	;
    bae6:	1c 4c 48 a7 	mov	-22712(r12),r12	;0xffffa748

0000baea <.L58>:
    baea:	30 41       	ret			

0000baec <.L60>:
    baec:	0c 4e       	mov	r14,	r12	;

0000baee <.LVL71>:
    baee:	5c 06       	rlam	#2,	r12	;
    baf0:	0c 5e       	add	r14,	r12	;
    baf2:	5c 02       	rlam	#1,	r12	;
    baf4:	1c 4c 66 a7 	mov	-22682(r12),r12	;0xffffa766
    baf8:	f8 3f       	jmp	$-14     	;abs 0xbaea

0000bafa <.L59>:
    bafa:	0c 4e       	mov	r14,	r12	;

0000bafc <.LVL73>:
    bafc:	5c 06       	rlam	#2,	r12	;
    bafe:	0c 5e       	add	r14,	r12	;
    bb00:	5c 02       	rlam	#1,	r12	;
    bb02:	1c 4c 84 a7 	mov	-22652(r12),r12	;0xffffa784
    bb06:	f1 3f       	jmp	$-28     	;abs 0xbaea

0000bb08 <_pers_timer_get_nxt_thread>:
    bb08:	5c 0a       	rlam	#3,	r12	;

0000bb0a <.LVL75>:
    bb0a:	5c 4c 90 a7 	mov.b	-22640(r12),r12	;0xffffa790
    bb0e:	30 41       	ret			

0000bb10 <_pers_timer_get_nxt_time>:
    bb10:	5c 0a       	rlam	#3,	r12	;

0000bb12 <.LVL77>:
    bb12:	1c 4c 92 a7 	mov	-22638(r12),r12	;0xffffa792
    bb16:	30 41       	ret			

0000bb18 <GPIO_setAsOutputPin>:
    bb18:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bb1c <.Loc.113.1>:
    bb1c:	0e 4c       	mov	r12,	r14	;
    bb1e:	5e 02       	rlam	#1,	r14	;
    bb20:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bb24 <.Loc.122.1>:
    bb24:	1c b3       	bit	#1,	r12	;r3 As==01
    bb26:	02 20       	jnz	$+6      	;abs 0xbb2c

0000bb28 <.Loc.123.1>:
    bb28:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bb2c <.L2>:
    bb2c:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000bb30 <.Loc.127.1>:
    bb30:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000bb34 <.Loc.128.1>:
    bb34:	8e dd 04 00 	bis	r13,	4(r14)	;

0000bb38 <.Loc.130.1>:
    bb38:	30 41       	ret			

0000bb3a <GPIO_setAsInputPin>:
    bb3a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bb3e <.Loc.135.1>:
    bb3e:	0e 4c       	mov	r12,	r14	;

0000bb40 <L0^A>:
    bb40:	5e 02       	rlam	#1,	r14	;
    bb42:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bb46 <.Loc.144.1>:
    bb46:	1c b3       	bit	#1,	r12	;r3 As==01
    bb48:	02 20       	jnz	$+6      	;abs 0xbb4e

0000bb4a <.Loc.145.1>:
    bb4a:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bb4e <.L5>:
    bb4e:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000bb52 <.Loc.149.1>:
    bb52:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000bb56 <.Loc.150.1>:
    bb56:	8e cd 04 00 	bic	r13,	4(r14)	;

0000bb5a <.Loc.151.1>:
    bb5a:	8e cd 06 00 	bic	r13,	6(r14)	;

0000bb5e <.Loc.152.1>:
    bb5e:	30 41       	ret			

0000bb60 <GPIO_setAsPeripheralModuleFunctionOutputPin>:
    bb60:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    bb64:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000bb68 <.Loc.158.1>:
    bb68:	0f 4c       	mov	r12,	r15	;
    bb6a:	5f 02       	rlam	#1,	r15	;
    bb6c:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000bb70 <.Loc.167.1>:
    bb70:	1c b3       	bit	#1,	r12	;r3 As==01
    bb72:	02 20       	jnz	$+6      	;abs 0xbb78

0000bb74 <.Loc.168.1>:
    bb74:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bb78 <.L7>:
    bb78:	8f dd 04 00 	bis	r13,	4(r15)	;

0000bb7c <.Loc.172.1>:
    bb7c:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    bb7e:	10 24       	jz	$+34     	;abs 0xbba0
    bb80:	7e 90 03 00 	cmp.b	#3,	r14	;
    bb84:	08 24       	jz	$+18     	;abs 0xbb96
    bb86:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    bb88:	01 24       	jz	$+4      	;abs 0xbb8c

0000bb8a <.Loc.186.1>:
    bb8a:	30 41       	ret			

0000bb8c <.L11>:
    bb8c:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000bb90 <.Loc.175.1>:
    bb90:	8f cd 0c 00 	bic	r13,	12(r15)	; 0x000c

0000bb94 <.Loc.176.1>:
    bb94:	30 41       	ret			

0000bb96 <.L9>:
    bb96:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000bb9a <.Loc.183.1>:
    bb9a:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000bb9e <.Loc.184.1>:
    bb9e:	30 41       	ret			

0000bba0 <.L8>:
    bba0:	8f cd 0a 00 	bic	r13,	10(r15)	; 0x000a

0000bba4 <.Loc.179.1>:
    bba4:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000bba8 <.Loc.180.1>:
    bba8:	30 41       	ret			

0000bbaa <GPIO_setAsPeripheralModuleFunctionInputPin>:
    bbaa:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    bbae:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000bbb2 <.Loc.191.1>:
    bbb2:	0f 4c       	mov	r12,	r15	;
    bbb4:	5f 02       	rlam	#1,	r15	;
    bbb6:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000bbba <.Loc.200.1>:
    bbba:	1c b3       	bit	#1,	r12	;r3 As==01
    bbbc:	02 20       	jnz	$+6      	;abs 0xbbc2

0000bbbe <.Loc.201.1>:
    bbbe:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bbc2 <.L13>:
    bbc2:	0c 4d       	mov	r13,	r12	;

0000bbc4 <.LVL12>:
    bbc4:	3c e3       	inv	r12		;

0000bbc6 <.Loc.204.1>:
    bbc6:	8f cd 04 00 	bic	r13,	4(r15)	;

0000bbca <.Loc.205.1>:
    bbca:	6e 93       	cmp.b	#2,	r14	;r3 As==10
    bbcc:	10 24       	jz	$+34     	;abs 0xbbee
    bbce:	7e 90 03 00 	cmp.b	#3,	r14	;
    bbd2:	08 24       	jz	$+18     	;abs 0xbbe4
    bbd4:	5e 93       	cmp.b	#1,	r14	;r3 As==01
    bbd6:	01 24       	jz	$+4      	;abs 0xbbda

0000bbd8 <.Loc.219.1>:
    bbd8:	30 41       	ret			

0000bbda <.L17>:
    bbda:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000bbde <.Loc.208.1>:
    bbde:	8f fc 0c 00 	and	r12,	12(r15)	; 0x000c

0000bbe2 <.Loc.209.1>:
    bbe2:	30 41       	ret			

0000bbe4 <.L15>:
    bbe4:	8f dd 0a 00 	bis	r13,	10(r15)	; 0x000a

0000bbe8 <.Loc.216.1>:
    bbe8:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000bbec <.Loc.217.1>:
    bbec:	30 41       	ret			

0000bbee <.L14>:
    bbee:	8f fc 0a 00 	and	r12,	10(r15)	; 0x000a

0000bbf2 <.Loc.212.1>:
    bbf2:	8f dd 0c 00 	bis	r13,	12(r15)	; 0x000c

0000bbf6 <.Loc.213.1>:
    bbf6:	30 41       	ret			

0000bbf8 <GPIO_setOutputHighOnPin>:
    bbf8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bbfc <.Loc.224.1>:
    bbfc:	0e 4c       	mov	r12,	r14	;
    bbfe:	5e 02       	rlam	#1,	r14	;
    bc00:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bc04 <.Loc.233.1>:
    bc04:	1c b3       	bit	#1,	r12	;r3 As==01
    bc06:	02 20       	jnz	$+6      	;abs 0xbc0c

0000bc08 <.Loc.234.1>:
    bc08:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bc0c <.L19>:
    bc0c:	8e dd 02 00 	bis	r13,	2(r14)	;

0000bc10 <.Loc.238.1>:
    bc10:	30 41       	ret			

0000bc12 <GPIO_setOutputLowOnPin>:
    bc12:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bc16 <.Loc.242.1>:
    bc16:	0e 4c       	mov	r12,	r14	;
    bc18:	5e 02       	rlam	#1,	r14	;
    bc1a:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bc1e <.Loc.251.1>:
    bc1e:	1c b3       	bit	#1,	r12	;r3 As==01
    bc20:	02 20       	jnz	$+6      	;abs 0xbc26

0000bc22 <.Loc.252.1>:
    bc22:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bc26 <.L21>:
    bc26:	8e cd 02 00 	bic	r13,	2(r14)	;

0000bc2a <.Loc.256.1>:
    bc2a:	30 41       	ret			

0000bc2c <GPIO_toggleOutputOnPin>:
    bc2c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bc30 <.Loc.260.1>:
    bc30:	0e 4c       	mov	r12,	r14	;
    bc32:	5e 02       	rlam	#1,	r14	;
    bc34:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bc38 <.Loc.269.1>:
    bc38:	1c b3       	bit	#1,	r12	;r3 As==01
    bc3a:	02 20       	jnz	$+6      	;abs 0xbc40

0000bc3c <.Loc.270.1>:
    bc3c:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bc40 <.L23>:
    bc40:	8e ed 02 00 	xor	r13,	2(r14)	;

0000bc44 <.Loc.274.1>:
    bc44:	30 41       	ret			

0000bc46 <GPIO_setAsInputPinWithPullDownResistor>:
    bc46:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bc4a <.Loc.279.1>:
    bc4a:	0e 4c       	mov	r12,	r14	;
    bc4c:	5e 02       	rlam	#1,	r14	;
    bc4e:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bc52 <.Loc.288.1>:
    bc52:	1c b3       	bit	#1,	r12	;r3 As==01
    bc54:	02 20       	jnz	$+6      	;abs 0xbc5a

0000bc56 <.Loc.289.1>:
    bc56:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bc5a <.L25>:
    bc5a:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000bc5e <.Loc.293.1>:
    bc5e:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000bc62 <.Loc.295.1>:
    bc62:	8e cd 04 00 	bic	r13,	4(r14)	;

0000bc66 <.Loc.296.1>:
    bc66:	8e dd 06 00 	bis	r13,	6(r14)	;

0000bc6a <.Loc.297.1>:
    bc6a:	8e cd 02 00 	bic	r13,	2(r14)	;

0000bc6e <.Loc.298.1>:
    bc6e:	30 41       	ret			

0000bc70 <GPIO_setAsInputPinWithPullUpResistor>:
    bc70:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bc74 <.Loc.303.1>:
    bc74:	0e 4c       	mov	r12,	r14	;
    bc76:	5e 02       	rlam	#1,	r14	;
    bc78:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bc7c <.Loc.312.1>:
    bc7c:	1c b3       	bit	#1,	r12	;r3 As==01
    bc7e:	02 20       	jnz	$+6      	;abs 0xbc84

0000bc80 <.Loc.313.1>:
    bc80:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bc84 <.L27>:
    bc84:	8e cd 0a 00 	bic	r13,	10(r14)	; 0x000a

0000bc88 <.Loc.317.1>:
    bc88:	8e cd 0c 00 	bic	r13,	12(r14)	; 0x000c

0000bc8c <.Loc.318.1>:
    bc8c:	8e cd 04 00 	bic	r13,	4(r14)	;

0000bc90 <.Loc.319.1>:
    bc90:	8e dd 06 00 	bis	r13,	6(r14)	;

0000bc94 <.Loc.320.1>:
    bc94:	8e dd 02 00 	bis	r13,	2(r14)	;

0000bc98 <.Loc.321.1>:
    bc98:	30 41       	ret			

0000bc9a <GPIO_getInputPinValue>:
    bc9a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bc9e <.Loc.326.1>:
    bc9e:	0e 4c       	mov	r12,	r14	;
    bca0:	5e 02       	rlam	#1,	r14	;
    bca2:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bca6 <.Loc.335.1>:
    bca6:	1c b3       	bit	#1,	r12	;r3 As==01
    bca8:	02 20       	jnz	$+6      	;abs 0xbcae

0000bcaa <.Loc.336.1>:
    bcaa:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bcae <.L29>:
    bcae:	2d fe       	and	@r14,	r13	;

0000bcb0 <.LVL31>:
    bcb0:	0c 43       	clr	r12		;
    bcb2:	0c 8d       	sub	r13,	r12	;

0000bcb4 <.LVL32>:
    bcb4:	0c dd       	bis	r13,	r12	;

0000bcb6 <.Loc.345.1>:
    bcb6:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    bcba:	30 41       	ret			

0000bcbc <GPIO_enableInterrupt>:
    bcbc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bcc0 <.Loc.349.1>:
    bcc0:	0e 4c       	mov	r12,	r14	;
    bcc2:	5e 02       	rlam	#1,	r14	;
    bcc4:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bcc8 <.Loc.358.1>:
    bcc8:	1c b3       	bit	#1,	r12	;r3 As==01
    bcca:	02 20       	jnz	$+6      	;abs 0xbcd0

0000bccc <.Loc.359.1>:
    bccc:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bcd0 <.L31>:
    bcd0:	8e dd 1a 00 	bis	r13,	26(r14)	; 0x001a

0000bcd4 <.Loc.363.1>:
    bcd4:	30 41       	ret			

0000bcd6 <GPIO_disableInterrupt>:
    bcd6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bcda <.Loc.367.1>:
    bcda:	0e 4c       	mov	r12,	r14	;
    bcdc:	5e 02       	rlam	#1,	r14	;
    bcde:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bce2 <.Loc.376.1>:
    bce2:	1c b3       	bit	#1,	r12	;r3 As==01
    bce4:	02 20       	jnz	$+6      	;abs 0xbcea

0000bce6 <.Loc.377.1>:
    bce6:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bcea <.L33>:
    bcea:	8e cd 1a 00 	bic	r13,	26(r14)	; 0x001a

0000bcee <.Loc.381.1>:
    bcee:	30 41       	ret			

0000bcf0 <GPIO_getInterruptStatus>:
    bcf0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bcf4 <.Loc.385.1>:
    bcf4:	0e 4c       	mov	r12,	r14	;
    bcf6:	5e 02       	rlam	#1,	r14	;
    bcf8:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bcfc <.Loc.394.1>:
    bcfc:	1c b3       	bit	#1,	r12	;r3 As==01
    bcfe:	0a 20       	jnz	$+22     	;abs 0xbd14

0000bd00 <.Loc.395.1>:
    bd00:	1e b3       	bit	#1,	r14	;r3 As==01
    bd02:	04 20       	jnz	$+10     	;abs 0xbd0c

0000bd04 <.Loc.397.1>:
    bd04:	5c 4e 1d 00 	mov.b	29(r14),r12	;0x0001d

0000bd08 <.LVL41>:
    bd08:	0c fd       	and	r13,	r12	;

0000bd0a <.Loc.407.1>:
    bd0a:	30 41       	ret			

0000bd0c <.L36>:
    bd0c:	5c 4e 1c 00 	mov.b	28(r14),r12	;0x0001c

0000bd10 <.Loc.401.1>:
    bd10:	0c fd       	and	r13,	r12	;

0000bd12 <.Loc.407.1>:
    bd12:	30 41       	ret			

0000bd14 <.L35>:
    bd14:	1c 4e 1c 00 	mov	28(r14),r12	;0x0001c
    bd18:	0c fd       	and	r13,	r12	;

0000bd1a <.Loc.407.1>:
    bd1a:	30 41       	ret			

0000bd1c <GPIO_clearInterrupt>:
    bd1c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bd20 <.Loc.411.1>:
    bd20:	0e 4c       	mov	r12,	r14	;
    bd22:	5e 02       	rlam	#1,	r14	;
    bd24:	1e 4e 08 45 	mov	17672(r14),r14	;0x04508

0000bd28 <.Loc.420.1>:
    bd28:	1c b3       	bit	#1,	r12	;r3 As==01
    bd2a:	02 20       	jnz	$+6      	;abs 0xbd30

0000bd2c <.Loc.421.1>:
    bd2c:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bd30 <.L39>:
    bd30:	8e cd 1c 00 	bic	r13,	28(r14)	; 0x001c

0000bd34 <.Loc.425.1>:
    bd34:	30 41       	ret			

0000bd36 <GPIO_selectInterruptEdge>:
    bd36:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    bd3a:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000bd3e <.Loc.430.1>:
    bd3e:	0f 4c       	mov	r12,	r15	;
    bd40:	5f 02       	rlam	#1,	r15	;
    bd42:	1f 4f 08 45 	mov	17672(r15),r15	;0x04508

0000bd46 <.Loc.439.1>:
    bd46:	1c b3       	bit	#1,	r12	;r3 As==01
    bd48:	02 20       	jnz	$+6      	;abs 0xbd4e

0000bd4a <.Loc.440.1>:
    bd4a:	47 18 0d 5d 	rpt #8 { rlax.w	r13		;

0000bd4e <.L41>:
    bd4e:	0e 93       	cmp	#0,	r14	;r3 As==00
    bd50:	03 20       	jnz	$+8      	;abs 0xbd58

0000bd52 <.Loc.444.1>:
    bd52:	8f cd 18 00 	bic	r13,	24(r15)	; 0x0018

0000bd56 <.Loc.449.1>:
    bd56:	30 41       	ret			

0000bd58 <.L42>:
    bd58:	8f dd 18 00 	bis	r13,	24(r15)	; 0x0018

0000bd5c <.Loc.449.1>:
    bd5c:	30 41       	ret			

0000bd5e <__mulhi2>:
    bd5e:	02 12       	push	r2		;
    bd60:	32 c2       	dint			
    bd62:	03 43       	nop			
    bd64:	82 4c c0 04 	mov	r12,	&0x04c0	;
    bd68:	82 4d c8 04 	mov	r13,	&0x04c8	;
    bd6c:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    bd70:	00 13       	reti			

0000bd72 <__umulhisi2>:
    bd72:	02 12       	push	r2		;
    bd74:	32 c2       	dint			
    bd76:	03 43       	nop			
    bd78:	82 4c c0 04 	mov	r12,	&0x04c0	;
    bd7c:	82 4d c8 04 	mov	r13,	&0x04c8	;
    bd80:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    bd84:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    bd88:	00 13       	reti			

0000bd8a <memcpy>:
    bd8a:	0f 4c       	mov	r12,	r15	;
    bd8c:	0e 5d       	add	r13,	r14	;

0000bd8e <.L2>:
    bd8e:	0d 9e       	cmp	r14,	r13	;
    bd90:	01 20       	jnz	$+4      	;abs 0xbd94

0000bd92 <.Loc.111.1>:
    bd92:	30 41       	ret			

0000bd94 <.L3>:
    bd94:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

0000bd98 <.LVL4>:
    bd98:	1f 53       	inc	r15		;
    bd9a:	f9 3f       	jmp	$-12     	;abs 0xbd8e

0000bd9c <_exit>:
    bd9c:	ff 3f       	jmp	$+0      	;abs 0xbd9c

0000bd9e <memset>:
    bd9e:	0e 5c       	add	r12,	r14	;

0000bda0 <L0^A>:
    bda0:	0f 4c       	mov	r12,	r15	;

0000bda2 <.L2>:
    bda2:	0f 9e       	cmp	r14,	r15	;
    bda4:	01 20       	jnz	$+4      	;abs 0xbda8

0000bda6 <.Loc.104.1>:
    bda6:	30 41       	ret			

0000bda8 <.L3>:
    bda8:	1f 53       	inc	r15		;

0000bdaa <.LVL4>:
    bdaa:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    bdae:	f9 3f       	jmp	$-12     	;abs 0xbda2
