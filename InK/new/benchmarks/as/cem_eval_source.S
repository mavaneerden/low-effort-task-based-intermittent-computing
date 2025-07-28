
bin/cem_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00006d8c <__crt0_start>:
    6d8c:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00006d90 <__crt0_init_bss>:
    6d90:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00006d94 <.Loc.76.1>:
    6d94:	0d 43       	clr	r13		;

00006d96 <.Loc.77.1>:
    6d96:	3e 40 64 00 	mov	#100,	r14	;#0x0064

00006d9a <.Loc.81.1>:
    6d9a:	b0 12 f2 8e 	call	#-28942	;#0x8ef2

00006d9e <__crt0_run_init_array>:
    6d9e:	34 40 08 45 	mov	#17672,	r4	;#0x4508

00006da2 <.Loc.189.1>:
    6da2:	35 40 10 45 	mov	#17680,	r5	;#0x4510

00006da6 <.Loc.190.1>:
    6da6:	26 43       	mov	#2,	r6	;r3 As==10

00006da8 <.Loc.191.1>:
    6da8:	b0 12 b6 6d 	call	#28086		;#0x6db6

00006dac <__crt0_call_main>:
    6dac:	0c 43       	clr	r12		;

00006dae <.Loc.254.1>:
    6dae:	b0 12 c4 6d 	call	#28100		;#0x6dc4

00006db2 <__crt0_call_exit>:
    6db2:	b0 12 f0 8e 	call	#-28944	;#0x8ef0

00006db6 <__crt0_run_array>:
    6db6:	05 94       	cmp	r4,	r5	;

00006db8 <.Loc.294.1>:
    6db8:	04 24       	jz	$+10     	;abs 0x6dc2

00006dba <.Loc.295.1>:
    6dba:	27 44       	mov	@r4,	r7	;

00006dbc <.Loc.296.1>:
    6dbc:	04 56       	add	r6,	r4	;

00006dbe <.Loc.297.1>:
    6dbe:	87 12       	call	r7		;

00006dc0 <.Loc.298.1>:
    6dc0:	fa 3f       	jmp	$-10     	;abs 0x6db6

00006dc2 <_msp430_run_done>:
    6dc2:	30 41       	ret			

00006dc4 <main>:
#include "ink/ink.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    6dc4:	
00006dc6 <L0^A>:
    6dc6:	80 5a 5c 01 	add	r10,	0x015c	; PC rel. 0x6f24

00006dca <.Loc.10.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    6dca:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00006dce <.Loc.13.1>:

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
    6dce:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    6dd2:	22 02 

00006dd4 <.Loc.13.1>:
    6dd4:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    6dd8:	24 02 

00006dda <.Loc.13.1>:
    6dda:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    6dde:	22 02 

00006de0 <.Loc.13.1>:
#endif

    /* Start the scheduler. */
    ink_scheduler_run();
    6de0:	b0 12 c4 78 	call	#30916		;#0x78c4

00006de4 <.Loc.18.1>:
}
    6de4:	4c 43       	clr.b	r12		;
    6de6:	30 41       	ret			

00006de8 <__ink_entry_task>:
    __INK_SHARED_VAR_STRUCT_FIELD(node_t, _v_dict);
} __INK_SHARED_VAR_STRUCT_TYPE;
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
{
#ifdef RAISE_PIN
    full_run_started = 1;
    6de8:	d2 43 50 45 	mov.b	#1,	&0x4550	;r3 As==01

00006dec <.Loc.114.1>:
    pinCont          = 1;
    6dec:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

00006df0 <.Loc.116.1>:
#endif
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6df0:	b0 12 a4 72 	call	#29348		;#0x72a4

00006df4 <.LVL1>:
__INK_GET_VAR_FROM_BUF(_v_parent_next)  = 0;
    6df4:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;

00006df8 <.Loc.117.1>:
    6df8:	1d 4c 24 45 	mov	17700(r12),r13	;0x04524
    6dfc:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00006e00 <.Loc.118.1>:
    __INK_GET_VAR_FROM_BUF(_v_out_len)      = 0;
    6e00:	1d 4c 16 45 	mov	17686(r12),r13	;0x04516
    6e04:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00006e08 <.Loc.119.1>:
    __INK_GET_VAR_FROM_BUF(_v_letter)       = 0;
    6e08:	1d 4c 12 45 	mov	17682(r12),r13	;0x04512
    6e0c:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00006e10 <.Loc.120.1>:
    __INK_GET_VAR_FROM_BUF(_v_prev_sample)  = 0;
    6e10:	1d 4c 14 45 	mov	17684(r12),r13	;0x04514
    6e14:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00006e18 <.Loc.121.1>:
    __INK_GET_VAR_FROM_BUF(_v_letter_idx)   = 0;
    6e18:	1d 4c 10 45 	mov	17680(r12),r13	;0x04510

00006e1c <.Loc.117.1>:
__INK_GET_VAR_FROM_BUF(_v_parent_next)  = 0;
    6e1c:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00006e20 <.LVL3>:
    __INK_GET_VAR_FROM_BUF(_v_letter_idx)   = 0;
    6e20:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

00006e24 <.Loc.122.1>:
    __INK_GET_VAR_FROM_BUF(_v_sample_count) = 1;
    6e24:	1c 4c 0c 00 	mov	12(r12),r12	;0x0000c

00006e28 <.LVL4>:
    6e28:	9c 43 00 00 	mov	#1,	0(r12)	;r3 As==01

00006e2c <.Loc.123.1>:
    return task_init_dict;
}
    6e2c:	3c 40 32 6e 	mov	#28210,	r12	;#0x6e32
    6e30:	30 41       	ret			

00006e32 <task_init_dict>:

static void* __attribute__((annotate("INK::TASK15"))) task_init_dict()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6e32:	b0 12 a4 72 	call	#29348		;#0x72a4

00006e36 <.Loc.129.1>:
uint16_t i = __INK_GET_VAR_FROM_BUF(_v_letter);
    6e36:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    6e3a:	1f 4c 12 45 	mov	17682(r12),r15	;0x04512

00006e3e <.Loc.129.1>:
    6e3e:	2e 4f       	mov	@r15,	r14	;

00006e40 <.Loc.131.1>:

    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].letter  = i;
    6e40:	0d 4e       	mov	r14,	r13	;
    6e42:	5d 02       	rlam	#1,	r13	;
    6e44:	0d 5e       	add	r14,	r13	;
    6e46:	5d 02       	rlam	#1,	r13	;
    6e48:	1d 5c 2e 45 	add	17710(r12),r13	;0x0452e

00006e4c <.Loc.129.1>:
uint16_t i = __INK_GET_VAR_FROM_BUF(_v_letter);
    6e4c:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00006e50 <.LVL8>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].letter  = i;
    6e50:	8d 4e 00 00 	mov	r14,	0(r13)	;

00006e54 <.Loc.132.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].sibling = NIL;
    6e54:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00006e58 <.Loc.133.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].child   = NIL;
    6e58:	8d 43 04 00 	mov	#0,	4(r13)	;r3 As==00

00006e5c <.Loc.134.1>:
    ++__INK_GET_VAR_FROM_BUF(_v_letter);
    6e5c:	9f 53 00 00 	inc	0(r15)		;

00006e60 <.Loc.136.1>:

    if (i < NUM_LETTERS)
    6e60:	7d 40 ff 00 	mov.b	#255,	r13	;#0x00ff
    6e64:	0d 9e       	cmp	r14,	r13	;
    6e66:	08 2c       	jc	$+18     	;abs 0x6e78

00006e68 <.Loc.142.1>:
    {
        return task_init_dict;
    }
    else
    {
        __INK_GET_VAR_FROM_BUF(_v_node_count) = NUM_LETTERS;
    6e68:	1c 4c 08 00 	mov	8(r12),	r12	;

00006e6c <.LVL9>:
    6e6c:	bc 40 00 01 	mov	#256,	0(r12)	;#0x0100
    6e70:	00 00 

00006e72 <.Loc.143.1>:
        return task_sample;
    6e72:	3c 40 7e 6e 	mov	#28286,	r12	;#0x6e7e

00006e76 <.Loc.145.1>:
    }
}
    6e76:	30 41       	ret			

00006e78 <.L5>:
        return task_init_dict;
    6e78:	3c 40 32 6e 	mov	#28210,	r12	;#0x6e32

00006e7c <.LVL11>:
}
    6e7c:	30 41       	ret			

00006e7e <task_sample>:

static void* __attribute__((annotate("INK::TASK15"))) task_sample()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6e7e:	b0 12 a4 72 	call	#29348		;#0x72a4

00006e82 <.Loc.150.1>:
unsigned letter_idx      = __INK_GET_VAR_FROM_BUF(_v_letter_idx);
    6e82:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    6e86:	1d 4c 10 45 	mov	17680(r12),r13	;0x04510

00006e8a <.Loc.150.1>:
    6e8a:	2c 4d       	mov	@r13,	r12	;

00006e8c <.LVL14>:
    unsigned next_letter_idx = letter_idx + 1;
    6e8c:	0e 4c       	mov	r12,	r14	;
    6e8e:	1e 53       	inc	r14		;

00006e90 <.Loc.153.1>:

    if (next_letter_idx == NUM_LETTERS_IN_SAMPLE)
    6e90:	1c 93       	cmp	#1,	r12	;r3 As==01
    6e92:	07 24       	jz	$+16     	;abs 0x6ea2

00006e94 <.Loc.158.1>:
    {
        next_letter_idx = 0;
    }

    if (letter_idx == 0)
    6e94:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e96:	06 20       	jnz	$+14     	;abs 0x6ea4

00006e98 <.Loc.160.1>:
    {
        __INK_GET_VAR_FROM_BUF(_v_letter_idx) = next_letter_idx;
    6e98:	9d 43 00 00 	mov	#1,	0(r13)	;r3 As==01

00006e9c <.Loc.161.1>:
        return task_measure_temp;
    6e9c:	3c 40 14 71 	mov	#28948,	r12	;#0x7114

00006ea0 <.LVL16>:
    else
    {
        __INK_GET_VAR_FROM_BUF(_v_letter_idx) = next_letter_idx;
        return task_letterize;
    }
}
    6ea0:	30 41       	ret			

00006ea2 <.L9>:
        next_letter_idx = 0;
    6ea2:	4e 43       	clr.b	r14		;

00006ea4 <.L7>:
        __INK_GET_VAR_FROM_BUF(_v_letter_idx) = next_letter_idx;
    6ea4:	8d 4e 00 00 	mov	r14,	0(r13)	;

00006ea8 <.Loc.166.1>:
        return task_letterize;
    6ea8:	3c 40 ae 6e 	mov	#28334,	r12	;#0x6eae

00006eac <.LVL19>:
}
    6eac:	30 41       	ret			

00006eae <task_letterize>:
    __INK_GET_VAR_FROM_BUF(_v_sample)       = sample;
    return task_letterize;
}

static void* __attribute__((annotate("INK::TASK15"))) task_letterize()
{
    6eae:	1a 15       	pushm	#2,	r10	;16-bit words

00006eb0 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6eb0:	b0 12 a4 72 	call	#29348		;#0x72a4

00006eb4 <.Loc.186.1>:
unsigned letter_idx = __INK_GET_VAR_FROM_BUF(_v_letter_idx);
    6eb4:	0a 4c       	mov	r12,	r10	;
    6eb6:	5a 02       	rlam	#1,	r10	;
    6eb8:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;

00006ebc <.Loc.186.1>:
    6ebc:	1c 4c 10 45 	mov	17680(r12),r12	;0x04510
    6ec0:	2c 4c       	mov	@r12,	r12	;

00006ec2 <.LVL22>:

    if (letter_idx == 0)
    6ec2:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ec4:	1a 24       	jz	$+54     	;abs 0x6efa

00006ec6 <.LVL23>:
    {
        letter_idx = NUM_LETTERS_IN_SAMPLE;
    }
    else
    {
        letter_idx--;
    6ec6:	3c 53       	add	#-1,	r12	;r3 As==11

00006ec8 <.LVL24>:
    6ec8:	09 4c       	mov	r12,	r9	;
    6eca:	59 0a       	rlam	#3,	r9	;
    6ecc:	7c 40 ff 00 	mov.b	#255,	r12	;#0x00ff

00006ed0 <.LVL25>:
    6ed0:	0d 49       	mov	r9,	r13	;
    6ed2:	b0 12 ca 8e 	call	#-28982	;#0x8eca

00006ed6 <.L11>:
    }

    unsigned letter_shift = LETTER_SIZE_BITS * letter_idx;
    letter_t letter       = (__INK_GET_VAR_FROM_BUF(_v_sample) & (LETTER_MASK << letter_shift)) >> letter_shift;

    __INK_GET_VAR_FROM_BUF(_v_letter) = letter;
    6ed6:	0d 4a       	mov	r10,	r13	;
    6ed8:	5d 0e       	rlam	#4,	r13	;

00006eda <.Loc.200.1>:
    6eda:	1a 4d 12 45 	mov	17682(r13),r10	;0x04512

00006ede <.Loc.200.1>:
    6ede:	3d 50 10 45 	add	#17680,	r13	;#0x4510

00006ee2 <.Loc.198.1>:
    letter_t letter       = (__INK_GET_VAR_FROM_BUF(_v_sample) & (LETTER_MASK << letter_shift)) >> letter_shift;
    6ee2:	1d 4d 0a 00 	mov	10(r13),r13	;0x0000a

00006ee6 <.Loc.198.1>:
    6ee6:	2c fd       	and	@r13,	r12	;
    6ee8:	0d 49       	mov	r9,	r13	;
    6eea:	b0 12 d6 8e 	call	#-28970	;#0x8ed6
    6eee:	8a 4c 00 00 	mov	r12,	0(r10)	;

00006ef2 <.Loc.201.1>:
    return task_compress;
}
    6ef2:	3c 40 00 6f 	mov	#28416,	r12	;#0x6f00
    6ef6:	19 17       	popm	#2,	r10	;16-bit words

00006ef8 <.LCFI1>:
    6ef8:	30 41       	ret			

00006efa <.L12>:
    6efa:	79 40 10 00 	mov.b	#16,	r9	;#0x0010
    6efe:	eb 3f       	jmp	$-40     	;abs 0x6ed6

00006f00 <task_compress>:

static void* task_compress()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6f00:	b0 12 a4 72 	call	#29348		;#0x72a4

00006f04 <.Loc.207.1>:
index_t parent = __INK_GET_VAR_FROM_BUF(_v_parent_next);
    6f04:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;

00006f08 <.Loc.207.1>:
    6f08:	1d 4c 24 45 	mov	17700(r12),r13	;0x04524
    6f0c:	2e 4d       	mov	@r13,	r14	;

00006f0e <.LVL31>:

    uint16_t __cry;

    __cry      = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[parent].child;
    6f0e:	0d 4e       	mov	r14,	r13	;
    6f10:	5d 02       	rlam	#1,	r13	;
    6f12:	0d 5e       	add	r14,	r13	;
    6f14:	5d 02       	rlam	#1,	r13	;
    6f16:	1d 5c 2e 45 	add	17710(r12),r13	;0x0452e

00006f1a <.Loc.211.1>:
    6f1a:	1b 4d 04 00 	mov	4(r13),	r11	;

00006f1e <.LVL32>:
    __INK_GET_VAR_FROM_BUF(_v_sibling) = __cry;
    6f1e:	1f 4c 1e 45 	mov	17694(r12),r15	;0x0451e
    6f22:	8f 4b 00 00 	mov	r11,	0(r15)	;

00006f26 <.LVL33>:

    __cry                 = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[parent].letter;
    __INK_GET_VAR_FROM_BUF(_v_parent_node).letter = __cry;
    6f26:	1f 4c 26 45 	mov	17702(r12),r15	;0x04526

00006f2a <.Loc.215.1>:
    6f2a:	af 4d 00 00 	mov	@r13,	0(r15)	;

00006f2e <.LVL34>:

    __cry                  = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[parent].sibling;
    __INK_GET_VAR_FROM_BUF(_v_parent_node).sibling = __cry;
    6f2e:	9f 4d 02 00 	mov	2(r13),	2(r15)	;
    6f32:	02 00 

00006f34 <.LVL35>:

    __cry                = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[parent].child;
    __INK_GET_VAR_FROM_BUF(_v_parent_node).child = __cry;
    6f34:	8f 4b 04 00 	mov	r11,	4(r15)	;

00006f38 <.Loc.223.1>:

    __INK_GET_VAR_FROM_BUF(_v_parent) = parent;
    6f38:	1f 4c 22 45 	mov	17698(r12),r15	;0x04522
    6f3c:	8f 4e 00 00 	mov	r14,	0(r15)	;

00006f40 <.LVL36>:
    __cry     = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[parent].child;
    __INK_GET_VAR_FROM_BUF(_v_child)  = __cry;
    6f40:	1e 4c 20 45 	mov	17696(r12),r14	;0x04520

00006f44 <.LVL37>:
index_t parent = __INK_GET_VAR_FROM_BUF(_v_parent_next);
    6f44:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00006f48 <.LVL38>:
    __INK_GET_VAR_FROM_BUF(_v_child)  = __cry;
    6f48:	9e 4d 04 00 	mov	4(r13),	0(r14)	;
    6f4c:	00 00 

00006f4e <.LVL39>:

    ++__INK_GET_VAR_FROM_BUF(_v_sample_count);
    6f4e:	1c 4c 0c 00 	mov	12(r12),r12	;0x0000c

00006f52 <.LVL40>:
    6f52:	9c 53 00 00 	inc	0(r12)		;

00006f56 <.LVL41>:

    return task_find_sibling;
}
    6f56:	3c 40 5c 6f 	mov	#28508,	r12	;#0x6f5c
    6f5a:	30 41       	ret			

00006f5c <task_find_sibling>:

static void* __attribute__((annotate("INK::TASK15"))) task_find_sibling()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6f5c:	b0 12 a4 72 	call	#29348		;#0x72a4

00006f60 <.Loc.235.1>:
int i = __INK_GET_VAR_FROM_BUF(_v_sibling);
    6f60:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    6f64:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00006f68 <.LVL44>:
    6f68:	1f 4c 0e 00 	mov	14(r12),r15	;0x0000e
    6f6c:	2e 4f       	mov	@r15,	r14	;

00006f6e <.LVL45>:

    if (i != NIL)
    6f6e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6f70:	1c 24       	jz	$+58     	;abs 0x6faa

00006f72 <.LBB4>:
    {
        uint16_t __cry = __INK_GET_VAR_FROM_BUF(_v_letter);
    6f72:	1d 4c 02 00 	mov	2(r12),	r13	;
    6f76:	2b 4d       	mov	@r13,	r11	;

00006f78 <.LVL46>:
        if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].letter == __cry)
    6f78:	0d 4e       	mov	r14,	r13	;
    6f7a:	5d 02       	rlam	#1,	r13	;
    6f7c:	0d 5e       	add	r14,	r13	;
    6f7e:	5d 02       	rlam	#1,	r13	;
    6f80:	1d 5c 1e 00 	add	30(r12),r13	;0x0001e

00006f84 <.Loc.240.1>:
    6f84:	8d 9b 00 00 	cmp	r11,	0(r13)	;
    6f88:	1e 24       	jz	$+62     	;abs 0x6fc6

00006f8a <.Loc.247.1>:
            __cry          = __INK_GET_VAR_FROM_BUF(_v_sibling);
            __INK_GET_VAR_FROM_BUF(_v_parent_next) = __cry;

            return task_letterize;
        }
        else if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].sibling != 0)
    6f8a:	1d 4d 02 00 	mov	2(r13),	r13	;

00006f8e <.Loc.247.1>:
    6f8e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f90:	21 20       	jnz	$+68     	;abs 0x6fd4

00006f92 <.LBB5>:
        }
        else
        {
            index_t starting_node_idx = (index_t)__INK_GET_VAR_FROM_BUF(_v_letter);

            __INK_GET_VAR_FROM_BUF(_v_parent_next) = starting_node_idx;
    6f92:	1d 4c 14 00 	mov	20(r12),r13	;0x00014
    6f96:	8d 4b 00 00 	mov	r11,	0(r13)	;

00006f9a <.Loc.260.1>:

            if (__INK_GET_VAR_FROM_BUF(_v_child) == NIL)
    6f9a:	1c 4c 10 00 	mov	16(r12),r12	;0x00010

00006f9e <.LVL48>:
    6f9e:	8c 93 00 00 	cmp	#0,	0(r12)	;r3 As==00
    6fa2:	0e 20       	jnz	$+30     	;abs 0x6fc0

00006fa4 <.L20>:
            {
                return task_add_insert;
    6fa4:	3c 40 24 70 	mov	#28708,	r12	;#0x7024

00006fa8 <.LBE4>:
        else
        {
            return task_add_node;
        }
    }
}
    6fa8:	30 41       	ret			

00006faa <.L15>:
        index_t starting_node_idx = (index_t)__INK_GET_VAR_FROM_BUF(_v_letter);
    6faa:	1e 4c 02 00 	mov	2(r12),	r14	;

00006fae <.LVL51>:
        __INK_GET_VAR_FROM_BUF(_v_parent_next) = starting_node_idx;
    6fae:	1d 4c 14 00 	mov	20(r12),r13	;0x00014
    6fb2:	ad 4e 00 00 	mov	@r14,	0(r13)	;

00006fb6 <.LVL52>:
        if (__INK_GET_VAR_FROM_BUF(_v_child) == NIL)
    6fb6:	1c 4c 10 00 	mov	16(r12),r12	;0x00010

00006fba <.LVL53>:
    6fba:	8c 93 00 00 	cmp	#0,	0(r12)	;r3 As==00
    6fbe:	f2 27       	jz	$-26     	;abs 0x6fa4

00006fc0 <.L19>:
                return task_add_node;
    6fc0:	3c 40 de 6f 	mov	#28638,	r12	;#0x6fde

00006fc4 <.Loc.285.1>:
}
    6fc4:	30 41       	ret			

00006fc6 <.L21>:
            __INK_GET_VAR_FROM_BUF(_v_parent_next) = __cry;
    6fc6:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00006fca <.LVL56>:
    6fca:	8c 4e 00 00 	mov	r14,	0(r12)	;

00006fce <.Loc.245.1>:
            return task_letterize;
    6fce:	3c 40 ae 6e 	mov	#28334,	r12	;#0x6eae

00006fd2 <.Loc.285.1>:
}
    6fd2:	30 41       	ret			

00006fd4 <.L22>:
            __INK_GET_VAR_FROM_BUF(_v_sibling) = __cry;
    6fd4:	8f 4d 00 00 	mov	r13,	0(r15)	;

00006fd8 <.Loc.252.1>:
            return task_find_sibling;
    6fd8:	3c 40 5c 6f 	mov	#28508,	r12	;#0x6f5c

00006fdc <.LVL58>:
}
    6fdc:	30 41       	ret			

00006fde <task_add_node>:

static void* __attribute__((annotate("INK::TASK15"))) task_add_node()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6fde:	b0 12 a4 72 	call	#29348		;#0x72a4

00006fe2 <.Loc.290.1>:
int i = __INK_GET_VAR_FROM_BUF(_v_sibling);
    6fe2:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    6fe6:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00006fea <.LVL61>:
    6fea:	1e 4c 0e 00 	mov	14(r12),r14	;0x0000e

00006fee <.LVL62>:

    if (__INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].sibling != NIL)
    6fee:	2d 4e       	mov	@r14,	r13	;
    6ff0:	5d 02       	rlam	#1,	r13	;
    6ff2:	2d 5e       	add	@r14,	r13	;
    6ff4:	5d 02       	rlam	#1,	r13	;
    6ff6:	1d 5c 1e 00 	add	30(r12),r13	;0x0001e

00006ffa <.Loc.292.1>:
    6ffa:	1f 4d 02 00 	mov	2(r13),	r15	;

00006ffe <.Loc.292.1>:
    6ffe:	0f 93       	cmp	#0,	r15	;r3 As==00
    7000:	05 24       	jz	$+12     	;abs 0x700c

00007002 <.LBB11>:
    {
        index_t next_sibling = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].sibling;
        __INK_GET_VAR_FROM_BUF(_v_sibling)           = next_sibling;
    7002:	8e 4f 00 00 	mov	r15,	0(r14)	;

00007006 <.LVL64>:
        return task_add_node;
    7006:	3c 40 de 6f 	mov	#28638,	r12	;#0x6fde

0000700a <.LBE11>:
        __cry                   = __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].child;
        __INK_GET_VAR_FROM_BUF(_v_sibling_node).child   = __cry;

        return task_add_insert;
    }
}
    700a:	30 41       	ret			

0000700c <.L24>:
        __INK_GET_VAR_FROM_BUF(_v_sibling_node).letter  = __cry;
    700c:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00007010 <.LVL67>:
    7010:	ac 4d 00 00 	mov	@r13,	0(r12)	;

00007014 <.LVL68>:
        __INK_GET_VAR_FROM_BUF(_v_sibling_node).sibling = __cry;
    7014:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

00007018 <.LVL69>:
        __INK_GET_VAR_FROM_BUF(_v_sibling_node).child   = __cry;
    7018:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    701c:	04 00 

0000701e <.LVL70>:
        return task_add_insert;
    701e:	3c 40 24 70 	mov	#28708,	r12	;#0x7024

00007022 <.LBE12>:
}
    7022:	30 41       	ret			

00007024 <task_add_insert>:

static void* task_add_insert()
{
    7024:	3a 15       	pushm	#4,	r10	;16-bit words

00007026 <.LCFI3>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    7026:	b0 12 a4 72 	call	#29348		;#0x72a4

0000702a <.Loc.317.1>:
if (__INK_GET_VAR_FROM_BUF(_v_node_count) == DICT_SIZE)
    702a:	3f 40 10 45 	mov	#17680,	r15	;#0x4510
    702e:	0b 4c       	mov	r12,	r11	;
    7030:	5b 02       	rlam	#1,	r11	;
    7032:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    7036:	0c 5f       	add	r15,	r12	;

00007038 <.LVL74>:
    7038:	1a 4c 08 00 	mov	8(r12),	r10	;
    703c:	2e 4a       	mov	@r10,	r14	;

0000703e <.Loc.317.1>:
    703e:	3e 90 00 02 	cmp	#512,	r14	;#0x0200
    7042:	35 24       	jz	$+108    	;abs 0x70ae

00007044 <.LVL75>:
            ;
    }

    index_t  child = __INK_GET_VAR_FROM_BUF(_v_node_count);
    uint16_t __cry;
    if (__INK_GET_VAR_FROM_BUF(_v_parent_node).child == NIL)
    7044:	18 4c 16 00 	mov	22(r12),r8	;0x00016
    7048:	19 4c 12 00 	mov	18(r12),r9	;0x00012
    704c:	1d 4c 1e 00 	mov	30(r12),r13	;0x0001e

00007050 <.Loc.325.1>:
    7050:	88 93 04 00 	cmp	#0,	4(r8)	;r3 As==00
    7054:	2d 24       	jz	$+92     	;abs 0x70b0

00007056 <.LBB13>:
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].child   = __cry;
    }
    else
    {  // a sibling

        index_t last_sibling = __INK_GET_VAR_FROM_BUF(_v_sibling);
    7056:	18 4c 0e 00 	mov	14(r12),r8	;0x0000e
    705a:	27 48       	mov	@r8,	r7	;

0000705c <.LVL76>:

        __INK_GET_VAR_FROM_BUF(_v_sibling_node).sibling       = child;
    705c:	18 4c 18 00 	mov	24(r12),r8	;0x00018

00007060 <.Loc.343.1>:
    7060:	88 4e 02 00 	mov	r14,	2(r8)	;

00007064 <.LVL77>:
        __cry                         = __INK_GET_VAR_FROM_BUF(_v_sibling_node).letter;
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[last_sibling].letter  = __cry;
    7064:	0c 47       	mov	r7,	r12	;

00007066 <.LVL78>:
    7066:	5c 02       	rlam	#1,	r12	;
    7068:	0c 57       	add	r7,	r12	;
    706a:	5c 02       	rlam	#1,	r12	;
    706c:	0c 5d       	add	r13,	r12	;

0000706e <.Loc.345.1>:
    706e:	ac 48 00 00 	mov	@r8,	0(r12)	;

00007072 <.LVL79>:
        __cry                         = __INK_GET_VAR_FROM_BUF(_v_sibling_node).sibling;
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[last_sibling].sibling = __cry;
    7072:	8c 4e 02 00 	mov	r14,	2(r12)	;

00007076 <.LVL80>:
        __cry                         = __INK_GET_VAR_FROM_BUF(_v_sibling_node).child;
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[last_sibling].child   = __cry;
    7076:	9c 48 04 00 	mov	4(r8),	4(r12)	;
    707a:	04 00 

0000707c <.L30>:
    }
    __cry                  = __INK_GET_VAR_FROM_BUF(_v_letter);
    707c:	5b 0e       	rlam	#4,	r11	;
    707e:	0f 5b       	add	r11,	r15	;

