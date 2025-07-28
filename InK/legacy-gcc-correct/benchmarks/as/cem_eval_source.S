
bin/cem_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	6e 7d       	subc.b	@r13,	r14	;

Disassembly of section .text:

00006d46 <__crt0_start>:
    6d46:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00006d4a <__crt0_init_bss>:
    6d4a:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00006d4e <.Loc.76.1>:
    6d4e:	0d 43       	clr	r13		;

00006d50 <.Loc.77.1>:
    6d50:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00006d54 <.Loc.81.1>:
    6d54:	b0 12 18 81 	call	#-32488	;#0x8118

00006d58 <__crt0_call_main>:
    6d58:	0c 43       	clr	r12		;

00006d5a <.Loc.254.1>:
    6d5a:	b0 12 3e 79 	call	#31038		;#0x793e

00006d5e <__crt0_call_exit>:
    6d5e:	b0 12 16 81 	call	#-32490	;#0x8116

00006d62 <__app_init>:
extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init()
{
    thread1_init();
    6d62:	b0 12 c8 6f 	call	#28616		;#0x6fc8

00006d66 <.Loc.32.1>:
}
    6d66:	30 41       	ret			

00006d68 <task_init>:
}

ENTRY_TASK(task_init)
{
#ifdef RAISE_PIN
    full_run_started = 1;
    6d68:	d2 43 54 60 	mov.b	#1,	&0x6054	;r3 As==01

00006d6c <.Loc.116.1>:
    // __port_on(3,4);
    // __port_off(3,4);
    __SET(pinCont, 1);
    6d6c:	dc 43 00 00 	mov.b	#1,	0(r12)	;r3 As==01

00006d70 <.Loc.118.1>:
#endif
    __SET(_v_parent_next, 0);
    6d70:	8c 43 16 00 	mov	#0,	22(r12)	;r3 As==00, 0x0016

00006d74 <.Loc.119.1>:
    __SET(_v_out_len, 0);
    6d74:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

00006d78 <.Loc.120.1>:
    __SET(_v_letter, 0);
    6d78:	8c 43 04 00 	mov	#0,	4(r12)	;r3 As==00

00006d7c <.Loc.121.1>:
    __SET(_v_prev_sample, 0);
    6d7c:	8c 43 06 00 	mov	#0,	6(r12)	;r3 As==00

00006d80 <.Loc.122.1>:
    __SET(_v_letter_idx, 0);
    6d80:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

00006d84 <.Loc.123.1>:
    __SET(_v_sample_count, 1);
    6d84:	9c 43 0e 00 	mov	#1,	14(r12)	;r3 As==01, 0x000e

00006d88 <.Loc.124.1>:
    return task_init_dict;
}
    6d88:	3c 40 8e 6d 	mov	#28046,	r12	;#0x6d8e

00006d8c <.LVL1>:
    6d8c:	30 41       	ret			

00006d8e <task_init_dict>:

TASK(task_init_dict)
{
    6d8e:	0e 4c       	mov	r12,	r14	;

00006d90 <.Loc.129.1>:
    uint16_t i = __GET(_v_letter);
    6d90:	1f 4c 04 00 	mov	4(r12),	r15	;

00006d94 <.Loc.131.1>:

    __SET(_v_dict[i].letter, i);
    6d94:	0d 4f       	mov	r15,	r13	;
    6d96:	5d 02       	rlam	#1,	r13	;
    6d98:	0d 5f       	add	r15,	r13	;
    6d9a:	5d 02       	rlam	#1,	r13	;
    6d9c:	0d 5c       	add	r12,	r13	;
    6d9e:	8d 4f a6 01 	mov	r15,	422(r13); 0x01a6

00006da2 <.Loc.132.1>:
    __SET(_v_dict[i].sibling, NIL);
    6da2:	8d 43 a8 01 	mov	#0,	424(r13);r3 As==00, 0x01a8

00006da6 <.Loc.133.1>:
    __SET(_v_dict[i].child, NIL);
    6da6:	8d 43 aa 01 	mov	#0,	426(r13);r3 As==00, 0x01aa

00006daa <.Loc.134.1>:
    __SET(_v_letter, ++__GET(_v_letter));
    6daa:	0c 4f       	mov	r15,	r12	;

00006dac <.LVL4>:
    6dac:	1c 53       	inc	r12		;
    6dae:	8e 4c 04 00 	mov	r12,	4(r14)	;

00006db2 <.Loc.136.1>:

    if (i < NUM_LETTERS)
    {
        return task_init_dict;
    6db2:	3c 40 8e 6d 	mov	#28046,	r12	;#0x6d8e

00006db6 <.Loc.136.1>:
    if (i < NUM_LETTERS)
    6db6:	7d 40 ff 00 	mov.b	#255,	r13	;#0x00ff
    6dba:	0d 9f       	cmp	r15,	r13	;
    6dbc:	05 2c       	jc	$+12     	;abs 0x6dc8

00006dbe <.Loc.143.1>:
        // printf("task_init_dict->task_init_dict\n");
    }
    else
    {
        __SET(_v_node_count, NUM_LETTERS);
    6dbe:	be 40 00 01 	mov	#256,	10(r14)	;#0x0100, 0x000a
    6dc2:	0a 00 

00006dc4 <.Loc.144.1>:
        return task_sample;
    6dc4:	3c 40 ca 6d 	mov	#28106,	r12	;#0x6dca

00006dc8 <.L2>:
        // printf("task_init_dict->task_sample\n");
    }
}
    6dc8:	30 41       	ret			

00006dca <task_sample>:

TASK(task_sample)
{
    unsigned letter_idx      = __GET(_v_letter_idx);
    6dca:	1d 4c 02 00 	mov	2(r12),	r13	;

00006dce <.Loc.152.1>:
    unsigned next_letter_idx = letter_idx + 1;
    6dce:	0e 4d       	mov	r13,	r14	;
    6dd0:	1e 53       	inc	r14		;

00006dd2 <.Loc.154.1>:

    if (next_letter_idx == NUM_LETTERS_IN_SAMPLE)
    6dd2:	1d 93       	cmp	#1,	r13	;r3 As==01
    6dd4:	07 24       	jz	$+16     	;abs 0x6de4

00006dd6 <.Loc.159.1>:
    {
        next_letter_idx = 0;
    }

    if (letter_idx == 0)
    6dd6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6dd8:	06 20       	jnz	$+14     	;abs 0x6de6

00006dda <.Loc.161.1>:
    {
        __SET(_v_letter_idx, next_letter_idx);
    6dda:	9c 43 02 00 	mov	#1,	2(r12)	;r3 As==01

00006dde <.Loc.162.1>:
        return task_measure_temp;
    6dde:	3c 40 f0 6d 	mov	#28144,	r12	;#0x6df0

00006de2 <.L5>:
    {
        __SET(_v_letter_idx, next_letter_idx);
        return task_letterize;
        // printf("task_sample->task_letterize\n");
    }
}
    6de2:	30 41       	ret			

00006de4 <.L8>:
        next_letter_idx = 0;
    6de4:	4e 43       	clr.b	r14		;

00006de6 <.L6>:
        __SET(_v_letter_idx, next_letter_idx);
    6de6:	8c 4e 02 00 	mov	r14,	2(r12)	;

00006dea <.Loc.168.1>:
        return task_letterize;
    6dea:	3c 40 08 6e 	mov	#28168,	r12	;#0x6e08

00006dee <.LVL11>:
    6dee:	f9 3f       	jmp	$-12     	;abs 0x6de2

00006df0 <task_measure_temp>:
    letter_t sample = (prev_sample + 1) & 0x03;
    6df0:	1d 4c 06 00 	mov	6(r12),	r13	;
    6df4:	1d 53       	inc	r13		;

00006df6 <.Loc.106.1>:
    6df6:	7d f0 03 00 	and.b	#3,	r13	;

00006dfa <.LBE7>:
    sample_t prev_sample;
    prev_sample = __GET(_v_prev_sample);

    sample_t sample = acquire_sample(prev_sample);
    prev_sample     = sample;
    __SET(_v_prev_sample, prev_sample);
    6dfa:	8c 4d 06 00 	mov	r13,	6(r12)	;

00006dfe <.Loc.181.1>:
    __SET(_v_sample, sample);
    6dfe:	8c 4d 0c 00 	mov	r13,	12(r12)	; 0x000c

00006e02 <.Loc.182.1>:
    return task_letterize;
    // printf("task_measure_temp->task_letterize\n");
}
    6e02:	3c 40 08 6e 	mov	#28168,	r12	;#0x6e08

00006e06 <.LVL15>:
    6e06:	30 41       	ret			

00006e08 <task_letterize>:

TASK(task_letterize)
{
    6e08:	1a 15       	pushm	#2,	r10	;16-bit words

00006e0a <.LCFI0>:
    6e0a:	0a 4c       	mov	r12,	r10	;

00006e0c <.Loc.188.1>:
    unsigned letter_idx = __GET(_v_letter_idx);
    6e0c:	1c 4c 02 00 	mov	2(r12),	r12	;

00006e10 <.LVL17>:

    if (letter_idx == 0)
    {
        letter_idx = NUM_LETTERS_IN_SAMPLE;
    6e10:	69 43       	mov.b	#2,	r9	;r3 As==10

00006e12 <.Loc.190.1>:
    if (letter_idx == 0)
    6e12:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e14:	02 24       	jz	$+6      	;abs 0x6e1a

00006e16 <.Loc.196.1>:
    }
    else
    {
        letter_idx--;
    6e16:	09 4c       	mov	r12,	r9	;
    6e18:	39 53       	add	#-1,	r9	;r3 As==11

00006e1a <.L11>:
    }

    unsigned letter_shift = LETTER_SIZE_BITS * letter_idx;
    6e1a:	59 0a       	rlam	#3,	r9	;

00006e1c <.LVL19>:
    letter_t letter       = (__GET(_v_sample) & (LETTER_MASK << letter_shift)) >> letter_shift;
    6e1c:	7c 40 ff 00 	mov.b	#255,	r12	;#0x00ff
    6e20:	0d 49       	mov	r9,	r13	;
    6e22:	b0 12 c6 80 	call	#-32570	;#0x80c6

00006e26 <.Loc.200.1>:
    6e26:	1c fa 0c 00 	and	12(r10),r12	;0x0000c
    6e2a:	0d 49       	mov	r9,	r13	;
    6e2c:	b0 12 d2 80 	call	#-32558	;#0x80d2
    6e30:	8a 4c 04 00 	mov	r12,	4(r10)	;

00006e34 <.Loc.203.1>:

    __SET(_v_letter, letter);
    return task_compress;
    // printf("task_letterize->task_compress\n");
}
    6e34:	3c 40 3c 6e 	mov	#28220,	r12	;#0x6e3c
    6e38:	19 17       	popm	#2,	r10	;16-bit words

00006e3a <.LCFI1>:
    6e3a:	30 41       	ret			

00006e3c <task_compress>:

TASK(task_compress)
{
    // pointer into the dictionary tree; starts at a root's child
    index_t parent = __GET(_v_parent_next);
    6e3c:	1f 4c 16 00 	mov	22(r12),r15	;0x00016

00006e40 <.Loc.212.1>:

    uint16_t __cry;

    __cry = __GET(_v_dict[parent].child);
    6e40:	0d 4f       	mov	r15,	r13	;
    6e42:	5d 02       	rlam	#1,	r13	;
    6e44:	0d 5f       	add	r15,	r13	;
    6e46:	5d 02       	rlam	#1,	r13	;
    6e48:	0d 5c       	add	r12,	r13	;
    6e4a:	1e 4d aa 01 	mov	426(r13),r14	;0x001aa

00006e4e <.LVL24>:
    __SET(_v_sibling, __cry);
    6e4e:	8c 4e 10 00 	mov	r14,	16(r12)	; 0x0010

00006e52 <.LVL25>:

    __cry = __GET(_v_dict[parent].letter);
    __SET(_v_parent_node.letter, __cry);
    6e52:	9c 4d a6 01 	mov	422(r13),24(r12)	;0x001a6, 0x0018
    6e56:	18 00 

00006e58 <.LVL26>:

    __cry = __GET(_v_dict[parent].sibling);
    __SET(_v_parent_node.sibling, __cry);
    6e58:	9c 4d a8 01 	mov	424(r13),26(r12)	;0x001a8, 0x001a
    6e5c:	1a 00 

00006e5e <.LVL27>:

    __cry = __GET(_v_dict[parent].child);
    __SET(_v_parent_node.child, __cry);
    6e5e:	8c 4e 1c 00 	mov	r14,	28(r12)	; 0x001c

00006e62 <.Loc.226.1>:

    __SET(_v_parent, parent);
    6e62:	8c 4f 14 00 	mov	r15,	20(r12)	; 0x0014

00006e66 <.Loc.227.1>:
    __cry = __GET(_v_dict[parent].child);
    __SET(_v_child, __cry);
    6e66:	8c 4e 12 00 	mov	r14,	18(r12)	; 0x0012

00006e6a <.Loc.230.1>:

    __SET(_v_sample_count, ++__GET(_v_sample_count));
    6e6a:	9c 53 0e 00 	inc	14(r12)		;

00006e6e <.Loc.232.1>:

    return task_find_sibling;
    // printf("task_compress->task_find_sibling\n");
}
    6e6e:	3c 40 5a 6f 	mov	#28506,	r12	;#0x6f5a

00006e72 <.LVL28>:
    6e72:	30 41       	ret			

00006e74 <task_add_node>:

TASK(task_add_node)
{
    int i = __GET(_v_sibling);

    if (__GET(_v_dict[i].sibling) != NIL)
    6e74:	1d 4c 10 00 	mov	16(r12),r13	;0x00010
    6e78:	5d 02       	rlam	#1,	r13	;
    6e7a:	1d 5c 10 00 	add	16(r12),r13	;0x00010
    6e7e:	5d 02       	rlam	#1,	r13	;
    6e80:	0d 5c       	add	r12,	r13	;
    6e82:	1e 4d a8 01 	mov	424(r13),r14	;0x001a8

00006e86 <.Loc.300.1>:
    6e86:	0e 93       	cmp	#0,	r14	;r3 As==00
    6e88:	05 24       	jz	$+12     	;abs 0x6e94

00006e8a <.LBB9>:
    {
        index_t next_sibling = __GET(_v_dict[i].sibling);
        __SET(_v_sibling, next_sibling);
    6e8a:	8c 4e 10 00 	mov	r14,	16(r12)	; 0x0010

00006e8e <.LVL32>:
        return task_add_node;
    6e8e:	3c 40 74 6e 	mov	#28276,	r12	;#0x6e74

00006e92 <.L14>:
        __SET(_v_sibling_node.child, __cry);

        return task_add_insert;
        // printf("task_add_node->task_add_insert\n");
    }
}
    6e92:	30 41       	ret			

00006e94 <.L15>:
        __SET(_v_sibling_node.letter, __cry);
    6e94:	9c 4d a6 01 	mov	422(r13),30(r12)	;0x001a6, 0x001e
    6e98:	1e 00 

00006e9a <.LVL35>:
        __SET(_v_sibling_node.sibling, __cry);
    6e9a:	8c 43 20 00 	mov	#0,	32(r12)	;r3 As==00, 0x0020

00006e9e <.LVL36>:
        __SET(_v_sibling_node.child, __cry);
    6e9e:	9c 4d aa 01 	mov	426(r13),34(r12)	;0x001aa, 0x0022
    6ea2:	22 00 

00006ea4 <.Loc.319.1>:
        return task_add_insert;
    6ea4:	3c 40 aa 6e 	mov	#28330,	r12	;#0x6eaa

00006ea8 <.LVL37>:
    6ea8:	f4 3f       	jmp	$-22     	;abs 0x6e92

00006eaa <task_add_insert>:

TASK(task_add_insert)
{
    if (__GET(_v_node_count) == DICT_SIZE)
    6eaa:	1e 4c 0a 00 	mov	10(r12),r14	;0x0000a

00006eae <.Loc.326.1>:
    6eae:	3e 90 00 02 	cmp	#512,	r14	;#0x0200
    6eb2:	01 20       	jnz	$+4      	;abs 0x6eb6

00006eb4 <.L19>:
    {  // wipe the table if full
        while (1)
    6eb4:	ff 3f       	jmp	$+0      	;abs 0x6eb4

00006eb6 <.L18>:
            ;
    }

    index_t  child = __GET(_v_node_count);
    uint16_t __cry;
    if (__GET(_v_parent_node.child) == NIL)
    6eb6:	1f 4c 14 00 	mov	20(r12),r15	;0x00014

00006eba <.Loc.334.1>:
    6eba:	8c 93 1c 00 	cmp	#0,	28(r12)	;r3 As==00, 0x001c
    6ebe:	23 20       	jnz	$+72     	;abs 0x6f06

00006ec0 <.LBB11>:
    {  // the only child

        __SET(_v_parent_node.child, child);
    6ec0:	8c 4e 1c 00 	mov	r14,	28(r12)	; 0x001c

00006ec4 <.LVL40>:
        int i = __GET(_v_parent);

        __cry = __GET(_v_parent_node.letter);
        __SET(_v_dict[i].letter, __cry);
    6ec4:	0d 4f       	mov	r15,	r13	;
    6ec6:	5d 02       	rlam	#1,	r13	;
    6ec8:	0d 5f       	add	r15,	r13	;
    6eca:	5d 02       	rlam	#1,	r13	;
    6ecc:	0d 5c       	add	r12,	r13	;
    6ece:	9d 4c 18 00 	mov	24(r12),422(r13);0x00018, 0x01a6
    6ed2:	a6 01 

00006ed4 <.LVL41>:
        __cry = __GET(_v_parent_node.sibling);
        __SET(_v_dict[i].sibling, __cry);
    6ed4:	9d 4c 1a 00 	mov	26(r12),424(r13);0x0001a, 0x01a8
    6ed8:	a8 01 

00006eda <.LVL42>:
        __cry = __GET(_v_parent_node.child);
        __SET(_v_dict[i].child, __cry);
    6eda:	8d 4e aa 01 	mov	r14,	426(r13); 0x01aa

00006ede <.L21>:
        __SET(_v_dict[last_sibling].sibling, __cry);
        __cry = __GET(_v_sibling_node.child);
        __SET(_v_dict[last_sibling].child, __cry);
    }
    __cry = __GET(_v_letter);
    __SET(_v_dict[child].letter, __cry);
    6ede:	0d 4e       	mov	r14,	r13	;
    6ee0:	5d 02       	rlam	#1,	r13	;
    6ee2:	0d 5e       	add	r14,	r13	;
    6ee4:	5d 02       	rlam	#1,	r13	;
    6ee6:	0d 5c       	add	r12,	r13	;
    6ee8:	9d 4c 04 00 	mov	4(r12),	422(r13); 0x01a6
    6eec:	a6 01 

00006eee <.Loc.362.1>:
    __SET(_v_dict[child].sibling, NIL);
    6eee:	8d 43 a8 01 	mov	#0,	424(r13);r3 As==00, 0x01a8

00006ef2 <.Loc.363.1>:
    __SET(_v_dict[child].child, NIL);
    6ef2:	8d 43 aa 01 	mov	#0,	426(r13);r3 As==00, 0x01aa

00006ef6 <.LVL44>:
    __cry = __GET(_v_parent);
    __SET(_v_symbol, __cry);
    6ef6:	8c 4f 24 00 	mov	r15,	36(r12)	; 0x0024

00006efa <.Loc.367.1>:
    // printf("Add_insert:%d\n",__cry);
    __SET(_v_node_count, ++__GET(_v_node_count));
    6efa:	1e 53       	inc	r14		;

00006efc <.LVL45>:
    6efc:	8c 4e 0a 00 	mov	r14,	10(r12)	; 0x000a

00006f00 <.LVL46>:

    return task_append_compressed;
    // printf("task_add_insert->task_append_compressed\n");
}
    6f00:	3c 40 2a 6f 	mov	#28458,	r12	;#0x6f2a

