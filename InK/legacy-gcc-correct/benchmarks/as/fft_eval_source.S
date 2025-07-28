
bin/fft_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	08 b0       	bit	r0,	r8	;

Disassembly of section .text:

00009bf0 <__crt0_start>:
    9bf0:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00009bf4 <__crt0_init_bss>:
    9bf4:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00009bf8 <.Loc.76.1>:
    9bf8:	0d 43       	clr	r13		;

00009bfa <.Loc.77.1>:
    9bfa:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00009bfe <.Loc.81.1>:
    9bfe:	b0 12 dc b3 	call	#-19492	;#0xb3dc

00009c02 <__crt0_call_main>:
    9c02:	0c 43       	clr	r12		;

00009c04 <.Loc.254.1>:
    9c04:	b0 12 d8 ab 	call	#-21544	;#0xabd8

00009c08 <__crt0_call_exit>:
    9c08:	b0 12 da b3 	call	#-19494	;#0xb3da

00009c0c <task_init>:
}

ENTRY_TASK(task_init)
{
#if RAISE_PIN
    full_run_started = 1;
    9c0c:	d2 43 01 8e 	mov.b	#1,	&0x8e01	;r3 As==01

00009c10 <.Loc.95.1>:
#endif

    __SET(iteration, ++__GET(iteration));
    9c10:	9c 53 00 00 	inc	0(r12)		;

00009c14 <.Loc.97.1>:

    return task_sample;
}
    9c14:	3c 40 78 9e 	mov	#-24968,r12	;#0x9e78

00009c18 <.LVL1>:
    9c18:	30 41       	ret

00009c1a <msp_cmplx_overflow_q15>:
/*
 * Abstracted helper function to check for overflow.
 */
static inline void msp_cmplx_overflow_q15(int16_t* src, bool* overflow)
{
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    9c1a:	2e 4c       	mov	@r12,	r14	;
    9c1c:	3e 50 00 20 	add	#8192,	r14	;#0x2000

00009c20 <.Loc.391.1>:
    9c20:	3f 40 ff 3f 	mov	#16383,	r15	;#0x3fff
    9c24:	0f 9e       	cmp	r14,	r15	;
    9c26:	02 2c       	jc	$+6      	;abs 0x9c2c

00009c28 <.Loc.393.1>:
    {
        *overflow = true;
    9c28:	dd 43 00 00 	mov.b	#1,	0(r13)	;r3 As==01

00009c2c <.L3>:
    }
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    9c2c:	1c 4c 02 00 	mov	2(r12),	r12	;

00009c30 <.LVL3>:
    9c30:	3c 50 00 20 	add	#8192,	r12	;#0x2000

00009c34 <.Loc.395.1>:
    9c34:	3e 40 ff 3f 	mov	#16383,	r14	;#0x3fff
    9c38:	0e 9c       	cmp	r12,	r14	;
    9c3a:	02 2c       	jc	$+6      	;abs 0x9c40

00009c3c <.Loc.397.1>:
    {
        *overflow = true;
    9c3c:	dd 43 00 00 	mov.b	#1,	0(r13)	;r3 As==01

00009c40 <.L2>:
    }
}
    9c40:	30 41       	ret