00007080 <.Loc.351.1>:
    7080:	18 4f 02 00 	mov	2(r15),	r8	;

00007084 <.LVL82>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[child].letter  = __cry;
    7084:	0c 4e       	mov	r14,	r12	;
    7086:	5c 02       	rlam	#1,	r12	;
    7088:	0c 5e       	add	r14,	r12	;
    708a:	5c 02       	rlam	#1,	r12	;
    708c:	0d 5c       	add	r12,	r13	;

0000708e <.Loc.352.1>:
    708e:	ad 48 00 00 	mov	@r8,	0(r13)	;

00007092 <.LVL83>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[child].sibling = NIL;
    7092:	8d 43 02 00 	mov	#0,	2(r13)	;r3 As==00

00007096 <.Loc.354.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[child].child   = NIL;
    7096:	8d 43 04 00 	mov	#0,	4(r13)	;r3 As==00

0000709a <.LVL84>:
    __cry                  = __INK_GET_VAR_FROM_BUF(_v_parent);
    __INK_GET_VAR_FROM_BUF(_v_symbol)              = __cry;
    709a:	1c 4f 1a 00 	mov	26(r15),r12	;0x0001a
    709e:	ac 49 00 00 	mov	@r9,	0(r12)	;

000070a2 <.LVL85>:
    ++__INK_GET_VAR_FROM_BUF(_v_node_count);
    70a2:	9a 53 00 00 	inc	0(r10)		;

000070a6 <.LVL86>:

    return task_append_compressed;
}
    70a6:	3c 40 ce 70 	mov	#28878,	r12	;#0x70ce
    70aa:	37 17       	popm	#4,	r10	;16-bit words

000070ac <.LCFI4>:
    70ac:	30 41       	ret			

000070ae <.L28>:
        while (1)
    70ae:	ff 3f       	jmp	$+0      	;abs 0x70ae

000070b0 <.L31>:
        __INK_GET_VAR_FROM_BUF(_v_parent_node).child = child;
    70b0:	88 4e 04 00 	mov	r14,	4(r8)	;

000070b4 <.LVL89>:
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].letter  = __cry;
    70b4:	2c 49       	mov	@r9,	r12	;

000070b6 <.LVL90>:
    70b6:	5c 02       	rlam	#1,	r12	;
    70b8:	2c 59       	add	@r9,	r12	;
    70ba:	5c 02       	rlam	#1,	r12	;
    70bc:	0c 5d       	add	r13,	r12	;

000070be <.Loc.332.1>:
    70be:	ac 48 00 00 	mov	@r8,	0(r12)	;

000070c2 <.LVL91>:
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].sibling = __cry;
    70c2:	9c 48 02 00 	mov	2(r8),	2(r12)	;
    70c6:	02 00 

000070c8 <.LVL92>:
        __INK_GET_VAR_FROM_BUF_ARRAY(_v_dict)[i].child   = __cry;
    70c8:	8c 4e 04 00 	mov	r14,	4(r12)	;

000070cc <.LBE14>:
    70cc:	d7 3f       	jmp	$-80     	;abs 0x707c

000070ce <task_append_compressed>:

static void* task_append_compressed()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    70ce:	b0 12 a4 72 	call	#29348		;#0x72a4

000070d2 <.Loc.365.1>:
uint16_t __cry;
    int      i                   = __INK_GET_VAR_FROM_BUF(_v_out_len);
    70d2:	0d 4c       	mov	r12,	r13	;
    70d4:	44 18 0d 5d 	rpt #5 { rlax.w	r13		;
    70d8:	1e 4d 16 45 	mov	17686(r13),r14	;0x04516

000070dc <.LVL95>:
    __cry                        = __INK_GET_VAR_FROM_BUF(_v_symbol);
    70dc:	1f 4d 2a 45 	mov	17706(r13),r15	;0x0452a

000070e0 <.LVL96>:
    __INK_GET_VAR_FROM_BUF_ARRAY(_v_compressed_data)[i].letter = __cry;
    70e0:	2c 4e       	mov	@r14,	r12	;
    70e2:	5c 02       	rlam	#1,	r12	;
    70e4:	2c 5e       	add	@r14,	r12	;
    70e6:	5c 02       	rlam	#1,	r12	;
    70e8:	1c 5d 2c 45 	add	17708(r13),r12	;0x0452c
    70ec:	ac 4f 00 00 	mov	@r15,	0(r12)	;

000070f0 <.LVL98>:

    ++__INK_GET_VAR_FROM_BUF(_v_out_len);
    70f0:	2c 4e       	mov	@r14,	r12	;

000070f2 <.LVL99>:
    70f2:	1c 53       	inc	r12		;
    70f4:	8e 4c 00 00 	mov	r12,	0(r14)	;

000070f8 <.Loc.372.1>:

    if (__INK_GET_VAR_FROM_BUF(_v_out_len) == BLOCK_SIZE)
    70f8:	3c 90 40 00 	cmp	#64,	r12	;#0x0040
    70fc:	03 24       	jz	$+8      	;abs 0x7104

000070fe <.Loc.378.1>:
    {
        return task_print;
    }
    else
    {
        return task_sample;
    70fe:	3c 40 7e 6e 	mov	#28286,	r12	;#0x6e7e

00007102 <.Loc.380.1>:
    }
}
    7102:	30 41       	ret			

00007104 <.L34>:
        return task_print;
    7104:	3c 40 0a 71 	mov	#28938,	r12	;#0x710a

00007108 <.Loc.380.1>:
}
    7108:	30 41       	ret			

0000710a <task_print>:

static void* task_print()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    710a:	b0 12 a4 72 	call	#29348		;#0x72a4

0000710e <.Loc.385.1>:
    for (i = 0; i < BLOCK_SIZE; ++i)
    {
        index_t index = __INK_GET_VAR_FROM_BUF_ARRAY(_v_compressed_data)[i].letter;
    }
    return task_done;
}
    710e:	3c 40 3e 71 	mov	#28990,	r12	;#0x713e
    7112:	30 41       	ret			

00007114 <task_measure_temp>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    7114:	b0 12 a4 72 	call	#29348		;#0x72a4

00007118 <.Loc.173.1>:
    prev_sample = __INK_GET_VAR_FROM_BUF(_v_prev_sample);
    7118:	44 18 0c 5c 	rpt #5 { rlax.w	r12		;
    711c:	1e 4c 14 45 	mov	17684(r12),r14	;0x04514
    7120:	3c 50 10 45 	add	#17680,	r12	;#0x4510

00007124 <.LBB15>:
    letter_t sample = (prev_sample + 1) & 0x03;
    7124:	2d 4e       	mov	@r14,	r13	;
    7126:	1d 53       	inc	r13		;

00007128 <.Loc.87.1>:
    7128:	7d f0 03 00 	and.b	#3,	r13	;

0000712c <.LBE15>:
    __INK_GET_VAR_FROM_BUF(_v_prev_sample)  = prev_sample;
    712c:	8e 4d 00 00 	mov	r13,	0(r14)	;

00007130 <.Loc.179.1>:
    __INK_GET_VAR_FROM_BUF(_v_sample)       = sample;
    7130:	1c 4c 0a 00 	mov	10(r12),r12	;0x0000a

00007134 <.LVL105>:
    7134:	8c 4d 00 00 	mov	r13,	0(r12)	;

00007138 <.Loc.180.1>:
}
    7138:	3c 40 ae 6e 	mov	#28334,	r12	;#0x6eae
    713c:	30 41       	ret			

0000713e <task_done>:

static void* task_done()
{
#ifdef RAISE_PIN
    if (full_run_started)
    713e:	c2 93 50 45 	cmp.b	#0,	&0x4550	;r3 As==00
    7142:	0a 24       	jz	$+22     	;abs 0x7158

00007144 <.LBB19>:
    {
        full_run_started = 0;
    7144:	c2 43 50 45 	mov.b	#0,	&0x4550	;r3 As==00

00007148 <.Loc.400.1>:
        __port_on(3, 4);
    7148:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    714c:	22 02 

0000714e <.Loc.400.1>:
        __port_off(3, 4);
    714e:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    7152:	22 02 

00007154 <.Loc.401.1>:
        pinCont = 0;
    7154:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00007158 <.L38>:
    }
#endif

    return INK_THREAD_ENTRY_TASK;
}
    7158:	3c 40 e8 6d 	mov	#28136,	r12	;#0x6de8
    715c:	30 41       	ret			

0000715e <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    715e:	b0 12 ea 72 	call	#29418		;#0x72ea
    7162:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7164:	01 20       	jnz	$+4      	;abs 0x7168

00007166 <.Loc.110.1>:
    7166:	30 41       	ret			

00007168 <.L44>:
    7168:	5e 43       	mov.b	#1,	r14	;r3 As==01
    716a:	3d 40 e8 6d 	mov	#28136,	r13	;#0x6de8
    716e:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    7172:	b0 12 58 73 	call	#29528		;#0x7358

00007176 <.Loc.110.1>:
    7176:	30 41       	ret			

00007178 <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS(_v_letter_idx);
    7178:	3c 40 10 45 	mov	#17680,	r12	;#0x4510
    717c:	bc 40 e4 5f 	mov	#24548,	0(r12)	;#0x5fe4
    7180:	00 00 

00007182 <.Loc.409.1>:
    7182:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7186:	3d 50 e4 5f 	add	#24548,	r13	;#0x5fe4
    718a:	8c 4d 20 00 	mov	r13,	32(r12)	; 0x0020

0000718e <.Loc.409.1>:
    __INK_SET_BUFFER_POINTERS(_v_letter);
    718e:	bc 40 e2 5f 	mov	#24546,	2(r12)	;#0x5fe2
    7192:	02 00 

00007194 <.Loc.410.1>:
    7194:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7198:	3d 50 e2 5f 	add	#24546,	r13	;#0x5fe2
    719c:	8c 4d 22 00 	mov	r13,	34(r12)	; 0x0022

000071a0 <.Loc.410.1>:
    __INK_SET_BUFFER_POINTERS(_v_prev_sample);
    71a0:	bc 40 e0 5f 	mov	#24544,	4(r12)	;#0x5fe0
    71a4:	04 00 

000071a6 <.Loc.411.1>:
    71a6:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    71aa:	3d 50 e0 5f 	add	#24544,	r13	;#0x5fe0
    71ae:	8c 4d 24 00 	mov	r13,	36(r12)	; 0x0024

000071b2 <.Loc.411.1>:
    __INK_SET_BUFFER_POINTERS(_v_out_len);
    71b2:	bc 40 de 5f 	mov	#24542,	6(r12)	;#0x5fde
    71b6:	06 00 

000071b8 <.Loc.412.1>:
    71b8:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    71bc:	3d 50 de 5f 	add	#24542,	r13	;#0x5fde
    71c0:	8c 4d 26 00 	mov	r13,	38(r12)	; 0x0026

000071c4 <.Loc.412.1>:
    __INK_SET_BUFFER_POINTERS(_v_node_count);
    71c4:	bc 40 dc 5f 	mov	#24540,	8(r12)	;#0x5fdc
    71c8:	08 00 

000071ca <.Loc.413.1>:
    71ca:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    71ce:	3d 50 dc 5f 	add	#24540,	r13	;#0x5fdc
    71d2:	8c 4d 28 00 	mov	r13,	40(r12)	; 0x0028

000071d6 <.Loc.413.1>:
    __INK_SET_BUFFER_POINTERS(_v_sample);
    71d6:	bc 40 da 5f 	mov	#24538,	10(r12)	;#0x5fda, 0x000a
    71da:	0a 00 

000071dc <.Loc.414.1>:
    71dc:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    71e0:	3d 50 da 5f 	add	#24538,	r13	;#0x5fda
    71e4:	8c 4d 2a 00 	mov	r13,	42(r12)	; 0x002a

000071e8 <.Loc.414.1>:
    __INK_SET_BUFFER_POINTERS(_v_sample_count);
    71e8:	bc 40 d8 5f 	mov	#24536,	12(r12)	;#0x5fd8, 0x000c
    71ec:	0c 00 

000071ee <.Loc.415.1>:
    71ee:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    71f2:	3d 50 d8 5f 	add	#24536,	r13	;#0x5fd8
    71f6:	8c 4d 2c 00 	mov	r13,	44(r12)	; 0x002c

000071fa <.Loc.415.1>:
    __INK_SET_BUFFER_POINTERS(_v_sibling);
    71fa:	bc 40 d6 5f 	mov	#24534,	14(r12)	;#0x5fd6, 0x000e
    71fe:	0e 00 

00007200 <.Loc.416.1>:
    7200:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7204:	3d 50 d6 5f 	add	#24534,	r13	;#0x5fd6
    7208:	8c 4d 2e 00 	mov	r13,	46(r12)	; 0x002e

0000720c <.Loc.416.1>:
    __INK_SET_BUFFER_POINTERS(_v_child);
    720c:	bc 40 d4 5f 	mov	#24532,	16(r12)	;#0x5fd4, 0x0010
    7210:	10 00 

00007212 <.Loc.417.1>:
    7212:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7216:	3d 50 d4 5f 	add	#24532,	r13	;#0x5fd4
    721a:	8c 4d 30 00 	mov	r13,	48(r12)	; 0x0030

0000721e <.Loc.417.1>:
    __INK_SET_BUFFER_POINTERS(_v_parent);
    721e:	bc 40 d2 5f 	mov	#24530,	18(r12)	;#0x5fd2, 0x0012
    7222:	12 00 

00007224 <.Loc.418.1>:
    7224:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7228:	3d 50 d2 5f 	add	#24530,	r13	;#0x5fd2
    722c:	8c 4d 32 00 	mov	r13,	50(r12)	; 0x0032

00007230 <.Loc.418.1>:
    __INK_SET_BUFFER_POINTERS(_v_parent_next);
    7230:	bc 40 d0 5f 	mov	#24528,	20(r12)	;#0x5fd0, 0x0014
    7234:	14 00 

00007236 <.Loc.419.1>:
    7236:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    723a:	3d 50 d0 5f 	add	#24528,	r13	;#0x5fd0
    723e:	8c 4d 34 00 	mov	r13,	52(r12)	; 0x0034

00007242 <.Loc.419.1>:
    __INK_SET_BUFFER_POINTERS(_v_parent_node);
    7242:	bc 40 ca 5f 	mov	#24522,	22(r12)	;#0x5fca, 0x0016
    7246:	16 00 

00007248 <.Loc.420.1>:
    7248:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    724c:	3d 50 ca 5f 	add	#24522,	r13	;#0x5fca
    7250:	8c 4d 36 00 	mov	r13,	54(r12)	; 0x0036

00007254 <.Loc.420.1>:
    __INK_SET_BUFFER_POINTERS(_v_sibling_node);
    7254:	bc 40 c4 5f 	mov	#24516,	24(r12)	;#0x5fc4, 0x0018
    7258:	18 00 

0000725a <.Loc.421.1>:
    725a:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    725e:	3d 50 c4 5f 	add	#24516,	r13	;#0x5fc4
    7262:	8c 4d 38 00 	mov	r13,	56(r12)	; 0x0038

00007266 <.Loc.421.1>:
    __INK_SET_BUFFER_POINTERS(_v_symbol);
    7266:	bc 40 c2 5f 	mov	#24514,	26(r12)	;#0x5fc2, 0x001a
    726a:	1a 00 

0000726c <.Loc.422.1>:
    726c:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7270:	3d 50 c2 5f 	add	#24514,	r13	;#0x5fc2
    7274:	8c 4d 3a 00 	mov	r13,	58(r12)	; 0x003a

00007278 <.Loc.422.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(_v_compressed_data);
    7278:	bc 40 42 5e 	mov	#24130,	28(r12)	;#0x5e42, 0x001c
    727c:	1c 00 

0000727e <.Loc.423.1>:
    727e:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7282:	3d 50 42 5e 	add	#24130,	r13	;#0x5e42
    7286:	8c 4d 3c 00 	mov	r13,	60(r12)	; 0x003c

0000728a <.Loc.423.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(_v_dict);
    728a:	bc 40 42 52 	mov	#21058,	30(r12)	;#0x5242, 0x001e
    728e:	1e 00 

00007290 <.Loc.424.1>:
    7290:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4
    7294:	3d 50 42 52 	add	#21058,	r13	;#0x5242
    7298:	8c 4d 3e 00 	mov	r13,	62(r12)	; 0x003e

0000729c <.Loc.424.1>:
}
    729c:	30 41       	ret			

0000729e <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    729e:	3c 50 a4 0d 	add	#3492,	r12	;#0x0da4

000072a2 <.LVL1>:
    72a2:	30 41       	ret			

000072a4 <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    72a4:	5c 42 6e 51 	mov.b	&0x516e,r12	;0x516e
    72a8:	30 41       	ret			

000072aa <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    72aa:	3c 90 42 52 	cmp	#21058,	r12	;#0x5242
    72ae:	06 28       	jnc	$+14     	;abs 0x72bc

000072b0 <.Loc.27.1>:
    72b0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    72b2:	3c 90 e6 5f 	cmp	#24550,	r12	;#0x5fe6
    72b6:	04 2c       	jc	$+10     	;abs 0x72c0
    72b8:	4c 4d       	mov.b	r13,	r12	;

000072ba <.L5>:
}
    72ba:	30 41       	ret			

000072bc <.L7>:
    72bc:	4c 43       	clr.b	r12		;

000072be <.LVL5>:
    72be:	30 41       	ret			

000072c0 <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    72c0:	4d 43       	clr.b	r13		;
    72c2:	4c 4d       	mov.b	r13,	r12	;

000072c4 <.LVL7>:
    72c4:	fa 3f       	jmp	$-10     	;abs 0x72ba

000072c6 <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    72c6:	0a 15       	pushm	#1,	r10	;16-bit words

000072c8 <.LCFI0>:
    72c8:	0a 4c       	mov	r12,	r10	;

000072ca <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    72ca:	3c 90 42 52 	cmp	#21058,	r12	;#0x5242
    72ce:	0a 28       	jnc	$+22     	;abs 0x72e4
    72d0:	3c 90 e6 5f 	cmp	#24550,	r12	;#0x5fe6
    72d4:	07 2c       	jc	$+16     	;abs 0x72e4

000072d6 <.LBB14>:
    return address + buffer_offset * buffer_index;
    72d6:	5c 42 6e 51 	mov.b	&0x516e,r12	;0x516e

000072da <.LVL11>:
    72da:	3d 40 a4 0d 	mov	#3492,	r13	;#0x0da4

000072de <.LVL12>:
    72de:	b0 12 dc 8e 	call	#-28964	;#0x8edc

000072e2 <.LVL13>:
    72e2:	0a 5c       	add	r12,	r10	;

000072e4 <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    72e4:	0c 4a       	mov	r10,	r12	;
    72e6:	0a 17       	popm	#1,	r10	;16-bit words

000072e8 <.LCFI1>:
    72e8:	30 41       	ret			

000072ea <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    72ea:	
000072ec <L0^A>:
    72ec:	52 45 30 41 	mov.b	16688(r5),r2	;0x04130

000072f0 <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    72f0:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    72f4:	30 41       	ret			

000072f6 <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    72f6:	b0 12 50 7b 	call	#31568		;#0x7b50

000072fa <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    72fa:	c2 93 52 45 	cmp.b	#0,	&0x4552	;r3 As==00
    72fe:	22 20       	jnz	$+70     	;abs 0x7344

00007300 <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    7300:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007304 <.Loc.50.1>:
    7304:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

00007308 <.Loc.50.1>:
    7308:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000730c <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    730c:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    7310:	02 02 

00007312 <.Loc.51.1>:
    7312:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    7316:	04 02 

00007318 <.Loc.51.1>:
    7318:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    731c:	02 02 

0000731e <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    731e:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    7322:	22 02 

00007324 <.Loc.52.1>:
    7324:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    7328:	24 02 

0000732a <.Loc.52.1>:
    732a:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    732e:	22 02 

00007330 <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    7330:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    7334:	22 02 

00007336 <.Loc.53.1>:
    7336:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    733a:	24 02 

0000733c <.Loc.53.1>:
    733c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    7340:	22 02 

00007342 <.Loc.53.1>:
#endif
}
    7342:	30 41       	ret			

00007344 <.L6>:
        __scheduler_boot_init();
    7344:	b0 12 a8 7b 	call	#31656		;#0x7ba8

00007348 <.Loc.36.1>:
        __events_boot_init();
    7348:	b0 12 ca 78 	call	#30922		;#0x78ca
    734c:	d9 3f       	jmp	$-76     	;abs 0x7300

0000734e <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    734e:	c2 43 52 45 	mov.b	#0,	&0x4552	;r3 As==00

00007352 <.Loc.69.1>:
    __ink_initialized = true;
    7352:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00007356 <.Loc.70.1>:
    7356:	30 41       	ret			

00007358 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    7358:	2a 15       	pushm	#3,	r10	;16-bit words

0000735a <L0^A>:
    735a:	21 83       	decd	r1		;

0000735c <.LCFI1>:
    735c:	4a 4c       	mov.b	r12,	r10	;
    735e:	09 4d       	mov	r13,	r9	;
    7360:	48 4e       	mov.b	r14,	r8	;

00007362 <.Loc.147.1>:
    if (!ink_is_first_boot())
    7362:	b0 12 ea 72 	call	#29418		;#0x72ea

00007366 <.LVL1>:
    7366:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7368:	56 24       	jz	$+174    	;abs 0x7416

0000736a <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    736a:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    736e:	4c 9a       	cmp.b	r10,	r12	;
    7370:	47 28       	jnc	$+144    	;abs 0x7400
    7372:	0c 4a       	mov	r10,	r12	;
    7374:	5c 02       	rlam	#1,	r12	;
    7376:	3c 50 80 73 	add	#29568,	r12	;#0x7380
    737a:	2c 4c       	mov	@r12,	r12	;
    737c:	00 4c       	br	r12		;
	...

00007380 <.L6>:
    7380:	00 74       	subc	r4,	r0	;
    7382:	98 78 84 78 	subc	30852(r8),30832(r8);0x07884, 0x7870
    7386:	70 78 
    7388:	5c 78 48 78 	subc.b	30792(r8),r12	;0x07848
    738c:	34 78       	subc	@r8+,	r4	;
    738e:	20 78       	subc	@r8,	r0	;
    7390:	0c 78       	subc	r8,	r12	;
    7392:	f8 77 e6 77 	subc.b	@r7+,	30694(r8); 0x77e6
    7396:	d4 77 c2 77 	subc.b	30658(r7),30640(r4);0x077c2, 0x77b0
    739a:	b0 77 
    739c:	9e 77 8c 77 	subc	30604(r7),30586(r14);0x0778c, 0x777a
    73a0:	7a 77 
    73a2:	68 77       	subc.b	@r7,	r8	;
    73a4:	56 77 44 77 	subc.b	30532(r7),r6	;0x07744
    73a8:	32 77       	subc	@r7+,	r2	;
    73aa:	20 77       	subc	@r7,	r0	;
    73ac:	0e 77       	subc	r7,	r14	;
    73ae:	fc 76 ea 76 	subc.b	@r6+,	30442(r12); 0x76ea
    73b2:	d8 76 c6 76 	subc.b	30406(r6),30388(r8);0x076c6, 0x76b4
    73b6:	b4 76 
    73b8:	a2 76 90 76 	subc	@r6,	&0x7690	;
    73bc:	7e 76       	subc.b	@r6+,	r14	;
    73be:	6c 76       	subc.b	@r6,	r12	;
    73c0:	5a 76 48 76 	subc.b	30280(r6),r10	;0x07648
    73c4:	36 76       	subc	@r6+,	r6	;
    73c6:	24 76       	subc	@r6,	r4	;
    73c8:	12 76 00 76 	subc	30208(r6),r2	;0x07600
    73cc:	ee 75 dc 75 	subc.b	@r5,	30172(r14); 0x75dc
    73d0:	ca 75 b8 75 	subc.b	r5,	30136(r10); 0x75b8
    73d4:	a6 75 94 75 	subc	@r5,	30100(r6); 0x7594
    73d8:	82 75 70 75 	subc	r5,	&0x7570	;
    73dc:	5e 75 4c 75 	subc.b	30028(r5),r14	;0x0754c
    73e0:	3a 75       	subc	@r5+,	r10	;
    73e2:	28 75       	subc	@r5,	r8	;
    73e4:	16 75 04 75 	subc	29956(r5),r6	;0x07504
    73e8:	f2 74 e0 74 	subc.b	@r4+,	&0x74e0	;
    73ec:	ce 74 bc 74 	subc.b	r4,	29884(r14); 0x74bc
    73f0:	aa 74 98 74 	subc	@r4,	29848(r10); 0x7498
    73f4:	86 74 74 74 	subc	r4,	29812(r6); 0x7474
    73f8:	62 74       	subc.b	@r4,	r2	;
    73fa:	50 74 3e 74 	subc.b	29758(r4),r0	;0x0743e
    73fe:	2c 74       	subc	@r4,	r12	;

00007400 <.L70>:
    if (!ink_is_first_boot())
    7400:	4c 43       	clr.b	r12		;
    7402:	4f 43       	clr.b	r15		;
    7404:	4e 43       	clr.b	r14		;

00007406 <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    7406:	81 4c 00 00 	mov	r12,	0(r1)	;
    740a:	0d 49       	mov	r9,	r13	;
    740c:	4c 4a       	mov.b	r10,	r12	;

0000740e <.LVL4>:
    740e:	b0 12 d0 7b 	call	#31696		;#0x7bd0

00007412 <.LVL5>:

    if (start_on_first_boot)
    7412:	08 93       	cmp	#0,	r8	;r3 As==00
    7414:	03 20       	jnz	$+8      	;abs 0x741c

00007416 <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    7416:	21 53       	incd	r1		;

00007418 <.LCFI2>:
    7418:	28 17       	popm	#3,	r10	;16-bit words

0000741a <.LCFI3>:
    741a:	30 41       	ret			

0000741c <.L75>:
        __start_thread(__get_thread(priority));
    741c:	4c 4a       	mov.b	r10,	r12	;
    741e:	b0 12 74 7c 	call	#31860		;#0x7c74
    7422:	b0 12 58 7c 	call	#31832		;#0x7c58

00007426 <.Loc.232.1>:
}
    7426:	21 53       	incd	r1		;

00007428 <.LCFI5>:
    7428:	28 17       	popm	#3,	r10	;16-bit words

0000742a <.LCFI6>:
    742a:	30 41       	ret			

0000742c <.L5>:
        INK_CREATE_THREAD_CASE(63)
    742c:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7430:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007434 <.LVL9>:
    7434:	3c 40 00 00 	mov	#0,	r12	;

00007438 <.Loc.220.1>:
    7438:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    743c:	e4 3f       	jmp	$-54     	;abs 0x7406

0000743e <.L7>:
        INK_CREATE_THREAD_CASE(62)
    743e:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7442:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007446 <.LVL12>:
    7446:	3c 40 00 00 	mov	#0,	r12	;

0000744a <.Loc.219.1>:
    744a:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    744e:	db 3f       	jmp	$-72     	;abs 0x7406

00007450 <.L8>:
        INK_CREATE_THREAD_CASE(61)
    7450:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7454:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007458 <.LVL15>:
    7458:	3c 40 00 00 	mov	#0,	r12	;

0000745c <.Loc.218.1>:
    745c:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7460:	d2 3f       	jmp	$-90     	;abs 0x7406

00007462 <.L9>:
        INK_CREATE_THREAD_CASE(60)
    7462:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7466:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000746a <.LVL18>:
    746a:	3c 40 00 00 	mov	#0,	r12	;

0000746e <.Loc.217.1>:
    746e:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7472:	c9 3f       	jmp	$-108    	;abs 0x7406

00007474 <.L10>:
        INK_CREATE_THREAD_CASE(59)
    7474:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7478:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000747c <.LVL21>:
    747c:	3c 40 00 00 	mov	#0,	r12	;

00007480 <.Loc.216.1>:
    7480:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7484:	c0 3f       	jmp	$-126    	;abs 0x7406

00007486 <.L11>:
        INK_CREATE_THREAD_CASE(58)
    7486:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    748a:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000748e <.LVL24>:
    748e:	3c 40 00 00 	mov	#0,	r12	;

00007492 <.Loc.215.1>:
    7492:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7496:	b7 3f       	jmp	$-144    	;abs 0x7406

00007498 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    7498:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    749c:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000074a0 <.LVL27>:
    74a0:	3c 40 00 00 	mov	#0,	r12	;

000074a4 <.Loc.214.1>:
    74a4:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    74a8:	ae 3f       	jmp	$-162    	;abs 0x7406

000074aa <.L13>:
        INK_CREATE_THREAD_CASE(56)
    74aa:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    74ae:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000074b2 <.LVL30>:
    74b2:	3c 40 00 00 	mov	#0,	r12	;