00006f04 <.LVL47>:
    6f04:	30 41       	ret			

00006f06 <.L20>:
        __SET(_v_sibling_node.sibling, child);
    6f06:	8c 4e 20 00 	mov	r14,	32(r12)	; 0x0020

00006f0a <.LVL49>:
        __SET(_v_dict[last_sibling].letter, __cry);
    6f0a:	1d 4c 10 00 	mov	16(r12),r13	;0x00010
    6f0e:	5d 02       	rlam	#1,	r13	;
    6f10:	1d 5c 10 00 	add	16(r12),r13	;0x00010
    6f14:	5d 02       	rlam	#1,	r13	;
    6f16:	0d 5c       	add	r12,	r13	;
    6f18:	9d 4c 1e 00 	mov	30(r12),422(r13);0x0001e, 0x01a6
    6f1c:	a6 01 

00006f1e <.LVL50>:
        __SET(_v_dict[last_sibling].sibling, __cry);
    6f1e:	8d 4e a8 01 	mov	r14,	424(r13); 0x01a8

00006f22 <.LVL51>:
        __SET(_v_dict[last_sibling].child, __cry);
    6f22:	9d 4c 22 00 	mov	34(r12),426(r13);0x00022, 0x01aa
    6f26:	aa 01 
    6f28:	da 3f       	jmp	$-74     	;abs 0x6ede

00006f2a <task_append_compressed>:

TASK(task_append_compressed)
{
    uint16_t __cry;
    int      i = __GET(_v_out_len);
    6f2a:	1e 4c 08 00 	mov	8(r12),	r14	;

00006f2e <.LVL53>:
    __cry      = __GET(_v_symbol);
    // printf("Append:%d",ios_persistent_vars[1]._v_symbol);
    __SET(_v_compressed_data[i].letter, __cry);
    6f2e:	0d 4e       	mov	r14,	r13	;
    6f30:	5d 02       	rlam	#1,	r13	;
    6f32:	0d 5e       	add	r14,	r13	;
    6f34:	5d 02       	rlam	#1,	r13	;
    6f36:	0d 5c       	add	r12,	r13	;
    6f38:	9d 4c 24 00 	mov	36(r12),38(r13)	;0x00024, 0x0026
    6f3c:	26 00 

00006f3e <.Loc.381.1>:

    __SET(_v_out_len, ++__GET(_v_out_len));
    6f3e:	1e 53       	inc	r14		;

00006f40 <.LVL54>:
    6f40:	8c 4e 08 00 	mov	r14,	8(r12)	;

00006f44 <.LVL55>:

    if (__GET(_v_out_len) == BLOCK_SIZE)
    {
        return task_print;
    6f44:	3c 40 54 6f 	mov	#28500,	r12	;#0x6f54

00006f48 <.LVL56>:
    if (__GET(_v_out_len) == BLOCK_SIZE)
    6f48:	3e 90 40 00 	cmp	#64,	r14	;#0x0040
    6f4c:	02 24       	jz	$+6      	;abs 0x6f52

00006f4e <.Loc.390.1>:
        // printf("task_append_compressed->task_print\n");
    }
    else
    {
        return task_sample;
    6f4e:	3c 40 ca 6d 	mov	#28106,	r12	;#0x6dca

00006f52 <.L22>:
        // printf("task_append_compressed->task_sample\n");
    }
}
    6f52:	30 41       	ret			

00006f54 <task_print>:
    for (i = 0; i < BLOCK_SIZE; ++i)
    {
        index_t index = __GET(_v_compressed_data[i].letter);
    }
    return task_done;
}
    6f54:	3c 40 a8 6f 	mov	#28584,	r12	;#0x6fa8

00006f58 <.LVL58>:
    6f58:	30 41       	ret			

00006f5a <task_find_sibling>:
    int i = __GET(_v_sibling);
    6f5a:	1e 4c 10 00 	mov	16(r12),r14	;0x00010

00006f5e <.Loc.240.1>:
    if (i != NIL)
    6f5e:	1f 4c 04 00 	mov	4(r12),	r15	;

00006f62 <.Loc.240.1>:
    6f62:	0e 93       	cmp	#0,	r14	;r3 As==00
    6f64:	16 24       	jz	$+46     	;abs 0x6f92

00006f66 <.LBB20>:
        if (__GET(_v_dict[i].letter) == __cry)
    6f66:	0d 4e       	mov	r14,	r13	;
    6f68:	5d 02       	rlam	#1,	r13	;
    6f6a:	0d 5e       	add	r14,	r13	;
    6f6c:	5d 02       	rlam	#1,	r13	;
    6f6e:	0d 5c       	add	r12,	r13	;

00006f70 <.Loc.243.1>:
    6f70:	8d 9f a6 01 	cmp	r15,	422(r13); 0x01a6
    6f74:	05 20       	jnz	$+12     	;abs 0x6f80

00006f76 <.LVL62>:
            __SET(_v_parent_next, __cry);
    6f76:	8c 4e 16 00 	mov	r14,	22(r12)	; 0x0016

00006f7a <.Loc.248.1>:
            return task_letterize;
    6f7a:	3c 40 08 6e 	mov	#28168,	r12	;#0x6e08

00006f7e <.L26>:
}
    6f7e:	30 41       	ret			

00006f80 <.L28>:
        else if (__GET(_v_dict[i].sibling) != 0)
    6f80:	1d 4d a8 01 	mov	424(r13),r13	;0x001a8

00006f84 <.Loc.251.1>:
    6f84:	0d 93       	cmp	#0,	r13	;r3 As==00
    6f86:	05 24       	jz	$+12     	;abs 0x6f92

00006f88 <.LVL65>:
            __SET(_v_sibling, __cry);
    6f88:	8c 4d 10 00 	mov	r13,	16(r12)	; 0x0010

00006f8c <.Loc.256.1>:
            return task_find_sibling;
    6f8c:	3c 40 5a 6f 	mov	#28506,	r12	;#0x6f5a

00006f90 <.LVL66>:
    6f90:	f6 3f       	jmp	$-18     	;abs 0x6f7e

00006f92 <.L30>:
            __SET(_v_parent_next, starting_node_idx);
    6f92:	8c 4f 16 00 	mov	r15,	22(r12)	; 0x0016

00006f96 <.Loc.265.1>:
            if (__GET(_v_child) == NIL)
    6f96:	8c 93 12 00 	cmp	#0,	18(r12)	;r3 As==00, 0x0012
    6f9a:	03 24       	jz	$+8      	;abs 0x6fa2

00006f9c <.Loc.272.1>:
                return task_add_node;
    6f9c:	3c 40 74 6e 	mov	#28276,	r12	;#0x6e74

00006fa0 <.LVL68>:
    6fa0:	ee 3f       	jmp	$-34     	;abs 0x6f7e

00006fa2 <.L31>:
                return task_add_insert;
    6fa2:	3c 40 aa 6e 	mov	#28330,	r12	;#0x6eaa

00006fa6 <.LVL70>:
    6fa6:	eb 3f       	jmp	$-40     	;abs 0x6f7e

00006fa8 <task_done>:

TASK(task_done)
{
#ifdef RAISE_PIN
    if (full_run_started)
    6fa8:	c2 93 54 60 	cmp.b	#0,	&0x6054	;r3 As==00
    6fac:	0a 24       	jz	$+22     	;abs 0x6fc2

00006fae <.LBB25>:
    {
        full_run_started = 0;
    6fae:	c2 43 54 60 	mov.b	#0,	&0x6054	;r3 As==00

00006fb2 <.Loc.412.1>:
        __port_on(3, 4);
    6fb2:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    6fb6:	22 02 

00006fb8 <.Loc.412.1>:
        __port_off(3, 4);
    6fb8:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    6fbc:	22 02 

00006fbe <.Loc.413.1>:
        __SET(pinCont, 0);
    6fbe:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00

00006fc2 <.L35>:
    }
#endif

    return task_init;
}
    6fc2:	3c 40 68 6d 	mov	#28008,	r12	;#0x6d68

00006fc6 <.LVL74>:
    6fc6:	30 41       	ret			

00006fc8 <thread1_init>:
{
    6fc8:	21 83       	decd	r1		;

00006fca <.LCFI2>:
    __CREATE(15, task_init);
    6fca:	b1 40 a6 0d 	mov	#3494,	0(r1)	;#0x0da6
    6fce:	00 00 
    6fd0:	3f 40 ae 52 	mov	#21166,	r15	;#0x52ae
    6fd4:	3e 40 08 45 	mov	#17672,	r14	;#0x4508
    6fd8:	3d 40 68 6d 	mov	#28008,	r13	;#0x6d68
    6fdc:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    6fe0:	b0 12 3c 70 	call	#28732		;#0x703c

00006fe4 <.Loc.92.1>:
    __SIGNAL(15);
    6fe4:	32 c2       	dint			
    6fe6:	03 43       	nop			

00006fe8 <.Loc.92.1>:
    6fe8:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    6fec:	b0 12 2c 71 	call	#28972		;#0x712c
    6ff0:	b0 12 10 71 	call	#28944		;#0x7110

00006ff4 <.Loc.92.1>:
    6ff4:	03 43       	nop			
    6ff6:	32 d2       	eint			
    6ff8:	03 43       	nop			

00006ffa <.Loc.93.1>:
}
    6ffa:	21 53       	incd	r1		;

00006ffc <.LCFI3>:
    6ffc:	30 41       	ret			

00006ffe <__app_reboot>:
    __port_init(3, 4);
    6ffe:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    7002:	22 02 

00007004 <.Loc.98.1>:
    7004:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    7008:	24 02 

0000700a <.Loc.98.1>:
    700a:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    700e:	22 02 

00007010 <.Loc.102.1>:
}
    7010:	30 41       	ret			

00007012 <__scheduler_boot_init>:
 * a higher-priority thread.
 * As such, the scheduler state should ALWAYS be SCHED_SELECT at reboot.
 */
static volatile uint8_t _sched_state = SCHED_SELECT;

void __scheduler_boot_init() {
    7012:	0a 15       	pushm	#1,	r10	;16-bit words

00007014 <.LCFI0>:
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    7014:	3c 40 58 60 	mov	#24664,	r12	;#0x6058
    7018:	b0 12 2e 7c 	call	#31790		;#0x7c2e

0000701c <.Loc.65.1>:
    701c:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

00007020 <L0^A>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    7020:	0c 4a       	mov	r10,	r12	;
    7022:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    7026:	b0 12 d8 80 	call	#-32552	;#0x80d8
    702a:	1c 4c 64 60 	mov	24676(r12),r12	;0x06064

0000702e <.LVL3>:
    for (i = MAX_THREADS; i > 0; i--){
    702e:	3a 53       	add	#-1,	r10	;r3 As==11

00007030 <.Loc.67.1>:
    7030:	0a 93       	cmp	#0,	r10	;r3 As==00
    7032:	f6 23       	jnz	$-18     	;abs 0x7020

00007034 <.Loc.71.1>:
    }
    _sched_state = SCHED_SELECT;
    7034:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00007038 <.Loc.72.1>:
}
    7038:	0a 17       	popm	#1,	r10	;16-bit words

0000703a <.LCFI1>:
    703a:	30 41       	ret			

0000703c <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    703c:	3a 15       	pushm	#4,	r10	;16-bit words

0000703e <.LCFI2>:
    703e:	4a 4c       	mov.b	r12,	r10	;
    7040:	09 4d       	mov	r13,	r9	;
    7042:	07 4e       	mov	r14,	r7	;
    7044:	08 4f       	mov	r15,	r8	;

00007046 <.Loc.79.1>:
    // init properties
    _threads[priority].priority = priority;
    7046:	0c 4a       	mov	r10,	r12	;

00007048 <.LVL6>:
    7048:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

0000704c <.LVL7>:
    704c:	b0 12 d8 80 	call	#-32552	;#0x80d8

00007050 <.LVL8>:
    7050:	cc 4a 62 60 	mov.b	r10,	24674(r12); 0x6062

00007054 <.Loc.80.1>:
    _threads[priority].entry = entry;
    7054:	0c 4a       	mov	r10,	r12	;
    7056:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    705a:	b0 12 d8 80 	call	#-32552	;#0x80d8
    705e:	8c 49 66 60 	mov	r9,	24678(r12); 0x6066

00007062 <.Loc.81.1>:
    _threads[priority].next = entry;
    7062:	0c 4a       	mov	r10,	r12	;
    7064:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    7068:	b0 12 d8 80 	call	#-32552	;#0x80d8
    706c:	8c 49 68 60 	mov	r9,	24680(r12); 0x6068

00007070 <.Loc.82.1>:
    _threads[priority].state = THREAD_STOPPED;
    7070:	0c 4a       	mov	r10,	r12	;
    7072:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    7076:	b0 12 d8 80 	call	#-32552	;#0x80d8
    707a:	bc 42 64 60 	mov	#8,	24676(r12);r2 As==11, 0x6064

0000707e <.Loc.85.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    707e:	0c 4a       	mov	r10,	r12	;
    7080:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    7084:	b0 12 d8 80 	call	#-32552	;#0x80d8
    7088:	8c 47 6c 60 	mov	r7,	24684(r12); 0x606c

0000708c <.Loc.86.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    708c:	0c 4a       	mov	r10,	r12	;
    708e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    7092:	b0 12 d8 80 	call	#-32552	;#0x80d8
    7096:	8c 48 6e 60 	mov	r8,	24686(r12); 0x606e

0000709a <.Loc.87.1>:
    _threads[priority].buffer.idx = 0;
    709a:	0c 4a       	mov	r10,	r12	;
    709c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    70a0:	b0 12 d8 80 	call	#-32552	;#0x80d8
    70a4:	cc 43 70 60 	mov.b	#0,	24688(r12);r3 As==00, 0x6070

000070a8 <.Loc.88.1>:
    _threads[priority].buffer.size = size;
    70a8:	0c 4a       	mov	r10,	r12	;
    70aa:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    70ae:	b0 12 d8 80 	call	#-32552	;#0x80d8
    70b2:	9c 41 0a 00 	mov	10(r1),	24690(r12);0x0000a, 0x6072
    70b6:	72 60 

000070b8 <.Loc.89.1>:
}
    70b8:	37 17       	popm	#4,	r10	;16-bit words

000070ba <.LCFI3>:
    70ba:	30 41       	ret			

000070bc <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    70bc:	0a 15       	pushm	#1,	r10	;16-bit words

000070be <.LCFI4>:
    70be:	0a 4c       	mov	r12,	r10	;

000070c0 <.Loc.93.1>:
    __priority_remove(thread->priority, &_priorities);
    70c0:	3d 40 58 60 	mov	#24664,	r13	;#0x6058
    70c4:	6c 4c       	mov.b	@r12,	r12	;

000070c6 <.LVL17>:
    70c6:	b0 12 74 7c 	call	#31860		;#0x7c74

000070ca <.Loc.94.1>:
    thread->state = THREAD_STOPPED;
    70ca:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000070ce <.Loc.95.1>:
}
    70ce:	0a 17       	popm	#1,	r10	;16-bit words

000070d0 <.LCFI5>:
    70d0:	30 41       	ret			

000070d2 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    70d2:	0a 15       	pushm	#1,	r10	;16-bit words

000070d4 <.LCFI6>:
    70d4:	0a 4c       	mov	r12,	r10	;

000070d6 <.Loc.99.1>:
    __priority_remove(thread->priority, &_priorities);
    70d6:	3d 40 58 60 	mov	#24664,	r13	;#0x6058
    70da:	6c 4c       	mov.b	@r12,	r12	;

000070dc <.LVL20>:
    70dc:	b0 12 74 7c 	call	#31860		;#0x7c74

000070e0 <.Loc.100.1>:
    thread->next = NULL;
    70e0:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

000070e4 <.Loc.101.1>:
    thread->state = THREAD_STOPPED;
    70e4:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000070e8 <.Loc.102.1>:
}
    70e8:	0a 17       	popm	#1,	r10	;16-bit words

000070ea <.LCFI7>:
    70ea:	30 41       	ret			

000070ec <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    70ec:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000070f0 <.Loc.106.1>:
    return;
}
    70f0:	30 41       	ret			

000070f2 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    70f2:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

000070f6 <.Loc.112.1>:
    return;
}
    70f6:	30 41       	ret			

000070f8 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    70f8:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

000070fc <.Loc.118.1>:
    return;
}
    70fc:	30 41       	ret			

000070fe <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    70fe:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00007102 <.Loc.123.1>:
    return;
}
    7102:	30 41       	ret			

00007104 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    7104:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00007108 <.LVL27>:
    7108:	30 41       	ret			

0000710a <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    710a:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000710e <.LVL29>:
    710e:	30 41       	ret			

00007110 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    7110:	0a 15       	pushm	#1,	r10	;16-bit words

00007112 <.LCFI8>:
    7112:	0a 4c       	mov	r12,	r10	;

00007114 <.Loc.136.1>:
    thread->next = thread->entry;
    7114:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    7118:	06 00 

0000711a <.Loc.137.1>:
    __priority_insert(thread->priority, &_priorities);
    711a:	3d 40 58 60 	mov	#24664,	r13	;#0x6058
    711e:	6c 4c       	mov.b	@r12,	r12	;

00007120 <.LVL31>:
    7120:	b0 12 54 7c 	call	#31828		;#0x7c54

00007124 <.Loc.138.1>:
    thread->state = TASK_READY;
    7124:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00007128 <.Loc.139.1>:
}
    7128:	0a 17       	popm	#1,	r10	;16-bit words

0000712a <.LCFI9>:
    712a:	30 41       	ret			

0000712c <__get_thread>:

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    return &_threads[priority];
    712c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7130:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    7134:	b0 12 d8 80 	call	#-32552	;#0x80d8

00007138 <.LVL34>:
}
    7138:	3c 50 62 60 	add	#24674,	r12	;#0x6062
    713c:	30 41       	ret			

0000713e <__scheduler_run>:
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    713e:	b0 12 cc 79 	call	#31180		;#0x79cc