00009c42 <task_fft_stage_3>:
{
    9c42:	6a 15       	pushm	#7,	r10	;16-bit words

00009c44 <.LCFI0>:
    9c44:	31 80 14 00 	sub	#20,	r1	;#0x0014

00009c48 <.LCFI1>:
    9c48:	0a 4c       	mov	r12,	r10	;

00009c4a <.Loc.257.1>:
    overflow = __GET(fft_overflow);
    9c4a:	d1 4c 05 00 	mov.b	5(r12),	19(r1)	; 0x0013
    9c4e:	13 00

00009c50 <.Loc.274.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9c50:	07 4c       	mov	r12,	r7	;
    9c52:	37 50 06 00 	add	#6,	r7	;
    9c56:	b1 40 00 8d 	mov	#-29440,12(r1)	;#0x8d00, 0x000c
    9c5a:	0c 00
    9c5c:	0b 4c       	mov	r12,	r11	;
    9c5e:	3b 50 06 01 	add	#262,	r11	;#0x0106
    9c62:	81 4b 08 00 	mov	r11,	8(r1)	;

00009c66 <.Loc.271.1>:
    overflow = __GET(fft_overflow);
    9c66:	3d 40 00 8d 	mov	#-29440,r13	;#0x8d00
    9c6a:	0c 47       	mov	r7,	r12	;

00009c6c <.L6>:
        fft_array_copy[i] = __GET(fft_array[i]);
    9c6c:	bd 4c 00 00 	mov	@r12+,	0(r13)	;
    9c70:	2d 53       	incd	r13		;

00009c72 <.Loc.274.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9c72:	81 9c 08 00 	cmp	r12,	8(r1)	;
    9c76:	fa 23       	jnz	$-10     	;abs 0x9c6c

00009c78 <.Loc.280.1>:
    twiddleIncrement = 2 * (*(uint16_t*)TWIDDLE_TABLE) / STAGE3_STEP;
    9c78:	16 42 14 85 	mov	&0x8514,r6	;0x8514
    9c7c:	56 02       	rlam	#1,	r6	;

00009c7e <.Loc.281.1>:
    9c7e:	56 0b       	rrum	#3,	r6	;

00009c80 <.Loc.282.1>:
    uint16_t ui16MPYState = MPY32CTL0;
    9c80:	91 42 ec 04 	mov	&0x04ec,16(r1)	;0x04ec, 0x0010
    9c84:	10 00

00009c86 <.Loc.287.1>:
    MPY32CTL0             = MPYFRAC | MPYDLYWRTEN;
    9c86:	b2 40 04 01 	mov	#260,	&0x04ec	;#0x0104
    9c8a:	ec 04

00009c8c <.Loc.287.1>:
    9c8c:	a1 42 02 00 	mov	#4,	2(r1)	;r2 As==10

00009c90 <.Loc.280.1>:
    step             = STAGE3_STEP;
    9c90:	75 42       	mov.b	#8,	r5	;r2 As==11

00009c92 <.L13>:
        scale    = overflow;
    9c92:	5b 41 13 00 	mov.b	19(r1),	r11	;0x00013
    9c96:	81 4b 04 00 	mov	r11,	4(r1)	;

00009c9a <.LVL12>:
        overflow = false;
    9c9a:	c1 43 13 00 	mov.b	#0,	19(r1)	;r3 As==00, 0x0013

00009c9e <.Loc.299.1>:
        __SET(fft_shift, __GET(fft_shift) + scale ? 1 : 0);
    9c9e:	0d 4b       	mov	r11,	r13	;
    9ca0:	1d 5a 02 00 	add	2(r10),	r13	;
    9ca4:	0c 43       	clr	r12		;
    9ca6:	0c 8d       	sub	r13,	r12	;
    9ca8:	0c dd       	bis	r13,	r12	;
    9caa:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    9cae:	8a 4c 02 00 	mov	r12,	2(r10)	;

00009cb2 <.Loc.301.1>:
        for (i = 0; i < (step / 2); i++)
    9cb2:	81 45 0a 00 	mov	r5,	10(r1)	; 0x000a

00009cb6 <.Loc.307.1>:
                msp_cmplx_btfly_auto_q15(srcPtr, srcPtr + step, &twiddlePtr[twiddleIndex], &scale, &overflow);
    9cb6:	55 02       	rlam	#1,	r5	;

00009cb8 <.LVL14>:
        for (i = 0; i < (step / 2); i++)
    9cb8:	1b 41 0a 00 	mov	10(r1),	r11	;0x0000a
    9cbc:	5b 03       	rrum	#1,	r11	;
    9cbe:	81 4b 0e 00 	mov	r11,	14(r1)	; 0x000e

00009cc2 <.Loc.294.1>:
        twiddleIndex = 0;
    9cc2:	44 43       	clr.b	r4		;

00009cc4 <.Loc.301.1>:
        for (i = 0; i < (step / 2); i++)
    9cc4:	81 43 06 00 	mov	#0,	6(r1)	;r3 As==00
    9cc8:	49 43       	clr.b	r9		;

00009cca <.L7>:
                srcPtr = fft_array_copy + j * 2;
    9cca:	0e 49       	mov	r9,	r14	;
    9ccc:	5e 06       	rlam	#2,	r14	;

00009cce <.Loc.306.1>:
    9cce:	0c 4e       	mov	r14,	r12	;
    9cd0:	3c 50 00 8d 	add	#-29440,r12	;#0x8d00

00009cd4 <.LVL16>:
                msp_cmplx_btfly_auto_q15(srcPtr, srcPtr + step, &twiddlePtr[twiddleIndex], &scale, &overflow);
    9cd4:	08 4c       	mov	r12,	r8	;
    9cd6:	08 55       	add	r5,	r8	;

00009cd8 <.Loc.307.1>:
    9cd8:	0d 44       	mov	r4,	r13	;
    9cda:	5d 02       	rlam	#1,	r13	;

00009cdc <.LBB8>:
 */
static inline void msp_cmplx_btfly_auto_q15(
    int16_t* srcA, int16_t* srcB, const _q15* coeff, bool* scale, bool* overflow)
{
    /* Load coefficients. */
    _q15 tempR = CMPLX_REAL(coeff);
    9cdc:	1f 4d 18 85 	mov	-31464(r13),r15	;0xffff8518

00009ce0 <.LVL18>:
    _q15 tempI = CMPLX_IMAG(coeff);
    9ce0:	1d 4d 1a 85 	mov	-31462(r13),r13	;0xffff851a

00009ce4 <.LBB10>:
//! \return Q15 result
//
//******************************************************************************
static inline void __q15cmpy(int16_t *aR, int16_t *aI, const int16_t *bR,
                             const int16_t *bI) {
  MPYS = *aI;
    9ce4:	82 4d c2 04 	mov	r13,	&0x04c2	;

00009ce8 <.Loc.482.2>:
  OP2 = *bR;
    9ce8:	a2 48 c8 04 	mov	@r8,	&0x04c8	;

00009cec <.Loc.483.2>:
  MACS = *aR;
    9cec:	82 4f c6 04 	mov	r15,	&0x04c6	;

00009cf0 <.Loc.484.2>:
  OP2 = *bI;
    9cf0:	92 48 02 00 	mov	2(r8),	&0x04c8	;
    9cf4:	c8 04

00009cf6 <.Loc.485.2>:
  MPYS = -*aI;
    9cf6:	4b 43       	clr.b	r11		;
    9cf8:	0b 8d       	sub	r13,	r11	;
    9cfa:	82 4b c2 04 	mov	r11,	&0x04c2	;

00009cfe <.Loc.486.2>:
  *aI = RESHI;
    9cfe:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc

00009d02 <.Loc.487.2>:
  OP2 = *bI;
    9d02:	92 48 02 00 	mov	2(r8),	&0x04c8	;
    9d06:	c8 04

00009d08 <.Loc.488.2>:
  MACS = *aR;
    9d08:	82 4f c6 04 	mov	r15,	&0x04c6	;

00009d0c <.Loc.489.2>:
  OP2 = *bR;
    9d0c:	a2 48 c8 04 	mov	@r8,	&0x04c8	;

00009d10 <.Loc.490.2>:
  *aR = RESHI;
    9d10:	1f 42 cc 04 	mov	&0x04cc,r15	;0x04cc

00009d14 <.LBE10>:

    /* Calculate real and imaginary parts of coeff*B. */
    __q15cmpy(&tempR, &tempI, &CMPLX_REAL(srcB), &CMPLX_IMAG(srcB));

    /* Scale result if necessary. */
    if (*scale)
    9d14:	1b 4e 00 8d 	mov	-29440(r14),r11	;0xffff8d00
    9d18:	0b 8f       	sub	r15,	r11	;

00009d1a <.Loc.422.1>:
    9d1a:	81 93 04 00 	cmp	#0,	4(r1)	;r3 As==00
    9d1e:	34 24       	jz	$+106    	;abs 0x9d88

00009d20 <.Loc.425.1>:
    {
        /* B = (A - coeff*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    9d20:	5b 01       	rram	#1,	r11	;
    9d22:	88 4b 00 00 	mov	r11,	0(r8)	;

00009d26 <.Loc.426.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;
    9d26:	1b 4c 02 00 	mov	2(r12),	r11	;
    9d2a:	0b 8d       	sub	r13,	r11	;

00009d2c <.Loc.426.1>:
    9d2c:	5b 01       	rram	#1,	r11	;
    9d2e:	88 4b 02 00 	mov	r11,	2(r8)	;

00009d32 <.Loc.429.1>:

        /* A = (A + coeff*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
    9d32:	1f 5e 00 8d 	add	-29440(r14),r15	;0xffff8d00

00009d36 <.LVL22>:
    9d36:	5f 01       	rram	#1,	r15	;
    9d38:	8e 4f 00 8d 	mov	r15,	-29440(r14); 0x8d00

00009d3c <.Loc.430.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    9d3c:	1d 5c 02 00 	add	2(r12),	r13	;

00009d40 <.LVL23>:
    9d40:	5d 01       	rram	#1,	r13	;
    9d42:	8c 4d 02 00 	mov	r13,	2(r12)	;

00009d46 <.L9>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    9d46:	c1 93 13 00 	cmp.b	#0,	19(r1)	;r3 As==00, 0x0013
    9d4a:	0e 20       	jnz	$+30     	;abs 0x9d68

00009d4c <.Loc.446.1>:
    {
        msp_cmplx_overflow_q15(srcA, overflow);
    9d4c:	3e 40 1a 9c 	mov	#-25574,r14	;#0x9c1a
    9d50:	0d 41       	mov	r1,	r13	;
    9d52:	3d 50 13 00 	add	#19,	r13	;#0x0013
    9d56:	81 4e 00 00 	mov	r14,	0(r1)	;
    9d5a:	8e 12       	call	r14		;

00009d5c <.LVL24>:
        msp_cmplx_overflow_q15(srcB, overflow);
    9d5c:	0d 41       	mov	r1,	r13	;
    9d5e:	3d 50 13 00 	add	#19,	r13	;#0x0013
    9d62:	0c 48       	mov	r8,	r12	;
    9d64:	2e 41       	mov	@r1,	r14	;
    9d66:	8e 12       	call	r14		;

00009d68 <.L10>:
            for (j = i; j < length; j += step)
    9d68:	19 51 0a 00 	add	10(r1),	r9	;0x0000a

00009d6c <.Loc.304.1>:
    9d6c:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    9d70:	0c 99       	cmp	r9,	r12	;
    9d72:	ab 2f       	jc	$-168    	;abs 0x9cca
    9d74:	19 41 06 00 	mov	6(r1),	r9	;

00009d78 <.LVL27>:
    9d78:	19 53       	inc	r9		;

00009d7a <.Loc.301.1>:
        for (i = 0; i < (step / 2); i++)
    9d7a:	19 91 0e 00 	cmp	14(r1),	r9	;0x0000e
    9d7e:	10 2c       	jc	$+34     	;abs 0x9da0
    9d80:	04 56       	add	r6,	r4	;

00009d82 <.LVL29>:
    9d82:	81 49 06 00 	mov	r9,	6(r1)	;
    9d86:	a1 3f       	jmp	$-188    	;abs 0x9cca

00009d88 <.L8>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
    9d88:	88 4b 00 00 	mov	r11,	0(r8)	;

00009d8c <.Loc.436.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;
    9d8c:	1b 4c 02 00 	mov	2(r12),	r11	;
    9d90:	0b 8d       	sub	r13,	r11	;
    9d92:	88 4b 02 00 	mov	r11,	2(r8)	;

00009d96 <.Loc.439.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
    9d96:	8e 5f 00 8d 	add	r15,	-29440(r14); 0x8d00

00009d9a <.Loc.440.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    9d9a:	8c 5d 02 00 	add	r13,	2(r12)	;
    9d9e:	d3 3f       	jmp	$-88     	;abs 0x9d46

00009da0 <.L12>:
        twiddleIncrement  = twiddleIncrement / 2;
    9da0:	56 03       	rrum	#1,	r6	;

00009da2 <.Loc.291.1>:
    while (step <= length)
    9da2:	b1 53 02 00 	add	#-1,	2(r1)	;r3 As==11
    9da6:	81 93 02 00 	cmp	#0,	2(r1)	;r3 As==00
    9daa:	73 23       	jnz	$-280    	;abs 0x9c92

00009dac <.Loc.320.1>:
    MPY32CTL0 = ui16MPYState;
    9dac:	92 41 10 00 	mov	16(r1),	&0x04ec	;0x00010
    9db0:	ec 04

00009db2 <.L14>:
        __SET(fft_array[i], fft_array_copy[i]);
    9db2:	1b 41 0c 00 	mov	12(r1),	r11	;0x0000c
    9db6:	a1 53 0c 00 	incd	12(r1)		;
    9dba:	b7 4b 00 00 	mov	@r11+,	0(r7)	;
    9dbe:	27 53       	incd	r7		;

00009dc0 <.Loc.324.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9dc0:	81 97 08 00 	cmp	r7,	8(r1)	;
    9dc4:	f6 23       	jnz	$-18     	;abs 0x9db2

00009dc6 <.LVL34>:
}
    9dc6:	3c 40 18 9e 	mov	#-25064,r12	;#0x9e18
    9dca:	31 50 14 00 	add	#20,	r1	;#0x0014

00009dce <.LCFI2>:
    9dce:	64 17       	popm	#7,	r10	;16-bit words

00009dd0 <.LCFI3>:
    9dd0:	30 41       	ret

00009dd2 <task_fft_prologue>:
{
    9dd2:	2a 15       	pushm	#3,	r10	;16-bit words

00009dd4 <.LCFI4>:
    9dd4:	21 83       	decd	r1		;

00009dd6 <.LCFI5>:
    9dd6:	0a 4c       	mov	r12,	r10	;

00009dd8 <.Loc.130.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9dd8:	09 4c       	mov	r12,	r9	;
    9dda:	39 50 06 00 	add	#6,	r9	;
    9dde:	38 40 00 8d 	mov	#-29440,r8	;#0x8d00
    9de2:	3a 50 06 01 	add	#262,	r10	;#0x0106

00009de6 <.Loc.129.1>:
{
    9de6:	0d 48       	mov	r8,	r13	;
    9de8:	0c 49       	mov	r9,	r12	;

00009dea <.L19>:
        fft_array_copy[i] = __GET(fft_array[i]);
    9dea:	bd 4c 00 00 	mov	@r12+,	0(r13)	;
    9dee:	2d 53       	incd	r13		;

00009df0 <.Loc.133.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9df0:	0c 9a       	cmp	r10,	r12	;
    9df2:	fb 23       	jnz	$-8      	;abs 0x9dea

00009df4 <.Loc.138.1>:
    paramsBitRev.length = length;
    9df4:	b1 40 40 00 	mov	#64,	0(r1)	;#0x0040
    9df8:	00 00

00009dfa <.Loc.145.1>:
    msp_cmplx_bitrev_q15(&paramsBitRev, fft_array_copy);
    9dfa:	3d 40 00 8d 	mov	#-29440,r13	;#0x8d00
    9dfe:	0c 41       	mov	r1,	r12	;
    9e00:	b0 12 10 a1 	call	#-24304	;#0xa110

00009e04 <.L20>:
        __SET(fft_array[i], fft_array_copy[i]);
    9e04:	b9 48 00 00 	mov	@r8+,	0(r9)	;
    9e08:	29 53       	incd	r9		;

00009e0a <.Loc.148.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9e0a:	09 9a       	cmp	r10,	r9	;
    9e0c:	fb 23       	jnz	$-8      	;abs 0x9e04

00009e0e <.Loc.153.1>:
}
    9e0e:	3c 40 4a 9f 	mov	#-24758,r12	;#0x9f4a
    9e12:	21 53       	incd	r1		;

00009e14 <.LCFI6>:
    9e14:	28 17       	popm	#3,	r10	;16-bit words

00009e16 <.LCFI7>:
    9e16:	30 41       	ret

00009e18 <task_fft_epilogue>:
{
    9e18:	1a 15       	pushm	#2,	r10	;16-bit words

00009e1a <.LCFI8>:
    9e1a:	21 82       	sub	#4,	r1	;r2 As==10

00009e1c <.LCFI9>:
    for (i = 0; i < N_SAMPLES; i++)
    9e1c:	0a 4c       	mov	r12,	r10	;
    9e1e:	3a 50 06 00 	add	#6,	r10	;
    9e22:	39 40 00 8d 	mov	#-29440,r9	;#0x8d00
    9e26:	3c 50 06 01 	add	#262,	r12	;#0x0106

00009e2a <.LVL42>:
{
    9e2a:	0e 49       	mov	r9,	r14	;
    9e2c:	0d 4a       	mov	r10,	r13	;

00009e2e <.L24>:
        fft_array_copy[i] = __GET(fft_array[i]);
    9e2e:	be 4d 00 00 	mov	@r13+,	0(r14)	;
    9e32:	2e 53       	incd	r14		;

00009e34 <.Loc.337.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9e34:	0d 9c       	cmp	r12,	r13	;
    9e36:	fb 23       	jnz	$-8      	;abs 0x9e2e

00009e38 <.Loc.343.1>:
    paramsSplit.length       = N_SAMPLES;
    9e38:	b1 40 80 00 	mov	#128,	0(r1)	;#0x0080
    9e3c:	00 00

00009e3e <.Loc.345.1>:
    paramsSplit.twiddleTable = TWIDDLE_TABLE;
    9e3e:	b1 40 14 85 	mov	#-31468,2(r1)	;#0x8514
    9e42:	02 00

00009e44 <.Loc.348.1>:
    msp_split_q15(&paramsSplit, fft_array_copy);
    9e44:	3d 40 00 8d 	mov	#-29440,r13	;#0x8d00
    9e48:	0c 41       	mov	r1,	r12	;
    9e4a:	b0 12 7e a1 	call	#-24194	;#0xa17e

00009e4e <.Loc.351.1>:
    fft_array_copy[0] = 0;
    9e4e:	82 43 00 8d 	mov	#0,	&0x8d00	;r3 As==00

00009e52 <.L27>:
        if (fft_array_copy[i] >= 0)
    9e52:	3c 49       	mov	@r9+,	r12	;

00009e54 <.Loc.356.1>:
    9e54:	0c 93       	cmp	#0,	r12	;r3 As==00
    9e56:	0b 38       	jl	$+24     	;abs 0x9e6e

00009e58 <.Loc.358.1>:
            __SET(fft_array[i], fft_array_copy[i]);
    9e58:	8a 4c 00 00 	mov	r12,	0(r10)	;

00009e5c <.L26>:
    for (i = 0; i < N_SAMPLES; i++)
    9e5c:	2a 53       	incd	r10		;

00009e5e <.Loc.354.1>:
    9e5e:	39 90 00 8e 	cmp	#-29184,r9	;#0x8e00
    9e62:	f7 23       	jnz	$-16     	;abs 0x9e52

00009e64 <.Loc.366.1>:
}
    9e64:	3c 40 c6 9e 	mov	#-24890,r12	;#0x9ec6
    9e68:	21 52       	add	#4,	r1	;r2 As==10

00009e6a <.LCFI10>:
    9e6a:	19 17       	popm	#2,	r10	;16-bit words

00009e6c <.LCFI11>:
    9e6c:	30 41       	ret

00009e6e <.L25>:
            __SET(fft_array[i], -fft_array_copy[i]);
    9e6e:	4d 43       	clr.b	r13		;
    9e70:	0d 8c       	sub	r12,	r13	;
    9e72:	8a 4d 00 00 	mov	r13,	0(r10)	;
    9e76:	f2 3f       	jmp	$-26     	;abs 0x9e5c

00009e78 <task_sample>:
{
    9e78:	0a 15       	pushm	#1,	r10	;16-bit words

00009e7a <.LCFI13>:
    9e7a:	0a 4c       	mov	r12,	r10	;

00009e7c <.Loc.102.1>:
    switch (__GET(iteration) % 3)
    9e7c:	7d 40 03 00 	mov.b	#3,	r13	;
    9e80:	2c 4c       	mov	@r12,	r12	;

00009e82 <.LVL48>:
    9e82:	b0 12 94 b3 	call	#-19564	;#0xb394

00009e86 <.Loc.114.1>:
            ptr = a3;
    9e86:	3d 40 00 44 	mov	#17408,	r13	;#0x4400

00009e8a <.Loc.105.1>:
    switch (__GET(iteration) % 3)
    9e8a:	0c 93       	cmp	#0,	r12	;r3 As==00
    9e8c:	06 24       	jz	$+14     	;abs 0x9e9a

00009e8e <.Loc.108.1>:
            ptr = a1;
    9e8e:	3d 40 00 46 	mov	#17920,	r13	;#0x4600

00009e92 <.Loc.105.1>:
    switch (__GET(iteration) % 3)
    9e92:	2c 93       	cmp	#2,	r12	;r3 As==10
    9e94:	02 20       	jnz	$+6      	;abs 0x9e9a
    9e96:	3d 40 00 45 	mov	#17664,	r13	;#0x4500

00009e9a <.L31>:
    for (sample_idx = 0; sample_idx < N_SAMPLES; sample_idx++)
    9e9a:	0c 4a       	mov	r10,	r12	;
    9e9c:	3c 50 06 00 	add	#6,	r12	;
    9ea0:	0e 4d       	mov	r13,	r14	;
    9ea2:	3e 50 00 01 	add	#256,	r14	;#0x0100

00009ea6 <.L32>:
    __delay_cycles(20);
    9ea6:	0d 14       	pushm.a	#1,	r13	;20-bit words
    9ea8:	3d 40 03 00 	mov	#3,	r13	;

00009eac <.L1^B1>:
    9eac:	1d 83       	dec	r13		;
    9eae:	fe 23       	jnz	$-2      	;abs 0x9eac
    9eb0:	0d 16       	popm.a	#1,	r13	;20-bit words
    9eb2:	03 43       	nop

00009eb4 <.LBE14>:
        __SET(fft_array[sample_idx], get_sample(ptr, sample_idx));
    9eb4:	bc 4d 00 00 	mov	@r13+,	0(r12)	;
    9eb8:	2c 53       	incd	r12		;

00009eba <.Loc.120.1>:
    for (sample_idx = 0; sample_idx < N_SAMPLES; sample_idx++)
    9eba:	0d 9e       	cmp	r14,	r13	;
    9ebc:	f4 23       	jnz	$-22     	;abs 0x9ea6

00009ebe <.Loc.125.1>:
}
    9ebe:	3c 40 d2 9d 	mov	#-25134,r12	;#0x9dd2
    9ec2:	0a 17       	popm	#1,	r10	;16-bit words

00009ec4 <.LCFI14>:
    9ec4:	30 41       	ret

00009ec6 <task_done>:
    if (full_run_started)
    9ec6:	c2 93 01 8e 	cmp.b	#0,	&0x8e01	;r3 As==00
    9eca:	08 24       	jz	$+18     	;abs 0x9edc

00009ecc <.LBB18>:
        __port_on(3, 4);
    9ecc:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    9ed0:	22 02

00009ed2 <.Loc.374.1>:
        __port_off(3, 4);
    9ed2:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    9ed6:	22 02

00009ed8 <.Loc.375.1>:
        full_run_started = 0;
    9ed8:	c2 43 01 8e 	mov.b	#0,	&0x8e01	;r3 As==00

00009edc <.L37>:
}
    9edc:	3c 40 0c 9c 	mov	#-25588,r12	;#0x9c0c

00009ee0 <.LVL55>:
    9ee0:	30 41       	ret

00009ee2 <msp_cmplx_btfly_c0_auto_q15.isra.0>:
 *
 * If overflow is detected the result is scaled by two:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_c0_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow)
    9ee2:	2a 15       	pushm	#3,	r10	;16-bit words

00009ee4 <.LCFI15>:
    9ee4:	0a 4d       	mov	r13,	r10	;
    9ee6:	09 4f       	mov	r15,	r9	;

00009ee8 <.Loc.465.1>:
{
    int16_t tempR = CMPLX_REAL(srcB);
    9ee8:	2f 4d       	mov	@r13,	r15	;

00009eea <.LVL57>:
    int16_t tempI = CMPLX_IMAG(srcB);
    9eea:	1d 4d 02 00 	mov	2(r13),	r13	;

00009eee <.LVL58>:

    /* Scale result if necessary. */
    if (*scale)
    9eee:	28 4c       	mov	@r12,	r8	;
    9ef0:	08 8f       	sub	r15,	r8	;

00009ef2 <.Loc.469.1>:
    9ef2:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    9ef4:	1e 24       	jz	$+62     	;abs 0x9f32

00009ef6 <.Loc.472.1>:
    {
        /* B = (A - (1+0j)*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
    9ef6:	58 01       	rram	#1,	r8	;
    9ef8:	8a 48 00 00 	mov	r8,	0(r10)	;

00009efc <.Loc.473.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;
    9efc:	1e 4c 02 00 	mov	2(r12),	r14	;
    9f00:	0e 8d       	sub	r13,	r14	;

00009f02 <.Loc.473.1>:
    9f02:	5e 01       	rram	#1,	r14	;
    9f04:	8a 4e 02 00 	mov	r14,	2(r10)	;

00009f08 <.Loc.476.1>:

        /* A = (A + (1+0j)*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
    9f08:	2f 5c       	add	@r12,	r15	;

00009f0a <.LVL59>:
    9f0a:	5f 01       	rram	#1,	r15	;
    9f0c:	8c 4f 00 00 	mov	r15,	0(r12)	;

00009f10 <.Loc.477.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    9f10:	1d 5c 02 00 	add	2(r12),	r13	;

00009f14 <.LVL60>:
    9f14:	5d 01       	rram	#1,	r13	;
    9f16:	8c 4d 02 00 	mov	r13,	2(r12)	;

00009f1a <.L40>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    9f1a:	c9 93 00 00 	cmp.b	#0,	0(r9)	;r3 As==00
    9f1e:	07 20       	jnz	$+16     	;abs 0x9f2e

00009f20 <.LBB22>:
    {
        msp_cmplx_overflow_q15(srcA, overflow);
    9f20:	38 40 1a 9c 	mov	#-25574,r8	;#0x9c1a
    9f24:	0d 49       	mov	r9,	r13	;
    9f26:	88 12       	call	r8		;

00009f28 <.LVL62>:
        msp_cmplx_overflow_q15(srcB, overflow);
    9f28:	0d 49       	mov	r9,	r13	;
    9f2a:	0c 4a       	mov	r10,	r12	;
    9f2c:	88 12       	call	r8		;

00009f2e <.L38>:
    }
}
    9f2e:	28 17       	popm	#3,	r10	;16-bit words

00009f30 <.LCFI16>:
    9f30:	30 41       	ret

00009f32 <.L39>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
    9f32:	8a 48 00 00 	mov	r8,	0(r10)	;

00009f36 <.Loc.483.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;
    9f36:	1e 4c 02 00 	mov	2(r12),	r14	;
    9f3a:	0e 8d       	sub	r13,	r14	;
    9f3c:	8a 4e 02 00 	mov	r14,	2(r10)	;

00009f40 <.Loc.486.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
    9f40:	8c 5f 00 00 	add	r15,	0(r12)	;

00009f44 <.Loc.487.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    9f44:	8c 5d 02 00 	add	r13,	2(r12)	;
    9f48:	e8 3f       	jmp	$-46     	;abs 0x9f1a

00009f4a <task_fft_stage_1>:
{
    9f4a:	5a 15       	pushm	#6,	r10	;16-bit words

00009f4c <.LCFI18>:
    9f4c:	21 83       	decd	r1		;

00009f4e <.LCFI19>:
    9f4e:	0a 4c       	mov	r12,	r10	;

00009f50 <.Loc.158.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9f50:	09 4c       	mov	r12,	r9	;
    9f52:	39 50 06 00 	add	#6,	r9	;
    9f56:	35 40 00 8d 	mov	#-29440,r5	;#0x8d00
    9f5a:	06 4c       	mov	r12,	r6	;
    9f5c:	36 50 06 01 	add	#262,	r6	;#0x0106

00009f60 <.Loc.157.1>:
{
    9f60:	0d 45       	mov	r5,	r13	;
    9f62:	0c 49       	mov	r9,	r12	;

00009f64 <.L43>:
        fft_array_copy[i] = __GET(fft_array[i]);
    9f64:	bd 4c 00 00 	mov	@r12+,	0(r13)	;
    9f68:	2d 53       	incd	r13		;

00009f6a <.Loc.167.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9f6a:	0c 96       	cmp	r6,	r12	;
    9f6c:	fb 23       	jnz	$-8      	;abs 0x9f64

00009f6e <.Loc.173.1>:
    overflow = false;
    9f6e:	c1 43 01 00 	mov.b	#0,	1(r1)	;r3 As==00

00009f72 <.Loc.173.1>:
    9f72:	38 40 00 8d 	mov	#-29440,r8	;#0x8d00

00009f76 <.L44>:
        msp_cmplx_overflow_q15(&fft_array_copy[i * 2], &overflow);
    9f76:	0d 41       	mov	r1,	r13	;
    9f78:	1d 53       	inc	r13		;
    9f7a:	0c 48       	mov	r8,	r12	;
    9f7c:	b0 12 1a 9c 	call	#-25574	;#0x9c1a

00009f80 <.Loc.174.1>:
    for (i = 0; i < length; i++)
    9f80:	28 52       	add	#4,	r8	;r2 As==10

00009f82 <.Loc.174.1>:
    9f82:	38 90 00 8e 	cmp	#-29184,r8	;#0x8e00
    9f86:	f7 23       	jnz	$-16     	;abs 0x9f76

00009f88 <.Loc.180.1>:
    scale    = overflow;
    9f88:	57 41 01 00 	mov.b	1(r1),	r7	;

00009f8c <.LVL71>:
    overflow = false;
    9f8c:	c1 43 01 00 	mov.b	#0,	1(r1)	;r3 As==00

00009f90 <.LVL72>:
    __SET(fft_shift, scale ? 1 : 0);
    9f90:	8a 47 02 00 	mov	r7,	2(r10)	;

00009f94 <.Loc.184.1>:
    9f94:	38 40 00 8d 	mov	#-29440,r8	;#0x8d00

00009f98 <.L45>:
            msp_cmplx_btfly_c0_auto_q15(&srcPtr[0], &srcPtr[0 + STAGE1_STEP], &scale, &overflow);
    9f98:	0f 41       	mov	r1,	r15	;
    9f9a:	1f 53       	inc	r15		;
    9f9c:	4e 47       	mov.b	r7,	r14	;
    9f9e:	0d 48       	mov	r8,	r13	;
    9fa0:	2d 52       	add	#4,	r13	;r2 As==10
    9fa2:	0c 48       	mov	r8,	r12	;
    9fa4:	b0 12 e2 9e 	call	#-24862	;#0x9ee2

00009fa8 <.Loc.188.1>:
        for (j = 0; j < length; j += STAGE1_STEP)
    9fa8:	38 52       	add	#8,	r8	;r2 As==11

00009faa <.LVL76>:
    9faa:	38 90 00 8e 	cmp	#-29184,r8	;#0x8e00
    9fae:	f4 23       	jnz	$-22     	;abs 0x9f98

00009fb0 <.Loc.196.1>:
    __SET(fft_scale, scale);
    9fb0:	ca 47 04 00 	mov.b	r7,	4(r10)	;

00009fb4 <.Loc.197.1>:
    __SET(fft_overflow, overflow);
    9fb4:	da 41 01 00 	mov.b	1(r1),	5(r10)	;
    9fb8:	05 00

00009fba <.L46>:
        __SET(fft_array[i], fft_array_copy[i]);
    9fba:	b9 45 00 00 	mov	@r5+,	0(r9)	;
    9fbe:	29 53       	incd	r9		;

00009fc0 <.Loc.200.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9fc0:	09 96       	cmp	r6,	r9	;
    9fc2:	fb 23       	jnz	$-8      	;abs 0x9fba

00009fc4 <.LVL78>:
}
    9fc4:	3c 40 ce 9f 	mov	#-24626,r12	;#0x9fce
    9fc8:	21 53       	incd	r1		;

00009fca <.LCFI20>:
    9fca:	55 17       	popm	#6,	r10	;16-bit words

00009fcc <.LCFI21>:
    9fcc:	30 41       	ret

00009fce <task_fft_stage_2>:
{
    9fce:	6a 15       	pushm	#7,	r10	;16-bit words

00009fd0 <.LCFI22>:
    9fd0:	21 83       	decd	r1		;

00009fd2 <.LCFI23>:
    9fd2:	09 4c       	mov	r12,	r9	;

00009fd4 <.LVL80>:
    overflow = __GET(fft_overflow);
    9fd4:	57 4c 05 00 	mov.b	5(r12),	r7	;

00009fd8 <.Loc.223.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9fd8:	08 4c       	mov	r12,	r8	;
    9fda:	38 50 06 00 	add	#6,	r8	;
    9fde:	35 40 00 8d 	mov	#-29440,r5	;#0x8d00
    9fe2:	06 4c       	mov	r12,	r6	;
    9fe4:	36 50 06 01 	add	#262,	r6	;#0x0106

00009fe8 <.Loc.220.1>:
    overflow = __GET(fft_overflow);
    9fe8:	0d 45       	mov	r5,	r13	;
    9fea:	0c 48       	mov	r8,	r12	;

00009fec <.L52>:
        fft_array_copy[i] = __GET(fft_array[i]);
    9fec:	bd 4c 00 00 	mov	@r12+,	0(r13)	;
    9ff0:	2d 53       	incd	r13		;

00009ff2 <.Loc.223.1>:
    for (i = 0; i < N_SAMPLES; i++)
    9ff2:	0c 96       	cmp	r6,	r12	;
    9ff4:	fb 23       	jnz	$-8      	;abs 0x9fec

00009ff6 <.LVL83>:
    overflow = false;
    9ff6:	c1 43 01 00 	mov.b	#0,	1(r1)	;r3 As==00

00009ffa <.Loc.231.1>:
    __SET(fft_shift, __GET(fft_shift) + scale ? 1 : 0);
    9ffa:	0d 47       	mov	r7,	r13	;
    9ffc:	1d 59 02 00 	add	2(r9),	r13	;
    a000:	0c 43       	clr	r12		;
    a002:	0c 8d       	sub	r13,	r12	;
    a004:	0c dd       	bis	r13,	r12	;
    a006:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    a00a:	89 4c 02 00 	mov	r12,	2(r9)	;

0000a00e <.Loc.231.1>:
    a00e:	3a 40 00 8d 	mov	#-29440,r10	;#0x8d00

0000a012 <.L56>:
            msp_cmplx_btfly_c0_auto_q15(&srcPtr[0], &srcPtr[0 + STAGE2_STEP], &scale, &overflow);
    a012:	0f 41       	mov	r1,	r15	;
    a014:	1f 53       	inc	r15		;
    a016:	4e 47       	mov.b	r7,	r14	;
    a018:	0d 4a       	mov	r10,	r13	;
    a01a:	3d 52       	add	#8,	r13	;r2 As==11
    a01c:	0c 4a       	mov	r10,	r12	;
    a01e:	b0 12 e2 9e 	call	#-24862	;#0x9ee2

0000a022 <.LBB26>:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_c1_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow)
{
    int16_t tempR = CMPLX_REAL(srcB);
    a022:	1c 4a 0c 00 	mov	12(r10),r12	;0x0000c

0000a026 <.LVL87>:
    int16_t tempI = CMPLX_IMAG(srcB);
    a026:	1d 4a 0e 00 	mov	14(r10),r13	;0x0000e

0000a02a <.LVL88>:

    /* Scale result if necessary. */
    if (*scale)
    {
        /* B = (A - (0-1j)*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempI) >> 1;
    a02a:	1f 4a 04 00 	mov	4(r10),	r15	;

0000a02e <.Loc.516.1>:
    if (*scale)
    a02e:	07 93       	cmp	#0,	r7	;r3 As==00
    a030:	38 24       	jz	$+114    	;abs 0xa0a2

0000a032 <.Loc.519.1>:
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempI) >> 1;
    a032:	0e 4f       	mov	r15,	r14	;
    a034:	0e 8d       	sub	r13,	r14	;

0000a036 <.Loc.519.1>:
    a036:	5e 01       	rram	#1,	r14	;
    a038:	8a 4e 0c 00 	mov	r14,	12(r10)	; 0x000c

0000a03c <.Loc.520.1>:
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) + tempR) >> 1;
    a03c:	1e 4a 06 00 	mov	6(r10),	r14	;

0000a040 <.Loc.520.1>:
    a040:	04 4c       	mov	r12,	r4	;
    a042:	04 5e       	add	r14,	r4	;

0000a044 <.Loc.520.1>:
    a044:	54 01       	rram	#1,	r4	;
    a046:	8a 44 0e 00 	mov	r4,	14(r10)	; 0x000e

0000a04a <.Loc.523.1>:

        /* A = (A + (0-1j)*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempI) >> 1;
    a04a:	0d 5f       	add	r15,	r13	;

0000a04c <.LVL89>:
    a04c:	5d 01       	rram	#1,	r13	;
    a04e:	8a 4d 04 00 	mov	r13,	4(r10)	;

0000a052 <.Loc.524.1>:
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) - tempR) >> 1;
    a052:	0e 8c       	sub	r12,	r14	;

0000a054 <.Loc.524.1>:
    a054:	5e 01       	rram	#1,	r14	;

0000a056 <.L61>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempI;
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) + tempR;

        /* A = A + coeff*B */
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempI;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) - tempR;
    a056:	8a 4e 06 00 	mov	r14,	6(r10)	;

0000a05a <.Loc.538.1>:
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    a05a:	c1 93 01 00 	cmp.b	#0,	1(r1)	;r3 As==00
    a05e:	0d 20       	jnz	$+28     	;abs 0xa07a

0000a060 <.Loc.540.1>:
    {
        msp_cmplx_overflow_q15(srcA, overflow);
    a060:	34 40 1a 9c 	mov	#-25574,r4	;#0x9c1a
    a064:	0d 41       	mov	r1,	r13	;
    a066:	1d 53       	inc	r13		;
    a068:	0c 4a       	mov	r10,	r12	;

0000a06a <.LVL90>:
    a06a:	2c 52       	add	#4,	r12	;r2 As==10
    a06c:	84 12       	call	r4		;

0000a06e <.Loc.541.1>:
        msp_cmplx_overflow_q15(srcB, overflow);
    a06e:	0d 41       	mov	r1,	r13	;
    a070:	1d 53       	inc	r13		;
    a072:	0c 4a       	mov	r10,	r12	;
    a074:	3c 50 0c 00 	add	#12,	r12	;#0x000c
    a078:	84 12       	call	r4		;

0000a07a <.L55>:
        for (j = 0; j < length; j += STAGE2_STEP)
    a07a:	3a 50 10 00 	add	#16,	r10	;#0x0010

0000a07e <.LVL93>:
    a07e:	3a 90 00 8e 	cmp	#-29184,r10	;#0x8e00
    a082:	c7 23       	jnz	$-112    	;abs 0xa012

0000a084 <.Loc.243.1>:
    __SET(fft_scale, scale);
    a084:	c9 47 04 00 	mov.b	r7,	4(r9)	;

0000a088 <.Loc.244.1>:
    __SET(fft_overflow, overflow);
    a088:	d9 41 01 00 	mov.b	1(r1),	5(r9)	;
    a08c:	05 00

0000a08e <.L57>:
        __SET(fft_array[i], fft_array_copy[i]);
    a08e:	b8 45 00 00 	mov	@r5+,	0(r8)	;
    a092:	28 53       	incd	r8		;

0000a094 <.Loc.247.1>:
    for (i = 0; i < N_SAMPLES; i++)
    a094:	08 96       	cmp	r6,	r8	;
    a096:	fb 23       	jnz	$-8      	;abs 0xa08e

0000a098 <.LVL95>:
}
    a098:	3c 40 42 9c 	mov	#-25534,r12	;#0x9c42
    a09c:	21 53       	incd	r1		;

0000a09e <.LCFI24>:
    a09e:	64 17       	popm	#7,	r10	;16-bit words

0000a0a0 <.LCFI25>:
    a0a0:	30 41       	ret

0000a0a2 <.L53>:
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempI;
    a0a2:	04 4f       	mov	r15,	r4	;
    a0a4:	04 8d       	sub	r13,	r4	;
    a0a6:	8a 44 0c 00 	mov	r4,	12(r10)	; 0x000c

0000a0aa <.Loc.530.1>:
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) + tempR;
    a0aa:	1e 4a 06 00 	mov	6(r10),	r14	;

0000a0ae <.Loc.530.1>:
    a0ae:	04 4c       	mov	r12,	r4	;
    a0b0:	04 5e       	add	r14,	r4	;
    a0b2:	8a 44 0e 00 	mov	r4,	14(r10)	; 0x000e

0000a0b6 <.Loc.533.1>:
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempI;
    a0b6:	0d 5f       	add	r15,	r13	;

0000a0b8 <.LVL97>:
    a0b8:	8a 4d 04 00 	mov	r13,	4(r10)	;

0000a0bc <.Loc.534.1>:
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) - tempR;
    a0bc:	0e 8c       	sub	r12,	r14	;
    a0be:	cb 3f       	jmp	$-104    	;abs 0xa056

0000a0c0 <thread1_init>:
{
    a0c0:	21 83       	decd	r1		;

0000a0c2 <.LCFI27>:
    __CREATE(15, task_init);
    a0c2:	b1 40 06 01 	mov	#262,	0(r1)	;#0x0106
    a0c6:	00 00
    a0c8:	3f 40 06 8b 	mov	#-29946,r15	;#0x8b06
    a0cc:	3e 40 00 8a 	mov	#-30208,r14	;#0x8a00
    a0d0:	3d 40 0c 9c 	mov	#-25588,r13	;#0x9c0c
    a0d4:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    a0d8:	b0 12 d6 a2 	call	#-23850	;#0xa2d6

0000a0dc <.Loc.71.1>:
    __SIGNAL(15);
    a0dc:	32 c2       	dint
    a0de:	03 43       	nop

0000a0e0 <.Loc.71.1>:
    a0e0:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    a0e4:	b0 12 c6 a3 	call	#-23610	;#0xa3c6
    a0e8:	b0 12 aa a3 	call	#-23638	;#0xa3aa

0000a0ec <.Loc.71.1>:
    a0ec:	03 43       	nop
    a0ee:	32 d2       	eint
    a0f0:	03 43       	nop

0000a0f2 <.Loc.72.1>:
}
    a0f2:	21 53       	incd	r1		;

0000a0f4 <.LCFI28>:
    a0f4:	30 41       	ret

0000a0f6 <__app_reboot>:
    __port_init(3, 4);
    a0f6:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    a0fa:	22 02

0000a0fc <.Loc.77.1>:
    a0fc:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    a100:	24 02

0000a102 <.Loc.77.1>:
    a102:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    a106:	22 02

0000a108 <.Loc.77.1>:
}
    a108:	30 41       	ret

0000a10a <__app_init>:
extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init()
{
    thread1_init();
    a10a:	b0 12 c0 a0 	call	#-24384	;#0xa0c0

0000a10e <.Loc.32.1>:
}
    a10e:	30 41       	ret

0000a110 <msp_cmplx_bitrev_q15>:
/*
 * Perform an in-place bit reversal of the complex input array using a lookup
 * table.
 */
msp_status msp_cmplx_bitrev_q15(const msp_cmplx_bitrev_q15_params *params,
                                _q15 *src) {
    a110:	3a 15       	pushm	#4,	r10	;16-bit words

0000a112 <.LCFI0>:
  uint32_t temp;        // Temporary storage
  uint32_t *srcPtr;     // Treat complex data pairs as 32-bit data

  /* Initialize source pointer and length. */
  srcPtr = (uint32_t *)src;
  length = params->length;
    a112:	27 4c       	mov	@r12,	r7	;

0000a114 <L0^A>:
    a114:	0e 47       	mov	r7,	r14	;

0000a116 <.Loc.142.1>:
  index = 0;
  indexInc = 2;
    a116:	68 43       	mov.b	#2,	r8	;r3 As==10

0000a118 <.L2>:

  /* Calculate index increment for left justified index. */
  while (length < 0x8000) {
    a118:	0e 93       	cmp	#0,	r14	;r3 As==00
    a11a:	0b 34       	jge	$+24     	;abs 0xa132

0000a11c <.Loc.152.1>:
  }

#ifndef MSP_DISABLE_DIAGNOSTICS
  /* Check that the length is a power of two. */
  if (length != 0x8000) {
    return MSP_SIZE_ERROR;
    a11c:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a11e <.LVL4>:
  if (length != 0x8000) {
    a11e:	3e 90 00 80 	cmp	#-32768,r14	;#0x8000
    a122:	05 20       	jnz	$+12     	;abs 0xa12e

0000a124 <.Loc.141.1>:
  index = 0;
    a124:	4f 43       	clr.b	r15		;

0000a126 <.Loc.159.1>:
  }
#endif // MSP_DISABLE_DIAGNOSTICS

  /* In-place bit-reversal using fixed table length. */
  length = params->length;
  for (i = 0; i < length; i++, index += indexInc) {
    a126:	4e 43       	clr.b	r14		;

0000a128 <.L5>:
    a128:	0e 97       	cmp	r7,	r14	;
    a12a:	06 20       	jnz	$+14     	;abs 0xa138

0000a12c <.Loc.172.1>:
      srcPtr[i] = srcPtr[indexBitRev];
      srcPtr[indexBitRev] = temp;
    }
  }

  return MSP_SUCCESS;
    a12c:	4c 43       	clr.b	r12		;

0000a12e <.L1>:
}
    a12e:	37 17       	popm	#4,	r10	;16-bit words

0000a130 <.LCFI1>:
    a130:	30 41       	ret

0000a132 <.L3>:
    indexInc <<= 1;
    a132:	58 02       	rlam	#1,	r8	;

0000a134 <.Loc.147.1>:
    length <<= 1;
    a134:	5e 02       	rlam	#1,	r14	;
    a136:	f0 3f       	jmp	$-30     	;abs 0xa118

0000a138 <.L7>:
    indexBitRev = ((uint16_t)msp_cmplx_bitrev_table_ui8[index & 0xff] << 8) +
    a138:	0c 4f       	mov	r15,	r12	;
    a13a:	7c f0 ff 00 	and.b	#255,	r12	;#0x00ff

0000a13e <.Loc.161.1>:
    a13e:	5c 4c 04 87 	mov.b	-30972(r12),r12	;0xffff8704
    a142:	47 18 0c 5c 	rpt #8 { rlax.w	r12		;

0000a146 <.Loc.162.1>:
                  ((uint16_t)msp_cmplx_bitrev_table_ui8[(index >> 8) & 0xff]);
    a146:	0a 4f       	mov	r15,	r10	;
    a148:	47 19 0a 10 	rpt #8 { rrux.w	r10		;

0000a14c <.Loc.161.1>:
    indexBitRev = ((uint16_t)msp_cmplx_bitrev_table_ui8[index & 0xff] << 8) +
    a14c:	5a 4a 04 87 	mov.b	-30972(r10),r10	;0xffff8704
    a150:	0c 5a       	add	r10,	r12	;

0000a152 <.LVL11>:
    if (i < indexBitRev) {
    a152:	0e 9c       	cmp	r12,	r14	;
    a154:	11 2c       	jc	$+36     	;abs 0xa178

0000a156 <.Loc.166.1>:
      temp = srcPtr[i];
    a156:	09 4e       	mov	r14,	r9	;
    a158:	59 06       	rlam	#2,	r9	;
    a15a:	09 5d       	add	r13,	r9	;

0000a15c <.Loc.166.1>:
    a15c:	2a 49       	mov	@r9,	r10	;
    a15e:	1b 49 02 00 	mov	2(r9),	r11	;

0000a162 <.LVL12>:
      srcPtr[i] = srcPtr[indexBitRev];
    a162:	5c 06       	rlam	#2,	r12	;

0000a164 <.LVL13>:
    a164:	0c 5d       	add	r13,	r12	;

0000a166 <.Loc.167.1>:
    a166:	a9 4c 00 00 	mov	@r12,	0(r9)	;
    a16a:	99 4c 02 00 	mov	2(r12),	2(r9)	;
    a16e:	02 00

0000a170 <.Loc.168.1>:
      srcPtr[indexBitRev] = temp;
    a170:	8c 4a 00 00 	mov	r10,	0(r12)	;
    a174:	8c 4b 02 00 	mov	r11,	2(r12)	;

0000a178 <.L6>:
  for (i = 0; i < length; i++, index += indexInc) {
    a178:	1e 53       	inc	r14		;

0000a17a <.Loc.159.1>:
    a17a:	0f 58       	add	r8,	r15	;
    a17c:	d5 3f       	jmp	$-84     	;abs 0xa128

0000a17e <msp_split_q15>:
    a17e:	6a 15       	pushm	#7,	r10	;16-bit words

0000a180 <.LCFI0>:
 *     G(k) = A(k) - j*B(k)
 *     G(N-k) = A*(k) - j*B*(k)
 *
 * Reference: http://www.ti.com/lit/an/spra291/spra291.pdf
 */
msp_status msp_split_q15(const msp_split_q15_params *params, int16_t *src) {
    a180:
0000a182 <L0^A>:
    a182:	0c 00       	mova	@r0,	r12	;

0000a184 <.LCFI1>:
    a184:	09 4c       	mov	r12,	r9	;

0000a186 <.Loc.150.1>:
  int16_t *srcPtrK;        // Source pointer to X(k)
  int16_t *srcPtrNK;       // Source pointer to X(N-k)
  const int16_t *coeffPtr; // Coefficient pointer

  /* Save input length to local. */
  length = params->length;
    a186:	2e 4c       	mov	@r12,	r14	;

0000a188 <.LVL1>:

#ifndef MSP_DISABLE_DIAGNOSTICS
  /* Check that the length is a power of two. */
  if ((length & (length - 1))) {
    a188:	0f 4e       	mov	r14,	r15	;
    a18a:	3f 53       	add	#-1,	r15	;r3 As==11

0000a18c <.Loc.168.1>:
    a18c:	0c 4f       	mov	r15,	r12	;

0000a18e <.LVL2>:
    a18e:	0c fe       	and	r14,	r12	;

0000a190 <.Loc.168.1>:
    a190:	0f be       	bit	r14,	r15	;
    a192:	87 20       	jnz	$+272    	;abs 0xa2a2

0000a194 <.Loc.173.1>:
    return MSP_SIZE_ERROR;
  }

  /* Check that the provided table is the correct length. */
  if (*(uint16_t *)params->twiddleTable < length) {
    a194:	1f 49 02 00 	mov	2(r9),	r15	;

0000a198 <.Loc.173.1>:
    a198:	8f 9e 00 00 	cmp	r14,	0(r15)	;
    a19c:	84 28       	jnc	$+266    	;abs 0xa2a6

0000a19e <.Loc.185.1>:
   *
   *     X(N) = X(0)
   *     G(0) = 0.5*(X(0) + X*(0)) - j*0.5*(e^-j*0)*(X(0) - X*(0))
   *     G(0) = Xr(0) + Xi(0)
   */
  CMPLX_REAL(src) = CMPLX_REAL(src) + CMPLX_IMAG(src);
    a19e:	9d 5d 02 00 	rla	2(r13)		;
    a1a2:	00 00

0000a1a4 <.Loc.186.1>:
  CMPLX_IMAG(src) = 0;
    a1a4:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

0000a1a8 <.Loc.189.1>:

  /* Initialize Src(k) and Src(N/2-k) pointers when k=1. */
  srcPtrK = src + CMPLX_INCREMENT;
    a1a8:	04 4d       	mov	r13,	r4	;
    a1aa:	24 52       	add	#4,	r4	;r2 As==10
    a1ac:	81 44 06 00 	mov	r4,	6(r1)	;

0000a1b0 <.LVL3>:
  srcPtrNK = src + length - CMPLX_INCREMENT;
    a1b0:	0a 4e       	mov	r14,	r10	;
    a1b2:	3a 50 fe 7f 	add	#32766,	r10	;#0x7ffe
    a1b6:	5a 02       	rlam	#1,	r10	;

0000a1b8 <.Loc.190.1>:
    a1b8:	0d 5a       	add	r10,	r13	;

0000a1ba <.LVL4>:

  /* Calculate coefficient table offset. */
  coeffOffset = 2;
  tableLength = *(uint16_t *)params->twiddleTable;
    a1ba:	27 4f       	mov	@r15,	r7	;

0000a1bc <.LVL5>:
  coeffOffset = 2;
    a1bc:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000a1be <.L3>:
  while (length < tableLength) {
    a1be:	08 4a       	mov	r10,	r8	;
    a1c0:	58 02       	rlam	#1,	r8	;
    a1c2:	0e 97       	cmp	r7,	r14	;
    a1c4:	24 28       	jnc	$+74     	;abs 0xa20e

0000a1c6 <.Loc.201.1>:
    coeffOffset *= 2;
    length *= 2;
  }

  /* Initialize coefficient pointer to index k=1. */
  coeffPtr = &params->twiddleTable[DSPLIB_TABLE_OFFSET] + coeffOffset;
    a1c6:	2a 53       	incd	r10		;
    a1c8:	5a 02       	rlam	#1,	r10	;

0000a1ca <.Loc.201.1>:
    a1ca:	0f 5a       	add	r10,	r15	;

0000a1cc <.LVL7>:
   * Initialize length of split operations to perform. G(k) and G(N/2-k) are
   * calculated in the same loop iteration so only half of the N/2 iterations
   * are required, N/4. The last iteration where k = N/2-k will be calculated
   * separately.
   */
  length = (params->length >> 2) - 1;
    a1cc:	2e 49       	mov	@r9,	r14	;

0000a1ce <.LVL8>:
    a1ce:	5e 07       	rrum	#2,	r14	;

0000a1d0 <.Loc.209.1>:
    a1d0:	06 4e       	mov	r14,	r6	;
    a1d2:	36 53       	add	#-1,	r6	;r3 As==11

0000a1d4 <.LVL9>:

  /* If MPY32 is available save control context and set to fractional mode. */
#if defined(__MSP430_HAS_MPY32__)
  uint16_t ui16MPYState = MPY32CTL0;
    a1d4:	91 42 ec 04 	mov	&0x04ec,10(r1)	;0x04ec, 0x000a
    a1d8:	0a 00

0000a1da <.LVL10>:
  MPY32CTL0 = MPYFRAC | MPYDLYWRTEN;
    a1da:	b2 40 04 01 	mov	#260,	&0x04ec	;#0x0104
    a1de:	ec 04

0000a1e0 <.Loc.189.1>:
  srcPtrK = src + CMPLX_INCREMENT;
    a1e0:	1a 41 06 00 	mov	6(r1),	r10	;

0000a1e4 <.Loc.209.1>:
  length = (params->length >> 2) - 1;
    a1e4:	09 46       	mov	r6,	r9	;

0000a1e6 <.L5>:
#endif

  /* Loop through and perform all of the split operations. */
  while (length--) {
    a1e6:	39 53       	add	#-1,	r9	;r3 As==11
    a1e8:	1e 4a 02 00 	mov	2(r10),	r14	;

0000a1ec <.Loc.218.1>:
    a1ec:	39 93       	cmp	#-1,	r9	;r3 As==11
    a1ee:	12 20       	jnz	$+38     	;abs 0xa214

0000a1f0 <.Loc.254.1>:
    coeffPtr += coeffOffset;
  }

  /* Restore MPY32 control context. */
#if defined(__MSP430_HAS_MPY32__)
  MPY32CTL0 = ui16MPYState;
    a1f0:	92 41 0a 00 	mov	10(r1),	&0x04ec	;0x0000a
    a1f4:	ec 04

0000a1f6 <.Loc.265.1>:
   *     G(k) = 0.5*(X(k) + X*(k)) - j*0.5*(e^-j*pi/2)*(X(k) - X*(k))
   *     G(k) = 0.5(2*Xr(k)) - j*0.5*(-j)*(2*j*Xi(k))
   *     G(k) = Xr(k) - j*Xi(k)
   */
  CMPLX_REAL(srcPtrK) = CMPLX_REAL(srcPtrK);
  CMPLX_IMAG(srcPtrK) = -CMPLX_IMAG(srcPtrK);
    a1f6:	0d 46       	mov	r6,	r13	;

0000a1f8 <.LVL13>:
    a1f8:	5d 06       	rlam	#2,	r13	;
    a1fa:	1d 51 06 00 	add	6(r1),	r13	;

0000a1fe <.Loc.266.1>:
    a1fe:	4a 43       	clr.b	r10		;

0000a200 <.LVL14>:
    a200:	0a 8e       	sub	r14,	r10	;
    a202:	8d 4a 02 00 	mov	r10,	2(r13)	;

0000a206 <.L1>:

  return MSP_SUCCESS;
}
    a206:	31 50 0c 00 	add	#12,	r1	;#0x000c

0000a20a <.LCFI2>:
    a20a:	64 17       	popm	#7,	r10	;16-bit words

0000a20c <.LCFI3>:
    a20c:	30 41       	ret

0000a20e <.L4>:
    length *= 2;
    a20e:	5e 02       	rlam	#1,	r14	;
    a210:	0a 48       	mov	r8,	r10	;
    a212:	d5 3f       	jmp	$-84     	;abs 0xa1be

0000a214 <.L6>:
    bR = CMPLX_REAL(srcPtrK) - CMPLX_REAL(srcPtrNK);
    a214:	a1 4a 00 00 	mov	@r10,	0(r1)	;

0000a218 <.Loc.220.1>:
    a218:	a1 4d 02 00 	mov	@r13,	2(r1)	;

0000a21c <.Loc.221.1>:
    bI = CMPLX_IMAG(srcPtrK) + CMPLX_IMAG(srcPtrNK);
    a21c:	91 4d 02 00 	mov	2(r13),	4(r1)	;
    a220:	04 00

0000a222 <.Loc.221.1>:
    a222:	17 41 04 00 	mov	4(r1),	r7	;
    a226:	07 5e       	add	r14,	r7	;

0000a228 <.LVL20>:
    cR = CMPLX_REAL(coeffPtr) >> 1;
    a228:	25 4f       	mov	@r15,	r5	;
    a22a:	55 01       	rram	#1,	r5	;

0000a22c <.LVL21>:
    cI = CMPLX_IMAG(coeffPtr) >> 1;
    a22c:	14 4f 02 00 	mov	2(r15),	r4	;
    a230:	54 01       	rram	#1,	r4	;

0000a232 <.LBB4>:
//! \return Q15 result
//
//******************************************************************************
static inline void __q15cmpy(int16_t *aR, int16_t *aI, const int16_t *bR,
                             const int16_t *bI) {
  MPYS = *aI;
    a232:	82 47 c2 04 	mov	r7,	&0x04c2	;

0000a236 <.Loc.482.2>:
  OP2 = *bR;
    a236:	82 45 c8 04 	mov	r5,	&0x04c8	;

0000a23a <.LBE4>:
    bR = CMPLX_REAL(srcPtrK) - CMPLX_REAL(srcPtrNK);
    a23a:	2b 41       	mov	@r1,	r11	;
    a23c:	1b 81 02 00 	sub	2(r1),	r11	;

0000a240 <.LVL23>:
    a240:	81 4b 08 00 	mov	r11,	8(r1)	;

0000a244 <.Loc.483.2>:
  MACS = *aR;
    a244:	82 4b c6 04 	mov	r11,	&0x04c6	;

0000a248 <.Loc.484.2>:
  OP2 = *bI;
    a248:	82 44 c8 04 	mov	r4,	&0x04c8	;

0000a24c <.Loc.485.2>:
  MPYS = -*aI;
    a24c:	4b 43       	clr.b	r11		;

0000a24e <.LVL24>:
    a24e:	0b 87       	sub	r7,	r11	;
    a250:	82 4b c2 04 	mov	r11,	&0x04c2	;

0000a254 <.Loc.486.2>:
  *aI = RESHI;
    a254:	17 42 cc 04 	mov	&0x04cc,r7	;0x04cc

0000a258 <.Loc.487.2>:
  OP2 = *bI;
    a258:	82 44 c8 04 	mov	r4,	&0x04c8	;

0000a25c <.Loc.488.2>:
  MACS = *aR;
    a25c:	92 41 08 00 	mov	8(r1),	&0x04c6	;
    a260:	c6 04

0000a262 <.Loc.489.2>:
  OP2 = *bR;
    a262:	82 45 c8 04 	mov	r5,	&0x04c8	;

0000a266 <.Loc.490.2>:
  *aR = RESHI;
    a266:	15 42 cc 04 	mov	&0x04cc,r5	;0x04cc

0000a26a <.LVL26>:
    aR = (CMPLX_REAL(srcPtrK) + CMPLX_REAL(srcPtrNK)) >> 1;
    a26a:	2b 41       	mov	@r1,	r11	;
    a26c:	1b 51 02 00 	add	2(r1),	r11	;

0000a270 <.Loc.232.1>:
    a270:	5b 01       	rram	#1,	r11	;

0000a272 <.LVL27>:
    aI = (CMPLX_IMAG(srcPtrK) - CMPLX_IMAG(srcPtrNK)) >> 1;
    a272:	1e 81 04 00 	sub	4(r1),	r14	;

0000a276 <.Loc.233.1>:
    a276:	5e 01       	rram	#1,	r14	;

0000a278 <.LVL28>:
    CMPLX_REAL(srcPtrK) = aR + bI;
    a278:	04 4b       	mov	r11,	r4	;

0000a27a <.LVL29>:
    a27a:	04 57       	add	r7,	r4	;
    a27c:	8a 44 00 00 	mov	r4,	0(r10)	;

0000a280 <.Loc.242.1>:
    CMPLX_IMAG(srcPtrK) = aI - bR;
    a280:	04 4e       	mov	r14,	r4	;
    a282:	04 85       	sub	r5,	r4	;
    a284:	8a 44 02 00 	mov	r4,	2(r10)	;

0000a288 <.Loc.243.1>:
    CMPLX_REAL(srcPtrNK) = aR - bI;
    a288:	0b 87       	sub	r7,	r11	;

0000a28a <.LVL31>:
    a28a:	8d 4b 00 00 	mov	r11,	0(r13)	;

0000a28e <.Loc.244.1>:
    CMPLX_IMAG(srcPtrNK) = -(aI + bR);
    a28e:	0e 55       	add	r5,	r14	;

0000a290 <.LVL32>:
    a290:	47 43       	clr.b	r7		;

0000a292 <.LVL33>:
    a292:	07 8e       	sub	r14,	r7	;
    a294:	8d 47 02 00 	mov	r7,	2(r13)	;

0000a298 <.Loc.247.1>:
    srcPtrK += CMPLX_INCREMENT;
    a298:	2a 52       	add	#4,	r10	;r2 As==10

0000a29a <.Loc.248.1>:
    srcPtrNK -= CMPLX_INCREMENT;
    a29a:	3d 50 fc ff 	add	#-4,	r13	;#0xfffc

0000a29e <.Loc.249.1>:
    coeffPtr += coeffOffset;
    a29e:	0f 58       	add	r8,	r15	;
    a2a0:	a2 3f       	jmp	$-186    	;abs 0xa1e6

0000a2a2 <.L7>:
    return MSP_SIZE_ERROR;
    a2a2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    a2a4:	b0 3f       	jmp	$-158    	;abs 0xa206

0000a2a6 <.L8>:
    return MSP_TABLE_SIZE_ERROR;
    a2a6:	7c 40 03 00 	mov.b	#3,	r12	;
    a2aa:	ad 3f       	jmp	$-164    	;abs 0xa206

0000a2ac <__scheduler_boot_init>:
    a2ac:	0a 15       	pushm	#1,	r10	;16-bit words

0000a2ae <.LCFI0>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    a2ae:	3c 40 02 8f 	mov	#-28926,r12	;#0x8f02
    a2b2:
0000a2b4 <L0^A>:
    a2b4:
0000a2b6 <.Loc.65.1>:
    a2b6:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

0000a2ba <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    a2ba:	0c 4a       	mov	r10,	r12	;
    a2bc:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a2c0:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a2c4:	1c 4c 0e 8f 	mov	-28914(r12),r12	;0xffff8f0e

0000a2c8 <.LVL3>:
    for (i = MAX_THREADS; i > 0; i--){
    a2c8:	3a 53       	add	#-1,	r10	;r3 As==11

0000a2ca <.Loc.67.1>:
    a2ca:	0a 93       	cmp	#0,	r10	;r3 As==00
    a2cc:	f6 23       	jnz	$-18     	;abs 0xa2ba

0000a2ce <.Loc.71.1>:
    }
    _sched_state = SCHED_SELECT;
    a2ce:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000a2d2 <.Loc.72.1>:
}
    a2d2:	0a 17       	popm	#1,	r10	;16-bit words

0000a2d4 <.LCFI1>:
    a2d4:	30 41       	ret

0000a2d6 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    a2d6:	3a 15       	pushm	#4,	r10	;16-bit words

0000a2d8 <.LCFI2>:
    a2d8:	4a 4c       	mov.b	r12,	r10	;
    a2da:	09 4d       	mov	r13,	r9	;
    a2dc:	07 4e       	mov	r14,	r7	;
    a2de:	08 4f       	mov	r15,	r8	;

0000a2e0 <.Loc.79.1>:
    // init properties
    _threads[priority].priority = priority;
    a2e0:	0c 4a       	mov	r10,	r12	;

0000a2e2 <.LVL6>:
    a2e2:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

0000a2e6 <.LVL7>:
    a2e6:	b0 12 9c b3 	call	#-19556	;#0xb39c

0000a2ea <.LVL8>:
    a2ea:	cc 4a 0c 8f 	mov.b	r10,	-28916(r12); 0x8f0c

0000a2ee <.Loc.80.1>:
    _threads[priority].entry = entry;
    a2ee:	0c 4a       	mov	r10,	r12	;
    a2f0:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a2f4:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a2f8:	8c 49 10 8f 	mov	r9,	-28912(r12); 0x8f10

0000a2fc <.Loc.81.1>:
    _threads[priority].next = entry;
    a2fc:	0c 4a       	mov	r10,	r12	;
    a2fe:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a302:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a306:	8c 49 12 8f 	mov	r9,	-28910(r12); 0x8f12

0000a30a <.Loc.82.1>:
    _threads[priority].state = THREAD_STOPPED;
    a30a:	0c 4a       	mov	r10,	r12	;
    a30c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a310:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a314:	bc 42 0e 8f 	mov	#8,	-28914(r12);r2 As==11, 0x8f0e

0000a318 <.Loc.85.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    a318:	0c 4a       	mov	r10,	r12	;
    a31a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a31e:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a322:	8c 47 16 8f 	mov	r7,	-28906(r12); 0x8f16

0000a326 <.Loc.86.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    a326:	0c 4a       	mov	r10,	r12	;
    a328:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a32c:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a330:	8c 48 18 8f 	mov	r8,	-28904(r12); 0x8f18

0000a334 <.Loc.87.1>:
    _threads[priority].buffer.idx = 0;
    a334:	0c 4a       	mov	r10,	r12	;
    a336:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a33a:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a33e:	cc 43 1a 8f 	mov.b	#0,	-28902(r12);r3 As==00, 0x8f1a

0000a342 <.Loc.88.1>:
    _threads[priority].buffer.size = size;
    a342:	0c 4a       	mov	r10,	r12	;
    a344:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a348:	b0 12 9c b3 	call	#-19556	;#0xb39c
    a34c:	9c 41 0a 00 	mov	10(r1),	-28900(r12);0x0000a, 0x8f1c
    a350:	1c 8f

0000a352 <.Loc.89.1>:
}
    a352:	37 17       	popm	#4,	r10	;16-bit words

0000a354 <.LCFI3>:
    a354:	30 41       	ret

0000a356 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    a356:	0a 15       	pushm	#1,	r10	;16-bit words

0000a358 <.LCFI4>:
    a358:	0a 4c       	mov	r12,	r10	;

0000a35a <.Loc.93.1>:
    __priority_remove(thread->priority, &_priorities);
    a35a:	3d 40 02 8f 	mov	#-28926,r13	;#0x8f02
    a35e:	6c 4c       	mov.b	@r12,	r12	;

0000a360 <.LVL17>:
    a360:	b0 12 0e af 	call	#-20722	;#0xaf0e

0000a364 <.Loc.94.1>:
    thread->state = THREAD_STOPPED;
    a364:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000a368 <.Loc.95.1>:
}
    a368:	0a 17       	popm	#1,	r10	;16-bit words

0000a36a <.LCFI5>:
    a36a:	30 41       	ret

0000a36c <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    a36c:	0a 15       	pushm	#1,	r10	;16-bit words

0000a36e <.LCFI6>:
    a36e:	0a 4c       	mov	r12,	r10	;

0000a370 <.Loc.99.1>:
    __priority_remove(thread->priority, &_priorities);
    a370:	3d 40 02 8f 	mov	#-28926,r13	;#0x8f02
    a374:	6c 4c       	mov.b	@r12,	r12	;

0000a376 <.LVL20>:
    a376:	b0 12 0e af 	call	#-20722	;#0xaf0e

0000a37a <.Loc.100.1>:
    thread->next = NULL;
    a37a:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

0000a37e <.Loc.101.1>:
    thread->state = THREAD_STOPPED;
    a37e:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

0000a382 <.Loc.102.1>:
}
    a382:	0a 17       	popm	#1,	r10	;16-bit words

0000a384 <.LCFI7>:
    a384:	30 41       	ret

0000a386 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    a386:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000a38a <.Loc.106.1>:
    return;
}
    a38a:	30 41       	ret

0000a38c <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    a38c:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

0000a390 <.Loc.112.1>:
    return;
}
    a390:	30 41       	ret