000074b6 <.Loc.213.1>:
    74b6:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    74ba:	a5 3f       	jmp	$-180    	;abs 0x7406

000074bc <.L14>:
        INK_CREATE_THREAD_CASE(55)
    74bc:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    74c0:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000074c4 <.LVL33>:
    74c4:	3c 40 00 00 	mov	#0,	r12	;

000074c8 <.Loc.212.1>:
    74c8:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    74cc:	9c 3f       	jmp	$-198    	;abs 0x7406

000074ce <.L15>:
        INK_CREATE_THREAD_CASE(54)
    74ce:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    74d2:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000074d6 <.LVL36>:
    74d6:	3c 40 00 00 	mov	#0,	r12	;

000074da <.Loc.211.1>:
    74da:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    74de:	93 3f       	jmp	$-216    	;abs 0x7406

000074e0 <.L16>:
        INK_CREATE_THREAD_CASE(53)
    74e0:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    74e4:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000074e8 <.LVL39>:
    74e8:	3c 40 00 00 	mov	#0,	r12	;

000074ec <.Loc.210.1>:
    74ec:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    74f0:	8a 3f       	jmp	$-234    	;abs 0x7406

000074f2 <.L17>:
        INK_CREATE_THREAD_CASE(52)
    74f2:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    74f6:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000074fa <.LVL42>:
    74fa:	3c 40 00 00 	mov	#0,	r12	;

000074fe <.Loc.209.1>:
    74fe:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7502:	81 3f       	jmp	$-252    	;abs 0x7406

00007504 <.L18>:
        INK_CREATE_THREAD_CASE(51)
    7504:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7508:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000750c <.LVL45>:
    750c:	3c 40 00 00 	mov	#0,	r12	;

00007510 <.Loc.208.1>:
    7510:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7514:	78 3f       	jmp	$-270    	;abs 0x7406

00007516 <.L19>:
        INK_CREATE_THREAD_CASE(50)
    7516:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    751a:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000751e <.LVL48>:
    751e:	3c 40 00 00 	mov	#0,	r12	;

00007522 <.Loc.207.1>:
    7522:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7526:	6f 3f       	jmp	$-288    	;abs 0x7406

00007528 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    7528:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    752c:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007530 <.LVL51>:
    7530:	3c 40 00 00 	mov	#0,	r12	;

00007534 <.Loc.206.1>:
    7534:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7538:	66 3f       	jmp	$-306    	;abs 0x7406

0000753a <.L21>:
        INK_CREATE_THREAD_CASE(48)
    753a:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    753e:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007542 <.LVL54>:
    7542:	3c 40 00 00 	mov	#0,	r12	;

00007546 <.Loc.205.1>:
    7546:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    754a:	5d 3f       	jmp	$-324    	;abs 0x7406

0000754c <.L22>:
        INK_CREATE_THREAD_CASE(47)
    754c:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7550:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007554 <.LVL57>:
    7554:	3c 40 00 00 	mov	#0,	r12	;

00007558 <.Loc.204.1>:
    7558:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    755c:	54 3f       	jmp	$-342    	;abs 0x7406

0000755e <.L23>:
        INK_CREATE_THREAD_CASE(46)
    755e:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7562:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007566 <.LVL60>:
    7566:	3c 40 00 00 	mov	#0,	r12	;

0000756a <.Loc.203.1>:
    756a:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    756e:	4b 3f       	jmp	$-360    	;abs 0x7406

00007570 <.L24>:
        INK_CREATE_THREAD_CASE(45)
    7570:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7574:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007578 <.LVL63>:
    7578:	3c 40 00 00 	mov	#0,	r12	;

0000757c <.Loc.202.1>:
    757c:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7580:	42 3f       	jmp	$-378    	;abs 0x7406

00007582 <.L25>:
        INK_CREATE_THREAD_CASE(44)
    7582:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7586:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000758a <.LVL66>:
    758a:	3c 40 00 00 	mov	#0,	r12	;

0000758e <.Loc.201.1>:
    758e:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7592:	39 3f       	jmp	$-396    	;abs 0x7406

00007594 <.L26>:
        INK_CREATE_THREAD_CASE(43)
    7594:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7598:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000759c <.LVL69>:
    759c:	3c 40 00 00 	mov	#0,	r12	;

000075a0 <.Loc.200.1>:
    75a0:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    75a4:	30 3f       	jmp	$-414    	;abs 0x7406

000075a6 <.L27>:
        INK_CREATE_THREAD_CASE(42)
    75a6:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    75aa:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000075ae <.LVL72>:
    75ae:	3c 40 00 00 	mov	#0,	r12	;

000075b2 <.Loc.199.1>:
    75b2:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    75b6:	27 3f       	jmp	$-432    	;abs 0x7406

000075b8 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    75b8:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    75bc:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000075c0 <.LVL75>:
    75c0:	3c 40 00 00 	mov	#0,	r12	;

000075c4 <.Loc.198.1>:
    75c4:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    75c8:	1e 3f       	jmp	$-450    	;abs 0x7406

000075ca <.L29>:
        INK_CREATE_THREAD_CASE(40)
    75ca:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    75ce:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000075d2 <.LVL78>:
    75d2:	3c 40 00 00 	mov	#0,	r12	;

000075d6 <.Loc.197.1>:
    75d6:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    75da:	15 3f       	jmp	$-468    	;abs 0x7406

000075dc <.L30>:
        INK_CREATE_THREAD_CASE(39)
    75dc:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    75e0:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000075e4 <.LVL81>:
    75e4:	3c 40 00 00 	mov	#0,	r12	;

000075e8 <.Loc.196.1>:
    75e8:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    75ec:	0c 3f       	jmp	$-486    	;abs 0x7406

000075ee <.L31>:
        INK_CREATE_THREAD_CASE(38)
    75ee:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    75f2:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000075f6 <.LVL84>:
    75f6:	3c 40 00 00 	mov	#0,	r12	;

000075fa <.Loc.195.1>:
    75fa:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    75fe:	03 3f       	jmp	$-504    	;abs 0x7406

00007600 <.L32>:
        INK_CREATE_THREAD_CASE(37)
    7600:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7604:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007608 <.LVL87>:
    7608:	3c 40 00 00 	mov	#0,	r12	;

0000760c <.Loc.194.1>:
    760c:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7610:	fa 3e       	jmp	$-522    	;abs 0x7406

00007612 <.L33>:
        INK_CREATE_THREAD_CASE(36)
    7612:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7616:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000761a <.LVL90>:
    761a:	3c 40 00 00 	mov	#0,	r12	;

0000761e <.Loc.193.1>:
    761e:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7622:	f1 3e       	jmp	$-540    	;abs 0x7406

00007624 <.L34>:
        INK_CREATE_THREAD_CASE(35)
    7624:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7628:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000762c <.LVL93>:
    762c:	3c 40 00 00 	mov	#0,	r12	;

00007630 <.Loc.192.1>:
    7630:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7634:	e8 3e       	jmp	$-558    	;abs 0x7406

00007636 <.L35>:
        INK_CREATE_THREAD_CASE(34)
    7636:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    763a:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000763e <.LVL96>:
    763e:	3c 40 00 00 	mov	#0,	r12	;

00007642 <.Loc.191.1>:
    7642:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7646:	df 3e       	jmp	$-576    	;abs 0x7406

00007648 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    7648:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    764c:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007650 <.LVL99>:
    7650:	3c 40 00 00 	mov	#0,	r12	;

00007654 <.Loc.190.1>:
    7654:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7658:	d6 3e       	jmp	$-594    	;abs 0x7406

0000765a <.L37>:
        INK_CREATE_THREAD_CASE(32)
    765a:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    765e:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007662 <.LVL102>:
    7662:	3c 40 00 00 	mov	#0,	r12	;

00007666 <.Loc.189.1>:
    7666:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    766a:	cd 3e       	jmp	$-612    	;abs 0x7406

0000766c <.L38>:
        INK_CREATE_THREAD_CASE(31)
    766c:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7670:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007674 <.LVL105>:
    7674:	3c 40 00 00 	mov	#0,	r12	;

00007678 <.Loc.188.1>:
    7678:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    767c:	c4 3e       	jmp	$-630    	;abs 0x7406

0000767e <.L39>:
        INK_CREATE_THREAD_CASE(30)
    767e:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7682:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007686 <.LVL108>:
    7686:	3c 40 00 00 	mov	#0,	r12	;

0000768a <.Loc.187.1>:
    768a:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    768e:	bb 3e       	jmp	$-648    	;abs 0x7406

00007690 <.L40>:
        INK_CREATE_THREAD_CASE(29)
    7690:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7694:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007698 <.LVL111>:
    7698:	3c 40 00 00 	mov	#0,	r12	;

0000769c <.Loc.186.1>:
    769c:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    76a0:	b2 3e       	jmp	$-666    	;abs 0x7406

000076a2 <.L41>:
        INK_CREATE_THREAD_CASE(28)
    76a2:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    76a6:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000076aa <.LVL114>:
    76aa:	3c 40 00 00 	mov	#0,	r12	;

000076ae <.Loc.185.1>:
    76ae:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    76b2:	a9 3e       	jmp	$-684    	;abs 0x7406

000076b4 <.L42>:
        INK_CREATE_THREAD_CASE(27)
    76b4:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    76b8:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000076bc <.LVL117>:
    76bc:	3c 40 00 00 	mov	#0,	r12	;

000076c0 <.Loc.184.1>:
    76c0:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    76c4:	a0 3e       	jmp	$-702    	;abs 0x7406

000076c6 <.L43>:
        INK_CREATE_THREAD_CASE(26)
    76c6:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    76ca:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000076ce <.LVL120>:
    76ce:	3c 40 00 00 	mov	#0,	r12	;

000076d2 <.Loc.183.1>:
    76d2:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    76d6:	97 3e       	jmp	$-720    	;abs 0x7406

000076d8 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    76d8:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    76dc:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000076e0 <.LVL123>:
    76e0:	3c 40 00 00 	mov	#0,	r12	;

000076e4 <.Loc.182.1>:
    76e4:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    76e8:	8e 3e       	jmp	$-738    	;abs 0x7406

000076ea <.L45>:
        INK_CREATE_THREAD_CASE(24)
    76ea:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    76ee:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000076f2 <.LVL126>:
    76f2:	3c 40 00 00 	mov	#0,	r12	;

000076f6 <.Loc.181.1>:
    76f6:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    76fa:	85 3e       	jmp	$-756    	;abs 0x7406

000076fc <.L46>:
        INK_CREATE_THREAD_CASE(23)
    76fc:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7700:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007704 <.LVL129>:
    7704:	3c 40 00 00 	mov	#0,	r12	;

00007708 <.Loc.180.1>:
    7708:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    770c:	7c 3e       	jmp	$-774    	;abs 0x7406

0000770e <.L47>:
        INK_CREATE_THREAD_CASE(22)
    770e:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7712:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007716 <.LVL132>:
    7716:	3c 40 00 00 	mov	#0,	r12	;

0000771a <.Loc.179.1>:
    771a:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    771e:	73 3e       	jmp	$-792    	;abs 0x7406

00007720 <.L48>:
        INK_CREATE_THREAD_CASE(21)
    7720:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7724:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007728 <.LVL135>:
    7728:	3c 40 00 00 	mov	#0,	r12	;

0000772c <.Loc.178.1>:
    772c:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7730:	6a 3e       	jmp	$-810    	;abs 0x7406

00007732 <.L49>:
        INK_CREATE_THREAD_CASE(20)
    7732:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7736:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000773a <.LVL138>:
    773a:	3c 40 00 00 	mov	#0,	r12	;

0000773e <.Loc.177.1>:
    773e:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7742:	61 3e       	jmp	$-828    	;abs 0x7406

00007744 <.L50>:
        INK_CREATE_THREAD_CASE(19)
    7744:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    7748:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000774c <.LVL141>:
    774c:	3c 40 00 00 	mov	#0,	r12	;

00007750 <.Loc.176.1>:
    7750:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7754:	58 3e       	jmp	$-846    	;abs 0x7406

00007756 <.L51>:
        INK_CREATE_THREAD_CASE(18)
    7756:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    775a:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000775e <.LVL144>:
    775e:	3c 40 00 00 	mov	#0,	r12	;

00007762 <.Loc.175.1>:
    7762:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7766:	4f 3e       	jmp	$-864    	;abs 0x7406

00007768 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    7768:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    776c:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007770 <.LVL147>:
    7770:	3c 40 00 00 	mov	#0,	r12	;

00007774 <.Loc.174.1>:
    7774:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    7778:	46 3e       	jmp	$-882    	;abs 0x7406

0000777a <.L53>:
        INK_CREATE_THREAD_CASE(16)
    777a:	3f 40 e6 5f 	mov	#24550,	r15	;#0x5fe6
    777e:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007782 <.LVL150>:
    7782:	3c 40 00 00 	mov	#0,	r12	;

00007786 <.Loc.173.1>:
    7786:	3e 40 e6 5f 	mov	#24550,	r14	;#0x5fe6
    778a:	3d 3e       	jmp	$-900    	;abs 0x7406

0000778c <.L54>:
        INK_CREATE_THREAD_CASE(15)
    778c:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7790:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007794 <.LVL153>:
    7794:	3c 40 a4 0d 	mov	#3492,	r12	;#0x0da4

00007798 <.Loc.172.1>:
    7798:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    779c:	34 3e       	jmp	$-918    	;abs 0x7406

0000779e <.L55>:
        INK_CREATE_THREAD_CASE(14)
    779e:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    77a2:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000077a6 <.LVL156>:
    77a6:	3c 40 00 00 	mov	#0,	r12	;

000077aa <.Loc.171.1>:
    77aa:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    77ae:	2b 3e       	jmp	$-936    	;abs 0x7406

000077b0 <.L56>:
        INK_CREATE_THREAD_CASE(13)
    77b0:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    77b4:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000077b8 <.LVL159>:
    77b8:	3c 40 00 00 	mov	#0,	r12	;

000077bc <.Loc.170.1>:
    77bc:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    77c0:	22 3e       	jmp	$-954    	;abs 0x7406

000077c2 <.L57>:
        INK_CREATE_THREAD_CASE(12)
    77c2:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    77c6:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000077ca <.LVL162>:
    77ca:	3c 40 00 00 	mov	#0,	r12	;

000077ce <.Loc.169.1>:
    77ce:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    77d2:	19 3e       	jmp	$-972    	;abs 0x7406

000077d4 <.L58>:
        INK_CREATE_THREAD_CASE(11)
    77d4:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    77d8:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000077dc <.LVL165>:
    77dc:	3c 40 00 00 	mov	#0,	r12	;

000077e0 <.Loc.168.1>:
    77e0:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    77e4:	10 3e       	jmp	$-990    	;abs 0x7406

000077e6 <.L59>:
        INK_CREATE_THREAD_CASE(10)
    77e6:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    77ea:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000077ee <.LVL168>:
    77ee:	3c 40 00 00 	mov	#0,	r12	;

000077f2 <.Loc.167.1>:
    77f2:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    77f6:	07 3e       	jmp	$-1008   	;abs 0x7406

000077f8 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    77f8:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    77fc:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007800 <.LVL171>:
    7800:	3c 40 00 00 	mov	#0,	r12	;

00007804 <.Loc.166.1>:
    7804:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    7808:	30 40 06 74 	br	#0x7406		;

0000780c <.L61>:
        INK_CREATE_THREAD_CASE(8)
    780c:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7810:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007814 <.LVL174>:
    7814:	3c 40 00 00 	mov	#0,	r12	;

00007818 <.Loc.165.1>:
    7818:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    781c:	30 40 06 74 	br	#0x7406		;

00007820 <.L62>:
        INK_CREATE_THREAD_CASE(7)
    7820:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7824:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007828 <.LVL177>:
    7828:	3c 40 00 00 	mov	#0,	r12	;

0000782c <.Loc.164.1>:
    782c:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    7830:	30 40 06 74 	br	#0x7406		;

00007834 <.L63>:
        INK_CREATE_THREAD_CASE(6)
    7834:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7838:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000783c <.LVL180>:
    783c:	3c 40 00 00 	mov	#0,	r12	;

00007840 <.Loc.163.1>:
    7840:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    7844:	30 40 06 74 	br	#0x7406		;

00007848 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    7848:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    784c:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007850 <.LVL183>:
    7850:	3c 40 00 00 	mov	#0,	r12	;

00007854 <.Loc.162.1>:
    7854:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    7858:	30 40 06 74 	br	#0x7406		;

0000785c <.L65>:
        INK_CREATE_THREAD_CASE(4)
    785c:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7860:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007864 <.LVL186>:
    7864:	3c 40 00 00 	mov	#0,	r12	;

00007868 <.Loc.161.1>:
    7868:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    786c:	30 40 06 74 	br	#0x7406		;

00007870 <.L66>:
        INK_CREATE_THREAD_CASE(3)
    7870:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7874:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

00007878 <.LVL189>:
    7878:	3c 40 00 00 	mov	#0,	r12	;

0000787c <.Loc.160.1>:
    787c:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    7880:	30 40 06 74 	br	#0x7406		;

00007884 <.L67>:
        INK_CREATE_THREAD_CASE(2)
    7884:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    7888:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

0000788c <.LVL192>:
    788c:	3c 40 00 00 	mov	#0,	r12	;

00007890 <.Loc.159.1>:
    7890:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    7894:	30 40 06 74 	br	#0x7406		;

00007898 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    7898:	3f 40 42 52 	mov	#21058,	r15	;#0x5242
    789c:	3f 50 a4 0d 	add	#3492,	r15	;#0x0da4

000078a0 <.LVL195>:
    78a0:	3c 40 00 00 	mov	#0,	r12	;

000078a4 <.Loc.158.1>:
    78a4:	3e 40 42 52 	mov	#21058,	r14	;#0x5242
    78a8:	30 40 06 74 	br	#0x7406		;

000078ac <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    78ac:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000078b0 <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    78b0:	32 c2       	dint			
    78b2:	03 43       	nop			

000078b4 <.Loc.236.1>:
    78b4:	b0 12 74 7c 	call	#31860		;#0x7c74

000078b8 <.LVL198>:
    78b8:	b0 12 58 7c 	call	#31832		;#0x7c58

000078bc <.Loc.236.1>:
    78bc:	03 43       	nop			
    78be:	32 d2       	eint			
    78c0:	03 43       	nop			

000078c2 <.Loc.237.1>:
}
    78c2:	30 41       	ret			

000078c4 <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    78c4:	b0 12 8a 7c 	call	#31882		;#0x7c8a

000078c8 <.Loc.7.1>:
}
    78c8:	30 41       	ret			

000078ca <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    78ca:	1a 15       	pushm	#2,	r10	;16-bit words

000078cc <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    78cc:	3a 40 d4 4a 	mov	#19156,	r10	;#0x4ad4
    78d0:	39 40 d4 45 	mov	#17876,	r9	;#0x45d4

000078d4 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    78d4:	0c 4a       	mov	r10,	r12	;
    78d6:	b0 12 7c 7a 	call	#31356		;#0x7a7c

000078da <.Loc.27.1>:
        _popped[i] = NULL;
    78da:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

000078de <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    78de:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    78e2:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000078e6 <.Loc.24.1>:
    78e6:	3a 90 d4 45 	cmp	#17876,	r10	;#0x45d4
    78ea:	f4 23       	jnz	$-22     	;abs 0x78d4

000078ec <.Loc.29.1>:
    }
}
    78ec:	19 17       	popm	#2,	r10	;16-bit words

000078ee <.LCFI1>:
    78ee:	30 41       	ret			

000078f0 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    78f0:	5c 42 e0 4a 	mov.b	&0x4ae0,r12	;0x4ae0
    78f4:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    78f6:	14 24       	jz	$+42     	;abs 0x7920
    78f8:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    78fa:	1f 24       	jz	$+64     	;abs 0x793a
    78fc:	0c 93       	cmp	#0,	r12	;r3 As==00
    78fe:	01 24       	jz	$+4      	;abs 0x7902

00007900 <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    7900:	30 41       	ret			

00007902 <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    7902:	1d 42 de 4a 	mov	&0x4ade,r13	;0x4ade

00007906 <.Loc.37.1>:
    7906:	6c 4d       	mov.b	@r13,	r12	;
    7908:	5c 06       	rlam	#2,	r12	;
    790a:	6d 4d       	mov.b	@r13,	r13	;
    790c:	0c 5d       	add	r13,	r12	;
    790e:	5c 06       	rlam	#2,	r12	;
    7910:	3d 40 d4 4a 	mov	#19156,	r13	;#0x4ad4
    7914:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    7918:	b0 12 d8 7a 	call	#31448		;#0x7ad8

0000791c <.Loc.38.1>:
        _status = EVENT_COMMIT;
    791c:	d2 43 e0 4a 	mov.b	#1,	&0x4ae0	;r3 As==01

00007920 <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    7920:	1d 42 de 4a 	mov	&0x4ade,r13	;0x4ade

00007924 <.Loc.40.1>:
    7924:	6c 4d       	mov.b	@r13,	r12	;
    7926:	5c 06       	rlam	#2,	r12	;
    7928:	6d 4d       	mov.b	@r13,	r13	;
    792a:	0c 5d       	add	r13,	r12	;
    792c:	5c 06       	rlam	#2,	r12	;
    792e:	
00007930 <L0^A>:
    7930:	d4 45 b0 12 	mov.b	4784(r5),31502(r4);0x012b0, 0x7b0e
    7934:	0e 7b 

00007936 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    7936:	e2 43 e0 4a 	mov.b	#2,	&0x4ae0	;r3 As==10

0000793a <.L7>:
        if(_thread->state == THREAD_STOPPED){
    793a:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade
    793e:	1c 4c 02 00 	mov	2(r12),	r12	;

00007942 <.Loc.44.1>:
    7942:	3c 92       	cmp	#8,	r12	;r2 As==11
    7944:	04 24       	jz	$+10     	;abs 0x794e

00007946 <.L9>:
        _status = EVENT_DONE;
    7946:	f2 40 03 00 	mov.b	#3,	&0x4ae0	;
    794a:	e0 4a 

0000794c <.Loc.51.1>:
}
    794c:	30 41       	ret			

0000794e <.L17>:
            __disable_interrupt();
    794e:	32 c2       	dint			
    7950:	03 43       	nop			

00007952 <.Loc.46.1>:
            __start_thread(_thread);
    7952:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade
    7956:	b0 12 58 7c 	call	#31832		;#0x7c58

0000795a <.Loc.47.1>:
            __enable_interrupt();
    795a:	03 43       	nop			
    795c:	32 d2       	eint			
    795e:	03 43       	nop			
    7960:	f2 3f       	jmp	$-26     	;abs 0x7946

00007962 <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    7962:	1d 42 de 4a 	mov	&0x4ade,r13	;0x4ade

00007966 <.Loc.55.1>:
    7966:	6c 4d       	mov.b	@r13,	r12	;

00007968 <.LVL7>:
    7968:	5c 06       	rlam	#2,	r12	;
    796a:	6d 4d       	mov.b	@r13,	r13	;
    796c:	0c 5d       	add	r13,	r12	;
    796e:	5c 06       	rlam	#2,	r12	;
    7970:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    7974:	b0 12 ac 7a 	call	#31404		;#0x7aac

00007978 <.Loc.56.1>:
}
    7978:	30 41       	ret			

0000797a <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    797a:	82 4c de 4a 	mov	r12,	&0x4ade	;

0000797e <.Loc.64.1>:
    _event = *event;
    797e:	0e 4d       	mov	r13,	r14	;
    7980:	b2 4e d4 4a 	mov	@r14+,	&0x4ad4	;
    7984:	b2 4e d6 4a 	mov	@r14+,	&0x4ad6	;
    7988:	92 4d 04 00 	mov	4(r13),	&0x4ad8	;
    798c:	d8 4a 
    798e:	92 4d 06 00 	mov	6(r13),	&0x4ada	;
    7992:	da 4a 
    7994:	92 4e 04 00 	mov	4(r14),	&0x4adc	;
    7998:	dc 4a 

0000799a <.Loc.65.1>:
    _status = EVENT_INSERT;
    799a:	c2 43 e0 4a 	mov.b	#0,	&0x4ae0	;r3 As==00

0000799e <.LBB4>:
    switch(_status){
    799e:	5d 42 e0 4a 	mov.b	&0x4ae0,r13	;0x4ae0

000079a2 <.LVL10>:
    79a2:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    79a4:	14 24       	jz	$+42     	;abs 0x79ce
    79a6:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    79a8:	1f 24       	jz	$+64     	;abs 0x79e8
    79aa:	0d 93       	cmp	#0,	r13	;r3 As==00
    79ac:	01 24       	jz	$+4      	;abs 0x79b0

000079ae <.LBE4>:
    __events_commit();
}
    79ae:	30 41       	ret			

000079b0 <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    79b0:	6d 4c       	mov.b	@r12,	r13	;
    79b2:	5d 06       	rlam	#2,	r13	;
    79b4:	6c 4c       	mov.b	@r12,	r12	;

000079b6 <.LVL11>:
    79b6:	0c 5d       	add	r13,	r12	;
    79b8:	5c 06       	rlam	#2,	r12	;
    79ba:	3d 40 d4 4a 	mov	#19156,	r13	;#0x4ad4
    79be:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    79c2:	b0 12 d8 7a 	call	#31448		;#0x7ad8

000079c6 <.LVL12>:
        _status = EVENT_COMMIT;
    79c6:	d2 43 e0 4a 	mov.b	#1,	&0x4ae0	;r3 As==01
    79ca:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade

000079ce <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    79ce:	6d 4c       	mov.b	@r12,	r13	;
    79d0:	5d 06       	rlam	#2,	r13	;
    79d2:	6c 4c       	mov.b	@r12,	r12	;
    79d4:	0c 5d       	add	r13,	r12	;
    79d6:	5c 06       	rlam	#2,	r12	;
    79d8:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    79dc:	b0 12 0e 7b 	call	#31502		;#0x7b0e

000079e0 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    79e0:	e2 43 e0 4a 	mov.b	#2,	&0x4ae0	;r3 As==10
    79e4:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade

000079e8 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    79e8:	1c 4c 02 00 	mov	2(r12),	r12	;

000079ec <.Loc.44.1>:
    79ec:	3c 92       	cmp	#8,	r12	;r2 As==11
    79ee:	04 24       	jz	$+10     	;abs 0x79f8

000079f0 <.L23>:
        _status = EVENT_DONE;
    79f0:	f2 40 03 00 	mov.b	#3,	&0x4ae0	;
    79f4:	e0 4a 

000079f6 <.Loc.67.1>:
}
    79f6:	30 41       	ret			

000079f8 <.L31>:
            __disable_interrupt();
    79f8:	32 c2       	dint			
    79fa:	03 43       	nop			

000079fc <.Loc.46.1>:
            __start_thread(_thread);
    79fc:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade
    7a00:	b0 12 58 7c 	call	#31832		;#0x7c58

00007a04 <.Loc.47.1>:
            __enable_interrupt();
    7a04:	03 43       	nop			
    7a06:	32 d2       	eint			
    7a08:	03 43       	nop			
    7a0a:	f2 3f       	jmp	$-26     	;abs 0x79f0

00007a0c <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    7a0c:	6d 4c       	mov.b	@r12,	r13	;
    7a0e:	5d 06       	rlam	#2,	r13	;
    7a10:	6c 4c       	mov.b	@r12,	r12	;

00007a12 <.LVL16>:
    7a12:	0c 5d       	add	r13,	r12	;
    7a14:	5c 06       	rlam	#2,	r12	;
    7a16:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    7a1a:	b0 12 96 7a 	call	#31382		;#0x7a96
    7a1e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007a22 <.Loc.71.1>:
    7a22:	3c 53       	add	#-1,	r12	;r3 As==11

00007a24 <.Loc.75.1>:
        return 0;

    return 1;
}
    7a24:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7a28:	30 41       	ret			

00007a2a <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    7a2a:	0a 15       	pushm	#1,	r10	;16-bit words

00007a2c <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    7a2c:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade

00007a30 <.LVL19>:
    7a30:	6a 4c       	mov.b	@r12,	r10	;

00007a32 <.Loc.81.1>:
    7a32:	0c 4a       	mov	r10,	r12	;
    7a34:	5c 06       	rlam	#2,	r12	;
    7a36:	0c 5a       	add	r10,	r12	;
    7a38:	5c 06       	rlam	#2,	r12	;
    7a3a:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    7a3e:	b0 12 16 7b 	call	#31510		;#0x7b16

00007a42 <.Loc.81.1>:
    7a42:	5a 02       	rlam	#1,	r10	;
    7a44:	8a 4c 54 45 	mov	r12,	17748(r10); 0x4554

00007a48 <.Loc.82.1>:
    return _popped[_thread->priority];
    7a48:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade
    7a4c:	6c 4c       	mov.b	@r12,	r12	;
    7a4e:	5c 02       	rlam	#1,	r12	;