00007142 <.Loc.171.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    7142:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00007146 <.Loc.171.1>:
    __port_off(1, 3);
    7146:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000714a <.LBB8>:
    if(_thread){
    714a:	82 93 56 60 	cmp	#0,	&0x6056	;r3 As==00
    714e:	04 24       	jz	$+10     	;abs 0x7158

00007150 <.Loc.157.1>:
        __tick(_thread);
    7150:	1c 42 56 60 	mov	&0x6056,r12	;0x6056
    7154:	b0 12 e0 71 	call	#29152		;#0x71e0

00007158 <.L16>:
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

#ifdef RAISE_PIN
    __port_on(1, 3);
    7158:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000715c <.Loc.184.1>:
    __port_off(1, 3);
    715c:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007160 <.Loc.185.1>:
#endif

    __reboot_timers();
    7160:	b0 12 e4 72 	call	#29412		;#0x72e4

00007164 <.L31>:
    // enable interrupts
    __enable_interrupt();
    7164:	03 43       	nop			
    7166:	32 d2       	eint			
    7168:	03 43       	nop			

0000716a <.L20>:

    while (1){
        switch (_sched_state){
    716a:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    716e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7170:	0e 24       	jz	$+30     	;abs 0x718e
    7172:	1c 93       	cmp	#1,	r12	;r3 As==01
    7174:	fa 23       	jnz	$-10     	;abs 0x716a

00007176 <.L19>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    7176:	82 93 56 60 	cmp	#0,	&0x6056	;r3 As==00
    717a:	21 24       	jz	$+68     	;abs 0x71be

0000717c <.Loc.207.1>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    717c:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007180 <.Loc.207.1>:
#endif
                __tick(_thread);
    7180:	1c 42 56 60 	mov	&0x6056,r12	;0x6056
    7184:	b0 12 e0 71 	call	#29152		;#0x71e0

00007188 <.Loc.211.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    7188:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000718c <.Loc.212.1>:
                break;
    718c:	ee 3f       	jmp	$-34     	;abs 0x716a

0000718e <.L18>:
            __port_on(1, 3);
    718e:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00007192 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    7192:	3c 40 58 60 	mov	#24664,	r12	;#0x6058
    7196:	b0 12 9c 7c 	call	#31900		;#0x7c9c
    719a:	4e 4c       	mov.b	r12,	r14	;
    719c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000071a0 <.LVL40>:
    return NULL;
    71a0:	4d 43       	clr.b	r13		;

000071a2 <.Loc.144.1>:
    if(idx)
    71a2:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    71a4:	07 24       	jz	$+16     	;abs 0x71b4

000071a6 <.Loc.145.1>:
        return &_threads[idx];
    71a6:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    71aa:	b0 12 d8 80 	call	#-32552	;#0x80d8

000071ae <.LVL41>:
    71ae:	0d 4c       	mov	r12,	r13	;
    71b0:	3d 50 62 60 	add	#24674,	r13	;#0x6062

000071b4 <.L21>:
            _thread = __next_thread();
    71b4:	82 4d 56 60 	mov	r13,	&0x6056	;

000071b8 <.Loc.201.1>:
            _sched_state = SCHED_BUSY;
    71b8:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01
    71bc:	dc 3f       	jmp	$-70     	;abs 0x7176

000071be <.L22>:
            }
            _sched_state = SCHED_SELECT;
    71be:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

000071c2 <.Loc.215.1>:
            __disable_interrupt();
    71c2:	32 c2       	dint			
    71c4:	03 43       	nop			

000071c6 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    71c6:	3c 40 58 60 	mov	#24664,	r12	;#0x6058
    71ca:	b0 12 9c 7c 	call	#31900		;#0x7c9c

000071ce <.LVL42>:
    if(idx)
    71ce:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    71d0:	cc 23       	jnz	$-102    	;abs 0x716a

000071d2 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    71d2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000071d6 <.Loc.219.1>:
#endif
                __mcu_sleep();
    71d6:	03 43       	nop			
    71d8:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    71dc:	03 43       	nop			

000071de <.Loc.222.1>:
                __enable_interrupt();
    71de:	c2 3f       	jmp	$-122    	;abs 0x7164

000071e0 <__tick>:

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    71e0:	1a 15       	pushm	#2,	r10	;16-bit words

000071e2 <.LCFI0>:
    71e2:	0a 4c       	mov	r12,	r10	;

000071e4 <.Loc.53.1>:
    void *buf;
    switch (thread->state)
    71e4:	
000071e6 <L0^A>:
    71e6:	02 00       	mova	@r0,	r2	;

000071e8 <.LVL1>:
    71e8:	2c 93       	cmp	#2,	r12	;r3 As==10
    71ea:	3f 24       	jz	$+128    	;abs 0x726a
    71ec:	2c 92       	cmp	#4,	r12	;r2 As==10
    71ee:	4d 24       	jz	$+156    	;abs 0x728a
    71f0:	1c 93       	cmp	#1,	r12	;r3 As==01
    71f2:	67 20       	jnz	$+208    	;abs 0x72c2

000071f4 <.LBB5>:
    __port_on(3,6);
    71f4:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    71f8:	22 02 

000071fa <.Loc.40.1>:
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    71fa:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

000071fe <.Loc.43.1>:
    71fe:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    7202:	5c e3       	xor.b	#1,	r12	;r3 As==01
    7204:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007208 <.Loc.43.1>:
    7208:	5c 02       	rlam	#1,	r12	;
    720a:	0c 5a       	add	r10,	r12	;
    720c:	5f 02       	rlam	#1,	r15	;
    720e:	0f 5a       	add	r10,	r15	;
    7210:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    7214:	5e 03       	rrum	#1,	r14	;
    7216:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    721a:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    721e:	b0 12 a6 7b 	call	#31654		;#0x7ba6

00007222 <.Loc.45.1>:
    __port_off(3,6);
    7222:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    7226:	22 02 

00007228 <.LBE5>:
    {
    case TASK_READY:
        // refresh thread stack
        __prologue(thread);
#ifdef RAISE_PIN
        __port_on(1, 4);
    7228:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    722c:	02 02 

0000722e <.Loc.60.1>:
#endif
        // get thread buffer
        buf = thread->buffer.buf[thread->buffer._idx^1];
    722e:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    7232:	5c e3       	xor.b	#1,	r12	;r3 As==01
    7234:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007238 <.Loc.63.1>:
    7238:	3c 50 05 00 	add	#5,	r12	;
    723c:	5c 02       	rlam	#1,	r12	;
    723e:	0c 5a       	add	r10,	r12	;
    7240:	29 4c       	mov	@r12,	r9	;

00007242 <.LVL5>:
        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
    7242:	1d 4a 06 00 	mov	6(r10),	r13	;

00007246 <.Loc.66.1>:
    7246:	1d 9a 04 00 	cmp	4(r10),	r13	;
    724a:	3d 20       	jnz	$+124    	;abs 0x72c6

0000724c <.LBB7>:
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
    724c:	0c 4a       	mov	r10,	r12	;
    724e:	b0 12 80 7a 	call	#31360		;#0x7a80

00007252 <.LVL6>:
            // push event data to the entry task
            thread->next_temp = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    7252:	0d 4c       	mov	r12,	r13	;
    7254:	0c 49       	mov	r9,	r12	;

00007256 <.LVL7>:
    7256:	1e 4a 04 00 	mov	4(r10),	r14	;
    725a:	8e 12       	call	r14		;

0000725c <.L17>:
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    725c:	8a 4c 08 00 	mov	r12,	8(r10)	;

00007260 <.Loc.76.1>:
        }
        thread->state = TASK_PRECOMMIT;
    7260:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00007264 <.Loc.78.1>:
#ifdef RAISE_PIN
        __port_off(1, 4);
    7264:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    7268:	02 02 

0000726a <.L2>:
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
    726a:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    726e:	22 02 

00007270 <.Loc.82.1>:
#endif
        // release any event which is popped by the task
        __release_event(thread);
    7270:	0c 4a       	mov	r10,	r12	;
    7272:	b0 12 ae 7a 	call	#31406		;#0x7aae

00007276 <.Loc.86.1>:
        thread->next = thread->next_temp;
    7276:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    727a:	06 00 

0000727c <.Loc.88.1>:
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
    727c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    7280:	5c e3       	xor.b	#1,	r12	;r3 As==01
    7282:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

00007286 <.Loc.89.1>:
        thread->state = TASK_COMMIT;
    7286:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

0000728a <.L3>:
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
    728a:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    728e:	0e 00 

00007290 <.Loc.94.1>:
#ifdef RAISE_PIN
        __port_off(3,5);
    7290:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    7294:	22 02 

00007296 <.Loc.94.1>:
        __port_on(3,5);
    7296:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    729a:	22 02 

0000729c <.Loc.95.1>:
#endif

        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
    729c:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    72a0:	1b 20       	jnz	$+56     	;abs 0x72d8

000072a2 <.Loc.101.1>:
        {
            __disable_interrupt();
    72a2:	32 c2       	dint			
    72a4:	03 43       	nop			

000072a6 <.Loc.103.1>:
            // check if there are any pending events
            if(!__has_events(thread)){
    72a6:	0c 4a       	mov	r10,	r12	;
    72a8:	b0 12 62 7a 	call	#31330		;#0x7a62

000072ac <.Loc.103.1>:
    72ac:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    72ae:	0e 20       	jnz	$+30     	;abs 0x72cc

000072b0 <.Loc.105.1>:
                // suspend the thread if there are no pending events
                __stop_thread(thread);
    72b0:	0c 4a       	mov	r10,	r12	;
    72b2:	b0 12 bc 70 	call	#28860		;#0x70bc

000072b6 <.L9>:
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
    72b6:	03 43       	nop			
    72b8:	32 d2       	eint			
    72ba:	03 43       	nop			

000072bc <.L10>:
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    72bc:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    72c0:	22 02 

000072c2 <.L1>:
#endif
    }
}
    72c2:	19 17       	popm	#2,	r10	;16-bit words

000072c4 <.LCFI1>:
    72c4:	30 41       	ret			

000072c6 <.L5>:
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    72c6:	2c 4c       	mov	@r12,	r12	;
    72c8:	8d 12       	call	r13		;
    72ca:	c8 3f       	jmp	$-110    	;abs 0x725c

000072cc <.L8>:
                thread->next = thread->entry;
    72cc:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    72d0:	06 00 

000072d2 <.Loc.111.1>:
                thread->state = TASK_READY;
    72d2:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    72d6:	ef 3f       	jmp	$-32     	;abs 0x72b6

000072d8 <.L7>:
            thread->state = TASK_READY;
    72d8:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    72dc:	ef 3f       	jmp	$-32     	;abs 0x72bc

000072de <__timers_init>:
    72de:	b0 12 80 7d 	call	#32128		;#0x7d80

000072e2 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    72e2:	30 41       	ret			

000072e4 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    72e4:	30 41       	ret			

000072e6 <clear_wkup_status>:
//WKUP timers 
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    72e6:	2a 15       	pushm	#3,	r10	;16-bit words

000072e8 <.LCFI0>:
    72e8:	48 4c       	mov.b	r12,	r8	;

000072ea <.Loc.100.1>:
    
    uint8_t i; 
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    72ea:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

000072ee <.Loc.101.1>:
    72ee:	49 43       	clr.b	r9		;

000072f0 <.L5>:
    {
        if (wkup_timing[i].thread_id == thread_id) {
    72f0:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    72f4:	07 20       	jnz	$+16     	;abs 0x7304

000072f6 <.Loc.104.1>:
            wkup_timing[i].status = NOT_USED;
    72f6:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000072fa <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    72fa:	4e 43       	clr.b	r14		;
    72fc:	4d 43       	clr.b	r13		;
    72fe:	4c 49       	mov.b	r9,	r12	;
    7300:	b0 12 3e 7e 	call	#32318		;#0x7e3e

00007304 <.L4>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7304:	4c 49       	mov.b	r9,	r12	;
    7306:	5c 53       	inc.b	r12		;
    7308:	49 4c       	mov.b	r12,	r9	;

0000730a <.LVL5>:
    730a:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000730e <.Loc.101.1>:
    730e:	7c 90 03 00 	cmp.b	#3,	r12	;
    7312:	ee 23       	jnz	$-34     	;abs 0x72f0

00007314 <.Loc.109.1>:

        }
    }
}
    7314:	28 17       	popm	#3,	r10	;16-bit words

00007316 <.LCFI1>:
    7316:	30 41       	ret			

00007318 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    7318:	1a 15       	pushm	#2,	r10	;16-bit words

0000731a <.LCFI2>:
    731a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000731e <.LCFI3>:
    731e:	49 43       	clr.b	r9		;

00007320 <.L8>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    7320:	0a 49       	mov	r9,	r10	;
    7322:	5a 06       	rlam	#2,	r10	;
    7324:	0a 59       	add	r9,	r10	;
    7326:	5a 02       	rlam	#1,	r10	;
    7328:	3a 50 34 1c 	add	#7220,	r10	;#0x1c34
    732c:	4e 43       	clr.b	r14		;
    732e:	4d 49       	mov.b	r9,	r13	;
    7330:	0c 41       	mov	r1,	r12	;
    7332:	b0 12 c8 7f 	call	#32712		;#0x7fc8
    7336:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    733a:	0d 41       	mov	r1,	r13	;
    733c:	0c 4a       	mov	r10,	r12	;
    733e:	b0 12 04 81 	call	#-32508	;#0x8104

00007342 <.LVL9>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7342:	19 53       	inc	r9		;

00007344 <.Loc.115.1>:
    7344:	39 90 03 00 	cmp	#3,	r9	;
    7348:	eb 23       	jnz	$-40     	;abs 0x7320

0000734a <.Loc.120.1>:
    }

}
    734a:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000734e <.LCFI4>:
    734e:	19 17       	popm	#2,	r10	;16-bit words

00007350 <.LCFI5>:
    7350:	30 41       	ret			