0000a392 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    a392:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000a396 <.Loc.118.1>:
    return;
}
    a396:	30 41       	ret

0000a398 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    a398:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

0000a39c <.Loc.123.1>:
    return;
}
    a39c:	30 41       	ret

0000a39e <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    a39e:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

0000a3a2 <.LVL27>:
    a3a2:	30 41       	ret

0000a3a4 <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    a3a4:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000a3a8 <.LVL29>:
    a3a8:	30 41       	ret

0000a3aa <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    a3aa:	0a 15       	pushm	#1,	r10	;16-bit words

0000a3ac <.LCFI8>:
    a3ac:	0a 4c       	mov	r12,	r10	;

0000a3ae <.Loc.136.1>:
    thread->next = thread->entry;
    a3ae:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    a3b2:	06 00

0000a3b4 <.Loc.137.1>:
    __priority_insert(thread->priority, &_priorities);
    a3b4:	3d 40 02 8f 	mov	#-28926,r13	;#0x8f02
    a3b8:	6c 4c       	mov.b	@r12,	r12	;

0000a3ba <.LVL31>:
    a3ba:	b0 12 ee ae 	call	#-20754	;#0xaeee

0000a3be <.Loc.138.1>:
    thread->state = TASK_READY;
    a3be:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

0000a3c2 <.Loc.139.1>:
}
    a3c2:	0a 17       	popm	#1,	r10	;16-bit words

