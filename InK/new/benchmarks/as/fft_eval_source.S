
bin/fft_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00009c00 <__crt0_start>:
    9c00:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00009c04 <__crt0_init_bss>:
    9c04:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00009c08 <.Loc.76.1>:
    9c08:	0d 43       	clr	r13		;

00009c0a <.Loc.77.1>:
    9c0a:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00009c0e <.Loc.81.1>:
    9c0e:	b0 12 04 c5 	call	#-15100	;#0xc504

00009c12 <__crt0_run_init_array>:
    9c12:	34 40 0c 89 	mov	#-30452,r4	;#0x890c

00009c16 <.Loc.189.1>:
    9c16:	35 40 14 89 	mov	#-30444,r5	;#0x8914

00009c1a <.Loc.190.1>:
    9c1a:	26 43       	mov	#2,	r6	;r3 As==10

00009c1c <.Loc.191.1>:
    9c1c:	b0 12 2a 9c 	call	#-25558	;#0x9c2a

00009c20 <__crt0_call_main>:
    9c20:	0c 43       	clr	r12		;

00009c22 <.Loc.254.1>:
    9c22:	b0 12 f4 a4 	call	#-23308	;#0xa4f4

00009c26 <__crt0_call_exit>:
    9c26:	b0 12 02 c5 	call	#-15102	;#0xc502

00009c2a <__crt0_run_array>:
    9c2a:	05 94       	cmp	r4,	r5	;

00009c2c <.Loc.294.1>:
    9c2c:	04 24       	jz	$+10     	;abs 0x9c36

00009c2e <.Loc.295.1>:
    9c2e:	27 44       	mov	@r4,	r7	;

00009c30 <.Loc.296.1>:
    9c30:	04 56       	add	r6,	r4	;

00009c32 <.Loc.297.1>:
    9c32:	87 12       	call	r7		;

00009c34 <.Loc.298.1>:
    9c34:	fa 3f       	jmp	$-10     	;abs 0x9c2a

00009c36 <_msp430_run_done>:
    9c36:	30 41       	ret			

00009c38 <__ink_entry_task>:
    __INK_SHARED_VAR_STRUCT_FIELD(_q15, fft_array);
} __INK_SHARED_VAR_STRUCT_TYPE;
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
{
#if RAISE_PIN
    full_run_started = 1;
    9c38:	
00009c3a <L0^A>:
    9c3a:	01 8c       	sub	r12,	r1	;

00009c3c <.Loc.82.1>:
#endif

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    9c3c:	b0 12 8a a8 	call	#-22390	;#0xa88a

00009c40 <.LVL1>:
++__INK_GET_VAR_FROM_BUF(iteration);
    9c40:	0d 4c       	mov	r12,	r13	;
    9c42:	5d 06       	rlam	#2,	r13	;
    9c44:	0d 5c       	add	r12,	r13	;
    9c46:	5d 02       	rlam	#1,	r13	;
    9c48:	1c 4d 00 8a 	mov	-30208(r13),r12	;0xffff8a00

00009c4c <.Loc.83.1>:
    9c4c:	9c 53 00 00 	inc	0(r12)		;

00009c50 <.Loc.85.1>:

    return task_sample;
}
    9c50:	3c 40 2e 9d 	mov	#-25298,r12	;#0x9d2e
    9c54:	30 41       	ret			

00009c56 <task_fft_prologue>:

    return task_fft_prologue;
}

static void* task_fft_prologue()
{
    9c56:	2a 15       	pushm	#3,	r10	;16-bit words

00009c58 <.LCFI0>:
    9c58:	21 83       	decd	r1		;

00009c5a <.LCFI1>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    9c5a:	b0 12 8a a8 	call	#-22390	;#0xa88a
    9c5e:	08 4c       	mov	r12,	r8	;

00009c60 <.Loc.120.1>:
uint16_t i, length;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i];
    9c60:	09 4c       	mov	r12,	r9	;
    9c62:	59 06       	rlam	#2,	r9	;
    9c64:	0c 49       	mov	r9,	r12	;
    9c66:	0c 58       	add	r8,	r12	;
    9c68:	5c 02       	rlam	#1,	r12	;
    9c6a:	1e 4c 08 8a 	mov	-30200(r12),r14	;0xffff8a08
    9c6e:	3a 40 00 8b 	mov	#-29952,r10	;#0x8b00
    9c72:	0d 4a       	mov	r10,	r13	;

00009c74 <.L4>:
    9c74:	bd 4e 00 00 	mov	@r14+,	0(r13)	;
    9c78:	2d 53       	incd	r13		;

00009c7a <.Loc.123.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9c7a:	3d 90 00 8c 	cmp	#-29696,r13	;#0x8c00
    9c7e:	fa 23       	jnz	$-10     	;abs 0x9c74

00009c80 <.Loc.128.1>:

    length = N_SAMPLES / 2;

    // Bit reverse the order of the inputs.
    msp_cmplx_bitrev_q15_params paramsBitRev;
    paramsBitRev.length = length;
    9c80:	b1 40 40 00 	mov	#64,	0(r1)	;#0x0040
    9c84:	00 00 

00009c86 <.Loc.135.1>:

    // Perform bit reversal on source data.
    msp_cmplx_bitrev_q15(&paramsBitRev, fft_array_copy);
    9c86:	3d 40 00 8b 	mov	#-29952,r13	;#0x8b00
    9c8a:	0c 41       	mov	r1,	r12	;
    9c8c:	b0 12 78 a5 	call	#-23176	;#0xa578

00009c90 <.Loc.138.1>:

    // Push array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = fft_array_copy[i];
    9c90:	09 58       	add	r8,	r9	;
    9c92:	59 02       	rlam	#1,	r9	;
    9c94:	1c 49 08 8a 	mov	-30200(r9),r12	;0xffff8a08

00009c98 <.L5>:
    9c98:	bc 4a 00 00 	mov	@r10+,	0(r12)	;
    9c9c:	2c 53       	incd	r12		;

00009c9e <.Loc.138.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9c9e:	3a 90 00 8c 	cmp	#-29696,r10	;#0x8c00
    9ca2:	fa 23       	jnz	$-10     	;abs 0x9c98

00009ca4 <.Loc.143.1>:
    }

    return task_fft_stage_1;
}
    9ca4:	3c 40 78 a3 	mov	#-23688,r12	;#0xa378
    9ca8:	21 53       	incd	r1		;

00009caa <.LCFI2>:
    9caa:	28 17       	popm	#3,	r10	;16-bit words

00009cac <.LCFI3>:
    9cac:	30 41       	ret			

00009cae <task_fft_epilogue>:

    return task_fft_epilogue;
}

static void* task_fft_epilogue()
{
    9cae:	2a 15       	pushm	#3,	r10	;16-bit words

00009cb0 <.LCFI4>:
    9cb0:	21 82       	sub	#4,	r1	;r2 As==10

00009cb2 <.LCFI5>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    9cb2:	b0 12 8a a8 	call	#-22390	;#0xa88a
    9cb6:	08 4c       	mov	r12,	r8	;

00009cb8 <.Loc.328.1>:
uint16_t i;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i];
    9cb8:	09 4c       	mov	r12,	r9	;
    9cba:	59 06       	rlam	#2,	r9	;
    9cbc:	0c 49       	mov	r9,	r12	;
    9cbe:	0c 58       	add	r8,	r12	;
    9cc0:	5c 02       	rlam	#1,	r12	;
    9cc2:	1e 4c 08 8a 	mov	-30200(r12),r14	;0xffff8a08
    9cc6:	3a 40 00 8b 	mov	#-29952,r10	;#0x8b00
    9cca:	0d 4a       	mov	r10,	r13	;

00009ccc <.L9>:
    9ccc:	bd 4e 00 00 	mov	@r14+,	0(r13)	;
    9cd0:	2d 53       	incd	r13		;

00009cd2 <.Loc.331.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9cd2:	3d 90 00 8c 	cmp	#-29696,r13	;#0x8c00
    9cd6:	fa 23       	jnz	$-10     	;abs 0x9ccc

00009cd8 <.Loc.337.1>:
    }

    // Initialize split operation params structure.
    msp_split_q15_params paramsSplit;
    paramsSplit.length       = N_SAMPLES;
    9cd8:	b1 40 80 00 	mov	#128,	0(r1)	;#0x0080
    9cdc:	00 00 

00009cde <.Loc.339.1>:
    paramsSplit.twiddleTable = TWIDDLE_TABLE;
    9cde:	b1 40 14 85 	mov	#-31468,2(r1)	;#0x8514
    9ce2:	02 00 

00009ce4 <.Loc.342.1>:

    // Perform the last stage split operation to obtain N/2 complex FFT results.
    msp_split_q15(&paramsSplit, fft_array_copy);
    9ce4:	3d 40 00 8b 	mov	#-29952,r13	;#0x8b00
    9ce8:	0c 41       	mov	r1,	r12	;
    9cea:	b0 12 ec a5 	call	#-23060	;#0xa5ec

00009cee <.Loc.345.1>:

    // Remove DC component.
    fft_array_copy[0] = 0;
    9cee:	82 43 00 8b 	mov	#0,	&0x8b00	;r3 As==00

00009cf2 <.Loc.348.1>:

    // Push array computing absolute value.
    for (i = 0; i < N_SAMPLES; i++)
    9cf2:	09 58       	add	r8,	r9	;
    9cf4:	59 02       	rlam	#1,	r9	;
    9cf6:	1f 49 08 8a 	mov	-30200(r9),r15	;0xffff8a08

00009cfa <.Loc.345.1>:
    fft_array_copy[0] = 0;
    9cfa:	4c 43       	clr.b	r12		;
    9cfc:	06 3c       	jmp	$+14     	;abs 0x9d0a

00009cfe <.L16>:
    {
        if (fft_array_copy[i] >= 0)
        {
            __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = fft_array_copy[i];
    9cfe:	8e 4d 00 00 	mov	r13,	0(r14)	;

00009d02 <.Loc.348.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9d02:	2c 53       	incd	r12		;

00009d04 <.Loc.348.1>:
    9d04:	3a 90 00 8c 	cmp	#-29696,r10	;#0x8c00
    9d08:	0d 24       	jz	$+28     	;abs 0x9d24

00009d0a <.L12>:
        if (fft_array_copy[i] >= 0)
    9d0a:	3d 4a       	mov	@r10+,	r13	;

00009d0c <.Loc.352.1>:
            __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = fft_array_copy[i];
    9d0c:	0e 4f       	mov	r15,	r14	;
    9d0e:	0e 5c       	add	r12,	r14	;

00009d10 <.Loc.350.1>:
        if (fft_array_copy[i] >= 0)
    9d10:	0d 93       	cmp	#0,	r13	;r3 As==00
    9d12:	f5 37       	jge	$-20     	;abs 0x9cfe

00009d14 <.Loc.356.1>:
        }
        else
        {
            __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = -fft_array_copy[i];
    9d14:	49 43       	clr.b	r9		;
    9d16:	09 8d       	sub	r13,	r9	;
    9d18:	8e 49 00 00 	mov	r9,	0(r14)	;

00009d1c <.Loc.348.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9d1c:	2c 53       	incd	r12		;

00009d1e <.Loc.348.1>:
    9d1e:	3a 90 00 8c 	cmp	#-29696,r10	;#0x8c00
    9d22:	f3 23       	jnz	$-24     	;abs 0x9d0a

00009d24 <.L15>:
        }
    }

    return task_done;
}
    9d24:	3c 40 9a 9d 	mov	#-25190,r12	;#0x9d9a
    9d28:	21 52       	add	#4,	r1	;r2 As==10

00009d2a <.LCFI6>:
    9d2a:	28 17       	popm	#3,	r10	;16-bit words

00009d2c <.LCFI7>:
    9d2c:	30 41       	ret			

00009d2e <task_sample>:
{
    9d2e:	1a 15       	pushm	#2,	r10	;16-bit words

00009d30 <.LCFI8>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    9d30:	b0 12 8a a8 	call	#-22390	;#0xa88a
    9d34:	09 4c       	mov	r12,	r9	;

00009d36 <.Loc.91.1>:
    switch (__INK_GET_VAR_FROM_BUF(iteration) % 3)
    9d36:	0a 4c       	mov	r12,	r10	;
    9d38:	5a 06       	rlam	#2,	r10	;
    9d3a:	0c 4a       	mov	r10,	r12	;
    9d3c:	0c 59       	add	r9,	r12	;
    9d3e:	5c 02       	rlam	#1,	r12	;
    9d40:	1c 4c 00 8a 	mov	-30208(r12),r12	;0xffff8a00

00009d44 <.Loc.94.1>:
    9d44:	7d 40 03 00 	mov.b	#3,	r13	;
    9d48:	2c 4c       	mov	@r12,	r12	;
    9d4a:	b0 12 e6 c4 	call	#-15130	;#0xc4e6

00009d4e <.Loc.94.1>:
    9d4e:	0c 93       	cmp	#0,	r12	;r3 As==00
    9d50:	21 24       	jz	$+68     	;abs 0x9d94
    9d52:	2c 93       	cmp	#2,	r12	;r3 As==10
    9d54:	1c 20       	jnz	$+58     	;abs 0x9d8e
    9d56:	3e 40 00 45 	mov	#17664,	r14	;#0x4500

00009d5a <.L18>:
    9d5a:	4d 43       	clr.b	r13		;

00009d5c <.Loc.111.1>:
        __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[sample_idx] = get_sample(ptr, sample_idx);
    9d5c:	0f 4a       	mov	r10,	r15	;
    9d5e:	0f 59       	add	r9,	r15	;
    9d60:	5f 02       	rlam	#1,	r15	;
    9d62:	3f 50 00 8a 	add	#-30208,r15	;#0x8a00

00009d66 <.L19>:
    9d66:	1c 4f 08 00 	mov	8(r15),	r12	;
    9d6a:	0c 5d       	add	r13,	r12	;

00009d6c <.LBB38>:
    __delay_cycles(20);
    9d6c:	0d 14       	pushm.a	#1,	r13	;20-bit words
    9d6e:	3d 40 03 00 	mov	#3,	r13	;

00009d72 <.L1^B1>:
    9d72:	1d 83       	dec	r13		;
    9d74:	fe 23       	jnz	$-2      	;abs 0x9d72
    9d76:	0d 16       	popm.a	#1,	r13	;20-bit words
    9d78:	03 43       	nop			

00009d7a <.LBE38>:
        __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[sample_idx] = get_sample(ptr, sample_idx);
    9d7a:	bc 4e 00 00 	mov	@r14+,	0(r12)	;

00009d7e <.Loc.109.1>:
    for (sample_idx = 0; sample_idx < N_SAMPLES; sample_idx++)
    9d7e:	2d 53       	incd	r13		;

00009d80 <.Loc.109.1>:
    9d80:	3d 90 00 01 	cmp	#256,	r13	;#0x0100
    9d84:	f0 23       	jnz	$-30     	;abs 0x9d66

00009d86 <.Loc.114.1>:
}
    9d86:	3c 40 56 9c 	mov	#-25514,r12	;#0x9c56
    9d8a:	19 17       	popm	#2,	r10	;16-bit words

00009d8c <.LCFI9>:
    9d8c:	30 41       	ret			

00009d8e <.L21>:
            ptr = a1;
    9d8e:	3e 40 00 46 	mov	#17920,	r14	;#0x4600
    9d92:	e3 3f       	jmp	$-56     	;abs 0x9d5a

00009d94 <.L20>:
            ptr = a3;
    9d94:	3e 40 00 44 	mov	#17408,	r14	;#0x4400
    9d98:	e0 3f       	jmp	$-62     	;abs 0x9d5a

00009d9a <task_done>:

static void* task_done()
{
#if RAISE_PIN
    if (full_run_started)
    9d9a:	c2 93 01 8c 	cmp.b	#0,	&0x8c01	;r3 As==00
    9d9e:	08 24       	jz	$+18     	;abs 0x9db0

00009da0 <.LBB42>:
    {
        __port_on(3, 4);
    9da0:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    9da4:	22 02 

00009da6 <.Loc.368.1>:
        __port_off(3, 4);
    9da6:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    9daa:	22 02 

00009dac <.Loc.369.1>:
        full_run_started = 0;
    9dac:	c2 43 01 8c 	mov.b	#0,	&0x8c01	;r3 As==00

00009db0 <.L24>:
    }
#endif

    return INK_THREAD_ENTRY_TASK;
}
    9db0:	3c 40 38 9c 	mov	#-25544,r12	;#0x9c38
    9db4:	30 41       	ret			

00009db6 <task_fft_stage_3>:
{
    9db6:	6a 15       	pushm	#7,	r10	;16-bit words

00009db8 <.LCFI11>:
    9db8:	31 80 24 00 	sub	#36,	r1	;#0x0024

00009dbc <.LCFI12>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    9dbc:	b0 12 8a a8 	call	#-22390	;#0xa88a
    9dc0:	81 4c 1c 00 	mov	r12,	28(r1)	; 0x001c

00009dc4 <.LVL22>:
    overflow = __INK_GET_VAR_FROM_BUF(fft_overflow);
    9dc4:	3a 40 00 8a 	mov	#-30208,r10	;#0x8a00
    9dc8:	5c 06       	rlam	#2,	r12	;

00009dca <.LVL23>:
    9dca:	81 4c 1e 00 	mov	r12,	30(r1)	; 0x001e
    9dce:	1c 51 1c 00 	add	28(r1),	r12	;0x0001c
    9dd2:	5c 02       	rlam	#1,	r12	;
    9dd4:	0c 5a       	add	r10,	r12	;
    9dd6:	1d 4c 06 00 	mov	6(r12),	r13	;
    9dda:	6d 4d       	mov.b	@r13,	r13	;
    9ddc:	81 4d 04 00 	mov	r13,	4(r1)	;

00009de0 <.LVL24>:
    for (i = 0; i < N_SAMPLES; i++)
    9de0:	1d 4c 08 00 	mov	8(r12),	r13	;
    9de4:	34 40 00 8b 	mov	#-29952,r4	;#0x8b00

00009de8 <.Loc.269.1>:
        fft_array_copy[i] = __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i];
    9de8:	0c 44       	mov	r4,	r12	;

00009dea <.L26>:
    9dea:	bc 4d 00 00 	mov	@r13+,	0(r12)	;
    9dee:	2c 53       	incd	r12		;

00009df0 <.Loc.267.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9df0:	3c 90 00 8c 	cmp	#-29696,r12	;#0x8c00
    9df4:	fa 23       	jnz	$-10     	;abs 0x9dea