00007352 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing 
void refresh_wkup_timers(){
    7352:	4a 15       	pushm	#5,	r10	;16-bit words

00007354 <.LCFI6>:

    uint8_t i,first = 1;

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7354:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

00007358 <.Loc.125.1>:
    uint8_t i,first = 1;
    7358:	5f 43       	mov.b	#1,	r15	;r3 As==01

0000735a <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    735a:	49 43       	clr.b	r9		;

0000735c <.L23>:
    {

        if (wkup_timing[i].status == USED)
    735c:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    7360:	56 20       	jnz	$+174    	;abs 0x740e

00007362 <.Loc.133.1>:
        {
            
            if (first)
    7362:	16 4a 04 00 	mov	4(r10),	r6	;
    7366:	17 4a 06 00 	mov	6(r10),	r7	;

0000736a <.Loc.133.1>:
    736a:	0f 93       	cmp	#0,	r15	;r3 As==00
    736c:	05 24       	jz	$+12     	;abs 0x7378

0000736e <.Loc.135.1>:
            {
                min_wkup = wkup_timing[i].data;
    736e:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

00007372 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    7372:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    7376:	5c 1c 

00007378 <.L12>:
                first = 0;
            }
            

            wkup_timing[i].data = wkup_timing[i].data - __get_time(); 
    7378:	b0 12 4c 7d 	call	#32076		;#0x7d4c

0000737c <.Loc.141.1>:
    737c:	0e 46       	mov	r6,	r14	;
    737e:	0f 47       	mov	r7,	r15	;
    7380:	0e 8c       	sub	r12,	r14	;
    7382:	0f 7d       	subc	r13,	r15	;

00007384 <.Loc.141.1>:
    7384:	8a 4e 04 00 	mov	r14,	4(r10)	;
    7388:	8a 4f 06 00 	mov	r15,	6(r10)	;

0000738c <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    738c:	4d 43       	clr.b	r13		;
    738e:	4c 49       	mov.b	r9,	r12	;
    7390:	b0 12 a2 7d 	call	#32162		;#0x7da2

00007394 <.Loc.144.1>:

            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    7394:	1c 4a 04 00 	mov	4(r10),	r12	;
    7398:	1d 4a 06 00 	mov	6(r10),	r13	;

0000739c <.Loc.144.1>:
    739c:	07 4d       	mov	r13,	r7	;
    739e:	0d 93       	cmp	#0,	r13	;r3 As==00
    73a0:	50 34       	jge	$+162    	;abs 0x7442

000073a2 <.Loc.144.1>:
    73a2:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    73a6:	06 43       	clr	r6		;
    73a8:	06 8e       	sub	r14,	r6	;
    73aa:	0e 46       	mov	r6,	r14	;
    73ac:	0f 46       	mov	r6,	r15	;
    73ae:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000073b2 <.Loc.144.1>:
    73b2:	0f 9d       	cmp	r13,	r15	;
    73b4:	04 38       	jl	$+10     	;abs 0x73be

000073b6 <.Loc.144.1>:
    73b6:	0d 9f       	cmp	r15,	r13	;
    73b8:	20 20       	jnz	$+66     	;abs 0x73fa
    73ba:	06 9c       	cmp	r12,	r6	;
    73bc:	1e 2c       	jc	$+62     	;abs 0x73fa

000073be <.L32>:
            {
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    73be:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    73c2:	06 48       	mov	r8,	r6	;
    73c4:	07 43       	clr	r7		;

000073c6 <.Loc.146.1>:
    73c6:	4e 43       	clr.b	r14		;
    73c8:	4f 43       	clr.b	r15		;
    73ca:	0e 8c       	sub	r12,	r14	;
    73cc:	0f 7d       	subc	r13,	r15	;

000073ce <.Loc.146.1>:
    73ce:	0f 93       	cmp	#0,	r15	;r3 As==00
    73d0:	0c 38       	jl	$+26     	;abs 0x73ea
    73d2:	0f 93       	cmp	#0,	r15	;r3 As==00
    73d4:	02 20       	jnz	$+6      	;abs 0x73da
    73d6:	0e 96       	cmp	r6,	r14	;
    73d8:	08 28       	jnc	$+18     	;abs 0x73ea

000073da <.L33>:
    73da:	06 9e       	cmp	r14,	r6	;
    73dc:	17 20       	jnz	$+48     	;abs 0x740c
    73de:	0f 93       	cmp	#0,	r15	;r3 As==00
    73e0:	15 20       	jnz	$+44     	;abs 0x740c

000073e2 <.Loc.146.1>:
    73e2:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    73e6:	02 00 
    73e8:	12 2c       	jc	$+38     	;abs 0x740e

000073ea <.L17>:
                {
                    min_wkup = -wkup_timing[i].data;
    73ea:	4e 43       	clr.b	r14		;
    73ec:	0e 8c       	sub	r12,	r14	;
    73ee:	82 4e 5a 1c 	mov	r14,	&0x1c5a	;

000073f2 <.L40>:
            if (wkup_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
                {
                    min_wkup = wkup_timing[i].data;
                    nxt_wkup = wkup_timing[i].thread_id;
    73f2:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    73f6:	5c 1c 
    73f8:	09 3c       	jmp	$+20     	;abs 0x740c

000073fa <.L15>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    73fa:	07 4d       	mov	r13,	r7	;
    73fc:	0d 9f       	cmp	r15,	r13	;
    73fe:	04 38       	jl	$+10     	;abs 0x7408
    7400:	0f 9d       	cmp	r13,	r15	;
    7402:	04 20       	jnz	$+10     	;abs 0x740c
    7404:	0c 96       	cmp	r6,	r12	;
    7406:	02 2c       	jc	$+6      	;abs 0x740c

00007408 <.L34>:
    7408:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

0000740c <.L30>:
    740c:	4f 43       	clr.b	r15		;

0000740e <.L11>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    740e:	4c 49       	mov.b	r9,	r12	;
    7410:	5c 53       	inc.b	r12		;
    7412:	49 4c       	mov.b	r12,	r9	;

00007414 <.LVL17>:
    7414:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00007418 <.Loc.127.1>:
    7418:	7c 90 03 00 	cmp.b	#3,	r12	;
    741c:	9f 23       	jnz	$-192    	;abs 0x735c

0000741e <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    741e:	0f 93       	cmp	#0,	r15	;r3 As==00
    7420:	2d 20       	jnz	$+92     	;abs 0x747c

00007422 <.Loc.166.1>:
    {
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    7422:	5d 42 5c 1c 	mov.b	&0x1c5c,r13	;0x1c5c
    7426:	4c 43       	clr.b	r12		;

00007428 <.LVL18>:
    7428:	b0 12 84 7e 	call	#32388		;#0x7e84

0000742c <.LVL19>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    742c:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    7430:	4c 43       	clr.b	r12		;
    7432:	b0 12 92 7e 	call	#32402		;#0x7e92

00007436 <.Loc.171.1>:
        //set the new pending ISR timer.
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    7436:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    743a:	b0 12 c2 7c 	call	#31938		;#0x7cc2

0000743e <.L10>:
    }
    //no pending wake up timer was found.
    else stop_timer();


}
    743e:	46 17       	popm	#5,	r10	;16-bit words

00007440 <.LCFI7>:
    7440:	30 41       	ret			

00007442 <.L13>:
            if (wkup_timing[i].data > 0)
    7442:	0e 4c       	mov	r12,	r14	;
    7444:	0e dd       	bis	r13,	r14	;
    7446:	4f 43       	clr.b	r15		;
    7448:	0e 93       	cmp	#0,	r14	;r3 As==00
    744a:	e1 27       	jz	$-60     	;abs 0x740e

0000744c <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    744c:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    7450:	0e 48       	mov	r8,	r14	;
    7452:	0f 43       	clr	r15		;

00007454 <.Loc.155.1>:
    7454:	0d 93       	cmp	#0,	r13	;r3 As==00
    7456:	0f 38       	jl	$+32     	;abs 0x7476
    7458:	0d 93       	cmp	#0,	r13	;r3 As==00
    745a:	03 20       	jnz	$+8      	;abs 0x7462
    745c:	07 4c       	mov	r12,	r7	;
    745e:	0c 9e       	cmp	r14,	r12	;
    7460:	0a 28       	jnc	$+22     	;abs 0x7476

00007462 <.L35>:
    7462:	07 4c       	mov	r12,	r7	;
    7464:	0c 9e       	cmp	r14,	r12	;
    7466:	d2 23       	jnz	$-90     	;abs 0x740c
    7468:	0d 9f       	cmp	r15,	r13	;
    746a:	d0 23       	jnz	$-94     	;abs 0x740c
    746c:	4f 43       	clr.b	r15		;

0000746e <.Loc.155.1>:
    746e:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    7472:	02 00 
    7474:	cc 2f       	jc	$-102    	;abs 0x740e

00007476 <.L21>:
                    min_wkup = wkup_timing[i].data;
    7476:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;
    747a:	bb 3f       	jmp	$-136    	;abs 0x73f2

0000747c <.L24>:
    else stop_timer();
    747c:	b0 12 b2 7c 	call	#31922		;#0x7cb2

00007480 <.LVL24>:
}
    7480:	de 3f       	jmp	$-66     	;abs 0x743e

00007482 <set_wkup_timer>:

// sets a one-shot timer using Timer A2 
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    7482:	2a 15       	pushm	#3,	r10	;16-bit words

00007484 <.LCFI9>:
    7484:	21 83       	decd	r1		;

00007486 <.LCFI10>:
    7486:	49 4c       	mov.b	r12,	r9	;

00007488 <.Loc.182.1>:
    uint8_t i,cmpl = 0;

    //fetch from persistent buffer to local variables 
    unpack_wkup_to_local();
    7488:	81 4d 00 00 	mov	r13,	0(r1)	;
    748c:	b0 12 18 73 	call	#29464		;#0x7318

00007490 <.LVL27>:

    //init the timer 
    //TODO:check if needed 
    stop_timer();
    7490:	b0 12 b2 7c 	call	#31922		;#0x7cb2

00007494 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    7494:	2e 41       	mov	@r1,	r14	;
    7496:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    749a:	22 24       	jz	$+70     	;abs 0x74e0

0000749c <.Loc.192.1>:
    749c:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    74a0:	41 24       	jz	$+132    	;abs 0x7524

000074a2 <.Loc.192.1>:
    74a2:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    74a6:	41 24       	jz	$+132    	;abs 0x752a

000074a8 <.Loc.192.1>:
    
    }else{

        //buffer is full
        //TODO: ADD failcheck 
        wkup_timing[2].data = ticks;
    74a8:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    74ac:	82 43 4e 1c 	mov	#0,	&0x1c4e	;r3 As==00

000074b0 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    74b0:	4f 43       	clr.b	r15		;
    74b2:	4d 43       	clr.b	r13		;
    74b4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    74b6:	b0 12 a2 7d 	call	#32162		;#0x7da2

000074ba <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    74ba:	c2 49 4a 1c 	mov.b	r9,	&0x1c4a	;

000074be <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    74be:	4e 49       	mov.b	r9,	r14	;
    74c0:	4d 43       	clr.b	r13		;
    74c2:	7c 40 03 00 	mov.b	#3,	r12	;
    74c6:	b0 12 f4 7d 	call	#32244		;#0x7df4

000074ca <.L47>:
        refresh_wkup_timers();
    74ca:	b0 12 52 73 	call	#29522		;#0x7352

000074ce <.Loc.222.1>:
        refresh_wkup_timers();
    }

    _pers_timer_update_lock(WKUP);
    74ce:	4c 43       	clr.b	r12		;
    74d0:	b0 12 a0 7e 	call	#32416		;#0x7ea0

000074d4 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    74d4:	4c 43       	clr.b	r12		;
    74d6:	b0 12 86 7f 	call	#32646		;#0x7f86

000074da <.Loc.224.1>:
}
    74da:	21 53       	incd	r1		;

000074dc <.LCFI11>:
    74dc:	28 17       	popm	#3,	r10	;16-bit words

000074de <.LCFI12>:
    74de:	30 41       	ret			

000074e0 <.L44>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    74e0:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

000074e4 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    74e4:	0d 4a       	mov	r10,	r13	;

000074e6 <.L42>:
            wkup_timing[i].data = ticks;
    74e6:	0c 4d       	mov	r13,	r12	;
    74e8:	5c 06       	rlam	#2,	r12	;
    74ea:	0c 5d       	add	r13,	r12	;
    74ec:	5c 02       	rlam	#1,	r12	;
    74ee:	08 4c       	mov	r12,	r8	;
    74f0:	8c 4e 38 1c 	mov	r14,	7224(r12); 0x1c38
    74f4:	8c 43 3a 1c 	mov	#0,	7226(r12);r3 As==00, 0x1c3a

000074f8 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    74f8:	4f 43       	clr.b	r15		;
    74fa:	4d 43       	clr.b	r13		;
    74fc:	4c 4a       	mov.b	r10,	r12	;
    74fe:	b0 12 a2 7d 	call	#32162		;#0x7da2

00007502 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    7502:	c8 49 36 1c 	mov.b	r9,	7222(r8); 0x1c36

00007506 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    7506:	4e 49       	mov.b	r9,	r14	;
    7508:	4d 43       	clr.b	r13		;
    750a:	4c 4a       	mov.b	r10,	r12	;
    750c:	b0 12 f4 7d 	call	#32244		;#0x7df4

00007510 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    7510:	98 43 34 1c 	mov	#1,	7220(r8);r3 As==01, 0x1c34

00007514 <.Loc.196.1>:
            wkup_timing[i].data = ticks;
    7514:	38 50 34 1c 	add	#7220,	r8	;#0x1c34

00007518 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    7518:	5e 43       	mov.b	#1,	r14	;r3 As==01
    751a:	4d 43       	clr.b	r13		;
    751c:	4c 4a       	mov.b	r10,	r12	;
    751e:	b0 12 3e 7e 	call	#32318		;#0x7e3e
    7522:	d3 3f       	jmp	$-88     	;abs 0x74ca

00007524 <.L45>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7524:	5a 43       	mov.b	#1,	r10	;r3 As==01

00007526 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    7526:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7528:	de 3f       	jmp	$-66     	;abs 0x74e6

0000752a <.L46>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    752a:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000752c <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    752c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    752e:	db 3f       	jmp	$-72     	;abs 0x74e6

00007530 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    7530:	4d 4c       	mov.b	r12,	r13	;

00007532 <.Loc.236.1>:
    
    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    7532:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    7536:	13 24       	jz	$+40     	;abs 0x755e

00007538 <.Loc.237.1>:
    7538:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    753c:	13 24       	jz	$+40     	;abs 0x7564

0000753e <.Loc.237.1>:
    753e:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    7542:	0c 20       	jnz	$+26     	;abs 0x755c

00007544 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7544:	6c 43       	mov.b	#2,	r12	;r3 As==10

00007546 <.LVL48>:
        if (xpr_timing[i].thread_id == thread_id){
    7546:	6e 43       	mov.b	#2,	r14	;r3 As==10

00007548 <.L49>:
            xpr_timing[i].status = NOT_USED;
    7548:	0d 4e       	mov	r14,	r13	;

0000754a <.LVL50>:
    754a:	5d 06       	rlam	#2,	r13	;
    754c:	0d 5e       	add	r14,	r13	;
    754e:	5d 02       	rlam	#1,	r13	;
    7550:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00007554 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    7554:	4e 43       	clr.b	r14		;
    7556:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7558:	b0 12 3e 7e 	call	#32318		;#0x7e3e

0000755c <.L48>:
            break;
        }    
    }

}
    755c:	30 41       	ret			

0000755e <.L51>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    755e:	4c 43       	clr.b	r12		;

00007560 <.LVL53>:
        if (xpr_timing[i].thread_id == thread_id){
    7560:	4e 43       	clr.b	r14		;
    7562:	f2 3f       	jmp	$-26     	;abs 0x7548

00007564 <.L52>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7564:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007566 <.LVL55>:
        if (xpr_timing[i].thread_id == thread_id){
    7566:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7568:	ef 3f       	jmp	$-32     	;abs 0x7548

0000756a <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    756a:	1a 15       	pushm	#2,	r10	;16-bit words

0000756c <.LCFI14>:
    756c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007570 <.LCFI15>:
    7570:	49 43       	clr.b	r9		;

00007572 <.L54>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    7572:	0a 49       	mov	r9,	r10	;
    7574:	5a 06       	rlam	#2,	r10	;
    7576:	0a 59       	add	r9,	r10	;
    7578:	5a 02       	rlam	#1,	r10	;
    757a:	3a 50 16 1c 	add	#7190,	r10	;#0x1c16
    757e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7580:	4d 49       	mov.b	r9,	r13	;
    7582:	0c 41       	mov	r1,	r12	;
    7584:	b0 12 c8 7f 	call	#32712		;#0x7fc8
    7588:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    758c:	0d 41       	mov	r1,	r13	;
    758e:	0c 4a       	mov	r10,	r12	;
    7590:	b0 12 04 81 	call	#-32508	;#0x8104

00007594 <.LVL59>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7594:	19 53       	inc	r9		;

00007596 <.Loc.252.1>:
    7596:	39 90 03 00 	cmp	#3,	r9	;
    759a:	eb 23       	jnz	$-40     	;abs 0x7572

0000759c <.Loc.257.1>:
    }

}
    759c:	31 50 0a 00 	add	#10,	r1	;#0x000a

000075a0 <.LCFI16>:
    75a0:	19 17       	popm	#2,	r10	;16-bit words

000075a2 <.LCFI17>:
    75a2:	30 41       	ret			

000075a4 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    75a4:	6a 15       	pushm	#7,	r10	;16-bit words

000075a6 <.LCFI18>:
    75a6:	47 43       	clr.b	r7		;

000075a8 <.Loc.261.1>:
    
    uint8_t i,first = 1;
    uint8_t nxt_xpr;
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    75a8:	3a 40 16 1c 	mov	#7190,	r10	;#0x1c16

000075ac <.Loc.261.1>:
    uint8_t i,first = 1;
    75ac:	5c 43       	mov.b	#1,	r12	;r3 As==01

000075ae <.Loc.265.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    75ae:	46 43       	clr.b	r6		;

000075b0 <.L64>:
    {

        if (xpr_timing[i].status == USED)
    75b0:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    75b4:	4a 20       	jnz	$+150    	;abs 0x764a

000075b6 <.Loc.271.1>:
        {
            
            if (first)
    75b6:	14 4a 04 00 	mov	4(r10),	r4	;
    75ba:	15 4a 06 00 	mov	6(r10),	r5	;

000075be <.Loc.271.1>:
    75be:	0c 93       	cmp	#0,	r12	;r3 As==00
    75c0:	04 24       	jz	$+10     	;abs 0x75ca

000075c2 <.LVL63>:
            {
                min_xpr = xpr_timing[i].data;
                nxt_xpr = xpr_timing[i].thread_id;
    75c2:	57 4a 02 00 	mov.b	2(r10),	r7	;

000075c6 <.LVL64>:
                min_xpr = xpr_timing[i].data;
    75c6:	09 44       	mov	r4,	r9	;
    75c8:	08 45       	mov	r5,	r8	;

000075ca <.L58>:
                first = 0;
            }
            
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    75ca:	b0 12 4c 7d 	call	#32076		;#0x7d4c

000075ce <.Loc.278.1>:
    75ce:	0e 44       	mov	r4,	r14	;
    75d0:	0f 45       	mov	r5,	r15	;
    75d2:	0e 8c       	sub	r12,	r14	;
    75d4:	0f 7d       	subc	r13,	r15	;

000075d6 <.Loc.278.1>:
    75d6:	8a 4e 04 00 	mov	r14,	4(r10)	;
    75da:	8a 4f 06 00 	mov	r15,	6(r10)	;

000075de <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    75de:	6d 43       	mov.b	#2,	r13	;r3 As==10
    75e0:	4c 46       	mov.b	r6,	r12	;
    75e2:	b0 12 a2 7d 	call	#32162		;#0x7da2

000075e6 <.Loc.281.1>:

            if (xpr_timing[i].data <= 0)
    75e6:	4c 43       	clr.b	r12		;
    75e8:	1c 9a 06 00 	cmp	6(r10),	r12	;
    75ec:	10 38       	jl	$+34     	;abs 0x760e
    75ee:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    75f2:	03 20       	jnz	$+8      	;abs 0x75fa
    75f4:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    75f8:	0a 20       	jnz	$+22     	;abs 0x760e

000075fa <.L70>:
            {
                //evict thread 
                //TODO:fix bug to disable ISR
                //TODO:find a more elegant way??
                //__stop_thread(__get_thread(xpr_timing[i].thread_id));
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    75fa:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    75fe:	b0 12 2c 71 	call	#28972		;#0x712c
    7602:	b0 12 d2 70 	call	#28882		;#0x70d2

00007606 <.Loc.289.1>:
                //update struct
                clear_xpr_status(xpr_timing[i].thread_id);
    7606:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    760a:	b0 12 30 75 	call	#30000		;#0x7530

0000760e <.L59>:
            }

            if (xpr_timing[i].data > 0)
    760e:	1e 4a 04 00 	mov	4(r10),	r14	;
    7612:	1d 4a 06 00 	mov	6(r10),	r13	;

00007616 <.Loc.292.1>:
    7616:	4c 43       	clr.b	r12		;
    7618:	0c 9d       	cmp	r13,	r12	;
    761a:	04 38       	jl	$+10     	;abs 0x7624
    761c:	0d 93       	cmp	#0,	r13	;r3 As==00
    761e:	14 20       	jnz	$+42     	;abs 0x7648
    7620:	0e 93       	cmp	#0,	r14	;r3 As==00
    7622:	12 24       	jz	$+38     	;abs 0x7648

00007624 <.L71>:
            {   //TODO:priority convention
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7624:	0d 98       	cmp	r8,	r13	;
    7626:	0c 38       	jl	$+26     	;abs 0x7640
    7628:	08 9d       	cmp	r13,	r8	;
    762a:	02 20       	jnz	$+6      	;abs 0x7630
    762c:	0e 99       	cmp	r9,	r14	;
    762e:	08 28       	jnc	$+18     	;abs 0x7640

00007630 <.L72>:
    7630:	4c 43       	clr.b	r12		;

00007632 <.Loc.294.1>:
    7632:	0e 99       	cmp	r9,	r14	;
    7634:	0a 20       	jnz	$+22     	;abs 0x764a
    7636:	0d 98       	cmp	r8,	r13	;
    7638:	08 20       	jnz	$+18     	;abs 0x764a

0000763a <.Loc.294.1>:
    763a:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    763e:	05 2c       	jc	$+12     	;abs 0x764a

00007640 <.L62>:
                {
                    min_xpr = xpr_timing[i].data;
                    nxt_xpr = xpr_timing[i].thread_id;
    7640:	57 4a 02 00 	mov.b	2(r10),	r7	;

00007644 <.LVL72>:
    7644:	09 4e       	mov	r14,	r9	;
    7646:	08 4d       	mov	r13,	r8	;

00007648 <.L67>:
    7648:	4c 43       	clr.b	r12		;

0000764a <.L57>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    764a:	4d 46       	mov.b	r6,	r13	;
    764c:	5d 53       	inc.b	r13		;
    764e:	46 4d       	mov.b	r13,	r6	;

00007650 <.LVL75>:
    7650:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00007654 <.Loc.265.1>:
    7654:	7d 90 03 00 	cmp.b	#3,	r13	;
    7658:	ab 23       	jnz	$-168    	;abs 0x75b0

0000765a <.Loc.303.1>:
                }
            }
       }
    }

    if (!first)
    765a:	0c 93       	cmp	#0,	r12	;r3 As==00
    765c:	0d 20       	jnz	$+28     	;abs 0x7678

0000765e <.Loc.304.1>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    765e:	4d 47       	mov.b	r7,	r13	;

00007660 <.LVL76>:
    7660:	6c 43       	mov.b	#2,	r12	;r3 As==10

00007662 <.LVL77>:
    7662:	b0 12 84 7e 	call	#32388		;#0x7e84

00007666 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr); 
    7666:	0d 49       	mov	r9,	r13	;
    7668:	6c 43       	mov.b	#2,	r12	;r3 As==10
    766a:	b0 12 92 7e 	call	#32402		;#0x7e92

0000766e <.Loc.308.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    766e:	0c 49       	mov	r9,	r12	;
    7670:	b0 12 d8 7c 	call	#31960		;#0x7cd8

00007674 <.L56>:
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();

}
    7674:	64 17       	popm	#7,	r10	;16-bit words

00007676 <.LCFI19>:
    7676:	30 41       	ret			

00007678 <.L65>:
    else stop_timer_xpr();
    7678:	b0 12 ee 7c 	call	#31982		;#0x7cee

0000767c <.LVL82>:
}
    767c:	fb 3f       	jmp	$-8      	;abs 0x7674

0000767e <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    767e:	5a 15       	pushm	#6,	r10	;16-bit words

00007680 <.LCFI21>:
    7680:	48 4c       	mov.b	r12,	r8	;
    7682:	09 4d       	mov	r13,	r9	;
    7684:	07 4e       	mov	r14,	r7	;

00007686 <.Loc.318.1>:

    uint8_t i,cmpl = 0;

    //__set_xpr_timer(__get_thread(thread_id), ticks);

    unpack_xpr_to_local();
    7686:	b0 12 6a 75 	call	#30058		;#0x756a

0000768a <.LVL85>:

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    768a:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    768e:	1b 24       	jz	$+56     	;abs 0x76c6

00007690 <.Loc.324.1>:
    7690:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    7694:	43 24       	jz	$+136    	;abs 0x771c

00007696 <.Loc.324.1>:
    7696:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    769a:	43 24       	jz	$+136    	;abs 0x7722