00007a50 <.Loc.83.1>:
}
    7a50:	1c 4c 54 45 	mov	17748(r12),r12	;0x04554
    7a54:	0a 17       	popm	#1,	r10	;16-bit words

00007a56 <.LCFI3>:
    7a56:	30 41       	ret			

00007a58 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    7a58:	1d 42 de 4a 	mov	&0x4ade,r13	;0x4ade

00007a5c <.Loc.87.1>:
    7a5c:	6c 4d       	mov.b	@r13,	r12	;

00007a5e <.LVL22>:
    7a5e:	5c 06       	rlam	#2,	r12	;
    7a60:	6d 4d       	mov.b	@r13,	r13	;
    7a62:	0c 5d       	add	r13,	r12	;
    7a64:	5c 06       	rlam	#2,	r12	;
    7a66:	3c 50 d4 45 	add	#17876,	r12	;#0x45d4
    7a6a:	b0 12 48 7b 	call	#31560		;#0x7b48

00007a6e <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    7a6e:	1c 42 de 4a 	mov	&0x4ade,r12	;0x4ade
    7a72:	6c 4c       	mov.b	@r12,	r12	;
    7a74:	5c 02       	rlam	#1,	r12	;
    7a76:	8c 43 54 45 	mov	#0,	17748(r12);r3 As==00, 0x4554

00007a7a <.Loc.89.1>:
}
    7a7a:	30 41       	ret			

00007a7c <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    7a7c:	
00007a80 <L0^A>:
    7a80:	10 00       	bra	@r0+		;

00007a82 <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    7a82:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    7a86:	11 00 

00007a88 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    7a88:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    7a8c:	12 00 

00007a8e <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    7a8e:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    7a92:	13 00 

00007a94 <.Loc.10.1>:
}
    7a94:	30 41       	ret			

00007a96 <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    7a96:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    7a9a:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    7a9e:	4c 4d       	mov.b	r13,	r12	;

00007aa0 <.LVL2>:
    7aa0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7aa4:	3c 53       	add	#-1,	r12	;r3 As==11

00007aa6 <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    7aa6:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7aaa:	30 41       	ret			

00007aac <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    7aac:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    7ab0:	5d 53       	inc.b	r13		;
    7ab2:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00007ab6 <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    7ab6:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    7aba:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    7abc:	02 20       	jnz	$+6      	;abs 0x7ac2

00007abe <.Loc.25.1>:
        queue->__tail = 0;
    7abe:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00007ac2 <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    7ac2:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    7ac6:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    7aca:	4c 4d       	mov.b	r13,	r12	;

00007acc <.LVL4>:
    7acc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7ad0:	3c 53       	add	#-1,	r12	;r3 As==11

00007ad2 <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    7ad2:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7ad6:	30 41       	ret			

00007ad8 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    7ad8:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    7adc:	5e 53       	inc.b	r14		;
    7ade:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

00007ae2 <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    7ae2:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    7ae6:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    7ae8:	02 20       	jnz	$+6      	;abs 0x7aee

00007aea <.Loc.40.1>:
        queue->__tail = 0;
    7aea:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00007aee <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    7aee:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

00007af2 <.Loc.44.1>:
    7af2:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00007af6 <.Loc.44.1>:
    7af6:	0f 9e       	cmp	r14,	r15	;
    7af8:	08 24       	jz	$+18     	;abs 0x7b0a

00007afa <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    7afa:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00007afe <.Loc.49.1>:
    7afe:	5e 02       	rlam	#1,	r14	;
    7b00:	0c 5e       	add	r14,	r12	;

00007b02 <.LVL6>:
    7b02:	8c 4d 00 00 	mov	r13,	0(r12)	;

00007b06 <.Loc.51.1>:

    return 1;
    7b06:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007b08 <.Loc.52.1>:
}
    7b08:	30 41       	ret			

00007b0a <.L9>:
        return 0;
    7b0a:	4c 43       	clr.b	r12		;

00007b0c <.LVL8>:
}
    7b0c:	30 41       	ret			

00007b0e <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    7b0e:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    7b12:	11 00 

00007b14 <.Loc.59.1>:
}
    7b14:	30 41       	ret			

00007b16 <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    7b16:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00007b1a <.Loc.63.1>:
    7b1a:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

00007b1e <.Loc.63.1>:
    7b1e:	0e 9d       	cmp	r13,	r14	;
    7b20:	11 24       	jz	$+36     	;abs 0x7b44

00007b22 <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    7b22:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    7b26:	5d 53       	inc.b	r13		;
    7b28:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00007b2c <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    7b2c:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    7b30:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    7b32:	02 20       	jnz	$+6      	;abs 0x7b38

00007b34 <.Loc.70.1>:
        queue->__head = 0;
    7b34:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00007b38 <.L13>:

    return queue->_items[queue->_head];
    7b38:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00007b3c <.Loc.72.1>:
    7b3c:	5d 02       	rlam	#1,	r13	;
    7b3e:	0c 5d       	add	r13,	r12	;

00007b40 <.LVL11>:
    7b40:	2c 4c       	mov	@r12,	r12	;

00007b42 <.Loc.73.1>:
}
    7b42:	30 41       	ret			

00007b44 <.L14>:
        return NULL;
    7b44:	4c 43       	clr.b	r12		;

00007b46 <.LVL13>:
}
    7b46:	30 41       	ret			

00007b48 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    7b48:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    7b4c:	10 00 

00007b4e <.Loc.79.1>:
}
    7b4e:	30 41       	ret			

00007b50 <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    7b50:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    7b54:	40 01 

00007b56 <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    7b56:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    7b5a:	41 01 

00007b5c <.Loc.13.1>:
}
    7b5c:	30 41       	ret			

00007b5e <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    7b5e:	0a 15       	pushm	#1,	r10	;16-bit words

00007b60 <.LCFI0>:
    7b60:	21 82       	sub	#4,	r1	;r2 As==10

00007b62 <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    7b62:	0a 4c       	mov	r12,	r10	;
    7b64:	0b 43       	clr	r11		;
    7b66:	81 4a 00 00 	mov	r10,	0(r1)	;
    7b6a:	81 4b 02 00 	mov	r11,	2(r1)	;

00007b6e <.Loc.20.1>:
    7b6e:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00007b72 <.LVL1>:
    7b72:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    7b76:	00 00 

00007b78 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    7b78:	0a 4d       	mov	r13,	r10	;
    7b7a:	0b 43       	clr	r11		;

00007b7c <.LVL2>:
    7b7c:	81 4a 00 00 	mov	r10,	0(r1)	;
    7b80:	81 4b 02 00 	mov	r11,	2(r1)	;

00007b84 <.Loc.21.1>:
    7b84:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    7b88:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    7b8c:	00 00 

00007b8e <.LBE3>:
    DMA0SZ = size;                          // Block size
    7b8e:	82 4e 1a 05 	mov	r14,	&0x051a	;

00007b92 <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    7b92:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    7b96:	10 05 

00007b98 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    7b98:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    7b9c:	10 05 

00007b9e <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    7b9e:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00007ba2 <.Loc.29.1>:
}
    7ba2:	21 52       	add	#4,	r1	;r2 As==10

00007ba4 <.LCFI2>:
    7ba4:	0a 17       	popm	#1,	r10	;16-bit words

00007ba6 <.LCFI3>:
    7ba6:	30 41       	ret			

00007ba8 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    7ba8:	3c 40 e4 4a 	mov	#19172,	r12	;#0x4ae4
    7bac:	b0 12 52 89 	call	#-30382	;#0x8952

00007bb0 <.Loc.54.1>:
    7bb0:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00007bb4 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    7bb4:	0c 4d       	mov	r13,	r12	;
    7bb6:	5c 02       	rlam	#1,	r12	;
    7bb8:	0c 5d       	add	r13,	r12	;
    7bba:	5c 06       	rlam	#2,	r12	;
    7bbc:	0c 5d       	add	r13,	r12	;
    7bbe:	5c 02       	rlam	#1,	r12	;
    7bc0:	1c 4c f0 4a 	mov	19184(r12),r12	;0x04af0

00007bc4 <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    7bc4:	3d 53       	add	#-1,	r13	;r3 As==11

00007bc6 <.Loc.56.1>:
    7bc6:	0d 93       	cmp	#0,	r13	;r3 As==00
    7bc8:	f5 23       	jnz	$-20     	;abs 0x7bb4

00007bca <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    7bca:	c2 43 02 1c 	mov.b	#0,	&0x1c02	;r3 As==00

00007bce <.Loc.61.1>:
}
    7bce:	30 41       	ret			

00007bd0 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    7bd0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007bd4 <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    7bd4:	0b 4c       	mov	r12,	r11	;
    7bd6:	5b 02       	rlam	#1,	r11	;
    7bd8:	0b 5c       	add	r12,	r11	;
    7bda:	5b 06       	rlam	#2,	r11	;
    7bdc:	0b 5c       	add	r12,	r11	;
    7bde:	5b 02       	rlam	#1,	r11	;
    7be0:	cb 4c ee 4a 	mov.b	r12,	19182(r11); 0x4aee

00007be4 <.Loc.69.1>:
    _threads[priority].entry = entry;
    7be4:	8b 4d f2 4a 	mov	r13,	19186(r11); 0x4af2

00007be8 <.Loc.70.1>:
    _threads[priority].next = entry;
    7be8:	8b 4d f6 4a 	mov	r13,	19190(r11); 0x4af6

00007bec <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    7bec:	bb 42 f0 4a 	mov	#8,	19184(r11);r2 As==11, 0x4af0

00007bf0 <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    7bf0:	8b 4e f8 4a 	mov	r14,	19192(r11); 0x4af8

00007bf4 <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    7bf4:	8b 4f fa 4a 	mov	r15,	19194(r11); 0x4afa

00007bf8 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    7bf8:	cb 43 fc 4a 	mov.b	#0,	19196(r11);r3 As==00, 0x4afc

00007bfc <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    7bfc:	9b 41 02 00 	mov	2(r1),	19198(r11); 0x4afe
    7c00:	fe 4a 

00007c02 <.Loc.78.1>:
}
    7c02:	30 41       	ret			

00007c04 <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    7c04:	0a 15       	pushm	#1,	r10	;16-bit words

00007c06 <.LCFI0>:
    7c06:	0a 4c       	mov	r12,	r10	;

00007c08 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    7c08:	3d 40 e4 4a 	mov	#19172,	r13	;#0x4ae4
    7c0c:	6c 4c       	mov.b	@r12,	r12	;

00007c0e <.LVL6>:
    7c0e:	b0 12 98 89 	call	#-30312	;#0x8998

00007c12 <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    7c12:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00007c16 <.Loc.84.1>:
}
    7c16:	0a 17       	popm	#1,	r10	;16-bit words

00007c18 <.LCFI1>:
    7c18:	30 41       	ret			

00007c1a <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    7c1a:	0a 15       	pushm	#1,	r10	;16-bit words

00007c1c <.LCFI2>:
    7c1c:	0a 4c       	mov	r12,	r10	;

00007c1e <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    7c1e:	3d 40 e4 4a 	mov	#19172,	r13	;#0x4ae4
    7c22:	6c 4c       	mov.b	@r12,	r12	;

00007c24 <.LVL9>:
    7c24:	b0 12 98 89 	call	#-30312	;#0x8998

00007c28 <.Loc.89.1>:
    thread->next = NULL;
    7c28:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00007c2c <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    7c2c:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00007c30 <.Loc.91.1>:
}
    7c30:	0a 17       	popm	#1,	r10	;16-bit words

00007c32 <.LCFI3>:
    7c32:	30 41       	ret			

00007c34 <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    7c34:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00007c38 <.Loc.95.1>:
    return;
}
    7c38:	30 41       	ret			

00007c3a <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    7c3a:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00007c3e <.Loc.101.1>:
    return;
}
    7c3e:	30 41       	ret			

00007c40 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    7c40:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00007c44 <.Loc.107.1>:
    return;
}
    7c44:	30 41       	ret			

00007c46 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    7c46:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00007c4a <.Loc.112.1>:
    return;
}
    7c4a:	30 41       	ret			

00007c4c <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    7c4c:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00007c50 <.LVL16>:
    7c50:	30 41       	ret			

00007c52 <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    7c52:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00007c56 <.LVL18>:
    7c56:	30 41       	ret			

00007c58 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    7c58:	0a 15       	pushm	#1,	r10	;16-bit words

00007c5a <.LCFI4>:
    7c5a:	0a 4c       	mov	r12,	r10	;

00007c5c <.Loc.125.1>:
    thread->next = thread->entry;
    7c5c:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    7c60:	08 00 

00007c62 <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    7c62:	3d 40 e4 4a 	mov	#19172,	r13	;#0x4ae4
    7c66:	6c 4c       	mov.b	@r12,	r12	;

00007c68 <.LVL20>:
    7c68:	b0 12 78 89 	call	#-30344	;#0x8978

00007c6c <.Loc.127.1>:
    thread->state = TASK_READY;
    7c6c:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00007c70 <.Loc.128.1>:
}
    7c70:	0a 17       	popm	#1,	r10	;16-bit words

00007c72 <.LCFI5>:
    7c72:	30 41       	ret			

00007c74 <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    7c74:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007c78 <.Loc.140.1>:
    return &_threads[priority];
    7c78:	0d 4c       	mov	r12,	r13	;
    7c7a:	5d 02       	rlam	#1,	r13	;
    7c7c:	0d 5c       	add	r12,	r13	;
    7c7e:	5d 06       	rlam	#2,	r13	;
    7c80:	0c 5d       	add	r13,	r12	;

00007c82 <.LVL23>:
    7c82:	5c 02       	rlam	#1,	r12	;

00007c84 <.Loc.141.1>:
}
    7c84:	3c 50 ee 4a 	add	#19182,	r12	;#0x4aee
    7c88:	30 41       	ret			

00007c8a <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    7c8a:	32 c2       	dint			
    7c8c:	03 43       	nop			

00007c8e <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    7c8e:	b0 12 f0 78 	call	#30960		;#0x78f0