00009df6 <.Loc.273.1>:
    twiddleIncrement = 2 * (*((uint16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((uint16_t*)TWIDDLE_TABLE, 15))) / STAGE3_STEP;
    9df6:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    9dfa:	4d 43       	clr.b	r13		;
    9dfc:	3c 40 14 85 	mov	#-31468,r12	;#0x8514
    9e00:	b0 12 ac a8 	call	#-22356	;#0xa8ac

00009e04 <.LVL27>:
    9e04:	2c 4c       	mov	@r12,	r12	;
    9e06:	5c 02       	rlam	#1,	r12	;

00009e08 <.Loc.274.1>:
    9e08:	5c 0b       	rrum	#3,	r12	;
    9e0a:	81 4c 16 00 	mov	r12,	22(r1)	; 0x0016

00009e0e <.LVL28>:
    uint16_t ui16MPYState = MPY32CTL0;
    9e0e:	91 42 ec 04 	mov	&0x04ec,32(r1)	;0x04ec, 0x0020
    9e12:	20 00 

00009e14 <.Loc.280.1>:
    MPY32CTL0             = MPYFRAC | MPYDLYWRTEN;
    9e14:	b2 40 04 01 	mov	#260,	&0x04ec	;#0x0104
    9e18:	ec 04 

00009e1a <.Loc.280.1>:
    9e1a:	a1 42 18 00 	mov	#4,	24(r1)	;r2 As==10, 0x0018

00009e1e <.Loc.273.1>:
    step             = STAGE3_STEP;
    9e1e:	b1 42 14 00 	mov	#8,	20(r1)	;r2 As==11, 0x0014

00009e22 <.Loc.292.1>:
        __INK_GET_VAR_FROM_BUF(fft_shift) += scale ? 1 : 0;
    9e22:	1c 41 1e 00 	mov	30(r1),	r12	;0x0001e

00009e26 <.LVL30>:
    9e26:	1c 51 1c 00 	add	28(r1),	r12	;0x0001c
    9e2a:	5c 02       	rlam	#1,	r12	;
    9e2c:	0a 5c       	add	r12,	r10	;
    9e2e:	81 4a 1a 00 	mov	r10,	26(r1)	; 0x001a
    9e32:	81 44 22 00 	mov	r4,	34(r1)	; 0x0022
    9e36:	19 41 16 00 	mov	22(r1),	r9	;0x00016

00009e3a <.L35>:
    9e3a:	16 41 1a 00 	mov	26(r1),	r6	;0x0001a
    9e3e:	1c 46 02 00 	mov	2(r6),	r12	;

00009e42 <.Loc.292.1>:
    9e42:	9c 51 04 00 	add	4(r1),	0(r12)	;
    9e46:	00 00 

00009e48 <.Loc.294.1>:
        for (i = 0; i < (step / 2); i++)
    9e48:	17 41 14 00 	mov	20(r1),	r7	;0x00014
    9e4c:	57 03       	rrum	#1,	r7	;
    9e4e:	81 47 10 00 	mov	r7,	16(r1)	; 0x0010
    9e52:	91 41 14 00 	mov	20(r1),	6(r1)	;0x00014
    9e56:	06 00 

00009e58 <.Loc.300.1>:
                msp_cmplx_btfly_auto_q15(srcPtr, srcPtr + step, &((const _q15 *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(twiddlePtr, 15))[twiddleIndex], &scale, &overflow);
    9e58:	18 41 14 00 	mov	20(r1),	r8	;0x00014
    9e5c:	58 02       	rlam	#1,	r8	;
    9e5e:	81 48 14 00 	mov	r8,	20(r1)	; 0x0014

00009e62 <.LVL33>:
    9e62:	b1 40 02 8b 	mov	#-29950,14(r1)	;#0x8b02, 0x000e
    9e66:	0e 00 
    9e68:	59 02       	rlam	#1,	r9	;
    9e6a:	81 49 12 00 	mov	r9,	18(r1)	; 0x0012
    9e6e:	16 41 06 00 	mov	6(r1),	r6	;
    9e72:	56 06       	rlam	#2,	r6	;
    9e74:	81 46 08 00 	mov	r6,	8(r1)	;
    9e78:	81 43 02 00 	mov	#0,	2(r1)	;r3 As==00

00009e7c <.Loc.291.1>:
        overflow   = false;
    9e7c:	48 43       	clr.b	r8		;

00009e7e <.Loc.294.1>:
        for (i = 0; i < (step / 2); i++)
    9e7e:	81 43 0c 00 	mov	#0,	12(r1)	;r3 As==00, 0x000c
    9e82:	17 41 14 00 	mov	20(r1),	r7	;0x00014
    9e86:	37 50 fe ff 	add	#-2,	r7	;#0xfffe
    9e8a:	81 47 0a 00 	mov	r7,	10(r1)	; 0x000a

00009e8e <.L34>:
    9e8e:	15 41 0e 00 	mov	14(r1),	r5	;0x0000e
    9e92:	14 41 0c 00 	mov	12(r1),	r4	;0x0000c
    9e96:	0b 44       	mov	r4,	r11	;
    9e98:	04 48       	mov	r8,	r4	;

00009e9a <.L33>:
                msp_cmplx_btfly_auto_q15(srcPtr, srcPtr + step, &((const _q15 *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(twiddlePtr, 15))[twiddleIndex], &scale, &overflow);
    9e9a:	1a 41 0a 00 	mov	10(r1),	r10	;0x0000a
    9e9e:	0a 55       	add	r5,	r10	;

00009ea0 <.Loc.300.1>:
    9ea0:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    9ea4:	4d 43       	clr.b	r13		;
    9ea6:	3c 40 18 85 	mov	#-31464,r12	;#0x8518

00009eaa <.LVL36>:
    9eaa:	81 4b 00 00 	mov	r11,	0(r1)	;
    9eae:	b0 12 ac a8 	call	#-22356	;#0xa8ac

00009eb2 <.LVL37>:
    9eb2:	1c 51 02 00 	add	2(r1),	r12	;

00009eb6 <.LBB52>:
 */
static inline void msp_cmplx_btfly_auto_q15(
    int16_t* srcA, int16_t* srcB, const _q15* coeff, bool* scale, bool* overflow)
{
    /* Load coefficients. */
    _q15 tempR = CMPLX_REAL(coeff);
    9eb6:	2e 4c       	mov	@r12,	r14	;

00009eb8 <.LVL39>:
    _q15 tempI = CMPLX_IMAG(coeff);
    9eb8:	1f 4c 02 00 	mov	2(r12),	r15	;

00009ebc <.LBB54>:
//! \return Q15 result
//
//******************************************************************************
static inline void __q15cmpy(int16_t* aR, int16_t* aI, const int16_t* bR, const int16_t* bI)
{
    int16_t resR = __q15mpy(*aR, *bR) - __q15mpy(*aI, *bI);
    9ebc:	28 4a       	mov	@r10,	r8	;
    9ebe:	02 12       	push	r2		;
    9ec0:	32 c2       	dint			
    9ec2:	03 43       	nop			
    9ec4:	82 48 c2 04 	mov	r8,	&0x04c2	;
    9ec8:	82 4e c8 04 	mov	r14,	&0x04c8	;
    9ecc:	18 42 ca 04 	mov	&0x04ca,r8	;0x04ca
    9ed0:	19 42 cc 04 	mov	&0x04cc,r9	;0x04cc
    9ed4:	32 41       	pop	r2		;
    9ed6:	0c 48       	mov	r8,	r12	;

00009ed8 <.LVL41>:
    9ed8:	0d 49       	mov	r9,	r13	;
    9eda:	0d 11       	rra	r13		;
    9edc:	0c 10       	rrc	r12		;
    9ede:	0d 11       	rra	r13		;
    9ee0:	0c 10       	rrc	r12		;
    9ee2:	0d 11       	rra	r13		;
    9ee4:	0c 10       	rrc	r12		;
    9ee6:	0d 11       	rra	r13		;
    9ee8:	0c 10       	rrc	r12		;
    9eea:	0d 11       	rra	r13		;
    9eec:	0c 10       	rrc	r12		;
    9eee:	0d 11       	rra	r13		;
    9ef0:	0c 10       	rrc	r12		;
    9ef2:	0d 11       	rra	r13		;
    9ef4:	0c 10       	rrc	r12		;
    9ef6:	0d 11       	rra	r13		;
    9ef8:	0c 10       	rrc	r12		;
    9efa:	0d 11       	rra	r13		;
    9efc:	0c 10       	rrc	r12		;
    9efe:	0d 11       	rra	r13		;
    9f00:	0c 10       	rrc	r12		;
    9f02:	0d 11       	rra	r13		;
    9f04:	0c 10       	rrc	r12		;
    9f06:	0d 11       	rra	r13		;
    9f08:	0c 10       	rrc	r12		;
    9f0a:	0d 11       	rra	r13		;
    9f0c:	0c 10       	rrc	r12		;
    9f0e:	0d 11       	rra	r13		;
    9f10:	0c 10       	rrc	r12		;
    9f12:	0d 11       	rra	r13		;
    9f14:	0c 10       	rrc	r12		;

00009f16 <.Loc.601.2>:
    9f16:	16 4a 02 00 	mov	2(r10),	r6	;
    9f1a:	02 12       	push	r2		;
    9f1c:	32 c2       	dint			
    9f1e:	03 43       	nop			
    9f20:	82 46 c2 04 	mov	r6,	&0x04c2	;
    9f24:	82 4f c8 04 	mov	r15,	&0x04c8	;
    9f28:	16 42 ca 04 	mov	&0x04ca,r6	;0x04ca
    9f2c:	17 42 cc 04 	mov	&0x04cc,r7	;0x04cc
    9f30:	32 41       	pop	r2		;
    9f32:	08 46       	mov	r6,	r8	;
    9f34:	09 47       	mov	r7,	r9	;
    9f36:	09 11       	rra	r9		;
    9f38:	08 10       	rrc	r8		;
    9f3a:	09 11       	rra	r9		;
    9f3c:	08 10       	rrc	r8		;
    9f3e:	09 11       	rra	r9		;
    9f40:	08 10       	rrc	r8		;
    9f42:	09 11       	rra	r9		;
    9f44:	08 10       	rrc	r8		;
    9f46:	09 11       	rra	r9		;
    9f48:	08 10       	rrc	r8		;
    9f4a:	09 11       	rra	r9		;
    9f4c:	08 10       	rrc	r8		;
    9f4e:	09 11       	rra	r9		;
    9f50:	08 10       	rrc	r8		;
    9f52:	09 11       	rra	r9		;
    9f54:	08 10       	rrc	r8		;
    9f56:	09 11       	rra	r9		;
    9f58:	08 10       	rrc	r8		;
    9f5a:	09 11       	rra	r9		;
    9f5c:	08 10       	rrc	r8		;
    9f5e:	09 11       	rra	r9		;
    9f60:	08 10       	rrc	r8		;
    9f62:	09 11       	rra	r9		;
    9f64:	08 10       	rrc	r8		;
    9f66:	09 11       	rra	r9		;
    9f68:	08 10       	rrc	r8		;
    9f6a:	09 11       	rra	r9		;
    9f6c:	08 10       	rrc	r8		;
    9f6e:	09 11       	rra	r9		;
    9f70:	08 10       	rrc	r8		;

00009f72 <.Loc.601.2>:
    9f72:	0c 88       	sub	r8,	r12	;

00009f74 <.LVL42>:
    int16_t resI = __q15mpy(*aR, *bI) + __q15mpy(*aI, *bR);
    9f74:	16 4a 02 00 	mov	2(r10),	r6	;
    9f78:	02 12       	push	r2		;
    9f7a:	32 c2       	dint			
    9f7c:	03 43       	nop			
    9f7e:	82 46 c2 04 	mov	r6,	&0x04c2	;
    9f82:	82 4e c8 04 	mov	r14,	&0x04c8	;
    9f86:	16 42 ca 04 	mov	&0x04ca,r6	;0x04ca
    9f8a:	17 42 cc 04 	mov	&0x04cc,r7	;0x04cc
    9f8e:	32 41       	pop	r2		;
    9f90:	08 46       	mov	r6,	r8	;
    9f92:	09 47       	mov	r7,	r9	;
    9f94:	09 11       	rra	r9		;
    9f96:	08 10       	rrc	r8		;
    9f98:	09 11       	rra	r9		;
    9f9a:	08 10       	rrc	r8		;
    9f9c:	09 11       	rra	r9		;
    9f9e:	08 10       	rrc	r8		;
    9fa0:	09 11       	rra	r9		;
    9fa2:	08 10       	rrc	r8		;
    9fa4:	09 11       	rra	r9		;
    9fa6:	08 10       	rrc	r8		;
    9fa8:	09 11       	rra	r9		;
    9faa:	08 10       	rrc	r8		;
    9fac:	09 11       	rra	r9		;
    9fae:	08 10       	rrc	r8		;
    9fb0:	09 11       	rra	r9		;
    9fb2:	08 10       	rrc	r8		;
    9fb4:	09 11       	rra	r9		;
    9fb6:	08 10       	rrc	r8		;
    9fb8:	09 11       	rra	r9		;
    9fba:	08 10       	rrc	r8		;
    9fbc:	09 11       	rra	r9		;
    9fbe:	08 10       	rrc	r8		;
    9fc0:	09 11       	rra	r9		;
    9fc2:	08 10       	rrc	r8		;
    9fc4:	09 11       	rra	r9		;
    9fc6:	08 10       	rrc	r8		;
    9fc8:	09 11       	rra	r9		;
    9fca:	08 10       	rrc	r8		;
    9fcc:	09 11       	rra	r9		;
    9fce:	08 10       	rrc	r8		;

00009fd0 <.Loc.602.2>:
    9fd0:	2d 4a       	mov	@r10,	r13	;
    9fd2:	02 12       	push	r2		;
    9fd4:	32 c2       	dint			
    9fd6:	03 43       	nop			
    9fd8:	82 4d c2 04 	mov	r13,	&0x04c2	;
    9fdc:	82 4f c8 04 	mov	r15,	&0x04c8	;
    9fe0:	1d 42 ca 04 	mov	&0x04ca,r13	;0x04ca
    9fe4:	1e 42 cc 04 	mov	&0x04cc,r14	;0x04cc
    9fe8:	32 41       	pop	r2		;
    9fea:	06 4d       	mov	r13,	r6	;
    9fec:	07 4e       	mov	r14,	r7	;
    9fee:	07 11       	rra	r7		;
    9ff0:	06 10       	rrc	r6		;
    9ff2:	07 11       	rra	r7		;
    9ff4:	06 10       	rrc	r6		;
    9ff6:	07 11       	rra	r7		;
    9ff8:	06 10       	rrc	r6		;
    9ffa:	07 11       	rra	r7		;
    9ffc:	06 10       	rrc	r6		;
    9ffe:	07 11       	rra	r7		;
    a000:	06 10       	rrc	r6		;
    a002:	07 11       	rra	r7		;
    a004:	06 10       	rrc	r6		;
    a006:	07 11       	rra	r7		;
    a008:	06 10       	rrc	r6		;
    a00a:	07 11       	rra	r7		;
    a00c:	06 10       	rrc	r6		;
    a00e:	07 11       	rra	r7		;
    a010:	06 10       	rrc	r6		;
    a012:	07 11       	rra	r7		;
    a014:	06 10       	rrc	r6		;
    a016:	07 11       	rra	r7		;
    a018:	06 10       	rrc	r6		;
    a01a:	07 11       	rra	r7		;
    a01c:	06 10       	rrc	r6		;
    a01e:	07 11       	rra	r7		;
    a020:	06 10       	rrc	r6		;
    a022:	07 11       	rra	r7		;
    a024:	06 10       	rrc	r6		;
    a026:	07 11       	rra	r7		;
    a028:	06 10       	rrc	r6		;

0000a02a <.Loc.602.2>:
    a02a:	06 58       	add	r8,	r6	;

0000a02c <.LBE54>:

    /* Calculate real and imaginary parts of coeff*B. */
    __q15cmpy(&tempR, &tempI, &CMPLX_REAL(srcB), &CMPLX_IMAG(srcB));

    /* Scale result if necessary. */
    if (*scale)
    a02c:	2b 41       	mov	@r1,	r11	;
    a02e:	81 93 04 00 	cmp	#0,	4(r1)	;r3 As==00
    a032:	57 24       	jz	$+176    	;abs 0xa0e2

0000a034 <.Loc.435.1>:
    {
        /* B = (A - coeff*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    a034:	1d 45 fe ff 	mov	-2(r5),	r13	;
    a038:	0d 8c       	sub	r12,	r13	;

0000a03a <.Loc.435.1>:
    a03a:	5d 01       	rram	#1,	r13	;
    a03c:	8a 4d 00 00 	mov	r13,	0(r10)	;

0000a040 <.Loc.436.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;
    a040:	2d 45       	mov	@r5,	r13	;
    a042:	0d 86       	sub	r6,	r13	;

0000a044 <.Loc.436.1>:
    a044:	5d 01       	rram	#1,	r13	;
    a046:	8a 4d 02 00 	mov	r13,	2(r10)	;

0000a04a <.Loc.439.1>:

        /* A = (A + coeff*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
    a04a:	1c 55 fe ff 	add	-2(r5),	r12	;

0000a04e <.LVL44>:
    a04e:	5c 01       	rram	#1,	r12	;

0000a050 <.Loc.439.1>:
    a050:	85 4c fe ff 	mov	r12,	-2(r5)	; 0xfffe

0000a054 <.Loc.440.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    a054:	26 55       	add	@r5,	r6	;

0000a056 <.LVL45>:
    a056:	56 01       	rram	#1,	r6	;

0000a058 <.Loc.440.1>:
    a058:	85 46 00 00 	mov	r6,	0(r5)	;

0000a05c <.L28>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    a05c:	04 93       	cmp	#0,	r4	;r3 As==00
    a05e:	1f 20       	jnz	$+64     	;abs 0xa09e

0000a060 <.LBB56>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a060:	36 50 00 20 	add	#8192,	r6	;#0x2000

0000a064 <.Loc.407.1>:
        *overflow = true;
    a064:	54 43       	mov.b	#1,	r4	;r3 As==01

0000a066 <.Loc.405.1>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a066:	38 40 ff 3f 	mov	#16383,	r8	;#0x3fff
    a06a:	08 96       	cmp	r6,	r8	;
    a06c:	07 28       	jnc	$+16     	;abs 0xa07c

0000a06e <.Loc.401.1>:
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    a06e:	3c 50 00 20 	add	#8192,	r12	;#0x2000

0000a072 <.Loc.401.1>:
    a072:	08 9c       	cmp	r12,	r8	;
    a074:	01 28       	jnc	$+4      	;abs 0xa078
    a076:	44 43       	clr.b	r4		;

0000a078 <.L31>:
    a078:	34 f0 ff 00 	and	#255,	r4	;#0x00ff

0000a07c <.L30>:
    a07c:	2c 4a       	mov	@r10,	r12	;
    a07e:	3c 50 00 20 	add	#8192,	r12	;#0x2000

0000a082 <.Loc.401.1>:
    a082:	39 40 ff 3f 	mov	#16383,	r9	;#0x3fff
    a086:	09 9c       	cmp	r12,	r9	;
    a088:	01 2c       	jc	$+4      	;abs 0xa08c

0000a08a <.Loc.403.1>:
        *overflow = true;
    a08a:	54 43       	mov.b	#1,	r4	;r3 As==01

0000a08c <.L32>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a08c:	1c 4a 02 00 	mov	2(r10),	r12	;
    a090:	3c 50 00 20 	add	#8192,	r12	;#0x2000

0000a094 <.Loc.405.1>:
    a094:	3d 40 ff 3f 	mov	#16383,	r13	;#0x3fff
    a098:	0d 9c       	cmp	r12,	r13	;
    a09a:	01 2c       	jc	$+4      	;abs 0xa09e
    a09c:	54 43       	mov.b	#1,	r4	;r3 As==01

0000a09e <.L29>:
            for (j = i; j < length; j += step)
    a09e:	1b 51 06 00 	add	6(r1),	r11	;

0000a0a2 <.LVL51>:
    a0a2:	15 51 08 00 	add	8(r1),	r5	;

0000a0a6 <.Loc.297.1>:
    a0a6:	7e 40 3f 00 	mov.b	#63,	r14	;#0x003f
    a0aa:	0e 9b       	cmp	r11,	r14	;
    a0ac:	f6 2e       	jc	$-530    	;abs 0x9e9a
    a0ae:	08 44       	mov	r4,	r8	;

0000a0b0 <.Loc.294.1>:
        for (i = 0; i < (step / 2); i++)
    a0b0:	91 53 0c 00 	inc	12(r1)		;

0000a0b4 <.LVL53>:
    a0b4:	a1 52 0e 00 	add	#4,	14(r1)	;r2 As==10, 0x000e
    a0b8:	91 51 12 00 	rla	18(r1)		;#0x00012
    a0bc:	02 00 

0000a0be <.Loc.294.1>:
    a0be:	91 91 0c 00 	cmp	12(r1),	16(r1)	;0x0000c, 0x0010
    a0c2:	10 00 
    a0c4:	e4 22       	jnz	$-566    	;abs 0x9e8e

0000a0c6 <.LVL54>:
        twiddleIncrement  = twiddleIncrement / 2;
    a0c6:	16 41 16 00 	mov	22(r1),	r6	;0x00016
    a0ca:	56 03       	rrum	#1,	r6	;
    a0cc:	81 46 16 00 	mov	r6,	22(r1)	; 0x0016

0000a0d0 <.LVL55>:
    while (step <= length)
    a0d0:	b1 53 18 00 	add	#-1,	24(r1)	;r3 As==11, 0x0018
    a0d4:	81 93 18 00 	cmp	#0,	24(r1)	;r3 As==00, 0x0018
    a0d8:	15 24       	jz	$+44     	;abs 0xa104
    a0da:	81 48 04 00 	mov	r8,	4(r1)	;

0000a0de <.LVL56>:
    a0de:	09 46       	mov	r6,	r9	;
    a0e0:	ac 3e       	jmp	$-678    	;abs 0x9e3a

0000a0e2 <.L27>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
    a0e2:	1e 45 fe ff 	mov	-2(r5),	r14	;
    a0e6:	0e 8c       	sub	r12,	r14	;
    a0e8:	8a 4e 00 00 	mov	r14,	0(r10)	;

0000a0ec <.Loc.446.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;
    a0ec:	27 45       	mov	@r5,	r7	;
    a0ee:	07 86       	sub	r6,	r7	;
    a0f0:	8a 47 02 00 	mov	r7,	2(r10)	;

0000a0f4 <.Loc.449.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
    a0f4:	1c 55 fe ff 	add	-2(r5),	r12	;

0000a0f8 <.LVL58>:
    a0f8:	85 4c fe ff 	mov	r12,	-2(r5)	; 0xfffe

0000a0fc <.Loc.450.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    a0fc:	26 55       	add	@r5,	r6	;

0000a0fe <.LVL59>:
    a0fe:	85 46 00 00 	mov	r6,	0(r5)	;
    a102:	ac 3f       	jmp	$-166    	;abs 0xa05c

0000a104 <.L43>:
    a104:	14 41 22 00 	mov	34(r1),	r4	;0x00022

0000a108 <.LVL61>:
    MPY32CTL0 = ui16MPYState;
    a108:	92 41 20 00 	mov	32(r1),	&0x04ec	;0x00020
    a10c:	ec 04 

0000a10e <.LVL62>:
        __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = fft_array_copy[i];
    a10e:	1c 41 1e 00 	mov	30(r1),	r12	;0x0001e
    a112:	1c 51 1c 00 	add	28(r1),	r12	;0x0001c
    a116:	5c 02       	rlam	#1,	r12	;
    a118:	1c 4c 08 8a 	mov	-30200(r12),r12	;0xffff8a08

0000a11c <.L36>:
    a11c:	bc 44 00 00 	mov	@r4+,	0(r12)	;
    a120:	2c 53       	incd	r12		;

0000a122 <.Loc.317.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a122:	34 90 00 8c 	cmp	#-29696,r4	;#0x8c00
    a126:	fa 23       	jnz	$-10     	;abs 0xa11c

0000a128 <.LVL64>:
}
    a128:	3c 40 ae 9c 	mov	#-25426,r12	;#0x9cae
    a12c:	31 50 24 00 	add	#36,	r1	;#0x0024

0000a130 <.LCFI13>:
    a130:	64 17       	popm	#7,	r10	;16-bit words

0000a132 <.LCFI14>:
    a132:	30 41       	ret			

0000a134 <task_fft_stage_2>:
{
    a134:	6a 15       	pushm	#7,	r10	;16-bit words

0000a136 <.LCFI15>:
    a136:	21 82       	sub	#4,	r1	;r2 As==10

0000a138 <.LCFI16>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a138:	b0 12 8a a8 	call	#-22390	;#0xa88a
    a13c:	81 4c 00 00 	mov	r12,	0(r1)	;

0000a140 <.LVL66>:
    overflow = __INK_GET_VAR_FROM_BUF(fft_overflow);
    a140:	5c 06       	rlam	#2,	r12	;

0000a142 <.LVL67>:
    a142:	81 4c 02 00 	mov	r12,	2(r1)	;
    a146:	2c 51       	add	@r1,	r12	;
    a148:	5c 02       	rlam	#1,	r12	;
    a14a:	1d 4c 06 8a 	mov	-30202(r12),r13	;0xffff8a06
    a14e:	65 4d       	mov.b	@r13,	r5	;

0000a150 <.Loc.215.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a150:	1d 4c 08 8a 	mov	-30200(r12),r13	;0xffff8a08
    a154:	3a 40 00 8b 	mov	#-29952,r10	;#0x8b00
    a158:	39 40 00 8c 	mov	#-29696,r9	;#0x8c00

0000a15c <.Loc.217.1>:
        fft_array_copy[i] = __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i];
    a15c:	0c 4a       	mov	r10,	r12	;

0000a15e <.L45>:
    a15e:	bc 4d 00 00 	mov	@r13+,	0(r12)	;
    a162:	2c 53       	incd	r12		;

0000a164 <.Loc.215.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a164:	09 9c       	cmp	r12,	r9	;
    a166:	fb 23       	jnz	$-8      	;abs 0xa15e

0000a168 <.LVL70>:
    __INK_GET_VAR_FROM_BUF(fft_shift) += scale ? 1 : 0;
    a168:	1c 41 02 00 	mov	2(r1),	r12	;
    a16c:	2c 51       	add	@r1,	r12	;
    a16e:	5c 02       	rlam	#1,	r12	;
    a170:	1c 4c 02 8a 	mov	-30206(r12),r12	;0xffff8a02

0000a174 <.Loc.223.1>:
    a174:	8c 55 00 00 	add	r5,	0(r12)	;

0000a178 <.Loc.223.1>:
    a178:	38 40 00 8b 	mov	#-29952,r8	;#0x8b00

0000a17c <.Loc.222.1>:
    overflow   = false;
    a17c:	47 43       	clr.b	r7		;

0000a17e <.LBB76>:
        *overflow = true;
    a17e:	56 43       	mov.b	#1,	r6	;r3 As==01

0000a180 <.L60>:
            msp_cmplx_btfly_c0_auto_q15(&((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[0], &((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[0 + STAGE2_STEP], &scale, &overflow);
    a180:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a184:	4d 43       	clr.b	r13		;
    a186:	0c 48       	mov	r8,	r12	;
    a188:	b0 12 ac a8 	call	#-22356	;#0xa8ac
    a18c:	04 4c       	mov	r12,	r4	;

0000a18e <.Loc.229.1>:
    a18e:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a192:	4d 43       	clr.b	r13		;
    a194:	0c 48       	mov	r8,	r12	;
    a196:	b0 12 ac a8 	call	#-22356	;#0xa8ac

0000a19a <.LVL74>:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_c0_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow)
{
    int16_t tempR = CMPLX_REAL(srcB);
    a19a:	1e 4c 08 00 	mov	8(r12),	r14	;

0000a19e <.LVL75>:
    int16_t tempI = CMPLX_IMAG(srcB);
    a19e:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a

0000a1a2 <.LVL76>:

    /* Scale result if necessary. */
    if (*scale)
    {
        /* B = (A - (1+0j)*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    a1a2:	2f 44       	mov	@r4,	r15	;
    a1a4:	0f 8e       	sub	r14,	r15	;

0000a1a6 <.Loc.479.1>:
    if (*scale)
    a1a6:	05 93       	cmp	#0,	r5	;r3 As==00
    a1a8:	c5 24       	jz	$+396    	;abs 0xa334

0000a1aa <.Loc.482.1>:
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    a1aa:	5f 01       	rram	#1,	r15	;
    a1ac:	8c 4f 08 00 	mov	r15,	8(r12)	;

0000a1b0 <.Loc.483.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;
    a1b0:	1f 44 02 00 	mov	2(r4),	r15	;
    a1b4:	0f 8d       	sub	r13,	r15	;

0000a1b6 <.Loc.483.1>:
    a1b6:	5f 01       	rram	#1,	r15	;
    a1b8:	8c 4f 0a 00 	mov	r15,	10(r12)	; 0x000a

0000a1bc <.Loc.486.1>:

        /* A = (A + (1+0j)*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
    a1bc:	2e 54       	add	@r4,	r14	;

0000a1be <.LVL77>:
    a1be:	5e 01       	rram	#1,	r14	;

0000a1c0 <.Loc.486.1>:
    a1c0:	84 4e 00 00 	mov	r14,	0(r4)	;

0000a1c4 <.Loc.487.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    a1c4:	1d 54 02 00 	add	2(r4),	r13	;

0000a1c8 <.LVL78>:
    a1c8:	5d 01       	rram	#1,	r13	;

0000a1ca <.Loc.487.1>:
    a1ca:	84 4d 02 00 	mov	r13,	2(r4)	;

0000a1ce <.Loc.501.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    a1ce:	07 93       	cmp	#0,	r7	;r3 As==00
    a1d0:	69 24       	jz	$+212    	;abs 0xa2a4

0000a1d2 <.LVL79>:
            msp_cmplx_btfly_c1_auto_q15(&((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[2], &((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[2 + STAGE2_STEP], &scale, &overflow);
    a1d2:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a1d6:	4d 43       	clr.b	r13		;
    a1d8:	0c 48       	mov	r8,	r12	;
    a1da:	b0 12 ac a8 	call	#-22356	;#0xa8ac
    a1de:	04 4c       	mov	r12,	r4	;

0000a1e0 <.Loc.230.1>:
    a1e0:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a1e4:	4d 43       	clr.b	r13		;
    a1e6:	0c 48       	mov	r8,	r12	;
    a1e8:	b0 12 ac a8 	call	#-22356	;#0xa8ac

0000a1ec <.LBB92>:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_c1_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow)
{
    int16_t tempR = CMPLX_REAL(srcB);
    a1ec:	1e 4c 0c 00 	mov	12(r12),r14	;0x0000c

0000a1f0 <.LVL82>:
    int16_t tempI = CMPLX_IMAG(srcB);
    a1f0:	1d 4c 0e 00 	mov	14(r12),r13	;0x0000e

0000a1f4 <.L62>:

    /* Scale result if necessary. */
    if (*scale)
    {
        /* B = (A - (0-1j)*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempI) >> 1;
    a1f4:	1f 44 04 00 	mov	4(r4),	r15	;
    a1f8:	0f 8d       	sub	r13,	r15	;

0000a1fa <.Loc.529.1>:
    a1fa:	5f 01       	rram	#1,	r15	;
    a1fc:	8c 4f 0c 00 	mov	r15,	12(r12)	; 0x000c

0000a200 <.Loc.530.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) + tempR) >> 1;
    a200:	0f 4e       	mov	r14,	r15	;
    a202:	1f 54 06 00 	add	6(r4),	r15	;

0000a206 <.Loc.530.1>:
    a206:	5f 01       	rram	#1,	r15	;
    a208:	8c 4f 0e 00 	mov	r15,	14(r12)	; 0x000e

0000a20c <.Loc.533.1>:

        /* A = (A + (0-1j)*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempI) >> 1;
    a20c:	1d 54 04 00 	add	4(r4),	r13	;

0000a210 <.LVL84>:
    a210:	5d 01       	rram	#1,	r13	;

0000a212 <.Loc.533.1>:
    a212:	84 4d 04 00 	mov	r13,	4(r4)	;

0000a216 <.Loc.534.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) - tempR) >> 1;
    a216:	1f 44 06 00 	mov	6(r4),	r15	;
    a21a:	0f 8e       	sub	r14,	r15	;

0000a21c <.Loc.534.1>:
    a21c:	5f 01       	rram	#1,	r15	;

0000a21e <.Loc.534.1>:
    a21e:	84 4f 06 00 	mov	r15,	6(r4)	;

0000a222 <.L55>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempI;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) - tempR;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    a222:	07 93       	cmp	#0,	r7	;r3 As==00
    a224:	21 20       	jnz	$+68     	;abs 0xa268

0000a226 <.LBB94>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a226:	3f 50 00 20 	add	#8192,	r15	;#0x2000

0000a22a <.Loc.407.1>:
        *overflow = true;
    a22a:	07 46       	mov	r6,	r7	;

0000a22c <.Loc.405.1>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a22c:	3e 40 ff 3f 	mov	#16383,	r14	;#0x3fff

0000a230 <.LVL87>:
    a230:	0e 9f       	cmp	r15,	r14	;
    a232:	08 28       	jnc	$+18     	;abs 0xa244

0000a234 <.Loc.401.1>:
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    a234:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a238 <.Loc.401.1>:
    a238:	57 43       	mov.b	#1,	r7	;r3 As==01
    a23a:	0e 9d       	cmp	r13,	r14	;
    a23c:	01 28       	jnc	$+4      	;abs 0xa240
    a23e:	47 43       	clr.b	r7		;

0000a240 <.L58>:
    a240:	37 f0 ff 00 	and	#255,	r7	;#0x00ff

0000a244 <.L57>:
    a244:	1d 4c 0c 00 	mov	12(r12),r13	;0x0000c
    a248:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a24c <.Loc.401.1>:
    a24c:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a250:	0f 9d       	cmp	r13,	r15	;
    a252:	01 2c       	jc	$+4      	;abs 0xa256

0000a254 <.Loc.403.1>:
        *overflow = true;
    a254:	07 46       	mov	r6,	r7	;

0000a256 <.L59>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a256:	1c 4c 0e 00 	mov	14(r12),r12	;0x0000e
    a25a:	3c 50 00 20 	add	#8192,	r12	;#0x2000

0000a25e <.Loc.405.1>:
    a25e:	3d 40 ff 3f 	mov	#16383,	r13	;#0x3fff
    a262:	0d 9c       	cmp	r12,	r13	;
    a264:	01 2c       	jc	$+4      	;abs 0xa268
    a266:	07 46       	mov	r6,	r7	;

0000a268 <.L56>:
        for (j = 0; j < length; j += STAGE2_STEP)
    a268:	38 50 10 00 	add	#16,	r8	;#0x0010

0000a26c <.LVL92>:
    a26c:	09 98       	cmp	r8,	r9	;
    a26e:	88 23       	jnz	$-238    	;abs 0xa180

0000a270 <.Loc.235.1>:
    __INK_GET_VAR_FROM_BUF(fft_scale)    = scale;
    a270:	1c 41 02 00 	mov	2(r1),	r12	;
    a274:	2c 51       	add	@r1,	r12	;
    a276:	5c 02       	rlam	#1,	r12	;

0000a278 <.Loc.235.1>:
    a278:	1d 4c 04 8a 	mov	-30204(r12),r13	;0xffff8a04
    a27c:	cd 45 00 00 	mov.b	r5,	0(r13)	;

0000a280 <.Loc.236.1>:
    __INK_GET_VAR_FROM_BUF(fft_overflow) = overflow;
    a280:	1d 4c 06 8a 	mov	-30202(r12),r13	;0xffff8a06

0000a284 <.Loc.235.1>:
    __INK_GET_VAR_FROM_BUF(fft_scale)    = scale;
    a284:	3c 50 00 8a 	add	#-30208,r12	;#0x8a00

0000a288 <.Loc.236.1>:
    __INK_GET_VAR_FROM_BUF(fft_overflow) = overflow;
    a288:	cd 47 00 00 	mov.b	r7,	0(r13)	;

0000a28c <.Loc.239.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a28c:	1c 4c 08 00 	mov	8(r12),	r12	;

0000a290 <.L61>:
        __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = fft_array_copy[i];
    a290:	bc 4a 00 00 	mov	@r10+,	0(r12)	;
    a294:	2c 53       	incd	r12		;

0000a296 <.Loc.239.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a296:	09 9a       	cmp	r10,	r9	;
    a298:	fb 23       	jnz	$-8      	;abs 0xa290

0000a29a <.Loc.245.1>:
}
    a29a:	3c 40 b6 9d 	mov	#-25162,r12	;#0x9db6
    a29e:	21 52       	add	#4,	r1	;r2 As==10

0000a2a0 <.LCFI17>:
    a2a0:	64 17       	popm	#7,	r10	;16-bit words

0000a2a2 <.LCFI18>:
    a2a2:	30 41       	ret			

0000a2a4 <.L48>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a2a4:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a2a8 <.Loc.407.1>:
        *overflow = true;
    a2a8:	07 46       	mov	r6,	r7	;

0000a2aa <.Loc.405.1>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a2aa:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a2ae:	0f 9d       	cmp	r13,	r15	;
    a2b0:	08 28       	jnc	$+18     	;abs 0xa2c2

0000a2b2 <.Loc.401.1>:
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    a2b2:	3e 50 00 20 	add	#8192,	r14	;#0x2000

0000a2b6 <.Loc.401.1>:
    a2b6:	57 43       	mov.b	#1,	r7	;r3 As==01
    a2b8:	0f 9e       	cmp	r14,	r15	;
    a2ba:	01 28       	jnc	$+4      	;abs 0xa2be
    a2bc:	47 43       	clr.b	r7		;

0000a2be <.L51>:
    a2be:	37 f0 ff 00 	and	#255,	r7	;#0x00ff

0000a2c2 <.L50>:
    a2c2:	1d 4c 08 00 	mov	8(r12),	r13	;
    a2c6:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a2ca <.Loc.401.1>:
    a2ca:	3e 40 ff 3f 	mov	#16383,	r14	;#0x3fff
    a2ce:	0e 9d       	cmp	r13,	r14	;
    a2d0:	01 2c       	jc	$+4      	;abs 0xa2d4

0000a2d2 <.Loc.403.1>:
        *overflow = true;
    a2d2:	07 46       	mov	r6,	r7	;

0000a2d4 <.L52>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a2d4:	1c 4c 0a 00 	mov	10(r12),r12	;0x0000a
    a2d8:	3c 50 00 20 	add	#8192,	r12	;#0x2000

0000a2dc <.Loc.405.1>:
    a2dc:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a2e0:	0f 9c       	cmp	r12,	r15	;
    a2e2:	01 2c       	jc	$+4      	;abs 0xa2e6

0000a2e4 <.Loc.407.1>:
        *overflow = true;
    a2e4:	07 46       	mov	r6,	r7	;

0000a2e6 <.L53>:
            msp_cmplx_btfly_c1_auto_q15(&((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[2], &((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[2 + STAGE2_STEP], &scale, &overflow);
    a2e6:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a2ea:	4d 43       	clr.b	r13		;
    a2ec:	0c 48       	mov	r8,	r12	;
    a2ee:	b0 12 ac a8 	call	#-22356	;#0xa8ac
    a2f2:	04 4c       	mov	r12,	r4	;

0000a2f4 <.Loc.230.1>:
    a2f4:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a2f8:	4d 43       	clr.b	r13		;
    a2fa:	0c 48       	mov	r8,	r12	;
    a2fc:	b0 12 ac a8 	call	#-22356	;#0xa8ac

0000a300 <.Loc.522.1>:
    int16_t tempR = CMPLX_REAL(srcB);
    a300:	1e 4c 0c 00 	mov	12(r12),r14	;0x0000c

0000a304 <.LVL104>:
    int16_t tempI = CMPLX_IMAG(srcB);
    a304:	1d 4c 0e 00 	mov	14(r12),r13	;0x0000e

0000a308 <.LVL105>:
    if (*scale)
    a308:	05 93       	cmp	#0,	r5	;r3 As==00
    a30a:	74 23       	jnz	$-278    	;abs 0xa1f4

0000a30c <.L54>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempI;
    a30c:	1f 44 04 00 	mov	4(r4),	r15	;
    a310:	0f 8d       	sub	r13,	r15	;
    a312:	8c 4f 0c 00 	mov	r15,	12(r12)	; 0x000c

0000a316 <.Loc.540.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) + tempR;
    a316:	1f 44 06 00 	mov	6(r4),	r15	;
    a31a:	0f 5e       	add	r14,	r15	;
    a31c:	8c 4f 0e 00 	mov	r15,	14(r12)	; 0x000e

0000a320 <.Loc.543.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempI;
    a320:	1d 54 04 00 	add	4(r4),	r13	;

0000a324 <.LVL107>:
    a324:	84 4d 04 00 	mov	r13,	4(r4)	;

0000a328 <.Loc.544.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) - tempR;
    a328:	1f 44 06 00 	mov	6(r4),	r15	;
    a32c:	0f 8e       	sub	r14,	r15	;

0000a32e <.Loc.544.1>:
    a32e:	84 4f 06 00 	mov	r15,	6(r4)	;
    a332:	77 3f       	jmp	$-272    	;abs 0xa222

0000a334 <.L46>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
    a334:	8c 4f 08 00 	mov	r15,	8(r12)	;

0000a338 <.Loc.493.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;
    a338:	1f 44 02 00 	mov	2(r4),	r15	;
    a33c:	0f 8d       	sub	r13,	r15	;
    a33e:	8c 4f 0a 00 	mov	r15,	10(r12)	; 0x000a

0000a342 <.Loc.496.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
    a342:	2e 54       	add	@r4,	r14	;

0000a344 <.LVL109>:
    a344:	84 4e 00 00 	mov	r14,	0(r4)	;

0000a348 <.Loc.497.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    a348:	1d 54 02 00 	add	2(r4),	r13	;

0000a34c <.LVL110>:
    a34c:	84 4d 02 00 	mov	r13,	2(r4)	;

0000a350 <.Loc.501.1>:
    if (!*overflow)
    a350:	07 93       	cmp	#0,	r7	;r3 As==00
    a352:	a8 27       	jz	$-174    	;abs 0xa2a4

0000a354 <.LVL111>:
            msp_cmplx_btfly_c1_auto_q15(&((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[2], &((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[2 + STAGE2_STEP], &scale, &overflow);
    a354:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a358:	4d 43       	clr.b	r13		;
    a35a:	0c 48       	mov	r8,	r12	;
    a35c:	b0 12 ac a8 	call	#-22356	;#0xa8ac
    a360:	04 4c       	mov	r12,	r4	;

0000a362 <.Loc.230.1>:
    a362:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a366:	4d 43       	clr.b	r13		;
    a368:	0c 48       	mov	r8,	r12	;
    a36a:	b0 12 ac a8 	call	#-22356	;#0xa8ac

0000a36e <.Loc.522.1>:
    int16_t tempR = CMPLX_REAL(srcB);
    a36e:	1e 4c 0c 00 	mov	12(r12),r14	;0x0000c

0000a372 <.LVL114>:
    int16_t tempI = CMPLX_IMAG(srcB);
    a372:	1d 4c 0e 00 	mov	14(r12),r13	;0x0000e

0000a376 <.LVL115>:
    if (*scale)
    a376:	ca 3f       	jmp	$-106    	;abs 0xa30c

0000a378 <task_fft_stage_1>:
{
    a378:	6a 15       	pushm	#7,	r10	;16-bit words

0000a37a <.LCFI20>:
    a37a:	21 82       	sub	#4,	r1	;r2 As==10

0000a37c <.LCFI21>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    a37c:	b0 12 8a a8 	call	#-22390	;#0xa88a
    a380:	81 4c 00 00 	mov	r12,	0(r1)	;

0000a384 <.Loc.149.1>:
        fft_array_copy[i] = __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i];
    a384:	5c 06       	rlam	#2,	r12	;
    a386:	81 4c 02 00 	mov	r12,	2(r1)	;
    a38a:	2c 51       	add	@r1,	r12	;
    a38c:	5c 02       	rlam	#1,	r12	;
    a38e:	1d 4c 08 8a 	mov	-30200(r12),r13	;0xffff8a08
    a392:	3a 40 00 8b 	mov	#-29952,r10	;#0x8b00
    a396:	39 40 00 8c 	mov	#-29696,r9	;#0x8c00
    a39a:	0c 4a       	mov	r10,	r12	;

0000a39c <.L74>:
    a39c:	bc 4d 00 00 	mov	@r13+,	0(r12)	;
    a3a0:	2c 53       	incd	r12		;

0000a3a2 <.Loc.158.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a3a2:	09 9c       	cmp	r12,	r9	;
    a3a4:	fb 23       	jnz	$-8      	;abs 0xa39c
    a3a6:	3c 40 00 8b 	mov	#-29952,r12	;#0x8b00

0000a3aa <.Loc.164.1>:
    overflow = false;
    a3aa:	45 43       	clr.b	r5		;

0000a3ac <.LBB114>:
        *overflow = true;
    a3ac:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000a3ae <.L77>:
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    a3ae:	2d 4c       	mov	@r12,	r13	;
    a3b0:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a3b4 <.Loc.401.1>:
    a3b4:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a3b8:	0f 9d       	cmp	r13,	r15	;
    a3ba:	01 2c       	jc	$+4      	;abs 0xa3be

0000a3bc <.Loc.403.1>:
        *overflow = true;
    a3bc:	05 4e       	mov	r14,	r5	;

0000a3be <.L75>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a3be:	1d 4c 02 00 	mov	2(r12),	r13	;
    a3c2:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a3c6 <.Loc.405.1>:
    a3c6:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a3ca:	0f 9d       	cmp	r13,	r15	;
    a3cc:	01 2c       	jc	$+4      	;abs 0xa3d0

0000a3ce <.Loc.407.1>:
        *overflow = true;
    a3ce:	05 4e       	mov	r14,	r5	;

0000a3d0 <.L76>:
    for (i = 0; i < length; i++)
    a3d0:	2c 52       	add	#4,	r12	;r2 As==10

0000a3d2 <.Loc.165.1>:
    a3d2:	09 9c       	cmp	r12,	r9	;
    a3d4:	ec 23       	jnz	$-38     	;abs 0xa3ae

0000a3d6 <.LVL123>:
    __INK_GET_VAR_FROM_BUF(fft_shift) = scale ? 1 : 0;
    a3d6:	1c 41 02 00 	mov	2(r1),	r12	;
    a3da:	2c 51       	add	@r1,	r12	;
    a3dc:	5c 02       	rlam	#1,	r12	;

0000a3de <.Loc.175.1>:
    a3de:	1c 4c 02 8a 	mov	-30206(r12),r12	;0xffff8a02

0000a3e2 <.Loc.175.1>:
    a3e2:	8c 45 00 00 	mov	r5,	0(r12)	;

0000a3e6 <.Loc.175.1>:
    a3e6:	34 40 00 8b 	mov	#-29952,r4	;#0x8b00

0000a3ea <.Loc.172.1>:
    overflow = false;
    a3ea:	47 43       	clr.b	r7		;

0000a3ec <.LBB118>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a3ec:	56 43       	mov.b	#1,	r6	;r3 As==01

0000a3ee <.L84>:
            msp_cmplx_btfly_c0_auto_q15(&((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[0], &((int16_t *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(srcPtr, 15))[0 + STAGE1_STEP], &scale, &overflow);
    a3ee:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a3f2:	4d 43       	clr.b	r13		;
    a3f4:	0c 44       	mov	r4,	r12	;
    a3f6:	b0 12 ac a8 	call	#-22356	;#0xa8ac
    a3fa:	08 4c       	mov	r12,	r8	;

0000a3fc <.Loc.182.1>:
    a3fc:	7e 40 0f 00 	mov.b	#15,	r14	;#0x000f
    a400:	4d 43       	clr.b	r13		;
    a402:	0c 44       	mov	r4,	r12	;
    a404:	b0 12 ac a8 	call	#-22356	;#0xa8ac

0000a408 <.LVL127>:
    int16_t tempR = CMPLX_REAL(srcB);
    a408:	1e 4c 04 00 	mov	4(r12),	r14	;

0000a40c <.LVL128>:
    int16_t tempI = CMPLX_IMAG(srcB);
    a40c:	1d 4c 06 00 	mov	6(r12),	r13	;

0000a410 <.LVL129>:
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    a410:	2f 48       	mov	@r8,	r15	;
    a412:	0f 8e       	sub	r14,	r15	;

0000a414 <.Loc.479.1>:
    if (*scale)
    a414:	05 93       	cmp	#0,	r5	;r3 As==00
    a416:	52 24       	jz	$+166    	;abs 0xa4bc

0000a418 <.Loc.482.1>:
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    a418:	5f 01       	rram	#1,	r15	;
    a41a:	8c 4f 04 00 	mov	r15,	4(r12)	;

0000a41e <.Loc.483.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;
    a41e:	1f 48 02 00 	mov	2(r8),	r15	;
    a422:	0f 8d       	sub	r13,	r15	;

0000a424 <.Loc.483.1>:
    a424:	5f 01       	rram	#1,	r15	;
    a426:	8c 4f 06 00 	mov	r15,	6(r12)	;

0000a42a <.Loc.486.1>:
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
    a42a:	2e 58       	add	@r8,	r14	;

0000a42c <.LVL130>:
    a42c:	5e 01       	rram	#1,	r14	;

0000a42e <.Loc.486.1>:
    a42e:	88 4e 00 00 	mov	r14,	0(r8)	;

0000a432 <.Loc.487.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    a432:	1d 58 02 00 	add	2(r8),	r13	;

0000a436 <.LVL131>:
    a436:	5d 01       	rram	#1,	r13	;

0000a438 <.Loc.487.1>:
    a438:	88 4d 02 00 	mov	r13,	2(r8)	;

0000a43c <.L79>:
    if (!*overflow)
    a43c:	07 93       	cmp	#0,	r7	;r3 As==00
    a43e:	21 20       	jnz	$+68     	;abs 0xa482

0000a440 <.LBB125>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a440:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a444 <.Loc.407.1>:
        *overflow = true;
    a444:	07 46       	mov	r6,	r7	;

0000a446 <.Loc.405.1>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a446:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a44a:	0f 9d       	cmp	r13,	r15	;
    a44c:	08 28       	jnc	$+18     	;abs 0xa45e

0000a44e <.Loc.401.1>:
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    a44e:	3e 50 00 20 	add	#8192,	r14	;#0x2000

0000a452 <.Loc.401.1>:
    a452:	57 43       	mov.b	#1,	r7	;r3 As==01
    a454:	0f 9e       	cmp	r14,	r15	;
    a456:	01 28       	jnc	$+4      	;abs 0xa45a
    a458:	47 43       	clr.b	r7		;

0000a45a <.L82>:
    a45a:	37 f0 ff 00 	and	#255,	r7	;#0x00ff

0000a45e <.L81>:
    a45e:	1d 4c 04 00 	mov	4(r12),	r13	;
    a462:	3d 50 00 20 	add	#8192,	r13	;#0x2000

0000a466 <.Loc.401.1>:
    a466:	3e 40 ff 3f 	mov	#16383,	r14	;#0x3fff
    a46a:	0e 9d       	cmp	r13,	r14	;
    a46c:	01 2c       	jc	$+4      	;abs 0xa470

0000a46e <.Loc.403.1>:
        *overflow = true;
    a46e:	07 46       	mov	r6,	r7	;

0000a470 <.L83>:
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    a470:	1c 4c 06 00 	mov	6(r12),	r12	;
    a474:	3c 50 00 20 	add	#8192,	r12	;#0x2000

0000a478 <.Loc.405.1>:
    a478:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    a47c:	0f 9c       	cmp	r12,	r15	;
    a47e:	01 2c       	jc	$+4      	;abs 0xa482
    a480:	07 46       	mov	r6,	r7	;

0000a482 <.L80>:
        for (j = 0; j < length; j += STAGE1_STEP)
    a482:	34 52       	add	#8,	r4	;r2 As==11

0000a484 <.LVL138>:
    a484:	09 94       	cmp	r4,	r9	;
    a486:	b3 23       	jnz	$-152    	;abs 0xa3ee

0000a488 <.Loc.187.1>:
    __INK_GET_VAR_FROM_BUF(fft_scale)    = scale;
    a488:	1c 41 02 00 	mov	2(r1),	r12	;
    a48c:	2c 51       	add	@r1,	r12	;
    a48e:	5c 02       	rlam	#1,	r12	;

0000a490 <.Loc.187.1>:
    a490:	1d 4c 04 8a 	mov	-30204(r12),r13	;0xffff8a04
    a494:	cd 45 00 00 	mov.b	r5,	0(r13)	;

0000a498 <.Loc.188.1>:
    __INK_GET_VAR_FROM_BUF(fft_overflow) = overflow;
    a498:	1d 4c 06 8a 	mov	-30202(r12),r13	;0xffff8a06

0000a49c <.Loc.187.1>:
    __INK_GET_VAR_FROM_BUF(fft_scale)    = scale;
    a49c:	3c 50 00 8a 	add	#-30208,r12	;#0x8a00

0000a4a0 <.Loc.188.1>:
    __INK_GET_VAR_FROM_BUF(fft_overflow) = overflow;
    a4a0:	cd 47 00 00 	mov.b	r7,	0(r13)	;

0000a4a4 <.Loc.191.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a4a4:	1c 4c 08 00 	mov	8(r12),	r12	;

0000a4a8 <.L85>:
        __INK_GET_VAR_FROM_BUF_ARRAY(fft_array)[i] = fft_array_copy[i];
    a4a8:	bc 4a 00 00 	mov	@r10+,	0(r12)	;
    a4ac:	2c 53       	incd	r12		;

0000a4ae <.Loc.191.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a4ae:	09 9a       	cmp	r10,	r9	;
    a4b0:	fb 23       	jnz	$-8      	;abs 0xa4a8

0000a4b2 <.LVL141>:
}
    a4b2:	3c 40 34 a1 	mov	#-24268,r12	;#0xa134
    a4b6:	21 52       	add	#4,	r1	;r2 As==10

0000a4b8 <.LCFI22>:
    a4b8:	64 17       	popm	#7,	r10	;16-bit words

0000a4ba <.LCFI23>:
    a4ba:	30 41       	ret			

0000a4bc <.L78>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
    a4bc:	8c 4f 04 00 	mov	r15,	4(r12)	;

0000a4c0 <.Loc.493.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;
    a4c0:	1f 48 02 00 	mov	2(r8),	r15	;
    a4c4:	0f 8d       	sub	r13,	r15	;
    a4c6:	8c 4f 06 00 	mov	r15,	6(r12)	;

0000a4ca <.Loc.496.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
    a4ca:	2e 58       	add	@r8,	r14	;

0000a4cc <.LVL144>:
    a4cc:	88 4e 00 00 	mov	r14,	0(r8)	;

0000a4d0 <.Loc.497.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    a4d0:	1d 58 02 00 	add	2(r8),	r13	;

0000a4d4 <.LVL145>:
    a4d4:	88 4d 02 00 	mov	r13,	2(r8)	;
    a4d8:	b1 3f       	jmp	$-156    	;abs 0xa43c

0000a4da <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    a4da:	b0 12 d0 a8 	call	#-22320	;#0xa8d0
    a4de:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    a4e0:	01 20       	jnz	$+4      	;abs 0xa4e4

0000a4e2 <.Loc.76.1>:
    a4e2:	30 41       	ret			

0000a4e4 <.L98>:
    a4e4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    a4e6:	3d 40 38 9c 	mov	#-25544,r13	;#0x9c38
    a4ea:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    a4ee:	b0 12 40 a9 	call	#-22208	;#0xa940

0000a4f2 <.Loc.76.1>:
    a4f2:	30 41       	ret			

0000a4f4 <main>:
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    a4f4:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    a4f8:	5c 01 

0000a4fa <.Loc.381.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    a4fa:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

0000a4fe <.Loc.384.1>:
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
    a4fe:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    a502:	22 02 

0000a504 <.Loc.384.1>:
    a504:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    a508:	24 02 

0000a50a <.Loc.384.1>:
    a50a:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    a50e:	22 02 

0000a510 <.Loc.384.1>:
    ink_scheduler_run();
    a510:	b0 12 ac ae 	call	#-20820	;#0xaeac

0000a514 <.Loc.390.1>:
}
    a514:	4c 43       	clr.b	r12		;
    a516:	30 41       	ret			

0000a518 <__ink_initialize_shared_vars_15>:
        msp_cmplx_overflow_q15(srcA, overflow);
        msp_cmplx_overflow_q15(srcB, overflow);
    }
}
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS(iteration);
    a518:	3c 40 00 8a 	mov	#-30208,r12	;#0x8a00
    a51c:	bc 40 f4 9a 	mov	#-25868,0(r12)	;#0x9af4
    a520:	00 00 

0000a522 <.Loc.555.1>:
    a522:	3d 40 06 01 	mov	#262,	r13	;#0x0106
    a526:	3d 50 f4 9a 	add	#-25868,r13	;#0x9af4
    a52a:	8c 4d 0a 00 	mov	r13,	10(r12)	; 0x000a

0000a52e <.Loc.555.1>:
    __INK_SET_BUFFER_POINTERS(fft_shift);
    a52e:	bc 40 f2 9a 	mov	#-25870,2(r12)	;#0x9af2
    a532:	02 00 

0000a534 <.Loc.556.1>:
    a534:	3d 40 06 01 	mov	#262,	r13	;#0x0106
    a538:	3d 50 f2 9a 	add	#-25870,r13	;#0x9af2
    a53c:	8c 4d 0c 00 	mov	r13,	12(r12)	; 0x000c

0000a540 <.Loc.556.1>:
    __INK_SET_BUFFER_POINTERS(fft_scale);
    a540:	bc 40 f1 9a 	mov	#-25871,4(r12)	;#0x9af1
    a544:	04 00 

0000a546 <.Loc.557.1>:
    a546:	3d 40 06 01 	mov	#262,	r13	;#0x0106
    a54a:	3d 50 f1 9a 	add	#-25871,r13	;#0x9af1
    a54e:	8c 4d 0e 00 	mov	r13,	14(r12)	; 0x000e

0000a552 <.Loc.557.1>:
    __INK_SET_BUFFER_POINTERS(fft_overflow);
    a552:	bc 40 f0 9a 	mov	#-25872,6(r12)	;#0x9af0
    a556:	06 00 

0000a558 <.Loc.558.1>:
    a558:	3d 40 06 01 	mov	#262,	r13	;#0x0106
    a55c:	3d 50 f0 9a 	add	#-25872,r13	;#0x9af0
    a560:	8c 4d 10 00 	mov	r13,	16(r12)	; 0x0010

0000a564 <.Loc.558.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(fft_array);
    a564:	bc 40 f0 99 	mov	#-26128,8(r12)	;#0x99f0
    a568:	08 00 

0000a56a <.Loc.559.1>:
    a56a:	3d 40 06 01 	mov	#262,	r13	;#0x0106
    a56e:	3d 50 f0 99 	add	#-26128,r13	;#0x99f0
    a572:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000a576 <.Loc.559.1>:
}
    a576:	30 41       	ret			

0000a578 <msp_cmplx_bitrev_q15>:
/*
 * Perform an in-place bit reversal of the complex input array using a lookup
 * table.
 */
msp_status msp_cmplx_bitrev_q15(const msp_cmplx_bitrev_q15_params* params, _q15* src)
{
    a578:	3a 15       	pushm	#4,	r10	;16-bit words

0000a57a <.LCFI0>:
    uint32_t  temp;         // Temporary storage
    uint32_t* srcPtr;       // Treat complex data pairs as 32-bit data

    /* Initialize source pointer and length. */
    srcPtr   = (uint32_t*)src;
    length   = params->length;
    a57a:	29 4c       	mov	@r12,	r9	;

0000a57c <.LVL2>:
    index    = 0;
    indexInc = 2;

    /* Calculate index increment for left justified index. */
    while (length < 0x8000)
    a57c:	0c 49       	mov	r9,	r12	;

0000a57e <.LVL3>:
    indexInc = 2;
    a57e:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000a580 <.Loc.157.1>:
    while (length < 0x8000)
    a580:	09 93       	cmp	#0,	r9	;r3 As==00
    a582:	04 38       	jl	$+10     	;abs 0xa58c

0000a584 <.L3>:
    {
        indexInc <<= 1;
    a584:	5e 02       	rlam	#1,	r14	;

0000a586 <.Loc.160.1>:
        length   <<= 1;
    a586:	5c 02       	rlam	#1,	r12	;

0000a588 <L0^A>:
    while (length < 0x8000)
    a588:	0c 93       	cmp	#0,	r12	;r3 As==00
    a58a:	fc 37       	jge	$-6      	;abs 0xa584

0000a58c <.L2>:
    }

#ifndef MSP_DISABLE_DIAGNOSTICS
    /* Check that the length is a power of two. */
    if (length != 0x8000)
    a58c:	3c 90 00 80 	cmp	#-32768,r12	;#0x8000
    a590:	2a 20       	jnz	$+86     	;abs 0xa5e6

0000a592 <.LVL8>:
    }
#endif  // MSP_DISABLE_DIAGNOSTICS

    /* In-place bit-reversal using fixed table length. */
    length = params->length;
    for (i = 0; i < length; i++, index += indexInc)
    a592:	09 93       	cmp	#0,	r9	;r3 As==00
    a594:	25 24       	jz	$+76     	;abs 0xa5e0
    a596:	07 4d       	mov	r13,	r7	;

0000a598 <.Loc.153.1>:
    index    = 0;
    a598:	48 43       	clr.b	r8		;

0000a59a <.Loc.173.1>:
    for (i = 0; i < length; i++, index += indexInc)
    a59a:	4f 43       	clr.b	r15		;

0000a59c <.L7>:
    {
        /* Calculate bit reversed index. */
        indexBitRev = ((uint16_t)msp_cmplx_bitrev_table_ui8[index & 0xff] << 8) +
    a59c:	0c 48       	mov	r8,	r12	;
    a59e:	7c f0 ff 00 	and.b	#255,	r12	;#0x00ff

0000a5a2 <.Loc.176.1>:
    a5a2:	5c 4c 04 87 	mov.b	-30972(r12),r12	;0xffff8704
    a5a6:	47 18 0c 5c 	rpt #8 { rlax.w	r12		;

0000a5aa <.Loc.177.1>:
                      ((uint16_t)msp_cmplx_bitrev_table_ui8[(index >> 8) & 0xff]);
    a5aa:	0a 48       	mov	r8,	r10	;
    a5ac:	47 19 0a 10 	rpt #8 { rrux.w	r10		;

0000a5b0 <.Loc.176.1>:
        indexBitRev = ((uint16_t)msp_cmplx_bitrev_table_ui8[index & 0xff] << 8) +
    a5b0:	5a 4a 04 87 	mov.b	-30972(r10),r10	;0xffff8704
    a5b4:	0c 5a       	add	r10,	r12	;

0000a5b6 <.LVL10>:

        if (i < indexBitRev)
    a5b6:	0f 9c       	cmp	r12,	r15	;
    a5b8:	0e 2c       	jc	$+30     	;abs 0xa5d6

0000a5ba <.Loc.182.1>:
        {
            /* Swap inputs. */
            temp                = srcPtr[i];
    a5ba:	2a 47       	mov	@r7,	r10	;
    a5bc:	1b 47 02 00 	mov	2(r7),	r11	;

0000a5c0 <.LVL11>:
            srcPtr[i]           = srcPtr[indexBitRev];
    a5c0:	5c 06       	rlam	#2,	r12	;

0000a5c2 <.LVL12>:
    a5c2:	0c 5d       	add	r13,	r12	;

0000a5c4 <.Loc.183.1>:
    a5c4:	a7 4c 00 00 	mov	@r12,	0(r7)	;
    a5c8:	97 4c 02 00 	mov	2(r12),	2(r7)	;
    a5cc:	02 00 

0000a5ce <.Loc.184.1>:
            srcPtr[indexBitRev] = temp;
    a5ce:	8c 4a 00 00 	mov	r10,	0(r12)	;
    a5d2:	8c 4b 02 00 	mov	r11,	2(r12)	;

0000a5d6 <.L6>:
    for (i = 0; i < length; i++, index += indexInc)
    a5d6:	1f 53       	inc	r15		;

0000a5d8 <.Loc.173.1>:
    a5d8:	08 5e       	add	r14,	r8	;

0000a5da <.Loc.173.1>:
    a5da:	27 52       	add	#4,	r7	;r2 As==10

0000a5dc <.Loc.173.1>:
    a5dc:	09 9f       	cmp	r15,	r9	;
    a5de:	de 23       	jnz	$-66     	;abs 0xa59c

0000a5e0 <.L8>:
        }
    }

    return MSP_SUCCESS;
    a5e0:	4c 43       	clr.b	r12		;

0000a5e2 <.Loc.189.1>:
}
    a5e2:	37 17       	popm	#4,	r10	;16-bit words

0000a5e4 <.LCFI1>:
    a5e4:	30 41       	ret			

0000a5e6 <.L10>:
        return MSP_SIZE_ERROR;
    a5e6:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a5e8 <.LVL18>:
}
    a5e8:	37 17       	popm	#4,	r10	;16-bit words

0000a5ea <.LCFI3>:
    a5ea:	30 41       	ret			

0000a5ec <msp_split_q15>:
 *     G(N-k) = A*(k) - j*B*(k)
 *
 * Reference: http://www.ti.com/lit/an/spra291/spra291.pdf
 */
msp_status msp_split_q15(const msp_split_q15_params* params, int16_t* src)
{
    a5ec:	6a 15       	pushm	#7,	r10	;16-bit words

0000a5ee <.LCFI0>:
    a5ee:	31 80 0e 00 	sub	#14,	r1	;#0x000e

0000a5f2 <.LCFI1>:
    int16_t*       srcPtrK;      // Source pointer to X(k)
    int16_t*       srcPtrNK;     // Source pointer to X(N-k)
    const int16_t* coeffPtr;     // Coefficient pointer

    /* Save input length to local. */
    length = params->length;
    a5f2:	2e 4c       	mov	@r12,	r14	;

0000a5f4 <.LVL1>:

#ifndef MSP_DISABLE_DIAGNOSTICS
    /* Check that the length is a power of two. */
    if ((length & (length - 1)))
    a5f4:	0f 4e       	mov	r14,	r15	;
    a5f6:	3f 53       	add	#-1,	r15	;r3 As==11

0000a5f8 <.Loc.179.1>:
    a5f8:	0a 4f       	mov	r15,	r10	;
    a5fa:	0a fe       	and	r14,	r10	;
    a5fc:	81 4a 08 00 	mov	r10,	8(r1)	;

0000a600 <.Loc.179.1>:
    a600:	0f be       	bit	r14,	r15	;
    a602:	2c 21       	jnz	$+602    	;abs 0xa85c

0000a604 <.Loc.185.1>:
    {
        return MSP_SIZE_ERROR;
    }

    /* Check that the provided table is the correct length. */
    if (*(uint16_t*)params->twiddleTable < length)
    a604:	1a 4c 02 00 	mov	2(r12),	r10	;

0000a608 <.Loc.185.1>:
    a608:	8a 9e 00 00 	cmp	r14,	0(r10)	;
    a60c:	32 29       	jnc	$+614    	;abs 0xa872

0000a60e <.Loc.198.1>:
     *
     *     X(N) = X(0)
     *     G(0) = 0.5*(X(0) + X*(0)) - j*0.5*(e^-j*0)*(X(0) - X*(0))
     *     G(0) = Xr(0) + Xi(0)
     */
    CMPLX_REAL(src) = CMPLX_REAL(src) + CMPLX_IMAG(src);
    a60e:	9d 5d 02 00 	rla	2(r13)		;
    a612:	00 00 

0000a614 <.Loc.199.1>:
    CMPLX_IMAG(src) = 0;
    a614:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

0000a618 <.Loc.202.1>:

    /* Initialize Src(k) and Src(N/2-k) pointers when k=1. */
    srcPtrK  = src + CMPLX_INCREMENT;
    a618:	0b 4d       	mov	r13,	r11	;
    a61a:	2b 52       	add	#4,	r11	;r2 As==10
    a61c:	81 4b 06 00 	mov	r11,	6(r1)	;

0000a620 <.LVL2>:
    srcPtrNK = src + length - CMPLX_INCREMENT;
    a620:	3f 50 ff 7f 	add	#32767,	r15	;#0x7fff
    a624:	5f 02       	rlam	#1,	r15	;

0000a626 <.Loc.203.1>:
    a626:	06 4d       	mov	r13,	r6	;
    a628:	06 5f       	add	r15,	r6	;

0000a62a <.LVL3>:

    /* Calculate coefficient table offset. */
    coeffOffset = 2;
    tableLength = *(uint16_t*)params->twiddleTable;
    a62a:	2f 4a       	mov	@r10,	r15	;

0000a62c <.LVL4>:
    while (length < tableLength)
    a62c:	0e 9f       	cmp	r15,	r14	;
    a62e:	1e 2d       	jc	$+574    	;abs 0xa86c

0000a630 <.Loc.206.1>:
    coeffOffset = 2;
    a630:	6d 43       	mov.b	#2,	r13	;r3 As==10

0000a632 <.L4>:
    {
        coeffOffset *= 2;
    a632:	5d 02       	rlam	#1,	r13	;

0000a634 <.Loc.211.1>:
        length      *= 2;
    a634:	5e 02       	rlam	#1,	r14	;

0000a636 <.Loc.208.1>:
    while (length < tableLength)
    a636:	0e 9f       	cmp	r15,	r14	;
    a638:	fc 2b       	jnc	$-6      	;abs 0xa632
    a63a:	0e 4d       	mov	r13,	r14	;

0000a63c <.LVL8>:
    a63c:	2e 53       	incd	r14		;
    a63e:	5e 02       	rlam	#1,	r14	;

0000a640 <.L3>:
    }

    /* Initialize coefficient pointer to index k=1. */
    coeffPtr = &params->twiddleTable[DSPLIB_TABLE_OFFSET] + coeffOffset;
    a640:	07 4a       	mov	r10,	r7	;
    a642:	07 5e       	add	r14,	r7	;

0000a644 <.LVL10>:
     * Initialize length of split operations to perform. G(k) and G(N/2-k) are
     * calculated in the same loop iteration so only half of the N/2 iterations
     * are required, N/4. The last iteration where k = N/2-k will be calculated
     * separately.
     */
    length = (params->length >> 2) - 1;
    a644:	2c 4c       	mov	@r12,	r12	;

0000a646 <.LVL11>:
    a646:	5c 07       	rrum	#2,	r12	;
    a648:	81 4c 0a 00 	mov	r12,	10(r1)	; 0x000a

0000a64c <.Loc.227.1>:

    /* If MPY32 is available save control context and set to fractional mode. */
#if defined(__MSP430_HAS_MPY32__)
    uint16_t ui16MPYState = MPY32CTL0;
    a64c:	91 42 ec 04 	mov	&0x04ec,12(r1)	;0x04ec, 0x000c
    a650:	0c 00 

0000a652 <.LVL13>:
    MPY32CTL0             = MPYFRAC | MPYDLYWRTEN;
    a652:	b2 40 04 01 	mov	#260,	&0x04ec	;#0x0104
    a656:	ec 04 

0000a658 <.LVL14>:
#endif

    /* Loop through and perform all of the split operations. */
    while (length--)
    a658:	05 4c       	mov	r12,	r5	;
    a65a:	35 50 fe ff 	add	#-2,	r5	;#0xfffe

0000a65e <.LVL15>:
    a65e:	1c 93       	cmp	#1,	r12	;r3 As==01
    a660:	ed 24       	jz	$+476    	;abs 0xa83c

0000a662 <.Loc.264.1>:
        CMPLX_IMAG(srcPtrNK) = -(aI + bR);

        /* Update pointers. */
        srcPtrK  += CMPLX_INCREMENT;
        srcPtrNK -= CMPLX_INCREMENT;
        coeffPtr += coeffOffset;
    a662:	5d 02       	rlam	#1,	r13	;
    a664:	81 4d 04 00 	mov	r13,	4(r1)	;

0000a668 <.Loc.202.1>:
    srcPtrK  = src + CMPLX_INCREMENT;
    a668:	14 41 06 00 	mov	6(r1),	r4	;

0000a66c <.L6>:
        bR = CMPLX_REAL(srcPtrK) - CMPLX_REAL(srcPtrNK);
    a66c:	2d 44       	mov	@r4,	r13	;
    a66e:	2d 86       	sub	@r6,	r13	;

0000a670 <.LVL17>:
        bI = CMPLX_IMAG(srcPtrK) + CMPLX_IMAG(srcPtrNK);
    a670:	19 44 02 00 	mov	2(r4),	r9	;
    a674:	19 56 02 00 	add	2(r6),	r9	;

0000a678 <.LVL18>:
        cR = CMPLX_REAL(coeffPtr) >> 1;
    a678:	2c 47       	mov	@r7,	r12	;
    a67a:	5c 01       	rram	#1,	r12	;

0000a67c <.LVL19>:
        cI = CMPLX_IMAG(coeffPtr) >> 1;
    a67c:	18 47 02 00 	mov	2(r7),	r8	;
    a680:	58 01       	rram	#1,	r8	;

0000a682 <.LBB4>:
//! \return Q15 result
//
//******************************************************************************
static inline void __q15cmpy(int16_t* aR, int16_t* aI, const int16_t* bR, const int16_t* bI)
{
    int16_t resR = __q15mpy(*aR, *bR) - __q15mpy(*aI, *bI);
    a682:	0a 4d       	mov	r13,	r10	;
    a684:	02 12       	push	r2		;
    a686:	32 c2       	dint			
    a688:	03 43       	nop			
    a68a:	82 4a c2 04 	mov	r10,	&0x04c2	;
    a68e:	82 4c c8 04 	mov	r12,	&0x04c8	;
    a692:	1a 42 ca 04 	mov	&0x04ca,r10	;0x04ca
    a696:	1b 42 cc 04 	mov	&0x04cc,r11	;0x04cc
    a69a:	32 41       	pop	r2		;
    a69c:	0b 11       	rra	r11		;
    a69e:	0a 10       	rrc	r10		;
    a6a0:	0b 11       	rra	r11		;
    a6a2:	0a 10       	rrc	r10		;
    a6a4:	0b 11       	rra	r11		;
    a6a6:	0a 10       	rrc	r10		;
    a6a8:	0b 11       	rra	r11		;
    a6aa:	0a 10       	rrc	r10		;
    a6ac:	0b 11       	rra	r11		;
    a6ae:	0a 10       	rrc	r10		;
    a6b0:	0b 11       	rra	r11		;
    a6b2:	0a 10       	rrc	r10		;
    a6b4:	0b 11       	rra	r11		;
    a6b6:	0a 10       	rrc	r10		;
    a6b8:	0b 11       	rra	r11		;
    a6ba:	0a 10       	rrc	r10		;
    a6bc:	0b 11       	rra	r11		;
    a6be:	0a 10       	rrc	r10		;
    a6c0:	0b 11       	rra	r11		;
    a6c2:	0a 10       	rrc	r10		;
    a6c4:	0b 11       	rra	r11		;
    a6c6:	0a 10       	rrc	r10		;
    a6c8:	0b 11       	rra	r11		;
    a6ca:	0a 10       	rrc	r10		;
    a6cc:	0b 11       	rra	r11		;
    a6ce:	0a 10       	rrc	r10		;
    a6d0:	0b 11       	rra	r11		;
    a6d2:	0a 10       	rrc	r10		;
    a6d4:	0b 11       	rra	r11		;
    a6d6:	0a 10       	rrc	r10		;
    a6d8:	81 4a 00 00 	mov	r10,	0(r1)	;

0000a6dc <.Loc.601.2>:
    a6dc:	0e 49       	mov	r9,	r14	;
    a6de:	02 12       	push	r2		;
    a6e0:	32 c2       	dint			
    a6e2:	03 43       	nop			
    a6e4:	82 4e c2 04 	mov	r14,	&0x04c2	;
    a6e8:	82 48 c8 04 	mov	r8,	&0x04c8	;
    a6ec:	1e 42 ca 04 	mov	&0x04ca,r14	;0x04ca
    a6f0:	1f 42 cc 04 	mov	&0x04cc,r15	;0x04cc
    a6f4:	32 41       	pop	r2		;
    a6f6:	0a 4e       	mov	r14,	r10	;
    a6f8:	0b 4f       	mov	r15,	r11	;
    a6fa:	0b 11       	rra	r11		;
    a6fc:	0a 10       	rrc	r10		;
    a6fe:	0b 11       	rra	r11		;
    a700:	0a 10       	rrc	r10		;
    a702:	0b 11       	rra	r11		;
    a704:	0a 10       	rrc	r10		;
    a706:	0b 11       	rra	r11		;
    a708:	0a 10       	rrc	r10		;
    a70a:	0b 11       	rra	r11		;
    a70c:	0a 10       	rrc	r10		;
    a70e:	0b 11       	rra	r11		;
    a710:	0a 10       	rrc	r10		;
    a712:	0b 11       	rra	r11		;
    a714:	0a 10       	rrc	r10		;
    a716:	0b 11       	rra	r11		;
    a718:	0a 10       	rrc	r10		;
    a71a:	0b 11       	rra	r11		;
    a71c:	0a 10       	rrc	r10		;
    a71e:	0b 11       	rra	r11		;
    a720:	0a 10       	rrc	r10		;
    a722:	0b 11       	rra	r11		;
    a724:	0a 10       	rrc	r10		;
    a726:	0b 11       	rra	r11		;
    a728:	0a 10       	rrc	r10		;
    a72a:	0b 11       	rra	r11		;
    a72c:	0a 10       	rrc	r10		;
    a72e:	0b 11       	rra	r11		;
    a730:	0a 10       	rrc	r10		;
    a732:	0b 11       	rra	r11		;
    a734:	0a 10       	rrc	r10		;

0000a736 <.Loc.601.2>:
    a736:	2b 41       	mov	@r1,	r11	;
    a738:	0b 8a       	sub	r10,	r11	;

0000a73a <.LVL21>:
    int16_t resI = __q15mpy(*aR, *bI) + __q15mpy(*aI, *bR);
    a73a:	0e 4d       	mov	r13,	r14	;
    a73c:	02 12       	push	r2		;
    a73e:	32 c2       	dint			
    a740:	03 43       	nop			
    a742:	82 4e c2 04 	mov	r14,	&0x04c2	;
    a746:	82 48 c8 04 	mov	r8,	&0x04c8	;
    a74a:	1e 42 ca 04 	mov	&0x04ca,r14	;0x04ca
    a74e:	1f 42 cc 04 	mov	&0x04cc,r15	;0x04cc
    a752:	32 41       	pop	r2		;
    a754:	81 4e 00 00 	mov	r14,	0(r1)	;
    a758:	81 4f 02 00 	mov	r15,	2(r1)	;
    a75c:	0f 11       	rra	r15		;
    a75e:	0e 10       	rrc	r14		;
    a760:	0f 11       	rra	r15		;
    a762:	0e 10       	rrc	r14		;
    a764:	0f 11       	rra	r15		;
    a766:	0e 10       	rrc	r14		;
    a768:	0f 11       	rra	r15		;
    a76a:	0e 10       	rrc	r14		;
    a76c:	0f 11       	rra	r15		;
    a76e:	0e 10       	rrc	r14		;
    a770:	0f 11       	rra	r15		;
    a772:	0e 10       	rrc	r14		;
    a774:	0f 11       	rra	r15		;
    a776:	0e 10       	rrc	r14		;
    a778:	0f 11       	rra	r15		;
    a77a:	0e 10       	rrc	r14		;
    a77c:	0f 11       	rra	r15		;
    a77e:	0e 10       	rrc	r14		;
    a780:	0f 11       	rra	r15		;
    a782:	0e 10       	rrc	r14		;
    a784:	0f 11       	rra	r15		;
    a786:	0e 10       	rrc	r14		;
    a788:	0f 11       	rra	r15		;
    a78a:	0e 10       	rrc	r14		;
    a78c:	0f 11       	rra	r15		;
    a78e:	0e 10       	rrc	r14		;
    a790:	0f 11       	rra	r15		;
    a792:	0e 10       	rrc	r14		;
    a794:	0f 11       	rra	r15		;
    a796:	0e 10       	rrc	r14		;

0000a798 <.Loc.602.2>:
    a798:	02 12       	push	r2		;
    a79a:	32 c2       	dint			
    a79c:	03 43       	nop			
    a79e:	82 4c c2 04 	mov	r12,	&0x04c2	;
    a7a2:	82 49 c8 04 	mov	r9,	&0x04c8	;
    a7a6:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    a7aa:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    a7ae:	32 41       	pop	r2		;

0000a7b0 <.LVL22>:
    a7b0:	0d 11       	rra	r13		;
    a7b2:	0c 10       	rrc	r12		;
    a7b4:	0d 11       	rra	r13		;
    a7b6:	0c 10       	rrc	r12		;
    a7b8:	0d 11       	rra	r13		;
    a7ba:	0c 10       	rrc	r12		;
    a7bc:	0d 11       	rra	r13		;
    a7be:	0c 10       	rrc	r12		;
    a7c0:	0d 11       	rra	r13		;
    a7c2:	0c 10       	rrc	r12		;
    a7c4:	0d 11       	rra	r13		;
    a7c6:	0c 10       	rrc	r12		;
    a7c8:	0d 11       	rra	r13		;
    a7ca:	0c 10       	rrc	r12		;
    a7cc:	0d 11       	rra	r13		;
    a7ce:	0c 10       	rrc	r12		;
    a7d0:	0d 11       	rra	r13		;
    a7d2:	0c 10       	rrc	r12		;
    a7d4:	0d 11       	rra	r13		;
    a7d6:	0c 10       	rrc	r12		;
    a7d8:	0d 11       	rra	r13		;
    a7da:	0c 10       	rrc	r12		;
    a7dc:	0d 11       	rra	r13		;
    a7de:	0c 10       	rrc	r12		;
    a7e0:	0d 11       	rra	r13		;
    a7e2:	0c 10       	rrc	r12		;
    a7e4:	0d 11       	rra	r13		;
    a7e6:	0c 10       	rrc	r12		;
    a7e8:	0d 11       	rra	r13		;
    a7ea:	0c 10       	rrc	r12		;

0000a7ec <.Loc.602.2>:
    a7ec:	0c 5e       	add	r14,	r12	;

0000a7ee <.LBE4>:
        aR = (CMPLX_REAL(srcPtrK) + CMPLX_REAL(srcPtrNK)) >> 1;
    a7ee:	2d 44       	mov	@r4,	r13	;
    a7f0:	2d 56       	add	@r6,	r13	;

0000a7f2 <.Loc.247.1>:
    a7f2:	5d 01       	rram	#1,	r13	;

0000a7f4 <.LVL24>:
        aI = (CMPLX_IMAG(srcPtrK) - CMPLX_IMAG(srcPtrNK)) >> 1;
    a7f4:	1f 44 02 00 	mov	2(r4),	r15	;
    a7f8:	1f 86 02 00 	sub	2(r6),	r15	;

0000a7fc <.Loc.248.1>:
    a7fc:	5f 01       	rram	#1,	r15	;

0000a7fe <.LVL25>:
        CMPLX_REAL(srcPtrK)  = aR + bI;
    a7fe:	0a 4d       	mov	r13,	r10	;
    a800:	0a 5c       	add	r12,	r10	;
    a802:	84 4a 00 00 	mov	r10,	0(r4)	;

0000a806 <.Loc.257.1>:
        CMPLX_IMAG(srcPtrK)  = aI - bR;
    a806:	0e 4f       	mov	r15,	r14	;
    a808:	0e 8b       	sub	r11,	r14	;
    a80a:	84 4e 02 00 	mov	r14,	2(r4)	;

0000a80e <.Loc.258.1>:
        CMPLX_REAL(srcPtrNK) = aR - bI;
    a80e:	0d 8c       	sub	r12,	r13	;

0000a810 <.LVL27>:
    a810:	86 4d 00 00 	mov	r13,	0(r6)	;

0000a814 <.Loc.259.1>:
        CMPLX_IMAG(srcPtrNK) = -(aI + bR);
    a814:	0e 4f       	mov	r15,	r14	;
    a816:	0e 5b       	add	r11,	r14	;

0000a818 <.Loc.259.1>:
    a818:	4f 43       	clr.b	r15		;

0000a81a <.LVL28>:
    a81a:	0f 8e       	sub	r14,	r15	;
    a81c:	86 4f 02 00 	mov	r15,	2(r6)	;

0000a820 <.Loc.262.1>:
        srcPtrK  += CMPLX_INCREMENT;
    a820:	24 52       	add	#4,	r4	;r2 As==10

0000a822 <.Loc.263.1>:
        srcPtrNK -= CMPLX_INCREMENT;
    a822:	36 50 fc ff 	add	#-4,	r6	;#0xfffc

0000a826 <.Loc.264.1>:
        coeffPtr += coeffOffset;
    a826:	17 51 04 00 	add	4(r1),	r7	;

0000a82a <.Loc.232.1>:
    while (length--)
    a82a:	35 53       	add	#-1,	r5	;r3 As==11

0000a82c <.Loc.232.1>:
    a82c:	35 93       	cmp	#-1,	r5	;r3 As==11
    a82e:	1e 23       	jnz	$-450    	;abs 0xa66c
    a830:	1c 41 0a 00 	mov	10(r1),	r12	;0x0000a

0000a834 <.LVL33>:
    a834:	3c 53       	add	#-1,	r12	;r3 As==11
    a836:	5c 06       	rlam	#2,	r12	;
    a838:	81 5c 06 00 	add	r12,	6(r1)	;

0000a83c <.L5>:
    }

    /* Restore MPY32 control context. */
#if defined(__MSP430_HAS_MPY32__)
    MPY32CTL0 = ui16MPYState;
    a83c:	92 41 0c 00 	mov	12(r1),	&0x04ec	;0x0000c
    a840:	ec 04 

0000a842 <.Loc.280.1>:
     *     G(k) = 0.5*(X(k) + X*(k)) - j*0.5*(e^-j*pi/2)*(X(k) - X*(k))
     *     G(k) = 0.5(2*Xr(k)) - j*0.5*(-j)*(2*j*Xi(k))
     *     G(k) = Xr(k) - j*Xi(k)
     */
    CMPLX_REAL(srcPtrK) = CMPLX_REAL(srcPtrK);
    CMPLX_IMAG(srcPtrK) = -CMPLX_IMAG(srcPtrK);
    a842:	4b 43       	clr.b	r11		;
    a844:	1a 41 06 00 	mov	6(r1),	r10	;
    a848:	1b 8a 02 00 	sub	2(r10),	r11	;
    a84c:	8a 4b 02 00 	mov	r11,	2(r10)	;

0000a850 <.Loc.283.1>:

    return MSP_SUCCESS;
}
    a850:	1c 41 08 00 	mov	8(r1),	r12	;
    a854:	31 50 0e 00 	add	#14,	r1	;#0x000e

0000a858 <.LCFI2>:
    a858:	64 17       	popm	#7,	r10	;16-bit words

0000a85a <.LCFI3>:
    a85a:	30 41       	ret			

0000a85c <.L7>:
        return MSP_SIZE_ERROR;
    a85c:	91 43 08 00 	mov	#1,	8(r1)	;r3 As==01

0000a860 <.Loc.284.1>:
}
    a860:	1c 41 08 00 	mov	8(r1),	r12	;

0000a864 <.LVL36>:
    a864:	31 50 0e 00 	add	#14,	r1	;#0x000e

0000a868 <.LCFI5>:
    a868:	64 17       	popm	#7,	r10	;16-bit words

0000a86a <.LCFI6>:
    a86a:	30 41       	ret			

0000a86c <.L9>:
    while (length < tableLength)
    a86c:	7e 42       	mov.b	#8,	r14	;r2 As==11

0000a86e <.LVL38>:
    coeffOffset = 2;
    a86e:	6d 43       	mov.b	#2,	r13	;r3 As==10

0000a870 <.LVL39>:
    a870:	e7 3e       	jmp	$-560    	;abs 0xa640

0000a872 <.L8>:
        return MSP_TABLE_SIZE_ERROR;
    a872:	b1 40 03 00 	mov	#3,	8(r1)	;
    a876:	08 00 

0000a878 <.Loc.284.1>:
}
    a878:	1c 41 08 00 	mov	8(r1),	r12	;

0000a87c <.LVL41>:
    a87c:	31 50 0e 00 	add	#14,	r1	;#0x000e

0000a880 <.LCFI8>:
    a880:	64 17       	popm	#7,	r10	;16-bit words

0000a882 <.LCFI9>:
    a882:	30 41       	ret			

0000a884 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    a884:	
0000a886 <L0^A>:
    a886:	06 01       	mova	@r1,	r6	;

0000a888 <.LVL1>:
    a888:	30 41       	ret			

0000a88a <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    a88a:	5c 42 1c 99 	mov.b	&0x991c,r12	;0x991c
    a88e:	30 41       	ret			

0000a890 <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    a890:	3c 90 f0 99 	cmp	#-26128,r12	;#0x99f0
    a894:	06 28       	jnc	$+14     	;abs 0xa8a2

0000a896 <.Loc.27.1>:
    a896:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a898:	3c 90 f6 9a 	cmp	#-25866,r12	;#0x9af6
    a89c:	04 2c       	jc	$+10     	;abs 0xa8a6
    a89e:	4c 4d       	mov.b	r13,	r12	;

0000a8a0 <.L5>:
}
    a8a0:	30 41       	ret			

0000a8a2 <.L7>:
    a8a2:	4c 43       	clr.b	r12		;

0000a8a4 <.LVL5>:
    a8a4:	30 41       	ret			

0000a8a6 <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    a8a6:	4d 43       	clr.b	r13		;
    a8a8:	4c 4d       	mov.b	r13,	r12	;

0000a8aa <.LVL7>:
    a8aa:	fa 3f       	jmp	$-10     	;abs 0xa8a0

0000a8ac <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    a8ac:	0a 15       	pushm	#1,	r10	;16-bit words

0000a8ae <.LCFI0>:
    a8ae:	0a 4c       	mov	r12,	r10	;

0000a8b0 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    a8b0:	3c 90 f0 99 	cmp	#-26128,r12	;#0x99f0
    a8b4:	0a 28       	jnc	$+22     	;abs 0xa8ca
    a8b6:	3c 90 f6 9a 	cmp	#-25866,r12	;#0x9af6
    a8ba:	07 2c       	jc	$+16     	;abs 0xa8ca

0000a8bc <.LBB14>:
    return address + buffer_offset * buffer_index;
    a8bc:	5c 42 1c 99 	mov.b	&0x991c,r12	;0x991c

0000a8c0 <.LVL11>:
    a8c0:	3d 40 06 01 	mov	#262,	r13	;#0x0106

0000a8c4 <.LVL12>:
    a8c4:	b0 12 ee c4 	call	#-15122	;#0xc4ee

0000a8c8 <.LVL13>:
    a8c8:	0a 5c       	add	r12,	r10	;

0000a8ca <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    a8ca:	0c 4a       	mov	r10,	r12	;
    a8cc:	0a 17       	popm	#1,	r10	;16-bit words

0000a8ce <.LCFI1>:
    a8ce:	30 41       	ret			

0000a8d0 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    a8d0:	
0000a8d2 <L0^A>:
    a8d2:	00 8d       	sub	r13,	r0	;
    a8d4:	30 41       	ret			

0000a8d6 <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    a8d6:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    a8da:	30 41       	ret			

0000a8dc <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    a8dc:	b0 12 38 b1 	call	#-20168	;#0xb138

0000a8e0 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    a8e0:	c2 93 00 8d 	cmp.b	#0,	&0x8d00	;r3 As==00
    a8e4:	22 20       	jnz	$+70     	;abs 0xa92a

0000a8e6 <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    a8e6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000a8ea <.Loc.50.1>:
    a8ea:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

0000a8ee <.Loc.50.1>:
    a8ee:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000a8f2 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    a8f2:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    a8f6:	02 02 

0000a8f8 <.Loc.51.1>:
    a8f8:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    a8fc:	04 02 

0000a8fe <.Loc.51.1>:
    a8fe:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    a902:	02 02 

0000a904 <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    a904:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    a908:	22 02 

0000a90a <.Loc.52.1>:
    a90a:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    a90e:	24 02 

0000a910 <.Loc.52.1>:
    a910:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    a914:	22 02 

0000a916 <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    a916:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    a91a:	22 02 

0000a91c <.Loc.53.1>:
    a91c:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    a920:	24 02 

0000a922 <.Loc.53.1>:
    a922:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    a926:	22 02 

0000a928 <.Loc.53.1>:
#endif
}
    a928:	30 41       	ret			

0000a92a <.L6>:
        __scheduler_boot_init();
    a92a:	b0 12 90 b1 	call	#-20080	;#0xb190

0000a92e <.Loc.36.1>:
        __events_boot_init();
    a92e:	b0 12 b2 ae 	call	#-20814	;#0xaeb2
    a932:	d9 3f       	jmp	$-76     	;abs 0xa8e6

0000a934 <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    a934:	c2 43 00 8d 	mov.b	#0,	&0x8d00	;r3 As==00

0000a938 <.Loc.69.1>:
    __ink_initialized = true;
    a938:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

0000a93c <.Loc.70.1>:
    a93c:	30 41       	ret			

0000a93e <.LFE3>:
	...

0000a940 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    a940:	2a 15       	pushm	#3,	r10	;16-bit words

0000a942 <.LCFI0>:
    a942:	21 83       	decd	r1		;

0000a944 <.LCFI1>:
    a944:	4a 4c       	mov.b	r12,	r10	;
    a946:	09 4d       	mov	r13,	r9	;
    a948:	48 4e       	mov.b	r14,	r8	;

0000a94a <.Loc.147.1>:
    if (!ink_is_first_boot())
    a94a:	b0 12 d0 a8 	call	#-22320	;#0xa8d0

0000a94e <.LVL1>:
    a94e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    a950:	56 24       	jz	$+174    	;abs 0xa9fe

0000a952 <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    a952:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    a956:	4c 9a       	cmp.b	r10,	r12	;
    a958:	47 28       	jnc	$+144    	;abs 0xa9e8
    a95a:	0c 4a       	mov	r10,	r12	;
    a95c:	5c 02       	rlam	#1,	r12	;
    a95e:	3c 50 68 a9 	add	#-22168,r12	;#0xa968
    a962:	2c 4c       	mov	@r12,	r12	;
    a964:	00 4c       	br	r12		;
	...

0000a968 <.L6>:
    a968:	e8 a9 80 ae 	dadd.b	@r9,	-20864(r8); 0xae80
    a96c:	6c ae       	dadd.b	@r14,	r12	;
    a96e:	58 ae 44 ae 	dadd.b	-20924(r14),r8	;0xffffae44
    a972:	30 ae       	dadd	@r14+,	r0	;
    a974:	1c ae 08 ae 	dadd	-20984(r14),r12	;0xffffae08
    a978:	f4 ad e0 ad 	dadd.b	@r13+,	-21024(r4); 0xade0
    a97c:	ce ad bc ad 	dadd.b	r13,	-21060(r14); 0xadbc
    a980:	aa ad 98 ad 	dadd	@r13,	-21096(r10); 0xad98
    a984:	86 ad 74 ad 	dadd	r13,	-21132(r6); 0xad74
    a988:	62 ad       	dadd.b	@r13,	r2	;
    a98a:	50 ad 3e ad 	dadd.b	-21186(r13),r0	;0xffffad3e
    a98e:	2c ad       	dadd	@r13,	r12	;
    a990:	1a ad 08 ad 	dadd	-21240(r13),r10	;0xffffad08
    a994:	f6 ac e4 ac 	dadd.b	@r12+,	-21276(r6); 0xace4
    a998:	d2 ac c0 ac 	dadd.b	-21312(r12),&0xacae	;0xffffacc0
    a99c:	ae ac 
    a99e:	9c ac 8a ac 	dadd	-21366(r12),-21384(r12);0xffffac8a, 0xac78
    a9a2:	78 ac 
    a9a4:	66 ac       	dadd.b	@r12,	r6	;
    a9a6:	54 ac 42 ac 	dadd.b	-21438(r12),r4	;0xffffac42
    a9aa:	30 ac       	dadd	@r12+,	r0	;
    a9ac:	1e ac 0c ac 	dadd	-21492(r12),r14	;0xffffac0c
    a9b0:	fa ab e8 ab 	dadd.b	@r11+,	-21528(r10); 0xabe8
    a9b4:	d6 ab c4 ab 	dadd.b	-21564(r11),-21582(r6);0xffffabc4, 0xabb2
    a9b8:	b2 ab 
    a9ba:	a0 ab 8e ab 	dadd	@r11,	0xab8e	; PC rel. 0x554a
    a9be:	7c ab       	dadd.b	@r11+,	r12	;
    a9c0:	6a ab       	dadd.b	@r11,	r10	;
    a9c2:	58 ab 46 ab 	dadd.b	-21690(r11),r8	;0xffffab46
    a9c6:	34 ab       	dadd	@r11+,	r4	;
    a9c8:	22 ab       	dadd	@r11,	r2	;
    a9ca:	10 ab fe aa 	dadd	-21762(r11),r0	;0xffffaafe
    a9ce:	ec aa da aa 	dadd.b	@r10,	-21798(r12); 0xaada
    a9d2:	c8 aa b6 aa 	dadd.b	r10,	-21834(r8); 0xaab6
    a9d6:	a4 aa 92 aa 	dadd	@r10,	-21870(r4); 0xaa92
    a9da:	80 aa 6e aa 	dadd	r10,	0xaa6e	; PC rel. 0x544a
    a9de:	5c aa 4a aa 	dadd.b	-21942(r10),r12	;0xffffaa4a
    a9e2:	38 aa       	dadd	@r10+,	r8	;
    a9e4:	26 aa       	dadd	@r10,	r6	;
    a9e6:	
0000a9e8 <.L70>:
    if (!ink_is_first_boot())
    a9e8:	4c 43       	clr.b	r12		;
    a9ea:	4f 43       	clr.b	r15		;
    a9ec:	4e 43       	clr.b	r14		;

0000a9ee <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    a9ee:	81 4c 00 00 	mov	r12,	0(r1)	;
    a9f2:	0d 49       	mov	r9,	r13	;
    a9f4:	4c 4a       	mov.b	r10,	r12	;

0000a9f6 <.LVL4>:
    a9f6:	b0 12 b8 b1 	call	#-20040	;#0xb1b8

0000a9fa <.LVL5>:

    if (start_on_first_boot)
    a9fa:	08 93       	cmp	#0,	r8	;r3 As==00
    a9fc:	03 20       	jnz	$+8      	;abs 0xaa04

0000a9fe <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    a9fe:	21 53       	incd	r1		;

0000aa00 <.LCFI2>:
    aa00:	28 17       	popm	#3,	r10	;16-bit words

0000aa02 <.LCFI3>:
    aa02:	30 41       	ret			

0000aa04 <.L75>:
        __start_thread(__get_thread(priority));
    aa04:	4c 4a       	mov.b	r10,	r12	;
    aa06:	b0 12 5c b2 	call	#-19876	;#0xb25c
    aa0a:	b0 12 40 b2 	call	#-19904	;#0xb240

0000aa0e <.Loc.232.1>:
}
    aa0e:	21 53       	incd	r1		;

0000aa10 <.LCFI5>:
    aa10:	28 17       	popm	#3,	r10	;16-bit words

0000aa12 <.LCFI6>:
    aa12:	30 41       	ret			

0000aa14 <.L5>:
        INK_CREATE_THREAD_CASE(63)
    aa14:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa18:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa1c <.LVL9>:
    aa1c:	3c 40 00 00 	mov	#0,	r12	;

0000aa20 <.Loc.220.1>:
    aa20:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa24:	e4 3f       	jmp	$-54     	;abs 0xa9ee

0000aa26 <.L7>:
        INK_CREATE_THREAD_CASE(62)
    aa26:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa2a:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa2e <.LVL12>:
    aa2e:	3c 40 00 00 	mov	#0,	r12	;

0000aa32 <.Loc.219.1>:
    aa32:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa36:	db 3f       	jmp	$-72     	;abs 0xa9ee

0000aa38 <.L8>:
        INK_CREATE_THREAD_CASE(61)
    aa38:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa3c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa40 <.LVL15>:
    aa40:	3c 40 00 00 	mov	#0,	r12	;

0000aa44 <.Loc.218.1>:
    aa44:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa48:	d2 3f       	jmp	$-90     	;abs 0xa9ee

0000aa4a <.L9>:
        INK_CREATE_THREAD_CASE(60)
    aa4a:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa4e:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa52 <.LVL18>:
    aa52:	3c 40 00 00 	mov	#0,	r12	;

0000aa56 <.Loc.217.1>:
    aa56:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa5a:	c9 3f       	jmp	$-108    	;abs 0xa9ee

0000aa5c <.L10>:
        INK_CREATE_THREAD_CASE(59)
    aa5c:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa60:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa64 <.LVL21>:
    aa64:	3c 40 00 00 	mov	#0,	r12	;

0000aa68 <.Loc.216.1>:
    aa68:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa6c:	c0 3f       	jmp	$-126    	;abs 0xa9ee

0000aa6e <.L11>:
        INK_CREATE_THREAD_CASE(58)
    aa6e:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa72:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa76 <.LVL24>:
    aa76:	3c 40 00 00 	mov	#0,	r12	;

0000aa7a <.Loc.215.1>:
    aa7a:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa7e:	b7 3f       	jmp	$-144    	;abs 0xa9ee

0000aa80 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    aa80:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa84:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa88 <.LVL27>:
    aa88:	3c 40 00 00 	mov	#0,	r12	;

0000aa8c <.Loc.214.1>:
    aa8c:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aa90:	ae 3f       	jmp	$-162    	;abs 0xa9ee

0000aa92 <.L13>:
        INK_CREATE_THREAD_CASE(56)
    aa92:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aa96:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aa9a <.LVL30>:
    aa9a:	3c 40 00 00 	mov	#0,	r12	;

0000aa9e <.Loc.213.1>:
    aa9e:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aaa2:	a5 3f       	jmp	$-180    	;abs 0xa9ee

0000aaa4 <.L14>:
        INK_CREATE_THREAD_CASE(55)
    aaa4:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aaa8:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aaac <.LVL33>:
    aaac:	3c 40 00 00 	mov	#0,	r12	;

0000aab0 <.Loc.212.1>:
    aab0:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aab4:	9c 3f       	jmp	$-198    	;abs 0xa9ee

0000aab6 <.L15>:
        INK_CREATE_THREAD_CASE(54)
    aab6:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aaba:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aabe <.LVL36>:
    aabe:	3c 40 00 00 	mov	#0,	r12	;

0000aac2 <.Loc.211.1>:
    aac2:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aac6:	93 3f       	jmp	$-216    	;abs 0xa9ee

0000aac8 <.L16>:
        INK_CREATE_THREAD_CASE(53)
    aac8:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aacc:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aad0 <.LVL39>:
    aad0:	3c 40 00 00 	mov	#0,	r12	;

0000aad4 <.Loc.210.1>:
    aad4:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aad8:	8a 3f       	jmp	$-234    	;abs 0xa9ee

0000aada <.L17>:
        INK_CREATE_THREAD_CASE(52)
    aada:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aade:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aae2 <.LVL42>:
    aae2:	3c 40 00 00 	mov	#0,	r12	;

0000aae6 <.Loc.209.1>:
    aae6:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aaea:	81 3f       	jmp	$-252    	;abs 0xa9ee

0000aaec <.L18>:
        INK_CREATE_THREAD_CASE(51)
    aaec:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aaf0:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aaf4 <.LVL45>:
    aaf4:	3c 40 00 00 	mov	#0,	r12	;

0000aaf8 <.Loc.208.1>:
    aaf8:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    aafc:	78 3f       	jmp	$-270    	;abs 0xa9ee

0000aafe <.L19>:
        INK_CREATE_THREAD_CASE(50)
    aafe:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab02:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab06 <.LVL48>:
    ab06:	3c 40 00 00 	mov	#0,	r12	;

0000ab0a <.Loc.207.1>:
    ab0a:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab0e:	6f 3f       	jmp	$-288    	;abs 0xa9ee

0000ab10 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    ab10:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab14:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab18 <.LVL51>:
    ab18:	3c 40 00 00 	mov	#0,	r12	;

0000ab1c <.Loc.206.1>:
    ab1c:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab20:	66 3f       	jmp	$-306    	;abs 0xa9ee

0000ab22 <.L21>:
        INK_CREATE_THREAD_CASE(48)
    ab22:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab26:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab2a <.LVL54>:
    ab2a:	3c 40 00 00 	mov	#0,	r12	;

0000ab2e <.Loc.205.1>:
    ab2e:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab32:	5d 3f       	jmp	$-324    	;abs 0xa9ee

0000ab34 <.L22>:
        INK_CREATE_THREAD_CASE(47)
    ab34:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab38:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab3c <.LVL57>:
    ab3c:	3c 40 00 00 	mov	#0,	r12	;

0000ab40 <.Loc.204.1>:
    ab40:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab44:	54 3f       	jmp	$-342    	;abs 0xa9ee

0000ab46 <.L23>:
        INK_CREATE_THREAD_CASE(46)
    ab46:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab4a:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab4e <.LVL60>:
    ab4e:	3c 40 00 00 	mov	#0,	r12	;

0000ab52 <.Loc.203.1>:
    ab52:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab56:	4b 3f       	jmp	$-360    	;abs 0xa9ee

0000ab58 <.L24>:
        INK_CREATE_THREAD_CASE(45)
    ab58:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab5c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab60 <.LVL63>:
    ab60:	3c 40 00 00 	mov	#0,	r12	;

0000ab64 <.Loc.202.1>:
    ab64:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab68:	42 3f       	jmp	$-378    	;abs 0xa9ee

0000ab6a <.L25>:
        INK_CREATE_THREAD_CASE(44)
    ab6a:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab6e:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab72 <.LVL66>:
    ab72:	3c 40 00 00 	mov	#0,	r12	;

0000ab76 <.Loc.201.1>:
    ab76:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab7a:	39 3f       	jmp	$-396    	;abs 0xa9ee

0000ab7c <.L26>:
        INK_CREATE_THREAD_CASE(43)
    ab7c:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab80:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab84 <.LVL69>:
    ab84:	3c 40 00 00 	mov	#0,	r12	;

0000ab88 <.Loc.200.1>:
    ab88:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab8c:	30 3f       	jmp	$-414    	;abs 0xa9ee

0000ab8e <.L27>:
        INK_CREATE_THREAD_CASE(42)
    ab8e:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ab92:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ab96 <.LVL72>:
    ab96:	3c 40 00 00 	mov	#0,	r12	;

0000ab9a <.Loc.199.1>:
    ab9a:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ab9e:	27 3f       	jmp	$-432    	;abs 0xa9ee

0000aba0 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    aba0:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aba4:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aba8 <.LVL75>:
    aba8:	3c 40 00 00 	mov	#0,	r12	;

0000abac <.Loc.198.1>:
    abac:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    abb0:	1e 3f       	jmp	$-450    	;abs 0xa9ee

0000abb2 <.L29>:
        INK_CREATE_THREAD_CASE(40)
    abb2:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    abb6:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000abba <.LVL78>:
    abba:	3c 40 00 00 	mov	#0,	r12	;

0000abbe <.Loc.197.1>:
    abbe:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    abc2:	15 3f       	jmp	$-468    	;abs 0xa9ee

0000abc4 <.L30>:
        INK_CREATE_THREAD_CASE(39)
    abc4:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    abc8:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000abcc <.LVL81>:
    abcc:	3c 40 00 00 	mov	#0,	r12	;

0000abd0 <.Loc.196.1>:
    abd0:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    abd4:	0c 3f       	jmp	$-486    	;abs 0xa9ee

0000abd6 <.L31>:
        INK_CREATE_THREAD_CASE(38)
    abd6:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    abda:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000abde <.LVL84>:
    abde:	3c 40 00 00 	mov	#0,	r12	;

0000abe2 <.Loc.195.1>:
    abe2:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    abe6:	03 3f       	jmp	$-504    	;abs 0xa9ee

0000abe8 <.L32>:
        INK_CREATE_THREAD_CASE(37)
    abe8:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    abec:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000abf0 <.LVL87>:
    abf0:	3c 40 00 00 	mov	#0,	r12	;

0000abf4 <.Loc.194.1>:
    abf4:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    abf8:	fa 3e       	jmp	$-522    	;abs 0xa9ee

0000abfa <.L33>:
        INK_CREATE_THREAD_CASE(36)
    abfa:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    abfe:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac02 <.LVL90>:
    ac02:	3c 40 00 00 	mov	#0,	r12	;

0000ac06 <.Loc.193.1>:
    ac06:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac0a:	f1 3e       	jmp	$-540    	;abs 0xa9ee

0000ac0c <.L34>:
        INK_CREATE_THREAD_CASE(35)
    ac0c:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac10:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac14 <.LVL93>:
    ac14:	3c 40 00 00 	mov	#0,	r12	;

0000ac18 <.Loc.192.1>:
    ac18:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac1c:	e8 3e       	jmp	$-558    	;abs 0xa9ee

0000ac1e <.L35>:
        INK_CREATE_THREAD_CASE(34)
    ac1e:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac22:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac26 <.LVL96>:
    ac26:	3c 40 00 00 	mov	#0,	r12	;

0000ac2a <.Loc.191.1>:
    ac2a:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac2e:	df 3e       	jmp	$-576    	;abs 0xa9ee

0000ac30 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    ac30:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac34:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac38 <.LVL99>:
    ac38:	3c 40 00 00 	mov	#0,	r12	;

0000ac3c <.Loc.190.1>:
    ac3c:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac40:	d6 3e       	jmp	$-594    	;abs 0xa9ee

0000ac42 <.L37>:
        INK_CREATE_THREAD_CASE(32)
    ac42:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac46:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac4a <.LVL102>:
    ac4a:	3c 40 00 00 	mov	#0,	r12	;

0000ac4e <.Loc.189.1>:
    ac4e:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac52:	cd 3e       	jmp	$-612    	;abs 0xa9ee

0000ac54 <.L38>:
        INK_CREATE_THREAD_CASE(31)
    ac54:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac58:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac5c <.LVL105>:
    ac5c:	3c 40 00 00 	mov	#0,	r12	;

0000ac60 <.Loc.188.1>:
    ac60:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac64:	c4 3e       	jmp	$-630    	;abs 0xa9ee

0000ac66 <.L39>:
        INK_CREATE_THREAD_CASE(30)
    ac66:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac6a:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac6e <.LVL108>:
    ac6e:	3c 40 00 00 	mov	#0,	r12	;

0000ac72 <.Loc.187.1>:
    ac72:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac76:	bb 3e       	jmp	$-648    	;abs 0xa9ee

0000ac78 <.L40>:
        INK_CREATE_THREAD_CASE(29)
    ac78:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac7c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac80 <.LVL111>:
    ac80:	3c 40 00 00 	mov	#0,	r12	;

0000ac84 <.Loc.186.1>:
    ac84:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac88:	b2 3e       	jmp	$-666    	;abs 0xa9ee

0000ac8a <.L41>:
        INK_CREATE_THREAD_CASE(28)
    ac8a:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ac8e:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ac92 <.LVL114>:
    ac92:	3c 40 00 00 	mov	#0,	r12	;

0000ac96 <.Loc.185.1>:
    ac96:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ac9a:	a9 3e       	jmp	$-684    	;abs 0xa9ee

0000ac9c <.L42>:
        INK_CREATE_THREAD_CASE(27)
    ac9c:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    aca0:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000aca4 <.LVL117>:
    aca4:	3c 40 00 00 	mov	#0,	r12	;

0000aca8 <.Loc.184.1>:
    aca8:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    acac:	a0 3e       	jmp	$-702    	;abs 0xa9ee

0000acae <.L43>:
        INK_CREATE_THREAD_CASE(26)
    acae:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    acb2:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000acb6 <.LVL120>:
    acb6:	3c 40 00 00 	mov	#0,	r12	;

0000acba <.Loc.183.1>:
    acba:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    acbe:	97 3e       	jmp	$-720    	;abs 0xa9ee

0000acc0 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    acc0:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    acc4:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000acc8 <.LVL123>:
    acc8:	3c 40 00 00 	mov	#0,	r12	;

0000accc <.Loc.182.1>:
    accc:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    acd0:	8e 3e       	jmp	$-738    	;abs 0xa9ee

0000acd2 <.L45>:
        INK_CREATE_THREAD_CASE(24)
    acd2:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    acd6:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000acda <.LVL126>:
    acda:	3c 40 00 00 	mov	#0,	r12	;

0000acde <.Loc.181.1>:
    acde:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ace2:	85 3e       	jmp	$-756    	;abs 0xa9ee

0000ace4 <.L46>:
        INK_CREATE_THREAD_CASE(23)
    ace4:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ace8:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000acec <.LVL129>:
    acec:	3c 40 00 00 	mov	#0,	r12	;

0000acf0 <.Loc.180.1>:
    acf0:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    acf4:	7c 3e       	jmp	$-774    	;abs 0xa9ee

0000acf6 <.L47>:
        INK_CREATE_THREAD_CASE(22)
    acf6:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    acfa:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000acfe <.LVL132>:
    acfe:	3c 40 00 00 	mov	#0,	r12	;

0000ad02 <.Loc.179.1>:
    ad02:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad06:	73 3e       	jmp	$-792    	;abs 0xa9ee

0000ad08 <.L48>:
        INK_CREATE_THREAD_CASE(21)
    ad08:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ad0c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad10 <.LVL135>:
    ad10:	3c 40 00 00 	mov	#0,	r12	;

0000ad14 <.Loc.178.1>:
    ad14:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad18:	6a 3e       	jmp	$-810    	;abs 0xa9ee

0000ad1a <.L49>:
        INK_CREATE_THREAD_CASE(20)
    ad1a:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ad1e:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad22 <.LVL138>:
    ad22:	3c 40 00 00 	mov	#0,	r12	;

0000ad26 <.Loc.177.1>:
    ad26:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad2a:	61 3e       	jmp	$-828    	;abs 0xa9ee

0000ad2c <.L50>:
        INK_CREATE_THREAD_CASE(19)
    ad2c:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ad30:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad34 <.LVL141>:
    ad34:	3c 40 00 00 	mov	#0,	r12	;

0000ad38 <.Loc.176.1>:
    ad38:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad3c:	58 3e       	jmp	$-846    	;abs 0xa9ee

0000ad3e <.L51>:
        INK_CREATE_THREAD_CASE(18)
    ad3e:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ad42:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad46 <.LVL144>:
    ad46:	3c 40 00 00 	mov	#0,	r12	;

0000ad4a <.Loc.175.1>:
    ad4a:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad4e:	4f 3e       	jmp	$-864    	;abs 0xa9ee

0000ad50 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    ad50:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ad54:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad58 <.LVL147>:
    ad58:	3c 40 00 00 	mov	#0,	r12	;

0000ad5c <.Loc.174.1>:
    ad5c:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad60:	46 3e       	jmp	$-882    	;abs 0xa9ee

0000ad62 <.L53>:
        INK_CREATE_THREAD_CASE(16)
    ad62:	3f 40 f6 9a 	mov	#-25866,r15	;#0x9af6
    ad66:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad6a <.LVL150>:
    ad6a:	3c 40 00 00 	mov	#0,	r12	;

0000ad6e <.Loc.173.1>:
    ad6e:	3e 40 f6 9a 	mov	#-25866,r14	;#0x9af6
    ad72:	3d 3e       	jmp	$-900    	;abs 0xa9ee

0000ad74 <.L54>:
        INK_CREATE_THREAD_CASE(15)
    ad74:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ad78:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad7c <.LVL153>:
    ad7c:	3c 40 06 01 	mov	#262,	r12	;#0x0106

0000ad80 <.Loc.172.1>:
    ad80:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ad84:	34 3e       	jmp	$-918    	;abs 0xa9ee

0000ad86 <.L55>:
        INK_CREATE_THREAD_CASE(14)
    ad86:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ad8a:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ad8e <.LVL156>:
    ad8e:	3c 40 00 00 	mov	#0,	r12	;

0000ad92 <.Loc.171.1>:
    ad92:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ad96:	2b 3e       	jmp	$-936    	;abs 0xa9ee

0000ad98 <.L56>:
        INK_CREATE_THREAD_CASE(13)
    ad98:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ad9c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ada0 <.LVL159>:
    ada0:	3c 40 00 00 	mov	#0,	r12	;

0000ada4 <.Loc.170.1>:
    ada4:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ada8:	22 3e       	jmp	$-954    	;abs 0xa9ee

0000adaa <.L57>:
        INK_CREATE_THREAD_CASE(12)
    adaa:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    adae:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000adb2 <.LVL162>:
    adb2:	3c 40 00 00 	mov	#0,	r12	;

0000adb6 <.Loc.169.1>:
    adb6:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    adba:	19 3e       	jmp	$-972    	;abs 0xa9ee

0000adbc <.L58>:
        INK_CREATE_THREAD_CASE(11)
    adbc:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    adc0:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000adc4 <.LVL165>:
    adc4:	3c 40 00 00 	mov	#0,	r12	;

0000adc8 <.Loc.168.1>:
    adc8:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    adcc:	10 3e       	jmp	$-990    	;abs 0xa9ee

0000adce <.L59>:
        INK_CREATE_THREAD_CASE(10)
    adce:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    add2:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000add6 <.LVL168>:
    add6:	3c 40 00 00 	mov	#0,	r12	;

0000adda <.Loc.167.1>:
    adda:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    adde:	07 3e       	jmp	$-1008   	;abs 0xa9ee

0000ade0 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    ade0:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ade4:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ade8 <.LVL171>:
    ade8:	3c 40 00 00 	mov	#0,	r12	;

0000adec <.Loc.166.1>:
    adec:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    adf0:	30 40 ee a9 	br	#0xa9ee		;

0000adf4 <.L61>:
        INK_CREATE_THREAD_CASE(8)
    adf4:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    adf8:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000adfc <.LVL174>:
    adfc:	3c 40 00 00 	mov	#0,	r12	;

0000ae00 <.Loc.165.1>:
    ae00:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae04:	30 40 ee a9 	br	#0xa9ee		;

0000ae08 <.L62>:
        INK_CREATE_THREAD_CASE(7)
    ae08:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae0c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae10 <.LVL177>:
    ae10:	3c 40 00 00 	mov	#0,	r12	;

0000ae14 <.Loc.164.1>:
    ae14:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae18:	30 40 ee a9 	br	#0xa9ee		;

0000ae1c <.L63>:
        INK_CREATE_THREAD_CASE(6)
    ae1c:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae20:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae24 <.LVL180>:
    ae24:	3c 40 00 00 	mov	#0,	r12	;

0000ae28 <.Loc.163.1>:
    ae28:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae2c:	30 40 ee a9 	br	#0xa9ee		;

0000ae30 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    ae30:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae34:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae38 <.LVL183>:
    ae38:	3c 40 00 00 	mov	#0,	r12	;

0000ae3c <.Loc.162.1>:
    ae3c:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae40:	30 40 ee a9 	br	#0xa9ee		;

0000ae44 <.L65>:
        INK_CREATE_THREAD_CASE(4)
    ae44:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae48:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae4c <.LVL186>:
    ae4c:	3c 40 00 00 	mov	#0,	r12	;

0000ae50 <.Loc.161.1>:
    ae50:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae54:	30 40 ee a9 	br	#0xa9ee		;

0000ae58 <.L66>:
        INK_CREATE_THREAD_CASE(3)
    ae58:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae5c:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae60 <.LVL189>:
    ae60:	3c 40 00 00 	mov	#0,	r12	;

0000ae64 <.Loc.160.1>:
    ae64:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae68:	30 40 ee a9 	br	#0xa9ee		;

0000ae6c <.L67>:
        INK_CREATE_THREAD_CASE(2)
    ae6c:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae70:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae74 <.LVL192>:
    ae74:	3c 40 00 00 	mov	#0,	r12	;

0000ae78 <.Loc.159.1>:
    ae78:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae7c:	30 40 ee a9 	br	#0xa9ee		;

0000ae80 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    ae80:	3f 40 f0 99 	mov	#-26128,r15	;#0x99f0
    ae84:	3f 50 06 01 	add	#262,	r15	;#0x0106

0000ae88 <.LVL195>:
    ae88:	3c 40 00 00 	mov	#0,	r12	;

0000ae8c <.Loc.158.1>:
    ae8c:	3e 40 f0 99 	mov	#-26128,r14	;#0x99f0
    ae90:	30 40 ee a9 	br	#0xa9ee		;

0000ae94 <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    ae94:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000ae98 <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    ae98:	32 c2       	dint			
    ae9a:	03 43       	nop			

0000ae9c <.Loc.236.1>:
    ae9c:	b0 12 5c b2 	call	#-19876	;#0xb25c

0000aea0 <.LVL198>:
    aea0:	b0 12 40 b2 	call	#-19904	;#0xb240

0000aea4 <.Loc.236.1>:
    aea4:	03 43       	nop			
    aea6:	32 d2       	eint			
    aea8:	03 43       	nop			

0000aeaa <.Loc.237.1>:
}
    aeaa:	30 41       	ret			