0000769c <.Loc.324.1>:
    
    }else{

        //failure 
        //TODO: ADD fail check 
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    769c:	0e 49       	mov	r9,	r14	;
    769e:	0f 47       	mov	r7,	r15	;
    76a0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    76a2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    76a4:	b0 12 a2 7d 	call	#32162		;#0x7da2

000076a8 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    76a8:	4e 48       	mov.b	r8,	r14	;
    76aa:	6d 43       	mov.b	#2,	r13	;r3 As==10
    76ac:	6c 43       	mov.b	#2,	r12	;r3 As==10
    76ae:	b0 12 f4 7d 	call	#32244		;#0x7df4

000076b2 <.L83>:
        refresh_xpr_timers();
    76b2:	b0 12 a4 75 	call	#30116		;#0x75a4

000076b6 <.Loc.352.1>:
        refresh_xpr_timers();
    }

    _pers_timer_update_lock(XPR);
    76b6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    76b8:	b0 12 a0 7e 	call	#32416		;#0x7ea0

000076bc <.Loc.353.1>:
    _pers_timer_commit(XPR);
    76bc:	6c 43       	mov.b	#2,	r12	;r3 As==10
    76be:	b0 12 86 7f 	call	#32646		;#0x7f86

000076c2 <.Loc.354.1>:
}
    76c2:	55 17       	popm	#6,	r10	;16-bit words

000076c4 <.LCFI22>:
    76c4:	30 41       	ret			

000076c6 <.L80>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    76c6:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

000076ca <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    76ca:	06 4a       	mov	r10,	r6	;

000076cc <.L78>:
            xpr_timing[i].data = ticks + __get_time();
    76cc:	35 40 4c 7d 	mov	#32076,	r5	;#0x7d4c
    76d0:	85 12       	call	r5		;

000076d2 <.Loc.328.1>:
    76d2:	0e 46       	mov	r6,	r14	;
    76d4:	5e 06       	rlam	#2,	r14	;
    76d6:	0e 56       	add	r6,	r14	;
    76d8:	5e 02       	rlam	#1,	r14	;
    76da:	06 4e       	mov	r14,	r6	;

000076dc <.Loc.328.1>:
    76dc:	0c 59       	add	r9,	r12	;
    76de:	8e 4c 1a 1c 	mov	r12,	7194(r14); 0x1c1a
    76e2:	0d 67       	addc	r7,	r13	;
    76e4:	8e 4d 1c 1c 	mov	r13,	7196(r14); 0x1c1c

000076e8 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    76e8:	85 12       	call	r5		;

000076ea <.Loc.329.1>:
    76ea:	0e 4c       	mov	r12,	r14	;
    76ec:	0e 59       	add	r9,	r14	;
    76ee:	0f 4d       	mov	r13,	r15	;
    76f0:	0f 67       	addc	r7,	r15	;
    76f2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    76f4:	4c 4a       	mov.b	r10,	r12	;
    76f6:	b0 12 a2 7d 	call	#32162		;#0x7da2

000076fa <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    76fa:	c6 48 18 1c 	mov.b	r8,	7192(r6); 0x1c18

000076fe <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    76fe:	4e 48       	mov.b	r8,	r14	;
    7700:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7702:	4c 4a       	mov.b	r10,	r12	;
    7704:	b0 12 f4 7d 	call	#32244		;#0x7df4

00007708 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    7708:	96 43 16 1c 	mov	#1,	7190(r6);r3 As==01, 0x1c16

0000770c <.Loc.328.1>:
            xpr_timing[i].data = ticks + __get_time();
    770c:	36 50 16 1c 	add	#7190,	r6	;#0x1c16

00007710 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    7710:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7712:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7714:	4c 4a       	mov.b	r10,	r12	;
    7716:	b0 12 3e 7e 	call	#32318		;#0x7e3e
    771a:	cb 3f       	jmp	$-104    	;abs 0x76b2

0000771c <.L81>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    771c:	5a 43       	mov.b	#1,	r10	;r3 As==01

0000771e <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    771e:	56 43       	mov.b	#1,	r6	;r3 As==01
    7720:	d5 3f       	jmp	$-84     	;abs 0x76cc

00007722 <.L82>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    7722:	6a 43       	mov.b	#2,	r10	;r3 As==10

00007724 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    7724:	66 43       	mov.b	#2,	r6	;r3 As==10
    7726:	d2 3f       	jmp	$-90     	;abs 0x76cc

00007728 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    7728:	0a 15       	pushm	#1,	r10	;16-bit words

0000772a <.LCFI24>:
    772a:	4a 4c       	mov.b	r12,	r10	;

0000772c <.Loc.361.1>:
   
    //__set_xpr_timer(__get_thread(thread_id),0);

    unpack_xpr_to_local();
    772c:	b0 12 6a 75 	call	#30058		;#0x756a

00007730 <.LVL104>:

    clear_xpr_status(thread_id);
    7730:	4c 4a       	mov.b	r10,	r12	;
    7732:	b0 12 30 75 	call	#30000		;#0x7530

00007736 <.Loc.366.1>:

    //TODO:care infinite loop?
    refresh_xpr_timers();
    7736:	b0 12 a4 75 	call	#30116		;#0x75a4

0000773a <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    773a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    773c:	b0 12 a0 7e 	call	#32416		;#0x7ea0

00007740 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    7740:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7742:	b0 12 86 7f 	call	#32646		;#0x7f86

00007746 <.Loc.371.1>:

}
    7746:	0a 17       	popm	#1,	r10	;16-bit words

00007748 <.LCFI25>:
    7748:	30 41       	ret			

0000774a <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    774a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000774e <.LCFI26>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    774e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7750:	4d 43       	clr.b	r13		;
    7752:	0c 41       	mov	r1,	r12	;
    7754:	b0 12 c8 7f 	call	#32712		;#0x7fc8
    7758:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    775c:	0d 41       	mov	r1,	r13	;
    775e:	3c 40 0c 1c 	mov	#7180,	r12	;#0x1c0c
    7762:	b0 12 04 81 	call	#-32508	;#0x8104

00007766 <.Loc.383.1>:
    }

}
    7766:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000776a <.LCFI27>:
    776a:	30 41       	ret			

0000776c <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    776c:	2a 15       	pushm	#3,	r10	;16-bit words

0000776e <.LCFI28>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    776e:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    7772:	7d 20       	jnz	$+252    	;abs 0x786e

00007774 <.Loc.463.1>:
        {
            
            if (first)
            {
                min_pdc = pdc_timing[i].data;
    7774:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    7778:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000777c <.Loc.465.1>:
    777c:	82 48 52 1c 	mov	r8,	&0x1c52	;

00007780 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    7780:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    7784:	54 1c 

00007786 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time(); 
    7786:	b0 12 4c 7d 	call	#32076		;#0x7d4c

0000778a <.Loc.471.1>:
    778a:	0e 48       	mov	r8,	r14	;
    778c:	0f 49       	mov	r9,	r15	;
    778e:	0e 8c       	sub	r12,	r14	;
    7790:	0f 7d       	subc	r13,	r15	;

00007792 <.Loc.471.1>:
    7792:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    7796:	82 4f 12 1c 	mov	r15,	&0x1c12	;

0000779a <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    779a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    779c:	4c 43       	clr.b	r12		;
    779e:	b0 12 a2 7d 	call	#32162		;#0x7da2

000077a2 <.Loc.474.1>:
            
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    77a2:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    77a6:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

000077aa <.Loc.474.1>:
    77aa:	09 4d       	mov	r13,	r9	;
    77ac:	0d 93       	cmp	#0,	r13	;r3 As==00
    77ae:	44 34       	jge	$+138    	;abs 0x7838

000077b0 <.Loc.474.1>:
    77b0:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    77b4:	08 43       	clr	r8		;
    77b6:	08 8e       	sub	r14,	r8	;
    77b8:	0e 48       	mov	r8,	r14	;
    77ba:	0f 48       	mov	r8,	r15	;
    77bc:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000077c0 <.Loc.474.1>:
    77c0:	0f 9d       	cmp	r13,	r15	;
    77c2:	04 38       	jl	$+10     	;abs 0x77cc

000077c4 <.Loc.474.1>:
    77c4:	0d 9f       	cmp	r15,	r13	;
    77c6:	20 20       	jnz	$+66     	;abs 0x7808
    77c8:	08 9c       	cmp	r12,	r8	;
    77ca:	1e 2c       	jc	$+62     	;abs 0x7808

000077cc <.L100>:
            {
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    77cc:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    77d0:	08 4a       	mov	r10,	r8	;
    77d2:	09 43       	clr	r9		;

000077d4 <.Loc.476.1>:
    77d4:	4e 43       	clr.b	r14		;
    77d6:	4f 43       	clr.b	r15		;
    77d8:	0e 8c       	sub	r12,	r14	;
    77da:	0f 7d       	subc	r13,	r15	;

000077dc <.Loc.476.1>:
    77dc:	0f 93       	cmp	#0,	r15	;r3 As==00
    77de:	0c 38       	jl	$+26     	;abs 0x77f8
    77e0:	0f 93       	cmp	#0,	r15	;r3 As==00
    77e2:	02 20       	jnz	$+6      	;abs 0x77e8
    77e4:	0e 98       	cmp	r8,	r14	;
    77e6:	08 28       	jnc	$+18     	;abs 0x77f8

000077e8 <.L101>:
    77e8:	08 9e       	cmp	r14,	r8	;
    77ea:	17 20       	jnz	$+48     	;abs 0x781a
    77ec:	0f 93       	cmp	#0,	r15	;r3 As==00
    77ee:	15 20       	jnz	$+44     	;abs 0x781a

000077f0 <.Loc.476.1>:
    77f0:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    77f4:	0e 1c 
    77f6:	11 2c       	jc	$+36     	;abs 0x781a

000077f8 <.L92>:
                {
                    min_pdc = -pdc_timing[i].data;
    77f8:	4e 43       	clr.b	r14		;
    77fa:	0e 8c       	sub	r12,	r14	;
    77fc:	82 4e 52 1c 	mov	r14,	&0x1c52	;

00007800 <.L107>:
            if (pdc_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
                {
                    min_pdc = pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
    7800:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    7804:	54 1c 

00007806 <.Loc.494.1>:
                }
            }
       }
    }

    if (!first)
    7806:	09 3c       	jmp	$+20     	;abs 0x781a

00007808 <.L90>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    7808:	09 4d       	mov	r13,	r9	;
    780a:	0d 9f       	cmp	r15,	r13	;
    780c:	04 38       	jl	$+10     	;abs 0x7816
    780e:	0f 9d       	cmp	r13,	r15	;
    7810:	04 20       	jnz	$+10     	;abs 0x781a
    7812:	0c 98       	cmp	r8,	r12	;
    7814:	02 2c       	jc	$+6      	;abs 0x781a

00007816 <.L102>:
    7816:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000781a <.L94>:
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    781a:	5d 42 54 1c 	mov.b	&0x1c54,r13	;0x1c54
    781e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7820:	b0 12 84 7e 	call	#32388		;#0x7e84

00007824 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    7824:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    7828:	5c 43       	mov.b	#1,	r12	;r3 As==01
    782a:	b0 12 92 7e 	call	#32402		;#0x7e92

0000782e <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    782e:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    7832:	b0 12 f4 7c 	call	#31988		;#0x7cf4

00007836 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    7836:	1d 3c       	jmp	$+60     	;abs 0x7872

00007838 <.L88>:
            if (pdc_timing[i].data > 0)
    7838:	0e 4c       	mov	r12,	r14	;
    783a:	0e dd       	bis	r13,	r14	;
    783c:	0e 93       	cmp	#0,	r14	;r3 As==00
    783e:	ed 27       	jz	$-36     	;abs 0x781a

00007840 <.Loc.485.1>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7840:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    7844:	0e 4a       	mov	r10,	r14	;
    7846:	0f 43       	clr	r15		;

00007848 <.Loc.485.1>:
    7848:	0d 93       	cmp	#0,	r13	;r3 As==00
    784a:	0e 38       	jl	$+30     	;abs 0x7868
    784c:	0d 93       	cmp	#0,	r13	;r3 As==00
    784e:	03 20       	jnz	$+8      	;abs 0x7856
    7850:	09 4c       	mov	r12,	r9	;
    7852:	0c 9e       	cmp	r14,	r12	;
    7854:	09 28       	jnc	$+20     	;abs 0x7868

00007856 <.L103>:
    7856:	09 4c       	mov	r12,	r9	;
    7858:	0c 9e       	cmp	r14,	r12	;
    785a:	df 23       	jnz	$-64     	;abs 0x781a
    785c:	0d 9f       	cmp	r15,	r13	;
    785e:	dd 23       	jnz	$-68     	;abs 0x781a

00007860 <.Loc.485.1>:
    7860:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    7864:	0e 1c 
    7866:	d9 2f       	jc	$-76     	;abs 0x781a

00007868 <.L97>:
                    min_pdc = pdc_timing[i].data;
    7868:	82 4c 52 1c 	mov	r12,	&0x1c52	;
    786c:	c9 3f       	jmp	$-108    	;abs 0x7800

0000786e <.L87>:
    else stop_timer();
    786e:	b0 12 b2 7c 	call	#31922		;#0x7cb2

00007872 <.L86>:
}
    7872:	28 17       	popm	#3,	r10	;16-bit words

00007874 <.LCFI29>:
    7874:	30 41       	ret			

00007876 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    7876:	2a 15       	pushm	#3,	r10	;16-bit words

00007878 <.LCFI30>:
    7878:	49 4c       	mov.b	r12,	r9	;
    787a:	0a 4d       	mov	r13,	r10	;

0000787c <.Loc.392.1>:
    unpack_pdc_to_local();
    787c:	b0 12 4a 77 	call	#30538		;#0x774a

00007880 <.LVL127>:
        if (pdc_timing[i].status == NOT_USED)
    7880:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    7884:	2e 20       	jnz	$+94     	;abs 0x78e2

00007886 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    7886:	38 40 2c 71 	mov	#28972,	r8	;#0x712c
    788a:	4c 49       	mov.b	r9,	r12	;
    788c:	88 12       	call	r8		;
    788e:	0d 4a       	mov	r10,	r13	;
    7890:	b0 12 f8 70 	call	#28920		;#0x70f8

00007894 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    7894:	4c 49       	mov.b	r9,	r12	;
    7896:	88 12       	call	r8		;
    7898:	5d 43       	mov.b	#1,	r13	;r3 As==01
    789a:	b0 12 fe 70 	call	#28926		;#0x70fe

0000789e <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    789e:	0e 4a       	mov	r10,	r14	;
    78a0:	4f 43       	clr.b	r15		;
    78a2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78a4:	4c 43       	clr.b	r12		;
    78a6:	b0 12 a2 7d 	call	#32162		;#0x7da2

000078aa <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    78aa:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    78ae:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

000078b2 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    78b2:	4e 49       	mov.b	r9,	r14	;
    78b4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78b6:	4c 43       	clr.b	r12		;
    78b8:	b0 12 f4 7d 	call	#32244		;#0x7df4

000078bc <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    78bc:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

000078c0 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    78c0:	5e 43       	mov.b	#1,	r14	;r3 As==01
    78c2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78c4:	4c 43       	clr.b	r12		;
    78c6:	b0 12 3e 7e 	call	#32318		;#0x7e3e

000078ca <.Loc.410.1>:
            pdc_timing[i].status = USED;
    78ca:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

000078ce <.L111>:
        refresh_pdc_timers();
    78ce:	b0 12 6c 77 	call	#30572		;#0x776c

000078d2 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    78d2:	5c 43       	mov.b	#1,	r12	;r3 As==01
    78d4:	b0 12 a0 7e 	call	#32416		;#0x7ea0

000078d8 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    78d8:	5c 43       	mov.b	#1,	r12	;r3 As==01
    78da:	b0 12 86 7f 	call	#32646		;#0x7f86

000078de <.Loc.435.1>:
}
    78de:	28 17       	popm	#3,	r10	;16-bit words

000078e0 <.LCFI31>:
    78e0:	30 41       	ret			

000078e2 <.L109>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    78e2:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    78e6:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

000078ea <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    78ea:	0e 4a       	mov	r10,	r14	;
    78ec:	4f 43       	clr.b	r15		;
    78ee:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78f0:	4c 43       	clr.b	r12		;
    78f2:	b0 12 a2 7d 	call	#32162		;#0x7da2

000078f6 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    78f6:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

000078fa <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    78fa:	4e 49       	mov.b	r9,	r14	;
    78fc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78fe:	4c 43       	clr.b	r12		;
    7900:	b0 12 f4 7d 	call	#32244		;#0x7df4
    7904:	e4 3f       	jmp	$-54     	;abs 0x78ce

00007906 <clear_pdc_status>:
void clear_pdc_status(uint8_t thread_id){
    
    uint8_t i; 
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    7906:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    790a:	07 20       	jnz	$+16     	;abs 0x791a

0000790c <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    790c:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007910 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    7910:	4e 43       	clr.b	r14		;
    7912:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7914:	4c 43       	clr.b	r12		;

00007916 <.LVL144>:
    7916:	b0 12 3e 7e 	call	#32318		;#0x7e3e

0000791a <.L112>:

        } 
    }
}
    791a:	30 41       	ret			

0000791c <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    791c:	0a 15       	pushm	#1,	r10	;16-bit words

0000791e <.LCFI33>:
    791e:	4a 4c       	mov.b	r12,	r10	;

00007920 <.Loc.440.1>:
    unpack_pdc_to_local();
    7920:	b0 12 4a 77 	call	#30538		;#0x774a

00007924 <.LVL147>:
    clear_pdc_status(thread_id);
    7924:	4c 4a       	mov.b	r10,	r12	;
    7926:	b0 12 06 79 	call	#30982		;#0x7906

0000792a <.Loc.445.1>:
    refresh_pdc_timers();
    792a:	b0 12 6c 77 	call	#30572		;#0x776c

0000792e <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    792e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7930:	b0 12 a0 7e 	call	#32416		;#0x7ea0

00007934 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    7934:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7936:	b0 12 86 7f 	call	#32646		;#0x7f86

0000793a <.Loc.450.1>:
}
    793a:	0a 17       	popm	#1,	r10	;16-bit words

0000793c <.LCFI34>:
    793c:	30 41       	ret			

0000793e <main>:
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    793e:	b0 12 f0 7b 	call	#31728		;#0x7bf0