0000a3c4 <.LCFI9>:
    a3c4:	30 41       	ret

0000a3c6 <__get_thread>:

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    return &_threads[priority];
    a3c6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    a3ca:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a3ce:	b0 12 9c b3 	call	#-19556	;#0xb39c

0000a3d2 <.LVL34>:
}
    a3d2:	3c 50 0c 8f 	add	#-28916,r12	;#0x8f0c
    a3d6:	30 41       	ret

0000a3d8 <__scheduler_run>:
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    a3d8:	b0 12 66 ac 	call	#-21402	;#0xac66

0000a3dc <.Loc.171.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    a3dc:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000a3e0 <.Loc.171.1>:
    __port_off(1, 3);
    a3e0:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000a3e4 <.LBB8>:
    if(_thread){
    a3e4:	82 93 00 8f 	cmp	#0,	&0x8f00	;r3 As==00
    a3e8:	04 24       	jz	$+10     	;abs 0xa3f2

0000a3ea <.Loc.157.1>:
        __tick(_thread);
    a3ea:	1c 42 00 8f 	mov	&0x8f00,r12	;0x8f00
    a3ee:	b0 12 7a a4 	call	#-23430	;#0xa47a

0000a3f2 <.L16>:
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

#ifdef RAISE_PIN
    __port_on(1, 3);
    a3f2:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000a3f6 <.Loc.184.1>:
    __port_off(1, 3);
    a3f6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000a3fa <.Loc.185.1>:
#endif

    __reboot_timers();
    a3fa:	b0 12 7e a5 	call	#-23170	;#0xa57e

0000a3fe <.L31>:
    // enable interrupts
    __enable_interrupt();
    a3fe:	03 43       	nop
    a400:	32 d2       	eint
    a402:	03 43       	nop

0000a404 <.L20>:

    while (1){
        switch (_sched_state){
    a404:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    a408:	0c 93       	cmp	#0,	r12	;r3 As==00
    a40a:	0e 24       	jz	$+30     	;abs 0xa428
    a40c:	1c 93       	cmp	#1,	r12	;r3 As==01
    a40e:	fa 23       	jnz	$-10     	;abs 0xa404

0000a410 <.L19>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    a410:	82 93 00 8f 	cmp	#0,	&0x8f00	;r3 As==00
    a414:	21 24       	jz	$+68     	;abs 0xa458

0000a416 <.Loc.207.1>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    a416:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000a41a <.Loc.207.1>:
#endif
                __tick(_thread);
    a41a:	1c 42 00 8f 	mov	&0x8f00,r12	;0x8f00
    a41e:	b0 12 7a a4 	call	#-23430	;#0xa47a

0000a422 <.Loc.211.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    a422:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000a426 <.Loc.212.1>:
                break;
    a426:	ee 3f       	jmp	$-34     	;abs 0xa404

0000a428 <.L18>:
            __port_on(1, 3);
    a428:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000a42c <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    a42c:	3c 40 02 8f 	mov	#-28926,r12	;#0x8f02
    a430:	b0 12 36 af 	call	#-20682	;#0xaf36
    a434:	4e 4c       	mov.b	r12,	r14	;
    a436:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000a43a <.LVL40>:
    return NULL;
    a43a:	4d 43       	clr.b	r13		;

0000a43c <.Loc.144.1>:
    if(idx)
    a43c:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    a43e:	07 24       	jz	$+16     	;abs 0xa44e

0000a440 <.Loc.145.1>:
        return &_threads[idx];
    a440:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    a444:	b0 12 9c b3 	call	#-19556	;#0xb39c

0000a448 <.LVL41>:
    a448:	0d 4c       	mov	r12,	r13	;
    a44a:	3d 50 0c 8f 	add	#-28916,r13	;#0x8f0c

0000a44e <.L21>:
            _thread = __next_thread();
    a44e:	82 4d 00 8f 	mov	r13,	&0x8f00	;

0000a452 <.Loc.201.1>:
            _sched_state = SCHED_BUSY;
    a452:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01
    a456:	dc 3f       	jmp	$-70     	;abs 0xa410

0000a458 <.L22>:
            }
            _sched_state = SCHED_SELECT;
    a458:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000a45c <.Loc.215.1>:
            __disable_interrupt();
    a45c:	32 c2       	dint
    a45e:	03 43       	nop

0000a460 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    a460:	3c 40 02 8f 	mov	#-28926,r12	;#0x8f02
    a464:	b0 12 36 af 	call	#-20682	;#0xaf36

0000a468 <.LVL42>:
    if(idx)
    a468:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    a46a:	cc 23       	jnz	$-102    	;abs 0xa404

0000a46c <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    a46c:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000a470 <.Loc.219.1>:
#endif
                __mcu_sleep();
    a470:	03 43       	nop
    a472:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    a476:	03 43       	nop

0000a478 <.Loc.222.1>:
                __enable_interrupt();
    a478:	c2 3f       	jmp	$-122    	;abs 0xa3fe

0000a47a <__tick>:

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    a47a:	1a 15       	pushm	#2,	r10	;16-bit words

0000a47c <.LCFI0>:
    a47c:	0a 4c       	mov	r12,	r10	;

0000a47e <.Loc.53.1>:
    void *buf;
    switch (thread->state)
    a47e:
0000a480 <L0^A>:
    a480:	02 00       	mova	@r0,	r2	;

0000a482 <.LVL1>:
    a482:	2c 93       	cmp	#2,	r12	;r3 As==10
    a484:	3f 24       	jz	$+128    	;abs 0xa504
    a486:	2c 92       	cmp	#4,	r12	;r2 As==10
    a488:	4d 24       	jz	$+156    	;abs 0xa524
    a48a:	1c 93       	cmp	#1,	r12	;r3 As==01
    a48c:	67 20       	jnz	$+208    	;abs 0xa55c

0000a48e <.LBB5>:
    __port_on(3,6);
    a48e:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    a492:	22 02

0000a494 <.Loc.40.1>:
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    a494:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

0000a498 <.Loc.43.1>:
    a498:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    a49c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    a49e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000a4a2 <.Loc.43.1>:
    a4a2:	5c 02       	rlam	#1,	r12	;
    a4a4:	0c 5a       	add	r10,	r12	;
    a4a6:	5f 02       	rlam	#1,	r15	;
    a4a8:	0f 5a       	add	r10,	r15	;
    a4aa:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    a4ae:	5e 03       	rrum	#1,	r14	;
    a4b0:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    a4b4:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    a4b8:	b0 12 40 ae 	call	#-20928	;#0xae40

0000a4bc <.Loc.45.1>:
    __port_off(3,6);
    a4bc:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    a4c0:	22 02

0000a4c2 <.LBE5>:
    {
    case TASK_READY:
        // refresh thread stack
        __prologue(thread);
#ifdef RAISE_PIN
        __port_on(1, 4);
    a4c2:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    a4c6:	02 02

0000a4c8 <.Loc.60.1>:
#endif
        // get thread buffer
        buf = thread->buffer.buf[thread->buffer._idx^1];
    a4c8:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    a4cc:	5c e3       	xor.b	#1,	r12	;r3 As==01
    a4ce:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000a4d2 <.Loc.63.1>:
    a4d2:	3c 50 05 00 	add	#5,	r12	;
    a4d6:	5c 02       	rlam	#1,	r12	;
    a4d8:	0c 5a       	add	r10,	r12	;
    a4da:	29 4c       	mov	@r12,	r9	;

0000a4dc <.LVL5>:
        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
    a4dc:	1d 4a 06 00 	mov	6(r10),	r13	;

0000a4e0 <.Loc.66.1>:
    a4e0:	1d 9a 04 00 	cmp	4(r10),	r13	;
    a4e4:	3d 20       	jnz	$+124    	;abs 0xa560

0000a4e6 <.LBB7>:
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
    a4e6:	0c 4a       	mov	r10,	r12	;
    a4e8:	b0 12 1a ad 	call	#-21222	;#0xad1a

0000a4ec <.LVL6>:
            // push event data to the entry task
            thread->next_temp = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    a4ec:	0d 4c       	mov	r12,	r13	;
    a4ee:	0c 49       	mov	r9,	r12	;

0000a4f0 <.LVL7>:
    a4f0:	1e 4a 04 00 	mov	4(r10),	r14	;
    a4f4:	8e 12       	call	r14		;

0000a4f6 <.L17>:
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    a4f6:	8a 4c 08 00 	mov	r12,	8(r10)	;

0000a4fa <.Loc.76.1>:
        }
        thread->state = TASK_PRECOMMIT;
    a4fa:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

0000a4fe <.Loc.78.1>:
#ifdef RAISE_PIN
        __port_off(1, 4);
    a4fe:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    a502:	02 02

0000a504 <.L2>:
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
    a504:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    a508:	22 02

0000a50a <.Loc.82.1>:
#endif
        // release any event which is popped by the task
        __release_event(thread);
    a50a:	0c 4a       	mov	r10,	r12	;
    a50c:	b0 12 48 ad 	call	#-21176	;#0xad48

0000a510 <.Loc.86.1>:
        thread->next = thread->next_temp;
    a510:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    a514:	06 00

0000a516 <.Loc.88.1>:
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
    a516:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    a51a:	5c e3       	xor.b	#1,	r12	;r3 As==01
    a51c:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

0000a520 <.Loc.89.1>:
        thread->state = TASK_COMMIT;
    a520:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

0000a524 <.L3>:
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
    a524:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    a528:	0e 00

0000a52a <.Loc.94.1>:
#ifdef RAISE_PIN
        __port_off(3,5);
    a52a:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    a52e:	22 02

0000a530 <.Loc.94.1>:
        __port_on(3,5);
    a530:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    a534:	22 02

0000a536 <.Loc.95.1>:
#endif

        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
    a536:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    a53a:	1b 20       	jnz	$+56     	;abs 0xa572

0000a53c <.Loc.101.1>:
        {
            __disable_interrupt();
    a53c:	32 c2       	dint
    a53e:	03 43       	nop

0000a540 <.Loc.103.1>:
            // check if there are any pending events
            if(!__has_events(thread)){
    a540:	0c 4a       	mov	r10,	r12	;
    a542:	b0 12 fc ac 	call	#-21252	;#0xacfc

0000a546 <.Loc.103.1>:
    a546:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    a548:	0e 20       	jnz	$+30     	;abs 0xa566

0000a54a <.Loc.105.1>:
                // suspend the thread if there are no pending events
                __stop_thread(thread);
    a54a:	0c 4a       	mov	r10,	r12	;
    a54c:	b0 12 56 a3 	call	#-23722	;#0xa356

0000a550 <.L9>:
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
    a550:	03 43       	nop
    a552:	32 d2       	eint
    a554:	03 43       	nop

0000a556 <.L10>:
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    a556:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    a55a:	22 02

0000a55c <.L1>:
#endif
    }
}
    a55c:	19 17       	popm	#2,	r10	;16-bit words

0000a55e <.LCFI1>:
    a55e:	30 41       	ret

0000a560 <.L5>:
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    a560:	2c 4c       	mov	@r12,	r12	;
    a562:	8d 12       	call	r13		;
    a564:	c8 3f       	jmp	$-110    	;abs 0xa4f6

0000a566 <.L8>:
                thread->next = thread->entry;
    a566:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    a56a:	06 00

0000a56c <.Loc.111.1>:
                thread->state = TASK_READY;
    a56c:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    a570:	ef 3f       	jmp	$-32     	;abs 0xa550

0000a572 <.L7>:
            thread->state = TASK_READY;
    a572:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    a576:	ef 3f       	jmp	$-32     	;abs 0xa556

0000a578 <__timers_init>:
    a578:	b0 12 1a b0 	call	#-20454	;#0xb01a

0000a57c <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    a57c:	30 41       	ret

0000a57e <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    a57e:	30 41       	ret

0000a580 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    a580:	2a 15       	pushm	#3,	r10	;16-bit words

0000a582 <.LCFI0>:
    a582:	48 4c       	mov.b	r12,	r8	;

0000a584 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a584:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

0000a588 <.Loc.101.1>:
    a588:	49 43       	clr.b	r9		;

0000a58a <.L5>:
    {
        if (wkup_timing[i].thread_id == thread_id) {
    a58a:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    a58e:	07 20       	jnz	$+16     	;abs 0xa59e

0000a590 <.Loc.104.1>:
            wkup_timing[i].status = NOT_USED;
    a590:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

0000a594 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    a594:	4e 43       	clr.b	r14		;
    a596:	4d 43       	clr.b	r13		;
    a598:	4c 49       	mov.b	r9,	r12	;
    a59a:	b0 12 d8 b0 	call	#-20264	;#0xb0d8

0000a59e <.L4>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a59e:	4c 49       	mov.b	r9,	r12	;
    a5a0:	5c 53       	inc.b	r12		;
    a5a2:	49 4c       	mov.b	r12,	r9	;

0000a5a4 <.LVL5>:
    a5a4:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000a5a8 <.Loc.101.1>:
    a5a8:	7c 90 03 00 	cmp.b	#3,	r12	;
    a5ac:	ee 23       	jnz	$-34     	;abs 0xa58a

0000a5ae <.Loc.109.1>:

        }
    }
}
    a5ae:	28 17       	popm	#3,	r10	;16-bit words

0000a5b0 <.LCFI1>:
    a5b0:	30 41       	ret

0000a5b2 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    a5b2:	1a 15       	pushm	#2,	r10	;16-bit words

0000a5b4 <.LCFI2>:
    a5b4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000a5b8 <.LCFI3>:
    a5b8:	49 43       	clr.b	r9		;

0000a5ba <.L8>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    a5ba:	0a 49       	mov	r9,	r10	;
    a5bc:	5a 06       	rlam	#2,	r10	;
    a5be:	0a 59       	add	r9,	r10	;
    a5c0:	5a 02       	rlam	#1,	r10	;
    a5c2:	3a 50 34 1c 	add	#7220,	r10	;#0x1c34
    a5c6:	4e 43       	clr.b	r14		;
    a5c8:	4d 49       	mov.b	r9,	r13	;
    a5ca:	0c 41       	mov	r1,	r12	;
    a5cc:	b0 12 62 b2 	call	#-19870	;#0xb262
    a5d0:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    a5d4:	0d 41       	mov	r1,	r13	;
    a5d6:	0c 4a       	mov	r10,	r12	;
    a5d8:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000a5dc <.LVL9>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a5dc:	19 53       	inc	r9		;

0000a5de <.Loc.115.1>:
    a5de:	39 90 03 00 	cmp	#3,	r9	;
    a5e2:	eb 23       	jnz	$-40     	;abs 0xa5ba

0000a5e4 <.Loc.120.1>:
    }

}
    a5e4:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000a5e8 <.LCFI4>:
    a5e8:	19 17       	popm	#2,	r10	;16-bit words

0000a5ea <.LCFI5>:
    a5ea:	30 41       	ret

0000a5ec <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    a5ec:	4a 15       	pushm	#5,	r10	;16-bit words

0000a5ee <.LCFI6>:

    uint8_t i,first = 1;

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a5ee:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

0000a5f2 <.Loc.125.1>:
    uint8_t i,first = 1;
    a5f2:	5f 43       	mov.b	#1,	r15	;r3 As==01

0000a5f4 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a5f4:	49 43       	clr.b	r9		;