00007c92 <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    7c92:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00007c96 <.Loc.162.1>:
    __port_off(1, 3);
    7c96:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007c9a <.LBB8>:
    if(_thread){
    7c9a:	82 93 e2 4a 	cmp	#0,	&0x4ae2	;r3 As==00
    7c9e:	04 24       	jz	$+10     	;abs 0x7ca8

00007ca0 <.Loc.146.1>:
        __tick(_thread);
    7ca0:	1c 42 e2 4a 	mov	&0x4ae2,r12	;0x4ae2
    7ca4:	b0 12 3e 7d 	call	#32062		;#0x7d3e

00007ca8 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    7ca8:	b0 12 5a 7e 	call	#32346		;#0x7e5a

00007cac <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    7cac:	03 43       	nop			
    7cae:	32 d2       	eint			
    7cb0:	03 43       	nop			

00007cb2 <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    7cb2:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00007cb6 <.Loc.179.1>:
    __port_off(1, 3);
    7cb6:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007cba <.L20>:
#endif

    while (1){
        switch (_sched_state){
    7cba:	5c 42 02 1c 	mov.b	&0x1c02,r12	;0x1c02
    7cbe:	0c 93       	cmp	#0,	r12	;r3 As==00
    7cc0:	10 24       	jz	$+34     	;abs 0x7ce2

00007cc2 <.L29>:
    7cc2:	1c 93       	cmp	#1,	r12	;r3 As==01
    7cc4:	fa 23       	jnz	$-10     	;abs 0x7cba
    7cc6:	1c 42 e2 4a 	mov	&0x4ae2,r12	;0x4ae2

00007cca <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    7cca:	0c 93       	cmp	#0,	r12	;r3 As==00
    7ccc:	24 24       	jz	$+74     	;abs 0x7d16

00007cce <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    7cce:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007cd2 <.Loc.198.1>:
#endif
                __tick(_thread);
    7cd2:	b0 12 3e 7d 	call	#32062		;#0x7d3e

00007cd6 <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    7cd6:	c2 43 02 1c 	mov.b	#0,	&0x1c02	;r3 As==00

00007cda <.Loc.180.1>:
        switch (_sched_state){
    7cda:	5c 42 02 1c 	mov.b	&0x1c02,r12	;0x1c02
    7cde:	0c 93       	cmp	#0,	r12	;r3 As==00
    7ce0:	f0 23       	jnz	$-30     	;abs 0x7cc2

00007ce2 <.L19>:
            __port_on(1, 3);
    7ce2:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00007ce6 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    7ce6:	3c 40 e4 4a 	mov	#19172,	r12	;#0x4ae4
    7cea:	b0 12 c0 89 	call	#-30272	;#0x89c0
    7cee:	4d 4c       	mov.b	r12,	r13	;

00007cf0 <.LVL29>:
    if(idx)
    7cf0:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7cf2:	0d 24       	jz	$+28     	;abs 0x7d0e

00007cf4 <.Loc.134.1>:
        return &_threads[idx];
    7cf4:	0c 4d       	mov	r13,	r12	;
    7cf6:	5c 02       	rlam	#1,	r12	;

00007cf8 <.LVL30>:
    7cf8:	0c 5d       	add	r13,	r12	;
    7cfa:	5c 06       	rlam	#2,	r12	;
    7cfc:	0c 5d       	add	r13,	r12	;
    7cfe:	5c 02       	rlam	#1,	r12	;
    7d00:	3c 50 ee 4a 	add	#19182,	r12	;#0x4aee

00007d04 <.LBE10>:
            _thread = __next_thread();
    7d04:	82 4c e2 4a 	mov	r12,	&0x4ae2	;

00007d08 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    7d08:	d2 43 02 1c 	mov.b	#1,	&0x1c02	;r3 As==01

00007d0c <.Loc.196.1>:
            if (_thread){
    7d0c:	e0 3f       	jmp	$-62     	;abs 0x7cce

00007d0e <.L30>:
            _thread = __next_thread();
    7d0e:	82 43 e2 4a 	mov	#0,	&0x4ae2	;r3 As==00

00007d12 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    7d12:	d2 43 02 1c 	mov.b	#1,	&0x1c02	;r3 As==01

00007d16 <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    7d16:	c2 43 02 1c 	mov.b	#0,	&0x1c02	;r3 As==00

00007d1a <.Loc.206.1>:
            __disable_interrupt();
    7d1a:	32 c2       	dint			
    7d1c:	03 43       	nop			

00007d1e <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    7d1e:	3c 40 e4 4a 	mov	#19172,	r12	;#0x4ae4
    7d22:	b0 12 c0 89 	call	#-30272	;#0x89c0

00007d26 <.LVL33>:
    if(idx)
    7d26:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7d28:	c8 23       	jnz	$-110    	;abs 0x7cba

00007d2a <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    7d2a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007d2e <.Loc.210.1>:
#endif
                __mcu_sleep();
    7d2e:	03 43       	nop			
    7d30:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    7d34:	03 43       	nop			

00007d36 <.Loc.213.1>:
                __enable_interrupt();
    7d36:	03 43       	nop			
    7d38:	32 d2       	eint			
    7d3a:	03 43       	nop			
    7d3c:	be 3f       	jmp	$-130    	;abs 0x7cba

00007d3e <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    7d3e:	0a 15       	pushm	#1,	r10	;16-bit words

00007d40 <.LCFI0>:
    7d40:	0a 4c       	mov	r12,	r10	;

00007d42 <L0^A>:
    switch (thread->state)
    7d42:	1c 4c 02 00 	mov	2(r12),	r12	;

00007d46 <.LVL1>:
    7d46:	2c 93       	cmp	#2,	r12	;r3 As==10
    7d48:	35 24       	jz	$+108    	;abs 0x7db4
    7d4a:	2c 92       	cmp	#4,	r12	;r2 As==10
    7d4c:	56 24       	jz	$+174    	;abs 0x7dfa
    7d4e:	1c 93       	cmp	#1,	r12	;r3 As==01
    7d50:	02 24       	jz	$+6      	;abs 0x7d56

00007d52 <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    7d52:	0a 17       	popm	#1,	r10	;16-bit words

00007d54 <.LCFI1>:
    7d54:	30 41       	ret			

00007d56 <.L17>:
    __port_on(3,6);
    7d56:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    7d5a:	22 02 

00007d5c <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    7d5c:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00007d60 <.Loc.14.1>:
    7d60:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    7d64:	5c e3       	xor.b	#1,	r12	;r3 As==01
    7d66:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007d6a <.Loc.14.1>:
    7d6a:	5c 02       	rlam	#1,	r12	;
    7d6c:	0c 5a       	add	r10,	r12	;
    7d6e:	5f 02       	rlam	#1,	r15	;
    7d70:	0f 5a       	add	r10,	r15	;
    7d72:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    7d76:	5e 03       	rrum	#1,	r14	;
    7d78:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    7d7c:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    7d80:	b0 12 5e 7b 	call	#31582		;#0x7b5e

00007d84 <.Loc.17.1>:
    __port_off(3,6);
    7d84:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    7d88:	22 02 

00007d8a <.LBE5>:
        __port_on(1, 4);
    7d8a:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    7d8e:	02 02 

00007d90 <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    7d90:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    7d94:	5c e3       	xor.b	#1,	r12	;r3 As==01
    7d96:	c2 4c 6e 51 	mov.b	r12,	&0x516e	;

00007d9a <.Loc.60.1>:
        if(thread->next == thread->entry){
    7d9a:	1c 4a 08 00 	mov	8(r10),	r12	;

00007d9e <.Loc.60.1>:
    7d9e:	1c 9a 04 00 	cmp	4(r10),	r12	;
    7da2:	48 24       	jz	$+146    	;abs 0x7e34

00007da4 <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    7da4:	8c 12       	call	r12		;

00007da6 <.Loc.77.1>:
    7da6:	8a 4c 06 00 	mov	r12,	6(r10)	;

00007daa <.L8>:
        thread->state = TASK_PRECOMMIT;
    7daa:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00007dae <.Loc.83.1>:
            __port_off(1, 4);
    7dae:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    7db2:	02 02 

00007db4 <.L2>:
        __port_on(3,5);
    7db4:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    7db8:	22 02 

00007dba <.Loc.87.1>:
        __release_event(thread);
    7dba:	0c 4a       	mov	r10,	r12	;
    7dbc:	b0 12 58 7a 	call	#31320		;#0x7a58

00007dc0 <.Loc.96.1>:
        thread->next = thread->next_temp;
    7dc0:	1c 4a 06 00 	mov	6(r10),	r12	;

00007dc4 <.Loc.96.1>:
    7dc4:	8a 4c 08 00 	mov	r12,	8(r10)	;

00007dc8 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    7dc8:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    7dcc:	5d e3       	xor.b	#1,	r13	;r3 As==01
    7dce:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

00007dd2 <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    7dd2:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00007dd6 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    7dd6:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    7dda:	0e 00 

00007ddc <.Loc.117.1>:
        __port_off(3,5);
    7ddc:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    7de0:	22 02 

00007de2 <.Loc.117.1>:
        __port_on(3,5);
    7de2:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    7de6:	22 02 

00007de8 <.Loc.118.1>:
        if (thread->next == NULL)
    7de8:	0c 93       	cmp	#0,	r12	;r3 As==00
    7dea:	14 24       	jz	$+42     	;abs 0x7e14

00007dec <.L9>:
            thread->state = TASK_READY;
    7dec:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00007df0 <.L12>:
        __port_off(3,5);
    7df0:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    7df4:	22 02 

00007df6 <.Loc.142.1>:
}
    7df6:	0a 17       	popm	#1,	r10	;16-bit words

00007df8 <.LCFI3>:
    7df8:	30 41       	ret			

00007dfa <.L3>:
    7dfa:	1c 4a 08 00 	mov	8(r10),	r12	;

00007dfe <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    7dfe:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    7e02:	0e 00 

00007e04 <.Loc.117.1>:
        __port_off(3,5);
    7e04:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    7e08:	22 02 

00007e0a <.Loc.117.1>:
        __port_on(3,5);
    7e0a:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    7e0e:	22 02 

00007e10 <.Loc.118.1>:
        if (thread->next == NULL)
    7e10:	0c 93       	cmp	#0,	r12	;r3 As==00
    7e12:	ec 23       	jnz	$-38     	;abs 0x7dec

00007e14 <.L19>:
            __disable_interrupt();
    7e14:	32 c2       	dint			
    7e16:	03 43       	nop			

00007e18 <.Loc.125.1>:
            if(!__has_events(thread)){
    7e18:	0c 4a       	mov	r10,	r12	;
    7e1a:	b0 12 0c 7a 	call	#31244		;#0x7a0c

00007e1e <.Loc.125.1>:
    7e1e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7e20:	12 24       	jz	$+38     	;abs 0x7e46

00007e22 <.Loc.131.1>:
                thread->next = thread->entry;
    7e22:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    7e26:	08 00 

00007e28 <.Loc.133.1>:
                thread->state = TASK_READY;
    7e28:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00007e2c <.Loc.135.1>:
            __enable_interrupt();
    7e2c:	03 43       	nop			
    7e2e:	32 d2       	eint			
    7e30:	03 43       	nop			
    7e32:	de 3f       	jmp	$-66     	;abs 0x7df0

00007e34 <.L18>:
            isr_event_t *event = __lock_event(thread);
    7e34:	0c 4a       	mov	r10,	r12	;
    7e36:	b0 12 2a 7a 	call	#31274		;#0x7a2a

00007e3a <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    7e3a:	1d 4a 04 00 	mov	4(r10),	r13	;
    7e3e:	8d 12       	call	r13		;

00007e40 <.LVL11>:
    7e40:	8a 4c 06 00 	mov	r12,	6(r10)	;

00007e44 <.LBE7>:
    7e44:	b2 3f       	jmp	$-154    	;abs 0x7daa

00007e46 <.L20>:
                __stop_thread(thread);
    7e46:	0c 4a       	mov	r10,	r12	;
    7e48:	b0 12 04 7c 	call	#31748		;#0x7c04

00007e4c <.Loc.135.1>:
            __enable_interrupt();
    7e4c:	03 43       	nop			
    7e4e:	32 d2       	eint			
    7e50:	03 43       	nop			
    7e52:	ce 3f       	jmp	$-98     	;abs 0x7df0

00007e54 <__timers_init>:
    7e54:	b0 12 ba 8a 	call	#-30022	;#0x8aba

00007e58 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    7e58:	30 41       	ret			

00007e5a <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    7e5a:	30 41       	ret			

00007e5c <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    7e5c:	0a 15       	pushm	#1,	r10	;16-bit words

00007e5e <.LCFI0>:
    7e5e:	4a 4c       	mov.b	r12,	r10	;

00007e60 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    7e60:	5c 92 38 1c 	cmp.b	&0x1c38,r12	;0x1c38
    7e64:	19 24       	jz	$+52     	;abs 0x7e98

00007e66 <.L5>:
    7e66:	c2 9a 42 1c 	cmp.b	r10,	&0x1c42	;
    7e6a:	0e 24       	jz	$+30     	;abs 0x7e88

00007e6c <.L6>:
    7e6c:	c2 9a 4c 1c 	cmp.b	r10,	&0x1c4c	;
    7e70:	02 24       	jz	$+6      	;abs 0x7e76

00007e72 <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    7e72:	0a 17       	popm	#1,	r10	;16-bit words

00007e74 <.LCFI1>:
    7e74:	30 41       	ret			

00007e76 <.L10>:
            wkup_timing[i].status = NOT_USED;
    7e76:	82 43 4a 1c 	mov	#0,	&0x1c4a	;r3 As==00

00007e7a <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    7e7a:	4e 43       	clr.b	r14		;
    7e7c:	4d 43       	clr.b	r13		;
    7e7e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7e80:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

00007e84 <.Loc.101.1>:
}
    7e84:	0a 17       	popm	#1,	r10	;16-bit words

00007e86 <.LCFI3>:
    7e86:	30 41       	ret			

00007e88 <.L9>:
            wkup_timing[i].status = NOT_USED;
    7e88:	82 43 40 1c 	mov	#0,	&0x1c40	;r3 As==00

00007e8c <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    7e8c:	4e 43       	clr.b	r14		;
    7e8e:	4d 43       	clr.b	r13		;
    7e90:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7e92:	b0 12 7c 8b 	call	#-29828	;#0x8b7c
    7e96:	ea 3f       	jmp	$-42     	;abs 0x7e6c

00007e98 <.L8>:
            wkup_timing[i].status = NOT_USED;
    7e98:	82 43 36 1c 	mov	#0,	&0x1c36	;r3 As==00

00007e9c <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    7e9c:	4e 43       	clr.b	r14		;
    7e9e:	4d 43       	clr.b	r13		;
    7ea0:	4c 43       	clr.b	r12		;

00007ea2 <.LVL9>:
    7ea2:	b0 12 7c 8b 	call	#-29828	;#0x8b7c
    7ea6:	df 3f       	jmp	$-64     	;abs 0x7e66

00007ea8 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    7ea8:	2a 15       	pushm	#3,	r10	;16-bit words

00007eaa <.LCFI5>:
    7eaa:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007eae <.LCFI6>:
    7eae:	49 43       	clr.b	r9		;
    7eb0:	38 40 36 1c 	mov	#7222,	r8	;#0x1c36

00007eb4 <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    7eb4:	0a 49       	mov	r9,	r10	;
    7eb6:	5a 06       	rlam	#2,	r10	;
    7eb8:	0a 59       	add	r9,	r10	;
    7eba:	5a 02       	rlam	#1,	r10	;
    7ebc:	0a 58       	add	r8,	r10	;
    7ebe:	4e 43       	clr.b	r14		;
    7ec0:	4d 49       	mov.b	r9,	r13	;
    7ec2:	0c 41       	mov	r1,	r12	;
    7ec4:	b0 12 78 8d 	call	#-29320	;#0x8d78
    7ec8:	aa 41 00 00 	mov	@r1,	0(r10)	;
    7ecc:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7ed0:	02 00 
    7ed2:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    7ed6:	04 00 
    7ed8:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7edc:	06 00 
    7ede:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7ee2:	08 00 

00007ee4 <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7ee4:	19 53       	inc	r9		;

00007ee6 <.Loc.115.1>:
    7ee6:	39 90 03 00 	cmp	#3,	r9	;
    7eea:	e4 23       	jnz	$-54     	;abs 0x7eb4

00007eec <.Loc.120.1>:
    }

}
    7eec:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007ef0 <.LCFI7>:
    7ef0:	28 17       	popm	#3,	r10	;16-bit words

00007ef2 <.LCFI8>:
    7ef2:	30 41       	ret			

00007ef4 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    7ef4:	5a 15       	pushm	#6,	r10	;16-bit words

00007ef6 <.LCFI9>:

    uint8_t i,first = 1;
    7ef6:	5e 43       	mov.b	#1,	r14	;r3 As==01

00007ef8 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7ef8:	4a 43       	clr.b	r10		;
    7efa:	38 40 36 1c 	mov	#7222,	r8	;#0x1c36

00007efe <.L40>:
    {

        if (wkup_timing[i].status == USED)
    7efe:	09 4a       	mov	r10,	r9	;
    7f00:	05 4a       	mov	r10,	r5	;
    7f02:	55 06       	rlam	#2,	r5	;
    7f04:	0c 45       	mov	r5,	r12	;
    7f06:	0c 5a       	add	r10,	r12	;
    7f08:	5c 02       	rlam	#1,	r12	;
    7f0a:	0d 4c       	mov	r12,	r13	;
    7f0c:	3d 50 36 1c 	add	#7222,	r13	;#0x1c36

00007f10 <.Loc.130.1>:
    7f10:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    7f14:	0c 24       	jz	$+26     	;abs 0x7f2e

00007f16 <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7f16:	4c 4a       	mov.b	r10,	r12	;
    7f18:	5c 53       	inc.b	r12		;
    7f1a:	4a 4c       	mov.b	r12,	r10	;

00007f1c <.LVL19>:
    7f1c:	7c 90 03 00 	cmp.b	#3,	r12	;
    7f20:	ee 23       	jnz	$-34     	;abs 0x7efe

00007f22 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    7f22:	0e 93       	cmp	#0,	r14	;r3 As==00
    7f24:	54 24       	jz	$+170    	;abs 0x7fce

00007f26 <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    7f26:	b0 12 d6 89 	call	#-30250	;#0x89d6

00007f2a <.LVL20>:


}
    7f2a:	55 17       	popm	#6,	r10	;16-bit words

00007f2c <.LCFI10>:
    7f2c:	30 41       	ret			

00007f2e <.L84>:
            if (first)
    7f2e:	16 4d 04 00 	mov	4(r13),	r6	;
    7f32:	17 4d 06 00 	mov	6(r13),	r7	;

00007f36 <.Loc.133.1>:
    7f36:	0e 93       	cmp	#0,	r14	;r3 As==00
    7f38:	05 24       	jz	$+12     	;abs 0x7f44

00007f3a <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    7f3a:	82 46 5c 1c 	mov	r6,	&0x1c5c	;

00007f3e <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    7f3e:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5e	;
    7f42:	5e 1c 

00007f44 <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    7f44:	b0 12 78 8a 	call	#-30088	;#0x8a78

00007f48 <.Loc.141.1>:
    7f48:	0e 46       	mov	r6,	r14	;
    7f4a:	0f 47       	mov	r7,	r15	;
    7f4c:	0e 8c       	sub	r12,	r14	;
    7f4e:	0f 7d       	subc	r13,	r15	;

00007f50 <.Loc.141.1>:
    7f50:	05 5a       	add	r10,	r5	;
    7f52:	55 02       	rlam	#1,	r5	;
    7f54:	05 58       	add	r8,	r5	;
    7f56:	85 4e 04 00 	mov	r14,	4(r5)	;
    7f5a:	85 4f 06 00 	mov	r15,	6(r5)	;

00007f5e <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    7f5e:	4d 43       	clr.b	r13		;
    7f60:	4c 4a       	mov.b	r10,	r12	;
    7f62:	b0 12 dc 8a 	call	#-29988	;#0x8adc

00007f66 <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    7f66:	1c 45 04 00 	mov	4(r5),	r12	;
    7f6a:	1d 45 06 00 	mov	6(r5),	r13	;
    7f6e:	4b 4a       	mov.b	r10,	r11	;
    7f70:	5b 53       	inc.b	r11		;
    7f72:	4a 4b       	mov.b	r11,	r10	;

00007f74 <.Loc.144.1>:
    7f74:	07 4d       	mov	r13,	r7	;
    7f76:	0d 93       	cmp	#0,	r13	;r3 As==00
    7f78:	3b 38       	jl	$+120    	;abs 0x7ff0

00007f7a <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    7f7a:	0e 4c       	mov	r12,	r14	;
    7f7c:	0e dd       	bis	r13,	r14	;
    7f7e:	0e 93       	cmp	#0,	r14	;r3 As==00
    7f80:	af 24       	jz	$+352    	;abs 0x80e0

00007f82 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7f82:	16 42 5c 1c 	mov	&0x1c5c,r6	;0x1c5c
    7f86:	0e 46       	mov	r6,	r14	;
    7f88:	0f 43       	clr	r15		;

00007f8a <.Loc.155.1>:
    7f8a:	0d 93       	cmp	#0,	r13	;r3 As==00
    7f8c:	18 34       	jge	$+50     	;abs 0x7fbe

00007f8e <.L50>:
    7f8e:	0e 49       	mov	r9,	r14	;
    7f90:	5e 06       	rlam	#2,	r14	;
    7f92:	09 5e       	add	r14,	r9	;
    7f94:	59 02       	rlam	#1,	r9	;
    7f96:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

00007f9a <.L37>:
                    min_wkup = wkup_timing[i].data;
    7f9a:	82 4c 5c 1c 	mov	r12,	&0x1c5c	;

00007f9e <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    7f9e:	c2 4e 5e 1c 	mov.b	r14,	&0x1c5e	;

00007fa2 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7fa2:	7b 90 03 00 	cmp.b	#3,	r11	;
    7fa6:	15 24       	jz	$+44     	;abs 0x7fd2

00007fa8 <.L74>:
        if (wkup_timing[i].status == USED)
    7fa8:	09 4a       	mov	r10,	r9	;
    7faa:	05 4a       	mov	r10,	r5	;
    7fac:	55 06       	rlam	#2,	r5	;
    7fae:	0c 45       	mov	r5,	r12	;
    7fb0:	0c 5a       	add	r10,	r12	;
    7fb2:	5c 02       	rlam	#1,	r12	;

00007fb4 <.Loc.130.1>:
    7fb4:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    7fb8:	41 24       	jz	$+132    	;abs 0x803c

00007fba <.L91>:
    7fba:	4e 43       	clr.b	r14		;
    7fbc:	ac 3f       	jmp	$-166    	;abs 0x7f16

00007fbe <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7fbe:	0d 93       	cmp	#0,	r13	;r3 As==00
    7fc0:	62 24       	jz	$+198    	;abs 0x8086

00007fc2 <.L35>:
    7fc2:	07 4c       	mov	r12,	r7	;
    7fc4:	0c 9e       	cmp	r14,	r12	;
    7fc6:	79 24       	jz	$+244    	;abs 0x80ba

00007fc8 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7fc8:	7b 90 03 00 	cmp.b	#3,	r11	;
    7fcc:	ed 23       	jnz	$-36     	;abs 0x7fa8

00007fce <.L72>:
    7fce:	5e 42 5e 1c 	mov.b	&0x1c5e,r14	;0x1c5e

00007fd2 <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    7fd2:	4d 4e       	mov.b	r14,	r13	;
    7fd4:	4c 43       	clr.b	r12		;
    7fd6:	b0 12 c4 8b 	call	#-29756	;#0x8bc4

00007fda <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    7fda:	1d 42 5c 1c 	mov	&0x1c5c,r13	;0x1c5c
    7fde:	4c 43       	clr.b	r12		;
    7fe0:	b0 12 d2 8b 	call	#-29742	;#0x8bd2

00007fe4 <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    7fe4:	1c 42 5c 1c 	mov	&0x1c5c,r12	;0x1c5c
    7fe8:	b0 12 ea 89 	call	#-30230	;#0x89ea

00007fec <.Loc.177.1>:
}
    7fec:	55 17       	popm	#6,	r10	;16-bit words

00007fee <.LCFI12>:
    7fee:	30 41       	ret			

00007ff0 <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    7ff0:	5e 42 5f 1c 	mov.b	&0x1c5f,r14	;0x1c5f
    7ff4:	06 43       	clr	r6		;
    7ff6:	06 8e       	sub	r14,	r6	;
    7ff8:	0e 46       	mov	r6,	r14	;
    7ffa:	0f 46       	mov	r6,	r15	;
    7ffc:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00008000 <.Loc.144.1>:
    8000:	05 4f       	mov	r15,	r5	;
    8002:	0f 9d       	cmp	r13,	r15	;
    8004:	25 38       	jl	$+76     	;abs 0x8050

00008006 <.Loc.144.1>:
    8006:	0d 9f       	cmp	r15,	r13	;
    8008:	21 24       	jz	$+68     	;abs 0x804c

0000800a <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    800a:	07 4d       	mov	r13,	r7	;
    800c:	0d 9f       	cmp	r15,	r13	;
    800e:	04 38       	jl	$+10     	;abs 0x8018
    8010:	0f 9d       	cmp	r13,	r15	;
    8012:	da 23       	jnz	$-74     	;abs 0x7fc8
    8014:	0c 96       	cmp	r6,	r12	;
    8016:	d8 2f       	jc	$-78     	;abs 0x7fc8

00008018 <.L30>:
    8018:	0c 49       	mov	r9,	r12	;
    801a:	5c 06       	rlam	#2,	r12	;
    801c:	09 5c       	add	r12,	r9	;
    801e:	59 02       	rlam	#1,	r9	;
    8020:	89 43 36 1c 	mov	#0,	7222(r9);r3 As==00, 0x1c36

00008024 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    8024:	7b 90 03 00 	cmp.b	#3,	r11	;
    8028:	d2 27       	jz	$-90     	;abs 0x7fce

0000802a <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    802a:	09 4a       	mov	r10,	r9	;
    802c:	05 4a       	mov	r10,	r5	;
    802e:	55 06       	rlam	#2,	r5	;
    8030:	0c 45       	mov	r5,	r12	;
    8032:	0c 5a       	add	r10,	r12	;
    8034:	5c 02       	rlam	#1,	r12	;

00008036 <.Loc.130.1>:
    8036:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    803a:	bf 23       	jnz	$-128    	;abs 0x7fba

0000803c <.L27>:
    803c:	0c 45       	mov	r5,	r12	;
    803e:	0c 5a       	add	r10,	r12	;
    8040:	5c 02       	rlam	#1,	r12	;
    8042:	16 4c 3a 1c 	mov	7226(r12),r6	;0x01c3a
    8046:	17 4c 3c 1c 	mov	7228(r12),r7	;0x01c3c
    804a:	7c 3f       	jmp	$-262    	;abs 0x7f44

0000804c <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    804c:	06 9c       	cmp	r12,	r6	;
    804e:	dd 2f       	jc	$-68     	;abs 0x800a

00008050 <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    8050:	1e 42 5c 1c 	mov	&0x1c5c,r14	;0x1c5c
    8054:	06 4e       	mov	r14,	r6	;
    8056:	07 43       	clr	r7		;

00008058 <.Loc.146.1>:
    8058:	4e 43       	clr.b	r14		;
    805a:	4f 43       	clr.b	r15		;
    805c:	0e 8c       	sub	r12,	r14	;
    805e:	0f 7d       	subc	r13,	r15	;

00008060 <.Loc.146.1>:
    8060:	05 4f       	mov	r15,	r5	;
    8062:	0f 93       	cmp	#0,	r15	;r3 As==00
    8064:	14 34       	jge	$+42     	;abs 0x808e

00008066 <.L22>:
    8066:	0e 49       	mov	r9,	r14	;
    8068:	5e 06       	rlam	#2,	r14	;
    806a:	09 5e       	add	r14,	r9	;
    806c:	59 02       	rlam	#1,	r9	;
    806e:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

00008072 <.L28>:
                    min_wkup = -wkup_timing[i].data;
    8072:	4f 43       	clr.b	r15		;
    8074:	0f 8c       	sub	r12,	r15	;
    8076:	82 4f 5c 1c 	mov	r15,	&0x1c5c	;

0000807a <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    807a:	c2 4e 5e 1c 	mov.b	r14,	&0x1c5e	;

0000807e <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    807e:	7b 90 03 00 	cmp.b	#3,	r11	;
    8082:	92 23       	jnz	$-218    	;abs 0x7fa8
    8084:	a6 3f       	jmp	$-178    	;abs 0x7fd2

00008086 <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    8086:	07 4c       	mov	r12,	r7	;
    8088:	0c 9e       	cmp	r14,	r12	;
    808a:	9b 2f       	jc	$-200    	;abs 0x7fc2
    808c:	80 3f       	jmp	$-254    	;abs 0x7f8e

0000808e <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    808e:	0f 93       	cmp	#0,	r15	;r3 As==00
    8090:	03 20       	jnz	$+8      	;abs 0x8098
    8092:	05 4e       	mov	r14,	r5	;
    8094:	0e 96       	cmp	r6,	r14	;
    8096:	e7 2b       	jnc	$-48     	;abs 0x8066

00008098 <.L47>:
    8098:	06 9e       	cmp	r14,	r6	;
    809a:	96 23       	jnz	$-210    	;abs 0x7fc8
    809c:	0f 93       	cmp	#0,	r15	;r3 As==00
    809e:	94 23       	jnz	$-214    	;abs 0x7fc8

000080a0 <.Loc.146.1>:
    80a0:	0e 49       	mov	r9,	r14	;
    80a2:	5e 06       	rlam	#2,	r14	;
    80a4:	09 5e       	add	r14,	r9	;
    80a6:	59 02       	rlam	#1,	r9	;
    80a8:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

000080ac <.Loc.146.1>:
    80ac:	5f 42 5e 1c 	mov.b	&0x1c5e,r15	;0x1c5e

000080b0 <.Loc.146.1>:
    80b0:	d9 92 5e 1c 	cmp.b	&0x1c5e,7224(r9);0x1c5e, 0x1c38
    80b4:	38 1c 
    80b6:	dd 2b       	jnc	$-68     	;abs 0x8072
    80b8:	0e 3c       	jmp	$+30     	;abs 0x80d6

000080ba <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    80ba:	0d 9f       	cmp	r15,	r13	;
    80bc:	85 23       	jnz	$-244    	;abs 0x7fc8

000080be <.Loc.155.1>:
    80be:	0e 49       	mov	r9,	r14	;
    80c0:	5e 06       	rlam	#2,	r14	;
    80c2:	09 5e       	add	r14,	r9	;
    80c4:	59 02       	rlam	#1,	r9	;
    80c6:	5e 49 38 1c 	mov.b	7224(r9),r14	;0x01c38

000080ca <.Loc.155.1>:
    80ca:	5f 42 5e 1c 	mov.b	&0x1c5e,r15	;0x1c5e

000080ce <.Loc.155.1>:
    80ce:	d9 92 5e 1c 	cmp.b	&0x1c5e,7224(r9);0x1c5e, 0x1c38
    80d2:	38 1c 
    80d4:	62 2b       	jnc	$-314    	;abs 0x7f9a

000080d6 <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    80d6:	7b 90 03 00 	cmp.b	#3,	r11	;
    80da:	66 23       	jnz	$-306    	;abs 0x7fa8

000080dc <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    80dc:	0e 4f       	mov	r15,	r14	;

000080de <.Loc.164.1>:
    if (!first)
    80de:	79 3f       	jmp	$-268    	;abs 0x7fd2

000080e0 <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    80e0:	7b 90 03 00 	cmp.b	#3,	r11	;
    80e4:	74 27       	jz	$-278    	;abs 0x7fce

000080e6 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    80e6:	09 4a       	mov	r10,	r9	;
    80e8:	05 4a       	mov	r10,	r5	;
    80ea:	55 06       	rlam	#2,	r5	;
    80ec:	0c 45       	mov	r5,	r12	;
    80ee:	0c 5a       	add	r10,	r12	;
    80f0:	5c 02       	rlam	#1,	r12	;

000080f2 <.Loc.130.1>:
    80f2:	9c 93 36 1c 	cmp	#1,	7222(r12);r3 As==01, 0x1c36
    80f6:	0f 23       	jnz	$-480    	;abs 0x7f16
    80f8:	a1 3f       	jmp	$-188    	;abs 0x803c

000080fa <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    80fa:	4a 15       	pushm	#5,	r10	;16-bit words

000080fc <.LCFI14>:
    80fc:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00008100 <.LCFI15>:
    8100:	47 4c       	mov.b	r12,	r7	;
    8102:	09 4d       	mov	r13,	r9	;

00008104 <.LBB12>:
    8104:	46 43       	clr.b	r6		;
    8106:	38 40 36 1c 	mov	#7222,	r8	;#0x1c36

0000810a <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    810a:	0a 46       	mov	r6,	r10	;
    810c:	5a 06       	rlam	#2,	r10	;
    810e:	0a 56       	add	r6,	r10	;
    8110:	5a 02       	rlam	#1,	r10	;
    8112:	0a 58       	add	r8,	r10	;
    8114:	4e 43       	clr.b	r14		;
    8116:	4d 46       	mov.b	r6,	r13	;
    8118:	0c 41       	mov	r1,	r12	;
    811a:	b0 12 78 8d 	call	#-29320	;#0x8d78
    811e:	aa 41 00 00 	mov	@r1,	0(r10)	;
    8122:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    8126:	02 00 
    8128:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    812c:	04 00 
    812e:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    8132:	06 00 
    8134:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    8138:	08 00 

0000813a <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    813a:	16 53       	inc	r6		;

0000813c <.Loc.115.1>:
    813c:	36 90 03 00 	cmp	#3,	r6	;
    8140:	e4 23       	jnz	$-54     	;abs 0x810a

00008142 <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    8142:	b0 12 d6 89 	call	#-30250	;#0x89d6

00008146 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    8146:	0e 49       	mov	r9,	r14	;
    8148:	0f 43       	clr	r15		;

0000814a <.Loc.194.1>:
    814a:	82 93 36 1c 	cmp	#0,	&0x1c36	;r3 As==00
    814e:	22 24       	jz	$+70     	;abs 0x8194

00008150 <.Loc.192.1>:
    8150:	82 93 40 1c 	cmp	#0,	&0x1c40	;r3 As==00
    8154:	49 24       	jz	$+148    	;abs 0x81e8

00008156 <.Loc.192.1>:
    8156:	82 93 4a 1c 	cmp	#0,	&0x1c4a	;r3 As==00
    815a:	49 24       	jz	$+148    	;abs 0x81ee

0000815c <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    815c:	82 4e 4e 1c 	mov	r14,	&0x1c4e	;
    8160:	82 4f 50 1c 	mov	r15,	&0x1c50	;

00008164 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    8164:	4d 43       	clr.b	r13		;
    8166:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8168:	b0 12 dc 8a 	call	#-29988	;#0x8adc

0000816c <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    816c:	c2 47 4c 1c 	mov.b	r7,	&0x1c4c	;

00008170 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    8170:	4e 47       	mov.b	r7,	r14	;
    8172:	4d 43       	clr.b	r13		;
    8174:	7c 40 03 00 	mov.b	#3,	r12	;
    8178:	b0 12 30 8b 	call	#-29904	;#0x8b30

0000817c <.Loc.219.1>:
        refresh_wkup_timers();
    817c:	b0 12 f4 7e 	call	#32500		;#0x7ef4

00008180 <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    8180:	4c 43       	clr.b	r12		;
    8182:	b0 12 e0 8b 	call	#-29728	;#0x8be0

00008186 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    8186:	4c 43       	clr.b	r12		;
    8188:	b0 12 34 8d 	call	#-29388	;#0x8d34

0000818c <.Loc.224.1>:
}
    818c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00008190 <.LCFI16>:
    8190:	46 17       	popm	#5,	r10	;16-bit words

00008192 <.LCFI17>:
    8192:	30 41       	ret			

00008194 <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    8194:	1a 42 36 1c 	mov	&0x1c36,r10	;0x1c36

00008198 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    8198:	0d 4a       	mov	r10,	r13	;

0000819a <.L95>:
            wkup_timing[i].data = ticks;
    819a:	0c 4d       	mov	r13,	r12	;
    819c:	5c 06       	rlam	#2,	r12	;
    819e:	0c 5d       	add	r13,	r12	;
    81a0:	5c 02       	rlam	#1,	r12	;
    81a2:	08 5c       	add	r12,	r8	;
    81a4:	88 4e 04 00 	mov	r14,	4(r8)	;
    81a8:	88 4f 06 00 	mov	r15,	6(r8)	;

000081ac <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    81ac:	4d 43       	clr.b	r13		;
    81ae:	4c 4a       	mov.b	r10,	r12	;
    81b0:	b0 12 dc 8a 	call	#-29988	;#0x8adc

000081b4 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    81b4:	c8 47 02 00 	mov.b	r7,	2(r8)	;

000081b8 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    81b8:	4e 47       	mov.b	r7,	r14	;
    81ba:	4d 43       	clr.b	r13		;
    81bc:	4c 4a       	mov.b	r10,	r12	;
    81be:	b0 12 30 8b 	call	#-29904	;#0x8b30

000081c2 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    81c2:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

000081c6 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    81c6:	5e 43       	mov.b	#1,	r14	;r3 As==01
    81c8:	4d 43       	clr.b	r13		;
    81ca:	4c 4a       	mov.b	r10,	r12	;
    81cc:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

000081d0 <.Loc.202.1>:
        refresh_wkup_timers();
    81d0:	b0 12 f4 7e 	call	#32500		;#0x7ef4

000081d4 <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    81d4:	4c 43       	clr.b	r12		;
    81d6:	b0 12 e0 8b 	call	#-29728	;#0x8be0

000081da <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    81da:	4c 43       	clr.b	r12		;
    81dc:	b0 12 34 8d 	call	#-29388	;#0x8d34

000081e0 <.Loc.224.1>:
}
    81e0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000081e4 <.LCFI19>:
    81e4:	46 17       	popm	#5,	r10	;16-bit words

000081e6 <.LCFI20>:
    81e6:	30 41       	ret			

000081e8 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    81e8:	5a 43       	mov.b	#1,	r10	;r3 As==01

000081ea <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    81ea:	5d 43       	mov.b	#1,	r13	;r3 As==01
    81ec:	d6 3f       	jmp	$-82     	;abs 0x819a

000081ee <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    81ee:	6a 43       	mov.b	#2,	r10	;r3 As==10

000081f0 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    81f0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    81f2:	d3 3f       	jmp	$-88     	;abs 0x819a

000081f4 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    81f4:	4d 4c       	mov.b	r12,	r13	;

000081f6 <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    81f6:	5c 92 1a 1c 	cmp.b	&0x1c1a,r12	;0x1c1a
    81fa:	14 24       	jz	$+42     	;abs 0x8224

000081fc <.Loc.237.1>:
    81fc:	c2 9d 24 1c 	cmp.b	r13,	&0x1c24	;
    8200:	14 24       	jz	$+42     	;abs 0x822a

00008202 <.Loc.237.1>:
    8202:	c2 9d 2e 1c 	cmp.b	r13,	&0x1c2e	;
    8206:	01 24       	jz	$+4      	;abs 0x820a

00008208 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    8208:	30 41       	ret			

0000820a <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    820a:	6c 43       	mov.b	#2,	r12	;r3 As==10

0000820c <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    820c:	6e 43       	mov.b	#2,	r14	;r3 As==10

0000820e <.L102>:
            xpr_timing[i].status = NOT_USED;
    820e:	0d 4e       	mov	r14,	r13	;

00008210 <.LVL71>:
    8210:	5d 06       	rlam	#2,	r13	;
    8212:	0d 5e       	add	r14,	r13	;
    8214:	5d 02       	rlam	#1,	r13	;
    8216:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

0000821a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    821a:	4e 43       	clr.b	r14		;
    821c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    821e:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

00008222 <.Loc.242.1>:
}
    8222:	30 41       	ret			

00008224 <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    8224:	4c 43       	clr.b	r12		;

00008226 <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    8226:	4e 43       	clr.b	r14		;
    8228:	f2 3f       	jmp	$-26     	;abs 0x820e

0000822a <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    822a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000822c <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    822c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    822e:	ef 3f       	jmp	$-32     	;abs 0x820e

00008230 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    8230:	2a 15       	pushm	#3,	r10	;16-bit words

00008232 <.LCFI22>:
    8232:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00008236 <.LCFI23>:
    8236:	49 43       	clr.b	r9		;
    8238:	38 40 18 1c 	mov	#7192,	r8	;#0x1c18

0000823c <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    823c:	0a 49       	mov	r9,	r10	;
    823e:	5a 06       	rlam	#2,	r10	;
    8240:	0a 59       	add	r9,	r10	;
    8242:	5a 02       	rlam	#1,	r10	;
    8244:	0a 58       	add	r8,	r10	;
    8246:	6e 43       	mov.b	#2,	r14	;r3 As==10
    8248:	4d 49       	mov.b	r9,	r13	;
    824a:	0c 41       	mov	r1,	r12	;
    824c:	b0 12 78 8d 	call	#-29320	;#0x8d78
    8250:	aa 41 00 00 	mov	@r1,	0(r10)	;
    8254:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    8258:	02 00 
    825a:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    825e:	04 00 
    8260:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    8264:	06 00 
    8266:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    826a:	08 00 

0000826c <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    826c:	19 53       	inc	r9		;

0000826e <.Loc.252.1>:
    826e:	39 90 03 00 	cmp	#3,	r9	;
    8272:	e4 23       	jnz	$-54     	;abs 0x823c

00008274 <.Loc.257.1>:
    }

}
    8274:	31 50 0a 00 	add	#10,	r1	;#0x000a

00008278 <.LCFI24>:
    8278:	28 17       	popm	#3,	r10	;16-bit words

0000827a <.LCFI25>:
    827a:	30 41       	ret			

0000827c <refresh_xpr_timers>:

void refresh_xpr_timers(){
    827c:	4a 15       	pushm	#5,	r10	;16-bit words

0000827e <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    827e:	92 93 18 1c 	cmp	#1,	&0x1c18	;r3 As==01
    8282:	62 24       	jz	$+198    	;abs 0x8348

00008284 <.Loc.265.1>:
    8284:	92 93 22 1c 	cmp	#1,	&0x1c22	;r3 As==01
    8288:	07 24       	jz	$+16     	;abs 0x8298

0000828a <.Loc.265.1>:
    828a:	92 93 2c 1c 	cmp	#1,	&0x1c2c	;r3 As==01
    828e:	15 25       	jz	$+556    	;abs 0x84ba

00008290 <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    8290:	b0 12 16 8a 	call	#-30186	;#0x8a16

00008294 <.Loc.313.1>:

}
    8294:	46 17       	popm	#5,	r10	;16-bit words

00008296 <.LCFI27>:
    8296:	30 41       	ret			

00008298 <.L160>:
            if (first)
    8298:	16 42 26 1c 	mov	&0x1c26,r6	;0x1c26
    829c:	17 42 28 1c 	mov	&0x1c28,r7	;0x1c28

000082a0 <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    82a0:	5a 42 24 1c 	mov.b	&0x1c24,r10	;0x1c24

000082a4 <.LVL89>:
    82a4:	08 46       	mov	r6,	r8	;
    82a6:	09 47       	mov	r7,	r9	;

000082a8 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    82a8:	b0 12 78 8a 	call	#-30088	;#0x8a78

000082ac <.Loc.278.1>:
    82ac:	0e 46       	mov	r6,	r14	;
    82ae:	0f 47       	mov	r7,	r15	;
    82b0:	0e 8c       	sub	r12,	r14	;
    82b2:	0f 7d       	subc	r13,	r15	;