00007942 <.Loc.46.1>:

	// if this is the first boot
	if(!__inited){
    7942:	c2 93 e2 66 	cmp.b	#0,	&0x66e2	;r3 As==00
    7946:	08 20       	jnz	$+18     	;abs 0x7958

00007948 <.Loc.48.1>:
	    // init the scheduler state
	    __scheduler_boot_init();
    7948:	b0 12 12 70 	call	#28690		;#0x7012

0000794c <.Loc.50.1>:
	    // init the event handler
	    __events_boot_init();
    794c:	b0 12 a6 79 	call	#31142		;#0x79a6

00007950 <.Loc.57.1>:
	    __get_time_init();
	    //init the timers
	    __timers_init();
#endif
	    // init the applications
	    __app_init();
    7950:	b0 12 62 6d 	call	#28002		;#0x6d62

00007954 <.Loc.59.1>:
	    // the first and initial boot is finished
	    __inited = 1;
    7954:	d2 43 e2 66 	mov.b	#1,	&0x66e2	;r3 As==01

00007958 <.L2>:
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    7958:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000795c <.Loc.68.1>:
    795c:	
0000795e <L0^A>:
    795e:	04 02       	mova	@r2,	r4	;

00007960 <.Loc.68.1>:
    7960:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00007964 <.Loc.68.1>:
    __port_init(1, 4); // Task Execution
    7964:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    7968:	02 02 

0000796a <.Loc.69.1>:
    796a:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    796e:	04 02 

00007970 <.Loc.69.1>:
    7970:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    7974:	02 02 

00007976 <.Loc.69.1>:
    __port_init(3, 5); // Task commit
    7976:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    797a:	22 02 

0000797c <.Loc.70.1>:
    797c:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    7980:	24 02 

00007982 <.Loc.70.1>:
    7982:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    7986:	22 02 

00007988 <.Loc.70.1>:
    __port_init(3, 6); // Task buffer copy
    7988:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    798c:	22 02 

0000798e <.Loc.71.1>:
    798e:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    7992:	24 02 

00007994 <.Loc.71.1>:
    7994:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    7998:	22 02 

0000799a <.Loc.71.1>:
#endif

	// will be called at each reboot of the application
	__app_reboot();
    799a:	b0 12 fe 6f 	call	#28670		;#0x6ffe

0000799e <.Loc.78.1>:

	// activate the scheduler
	__scheduler_run();
    799e:	b0 12 3e 71 	call	#28990		;#0x713e

000079a2 <.Loc.80.1>:

	return 0;
}
    79a2:	4c 43       	clr.b	r12		;
    79a4:	30 41       	ret			

000079a6 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    79a6:	1a 15       	pushm	#2,	r10	;16-bit words

000079a8 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    79a8:	3a 40 64 6c 	mov	#27748,	r10	;#0x6c64
    79ac:	39 40 e4 66 	mov	#26340,	r9	;#0x66e4

000079b0 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    79b0:	0c 4a       	mov	r10,	r12	;
    79b2:	b0 12 d2 7a 	call	#31442		;#0x7ad2

000079b6 <.Loc.56.1>:
        _popped[i] = NULL;
    79b6:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

000079ba <.Loc.53.1>:
    for(i=MAX_THREADS;i>0;i--){
    79ba:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    79be:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000079c2 <.Loc.53.1>:
    79c2:	3a 90 64 67 	cmp	#26468,	r10	;#0x6764
    79c6:	f4 23       	jnz	$-22     	;abs 0x79b0

000079c8 <.Loc.58.1>:
    }
}
    79c8:	19 17       	popm	#2,	r10	;16-bit words

000079ca <.LCFI1>:
    79ca:	30 41       	ret			

000079cc <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    79cc:	5c 42 70 6c 	mov.b	&0x6c70,r12	;0x6c70
    79d0:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    79d2:	13 24       	jz	$+40     	;abs 0x79fa
    79d4:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    79d6:	1e 24       	jz	$+62     	;abs 0x7a14
    79d8:	0c 93       	cmp	#0,	r12	;r3 As==00
    79da:	29 20       	jnz	$+84     	;abs 0x7a2e

000079dc <.Loc.65.1>:
    case EVENT_INSERT:
        __perqueue_push(&_events[_thread->priority], &_event);
    79dc:	1d 42 6e 6c 	mov	&0x6c6e,r13	;0x6c6e

000079e0 <.Loc.65.1>:
    79e0:	6c 4d       	mov.b	@r13,	r12	;
    79e2:	5c 06       	rlam	#2,	r12	;
    79e4:	6d 4d       	mov.b	@r13,	r13	;
    79e6:	0c 5d       	add	r13,	r12	;
    79e8:	5c 06       	rlam	#2,	r12	;
    79ea:	3d 40 64 6c 	mov	#27748,	r13	;#0x6c64
    79ee:	3c 50 64 67 	add	#26468,	r12	;#0x6764
    79f2:	b0 12 2e 7b 	call	#31534		;#0x7b2e

000079f6 <.Loc.66.1>:
        _status = EVENT_COMMIT;
    79f6:	d2 43 70 6c 	mov.b	#1,	&0x6c70	;r3 As==01

000079fa <.L5>:
    case EVENT_COMMIT:
        __perqueue_push_commit(&_events[_thread->priority]);
    79fa:	1d 42 6e 6c 	mov	&0x6c6e,r13	;0x6c6e

000079fe <.Loc.68.1>:
    79fe:	6c 4d       	mov.b	@r13,	r12	;
    7a00:	5c 06       	rlam	#2,	r12	;
    7a02:	6d 4d       	mov.b	@r13,	r13	;
    7a04:	0c 5d       	add	r13,	r12	;
    7a06:	5c 06       	rlam	#2,	r12	;
    7a08:	3c 50 64 67 	add	#26468,	r12	;#0x6764
    7a0c:	b0 12 64 7b 	call	#31588		;#0x7b64

00007a10 <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    7a10:	e2 43 70 6c 	mov.b	#2,	&0x6c70	;r3 As==10

00007a14 <.L6>:
    case EVENT_SIGNAL:
        // if the thread is sleeping, activate it!
        if(_thread->state == THREAD_STOPPED){
    7a14:	1c 42 6e 6c 	mov	&0x6c6e,r12	;0x6c6e
    7a18:	1c 4c 02 00 	mov	2(r12),	r12	;

00007a1c <.Loc.72.1>:
    7a1c:	3c 92       	cmp	#8,	r12	;r2 As==11
    7a1e:	04 20       	jnz	$+10     	;abs 0x7a28

00007a20 <.Loc.73.1>:
            __start_thread(_thread);
    7a20:	1c 42 6e 6c 	mov	&0x6c6e,r12	;0x6c6e
    7a24:	b0 12 10 71 	call	#28944		;#0x7110

00007a28 <.L8>:
        }
        _status = EVENT_DONE;
    7a28:	f2 40 03 00 	mov.b	#3,	&0x6c70	;
    7a2c:	70 6c 

00007a2e <.L4>:
    }
}
    7a2e:	30 41       	ret			

00007a30 <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    7a30:	1d 42 6e 6c 	mov	&0x6c6e,r13	;0x6c6e

00007a34 <.Loc.81.1>:
    7a34:	6c 4d       	mov.b	@r13,	r12	;

00007a36 <.LVL7>:
    7a36:	5c 06       	rlam	#2,	r12	;
    7a38:	6d 4d       	mov.b	@r13,	r13	;
    7a3a:	0c 5d       	add	r13,	r12	;
    7a3c:	5c 06       	rlam	#2,	r12	;
    7a3e:	3c 50 64 67 	add	#26468,	r12	;#0x6764
    7a42:	b0 12 02 7b 	call	#31490		;#0x7b02

00007a46 <.Loc.82.1>:
}
    7a46:	30 41       	ret			

00007a48 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    7a48:	82 4c 6e 6c 	mov	r12,	&0x6c6e	;

00007a4c <.Loc.90.1>:
    _event = *event;
    7a4c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7a50:	3c 40 64 6c 	mov	#27748,	r12	;#0x6c64

00007a54 <.LVL10>:
    7a54:	b0 12 04 81 	call	#-32508	;#0x8104

00007a58 <.LVL11>:
    _status = EVENT_INSERT;
    7a58:	c2 43 70 6c 	mov.b	#0,	&0x6c70	;r3 As==00

00007a5c <.Loc.92.1>:
    __events_commit();
    7a5c:	b0 12 cc 79 	call	#31180		;#0x79cc

00007a60 <.Loc.93.1>:
}
    7a60:	30 41       	ret			

00007a62 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    7a62:	6d 4c       	mov.b	@r12,	r13	;
    7a64:	5d 06       	rlam	#2,	r13	;
    7a66:	6c 4c       	mov.b	@r12,	r12	;

00007a68 <.LVL14>:
    7a68:	0c 5d       	add	r13,	r12	;
    7a6a:	5c 06       	rlam	#2,	r12	;
    7a6c:	3c 50 64 67 	add	#26468,	r12	;#0x6764
    7a70:	b0 12 ec 7a 	call	#31468		;#0x7aec
    7a74:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007a78 <.Loc.97.1>:
    7a78:	3c 53       	add	#-1,	r12	;r3 As==11

00007a7a <.Loc.101.1>:
        return 0;

    return 1;
}
    7a7a:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7a7e:	30 41       	ret			

00007a80 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    7a80:	0a 15       	pushm	#1,	r10	;16-bit words

00007a82 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    7a82:	1c 42 6e 6c 	mov	&0x6c6e,r12	;0x6c6e

00007a86 <.LVL17>:
    7a86:	6a 4c       	mov.b	@r12,	r10	;

00007a88 <.Loc.107.1>:
    7a88:	0c 4a       	mov	r10,	r12	;
    7a8a:	5c 06       	rlam	#2,	r12	;
    7a8c:	0c 5a       	add	r10,	r12	;
    7a8e:	5c 06       	rlam	#2,	r12	;
    7a90:	3c 50 64 67 	add	#26468,	r12	;#0x6764
    7a94:	b0 12 6c 7b 	call	#31596		;#0x7b6c

00007a98 <.Loc.107.1>:
    7a98:	5a 02       	rlam	#1,	r10	;
    7a9a:	8a 4c e4 66 	mov	r12,	26340(r10); 0x66e4

00007a9e <.Loc.108.1>:
    return _popped[_thread->priority];
    7a9e:	1c 42 6e 6c 	mov	&0x6c6e,r12	;0x6c6e
    7aa2:	6c 4c       	mov.b	@r12,	r12	;
    7aa4:	5c 02       	rlam	#1,	r12	;

00007aa6 <.Loc.109.1>:
}
    7aa6:	1c 4c e4 66 	mov	26340(r12),r12	;0x066e4
    7aaa:	0a 17       	popm	#1,	r10	;16-bit words

00007aac <.LCFI3>:
    7aac:	30 41       	ret			

00007aae <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    7aae:	1d 42 6e 6c 	mov	&0x6c6e,r13	;0x6c6e

00007ab2 <.Loc.113.1>:
    7ab2:	6c 4d       	mov.b	@r13,	r12	;

00007ab4 <.LVL20>:
    7ab4:	5c 06       	rlam	#2,	r12	;
    7ab6:	6d 4d       	mov.b	@r13,	r13	;
    7ab8:	0c 5d       	add	r13,	r12	;
    7aba:	5c 06       	rlam	#2,	r12	;
    7abc:	3c 50 64 67 	add	#26468,	r12	;#0x6764
    7ac0:	b0 12 9e 7b 	call	#31646		;#0x7b9e

00007ac4 <.Loc.114.1>:
    _popped[_thread->priority] = NULL;
    7ac4:	1c 42 6e 6c 	mov	&0x6c6e,r12	;0x6c6e
    7ac8:	6c 4c       	mov.b	@r12,	r12	;
    7aca:	5c 02       	rlam	#1,	r12	;
    7acc:	8c 43 e4 66 	mov	#0,	26340(r12);r3 As==00, 0x66e4

00007ad0 <.Loc.115.1>:
}
    7ad0:	30 41       	ret			

00007ad2 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    7ad2:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    7ad6:	10 00 

00007ad8 <.Loc.37.1>:
    queue->_tail ^= queue->_tail;
    7ad8:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    7adc:	11 00 

00007ade <.Loc.38.1>:
    queue->__head ^= queue->__head;
    7ade:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    7ae2:	12 00 

00007ae4 <.Loc.39.1>:
    queue->__tail ^= queue->__tail;
    7ae4:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    7ae8:	13 00 

00007aea <.Loc.40.1>:
}
    7aea:	30 41       	ret			

00007aec <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    7aec:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    7af0:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    7af4:	4c 4d       	mov.b	r13,	r12	;

00007af6 <.LVL2>:
    7af6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7afa:	3c 53       	add	#-1,	r12	;r3 As==11

00007afc <.Loc.49.1>:
        return 1;
    }

    return 0;
}
    7afc:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7b00:	30 41       	ret			

00007b02 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    7b02:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    7b06:	5d 53       	inc.b	r13		;
    7b08:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00007b0c <.Loc.54.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    7b0c:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    7b10:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    7b12:	02 20       	jnz	$+6      	;abs 0x7b18

00007b14 <.Loc.55.1>:
        queue->__tail = 0;
    7b14:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00007b18 <.L4>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    7b18:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    7b1c:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    7b20:	4c 4d       	mov.b	r13,	r12	;

00007b22 <.LVL4>:
    7b22:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7b26:	3c 53       	add	#-1,	r12	;r3 As==11

00007b28 <.Loc.64.1>:
        return 1;
    }

    return 0;
}
    7b28:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    7b2c:	30 41       	ret			

00007b2e <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    7b2e:	0e 4c       	mov	r12,	r14	;

00007b30 <.Loc.68.1>:
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    7b30:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

00007b34 <.LVL6>:
    7b34:	5c 53       	inc.b	r12		;
    7b36:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

00007b3a <.Loc.69.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    7b3a:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    7b3e:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    7b40:	02 20       	jnz	$+6      	;abs 0x7b46

00007b42 <.Loc.70.1>:
        queue->__tail = 0;
    7b42:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

00007b46 <.L6>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    7b46:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

00007b4a <.Loc.74.1>:
    7b4a:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

00007b4e <.Loc.75.1>:
        return 0;
    7b4e:	4c 43       	clr.b	r12		;

00007b50 <.Loc.74.1>:
    if (queue->__tail == queue->_head) {
    7b50:	0b 9f       	cmp	r15,	r11	;
    7b52:	07 24       	jz	$+16     	;abs 0x7b62

00007b54 <.Loc.79.1>:
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    7b54:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

00007b58 <.Loc.79.1>:
    7b58:	5c 02       	rlam	#1,	r12	;
    7b5a:	0e 5c       	add	r12,	r14	;

00007b5c <.LVL7>:
    7b5c:	8e 4d 00 00 	mov	r13,	0(r14)	;

00007b60 <.Loc.81.1>:

    return 1;
    7b60:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007b62 <.L7>:
}
    7b62:	30 41       	ret			

00007b64 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    7b64:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    7b68:	11 00 

00007b6a <.Loc.89.1>:
}
    7b6a:	30 41       	ret			

00007b6c <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    7b6c:	0d 4c       	mov	r12,	r13	;

00007b6e <.Loc.93.1>:
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    7b6e:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

00007b72 <.Loc.93.1>:
    7b72:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00007b76 <.Loc.94.1>:
        return NULL;
    7b76:	4c 43       	clr.b	r12		;

00007b78 <.LVL10>:
    if (queue->_head == queue->_tail){
    7b78:	0f 9e       	cmp	r14,	r15	;
    7b7a:	10 24       	jz	$+34     	;abs 0x7b9c

00007b7c <.Loc.98.1>:
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    7b7c:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    7b80:	5c 53       	inc.b	r12		;
    7b82:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

00007b86 <.Loc.99.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    7b86:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    7b8a:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    7b8c:	02 20       	jnz	$+6      	;abs 0x7b92

00007b8e <.Loc.100.1>:
        queue->__head = 0;
    7b8e:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

00007b92 <.L12>:

    return queue->_items[queue->_head];
    7b92:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

00007b96 <.Loc.102.1>:
    7b96:	5c 02       	rlam	#1,	r12	;
    7b98:	0d 5c       	add	r12,	r13	;

00007b9a <.LVL11>:
    7b9a:	2c 4d       	mov	@r13,	r12	;

00007b9c <.L10>:
}
    7b9c:	30 41       	ret			

00007b9e <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    7b9e:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    7ba2:	10 00 

00007ba4 <.Loc.109.1>:
}
    7ba4:	30 41       	ret			

00007ba6 <__dma_word_copy>:
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    7ba6:	0a 15       	pushm	#1,	r10	;16-bit words

00007ba8 <.LCFI0>:
    7ba8:	21 82       	sub	#4,	r1	;r2 As==10

00007baa <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    7baa:	0a 4c       	mov	r12,	r10	;
    7bac:	0b 43       	clr	r11		;
    7bae:	81 4a 00 00 	mov	r10,	0(r1)	;
    7bb2:	81 4b 02 00 	mov	r11,	2(r1)	;

00007bb6 <.Loc.38.1>:
    7bb6:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00007bba <.LVL1>:
    7bba:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    7bbe:	00 00 

00007bc0 <.LBB3>:
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    7bc0:	0a 4d       	mov	r13,	r10	;
    7bc2:	0b 43       	clr	r11		;

00007bc4 <.LVL2>:
    7bc4:	81 4a 00 00 	mov	r10,	0(r1)	;
    7bc8:	81 4b 02 00 	mov	r11,	2(r1)	;

00007bcc <.Loc.40.1>:
    7bcc:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    7bd0:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    7bd4:	00 00 

00007bd6 <.LBE3>:
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    7bd6:	82 4e 1a 05 	mov	r14,	&0x051a	;

00007bda <.Loc.43.1>:
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    7bda:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    7bde:	10 05 

00007be0 <.Loc.44.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    7be0:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    7be4:	10 05 

00007be6 <.Loc.46.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    7be6:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00007bea <.Loc.47.1>:
}
    7bea:	21 52       	add	#4,	r1	;r2 As==10

00007bec <.LCFI2>:
    7bec:	0a 17       	popm	#1,	r10	;16-bit words

00007bee <.LCFI3>:
    7bee:	30 41       	ret			

00007bf0 <__mcu_init>:

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    7bf0:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    7bf4:	5c 01 

00007bf6 <.Loc.40.1>:


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    7bf6:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    7bfa:	40 01 

00007bfc <L0^A>:
  __delay_cycles(3);
    7bfc:	00 3c       	jmp	$+2      	;abs 0x7bfe
    7bfe:	03 43       	nop			

00007c00 <.Loc.44.1>:

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    7c00:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    7c04:	41 01 

00007c06 <L0^A>:
  
  __delay_cycles(3);
    7c06:	00 3c       	jmp	$+2      	;abs 0x7c08
    7c08:	03 43       	nop			

00007c0a <.Loc.48.1>:

  __led_init(LED1);
    7c0a:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    7c0e:	23 02 

00007c10 <.Loc.48.1>:
    7c10:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    7c14:	25 02 

00007c16 <.Loc.48.1>:
    7c16:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    7c1a:	23 02 

00007c1c <.Loc.48.1>:
  __led_init(LED2);
    7c1c:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00007c20 <.Loc.49.1>:
    7c20:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

00007c24 <.Loc.49.1>:
    7c24:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00007c28 <.Loc.49.1>:
  
  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    7c28:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00007c2c <.Loc.53.1>:

}
    7c2c:	30 41       	ret			

00007c2e <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    7c2e:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00007c32 <.Loc.83.1>:
    7c32:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00007c36 <.Loc.83.1>:
    7c36:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00007c3a <.Loc.83.1>:
    7c3a:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00007c3e <.Loc.83.1>:
    7c3e:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00007c42 <.Loc.83.1>:
    7c42:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00007c46 <.Loc.83.1>:
    7c46:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00007c4a <.Loc.83.1>:
    7c4a:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00007c4e <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    7c4e:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00007c52 <.Loc.88.1>:
}
    7c52:	30 41       	ret			

00007c54 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    7c54:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007c58 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    7c58:	0e 4c       	mov	r12,	r14	;
    7c5a:	5e 09       	rram	#3,	r14	;

00007c5c <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    7c5c:	7e f0 07 00 	and.b	#7,	r14	;

00007c60 <.Loc.99.1>:
    7c60:	dd de 00 45 	bis.b	17664(r14),8(r13)	;0x04500
    7c64:	08 00 

00007c66 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    7c66:	0d 5e       	add	r14,	r13	;