0000aeac <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    aeac:	b0 12 72 b2 	call	#-19854	;#0xb272

0000aeb0 <.Loc.7.1>:
}
    aeb0:	30 41       	ret			

0000aeb2 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    aeb2:	1a 15       	pushm	#2,	r10	;16-bit words

0000aeb4 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    aeb4:	3a 40 82 92 	mov	#-28030,r10	;#0x9282
    aeb8:	39 40 82 8d 	mov	#-29310,r9	;#0x8d82

0000aebc <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    aebc:	0c 4a       	mov	r10,	r12	;
    aebe:	b0 12 64 b0 	call	#-20380	;#0xb064

0000aec2 <.Loc.27.1>:
        _popped[i] = NULL;
    aec2:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

0000aec6 <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    aec6:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    aeca:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

0000aece <.Loc.24.1>:
    aece:	3a 90 82 8d 	cmp	#-29310,r10	;#0x8d82
    aed2:	f4 23       	jnz	$-22     	;abs 0xaebc

0000aed4 <.Loc.29.1>:
    }
}
    aed4:	19 17       	popm	#2,	r10	;16-bit words

0000aed6 <.LCFI1>:
    aed6:	30 41       	ret			

0000aed8 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    aed8:	5c 42 8e 92 	mov.b	&0x928e,r12	;0x928e
    aedc:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    aede:	14 24       	jz	$+42     	;abs 0xaf08
    aee0:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    aee2:	1f 24       	jz	$+64     	;abs 0xaf22
    aee4:	0c 93       	cmp	#0,	r12	;r3 As==00
    aee6:	01 24       	jz	$+4      	;abs 0xaeea