000082b4 <.Loc.278.1>:
    82b4:	82 4e 26 1c 	mov	r14,	&0x1c26	;
    82b8:	82 4f 28 1c 	mov	r15,	&0x1c28	;

000082bc <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    82bc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    82be:	5c 43       	mov.b	#1,	r12	;r3 As==01
    82c0:	b0 12 dc 8a 	call	#-29988	;#0x8adc

000082c4 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    82c4:	1d 42 26 1c 	mov	&0x1c26,r13	;0x1c26
    82c8:	1c 42 28 1c 	mov	&0x1c28,r12	;0x1c28

000082cc <.Loc.281.1>:
    82cc:	4e 43       	clr.b	r14		;
    82ce:	0e 9c       	cmp	r12,	r14	;
    82d0:	a2 34       	jge	$+326    	;abs 0x8416

000082d2 <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    82d2:	0c 99       	cmp	r9,	r12	;
    82d4:	04 38       	jl	$+10     	;abs 0x82de

000082d6 <.L170>:
    82d6:	09 9c       	cmp	r12,	r9	;
    82d8:	e5 20       	jnz	$+460    	;abs 0x84a4
    82da:	0d 98       	cmp	r8,	r13	;
    82dc:	e3 2c       	jc	$+456    	;abs 0x84a4

000082de <.L152>:
    82de:	5a 42 24 1c 	mov.b	&0x1c24,r10	;0x1c24

000082e2 <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    82e2:	08 4d       	mov	r13,	r8	;
    82e4:	09 4c       	mov	r12,	r9	;

000082e6 <.L117>:
        if (xpr_timing[i].status == USED)
    82e6:	16 42 30 1c 	mov	&0x1c30,r6	;0x1c30
    82ea:	17 42 32 1c 	mov	&0x1c32,r7	;0x1c32

000082ee <.Loc.268.1>:
    82ee:	92 93 2c 1c 	cmp	#1,	&0x1c2c	;r3 As==01
    82f2:	1d 20       	jnz	$+60     	;abs 0x832e

000082f4 <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    82f4:	b0 12 78 8a 	call	#-30088	;#0x8a78

000082f8 <.Loc.278.1>:
    82f8:	0e 46       	mov	r6,	r14	;
    82fa:	0f 47       	mov	r7,	r15	;
    82fc:	0e 8c       	sub	r12,	r14	;
    82fe:	0f 7d       	subc	r13,	r15	;

00008300 <.Loc.278.1>:
    8300:	82 4e 30 1c 	mov	r14,	&0x1c30	;
    8304:	82 4f 32 1c 	mov	r15,	&0x1c32	;

00008308 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    8308:	6d 43       	mov.b	#2,	r13	;r3 As==10
    830a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    830c:	b0 12 dc 8a 	call	#-29988	;#0x8adc

00008310 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    8310:	1d 42 30 1c 	mov	&0x1c30,r13	;0x1c30
    8314:	1c 42 32 1c 	mov	&0x1c32,r12	;0x1c32

00008318 <.Loc.281.1>:
    8318:	4e 43       	clr.b	r14		;
    831a:	0e 9c       	cmp	r12,	r14	;
    831c:	4c 34       	jge	$+154    	;abs 0x83b6

0000831e <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    831e:	0c 99       	cmp	r9,	r12	;
    8320:	76 38       	jl	$+238    	;abs 0x840e

00008322 <.L168>:
    8322:	09 9c       	cmp	r12,	r9	;
    8324:	02 20       	jnz	$+6      	;abs 0x832a
    8326:	0d 98       	cmp	r8,	r13	;
    8328:	72 28       	jnc	$+230    	;abs 0x840e

0000832a <.L139>:
    832a:	08 9d       	cmp	r13,	r8	;
    832c:	d8 24       	jz	$+434    	;abs 0x84de

0000832e <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    832e:	4d 4a       	mov.b	r10,	r13	;
    8330:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8332:	b0 12 c4 8b 	call	#-29756	;#0x8bc4

00008336 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    8336:	0d 48       	mov	r8,	r13	;
    8338:	6c 43       	mov.b	#2,	r12	;r3 As==10
    833a:	b0 12 d2 8b 	call	#-29742	;#0x8bd2

0000833e <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    833e:	0c 48       	mov	r8,	r12	;
    8340:	b0 12 00 8a 	call	#-30208	;#0x8a00

00008344 <.Loc.313.1>:
}
    8344:	46 17       	popm	#5,	r10	;16-bit words

00008346 <.LCFI29>:
    8346:	30 41       	ret			

00008348 <.L159>:
            if (first)
    8348:	18 42 1c 1c 	mov	&0x1c1c,r8	;0x1c1c
    834c:	19 42 1e 1c 	mov	&0x1c1e,r9	;0x1c1e

00008350 <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    8350:	5a 42 1a 1c 	mov.b	&0x1c1a,r10	;0x1c1a

00008354 <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    8354:	b0 12 78 8a 	call	#-30088	;#0x8a78

00008358 <.LVL105>:
    8358:	0e 48       	mov	r8,	r14	;
    835a:	0f 49       	mov	r9,	r15	;
    835c:	0e 8c       	sub	r12,	r14	;
    835e:	0f 7d       	subc	r13,	r15	;

00008360 <.Loc.278.1>:
    8360:	82 4e 1c 1c 	mov	r14,	&0x1c1c	;
    8364:	82 4f 1e 1c 	mov	r15,	&0x1c1e	;

00008368 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    8368:	6d 43       	mov.b	#2,	r13	;r3 As==10
    836a:	4c 43       	clr.b	r12		;
    836c:	b0 12 dc 8a 	call	#-29988	;#0x8adc

00008370 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    8370:	1d 42 1c 1c 	mov	&0x1c1c,r13	;0x1c1c
    8374:	1c 42 1e 1c 	mov	&0x1c1e,r12	;0x1c1e

00008378 <.Loc.281.1>:
    8378:	4e 43       	clr.b	r14		;
    837a:	0e 9c       	cmp	r12,	r14	;
    837c:	74 34       	jge	$+234    	;abs 0x8466

0000837e <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    837e:	0c 99       	cmp	r9,	r12	;
    8380:	0c 34       	jge	$+26     	;abs 0x839a

00008382 <.L151>:
    8382:	5a 42 1a 1c 	mov.b	&0x1c1a,r10	;0x1c1a

00008386 <.L119>:
        if (xpr_timing[i].status == USED)
    8386:	92 93 22 1c 	cmp	#1,	&0x1c22	;r3 As==01
    838a:	ab 23       	jnz	$-168    	;abs 0x82e2

0000838c <.Loc.271.1>:
            if (first)
    838c:	16 42 26 1c 	mov	&0x1c26,r6	;0x1c26
    8390:	17 42 28 1c 	mov	&0x1c28,r7	;0x1c28

00008394 <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    8394:	08 4d       	mov	r13,	r8	;
    8396:	09 4c       	mov	r12,	r9	;
    8398:	87 3f       	jmp	$-240    	;abs 0x82a8

0000839a <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    839a:	09 9c       	cmp	r12,	r9	;
    839c:	02 20       	jnz	$+6      	;abs 0x83a2
    839e:	0d 98       	cmp	r8,	r13	;
    83a0:	f0 2b       	jnc	$-30     	;abs 0x8382

000083a2 <.L114>:
    83a2:	0d 98       	cmp	r8,	r13	;
    83a4:	93 24       	jz	$+296    	;abs 0x84cc

000083a6 <.L118>:
        if (xpr_timing[i].status == USED)
    83a6:	92 93 22 1c 	cmp	#1,	&0x1c22	;r3 As==01
    83aa:	9d 23       	jnz	$-196    	;abs 0x82e6

000083ac <.Loc.271.1>:
            if (first)
    83ac:	16 42 26 1c 	mov	&0x1c26,r6	;0x1c26
    83b0:	17 42 28 1c 	mov	&0x1c28,r7	;0x1c28
    83b4:	79 3f       	jmp	$-268    	;abs 0x82a8

000083b6 <.L162>:
            if (xpr_timing[i].data <= 0)
    83b6:	0c 93       	cmp	#0,	r12	;r3 As==00
    83b8:	02 20       	jnz	$+6      	;abs 0x83be
    83ba:	0d 93       	cmp	#0,	r13	;r3 As==00
    83bc:	b0 23       	jnz	$-158    	;abs 0x831e

000083be <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    83be:	5c 42 2e 1c 	mov.b	&0x1c2e,r12	;0x1c2e
    83c2:	b0 12 74 7c 	call	#31860		;#0x7c74
    83c6:	b0 12 1a 7c 	call	#31770		;#0x7c1a

000083ca <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    83ca:	5c 42 2e 1c 	mov.b	&0x1c2e,r12	;0x1c2e

000083ce <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    83ce:	d2 92 2e 1c 	cmp.b	&0x1c2e,&0x1c1a	;0x1c2e
    83d2:	1a 1c 
    83d4:	8e 24       	jz	$+286    	;abs 0x84f2

000083d6 <.Loc.237.1>:
    83d6:	c2 9c 24 1c 	cmp.b	r12,	&0x1c24	;
    83da:	91 24       	jz	$+292    	;abs 0x84fe

000083dc <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    83dc:	6c 43       	mov.b	#2,	r12	;r3 As==10

000083de <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    83de:	6e 43       	mov.b	#2,	r14	;r3 As==10

000083e0 <.L136>:
            xpr_timing[i].status = NOT_USED;
    83e0:	0d 4e       	mov	r14,	r13	;
    83e2:	5d 06       	rlam	#2,	r13	;
    83e4:	0d 5e       	add	r14,	r13	;
    83e6:	5d 02       	rlam	#1,	r13	;
    83e8:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

000083ec <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    83ec:	4e 43       	clr.b	r14		;
    83ee:	6d 43       	mov.b	#2,	r13	;r3 As==10
    83f0:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

000083f4 <.LBE18>:
            if (xpr_timing[i].data > 0)
    83f4:	1d 42 30 1c 	mov	&0x1c30,r13	;0x1c30
    83f8:	1c 42 32 1c 	mov	&0x1c32,r12	;0x1c32

000083fc <.Loc.292.1>:
    83fc:	4e 43       	clr.b	r14		;
    83fe:	0e 9c       	cmp	r12,	r14	;
    8400:	8e 3b       	jl	$-226    	;abs 0x831e
    8402:	0c 93       	cmp	#0,	r12	;r3 As==00
    8404:	94 23       	jnz	$-214    	;abs 0x832e
    8406:	0d 93       	cmp	#0,	r13	;r3 As==00
    8408:	92 27       	jz	$-218    	;abs 0x832e

0000840a <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    840a:	0c 99       	cmp	r9,	r12	;
    840c:	8a 37       	jge	$-234    	;abs 0x8322

0000840e <.L154>:
    840e:	5a 42 2e 1c 	mov.b	&0x1c2e,r10	;0x1c2e

00008412 <.LVL117>:
    if (!first)
    8412:	08 4d       	mov	r13,	r8	;
    8414:	8c 3f       	jmp	$-230    	;abs 0x832e

00008416 <.L161>:
            if (xpr_timing[i].data <= 0)
    8416:	0c 93       	cmp	#0,	r12	;r3 As==00
    8418:	02 20       	jnz	$+6      	;abs 0x841e
    841a:	0d 93       	cmp	#0,	r13	;r3 As==00
    841c:	5a 23       	jnz	$-330    	;abs 0x82d2

0000841e <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    841e:	5c 42 24 1c 	mov.b	&0x1c24,r12	;0x1c24
    8422:	b0 12 74 7c 	call	#31860		;#0x7c74
    8426:	b0 12 1a 7c 	call	#31770		;#0x7c1a

0000842a <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    842a:	d2 92 1a 1c 	cmp.b	&0x1c1a,&0x1c24	;0x1c1a
    842e:	24 1c 
    8430:	63 24       	jz	$+200    	;abs 0x84f8

00008432 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    8432:	5c 43       	mov.b	#1,	r12	;r3 As==01

00008434 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    8434:	5e 43       	mov.b	#1,	r14	;r3 As==01

00008436 <.L131>:
            xpr_timing[i].status = NOT_USED;
    8436:	0d 4e       	mov	r14,	r13	;
    8438:	5d 06       	rlam	#2,	r13	;
    843a:	0d 5e       	add	r14,	r13	;
    843c:	5d 02       	rlam	#1,	r13	;
    843e:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

00008442 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    8442:	4e 43       	clr.b	r14		;
    8444:	6d 43       	mov.b	#2,	r13	;r3 As==10
    8446:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

0000844a <.LVL122>:
            if (xpr_timing[i].data > 0)
    844a:	1d 42 26 1c 	mov	&0x1c26,r13	;0x1c26
    844e:	1c 42 28 1c 	mov	&0x1c28,r12	;0x1c28

00008452 <.Loc.292.1>:
    8452:	4e 43       	clr.b	r14		;
    8454:	0e 9c       	cmp	r12,	r14	;
    8456:	3d 3b       	jl	$-388    	;abs 0x82d2
    8458:	0c 93       	cmp	#0,	r12	;r3 As==00
    845a:	45 23       	jnz	$-372    	;abs 0x82e6
    845c:	0d 93       	cmp	#0,	r13	;r3 As==00
    845e:	43 27       	jz	$-376    	;abs 0x82e6

00008460 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    8460:	0c 99       	cmp	r9,	r12	;
    8462:	3d 3b       	jl	$-388    	;abs 0x82de
    8464:	38 3f       	jmp	$-398    	;abs 0x82d6

00008466 <.L164>:
            if (xpr_timing[i].data <= 0)
    8466:	0c 93       	cmp	#0,	r12	;r3 As==00
    8468:	02 20       	jnz	$+6      	;abs 0x846e
    846a:	0d 93       	cmp	#0,	r13	;r3 As==00
    846c:	88 23       	jnz	$-238    	;abs 0x837e

0000846e <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    846e:	5c 42 1a 1c 	mov.b	&0x1c1a,r12	;0x1c1a
    8472:	b0 12 74 7c 	call	#31860		;#0x7c74
    8476:	b0 12 1a 7c 	call	#31770		;#0x7c1a

0000847a <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    847a:	82 43 18 1c 	mov	#0,	&0x1c18	;r3 As==00

0000847e <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    847e:	4e 43       	clr.b	r14		;
    8480:	6d 43       	mov.b	#2,	r13	;r3 As==10
    8482:	4c 43       	clr.b	r12		;
    8484:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

00008488 <.LVL126>:
            if (xpr_timing[i].data > 0)
    8488:	1d 42 1c 1c 	mov	&0x1c1c,r13	;0x1c1c
    848c:	1c 42 1e 1c 	mov	&0x1c1e,r12	;0x1c1e

00008490 <.Loc.292.1>:
    8490:	4e 43       	clr.b	r14		;
    8492:	0e 9c       	cmp	r12,	r14	;
    8494:	74 3b       	jl	$-278    	;abs 0x837e
    8496:	0c 93       	cmp	#0,	r12	;r3 As==00
    8498:	86 23       	jnz	$-242    	;abs 0x83a6
    849a:	0d 93       	cmp	#0,	r13	;r3 As==00
    849c:	84 27       	jz	$-246    	;abs 0x83a6

0000849e <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    849e:	0c 99       	cmp	r9,	r12	;
    84a0:	70 3b       	jl	$-286    	;abs 0x8382
    84a2:	7b 3f       	jmp	$-264    	;abs 0x839a

000084a4 <.L128>:
    84a4:	08 9d       	cmp	r13,	r8	;
    84a6:	1f 23       	jnz	$-448    	;abs 0x82e6
    84a8:	09 9c       	cmp	r12,	r9	;
    84aa:	1d 23       	jnz	$-452    	;abs 0x82e6

000084ac <.Loc.294.1>:
    84ac:	5e 42 24 1c 	mov.b	&0x1c24,r14	;0x1c24

000084b0 <.Loc.294.1>:
    84b0:	5a 92 24 1c 	cmp.b	&0x1c24,r10	;0x1c24
    84b4:	18 2f       	jc	$-462    	;abs 0x82e6
    84b6:	0a 4e       	mov	r14,	r10	;

000084b8 <.LVL128>:
    84b8:	14 3f       	jmp	$-470    	;abs 0x82e2

000084ba <.L143>:
            if (first)
    84ba:	16 42 30 1c 	mov	&0x1c30,r6	;0x1c30
    84be:	17 42 32 1c 	mov	&0x1c32,r7	;0x1c32

000084c2 <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    84c2:	5a 42 2e 1c 	mov.b	&0x1c2e,r10	;0x1c2e

000084c6 <.LVL131>:
    84c6:	08 46       	mov	r6,	r8	;
    84c8:	09 47       	mov	r7,	r9	;
    84ca:	14 3f       	jmp	$-470    	;abs 0x82f4

000084cc <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    84cc:	0c 99       	cmp	r9,	r12	;
    84ce:	6b 23       	jnz	$-296    	;abs 0x83a6

000084d0 <.Loc.294.1>:
    84d0:	5e 42 1a 1c 	mov.b	&0x1c1a,r14	;0x1c1a

000084d4 <.Loc.294.1>:
    84d4:	5a 92 1a 1c 	cmp.b	&0x1c1a,r10	;0x1c1a
    84d8:	66 2f       	jc	$-306    	;abs 0x83a6
    84da:	0a 4e       	mov	r14,	r10	;

000084dc <.LVL133>:
    84dc:	54 3f       	jmp	$-342    	;abs 0x8386

000084de <.L163>:
    84de:	09 9c       	cmp	r12,	r9	;
    84e0:	26 23       	jnz	$-434    	;abs 0x832e

000084e2 <.Loc.294.1>:
    84e2:	5c 42 2e 1c 	mov.b	&0x1c2e,r12	;0x1c2e

000084e6 <.Loc.294.1>:
    84e6:	5a 92 2e 1c 	cmp.b	&0x1c2e,r10	;0x1c2e
    84ea:	21 2f       	jc	$-444    	;abs 0x832e
    84ec:	0a 4c       	mov	r12,	r10	;

000084ee <.LVL135>:
    if (!first)
    84ee:	08 4d       	mov	r13,	r8	;
    84f0:	1e 3f       	jmp	$-450    	;abs 0x832e

000084f2 <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    84f2:	4c 43       	clr.b	r12		;

000084f4 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    84f4:	4e 43       	clr.b	r14		;
    84f6:	74 3f       	jmp	$-278    	;abs 0x83e0

000084f8 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    84f8:	4c 43       	clr.b	r12		;

000084fa <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    84fa:	4e 43       	clr.b	r14		;
    84fc:	9c 3f       	jmp	$-198    	;abs 0x8436

000084fe <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    84fe:	5c 43       	mov.b	#1,	r12	;r3 As==01

00008500 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    8500:	5e 43       	mov.b	#1,	r14	;r3 As==01
    8502:	6e 3f       	jmp	$-290    	;abs 0x83e0

00008504 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    8504:	5a 15       	pushm	#6,	r10	;16-bit words

00008506 <.LCFI31>:
    8506:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000850a <.LCFI32>:
    850a:	47 4c       	mov.b	r12,	r7	;
    850c:	08 4d       	mov	r13,	r8	;
    850e:	06 4e       	mov	r14,	r6	;

00008510 <.LBB26>:
    8510:	45 43       	clr.b	r5		;
    8512:	39 40 18 1c 	mov	#7192,	r9	;#0x1c18

00008516 <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    8516:	0a 45       	mov	r5,	r10	;
    8518:	5a 06       	rlam	#2,	r10	;
    851a:	0a 55       	add	r5,	r10	;
    851c:	5a 02       	rlam	#1,	r10	;
    851e:	0a 59       	add	r9,	r10	;
    8520:	6e 43       	mov.b	#2,	r14	;r3 As==10
    8522:	4d 45       	mov.b	r5,	r13	;
    8524:	0c 41       	mov	r1,	r12	;
    8526:	b0 12 78 8d 	call	#-29320	;#0x8d78
    852a:	aa 41 00 00 	mov	@r1,	0(r10)	;
    852e:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    8532:	02 00 
    8534:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    8538:	04 00 
    853a:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    853e:	06 00 
    8540:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    8544:	08 00 

00008546 <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    8546:	15 53       	inc	r5		;

00008548 <.Loc.252.1>:
    8548:	35 90 03 00 	cmp	#3,	r5	;
    854c:	e4 23       	jnz	$-54     	;abs 0x8516

0000854e <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    854e:	82 93 18 1c 	cmp	#0,	&0x1c18	;r3 As==00
    8552:	1d 24       	jz	$+60     	;abs 0x858e

00008554 <.Loc.324.1>:
    8554:	82 93 22 1c 	cmp	#0,	&0x1c22	;r3 As==00
    8558:	4e 24       	jz	$+158    	;abs 0x85f6

0000855a <.Loc.324.1>:
    855a:	82 93 2c 1c 	cmp	#0,	&0x1c2c	;r3 As==00
    855e:	4e 24       	jz	$+158    	;abs 0x85fc

00008560 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    8560:	0e 48       	mov	r8,	r14	;
    8562:	0f 46       	mov	r6,	r15	;
    8564:	6d 43       	mov.b	#2,	r13	;r3 As==10
    8566:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8568:	b0 12 dc 8a 	call	#-29988	;#0x8adc

0000856c <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    856c:	4e 47       	mov.b	r7,	r14	;
    856e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    8570:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8572:	b0 12 30 8b 	call	#-29904	;#0x8b30

00008576 <.Loc.349.1>:
        refresh_xpr_timers();
    8576:	b0 12 7c 82 	call	#-32132	;#0x827c

0000857a <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    857a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    857c:	b0 12 e0 8b 	call	#-29728	;#0x8be0

00008580 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    8580:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8582:	b0 12 34 8d 	call	#-29388	;#0x8d34

00008586 <.Loc.354.1>:
}
    8586:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000858a <.LCFI33>:
    858a:	55 17       	popm	#6,	r10	;16-bit words

0000858c <.LCFI34>:
    858c:	30 41       	ret			

0000858e <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    858e:	1a 42 18 1c 	mov	&0x1c18,r10	;0x1c18

00008592 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    8592:	05 4a       	mov	r10,	r5	;

00008594 <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    8594:	b0 12 78 8a 	call	#-30088	;#0x8a78

00008598 <.Loc.328.1>:
    8598:	0e 45       	mov	r5,	r14	;
    859a:	5e 06       	rlam	#2,	r14	;
    859c:	0e 55       	add	r5,	r14	;
    859e:	5e 02       	rlam	#1,	r14	;
    85a0:	09 5e       	add	r14,	r9	;

000085a2 <.Loc.328.1>:
    85a2:	0c 58       	add	r8,	r12	;
    85a4:	89 4c 04 00 	mov	r12,	4(r9)	;
    85a8:	0d 66       	addc	r6,	r13	;
    85aa:	89 4d 06 00 	mov	r13,	6(r9)	;

000085ae <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    85ae:	b0 12 78 8a 	call	#-30088	;#0x8a78

000085b2 <.Loc.329.1>:
    85b2:	0e 4c       	mov	r12,	r14	;
    85b4:	0e 58       	add	r8,	r14	;
    85b6:	0f 4d       	mov	r13,	r15	;
    85b8:	0f 66       	addc	r6,	r15	;
    85ba:	6d 43       	mov.b	#2,	r13	;r3 As==10
    85bc:	4c 4a       	mov.b	r10,	r12	;
    85be:	b0 12 dc 8a 	call	#-29988	;#0x8adc

000085c2 <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    85c2:	c9 47 02 00 	mov.b	r7,	2(r9)	;

000085c6 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    85c6:	4e 47       	mov.b	r7,	r14	;
    85c8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    85ca:	4c 4a       	mov.b	r10,	r12	;
    85cc:	b0 12 30 8b 	call	#-29904	;#0x8b30

000085d0 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    85d0:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

000085d4 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    85d4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    85d6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    85d8:	4c 4a       	mov.b	r10,	r12	;
    85da:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

000085de <.Loc.334.1>:
        refresh_xpr_timers();
    85de:	b0 12 7c 82 	call	#-32132	;#0x827c

000085e2 <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    85e2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    85e4:	b0 12 e0 8b 	call	#-29728	;#0x8be0

000085e8 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    85e8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    85ea:	b0 12 34 8d 	call	#-29388	;#0x8d34

000085ee <.Loc.354.1>:
}
    85ee:	31 50 0a 00 	add	#10,	r1	;#0x000a

000085f2 <.LCFI36>:
    85f2:	55 17       	popm	#6,	r10	;16-bit words

000085f4 <.LCFI37>:
    85f4:	30 41       	ret			

000085f6 <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    85f6:	5a 43       	mov.b	#1,	r10	;r3 As==01

000085f8 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    85f8:	55 43       	mov.b	#1,	r5	;r3 As==01
    85fa:	cc 3f       	jmp	$-102    	;abs 0x8594

000085fc <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    85fc:	6a 43       	mov.b	#2,	r10	;r3 As==10

000085fe <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    85fe:	65 43       	mov.b	#2,	r5	;r3 As==10
    8600:	c9 3f       	jmp	$-108    	;abs 0x8594

00008602 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    8602:	3a 15       	pushm	#4,	r10	;16-bit words

00008604 <.LCFI39>:
    8604:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00008608 <.LCFI40>:
    8608:	47 4c       	mov.b	r12,	r7	;

0000860a <.LBB34>:
    860a:	49 43       	clr.b	r9		;
    860c:	38 40 18 1c 	mov	#7192,	r8	;#0x1c18

00008610 <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    8610:	0a 49       	mov	r9,	r10	;
    8612:	5a 06       	rlam	#2,	r10	;
    8614:	0a 59       	add	r9,	r10	;
    8616:	5a 02       	rlam	#1,	r10	;
    8618:	0a 58       	add	r8,	r10	;
    861a:	6e 43       	mov.b	#2,	r14	;r3 As==10
    861c:	4d 49       	mov.b	r9,	r13	;
    861e:	0c 41       	mov	r1,	r12	;
    8620:	b0 12 78 8d 	call	#-29320	;#0x8d78
    8624:	aa 41 00 00 	mov	@r1,	0(r10)	;
    8628:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    862c:	02 00 
    862e:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    8632:	04 00 
    8634:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    8638:	06 00 
    863a:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    863e:	08 00 

00008640 <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    8640:	19 53       	inc	r9		;

00008642 <.Loc.252.1>:
    8642:	39 90 03 00 	cmp	#3,	r9	;
    8646:	e4 23       	jnz	$-54     	;abs 0x8610

00008648 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    8648:	c2 97 1a 1c 	cmp.b	r7,	&0x1c1a	;
    864c:	12 24       	jz	$+38     	;abs 0x8672

0000864e <.Loc.237.1>:
    864e:	c2 97 24 1c 	cmp.b	r7,	&0x1c24	;
    8652:	27 24       	jz	$+80     	;abs 0x86a2

00008654 <.Loc.237.1>:
    8654:	c2 97 2e 1c 	cmp.b	r7,	&0x1c2e	;
    8658:	27 24       	jz	$+80     	;abs 0x86a8

0000865a <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    865a:	b0 12 7c 82 	call	#-32132	;#0x827c

0000865e <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    865e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8660:	b0 12 e0 8b 	call	#-29728	;#0x8be0

00008664 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    8664:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8666:	b0 12 34 8d 	call	#-29388	;#0x8d34

0000866a <.Loc.371.1>:

}
    866a:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000866e <.LCFI41>:
    866e:	37 17       	popm	#4,	r10	;16-bit words

00008670 <.LCFI42>:
    8670:	30 41       	ret			

00008672 <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    8672:	4c 43       	clr.b	r12		;

00008674 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    8674:	4e 43       	clr.b	r14		;

00008676 <.L181>:
            xpr_timing[i].status = NOT_USED;
    8676:	0d 4e       	mov	r14,	r13	;
    8678:	5d 06       	rlam	#2,	r13	;
    867a:	0d 5e       	add	r14,	r13	;
    867c:	5d 02       	rlam	#1,	r13	;
    867e:	8d 43 18 1c 	mov	#0,	7192(r13);r3 As==00, 0x1c18

00008682 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    8682:	4e 43       	clr.b	r14		;
    8684:	6d 43       	mov.b	#2,	r13	;r3 As==10
    8686:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

0000868a <.Loc.242.1>:
    refresh_xpr_timers();
    868a:	b0 12 7c 82 	call	#-32132	;#0x827c

0000868e <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    868e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8690:	b0 12 e0 8b 	call	#-29728	;#0x8be0

00008694 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    8694:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8696:	b0 12 34 8d 	call	#-29388	;#0x8d34

0000869a <.Loc.371.1>:
}
    869a:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000869e <.LCFI44>:
    869e:	37 17       	popm	#4,	r10	;16-bit words

000086a0 <.LCFI45>:
    86a0:	30 41       	ret			