0000a5f6 <.L23>:
    {

        if (wkup_timing[i].status == USED)
    a5f6:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    a5fa:	56 20       	jnz	$+174    	;abs 0xa6a8

0000a5fc <.Loc.133.1>:
        {

            if (first)
    a5fc:	16 4a 04 00 	mov	4(r10),	r6	;
    a600:	17 4a 06 00 	mov	6(r10),	r7	;

0000a604 <.Loc.133.1>:
    a604:	0f 93       	cmp	#0,	r15	;r3 As==00
    a606:	05 24       	jz	$+12     	;abs 0xa612

0000a608 <.Loc.135.1>:
            {
                min_wkup = wkup_timing[i].data;
    a608:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

0000a60c <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    a60c:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    a610:	5c 1c

0000a612 <.L12>:
                first = 0;
            }


            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    a612:	b0 12 e6 af 	call	#-20506	;#0xafe6

0000a616 <.Loc.141.1>:
    a616:	0e 46       	mov	r6,	r14	;
    a618:	0f 47       	mov	r7,	r15	;
    a61a:	0e 8c       	sub	r12,	r14	;
    a61c:	0f 7d       	subc	r13,	r15	;

0000a61e <.Loc.141.1>:
    a61e:	8a 4e 04 00 	mov	r14,	4(r10)	;
    a622:	8a 4f 06 00 	mov	r15,	6(r10)	;

0000a626 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    a626:	4d 43       	clr.b	r13		;
    a628:	4c 49       	mov.b	r9,	r12	;
    a62a:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000a62e <.Loc.144.1>:

            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    a62e:	1c 4a 04 00 	mov	4(r10),	r12	;
    a632:	1d 4a 06 00 	mov	6(r10),	r13	;

0000a636 <.Loc.144.1>:
    a636:	07 4d       	mov	r13,	r7	;
    a638:	0d 93       	cmp	#0,	r13	;r3 As==00
    a63a:	50 34       	jge	$+162    	;abs 0xa6dc

0000a63c <.Loc.144.1>:
    a63c:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    a640:	06 43       	clr	r6		;
    a642:	06 8e       	sub	r14,	r6	;
    a644:	0e 46       	mov	r6,	r14	;
    a646:	0f 46       	mov	r6,	r15	;
    a648:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000a64c <.Loc.144.1>:
    a64c:	0f 9d       	cmp	r13,	r15	;
    a64e:	04 38       	jl	$+10     	;abs 0xa658

0000a650 <.Loc.144.1>:
    a650:	0d 9f       	cmp	r15,	r13	;
    a652:	20 20       	jnz	$+66     	;abs 0xa694
    a654:	06 9c       	cmp	r12,	r6	;
    a656:	1e 2c       	jc	$+62     	;abs 0xa694

0000a658 <.L32>:
            {
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    a658:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    a65c:	06 48       	mov	r8,	r6	;
    a65e:	07 43       	clr	r7		;

0000a660 <.Loc.146.1>:
    a660:	4e 43       	clr.b	r14		;
    a662:	4f 43       	clr.b	r15		;
    a664:	0e 8c       	sub	r12,	r14	;
    a666:	0f 7d       	subc	r13,	r15	;

0000a668 <.Loc.146.1>:
    a668:	0f 93       	cmp	#0,	r15	;r3 As==00
    a66a:	0c 38       	jl	$+26     	;abs 0xa684
    a66c:	0f 93       	cmp	#0,	r15	;r3 As==00
    a66e:	02 20       	jnz	$+6      	;abs 0xa674
    a670:	0e 96       	cmp	r6,	r14	;
    a672:	08 28       	jnc	$+18     	;abs 0xa684

0000a674 <.L33>:
    a674:	06 9e       	cmp	r14,	r6	;
    a676:	17 20       	jnz	$+48     	;abs 0xa6a6
    a678:	0f 93       	cmp	#0,	r15	;r3 As==00
    a67a:	15 20       	jnz	$+44     	;abs 0xa6a6

0000a67c <.Loc.146.1>:
    a67c:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    a680:	02 00
    a682:	12 2c       	jc	$+38     	;abs 0xa6a8

0000a684 <.L17>:
                {
                    min_wkup = -wkup_timing[i].data;
    a684:	4e 43       	clr.b	r14		;
    a686:	0e 8c       	sub	r12,	r14	;
    a688:	82 4e 5a 1c 	mov	r14,	&0x1c5a	;

0000a68c <.L40>:
            if (wkup_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
                {
                    min_wkup = wkup_timing[i].data;
                    nxt_wkup = wkup_timing[i].thread_id;
    a68c:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    a690:	5c 1c
    a692:	09 3c       	jmp	$+20     	;abs 0xa6a6

0000a694 <.L15>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    a694:	07 4d       	mov	r13,	r7	;
    a696:	0d 9f       	cmp	r15,	r13	;
    a698:	04 38       	jl	$+10     	;abs 0xa6a2
    a69a:	0f 9d       	cmp	r13,	r15	;
    a69c:	04 20       	jnz	$+10     	;abs 0xa6a6
    a69e:	0c 96       	cmp	r6,	r12	;
    a6a0:	02 2c       	jc	$+6      	;abs 0xa6a6

0000a6a2 <.L34>:
    a6a2:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

0000a6a6 <.L30>:
    a6a6:	4f 43       	clr.b	r15		;

0000a6a8 <.L11>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a6a8:	4c 49       	mov.b	r9,	r12	;
    a6aa:	5c 53       	inc.b	r12		;
    a6ac:	49 4c       	mov.b	r12,	r9	;

0000a6ae <.LVL17>:
    a6ae:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000a6b2 <.Loc.127.1>:
    a6b2:	7c 90 03 00 	cmp.b	#3,	r12	;
    a6b6:	9f 23       	jnz	$-192    	;abs 0xa5f6

0000a6b8 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    a6b8:	0f 93       	cmp	#0,	r15	;r3 As==00
    a6ba:	2d 20       	jnz	$+92     	;abs 0xa716

0000a6bc <.Loc.166.1>:
    {
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    a6bc:	5d 42 5c 1c 	mov.b	&0x1c5c,r13	;0x1c5c
    a6c0:	4c 43       	clr.b	r12		;

0000a6c2 <.LVL18>:
    a6c2:	b0 12 1e b1 	call	#-20194	;#0xb11e

0000a6c6 <.LVL19>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    a6c6:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    a6ca:	4c 43       	clr.b	r12		;
    a6cc:	b0 12 2c b1 	call	#-20180	;#0xb12c

0000a6d0 <.Loc.171.1>:
        //set the new pending ISR timer.
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    a6d0:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    a6d4:	b0 12 5c af 	call	#-20644	;#0xaf5c

0000a6d8 <.L10>:
    }
    //no pending wake up timer was found.
    else stop_timer();


}
    a6d8:	46 17       	popm	#5,	r10	;16-bit words

0000a6da <.LCFI7>:
    a6da:	30 41       	ret

0000a6dc <.L13>:
            if (wkup_timing[i].data > 0)
    a6dc:	0e 4c       	mov	r12,	r14	;
    a6de:	0e dd       	bis	r13,	r14	;
    a6e0:	4f 43       	clr.b	r15		;
    a6e2:	0e 93       	cmp	#0,	r14	;r3 As==00
    a6e4:	e1 27       	jz	$-60     	;abs 0xa6a8

0000a6e6 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    a6e6:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    a6ea:	0e 48       	mov	r8,	r14	;
    a6ec:	0f 43       	clr	r15		;

0000a6ee <.Loc.155.1>:
    a6ee:	0d 93       	cmp	#0,	r13	;r3 As==00
    a6f0:	0f 38       	jl	$+32     	;abs 0xa710
    a6f2:	0d 93       	cmp	#0,	r13	;r3 As==00
    a6f4:	03 20       	jnz	$+8      	;abs 0xa6fc
    a6f6:	07 4c       	mov	r12,	r7	;
    a6f8:	0c 9e       	cmp	r14,	r12	;
    a6fa:	0a 28       	jnc	$+22     	;abs 0xa710

0000a6fc <.L35>:
    a6fc:	07 4c       	mov	r12,	r7	;
    a6fe:	0c 9e       	cmp	r14,	r12	;
    a700:	d2 23       	jnz	$-90     	;abs 0xa6a6
    a702:	0d 9f       	cmp	r15,	r13	;
    a704:	d0 23       	jnz	$-94     	;abs 0xa6a6
    a706:	4f 43       	clr.b	r15		;

0000a708 <.Loc.155.1>:
    a708:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    a70c:	02 00
    a70e:	cc 2f       	jc	$-102    	;abs 0xa6a8

0000a710 <.L21>:
                    min_wkup = wkup_timing[i].data;
    a710:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;
    a714:	bb 3f       	jmp	$-136    	;abs 0xa68c

0000a716 <.L24>:
    else stop_timer();
    a716:	b0 12 4c af 	call	#-20660	;#0xaf4c

0000a71a <.LVL24>:
}
    a71a:	de 3f       	jmp	$-66     	;abs 0xa6d8

0000a71c <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    a71c:	2a 15       	pushm	#3,	r10	;16-bit words

0000a71e <.LCFI9>:
    a71e:	21 83       	decd	r1		;

0000a720 <.LCFI10>:
    a720:	49 4c       	mov.b	r12,	r9	;

0000a722 <.Loc.182.1>:
    uint8_t i,cmpl = 0;

    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();
    a722:	81 4d 00 00 	mov	r13,	0(r1)	;
    a726:	b0 12 b2 a5 	call	#-23118	;#0xa5b2

0000a72a <.LVL27>:

    //init the timer
    //TODO:check if needed
    stop_timer();
    a72a:	b0 12 4c af 	call	#-20660	;#0xaf4c

0000a72e <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    a72e:	2e 41       	mov	@r1,	r14	;
    a730:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    a734:	22 24       	jz	$+70     	;abs 0xa77a

0000a736 <.Loc.192.1>:
    a736:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    a73a:	41 24       	jz	$+132    	;abs 0xa7be

0000a73c <.Loc.192.1>:
    a73c:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    a740:	41 24       	jz	$+132    	;abs 0xa7c4

0000a742 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    a742:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    a746:	82 43 4e 1c 	mov	#0,	&0x1c4e	;r3 As==00

0000a74a <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    a74a:	4f 43       	clr.b	r15		;
    a74c:	4d 43       	clr.b	r13		;
    a74e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a750:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000a754 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    a754:	c2 49 4a 1c 	mov.b	r9,	&0x1c4a	;

0000a758 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    a758:	4e 49       	mov.b	r9,	r14	;
    a75a:	4d 43       	clr.b	r13		;
    a75c:	7c 40 03 00 	mov.b	#3,	r12	;
    a760:	b0 12 8e b0 	call	#-20338	;#0xb08e

0000a764 <.L47>:
        refresh_wkup_timers();
    a764:	b0 12 ec a5 	call	#-23060	;#0xa5ec

0000a768 <.Loc.222.1>:
        refresh_wkup_timers();
    }

    _pers_timer_update_lock(WKUP);
    a768:	4c 43       	clr.b	r12		;
    a76a:	b0 12 3a b1 	call	#-20166	;#0xb13a

0000a76e <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    a76e:	4c 43       	clr.b	r12		;
    a770:	b0 12 20 b2 	call	#-19936	;#0xb220

0000a774 <.Loc.224.1>:
}
    a774:	21 53       	incd	r1		;

0000a776 <.LCFI11>:
    a776:	28 17       	popm	#3,	r10	;16-bit words

0000a778 <.LCFI12>:
    a778:	30 41       	ret

0000a77a <.L44>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a77a:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

0000a77e <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    a77e:	0d 4a       	mov	r10,	r13	;

0000a780 <.L42>:
            wkup_timing[i].data = ticks;
    a780:	0c 4d       	mov	r13,	r12	;
    a782:	5c 06       	rlam	#2,	r12	;
    a784:	0c 5d       	add	r13,	r12	;
    a786:	5c 02       	rlam	#1,	r12	;
    a788:	08 4c       	mov	r12,	r8	;
    a78a:	8c 4e 38 1c 	mov	r14,	7224(r12); 0x1c38
    a78e:	8c 43 3a 1c 	mov	#0,	7226(r12);r3 As==00, 0x1c3a

0000a792 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    a792:	4f 43       	clr.b	r15		;
    a794:	4d 43       	clr.b	r13		;
    a796:	4c 4a       	mov.b	r10,	r12	;
    a798:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000a79c <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    a79c:	c8 49 36 1c 	mov.b	r9,	7222(r8); 0x1c36

0000a7a0 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    a7a0:	4e 49       	mov.b	r9,	r14	;
    a7a2:	4d 43       	clr.b	r13		;
    a7a4:	4c 4a       	mov.b	r10,	r12	;
    a7a6:	b0 12 8e b0 	call	#-20338	;#0xb08e

0000a7aa <.Loc.200.1>:
            wkup_timing[i].status = USED;
    a7aa:	98 43 34 1c 	mov	#1,	7220(r8);r3 As==01, 0x1c34

0000a7ae <.Loc.196.1>:
            wkup_timing[i].data = ticks;
    a7ae:	38 50 34 1c 	add	#7220,	r8	;#0x1c34

0000a7b2 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    a7b2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    a7b4:	4d 43       	clr.b	r13		;
    a7b6:	4c 4a       	mov.b	r10,	r12	;
    a7b8:	b0 12 d8 b0 	call	#-20264	;#0xb0d8
    a7bc:	d3 3f       	jmp	$-88     	;abs 0xa764

0000a7be <.L45>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a7be:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000a7c0 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    a7c0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    a7c2:	de 3f       	jmp	$-66     	;abs 0xa780

0000a7c4 <.L46>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    a7c4:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000a7c6 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    a7c6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a7c8:	db 3f       	jmp	$-72     	;abs 0xa780

0000a7ca <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    a7ca:	4d 4c       	mov.b	r12,	r13	;

0000a7cc <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    a7cc:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    a7d0:	13 24       	jz	$+40     	;abs 0xa7f8

0000a7d2 <.Loc.237.1>:
    a7d2:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    a7d6:	13 24       	jz	$+40     	;abs 0xa7fe

0000a7d8 <.Loc.237.1>:
    a7d8:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    a7dc:	0c 20       	jnz	$+26     	;abs 0xa7f6

0000a7de <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    a7de:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000a7e0 <.LVL48>:
        if (xpr_timing[i].thread_id == thread_id){
    a7e0:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000a7e2 <.L49>:
            xpr_timing[i].status = NOT_USED;
    a7e2:	0d 4e       	mov	r14,	r13	;

0000a7e4 <.LVL50>:
    a7e4:	5d 06       	rlam	#2,	r13	;
    a7e6:	0d 5e       	add	r14,	r13	;
    a7e8:	5d 02       	rlam	#1,	r13	;
    a7ea:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000a7ee <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    a7ee:	4e 43       	clr.b	r14		;
    a7f0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a7f2:	b0 12 d8 b0 	call	#-20264	;#0xb0d8

0000a7f6 <.L48>:
            break;
        }
    }

}
    a7f6:	30 41       	ret

0000a7f8 <.L51>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    a7f8:	4c 43       	clr.b	r12		;

0000a7fa <.LVL53>:
        if (xpr_timing[i].thread_id == thread_id){
    a7fa:	4e 43       	clr.b	r14		;
    a7fc:	f2 3f       	jmp	$-26     	;abs 0xa7e2

0000a7fe <.L52>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    a7fe:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a800 <.LVL55>:
        if (xpr_timing[i].thread_id == thread_id){
    a800:	5e 43       	mov.b	#1,	r14	;r3 As==01
    a802:	ef 3f       	jmp	$-32     	;abs 0xa7e2

0000a804 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    a804:	1a 15       	pushm	#2,	r10	;16-bit words

0000a806 <.LCFI14>:
    a806:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000a80a <.LCFI15>:
    a80a:	49 43       	clr.b	r9		;

0000a80c <.L54>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    a80c:	0a 49       	mov	r9,	r10	;
    a80e:	5a 06       	rlam	#2,	r10	;
    a810:	0a 59       	add	r9,	r10	;
    a812:	5a 02       	rlam	#1,	r10	;
    a814:	3a 50 16 1c 	add	#7190,	r10	;#0x1c16
    a818:	6e 43       	mov.b	#2,	r14	;r3 As==10
    a81a:	4d 49       	mov.b	r9,	r13	;
    a81c:	0c 41       	mov	r1,	r12	;
    a81e:	b0 12 62 b2 	call	#-19870	;#0xb262
    a822:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    a826:	0d 41       	mov	r1,	r13	;
    a828:	0c 4a       	mov	r10,	r12	;
    a82a:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000a82e <.LVL59>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    a82e:	19 53       	inc	r9		;

0000a830 <.Loc.252.1>:
    a830:	39 90 03 00 	cmp	#3,	r9	;
    a834:	eb 23       	jnz	$-40     	;abs 0xa80c

0000a836 <.Loc.257.1>:
    }

}
    a836:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000a83a <.LCFI16>:
    a83a:	19 17       	popm	#2,	r10	;16-bit words

0000a83c <.LCFI17>:
    a83c:	30 41       	ret

0000a83e <refresh_xpr_timers>:

void refresh_xpr_timers(){
    a83e:	6a 15       	pushm	#7,	r10	;16-bit words

0000a840 <.LCFI18>:
    a840:	47 43       	clr.b	r7		;

0000a842 <.Loc.261.1>:

    uint8_t i,first = 1;
    uint8_t nxt_xpr;
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    a842:	3a 40 16 1c 	mov	#7190,	r10	;#0x1c16

0000a846 <.Loc.261.1>:
    uint8_t i,first = 1;
    a846:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000a848 <.Loc.265.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    a848:	46 43       	clr.b	r6		;

0000a84a <.L64>:
    {

        if (xpr_timing[i].status == USED)
    a84a:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    a84e:	4a 20       	jnz	$+150    	;abs 0xa8e4

0000a850 <.Loc.271.1>:
        {

            if (first)
    a850:	14 4a 04 00 	mov	4(r10),	r4	;
    a854:	15 4a 06 00 	mov	6(r10),	r5	;

0000a858 <.Loc.271.1>:
    a858:	0c 93       	cmp	#0,	r12	;r3 As==00
    a85a:	04 24       	jz	$+10     	;abs 0xa864

0000a85c <.LVL63>:
            {
                min_xpr = xpr_timing[i].data;
                nxt_xpr = xpr_timing[i].thread_id;
    a85c:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000a860 <.LVL64>:
                min_xpr = xpr_timing[i].data;
    a860:	09 44       	mov	r4,	r9	;
    a862:	08 45       	mov	r5,	r8	;

0000a864 <.L58>:
                first = 0;
            }

            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    a864:	b0 12 e6 af 	call	#-20506	;#0xafe6

0000a868 <.Loc.278.1>:
    a868:	0e 44       	mov	r4,	r14	;
    a86a:	0f 45       	mov	r5,	r15	;
    a86c:	0e 8c       	sub	r12,	r14	;
    a86e:	0f 7d       	subc	r13,	r15	;

0000a870 <.Loc.278.1>:
    a870:	8a 4e 04 00 	mov	r14,	4(r10)	;
    a874:	8a 4f 06 00 	mov	r15,	6(r10)	;

0000a878 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    a878:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a87a:	4c 46       	mov.b	r6,	r12	;
    a87c:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000a880 <.Loc.281.1>:

            if (xpr_timing[i].data <= 0)
    a880:	4c 43       	clr.b	r12		;
    a882:	1c 9a 06 00 	cmp	6(r10),	r12	;
    a886:	10 38       	jl	$+34     	;abs 0xa8a8
    a888:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    a88c:	03 20       	jnz	$+8      	;abs 0xa894
    a88e:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    a892:	0a 20       	jnz	$+22     	;abs 0xa8a8

0000a894 <.L70>:
            {
                //evict thread
                //TODO:fix bug to disable ISR
                //TODO:find a more elegant way??
                //__stop_thread(__get_thread(xpr_timing[i].thread_id));
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    a894:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    a898:	b0 12 c6 a3 	call	#-23610	;#0xa3c6
    a89c:	b0 12 6c a3 	call	#-23700	;#0xa36c

0000a8a0 <.Loc.289.1>:
                //update struct
                clear_xpr_status(xpr_timing[i].thread_id);
    a8a0:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    a8a4:	b0 12 ca a7 	call	#-22582	;#0xa7ca

0000a8a8 <.L59>:
            }

            if (xpr_timing[i].data > 0)
    a8a8:	1e 4a 04 00 	mov	4(r10),	r14	;
    a8ac:	1d 4a 06 00 	mov	6(r10),	r13	;

0000a8b0 <.Loc.292.1>:
    a8b0:	4c 43       	clr.b	r12		;
    a8b2:	0c 9d       	cmp	r13,	r12	;
    a8b4:	04 38       	jl	$+10     	;abs 0xa8be
    a8b6:	0d 93       	cmp	#0,	r13	;r3 As==00
    a8b8:	14 20       	jnz	$+42     	;abs 0xa8e2
    a8ba:	0e 93       	cmp	#0,	r14	;r3 As==00
    a8bc:	12 24       	jz	$+38     	;abs 0xa8e2

0000a8be <.L71>:
            {   //TODO:priority convention
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    a8be:	0d 98       	cmp	r8,	r13	;
    a8c0:	0c 38       	jl	$+26     	;abs 0xa8da
    a8c2:	08 9d       	cmp	r13,	r8	;
    a8c4:	02 20       	jnz	$+6      	;abs 0xa8ca
    a8c6:	0e 99       	cmp	r9,	r14	;
    a8c8:	08 28       	jnc	$+18     	;abs 0xa8da

0000a8ca <.L72>:
    a8ca:	4c 43       	clr.b	r12		;

0000a8cc <.Loc.294.1>:
    a8cc:	0e 99       	cmp	r9,	r14	;
    a8ce:	0a 20       	jnz	$+22     	;abs 0xa8e4
    a8d0:	0d 98       	cmp	r8,	r13	;
    a8d2:	08 20       	jnz	$+18     	;abs 0xa8e4

0000a8d4 <.Loc.294.1>:
    a8d4:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    a8d8:	05 2c       	jc	$+12     	;abs 0xa8e4

0000a8da <.L62>:
                {
                    min_xpr = xpr_timing[i].data;
                    nxt_xpr = xpr_timing[i].thread_id;
    a8da:	57 4a 02 00 	mov.b	2(r10),	r7	;

0000a8de <.LVL72>:
    a8de:	09 4e       	mov	r14,	r9	;
    a8e0:	08 4d       	mov	r13,	r8	;

0000a8e2 <.L67>:
    a8e2:	4c 43       	clr.b	r12		;

0000a8e4 <.L57>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    a8e4:	4d 46       	mov.b	r6,	r13	;
    a8e6:	5d 53       	inc.b	r13		;
    a8e8:	46 4d       	mov.b	r13,	r6	;

0000a8ea <.LVL75>:
    a8ea:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000a8ee <.Loc.265.1>:
    a8ee:	7d 90 03 00 	cmp.b	#3,	r13	;
    a8f2:	ab 23       	jnz	$-168    	;abs 0xa84a

0000a8f4 <.Loc.303.1>:
                }
            }
       }
    }

    if (!first)
    a8f4:	0c 93       	cmp	#0,	r12	;r3 As==00
    a8f6:	0d 20       	jnz	$+28     	;abs 0xa912

0000a8f8 <.Loc.304.1>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    a8f8:	4d 47       	mov.b	r7,	r13	;

0000a8fa <.LVL76>:
    a8fa:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000a8fc <.LVL77>:
    a8fc:	b0 12 1e b1 	call	#-20194	;#0xb11e

0000a900 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    a900:	0d 49       	mov	r9,	r13	;
    a902:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a904:	b0 12 2c b1 	call	#-20180	;#0xb12c

0000a908 <.Loc.308.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    a908:	0c 49       	mov	r9,	r12	;
    a90a:	b0 12 72 af 	call	#-20622	;#0xaf72

0000a90e <.L56>:
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();

}
    a90e:	64 17       	popm	#7,	r10	;16-bit words

0000a910 <.LCFI19>:
    a910:	30 41       	ret

0000a912 <.L65>:
    else stop_timer_xpr();
    a912:	b0 12 88 af 	call	#-20600	;#0xaf88

0000a916 <.LVL82>:
}
    a916:	fb 3f       	jmp	$-8      	;abs 0xa90e

0000a918 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    a918:	5a 15       	pushm	#6,	r10	;16-bit words

0000a91a <.LCFI21>:
    a91a:	48 4c       	mov.b	r12,	r8	;
    a91c:	09 4d       	mov	r13,	r9	;
    a91e:	07 4e       	mov	r14,	r7	;

0000a920 <.Loc.318.1>:

    uint8_t i,cmpl = 0;

    //__set_xpr_timer(__get_thread(thread_id), ticks);

    unpack_xpr_to_local();
    a920:	b0 12 04 a8 	call	#-22524	;#0xa804

0000a924 <.LVL85>:

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    a924:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    a928:	1b 24       	jz	$+56     	;abs 0xa960

0000a92a <.Loc.324.1>:
    a92a:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    a92e:	43 24       	jz	$+136    	;abs 0xa9b6

0000a930 <.Loc.324.1>:
    a930:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    a934:	43 24       	jz	$+136    	;abs 0xa9bc

0000a936 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    a936:	0e 49       	mov	r9,	r14	;
    a938:	0f 47       	mov	r7,	r15	;
    a93a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a93c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a93e:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000a942 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    a942:	4e 48       	mov.b	r8,	r14	;
    a944:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a946:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a948:	b0 12 8e b0 	call	#-20338	;#0xb08e

0000a94c <.L83>:
        refresh_xpr_timers();
    a94c:	b0 12 3e a8 	call	#-22466	;#0xa83e

0000a950 <.Loc.352.1>:
        refresh_xpr_timers();
    }

    _pers_timer_update_lock(XPR);
    a950:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a952:	b0 12 3a b1 	call	#-20166	;#0xb13a

0000a956 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    a956:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a958:	b0 12 20 b2 	call	#-19936	;#0xb220

0000a95c <.Loc.354.1>:
}
    a95c:	55 17       	popm	#6,	r10	;16-bit words

0000a95e <.LCFI22>:
    a95e:	30 41       	ret

0000a960 <.L80>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    a960:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000a964 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    a964:	06 4a       	mov	r10,	r6	;

0000a966 <.L78>:
            xpr_timing[i].data = ticks + __get_time();
    a966:	35 40 e6 af 	mov	#-20506,r5	;#0xafe6
    a96a:	85 12       	call	r5		;

0000a96c <.Loc.328.1>:
    a96c:	0e 46       	mov	r6,	r14	;
    a96e:	5e 06       	rlam	#2,	r14	;
    a970:	0e 56       	add	r6,	r14	;
    a972:	5e 02       	rlam	#1,	r14	;
    a974:	06 4e       	mov	r14,	r6	;

0000a976 <.Loc.328.1>:
    a976:	0c 59       	add	r9,	r12	;
    a978:	8e 4c 1a 1c 	mov	r12,	7194(r14); 0x1c1a
    a97c:	0d 67       	addc	r7,	r13	;
    a97e:	8e 4d 1c 1c 	mov	r13,	7196(r14); 0x1c1c

0000a982 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    a982:	85 12       	call	r5		;

0000a984 <.Loc.329.1>:
    a984:	0e 4c       	mov	r12,	r14	;
    a986:	0e 59       	add	r9,	r14	;
    a988:	0f 4d       	mov	r13,	r15	;
    a98a:	0f 67       	addc	r7,	r15	;
    a98c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a98e:	4c 4a       	mov.b	r10,	r12	;
    a990:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000a994 <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    a994:	c6 48 18 1c 	mov.b	r8,	7192(r6); 0x1c18

0000a998 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    a998:	4e 48       	mov.b	r8,	r14	;
    a99a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a99c:	4c 4a       	mov.b	r10,	r12	;
    a99e:	b0 12 8e b0 	call	#-20338	;#0xb08e

0000a9a2 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    a9a2:	96 43 16 1c 	mov	#1,	7190(r6);r3 As==01, 0x1c16

0000a9a6 <.Loc.328.1>:
            xpr_timing[i].data = ticks + __get_time();
    a9a6:	36 50 16 1c 	add	#7190,	r6	;#0x1c16

0000a9aa <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    a9aa:	5e 43       	mov.b	#1,	r14	;r3 As==01
    a9ac:	6d 43       	mov.b	#2,	r13	;r3 As==10
    a9ae:	4c 4a       	mov.b	r10,	r12	;
    a9b0:	b0 12 d8 b0 	call	#-20264	;#0xb0d8
    a9b4:	cb 3f       	jmp	$-104    	;abs 0xa94c

0000a9b6 <.L81>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    a9b6:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000a9b8 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    a9b8:	56 43       	mov.b	#1,	r6	;r3 As==01
    a9ba:	d5 3f       	jmp	$-84     	;abs 0xa966

0000a9bc <.L82>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    a9bc:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000a9be <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    a9be:	66 43       	mov.b	#2,	r6	;r3 As==10
    a9c0:	d2 3f       	jmp	$-90     	;abs 0xa966

0000a9c2 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    a9c2:	0a 15       	pushm	#1,	r10	;16-bit words

0000a9c4 <.LCFI24>:
    a9c4:	4a 4c       	mov.b	r12,	r10	;

0000a9c6 <.Loc.361.1>:

    //__set_xpr_timer(__get_thread(thread_id),0);

    unpack_xpr_to_local();
    a9c6:	b0 12 04 a8 	call	#-22524	;#0xa804

0000a9ca <.LVL104>:

    clear_xpr_status(thread_id);
    a9ca:	4c 4a       	mov.b	r10,	r12	;
    a9cc:	b0 12 ca a7 	call	#-22582	;#0xa7ca

0000a9d0 <.Loc.366.1>:

    //TODO:care infinite loop?
    refresh_xpr_timers();
    a9d0:	b0 12 3e a8 	call	#-22466	;#0xa83e

0000a9d4 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    a9d4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a9d6:	b0 12 3a b1 	call	#-20166	;#0xb13a

0000a9da <.Loc.369.1>:
    _pers_timer_commit(XPR);
    a9da:	6c 43       	mov.b	#2,	r12	;r3 As==10
    a9dc:	b0 12 20 b2 	call	#-19936	;#0xb220

0000a9e0 <.Loc.371.1>:

}
    a9e0:	0a 17       	popm	#1,	r10	;16-bit words

0000a9e2 <.LCFI25>:
    a9e2:	30 41       	ret

0000a9e4 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    a9e4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000a9e8 <.LCFI26>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    a9e8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    a9ea:	4d 43       	clr.b	r13		;
    a9ec:	0c 41       	mov	r1,	r12	;
    a9ee:	b0 12 62 b2 	call	#-19870	;#0xb262
    a9f2:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    a9f6:	0d 41       	mov	r1,	r13	;
    a9f8:	3c 40 0c 1c 	mov	#7180,	r12	;#0x1c0c
    a9fc:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000aa00 <.Loc.383.1>:
    }

}
    aa00:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000aa04 <.LCFI27>:
    aa04:	30 41       	ret

0000aa06 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    aa06:	2a 15       	pushm	#3,	r10	;16-bit words

0000aa08 <.LCFI28>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    aa08:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    aa0c:	7d 20       	jnz	$+252    	;abs 0xab08

0000aa0e <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    aa0e:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    aa12:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000aa16 <.Loc.465.1>:
    aa16:	82 48 52 1c 	mov	r8,	&0x1c52	;

0000aa1a <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    aa1a:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    aa1e:	54 1c

0000aa20 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    aa20:	b0 12 e6 af 	call	#-20506	;#0xafe6