0000aee8 <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    aee8:	30 41       	ret			

0000aeea <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    aeea:	1d 42 8c 92 	mov	&0x928c,r13	;0x928c

0000aeee <.Loc.37.1>:
    aeee:	6c 4d       	mov.b	@r13,	r12	;
    aef0:	5c 06       	rlam	#2,	r12	;
    aef2:	6d 4d       	mov.b	@r13,	r13	;
    aef4:	0c 5d       	add	r13,	r12	;
    aef6:	5c 06       	rlam	#2,	r12	;
    aef8:	3d 40 82 92 	mov	#-28030,r13	;#0x9282
    aefc:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    af00:	b0 12 c0 b0 	call	#-20288	;#0xb0c0

0000af04 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    af04:	d2 43 8e 92 	mov.b	#1,	&0x928e	;r3 As==01

0000af08 <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    af08:	1d 42 8c 92 	mov	&0x928c,r13	;0x928c

0000af0c <.Loc.40.1>:
    af0c:	6c 4d       	mov.b	@r13,	r12	;
    af0e:	5c 06       	rlam	#2,	r12	;
    af10:	6d 4d       	mov.b	@r13,	r13	;
    af12:	0c 5d       	add	r13,	r12	;
    af14:	5c 06       	rlam	#2,	r12	;
    af16:	