000086a2 <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    86a2:	5c 43       	mov.b	#1,	r12	;r3 As==01

000086a4 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    86a4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    86a6:	e7 3f       	jmp	$-48     	;abs 0x8676

000086a8 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    86a8:	6c 43       	mov.b	#2,	r12	;r3 As==10

000086aa <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    86aa:	6e 43       	mov.b	#2,	r14	;r3 As==10
    86ac:	e4 3f       	jmp	$-54     	;abs 0x8676

000086ae <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    86ae:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000086b2 <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    86b2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    86b4:	4d 43       	clr.b	r13		;
    86b6:	0c 41       	mov	r1,	r12	;
    86b8:	b0 12 78 8d 	call	#-29320	;#0x8d78
    86bc:	a2 41 0e 1c 	mov	@r1,	&0x1c0e	;
    86c0:	92 41 02 00 	mov	2(r1),	&0x1c10	;
    86c4:	10 1c 
    86c6:	92 41 04 00 	mov	4(r1),	&0x1c12	;
    86ca:	12 1c 
    86cc:	92 41 06 00 	mov	6(r1),	&0x1c14	;
    86d0:	14 1c 
    86d2:	92 41 08 00 	mov	8(r1),	&0x1c16	;
    86d6:	16 1c 

000086d8 <.Loc.383.1>:
    }

}
    86d8:	31 50 0a 00 	add	#10,	r1	;#0x000a

000086dc <.LCFI48>:
    86dc:	30 41       	ret			

000086de <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    86de:	2a 15       	pushm	#3,	r10	;16-bit words

000086e0 <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    86e0:	92 93 0e 1c 	cmp	#1,	&0x1c0e	;r3 As==01
    86e4:	8a 20       	jnz	$+278    	;abs 0x87fa

000086e6 <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    86e6:	18 42 12 1c 	mov	&0x1c12,r8	;0x1c12
    86ea:	19 42 14 1c 	mov	&0x1c14,r9	;0x1c14

000086ee <.Loc.465.1>:
    86ee:	82 48 54 1c 	mov	r8,	&0x1c54	;

000086f2 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    86f2:	d2 42 10 1c 	mov.b	&0x1c10,&0x1c56	;0x1c10
    86f6:	56 1c 

000086f8 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    86f8:	b0 12 78 8a 	call	#-30088	;#0x8a78

000086fc <.Loc.471.1>:
    86fc:	0e 48       	mov	r8,	r14	;
    86fe:	0f 49       	mov	r9,	r15	;
    8700:	0e 8c       	sub	r12,	r14	;
    8702:	0f 7d       	subc	r13,	r15	;

00008704 <.Loc.471.1>:
    8704:	82 4e 12 1c 	mov	r14,	&0x1c12	;
    8708:	82 4f 14 1c 	mov	r15,	&0x1c14	;

0000870c <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    870c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    870e:	4c 43       	clr.b	r12		;
    8710:	b0 12 dc 8a 	call	#-29988	;#0x8adc

00008714 <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    8714:	1c 42 12 1c 	mov	&0x1c12,r12	;0x1c12
    8718:	1d 42 14 1c 	mov	&0x1c14,r13	;0x1c14

0000871c <.Loc.474.1>:
    871c:	0d 93       	cmp	#0,	r13	;r3 As==00
    871e:	21 38       	jl	$+68     	;abs 0x8762

00008720 <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    8720:	0f 4c       	mov	r12,	r15	;
    8722:	0f dd       	bis	r13,	r15	;
    8724:	0f 93       	cmp	#0,	r15	;r3 As==00
    8726:	6d 24       	jz	$+220    	;abs 0x8802

00008728 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    8728:	1f 42 54 1c 	mov	&0x1c54,r15	;0x1c54
    872c:	08 4f       	mov	r15,	r8	;
    872e:	09 43       	clr	r9		;

00008730 <.Loc.485.1>:
    8730:	0d 93       	cmp	#0,	r13	;r3 As==00
    8732:	54 38       	jl	$+170    	;abs 0x87dc
    8734:	0d 93       	cmp	#0,	r13	;r3 As==00
    8736:	02 20       	jnz	$+6      	;abs 0x873c
    8738:	0c 98       	cmp	r8,	r12	;
    873a:	50 28       	jnc	$+162    	;abs 0x87dc

0000873c <.L209>:
    873c:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56

00008740 <.Loc.485.1>:
    8740:	0c 98       	cmp	r8,	r12	;
    8742:	53 24       	jz	$+168    	;abs 0x87ea

00008744 <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    8744:	4d 4e       	mov.b	r14,	r13	;
    8746:	5c 43       	mov.b	#1,	r12	;r3 As==01
    8748:	b0 12 c4 8b 	call	#-29756	;#0x8bc4

0000874c <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    874c:	1d 42 54 1c 	mov	&0x1c54,r13	;0x1c54
    8750:	5c 43       	mov.b	#1,	r12	;r3 As==01
    8752:	b0 12 d2 8b 	call	#-29742	;#0x8bd2

00008756 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    8756:	1c 42 54 1c 	mov	&0x1c54,r12	;0x1c54
    875a:	b0 12 20 8a 	call	#-30176	;#0x8a20

0000875e <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    875e:	28 17       	popm	#3,	r10	;16-bit words

00008760 <.LCFI50>:
    8760:	30 41       	ret			

00008762 <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    8762:	59 42 5f 1c 	mov.b	&0x1c5f,r9	;0x1c5f
    8766:	0f 43       	clr	r15		;
    8768:	0f 89       	sub	r9,	r15	;
    876a:	08 4f       	mov	r15,	r8	;
    876c:	09 4f       	mov	r15,	r9	;
    876e:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

00008772 <.Loc.474.1>:
    8772:	09 9d       	cmp	r13,	r9	;
    8774:	04 38       	jl	$+10     	;abs 0x877e

00008776 <.Loc.474.1>:
    8776:	0d 99       	cmp	r9,	r13	;
    8778:	25 20       	jnz	$+76     	;abs 0x87c4
    877a:	0f 9c       	cmp	r12,	r15	;
    877c:	23 2c       	jc	$+72     	;abs 0x87c4

0000877e <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    877e:	1e 42 54 1c 	mov	&0x1c54,r14	;0x1c54
    8782:	0a 4e       	mov	r14,	r10	;
    8784:	0b 43       	clr	r11		;

00008786 <.Loc.476.1>:
    8786:	48 43       	clr.b	r8		;
    8788:	49 43       	clr.b	r9		;
    878a:	08 8c       	sub	r12,	r8	;
    878c:	09 7d       	subc	r13,	r9	;

0000878e <.Loc.476.1>:
    878e:	09 93       	cmp	#0,	r9	;r3 As==00
    8790:	04 38       	jl	$+10     	;abs 0x879a
    8792:	09 93       	cmp	#0,	r9	;r3 As==00
    8794:	0b 20       	jnz	$+24     	;abs 0x87ac
    8796:	08 9a       	cmp	r10,	r8	;
    8798:	09 2c       	jc	$+20     	;abs 0x87ac

0000879a <.L207>:
    879a:	5e 42 10 1c 	mov.b	&0x1c10,r14	;0x1c10

0000879e <.L196>:
                    min_pdc = -pdc_timing[i].data;
    879e:	4f 43       	clr.b	r15		;
    87a0:	0f 8c       	sub	r12,	r15	;
    87a2:	82 4f 54 1c 	mov	r15,	&0x1c54	;

000087a6 <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    87a6:	c2 4e 56 1c 	mov.b	r14,	&0x1c56	;

000087aa <.Loc.494.1>:
    if (!first)
    87aa:	cc 3f       	jmp	$-102    	;abs 0x8744

000087ac <.L194>:
    87ac:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56

000087b0 <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    87b0:	0a 98       	cmp	r8,	r10	;
    87b2:	c8 23       	jnz	$-110    	;abs 0x8744
    87b4:	09 93       	cmp	#0,	r9	;r3 As==00
    87b6:	c6 23       	jnz	$-114    	;abs 0x8744

000087b8 <.Loc.476.1>:
    87b8:	5f 42 10 1c 	mov.b	&0x1c10,r15	;0x1c10

000087bc <.Loc.476.1>:
    87bc:	4f 9e       	cmp.b	r14,	r15	;
    87be:	c2 2f       	jc	$-122    	;abs 0x8744
    87c0:	0e 4f       	mov	r15,	r14	;
    87c2:	ed 3f       	jmp	$-36     	;abs 0x879e

000087c4 <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    87c4:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56

000087c8 <.Loc.481.1>:
    87c8:	0d 99       	cmp	r9,	r13	;
    87ca:	05 38       	jl	$+12     	;abs 0x87d6
    87cc:	0a 49       	mov	r9,	r10	;
    87ce:	09 9d       	cmp	r13,	r9	;
    87d0:	b9 23       	jnz	$-140    	;abs 0x8744
    87d2:	0c 9f       	cmp	r15,	r12	;
    87d4:	b7 2f       	jc	$-144    	;abs 0x8744

000087d6 <.L208>:
    87d6:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

000087da <.Loc.494.1>:
    if (!first)
    87da:	b4 3f       	jmp	$-150    	;abs 0x8744

000087dc <.L201>:
    87dc:	5e 42 10 1c 	mov.b	&0x1c10,r14	;0x1c10

000087e0 <.L203>:
                    min_pdc = pdc_timing[i].data;
    87e0:	82 4c 54 1c 	mov	r12,	&0x1c54	;

000087e4 <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    87e4:	c2 4e 56 1c 	mov.b	r14,	&0x1c56	;

000087e8 <.Loc.494.1>:
    if (!first)
    87e8:	ad 3f       	jmp	$-164    	;abs 0x8744

000087ea <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    87ea:	0d 99       	cmp	r9,	r13	;
    87ec:	ab 23       	jnz	$-168    	;abs 0x8744

000087ee <.Loc.485.1>:
    87ee:	5f 42 10 1c 	mov.b	&0x1c10,r15	;0x1c10

000087f2 <.Loc.485.1>:
    87f2:	4f 9e       	cmp.b	r14,	r15	;
    87f4:	a7 2f       	jc	$-176    	;abs 0x8744
    87f6:	0e 4f       	mov	r15,	r14	;
    87f8:	f3 3f       	jmp	$-24     	;abs 0x87e0

000087fa <.L189>:
    else stop_timer();
    87fa:	b0 12 d6 89 	call	#-30250	;#0x89d6

000087fe <.Loc.507.1>:
}
    87fe:	28 17       	popm	#3,	r10	;16-bit words

00008800 <.LCFI52>:
    8800:	30 41       	ret			

00008802 <.L199>:
    if (!first)
    8802:	5e 42 56 1c 	mov.b	&0x1c56,r14	;0x1c56
    8806:	9e 3f       	jmp	$-194    	;abs 0x8744

00008808 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    8808:	1a 15       	pushm	#2,	r10	;16-bit words

0000880a <.LCFI54>:
    880a:	17 15       	pushm	#2,	r7	;16-bit words

0000880c <.LCFI55>:
    880c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00008810 <.LCFI56>:
    8810:	49 4c       	mov.b	r12,	r9	;
    8812:	0a 4d       	mov	r13,	r10	;

00008814 <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    8814:	5e 43       	mov.b	#1,	r14	;r3 As==01
    8816:	4d 43       	clr.b	r13		;

00008818 <.LVL210>:
    8818:	0c 41       	mov	r1,	r12	;

0000881a <.LVL211>:
    881a:	b0 12 78 8d 	call	#-29320	;#0x8d78
    881e:	a2 41 0e 1c 	mov	@r1,	&0x1c0e	;
    8822:	92 41 02 00 	mov	2(r1),	&0x1c10	;
    8826:	10 1c 
    8828:	92 41 04 00 	mov	4(r1),	&0x1c12	;
    882c:	12 1c 
    882e:	92 41 06 00 	mov	6(r1),	&0x1c14	;
    8832:	14 1c 
    8834:	92 41 08 00 	mov	8(r1),	&0x1c16	;
    8838:	16 1c 

0000883a <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    883a:	06 4a       	mov	r10,	r6	;
    883c:	07 43       	clr	r7		;

0000883e <.Loc.401.1>:
    883e:	82 93 0e 1c 	cmp	#0,	&0x1c0e	;r3 As==00
    8842:	31 20       	jnz	$+100    	;abs 0x88a6

00008844 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    8844:	4c 49       	mov.b	r9,	r12	;
    8846:	b0 12 74 7c 	call	#31860		;#0x7c74
    884a:	0d 4a       	mov	r10,	r13	;
    884c:	b0 12 40 7c 	call	#31808		;#0x7c40

00008850 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    8850:	4c 49       	mov.b	r9,	r12	;
    8852:	b0 12 74 7c 	call	#31860		;#0x7c74
    8856:	5d 43       	mov.b	#1,	r13	;r3 As==01
    8858:	b0 12 46 7c 	call	#31814		;#0x7c46

0000885c <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    885c:	0e 46       	mov	r6,	r14	;
    885e:	0f 47       	mov	r7,	r15	;
    8860:	5d 43       	mov.b	#1,	r13	;r3 As==01
    8862:	4c 43       	clr.b	r12		;
    8864:	b0 12 dc 8a 	call	#-29988	;#0x8adc

00008868 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    8868:	82 46 12 1c 	mov	r6,	&0x1c12	;
    886c:	82 47 14 1c 	mov	r7,	&0x1c14	;

00008870 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    8870:	4e 49       	mov.b	r9,	r14	;
    8872:	5d 43       	mov.b	#1,	r13	;r3 As==01
    8874:	4c 43       	clr.b	r12		;
    8876:	b0 12 30 8b 	call	#-29904	;#0x8b30

0000887a <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    887a:	c2 49 10 1c 	mov.b	r9,	&0x1c10	;

0000887e <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    887e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    8880:	5d 43       	mov.b	#1,	r13	;r3 As==01
    8882:	4c 43       	clr.b	r12		;
    8884:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

00008888 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    8888:	92 43 0e 1c 	mov	#1,	&0x1c0e	;r3 As==01

0000888c <.Loc.411.1>:
        refresh_pdc_timers();
    888c:	b0 12 de 86 	call	#-31010	;#0x86de

00008890 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    8890:	5c 43       	mov.b	#1,	r12	;r3 As==01
    8892:	b0 12 e0 8b 	call	#-29728	;#0x8be0

00008896 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    8896:	5c 43       	mov.b	#1,	r12	;r3 As==01
    8898:	b0 12 34 8d 	call	#-29388	;#0x8d34

0000889c <.Loc.435.1>:
}
    889c:	31 50 0a 00 	add	#10,	r1	;#0x000a

000088a0 <.LCFI57>:
    88a0:	16 17       	popm	#2,	r7	;16-bit words

000088a2 <.LCFI58>:
    88a2:	19 17       	popm	#2,	r10	;16-bit words

000088a4 <.LCFI59>:
    88a4:	30 41       	ret			

000088a6 <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    88a6:	82 46 12 1c 	mov	r6,	&0x1c12	;
    88aa:	82 47 14 1c 	mov	r7,	&0x1c14	;

000088ae <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    88ae:	0e 46       	mov	r6,	r14	;
    88b0:	0f 47       	mov	r7,	r15	;
    88b2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    88b4:	4c 43       	clr.b	r12		;
    88b6:	b0 12 dc 8a 	call	#-29988	;#0x8adc

000088ba <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    88ba:	c2 49 10 1c 	mov.b	r9,	&0x1c10	;

000088be <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    88be:	4e 49       	mov.b	r9,	r14	;
    88c0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    88c2:	4c 43       	clr.b	r12		;
    88c4:	b0 12 30 8b 	call	#-29904	;#0x8b30

000088c8 <.Loc.430.1>:
        refresh_pdc_timers();
    88c8:	b0 12 de 86 	call	#-31010	;#0x86de

000088cc <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    88cc:	5c 43       	mov.b	#1,	r12	;r3 As==01
    88ce:	b0 12 e0 8b 	call	#-29728	;#0x8be0

000088d2 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    88d2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    88d4:	b0 12 34 8d 	call	#-29388	;#0x8d34

000088d8 <.Loc.435.1>:
}
    88d8:	31 50 0a 00 	add	#10,	r1	;#0x000a

000088dc <.LCFI61>:
    88dc:	16 17       	popm	#2,	r7	;16-bit words

000088de <.LCFI62>:
    88de:	19 17       	popm	#2,	r10	;16-bit words

000088e0 <.LCFI63>:
    88e0:	30 41       	ret			

000088e2 <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    88e2:	0a 15       	pushm	#1,	r10	;16-bit words

000088e4 <.LCFI64>:
    88e4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000088e8 <.LCFI65>:
    88e8:	4a 4c       	mov.b	r12,	r10	;

000088ea <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    88ea:	5e 43       	mov.b	#1,	r14	;r3 As==01
    88ec:	4d 43       	clr.b	r13		;
    88ee:	0c 41       	mov	r1,	r12	;

000088f0 <.LVL233>:
    88f0:	b0 12 78 8d 	call	#-29320	;#0x8d78
    88f4:	a2 41 0e 1c 	mov	@r1,	&0x1c0e	;
    88f8:	92 41 02 00 	mov	2(r1),	&0x1c10	;
    88fc:	10 1c 
    88fe:	92 41 04 00 	mov	4(r1),	&0x1c12	;
    8902:	12 1c 
    8904:	92 41 06 00 	mov	6(r1),	&0x1c14	;
    8908:	14 1c 
    890a:	92 41 08 00 	mov	8(r1),	&0x1c16	;
    890e:	16 1c 

00008910 <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    8910:	c2 9a 10 1c 	cmp.b	r10,	&0x1c10	;
    8914:	07 20       	jnz	$+16     	;abs 0x8924

00008916 <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    8916:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

0000891a <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    891a:	4e 43       	clr.b	r14		;
    891c:	5d 43       	mov.b	#1,	r13	;r3 As==01
    891e:	4c 43       	clr.b	r12		;
    8920:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

00008924 <.L216>:
    refresh_pdc_timers();
    8924:	b0 12 de 86 	call	#-31010	;#0x86de

00008928 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    8928:	6c 43       	mov.b	#2,	r12	;r3 As==10
    892a:	b0 12 e0 8b 	call	#-29728	;#0x8be0

0000892e <.Loc.448.1>:
    _pers_timer_commit(XPR);
    892e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    8930:	b0 12 34 8d 	call	#-29388	;#0x8d34

00008934 <.Loc.450.1>:
}
    8934:	31 50 0a 00 	add	#10,	r1	;#0x000a

00008938 <.LCFI66>:
    8938:	0a 17       	popm	#1,	r10	;16-bit words

0000893a <.LCFI67>:
    893a:	30 41       	ret			

0000893c <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    893c:	5c 92 10 1c 	cmp.b	&0x1c10,r12	;0x1c10
    8940:	07 20       	jnz	$+16     	;abs 0x8950

00008942 <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    8942:	82 43 0e 1c 	mov	#0,	&0x1c0e	;r3 As==00

00008946 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    8946:	4e 43       	clr.b	r14		;
    8948:	5d 43       	mov.b	#1,	r13	;r3 As==01
    894a:	4c 43       	clr.b	r12		;

0000894c <.LVL242>:
    894c:	b0 12 7c 8b 	call	#-29828	;#0x8b7c

00008950 <.L217>:

        }
    }
}
    8950:	30 41       	ret			

00008952 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    8952:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00008956 <.Loc.83.1>:
    8956:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

0000895a <.Loc.83.1>:
    895a:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000895e <.Loc.83.1>:
    895e:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00008962 <.Loc.83.1>:
    8962:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00008966 <.Loc.83.1>:
    8966:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

0000896a <.Loc.83.1>:
    896a:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000896e <.Loc.83.1>:
    896e:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00008972 <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    8972:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00008976 <.Loc.88.1>:
}
    8976:	30 41       	ret			

00008978 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    8978:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000897c <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    897c:	0e 4c       	mov	r12,	r14	;
    897e:	5e 09       	rram	#3,	r14	;

00008980 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    8980:	7e f0 07 00 	and.b	#7,	r14	;

00008984 <.Loc.99.1>:
    8984:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    8988:	08 00 

0000898a <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    898a:	0d 5e       	add	r14,	r13	;

0000898c <.LVL12>:
    898c:	7c f0 07 00 	and.b	#7,	r12	;

00008990 <.LVL13>:
    8990:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    8994:	00 00 

00008996 <.Loc.101.1>:
}
    8996:	30 41       	ret			

00008998 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    8998:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000899c <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    899c:	0e 4c       	mov	r12,	r14	;
    899e:	5e 09       	rram	#3,	r14	;

000089a0 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    89a0:	7e f0 07 00 	and.b	#7,	r14	;
    89a4:	0f 4d       	mov	r13,	r15	;
    89a6:	0f 5e       	add	r14,	r15	;

000089a8 <.Loc.112.1>:
    89a8:	7c f0 07 00 	and.b	#7,	r12	;

000089ac <.LVL16>:
    89ac:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    89b0:	00 00 

000089b2 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    89b2:	6c 4f       	mov.b	@r15,	r12	;

000089b4 <.Loc.114.1>:
    89b4:	0c 93       	cmp	#0,	r12	;r3 As==00
    89b6:	03 20       	jnz	$+8      	;abs 0x89be

000089b8 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    89b8:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    89bc:	08 00 

000089be <.L4>:
    }
}
    89be:	30 41       	ret			

000089c0 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    89c0:	5d 4c 08 00 	mov.b	8(r12),	r13	;

000089c4 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    89c4:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

000089c8 <.LVL19>:
    89c8:	0c 5d       	add	r13,	r12	;

000089ca <.LVL20>:
    89ca:	6e 4c       	mov.b	@r12,	r14	;

000089cc <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    89cc:	0c 4d       	mov	r13,	r12	;
    89ce:	5c 0a       	rlam	#3,	r12	;

000089d0 <.Loc.128.1>:
}
    89d0:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    89d4:	30 41       	ret			

000089d6 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    89d6:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

000089da <.Loc.158.1>:
    TA2CTL = 0;
    89da:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000089de <.Loc.159.1>:
}
    89de:	30 41       	ret			

000089e0 <timerA2_init>:
    89e0:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    89e4:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    89e8:	30 41       	ret			

000089ea <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    89ea:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

000089ee <.Loc.172.1>:
    TA0CCR0 = ticks;
    89ee:	82 4c 52 03 	mov	r12,	&0x0352	;

000089f2 <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    89f2:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    89f6:	42 03 

000089f8 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    89f8:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    89fc:	40 03 

000089fe <.Loc.175.1>:
}
    89fe:	30 41       	ret			

00008a00 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    8a00:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00008a04 <.Loc.179.1>:
    TA2CCR0 = ticks;
    8a04:	82 4c 12 04 	mov	r12,	&0x0412	;

00008a08 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    8a08:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    8a0c:	02 04 

00008a0e <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    8a0e:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    8a12:	00 04 

00008a14 <.Loc.183.1>:

}
    8a14:	30 41       	ret			

00008a16 <stop_timer_xpr>:
    8a16:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    8a1a:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    8a1e:	30 41       	ret			

00008a20 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    8a20:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00008a24 <.Loc.195.1>:
    TA1CCR0 = ticks;
    8a24:	82 4c 92 03 	mov	r12,	&0x0392	;

00008a28 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    8a28:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    8a2c:	82 03 

00008a2e <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    8a2e:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    8a32:	80 03 

00008a34 <.Loc.198.1>:
}
    8a34:	30 41       	ret			

00008a36 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    8a36:	30 41       	ret			

00008a38 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    8a38:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    8a3c:	61 01 

00008a3e <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    8a3e:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    8a42:	64 01 

00008a44 <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    8a44:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00008a48 <.Loc.248.1>:
  CSCTL0_H = 0;
    8a48:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00008a4c <.Loc.250.1>:

}
    8a4c:	30 41       	ret			

00008a4e <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    8a4e:	4c 43       	clr.b	r12		;
    8a50:	4d 43       	clr.b	r13		;
    8a52:	30 41       	ret			

00008a54 <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    8a54:	82 43 70 51 	mov	#0,	&0x5170	;r3 As==00
    8a58:	82 43 72 51 	mov	#0,	&0x5172	;r3 As==00

00008a5c <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    8a5c:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00008a60 <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    8a60:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    8a64:	40 04 

00008a66 <.Loc.334.1>:

    __bis_SR_register(GIE);
    8a66:	03 43       	nop			
    8a68:	32 d2       	eint			
    8a6a:	03 43       	nop			

00008a6c <.Loc.335.1>:
}
    8a6c:	30 41       	ret			

00008a6e <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    8a6e:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00008a72 <.Loc.343.1>:
    TA3CCTL0 = 0;
    8a72:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00008a76 <.Loc.344.1>:
}
    8a76:	30 41       	ret			

00008a78 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    8a78:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    8a7c:	40 04 

00008a7e <.Loc.356.1>:

   tmp = TA3R;
    8a7e:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00008a82 <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    8a82:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    8a86:	40 04 

00008a88 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    8a88:	0d 43       	clr	r13		;

00008a8a <.LVL6>:
    8a8a:	0e 4c       	mov	r12,	r14	;
    8a8c:	0f 4d       	mov	r13,	r15	;
    8a8e:	0e 5e       	rla	r14		;
    8a90:	0f 6f       	rlc	r15		;
    8a92:	0e 5e       	rla	r14		;
    8a94:	0f 6f       	rlc	r15		;
    8a96:	0c 5e       	add	r14,	r12	;

00008a98 <.LVL7>:
    8a98:	0d 6f       	addc	r15,	r13	;
    8a9a:	0c 5c       	rla	r12		;
    8a9c:	0d 6d       	rlc	r13		;

00008a9e <.Loc.363.1>:
}
    8a9e:	1c 52 70 51 	add	&0x5170,r12	;0x5170
    8aa2:	1d 62 72 51 	addc	&0x5172,r13	;0x5172
    8aa6:	30 41       	ret			

00008aa8 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    8aa8:	b2 50 aa 00 	add	#170,	&0x5170	;#0x00aa
    8aac:	70 51 
    8aae:	b2 60 0a 00 	addc	#10,	&0x5172	;#0x000a
    8ab2:	72 51 

00008ab4 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    8ab4:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00008ab8 <.Loc.381.1>:
}
    8ab8:	00 13       	reti			

00008aba <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    8aba:	3c 40 74 51 	mov	#20852,	r12	;#0x5174
    8abe:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00008ac2 <.Loc.34.1>:
    8ac2:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00008ac6 <.Loc.34.1>:
    8ac6:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00008aca <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    8aca:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00008ace <.Loc.38.1>:
    8ace:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00008ad2 <.Loc.38.1>:
    8ad2:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00008ad6 <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    8ad6:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00008ada <.Loc.42.1>:
    }
}
    8ada:	30 41       	ret			

00008adc <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    8adc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00008ae0 <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    8ae0:	1d 93       	cmp	#1,	r13	;r3 As==01
    8ae2:	1b 24       	jz	$+56     	;abs 0x8b1a
    8ae4:	2d 93       	cmp	#2,	r13	;r3 As==10
    8ae6:	0e 24       	jz	$+30     	;abs 0x8b04
    8ae8:	0d 93       	cmp	#0,	r13	;r3 As==00
    8aea:	01 24       	jz	$+4      	;abs 0x8aee

00008aec <.Loc.69.1>:
        default:
            break;
    }


}
    8aec:	30 41       	ret			

00008aee <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    8aee:	0d 4c       	mov	r12,	r13	;

00008af0 <.LVL9>:
    8af0:	5d 06       	rlam	#2,	r13	;
    8af2:	0c 5d       	add	r13,	r12	;

00008af4 <.LVL10>:
    8af4:	5c 02       	rlam	#1,	r12	;
    8af6:	8c 4e dc 51 	mov	r14,	20956(r12); 0x51dc
    8afa:	8c 4f de 51 	mov	r15,	20958(r12); 0x51de

00008afe <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    8afe:	9c 43 e0 51 	mov	#1,	20960(r12);r3 As==01, 0x51e0

00008b02 <.Loc.55.1>:
}
    8b02:	30 41       	ret			

00008b04 <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    8b04:	0d 4c       	mov	r12,	r13	;

00008b06 <.LVL12>:
    8b06:	5d 06       	rlam	#2,	r13	;
    8b08:	0c 5d       	add	r13,	r12	;
    8b0a:	5c 02       	rlam	#1,	r12	;
    8b0c:	8c 4e fa 51 	mov	r14,	20986(r12); 0x51fa
    8b10:	8c 4f fc 51 	mov	r15,	20988(r12); 0x51fc

00008b14 <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    8b14:	9c 43 fe 51 	mov	#1,	20990(r12);r3 As==01, 0x51fe

00008b18 <.Loc.59.1>:
}
    8b18:	30 41       	ret			

00008b1a <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    8b1a:	0d 4c       	mov	r12,	r13	;