0000aa24 <.Loc.471.1>:
    aa24:	0e 48       	mov	r8,	r14	;
    aa26:	0f 49       	mov	r9,	r15	;
    aa28:	0e 8c       	sub	r12,	r14	;
    aa2a:	0f 7d       	subc	r13,	r15	;

0000aa2c <.Loc.471.1>:
    aa2c:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    aa30:	82 4f 12 1c 	mov	r15,	&0x1c12	;

0000aa34 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    aa34:	5d 43       	mov.b	#1,	r13	;r3 As==01
    aa36:	4c 43       	clr.b	r12		;
    aa38:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000aa3c <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    aa3c:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    aa40:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

0000aa44 <.Loc.474.1>:
    aa44:	09 4d       	mov	r13,	r9	;
    aa46:	0d 93       	cmp	#0,	r13	;r3 As==00
    aa48:	44 34       	jge	$+138    	;abs 0xaad2

0000aa4a <.Loc.474.1>:
    aa4a:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    aa4e:	08 43       	clr	r8		;
    aa50:	08 8e       	sub	r14,	r8	;
    aa52:	0e 48       	mov	r8,	r14	;
    aa54:	0f 48       	mov	r8,	r15	;
    aa56:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

0000aa5a <.Loc.474.1>:
    aa5a:	0f 9d       	cmp	r13,	r15	;
    aa5c:	04 38       	jl	$+10     	;abs 0xaa66

0000aa5e <.Loc.474.1>:
    aa5e:	0d 9f       	cmp	r15,	r13	;
    aa60:	20 20       	jnz	$+66     	;abs 0xaaa2
    aa62:	08 9c       	cmp	r12,	r8	;
    aa64:	1e 2c       	jc	$+62     	;abs 0xaaa2

0000aa66 <.L100>:
            {
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    aa66:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    aa6a:	08 4a       	mov	r10,	r8	;
    aa6c:	09 43       	clr	r9		;

0000aa6e <.Loc.476.1>:
    aa6e:	4e 43       	clr.b	r14		;
    aa70:	4f 43       	clr.b	r15		;
    aa72:	0e 8c       	sub	r12,	r14	;
    aa74:	0f 7d       	subc	r13,	r15	;

0000aa76 <.Loc.476.1>:
    aa76:	0f 93       	cmp	#0,	r15	;r3 As==00
    aa78:	0c 38       	jl	$+26     	;abs 0xaa92
    aa7a:	0f 93       	cmp	#0,	r15	;r3 As==00
    aa7c:	02 20       	jnz	$+6      	;abs 0xaa82
    aa7e:	0e 98       	cmp	r8,	r14	;
    aa80:	08 28       	jnc	$+18     	;abs 0xaa92

0000aa82 <.L101>:
    aa82:	08 9e       	cmp	r14,	r8	;
    aa84:	17 20       	jnz	$+48     	;abs 0xaab4
    aa86:	0f 93       	cmp	#0,	r15	;r3 As==00
    aa88:	15 20       	jnz	$+44     	;abs 0xaab4

0000aa8a <.Loc.476.1>:
    aa8a:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    aa8e:	0e 1c
    aa90:	11 2c       	jc	$+36     	;abs 0xaab4

0000aa92 <.L92>:
                {
                    min_pdc = -pdc_timing[i].data;
    aa92:	4e 43       	clr.b	r14		;
    aa94:	0e 8c       	sub	r12,	r14	;
    aa96:	82 4e 52 1c 	mov	r14,	&0x1c52	;

0000aa9a <.L107>:
            if (pdc_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
                {
                    min_pdc = pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
    aa9a:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    aa9e:	54 1c

0000aaa0 <.Loc.494.1>:
                }
            }
       }
    }

    if (!first)
    aaa0:	09 3c       	jmp	$+20     	;abs 0xaab4

0000aaa2 <.L90>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    aaa2:	09 4d       	mov	r13,	r9	;
    aaa4:	0d 9f       	cmp	r15,	r13	;
    aaa6:	04 38       	jl	$+10     	;abs 0xaab0
    aaa8:	0f 9d       	cmp	r13,	r15	;
    aaaa:	04 20       	jnz	$+10     	;abs 0xaab4
    aaac:	0c 98       	cmp	r8,	r12	;
    aaae:	02 2c       	jc	$+6      	;abs 0xaab4

0000aab0 <.L102>:
    aab0:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000aab4 <.L94>:
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    aab4:	5d 42 54 1c 	mov.b	&0x1c54,r13	;0x1c54
    aab8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    aaba:	b0 12 1e b1 	call	#-20194	;#0xb11e

0000aabe <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    aabe:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    aac2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    aac4:	b0 12 2c b1 	call	#-20180	;#0xb12c

0000aac8 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    aac8:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    aacc:	b0 12 8e af 	call	#-20594	;#0xaf8e

0000aad0 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    aad0:	1d 3c       	jmp	$+60     	;abs 0xab0c

0000aad2 <.L88>:
            if (pdc_timing[i].data > 0)
    aad2:	0e 4c       	mov	r12,	r14	;
    aad4:	0e dd       	bis	r13,	r14	;
    aad6:	0e 93       	cmp	#0,	r14	;r3 As==00
    aad8:	ed 27       	jz	$-36     	;abs 0xaab4

0000aada <.Loc.485.1>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    aada:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    aade:	0e 4a       	mov	r10,	r14	;
    aae0:	0f 43       	clr	r15		;

0000aae2 <.Loc.485.1>:
    aae2:	0d 93       	cmp	#0,	r13	;r3 As==00
    aae4:	0e 38       	jl	$+30     	;abs 0xab02
    aae6:	0d 93       	cmp	#0,	r13	;r3 As==00
    aae8:	03 20       	jnz	$+8      	;abs 0xaaf0
    aaea:	09 4c       	mov	r12,	r9	;
    aaec:	0c 9e       	cmp	r14,	r12	;
    aaee:	09 28       	jnc	$+20     	;abs 0xab02

0000aaf0 <.L103>:
    aaf0:	09 4c       	mov	r12,	r9	;
    aaf2:	0c 9e       	cmp	r14,	r12	;
    aaf4:	df 23       	jnz	$-64     	;abs 0xaab4
    aaf6:	0d 9f       	cmp	r15,	r13	;
    aaf8:	dd 23       	jnz	$-68     	;abs 0xaab4

0000aafa <.Loc.485.1>:
    aafa:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    aafe:	0e 1c
    ab00:	d9 2f       	jc	$-76     	;abs 0xaab4

0000ab02 <.L97>:
                    min_pdc = pdc_timing[i].data;
    ab02:	82 4c 52 1c 	mov	r12,	&0x1c52	;
    ab06:	c9 3f       	jmp	$-108    	;abs 0xaa9a

0000ab08 <.L87>:
    else stop_timer();
    ab08:	b0 12 4c af 	call	#-20660	;#0xaf4c

0000ab0c <.L86>:
}
    ab0c:	28 17       	popm	#3,	r10	;16-bit words

0000ab0e <.LCFI29>:
    ab0e:	30 41       	ret

0000ab10 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    ab10:	2a 15       	pushm	#3,	r10	;16-bit words

0000ab12 <.LCFI30>:
    ab12:	49 4c       	mov.b	r12,	r9	;
    ab14:	0a 4d       	mov	r13,	r10	;

0000ab16 <.Loc.392.1>:
    unpack_pdc_to_local();
    ab16:	b0 12 e4 a9 	call	#-22044	;#0xa9e4

0000ab1a <.LVL127>:
        if (pdc_timing[i].status == NOT_USED)
    ab1a:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    ab1e:	2e 20       	jnz	$+94     	;abs 0xab7c

0000ab20 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    ab20:	38 40 c6 a3 	mov	#-23610,r8	;#0xa3c6
    ab24:	4c 49       	mov.b	r9,	r12	;
    ab26:	88 12       	call	r8		;
    ab28:	0d 4a       	mov	r10,	r13	;
    ab2a:	b0 12 92 a3 	call	#-23662	;#0xa392

0000ab2e <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    ab2e:	4c 49       	mov.b	r9,	r12	;
    ab30:	88 12       	call	r8		;
    ab32:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab34:	b0 12 98 a3 	call	#-23656	;#0xa398

0000ab38 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    ab38:	0e 4a       	mov	r10,	r14	;
    ab3a:	4f 43       	clr.b	r15		;
    ab3c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab3e:	4c 43       	clr.b	r12		;
    ab40:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000ab44 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    ab44:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    ab48:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

0000ab4c <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    ab4c:	4e 49       	mov.b	r9,	r14	;
    ab4e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab50:	4c 43       	clr.b	r12		;
    ab52:	b0 12 8e b0 	call	#-20338	;#0xb08e

0000ab56 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    ab56:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000ab5a <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    ab5a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    ab5c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab5e:	4c 43       	clr.b	r12		;
    ab60:	b0 12 d8 b0 	call	#-20264	;#0xb0d8

0000ab64 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    ab64:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

0000ab68 <.L111>:
        refresh_pdc_timers();
    ab68:	b0 12 06 aa 	call	#-22010	;#0xaa06

0000ab6c <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    ab6c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    ab6e:	b0 12 3a b1 	call	#-20166	;#0xb13a

0000ab72 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    ab72:	5c 43       	mov.b	#1,	r12	;r3 As==01
    ab74:	b0 12 20 b2 	call	#-19936	;#0xb220

0000ab78 <.Loc.435.1>:
}
    ab78:	28 17       	popm	#3,	r10	;16-bit words

0000ab7a <.LCFI31>:
    ab7a:	30 41       	ret

0000ab7c <.L109>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    ab7c:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    ab80:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

0000ab84 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    ab84:	0e 4a       	mov	r10,	r14	;
    ab86:	4f 43       	clr.b	r15		;
    ab88:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab8a:	4c 43       	clr.b	r12		;
    ab8c:	b0 12 3c b0 	call	#-20420	;#0xb03c

0000ab90 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    ab90:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000ab94 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    ab94:	4e 49       	mov.b	r9,	r14	;
    ab96:	5d 43       	mov.b	#1,	r13	;r3 As==01
    ab98:	4c 43       	clr.b	r12		;
    ab9a:	b0 12 8e b0 	call	#-20338	;#0xb08e
    ab9e:	e4 3f       	jmp	$-54     	;abs 0xab68

0000aba0 <clear_pdc_status>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    aba0:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    aba4:	07 20       	jnz	$+16     	;abs 0xabb4

0000aba6 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    aba6:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000abaa <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    abaa:	4e 43       	clr.b	r14		;
    abac:	5d 43       	mov.b	#1,	r13	;r3 As==01
    abae:	4c 43       	clr.b	r12		;

0000abb0 <.LVL144>:
    abb0:	b0 12 d8 b0 	call	#-20264	;#0xb0d8

0000abb4 <.L112>:

        }
    }
}
    abb4:	30 41       	ret

0000abb6 <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    abb6:	0a 15       	pushm	#1,	r10	;16-bit words

0000abb8 <.LCFI33>:
    abb8:	4a 4c       	mov.b	r12,	r10	;

0000abba <.Loc.440.1>:
    unpack_pdc_to_local();
    abba:	b0 12 e4 a9 	call	#-22044	;#0xa9e4

0000abbe <.LVL147>:
    clear_pdc_status(thread_id);
    abbe:	4c 4a       	mov.b	r10,	r12	;
    abc0:	b0 12 a0 ab 	call	#-21600	;#0xaba0

0000abc4 <.Loc.445.1>:
    refresh_pdc_timers();
    abc4:	b0 12 06 aa 	call	#-22010	;#0xaa06

0000abc8 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    abc8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    abca:	b0 12 3a b1 	call	#-20166	;#0xb13a

0000abce <.Loc.448.1>:
    _pers_timer_commit(XPR);
    abce:	6c 43       	mov.b	#2,	r12	;r3 As==10
    abd0:	b0 12 20 b2 	call	#-19936	;#0xb220

0000abd4 <.Loc.450.1>:
}
    abd4:	0a 17       	popm	#1,	r10	;16-bit words

0000abd6 <.LCFI34>:
    abd6:	30 41       	ret

0000abd8 <main>:
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    abd8:	b0 12 8a ae 	call	#-20854	;#0xae8a

0000abdc <.Loc.46.1>:

	// if this is the first boot
	if(!__inited){
    abdc:	c2 93 8c 95 	cmp.b	#0,	&0x958c	;r3 As==00
    abe0:	08 20       	jnz	$+18     	;abs 0xabf2

0000abe2 <.Loc.48.1>:
	    // init the scheduler state
	    __scheduler_boot_init();
    abe2:	b0 12 ac a2 	call	#-23892	;#0xa2ac

0000abe6 <.Loc.50.1>:
	    // init the event handler
	    __events_boot_init();
    abe6:	b0 12 40 ac 	call	#-21440	;#0xac40

0000abea <.Loc.57.1>:
	    __get_time_init();
	    //init the timers
	    __timers_init();
#endif
	    // init the applications
	    __app_init();
    abea:	b0 12 0a a1 	call	#-24310	;#0xa10a

0000abee <.Loc.59.1>:
	    // the first and initial boot is finished
	    __inited = 1;
    abee:	d2 43 8c 95 	mov.b	#1,	&0x958c	;r3 As==01

0000abf2 <.L2>:
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    abf2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000abf6 <.Loc.68.1>:
    abf6:
0000abf8 <L0^A>:
    abf8:	04 02       	mova	@r2,	r4	;

0000abfa <.Loc.68.1>:
    abfa:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000abfe <.Loc.68.1>:
    __port_init(1, 4); // Task Execution
    abfe:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    ac02:	02 02

0000ac04 <.Loc.69.1>:
    ac04:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    ac08:	04 02

0000ac0a <.Loc.69.1>:
    ac0a:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    ac0e:	02 02

0000ac10 <.Loc.69.1>:
    __port_init(3, 5); // Task commit
    ac10:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    ac14:	22 02

0000ac16 <.Loc.70.1>:
    ac16:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    ac1a:	24 02

0000ac1c <.Loc.70.1>:
    ac1c:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    ac20:	22 02

0000ac22 <.Loc.70.1>:
    __port_init(3, 6); // Task buffer copy
    ac22:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    ac26:	22 02

0000ac28 <.Loc.71.1>:
    ac28:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    ac2c:	24 02

0000ac2e <.Loc.71.1>:
    ac2e:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    ac32:	22 02

0000ac34 <.Loc.71.1>:
#endif

	// will be called at each reboot of the application
	__app_reboot();
    ac34:	b0 12 f6 a0 	call	#-24330	;#0xa0f6

0000ac38 <.Loc.78.1>:

	// activate the scheduler
	__scheduler_run();
    ac38:	b0 12 d8 a3 	call	#-23592	;#0xa3d8

0000ac3c <.Loc.80.1>:

	return 0;
}
    ac3c:	4c 43       	clr.b	r12		;
    ac3e:	30 41       	ret

0000ac40 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    ac40:	1a 15       	pushm	#2,	r10	;16-bit words

0000ac42 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    ac42:	3a 40 0e 9b 	mov	#-25842,r10	;#0x9b0e
    ac46:	39 40 8e 95 	mov	#-27250,r9	;#0x958e

0000ac4a <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    ac4a:	0c 4a       	mov	r10,	r12	;
    ac4c:	b0 12 6c ad 	call	#-21140	;#0xad6c

0000ac50 <.Loc.56.1>:
        _popped[i] = NULL;
    ac50:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

0000ac54 <.Loc.53.1>:
    for(i=MAX_THREADS;i>0;i--){
    ac54:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    ac58:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

0000ac5c <.Loc.53.1>:
    ac5c:	3a 90 0e 96 	cmp	#-27122,r10	;#0x960e
    ac60:	f4 23       	jnz	$-22     	;abs 0xac4a

0000ac62 <.Loc.58.1>:
    }
}
    ac62:	19 17       	popm	#2,	r10	;16-bit words

0000ac64 <.LCFI1>:
    ac64:	30 41       	ret

0000ac66 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    ac66:	5c 42 1a 9b 	mov.b	&0x9b1a,r12	;0x9b1a
    ac6a:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    ac6c:	13 24       	jz	$+40     	;abs 0xac94
    ac6e:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    ac70:	1e 24       	jz	$+62     	;abs 0xacae
    ac72:	0c 93       	cmp	#0,	r12	;r3 As==00
    ac74:	29 20       	jnz	$+84     	;abs 0xacc8

0000ac76 <.Loc.65.1>:
    case EVENT_INSERT:
        __perqueue_push(&_events[_thread->priority], &_event);
    ac76:	1d 42 18 9b 	mov	&0x9b18,r13	;0x9b18

0000ac7a <.Loc.65.1>:
    ac7a:	6c 4d       	mov.b	@r13,	r12	;
    ac7c:	5c 06       	rlam	#2,	r12	;
    ac7e:	6d 4d       	mov.b	@r13,	r13	;
    ac80:	0c 5d       	add	r13,	r12	;
    ac82:	5c 06       	rlam	#2,	r12	;
    ac84:	3d 40 0e 9b 	mov	#-25842,r13	;#0x9b0e
    ac88:	3c 50 0e 96 	add	#-27122,r12	;#0x960e
    ac8c:	b0 12 c8 ad 	call	#-21048	;#0xadc8

0000ac90 <.Loc.66.1>:
        _status = EVENT_COMMIT;
    ac90:	d2 43 1a 9b 	mov.b	#1,	&0x9b1a	;r3 As==01

0000ac94 <.L5>:
    case EVENT_COMMIT:
        __perqueue_push_commit(&_events[_thread->priority]);
    ac94:	1d 42 18 9b 	mov	&0x9b18,r13	;0x9b18

0000ac98 <.Loc.68.1>:
    ac98:	6c 4d       	mov.b	@r13,	r12	;
    ac9a:	5c 06       	rlam	#2,	r12	;
    ac9c:	6d 4d       	mov.b	@r13,	r13	;
    ac9e:	0c 5d       	add	r13,	r12	;
    aca0:	5c 06       	rlam	#2,	r12	;
    aca2:	3c 50 0e 96 	add	#-27122,r12	;#0x960e
    aca6:	b0 12 fe ad 	call	#-20994	;#0xadfe

0000acaa <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    acaa:	e2 43 1a 9b 	mov.b	#2,	&0x9b1a	;r3 As==10

0000acae <.L6>:
    case EVENT_SIGNAL:
        // if the thread is sleeping, activate it!
        if(_thread->state == THREAD_STOPPED){
    acae:	1c 42 18 9b 	mov	&0x9b18,r12	;0x9b18
    acb2:	1c 4c 02 00 	mov	2(r12),	r12	;

0000acb6 <.Loc.72.1>:
    acb6:	3c 92       	cmp	#8,	r12	;r2 As==11
    acb8:	04 20       	jnz	$+10     	;abs 0xacc2

0000acba <.Loc.73.1>:
            __start_thread(_thread);
    acba:	1c 42 18 9b 	mov	&0x9b18,r12	;0x9b18
    acbe:	b0 12 aa a3 	call	#-23638	;#0xa3aa

0000acc2 <.L8>:
        }
        _status = EVENT_DONE;
    acc2:	f2 40 03 00 	mov.b	#3,	&0x9b1a	;
    acc6:	1a 9b

0000acc8 <.L4>:
    }
}
    acc8:	30 41       	ret

0000acca <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    acca:	1d 42 18 9b 	mov	&0x9b18,r13	;0x9b18

0000acce <.Loc.81.1>:
    acce:	6c 4d       	mov.b	@r13,	r12	;

0000acd0 <.LVL7>:
    acd0:	5c 06       	rlam	#2,	r12	;
    acd2:	6d 4d       	mov.b	@r13,	r13	;
    acd4:	0c 5d       	add	r13,	r12	;
    acd6:	5c 06       	rlam	#2,	r12	;
    acd8:	3c 50 0e 96 	add	#-27122,r12	;#0x960e
    acdc:	b0 12 9c ad 	call	#-21092	;#0xad9c

0000ace0 <.Loc.82.1>:
}
    ace0:	30 41       	ret

0000ace2 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    ace2:	82 4c 18 9b 	mov	r12,	&0x9b18	;

0000ace6 <.Loc.90.1>:
    _event = *event;
    ace6:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    acea:	3c 40 0e 9b 	mov	#-25842,r12	;#0x9b0e

0000acee <.LVL10>:
    acee:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000acf2 <.LVL11>:
    _status = EVENT_INSERT;
    acf2:	c2 43 1a 9b 	mov.b	#0,	&0x9b1a	;r3 As==00

0000acf6 <.Loc.92.1>:
    __events_commit();
    acf6:	b0 12 66 ac 	call	#-21402	;#0xac66

0000acfa <.Loc.93.1>:
}
    acfa:	30 41       	ret

0000acfc <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    acfc:	6d 4c       	mov.b	@r12,	r13	;
    acfe:	5d 06       	rlam	#2,	r13	;
    ad00:	6c 4c       	mov.b	@r12,	r12	;

0000ad02 <.LVL14>:
    ad02:	0c 5d       	add	r13,	r12	;
    ad04:	5c 06       	rlam	#2,	r12	;
    ad06:	3c 50 0e 96 	add	#-27122,r12	;#0x960e
    ad0a:	b0 12 86 ad 	call	#-21114	;#0xad86
    ad0e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000ad12 <.Loc.97.1>:
    ad12:	3c 53       	add	#-1,	r12	;r3 As==11

0000ad14 <.Loc.101.1>:
        return 0;

    return 1;
}
    ad14:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    ad18:	30 41       	ret

0000ad1a <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    ad1a:	0a 15       	pushm	#1,	r10	;16-bit words

0000ad1c <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    ad1c:	1c 42 18 9b 	mov	&0x9b18,r12	;0x9b18

0000ad20 <.LVL17>:
    ad20:	6a 4c       	mov.b	@r12,	r10	;

0000ad22 <.Loc.107.1>:
    ad22:	0c 4a       	mov	r10,	r12	;
    ad24:	5c 06       	rlam	#2,	r12	;
    ad26:	0c 5a       	add	r10,	r12	;
    ad28:	5c 06       	rlam	#2,	r12	;
    ad2a:	3c 50 0e 96 	add	#-27122,r12	;#0x960e
    ad2e:	b0 12 06 ae 	call	#-20986	;#0xae06

0000ad32 <.Loc.107.1>:
    ad32:	5a 02       	rlam	#1,	r10	;
    ad34:	8a 4c 8e 95 	mov	r12,	-27250(r10); 0x958e

0000ad38 <.Loc.108.1>:
    return _popped[_thread->priority];
    ad38:	1c 42 18 9b 	mov	&0x9b18,r12	;0x9b18
    ad3c:	6c 4c       	mov.b	@r12,	r12	;
    ad3e:	5c 02       	rlam	#1,	r12	;

0000ad40 <.Loc.109.1>:
}
    ad40:	1c 4c 8e 95 	mov	-27250(r12),r12	;0xffff958e
    ad44:	0a 17       	popm	#1,	r10	;16-bit words

0000ad46 <.LCFI3>:
    ad46:	30 41       	ret

0000ad48 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    ad48:	1d 42 18 9b 	mov	&0x9b18,r13	;0x9b18

0000ad4c <.Loc.113.1>:
    ad4c:	6c 4d       	mov.b	@r13,	r12	;

0000ad4e <.LVL20>:
    ad4e:	5c 06       	rlam	#2,	r12	;
    ad50:	6d 4d       	mov.b	@r13,	r13	;
    ad52:	0c 5d       	add	r13,	r12	;
    ad54:	5c 06       	rlam	#2,	r12	;
    ad56:	3c 50 0e 96 	add	#-27122,r12	;#0x960e
    ad5a:	b0 12 38 ae 	call	#-20936	;#0xae38

0000ad5e <.Loc.114.1>:
    _popped[_thread->priority] = NULL;
    ad5e:	1c 42 18 9b 	mov	&0x9b18,r12	;0x9b18
    ad62:	6c 4c       	mov.b	@r12,	r12	;
    ad64:	5c 02       	rlam	#1,	r12	;
    ad66:	8c 43 8e 95 	mov	#0,	-27250(r12);r3 As==00, 0x958e

0000ad6a <.Loc.115.1>:
}
    ad6a:	30 41       	ret

0000ad6c <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    ad6c:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    ad70:	10 00

0000ad72 <.Loc.37.1>:
    queue->_tail ^= queue->_tail;
    ad72:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    ad76:	11 00

0000ad78 <.Loc.38.1>:
    queue->__head ^= queue->__head;
    ad78:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    ad7c:	12 00