0000af18 <L0^A>:
    af18:	82 8d b0 12 	sub	r13,	&0x12b0	;
    af1c:	
0000af1e <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    af1e:	e2 43 8e 92 	mov.b	#2,	&0x928e	;r3 As==10

0000af22 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    af22:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c
    af26:	1c 4c 02 00 	mov	2(r12),	r12	;

0000af2a <.Loc.44.1>:
    af2a:	3c 92       	cmp	#8,	r12	;r2 As==11
    af2c:	04 24       	jz	$+10     	;abs 0xaf36

0000af2e <.L9>:
        _status = EVENT_DONE;
    af2e:	f2 40 03 00 	mov.b	#3,	&0x928e	;
    af32:	8e 92 

0000af34 <.Loc.51.1>:
}
    af34:	30 41       	ret			

0000af36 <.L17>:
            __disable_interrupt();
    af36:	32 c2       	dint			
    af38:	03 43       	nop			

0000af3a <.Loc.46.1>:
            __start_thread(_thread);
    af3a:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c
    af3e:	b0 12 40 b2 	call	#-19904	;#0xb240

0000af42 <.Loc.47.1>:
            __enable_interrupt();
    af42:	03 43       	nop			
    af44:	32 d2       	eint			
    af46:	03 43       	nop			
    af48:	f2 3f       	jmp	$-26     	;abs 0xaf2e

0000af4a <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    af4a:	1d 42 8c 92 	mov	&0x928c,r13	;0x928c

0000af4e <.Loc.55.1>:
    af4e:	6c 4d       	mov.b	@r13,	r12	;

0000af50 <.LVL7>:
    af50:	5c 06       	rlam	#2,	r12	;
    af52:	6d 4d       	mov.b	@r13,	r13	;
    af54:	0c 5d       	add	r13,	r12	;
    af56:	5c 06       	rlam	#2,	r12	;
    af58:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    af5c:	b0 12 94 b0 	call	#-20332	;#0xb094

0000af60 <.Loc.56.1>:
}
    af60:	30 41       	ret			

0000af62 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    af62:	82 4c 8c 92 	mov	r12,	&0x928c	;

0000af66 <.Loc.64.1>:
    _event = *event;
    af66:	0e 4d       	mov	r13,	r14	;
    af68:	b2 4e 82 92 	mov	@r14+,	&0x9282	;
    af6c:	b2 4e 84 92 	mov	@r14+,	&0x9284	;
    af70:	92 4d 04 00 	mov	4(r13),	&0x9286	;
    af74:	86 92 
    af76:	92 4d 06 00 	mov	6(r13),	&0x9288	;
    af7a:	88 92 
    af7c:	92 4e 04 00 	mov	4(r14),	&0x928a	;
    af80:	8a 92 

0000af82 <.Loc.65.1>:
    _status = EVENT_INSERT;
    af82:	c2 43 8e 92 	mov.b	#0,	&0x928e	;r3 As==00

0000af86 <.LBB4>:
    switch(_status){
    af86:	5d 42 8e 92 	mov.b	&0x928e,r13	;0x928e

0000af8a <.LVL10>:
    af8a:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    af8c:	14 24       	jz	$+42     	;abs 0xafb6
    af8e:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    af90:	1f 24       	jz	$+64     	;abs 0xafd0
    af92:	0d 93       	cmp	#0,	r13	;r3 As==00
    af94:	01 24       	jz	$+4      	;abs 0xaf98

0000af96 <.LBE4>:
    __events_commit();
}
    af96:	30 41       	ret			

0000af98 <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    af98:	6d 4c       	mov.b	@r12,	r13	;
    af9a:	5d 06       	rlam	#2,	r13	;
    af9c:	6c 4c       	mov.b	@r12,	r12	;

0000af9e <.LVL11>:
    af9e:	0c 5d       	add	r13,	r12	;
    afa0:	5c 06       	rlam	#2,	r12	;
    afa2:	3d 40 82 92 	mov	#-28030,r13	;#0x9282
    afa6:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    afaa:	b0 12 c0 b0 	call	#-20288	;#0xb0c0

0000afae <.LVL12>:
        _status = EVENT_COMMIT;
    afae:	d2 43 8e 92 	mov.b	#1,	&0x928e	;r3 As==01
    afb2:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c

0000afb6 <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    afb6:	6d 4c       	mov.b	@r12,	r13	;
    afb8:	5d 06       	rlam	#2,	r13	;
    afba:	6c 4c       	mov.b	@r12,	r12	;
    afbc:	0c 5d       	add	r13,	r12	;
    afbe:	5c 06       	rlam	#2,	r12	;
    afc0:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    afc4:	b0 12 f6 b0 	call	#-20234	;#0xb0f6

0000afc8 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    afc8:	e2 43 8e 92 	mov.b	#2,	&0x928e	;r3 As==10
    afcc:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c

0000afd0 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    afd0:	1c 4c 02 00 	mov	2(r12),	r12	;

0000afd4 <.Loc.44.1>:
    afd4:	3c 92       	cmp	#8,	r12	;r2 As==11
    afd6:	04 24       	jz	$+10     	;abs 0xafe0

0000afd8 <.L23>:
        _status = EVENT_DONE;
    afd8:	f2 40 03 00 	mov.b	#3,	&0x928e	;
    afdc:	8e 92 

0000afde <.Loc.67.1>:
}
    afde:	30 41       	ret			

0000afe0 <.L31>:
            __disable_interrupt();
    afe0:	32 c2       	dint			
    afe2:	03 43       	nop			

0000afe4 <.Loc.46.1>:
            __start_thread(_thread);
    afe4:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c
    afe8:	b0 12 40 b2 	call	#-19904	;#0xb240

0000afec <.Loc.47.1>:
            __enable_interrupt();
    afec:	03 43       	nop			
    afee:	32 d2       	eint			
    aff0:	03 43       	nop			
    aff2:	f2 3f       	jmp	$-26     	;abs 0xafd8

0000aff4 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    aff4:	6d 4c       	mov.b	@r12,	r13	;
    aff6:	5d 06       	rlam	#2,	r13	;
    aff8:	6c 4c       	mov.b	@r12,	r12	;

0000affa <.LVL16>:
    affa:	0c 5d       	add	r13,	r12	;
    affc:	5c 06       	rlam	#2,	r12	;
    affe:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    b002:	b0 12 7e b0 	call	#-20354	;#0xb07e
    b006:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b00a <.Loc.71.1>:
    b00a:	3c 53       	add	#-1,	r12	;r3 As==11

0000b00c <.Loc.75.1>:
        return 0;

    return 1;
}
    b00c:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b010:	30 41       	ret			

0000b012 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    b012:	0a 15       	pushm	#1,	r10	;16-bit words

0000b014 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    b014:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c

0000b018 <.LVL19>:
    b018:	6a 4c       	mov.b	@r12,	r10	;

0000b01a <.Loc.81.1>:
    b01a:	0c 4a       	mov	r10,	r12	;
    b01c:	5c 06       	rlam	#2,	r12	;
    b01e:	0c 5a       	add	r10,	r12	;
    b020:	5c 06       	rlam	#2,	r12	;
    b022:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    b026:	b0 12 fe b0 	call	#-20226	;#0xb0fe

0000b02a <.Loc.81.1>:
    b02a:	5a 02       	rlam	#1,	r10	;
    b02c:	8a 4c 02 8d 	mov	r12,	-29438(r10); 0x8d02

0000b030 <.Loc.82.1>:
    return _popped[_thread->priority];
    b030:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c
    b034:	6c 4c       	mov.b	@r12,	r12	;
    b036:	5c 02       	rlam	#1,	r12	;

0000b038 <.Loc.83.1>:
}
    b038:	1c 4c 02 8d 	mov	-29438(r12),r12	;0xffff8d02
    b03c:	0a 17       	popm	#1,	r10	;16-bit words

0000b03e <.LCFI3>:
    b03e:	30 41       	ret			

0000b040 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    b040:	1d 42 8c 92 	mov	&0x928c,r13	;0x928c

0000b044 <.Loc.87.1>:
    b044:	6c 4d       	mov.b	@r13,	r12	;

0000b046 <.LVL22>:
    b046:	5c 06       	rlam	#2,	r12	;
    b048:	6d 4d       	mov.b	@r13,	r13	;
    b04a:	0c 5d       	add	r13,	r12	;
    b04c:	5c 06       	rlam	#2,	r12	;
    b04e:	3c 50 82 8d 	add	#-29310,r12	;#0x8d82
    b052:	b0 12 30 b1 	call	#-20176	;#0xb130

0000b056 <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    b056:	1c 42 8c 92 	mov	&0x928c,r12	;0x928c
    b05a:	6c 4c       	mov.b	@r12,	r12	;
    b05c:	5c 02       	rlam	#1,	r12	;
    b05e:	8c 43 02 8d 	mov	#0,	-29438(r12);r3 As==00, 0x8d02

0000b062 <.Loc.89.1>:
}
    b062:	30 41       	ret			

0000b064 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    b064:	
0000b068 <L0^A>:
    b068:	10 00       	bra	@r0+		;

0000b06a <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    b06a:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    b06e:	11 00 

0000b070 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    b070:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    b074:	12 00 

0000b076 <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    b076:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    b07a:	13 00 

0000b07c <.Loc.10.1>:
}
    b07c:	30 41       	ret			

0000b07e <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    b07e:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    b082:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    b086:	4c 4d       	mov.b	r13,	r12	;

0000b088 <.LVL2>:
    b088:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b08c:	3c 53       	add	#-1,	r12	;r3 As==11

0000b08e <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    b08e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b092:	30 41       	ret			

0000b094 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    b094:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    b098:	5d 53       	inc.b	r13		;
    b09a:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

0000b09e <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    b09e:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    b0a2:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    b0a4:	02 20       	jnz	$+6      	;abs 0xb0aa

0000b0a6 <.Loc.25.1>:
        queue->__tail = 0;
    b0a6:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000b0aa <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    b0aa:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    b0ae:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    b0b2:	4c 4d       	mov.b	r13,	r12	;

0000b0b4 <.LVL4>:
    b0b4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b0b8:	3c 53       	add	#-1,	r12	;r3 As==11

0000b0ba <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    b0ba:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    b0be:	30 41       	ret			

0000b0c0 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    b0c0:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    b0c4:	5e 53       	inc.b	r14		;
    b0c6:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

0000b0ca <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    b0ca:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    b0ce:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    b0d0:	02 20       	jnz	$+6      	;abs 0xb0d6

0000b0d2 <.Loc.40.1>:
        queue->__tail = 0;
    b0d2:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000b0d6 <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    b0d6:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

0000b0da <.Loc.44.1>:
    b0da:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

0000b0de <.Loc.44.1>:
    b0de:	0f 9e       	cmp	r14,	r15	;
    b0e0:	08 24       	jz	$+18     	;abs 0xb0f2

0000b0e2 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    b0e2:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000b0e6 <.Loc.49.1>:
    b0e6:	5e 02       	rlam	#1,	r14	;
    b0e8:	0c 5e       	add	r14,	r12	;

0000b0ea <.LVL6>:
    b0ea:	8c 4d 00 00 	mov	r13,	0(r12)	;

0000b0ee <.Loc.51.1>:

    return 1;
    b0ee:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000b0f0 <.Loc.52.1>:
}
    b0f0:	30 41       	ret			

0000b0f2 <.L9>:
        return 0;
    b0f2:	4c 43       	clr.b	r12		;

0000b0f4 <.LVL8>:
}
    b0f4:	30 41       	ret			

0000b0f6 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    b0f6:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    b0fa:	11 00 

0000b0fc <.Loc.59.1>:
}
    b0fc:	30 41       	ret			

0000b0fe <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    b0fe:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

0000b102 <.Loc.63.1>:
    b102:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

0000b106 <.Loc.63.1>:
    b106:	0e 9d       	cmp	r13,	r14	;
    b108:	11 24       	jz	$+36     	;abs 0xb12c

0000b10a <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    b10a:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    b10e:	5d 53       	inc.b	r13		;
    b110:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

0000b114 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    b114:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    b118:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    b11a:	02 20       	jnz	$+6      	;abs 0xb120

0000b11c <.Loc.70.1>:
        queue->__head = 0;
    b11c:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

0000b120 <.L13>:

    return queue->_items[queue->_head];
    b120:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

0000b124 <.Loc.72.1>:
    b124:	5d 02       	rlam	#1,	r13	;
    b126:	0c 5d       	add	r13,	r12	;

0000b128 <.LVL11>:
    b128:	2c 4c       	mov	@r12,	r12	;

0000b12a <.Loc.73.1>:
}
    b12a:	30 41       	ret			

0000b12c <.L14>:
        return NULL;
    b12c:	4c 43       	clr.b	r12		;

0000b12e <.LVL13>:
}
    b12e:	30 41       	ret			

0000b130 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    b130:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    b134:	10 00 

0000b136 <.Loc.79.1>:
}
    b136:	30 41       	ret			

0000b138 <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    b138:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    b13c:	40 01 

0000b13e <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    b13e:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    b142:	41 01 

0000b144 <.Loc.13.1>:
}
    b144:	30 41       	ret			

0000b146 <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    b146:	0a 15       	pushm	#1,	r10	;16-bit words

0000b148 <.LCFI0>:
    b148:	21 82       	sub	#4,	r1	;r2 As==10

0000b14a <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    b14a:	0a 4c       	mov	r12,	r10	;
    b14c:	0b 43       	clr	r11		;
    b14e:	81 4a 00 00 	mov	r10,	0(r1)	;
    b152:	81 4b 02 00 	mov	r11,	2(r1)	;

0000b156 <.Loc.20.1>:
    b156:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

0000b15a <.LVL1>:
    b15a:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    b15e:	00 00 

0000b160 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    b160:	0a 4d       	mov	r13,	r10	;
    b162:	0b 43       	clr	r11		;

0000b164 <.LVL2>:
    b164:	81 4a 00 00 	mov	r10,	0(r1)	;
    b168:	81 4b 02 00 	mov	r11,	2(r1)	;

0000b16c <.Loc.21.1>:
    b16c:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    b170:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    b174:	00 00 

0000b176 <.LBE3>:
    DMA0SZ = size;                          // Block size
    b176:	82 4e 1a 05 	mov	r14,	&0x051a	;

0000b17a <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    b17a:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    b17e:	10 05 

0000b180 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    b180:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    b184:	10 05 

0000b186 <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    b186:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

0000b18a <.Loc.29.1>:
}
    b18a:	21 52       	add	#4,	r1	;r2 As==10

0000b18c <.LCFI2>:
    b18c:	0a 17       	popm	#1,	r10	;16-bit words

0000b18e <.LCFI3>:
    b18e:	30 41       	ret			

0000b190 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    b190:	3c 40 92 92 	mov	#-28014,r12	;#0x9292
    b194:	b0 12 3a bf 	call	#-16582	;#0xbf3a

0000b198 <.Loc.54.1>:
    b198:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

0000b19c <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    b19c:	0c 4d       	mov	r13,	r12	;
    b19e:	5c 02       	rlam	#1,	r12	;
    b1a0:	0c 5d       	add	r13,	r12	;
    b1a2:	5c 06       	rlam	#2,	r12	;
    b1a4:	0c 5d       	add	r13,	r12	;
    b1a6:	5c 02       	rlam	#1,	r12	;
    b1a8:	1c 4c 9e 92 	mov	-28002(r12),r12	;0xffff929e

0000b1ac <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    b1ac:	3d 53       	add	#-1,	r13	;r3 As==11

0000b1ae <.Loc.56.1>:
    b1ae:	0d 93       	cmp	#0,	r13	;r3 As==00
    b1b0:	f5 23       	jnz	$-20     	;abs 0xb19c

0000b1b2 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    b1b2:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000b1b6 <.Loc.61.1>:
}
    b1b6:	30 41       	ret			

0000b1b8 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    b1b8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b1bc <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    b1bc:	0b 4c       	mov	r12,	r11	;
    b1be:	5b 02       	rlam	#1,	r11	;
    b1c0:	0b 5c       	add	r12,	r11	;
    b1c2:	5b 06       	rlam	#2,	r11	;
    b1c4:	0b 5c       	add	r12,	r11	;
    b1c6:	5b 02       	rlam	#1,	r11	;
    b1c8:	cb 4c 9c 92 	mov.b	r12,	-28004(r11); 0x929c

0000b1cc <.Loc.69.1>:
    _threads[priority].entry = entry;
    b1cc:	8b 4d a0 92 	mov	r13,	-28000(r11); 0x92a0

0000b1d0 <.Loc.70.1>:
    _threads[priority].next = entry;
    b1d0:	8b 4d a4 92 	mov	r13,	-27996(r11); 0x92a4

0000b1d4 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    b1d4:	bb 42 9e 92 	mov	#8,	-28002(r11);r2 As==11, 0x929e

0000b1d8 <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    b1d8:	8b 4e a6 92 	mov	r14,	-27994(r11); 0x92a6

0000b1dc <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    b1dc:	8b 4f a8 92 	mov	r15,	-27992(r11); 0x92a8

0000b1e0 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    b1e0:	cb 43 aa 92 	mov.b	#0,	-27990(r11);r3 As==00, 0x92aa

0000b1e4 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    b1e4:	9b 41 02 00 	mov	2(r1),	-27988(r11); 0x92ac
    b1e8:	ac 92 

0000b1ea <.Loc.78.1>:
}
    b1ea:	30 41       	ret			

0000b1ec <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    b1ec:	0a 15       	pushm	#1,	r10	;16-bit words

0000b1ee <.LCFI0>:
    b1ee:	0a 4c       	mov	r12,	r10	;

0000b1f0 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    b1f0:	3d 40 92 92 	mov	#-28014,r13	;#0x9292
    b1f4:	6c 4c       	mov.b	@r12,	r12	;

0000b1f6 <.LVL6>:
    b1f6:	b0 12 80 bf 	call	#-16512	;#0xbf80

0000b1fa <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    b1fa:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000b1fe <.Loc.84.1>:
}
    b1fe:	0a 17       	popm	#1,	r10	;16-bit words

0000b200 <.LCFI1>:
    b200:	30 41       	ret			

0000b202 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    b202:	0a 15       	pushm	#1,	r10	;16-bit words

0000b204 <.LCFI2>:
    b204:	0a 4c       	mov	r12,	r10	;

0000b206 <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    b206:	3d 40 92 92 	mov	#-28014,r13	;#0x9292
    b20a:	6c 4c       	mov.b	@r12,	r12	;

0000b20c <.LVL9>:
    b20c:	b0 12 80 bf 	call	#-16512	;#0xbf80

0000b210 <.Loc.89.1>:
    thread->next = NULL;
    b210:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

0000b214 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    b214:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000b218 <.Loc.91.1>:
}
    b218:	0a 17       	popm	#1,	r10	;16-bit words

0000b21a <.LCFI3>:
    b21a:	30 41       	ret			

0000b21c <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    b21c:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000b220 <.Loc.95.1>:
    return;
}
    b220:	30 41       	ret			

0000b222 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    b222:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000b226 <.Loc.101.1>:
    return;
}
    b226:	30 41       	ret			

0000b228 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    b228:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000b22c <.Loc.107.1>:
    return;
}
    b22c:	30 41       	ret			

0000b22e <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    b22e:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

0000b232 <.Loc.112.1>:
    return;
}
    b232:	30 41       	ret			

0000b234 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    b234:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

0000b238 <.LVL16>:
    b238:	30 41       	ret			

0000b23a <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    b23a:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000b23e <.LVL18>:
    b23e:	30 41       	ret			

0000b240 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    b240:	0a 15       	pushm	#1,	r10	;16-bit words

0000b242 <.LCFI4>:
    b242:	0a 4c       	mov	r12,	r10	;

0000b244 <.Loc.125.1>:
    thread->next = thread->entry;
    b244:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    b248:	08 00 

0000b24a <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    b24a:	3d 40 92 92 	mov	#-28014,r13	;#0x9292
    b24e:	6c 4c       	mov.b	@r12,	r12	;

0000b250 <.LVL20>:
    b250:	b0 12 60 bf 	call	#-16544	;#0xbf60

0000b254 <.Loc.127.1>:
    thread->state = TASK_READY;
    b254:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000b258 <.Loc.128.1>:
}
    b258:	0a 17       	popm	#1,	r10	;16-bit words

0000b25a <.LCFI5>:
    b25a:	30 41       	ret			

0000b25c <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    b25c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b260 <.Loc.140.1>:
    return &_threads[priority];
    b260:	0d 4c       	mov	r12,	r13	;
    b262:	5d 02       	rlam	#1,	r13	;
    b264:	0d 5c       	add	r12,	r13	;
    b266:	5d 06       	rlam	#2,	r13	;
    b268:	0c 5d       	add	r13,	r12	;

0000b26a <.LVL23>:
    b26a:	5c 02       	rlam	#1,	r12	;

0000b26c <.Loc.141.1>:
}
    b26c:	3c 50 9c 92 	add	#-28004,r12	;#0x929c
    b270:	30 41       	ret			

0000b272 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    b272:	32 c2       	dint			
    b274:	03 43       	nop			

0000b276 <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    b276:	b0 12 d8 ae 	call	#-20776	;#0xaed8

0000b27a <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    b27a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000b27e <.Loc.162.1>:
    __port_off(1, 3);
    b27e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b282 <.LBB8>:
    if(_thread){
    b282:	82 93 90 92 	cmp	#0,	&0x9290	;r3 As==00
    b286:	04 24       	jz	$+10     	;abs 0xb290

0000b288 <.Loc.146.1>:
        __tick(_thread);
    b288:	1c 42 90 92 	mov	&0x9290,r12	;0x9290
    b28c:	b0 12 26 b3 	call	#-19674	;#0xb326

0000b290 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    b290:	b0 12 42 b4 	call	#-19390	;#0xb442

0000b294 <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    b294:	03 43       	nop			
    b296:	32 d2       	eint			
    b298:	03 43       	nop			

0000b29a <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    b29a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000b29e <.Loc.179.1>:
    __port_off(1, 3);
    b29e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b2a2 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    b2a2:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    b2a6:	0c 93       	cmp	#0,	r12	;r3 As==00
    b2a8:	10 24       	jz	$+34     	;abs 0xb2ca

0000b2aa <.L29>:
    b2aa:	1c 93       	cmp	#1,	r12	;r3 As==01
    b2ac:	fa 23       	jnz	$-10     	;abs 0xb2a2
    b2ae:	1c 42 90 92 	mov	&0x9290,r12	;0x9290

0000b2b2 <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    b2b2:	0c 93       	cmp	#0,	r12	;r3 As==00
    b2b4:	24 24       	jz	$+74     	;abs 0xb2fe

0000b2b6 <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    b2b6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b2ba <.Loc.198.1>:
#endif
                __tick(_thread);
    b2ba:	b0 12 26 b3 	call	#-19674	;#0xb326

0000b2be <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    b2be:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000b2c2 <.Loc.180.1>:
        switch (_sched_state){
    b2c2:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    b2c6:	0c 93       	cmp	#0,	r12	;r3 As==00
    b2c8:	f0 23       	jnz	$-30     	;abs 0xb2aa

0000b2ca <.L19>:
            __port_on(1, 3);
    b2ca:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000b2ce <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    b2ce:	3c 40 92 92 	mov	#-28014,r12	;#0x9292
    b2d2:	b0 12 a8 bf 	call	#-16472	;#0xbfa8
    b2d6:	4d 4c       	mov.b	r12,	r13	;

0000b2d8 <.LVL29>:
    if(idx)
    b2d8:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b2da:	0d 24       	jz	$+28     	;abs 0xb2f6

0000b2dc <.Loc.134.1>:
        return &_threads[idx];
    b2dc:	0c 4d       	mov	r13,	r12	;
    b2de:	5c 02       	rlam	#1,	r12	;

0000b2e0 <.LVL30>:
    b2e0:	0c 5d       	add	r13,	r12	;
    b2e2:	5c 06       	rlam	#2,	r12	;
    b2e4:	0c 5d       	add	r13,	r12	;
    b2e6:	5c 02       	rlam	#1,	r12	;
    b2e8:	3c 50 9c 92 	add	#-28004,r12	;#0x929c

0000b2ec <.LBE10>:
            _thread = __next_thread();
    b2ec:	82 4c 90 92 	mov	r12,	&0x9290	;

0000b2f0 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    b2f0:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

0000b2f4 <.Loc.196.1>:
            if (_thread){
    b2f4:	e0 3f       	jmp	$-62     	;abs 0xb2b6

0000b2f6 <.L30>:
            _thread = __next_thread();
    b2f6:	82 43 90 92 	mov	#0,	&0x9290	;r3 As==00

0000b2fa <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    b2fa:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

0000b2fe <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    b2fe:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

0000b302 <.Loc.206.1>:
            __disable_interrupt();
    b302:	32 c2       	dint			
    b304:	03 43       	nop			

0000b306 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    b306:	3c 40 92 92 	mov	#-28014,r12	;#0x9292
    b30a:	b0 12 a8 bf 	call	#-16472	;#0xbfa8

0000b30e <.LVL33>:
    if(idx)
    b30e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b310:	c8 23       	jnz	$-110    	;abs 0xb2a2

0000b312 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    b312:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000b316 <.Loc.210.1>:
#endif
                __mcu_sleep();
    b316:	03 43       	nop			
    b318:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    b31c:	03 43       	nop			

0000b31e <.Loc.213.1>:
                __enable_interrupt();
    b31e:	03 43       	nop			
    b320:	32 d2       	eint			
    b322:	03 43       	nop			
    b324:	be 3f       	jmp	$-130    	;abs 0xb2a2

0000b326 <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    b326:	0a 15       	pushm	#1,	r10	;16-bit words

0000b328 <.LCFI0>:
    b328:	0a 4c       	mov	r12,	r10	;

0000b32a <L0^A>:
    switch (thread->state)
    b32a:	1c 4c 02 00 	mov	2(r12),	r12	;

0000b32e <.LVL1>:
    b32e:	2c 93       	cmp	#2,	r12	;r3 As==10
    b330:	35 24       	jz	$+108    	;abs 0xb39c
    b332:	2c 92       	cmp	#4,	r12	;r2 As==10
    b334:	56 24       	jz	$+174    	;abs 0xb3e2
    b336:	1c 93       	cmp	#1,	r12	;r3 As==01
    b338:	02 24       	jz	$+6      	;abs 0xb33e

0000b33a <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    b33a:	0a 17       	popm	#1,	r10	;16-bit words

0000b33c <.LCFI1>:
    b33c:	30 41       	ret			

0000b33e <.L17>:
    __port_on(3,6);
    b33e:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    b342:	22 02 

0000b344 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    b344:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

0000b348 <.Loc.14.1>:
    b348:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    b34c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    b34e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b352 <.Loc.14.1>:
    b352:	5c 02       	rlam	#1,	r12	;
    b354:	0c 5a       	add	r10,	r12	;
    b356:	5f 02       	rlam	#1,	r15	;
    b358:	0f 5a       	add	r10,	r15	;
    b35a:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    b35e:	5e 03       	rrum	#1,	r14	;
    b360:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    b364:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    b368:	b0 12 46 b1 	call	#-20154	;#0xb146

0000b36c <.Loc.17.1>:
    __port_off(3,6);
    b36c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    b370:	22 02 

0000b372 <.LBE5>:
        __port_on(1, 4);
    b372:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    b376:	02 02 

0000b378 <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    b378:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    b37c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    b37e:	c2 4c 1c 99 	mov.b	r12,	&0x991c	;

0000b382 <.Loc.60.1>:
        if(thread->next == thread->entry){
    b382:	1c 4a 08 00 	mov	8(r10),	r12	;

0000b386 <.Loc.60.1>:
    b386:	1c 9a 04 00 	cmp	4(r10),	r12	;
    b38a:	48 24       	jz	$+146    	;abs 0xb41c

0000b38c <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    b38c:	8c 12       	call	r12		;

0000b38e <.Loc.77.1>:
    b38e:	8a 4c 06 00 	mov	r12,	6(r10)	;

0000b392 <.L8>:
        thread->state = TASK_PRECOMMIT;
    b392:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000b396 <.Loc.83.1>:
            __port_off(1, 4);
    b396:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    b39a:	02 02 

0000b39c <.L2>:
        __port_on(3,5);
    b39c:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    b3a0:	22 02 

0000b3a2 <.Loc.87.1>:
        __release_event(thread);
    b3a2:	0c 4a       	mov	r10,	r12	;
    b3a4:	b0 12 40 b0 	call	#-20416	;#0xb040

0000b3a8 <.Loc.96.1>:
        thread->next = thread->next_temp;
    b3a8:	1c 4a 06 00 	mov	6(r10),	r12	;

0000b3ac <.Loc.96.1>:
    b3ac:	8a 4c 08 00 	mov	r12,	8(r10)	;

0000b3b0 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    b3b0:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    b3b4:	5d e3       	xor.b	#1,	r13	;r3 As==01
    b3b6:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

0000b3ba <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    b3ba:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

0000b3be <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    b3be:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    b3c2:	0e 00 

0000b3c4 <.Loc.117.1>:
        __port_off(3,5);
    b3c4:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b3c8:	22 02 

0000b3ca <.Loc.117.1>:
        __port_on(3,5);
    b3ca:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    b3ce:	22 02 

0000b3d0 <.Loc.118.1>:
        if (thread->next == NULL)
    b3d0:	0c 93       	cmp	#0,	r12	;r3 As==00
    b3d2:	14 24       	jz	$+42     	;abs 0xb3fc

0000b3d4 <.L9>:
            thread->state = TASK_READY;
    b3d4:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000b3d8 <.L12>:
        __port_off(3,5);
    b3d8:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b3dc:	22 02 

0000b3de <.Loc.142.1>:
}
    b3de:	0a 17       	popm	#1,	r10	;16-bit words

0000b3e0 <.LCFI3>:
    b3e0:	30 41       	ret			

0000b3e2 <.L3>:
    b3e2:	1c 4a 08 00 	mov	8(r10),	r12	;

0000b3e6 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    b3e6:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    b3ea:	0e 00 

0000b3ec <.Loc.117.1>:
        __port_off(3,5);
    b3ec:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    b3f0:	22 02 

0000b3f2 <.Loc.117.1>:
        __port_on(3,5);
    b3f2:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    b3f6:	22 02 

0000b3f8 <.Loc.118.1>:
        if (thread->next == NULL)
    b3f8:	0c 93       	cmp	#0,	r12	;r3 As==00
    b3fa:	ec 23       	jnz	$-38     	;abs 0xb3d4

0000b3fc <.L19>:
            __disable_interrupt();
    b3fc:	32 c2       	dint			
    b3fe:	03 43       	nop			

0000b400 <.Loc.125.1>:
            if(!__has_events(thread)){
    b400:	0c 4a       	mov	r10,	r12	;
    b402:	b0 12 f4 af 	call	#-20492	;#0xaff4

0000b406 <.Loc.125.1>:
    b406:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b408:	12 24       	jz	$+38     	;abs 0xb42e

0000b40a <.Loc.131.1>:
                thread->next = thread->entry;
    b40a:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    b40e:	08 00 

0000b410 <.Loc.133.1>:
                thread->state = TASK_READY;
    b410:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000b414 <.Loc.135.1>:
            __enable_interrupt();
    b414:	03 43       	nop			
    b416:	32 d2       	eint			
    b418:	03 43       	nop			
    b41a:	de 3f       	jmp	$-66     	;abs 0xb3d8

0000b41c <.L18>:
            isr_event_t *event = __lock_event(thread);
    b41c:	0c 4a       	mov	r10,	r12	;
    b41e:	b0 12 12 b0 	call	#-20462	;#0xb012

0000b422 <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    b422:	1d 4a 04 00 	mov	4(r10),	r13	;
    b426:	8d 12       	call	r13		;

0000b428 <.LVL11>:
    b428:	8a 4c 06 00 	mov	r12,	6(r10)	;

0000b42c <.LBE7>:
    b42c:	b2 3f       	jmp	$-154    	;abs 0xb392

0000b42e <.L20>:
                __stop_thread(thread);
    b42e:	0c 4a       	mov	r10,	r12	;
    b430:	b0 12 ec b1 	call	#-19988	;#0xb1ec

0000b434 <.Loc.135.1>:
            __enable_interrupt();
    b434:	03 43       	nop			
    b436:	32 d2       	eint			
    b438:	03 43       	nop			
    b43a:	ce 3f       	jmp	$-98     	;abs 0xb3d8

0000b43c <__timers_init>:
    b43c:	b0 12 a2 c0 	call	#-16222	;#0xc0a2

0000b440 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    b440:	30 41       	ret			

0000b442 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    b442:	30 41       	ret			

0000b444 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    b444:	0a 15       	pushm	#1,	r10	;16-bit words

0000b446 <.LCFI0>:
    b446:	4a 4c       	mov.b	r12,	r10	;

0000b448 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    b448:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    b44c:	19 24       	jz	$+52     	;abs 0xb480

0000b44e <.L5>:
    b44e:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    b452:	0e 24       	jz	$+30     	;abs 0xb470

0000b454 <.L6>:
    b454:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    b458:	02 24       	jz	$+6      	;abs 0xb45e

0000b45a <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    b45a:	0a 17       	popm	#1,	r10	;16-bit words

0000b45c <.LCFI1>:
    b45c:	30 41       	ret			

0000b45e <.L10>:
            wkup_timing[i].status = NOT_USED;
    b45e:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

0000b462 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    b462:	4e 43       	clr.b	r14		;
    b464:	4d 43       	clr.b	r13		;
    b466:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b468:	b0 12 64 c1 	call	#-16028	;#0xc164

0000b46c <.Loc.101.1>:
}
    b46c:	0a 17       	popm	#1,	r10	;16-bit words

0000b46e <.LCFI3>:
    b46e:	30 41       	ret			

0000b470 <.L9>:
            wkup_timing[i].status = NOT_USED;
    b470:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

0000b474 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    b474:	4e 43       	clr.b	r14		;
    b476:	4d 43       	clr.b	r13		;
    b478:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b47a:	b0 12 64 c1 	call	#-16028	;#0xc164
    b47e:	ea 3f       	jmp	$-42     	;abs 0xb454

0000b480 <.L8>:
            wkup_timing[i].status = NOT_USED;
    b480:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

0000b484 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    b484:	4e 43       	clr.b	r14		;
    b486:	4d 43       	clr.b	r13		;
    b488:	4c 43       	clr.b	r12		;

0000b48a <.LVL9>:
    b48a:	b0 12 64 c1 	call	#-16028	;#0xc164
    b48e:	df 3f       	jmp	$-64     	;abs 0xb44e

0000b490 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    b490:	2a 15       	pushm	#3,	r10	;16-bit words

0000b492 <.LCFI5>:
    b492:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000b496 <.LCFI6>:
    b496:	49 43       	clr.b	r9		;
    b498:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000b49c <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    b49c:	0a 49       	mov	r9,	r10	;
    b49e:	5a 06       	rlam	#2,	r10	;
    b4a0:	0a 59       	add	r9,	r10	;
    b4a2:	5a 02       	rlam	#1,	r10	;
    b4a4:	0a 58       	add	r8,	r10	;
    b4a6:	4e 43       	clr.b	r14		;
    b4a8:	4d 49       	mov.b	r9,	r13	;
    b4aa:	0c 41       	mov	r1,	r12	;
    b4ac:	b0 12 60 c3 	call	#-15520	;#0xc360
    b4b0:	aa 41 00 00 	mov	@r1,	0(r10)	;
    b4b4:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    b4b8:	02 00 
    b4ba:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    b4be:	04 00 
    b4c0:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    b4c4:	06 00 
    b4c6:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    b4ca:	08 00 

0000b4cc <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b4cc:	19 53       	inc	r9		;

0000b4ce <.Loc.115.1>:
    b4ce:	39 90 03 00 	cmp	#3,	r9	;
    b4d2:	e4 23       	jnz	$-54     	;abs 0xb49c

0000b4d4 <.Loc.120.1>:
    }

}
    b4d4:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000b4d8 <.LCFI7>:
    b4d8:	28 17       	popm	#3,	r10	;16-bit words

0000b4da <.LCFI8>:
    b4da:	30 41       	ret			

0000b4dc <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    b4dc:	5a 15       	pushm	#6,	r10	;16-bit words

0000b4de <.LCFI9>:

    uint8_t i,first = 1;
    b4de:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000b4e0 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b4e0:	4a 43       	clr.b	r10		;
    b4e2:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000b4e6 <.L40>:
    {

        if (wkup_timing[i].status == USED)
    b4e6:	09 4a       	mov	r10,	r9	;
    b4e8:	05 4a       	mov	r10,	r5	;
    b4ea:	55 06       	rlam	#2,	r5	;
    b4ec:	0c 45       	mov	r5,	r12	;
    b4ee:	0c 5a       	add	r10,	r12	;
    b4f0:	5c 02       	rlam	#1,	r12	;
    b4f2:	0d 4c       	mov	r12,	r13	;
    b4f4:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

0000b4f8 <.Loc.130.1>:
    b4f8:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b4fc:	0c 24       	jz	$+26     	;abs 0xb516

0000b4fe <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b4fe:	4c 4a       	mov.b	r10,	r12	;
    b500:	5c 53       	inc.b	r12		;
    b502:	4a 4c       	mov.b	r12,	r10	;

0000b504 <.LVL19>:
    b504:	7c 90 03 00 	cmp.b	#3,	r12	;
    b508:	ee 23       	jnz	$-34     	;abs 0xb4e6

0000b50a <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    b50a:	0e 93       	cmp	#0,	r14	;r3 As==00
    b50c:	54 24       	jz	$+170    	;abs 0xb5b6

0000b50e <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    b50e:	b0 12 be bf 	call	#-16450	;#0xbfbe

0000b512 <.LVL20>:


}
    b512:	55 17       	popm	#6,	r10	;16-bit words

0000b514 <.LCFI10>:
    b514:	30 41       	ret			

0000b516 <.L84>:
            if (first)
    b516:	16 4d 04 00 	mov	4(r13),	r6	;
    b51a:	17 4d 06 00 	mov	6(r13),	r7	;

0000b51e <.Loc.133.1>:
    b51e:	0e 93       	cmp	#0,	r14	;r3 As==00
    b520:	05 24       	jz	$+12     	;abs 0xb52c

0000b522 <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    b522:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

0000b526 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    b526:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    b52a:	5c 1c 

0000b52c <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    b52c:	b0 12 60 c0 	call	#-16288	;#0xc060

0000b530 <.Loc.141.1>:
    b530:	0e 46       	mov	r6,	r14	;
    b532:	0f 47       	mov	r7,	r15	;
    b534:	0e 8c       	sub	r12,	r14	;
    b536:	0f 7d       	subc	r13,	r15	;

0000b538 <.Loc.141.1>:
    b538:	05 5a       	add	r10,	r5	;
    b53a:	55 02       	rlam	#1,	r5	;
    b53c:	05 58       	add	r8,	r5	;
    b53e:	85 4e 04 00 	mov	r14,	4(r5)	;
    b542:	85 4f 06 00 	mov	r15,	6(r5)	;

0000b546 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    b546:	4d 43       	clr.b	r13		;
    b548:	4c 4a       	mov.b	r10,	r12	;
    b54a:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000b54e <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    b54e:	1c 45 04 00 	mov	4(r5),	r12	;
    b552:	1d 45 06 00 	mov	6(r5),	r13	;
    b556:	4b 4a       	mov.b	r10,	r11	;
    b558:	5b 53       	inc.b	r11		;
    b55a:	4a 4b       	mov.b	r11,	r10	;

0000b55c <.Loc.144.1>:
    b55c:	07 4d       	mov	r13,	r7	;
    b55e:	0d 93       	cmp	#0,	r13	;r3 As==00
    b560:	3b 38       	jl	$+120    	;abs 0xb5d8

0000b562 <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    b562:	0e 4c       	mov	r12,	r14	;
    b564:	0e dd       	bis	r13,	r14	;
    b566:	0e 93       	cmp	#0,	r14	;r3 As==00
    b568:	af 24       	jz	$+352    	;abs 0xb6c8

0000b56a <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b56a:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    b56e:	0e 46       	mov	r6,	r14	;
    b570:	0f 43       	clr	r15		;

0000b572 <.Loc.155.1>:
    b572:	0d 93       	cmp	#0,	r13	;r3 As==00
    b574:	18 34       	jge	$+50     	;abs 0xb5a6

0000b576 <.L50>:
    b576:	0e 49       	mov	r9,	r14	;
    b578:	5e 06       	rlam	#2,	r14	;
    b57a:	09 5e       	add	r14,	r9	;
    b57c:	59 02       	rlam	#1,	r9	;
    b57e:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b582 <.L37>:
                    min_wkup = wkup_timing[i].data;
    b582:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

0000b586 <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    b586:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000b58a <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b58a:	7b 90 03 00 	cmp.b	#3,	r11	;
    b58e:	15 24       	jz	$+44     	;abs 0xb5ba

0000b590 <.L74>:
        if (wkup_timing[i].status == USED)
    b590:	09 4a       	mov	r10,	r9	;
    b592:	05 4a       	mov	r10,	r5	;
    b594:	55 06       	rlam	#2,	r5	;
    b596:	0c 45       	mov	r5,	r12	;
    b598:	0c 5a       	add	r10,	r12	;
    b59a:	5c 02       	rlam	#1,	r12	;

0000b59c <.Loc.130.1>:
    b59c:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b5a0:	41 24       	jz	$+132    	;abs 0xb624

0000b5a2 <.L91>:
    b5a2:	4e 43       	clr.b	r14		;
    b5a4:	ac 3f       	jmp	$-166    	;abs 0xb4fe

0000b5a6 <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b5a6:	0d 93       	cmp	#0,	r13	;r3 As==00
    b5a8:	62 24       	jz	$+198    	;abs 0xb66e

0000b5aa <.L35>:
    b5aa:	07 4c       	mov	r12,	r7	;
    b5ac:	0c 9e       	cmp	r14,	r12	;
    b5ae:	79 24       	jz	$+244    	;abs 0xb6a2

0000b5b0 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b5b0:	7b 90 03 00 	cmp.b	#3,	r11	;
    b5b4:	ed 23       	jnz	$-36     	;abs 0xb590

0000b5b6 <.L72>:
    b5b6:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

0000b5ba <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    b5ba:	4d 4e       	mov.b	r14,	r13	;
    b5bc:	4c 43       	clr.b	r12		;
    b5be:	b0 12 ac c1 	call	#-15956	;#0xc1ac

0000b5c2 <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    b5c2:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    b5c6:	4c 43       	clr.b	r12		;
    b5c8:	b0 12 ba c1 	call	#-15942	;#0xc1ba

0000b5cc <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    b5cc:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    b5d0:	b0 12 d2 bf 	call	#-16430	;#0xbfd2

0000b5d4 <.Loc.177.1>:
}
    b5d4:	55 17       	popm	#6,	r10	;16-bit words