00007c68 <.LVL12>:
    7c68:	7c f0 07 00 	and.b	#7,	r12	;

00007c6c <.LVL13>:
    7c6c:	dd dc 00 45 	bis.b	17664(r12),0(r13)	;0x04500
    7c70:	00 00 

00007c72 <.Loc.101.1>:
}
    7c72:	30 41       	ret			

00007c74 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    7c74:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007c78 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    7c78:	0e 4c       	mov	r12,	r14	;
    7c7a:	5e 09       	rram	#3,	r14	;

00007c7c <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    7c7c:	7e f0 07 00 	and.b	#7,	r14	;
    7c80:	0f 4d       	mov	r13,	r15	;
    7c82:	0f 5e       	add	r14,	r15	;

00007c84 <.Loc.112.1>:
    7c84:	7c f0 07 00 	and.b	#7,	r12	;

00007c88 <.LVL16>:
    7c88:	df cc 00 45 	bic.b	17664(r12),0(r15)	;0x04500
    7c8c:	00 00 

00007c8e <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    7c8e:	6c 4f       	mov.b	@r15,	r12	;

00007c90 <.Loc.114.1>:
    7c90:	0c 93       	cmp	#0,	r12	;r3 As==00
    7c92:	03 20       	jnz	$+8      	;abs 0x7c9a

00007c94 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    7c94:	dd ce 00 45 	bic.b	17664(r14),8(r13)	;0x04500
    7c98:	08 00 

00007c9a <.L3>:
    }
}
    7c9a:	30 41       	ret			

00007c9c <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    7c9c:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00007ca0 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    7ca0:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

00007ca4 <.LVL19>:
    7ca4:	0c 5d       	add	r13,	r12	;

00007ca6 <.LVL20>:
    7ca6:	6e 4c       	mov.b	@r12,	r14	;

00007ca8 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    7ca8:	0c 4d       	mov	r13,	r12	;
    7caa:	5c 0a       	rlam	#3,	r12	;

00007cac <.Loc.128.1>:
}
    7cac:	5c de 00 44 	bis.b	17408(r14),r12	;0x04400
    7cb0:	30 41       	ret			

00007cb2 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    7cb2:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00007cb6 <.Loc.157.1>:
    TA2CTL = 0;
    7cb6:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00007cba <.Loc.158.1>:
}
    7cba:	30 41       	ret			

00007cbc <timerA2_init>:
    7cbc:	b0 12 b2 7c 	call	#31922		;#0x7cb2
    7cc0:	30 41       	ret			

00007cc2 <set_timer_wkup>:
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    7cc2:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00007cc6 <.Loc.179.1>:
    TA0CCR0 = ticks;
    7cc6:	82 4c 52 03 	mov	r12,	&0x0352	;

00007cca <.Loc.180.1>:
    TA0CCTL0 = CCIE;
    7cca:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    7cce:	42 03 

00007cd0 <.Loc.181.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7cd0:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    7cd4:	40 03 

00007cd6 <.Loc.182.1>:
}
    7cd6:	30 41       	ret			

00007cd8 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    7cd8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00007cdc <.Loc.186.1>:
    TA2CCR0 = ticks;
    7cdc:	82 4c 12 04 	mov	r12,	&0x0412	;

00007ce0 <.Loc.187.1>:
    TA2CCTL0 = CCIE;
    7ce0:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    7ce4:	02 04 

00007ce6 <.Loc.188.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    7ce6:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    7cea:	00 04 

00007cec <.Loc.190.1>:

}
    7cec:	30 41       	ret			

00007cee <stop_timer_xpr>:
    7cee:	b0 12 b2 7c 	call	#31922		;#0x7cb2
    7cf2:	30 41       	ret			

00007cf4 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    7cf4:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007cf8 <.Loc.202.1>:
    TA1CCR0 = ticks;
    7cf8:	82 4c 92 03 	mov	r12,	&0x0392	;

00007cfc <.Loc.203.1>:
    TA1CCTL0 = CCIE;
    7cfc:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7d00:	82 03 

00007d02 <.Loc.204.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7d02:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    7d06:	80 03 

00007d08 <.Loc.205.1>:
}
    7d08:	30 41       	ret			

00007d0a <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    7d0a:	30 41       	ret			

00007d0c <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    7d0c:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    7d10:	61 01 

00007d12 <.Loc.253.1>:
  CSCTL2 = SELA__VLOCLK;
    7d12:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    7d16:	64 01 

00007d18 <.Loc.254.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    7d18:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00007d1c <.Loc.255.1>:
  CSCTL0_H = 0;
    7d1c:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00007d20 <.Loc.257.1>:

}
    7d20:	30 41       	ret			

00007d22 <__get_rtc_time>:
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    7d22:	4c 43       	clr.b	r12		;
    7d24:	4d 43       	clr.b	r13		;
    7d26:	30 41       	ret			

00007d28 <__get_time_init>:
{   
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    7d28:	82 43 72 6c 	mov	#0,	&0x6c72	;r3 As==00
    7d2c:	82 43 74 6c 	mov	#0,	&0x6c74	;r3 As==00

00007d30 <.Loc.337.1>:

    //stop TA1 timer
    TA3CTL = 0;
    7d30:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007d34 <.Loc.339.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    7d34:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    7d38:	40 04 

00007d3a <.Loc.341.1>:

    __bis_SR_register(GIE);
    7d3a:	03 43       	nop			
    7d3c:	32 d2       	eint			
    7d3e:	03 43       	nop			

00007d40 <.Loc.342.1>:
}
    7d40:	30 41       	ret			

00007d42 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    7d42:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007d46 <.Loc.350.1>:
    TA3CCTL0 = 0;
    7d46:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00007d4a <.Loc.351.1>:
}
    7d4a:	30 41       	ret			

00007d4c <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    7d4c:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7d50:	40 04 

00007d52 <.Loc.363.1>:

   tmp = TA3R;
    7d52:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00007d56 <.Loc.365.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    7d56:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7d5a:	40 04 

00007d5c <.Loc.369.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    7d5c:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    7d60:	b0 12 ec 80 	call	#-32532	;#0x80ec

00007d64 <.Loc.370.1>:
}
    7d64:	1c 52 72 6c 	add	&0x6c72,r12	;0x6c72
    7d68:	1d 62 74 6c 	addc	&0x6c74,r13	;0x6c74
    7d6c:	30 41       	ret			

00007d6e <isr_TIMER3_A1_VECTOR>:
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    7d6e:	b2 50 aa 00 	add	#170,	&0x6c72	;#0x00aa
    7d72:	72 6c 
    7d74:	b2 60 0a 00 	addc	#10,	&0x6c74	;#0x000a
    7d78:	74 6c 

00007d7a <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    7d7a:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00007d7e <.Loc.381.1>:
}
    7d7e:	00 13       	reti			

00007d80 <_pers_timer_init>:

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    7d80:	3c 40 76 6c 	mov	#27766,	r12	;#0x6c76
    7d84:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00007d88 <.Loc.34.1>:
    7d88:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00007d8c <.Loc.34.1>:
    7d8c:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00007d90 <.Loc.34.1>:
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED; 
    7d90:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00007d94 <.Loc.38.1>:
    7d94:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00007d98 <.Loc.38.1>:
    7d98:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00007d9c <.Loc.38.1>:
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED; 
    7d9c:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00007da0 <.Loc.42.1>:
	}
}
    7da0:	30 41       	ret			

00007da2 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    7da2:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007da6 <.Loc.50.1>:
	//update the persistent timer dirty buffer
	switch(interface)
    7da6:	1d 93       	cmp	#1,	r13	;r3 As==01
    7da8:	1a 24       	jz	$+54     	;abs 0x7dde
    7daa:	2d 93       	cmp	#2,	r13	;r3 As==10
    7dac:	0d 24       	jz	$+28     	;abs 0x7dc8
    7dae:	0d 93       	cmp	#0,	r13	;r3 As==00
    7db0:	0a 20       	jnz	$+22     	;abs 0x7dc6

00007db2 <.Loc.53.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    7db2:	0d 4c       	mov	r12,	r13	;

00007db4 <.LVL9>:
    7db4:	5d 06       	rlam	#2,	r13	;
    7db6:	0c 5d       	add	r13,	r12	;

00007db8 <.LVL10>:
    7db8:	5c 02       	rlam	#1,	r12	;
    7dba:	8c 4e de 6c 	mov	r14,	27870(r12); 0x6cde
    7dbe:	8c 4f e0 6c 	mov	r15,	27872(r12); 0x6ce0

00007dc2 <.Loc.54.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7dc2:	9c 43 e2 6c 	mov	#1,	27874(r12);r3 As==01, 0x6ce2

00007dc6 <.L2>:
		default:
			break;
	}

		
}
    7dc6:	30 41       	ret			

00007dc8 <.L4>:
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    7dc8:	0d 4c       	mov	r12,	r13	;

00007dca <.LVL12>:
    7dca:	5d 06       	rlam	#2,	r13	;
    7dcc:	0c 5d       	add	r13,	r12	;
    7dce:	5c 02       	rlam	#1,	r12	;
    7dd0:	8c 4e fc 6c 	mov	r14,	27900(r12); 0x6cfc
    7dd4:	8c 4f fe 6c 	mov	r15,	27902(r12); 0x6cfe

00007dd8 <.Loc.58.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7dd8:	9c 43 00 6d 	mov	#1,	27904(r12);r3 As==01, 0x6d00
    7ddc:	f4 3f       	jmp	$-22     	;abs 0x7dc6

00007dde <.L3>:
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    7dde:	0d 4c       	mov	r12,	r13	;

00007de0 <.LVL14>:
    7de0:	5d 06       	rlam	#2,	r13	;
    7de2:	0c 5d       	add	r13,	r12	;
    7de4:	5c 02       	rlam	#1,	r12	;
    7de6:	8c 4e 1a 6d 	mov	r14,	27930(r12); 0x6d1a
    7dea:	8c 4f 1c 6d 	mov	r15,	27932(r12); 0x6d1c

00007dee <.Loc.62.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7dee:	9c 43 1e 6d 	mov	#1,	27934(r12);r3 As==01, 0x6d1e

00007df2 <.Loc.63.1>:
			break;
    7df2:	e9 3f       	jmp	$-44     	;abs 0x7dc6

00007df4 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    7df4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7df8:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007dfc <.Loc.73.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    7dfc:	1d 93       	cmp	#1,	r13	;r3 As==01
    7dfe:	16 24       	jz	$+46     	;abs 0x7e2c
    7e00:	2d 93       	cmp	#2,	r13	;r3 As==10
    7e02:	0b 24       	jz	$+24     	;abs 0x7e1a
    7e04:	0d 93       	cmp	#0,	r13	;r3 As==00
    7e06:	08 20       	jnz	$+18     	;abs 0x7e18

00007e08 <.Loc.76.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    7e08:	0d 4c       	mov	r12,	r13	;

00007e0a <.LVL16>:
    7e0a:	5d 06       	rlam	#2,	r13	;
    7e0c:	0c 5d       	add	r13,	r12	;

00007e0e <.LVL17>:
    7e0e:	5c 02       	rlam	#1,	r12	;
    7e10:	cc 4e dc 6c 	mov.b	r14,	27868(r12); 0x6cdc

00007e14 <.Loc.77.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7e14:	9c 43 e2 6c 	mov	#1,	27874(r12);r3 As==01, 0x6ce2

00007e18 <.L7>:
			break;
		default:
			break;
	}

}
    7e18:	30 41       	ret			

00007e1a <.L9>:
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    7e1a:	0d 4c       	mov	r12,	r13	;

00007e1c <.LVL19>:
    7e1c:	5d 06       	rlam	#2,	r13	;
    7e1e:	0c 5d       	add	r13,	r12	;
    7e20:	5c 02       	rlam	#1,	r12	;
    7e22:	cc 4e fa 6c 	mov.b	r14,	27898(r12); 0x6cfa

00007e26 <.Loc.81.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7e26:	9c 43 00 6d 	mov	#1,	27904(r12);r3 As==01, 0x6d00
    7e2a:	f6 3f       	jmp	$-18     	;abs 0x7e18

00007e2c <.L8>:
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    7e2c:	0d 4c       	mov	r12,	r13	;

00007e2e <.LVL21>:
    7e2e:	5d 06       	rlam	#2,	r13	;
    7e30:	0c 5d       	add	r13,	r12	;
    7e32:	5c 02       	rlam	#1,	r12	;
    7e34:	cc 4e 18 6d 	mov.b	r14,	27928(r12); 0x6d18

00007e38 <.Loc.85.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7e38:	9c 43 1e 6d 	mov	#1,	27934(r12);r3 As==01, 0x6d1e

00007e3c <.Loc.86.1>:
}
    7e3c:	ed 3f       	jmp	$-36     	;abs 0x7e18

00007e3e <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    7e3e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007e42 <.Loc.95.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    7e42:	1d 93       	cmp	#1,	r13	;r3 As==01
    7e44:	16 24       	jz	$+46     	;abs 0x7e72
    7e46:	2d 93       	cmp	#2,	r13	;r3 As==10
    7e48:	0b 24       	jz	$+24     	;abs 0x7e60
    7e4a:	0d 93       	cmp	#0,	r13	;r3 As==00
    7e4c:	08 20       	jnz	$+18     	;abs 0x7e5e

00007e4e <.Loc.98.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].status = status;
    7e4e:	0d 4c       	mov	r12,	r13	;

00007e50 <.LVL23>:
    7e50:	5d 06       	rlam	#2,	r13	;
    7e52:	0c 5d       	add	r13,	r12	;

00007e54 <.LVL24>:
    7e54:	5c 02       	rlam	#1,	r12	;
    7e56:	8c 4e da 6c 	mov	r14,	27866(r12); 0x6cda

00007e5a <.Loc.99.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7e5a:	9c 43 e2 6c 	mov	#1,	27874(r12);r3 As==01, 0x6ce2

00007e5e <.L12>:
			break;
		default:
			break;

	}
}
    7e5e:	30 41       	ret			

00007e60 <.L14>:
			pers_timer_vars[1].xpr_timing[idx].status = status;
    7e60:	0d 4c       	mov	r12,	r13	;

00007e62 <.LVL26>:
    7e62:	5d 06       	rlam	#2,	r13	;
    7e64:	0c 5d       	add	r13,	r12	;
    7e66:	5c 02       	rlam	#1,	r12	;
    7e68:	8c 4e f8 6c 	mov	r14,	27896(r12); 0x6cf8

00007e6c <.Loc.103.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7e6c:	9c 43 00 6d 	mov	#1,	27904(r12);r3 As==01, 0x6d00
    7e70:	f6 3f       	jmp	$-18     	;abs 0x7e5e

00007e72 <.L13>:
			pers_timer_vars[1].pdc_timing[idx].status = status;
    7e72:	0d 4c       	mov	r12,	r13	;

00007e74 <.LVL28>:
    7e74:	5d 06       	rlam	#2,	r13	;
    7e76:	0c 5d       	add	r13,	r12	;
    7e78:	5c 02       	rlam	#1,	r12	;
    7e7a:	8c 4e 16 6d 	mov	r14,	27926(r12); 0x6d16

00007e7e <.Loc.107.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7e7e:	9c 43 1e 6d 	mov	#1,	27934(r12);r3 As==01, 0x6d1e

00007e82 <.Loc.108.1>:
}
    7e82:	ed 3f       	jmp	$-36     	;abs 0x7e5e

00007e84 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    7e84:	0e 4c       	mov	r12,	r14	;
    7e86:	5e 0a       	rlam	#3,	r14	;
    7e88:	ce 4d 22 6d 	mov.b	r13,	27938(r14); 0x6d22

00007e8c <.Loc.118.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7e8c:	9e 43 26 6d 	mov	#1,	27942(r14);r3 As==01, 0x6d26

00007e90 <.Loc.119.1>:
}
    7e90:	30 41       	ret			

00007e92 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    7e92:	0e 4c       	mov	r12,	r14	;
    7e94:	5e 0a       	rlam	#3,	r14	;
    7e96:	8e 4d 24 6d 	mov	r13,	27940(r14); 0x6d24

00007e9a <.Loc.124.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7e9a:	9e 43 26 6d 	mov	#1,	27942(r14);r3 As==01, 0x6d26

00007e9e <.Loc.125.1>:
}
    7e9e:	30 41       	ret			

00007ea0 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    7ea0:	1c 93       	cmp	#1,	r12	;r3 As==01
    7ea2:	0a 24       	jz	$+22     	;abs 0x7eb8
    7ea4:	2c 93       	cmp	#2,	r12	;r3 As==10
    7ea6:	05 24       	jz	$+12     	;abs 0x7eb2
    7ea8:	0c 93       	cmp	#0,	r12	;r3 As==00
    7eaa:	02 20       	jnz	$+6      	;abs 0x7eb0

00007eac <.Loc.132.1>:
	{
		case WKUP:
			wkup_tstatus = TIMER_COMMIT;
    7eac:	92 43 3e 6d 	mov	#1,	&0x6d3e	;r3 As==01

00007eb0 <.L19>:
		default:
			break;

	}

}
    7eb0:	30 41       	ret			

00007eb2 <.L21>:
			xpr_tstatus = TIMER_COMMIT;
    7eb2:	92 43 40 6d 	mov	#1,	&0x6d40	;r3 As==01

00007eb6 <.Loc.136.1>:
		break;
    7eb6:	fc 3f       	jmp	$-6      	;abs 0x7eb0

00007eb8 <.L20>:
			pdc_tstatus = TIMER_COMMIT;
    7eb8:	92 43 42 6d 	mov	#1,	&0x6d42	;r3 As==01

00007ebc <.Loc.139.1>:
}
    7ebc:	f9 3f       	jmp	$-12     	;abs 0x7eb0

00007ebe <_commit_timer_buffers>:

//commit into the persistent buffer