0000ad7e <.Loc.39.1>:
    queue->__tail ^= queue->__tail;
    ad7e:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    ad82:	13 00

0000ad84 <.Loc.40.1>:
}
    ad84:	30 41       	ret

0000ad86 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    ad86:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    ad8a:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    ad8e:	4c 4d       	mov.b	r13,	r12	;

0000ad90 <.LVL2>:
    ad90:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    ad94:	3c 53       	add	#-1,	r12	;r3 As==11

0000ad96 <.Loc.49.1>:
        return 1;
    }

    return 0;
}
    ad96:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    ad9a:	30 41       	ret

0000ad9c <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    ad9c:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    ada0:	5d 53       	inc.b	r13		;
    ada2:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

0000ada6 <.Loc.54.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    ada6:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    adaa:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    adac:	02 20       	jnz	$+6      	;abs 0xadb2

0000adae <.Loc.55.1>:
        queue->__tail = 0;
    adae:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000adb2 <.L4>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    adb2:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    adb6:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    adba:	4c 4d       	mov.b	r13,	r12	;

0000adbc <.LVL4>:
    adbc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    adc0:	3c 53       	add	#-1,	r12	;r3 As==11

0000adc2 <.Loc.64.1>:
        return 1;
    }

    return 0;
}
    adc2:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    adc6:	30 41       	ret

0000adc8 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    adc8:	0e 4c       	mov	r12,	r14	;

0000adca <.Loc.68.1>:
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    adca:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

0000adce <.LVL6>:
    adce:	5c 53       	inc.b	r12		;
    add0:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

0000add4 <.Loc.69.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    add4:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    add8:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    adda:	02 20       	jnz	$+6      	;abs 0xade0

0000addc <.Loc.70.1>:
        queue->__tail = 0;
    addc:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

0000ade0 <.L6>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    ade0:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

0000ade4 <.Loc.74.1>:
    ade4:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

0000ade8 <.Loc.75.1>:
        return 0;
    ade8:	4c 43       	clr.b	r12		;

0000adea <.Loc.74.1>:
    if (queue->__tail == queue->_head) {
    adea:	0b 9f       	cmp	r15,	r11	;
    adec:	07 24       	jz	$+16     	;abs 0xadfc

0000adee <.Loc.79.1>:
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    adee:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

0000adf2 <.Loc.79.1>:
    adf2:	5c 02       	rlam	#1,	r12	;
    adf4:	0e 5c       	add	r12,	r14	;

0000adf6 <.LVL7>:
    adf6:	8e 4d 00 00 	mov	r13,	0(r14)	;

0000adfa <.Loc.81.1>:

    return 1;
    adfa:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000adfc <.L7>:
}
    adfc:	30 41       	ret

0000adfe <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    adfe:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    ae02:	11 00

0000ae04 <.Loc.89.1>:
}
    ae04:	30 41       	ret

0000ae06 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    ae06:	0d 4c       	mov	r12,	r13	;

0000ae08 <.Loc.93.1>:
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    ae08:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

0000ae0c <.Loc.93.1>:
    ae0c:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

0000ae10 <.Loc.94.1>:
        return NULL;
    ae10:	4c 43       	clr.b	r12		;

0000ae12 <.LVL10>:
    if (queue->_head == queue->_tail){
    ae12:	0f 9e       	cmp	r14,	r15	;
    ae14:	10 24       	jz	$+34     	;abs 0xae36

0000ae16 <.Loc.98.1>:
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    ae16:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    ae1a:	5c 53       	inc.b	r12		;
    ae1c:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

0000ae20 <.Loc.99.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    ae20:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    ae24:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    ae26:	02 20       	jnz	$+6      	;abs 0xae2c

0000ae28 <.Loc.100.1>:
        queue->__head = 0;
    ae28:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

0000ae2c <.L12>:

    return queue->_items[queue->_head];
    ae2c:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

0000ae30 <.Loc.102.1>:
    ae30:	5c 02       	rlam	#1,	r12	;
    ae32:	0d 5c       	add	r12,	r13	;

0000ae34 <.LVL11>:
    ae34:	2c 4d       	mov	@r13,	r12	;

0000ae36 <.L10>:
}
    ae36:	30 41       	ret

0000ae38 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    ae38:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    ae3c:	10 00

0000ae3e <.Loc.109.1>:
}
    ae3e:	30 41       	ret

0000ae40 <__dma_word_copy>:
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    ae40:	0a 15       	pushm	#1,	r10	;16-bit words

0000ae42 <.LCFI0>:
    ae42:	21 82       	sub	#4,	r1	;r2 As==10

0000ae44 <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    ae44:	0a 4c       	mov	r12,	r10	;
    ae46:	0b 43       	clr	r11		;
    ae48:	81 4a 00 00 	mov	r10,	0(r1)	;
    ae4c:	81 4b 02 00 	mov	r11,	2(r1)	;

0000ae50 <.Loc.38.1>:
    ae50:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

0000ae54 <.LVL1>:
    ae54:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    ae58:	00 00

0000ae5a <.LBB3>:
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    ae5a:	0a 4d       	mov	r13,	r10	;
    ae5c:	0b 43       	clr	r11		;

0000ae5e <.LVL2>:
    ae5e:	81 4a 00 00 	mov	r10,	0(r1)	;
    ae62:	81 4b 02 00 	mov	r11,	2(r1)	;

0000ae66 <.Loc.40.1>:
    ae66:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    ae6a:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    ae6e:	00 00

0000ae70 <.LBE3>:
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    ae70:	82 4e 1a 05 	mov	r14,	&0x051a	;

0000ae74 <.Loc.43.1>:
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    ae74:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    ae78:	10 05

0000ae7a <.Loc.44.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    ae7a:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    ae7e:	10 05

0000ae80 <.Loc.46.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    ae80:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

0000ae84 <.Loc.47.1>:
}
    ae84:	21 52       	add	#4,	r1	;r2 As==10

0000ae86 <.LCFI2>:
    ae86:	0a 17       	popm	#1,	r10	;16-bit words

0000ae88 <.LCFI3>:
    ae88:	30 41       	ret

0000ae8a <__mcu_init>:

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    ae8a:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    ae8e:	5c 01

0000ae90 <.Loc.40.1>:


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    ae90:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    ae94:	40 01

0000ae96 <L0^A>:
  __delay_cycles(3);
    ae96:	00 3c       	jmp	$+2      	;abs 0xae98
    ae98:	03 43       	nop

0000ae9a <.Loc.44.1>:

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    ae9a:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    ae9e:	41 01

0000aea0 <L0^A>:

  __delay_cycles(3);
    aea0:	00 3c       	jmp	$+2      	;abs 0xaea2
    aea2:	03 43       	nop

0000aea4 <.Loc.48.1>:

  __led_init(LED1);
    aea4:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    aea8:	23 02

0000aeaa <.Loc.48.1>:
    aeaa:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    aeae:	25 02

0000aeb0 <.Loc.48.1>:
    aeb0:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    aeb4:	23 02

0000aeb6 <.Loc.48.1>:
  __led_init(LED2);
    aeb6:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

0000aeba <.Loc.49.1>:
    aeba:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

0000aebe <.Loc.49.1>:
    aebe:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

0000aec2 <.Loc.49.1>:

  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    aec2:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

0000aec6 <.Loc.53.1>:

}
    aec6:	30 41       	ret

0000aec8 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    aec8:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000aecc <.Loc.83.1>:
    aecc:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000aed0 <.Loc.83.1>:
    aed0:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000aed4 <.Loc.83.1>:
    aed4:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

0000aed8 <.Loc.83.1>:
    aed8:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

0000aedc <.Loc.83.1>:
    aedc:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000aee0 <.Loc.83.1>:
    aee0:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000aee4 <.Loc.83.1>:
    aee4:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

0000aee8 <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    aee8:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

0000aeec <.Loc.88.1>:
}
    aeec:	30 41       	ret

0000aeee <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    aeee:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000aef2 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    aef2:	0e 4c       	mov	r12,	r14	;
    aef4:	5e 09       	rram	#3,	r14	;

0000aef6 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    aef6:	7e f0 07 00 	and.b	#7,	r14	;

0000aefa <.Loc.99.1>:
    aefa:	dd de 04 89 	bis.b	-30460(r14),8(r13)	;0xffff8904
    aefe:	08 00

0000af00 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    af00:	0d 5e       	add	r14,	r13	;

0000af02 <.LVL12>:
    af02:	7c f0 07 00 	and.b	#7,	r12	;

0000af06 <.LVL13>:
    af06:	dd dc 04 89 	bis.b	-30460(r12),0(r13)	;0xffff8904
    af0a:	00 00

0000af0c <.Loc.101.1>:
}
    af0c:	30 41       	ret

0000af0e <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    af0e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000af12 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    af12:	0e 4c       	mov	r12,	r14	;
    af14:	5e 09       	rram	#3,	r14	;

0000af16 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    af16:	7e f0 07 00 	and.b	#7,	r14	;
    af1a:	0f 4d       	mov	r13,	r15	;
    af1c:	0f 5e       	add	r14,	r15	;

0000af1e <.Loc.112.1>:
    af1e:	7c f0 07 00 	and.b	#7,	r12	;

0000af22 <.LVL16>:
    af22:	df cc 04 89 	bic.b	-30460(r12),0(r15)	;0xffff8904
    af26:	00 00

0000af28 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    af28:	6c 4f       	mov.b	@r15,	r12	;

0000af2a <.Loc.114.1>:
    af2a:	0c 93       	cmp	#0,	r12	;r3 As==00
    af2c:	03 20       	jnz	$+8      	;abs 0xaf34

0000af2e <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    af2e:	dd ce 04 89 	bic.b	-30460(r14),8(r13)	;0xffff8904
    af32:	08 00

0000af34 <.L3>:
    }
}
    af34:	30 41       	ret

0000af36 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    af36:	5d 4c 08 00 	mov.b	8(r12),	r13	;

0000af3a <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    af3a:	5d 4d 04 88 	mov.b	-30716(r13),r13	;0xffff8804

0000af3e <.LVL19>:
    af3e:	0c 5d       	add	r13,	r12	;

0000af40 <.LVL20>:
    af40:	6e 4c       	mov.b	@r12,	r14	;

0000af42 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    af42:	0c 4d       	mov	r13,	r12	;
    af44:	5c 0a       	rlam	#3,	r12	;

0000af46 <.Loc.128.1>:
}
    af46:	5c de 04 88 	bis.b	-30716(r14),r12	;0xffff8804
    af4a:	30 41       	ret

0000af4c <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    af4c:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

0000af50 <.Loc.157.1>:
    TA2CTL = 0;
    af50:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000af54 <.Loc.158.1>:
}
    af54:	30 41       	ret

0000af56 <timerA2_init>:
    af56:	b0 12 4c af 	call	#-20660	;#0xaf4c
    af5a:	30 41       	ret

0000af5c <set_timer_wkup>:
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    af5c:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

0000af60 <.Loc.179.1>:
    TA0CCR0 = ticks;
    af60:	82 4c 52 03 	mov	r12,	&0x0352	;

0000af64 <.Loc.180.1>:
    TA0CCTL0 = CCIE;
    af64:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    af68:	42 03

0000af6a <.Loc.181.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    af6a:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    af6e:	40 03

0000af70 <.Loc.182.1>:
}
    af70:	30 41       	ret

0000af72 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    af72:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

0000af76 <.Loc.186.1>:
    TA2CCR0 = ticks;
    af76:	82 4c 12 04 	mov	r12,	&0x0412	;

0000af7a <.Loc.187.1>:
    TA2CCTL0 = CCIE;
    af7a:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    af7e:	02 04

0000af80 <.Loc.188.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    af80:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    af84:	00 04

0000af86 <.Loc.190.1>:

}
    af86:	30 41       	ret

0000af88 <stop_timer_xpr>:
    af88:	b0 12 4c af 	call	#-20660	;#0xaf4c
    af8c:	30 41       	ret

0000af8e <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    af8e:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

0000af92 <.Loc.202.1>:
    TA1CCR0 = ticks;
    af92:	82 4c 92 03 	mov	r12,	&0x0392	;

0000af96 <.Loc.203.1>:
    TA1CCTL0 = CCIE;
    af96:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    af9a:	82 03

0000af9c <.Loc.204.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    af9c:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    afa0:	80 03

0000afa2 <.Loc.205.1>:
}
    afa2:	30 41       	ret

0000afa4 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    afa4:	30 41       	ret

0000afa6 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    afa6:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    afaa:	61 01

0000afac <.Loc.253.1>:
  CSCTL2 = SELA__VLOCLK;
    afac:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    afb0:	64 01

0000afb2 <.Loc.254.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    afb2:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000afb6 <.Loc.255.1>:
  CSCTL0_H = 0;
    afb6:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

0000afba <.Loc.257.1>:

}
    afba:	30 41       	ret

0000afbc <__get_rtc_time>:
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    afbc:	4c 43       	clr.b	r12		;
    afbe:	4d 43       	clr.b	r13		;
    afc0:	30 41       	ret

0000afc2 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    afc2:	82 43 1c 9b 	mov	#0,	&0x9b1c	;r3 As==00
    afc6:	82 43 1e 9b 	mov	#0,	&0x9b1e	;r3 As==00

0000afca <.Loc.337.1>:

    //stop TA1 timer
    TA3CTL = 0;
    afca:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000afce <.Loc.339.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    afce:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    afd2:	40 04

0000afd4 <.Loc.341.1>:

    __bis_SR_register(GIE);
    afd4:	03 43       	nop
    afd6:	32 d2       	eint
    afd8:	03 43       	nop

0000afda <.Loc.342.1>:
}
    afda:	30 41       	ret

0000afdc <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    afdc:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

0000afe0 <.Loc.350.1>:
    TA3CCTL0 = 0;
    afe0:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000afe4 <.Loc.351.1>:
}
    afe4:	30 41       	ret

0000afe6 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    afe6:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    afea:	40 04

0000afec <.Loc.363.1>:

   tmp = TA3R;
    afec:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

0000aff0 <.Loc.365.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    aff0:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    aff4:	40 04

0000aff6 <.Loc.369.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    aff6:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    affa:	b0 12 b0 b3 	call	#-19536	;#0xb3b0

0000affe <.Loc.370.1>:
}
    affe:	1c 52 1c 9b 	add	&0x9b1c,r12	;0x9b1c
    b002:	1d 62 1e 9b 	addc	&0x9b1e,r13	;0x9b1e
    b006:	30 41       	ret

0000b008 <isr_TIMER3_A1_VECTOR>:
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    b008:	b2 50 aa 00 	add	#170,	&0x9b1c	;#0x00aa
    b00c:	1c 9b
    b00e:	b2 60 0a 00 	addc	#10,	&0x9b1e	;#0x000a
    b012:	1e 9b

0000b014 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    b014:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

0000b018 <.Loc.381.1>:
}
    b018:	00 13       	reti

0000b01a <_pers_timer_init>:

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    b01a:	3c 40 20 9b 	mov	#-25824,r12	;#0x9b20
    b01e:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

0000b022 <.Loc.34.1>:
    b022:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

0000b026 <.Loc.34.1>:
    b026:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

0000b02a <.Loc.34.1>:
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    b02a:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

0000b02e <.Loc.38.1>:
    b02e:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

0000b032 <.Loc.38.1>:
    b032:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

0000b036 <.Loc.38.1>:
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    b036:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

0000b03a <.Loc.42.1>:
	}
}
    b03a:	30 41       	ret

0000b03c <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    b03c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b040 <.Loc.50.1>:
	//update the persistent timer dirty buffer
	switch(interface)
    b040:	1d 93       	cmp	#1,	r13	;r3 As==01
    b042:	1a 24       	jz	$+54     	;abs 0xb078
    b044:	2d 93       	cmp	#2,	r13	;r3 As==10
    b046:	0d 24       	jz	$+28     	;abs 0xb062
    b048:	0d 93       	cmp	#0,	r13	;r3 As==00
    b04a:	0a 20       	jnz	$+22     	;abs 0xb060

0000b04c <.Loc.53.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    b04c:	0d 4c       	mov	r12,	r13	;

0000b04e <.LVL9>:
    b04e:	5d 06       	rlam	#2,	r13	;
    b050:	0c 5d       	add	r13,	r12	;

0000b052 <.LVL10>:
    b052:	5c 02       	rlam	#1,	r12	;
    b054:	8c 4e 88 9b 	mov	r14,	-25720(r12); 0x9b88
    b058:	8c 4f 8a 9b 	mov	r15,	-25718(r12); 0x9b8a

0000b05c <.Loc.54.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    b05c:	9c 43 8c 9b 	mov	#1,	-25716(r12);r3 As==01, 0x9b8c

0000b060 <.L2>:
		default:
			break;
	}


}
    b060:	30 41       	ret

0000b062 <.L4>:
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    b062:	0d 4c       	mov	r12,	r13	;

0000b064 <.LVL12>:
    b064:	5d 06       	rlam	#2,	r13	;
    b066:	0c 5d       	add	r13,	r12	;
    b068:	5c 02       	rlam	#1,	r12	;
    b06a:	8c 4e a6 9b 	mov	r14,	-25690(r12); 0x9ba6
    b06e:	8c 4f a8 9b 	mov	r15,	-25688(r12); 0x9ba8

0000b072 <.Loc.58.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    b072:	9c 43 aa 9b 	mov	#1,	-25686(r12);r3 As==01, 0x9baa
    b076:	f4 3f       	jmp	$-22     	;abs 0xb060

0000b078 <.L3>:
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    b078:	0d 4c       	mov	r12,	r13	;

0000b07a <.LVL14>:
    b07a:	5d 06       	rlam	#2,	r13	;
    b07c:	0c 5d       	add	r13,	r12	;
    b07e:	5c 02       	rlam	#1,	r12	;
    b080:	8c 4e c4 9b 	mov	r14,	-25660(r12); 0x9bc4
    b084:	8c 4f c6 9b 	mov	r15,	-25658(r12); 0x9bc6

0000b088 <.Loc.62.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    b088:	9c 43 c8 9b 	mov	#1,	-25656(r12);r3 As==01, 0x9bc8

0000b08c <.Loc.63.1>:
			break;
    b08c:	e9 3f       	jmp	$-44     	;abs 0xb060

0000b08e <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    b08e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    b092:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000b096 <.Loc.73.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    b096:	1d 93       	cmp	#1,	r13	;r3 As==01
    b098:	16 24       	jz	$+46     	;abs 0xb0c6
    b09a:	2d 93       	cmp	#2,	r13	;r3 As==10
    b09c:	0b 24       	jz	$+24     	;abs 0xb0b4
    b09e:	0d 93       	cmp	#0,	r13	;r3 As==00
    b0a0:	08 20       	jnz	$+18     	;abs 0xb0b2

0000b0a2 <.Loc.76.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    b0a2:	0d 4c       	mov	r12,	r13	;

0000b0a4 <.LVL16>:
    b0a4:	5d 06       	rlam	#2,	r13	;
    b0a6:	0c 5d       	add	r13,	r12	;

0000b0a8 <.LVL17>:
    b0a8:	5c 02       	rlam	#1,	r12	;
    b0aa:	cc 4e 86 9b 	mov.b	r14,	-25722(r12); 0x9b86

0000b0ae <.Loc.77.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    b0ae:	9c 43 8c 9b 	mov	#1,	-25716(r12);r3 As==01, 0x9b8c

0000b0b2 <.L7>:
			break;
		default:
			break;
	}

}
    b0b2:	30 41       	ret

0000b0b4 <.L9>:
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    b0b4:	0d 4c       	mov	r12,	r13	;

0000b0b6 <.LVL19>:
    b0b6:	5d 06       	rlam	#2,	r13	;
    b0b8:	0c 5d       	add	r13,	r12	;
    b0ba:	5c 02       	rlam	#1,	r12	;
    b0bc:	cc 4e a4 9b 	mov.b	r14,	-25692(r12); 0x9ba4

0000b0c0 <.Loc.81.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    b0c0:	9c 43 aa 9b 	mov	#1,	-25686(r12);r3 As==01, 0x9baa
    b0c4:	f6 3f       	jmp	$-18     	;abs 0xb0b2

0000b0c6 <.L8>:
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    b0c6:	0d 4c       	mov	r12,	r13	;

0000b0c8 <.LVL21>:
    b0c8:	5d 06       	rlam	#2,	r13	;
    b0ca:	0c 5d       	add	r13,	r12	;
    b0cc:	5c 02       	rlam	#1,	r12	;
    b0ce:	cc 4e c2 9b 	mov.b	r14,	-25662(r12); 0x9bc2

0000b0d2 <.Loc.85.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    b0d2:	9c 43 c8 9b 	mov	#1,	-25656(r12);r3 As==01, 0x9bc8

0000b0d6 <.Loc.86.1>:
}
    b0d6:	ed 3f       	jmp	$-36     	;abs 0xb0b2

0000b0d8 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    b0d8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000b0dc <.Loc.95.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    b0dc:	1d 93       	cmp	#1,	r13	;r3 As==01
    b0de:	16 24       	jz	$+46     	;abs 0xb10c
    b0e0:	2d 93       	cmp	#2,	r13	;r3 As==10
    b0e2:	0b 24       	jz	$+24     	;abs 0xb0fa
    b0e4:	0d 93       	cmp	#0,	r13	;r3 As==00
    b0e6:	08 20       	jnz	$+18     	;abs 0xb0f8

0000b0e8 <.Loc.98.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].status = status;
    b0e8:	0d 4c       	mov	r12,	r13	;

0000b0ea <.LVL23>:
    b0ea:	5d 06       	rlam	#2,	r13	;
    b0ec:	0c 5d       	add	r13,	r12	;

0000b0ee <.LVL24>:
    b0ee:	5c 02       	rlam	#1,	r12	;
    b0f0:	8c 4e 84 9b 	mov	r14,	-25724(r12); 0x9b84

0000b0f4 <.Loc.99.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    b0f4:	9c 43 8c 9b 	mov	#1,	-25716(r12);r3 As==01, 0x9b8c

0000b0f8 <.L12>:
			break;
		default:
			break;

	}
}
    b0f8:	30 41       	ret

0000b0fa <.L14>:
			pers_timer_vars[1].xpr_timing[idx].status = status;
    b0fa:	0d 4c       	mov	r12,	r13	;

0000b0fc <.LVL26>:
    b0fc:	5d 06       	rlam	#2,	r13	;
    b0fe:	0c 5d       	add	r13,	r12	;
    b100:	5c 02       	rlam	#1,	r12	;
    b102:	8c 4e a2 9b 	mov	r14,	-25694(r12); 0x9ba2

0000b106 <.Loc.103.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    b106:	9c 43 aa 9b 	mov	#1,	-25686(r12);r3 As==01, 0x9baa
    b10a:	f6 3f       	jmp	$-18     	;abs 0xb0f8

0000b10c <.L13>:
			pers_timer_vars[1].pdc_timing[idx].status = status;
    b10c:	0d 4c       	mov	r12,	r13	;

0000b10e <.LVL28>:
    b10e:	5d 06       	rlam	#2,	r13	;
    b110:	0c 5d       	add	r13,	r12	;
    b112:	5c 02       	rlam	#1,	r12	;
    b114:	8c 4e c0 9b 	mov	r14,	-25664(r12); 0x9bc0

0000b118 <.Loc.107.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    b118:	9c 43 c8 9b 	mov	#1,	-25656(r12);r3 As==01, 0x9bc8

0000b11c <.Loc.108.1>:
}
    b11c:	ed 3f       	jmp	$-36     	;abs 0xb0f8

0000b11e <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    b11e:	0e 4c       	mov	r12,	r14	;
    b120:	5e 0a       	rlam	#3,	r14	;
    b122:	ce 4d cc 9b 	mov.b	r13,	-25652(r14); 0x9bcc

0000b126 <.Loc.118.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    b126:	9e 43 d0 9b 	mov	#1,	-25648(r14);r3 As==01, 0x9bd0

0000b12a <.Loc.119.1>:
}
    b12a:	30 41       	ret

0000b12c <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    b12c:	0e 4c       	mov	r12,	r14	;
    b12e:	5e 0a       	rlam	#3,	r14	;
    b130:	8e 4d ce 9b 	mov	r13,	-25650(r14); 0x9bce

0000b134 <.Loc.124.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    b134:	9e 43 d0 9b 	mov	#1,	-25648(r14);r3 As==01, 0x9bd0

0000b138 <.Loc.125.1>:
}
    b138:	30 41       	ret