0000b5d6 <.LCFI12>:
    b5d6:	30 41       	ret			

0000b5d8 <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    b5d8:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    b5dc:	06 43       	clr	r6		;
    b5de:	06 8e       	sub	r14,	r6	;
    b5e0:	0e 46       	mov	r6,	r14	;
    b5e2:	0f 46       	mov	r6,	r15	;
    b5e4:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000b5e8 <.Loc.144.1>:
    b5e8:	05 4f       	mov	r15,	r5	;
    b5ea:	0f 9d       	cmp	r13,	r15	;
    b5ec:	25 38       	jl	$+76     	;abs 0xb638

0000b5ee <.Loc.144.1>:
    b5ee:	0d 9f       	cmp	r15,	r13	;
    b5f0:	21 24       	jz	$+68     	;abs 0xb634

0000b5f2 <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    b5f2:	07 4d       	mov	r13,	r7	;
    b5f4:	0d 9f       	cmp	r15,	r13	;
    b5f6:	04 38       	jl	$+10     	;abs 0xb600
    b5f8:	0f 9d       	cmp	r13,	r15	;
    b5fa:	da 23       	jnz	$-74     	;abs 0xb5b0
    b5fc:	0c 96       	cmp	r6,	r12	;
    b5fe:	d8 2f       	jc	$-78     	;abs 0xb5b0

0000b600 <.L30>:
    b600:	0c 49       	mov	r9,	r12	;
    b602:	5c 06       	rlam	#2,	r12	;
    b604:	09 5c       	add	r12,	r9	;
    b606:	59 02       	rlam	#1,	r9	;
    b608:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

0000b60c <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b60c:	7b 90 03 00 	cmp.b	#3,	r11	;
    b610:	d2 27       	jz	$-90     	;abs 0xb5b6

0000b612 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    b612:	09 4a       	mov	r10,	r9	;
    b614:	05 4a       	mov	r10,	r5	;
    b616:	55 06       	rlam	#2,	r5	;
    b618:	0c 45       	mov	r5,	r12	;
    b61a:	0c 5a       	add	r10,	r12	;
    b61c:	5c 02       	rlam	#1,	r12	;

0000b61e <.Loc.130.1>:
    b61e:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b622:	bf 23       	jnz	$-128    	;abs 0xb5a2

0000b624 <.L27>:
    b624:	0c 45       	mov	r5,	r12	;
    b626:	0c 5a       	add	r10,	r12	;
    b628:	5c 02       	rlam	#1,	r12	;
    b62a:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    b62e:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    b632:	7c 3f       	jmp	$-262    	;abs 0xb52c

0000b634 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    b634:	06 9c       	cmp	r12,	r6	;
    b636:	dd 2f       	jc	$-68     	;abs 0xb5f2

0000b638 <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b638:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    b63c:	06 4e       	mov	r14,	r6	;
    b63e:	07 43       	clr	r7		;

0000b640 <.Loc.146.1>:
    b640:	4e 43       	clr.b	r14		;
    b642:	4f 43       	clr.b	r15		;
    b644:	0e 8c       	sub	r12,	r14	;
    b646:	0f 7d       	subc	r13,	r15	;

0000b648 <.Loc.146.1>:
    b648:	05 4f       	mov	r15,	r5	;
    b64a:	0f 93       	cmp	#0,	r15	;r3 As==00
    b64c:	14 34       	jge	$+42     	;abs 0xb676

0000b64e <.L22>:
    b64e:	0e 49       	mov	r9,	r14	;
    b650:	5e 06       	rlam	#2,	r14	;
    b652:	09 5e       	add	r14,	r9	;
    b654:	59 02       	rlam	#1,	r9	;
    b656:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b65a <.L28>:
                    min_wkup = -wkup_timing[i].data;
    b65a:	4f 43       	clr.b	r15		;
    b65c:	0f 8c       	sub	r12,	r15	;
    b65e:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

0000b662 <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    b662:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000b666 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b666:	7b 90 03 00 	cmp.b	#3,	r11	;
    b66a:	92 23       	jnz	$-218    	;abs 0xb590
    b66c:	a6 3f       	jmp	$-178    	;abs 0xb5ba

0000b66e <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b66e:	07 4c       	mov	r12,	r7	;
    b670:	0c 9e       	cmp	r14,	r12	;
    b672:	9b 2f       	jc	$-200    	;abs 0xb5aa
    b674:	80 3f       	jmp	$-254    	;abs 0xb576

0000b676 <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b676:	0f 93       	cmp	#0,	r15	;r3 As==00
    b678:	03 20       	jnz	$+8      	;abs 0xb680
    b67a:	05 4e       	mov	r14,	r5	;
    b67c:	0e 96       	cmp	r6,	r14	;
    b67e:	e7 2b       	jnc	$-48     	;abs 0xb64e

0000b680 <.L47>:
    b680:	06 9e       	cmp	r14,	r6	;
    b682:	96 23       	jnz	$-210    	;abs 0xb5b0
    b684:	0f 93       	cmp	#0,	r15	;r3 As==00
    b686:	94 23       	jnz	$-214    	;abs 0xb5b0

0000b688 <.Loc.146.1>:
    b688:	0e 49       	mov	r9,	r14	;
    b68a:	5e 06       	rlam	#2,	r14	;
    b68c:	09 5e       	add	r14,	r9	;
    b68e:	59 02       	rlam	#1,	r9	;
    b690:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b694 <.Loc.146.1>:
    b694:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000b698 <.Loc.146.1>:
    b698:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    b69c:	36 1c 
    b69e:	dd 2b       	jnc	$-68     	;abs 0xb65a
    b6a0:	0e 3c       	jmp	$+30     	;abs 0xb6be

0000b6a2 <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b6a2:	0d 9f       	cmp	r15,	r13	;
    b6a4:	85 23       	jnz	$-244    	;abs 0xb5b0

0000b6a6 <.Loc.155.1>:
    b6a6:	0e 49       	mov	r9,	r14	;
    b6a8:	5e 06       	rlam	#2,	r14	;
    b6aa:	09 5e       	add	r14,	r9	;
    b6ac:	59 02       	rlam	#1,	r9	;
    b6ae:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000b6b2 <.Loc.155.1>:
    b6b2:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

0000b6b6 <.Loc.155.1>:
    b6b6:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    b6ba:	36 1c 
    b6bc:	62 2b       	jnc	$-314    	;abs 0xb582

0000b6be <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b6be:	7b 90 03 00 	cmp.b	#3,	r11	;
    b6c2:	66 23       	jnz	$-306    	;abs 0xb590

0000b6c4 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    b6c4:	0e 4f       	mov	r15,	r14	;

0000b6c6 <.Loc.164.1>:
    if (!first)
    b6c6:	79 3f       	jmp	$-268    	;abs 0xb5ba

0000b6c8 <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b6c8:	7b 90 03 00 	cmp.b	#3,	r11	;
    b6cc:	74 27       	jz	$-278    	;abs 0xb5b6

0000b6ce <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    b6ce:	09 4a       	mov	r10,	r9	;
    b6d0:	05 4a       	mov	r10,	r5	;
    b6d2:	55 06       	rlam	#2,	r5	;
    b6d4:	0c 45       	mov	r5,	r12	;
    b6d6:	0c 5a       	add	r10,	r12	;
    b6d8:	5c 02       	rlam	#1,	r12	;

0000b6da <.Loc.130.1>:
    b6da:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    b6de:	0f 23       	jnz	$-480    	;abs 0xb4fe
    b6e0:	a1 3f       	jmp	$-188    	;abs 0xb624

0000b6e2 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    b6e2:	4a 15       	pushm	#5,	r10	;16-bit words

0000b6e4 <.LCFI14>:
    b6e4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000b6e8 <.LCFI15>:
    b6e8:	47 4c       	mov.b	r12,	r7	;
    b6ea:	09 4d       	mov	r13,	r9	;

0000b6ec <.LBB12>:
    b6ec:	46 43       	clr.b	r6		;
    b6ee:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000b6f2 <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    b6f2:	0a 46       	mov	r6,	r10	;
    b6f4:	5a 06       	rlam	#2,	r10	;
    b6f6:	0a 56       	add	r6,	r10	;
    b6f8:	5a 02       	rlam	#1,	r10	;
    b6fa:	0a 58       	add	r8,	r10	;
    b6fc:	4e 43       	clr.b	r14		;
    b6fe:	4d 46       	mov.b	r6,	r13	;
    b700:	0c 41       	mov	r1,	r12	;
    b702:	b0 12 60 c3 	call	#-15520	;#0xc360
    b706:	aa 41 00 00 	mov	@r1,	0(r10)	;
    b70a:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    b70e:	02 00 
    b710:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    b714:	04 00 
    b716:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    b71a:	06 00 
    b71c:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    b720:	08 00 

0000b722 <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b722:	16 53       	inc	r6		;

0000b724 <.Loc.115.1>:
    b724:	36 90 03 00 	cmp	#3,	r6	;
    b728:	e4 23       	jnz	$-54     	;abs 0xb6f2

0000b72a <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    b72a:	b0 12 be bf 	call	#-16450	;#0xbfbe

0000b72e <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    b72e:	0e 49       	mov	r9,	r14	;
    b730:	0f 43       	clr	r15		;

0000b732 <.Loc.194.1>:
    b732:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    b736:	22 24       	jz	$+70     	;abs 0xb77c

0000b738 <.Loc.192.1>:
    b738:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    b73c:	49 24       	jz	$+148    	;abs 0xb7d0

0000b73e <.Loc.192.1>:
    b73e:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    b742:	49 24       	jz	$+148    	;abs 0xb7d6

0000b744 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    b744:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    b748:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

0000b74c <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    b74c:	4d 43       	clr.b	r13		;
    b74e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b750:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000b754 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    b754:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

0000b758 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    b758:	4e 47       	mov.b	r7,	r14	;
    b75a:	4d 43       	clr.b	r13		;
    b75c:	7c 40 03 00 	mov.b	#3,	r12	;
    b760:	b0 12 18 c1 	call	#-16104	;#0xc118

0000b764 <.Loc.219.1>:
        refresh_wkup_timers();
    b764:	b0 12 dc b4 	call	#-19236	;#0xb4dc

0000b768 <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    b768:	4c 43       	clr.b	r12		;
    b76a:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000b76e <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    b76e:	4c 43       	clr.b	r12		;
    b770:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000b774 <.Loc.224.1>:
}
    b774:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000b778 <.LCFI16>:
    b778:	46 17       	popm	#5,	r10	;16-bit words

0000b77a <.LCFI17>:
    b77a:	30 41       	ret			

0000b77c <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b77c:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

0000b780 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    b780:	0d 4a       	mov	r10,	r13	;

0000b782 <.L95>:
            wkup_timing[i].data = ticks;
    b782:	0c 4d       	mov	r13,	r12	;
    b784:	5c 06       	rlam	#2,	r12	;
    b786:	0c 5d       	add	r13,	r12	;
    b788:	5c 02       	rlam	#1,	r12	;
    b78a:	08 5c       	add	r12,	r8	;
    b78c:	88 4e 04 00 	mov	r14,	4(r8)	;
    b790:	88 4f 06 00 	mov	r15,	6(r8)	;

0000b794 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    b794:	4d 43       	clr.b	r13		;
    b796:	4c 4a       	mov.b	r10,	r12	;
    b798:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000b79c <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    b79c:	c8 47 02 00 	mov.b	r7,	2(r8)	;

0000b7a0 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    b7a0:	4e 47       	mov.b	r7,	r14	;
    b7a2:	4d 43       	clr.b	r13		;
    b7a4:	4c 4a       	mov.b	r10,	r12	;
    b7a6:	b0 12 18 c1 	call	#-16104	;#0xc118

0000b7aa <.Loc.200.1>:
            wkup_timing[i].status = USED;
    b7aa:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

0000b7ae <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    b7ae:	5e 43       	mov.b	#1,	r14	;r3 As==01
    b7b0:	4d 43       	clr.b	r13		;
    b7b2:	4c 4a       	mov.b	r10,	r12	;
    b7b4:	b0 12 64 c1 	call	#-16028	;#0xc164

0000b7b8 <.Loc.202.1>:
        refresh_wkup_timers();
    b7b8:	b0 12 dc b4 	call	#-19236	;#0xb4dc

0000b7bc <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    b7bc:	4c 43       	clr.b	r12		;
    b7be:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000b7c2 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    b7c2:	4c 43       	clr.b	r12		;
    b7c4:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000b7c8 <.Loc.224.1>:
}
    b7c8:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000b7cc <.LCFI19>:
    b7cc:	46 17       	popm	#5,	r10	;16-bit words

0000b7ce <.LCFI20>:
    b7ce:	30 41       	ret			

0000b7d0 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b7d0:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000b7d2 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    b7d2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    b7d4:	d6 3f       	jmp	$-82     	;abs 0xb782

0000b7d6 <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    b7d6:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000b7d8 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    b7d8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b7da:	d3 3f       	jmp	$-88     	;abs 0xb782

0000b7dc <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    b7dc:	4d 4c       	mov.b	r12,	r13	;

0000b7de <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    b7de:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    b7e2:	14 24       	jz	$+42     	;abs 0xb80c

0000b7e4 <.Loc.237.1>:
    b7e4:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    b7e8:	14 24       	jz	$+42     	;abs 0xb812

0000b7ea <.Loc.237.1>:
    b7ea:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    b7ee:	01 24       	jz	$+4      	;abs 0xb7f2

0000b7f0 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    b7f0:	30 41       	ret			

0000b7f2 <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    b7f2:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000b7f4 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    b7f4:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000b7f6 <.L102>:
            xpr_timing[i].status = NOT_USED;
    b7f6:	0d 4e       	mov	r14,	r13	;

0000b7f8 <.LVL71>:
    b7f8:	5d 06       	rlam	#2,	r13	;
    b7fa:	0d 5e       	add	r14,	r13	;
    b7fc:	5d 02       	rlam	#1,	r13	;
    b7fe:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000b802 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    b802:	4e 43       	clr.b	r14		;
    b804:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b806:	b0 12 64 c1 	call	#-16028	;#0xc164

0000b80a <.Loc.242.1>:
}
    b80a:	30 41       	ret			

0000b80c <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    b80c:	4c 43       	clr.b	r12		;

0000b80e <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    b80e:	4e 43       	clr.b	r14		;
    b810:	f2 3f       	jmp	$-26     	;abs 0xb7f6

0000b812 <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    b812:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000b814 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    b814:	5e 43       	mov.b	#1,	r14	;r3 As==01
    b816:	ef 3f       	jmp	$-32     	;abs 0xb7f6

0000b818 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    b818:	2a 15       	pushm	#3,	r10	;16-bit words

0000b81a <.LCFI22>:
    b81a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000b81e <.LCFI23>:
    b81e:	49 43       	clr.b	r9		;
    b820:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

0000b824 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    b824:	0a 49       	mov	r9,	r10	;
    b826:	5a 06       	rlam	#2,	r10	;
    b828:	0a 59       	add	r9,	r10	;
    b82a:	5a 02       	rlam	#1,	r10	;
    b82c:	0a 58       	add	r8,	r10	;
    b82e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    b830:	4d 49       	mov.b	r9,	r13	;
    b832:	0c 41       	mov	r1,	r12	;
    b834:	b0 12 60 c3 	call	#-15520	;#0xc360
    b838:	aa 41 00 00 	mov	@r1,	0(r10)	;
    b83c:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    b840:	02 00 
    b842:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    b846:	04 00 
    b848:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    b84c:	06 00 
    b84e:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    b852:	08 00 

0000b854 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    b854:	19 53       	inc	r9		;

0000b856 <.Loc.252.1>:
    b856:	39 90 03 00 	cmp	#3,	r9	;
    b85a:	e4 23       	jnz	$-54     	;abs 0xb824

0000b85c <.Loc.257.1>:
    }

}
    b85c:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000b860 <.LCFI24>:
    b860:	28 17       	popm	#3,	r10	;16-bit words

0000b862 <.LCFI25>:
    b862:	30 41       	ret			

0000b864 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    b864:	4a 15       	pushm	#5,	r10	;16-bit words

0000b866 <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    b866:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    b86a:	62 24       	jz	$+198    	;abs 0xb930

0000b86c <.Loc.265.1>:
    b86c:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    b870:	07 24       	jz	$+16     	;abs 0xb880

0000b872 <.Loc.265.1>:
    b872:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    b876:	15 25       	jz	$+556    	;abs 0xbaa2

0000b878 <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    b878:	b0 12 fe bf 	call	#-16386	;#0xbffe

0000b87c <.Loc.313.1>:

}
    b87c:	46 17       	popm	#5,	r10	;16-bit words

0000b87e <.LCFI27>:
    b87e:	30 41       	ret			

0000b880 <.L160>:
            if (first)
    b880:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    b884:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000b888 <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    b888:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000b88c <.LVL89>:
    b88c:	08 46       	mov	r6,	r8	;
    b88e:	09 47       	mov	r7,	r9	;

0000b890 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    b890:	b0 12 60 c0 	call	#-16288	;#0xc060

0000b894 <.Loc.278.1>:
    b894:	0e 46       	mov	r6,	r14	;
    b896:	0f 47       	mov	r7,	r15	;
    b898:	0e 8c       	sub	r12,	r14	;
    b89a:	0f 7d       	subc	r13,	r15	;

0000b89c <.Loc.278.1>:
    b89c:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    b8a0:	82 4f 26 1c 	mov	r15,	&0x1c26	;

0000b8a4 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    b8a4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b8a6:	5c 43       	mov.b	#1,	r12	;r3 As==01
    b8a8:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000b8ac <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    b8ac:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    b8b0:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

0000b8b4 <.Loc.281.1>:
    b8b4:	4e 43       	clr.b	r14		;
    b8b6:	0e 9c       	cmp	r12,	r14	;
    b8b8:	a2 34       	jge	$+326    	;abs 0xb9fe

0000b8ba <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    b8ba:	0c 99       	cmp	r9,	r12	;
    b8bc:	04 38       	jl	$+10     	;abs 0xb8c6

0000b8be <.L170>:
    b8be:	09 9c       	cmp	r12,	r9	;
    b8c0:	e5 20       	jnz	$+460    	;abs 0xba8c
    b8c2:	0d 98       	cmp	r8,	r13	;
    b8c4:	e3 2c       	jc	$+456    	;abs 0xba8c

0000b8c6 <.L152>:
    b8c6:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000b8ca <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    b8ca:	08 4d       	mov	r13,	r8	;
    b8cc:	09 4c       	mov	r12,	r9	;

0000b8ce <.L117>:
        if (xpr_timing[i].status == USED)
    b8ce:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    b8d2:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000b8d6 <.Loc.268.1>:
    b8d6:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    b8da:	1d 20       	jnz	$+60     	;abs 0xb916

0000b8dc <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    b8dc:	b0 12 60 c0 	call	#-16288	;#0xc060

0000b8e0 <.Loc.278.1>:
    b8e0:	0e 46       	mov	r6,	r14	;
    b8e2:	0f 47       	mov	r7,	r15	;
    b8e4:	0e 8c       	sub	r12,	r14	;
    b8e6:	0f 7d       	subc	r13,	r15	;

0000b8e8 <.Loc.278.1>:
    b8e8:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    b8ec:	82 4f 30 1c 	mov	r15,	&0x1c30	;

0000b8f0 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    b8f0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b8f2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b8f4:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000b8f8 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    b8f8:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    b8fc:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

0000b900 <.Loc.281.1>:
    b900:	4e 43       	clr.b	r14		;
    b902:	0e 9c       	cmp	r12,	r14	;
    b904:	4c 34       	jge	$+154    	;abs 0xb99e

0000b906 <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    b906:	0c 99       	cmp	r9,	r12	;
    b908:	76 38       	jl	$+238    	;abs 0xb9f6

0000b90a <.L168>:
    b90a:	09 9c       	cmp	r12,	r9	;
    b90c:	02 20       	jnz	$+6      	;abs 0xb912
    b90e:	0d 98       	cmp	r8,	r13	;
    b910:	72 28       	jnc	$+230    	;abs 0xb9f6

0000b912 <.L139>:
    b912:	08 9d       	cmp	r13,	r8	;
    b914:	d8 24       	jz	$+434    	;abs 0xbac6

0000b916 <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    b916:	4d 4a       	mov.b	r10,	r13	;
    b918:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b91a:	b0 12 ac c1 	call	#-15956	;#0xc1ac

0000b91e <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    b91e:	0d 48       	mov	r8,	r13	;
    b920:	6c 43       	mov.b	#2,	r12	;r3 As==10
    b922:	b0 12 ba c1 	call	#-15942	;#0xc1ba

0000b926 <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    b926:	0c 48       	mov	r8,	r12	;
    b928:	b0 12 e8 bf 	call	#-16408	;#0xbfe8

0000b92c <.Loc.313.1>:
}
    b92c:	46 17       	popm	#5,	r10	;16-bit words

0000b92e <.LCFI29>:
    b92e:	30 41       	ret			

0000b930 <.L159>:
            if (first)
    b930:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    b934:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

0000b938 <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    b938:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000b93c <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    b93c:	b0 12 60 c0 	call	#-16288	;#0xc060

0000b940 <.LVL105>:
    b940:	0e 48       	mov	r8,	r14	;
    b942:	0f 49       	mov	r9,	r15	;
    b944:	0e 8c       	sub	r12,	r14	;
    b946:	0f 7d       	subc	r13,	r15	;

0000b948 <.Loc.278.1>:
    b948:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    b94c:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

0000b950 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    b950:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b952:	4c 43       	clr.b	r12		;
    b954:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000b958 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    b958:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    b95c:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

0000b960 <.Loc.281.1>:
    b960:	4e 43       	clr.b	r14		;
    b962:	0e 9c       	cmp	r12,	r14	;
    b964:	74 34       	jge	$+234    	;abs 0xba4e

0000b966 <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    b966:	0c 99       	cmp	r9,	r12	;
    b968:	0c 34       	jge	$+26     	;abs 0xb982

0000b96a <.L151>:
    b96a:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000b96e <.L119>:
        if (xpr_timing[i].status == USED)
    b96e:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    b972:	ab 23       	jnz	$-168    	;abs 0xb8ca

0000b974 <.Loc.271.1>:
            if (first)
    b974:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    b978:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000b97c <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    b97c:	08 4d       	mov	r13,	r8	;
    b97e:	09 4c       	mov	r12,	r9	;
    b980:	87 3f       	jmp	$-240    	;abs 0xb890

0000b982 <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    b982:	09 9c       	cmp	r12,	r9	;
    b984:	02 20       	jnz	$+6      	;abs 0xb98a
    b986:	0d 98       	cmp	r8,	r13	;
    b988:	f0 2b       	jnc	$-30     	;abs 0xb96a

0000b98a <.L114>:
    b98a:	0d 98       	cmp	r8,	r13	;
    b98c:	93 24       	jz	$+296    	;abs 0xbab4

0000b98e <.L118>:
        if (xpr_timing[i].status == USED)
    b98e:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    b992:	9d 23       	jnz	$-196    	;abs 0xb8ce

0000b994 <.Loc.271.1>:
            if (first)
    b994:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    b998:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    b99c:	79 3f       	jmp	$-268    	;abs 0xb890

0000b99e <.L162>:
            if (xpr_timing[i].data <= 0)
    b99e:	0c 93       	cmp	#0,	r12	;r3 As==00
    b9a0:	02 20       	jnz	$+6      	;abs 0xb9a6
    b9a2:	0d 93       	cmp	#0,	r13	;r3 As==00
    b9a4:	b0 23       	jnz	$-158    	;abs 0xb906

0000b9a6 <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    b9a6:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    b9aa:	b0 12 5c b2 	call	#-19876	;#0xb25c
    b9ae:	b0 12 02 b2 	call	#-19966	;#0xb202

0000b9b2 <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    b9b2:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

0000b9b6 <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    b9b6:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    b9ba:	18 1c 
    b9bc:	8e 24       	jz	$+286    	;abs 0xbada

0000b9be <.Loc.237.1>:
    b9be:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    b9c2:	91 24       	jz	$+292    	;abs 0xbae6

0000b9c4 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    b9c4:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000b9c6 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    b9c6:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000b9c8 <.L136>:
            xpr_timing[i].status = NOT_USED;
    b9c8:	0d 4e       	mov	r14,	r13	;
    b9ca:	5d 06       	rlam	#2,	r13	;
    b9cc:	0d 5e       	add	r14,	r13	;
    b9ce:	5d 02       	rlam	#1,	r13	;
    b9d0:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000b9d4 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    b9d4:	4e 43       	clr.b	r14		;
    b9d6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    b9d8:	b0 12 64 c1 	call	#-16028	;#0xc164

0000b9dc <.LBE18>:
            if (xpr_timing[i].data > 0)
    b9dc:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    b9e0:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

0000b9e4 <.Loc.292.1>:
    b9e4:	4e 43       	clr.b	r14		;
    b9e6:	0e 9c       	cmp	r12,	r14	;
    b9e8:	8e 3b       	jl	$-226    	;abs 0xb906
    b9ea:	0c 93       	cmp	#0,	r12	;r3 As==00
    b9ec:	94 23       	jnz	$-214    	;abs 0xb916
    b9ee:	0d 93       	cmp	#0,	r13	;r3 As==00
    b9f0:	92 27       	jz	$-218    	;abs 0xb916

0000b9f2 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    b9f2:	0c 99       	cmp	r9,	r12	;
    b9f4:	8a 37       	jge	$-234    	;abs 0xb90a

0000b9f6 <.L154>:
    b9f6:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

0000b9fa <.LVL117>:
    if (!first)
    b9fa:	08 4d       	mov	r13,	r8	;
    b9fc:	8c 3f       	jmp	$-230    	;abs 0xb916

0000b9fe <.L161>:
            if (xpr_timing[i].data <= 0)
    b9fe:	0c 93       	cmp	#0,	r12	;r3 As==00
    ba00:	02 20       	jnz	$+6      	;abs 0xba06
    ba02:	0d 93       	cmp	#0,	r13	;r3 As==00
    ba04:	5a 23       	jnz	$-330    	;abs 0xb8ba

0000ba06 <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    ba06:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    ba0a:	b0 12 5c b2 	call	#-19876	;#0xb25c
    ba0e:	b0 12 02 b2 	call	#-19966	;#0xb202

0000ba12 <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    ba12:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    ba16:	22 1c 
    ba18:	63 24       	jz	$+200    	;abs 0xbae0

0000ba1a <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    ba1a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000ba1c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    ba1c:	5e 43       	mov.b	#1,	r14	;r3 As==01

0000ba1e <.L131>:
            xpr_timing[i].status = NOT_USED;
    ba1e:	0d 4e       	mov	r14,	r13	;
    ba20:	5d 06       	rlam	#2,	r13	;
    ba22:	0d 5e       	add	r14,	r13	;
    ba24:	5d 02       	rlam	#1,	r13	;
    ba26:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000ba2a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    ba2a:	4e 43       	clr.b	r14		;
    ba2c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    ba2e:	b0 12 64 c1 	call	#-16028	;#0xc164