00008b1c <.LVL14>:
    8b1c:	5d 06       	rlam	#2,	r13	;
    8b1e:	0c 5d       	add	r13,	r12	;
    8b20:	5c 02       	rlam	#1,	r12	;
    8b22:	8c 4e 18 52 	mov	r14,	21016(r12); 0x5218
    8b26:	8c 4f 1a 52 	mov	r15,	21018(r12); 0x521a

00008b2a <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    8b2a:	9c 43 1c 52 	mov	#1,	21020(r12);r3 As==01, 0x521c

00008b2e <.Loc.63.1>:
}
    8b2e:	30 41       	ret			

00008b30 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    8b30:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    8b34:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00008b38 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    8b38:	1d 93       	cmp	#1,	r13	;r3 As==01
    8b3a:	17 24       	jz	$+48     	;abs 0x8b6a
    8b3c:	2d 93       	cmp	#2,	r13	;r3 As==10
    8b3e:	0c 24       	jz	$+26     	;abs 0x8b58
    8b40:	0d 93       	cmp	#0,	r13	;r3 As==00
    8b42:	01 24       	jz	$+4      	;abs 0x8b46

00008b44 <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    8b44:	30 41       	ret			

00008b46 <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    8b46:	0d 4c       	mov	r12,	r13	;

00008b48 <.LVL16>:
    8b48:	5d 06       	rlam	#2,	r13	;
    8b4a:	0c 5d       	add	r13,	r12	;

00008b4c <.LVL17>:
    8b4c:	5c 02       	rlam	#1,	r12	;
    8b4e:	cc 4e da 51 	mov.b	r14,	20954(r12); 0x51da

00008b52 <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    8b52:	9c 43 e0 51 	mov	#1,	20960(r12);r3 As==01, 0x51e0

00008b56 <.Loc.78.1>:
}
    8b56:	30 41       	ret			

00008b58 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    8b58:	0d 4c       	mov	r12,	r13	;

00008b5a <.LVL19>:
    8b5a:	5d 06       	rlam	#2,	r13	;
    8b5c:	0c 5d       	add	r13,	r12	;
    8b5e:	5c 02       	rlam	#1,	r12	;
    8b60:	cc 4e f8 51 	mov.b	r14,	20984(r12); 0x51f8

00008b64 <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    8b64:	9c 43 fe 51 	mov	#1,	20990(r12);r3 As==01, 0x51fe

00008b68 <.Loc.82.1>:
}
    8b68:	30 41       	ret			

00008b6a <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    8b6a:	0d 4c       	mov	r12,	r13	;

00008b6c <.LVL21>:
    8b6c:	5d 06       	rlam	#2,	r13	;
    8b6e:	0c 5d       	add	r13,	r12	;
    8b70:	5c 02       	rlam	#1,	r12	;
    8b72:	cc 4e 16 52 	mov.b	r14,	21014(r12); 0x5216

00008b76 <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    8b76:	9c 43 1c 52 	mov	#1,	21020(r12);r3 As==01, 0x521c

00008b7a <.Loc.86.1>:
}
    8b7a:	30 41       	ret			

00008b7c <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    8b7c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00008b80 <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    8b80:	1d 93       	cmp	#1,	r13	;r3 As==01
    8b82:	17 24       	jz	$+48     	;abs 0x8bb2
    8b84:	2d 93       	cmp	#2,	r13	;r3 As==10
    8b86:	0c 24       	jz	$+26     	;abs 0x8ba0
    8b88:	0d 93       	cmp	#0,	r13	;r3 As==00
    8b8a:	01 24       	jz	$+4      	;abs 0x8b8e

00008b8c <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    8b8c:	30 41       	ret			

00008b8e <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    8b8e:	0d 4c       	mov	r12,	r13	;

00008b90 <.LVL23>:
    8b90:	5d 06       	rlam	#2,	r13	;
    8b92:	0c 5d       	add	r13,	r12	;

00008b94 <.LVL24>:
    8b94:	5c 02       	rlam	#1,	r12	;
    8b96:	8c 4e d8 51 	mov	r14,	20952(r12); 0x51d8

00008b9a <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    8b9a:	9c 43 e0 51 	mov	#1,	20960(r12);r3 As==01, 0x51e0

00008b9e <.Loc.100.1>:
}
    8b9e:	30 41       	ret			

00008ba0 <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    8ba0:	0d 4c       	mov	r12,	r13	;

00008ba2 <.LVL26>:
    8ba2:	5d 06       	rlam	#2,	r13	;
    8ba4:	0c 5d       	add	r13,	r12	;
    8ba6:	5c 02       	rlam	#1,	r12	;
    8ba8:	8c 4e f6 51 	mov	r14,	20982(r12); 0x51f6

00008bac <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    8bac:	9c 43 fe 51 	mov	#1,	20990(r12);r3 As==01, 0x51fe

00008bb0 <.Loc.104.1>:
}
    8bb0:	30 41       	ret			

00008bb2 <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    8bb2:	0d 4c       	mov	r12,	r13	;

00008bb4 <.LVL28>:
    8bb4:	5d 06       	rlam	#2,	r13	;
    8bb6:	0c 5d       	add	r13,	r12	;
    8bb8:	5c 02       	rlam	#1,	r12	;
    8bba:	8c 4e 14 52 	mov	r14,	21012(r12); 0x5214

00008bbe <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    8bbe:	9c 43 1c 52 	mov	#1,	21020(r12);r3 As==01, 0x521c

00008bc2 <.Loc.108.1>:
}
    8bc2:	30 41       	ret			

00008bc4 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    8bc4:	0e 4c       	mov	r12,	r14	;
    8bc6:	5e 0a       	rlam	#3,	r14	;
    8bc8:	ce 4d 20 52 	mov.b	r13,	21024(r14); 0x5220

00008bcc <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    8bcc:	9e 43 24 52 	mov	#1,	21028(r14);r3 As==01, 0x5224

00008bd0 <.Loc.119.1>:
}
    8bd0:	30 41       	ret			

00008bd2 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    8bd2:	0e 4c       	mov	r12,	r14	;
    8bd4:	5e 0a       	rlam	#3,	r14	;
    8bd6:	8e 4d 22 52 	mov	r13,	21026(r14); 0x5222

00008bda <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    8bda:	9e 43 24 52 	mov	#1,	21028(r14);r3 As==01, 0x5224

00008bde <.Loc.125.1>:
}
    8bde:	30 41       	ret			

00008be0 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    8be0:	1c 93       	cmp	#1,	r12	;r3 As==01
    8be2:	0b 24       	jz	$+24     	;abs 0x8bfa
    8be4:	2c 93       	cmp	#2,	r12	;r3 As==10
    8be6:	06 24       	jz	$+14     	;abs 0x8bf4
    8be8:	0c 93       	cmp	#0,	r12	;r3 As==00
    8bea:	01 24       	jz	$+4      	;abs 0x8bee

00008bec <.Loc.145.1>:
        default:
            break;

    }

}
    8bec:	30 41       	ret			

00008bee <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    8bee:	92 43 3c 52 	mov	#1,	&0x523c	;r3 As==01

00008bf2 <.Loc.133.1>:
}
    8bf2:	30 41       	ret			

00008bf4 <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    8bf4:	92 43 3e 52 	mov	#1,	&0x523e	;r3 As==01

00008bf8 <.Loc.136.1>:
}
    8bf8:	30 41       	ret			

00008bfa <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    8bfa:	92 43 40 52 	mov	#1,	&0x5240	;r3 As==01

00008bfe <.Loc.139.1>:
}
    8bfe:	30 41       	ret			

00008c00 <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    8c00:	3d 40 74 51 	mov	#20852,	r13	;#0x5174
    8c04:	1c 93       	cmp	#1,	r12	;r3 As==01
    8c06:	18 24       	jz	$+50     	;abs 0x8c38
    8c08:	2c 93       	cmp	#2,	r12	;r3 As==10
    8c0a:	40 24       	jz	$+130    	;abs 0x8c8c
    8c0c:	0c 93       	cmp	#0,	r12	;r3 As==00
    8c0e:	26 24       	jz	$+78     	;abs 0x8c5c

00008c10 <.L28>:
    8c10:	0e 4c       	mov	r12,	r14	;
    8c12:	5e 0a       	rlam	#3,	r14	;
    8c14:	9e 93 24 52 	cmp	#1,	21028(r14);r3 As==01, 0x5224
    8c18:	01 24       	jz	$+4      	;abs 0x8c1c

00008c1a <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    8c1a:	30 41       	ret			

00008c1c <.L40>:
            pers_timer_vars[0].next_info[interface] =
    8c1c:	0c 4e       	mov	r14,	r12	;

00008c1e <.LVL33>:
    8c1e:	0c 5d       	add	r13,	r12	;
    8c20:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    8c24:	46 00 
    8c26:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    8c2a:	48 00 
    8c2c:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    8c30:	4a 00 

00008c32 <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    8c32:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00008c36 <.Loc.191.1>:
}
    8c36:	30 41       	ret			

00008c38 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    8c38:	92 93 1c 52 	cmp	#1,	&0x521c	;r3 As==01
    8c3c:	e9 23       	jnz	$-44     	;abs 0x8c10

00008c3e <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    8c3e:	92 42 14 52 	mov	&0x5214,&0x51b0	;0x5214
    8c42:	b0 51 
    8c44:	92 42 16 52 	mov	&0x5216,&0x51b2	;0x5216
    8c48:	b2 51 
    8c4a:	92 42 18 52 	mov	&0x5218,&0x51b4	;0x5218
    8c4e:	b4 51 
    8c50:	92 42 1a 52 	mov	&0x521a,&0x51b6	;0x521a
    8c54:	b6 51 

00008c56 <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    8c56:	82 43 b8 51 	mov	#0,	&0x51b8	;r3 As==00

00008c5a <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    8c5a:	da 3f       	jmp	$-74     	;abs 0x8c10

00008c5c <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    8c5c:	92 93 e0 51 	cmp	#1,	&0x51e0	;r3 As==01
    8c60:	5a 24       	jz	$+182    	;abs 0x8d16

00008c62 <.L29>:
    8c62:	92 93 ea 51 	cmp	#1,	&0x51ea	;r3 As==01
    8c66:	48 24       	jz	$+146    	;abs 0x8cf8

00008c68 <.L30>:
    8c68:	92 93 f4 51 	cmp	#1,	&0x51f4	;r3 As==01
    8c6c:	d1 23       	jnz	$-92     	;abs 0x8c10

00008c6e <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    8c6e:	92 42 ec 51 	mov	&0x51ec,&0x5188	;0x51ec
    8c72:	88 51 
    8c74:	92 42 ee 51 	mov	&0x51ee,&0x518a	;0x51ee
    8c78:	8a 51 
    8c7a:	92 42 f0 51 	mov	&0x51f0,&0x518c	;0x51f0
    8c7e:	8c 51 
    8c80:	92 42 f2 51 	mov	&0x51f2,&0x518e	;0x51f2
    8c84:	8e 51 

00008c86 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    8c86:	82 43 90 51 	mov	#0,	&0x5190	;r3 As==00

00008c8a <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    8c8a:	c2 3f       	jmp	$-122    	;abs 0x8c10

00008c8c <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    8c8c:	92 93 fe 51 	cmp	#1,	&0x51fe	;r3 As==01
    8c90:	24 24       	jz	$+74     	;abs 0x8cda

00008c92 <.L32>:
    8c92:	92 93 08 52 	cmp	#1,	&0x5208	;r3 As==01
    8c96:	12 24       	jz	$+38     	;abs 0x8cbc

00008c98 <.L33>:
    8c98:	92 93 12 52 	cmp	#1,	&0x5212	;r3 As==01
    8c9c:	b9 23       	jnz	$-140    	;abs 0x8c10

00008c9e <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    8c9e:	92 42 0a 52 	mov	&0x520a,&0x51a6	;0x520a
    8ca2:	a6 51 
    8ca4:	92 42 0c 52 	mov	&0x520c,&0x51a8	;0x520c
    8ca8:	a8 51 
    8caa:	92 42 0e 52 	mov	&0x520e,&0x51aa	;0x520e
    8cae:	aa 51 
    8cb0:	92 42 10 52 	mov	&0x5210,&0x51ac	;0x5210
    8cb4:	ac 51 

00008cb6 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    8cb6:	82 43 ae 51 	mov	#0,	&0x51ae	;r3 As==00

00008cba <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    8cba:	aa 3f       	jmp	$-170    	;abs 0x8c10

00008cbc <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    8cbc:	92 42 00 52 	mov	&0x5200,&0x519c	;0x5200
    8cc0:	9c 51 
    8cc2:	92 42 02 52 	mov	&0x5202,&0x519e	;0x5202
    8cc6:	9e 51 
    8cc8:	92 42 04 52 	mov	&0x5204,&0x51a0	;0x5204
    8ccc:	a0 51 
    8cce:	92 42 06 52 	mov	&0x5206,&0x51a2	;0x5206
    8cd2:	a2 51 

00008cd4 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    8cd4:	82 43 a4 51 	mov	#0,	&0x51a4	;r3 As==00
    8cd8:	df 3f       	jmp	$-64     	;abs 0x8c98

00008cda <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    8cda:	92 42 f6 51 	mov	&0x51f6,&0x5192	;0x51f6
    8cde:	92 51 
    8ce0:	92 42 f8 51 	mov	&0x51f8,&0x5194	;0x51f8
    8ce4:	94 51 
    8ce6:	92 42 fa 51 	mov	&0x51fa,&0x5196	;0x51fa
    8cea:	96 51 
    8cec:	92 42 fc 51 	mov	&0x51fc,&0x5198	;0x51fc
    8cf0:	98 51 

00008cf2 <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    8cf2:	82 43 9a 51 	mov	#0,	&0x519a	;r3 As==00
    8cf6:	cd 3f       	jmp	$-100    	;abs 0x8c92

00008cf8 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    8cf8:	92 42 e2 51 	mov	&0x51e2,&0x517e	;0x51e2
    8cfc:	7e 51 
    8cfe:	92 42 e4 51 	mov	&0x51e4,&0x5180	;0x51e4
    8d02:	80 51 
    8d04:	92 42 e6 51 	mov	&0x51e6,&0x5182	;0x51e6
    8d08:	82 51 
    8d0a:	92 42 e8 51 	mov	&0x51e8,&0x5184	;0x51e8
    8d0e:	84 51 

00008d10 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    8d10:	82 43 86 51 	mov	#0,	&0x5186	;r3 As==00
    8d14:	a9 3f       	jmp	$-172    	;abs 0x8c68

00008d16 <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    8d16:	92 42 d8 51 	mov	&0x51d8,&0x5174	;0x51d8
    8d1a:	74 51 
    8d1c:	92 42 da 51 	mov	&0x51da,&0x5176	;0x51da
    8d20:	76 51 
    8d22:	92 42 dc 51 	mov	&0x51dc,&0x5178	;0x51dc
    8d26:	78 51 
    8d28:	92 42 de 51 	mov	&0x51de,&0x517a	;0x51de
    8d2c:	7a 51 

00008d2e <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    8d2e:	82 43 7c 51 	mov	#0,	&0x517c	;r3 As==00
    8d32:	97 3f       	jmp	$-208    	;abs 0x8c62

00008d34 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    8d34:	1c 93       	cmp	#1,	r12	;r3 As==01
    8d36:	17 24       	jz	$+48     	;abs 0x8d66
    8d38:	2c 93       	cmp	#2,	r12	;r3 As==10
    8d3a:	0c 24       	jz	$+26     	;abs 0x8d54
    8d3c:	0c 93       	cmp	#0,	r12	;r3 As==00
    8d3e:	01 24       	jz	$+4      	;abs 0x8d42

00008d40 <.L45>:
            break;
        default:
            break;

    }
}
    8d40:	30 41       	ret			

00008d42 <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    8d42:	1d 42 3c 52 	mov	&0x523c,r13	;0x523c

00008d46 <.Loc.207.1>:
    8d46:	1d 93       	cmp	#1,	r13	;r3 As==01
    8d48:	fb 23       	jnz	$-8      	;abs 0x8d40

00008d4a <.Loc.209.1>:
                _commit_timer_buffers(interface);
    8d4a:	b0 12 00 8c 	call	#-29696	;#0x8c00

00008d4e <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    8d4e:	a2 43 3c 52 	mov	#2,	&0x523c	;r3 As==10

00008d52 <.Loc.230.1>:
}
    8d52:	30 41       	ret			

00008d54 <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    8d54:	1d 42 3e 52 	mov	&0x523e,r13	;0x523e

00008d58 <.Loc.214.1>:
    8d58:	1d 93       	cmp	#1,	r13	;r3 As==01
    8d5a:	f2 23       	jnz	$-26     	;abs 0x8d40

00008d5c <.Loc.216.1>:
                _commit_timer_buffers(interface);
    8d5c:	b0 12 00 8c 	call	#-29696	;#0x8c00

00008d60 <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    8d60:	a2 43 3e 52 	mov	#2,	&0x523e	;r3 As==10

00008d64 <.Loc.230.1>:
}
    8d64:	30 41       	ret			

00008d66 <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    8d66:	1d 42 40 52 	mov	&0x5240,r13	;0x5240

00008d6a <.Loc.220.1>:
    8d6a:	1d 93       	cmp	#1,	r13	;r3 As==01
    8d6c:	e9 23       	jnz	$-44     	;abs 0x8d40

00008d6e <.Loc.222.1>:
                _commit_timer_buffers(interface);
    8d6e:	b0 12 00 8c 	call	#-29696	;#0x8c00

00008d72 <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    8d72:	a2 43 40 52 	mov	#2,	&0x5240	;r3 As==10

00008d76 <.Loc.230.1>:
}
    8d76:	30 41       	ret			

00008d78 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    8d78:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00008d7c <.Loc.233.1>:
    switch (interface)
    8d7c:	1e 93       	cmp	#1,	r14	;r3 As==01
    8d7e:	17 24       	jz	$+48     	;abs 0x8dae
    8d80:	2e 93       	cmp	#2,	r14	;r3 As==10
    8d82:	2a 24       	jz	$+86     	;abs 0x8dd8

00008d84 <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    8d84:	0e 4d       	mov	r13,	r14	;

00008d86 <.LVL55>:
    8d86:	5e 06       	rlam	#2,	r14	;
    8d88:	0d 5e       	add	r14,	r13	;

00008d8a <.LVL56>:
    8d8a:	5d 02       	rlam	#1,	r13	;
    8d8c:	3d 50 74 51 	add	#20852,	r13	;#0x5174
    8d90:	0e 4d       	mov	r13,	r14	;
    8d92:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    8d96:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    8d9a:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    8d9e:	04 00 
    8da0:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    8da4:	06 00 
    8da6:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    8daa:	08 00 

00008dac <.Loc.245.1>:
    }

}
    8dac:	30 41       	ret			

00008dae <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    8dae:	0e 4d       	mov	r13,	r14	;

00008db0 <.LVL58>:
    8db0:	5e 06       	rlam	#2,	r14	;
    8db2:	0d 5e       	add	r14,	r13	;
    8db4:	5d 02       	rlam	#1,	r13	;
    8db6:	3d 50 b0 51 	add	#20912,	r13	;#0x51b0

00008dba <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    8dba:	0e 4d       	mov	r13,	r14	;
    8dbc:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    8dc0:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    8dc4:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    8dc8:	04 00 
    8dca:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    8dce:	06 00 
    8dd0:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    8dd4:	08 00 

00008dd6 <.Loc.245.1>:
}
    8dd6:	30 41       	ret			

00008dd8 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    8dd8:	0e 4d       	mov	r13,	r14	;

00008dda <.LVL60>:
    8dda:	5e 06       	rlam	#2,	r14	;
    8ddc:	0d 5e       	add	r14,	r13	;
    8dde:	5d 02       	rlam	#1,	r13	;
    8de0:	3d 50 92 51 	add	#20882,	r13	;#0x5192

00008de4 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    8de4:	0e 4d       	mov	r13,	r14	;
    8de6:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    8dea:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    8dee:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    8df2:	04 00 
    8df4:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    8df8:	06 00 
    8dfa:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    8dfe:	08 00 

00008e00 <.Loc.245.1>:
}
    8e00:	30 41       	ret			

00008e02 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    8e02:	4e 4c       	mov.b	r12,	r14	;

00008e04 <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    8e04:	1d 93       	cmp	#1,	r13	;r3 As==01
    8e06:	14 24       	jz	$+42     	;abs 0x8e30
    8e08:	2d 93       	cmp	#2,	r13	;r3 As==10
    8e0a:	0b 24       	jz	$+24     	;abs 0x8e22
    8e0c:	4c 43       	clr.b	r12		;

00008e0e <.LVL62>:
    8e0e:	0d 93       	cmp	#0,	r13	;r3 As==00
    8e10:	01 24       	jz	$+4      	;abs 0x8e14

00008e12 <.Loc.262.1>:
        default:
            return 0;

    }

}
    8e12:	30 41       	ret			

00008e14 <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    8e14:	0c 4e       	mov	r14,	r12	;
    8e16:	5c 06       	rlam	#2,	r12	;
    8e18:	0c 5e       	add	r14,	r12	;
    8e1a:	5c 02       	rlam	#1,	r12	;
    8e1c:	1c 4c 78 51 	mov	20856(r12),r12	;0x05178

00008e20 <.Loc.262.1>:
}
    8e20:	30 41       	ret			

00008e22 <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    8e22:	0c 4e       	mov	r14,	r12	;

00008e24 <.LVL64>:
    8e24:	5c 06       	rlam	#2,	r12	;
    8e26:	0c 5e       	add	r14,	r12	;
    8e28:	5c 02       	rlam	#1,	r12	;
    8e2a:	1c 4c 96 51 	mov	20886(r12),r12	;0x05196

00008e2e <.Loc.262.1>:
}
    8e2e:	30 41       	ret			

00008e30 <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    8e30:	0c 4e       	mov	r14,	r12	;

00008e32 <.LVL66>:
    8e32:	5c 06       	rlam	#2,	r12	;
    8e34:	0c 5e       	add	r14,	r12	;
    8e36:	5c 02       	rlam	#1,	r12	;
    8e38:	1c 4c b4 51 	mov	20916(r12),r12	;0x051b4

00008e3c <.Loc.262.1>:
}
    8e3c:	30 41       	ret			

00008e3e <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    8e3e:	4e 4c       	mov.b	r12,	r14	;

00008e40 <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    8e40:	1d 93       	cmp	#1,	r13	;r3 As==01
    8e42:	14 24       	jz	$+42     	;abs 0x8e6c
    8e44:	2d 93       	cmp	#2,	r13	;r3 As==10
    8e46:	0b 24       	jz	$+24     	;abs 0x8e5e
    8e48:	4c 43       	clr.b	r12		;

00008e4a <.LVL68>:
    8e4a:	0d 93       	cmp	#0,	r13	;r3 As==00
    8e4c:	01 24       	jz	$+4      	;abs 0x8e50

00008e4e <.Loc.279.1>:
        default:
            return    0;
    }


}
    8e4e:	30 41       	ret			

00008e50 <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    8e50:	0c 4e       	mov	r14,	r12	;
    8e52:	5c 06       	rlam	#2,	r12	;
    8e54:	0c 5e       	add	r14,	r12	;
    8e56:	5c 02       	rlam	#1,	r12	;
    8e58:	5c 4c 76 51 	mov.b	20854(r12),r12	;0x05176

00008e5c <.Loc.279.1>:
}
    8e5c:	30 41       	ret			

00008e5e <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    8e5e:	0c 4e       	mov	r14,	r12	;

00008e60 <.LVL70>:
    8e60:	5c 06       	rlam	#2,	r12	;
    8e62:	0c 5e       	add	r14,	r12	;
    8e64:	5c 02       	rlam	#1,	r12	;
    8e66:	5c 4c 94 51 	mov.b	20884(r12),r12	;0x05194

00008e6a <.Loc.279.1>:
}
    8e6a:	30 41       	ret			

00008e6c <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    8e6c:	0c 4e       	mov	r14,	r12	;

00008e6e <.LVL72>:
    8e6e:	5c 06       	rlam	#2,	r12	;
    8e70:	0c 5e       	add	r14,	r12	;
    8e72:	5c 02       	rlam	#1,	r12	;
    8e74:	5c 4c b2 51 	mov.b	20914(r12),r12	;0x051b2

00008e78 <.Loc.279.1>:
}
    8e78:	30 41       	ret			

00008e7a <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    8e7a:	4e 4c       	mov.b	r12,	r14	;

00008e7c <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    8e7c:	1d 93       	cmp	#1,	r13	;r3 As==01
    8e7e:	14 24       	jz	$+42     	;abs 0x8ea8
    8e80:	2d 93       	cmp	#2,	r13	;r3 As==10
    8e82:	0b 24       	jz	$+24     	;abs 0x8e9a
    8e84:	5c 43       	mov.b	#1,	r12	;r3 As==01

00008e86 <.LVL74>:
    8e86:	0d 93       	cmp	#0,	r13	;r3 As==00
    8e88:	01 24       	jz	$+4      	;abs 0x8e8c

00008e8a <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    8e8a:	30 41       	ret			

00008e8c <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    8e8c:	0c 4e       	mov	r14,	r12	;
    8e8e:	5c 06       	rlam	#2,	r12	;
    8e90:	0c 5e       	add	r14,	r12	;
    8e92:	5c 02       	rlam	#1,	r12	;
    8e94:	1c 4c 74 51 	mov	20852(r12),r12	;0x05174

00008e98 <.Loc.294.1>:
}
    8e98:	30 41       	ret			

00008e9a <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    8e9a:	0c 4e       	mov	r14,	r12	;

00008e9c <.LVL76>:
    8e9c:	5c 06       	rlam	#2,	r12	;
    8e9e:	0c 5e       	add	r14,	r12	;
    8ea0:	5c 02       	rlam	#1,	r12	;
    8ea2:	1c 4c 92 51 	mov	20882(r12),r12	;0x05192

00008ea6 <.Loc.294.1>:
}
    8ea6:	30 41       	ret			

00008ea8 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    8ea8:	0c 4e       	mov	r14,	r12	;

00008eaa <.LVL78>:
    8eaa:	5c 06       	rlam	#2,	r12	;
    8eac:	0c 5e       	add	r14,	r12	;
    8eae:	5c 02       	rlam	#1,	r12	;
    8eb0:	1c 4c b0 51 	mov	20912(r12),r12	;0x051b0

00008eb4 <.Loc.294.1>:
}
    8eb4:	30 41       	ret			

00008eb6 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    8eb6:	5c 0a       	rlam	#3,	r12	;

00008eb8 <.LVL80>:
}
    8eb8:	5c 4c bc 51 	mov.b	20924(r12),r12	;0x051bc
    8ebc:	30 41       	ret			

00008ebe <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    8ebe:	5c 0a       	rlam	#3,	r12	;

00008ec0 <.LVL82>:
}
    8ec0:	1c 4c be 51 	mov	20926(r12),r12	;0x051be
    8ec4:	30 41       	ret			

00008ec6 <.L1^B1>:
    8ec6:	3d 53       	add	#-1,	r13	;r3 As==11
    8ec8:	0c 5c       	rla	r12		;

00008eca <__mspabi_slli>:
    8eca:	0d 93       	cmp	#0,	r13	;r3 As==00
    8ecc:	fc 23       	jnz	$-6      	;abs 0x8ec6
    8ece:	30 41       	ret			

00008ed0 <.L1^B1>:
    8ed0:	3d 53       	add	#-1,	r13	;r3 As==11
    8ed2:	12 c3       	clrc			

00008ed4 <L0^A>:
    8ed4:	0c 10       	rrc	r12		;

00008ed6 <__mspabi_srli>:
    8ed6:	0d 93       	cmp	#0,	r13	;r3 As==00
    8ed8:	fb 23       	jnz	$-8      	;abs 0x8ed0
    8eda:	30 41       	ret			

00008edc <__mulhi2>:
    8edc:	02 12       	push	r2		;
    8ede:	32 c2       	dint			
    8ee0:	03 43       	nop			
    8ee2:	82 4c c0 04 	mov	r12,	&0x04c0	;
    8ee6:	82 4d c8 04 	mov	r13,	&0x04c8	;
    8eea:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    8eee:	00 13       	reti			

00008ef0 <_exit>:
    8ef0:	ff 3f       	jmp	$+0      	;abs 0x8ef0

00008ef2 <memset>:
    8ef2:	0e 5c       	add	r12,	r14	;

00008ef4 <L0^A>:
    8ef4:	0f 4c       	mov	r12,	r15	;

00008ef6 <.L2>:
    8ef6:	0f 9e       	cmp	r14,	r15	;
    8ef8:	01 20       	jnz	$+4      	;abs 0x8efc

00008efa <.Loc.104.1>:
    8efa:	30 41       	ret			

00008efc <.L3>:
    8efc:	1f 53       	inc	r15		;

00008efe <.LVL4>:
    8efe:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    8f02:	f9 3f       	jmp	$-12     	;abs 0x8ef6