0000b13a <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    b13a:	1c 93       	cmp	#1,	r12	;r3 As==01
    b13c:	0a 24       	jz	$+22     	;abs 0xb152
    b13e:	2c 93       	cmp	#2,	r12	;r3 As==10
    b140:	05 24       	jz	$+12     	;abs 0xb14c
    b142:	0c 93       	cmp	#0,	r12	;r3 As==00
    b144:	02 20       	jnz	$+6      	;abs 0xb14a

0000b146 <.Loc.132.1>:
	{
		case WKUP:
			wkup_tstatus = TIMER_COMMIT;
    b146:	92 43 e8 9b 	mov	#1,	&0x9be8	;r3 As==01

0000b14a <.L19>:
		default:
			break;

	}

}
    b14a:	30 41       	ret

0000b14c <.L21>:
			xpr_tstatus = TIMER_COMMIT;
    b14c:	92 43 ea 9b 	mov	#1,	&0x9bea	;r3 As==01

0000b150 <.Loc.136.1>:
		break;
    b150:	fc 3f       	jmp	$-6      	;abs 0xb14a

0000b152 <.L20>:
			pdc_tstatus = TIMER_COMMIT;
    b152:	92 43 ec 9b 	mov	#1,	&0x9bec	;r3 As==01

0000b156 <.Loc.139.1>:
}
    b156:	f9 3f       	jmp	$-12     	;abs 0xb14a

0000b158 <_commit_timer_buffers>:

//commit into the persistent buffer

void _commit_timer_buffers(ink_time_interface_t interface){
    b158:	1a 15       	pushm	#2,	r10	;16-bit words

0000b15a <.LCFI0>:
    b15a:	0a 4c       	mov	r12,	r10	;

0000b15c <.Loc.151.1>:

	uint8_t i;

	switch (interface){
    b15c:	1c 93       	cmp	#1,	r12	;r3 As==01
    b15e:	52 24       	jz	$+166    	;abs 0xb204
    b160:	2c 93       	cmp	#2,	r12	;r3 As==10
    b162:	39 24       	jz	$+116    	;abs 0xb1d6
    b164:	0c 93       	cmp	#0,	r12	;r3 As==00
    b166:	16 20       	jnz	$+46     	;abs 0xb194
    b168:	3f 40 20 9b 	mov	#-25824,r15	;#0x9b20
    b16c:	39 40 3e 9b 	mov	#-25794,r9	;#0x9b3e

0000b170 <.L28>:
		case WKUP:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
		{
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    b170:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    b174:	0b 20       	jnz	$+24     	;abs 0xb18c

0000b176 <.Loc.160.1>:
			{

				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    b176:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b17a:	0d 4f       	mov	r15,	r13	;
    b17c:	3d 50 64 00 	add	#100,	r13	;#0x0064
    b180:	0c 4f       	mov	r15,	r12	;
    b182:	b0 12 c8 b3 	call	#-19512	;#0xb3c8
    b186:	0f 4c       	mov	r12,	r15	;

0000b188 <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    b188:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

0000b18c <.L27>:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    b18c:	3f 50 0a 00 	add	#10,	r15	;#0x000a

0000b190 <.Loc.155.1>:
    b190:	09 9f       	cmp	r15,	r9	;
    b192:	ee 23       	jnz	$-34     	;abs 0xb170

0000b194 <.L26>:
void _commit_timer_buffers(ink_time_interface_t interface){
    b194:	7f 40 03 00 	mov.b	#3,	r15	;

0000b198 <.L33>:
		break;
	}

	for (i = 0; i < TIMER_TOOLS; i++)
	{
		if (	pers_timer_vars[1].next_info[interface].__dirty == DIRTY)
    b198:	0c 4a       	mov	r10,	r12	;
    b19a:	5c 0a       	rlam	#3,	r12	;

0000b19c <.Loc.193.1>:
    b19c:	9c 93 d0 9b 	cmp	#1,	-25648(r12);r3 As==01, 0x9bd0
    b1a0:	13 20       	jnz	$+40     	;abs 0xb1c8

0000b1a2 <.Loc.195.1>:
		{
			pers_timer_vars[0].next_info[interface] =
    b1a2:	0c 4a       	mov	r10,	r12	;
    b1a4:	5c 0a       	rlam	#3,	r12	;
    b1a6:	0d 4c       	mov	r12,	r13	;
    b1a8:	3d 50 20 9b 	add	#-25824,r13	;#0x9b20
    b1ac:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    b1b0:	46 00
    b1b2:	9c 4c cc 9b 	mov	-25652(r12),-25752(r12);0xffff9bcc, 0x9b68
    b1b6:	68 9b
    b1b8:	9c 4c ce 9b 	mov	-25650(r12),-25750(r12);0xffff9bce, 0x9b6a
    b1bc:	6a 9b
    b1be:	9c 4c d0 9b 	mov	-25648(r12),-25748(r12);0xffff9bd0, 0x9b6c
    b1c2:	6c 9b

0000b1c4 <.Loc.197.1>:
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty =
    b1c4:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

0000b1c8 <.L32>:
	for (i = 0; i < TIMER_TOOLS; i++)
    b1c8:	4c 4f       	mov.b	r15,	r12	;
    b1ca:	7c 53       	add.b	#-1,	r12	;r3 As==11
    b1cc:	4f 4c       	mov.b	r12,	r15	;

0000b1ce <.Loc.191.1>:
    b1ce:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    b1d0:	e3 23       	jnz	$-56     	;abs 0xb198

0000b1d2 <.Loc.201.1>:
				NOT_DIRTY;
		}
	}
}
    b1d2:	19 17       	popm	#2,	r10	;16-bit words

0000b1d4 <.LCFI1>:
    b1d4:	30 41       	ret

0000b1d6 <.L25>:
    b1d6:	39 40 20 9b 	mov	#-25824,r9	;#0x9b20

0000b1da <.L30>:
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    b1da:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    b1de:	0c 20       	jnz	$+26     	;abs 0xb1f8

0000b1e0 <.Loc.171.1>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    b1e0:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b1e4:	0d 49       	mov	r9,	r13	;
    b1e6:	3d 50 82 00 	add	#130,	r13	;#0x0082
    b1ea:	0c 49       	mov	r9,	r12	;
    b1ec:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    b1f0:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000b1f4 <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    b1f4:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

0000b1f8 <.L29>:
		for (i = 0; i < MAX_XPR_THREADS; i++)
    b1f8:	39 50 0a 00 	add	#10,	r9	;#0x000a

0000b1fc <.Loc.166.1>:
    b1fc:	39 90 3e 9b 	cmp	#-25794,r9	;#0x9b3e
    b200:	ec 23       	jnz	$-38     	;abs 0xb1da
    b202:	c8 3f       	jmp	$-110    	;abs 0xb194

0000b204 <.L24>:
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    b204:	92 93 c8 9b 	cmp	#1,	&0x9bc8	;r3 As==01
    b208:	c5 23       	jnz	$-116    	;abs 0xb194

0000b20a <.Loc.182.1>:
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    b20a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    b20e:	3d 40 c0 9b 	mov	#-25664,r13	;#0x9bc0
    b212:	3c 40 5c 9b 	mov	#-25764,r12	;#0x9b5c
    b216:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000b21a <.Loc.183.1>:
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    b21a:	82 43 64 9b 	mov	#0,	&0x9b64	;r3 As==00

0000b21e <.Loc.177.1>:
		for (i = 0; i < MAX_PDC_THREADS; i++)
    b21e:	ba 3f       	jmp	$-138    	;abs 0xb194

0000b220 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    b220:	1c 93       	cmp	#1,	r12	;r3 As==01
    b222:	16 24       	jz	$+46     	;abs 0xb250
    b224:	2c 93       	cmp	#2,	r12	;r3 As==10
    b226:	0b 24       	jz	$+24     	;abs 0xb23e
    b228:	0c 93       	cmp	#0,	r12	;r3 As==00
    b22a:	08 20       	jnz	$+18     	;abs 0xb23c

0000b22c <.Loc.207.1>:
	{
		case WKUP:
		    if (wkup_tstatus == TIMER_COMMIT)
    b22c:	1d 42 e8 9b 	mov	&0x9be8,r13	;0x9be8

0000b230 <.Loc.207.1>:
    b230:	1d 93       	cmp	#1,	r13	;r3 As==01
    b232:	04 20       	jnz	$+10     	;abs 0xb23c

0000b234 <.Loc.209.1>:
		    {
		    	_commit_timer_buffers(interface);
    b234:	b0 12 58 b1 	call	#-20136	;#0xb158

0000b238 <.LVL43>:
		        wkup_tstatus = TIMER_DONE;
    b238:	a2 43 e8 9b 	mov	#2,	&0x9be8	;r3 As==10

0000b23c <.L39>:
			break;
		default:
			break;

	}
}
    b23c:	30 41       	ret

0000b23e <.L41>:
			if (xpr_tstatus == TIMER_COMMIT)
    b23e:	1d 42 ea 9b 	mov	&0x9bea,r13	;0x9bea

0000b242 <.Loc.214.1>:
    b242:	1d 93       	cmp	#1,	r13	;r3 As==01
    b244:	fb 23       	jnz	$-8      	;abs 0xb23c

0000b246 <.Loc.216.1>:
		    	_commit_timer_buffers(interface);
    b246:	b0 12 58 b1 	call	#-20136	;#0xb158

0000b24a <.LVL45>:
		        xpr_tstatus = TIMER_DONE;
    b24a:	a2 43 ea 9b 	mov	#2,	&0x9bea	;r3 As==10
    b24e:	f6 3f       	jmp	$-18     	;abs 0xb23c

0000b250 <.L40>:
			if (pdc_tstatus == TIMER_COMMIT)
    b250:	1d 42 ec 9b 	mov	&0x9bec,r13	;0x9bec

0000b254 <.Loc.220.1>:
    b254:	1d 93       	cmp	#1,	r13	;r3 As==01
    b256:	f2 23       	jnz	$-26     	;abs 0xb23c

0000b258 <.Loc.222.1>:
		    	_commit_timer_buffers(interface);
    b258:	b0 12 58 b1 	call	#-20136	;#0xb158

0000b25c <.LVL47>:
		        pdc_tstatus = TIMER_DONE;
    b25c:	a2 43 ec 9b 	mov	#2,	&0x9bec	;r3 As==10

0000b260 <.Loc.230.1>:
}
    b260:	ed 3f       	jmp	$-36     	;abs 0xb23c

0000b262 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    b262:	0a 15       	pushm	#1,	r10	;16-bit words

0000b264 <.LCFI3>:
    b264:	0a 4c       	mov	r12,	r10	;
    b266:	4f 4d       	mov.b	r13,	r15	;

0000b268 <.Loc.233.1>:
	switch (interface)
    b268:	0d 4f       	mov	r15,	r13	;
    b26a:	5d 06       	rlam	#2,	r13	;

0000b26c <.LVL49>:
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    b26c:	0d 5f       	add	r15,	r13	;
    b26e:	5d 02       	rlam	#1,	r13	;

0000b270 <.Loc.233.1>:
	switch (interface)
    b270:	1e 93       	cmp	#1,	r14	;r3 As==01
    b272:	0b 24       	jz	$+24     	;abs 0xb28a
    b274:	2e 93       	cmp	#2,	r14	;r3 As==10
    b276:	0e 20       	jnz	$+30     	;abs 0xb294

0000b278 <.Loc.238.1>:
			return pers_timer_vars[0].xpr_timing[idx];
    b278:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000b27c <.LVL50>:
    b27c:	3d 50 3e 9b 	add	#-25794,r13	;#0x9b3e

0000b280 <.L47>:
		    return pers_timer_vars[0].wkup_timing[idx];
    b280:	b0 12 c8 b3 	call	#-19512	;#0xb3c8

0000b284 <.LVL51>:
	}

}
    b284:	0c 4a       	mov	r10,	r12	;
    b286:	0a 17       	popm	#1,	r10	;16-bit words

0000b288 <.LCFI4>:
    b288:	30 41       	ret

0000b28a <.L44>:
			return pers_timer_vars[0].pdc_timing[idx];
    b28a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000b28e <.LVL53>:
    b28e:	3d 50 5c 9b 	add	#-25764,r13	;#0x9b5c
    b292:	f6 3f       	jmp	$-18     	;abs 0xb280

0000b294 <.L45>:
		    return pers_timer_vars[0].wkup_timing[idx];
    b294:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000b298 <.LVL55>:
    b298:	3d 50 20 9b 	add	#-25824,r13	;#0x9b20
    b29c:	f1 3f       	jmp	$-28     	;abs 0xb280

0000b29e <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    b29e:	4e 4c       	mov.b	r12,	r14	;

0000b2a0 <.Loc.249.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    b2a0:	1d 93       	cmp	#1,	r13	;r3 As==01
    b2a2:	13 24       	jz	$+40     	;abs 0xb2ca
    b2a4:	2d 93       	cmp	#2,	r13	;r3 As==10
    b2a6:	0a 24       	jz	$+22     	;abs 0xb2bc
    b2a8:	4c 43       	clr.b	r12		;

0000b2aa <.LVL57>:
    b2aa:	0d 93       	cmp	#0,	r13	;r3 As==00
    b2ac:	06 20       	jnz	$+14     	;abs 0xb2ba

0000b2ae <.Loc.252.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].data ;
    b2ae:	0c 4e       	mov	r14,	r12	;
    b2b0:	5c 06       	rlam	#2,	r12	;
    b2b2:	0c 5e       	add	r14,	r12	;
    b2b4:	5c 02       	rlam	#1,	r12	;
    b2b6:	1c 4c 24 9b 	mov	-25820(r12),r12	;0xffff9b24

0000b2ba <.L48>:
		default:
			return 0;

	}

}
    b2ba:	30 41       	ret

0000b2bc <.L50>:
			return pers_timer_vars[0].xpr_timing[idx].data ;
    b2bc:	0c 4e       	mov	r14,	r12	;

0000b2be <.LVL59>:
    b2be:	5c 06       	rlam	#2,	r12	;
    b2c0:	0c 5e       	add	r14,	r12	;
    b2c2:	5c 02       	rlam	#1,	r12	;
    b2c4:	1c 4c 42 9b 	mov	-25790(r12),r12	;0xffff9b42
    b2c8:	f8 3f       	jmp	$-14     	;abs 0xb2ba

0000b2ca <.L49>:
			return pers_timer_vars[0].pdc_timing[idx].data ;
    b2ca:	0c 4e       	mov	r14,	r12	;

0000b2cc <.LVL61>:
    b2cc:	5c 06       	rlam	#2,	r12	;
    b2ce:	0c 5e       	add	r14,	r12	;
    b2d0:	5c 02       	rlam	#1,	r12	;
    b2d2:	1c 4c 60 9b 	mov	-25760(r12),r12	;0xffff9b60
    b2d6:	f1 3f       	jmp	$-28     	;abs 0xb2ba

0000b2d8 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    b2d8:	4e 4c       	mov.b	r12,	r14	;

0000b2da <.Loc.266.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    b2da:	1d 93       	cmp	#1,	r13	;r3 As==01
    b2dc:	13 24       	jz	$+40     	;abs 0xb304
    b2de:	2d 93       	cmp	#2,	r13	;r3 As==10
    b2e0:	0a 24       	jz	$+22     	;abs 0xb2f6
    b2e2:	4c 43       	clr.b	r12		;

0000b2e4 <.LVL63>:
    b2e4:	0d 93       	cmp	#0,	r13	;r3 As==00
    b2e6:	06 20       	jnz	$+14     	;abs 0xb2f4

0000b2e8 <.Loc.269.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    b2e8:	0c 4e       	mov	r14,	r12	;
    b2ea:	5c 06       	rlam	#2,	r12	;
    b2ec:	0c 5e       	add	r14,	r12	;
    b2ee:	5c 02       	rlam	#1,	r12	;
    b2f0:	5c 4c 22 9b 	mov.b	-25822(r12),r12	;0xffff9b22

0000b2f4 <.L56>:
		default:
		    return	0;
	}


}
    b2f4:	30 41       	ret

0000b2f6 <.L55>:
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    b2f6:	0c 4e       	mov	r14,	r12	;

0000b2f8 <.LVL65>:
    b2f8:	5c 06       	rlam	#2,	r12	;
    b2fa:	0c 5e       	add	r14,	r12	;
    b2fc:	5c 02       	rlam	#1,	r12	;
    b2fe:	5c 4c 40 9b 	mov.b	-25792(r12),r12	;0xffff9b40
    b302:	f8 3f       	jmp	$-14     	;abs 0xb2f4

0000b304 <.L54>:
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    b304:	0c 4e       	mov	r14,	r12	;

0000b306 <.LVL67>:
    b306:	5c 06       	rlam	#2,	r12	;
    b308:	0c 5e       	add	r14,	r12	;
    b30a:	5c 02       	rlam	#1,	r12	;
    b30c:	5c 4c 5e 9b 	mov.b	-25762(r12),r12	;0xffff9b5e
    b310:	f1 3f       	jmp	$-28     	;abs 0xb2f4

0000b312 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    b312:	4e 4c       	mov.b	r12,	r14	;

0000b314 <.Loc.283.1>:
	//get the persistent timer from persistent buffer
switch (interface)
    b314:	1d 93       	cmp	#1,	r13	;r3 As==01
    b316:	13 24       	jz	$+40     	;abs 0xb33e
    b318:	2d 93       	cmp	#2,	r13	;r3 As==10
    b31a:	0a 24       	jz	$+22     	;abs 0xb330
    b31c:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000b31e <.LVL69>:
    b31e:	0d 93       	cmp	#0,	r13	;r3 As==00
    b320:	06 20       	jnz	$+14     	;abs 0xb32e

0000b322 <.Loc.286.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].status ;
    b322:	0c 4e       	mov	r14,	r12	;
    b324:	5c 06       	rlam	#2,	r12	;
    b326:	0c 5e       	add	r14,	r12	;
    b328:	5c 02       	rlam	#1,	r12	;
    b32a:	1c 4c 20 9b 	mov	-25824(r12),r12	;0xffff9b20

0000b32e <.L58>:
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    b32e:	30 41       	ret

0000b330 <.L60>:
			return pers_timer_vars[0].xpr_timing[idx].status ;
    b330:	0c 4e       	mov	r14,	r12	;

0000b332 <.LVL71>:
    b332:	5c 06       	rlam	#2,	r12	;
    b334:	0c 5e       	add	r14,	r12	;
    b336:	5c 02       	rlam	#1,	r12	;
    b338:	1c 4c 3e 9b 	mov	-25794(r12),r12	;0xffff9b3e
    b33c:	f8 3f       	jmp	$-14     	;abs 0xb32e

0000b33e <.L59>:
			return pers_timer_vars[0].pdc_timing[idx].status ;
    b33e:	0c 4e       	mov	r14,	r12	;

0000b340 <.LVL73>:
    b340:	5c 06       	rlam	#2,	r12	;
    b342:	0c 5e       	add	r14,	r12	;
    b344:	5c 02       	rlam	#1,	r12	;
    b346:	1c 4c 5c 9b 	mov	-25764(r12),r12	;0xffff9b5c
    b34a:	f1 3f       	jmp	$-28     	;abs 0xb32e

0000b34c <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    b34c:	5c 0a       	rlam	#3,	r12	;

0000b34e <.LVL75>:
}
    b34e:	5c 4c 68 9b 	mov.b	-25752(r12),r12	;0xffff9b68
    b352:	30 41       	ret

0000b354 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    b354:	5c 0a       	rlam	#3,	r12	;

0000b356 <.LVL77>:
}
    b356:	1c 4c 6a 9b 	mov	-25750(r12),r12	;0xffff9b6a
    b35a:	30 41       	ret

0000b35c <udivmodhi4>:
    b35c:	0f 4c       	mov	r12,	r15	;

0000b35e <.LVL1>:
    b35e:	7c 40 11 00 	mov.b	#17,	r12	;#0x0011

0000b362 <.LVL2>:
    b362:	5b 43       	mov.b	#1,	r11	;r3 As==01

0000b364 <.L2>:
    b364:	0d 9f       	cmp	r15,	r13	;
    b366:	05 2c       	jc	$+12     	;abs 0xb372
    b368:	3c 53       	add	#-1,	r12	;r3 As==11

0000b36a <.Loc.38.1>:
    b36a:	0c 93       	cmp	#0,	r12	;r3 As==00
    b36c:	05 24       	jz	$+12     	;abs 0xb378

0000b36e <.Loc.38.1>:
    b36e:	0d 93       	cmp	#0,	r13	;r3 As==00
    b370:	07 34       	jge	$+16     	;abs 0xb380

0000b372 <.L10>:
    b372:	4c 43       	clr.b	r12		;

0000b374 <.L6>:
    b374:	0b 93       	cmp	#0,	r11	;r3 As==00
    b376:	07 20       	jnz	$+16     	;abs 0xb386

0000b378 <.L4>:
    b378:	0e 93       	cmp	#0,	r14	;r3 As==00
    b37a:	01 24       	jz	$+4      	;abs 0xb37e
    b37c:	0c 4f       	mov	r15,	r12	;

0000b37e <.L1>:
    b37e:	30 41       	ret

0000b380 <.L5>:
    b380:	5d 02       	rlam	#1,	r13	;

0000b382 <.Loc.41.1>:
    b382:	5b 02       	rlam	#1,	r11	;

0000b384 <L0^A>:
    b384:	ef 3f       	jmp	$-32     	;abs 0xb364

0000b386 <.L8>:
    b386:	0f 9d       	cmp	r13,	r15	;
    b388:	02 28       	jnc	$+6      	;abs 0xb38e

0000b38a <.Loc.47.1>:
    b38a:	0f 8d       	sub	r13,	r15	;

0000b38c <.Loc.48.1>:
    b38c:	0c db       	bis	r11,	r12	;

0000b38e <.L7>:
    b38e:	5b 03       	rrum	#1,	r11	;

0000b390 <.Loc.51.1>:
    b390:	5d 03       	rrum	#1,	r13	;
    b392:	f0 3f       	jmp	$-30     	;abs 0xb374

0000b394 <__mspabi_remu>:
    b394:	5e 43       	mov.b	#1,	r14	;r3 As==01
    b396:
0000b398 <L0^A>:
    b398:	5c b3       	bit.b	#1,	r12	;r3 As==01

0000b39a <.LVL34>:
    b39a:	30 41       	ret

0000b39c <__mulhi2>:
    b39c:	02 12       	push	r2		;
    b39e:	32 c2       	dint
    b3a0:	03 43       	nop
    b3a2:	82 4c c0 04 	mov	r12,	&0x04c0	;
    b3a6:	82 4d c8 04 	mov	r13,	&0x04c8	;
    b3aa:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    b3ae:	00 13       	reti

0000b3b0 <__umulhisi2>:
    b3b0:	02 12       	push	r2		;
    b3b2:	32 c2       	dint
    b3b4:	03 43       	nop
    b3b6:	82 4c c0 04 	mov	r12,	&0x04c0	;
    b3ba:	82 4d c8 04 	mov	r13,	&0x04c8	;
    b3be:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    b3c2:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    b3c6:	00 13       	reti

0000b3c8 <memcpy>:
    b3c8:	0f 4c       	mov	r12,	r15	;
    b3ca:	0e 5d       	add	r13,	r14	;

0000b3cc <.L2>:
    b3cc:	0d 9e       	cmp	r14,	r13	;
    b3ce:	01 20       	jnz	$+4      	;abs 0xb3d2

0000b3d0 <.Loc.111.1>:
    b3d0:	30 41       	ret

0000b3d2 <.L3>:
    b3d2:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

0000b3d6 <.LVL4>:
    b3d6:	1f 53       	inc	r15		;
    b3d8:	f9 3f       	jmp	$-12     	;abs 0xb3cc

0000b3da <_exit>:
    b3da:	ff 3f       	jmp	$+0      	;abs 0xb3da

0000b3dc <memset>:
    b3dc:	0e 5c       	add	r12,	r14	;

0000b3de <L0^A>:
    b3de:	0f 4c       	mov	r12,	r15	;

0000b3e0 <.L2>:
    b3e0:	0f 9e       	cmp	r14,	r15	;
    b3e2:	01 20       	jnz	$+4      	;abs 0xb3e6

0000b3e4 <.Loc.104.1>:
    b3e4:	30 41       	ret

0000b3e6 <.L3>:
    b3e6:	1f 53       	inc	r15		;

0000b3e8 <.LVL4>:
    b3e8:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    b3ec:	f9 3f       	jmp	$-12     	;abs 0xb3e0