0000ba32 <.LVL122>:
            if (xpr_timing[i].data > 0)
    ba32:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    ba36:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

0000ba3a <.Loc.292.1>:
    ba3a:	4e 43       	clr.b	r14		;
    ba3c:	0e 9c       	cmp	r12,	r14	;
    ba3e:	3d 3b       	jl	$-388    	;abs 0xb8ba
    ba40:	0c 93       	cmp	#0,	r12	;r3 As==00
    ba42:	45 23       	jnz	$-372    	;abs 0xb8ce
    ba44:	0d 93       	cmp	#0,	r13	;r3 As==00
    ba46:	43 27       	jz	$-376    	;abs 0xb8ce

0000ba48 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    ba48:	0c 99       	cmp	r9,	r12	;
    ba4a:	3d 3b       	jl	$-388    	;abs 0xb8c6
    ba4c:	38 3f       	jmp	$-398    	;abs 0xb8be

0000ba4e <.L164>:
            if (xpr_timing[i].data <= 0)
    ba4e:	0c 93       	cmp	#0,	r12	;r3 As==00
    ba50:	02 20       	jnz	$+6      	;abs 0xba56
    ba52:	0d 93       	cmp	#0,	r13	;r3 As==00
    ba54:	88 23       	jnz	$-238    	;abs 0xb966

0000ba56 <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    ba56:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    ba5a:	b0 12 5c b2 	call	#-19876	;#0xb25c
    ba5e:	b0 12 02 b2 	call	#-19966	;#0xb202

0000ba62 <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    ba62:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

0000ba66 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    ba66:	4e 43       	clr.b	r14		;
    ba68:	6d 43       	mov.b	#2,	r13	;r3 As==10
    ba6a:	4c 43       	clr.b	r12		;
    ba6c:	b0 12 64 c1 	call	#-16028	;#0xc164

0000ba70 <.LVL126>:
            if (xpr_timing[i].data > 0)
    ba70:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    ba74:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

0000ba78 <.Loc.292.1>:
    ba78:	4e 43       	clr.b	r14		;
    ba7a:	0e 9c       	cmp	r12,	r14	;
    ba7c:	74 3b       	jl	$-278    	;abs 0xb966
    ba7e:	0c 93       	cmp	#0,	r12	;r3 As==00
    ba80:	86 23       	jnz	$-242    	;abs 0xb98e
    ba82:	0d 93       	cmp	#0,	r13	;r3 As==00
    ba84:	84 27       	jz	$-246    	;abs 0xb98e

0000ba86 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    ba86:	0c 99       	cmp	r9,	r12	;
    ba88:	70 3b       	jl	$-286    	;abs 0xb96a
    ba8a:	7b 3f       	jmp	$-264    	;abs 0xb982

0000ba8c <.L128>:
    ba8c:	08 9d       	cmp	r13,	r8	;
    ba8e:	1f 23       	jnz	$-448    	;abs 0xb8ce
    ba90:	09 9c       	cmp	r12,	r9	;
    ba92:	1d 23       	jnz	$-452    	;abs 0xb8ce

0000ba94 <.Loc.294.1>:
    ba94:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

0000ba98 <.Loc.294.1>:
    ba98:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    ba9c:	18 2f       	jc	$-462    	;abs 0xb8ce
    ba9e:	0a 4e       	mov	r14,	r10	;

0000baa0 <.LVL128>:
    baa0:	14 3f       	jmp	$-470    	;abs 0xb8ca

0000baa2 <.L143>:
            if (first)
    baa2:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    baa6:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000baaa <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    baaa:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

0000baae <.LVL131>:
    baae:	08 46       	mov	r6,	r8	;
    bab0:	09 47       	mov	r7,	r9	;
    bab2:	14 3f       	jmp	$-470    	;abs 0xb8dc

0000bab4 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    bab4:	0c 99       	cmp	r9,	r12	;
    bab6:	6b 23       	jnz	$-296    	;abs 0xb98e

0000bab8 <.Loc.294.1>:
    bab8:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

0000babc <.Loc.294.1>:
    babc:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    bac0:	66 2f       	jc	$-306    	;abs 0xb98e
    bac2:	0a 4e       	mov	r14,	r10	;

0000bac4 <.LVL133>:
    bac4:	54 3f       	jmp	$-342    	;abs 0xb96e

0000bac6 <.L163>:
    bac6:	09 9c       	cmp	r12,	r9	;
    bac8:	26 23       	jnz	$-434    	;abs 0xb916

0000baca <.Loc.294.1>:
    baca:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

0000bace <.Loc.294.1>:
    bace:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    bad2:	21 2f       	jc	$-444    	;abs 0xb916
    bad4:	0a 4c       	mov	r12,	r10	;

0000bad6 <.LVL135>:
    if (!first)
    bad6:	08 4d       	mov	r13,	r8	;
    bad8:	1e 3f       	jmp	$-450    	;abs 0xb916

0000bada <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bada:	4c 43       	clr.b	r12		;

0000badc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    badc:	4e 43       	clr.b	r14		;
    bade:	74 3f       	jmp	$-278    	;abs 0xb9c8

0000bae0 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bae0:	4c 43       	clr.b	r12		;

0000bae2 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bae2:	4e 43       	clr.b	r14		;
    bae4:	9c 3f       	jmp	$-198    	;abs 0xba1e

0000bae6 <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bae6:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bae8 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bae8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    baea:	6e 3f       	jmp	$-290    	;abs 0xb9c8

0000baec <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    baec:	5a 15       	pushm	#6,	r10	;16-bit words

0000baee <.LCFI31>:
    baee:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000baf2 <.LCFI32>:
    baf2:	47 4c       	mov.b	r12,	r7	;
    baf4:	08 4d       	mov	r13,	r8	;
    baf6:	06 4e       	mov	r14,	r6	;

0000baf8 <.LBB26>:
    baf8:	45 43       	clr.b	r5		;
    bafa:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

0000bafe <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    bafe:	0a 45       	mov	r5,	r10	;
    bb00:	5a 06       	rlam	#2,	r10	;
    bb02:	0a 55       	add	r5,	r10	;
    bb04:	5a 02       	rlam	#1,	r10	;
    bb06:	0a 59       	add	r9,	r10	;
    bb08:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bb0a:	4d 45       	mov.b	r5,	r13	;
    bb0c:	0c 41       	mov	r1,	r12	;
    bb0e:	b0 12 60 c3 	call	#-15520	;#0xc360
    bb12:	aa 41 00 00 	mov	@r1,	0(r10)	;
    bb16:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    bb1a:	02 00 
    bb1c:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    bb20:	04 00 
    bb22:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    bb26:	06 00 
    bb28:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    bb2c:	08 00 

0000bb2e <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bb2e:	15 53       	inc	r5		;

0000bb30 <.Loc.252.1>:
    bb30:	35 90 03 00 	cmp	#3,	r5	;
    bb34:	e4 23       	jnz	$-54     	;abs 0xbafe

0000bb36 <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    bb36:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    bb3a:	1d 24       	jz	$+60     	;abs 0xbb76

0000bb3c <.Loc.324.1>:
    bb3c:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    bb40:	4e 24       	jz	$+158    	;abs 0xbbde

0000bb42 <.Loc.324.1>:
    bb42:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    bb46:	4e 24       	jz	$+158    	;abs 0xbbe4

0000bb48 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    bb48:	0e 48       	mov	r8,	r14	;
    bb4a:	0f 46       	mov	r6,	r15	;
    bb4c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bb4e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bb50:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000bb54 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    bb54:	4e 47       	mov.b	r7,	r14	;
    bb56:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bb58:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bb5a:	b0 12 18 c1 	call	#-16104	;#0xc118

0000bb5e <.Loc.349.1>:
        refresh_xpr_timers();
    bb5e:	b0 12 64 b8 	call	#-18332	;#0xb864

0000bb62 <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    bb62:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bb64:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000bb68 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    bb68:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bb6a:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000bb6e <.Loc.354.1>:
}
    bb6e:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bb72 <.LCFI33>:
    bb72:	55 17       	popm	#6,	r10	;16-bit words

0000bb74 <.LCFI34>:
    bb74:	30 41       	ret			

0000bb76 <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    bb76:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000bb7a <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    bb7a:	05 4a       	mov	r10,	r5	;

0000bb7c <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    bb7c:	b0 12 60 c0 	call	#-16288	;#0xc060

0000bb80 <.Loc.328.1>:
    bb80:	0e 45       	mov	r5,	r14	;
    bb82:	5e 06       	rlam	#2,	r14	;
    bb84:	0e 55       	add	r5,	r14	;
    bb86:	5e 02       	rlam	#1,	r14	;
    bb88:	09 5e       	add	r14,	r9	;

0000bb8a <.Loc.328.1>:
    bb8a:	0c 58       	add	r8,	r12	;
    bb8c:	89 4c 04 00 	mov	r12,	4(r9)	;
    bb90:	0d 66       	addc	r6,	r13	;
    bb92:	89 4d 06 00 	mov	r13,	6(r9)	;

0000bb96 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    bb96:	b0 12 60 c0 	call	#-16288	;#0xc060

0000bb9a <.Loc.329.1>:
    bb9a:	0e 4c       	mov	r12,	r14	;
    bb9c:	0e 58       	add	r8,	r14	;
    bb9e:	0f 4d       	mov	r13,	r15	;
    bba0:	0f 66       	addc	r6,	r15	;
    bba2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bba4:	4c 4a       	mov.b	r10,	r12	;
    bba6:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000bbaa <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    bbaa:	c9 47 02 00 	mov.b	r7,	2(r9)	;

0000bbae <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    bbae:	4e 47       	mov.b	r7,	r14	;
    bbb0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bbb2:	4c 4a       	mov.b	r10,	r12	;
    bbb4:	b0 12 18 c1 	call	#-16104	;#0xc118

0000bbb8 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    bbb8:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

0000bbbc <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    bbbc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bbbe:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bbc0:	4c 4a       	mov.b	r10,	r12	;
    bbc2:	b0 12 64 c1 	call	#-16028	;#0xc164

0000bbc6 <.Loc.334.1>:
        refresh_xpr_timers();
    bbc6:	b0 12 64 b8 	call	#-18332	;#0xb864

0000bbca <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    bbca:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bbcc:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000bbd0 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    bbd0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bbd2:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000bbd6 <.Loc.354.1>:
}
    bbd6:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bbda <.LCFI36>:
    bbda:	55 17       	popm	#6,	r10	;16-bit words

0000bbdc <.LCFI37>:
    bbdc:	30 41       	ret			

0000bbde <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    bbde:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000bbe0 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    bbe0:	55 43       	mov.b	#1,	r5	;r3 As==01
    bbe2:	cc 3f       	jmp	$-102    	;abs 0xbb7c

0000bbe4 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    bbe4:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000bbe6 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    bbe6:	65 43       	mov.b	#2,	r5	;r3 As==10
    bbe8:	c9 3f       	jmp	$-108    	;abs 0xbb7c

0000bbea <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    bbea:	3a 15       	pushm	#4,	r10	;16-bit words

0000bbec <.LCFI39>:
    bbec:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bbf0 <.LCFI40>:
    bbf0:	47 4c       	mov.b	r12,	r7	;

0000bbf2 <.LBB34>:
    bbf2:	49 43       	clr.b	r9		;
    bbf4:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

0000bbf8 <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    bbf8:	0a 49       	mov	r9,	r10	;
    bbfa:	5a 06       	rlam	#2,	r10	;
    bbfc:	0a 59       	add	r9,	r10	;
    bbfe:	5a 02       	rlam	#1,	r10	;
    bc00:	0a 58       	add	r8,	r10	;
    bc02:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bc04:	4d 49       	mov.b	r9,	r13	;
    bc06:	0c 41       	mov	r1,	r12	;
    bc08:	b0 12 60 c3 	call	#-15520	;#0xc360
    bc0c:	aa 41 00 00 	mov	@r1,	0(r10)	;
    bc10:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    bc14:	02 00 
    bc16:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    bc1a:	04 00 
    bc1c:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    bc20:	06 00 
    bc22:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    bc26:	08 00 

0000bc28 <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bc28:	19 53       	inc	r9		;

0000bc2a <.Loc.252.1>:
    bc2a:	39 90 03 00 	cmp	#3,	r9	;
    bc2e:	e4 23       	jnz	$-54     	;abs 0xbbf8

0000bc30 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    bc30:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    bc34:	12 24       	jz	$+38     	;abs 0xbc5a

0000bc36 <.Loc.237.1>:
    bc36:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    bc3a:	27 24       	jz	$+80     	;abs 0xbc8a

0000bc3c <.Loc.237.1>:
    bc3c:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    bc40:	27 24       	jz	$+80     	;abs 0xbc90

0000bc42 <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    bc42:	b0 12 64 b8 	call	#-18332	;#0xb864

0000bc46 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    bc46:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bc48:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000bc4c <.Loc.369.1>:
    _pers_timer_commit(XPR);
    bc4c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bc4e:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000bc52 <.Loc.371.1>:

}
    bc52:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bc56 <.LCFI41>:
    bc56:	37 17       	popm	#4,	r10	;16-bit words

0000bc58 <.LCFI42>:
    bc58:	30 41       	ret			

0000bc5a <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bc5a:	4c 43       	clr.b	r12		;

0000bc5c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bc5c:	4e 43       	clr.b	r14		;

0000bc5e <.L181>:
            xpr_timing[i].status = NOT_USED;
    bc5e:	0d 4e       	mov	r14,	r13	;
    bc60:	5d 06       	rlam	#2,	r13	;
    bc62:	0d 5e       	add	r14,	r13	;
    bc64:	5d 02       	rlam	#1,	r13	;
    bc66:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000bc6a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    bc6a:	4e 43       	clr.b	r14		;
    bc6c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    bc6e:	b0 12 64 c1 	call	#-16028	;#0xc164

0000bc72 <.Loc.242.1>:
    refresh_xpr_timers();
    bc72:	b0 12 64 b8 	call	#-18332	;#0xb864

0000bc76 <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    bc76:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bc78:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000bc7c <.Loc.369.1>:
    _pers_timer_commit(XPR);
    bc7c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bc7e:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000bc82 <.Loc.371.1>:
}
    bc82:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bc86 <.LCFI44>:
    bc86:	37 17       	popm	#4,	r10	;16-bit words

0000bc88 <.LCFI45>:
    bc88:	30 41       	ret			

0000bc8a <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bc8a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000bc8c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bc8c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bc8e:	e7 3f       	jmp	$-48     	;abs 0xbc5e

0000bc90 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    bc90:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000bc92 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    bc92:	6e 43       	mov.b	#2,	r14	;r3 As==10
    bc94:	e4 3f       	jmp	$-54     	;abs 0xbc5e

0000bc96 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    bc96:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bc9a <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    bc9a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bc9c:	4d 43       	clr.b	r13		;
    bc9e:	0c 41       	mov	r1,	r12	;
    bca0:	b0 12 60 c3 	call	#-15520	;#0xc360
    bca4:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    bca8:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    bcac:	0e 1c 
    bcae:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    bcb2:	10 1c 
    bcb4:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    bcb8:	12 1c 
    bcba:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    bcbe:	14 1c 

0000bcc0 <.Loc.383.1>:
    }

}
    bcc0:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bcc4 <.LCFI48>:
    bcc4:	30 41       	ret			

0000bcc6 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    bcc6:	2a 15       	pushm	#3,	r10	;16-bit words

0000bcc8 <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    bcc8:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    bccc:	8a 20       	jnz	$+278    	;abs 0xbde2

0000bcce <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    bcce:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    bcd2:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000bcd6 <.Loc.465.1>:
    bcd6:	82 48 52 1c 	mov	r8,	&0x1c52	;

0000bcda <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    bcda:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    bcde:	54 1c 

0000bce0 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    bce0:	b0 12 60 c0 	call	#-16288	;#0xc060

0000bce4 <.Loc.471.1>:
    bce4:	0e 48       	mov	r8,	r14	;
    bce6:	0f 49       	mov	r9,	r15	;
    bce8:	0e 8c       	sub	r12,	r14	;
    bcea:	0f 7d       	subc	r13,	r15	;

0000bcec <.Loc.471.1>:
    bcec:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    bcf0:	82 4f 12 1c 	mov	r15,	&0x1c12	;

0000bcf4 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    bcf4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    bcf6:	4c 43       	clr.b	r12		;
    bcf8:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000bcfc <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    bcfc:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    bd00:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

0000bd04 <.Loc.474.1>:
    bd04:	0d 93       	cmp	#0,	r13	;r3 As==00
    bd06:	21 38       	jl	$+68     	;abs 0xbd4a

0000bd08 <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    bd08:	0f 4c       	mov	r12,	r15	;
    bd0a:	0f dd       	bis	r13,	r15	;
    bd0c:	0f 93       	cmp	#0,	r15	;r3 As==00
    bd0e:	6d 24       	jz	$+220    	;abs 0xbdea

0000bd10 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    bd10:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    bd14:	08 4f       	mov	r15,	r8	;
    bd16:	09 43       	clr	r9		;

0000bd18 <.Loc.485.1>:
    bd18:	0d 93       	cmp	#0,	r13	;r3 As==00
    bd1a:	54 38       	jl	$+170    	;abs 0xbdc4
    bd1c:	0d 93       	cmp	#0,	r13	;r3 As==00
    bd1e:	02 20       	jnz	$+6      	;abs 0xbd24
    bd20:	0c 98       	cmp	r8,	r12	;
    bd22:	50 28       	jnc	$+162    	;abs 0xbdc4

0000bd24 <.L209>:
    bd24:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000bd28 <.Loc.485.1>:
    bd28:	0c 98       	cmp	r8,	r12	;
    bd2a:	53 24       	jz	$+168    	;abs 0xbdd2

0000bd2c <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    bd2c:	4d 4e       	mov.b	r14,	r13	;
    bd2e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    bd30:	b0 12 ac c1 	call	#-15956	;#0xc1ac

0000bd34 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    bd34:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    bd38:	5c 43       	mov.b	#1,	r12	;r3 As==01
    bd3a:	b0 12 ba c1 	call	#-15942	;#0xc1ba

0000bd3e <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    bd3e:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    bd42:	b0 12 08 c0 	call	#-16376	;#0xc008

0000bd46 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    bd46:	28 17       	popm	#3,	r10	;16-bit words

0000bd48 <.LCFI50>:
    bd48:	30 41       	ret			

0000bd4a <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    bd4a:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    bd4e:	0f 43       	clr	r15		;
    bd50:	0f 89       	sub	r9,	r15	;
    bd52:	08 4f       	mov	r15,	r8	;
    bd54:	09 4f       	mov	r15,	r9	;
    bd56:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

0000bd5a <.Loc.474.1>:
    bd5a:	09 9d       	cmp	r13,	r9	;
    bd5c:	04 38       	jl	$+10     	;abs 0xbd66

0000bd5e <.Loc.474.1>:
    bd5e:	0d 99       	cmp	r9,	r13	;
    bd60:	25 20       	jnz	$+76     	;abs 0xbdac
    bd62:	0f 9c       	cmp	r12,	r15	;
    bd64:	23 2c       	jc	$+72     	;abs 0xbdac

0000bd66 <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    bd66:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    bd6a:	0a 4e       	mov	r14,	r10	;
    bd6c:	0b 43       	clr	r11		;

0000bd6e <.Loc.476.1>:
    bd6e:	48 43       	clr.b	r8		;
    bd70:	49 43       	clr.b	r9		;
    bd72:	08 8c       	sub	r12,	r8	;
    bd74:	09 7d       	subc	r13,	r9	;

0000bd76 <.Loc.476.1>:
    bd76:	09 93       	cmp	#0,	r9	;r3 As==00
    bd78:	04 38       	jl	$+10     	;abs 0xbd82
    bd7a:	09 93       	cmp	#0,	r9	;r3 As==00
    bd7c:	0b 20       	jnz	$+24     	;abs 0xbd94
    bd7e:	08 9a       	cmp	r10,	r8	;
    bd80:	09 2c       	jc	$+20     	;abs 0xbd94

0000bd82 <.L207>:
    bd82:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000bd86 <.L196>:
                    min_pdc = -pdc_timing[i].data;
    bd86:	4f 43       	clr.b	r15		;
    bd88:	0f 8c       	sub	r12,	r15	;
    bd8a:	82 4f 52 1c 	mov	r15,	&0x1c52	;

0000bd8e <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    bd8e:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

0000bd92 <.Loc.494.1>:
    if (!first)
    bd92:	cc 3f       	jmp	$-102    	;abs 0xbd2c

0000bd94 <.L194>:
    bd94:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000bd98 <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    bd98:	0a 98       	cmp	r8,	r10	;
    bd9a:	c8 23       	jnz	$-110    	;abs 0xbd2c
    bd9c:	09 93       	cmp	#0,	r9	;r3 As==00
    bd9e:	c6 23       	jnz	$-114    	;abs 0xbd2c

0000bda0 <.Loc.476.1>:
    bda0:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000bda4 <.Loc.476.1>:
    bda4:	4f 9e       	cmp.b	r14,	r15	;
    bda6:	c2 2f       	jc	$-122    	;abs 0xbd2c
    bda8:	0e 4f       	mov	r15,	r14	;
    bdaa:	ed 3f       	jmp	$-36     	;abs 0xbd86

0000bdac <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    bdac:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

0000bdb0 <.Loc.481.1>:
    bdb0:	0d 99       	cmp	r9,	r13	;
    bdb2:	05 38       	jl	$+12     	;abs 0xbdbe
    bdb4:	0a 49       	mov	r9,	r10	;
    bdb6:	09 9d       	cmp	r13,	r9	;
    bdb8:	b9 23       	jnz	$-140    	;abs 0xbd2c
    bdba:	0c 9f       	cmp	r15,	r12	;
    bdbc:	b7 2f       	jc	$-144    	;abs 0xbd2c

0000bdbe <.L208>:
    bdbe:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000bdc2 <.Loc.494.1>:
    if (!first)
    bdc2:	b4 3f       	jmp	$-150    	;abs 0xbd2c

0000bdc4 <.L201>:
    bdc4:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

0000bdc8 <.L203>:
                    min_pdc = pdc_timing[i].data;
    bdc8:	82 4c 52 1c 	mov	r12,	&0x1c52	;

0000bdcc <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    bdcc:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

0000bdd0 <.Loc.494.1>:
    if (!first)
    bdd0:	ad 3f       	jmp	$-164    	;abs 0xbd2c

0000bdd2 <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    bdd2:	0d 99       	cmp	r9,	r13	;
    bdd4:	ab 23       	jnz	$-168    	;abs 0xbd2c

0000bdd6 <.Loc.485.1>:
    bdd6:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

0000bdda <.Loc.485.1>:
    bdda:	4f 9e       	cmp.b	r14,	r15	;
    bddc:	a7 2f       	jc	$-176    	;abs 0xbd2c
    bdde:	0e 4f       	mov	r15,	r14	;
    bde0:	f3 3f       	jmp	$-24     	;abs 0xbdc8

0000bde2 <.L189>:
    else stop_timer();
    bde2:	b0 12 be bf 	call	#-16450	;#0xbfbe

0000bde6 <.Loc.507.1>:
}
    bde6:	28 17       	popm	#3,	r10	;16-bit words

0000bde8 <.LCFI52>:
    bde8:	30 41       	ret			

0000bdea <.L199>:
    if (!first)
    bdea:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    bdee:	9e 3f       	jmp	$-194    	;abs 0xbd2c

0000bdf0 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    bdf0:	1a 15       	pushm	#2,	r10	;16-bit words

0000bdf2 <.LCFI54>:
    bdf2:	17 15       	pushm	#2,	r7	;16-bit words

0000bdf4 <.LCFI55>:
    bdf4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bdf8 <.LCFI56>:
    bdf8:	49 4c       	mov.b	r12,	r9	;
    bdfa:	0a 4d       	mov	r13,	r10	;

0000bdfc <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    bdfc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bdfe:	4d 43       	clr.b	r13		;

0000be00 <.LVL210>:
    be00:	0c 41       	mov	r1,	r12	;

0000be02 <.LVL211>:
    be02:	b0 12 60 c3 	call	#-15520	;#0xc360
    be06:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    be0a:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    be0e:	0e 1c 
    be10:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    be14:	10 1c 
    be16:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    be1a:	12 1c 
    be1c:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    be20:	14 1c 

0000be22 <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    be22:	06 4a       	mov	r10,	r6	;
    be24:	07 43       	clr	r7		;

0000be26 <.Loc.401.1>:
    be26:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    be2a:	31 20       	jnz	$+100    	;abs 0xbe8e

0000be2c <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    be2c:	4c 49       	mov.b	r9,	r12	;
    be2e:	b0 12 5c b2 	call	#-19876	;#0xb25c
    be32:	0d 4a       	mov	r10,	r13	;
    be34:	b0 12 28 b2 	call	#-19928	;#0xb228

0000be38 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    be38:	4c 49       	mov.b	r9,	r12	;
    be3a:	b0 12 5c b2 	call	#-19876	;#0xb25c
    be3e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    be40:	b0 12 2e b2 	call	#-19922	;#0xb22e

0000be44 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    be44:	0e 46       	mov	r6,	r14	;
    be46:	0f 47       	mov	r7,	r15	;
    be48:	5d 43       	mov.b	#1,	r13	;r3 As==01
    be4a:	4c 43       	clr.b	r12		;
    be4c:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000be50 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    be50:	82 46 10 1c 	mov	r6,	&0x1c10	;
    be54:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000be58 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    be58:	4e 49       	mov.b	r9,	r14	;
    be5a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    be5c:	4c 43       	clr.b	r12		;
    be5e:	b0 12 18 c1 	call	#-16104	;#0xc118

0000be62 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    be62:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000be66 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    be66:	5e 43       	mov.b	#1,	r14	;r3 As==01
    be68:	5d 43       	mov.b	#1,	r13	;r3 As==01
    be6a:	4c 43       	clr.b	r12		;
    be6c:	b0 12 64 c1 	call	#-16028	;#0xc164

0000be70 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    be70:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

0000be74 <.Loc.411.1>:
        refresh_pdc_timers();
    be74:	b0 12 c6 bc 	call	#-17210	;#0xbcc6

0000be78 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    be78:	5c 43       	mov.b	#1,	r12	;r3 As==01
    be7a:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000be7e <.Loc.434.1>:
    _pers_timer_commit(PDC);
    be7e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    be80:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000be84 <.Loc.435.1>:
}
    be84:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000be88 <.LCFI57>:
    be88:	16 17       	popm	#2,	r7	;16-bit words

0000be8a <.LCFI58>:
    be8a:	19 17       	popm	#2,	r10	;16-bit words

0000be8c <.LCFI59>:
    be8c:	30 41       	ret			

0000be8e <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    be8e:	82 46 10 1c 	mov	r6,	&0x1c10	;
    be92:	82 47 12 1c 	mov	r7,	&0x1c12	;

0000be96 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    be96:	0e 46       	mov	r6,	r14	;
    be98:	0f 47       	mov	r7,	r15	;
    be9a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    be9c:	4c 43       	clr.b	r12		;
    be9e:	b0 12 c4 c0 	call	#-16188	;#0xc0c4

0000bea2 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    bea2:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000bea6 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    bea6:	4e 49       	mov.b	r9,	r14	;
    bea8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    beaa:	4c 43       	clr.b	r12		;
    beac:	b0 12 18 c1 	call	#-16104	;#0xc118

0000beb0 <.Loc.430.1>:
        refresh_pdc_timers();
    beb0:	b0 12 c6 bc 	call	#-17210	;#0xbcc6

0000beb4 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    beb4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    beb6:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000beba <.Loc.434.1>:
    _pers_timer_commit(PDC);
    beba:	5c 43       	mov.b	#1,	r12	;r3 As==01
    bebc:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000bec0 <.Loc.435.1>:
}
    bec0:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bec4 <.LCFI61>:
    bec4:	16 17       	popm	#2,	r7	;16-bit words

0000bec6 <.LCFI62>:
    bec6:	19 17       	popm	#2,	r10	;16-bit words

0000bec8 <.LCFI63>:
    bec8:	30 41       	ret			

0000beca <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    beca:	0a 15       	pushm	#1,	r10	;16-bit words

0000becc <.LCFI64>:
    becc:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000bed0 <.LCFI65>:
    bed0:	4a 4c       	mov.b	r12,	r10	;

0000bed2 <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    bed2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    bed4:	4d 43       	clr.b	r13		;
    bed6:	0c 41       	mov	r1,	r12	;

0000bed8 <.LVL233>:
    bed8:	b0 12 60 c3 	call	#-15520	;#0xc360
    bedc:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    bee0:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    bee4:	0e 1c 
    bee6:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    beea:	10 1c 
    beec:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    bef0:	12 1c 
    bef2:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    bef6:	14 1c 

0000bef8 <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    bef8:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    befc:	07 20       	jnz	$+16     	;abs 0xbf0c

0000befe <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    befe:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000bf02 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    bf02:	4e 43       	clr.b	r14		;
    bf04:	5d 43       	mov.b	#1,	r13	;r3 As==01
    bf06:	4c 43       	clr.b	r12		;
    bf08:	b0 12 64 c1 	call	#-16028	;#0xc164

0000bf0c <.L216>:
    refresh_pdc_timers();
    bf0c:	b0 12 c6 bc 	call	#-17210	;#0xbcc6

0000bf10 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    bf10:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bf12:	b0 12 c8 c1 	call	#-15928	;#0xc1c8

0000bf16 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    bf16:	6c 43       	mov.b	#2,	r12	;r3 As==10
    bf18:	b0 12 1c c3 	call	#-15588	;#0xc31c

0000bf1c <.Loc.450.1>:
}
    bf1c:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000bf20 <.LCFI66>:
    bf20:	0a 17       	popm	#1,	r10	;16-bit words

0000bf22 <.LCFI67>:
    bf22:	30 41       	ret			

0000bf24 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    bf24:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    bf28:	07 20       	jnz	$+16     	;abs 0xbf38

0000bf2a <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    bf2a:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000bf2e <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    bf2e:	4e 43       	clr.b	r14		;
    bf30:	5d 43       	mov.b	#1,	r13	;r3 As==01
    bf32:	4c 43       	clr.b	r12		;

0000bf34 <.LVL242>:
    bf34:	b0 12 64 c1 	call	#-16028	;#0xc164

0000bf38 <.L217>:

        }
    }
}
    bf38:	30 41       	ret			

0000bf3a <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    bf3a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000bf3e <.Loc.83.1>:
    bf3e:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000bf42 <.Loc.83.1>:
    bf42:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000bf46 <.Loc.83.1>:
    bf46:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

0000bf4a <.Loc.83.1>:
    bf4a:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000bf4e <.Loc.83.1>:
    bf4e:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000bf52 <.Loc.83.1>:
    bf52:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000bf56 <.Loc.83.1>:
    bf56:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

0000bf5a <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    bf5a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000bf5e <.Loc.88.1>:
}
    bf5e:	30 41       	ret			

0000bf60 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    bf60:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bf64 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    bf64:	0e 4c       	mov	r12,	r14	;
    bf66:	5e 09       	rram	#3,	r14	;

0000bf68 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    bf68:	7e f0 07 00 	and.b	#7,	r14	;

0000bf6c <.Loc.99.1>:
    bf6c:	dd de 04 89 	bis.b	-30460(r14),8(r13)	;0xffff8904
    bf70:	08 00 

0000bf72 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    bf72:	0d 5e       	add	r14,	r13	;

0000bf74 <.LVL12>:
    bf74:	7c f0 07 00 	and.b	#7,	r12	;

0000bf78 <.LVL13>:
    bf78:	dd dc 04 89 	bis.b	-30460(r12),0(r13)	;0xffff8904
    bf7c:	00 00 

0000bf7e <.Loc.101.1>:
}
    bf7e:	30 41       	ret			

0000bf80 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    bf80:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000bf84 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    bf84:	0e 4c       	mov	r12,	r14	;
    bf86:	5e 09       	rram	#3,	r14	;

0000bf88 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    bf88:	7e f0 07 00 	and.b	#7,	r14	;
    bf8c:	0f 4d       	mov	r13,	r15	;
    bf8e:	0f 5e       	add	r14,	r15	;

0000bf90 <.Loc.112.1>:
    bf90:	7c f0 07 00 	and.b	#7,	r12	;

0000bf94 <.LVL16>:
    bf94:	df cc 04 89 	bic.b	-30460(r12),0(r15)	;0xffff8904
    bf98:	00 00 

0000bf9a <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    bf9a:	6c 4f       	mov.b	@r15,	r12	;

0000bf9c <.Loc.114.1>:
    bf9c:	0c 93       	cmp	#0,	r12	;r3 As==00
    bf9e:	03 20       	jnz	$+8      	;abs 0xbfa6

0000bfa0 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    bfa0:	dd ce 04 89 	bic.b	-30460(r14),8(r13)	;0xffff8904
    bfa4:	08 00 

0000bfa6 <.L4>:
    }
}
    bfa6:	30 41       	ret			

0000bfa8 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    bfa8:	5d 4c 08 00 	mov.b	8(r12),	r13	;

0000bfac <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    bfac:	5d 4d 04 88 	mov.b	-30716(r13),r13	;0xffff8804

0000bfb0 <.LVL19>:
    bfb0:	0c 5d       	add	r13,	r12	;

0000bfb2 <.LVL20>:
    bfb2:	6e 4c       	mov.b	@r12,	r14	;

0000bfb4 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    bfb4:	0c 4d       	mov	r13,	r12	;
    bfb6:	5c 0a       	rlam	#3,	r12	;

0000bfb8 <.Loc.128.1>:
}
    bfb8:	5c de 04 88 	bis.b	-30716(r14),r12	;0xffff8804
    bfbc:	30 41       	ret			

0000bfbe <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    bfbe:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

0000bfc2 <.Loc.158.1>:
    TA2CTL = 0;
    bfc2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000bfc6 <.Loc.159.1>:
}
    bfc6:	30 41       	ret			

0000bfc8 <timerA2_init>:
    bfc8:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    bfcc:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    bfd0:	30 41       	ret			

0000bfd2 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    bfd2:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000bfd6 <.Loc.172.1>:
    TA0CCR0 = ticks;
    bfd6:	82 4c 52 03 	mov	r12,	&0x0352	;

0000bfda <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    bfda:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    bfde:	42 03 

0000bfe0 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    bfe0:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    bfe4:	40 03 

0000bfe6 <.Loc.175.1>:
}
    bfe6:	30 41       	ret			

0000bfe8 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    bfe8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000bfec <.Loc.179.1>:
    TA2CCR0 = ticks;
    bfec:	82 4c 12 04 	mov	r12,	&0x0412	;

0000bff0 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    bff0:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    bff4:	02 04 

0000bff6 <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    bff6:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    bffa:	00 04 

0000bffc <.Loc.183.1>:

}
    bffc:	30 41       	ret			

0000bffe <stop_timer_xpr>:
    bffe:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    c002:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    c006:	30 41       	ret			

0000c008 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    c008:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

0000c00c <.Loc.195.1>:
    TA1CCR0 = ticks;
    c00c:	82 4c 92 03 	mov	r12,	&0x0392	;

0000c010 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    c010:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    c014:	82 03 

0000c016 <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    c016:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    c01a:	80 03 

0000c01c <.Loc.198.1>:
}
    c01c:	30 41       	ret			

0000c01e <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    c01e:	30 41       	ret			

0000c020 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    c020:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    c024:	61 01 