void _commit_timer_buffers(ink_time_interface_t interface){
    7ebe:	1a 15       	pushm	#2,	r10	;16-bit words

00007ec0 <.LCFI0>:
    7ec0:	0a 4c       	mov	r12,	r10	;

00007ec2 <.Loc.151.1>:
	
	uint8_t i;
	
	switch (interface){
    7ec2:	1c 93       	cmp	#1,	r12	;r3 As==01
    7ec4:	52 24       	jz	$+166    	;abs 0x7f6a
    7ec6:	2c 93       	cmp	#2,	r12	;r3 As==10
    7ec8:	39 24       	jz	$+116    	;abs 0x7f3c
    7eca:	0c 93       	cmp	#0,	r12	;r3 As==00
    7ecc:	16 20       	jnz	$+46     	;abs 0x7efa
    7ece:	3f 40 76 6c 	mov	#27766,	r15	;#0x6c76
    7ed2:	39 40 94 6c 	mov	#27796,	r9	;#0x6c94

00007ed6 <.L28>:
		case WKUP:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
		{
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    7ed6:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    7eda:	0b 20       	jnz	$+24     	;abs 0x7ef2

00007edc <.Loc.160.1>:
			{
				
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7edc:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7ee0:	0d 4f       	mov	r15,	r13	;
    7ee2:	3d 50 64 00 	add	#100,	r13	;#0x0064
    7ee6:	0c 4f       	mov	r15,	r12	;
    7ee8:	b0 12 04 81 	call	#-32508	;#0x8104
    7eec:	0f 4c       	mov	r12,	r15	;

00007eee <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7eee:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

00007ef2 <.L27>:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    7ef2:	3f 50 0a 00 	add	#10,	r15	;#0x000a

00007ef6 <.Loc.155.1>:
    7ef6:	09 9f       	cmp	r15,	r9	;
    7ef8:	ee 23       	jnz	$-34     	;abs 0x7ed6

00007efa <.L26>:
void _commit_timer_buffers(ink_time_interface_t interface){
    7efa:	7f 40 03 00 	mov.b	#3,	r15	;

00007efe <.L33>:
		break;
	}	

	for (i = 0; i < TIMER_TOOLS; i++)
	{
		if (	pers_timer_vars[1].next_info[interface].__dirty == DIRTY)
    7efe:	0c 4a       	mov	r10,	r12	;
    7f00:	5c 0a       	rlam	#3,	r12	;

00007f02 <.Loc.193.1>:
    7f02:	9c 93 26 6d 	cmp	#1,	27942(r12);r3 As==01, 0x6d26
    7f06:	13 20       	jnz	$+40     	;abs 0x7f2e

00007f08 <.Loc.195.1>:
		{
			pers_timer_vars[0].next_info[interface] = 
    7f08:	0c 4a       	mov	r10,	r12	;
    7f0a:	5c 0a       	rlam	#3,	r12	;
    7f0c:	0d 4c       	mov	r12,	r13	;
    7f0e:	3d 50 76 6c 	add	#27766,	r13	;#0x6c76
    7f12:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    7f16:	46 00 
    7f18:	9c 4c 22 6d 	mov	27938(r12),27838(r12);0x06d22, 0x6cbe
    7f1c:	be 6c 
    7f1e:	9c 4c 24 6d 	mov	27940(r12),27840(r12);0x06d24, 0x6cc0
    7f22:	c0 6c 
    7f24:	9c 4c 26 6d 	mov	27942(r12),27842(r12);0x06d26, 0x6cc2
    7f28:	c2 6c 

00007f2a <.Loc.197.1>:
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty = 
    7f2a:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

00007f2e <.L32>:
	for (i = 0; i < TIMER_TOOLS; i++)
    7f2e:	4c 4f       	mov.b	r15,	r12	;
    7f30:	7c 53       	add.b	#-1,	r12	;r3 As==11
    7f32:	4f 4c       	mov.b	r12,	r15	;

00007f34 <.Loc.191.1>:
    7f34:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7f36:	e3 23       	jnz	$-56     	;abs 0x7efe

00007f38 <.Loc.201.1>:
				NOT_DIRTY;
		}
	}
}
    7f38:	19 17       	popm	#2,	r10	;16-bit words

00007f3a <.LCFI1>:
    7f3a:	30 41       	ret			

00007f3c <.L25>:
    7f3c:	39 40 76 6c 	mov	#27766,	r9	;#0x6c76

00007f40 <.L30>:
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    7f40:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    7f44:	0c 20       	jnz	$+26     	;abs 0x7f5e

00007f46 <.Loc.171.1>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7f46:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7f4a:	0d 49       	mov	r9,	r13	;
    7f4c:	3d 50 82 00 	add	#130,	r13	;#0x0082
    7f50:	0c 49       	mov	r9,	r12	;
    7f52:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    7f56:	b0 12 04 81 	call	#-32508	;#0x8104

00007f5a <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7f5a:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

00007f5e <.L29>:
		for (i = 0; i < MAX_XPR_THREADS; i++)
    7f5e:	39 50 0a 00 	add	#10,	r9	;#0x000a

00007f62 <.Loc.166.1>:
    7f62:	39 90 94 6c 	cmp	#27796,	r9	;#0x6c94
    7f66:	ec 23       	jnz	$-38     	;abs 0x7f40
    7f68:	c8 3f       	jmp	$-110    	;abs 0x7efa

00007f6a <.L24>:
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    7f6a:	92 93 1e 6d 	cmp	#1,	&0x6d1e	;r3 As==01
    7f6e:	c5 23       	jnz	$-116    	;abs 0x7efa

00007f70 <.Loc.182.1>:
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    7f70:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7f74:	3d 40 16 6d 	mov	#27926,	r13	;#0x6d16
    7f78:	3c 40 b2 6c 	mov	#27826,	r12	;#0x6cb2
    7f7c:	b0 12 04 81 	call	#-32508	;#0x8104

00007f80 <.Loc.183.1>:
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    7f80:	82 43 ba 6c 	mov	#0,	&0x6cba	;r3 As==00

00007f84 <.Loc.177.1>:
		for (i = 0; i < MAX_PDC_THREADS; i++)
    7f84:	ba 3f       	jmp	$-138    	;abs 0x7efa

00007f86 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    7f86:	1c 93       	cmp	#1,	r12	;r3 As==01
    7f88:	16 24       	jz	$+46     	;abs 0x7fb6
    7f8a:	2c 93       	cmp	#2,	r12	;r3 As==10
    7f8c:	0b 24       	jz	$+24     	;abs 0x7fa4
    7f8e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7f90:	08 20       	jnz	$+18     	;abs 0x7fa2

00007f92 <.Loc.207.1>:
	{
		case WKUP:
		    if (wkup_tstatus == TIMER_COMMIT)
    7f92:	1d 42 3e 6d 	mov	&0x6d3e,r13	;0x6d3e

00007f96 <.Loc.207.1>:
    7f96:	1d 93       	cmp	#1,	r13	;r3 As==01
    7f98:	04 20       	jnz	$+10     	;abs 0x7fa2

00007f9a <.Loc.209.1>:
		    {
		    	_commit_timer_buffers(interface);
    7f9a:	b0 12 be 7e 	call	#32446		;#0x7ebe

00007f9e <.LVL43>:
		        wkup_tstatus = TIMER_DONE;
    7f9e:	a2 43 3e 6d 	mov	#2,	&0x6d3e	;r3 As==10

00007fa2 <.L39>:
			break;
		default:
			break;

	}
}
    7fa2:	30 41       	ret			

00007fa4 <.L41>:
			if (xpr_tstatus == TIMER_COMMIT)
    7fa4:	1d 42 40 6d 	mov	&0x6d40,r13	;0x6d40

00007fa8 <.Loc.214.1>:
    7fa8:	1d 93       	cmp	#1,	r13	;r3 As==01
    7faa:	fb 23       	jnz	$-8      	;abs 0x7fa2

00007fac <.Loc.216.1>:
		    	_commit_timer_buffers(interface);
    7fac:	b0 12 be 7e 	call	#32446		;#0x7ebe

00007fb0 <.LVL45>:
		        xpr_tstatus = TIMER_DONE;
    7fb0:	a2 43 40 6d 	mov	#2,	&0x6d40	;r3 As==10
    7fb4:	f6 3f       	jmp	$-18     	;abs 0x7fa2

00007fb6 <.L40>:
			if (pdc_tstatus == TIMER_COMMIT)
    7fb6:	1d 42 42 6d 	mov	&0x6d42,r13	;0x6d42

00007fba <.Loc.220.1>:
    7fba:	1d 93       	cmp	#1,	r13	;r3 As==01
    7fbc:	f2 23       	jnz	$-26     	;abs 0x7fa2

00007fbe <.Loc.222.1>:
		    	_commit_timer_buffers(interface);
    7fbe:	b0 12 be 7e 	call	#32446		;#0x7ebe

00007fc2 <.LVL47>:
		        pdc_tstatus = TIMER_DONE;
    7fc2:	a2 43 42 6d 	mov	#2,	&0x6d42	;r3 As==10

00007fc6 <.Loc.230.1>:
}
    7fc6:	ed 3f       	jmp	$-36     	;abs 0x7fa2

00007fc8 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    7fc8:	0a 15       	pushm	#1,	r10	;16-bit words

00007fca <.LCFI3>:
    7fca:	0a 4c       	mov	r12,	r10	;
    7fcc:	4f 4d       	mov.b	r13,	r15	;

00007fce <.Loc.233.1>:
	switch (interface)
    7fce:	0d 4f       	mov	r15,	r13	;
    7fd0:	5d 06       	rlam	#2,	r13	;

00007fd2 <.LVL49>:
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    7fd2:	0d 5f       	add	r15,	r13	;
    7fd4:	5d 02       	rlam	#1,	r13	;

00007fd6 <.Loc.233.1>:
	switch (interface)
    7fd6:	1e 93       	cmp	#1,	r14	;r3 As==01
    7fd8:	0b 24       	jz	$+24     	;abs 0x7ff0
    7fda:	2e 93       	cmp	#2,	r14	;r3 As==10
    7fdc:	0e 20       	jnz	$+30     	;abs 0x7ffa

00007fde <.Loc.238.1>:
			return pers_timer_vars[0].xpr_timing[idx];
    7fde:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00007fe2 <.LVL50>:
    7fe2:	3d 50 94 6c 	add	#27796,	r13	;#0x6c94

00007fe6 <.L47>:
		    return pers_timer_vars[0].wkup_timing[idx];
    7fe6:	b0 12 04 81 	call	#-32508	;#0x8104

00007fea <.LVL51>:
	}
		
}
    7fea:	0c 4a       	mov	r10,	r12	;
    7fec:	0a 17       	popm	#1,	r10	;16-bit words

00007fee <.LCFI4>:
    7fee:	30 41       	ret			

00007ff0 <.L44>:
			return pers_timer_vars[0].pdc_timing[idx];
    7ff0:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00007ff4 <.LVL53>:
    7ff4:	3d 50 b2 6c 	add	#27826,	r13	;#0x6cb2
    7ff8:	f6 3f       	jmp	$-18     	;abs 0x7fe6

00007ffa <.L45>:
		    return pers_timer_vars[0].wkup_timing[idx];
    7ffa:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00007ffe <.LVL55>:
    7ffe:	3d 50 76 6c 	add	#27766,	r13	;#0x6c76
    8002:	f1 3f       	jmp	$-28     	;abs 0x7fe6

00008004 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    8004:	4e 4c       	mov.b	r12,	r14	;

00008006 <.Loc.249.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    8006:	1d 93       	cmp	#1,	r13	;r3 As==01
    8008:	13 24       	jz	$+40     	;abs 0x8030
    800a:	2d 93       	cmp	#2,	r13	;r3 As==10
    800c:	0a 24       	jz	$+22     	;abs 0x8022
    800e:	4c 43       	clr.b	r12		;

00008010 <.LVL57>:
    8010:	0d 93       	cmp	#0,	r13	;r3 As==00
    8012:	06 20       	jnz	$+14     	;abs 0x8020

00008014 <.Loc.252.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].data ;		
    8014:	0c 4e       	mov	r14,	r12	;
    8016:	5c 06       	rlam	#2,	r12	;
    8018:	0c 5e       	add	r14,	r12	;
    801a:	5c 02       	rlam	#1,	r12	;
    801c:	1c 4c 7a 6c 	mov	27770(r12),r12	;0x06c7a

00008020 <.L48>:
		default:
			return 0;

	}

}
    8020:	30 41       	ret			

00008022 <.L50>:
			return pers_timer_vars[0].xpr_timing[idx].data ;			
    8022:	0c 4e       	mov	r14,	r12	;

00008024 <.LVL59>:
    8024:	5c 06       	rlam	#2,	r12	;
    8026:	0c 5e       	add	r14,	r12	;
    8028:	5c 02       	rlam	#1,	r12	;
    802a:	1c 4c 98 6c 	mov	27800(r12),r12	;0x06c98
    802e:	f8 3f       	jmp	$-14     	;abs 0x8020

00008030 <.L49>:
			return pers_timer_vars[0].pdc_timing[idx].data ;			
    8030:	0c 4e       	mov	r14,	r12	;

00008032 <.LVL61>:
    8032:	5c 06       	rlam	#2,	r12	;
    8034:	0c 5e       	add	r14,	r12	;
    8036:	5c 02       	rlam	#1,	r12	;
    8038:	1c 4c b6 6c 	mov	27830(r12),r12	;0x06cb6
    803c:	f1 3f       	jmp	$-28     	;abs 0x8020

0000803e <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    803e:	4e 4c       	mov.b	r12,	r14	;

00008040 <.Loc.266.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    8040:	1d 93       	cmp	#1,	r13	;r3 As==01
    8042:	13 24       	jz	$+40     	;abs 0x806a
    8044:	2d 93       	cmp	#2,	r13	;r3 As==10
    8046:	0a 24       	jz	$+22     	;abs 0x805c
    8048:	4c 43       	clr.b	r12		;

0000804a <.LVL63>:
    804a:	0d 93       	cmp	#0,	r13	;r3 As==00
    804c:	06 20       	jnz	$+14     	;abs 0x805a

0000804e <.Loc.269.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    804e:	0c 4e       	mov	r14,	r12	;
    8050:	5c 06       	rlam	#2,	r12	;
    8052:	0c 5e       	add	r14,	r12	;
    8054:	5c 02       	rlam	#1,	r12	;
    8056:	5c 4c 78 6c 	mov.b	27768(r12),r12	;0x06c78

0000805a <.L56>:
		default:
		    return	0;
	}


}
    805a:	30 41       	ret			

0000805c <.L55>:
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    805c:	0c 4e       	mov	r14,	r12	;

0000805e <.LVL65>:
    805e:	5c 06       	rlam	#2,	r12	;
    8060:	0c 5e       	add	r14,	r12	;
    8062:	5c 02       	rlam	#1,	r12	;
    8064:	5c 4c 96 6c 	mov.b	27798(r12),r12	;0x06c96
    8068:	f8 3f       	jmp	$-14     	;abs 0x805a

0000806a <.L54>:
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    806a:	0c 4e       	mov	r14,	r12	;

0000806c <.LVL67>:
    806c:	5c 06       	rlam	#2,	r12	;
    806e:	0c 5e       	add	r14,	r12	;
    8070:	5c 02       	rlam	#1,	r12	;
    8072:	5c 4c b4 6c 	mov.b	27828(r12),r12	;0x06cb4
    8076:	f1 3f       	jmp	$-28     	;abs 0x805a

00008078 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    8078:	4e 4c       	mov.b	r12,	r14	;

0000807a <.Loc.283.1>:
	//get the persistent timer from persistent buffer
switch (interface)
    807a:	1d 93       	cmp	#1,	r13	;r3 As==01
    807c:	13 24       	jz	$+40     	;abs 0x80a4
    807e:	2d 93       	cmp	#2,	r13	;r3 As==10
    8080:	0a 24       	jz	$+22     	;abs 0x8096
    8082:	5c 43       	mov.b	#1,	r12	;r3 As==01

00008084 <.LVL69>:
    8084:	0d 93       	cmp	#0,	r13	;r3 As==00
    8086:	06 20       	jnz	$+14     	;abs 0x8094

00008088 <.Loc.286.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].status ;
    8088:	0c 4e       	mov	r14,	r12	;
    808a:	5c 06       	rlam	#2,	r12	;
    808c:	0c 5e       	add	r14,	r12	;
    808e:	5c 02       	rlam	#1,	r12	;
    8090:	1c 4c 76 6c 	mov	27766(r12),r12	;0x06c76

00008094 <.L58>:
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    8094:	30 41       	ret			

00008096 <.L60>:
			return pers_timer_vars[0].xpr_timing[idx].status ;
    8096:	0c 4e       	mov	r14,	r12	;

00008098 <.LVL71>:
    8098:	5c 06       	rlam	#2,	r12	;
    809a:	0c 5e       	add	r14,	r12	;
    809c:	5c 02       	rlam	#1,	r12	;
    809e:	1c 4c 94 6c 	mov	27796(r12),r12	;0x06c94
    80a2:	f8 3f       	jmp	$-14     	;abs 0x8094

000080a4 <.L59>:
			return pers_timer_vars[0].pdc_timing[idx].status ;
    80a4:	0c 4e       	mov	r14,	r12	;

000080a6 <.LVL73>:
    80a6:	5c 06       	rlam	#2,	r12	;
    80a8:	0c 5e       	add	r14,	r12	;
    80aa:	5c 02       	rlam	#1,	r12	;
    80ac:	1c 4c b2 6c 	mov	27826(r12),r12	;0x06cb2
    80b0:	f1 3f       	jmp	$-28     	;abs 0x8094

000080b2 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    80b2:	5c 0a       	rlam	#3,	r12	;

000080b4 <.LVL75>:
}
    80b4:	5c 4c be 6c 	mov.b	27838(r12),r12	;0x06cbe
    80b8:	30 41       	ret			

000080ba <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    80ba:	5c 0a       	rlam	#3,	r12	;

000080bc <.LVL77>:
}
    80bc:	1c 4c c0 6c 	mov	27840(r12),r12	;0x06cc0
    80c0:	30 41       	ret			

000080c2 <.L1^B1>:
    80c2:	3d 53       	add	#-1,	r13	;r3 As==11
    80c4:	0c 5c       	rla	r12		;

000080c6 <__mspabi_slli>:
    80c6:	0d 93       	cmp	#0,	r13	;r3 As==00
    80c8:	fc 23       	jnz	$-6      	;abs 0x80c2
    80ca:	30 41       	ret			

000080cc <.L1^B1>:
    80cc:	3d 53       	add	#-1,	r13	;r3 As==11
    80ce:	12 c3       	clrc			
    80d0:	0c 10       	rrc	r12		;

000080d2 <__mspabi_srli>:
    80d2:	0d 93       	cmp	#0,	r13	;r3 As==00
    80d4:	fb 23       	jnz	$-8      	;abs 0x80cc
    80d6:	30 41       	ret			

000080d8 <__mulhi2>:
    80d8:	02 12       	push	r2		;
    80da:	32 c2       	dint			
    80dc:	03 43       	nop			
    80de:	82 4c c0 04 	mov	r12,	&0x04c0	;
    80e2:	82 4d c8 04 	mov	r13,	&0x04c8	;
    80e6:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca

000080ea <L0^A>:
    80ea:	00 13       	reti			

000080ec <__umulhisi2>:
    80ec:	02 12       	push	r2		;
    80ee:	32 c2       	dint			
    80f0:	03 43       	nop			
    80f2:	82 4c c0 04 	mov	r12,	&0x04c0	;
    80f6:	82 4d c8 04 	mov	r13,	&0x04c8	;
    80fa:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    80fe:	1d 42 cc 04 	mov	&0x04cc,r13	;0x04cc
    8102:	00 13       	reti			

00008104 <memcpy>:
    8104:	0f 4c       	mov	r12,	r15	;
    8106:	0e 5d       	add	r13,	r14	;

00008108 <.L2>:
    8108:	0d 9e       	cmp	r14,	r13	;
    810a:	01 20       	jnz	$+4      	;abs 0x810e

0000810c <.Loc.111.1>:
    810c:	30 41       	ret			

0000810e <.L3>:
    810e:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

00008112 <.LVL4>:
    8112:	1f 53       	inc	r15		;
    8114:	f9 3f       	jmp	$-12     	;abs 0x8108

00008116 <_exit>:
    8116:	ff 3f       	jmp	$+0      	;abs 0x8116

00008118 <memset>:
    8118:	0e 5c       	add	r12,	r14	;

0000811a <L0^A>:
    811a:	0f 4c       	mov	r12,	r15	;

0000811c <.L2>:
    811c:	0f 9e       	cmp	r14,	r15	;
    811e:	01 20       	jnz	$+4      	;abs 0x8122

00008120 <.Loc.104.1>:
    8120:	30 41       	ret			

00008122 <.L3>:
    8122:	1f 53       	inc	r15		;

00008124 <.LVL4>:
    8124:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    8128:	f9 3f       	jmp	$-12     	;abs 0x811c