0000c026 <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    c026:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    c02a:	64 01 

0000c02c <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    c02c:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000c030 <.Loc.248.1>:
  CSCTL0_H = 0;
    c030:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

0000c034 <.Loc.250.1>:

}
    c034:	30 41       	ret			

0000c036 <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    c036:	4c 43       	clr.b	r12		;
    c038:	4d 43       	clr.b	r13		;
    c03a:	30 41       	ret			

0000c03c <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    c03c:	82 43 1e 99 	mov	#0,	&0x991e	;r3 As==00
    c040:	82 43 20 99 	mov	#0,	&0x9920	;r3 As==00

0000c044 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    c044:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000c048 <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    c048:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    c04c:	40 04 

0000c04e <.Loc.334.1>:

    __bis_SR_register(GIE);
    c04e:	03 43       	nop			
    c050:	32 d2       	eint			
    c052:	03 43       	nop			

0000c054 <.Loc.335.1>:
}
    c054:	30 41       	ret			

0000c056 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    c056:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000c05a <.Loc.343.1>:
    TA3CCTL0 = 0;
    c05a:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000c05e <.Loc.344.1>:
}
    c05e:	30 41       	ret			

0000c060 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    c060:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    c064:	40 04 

0000c066 <.Loc.356.1>:

   tmp = TA3R;
    c066:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000c06a <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    c06a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    c06e:	40 04 

0000c070 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    c070:	0d 43       	clr	r13		;

0000c072 <.LVL6>:
    c072:	0e 4c       	mov	r12,	r14	;
    c074:	0f 4d       	mov	r13,	r15	;
    c076:	0e 5e       	rla	r14		;
    c078:	0f 6f       	rlc	r15		;
    c07a:	0e 5e       	rla	r14		;
    c07c:	0f 6f       	rlc	r15		;
    c07e:	0c 5e       	add	r14,	r12	;

0000c080 <.LVL7>:
    c080:	0d 6f       	addc	r15,	r13	;
    c082:	0c 5c       	rla	r12		;
    c084:	0d 6d       	rlc	r13		;

0000c086 <.Loc.363.1>:
}
    c086:	1c 52 1e 99 	add	&0x991e,r12	;0x991e
    c08a:	1d 62 20 99 	addc	&0x9920,r13	;0x9920
    c08e:	30 41       	ret			

0000c090 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    c090:	b2 50 aa 00 	add	#170,	&0x991e	;#0x00aa
    c094:	1e 99 
    c096:	b2 60 0a 00 	addc	#10,	&0x9920	;#0x000a
    c09a:	20 99 

0000c09c <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    c09c:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

0000c0a0 <.Loc.381.1>:
}
    c0a0:	00 13       	reti			

0000c0a2 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    c0a2:	3c 40 22 99 	mov	#-26334,r12	;#0x9922
    c0a6:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000c0aa <.Loc.34.1>:
    c0aa:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

0000c0ae <.Loc.34.1>:
    c0ae:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

0000c0b2 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    c0b2:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000c0b6 <.Loc.38.1>:
    c0b6:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000c0ba <.Loc.38.1>:
    c0ba:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

0000c0be <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    c0be:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

0000c0c2 <.Loc.42.1>:
    }
}
    c0c2:	30 41       	ret			

0000c0c4 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    c0c4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c0c8 <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    c0c8:	1d 93       	cmp	#1,	r13	;r3 As==01
    c0ca:	1b 24       	jz	$+56     	;abs 0xc102
    c0cc:	2d 93       	cmp	#2,	r13	;r3 As==10
    c0ce:	0e 24       	jz	$+30     	;abs 0xc0ec
    c0d0:	0d 93       	cmp	#0,	r13	;r3 As==00
    c0d2:	01 24       	jz	$+4      	;abs 0xc0d6

0000c0d4 <.Loc.69.1>:
        default:
            break;
    }


}
    c0d4:	30 41       	ret			

0000c0d6 <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    c0d6:	0d 4c       	mov	r12,	r13	;

0000c0d8 <.LVL9>:
    c0d8:	5d 06       	rlam	#2,	r13	;
    c0da:	0c 5d       	add	r13,	r12	;

0000c0dc <.LVL10>:
    c0dc:	5c 02       	rlam	#1,	r12	;
    c0de:	8c 4e 8a 99 	mov	r14,	-26230(r12); 0x998a
    c0e2:	8c 4f 8c 99 	mov	r15,	-26228(r12); 0x998c

0000c0e6 <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    c0e6:	9c 43 8e 99 	mov	#1,	-26226(r12);r3 As==01, 0x998e

0000c0ea <.Loc.55.1>:
}
    c0ea:	30 41       	ret			

0000c0ec <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    c0ec:	0d 4c       	mov	r12,	r13	;

0000c0ee <.LVL12>:
    c0ee:	5d 06       	rlam	#2,	r13	;
    c0f0:	0c 5d       	add	r13,	r12	;
    c0f2:	5c 02       	rlam	#1,	r12	;
    c0f4:	8c 4e a8 99 	mov	r14,	-26200(r12); 0x99a8
    c0f8:	8c 4f aa 99 	mov	r15,	-26198(r12); 0x99aa

0000c0fc <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    c0fc:	9c 43 ac 99 	mov	#1,	-26196(r12);r3 As==01, 0x99ac

0000c100 <.Loc.59.1>:
}
    c100:	30 41       	ret			

0000c102 <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    c102:	0d 4c       	mov	r12,	r13	;

0000c104 <.LVL14>:
    c104:	5d 06       	rlam	#2,	r13	;
    c106:	0c 5d       	add	r13,	r12	;
    c108:	5c 02       	rlam	#1,	r12	;
    c10a:	8c 4e c6 99 	mov	r14,	-26170(r12); 0x99c6
    c10e:	8c 4f c8 99 	mov	r15,	-26168(r12); 0x99c8

0000c112 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    c112:	9c 43 ca 99 	mov	#1,	-26166(r12);r3 As==01, 0x99ca

0000c116 <.Loc.63.1>:
}
    c116:	30 41       	ret			

0000c118 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    c118:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    c11c:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000c120 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    c120:	1d 93       	cmp	#1,	r13	;r3 As==01
    c122:	17 24       	jz	$+48     	;abs 0xc152
    c124:	2d 93       	cmp	#2,	r13	;r3 As==10
    c126:	0c 24       	jz	$+26     	;abs 0xc140
    c128:	0d 93       	cmp	#0,	r13	;r3 As==00
    c12a:	01 24       	jz	$+4      	;abs 0xc12e

0000c12c <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    c12c:	30 41       	ret			

0000c12e <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    c12e:	0d 4c       	mov	r12,	r13	;

0000c130 <.LVL16>:
    c130:	5d 06       	rlam	#2,	r13	;
    c132:	0c 5d       	add	r13,	r12	;

0000c134 <.LVL17>:
    c134:	5c 02       	rlam	#1,	r12	;
    c136:	cc 4e 88 99 	mov.b	r14,	-26232(r12); 0x9988

0000c13a <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    c13a:	9c 43 8e 99 	mov	#1,	-26226(r12);r3 As==01, 0x998e

0000c13e <.Loc.78.1>:
}
    c13e:	30 41       	ret			

0000c140 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    c140:	0d 4c       	mov	r12,	r13	;

0000c142 <.LVL19>:
    c142:	5d 06       	rlam	#2,	r13	;
    c144:	0c 5d       	add	r13,	r12	;
    c146:	5c 02       	rlam	#1,	r12	;
    c148:	cc 4e a6 99 	mov.b	r14,	-26202(r12); 0x99a6

0000c14c <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    c14c:	9c 43 ac 99 	mov	#1,	-26196(r12);r3 As==01, 0x99ac

0000c150 <.Loc.82.1>:
}
    c150:	30 41       	ret			

0000c152 <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    c152:	0d 4c       	mov	r12,	r13	;

0000c154 <.LVL21>:
    c154:	5d 06       	rlam	#2,	r13	;
    c156:	0c 5d       	add	r13,	r12	;
    c158:	5c 02       	rlam	#1,	r12	;
    c15a:	cc 4e c4 99 	mov.b	r14,	-26172(r12); 0x99c4

0000c15e <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    c15e:	9c 43 ca 99 	mov	#1,	-26166(r12);r3 As==01, 0x99ca

0000c162 <.Loc.86.1>:
}
    c162:	30 41       	ret			

0000c164 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    c164:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000c168 <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    c168:	1d 93       	cmp	#1,	r13	;r3 As==01
    c16a:	17 24       	jz	$+48     	;abs 0xc19a
    c16c:	2d 93       	cmp	#2,	r13	;r3 As==10
    c16e:	0c 24       	jz	$+26     	;abs 0xc188
    c170:	0d 93       	cmp	#0,	r13	;r3 As==00
    c172:	01 24       	jz	$+4      	;abs 0xc176

0000c174 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    c174:	30 41       	ret			

0000c176 <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    c176:	0d 4c       	mov	r12,	r13	;

0000c178 <.LVL23>:
    c178:	5d 06       	rlam	#2,	r13	;
    c17a:	0c 5d       	add	r13,	r12	;

0000c17c <.LVL24>:
    c17c:	5c 02       	rlam	#1,	r12	;
    c17e:	8c 4e 86 99 	mov	r14,	-26234(r12); 0x9986

0000c182 <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    c182:	9c 43 8e 99 	mov	#1,	-26226(r12);r3 As==01, 0x998e

0000c186 <.Loc.100.1>:
}
    c186:	30 41       	ret			

0000c188 <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    c188:	0d 4c       	mov	r12,	r13	;

0000c18a <.LVL26>:
    c18a:	5d 06       	rlam	#2,	r13	;
    c18c:	0c 5d       	add	r13,	r12	;
    c18e:	5c 02       	rlam	#1,	r12	;
    c190:	8c 4e a4 99 	mov	r14,	-26204(r12); 0x99a4

0000c194 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    c194:	9c 43 ac 99 	mov	#1,	-26196(r12);r3 As==01, 0x99ac

0000c198 <.Loc.104.1>:
}
    c198:	30 41       	ret			

0000c19a <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    c19a:	0d 4c       	mov	r12,	r13	;

0000c19c <.LVL28>:
    c19c:	5d 06       	rlam	#2,	r13	;
    c19e:	0c 5d       	add	r13,	r12	;
    c1a0:	5c 02       	rlam	#1,	r12	;
    c1a2:	8c 4e c2 99 	mov	r14,	-26174(r12); 0x99c2

0000c1a6 <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    c1a6:	9c 43 ca 99 	mov	#1,	-26166(r12);r3 As==01, 0x99ca

0000c1aa <.Loc.108.1>:
}
    c1aa:	30 41       	ret			

0000c1ac <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    c1ac:	0e 4c       	mov	r12,	r14	;
    c1ae:	5e 0a       	rlam	#3,	r14	;
    c1b0:	ce 4d ce 99 	mov.b	r13,	-26162(r14); 0x99ce

0000c1b4 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    c1b4:	9e 43 d2 99 	mov	#1,	-26158(r14);r3 As==01, 0x99d2

0000c1b8 <.Loc.119.1>:
}
    c1b8:	30 41       	ret			

0000c1ba <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    c1ba:	0e 4c       	mov	r12,	r14	;
    c1bc:	5e 0a       	rlam	#3,	r14	;
    c1be:	8e 4d d0 99 	mov	r13,	-26160(r14); 0x99d0

0000c1c2 <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    c1c2:	9e 43 d2 99 	mov	#1,	-26158(r14);r3 As==01, 0x99d2

0000c1c6 <.Loc.125.1>:
}
    c1c6:	30 41       	ret			

0000c1c8 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    c1c8:	1c 93       	cmp	#1,	r12	;r3 As==01
    c1ca:	0b 24       	jz	$+24     	;abs 0xc1e2
    c1cc:	2c 93       	cmp	#2,	r12	;r3 As==10
    c1ce:	06 24       	jz	$+14     	;abs 0xc1dc
    c1d0:	0c 93       	cmp	#0,	r12	;r3 As==00
    c1d2:	01 24       	jz	$+4      	;abs 0xc1d6

0000c1d4 <.Loc.145.1>:
        default:
            break;

    }

}
    c1d4:	30 41       	ret			

0000c1d6 <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    c1d6:	92 43 ea 99 	mov	#1,	&0x99ea	;r3 As==01

0000c1da <.Loc.133.1>:
}
    c1da:	30 41       	ret			

0000c1dc <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    c1dc:	92 43 ec 99 	mov	#1,	&0x99ec	;r3 As==01

0000c1e0 <.Loc.136.1>:
}
    c1e0:	30 41       	ret			

0000c1e2 <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    c1e2:	92 43 ee 99 	mov	#1,	&0x99ee	;r3 As==01

0000c1e6 <.Loc.139.1>:
}
    c1e6:	30 41       	ret			

0000c1e8 <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    c1e8:	3d 40 22 99 	mov	#-26334,r13	;#0x9922
    c1ec:	1c 93       	cmp	#1,	r12	;r3 As==01
    c1ee:	18 24       	jz	$+50     	;abs 0xc220
    c1f0:	2c 93       	cmp	#2,	r12	;r3 As==10
    c1f2:	40 24       	jz	$+130    	;abs 0xc274
    c1f4:	0c 93       	cmp	#0,	r12	;r3 As==00
    c1f6:	26 24       	jz	$+78     	;abs 0xc244

0000c1f8 <.L28>:
    c1f8:	0e 4c       	mov	r12,	r14	;
    c1fa:	5e 0a       	rlam	#3,	r14	;
    c1fc:	9e 93 d2 99 	cmp	#1,	-26158(r14);r3 As==01, 0x99d2
    c200:	01 24       	jz	$+4      	;abs 0xc204

0000c202 <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    c202:	30 41       	ret			

0000c204 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    c204:	0c 4e       	mov	r14,	r12	;

0000c206 <.LVL33>:
    c206:	0c 5d       	add	r13,	r12	;
    c208:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    c20c:	46 00 
    c20e:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    c212:	48 00 
    c214:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    c218:	4a 00 

0000c21a <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    c21a:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

0000c21e <.Loc.191.1>:
}
    c21e:	30 41       	ret			

0000c220 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    c220:	92 93 ca 99 	cmp	#1,	&0x99ca	;r3 As==01
    c224:	e9 23       	jnz	$-44     	;abs 0xc1f8

0000c226 <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    c226:	92 42 c2 99 	mov	&0x99c2,&0x995e	;0x99c2
    c22a:	5e 99 
    c22c:	92 42 c4 99 	mov	&0x99c4,&0x9960	;0x99c4
    c230:	60 99 
    c232:	92 42 c6 99 	mov	&0x99c6,&0x9962	;0x99c6
    c236:	62 99 
    c238:	92 42 c8 99 	mov	&0x99c8,&0x9964	;0x99c8
    c23c:	64 99 

0000c23e <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    c23e:	82 43 66 99 	mov	#0,	&0x9966	;r3 As==00

0000c242 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    c242:	da 3f       	jmp	$-74     	;abs 0xc1f8

0000c244 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    c244:	92 93 8e 99 	cmp	#1,	&0x998e	;r3 As==01
    c248:	5a 24       	jz	$+182    	;abs 0xc2fe

0000c24a <.L29>:
    c24a:	92 93 98 99 	cmp	#1,	&0x9998	;r3 As==01
    c24e:	48 24       	jz	$+146    	;abs 0xc2e0

0000c250 <.L30>:
    c250:	92 93 a2 99 	cmp	#1,	&0x99a2	;r3 As==01
    c254:	d1 23       	jnz	$-92     	;abs 0xc1f8

0000c256 <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    c256:	92 42 9a 99 	mov	&0x999a,&0x9936	;0x999a
    c25a:	36 99 
    c25c:	92 42 9c 99 	mov	&0x999c,&0x9938	;0x999c
    c260:	38 99 
    c262:	92 42 9e 99 	mov	&0x999e,&0x993a	;0x999e
    c266:	3a 99 
    c268:	92 42 a0 99 	mov	&0x99a0,&0x993c	;0x99a0
    c26c:	3c 99 

0000c26e <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    c26e:	82 43 3e 99 	mov	#0,	&0x993e	;r3 As==00

0000c272 <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    c272:	c2 3f       	jmp	$-122    	;abs 0xc1f8

0000c274 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    c274:	92 93 ac 99 	cmp	#1,	&0x99ac	;r3 As==01
    c278:	24 24       	jz	$+74     	;abs 0xc2c2

0000c27a <.L32>:
    c27a:	92 93 b6 99 	cmp	#1,	&0x99b6	;r3 As==01
    c27e:	12 24       	jz	$+38     	;abs 0xc2a4

0000c280 <.L33>:
    c280:	92 93 c0 99 	cmp	#1,	&0x99c0	;r3 As==01
    c284:	b9 23       	jnz	$-140    	;abs 0xc1f8

0000c286 <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    c286:	92 42 b8 99 	mov	&0x99b8,&0x9954	;0x99b8
    c28a:	54 99 
    c28c:	92 42 ba 99 	mov	&0x99ba,&0x9956	;0x99ba
    c290:	56 99 
    c292:	92 42 bc 99 	mov	&0x99bc,&0x9958	;0x99bc
    c296:	58 99 
    c298:	92 42 be 99 	mov	&0x99be,&0x995a	;0x99be
    c29c:	5a 99 

0000c29e <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    c29e:	82 43 5c 99 	mov	#0,	&0x995c	;r3 As==00

0000c2a2 <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    c2a2:	aa 3f       	jmp	$-170    	;abs 0xc1f8

0000c2a4 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    c2a4:	92 42 ae 99 	mov	&0x99ae,&0x994a	;0x99ae
    c2a8:	4a 99 
    c2aa:	92 42 b0 99 	mov	&0x99b0,&0x994c	;0x99b0
    c2ae:	4c 99 
    c2b0:	92 42 b2 99 	mov	&0x99b2,&0x994e	;0x99b2
    c2b4:	4e 99 
    c2b6:	92 42 b4 99 	mov	&0x99b4,&0x9950	;0x99b4
    c2ba:	50 99 

0000c2bc <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    c2bc:	82 43 52 99 	mov	#0,	&0x9952	;r3 As==00
    c2c0:	df 3f       	jmp	$-64     	;abs 0xc280

0000c2c2 <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    c2c2:	92 42 a4 99 	mov	&0x99a4,&0x9940	;0x99a4
    c2c6:	40 99 
    c2c8:	92 42 a6 99 	mov	&0x99a6,&0x9942	;0x99a6
    c2cc:	42 99 
    c2ce:	92 42 a8 99 	mov	&0x99a8,&0x9944	;0x99a8
    c2d2:	44 99 
    c2d4:	92 42 aa 99 	mov	&0x99aa,&0x9946	;0x99aa
    c2d8:	46 99 

0000c2da <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    c2da:	82 43 48 99 	mov	#0,	&0x9948	;r3 As==00
    c2de:	cd 3f       	jmp	$-100    	;abs 0xc27a

0000c2e0 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    c2e0:	92 42 90 99 	mov	&0x9990,&0x992c	;0x9990
    c2e4:	2c 99 
    c2e6:	92 42 92 99 	mov	&0x9992,&0x992e	;0x9992
    c2ea:	2e 99 
    c2ec:	92 42 94 99 	mov	&0x9994,&0x9930	;0x9994
    c2f0:	30 99 
    c2f2:	92 42 96 99 	mov	&0x9996,&0x9932	;0x9996
    c2f6:	32 99 

0000c2f8 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    c2f8:	82 43 34 99 	mov	#0,	&0x9934	;r3 As==00
    c2fc:	a9 3f       	jmp	$-172    	;abs 0xc250

0000c2fe <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    c2fe:	92 42 86 99 	mov	&0x9986,&0x9922	;0x9986
    c302:	22 99 
    c304:	92 42 88 99 	mov	&0x9988,&0x9924	;0x9988
    c308:	24 99 
    c30a:	92 42 8a 99 	mov	&0x998a,&0x9926	;0x998a
    c30e:	26 99 
    c310:	92 42 8c 99 	mov	&0x998c,&0x9928	;0x998c
    c314:	28 99 

0000c316 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    c316:	82 43 2a 99 	mov	#0,	&0x992a	;r3 As==00
    c31a:	97 3f       	jmp	$-208    	;abs 0xc24a

0000c31c <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    c31c:	1c 93       	cmp	#1,	r12	;r3 As==01
    c31e:	17 24       	jz	$+48     	;abs 0xc34e
    c320:	2c 93       	cmp	#2,	r12	;r3 As==10
    c322:	0c 24       	jz	$+26     	;abs 0xc33c
    c324:	0c 93       	cmp	#0,	r12	;r3 As==00
    c326:	01 24       	jz	$+4      	;abs 0xc32a

0000c328 <.L45>:
            break;
        default:
            break;

    }
}
    c328:	30 41       	ret			

0000c32a <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    c32a:	1d 42 ea 99 	mov	&0x99ea,r13	;0x99ea

0000c32e <.Loc.207.1>:
    c32e:	1d 93       	cmp	#1,	r13	;r3 As==01
    c330:	fb 23       	jnz	$-8      	;abs 0xc328

0000c332 <.Loc.209.1>:
                _commit_timer_buffers(interface);
    c332:	b0 12 e8 c1 	call	#-15896	;#0xc1e8

0000c336 <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    c336:	a2 43 ea 99 	mov	#2,	&0x99ea	;r3 As==10

0000c33a <.Loc.230.1>:
}
    c33a:	30 41       	ret			

0000c33c <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    c33c:	1d 42 ec 99 	mov	&0x99ec,r13	;0x99ec

0000c340 <.Loc.214.1>:
    c340:	1d 93       	cmp	#1,	r13	;r3 As==01
    c342:	f2 23       	jnz	$-26     	;abs 0xc328

0000c344 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    c344:	b0 12 e8 c1 	call	#-15896	;#0xc1e8

0000c348 <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    c348:	a2 43 ec 99 	mov	#2,	&0x99ec	;r3 As==10

0000c34c <.Loc.230.1>:
}
    c34c:	30 41       	ret			

0000c34e <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    c34e:	1d 42 ee 99 	mov	&0x99ee,r13	;0x99ee

0000c352 <.Loc.220.1>:
    c352:	1d 93       	cmp	#1,	r13	;r3 As==01
    c354:	e9 23       	jnz	$-44     	;abs 0xc328

0000c356 <.Loc.222.1>:
                _commit_timer_buffers(interface);
    c356:	b0 12 e8 c1 	call	#-15896	;#0xc1e8

0000c35a <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    c35a:	a2 43 ee 99 	mov	#2,	&0x99ee	;r3 As==10

0000c35e <.Loc.230.1>:
}
    c35e:	30 41       	ret			

0000c360 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    c360:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

0000c364 <.Loc.233.1>:
    switch (interface)
    c364:	1e 93       	cmp	#1,	r14	;r3 As==01
    c366:	17 24       	jz	$+48     	;abs 0xc396
    c368:	2e 93       	cmp	#2,	r14	;r3 As==10
    c36a:	2a 24       	jz	$+86     	;abs 0xc3c0

0000c36c <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    c36c:	0e 4d       	mov	r13,	r14	;

0000c36e <.LVL55>:
    c36e:	5e 06       	rlam	#2,	r14	;
    c370:	0d 5e       	add	r14,	r13	;

0000c372 <.LVL56>:
    c372:	5d 02       	rlam	#1,	r13	;
    c374:	3d 50 22 99 	add	#-26334,r13	;#0x9922
    c378:	0e 4d       	mov	r13,	r14	;
    c37a:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    c37e:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    c382:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    c386:	04 00 
    c388:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    c38c:	06 00 
    c38e:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    c392:	08 00 

0000c394 <.Loc.245.1>:
    }

}
    c394:	30 41       	ret			

0000c396 <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    c396:	0e 4d       	mov	r13,	r14	;

0000c398 <.LVL58>:
    c398:	5e 06       	rlam	#2,	r14	;
    c39a:	0d 5e       	add	r14,	r13	;
    c39c:	5d 02       	rlam	#1,	r13	;
    c39e:	3d 50 5e 99 	add	#-26274,r13	;#0x995e

0000c3a2 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    c3a2:	0e 4d       	mov	r13,	r14	;
    c3a4:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    c3a8:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    c3ac:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    c3b0:	04 00 
    c3b2:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    c3b6:	06 00 
    c3b8:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    c3bc:	08 00 

0000c3be <.Loc.245.1>:
}
    c3be:	30 41       	ret			

0000c3c0 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    c3c0:	0e 4d       	mov	r13,	r14	;

0000c3c2 <.LVL60>:
    c3c2:	5e 06       	rlam	#2,	r14	;
    c3c4:	0d 5e       	add	r14,	r13	;
    c3c6:	5d 02       	rlam	#1,	r13	;
    c3c8:	3d 50 40 99 	add	#-26304,r13	;#0x9940

0000c3cc <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    c3cc:	0e 4d       	mov	r13,	r14	;
    c3ce:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    c3d2:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    c3d6:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    c3da:	04 00 
    c3dc:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    c3e0:	06 00 
    c3e2:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    c3e6:	08 00 

0000c3e8 <.Loc.245.1>:
}
    c3e8:	30 41       	ret			

0000c3ea <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    c3ea:	4e 4c       	mov.b	r12,	r14	;

0000c3ec <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    c3ec:	1d 93       	cmp	#1,	r13	;r3 As==01
    c3ee:	14 24       	jz	$+42     	;abs 0xc418
    c3f0:	2d 93       	cmp	#2,	r13	;r3 As==10
    c3f2:	0b 24       	jz	$+24     	;abs 0xc40a
    c3f4:	4c 43       	clr.b	r12		;

0000c3f6 <.LVL62>:
    c3f6:	0d 93       	cmp	#0,	r13	;r3 As==00
    c3f8:	01 24       	jz	$+4      	;abs 0xc3fc

0000c3fa <.Loc.262.1>:
        default:
            return 0;

    }

}
    c3fa:	30 41       	ret			

0000c3fc <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    c3fc:	0c 4e       	mov	r14,	r12	;
    c3fe:	5c 06       	rlam	#2,	r12	;
    c400:	0c 5e       	add	r14,	r12	;
    c402:	5c 02       	rlam	#1,	r12	;
    c404:	1c 4c 26 99 	mov	-26330(r12),r12	;0xffff9926

0000c408 <.Loc.262.1>:
}
    c408:	30 41       	ret			

0000c40a <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    c40a:	0c 4e       	mov	r14,	r12	;

0000c40c <.LVL64>:
    c40c:	5c 06       	rlam	#2,	r12	;
    c40e:	0c 5e       	add	r14,	r12	;
    c410:	5c 02       	rlam	#1,	r12	;
    c412:	1c 4c 44 99 	mov	-26300(r12),r12	;0xffff9944

0000c416 <.Loc.262.1>:
}
    c416:	30 41       	ret			

0000c418 <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    c418:	0c 4e       	mov	r14,	r12	;

0000c41a <.LVL66>:
    c41a:	5c 06       	rlam	#2,	r12	;
    c41c:	0c 5e       	add	r14,	r12	;
    c41e:	5c 02       	rlam	#1,	r12	;
    c420:	1c 4c 62 99 	mov	-26270(r12),r12	;0xffff9962

0000c424 <.Loc.262.1>:
}
    c424:	30 41       	ret			

0000c426 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    c426:	4e 4c       	mov.b	r12,	r14	;

0000c428 <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    c428:	1d 93       	cmp	#1,	r13	;r3 As==01
    c42a:	14 24       	jz	$+42     	;abs 0xc454
    c42c:	2d 93       	cmp	#2,	r13	;r3 As==10
    c42e:	0b 24       	jz	$+24     	;abs 0xc446
    c430:	4c 43       	clr.b	r12		;

0000c432 <.LVL68>:
    c432:	0d 93       	cmp	#0,	r13	;r3 As==00
    c434:	01 24       	jz	$+4      	;abs 0xc438

0000c436 <.Loc.279.1>:
        default:
            return    0;
    }


}
    c436:	30 41       	ret			

0000c438 <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    c438:	0c 4e       	mov	r14,	r12	;
    c43a:	5c 06       	rlam	#2,	r12	;
    c43c:	0c 5e       	add	r14,	r12	;
    c43e:	5c 02       	rlam	#1,	r12	;
    c440:	5c 4c 24 99 	mov.b	-26332(r12),r12	;0xffff9924

0000c444 <.Loc.279.1>:
}
    c444:	30 41       	ret			

0000c446 <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    c446:	0c 4e       	mov	r14,	r12	;

0000c448 <.LVL70>:
    c448:	5c 06       	rlam	#2,	r12	;
    c44a:	0c 5e       	add	r14,	r12	;
    c44c:	5c 02       	rlam	#1,	r12	;
    c44e:	5c 4c 42 99 	mov.b	-26302(r12),r12	;0xffff9942

0000c452 <.Loc.279.1>:
}
    c452:	30 41       	ret			

0000c454 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    c454:	0c 4e       	mov	r14,	r12	;

0000c456 <.LVL72>:
    c456:	5c 06       	rlam	#2,	r12	;
    c458:	0c 5e       	add	r14,	r12	;
    c45a:	5c 02       	rlam	#1,	r12	;
    c45c:	5c 4c 60 99 	mov.b	-26272(r12),r12	;0xffff9960

0000c460 <.Loc.279.1>:
}
    c460:	30 41       	ret			

0000c462 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    c462:	4e 4c       	mov.b	r12,	r14	;

0000c464 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    c464:	1d 93       	cmp	#1,	r13	;r3 As==01
    c466:	14 24       	jz	$+42     	;abs 0xc490
    c468:	2d 93       	cmp	#2,	r13	;r3 As==10
    c46a:	0b 24       	jz	$+24     	;abs 0xc482
    c46c:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000c46e <.LVL74>:
    c46e:	0d 93       	cmp	#0,	r13	;r3 As==00
    c470:	01 24       	jz	$+4      	;abs 0xc474

0000c472 <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    c472:	30 41       	ret			

0000c474 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    c474:	0c 4e       	mov	r14,	r12	;
    c476:	5c 06       	rlam	#2,	r12	;
    c478:	0c 5e       	add	r14,	r12	;
    c47a:	5c 02       	rlam	#1,	r12	;
    c47c:	1c 4c 22 99 	mov	-26334(r12),r12	;0xffff9922

0000c480 <.Loc.294.1>:
}
    c480:	30 41       	ret			

0000c482 <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    c482:	0c 4e       	mov	r14,	r12	;

0000c484 <.LVL76>:
    c484:	5c 06       	rlam	#2,	r12	;
    c486:	0c 5e       	add	r14,	r12	;
    c488:	5c 02       	rlam	#1,	r12	;
    c48a:	1c 4c 40 99 	mov	-26304(r12),r12	;0xffff9940

0000c48e <.Loc.294.1>:
}
    c48e:	30 41       	ret			

0000c490 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    c490:	0c 4e       	mov	r14,	r12	;

0000c492 <.LVL78>:
    c492:	5c 06       	rlam	#2,	r12	;
    c494:	0c 5e       	add	r14,	r12	;
    c496:	5c 02       	rlam	#1,	r12	;
    c498:	1c 4c 5e 99 	mov	-26274(r12),r12	;0xffff995e

0000c49c <.Loc.294.1>:
}
    c49c:	30 41       	ret			

0000c49e <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    c49e:	5c 0a       	rlam	#3,	r12	;

0000c4a0 <.LVL80>:
}
    c4a0:	5c 4c 6a 99 	mov.b	-26262(r12),r12	;0xffff996a
    c4a4:	30 41       	ret			

0000c4a6 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    c4a6:	5c 0a       	rlam	#3,	r12	;

0000c4a8 <.LVL82>:
}
    c4a8:	1c 4c 6c 99 	mov	-26260(r12),r12	;0xffff996c
    c4ac:	30 41       	ret			

0000c4ae <udivmodhi4>:
    c4ae:	0f 4c       	mov	r12,	r15	;

0000c4b0 <.LVL1>:
    c4b0:	7c 40 11 00 	mov.b	#17,	r12	;#0x0011

0000c4b4 <.LVL2>:
    c4b4:	5b 43       	mov.b	#1,	r11	;r3 As==01

0000c4b6 <.L2>:
    c4b6:	0d 9f       	cmp	r15,	r13	;
    c4b8:	05 2c       	jc	$+12     	;abs 0xc4c4
    c4ba:	3c 53       	add	#-1,	r12	;r3 As==11

0000c4bc <L0^A>:
    c4bc:	0c 93       	cmp	#0,	r12	;r3 As==00
    c4be:	05 24       	jz	$+12     	;abs 0xc4ca

0000c4c0 <.Loc.38.1>:
    c4c0:	0d 93       	cmp	#0,	r13	;r3 As==00
    c4c2:	07 34       	jge	$+16     	;abs 0xc4d2

0000c4c4 <.L10>:
    c4c4:	4c 43       	clr.b	r12		;

0000c4c6 <.L6>:
    c4c6:	0b 93       	cmp	#0,	r11	;r3 As==00
    c4c8:	07 20       	jnz	$+16     	;abs 0xc4d8

0000c4ca <.L4>:
    c4ca:	0e 93       	cmp	#0,	r14	;r3 As==00
    c4cc:	01 24       	jz	$+4      	;abs 0xc4d0
    c4ce:	0c 4f       	mov	r15,	r12	;

0000c4d0 <.L1>:
    c4d0:	30 41       	ret			

0000c4d2 <.L5>:
    c4d2:	5d 02       	rlam	#1,	r13	;

0000c4d4 <.Loc.41.1>:
    c4d4:	5b 02       	rlam	#1,	r11	;
    c4d6:	ef 3f       	jmp	$-32     	;abs 0xc4b6

0000c4d8 <.L8>:
    c4d8:	0f 9d       	cmp	r13,	r15	;
    c4da:	02 28       	jnc	$+6      	;abs 0xc4e0

0000c4dc <.Loc.47.1>:
    c4dc:	0f 8d       	sub	r13,	r15	;

0000c4de <.Loc.48.1>:
    c4de:	0c db       	bis	r11,	r12	;

0000c4e0 <.L7>:
    c4e0:	5b 03       	rrum	#1,	r11	;

0000c4e2 <.Loc.51.1>:
    c4e2:	5d 03       	rrum	#1,	r13	;
    c4e4:	f0 3f       	jmp	$-30     	;abs 0xc4c6

0000c4e6 <__mspabi_remu>:
    c4e6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    c4e8:	
0000c4ea <L0^A>:
    c4ea:	
0000c4ec <.LVL34>:
    c4ec:	30 41       	ret			

0000c4ee <__mulhi2>:
    c4ee:	02 12       	push	r2		;
    c4f0:	32 c2       	dint			
    c4f2:	03 43       	nop			
    c4f4:	82 4c c0 04 	mov	r12,	&0x04c0	;
    c4f8:	82 4d c8 04 	mov	r13,	&0x04c8	;
    c4fc:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    c500:	00 13       	reti			

0000c502 <_exit>:
    c502:	ff 3f       	jmp	$+0      	;abs 0xc502

0000c504 <memset>:
    c504:	0e 5c       	add	r12,	r14	;

0000c506 <L0^A>:
    c506:	0f 4c       	mov	r12,	r15	;

0000c508 <.L2>:
    c508:	0f 9e       	cmp	r14,	r15	;
    c50a:	01 20       	jnz	$+4      	;abs 0xc50e

0000c50c <.Loc.104.1>:
    c50c:	30 41       	ret			

0000c50e <.L3>:
    c50e:	1f 53       	inc	r15		;

0000c510 <.LVL4>:
    c510:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    c514:	f9 3f       	jmp	$-12     	;abs 0xc508
