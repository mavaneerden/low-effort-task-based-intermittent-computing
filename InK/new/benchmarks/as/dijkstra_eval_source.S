
bin/dijkstra_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	70 7c       	subc.b	@r12+,	r0	;

Disassembly of section .text:

00006178 <__crt0_start>:
    6178:	31 40 00 24 	mov	#9216,	r1	;#0x2400

0000617c <__crt0_init_bss>:
    617c:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00006180 <.Loc.76.1>:
    6180:	0d 43       	clr	r13		;

00006182 <.Loc.77.1>:
    6182:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00006186 <.Loc.81.1>:
    6186:	b0 12 a4 80 	call	#-32604	;#0x80a4

0000618a <__crt0_run_init_array>:
    618a:	34 40 cc 4e 	mov	#20172,	r4	;#0x4ecc

0000618e <.Loc.189.1>:
    618e:	35 40 d4 4e 	mov	#20180,	r5	;#0x4ed4

00006192 <.Loc.190.1>:
    6192:	26 43       	mov	#2,	r6	;r3 As==10

00006194 <.Loc.191.1>:
    6194:	b0 12 a2 61 	call	#24994		;#0x61a2

00006198 <__crt0_call_main>:
    6198:	0c 43       	clr	r12		;

0000619a <.Loc.254.1>:
    619a:	b0 12 be 63 	call	#25534		;#0x63be

0000619e <__crt0_call_exit>:
    619e:	b0 12 a2 80 	call	#-32606	;#0x80a2

000061a2 <__crt0_run_array>:
    61a2:	05 94       	cmp	r4,	r5	;

000061a4 <.Loc.294.1>:
    61a4:	04 24       	jz	$+10     	;abs 0x61ae

000061a6 <.Loc.295.1>:
    61a6:	27 44       	mov	@r4,	r7	;

000061a8 <.Loc.296.1>:
    61a8:	04 56       	add	r6,	r4	;

000061aa <.Loc.297.1>:
    61aa:	87 12       	call	r7		;

000061ac <.Loc.298.1>:
    61ac:	fa 3f       	jmp	$-10     	;abs 0x61a2

000061ae <_msp430_run_done>:
    61ae:	30 41       	ret			

000061b0 <__ink_entry_task>:
    __INK_SHARED_VAR_STRUCT_FIELD(node_t, node_list);
} __INK_SHARED_VAR_STRUCT_TYPE;
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
{
#if RAISE_PIN
    full_run_started = 1;
    61b0:	
000061b2 <L0^A>:
    61b2:	
000061b4 <.Loc.70.1>:
#endif

    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    61b4:	b0 12 6c 64 	call	#25708		;#0x646c

000061b8 <.LVL1>:
__INK_GET_VAR_FROM_BUF(deq_idx) = 0;
    61b8:	0d 4c       	mov	r12,	r13	;
    61ba:	5d 0a       	rlam	#3,	r13	;
    61bc:	0d 8c       	sub	r12,	r13	;
    61be:	0c 4d       	mov	r13,	r12	;
    61c0:	5c 02       	rlam	#1,	r12	;

000061c2 <.Loc.71.1>:
    61c2:	1d 4c d6 4e 	mov	20182(r12),r13	;0x04ed6
    61c6:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000061ca <.Loc.72.1>:
    __INK_GET_VAR_FROM_BUF(enq_idx) = 0;
    61ca:	1d 4c d8 4e 	mov	20184(r12),r13	;0x04ed8

000061ce <.Loc.72.1>:
    61ce:	8d 43 00 00 	mov	#0,	0(r13)	;r3 As==00

000061d2 <.Loc.75.1>:

    // Enqueue.
    __INK_GET_VAR_FROM_BUF_ARRAY(queue)[0].node = __INK_GET_VAR_FROM_BUF(src_node);
    61d2:	1e 4c d4 4e 	mov	20180(r12),r14	;0x04ed4

000061d6 <.Loc.71.1>:
__INK_GET_VAR_FROM_BUF(deq_idx) = 0;
    61d6:	3c 50 d4 4e 	add	#20180,	r12	;#0x4ed4

000061da <.Loc.75.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(queue)[0].node = __INK_GET_VAR_FROM_BUF(src_node);
    61da:	1c 4c 08 00 	mov	8(r12),	r12	;

000061de <.Loc.75.1>:
    61de:	ae 4c 00 00 	mov	@r12,	0(r14)	;

000061e2 <.Loc.76.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(queue)[0].dist = 0;
    61e2:	8e 43 02 00 	mov	#0,	2(r14)	;r3 As==00

000061e6 <.Loc.77.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(queue)[0].prev = UNDEFINED;
    61e6:	be 43 04 00 	mov	#-1,	4(r14)	;r3 As==11

000061ea <.Loc.78.1>:
    ++__INK_GET_VAR_FROM_BUF(enq_idx);
    61ea:	9d 53 00 00 	inc	0(r13)		;

000061ee <.Loc.81.1>:
    // LOG("E: %u, D: %u\n", RP(enq_idx), RP(deq_idx));

    return task_init_list;
}
    61ee:	3c 40 f4 61 	mov	#25076,	r12	;#0x61f4
    61f2:	30 41       	ret			

000061f4 <task_init_list>:

static void* task_init_list()
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    61f4:	b0 12 6c 64 	call	#25708		;#0x646c
    61f8:	0b 4c       	mov	r12,	r11	;

000061fa <.Loc.87.1>:
uint16_t i, sn;

    for (i = 0; i < N_NODES; i++)
    {
        __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[i].dist = INFINITY;
    61fa:	0f 4c       	mov	r12,	r15	;
    61fc:	5f 0a       	rlam	#3,	r15	;
    61fe:	0d 4f       	mov	r15,	r13	;
    6200:	0d 8c       	sub	r12,	r13	;
    6202:	5d 02       	rlam	#1,	r13	;
    6204:	1c 4d e0 4e 	mov	20192(r13),r12	;0x04ee0
    6208:	0d 4c       	mov	r12,	r13	;
    620a:	0e 4c       	mov	r12,	r14	;
    620c:	3e 50 64 00 	add	#100,	r14	;#0x0064

00006210 <.L4>:
    6210:	bd 43 00 00 	mov	#-1,	0(r13)	;r3 As==11

00006214 <.Loc.92.1>:
        __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[i].prev = UNDEFINED;
    6214:	bd 43 02 00 	mov	#-1,	2(r13)	;r3 As==11

00006218 <.Loc.89.1>:
    for (i = 0; i < N_NODES; i++)
    6218:	2d 52       	add	#4,	r13	;r2 As==10

0000621a <.Loc.89.1>:
    621a:	0d 9e       	cmp	r14,	r13	;
    621c:	f9 23       	jnz	$-12     	;abs 0x6210

0000621e <.Loc.95.1>:
    }

    sn                 = __INK_GET_VAR_FROM_BUF(src_node);
    621e:	0f 8b       	sub	r11,	r15	;
    6220:	5f 02       	rlam	#1,	r15	;
    6222:	1e 4f dc 4e 	mov	20188(r15),r14	;0x04edc

00006226 <.Loc.95.1>:
    6226:	2d 4e       	mov	@r14,	r13	;

00006228 <.Loc.96.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[sn].dist = 0;
    6228:	0f 4d       	mov	r13,	r15	;
    622a:	5f 06       	rlam	#2,	r15	;
    622c:	0c 5f       	add	r15,	r12	;

0000622e <.Loc.96.1>:
    622e:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00006232 <.Loc.97.1>:
    __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[sn].prev = UNDEFINED;
    6232:	bc 43 02 00 	mov	#-1,	2(r12)	;r3 As==11

00006236 <.Loc.99.1>:

    sn++;
    6236:	1d 53       	inc	r13		;

00006238 <.Loc.101.1>:
    // Test nodes 0, 1, 2, 3.
    if (sn < 4)
    6238:	7c 40 03 00 	mov.b	#3,	r12	;
    623c:	0c 9d       	cmp	r13,	r12	;
    623e:	05 28       	jnc	$+12     	;abs 0x624a

00006240 <.Loc.103.1>:
    {
        __INK_GET_VAR_FROM_BUF(src_node) = sn;
    6240:	8e 4d 00 00 	mov	r13,	0(r14)	;

00006244 <.Loc.110.1>:
    {
        __INK_GET_VAR_FROM_BUF(src_node) = 0;
    }

    return task_select_nearest_node;
}
    6244:	3c 40 54 62 	mov	#25172,	r12	;#0x6254
    6248:	30 41       	ret			

0000624a <.L5>:
        __INK_GET_VAR_FROM_BUF(src_node) = 0;
    624a:	8e 43 00 00 	mov	#0,	0(r14)	;r3 As==00

0000624e <.Loc.110.1>:
}
    624e:	3c 40 54 62 	mov	#25172,	r12	;#0x6254
    6252:	30 41       	ret			

00006254 <task_select_nearest_node>:

static void* __attribute__((annotate("INK::TASK15"))) task_select_nearest_node()
{
    6254:	2a 15       	pushm	#3,	r10	;16-bit words

00006256 <.LCFI0>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    6256:	b0 12 6c 64 	call	#25708		;#0x646c

0000625a <.Loc.116.1>:
uint16_t i = __INK_GET_VAR_FROM_BUF(deq_idx);
    625a:	0b 4c       	mov	r12,	r11	;
    625c:	5b 0a       	rlam	#3,	r11	;
    625e:	0d 4b       	mov	r11,	r13	;
    6260:	0d 8c       	sub	r12,	r13	;
    6262:	5d 02       	rlam	#1,	r13	;
    6264:	1a 4d d6 4e 	mov	20182(r13),r10	;0x04ed6

00006268 <.Loc.116.1>:
    6268:	2f 4a       	mov	@r10,	r15	;

0000626a <.Loc.118.1>:

    if (__INK_GET_VAR_FROM_BUF(enq_idx) != i)
    626a:	1e 4d d8 4e 	mov	20184(r13),r14	;0x04ed8

0000626e <.Loc.116.1>:
uint16_t i = __INK_GET_VAR_FROM_BUF(deq_idx);
    626e:	3d 50 d4 4e 	add	#20180,	r13	;#0x4ed4

00006272 <.Loc.118.1>:
    if (__INK_GET_VAR_FROM_BUF(enq_idx) != i)
    6272:	8e 9f 00 00 	cmp	r15,	0(r14)	;
    6276:	25 24       	jz	$+76     	;abs 0x62c2

00006278 <.Loc.121.1>:
    {
        // Dequeue nearest node.
        __INK_GET_VAR_FROM_BUF(nearest_node).node = __INK_GET_VAR_FROM_BUF_ARRAY(queue)[i].node;
    6278:	0e 4f       	mov	r15,	r14	;
    627a:	5e 02       	rlam	#1,	r14	;
    627c:	0e 5f       	add	r15,	r14	;
    627e:	5e 02       	rlam	#1,	r14	;
    6280:	2e 5d       	add	@r13,	r14	;

00006282 <.Loc.121.1>:
    6282:	1d 4d 0a 00 	mov	10(r13),r13	;0x0000a

00006286 <.Loc.121.1>:
    6286:	18 4e 02 00 	mov	2(r14),	r8	;
    628a:	19 4e 04 00 	mov	4(r14),	r9	;

0000628e <.Loc.121.1>:
    628e:	ad 4e 00 00 	mov	@r14,	0(r13)	;
    6292:	8d 48 02 00 	mov	r8,	2(r13)	;
    6296:	8d 49 04 00 	mov	r9,	4(r13)	;

0000629a <.Loc.124.1>:
        __INK_GET_VAR_FROM_BUF(nearest_node).dist = __INK_GET_VAR_FROM_BUF_ARRAY(queue)[i].dist;
        __INK_GET_VAR_FROM_BUF(nearest_node).prev = __INK_GET_VAR_FROM_BUF_ARRAY(queue)[i].prev;
        i++;
    629a:	1f 53       	inc	r15		;

0000629c <.Loc.125.1>:
        if (i < Q_SIZE)
    629c:	7d 40 63 00 	mov.b	#99,	r13	;#0x0063
    62a0:	0d 9f       	cmp	r15,	r13	;
    62a2:	0c 2c       	jc	$+26     	;abs 0x62bc

000062a4 <.Loc.131.1>:
        {
            __INK_GET_VAR_FROM_BUF(deq_idx) = i;
        }
        else
        {
            __INK_GET_VAR_FROM_BUF(deq_idx) = 0;
    62a4:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

000062a8 <.L11>:
        }
        // LOG("E: %u, D: %u\n", RP(enq_idx), RP(deq_idx));

        __INK_GET_VAR_FROM_BUF(node_idx) = 0;
    62a8:	0b 8c       	sub	r12,	r11	;
    62aa:	5b 02       	rlam	#1,	r11	;

000062ac <.Loc.135.1>:
    62ac:	1c 4b da 4e 	mov	20186(r11),r12	;0x04eda
    62b0:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000062b4 <.Loc.136.1>:
        return task_find_shorter_path;
    62b4:	3c 40 ca 62 	mov	#25290,	r12	;#0x62ca

000062b8 <.Loc.142.1>:
    }
    else
    {
        return task_done;
    }
}
    62b8:	28 17       	popm	#3,	r10	;16-bit words

000062ba <.LCFI1>:
    62ba:	30 41       	ret			

000062bc <.L13>:
            __INK_GET_VAR_FROM_BUF(deq_idx) = i;
    62bc:	8a 4f 00 00 	mov	r15,	0(r10)	;
    62c0:	f3 3f       	jmp	$-24     	;abs 0x62a8

000062c2 <.L12>:
        return task_done;
    62c2:	3c 40 86 63 	mov	#25478,	r12	;#0x6386

000062c6 <.Loc.142.1>:
}
    62c6:	28 17       	popm	#3,	r10	;16-bit words

000062c8 <.LCFI3>:
    62c8:	30 41       	ret			

000062ca <task_find_shorter_path>:

static void* __attribute__((annotate("INK::TASK15"))) task_find_shorter_path()
{
    62ca:	4a 15       	pushm	#5,	r10	;16-bit words

000062cc <.LCFI4>:
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
    62cc:	b0 12 6c 64 	call	#25708		;#0x646c

000062d0 <.Loc.147.1>:
uint16_t cost, node, dist, nearest_dist, i;

    node = __INK_GET_VAR_FROM_BUF(nearest_node).node;
    62d0:	39 40 d4 4e 	mov	#20180,	r9	;#0x4ed4
    62d4:	0b 4c       	mov	r12,	r11	;
    62d6:	5b 0a       	rlam	#3,	r11	;
    62d8:	0f 4b       	mov	r11,	r15	;
    62da:	0f 8c       	sub	r12,	r15	;
    62dc:	5f 02       	rlam	#1,	r15	;
    62de:	0f 59       	add	r9,	r15	;
    62e0:	17 4f 0a 00 	mov	10(r15),r7	;0x0000a

000062e4 <.Loc.149.1>:
    62e4:	2a 47       	mov	@r7,	r10	;

000062e6 <.Loc.150.1>:
    i    = __INK_GET_VAR_FROM_BUF(node_idx);
    62e6:	18 4f 06 00 	mov	6(r15),	r8	;

000062ea <.Loc.150.1>:
    62ea:	2e 48       	mov	@r8,	r14	;

000062ec <.LVL16>:
    cost = adj_matrix[node][i];
    62ec:	0d 4a       	mov	r10,	r13	;
    62ee:	5d 02       	rlam	#1,	r13	;
    62f0:	0d 5a       	add	r10,	r13	;
    62f2:	5d 0a       	rlam	#3,	r13	;
    62f4:	0d 5a       	add	r10,	r13	;
    62f6:	5d 02       	rlam	#1,	r13	;
    62f8:	0d 5e       	add	r14,	r13	;

000062fa <.Loc.151.1>:
    62fa:	5d 4d 00 44 	mov.b	17408(r13),r13	;0x04400

000062fe <.LVL17>:

    if (cost != INFINITY)
    {
        nearest_dist = __INK_GET_VAR_FROM_BUF(nearest_node).dist;
    62fe:	16 47 02 00 	mov	2(r7),	r6	;

00006302 <.Loc.156.1>:
        dist         = __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[i].dist;
    6302:	07 4e       	mov	r14,	r7	;
    6304:	57 06       	rlam	#2,	r7	;
    6306:	1f 4f 0c 00 	mov	12(r15),r15	;0x0000c
    630a:	0f 57       	add	r7,	r15	;

0000630c <.Loc.156.1>:
    630c:	27 4f       	mov	@r15,	r7	;

0000630e <.Loc.157.1>:
        if (dist == INFINITY || dist > (cost + nearest_dist))
    630e:	0d 56       	add	r6,	r13	;

00006310 <.LVL20>:
    6310:	37 93       	cmp	#-1,	r7	;r3 As==11
    6312:	0d 24       	jz	$+28     	;abs 0x632e

00006314 <.Loc.157.1>:
    6314:	0d 97       	cmp	r7,	r13	;
    6316:	0b 28       	jnc	$+24     	;abs 0x632e

00006318 <.L17>:
            }
            // LOG("E: %u, D: %u\n", RP(enq_idx), RP(deq_idx));
        }
    }

    if (++__INK_GET_VAR_FROM_BUF(node_idx) < N_NODES)
    6318:	1e 53       	inc	r14		;

0000631a <.Loc.184.1>:
    631a:	88 4e 00 00 	mov	r14,	0(r8)	;
    631e:	7c 40 18 00 	mov.b	#24,	r12	;#0x0018
    6322:	0c 9e       	cmp	r14,	r12	;
    6324:	28 2c       	jc	$+82     	;abs 0x6376

00006326 <.L21>:
    {
        return task_find_shorter_path;
    }
    else
    {
        return task_select_nearest_node;
    6326:	3c 40 54 62 	mov	#25172,	r12	;#0x6254

0000632a <.Loc.192.1>:
    }
}
    632a:	46 17       	popm	#5,	r10	;16-bit words

0000632c <.LCFI5>:
    632c:	30 41       	ret			

0000632e <.L16>:
            __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[i].dist = nearest_dist + cost;
    632e:	8f 4d 00 00 	mov	r13,	0(r15)	;

00006332 <.Loc.160.1>:
            __INK_GET_VAR_FROM_BUF_ARRAY(node_list)[i].prev = node;
    6332:	8f 4a 02 00 	mov	r10,	2(r15)	;

00006336 <.Loc.163.1>:
            uint16_t j = __INK_GET_VAR_FROM_BUF(enq_idx);
    6336:	0b 8c       	sub	r12,	r11	;
    6338:	5b 02       	rlam	#1,	r11	;
    633a:	0b 59       	add	r9,	r11	;
    633c:	19 4b 04 00 	mov	4(r11),	r9	;

00006340 <.Loc.163.1>:
    6340:	2f 49       	mov	@r9,	r15	;

00006342 <.LVL23>:
            __INK_GET_VAR_FROM_BUF_ARRAY(queue)[j].node = i;
    6342:	0c 4f       	mov	r15,	r12	;
    6344:	5c 02       	rlam	#1,	r12	;
    6346:	0c 5f       	add	r15,	r12	;
    6348:	5c 02       	rlam	#1,	r12	;
    634a:	2c 5b       	add	@r11,	r12	;

0000634c <.Loc.168.1>:
    634c:	8c 4e 00 00 	mov	r14,	0(r12)	;

00006350 <.Loc.169.1>:
            __INK_GET_VAR_FROM_BUF_ARRAY(queue)[j].dist = nearest_dist + cost;
    6350:	8c 4d 02 00 	mov	r13,	2(r12)	;

00006354 <.Loc.170.1>:
            __INK_GET_VAR_FROM_BUF_ARRAY(queue)[j].prev = node;
    6354:	8c 4a 04 00 	mov	r10,	4(r12)	;

00006358 <.Loc.171.1>:
            j++;
    6358:	1f 53       	inc	r15		;

0000635a <.Loc.172.1>:
            if (j < Q_SIZE)
    635a:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    635e:	0c 9f       	cmp	r15,	r12	;
    6360:	0e 28       	jnc	$+30     	;abs 0x637e

00006362 <.Loc.174.1>:
                __INK_GET_VAR_FROM_BUF(enq_idx) = j;
    6362:	89 4f 00 00 	mov	r15,	0(r9)	;
    6366:	2e 48       	mov	@r8,	r14	;

00006368 <.LBE2>:
    if (++__INK_GET_VAR_FROM_BUF(node_idx) < N_NODES)
    6368:	1e 53       	inc	r14		;

0000636a <.Loc.184.1>:
    636a:	88 4e 00 00 	mov	r14,	0(r8)	;
    636e:	7c 40 18 00 	mov.b	#24,	r12	;#0x0018
    6372:	0c 9e       	cmp	r14,	r12	;
    6374:	d8 2b       	jnc	$-78     	;abs 0x6326

00006376 <.L20>:
        return task_find_shorter_path;
    6376:	3c 40 ca 62 	mov	#25290,	r12	;#0x62ca

0000637a <.Loc.192.1>:
}
    637a:	46 17       	popm	#5,	r10	;16-bit words

0000637c <.LCFI7>:
    637c:	30 41       	ret			

0000637e <.L18>:
                __INK_GET_VAR_FROM_BUF(enq_idx) = 0;
    637e:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00
    6382:	2e 48       	mov	@r8,	r14	;

00006384 <.LVL29>:
    6384:	c9 3f       	jmp	$-108    	;abs 0x6318

00006386 <task_done>:

static void* task_done()
{
    __no_operation();
    6386:	03 43       	nop			

00006388 <.Loc.199.1>:

#if RAISE_PIN
    if (full_run_started)
    6388:	c2 93 f1 4e 	cmp.b	#0,	&0x4ef1	;r3 As==00
    638c:	08 24       	jz	$+18     	;abs 0x639e

0000638e <.LBB6>:
    {
        __port_on(3, 4);
    638e:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    6392:	22 02 

00006394 <.Loc.201.1>:
        __port_off(3, 4);
    6394:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    6398:	22 02 

0000639a <.Loc.202.1>:
        full_run_started = 0;
    639a:	c2 43 f1 4e 	mov.b	#0,	&0x4ef1	;r3 As==00

0000639e <.L23>:
    }
#endif

    return INK_THREAD_ENTRY_TASK;
}
    639e:	3c 40 b0 61 	mov	#25008,	r12	;#0x61b0
    63a2:	30 41       	ret			

000063a4 <__ink_create_thread_15>:
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(15, true)
    63a4:	b0 12 b2 64 	call	#25778		;#0x64b2
    63a8:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    63aa:	01 20       	jnz	$+4      	;abs 0x63ae

000063ac <.Loc.64.1>:
    63ac:	30 41       	ret			

000063ae <.L29>:
    63ae:	5e 43       	mov.b	#1,	r14	;r3 As==01
    63b0:	3d 40 b0 61 	mov	#25008,	r13	;#0x61b0
    63b4:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    63b8:	b0 12 20 65 	call	#25888		;#0x6520

000063bc <.Loc.64.1>:
    63bc:	30 41       	ret			

000063be <main>:

int main(void)
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    63be:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    63c2:	5c 01 

000063c4 <.Loc.214.1>:
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode
    63c4:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

000063c8 <.Loc.217.1>:

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
    63c8:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    63cc:	22 02 

000063ce <.Loc.217.1>:
    63ce:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    63d2:	24 02 

000063d4 <.Loc.217.1>:
    63d4:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    63d8:	22 02 

000063da <.Loc.217.1>:
#endif

    /* Start the scheduler. */
    ink_scheduler_run();
    63da:	b0 12 8c 6a 	call	#27276		;#0x6a8c

000063de <.Loc.223.1>:

    return 0;
}
    63de:	4c 43       	clr.b	r12		;
    63e0:	30 41       	ret			

000063e2 <__ink_initialize_shared_vars_15>:
__INK_INITIALIZE_SHARED_VARS_FUNC(15){
    __INK_SET_BUFFER_POINTERS_ARRAY(queue);
    63e2:	3c 40 d4 4e 	mov	#20180,	r12	;#0x4ed4
    63e6:	bc 40 54 5c 	mov	#23636,	0(r12)	;#0x5c54
    63ea:	00 00 

000063ec <.Loc.226.1>:
    63ec:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    63f0:	3d 50 54 5c 	add	#23636,	r13	;#0x5c54
    63f4:	8c 4d 0e 00 	mov	r13,	14(r12)	; 0x000e

000063f8 <.Loc.226.1>:
    __INK_SET_BUFFER_POINTERS(deq_idx);
    63f8:	bc 40 52 5c 	mov	#23634,	2(r12)	;#0x5c52
    63fc:	02 00 

000063fe <.Loc.227.1>:
    63fe:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    6402:	3d 50 52 5c 	add	#23634,	r13	;#0x5c52
    6406:	8c 4d 10 00 	mov	r13,	16(r12)	; 0x0010

0000640a <.Loc.227.1>:
    __INK_SET_BUFFER_POINTERS(enq_idx);
    640a:	bc 40 50 5c 	mov	#23632,	4(r12)	;#0x5c50
    640e:	04 00 

00006410 <.Loc.228.1>:
    6410:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    6414:	3d 50 50 5c 	add	#23632,	r13	;#0x5c50
    6418:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

0000641c <.Loc.228.1>:
    __INK_SET_BUFFER_POINTERS(node_idx);
    641c:	bc 40 4e 5c 	mov	#23630,	6(r12)	;#0x5c4e
    6420:	06 00 

00006422 <.Loc.229.1>:
    6422:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    6426:	3d 50 4e 5c 	add	#23630,	r13	;#0x5c4e
    642a:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000642e <.Loc.229.1>:
    __INK_SET_BUFFER_POINTERS(src_node);
    642e:	bc 40 4c 5c 	mov	#23628,	8(r12)	;#0x5c4c
    6432:	08 00 

00006434 <.Loc.230.1>:
    6434:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    6438:	3d 50 4c 5c 	add	#23628,	r13	;#0x5c4c
    643c:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00006440 <.Loc.230.1>:
    __INK_SET_BUFFER_POINTERS(nearest_node);
    6440:	bc 40 46 5c 	mov	#23622,	10(r12)	;#0x5c46, 0x000a
    6444:	0a 00 

00006446 <.Loc.231.1>:
    6446:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    644a:	3d 50 46 5c 	add	#23622,	r13	;#0x5c46
    644e:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00006452 <.Loc.231.1>:
    __INK_SET_BUFFER_POINTERS_ARRAY(node_list);
    6452:	bc 40 e2 5b 	mov	#23522,	12(r12)	;#0x5be2, 0x000c
    6456:	0c 00 

00006458 <.Loc.232.1>:
    6458:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca
    645c:	3d 50 e2 5b 	add	#23522,	r13	;#0x5be2
    6460:	8c 4d 1a 00 	mov	r13,	26(r12)	; 0x001a

00006464 <.Loc.232.1>:
}
    6464:	30 41       	ret			

00006466 <__ink_get_variable_address_with_offset>:


inline void* __ink_get_variable_address_with_offset(void* variable_address)
{
    return variable_address + buffer_offset;
}
    6466:	3c 50 ca 02 	add	#714,	r12	;#0x02ca

0000646a <L0^A>:
    646a:	30 41       	ret			

0000646c <__ink_get_current_task_buffer_index>:

inline int __ink_get_current_task_buffer_index()
{
    return current_task_buffer_index;
}
    646c:	5c 42 0e 5b 	mov.b	&0x5b0e,r12	;0x5b0e
    6470:	30 41       	ret			

00006472 <is_shared>:

bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
    6472:	3c 90 e2 5b 	cmp	#23522,	r12	;#0x5be2
    6476:	06 28       	jnc	$+14     	;abs 0x6484

00006478 <.Loc.27.1>:
    6478:	5d 43       	mov.b	#1,	r13	;r3 As==01
    647a:	3c 90 ac 5e 	cmp	#24236,	r12	;#0x5eac
    647e:	04 2c       	jc	$+10     	;abs 0x6488
    6480:	4c 4d       	mov.b	r13,	r12	;

00006482 <.L5>:
}
    6482:	30 41       	ret			

00006484 <.L7>:
    6484:	4c 43       	clr.b	r12		;

00006486 <.LVL5>:
    6486:	30 41       	ret			

00006488 <.L8>:
    return address >= buffer_start_address && address < buffer_end_address;
    6488:	4d 43       	clr.b	r13		;
    648a:	4c 4d       	mov.b	r13,	r12	;

0000648c <.LVL7>:
    648c:	fa 3f       	jmp	$-10     	;abs 0x6482

0000648e <__ink_translate_pointer_address>:
{
    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    648e:	0a 15       	pushm	#1,	r10	;16-bit words

00006490 <.LCFI0>:
    6490:	0a 4c       	mov	r12,	r10	;

00006492 <.LBB12>:
    return address >= buffer_start_address && address < buffer_end_address;
    6492:	3c 90 e2 5b 	cmp	#23522,	r12	;#0x5be2
    6496:	0a 28       	jnc	$+22     	;abs 0x64ac
    6498:	3c 90 ac 5e 	cmp	#24236,	r12	;#0x5eac
    649c:	07 2c       	jc	$+16     	;abs 0x64ac

0000649e <.LBB14>:
    return address + buffer_offset * buffer_index;
    649e:	5c 42 0e 5b 	mov.b	&0x5b0e,r12	;0x5b0e

000064a2 <.LVL11>:
    64a2:	3d 40 ca 02 	mov	#714,	r13	;#0x02ca

000064a6 <.LVL12>:
    64a6:	b0 12 8e 80 	call	#-32626	;#0x808e

000064aa <.LVL13>:
    64aa:	0a 5c       	add	r12,	r10	;

000064ac <.L12>:
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}
    64ac:	0c 4a       	mov	r10,	r12	;
    64ae:	0a 17       	popm	#1,	r10	;16-bit words

000064b0 <.LCFI1>:
    64b0:	30 41       	ret			

000064b2 <ink_is_first_boot>:
bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}
    64b2:	
000064b4 <L0^A>:
    64b4:	f2 4e 30 41 	mov.b	@r14+,	&0x4130	;

000064b8 <ink_is_initialized>:

bool ink_is_initialized()
{
    return __ink_initialized;
}
    64b8:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    64bc:	30 41       	ret			

000064be <__ink_init>:
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();
    64be:	b0 12 18 6d 	call	#27928		;#0x6d18

000064c2 <.LBB4>:

    // if this is the first boot
    if(ink_is_first_boot()){
    64c2:	c2 93 f2 4e 	cmp.b	#0,	&0x4ef2	;r3 As==00
    64c6:	22 20       	jnz	$+70     	;abs 0x650c

000064c8 <.L5>:
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    64c8:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000064cc <.Loc.50.1>:
    64cc:	f2 d2 04 02 	bis.b	#8,	&0x0204	;r2 As==11

000064d0 <.Loc.50.1>:
    64d0:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000064d4 <.Loc.50.1>:
    __port_init(1, 4); // Task Execution
    64d4:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    64d8:	02 02 

000064da <.Loc.51.1>:
    64da:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    64de:	04 02 

000064e0 <.Loc.51.1>:
    64e0:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    64e4:	02 02 

000064e6 <.Loc.51.1>:
    __port_init(3, 5); // Task commit
    64e6:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    64ea:	22 02 

000064ec <.Loc.52.1>:
    64ec:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    64f0:	24 02 

000064f2 <.Loc.52.1>:
    64f2:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    64f6:	22 02 

000064f8 <.Loc.52.1>:
    __port_init(3, 6); // Task buffer copy
    64f8:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    64fc:	22 02 

000064fe <.Loc.53.1>:
    64fe:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    6502:	24 02 

00006504 <.Loc.53.1>:
    6504:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6508:	22 02 

0000650a <.Loc.53.1>:
#endif
}
    650a:	30 41       	ret			

0000650c <.L6>:
        __scheduler_boot_init();
    650c:	b0 12 70 6d 	call	#28016		;#0x6d70

00006510 <.Loc.36.1>:
        __events_boot_init();
    6510:	b0 12 92 6a 	call	#27282		;#0x6a92
    6514:	d9 3f       	jmp	$-76     	;abs 0x64c8

00006516 <__ink_init_done>:
 * Constructor is 20001 because the thread creation and
 * shared variable initializers should be called first.
 */
void __attribute__((constructor(21000))) __ink_init_done()
{
    __is_first_boot = false;
    6516:	c2 43 f2 4e 	mov.b	#0,	&0x4ef2	;r3 As==00

0000651a <.Loc.69.1>:
    __ink_initialized = true;
    651a:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01

0000651e <.Loc.70.1>:
    651e:	30 41       	ret			

00006520 <__ink_create_thread>:
        data_buffer_size   = (uint16_t)&__ink_task_shared_##priority##_size; \
        break;


void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot)
{
    6520:	2a 15       	pushm	#3,	r10	;16-bit words

00006522 <L0^A>:
    6522:	21 83       	decd	r1		;

00006524 <.LCFI1>:
    6524:	4a 4c       	mov.b	r12,	r10	;
    6526:	09 4d       	mov	r13,	r9	;
    6528:	48 4e       	mov.b	r14,	r8	;

0000652a <.Loc.147.1>:
    if (!ink_is_first_boot())
    652a:	b0 12 b2 64 	call	#25778		;#0x64b2

0000652e <.LVL1>:
    652e:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6530:	56 24       	jz	$+174    	;abs 0x65de

00006532 <.Loc.152.1>:

    void* data_buffer = NULL;
    void* data_buffer_backup = NULL;
    uint16_t data_buffer_size = 0;

    switch (priority)
    6532:	7c 40 3f 00 	mov.b	#63,	r12	;#0x003f
    6536:	4c 9a       	cmp.b	r10,	r12	;
    6538:	47 28       	jnc	$+144    	;abs 0x65c8
    653a:	0c 4a       	mov	r10,	r12	;
    653c:	5c 02       	rlam	#1,	r12	;
    653e:	3c 50 48 65 	add	#25928,	r12	;#0x6548
    6542:	2c 4c       	mov	@r12,	r12	;
    6544:	00 4c       	br	r12		;
	...

00006548 <.L6>:
    6548:	c8 65 60 6a 	addc.b	r5,	27232(r8); 0x6a60
    654c:	4c 6a       	addc.b	r10,	r12	;
    654e:	38 6a       	addc	@r10+,	r8	;
    6550:	24 6a       	addc	@r10,	r4	;
    6552:	10 6a fc 69 	addc	27132(r10),r0	;0x069fc
    6556:	e8 69 d4 69 	addc.b	@r9,	27092(r8); 0x69d4
    655a:	c0 69 ae 69 	addc.b	r9,	0x69ae	; PC rel. 0xcf0a
    655e:	9c 69 8a 69 	addc	27018(r9),27000(r12);0x0698a, 0x6978
    6562:	78 69 
    6564:	66 69       	addc.b	@r9,	r6	;
    6566:	54 69 42 69 	addc.b	26946(r9),r4	;0x06942
    656a:	30 69       	addc	@r9+,	r0	;
    656c:	1e 69 0c 69 	addc	26892(r9),r14	;0x0690c
    6570:	fa 68 e8 68 	addc.b	@r8+,	26856(r10); 0x68e8
    6574:	d6 68 c4 68 	addc.b	26820(r8),26802(r6);0x068c4, 0x68b2
    6578:	b2 68 
    657a:	a0 68 8e 68 	addc	@r8,	0x688e	; PC rel. 0xce0a
    657e:	7c 68       	addc.b	@r8+,	r12	;
    6580:	6a 68       	addc.b	@r8,	r10	;
    6582:	58 68 46 68 	addc.b	26694(r8),r8	;0x06846
    6586:	34 68       	addc	@r8+,	r4	;
    6588:	22 68       	addc	@r8,	r2	;
    658a:	10 68 fe 67 	addc	26622(r8),r0	;0x067fe
    658e:	ec 67 da 67 	addc.b	@r7,	26586(r12); 0x67da
    6592:	c8 67 b6 67 	addc.b	r7,	26550(r8); 0x67b6
    6596:	a4 67 92 67 	addc	@r7,	26514(r4); 0x6792
    659a:	80 67 6e 67 	addc	r7,	0x676e	; PC rel. 0xcd0a
    659e:	5c 67 4a 67 	addc.b	26442(r7),r12	;0x0674a
    65a2:	38 67       	addc	@r7+,	r8	;
    65a4:	26 67       	addc	@r7,	r6	;
    65a6:	14 67 02 67 	addc	26370(r7),r4	;0x06702
    65aa:	f0 66 de 66 	addc.b	@r6+,	0x66de	; PC rel. 0xcc8a
    65ae:	cc 66 ba 66 	addc.b	r6,	26298(r12); 0x66ba
    65b2:	a8 66 96 66 	addc	@r6,	26262(r8); 0x6696
    65b6:	84 66 72 66 	addc	r6,	26226(r4); 0x6672
    65ba:	60 66       	addc.b	@r6,	r0	;
    65bc:	4e 66       	addc.b	r6,	r14	;
    65be:	3c 66       	addc	@r6+,	r12	;
    65c0:	2a 66       	addc	@r6,	r10	;
    65c2:	18 66 06 66 	addc	26118(r6),r8	;0x06606
    65c6:	
000065c8 <.L70>:
    if (!ink_is_first_boot())
    65c8:	4c 43       	clr.b	r12		;
    65ca:	4f 43       	clr.b	r15		;
    65cc:	4e 43       	clr.b	r14		;

000065ce <.L4>:
    default:
        // TODO: handle error
        break;
    }

    __create_thread(priority, entry_task, data_buffer, data_buffer_backup, data_buffer_size);
    65ce:	81 4c 00 00 	mov	r12,	0(r1)	;
    65d2:	0d 49       	mov	r9,	r13	;
    65d4:	4c 4a       	mov.b	r10,	r12	;

000065d6 <.LVL4>:
    65d6:	b0 12 98 6d 	call	#28056		;#0x6d98

000065da <.LVL5>:

    if (start_on_first_boot)
    65da:	08 93       	cmp	#0,	r8	;r3 As==00
    65dc:	03 20       	jnz	$+8      	;abs 0x65e4

000065de <.L1>:
    {
        __start_thread(__get_thread(priority));
    }
}
    65de:	21 53       	incd	r1		;

000065e0 <.LCFI2>:
    65e0:	28 17       	popm	#3,	r10	;16-bit words

000065e2 <.LCFI3>:
    65e2:	30 41       	ret			

000065e4 <.L75>:
        __start_thread(__get_thread(priority));
    65e4:	4c 4a       	mov.b	r10,	r12	;
    65e6:	b0 12 3c 6e 	call	#28220		;#0x6e3c
    65ea:	b0 12 20 6e 	call	#28192		;#0x6e20

000065ee <.Loc.232.1>:
}
    65ee:	21 53       	incd	r1		;

000065f0 <.LCFI5>:
    65f0:	28 17       	popm	#3,	r10	;16-bit words

000065f2 <.LCFI6>:
    65f2:	30 41       	ret			

000065f4 <.L5>:
        INK_CREATE_THREAD_CASE(63)
    65f4:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    65f8:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000065fc <.LVL9>:
    65fc:	3c 40 00 00 	mov	#0,	r12	;

00006600 <.Loc.220.1>:
    6600:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6604:	e4 3f       	jmp	$-54     	;abs 0x65ce

00006606 <.L7>:
        INK_CREATE_THREAD_CASE(62)
    6606:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    660a:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000660e <.LVL12>:
    660e:	3c 40 00 00 	mov	#0,	r12	;

00006612 <.Loc.219.1>:
    6612:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6616:	db 3f       	jmp	$-72     	;abs 0x65ce

00006618 <.L8>:
        INK_CREATE_THREAD_CASE(61)
    6618:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    661c:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006620 <.LVL15>:
    6620:	3c 40 00 00 	mov	#0,	r12	;

00006624 <.Loc.218.1>:
    6624:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6628:	d2 3f       	jmp	$-90     	;abs 0x65ce

0000662a <.L9>:
        INK_CREATE_THREAD_CASE(60)
    662a:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    662e:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006632 <.LVL18>:
    6632:	3c 40 00 00 	mov	#0,	r12	;

00006636 <.Loc.217.1>:
    6636:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    663a:	c9 3f       	jmp	$-108    	;abs 0x65ce

0000663c <.L10>:
        INK_CREATE_THREAD_CASE(59)
    663c:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6640:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006644 <.LVL21>:
    6644:	3c 40 00 00 	mov	#0,	r12	;

00006648 <.Loc.216.1>:
    6648:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    664c:	c0 3f       	jmp	$-126    	;abs 0x65ce

0000664e <.L11>:
        INK_CREATE_THREAD_CASE(58)
    664e:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6652:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006656 <.LVL24>:
    6656:	3c 40 00 00 	mov	#0,	r12	;

0000665a <.Loc.215.1>:
    665a:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    665e:	b7 3f       	jmp	$-144    	;abs 0x65ce

00006660 <.L12>:
        INK_CREATE_THREAD_CASE(57)
    6660:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6664:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006668 <.LVL27>:
    6668:	3c 40 00 00 	mov	#0,	r12	;

0000666c <.Loc.214.1>:
    666c:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6670:	ae 3f       	jmp	$-162    	;abs 0x65ce

00006672 <.L13>:
        INK_CREATE_THREAD_CASE(56)
    6672:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6676:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000667a <.LVL30>:
    667a:	3c 40 00 00 	mov	#0,	r12	;

0000667e <.Loc.213.1>:
    667e:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6682:	a5 3f       	jmp	$-180    	;abs 0x65ce

00006684 <.L14>:
        INK_CREATE_THREAD_CASE(55)
    6684:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6688:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000668c <.LVL33>:
    668c:	3c 40 00 00 	mov	#0,	r12	;

00006690 <.Loc.212.1>:
    6690:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6694:	9c 3f       	jmp	$-198    	;abs 0x65ce

00006696 <.L15>:
        INK_CREATE_THREAD_CASE(54)
    6696:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    669a:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000669e <.LVL36>:
    669e:	3c 40 00 00 	mov	#0,	r12	;

000066a2 <.Loc.211.1>:
    66a2:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    66a6:	93 3f       	jmp	$-216    	;abs 0x65ce

000066a8 <.L16>:
        INK_CREATE_THREAD_CASE(53)
    66a8:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    66ac:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000066b0 <.LVL39>:
    66b0:	3c 40 00 00 	mov	#0,	r12	;

000066b4 <.Loc.210.1>:
    66b4:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    66b8:	8a 3f       	jmp	$-234    	;abs 0x65ce

000066ba <.L17>:
        INK_CREATE_THREAD_CASE(52)
    66ba:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    66be:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000066c2 <.LVL42>:
    66c2:	3c 40 00 00 	mov	#0,	r12	;

000066c6 <.Loc.209.1>:
    66c6:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    66ca:	81 3f       	jmp	$-252    	;abs 0x65ce

000066cc <.L18>:
        INK_CREATE_THREAD_CASE(51)
    66cc:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    66d0:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000066d4 <.LVL45>:
    66d4:	3c 40 00 00 	mov	#0,	r12	;

000066d8 <.Loc.208.1>:
    66d8:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    66dc:	78 3f       	jmp	$-270    	;abs 0x65ce

000066de <.L19>:
        INK_CREATE_THREAD_CASE(50)
    66de:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    66e2:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000066e6 <.LVL48>:
    66e6:	3c 40 00 00 	mov	#0,	r12	;

000066ea <.Loc.207.1>:
    66ea:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    66ee:	6f 3f       	jmp	$-288    	;abs 0x65ce

000066f0 <.L20>:
        INK_CREATE_THREAD_CASE(49)
    66f0:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    66f4:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000066f8 <.LVL51>:
    66f8:	3c 40 00 00 	mov	#0,	r12	;

000066fc <.Loc.206.1>:
    66fc:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6700:	66 3f       	jmp	$-306    	;abs 0x65ce

00006702 <.L21>:
        INK_CREATE_THREAD_CASE(48)
    6702:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6706:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000670a <.LVL54>:
    670a:	3c 40 00 00 	mov	#0,	r12	;

0000670e <.Loc.205.1>:
    670e:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6712:	5d 3f       	jmp	$-324    	;abs 0x65ce

00006714 <.L22>:
        INK_CREATE_THREAD_CASE(47)
    6714:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6718:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000671c <.LVL57>:
    671c:	3c 40 00 00 	mov	#0,	r12	;

00006720 <.Loc.204.1>:
    6720:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6724:	54 3f       	jmp	$-342    	;abs 0x65ce

00006726 <.L23>:
        INK_CREATE_THREAD_CASE(46)
    6726:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    672a:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000672e <.LVL60>:
    672e:	3c 40 00 00 	mov	#0,	r12	;

00006732 <.Loc.203.1>:
    6732:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6736:	4b 3f       	jmp	$-360    	;abs 0x65ce

00006738 <.L24>:
        INK_CREATE_THREAD_CASE(45)
    6738:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    673c:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006740 <.LVL63>:
    6740:	3c 40 00 00 	mov	#0,	r12	;

00006744 <.Loc.202.1>:
    6744:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6748:	42 3f       	jmp	$-378    	;abs 0x65ce

0000674a <.L25>:
        INK_CREATE_THREAD_CASE(44)
    674a:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    674e:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006752 <.LVL66>:
    6752:	3c 40 00 00 	mov	#0,	r12	;

00006756 <.Loc.201.1>:
    6756:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    675a:	39 3f       	jmp	$-396    	;abs 0x65ce

0000675c <.L26>:
        INK_CREATE_THREAD_CASE(43)
    675c:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6760:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006764 <.LVL69>:
    6764:	3c 40 00 00 	mov	#0,	r12	;

00006768 <.Loc.200.1>:
    6768:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    676c:	30 3f       	jmp	$-414    	;abs 0x65ce

0000676e <.L27>:
        INK_CREATE_THREAD_CASE(42)
    676e:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6772:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006776 <.LVL72>:
    6776:	3c 40 00 00 	mov	#0,	r12	;

0000677a <.Loc.199.1>:
    677a:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    677e:	27 3f       	jmp	$-432    	;abs 0x65ce

00006780 <.L28>:
        INK_CREATE_THREAD_CASE(41)
    6780:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6784:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006788 <.LVL75>:
    6788:	3c 40 00 00 	mov	#0,	r12	;

0000678c <.Loc.198.1>:
    678c:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6790:	1e 3f       	jmp	$-450    	;abs 0x65ce

00006792 <.L29>:
        INK_CREATE_THREAD_CASE(40)
    6792:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6796:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000679a <.LVL78>:
    679a:	3c 40 00 00 	mov	#0,	r12	;

0000679e <.Loc.197.1>:
    679e:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    67a2:	15 3f       	jmp	$-468    	;abs 0x65ce

000067a4 <.L30>:
        INK_CREATE_THREAD_CASE(39)
    67a4:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    67a8:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000067ac <.LVL81>:
    67ac:	3c 40 00 00 	mov	#0,	r12	;

000067b0 <.Loc.196.1>:
    67b0:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    67b4:	0c 3f       	jmp	$-486    	;abs 0x65ce

000067b6 <.L31>:
        INK_CREATE_THREAD_CASE(38)
    67b6:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    67ba:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000067be <.LVL84>:
    67be:	3c 40 00 00 	mov	#0,	r12	;

000067c2 <.Loc.195.1>:
    67c2:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    67c6:	03 3f       	jmp	$-504    	;abs 0x65ce

000067c8 <.L32>:
        INK_CREATE_THREAD_CASE(37)
    67c8:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    67cc:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000067d0 <.LVL87>:
    67d0:	3c 40 00 00 	mov	#0,	r12	;

000067d4 <.Loc.194.1>:
    67d4:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    67d8:	fa 3e       	jmp	$-522    	;abs 0x65ce

000067da <.L33>:
        INK_CREATE_THREAD_CASE(36)
    67da:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    67de:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000067e2 <.LVL90>:
    67e2:	3c 40 00 00 	mov	#0,	r12	;

000067e6 <.Loc.193.1>:
    67e6:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    67ea:	f1 3e       	jmp	$-540    	;abs 0x65ce

000067ec <.L34>:
        INK_CREATE_THREAD_CASE(35)
    67ec:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    67f0:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000067f4 <.LVL93>:
    67f4:	3c 40 00 00 	mov	#0,	r12	;

000067f8 <.Loc.192.1>:
    67f8:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    67fc:	e8 3e       	jmp	$-558    	;abs 0x65ce

000067fe <.L35>:
        INK_CREATE_THREAD_CASE(34)
    67fe:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6802:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006806 <.LVL96>:
    6806:	3c 40 00 00 	mov	#0,	r12	;

0000680a <.Loc.191.1>:
    680a:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    680e:	df 3e       	jmp	$-576    	;abs 0x65ce

00006810 <.L36>:
        INK_CREATE_THREAD_CASE(33)
    6810:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6814:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006818 <.LVL99>:
    6818:	3c 40 00 00 	mov	#0,	r12	;

0000681c <.Loc.190.1>:
    681c:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6820:	d6 3e       	jmp	$-594    	;abs 0x65ce

00006822 <.L37>:
        INK_CREATE_THREAD_CASE(32)
    6822:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6826:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000682a <.LVL102>:
    682a:	3c 40 00 00 	mov	#0,	r12	;

0000682e <.Loc.189.1>:
    682e:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6832:	cd 3e       	jmp	$-612    	;abs 0x65ce

00006834 <.L38>:
        INK_CREATE_THREAD_CASE(31)
    6834:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6838:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000683c <.LVL105>:
    683c:	3c 40 00 00 	mov	#0,	r12	;

00006840 <.Loc.188.1>:
    6840:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6844:	c4 3e       	jmp	$-630    	;abs 0x65ce

00006846 <.L39>:
        INK_CREATE_THREAD_CASE(30)
    6846:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    684a:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000684e <.LVL108>:
    684e:	3c 40 00 00 	mov	#0,	r12	;

00006852 <.Loc.187.1>:
    6852:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6856:	bb 3e       	jmp	$-648    	;abs 0x65ce

00006858 <.L40>:
        INK_CREATE_THREAD_CASE(29)
    6858:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    685c:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006860 <.LVL111>:
    6860:	3c 40 00 00 	mov	#0,	r12	;

00006864 <.Loc.186.1>:
    6864:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6868:	b2 3e       	jmp	$-666    	;abs 0x65ce

0000686a <.L41>:
        INK_CREATE_THREAD_CASE(28)
    686a:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    686e:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006872 <.LVL114>:
    6872:	3c 40 00 00 	mov	#0,	r12	;

00006876 <.Loc.185.1>:
    6876:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    687a:	a9 3e       	jmp	$-684    	;abs 0x65ce

0000687c <.L42>:
        INK_CREATE_THREAD_CASE(27)
    687c:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6880:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006884 <.LVL117>:
    6884:	3c 40 00 00 	mov	#0,	r12	;

00006888 <.Loc.184.1>:
    6888:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    688c:	a0 3e       	jmp	$-702    	;abs 0x65ce

0000688e <.L43>:
        INK_CREATE_THREAD_CASE(26)
    688e:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6892:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006896 <.LVL120>:
    6896:	3c 40 00 00 	mov	#0,	r12	;

0000689a <.Loc.183.1>:
    689a:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    689e:	97 3e       	jmp	$-720    	;abs 0x65ce

000068a0 <.L44>:
        INK_CREATE_THREAD_CASE(25)
    68a0:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    68a4:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000068a8 <.LVL123>:
    68a8:	3c 40 00 00 	mov	#0,	r12	;

000068ac <.Loc.182.1>:
    68ac:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    68b0:	8e 3e       	jmp	$-738    	;abs 0x65ce

000068b2 <.L45>:
        INK_CREATE_THREAD_CASE(24)
    68b2:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    68b6:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000068ba <.LVL126>:
    68ba:	3c 40 00 00 	mov	#0,	r12	;

000068be <.Loc.181.1>:
    68be:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    68c2:	85 3e       	jmp	$-756    	;abs 0x65ce

000068c4 <.L46>:
        INK_CREATE_THREAD_CASE(23)
    68c4:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    68c8:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000068cc <.LVL129>:
    68cc:	3c 40 00 00 	mov	#0,	r12	;

000068d0 <.Loc.180.1>:
    68d0:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    68d4:	7c 3e       	jmp	$-774    	;abs 0x65ce

000068d6 <.L47>:
        INK_CREATE_THREAD_CASE(22)
    68d6:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    68da:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000068de <.LVL132>:
    68de:	3c 40 00 00 	mov	#0,	r12	;

000068e2 <.Loc.179.1>:
    68e2:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    68e6:	73 3e       	jmp	$-792    	;abs 0x65ce

000068e8 <.L48>:
        INK_CREATE_THREAD_CASE(21)
    68e8:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    68ec:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000068f0 <.LVL135>:
    68f0:	3c 40 00 00 	mov	#0,	r12	;

000068f4 <.Loc.178.1>:
    68f4:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    68f8:	6a 3e       	jmp	$-810    	;abs 0x65ce

000068fa <.L49>:
        INK_CREATE_THREAD_CASE(20)
    68fa:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    68fe:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006902 <.LVL138>:
    6902:	3c 40 00 00 	mov	#0,	r12	;

00006906 <.Loc.177.1>:
    6906:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    690a:	61 3e       	jmp	$-828    	;abs 0x65ce

0000690c <.L50>:
        INK_CREATE_THREAD_CASE(19)
    690c:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6910:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006914 <.LVL141>:
    6914:	3c 40 00 00 	mov	#0,	r12	;

00006918 <.Loc.176.1>:
    6918:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    691c:	58 3e       	jmp	$-846    	;abs 0x65ce

0000691e <.L51>:
        INK_CREATE_THREAD_CASE(18)
    691e:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6922:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006926 <.LVL144>:
    6926:	3c 40 00 00 	mov	#0,	r12	;

0000692a <.Loc.175.1>:
    692a:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    692e:	4f 3e       	jmp	$-864    	;abs 0x65ce

00006930 <.L52>:
        INK_CREATE_THREAD_CASE(17)
    6930:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6934:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006938 <.LVL147>:
    6938:	3c 40 00 00 	mov	#0,	r12	;

0000693c <.Loc.174.1>:
    693c:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6940:	46 3e       	jmp	$-882    	;abs 0x65ce

00006942 <.L53>:
        INK_CREATE_THREAD_CASE(16)
    6942:	3f 40 ac 5e 	mov	#24236,	r15	;#0x5eac
    6946:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000694a <.LVL150>:
    694a:	3c 40 00 00 	mov	#0,	r12	;

0000694e <.Loc.173.1>:
    694e:	3e 40 ac 5e 	mov	#24236,	r14	;#0x5eac
    6952:	3d 3e       	jmp	$-900    	;abs 0x65ce

00006954 <.L54>:
        INK_CREATE_THREAD_CASE(15)
    6954:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6958:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000695c <.LVL153>:
    695c:	3c 40 ca 02 	mov	#714,	r12	;#0x02ca

00006960 <.Loc.172.1>:
    6960:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6964:	34 3e       	jmp	$-918    	;abs 0x65ce

00006966 <.L55>:
        INK_CREATE_THREAD_CASE(14)
    6966:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    696a:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

0000696e <.LVL156>:
    696e:	3c 40 00 00 	mov	#0,	r12	;

00006972 <.Loc.171.1>:
    6972:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6976:	2b 3e       	jmp	$-936    	;abs 0x65ce

00006978 <.L56>:
        INK_CREATE_THREAD_CASE(13)
    6978:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    697c:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006980 <.LVL159>:
    6980:	3c 40 00 00 	mov	#0,	r12	;

00006984 <.Loc.170.1>:
    6984:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6988:	22 3e       	jmp	$-954    	;abs 0x65ce

0000698a <.L57>:
        INK_CREATE_THREAD_CASE(12)
    698a:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    698e:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006992 <.LVL162>:
    6992:	3c 40 00 00 	mov	#0,	r12	;

00006996 <.Loc.169.1>:
    6996:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    699a:	19 3e       	jmp	$-972    	;abs 0x65ce

0000699c <.L58>:
        INK_CREATE_THREAD_CASE(11)
    699c:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    69a0:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000069a4 <.LVL165>:
    69a4:	3c 40 00 00 	mov	#0,	r12	;

000069a8 <.Loc.168.1>:
    69a8:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    69ac:	10 3e       	jmp	$-990    	;abs 0x65ce

000069ae <.L59>:
        INK_CREATE_THREAD_CASE(10)
    69ae:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    69b2:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000069b6 <.LVL168>:
    69b6:	3c 40 00 00 	mov	#0,	r12	;

000069ba <.Loc.167.1>:
    69ba:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    69be:	07 3e       	jmp	$-1008   	;abs 0x65ce

000069c0 <.L60>:
        INK_CREATE_THREAD_CASE(9)
    69c0:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    69c4:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000069c8 <.LVL171>:
    69c8:	3c 40 00 00 	mov	#0,	r12	;

000069cc <.Loc.166.1>:
    69cc:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    69d0:	30 40 ce 65 	br	#0x65ce		;

000069d4 <.L61>:
        INK_CREATE_THREAD_CASE(8)
    69d4:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    69d8:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000069dc <.LVL174>:
    69dc:	3c 40 00 00 	mov	#0,	r12	;

000069e0 <.Loc.165.1>:
    69e0:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    69e4:	30 40 ce 65 	br	#0x65ce		;

000069e8 <.L62>:
        INK_CREATE_THREAD_CASE(7)
    69e8:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    69ec:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

000069f0 <.LVL177>:
    69f0:	3c 40 00 00 	mov	#0,	r12	;

000069f4 <.Loc.164.1>:
    69f4:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    69f8:	30 40 ce 65 	br	#0x65ce		;

000069fc <.L63>:
        INK_CREATE_THREAD_CASE(6)
    69fc:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6a00:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006a04 <.LVL180>:
    6a04:	3c 40 00 00 	mov	#0,	r12	;

00006a08 <.Loc.163.1>:
    6a08:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6a0c:	30 40 ce 65 	br	#0x65ce		;

00006a10 <.L64>:
        INK_CREATE_THREAD_CASE(5)
    6a10:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6a14:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006a18 <.LVL183>:
    6a18:	3c 40 00 00 	mov	#0,	r12	;

00006a1c <.Loc.162.1>:
    6a1c:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6a20:	30 40 ce 65 	br	#0x65ce		;

00006a24 <.L65>:
        INK_CREATE_THREAD_CASE(4)
    6a24:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6a28:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006a2c <.LVL186>:
    6a2c:	3c 40 00 00 	mov	#0,	r12	;

00006a30 <.Loc.161.1>:
    6a30:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6a34:	30 40 ce 65 	br	#0x65ce		;

00006a38 <.L66>:
        INK_CREATE_THREAD_CASE(3)
    6a38:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6a3c:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006a40 <.LVL189>:
    6a40:	3c 40 00 00 	mov	#0,	r12	;

00006a44 <.Loc.160.1>:
    6a44:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6a48:	30 40 ce 65 	br	#0x65ce		;

00006a4c <.L67>:
        INK_CREATE_THREAD_CASE(2)
    6a4c:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6a50:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006a54 <.LVL192>:
    6a54:	3c 40 00 00 	mov	#0,	r12	;

00006a58 <.Loc.159.1>:
    6a58:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6a5c:	30 40 ce 65 	br	#0x65ce		;

00006a60 <.L68>:
        INK_CREATE_THREAD_CASE(1)
    6a60:	3f 40 e2 5b 	mov	#23522,	r15	;#0x5be2
    6a64:	3f 50 ca 02 	add	#714,	r15	;#0x02ca

00006a68 <.LVL195>:
    6a68:	3c 40 00 00 	mov	#0,	r12	;

00006a6c <.Loc.158.1>:
    6a6c:	3e 40 e2 5b 	mov	#23522,	r14	;#0x5be2
    6a70:	30 40 ce 65 	br	#0x65ce		;

00006a74 <ink_activate_thread>:

inline void ink_activate_thread(uint8_t thread_priority_to_signal)
{
    6a74:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006a78 <.Loc.236.1>:
    __SIGNAL(thread_priority_to_signal);
    6a78:	32 c2       	dint			
    6a7a:	03 43       	nop			

00006a7c <.Loc.236.1>:
    6a7c:	b0 12 3c 6e 	call	#28220		;#0x6e3c

00006a80 <.LVL198>:
    6a80:	b0 12 20 6e 	call	#28192		;#0x6e20

00006a84 <.Loc.236.1>:
    6a84:	03 43       	nop			
    6a86:	32 d2       	eint			
    6a88:	03 43       	nop			

00006a8a <.Loc.237.1>:
}
    6a8a:	30 41       	ret			

00006a8c <ink_scheduler_run>:
#include "api/include/scheduler.h"
#include "scheduler/scheduler.h"

void ink_scheduler_run()
{
    __scheduler_run();
    6a8c:	b0 12 52 6e 	call	#28242		;#0x6e52

00006a90 <.Loc.7.1>:
}
    6a90:	30 41       	ret			

00006a92 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    6a92:	1a 15       	pushm	#2,	r10	;16-bit words

00006a94 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    6a94:	3a 40 74 54 	mov	#21620,	r10	;#0x5474
    6a98:	39 40 74 4f 	mov	#20340,	r9	;#0x4f74

00006a9c <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    6a9c:	0c 4a       	mov	r10,	r12	;
    6a9e:	b0 12 44 6c 	call	#27716		;#0x6c44

00006aa2 <.Loc.27.1>:
        _popped[i] = NULL;
    6aa2:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

00006aa6 <.Loc.24.1>:
    for(i=MAX_THREADS;i>0;i--){
    6aa6:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    6aaa:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

00006aae <.Loc.24.1>:
    6aae:	3a 90 74 4f 	cmp	#20340,	r10	;#0x4f74
    6ab2:	f4 23       	jnz	$-22     	;abs 0x6a9c

00006ab4 <.Loc.29.1>:
    }
}
    6ab4:	19 17       	popm	#2,	r10	;16-bit words

00006ab6 <.LCFI1>:
    6ab6:	30 41       	ret			

00006ab8 <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
// TODO: does this function work? It can never signal a thread!!! And it can only process one event!! If the event/thread changes then the previous event is lost.
void __events_commit(){
    switch(_status){
    6ab8:	5c 42 80 54 	mov.b	&0x5480,r12	;0x5480
    6abc:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    6abe:	14 24       	jz	$+42     	;abs 0x6ae8
    6ac0:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6ac2:	1f 24       	jz	$+64     	;abs 0x6b02
    6ac4:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ac6:	01 24       	jz	$+4      	;abs 0x6aca

00006ac8 <.Loc.51.1>:
            __start_thread(_thread);
            __enable_interrupt();
        }
        _status = EVENT_DONE;
    }
}
    6ac8:	30 41       	ret			

00006aca <.L16>:
        __perqueue_push(&_events[_thread->priority], &_event);
    6aca:	1d 42 7e 54 	mov	&0x547e,r13	;0x547e

00006ace <.Loc.37.1>:
    6ace:	6c 4d       	mov.b	@r13,	r12	;
    6ad0:	5c 06       	rlam	#2,	r12	;
    6ad2:	6d 4d       	mov.b	@r13,	r13	;
    6ad4:	0c 5d       	add	r13,	r12	;
    6ad6:	5c 06       	rlam	#2,	r12	;
    6ad8:	3d 40 74 54 	mov	#21620,	r13	;#0x5474
    6adc:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6ae0:	b0 12 a0 6c 	call	#27808		;#0x6ca0

00006ae4 <.Loc.38.1>:
        _status = EVENT_COMMIT;
    6ae4:	d2 43 80 54 	mov.b	#1,	&0x5480	;r3 As==01

00006ae8 <.L6>:
        __perqueue_push_commit(&_events[_thread->priority]);
    6ae8:	1d 42 7e 54 	mov	&0x547e,r13	;0x547e

00006aec <.Loc.40.1>:
    6aec:	6c 4d       	mov.b	@r13,	r12	;
    6aee:	5c 06       	rlam	#2,	r12	;
    6af0:	6d 4d       	mov.b	@r13,	r13	;
    6af2:	0c 5d       	add	r13,	r12	;
    6af4:	5c 06       	rlam	#2,	r12	;
    6af6:	
00006af8 <L0^A>:
    6af8:	74 4f       	mov.b	@r15+,	r4	;
    6afa:	b0 12 d6 6c 	call	#27862		;#0x6cd6

00006afe <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    6afe:	e2 43 80 54 	mov.b	#2,	&0x5480	;r3 As==10

00006b02 <.L7>:
        if(_thread->state == THREAD_STOPPED){
    6b02:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e
    6b06:	1c 4c 02 00 	mov	2(r12),	r12	;

00006b0a <.Loc.44.1>:
    6b0a:	3c 92       	cmp	#8,	r12	;r2 As==11
    6b0c:	04 24       	jz	$+10     	;abs 0x6b16

00006b0e <.L9>:
        _status = EVENT_DONE;
    6b0e:	f2 40 03 00 	mov.b	#3,	&0x5480	;
    6b12:	80 54 

00006b14 <.Loc.51.1>:
}
    6b14:	30 41       	ret			

00006b16 <.L17>:
            __disable_interrupt();
    6b16:	32 c2       	dint			
    6b18:	03 43       	nop			

00006b1a <.Loc.46.1>:
            __start_thread(_thread);
    6b1a:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e
    6b1e:	b0 12 20 6e 	call	#28192		;#0x6e20

00006b22 <.Loc.47.1>:
            __enable_interrupt();
    6b22:	03 43       	nop			
    6b24:	32 d2       	eint			
    6b26:	03 43       	nop			
    6b28:	f2 3f       	jmp	$-26     	;abs 0x6b0e

00006b2a <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    6b2a:	1d 42 7e 54 	mov	&0x547e,r13	;0x547e

00006b2e <.Loc.55.1>:
    6b2e:	6c 4d       	mov.b	@r13,	r12	;

00006b30 <.LVL7>:
    6b30:	5c 06       	rlam	#2,	r12	;
    6b32:	6d 4d       	mov.b	@r13,	r13	;
    6b34:	0c 5d       	add	r13,	r12	;
    6b36:	5c 06       	rlam	#2,	r12	;
    6b38:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6b3c:	b0 12 74 6c 	call	#27764		;#0x6c74

00006b40 <.Loc.56.1>:
}
    6b40:	30 41       	ret			

00006b42 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6b42:	82 4c 7e 54 	mov	r12,	&0x547e	;

00006b46 <.Loc.64.1>:
    _event = *event;
    6b46:	0e 4d       	mov	r13,	r14	;
    6b48:	b2 4e 74 54 	mov	@r14+,	&0x5474	;
    6b4c:	b2 4e 76 54 	mov	@r14+,	&0x5476	;
    6b50:	92 4d 04 00 	mov	4(r13),	&0x5478	;
    6b54:	78 54 
    6b56:	92 4d 06 00 	mov	6(r13),	&0x547a	;
    6b5a:	7a 54 
    6b5c:	92 4e 04 00 	mov	4(r14),	&0x547c	;
    6b60:	7c 54 

00006b62 <.Loc.65.1>:
    _status = EVENT_INSERT;
    6b62:	c2 43 80 54 	mov.b	#0,	&0x5480	;r3 As==00

00006b66 <.LBB4>:
    switch(_status){
    6b66:	5d 42 80 54 	mov.b	&0x5480,r13	;0x5480

00006b6a <.LVL10>:
    6b6a:	5d 93       	cmp.b	#1,	r13	;r3 As==01
    6b6c:	14 24       	jz	$+42     	;abs 0x6b96
    6b6e:	6d 93       	cmp.b	#2,	r13	;r3 As==10
    6b70:	1f 24       	jz	$+64     	;abs 0x6bb0
    6b72:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b74:	01 24       	jz	$+4      	;abs 0x6b78

00006b76 <.LBE4>:
    __events_commit();
}
    6b76:	30 41       	ret			

00006b78 <.L30>:
        __perqueue_push(&_events[_thread->priority], &_event);
    6b78:	6d 4c       	mov.b	@r12,	r13	;
    6b7a:	5d 06       	rlam	#2,	r13	;
    6b7c:	6c 4c       	mov.b	@r12,	r12	;

00006b7e <.LVL11>:
    6b7e:	0c 5d       	add	r13,	r12	;
    6b80:	5c 06       	rlam	#2,	r12	;
    6b82:	3d 40 74 54 	mov	#21620,	r13	;#0x5474
    6b86:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6b8a:	b0 12 a0 6c 	call	#27808		;#0x6ca0

00006b8e <.LVL12>:
        _status = EVENT_COMMIT;
    6b8e:	d2 43 80 54 	mov.b	#1,	&0x5480	;r3 As==01
    6b92:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e

00006b96 <.L20>:
        __perqueue_push_commit(&_events[_thread->priority]);
    6b96:	6d 4c       	mov.b	@r12,	r13	;
    6b98:	5d 06       	rlam	#2,	r13	;
    6b9a:	6c 4c       	mov.b	@r12,	r12	;
    6b9c:	0c 5d       	add	r13,	r12	;
    6b9e:	5c 06       	rlam	#2,	r12	;
    6ba0:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6ba4:	b0 12 d6 6c 	call	#27862		;#0x6cd6

00006ba8 <.Loc.41.1>:
        _status = EVENT_SIGNAL;
    6ba8:	e2 43 80 54 	mov.b	#2,	&0x5480	;r3 As==10
    6bac:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e

00006bb0 <.L21>:
        if(_thread->state == THREAD_STOPPED){
    6bb0:	1c 4c 02 00 	mov	2(r12),	r12	;

00006bb4 <.Loc.44.1>:
    6bb4:	3c 92       	cmp	#8,	r12	;r2 As==11
    6bb6:	04 24       	jz	$+10     	;abs 0x6bc0

00006bb8 <.L23>:
        _status = EVENT_DONE;
    6bb8:	f2 40 03 00 	mov.b	#3,	&0x5480	;
    6bbc:	80 54 

00006bbe <.Loc.67.1>:
}
    6bbe:	30 41       	ret			

00006bc0 <.L31>:
            __disable_interrupt();
    6bc0:	32 c2       	dint			
    6bc2:	03 43       	nop			

00006bc4 <.Loc.46.1>:
            __start_thread(_thread);
    6bc4:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e
    6bc8:	b0 12 20 6e 	call	#28192		;#0x6e20

00006bcc <.Loc.47.1>:
            __enable_interrupt();
    6bcc:	03 43       	nop			
    6bce:	32 d2       	eint			
    6bd0:	03 43       	nop			
    6bd2:	f2 3f       	jmp	$-26     	;abs 0x6bb8

00006bd4 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    6bd4:	6d 4c       	mov.b	@r12,	r13	;
    6bd6:	5d 06       	rlam	#2,	r13	;
    6bd8:	6c 4c       	mov.b	@r12,	r12	;

00006bda <.LVL16>:
    6bda:	0c 5d       	add	r13,	r12	;
    6bdc:	5c 06       	rlam	#2,	r12	;
    6bde:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6be2:	b0 12 5e 6c 	call	#27742		;#0x6c5e
    6be6:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006bea <.Loc.71.1>:
    6bea:	3c 53       	add	#-1,	r12	;r3 As==11

00006bec <.Loc.75.1>:
        return 0;

    return 1;
}
    6bec:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6bf0:	30 41       	ret			

00006bf2 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    6bf2:	0a 15       	pushm	#1,	r10	;16-bit words

00006bf4 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    6bf4:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e

00006bf8 <.LVL19>:
    6bf8:	6a 4c       	mov.b	@r12,	r10	;

00006bfa <.Loc.81.1>:
    6bfa:	0c 4a       	mov	r10,	r12	;
    6bfc:	5c 06       	rlam	#2,	r12	;
    6bfe:	0c 5a       	add	r10,	r12	;
    6c00:	5c 06       	rlam	#2,	r12	;
    6c02:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6c06:	b0 12 de 6c 	call	#27870		;#0x6cde

00006c0a <.Loc.81.1>:
    6c0a:	5a 02       	rlam	#1,	r10	;
    6c0c:	8a 4c f4 4e 	mov	r12,	20212(r10); 0x4ef4

00006c10 <.Loc.82.1>:
    return _popped[_thread->priority];
    6c10:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e
    6c14:	6c 4c       	mov.b	@r12,	r12	;
    6c16:	5c 02       	rlam	#1,	r12	;

00006c18 <.Loc.83.1>:
}
    6c18:	1c 4c f4 4e 	mov	20212(r12),r12	;0x04ef4
    6c1c:	0a 17       	popm	#1,	r10	;16-bit words

00006c1e <.LCFI3>:
    6c1e:	30 41       	ret			

00006c20 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    6c20:	1d 42 7e 54 	mov	&0x547e,r13	;0x547e

00006c24 <.Loc.87.1>:
    6c24:	6c 4d       	mov.b	@r13,	r12	;

00006c26 <.LVL22>:
    6c26:	5c 06       	rlam	#2,	r12	;
    6c28:	6d 4d       	mov.b	@r13,	r13	;
    6c2a:	0c 5d       	add	r13,	r12	;
    6c2c:	5c 06       	rlam	#2,	r12	;
    6c2e:	3c 50 74 4f 	add	#20340,	r12	;#0x4f74
    6c32:	b0 12 10 6d 	call	#27920		;#0x6d10

00006c36 <.Loc.88.1>:
    _popped[_thread->priority] = NULL;
    6c36:	1c 42 7e 54 	mov	&0x547e,r12	;0x547e
    6c3a:	6c 4c       	mov.b	@r12,	r12	;
    6c3c:	5c 02       	rlam	#1,	r12	;
    6c3e:	8c 43 f4 4e 	mov	#0,	20212(r12);r3 As==00, 0x4ef4

00006c42 <.Loc.89.1>:
}
    6c42:	30 41       	ret			

00006c44 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    6c44:	
00006c48 <L0^A>:
    6c48:	10 00       	bra	@r0+		;

00006c4a <.Loc.7.1>:
    queue->_tail ^= queue->_tail;
    6c4a:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    6c4e:	11 00 

00006c50 <.Loc.8.1>:
    queue->__head ^= queue->__head;
    6c50:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    6c54:	12 00 

00006c56 <.Loc.9.1>:
    queue->__tail ^= queue->__tail;
    6c56:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    6c5a:	13 00 

00006c5c <.Loc.10.1>:
}
    6c5c:	30 41       	ret			

00006c5e <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    6c5e:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6c62:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    6c66:	4c 4d       	mov.b	r13,	r12	;

00006c68 <.LVL2>:
    6c68:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6c6c:	3c 53       	add	#-1,	r12	;r3 As==11

00006c6e <.Loc.19.1>:
        return 1;
    }

    return 0;
}
    6c6e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6c72:	30 41       	ret			

00006c74 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6c74:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6c78:	5d 53       	inc.b	r13		;
    6c7a:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006c7e <.Loc.24.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    6c7e:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6c82:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6c84:	02 20       	jnz	$+6      	;abs 0x6c8a

00006c86 <.Loc.25.1>:
        queue->__tail = 0;
    6c86:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006c8a <.L5>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    6c8a:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6c8e:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6c92:	4c 4d       	mov.b	r13,	r12	;

00006c94 <.LVL4>:
    6c94:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6c98:	3c 53       	add	#-1,	r12	;r3 As==11

00006c9a <.Loc.34.1>:
        return 1;
    }

    return 0;
}
    6c9a:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6c9e:	30 41       	ret			

00006ca0 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6ca0:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011
    6ca4:	5e 53       	inc.b	r14		;
    6ca6:	cc 4e 13 00 	mov.b	r14,	19(r12)	; 0x0013

00006caa <.Loc.39.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    6caa:	5e 4c 13 00 	mov.b	19(r12),r14	;0x00013
    6cae:	7e 92       	cmp.b	#8,	r14	;r2 As==11
    6cb0:	02 20       	jnz	$+6      	;abs 0x6cb6

00006cb2 <.Loc.40.1>:
        queue->__tail = 0;
    6cb2:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006cb6 <.L7>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    6cb6:	5f 4c 13 00 	mov.b	19(r12),r15	;0x00013

00006cba <.Loc.44.1>:
    6cba:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006cbe <.Loc.44.1>:
    6cbe:	0f 9e       	cmp	r14,	r15	;
    6cc0:	08 24       	jz	$+18     	;abs 0x6cd2

00006cc2 <.Loc.49.1>:
        return 0;
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6cc2:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006cc6 <.Loc.49.1>:
    6cc6:	5e 02       	rlam	#1,	r14	;
    6cc8:	0c 5e       	add	r14,	r12	;

00006cca <.LVL6>:
    6cca:	8c 4d 00 00 	mov	r13,	0(r12)	;

00006cce <.Loc.51.1>:

    return 1;
    6cce:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006cd0 <.Loc.52.1>:
}
    6cd0:	30 41       	ret			

00006cd2 <.L9>:
        return 0;
    6cd2:	4c 43       	clr.b	r12		;

00006cd4 <.LVL8>:
}
    6cd4:	30 41       	ret			

00006cd6 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    6cd6:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    6cda:	11 00 

00006cdc <.Loc.59.1>:
}
    6cdc:	30 41       	ret			

00006cde <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6cde:	5e 4c 10 00 	mov.b	16(r12),r14	;0x00010

00006ce2 <.Loc.63.1>:
    6ce2:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011

00006ce6 <.Loc.63.1>:
    6ce6:	0e 9d       	cmp	r13,	r14	;
    6ce8:	11 24       	jz	$+36     	;abs 0x6d0c

00006cea <.Loc.68.1>:
        return NULL;
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    6cea:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6cee:	5d 53       	inc.b	r13		;
    6cf0:	cc 4d 12 00 	mov.b	r13,	18(r12)	; 0x0012

00006cf4 <.Loc.69.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    6cf4:	5d 4c 12 00 	mov.b	18(r12),r13	;0x00012
    6cf8:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6cfa:	02 20       	jnz	$+6      	;abs 0x6d00

00006cfc <.Loc.70.1>:
        queue->__head = 0;
    6cfc:	cc 43 12 00 	mov.b	#0,	18(r12)	;r3 As==00, 0x0012

00006d00 <.L13>:

    return queue->_items[queue->_head];
    6d00:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010

00006d04 <.Loc.72.1>:
    6d04:	5d 02       	rlam	#1,	r13	;
    6d06:	0c 5d       	add	r13,	r12	;

00006d08 <.LVL11>:
    6d08:	2c 4c       	mov	@r12,	r12	;

00006d0a <.Loc.73.1>:
}
    6d0a:	30 41       	ret			

00006d0c <.L14>:
        return NULL;
    6d0c:	4c 43       	clr.b	r12		;

00006d0e <.LVL13>:
}
    6d0e:	30 41       	ret			

00006d10 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    6d10:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6d14:	10 00 

00006d16 <.Loc.79.1>:
}
    6d16:	30 41       	ret			

00006d18 <__fram_init>:
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    6d18:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6d1c:	40 01 

00006d1e <.Loc.12.1>:

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
    6d1e:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6d22:	41 01 

00006d24 <.Loc.13.1>:
}
    6d24:	30 41       	ret			

00006d26 <__fram_word_copy>:


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    6d26:	0a 15       	pushm	#1,	r10	;16-bit words

00006d28 <.LCFI0>:
    6d28:	21 82       	sub	#4,	r1	;r2 As==10

00006d2a <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    6d2a:	0a 4c       	mov	r12,	r10	;
    6d2c:	0b 43       	clr	r11		;
    6d2e:	81 4a 00 00 	mov	r10,	0(r1)	;
    6d32:	81 4b 02 00 	mov	r11,	2(r1)	;

00006d36 <.Loc.20.1>:
    6d36:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00006d3a <.LVL1>:
    6d3a:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6d3e:	00 00 

00006d40 <.LBB3>:
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    6d40:	0a 4d       	mov	r13,	r10	;
    6d42:	0b 43       	clr	r11		;

00006d44 <.LVL2>:
    6d44:	81 4a 00 00 	mov	r10,	0(r1)	;
    6d48:	81 4b 02 00 	mov	r11,	2(r1)	;

00006d4c <.Loc.21.1>:
    6d4c:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    6d50:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6d54:	00 00 

00006d56 <.LBE3>:
    DMA0SZ = size;                          // Block size
    6d56:	82 4e 1a 05 	mov	r14,	&0x051a	;

00006d5a <.Loc.25.1>:

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    6d5a:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6d5e:	10 05 

00006d60 <.Loc.26.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6d60:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    6d64:	10 05 

00006d66 <.Loc.28.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    6d66:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00006d6a <.Loc.29.1>:
}
    6d6a:	21 52       	add	#4,	r1	;r2 As==10

00006d6c <.LCFI2>:
    6d6c:	0a 17       	popm	#1,	r10	;16-bit words

00006d6e <.LCFI3>:
    6d6e:	30 41       	ret			

00006d70 <__scheduler_boot_init>:

void __scheduler_boot_init() {
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    6d70:	3c 40 84 54 	mov	#21636,	r12	;#0x5484
    6d74:	b0 12 1a 7b 	call	#31514		;#0x7b1a

00006d78 <.Loc.54.1>:
    6d78:	7d 40 40 00 	mov.b	#64,	r13	;#0x0040

00006d7c <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    6d7c:	0c 4d       	mov	r13,	r12	;
    6d7e:	5c 02       	rlam	#1,	r12	;
    6d80:	0c 5d       	add	r13,	r12	;
    6d82:	5c 06       	rlam	#2,	r12	;
    6d84:	0c 5d       	add	r13,	r12	;
    6d86:	5c 02       	rlam	#1,	r12	;
    6d88:	1c 4c 90 54 	mov	21648(r12),r12	;0x05490

00006d8c <.LVL2>:
    for (i = MAX_THREADS; i > 0; i--){
    6d8c:	3d 53       	add	#-1,	r13	;r3 As==11

00006d8e <.Loc.56.1>:
    6d8e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6d90:	f5 23       	jnz	$-20     	;abs 0x6d7c

00006d92 <.Loc.60.1>:
    }
    _sched_state = SCHED_SELECT;
    6d92:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006d96 <.Loc.61.1>:
}
    6d96:	30 41       	ret			

00006d98 <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    6d98:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006d9c <.Loc.68.1>:
    // init properties
    _threads[priority].priority = priority;
    6d9c:	0b 4c       	mov	r12,	r11	;
    6d9e:	5b 02       	rlam	#1,	r11	;
    6da0:	0b 5c       	add	r12,	r11	;
    6da2:	5b 06       	rlam	#2,	r11	;
    6da4:	0b 5c       	add	r12,	r11	;
    6da6:	5b 02       	rlam	#1,	r11	;
    6da8:	cb 4c 8e 54 	mov.b	r12,	21646(r11); 0x548e

00006dac <.Loc.69.1>:
    _threads[priority].entry = entry;
    6dac:	8b 4d 92 54 	mov	r13,	21650(r11); 0x5492

00006db0 <.Loc.70.1>:
    _threads[priority].next = entry;
    6db0:	8b 4d 96 54 	mov	r13,	21654(r11); 0x5496

00006db4 <.Loc.71.1>:
    _threads[priority].state = THREAD_STOPPED;
    6db4:	bb 42 90 54 	mov	#8,	21648(r11);r2 As==11, 0x5490

00006db8 <.Loc.74.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    6db8:	8b 4e 98 54 	mov	r14,	21656(r11); 0x5498

00006dbc <.Loc.75.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    6dbc:	8b 4f 9a 54 	mov	r15,	21658(r11); 0x549a

00006dc0 <.Loc.76.1>:
    _threads[priority].buffer.original_buffer_index = 0;
    6dc0:	cb 43 9c 54 	mov.b	#0,	21660(r11);r3 As==00, 0x549c

00006dc4 <.Loc.77.1>:
    _threads[priority].buffer.size = size;
    6dc4:	9b 41 02 00 	mov	2(r1),	21662(r11); 0x549e
    6dc8:	9e 54 

00006dca <.Loc.78.1>:
}
    6dca:	30 41       	ret			

00006dcc <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    6dcc:	0a 15       	pushm	#1,	r10	;16-bit words

00006dce <.LCFI0>:
    6dce:	0a 4c       	mov	r12,	r10	;

00006dd0 <.Loc.82.1>:
    __priority_remove(thread->priority, &_priorities);
    6dd0:	3d 40 84 54 	mov	#21636,	r13	;#0x5484
    6dd4:	6c 4c       	mov.b	@r12,	r12	;

00006dd6 <.LVL6>:
    6dd6:	b0 12 60 7b 	call	#31584		;#0x7b60

00006dda <.Loc.83.1>:
    thread->state = THREAD_STOPPED;
    6dda:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006dde <.Loc.84.1>:
}
    6dde:	0a 17       	popm	#1,	r10	;16-bit words

00006de0 <.LCFI1>:
    6de0:	30 41       	ret			

00006de2 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    6de2:	0a 15       	pushm	#1,	r10	;16-bit words

00006de4 <.LCFI2>:
    6de4:	0a 4c       	mov	r12,	r10	;

00006de6 <.Loc.88.1>:
    __priority_remove(thread->priority, &_priorities);
    6de6:	3d 40 84 54 	mov	#21636,	r13	;#0x5484
    6dea:	6c 4c       	mov.b	@r12,	r12	;

00006dec <.LVL9>:
    6dec:	b0 12 60 7b 	call	#31584		;#0x7b60

00006df0 <.Loc.89.1>:
    thread->next = NULL;
    6df0:	8a 43 08 00 	mov	#0,	8(r10)	;r3 As==00

00006df4 <.Loc.90.1>:
    thread->state = THREAD_STOPPED;
    6df4:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00006df8 <.Loc.91.1>:
}
    6df8:	0a 17       	popm	#1,	r10	;16-bit words

00006dfa <.LCFI3>:
    6dfa:	30 41       	ret			

00006dfc <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    6dfc:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00006e00 <.Loc.95.1>:
    return;
}
    6e00:	30 41       	ret			

00006e02 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    6e02:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00006e06 <.Loc.101.1>:
    return;
}
    6e06:	30 41       	ret			

00006e08 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    6e08:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00006e0c <.Loc.107.1>:
    return;
}
    6e0c:	30 41       	ret			

00006e0e <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    6e0e:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00006e12 <.Loc.112.1>:
    return;
}
    6e12:	30 41       	ret			

00006e14 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    6e14:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00006e18 <.LVL16>:
    6e18:	30 41       	ret			

00006e1a <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    6e1a:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00006e1e <.LVL18>:
    6e1e:	30 41       	ret			

00006e20 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    6e20:	0a 15       	pushm	#1,	r10	;16-bit words

00006e22 <.LCFI4>:
    6e22:	0a 4c       	mov	r12,	r10	;

00006e24 <.Loc.125.1>:
    thread->next = thread->entry;
    6e24:	9c 4c 04 00 	mov	4(r12),	8(r12)	;
    6e28:	08 00 

00006e2a <.Loc.126.1>:
    __priority_insert(thread->priority, &_priorities);
    6e2a:	3d 40 84 54 	mov	#21636,	r13	;#0x5484
    6e2e:	6c 4c       	mov.b	@r12,	r12	;

00006e30 <.LVL20>:
    6e30:	b0 12 40 7b 	call	#31552		;#0x7b40

00006e34 <.Loc.127.1>:
    thread->state = TASK_READY;
    6e34:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006e38 <.Loc.128.1>:
}
    6e38:	0a 17       	popm	#1,	r10	;16-bit words

00006e3a <.LCFI5>:
    6e3a:	30 41       	ret			

00006e3c <__get_thread>:
        return &_threads[idx];

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    6e3c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006e40 <.Loc.140.1>:
    return &_threads[priority];
    6e40:	0d 4c       	mov	r12,	r13	;
    6e42:	5d 02       	rlam	#1,	r13	;
    6e44:	0d 5c       	add	r12,	r13	;
    6e46:	5d 06       	rlam	#2,	r13	;
    6e48:	0c 5d       	add	r13,	r12	;

00006e4a <.LVL23>:
    6e4a:	5c 02       	rlam	#1,	r12	;

00006e4c <.Loc.141.1>:
}
    6e4c:	3c 50 8e 54 	add	#21646,	r12	;#0x548e
    6e50:	30 41       	ret			

00006e52 <__scheduler_run>:

// at each step, the scheduler selects the highest priority thread and
// runs the next task within the thread
void __scheduler_run()
{
    __disable_interrupt();
    6e52:	32 c2       	dint			
    6e54:	03 43       	nop			

00006e56 <.Loc.159.1>:

    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    6e56:	b0 12 b8 6a 	call	#27320		;#0x6ab8

00006e5a <.Loc.162.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6e5a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006e5e <.Loc.162.1>:
    __port_off(1, 3);
    6e5e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006e62 <.LBB8>:
    if(_thread){
    6e62:	82 93 82 54 	cmp	#0,	&0x5482	;r3 As==00
    6e66:	04 24       	jz	$+10     	;abs 0x6e70

00006e68 <.Loc.146.1>:
        __tick(_thread);
    6e68:	1c 42 82 54 	mov	&0x5482,r12	;0x5482
    6e6c:	b0 12 06 6f 	call	#28422		;#0x6f06

00006e70 <.L17>:
    // signaling another task or on the event queue _events in isrmanager.c)
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

    __reboot_timers();
    6e70:	b0 12 22 70 	call	#28706		;#0x7022

00006e74 <.Loc.176.1>:
    // enable interrupts
    __enable_interrupt();
    6e74:	03 43       	nop			
    6e76:	32 d2       	eint			
    6e78:	03 43       	nop			

00006e7a <.Loc.179.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6e7a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006e7e <.Loc.179.1>:
    __port_off(1, 3);
    6e7e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006e82 <.L20>:
#endif

    while (1){
        switch (_sched_state){
    6e82:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    6e86:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e88:	10 24       	jz	$+34     	;abs 0x6eaa

00006e8a <.L29>:
    6e8a:	1c 93       	cmp	#1,	r12	;r3 As==01
    6e8c:	fa 23       	jnz	$-10     	;abs 0x6e82
    6e8e:	1c 42 82 54 	mov	&0x5482,r12	;0x5482

00006e92 <.Loc.196.1>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    6e92:	0c 93       	cmp	#0,	r12	;r3 As==00
    6e94:	24 24       	jz	$+74     	;abs 0x6ede

00006e96 <.L21>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    6e96:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006e9a <.Loc.198.1>:
#endif
                __tick(_thread);
    6e9a:	b0 12 06 6f 	call	#28422		;#0x6f06

00006e9e <.Loc.202.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    6e9e:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006ea2 <.Loc.180.1>:
        switch (_sched_state){
    6ea2:	5c 42 01 1c 	mov.b	&0x1c01,r12	;0x1c01
    6ea6:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ea8:	f0 23       	jnz	$-30     	;abs 0x6e8a

00006eaa <.L19>:
            __port_on(1, 3);
    6eaa:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006eae <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    6eae:	3c 40 84 54 	mov	#21636,	r12	;#0x5484
    6eb2:	b0 12 88 7b 	call	#31624		;#0x7b88
    6eb6:	4d 4c       	mov.b	r12,	r13	;

00006eb8 <.LVL29>:
    if(idx)
    6eb8:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6eba:	0d 24       	jz	$+28     	;abs 0x6ed6

00006ebc <.Loc.134.1>:
        return &_threads[idx];
    6ebc:	0c 4d       	mov	r13,	r12	;
    6ebe:	5c 02       	rlam	#1,	r12	;

00006ec0 <.LVL30>:
    6ec0:	0c 5d       	add	r13,	r12	;
    6ec2:	5c 06       	rlam	#2,	r12	;
    6ec4:	0c 5d       	add	r13,	r12	;
    6ec6:	5c 02       	rlam	#1,	r12	;
    6ec8:	3c 50 8e 54 	add	#21646,	r12	;#0x548e

00006ecc <.LBE10>:
            _thread = __next_thread();
    6ecc:	82 4c 82 54 	mov	r12,	&0x5482	;

00006ed0 <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    6ed0:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006ed4 <.Loc.196.1>:
            if (_thread){
    6ed4:	e0 3f       	jmp	$-62     	;abs 0x6e96

00006ed6 <.L30>:
            _thread = __next_thread();
    6ed6:	82 43 82 54 	mov	#0,	&0x5482	;r3 As==00

00006eda <.Loc.192.1>:
            _sched_state = SCHED_BUSY;
    6eda:	d2 43 01 1c 	mov.b	#1,	&0x1c01	;r3 As==01

00006ede <.L22>:
                break;
            }
            _sched_state = SCHED_SELECT;
    6ede:	c2 43 01 1c 	mov.b	#0,	&0x1c01	;r3 As==00

00006ee2 <.Loc.206.1>:
            __disable_interrupt();
    6ee2:	32 c2       	dint			
    6ee4:	03 43       	nop			

00006ee6 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    6ee6:	3c 40 84 54 	mov	#21636,	r12	;#0x5484
    6eea:	b0 12 88 7b 	call	#31624		;#0x7b88

00006eee <.LVL33>:
    if(idx)
    6eee:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6ef0:	c8 23       	jnz	$-110    	;abs 0x6e82

00006ef2 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    6ef2:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006ef6 <.Loc.210.1>:
#endif
                __mcu_sleep();
    6ef6:	03 43       	nop			
    6ef8:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    6efc:	03 43       	nop			

00006efe <.Loc.213.1>:
                __enable_interrupt();
    6efe:	03 43       	nop			
    6f00:	32 d2       	eint			
    6f02:	03 43       	nop			
    6f04:	be 3f       	jmp	$-130    	;abs 0x6e82

00006f06 <__tick>:
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    6f06:	0a 15       	pushm	#1,	r10	;16-bit words

00006f08 <.LCFI0>:
    6f08:	0a 4c       	mov	r12,	r10	;

00006f0a <L0^A>:
    switch (thread->state)
    6f0a:	1c 4c 02 00 	mov	2(r12),	r12	;

00006f0e <.LVL1>:
    6f0e:	2c 93       	cmp	#2,	r12	;r3 As==10
    6f10:	35 24       	jz	$+108    	;abs 0x6f7c
    6f12:	2c 92       	cmp	#4,	r12	;r2 As==10
    6f14:	56 24       	jz	$+174    	;abs 0x6fc2
    6f16:	1c 93       	cmp	#1,	r12	;r3 As==01
    6f18:	02 24       	jz	$+6      	;abs 0x6f1e

00006f1a <.Loc.145.1>:
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}
    6f1a:	0a 17       	popm	#1,	r10	;16-bit words

00006f1c <.LCFI1>:
    6f1c:	30 41       	ret			

00006f1e <.L17>:
    __port_on(3,6);
    6f1e:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    6f22:	22 02 

00006f24 <.Loc.11.1>:
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
    6f24:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00006f28 <.Loc.14.1>:
    6f28:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6f2c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6f2e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006f32 <.Loc.14.1>:
    6f32:	5c 02       	rlam	#1,	r12	;
    6f34:	0c 5a       	add	r10,	r12	;
    6f36:	5f 02       	rlam	#1,	r15	;
    6f38:	0f 5a       	add	r10,	r15	;
    6f3a:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    6f3e:	5e 03       	rrum	#1,	r14	;
    6f40:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    6f44:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    6f48:	b0 12 26 6d 	call	#27942		;#0x6d26

00006f4c <.Loc.17.1>:
    __port_off(3,6);
    6f4c:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6f50:	22 02 

00006f52 <.LBE5>:
        __port_on(1, 4);
    6f52:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    6f56:	02 02 

00006f58 <.Loc.48.1>:
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;
    6f58:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6f5c:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6f5e:	c2 4c 0e 5b 	mov.b	r12,	&0x5b0e	;

00006f62 <.Loc.60.1>:
        if(thread->next == thread->entry){
    6f62:	1c 4a 08 00 	mov	8(r10),	r12	;

00006f66 <.Loc.60.1>:
    6f66:	1c 9a 04 00 	cmp	4(r10),	r12	;
    6f6a:	48 24       	jz	$+146    	;abs 0x6ffc

00006f6c <.Loc.77.1>:
            thread->next_temp = (void *)(((task_t)thread->next)());
    6f6c:	8c 12       	call	r12		;

00006f6e <.Loc.77.1>:
    6f6e:	8a 4c 06 00 	mov	r12,	6(r10)	;

00006f72 <.L8>:
        thread->state = TASK_PRECOMMIT;
    6f72:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00006f76 <.Loc.83.1>:
            __port_off(1, 4);
    6f76:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6f7a:	02 02 

00006f7c <.L2>:
        __port_on(3,5);
    6f7c:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6f80:	22 02 

00006f82 <.Loc.87.1>:
        __release_event(thread);
    6f82:	0c 4a       	mov	r10,	r12	;
    6f84:	b0 12 20 6c 	call	#27680		;#0x6c20

00006f88 <.Loc.96.1>:
        thread->next = thread->next_temp;
    6f88:	1c 4a 06 00 	mov	6(r10),	r12	;

00006f8c <.Loc.96.1>:
    6f8c:	8a 4c 08 00 	mov	r12,	8(r10)	;

00006f90 <.Loc.108.1>:
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;
    6f90:	5d 4a 0e 00 	mov.b	14(r10),r13	;0x0000e
    6f94:	5d e3       	xor.b	#1,	r13	;r3 As==01
    6f96:	ca 4d 0f 00 	mov.b	r13,	15(r10)	; 0x000f

00006f9a <.Loc.110.1>:
        thread->state = TASK_COMMIT;
    6f9a:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006f9e <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    6f9e:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6fa2:	0e 00 

00006fa4 <.Loc.117.1>:
        __port_off(3,5);
    6fa4:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6fa8:	22 02 

00006faa <.Loc.117.1>:
        __port_on(3,5);
    6faa:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6fae:	22 02 

00006fb0 <.Loc.118.1>:
        if (thread->next == NULL)
    6fb0:	0c 93       	cmp	#0,	r12	;r3 As==00
    6fb2:	14 24       	jz	$+42     	;abs 0x6fdc

00006fb4 <.L9>:
            thread->state = TASK_READY;
    6fb4:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006fb8 <.L12>:
        __port_off(3,5);
    6fb8:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6fbc:	22 02 

00006fbe <.Loc.142.1>:
}
    6fbe:	0a 17       	popm	#1,	r10	;16-bit words

00006fc0 <.LCFI3>:
    6fc0:	30 41       	ret			

00006fc2 <.L3>:
    6fc2:	1c 4a 08 00 	mov	8(r10),	r12	;

00006fc6 <.Loc.115.1>:
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
    6fc6:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    6fca:	0e 00 

00006fcc <.Loc.117.1>:
        __port_off(3,5);
    6fcc:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6fd0:	22 02 

00006fd2 <.Loc.117.1>:
        __port_on(3,5);
    6fd2:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    6fd6:	22 02 

00006fd8 <.Loc.118.1>:
        if (thread->next == NULL)
    6fd8:	0c 93       	cmp	#0,	r12	;r3 As==00
    6fda:	ec 23       	jnz	$-38     	;abs 0x6fb4

00006fdc <.L19>:
            __disable_interrupt();
    6fdc:	32 c2       	dint			
    6fde:	03 43       	nop			

00006fe0 <.Loc.125.1>:
            if(!__has_events(thread)){
    6fe0:	0c 4a       	mov	r10,	r12	;
    6fe2:	b0 12 d4 6b 	call	#27604		;#0x6bd4

00006fe6 <.Loc.125.1>:
    6fe6:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6fe8:	12 24       	jz	$+38     	;abs 0x700e

00006fea <.Loc.131.1>:
                thread->next = thread->entry;
    6fea:	9a 4a 04 00 	mov	4(r10),	8(r10)	;
    6fee:	08 00 

00006ff0 <.Loc.133.1>:
                thread->state = TASK_READY;
    6ff0:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006ff4 <.Loc.135.1>:
            __enable_interrupt();
    6ff4:	03 43       	nop			
    6ff6:	32 d2       	eint			
    6ff8:	03 43       	nop			
    6ffa:	de 3f       	jmp	$-66     	;abs 0x6fb8

00006ffc <.L18>:
            isr_event_t *event = __lock_event(thread);
    6ffc:	0c 4a       	mov	r10,	r12	;
    6ffe:	b0 12 f2 6b 	call	#27634		;#0x6bf2

00007002 <.LVL10>:
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
    7002:	1d 4a 04 00 	mov	4(r10),	r13	;
    7006:	8d 12       	call	r13		;

00007008 <.LVL11>:
    7008:	8a 4c 06 00 	mov	r12,	6(r10)	;

0000700c <.LBE7>:
    700c:	b2 3f       	jmp	$-154    	;abs 0x6f72

0000700e <.L20>:
                __stop_thread(thread);
    700e:	0c 4a       	mov	r10,	r12	;
    7010:	b0 12 cc 6d 	call	#28108		;#0x6dcc

00007014 <.Loc.135.1>:
            __enable_interrupt();
    7014:	03 43       	nop			
    7016:	32 d2       	eint			
    7018:	03 43       	nop			
    701a:	ce 3f       	jmp	$-98     	;abs 0x6fb8

0000701c <__timers_init>:
    701c:	b0 12 82 7c 	call	#31874		;#0x7c82

00007020 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    7020:	30 41       	ret			

00007022 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    7022:	30 41       	ret			

00007024 <clear_wkup_status>:
//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    7024:	0a 15       	pushm	#1,	r10	;16-bit words

00007026 <.LCFI0>:
    7026:	4a 4c       	mov.b	r12,	r10	;

00007028 <.Loc.100.1>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].thread_id == thread_id) {
    7028:	5c 92 36 1c 	cmp.b	&0x1c36,r12	;0x1c36
    702c:	19 24       	jz	$+52     	;abs 0x7060

0000702e <.L5>:
    702e:	c2 9a 40 1c 	cmp.b	r10,	&0x1c40	;
    7032:	0e 24       	jz	$+30     	;abs 0x7050

00007034 <.L6>:
    7034:	c2 9a 4a 1c 	cmp.b	r10,	&0x1c4a	;
    7038:	02 24       	jz	$+6      	;abs 0x703e

0000703a <.Loc.109.1>:
            wkup_timing[i].status = NOT_USED;
            _pers_timer_update_status(i,WKUP,NOT_USED);

        }
    }
}
    703a:	0a 17       	popm	#1,	r10	;16-bit words

0000703c <.LCFI1>:
    703c:	30 41       	ret			

0000703e <.L10>:
            wkup_timing[i].status = NOT_USED;
    703e:	82 43 48 1c 	mov	#0,	&0x1c48	;r3 As==00

00007042 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    7042:	4e 43       	clr.b	r14		;
    7044:	4d 43       	clr.b	r13		;
    7046:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7048:	b0 12 44 7d 	call	#32068		;#0x7d44

0000704c <.Loc.101.1>:
}
    704c:	0a 17       	popm	#1,	r10	;16-bit words

0000704e <.LCFI3>:
    704e:	30 41       	ret			

00007050 <.L9>:
            wkup_timing[i].status = NOT_USED;
    7050:	82 43 3e 1c 	mov	#0,	&0x1c3e	;r3 As==00

00007054 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    7054:	4e 43       	clr.b	r14		;
    7056:	4d 43       	clr.b	r13		;
    7058:	5c 43       	mov.b	#1,	r12	;r3 As==01
    705a:	b0 12 44 7d 	call	#32068		;#0x7d44
    705e:	ea 3f       	jmp	$-42     	;abs 0x7034

00007060 <.L8>:
            wkup_timing[i].status = NOT_USED;
    7060:	82 43 34 1c 	mov	#0,	&0x1c34	;r3 As==00

00007064 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    7064:	4e 43       	clr.b	r14		;
    7066:	4d 43       	clr.b	r13		;
    7068:	4c 43       	clr.b	r12		;

0000706a <.LVL9>:
    706a:	b0 12 44 7d 	call	#32068		;#0x7d44
    706e:	df 3f       	jmp	$-64     	;abs 0x702e

00007070 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    7070:	2a 15       	pushm	#3,	r10	;16-bit words

00007072 <.LCFI5>:
    7072:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007076 <.LCFI6>:
    7076:	49 43       	clr.b	r9		;
    7078:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

0000707c <.L12>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    707c:	0a 49       	mov	r9,	r10	;
    707e:	5a 06       	rlam	#2,	r10	;
    7080:	0a 59       	add	r9,	r10	;
    7082:	5a 02       	rlam	#1,	r10	;
    7084:	0a 58       	add	r8,	r10	;
    7086:	4e 43       	clr.b	r14		;
    7088:	4d 49       	mov.b	r9,	r13	;
    708a:	0c 41       	mov	r1,	r12	;
    708c:	b0 12 40 7f 	call	#32576		;#0x7f40
    7090:	aa 41 00 00 	mov	@r1,	0(r10)	;
    7094:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7098:	02 00 
    709a:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    709e:	04 00 
    70a0:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    70a4:	06 00 
    70a6:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    70aa:	08 00 

000070ac <.LVL14>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    70ac:	19 53       	inc	r9		;

000070ae <.Loc.115.1>:
    70ae:	39 90 03 00 	cmp	#3,	r9	;
    70b2:	e4 23       	jnz	$-54     	;abs 0x707c

000070b4 <.Loc.120.1>:
    }

}
    70b4:	31 50 0a 00 	add	#10,	r1	;#0x000a

000070b8 <.LCFI7>:
    70b8:	28 17       	popm	#3,	r10	;16-bit words

000070ba <.LCFI8>:
    70ba:	30 41       	ret			

000070bc <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing
void refresh_wkup_timers(){
    70bc:	5a 15       	pushm	#6,	r10	;16-bit words

000070be <.LCFI9>:

    uint8_t i,first = 1;
    70be:	5e 43       	mov.b	#1,	r14	;r3 As==01

000070c0 <.Loc.127.1>:

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    70c0:	4a 43       	clr.b	r10		;
    70c2:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

000070c6 <.L40>:
    {

        if (wkup_timing[i].status == USED)
    70c6:	09 4a       	mov	r10,	r9	;
    70c8:	05 4a       	mov	r10,	r5	;
    70ca:	55 06       	rlam	#2,	r5	;
    70cc:	0c 45       	mov	r5,	r12	;
    70ce:	0c 5a       	add	r10,	r12	;
    70d0:	5c 02       	rlam	#1,	r12	;
    70d2:	0d 4c       	mov	r12,	r13	;
    70d4:	3d 50 34 1c 	add	#7220,	r13	;#0x1c34

000070d8 <.Loc.130.1>:
    70d8:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    70dc:	0c 24       	jz	$+26     	;abs 0x70f6

000070de <.L15>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    70de:	4c 4a       	mov.b	r10,	r12	;
    70e0:	5c 53       	inc.b	r12		;
    70e2:	4a 4c       	mov.b	r12,	r10	;

000070e4 <.LVL19>:
    70e4:	7c 90 03 00 	cmp.b	#3,	r12	;
    70e8:	ee 23       	jnz	$-34     	;abs 0x70c6

000070ea <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    70ea:	0e 93       	cmp	#0,	r14	;r3 As==00
    70ec:	54 24       	jz	$+170    	;abs 0x7196

000070ee <.Loc.174.1>:
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    }
    //no pending wake up timer was found.
    else stop_timer();
    70ee:	b0 12 9e 7b 	call	#31646		;#0x7b9e

000070f2 <.LVL20>:


}
    70f2:	55 17       	popm	#6,	r10	;16-bit words

000070f4 <.LCFI10>:
    70f4:	30 41       	ret			

000070f6 <.L84>:
            if (first)
    70f6:	16 4d 04 00 	mov	4(r13),	r6	;
    70fa:	17 4d 06 00 	mov	6(r13),	r7	;

000070fe <.Loc.133.1>:
    70fe:	0e 93       	cmp	#0,	r14	;r3 As==00
    7100:	05 24       	jz	$+12     	;abs 0x710c

00007102 <.Loc.135.1>:
                min_wkup = wkup_timing[i].data;
    7102:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

00007106 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    7106:	d2 4d 02 00 	mov.b	2(r13),	&0x1c5c	;
    710a:	5c 1c 

0000710c <.L17>:
            wkup_timing[i].data = wkup_timing[i].data - __get_time();
    710c:	b0 12 40 7c 	call	#31808		;#0x7c40

00007110 <.Loc.141.1>:
    7110:	0e 46       	mov	r6,	r14	;
    7112:	0f 47       	mov	r7,	r15	;
    7114:	0e 8c       	sub	r12,	r14	;
    7116:	0f 7d       	subc	r13,	r15	;

00007118 <.Loc.141.1>:
    7118:	05 5a       	add	r10,	r5	;
    711a:	55 02       	rlam	#1,	r5	;
    711c:	05 58       	add	r8,	r5	;
    711e:	85 4e 04 00 	mov	r14,	4(r5)	;
    7122:	85 4f 06 00 	mov	r15,	6(r5)	;

00007126 <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    7126:	4d 43       	clr.b	r13		;
    7128:	4c 4a       	mov.b	r10,	r12	;
    712a:	b0 12 a4 7c 	call	#31908		;#0x7ca4

0000712e <.Loc.144.1>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    712e:	1c 45 04 00 	mov	4(r5),	r12	;
    7132:	1d 45 06 00 	mov	6(r5),	r13	;
    7136:	4b 4a       	mov.b	r10,	r11	;
    7138:	5b 53       	inc.b	r11		;
    713a:	4a 4b       	mov.b	r11,	r10	;

0000713c <.Loc.144.1>:
    713c:	07 4d       	mov	r13,	r7	;
    713e:	0d 93       	cmp	#0,	r13	;r3 As==00
    7140:	3b 38       	jl	$+120    	;abs 0x71b8

00007142 <.Loc.151.1>:
            if (wkup_timing[i].data > 0)
    7142:	0e 4c       	mov	r12,	r14	;
    7144:	0e dd       	bis	r13,	r14	;
    7146:	0e 93       	cmp	#0,	r14	;r3 As==00
    7148:	af 24       	jz	$+352    	;abs 0x72a8

0000714a <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    714a:	16 42 5a 1c 	mov	&0x1c5a,r6	;0x1c5a
    714e:	0e 46       	mov	r6,	r14	;
    7150:	0f 43       	clr	r15		;

00007152 <.Loc.155.1>:
    7152:	0d 93       	cmp	#0,	r13	;r3 As==00
    7154:	18 34       	jge	$+50     	;abs 0x7186

00007156 <.L50>:
    7156:	0e 49       	mov	r9,	r14	;
    7158:	5e 06       	rlam	#2,	r14	;
    715a:	09 5e       	add	r14,	r9	;
    715c:	59 02       	rlam	#1,	r9	;
    715e:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00007162 <.L37>:
                    min_wkup = wkup_timing[i].data;
    7162:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;

00007166 <.Loc.158.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    7166:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

0000716a <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    716a:	7b 90 03 00 	cmp.b	#3,	r11	;
    716e:	15 24       	jz	$+44     	;abs 0x719a

00007170 <.L74>:
        if (wkup_timing[i].status == USED)
    7170:	09 4a       	mov	r10,	r9	;
    7172:	05 4a       	mov	r10,	r5	;
    7174:	55 06       	rlam	#2,	r5	;
    7176:	0c 45       	mov	r5,	r12	;
    7178:	0c 5a       	add	r10,	r12	;
    717a:	5c 02       	rlam	#1,	r12	;

0000717c <.Loc.130.1>:
    717c:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    7180:	41 24       	jz	$+132    	;abs 0x7204

00007182 <.L91>:
    7182:	4e 43       	clr.b	r14		;
    7184:	ac 3f       	jmp	$-166    	;abs 0x70de

00007186 <.L87>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7186:	0d 93       	cmp	#0,	r13	;r3 As==00
    7188:	62 24       	jz	$+198    	;abs 0x724e

0000718a <.L35>:
    718a:	07 4c       	mov	r12,	r7	;
    718c:	0c 9e       	cmp	r14,	r12	;
    718e:	79 24       	jz	$+244    	;abs 0x7282

00007190 <.L38>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7190:	7b 90 03 00 	cmp.b	#3,	r11	;
    7194:	ed 23       	jnz	$-36     	;abs 0x7170

00007196 <.L72>:
    7196:	5e 42 5c 1c 	mov.b	&0x1c5c,r14	;0x1c5c

0000719a <.L43>:
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    719a:	4d 4e       	mov.b	r14,	r13	;
    719c:	4c 43       	clr.b	r12		;
    719e:	b0 12 8c 7d 	call	#32140		;#0x7d8c

000071a2 <.Loc.167.1>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    71a2:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    71a6:	4c 43       	clr.b	r12		;
    71a8:	b0 12 9a 7d 	call	#32154		;#0x7d9a

000071ac <.Loc.171.1>:
        set_timer_wkup(min_wkup);
    71ac:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    71b0:	b0 12 b2 7b 	call	#31666		;#0x7bb2

000071b4 <.Loc.177.1>:
}
    71b4:	55 17       	popm	#6,	r10	;16-bit words

000071b6 <.LCFI12>:
    71b6:	30 41       	ret			

000071b8 <.L85>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    71b8:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    71bc:	06 43       	clr	r6		;
    71be:	06 8e       	sub	r14,	r6	;
    71c0:	0e 46       	mov	r6,	r14	;
    71c2:	0f 46       	mov	r6,	r15	;
    71c4:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000071c8 <.Loc.144.1>:
    71c8:	05 4f       	mov	r15,	r5	;
    71ca:	0f 9d       	cmp	r13,	r15	;
    71cc:	25 38       	jl	$+76     	;abs 0x7218

000071ce <.Loc.144.1>:
    71ce:	0d 9f       	cmp	r15,	r13	;
    71d0:	21 24       	jz	$+68     	;abs 0x7214

000071d2 <.L20>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    71d2:	07 4d       	mov	r13,	r7	;
    71d4:	0d 9f       	cmp	r15,	r13	;
    71d6:	04 38       	jl	$+10     	;abs 0x71e0
    71d8:	0f 9d       	cmp	r13,	r15	;
    71da:	da 23       	jnz	$-74     	;abs 0x7190
    71dc:	0c 96       	cmp	r6,	r12	;
    71de:	d8 2f       	jc	$-78     	;abs 0x7190

000071e0 <.L30>:
    71e0:	0c 49       	mov	r9,	r12	;
    71e2:	5c 06       	rlam	#2,	r12	;
    71e4:	09 5c       	add	r12,	r9	;
    71e6:	59 02       	rlam	#1,	r9	;
    71e8:	89 43 34 1c 	mov	#0,	7220(r9);r3 As==00, 0x1c34

000071ec <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    71ec:	7b 90 03 00 	cmp.b	#3,	r11	;
    71f0:	d2 27       	jz	$-90     	;abs 0x7196

000071f2 <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    71f2:	09 4a       	mov	r10,	r9	;
    71f4:	05 4a       	mov	r10,	r5	;
    71f6:	55 06       	rlam	#2,	r5	;
    71f8:	0c 45       	mov	r5,	r12	;
    71fa:	0c 5a       	add	r10,	r12	;
    71fc:	5c 02       	rlam	#1,	r12	;

000071fe <.Loc.130.1>:
    71fe:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    7202:	bf 23       	jnz	$-128    	;abs 0x7182

00007204 <.L27>:
    7204:	0c 45       	mov	r5,	r12	;
    7206:	0c 5a       	add	r10,	r12	;
    7208:	5c 02       	rlam	#1,	r12	;
    720a:	16 4c 38 1c 	mov	7224(r12),r6	;0x01c38
    720e:	17 4c 3a 1c 	mov	7226(r12),r7	;0x01c3a
    7212:	7c 3f       	jmp	$-262    	;abs 0x710c

00007214 <.L90>:
            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    7214:	06 9c       	cmp	r12,	r6	;
    7216:	dd 2f       	jc	$-68     	;abs 0x71d2

00007218 <.L46>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7218:	1e 42 5a 1c 	mov	&0x1c5a,r14	;0x1c5a
    721c:	06 4e       	mov	r14,	r6	;
    721e:	07 43       	clr	r7		;

00007220 <.Loc.146.1>:
    7220:	4e 43       	clr.b	r14		;
    7222:	4f 43       	clr.b	r15		;
    7224:	0e 8c       	sub	r12,	r14	;
    7226:	0f 7d       	subc	r13,	r15	;

00007228 <.Loc.146.1>:
    7228:	05 4f       	mov	r15,	r5	;
    722a:	0f 93       	cmp	#0,	r15	;r3 As==00
    722c:	14 34       	jge	$+42     	;abs 0x7256

0000722e <.L22>:
    722e:	0e 49       	mov	r9,	r14	;
    7230:	5e 06       	rlam	#2,	r14	;
    7232:	09 5e       	add	r14,	r9	;
    7234:	59 02       	rlam	#1,	r9	;
    7236:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

0000723a <.L28>:
                    min_wkup = -wkup_timing[i].data;
    723a:	4f 43       	clr.b	r15		;
    723c:	0f 8c       	sub	r12,	r15	;
    723e:	82 4f 5a 1c 	mov	r15,	&0x1c5a	;

00007242 <.Loc.149.1>:
                    nxt_wkup = wkup_timing[i].thread_id;
    7242:	c2 4e 5c 1c 	mov.b	r14,	&0x1c5c	;

00007246 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7246:	7b 90 03 00 	cmp.b	#3,	r11	;
    724a:	92 23       	jnz	$-218    	;abs 0x7170
    724c:	a6 3f       	jmp	$-178    	;abs 0x719a

0000724e <.L88>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    724e:	07 4c       	mov	r12,	r7	;
    7250:	0c 9e       	cmp	r14,	r12	;
    7252:	9b 2f       	jc	$-200    	;abs 0x718a
    7254:	80 3f       	jmp	$-254    	;abs 0x7156

00007256 <.L92>:
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7256:	0f 93       	cmp	#0,	r15	;r3 As==00
    7258:	03 20       	jnz	$+8      	;abs 0x7260
    725a:	05 4e       	mov	r14,	r5	;
    725c:	0e 96       	cmp	r6,	r14	;
    725e:	e7 2b       	jnc	$-48     	;abs 0x722e

00007260 <.L47>:
    7260:	06 9e       	cmp	r14,	r6	;
    7262:	96 23       	jnz	$-210    	;abs 0x7190
    7264:	0f 93       	cmp	#0,	r15	;r3 As==00
    7266:	94 23       	jnz	$-214    	;abs 0x7190

00007268 <.Loc.146.1>:
    7268:	0e 49       	mov	r9,	r14	;
    726a:	5e 06       	rlam	#2,	r14	;
    726c:	09 5e       	add	r14,	r9	;
    726e:	59 02       	rlam	#1,	r9	;
    7270:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00007274 <.Loc.146.1>:
    7274:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

00007278 <.Loc.146.1>:
    7278:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    727c:	36 1c 
    727e:	dd 2b       	jnc	$-68     	;abs 0x723a
    7280:	0e 3c       	jmp	$+30     	;abs 0x729e

00007282 <.L89>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    7282:	0d 9f       	cmp	r15,	r13	;
    7284:	85 23       	jnz	$-244    	;abs 0x7190

00007286 <.Loc.155.1>:
    7286:	0e 49       	mov	r9,	r14	;
    7288:	5e 06       	rlam	#2,	r14	;
    728a:	09 5e       	add	r14,	r9	;
    728c:	59 02       	rlam	#1,	r9	;
    728e:	5e 49 36 1c 	mov.b	7222(r9),r14	;0x01c36

00007292 <.Loc.155.1>:
    7292:	5f 42 5c 1c 	mov.b	&0x1c5c,r15	;0x1c5c

00007296 <.Loc.155.1>:
    7296:	d9 92 5c 1c 	cmp.b	&0x1c5c,7222(r9);0x1c5c, 0x1c36
    729a:	36 1c 
    729c:	62 2b       	jnc	$-314    	;abs 0x7162

0000729e <.L39>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    729e:	7b 90 03 00 	cmp.b	#3,	r11	;
    72a2:	66 23       	jnz	$-306    	;abs 0x7170

000072a4 <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    72a4:	0e 4f       	mov	r15,	r14	;

000072a6 <.Loc.164.1>:
    if (!first)
    72a6:	79 3f       	jmp	$-268    	;abs 0x719a

000072a8 <.L86>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    72a8:	7b 90 03 00 	cmp.b	#3,	r11	;
    72ac:	74 27       	jz	$-278    	;abs 0x7196

000072ae <.Loc.130.1>:
        if (wkup_timing[i].status == USED)
    72ae:	09 4a       	mov	r10,	r9	;
    72b0:	05 4a       	mov	r10,	r5	;
    72b2:	55 06       	rlam	#2,	r5	;
    72b4:	0c 45       	mov	r5,	r12	;
    72b6:	0c 5a       	add	r10,	r12	;
    72b8:	5c 02       	rlam	#1,	r12	;

000072ba <.Loc.130.1>:
    72ba:	9c 93 34 1c 	cmp	#1,	7220(r12);r3 As==01, 0x1c34
    72be:	0f 23       	jnz	$-480    	;abs 0x70de
    72c0:	a1 3f       	jmp	$-188    	;abs 0x7204

000072c2 <set_wkup_timer>:

// sets a one-shot timer using Timer A2
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    72c2:	4a 15       	pushm	#5,	r10	;16-bit words

000072c4 <.LCFI14>:
    72c4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000072c8 <.LCFI15>:
    72c8:	47 4c       	mov.b	r12,	r7	;
    72ca:	09 4d       	mov	r13,	r9	;

000072cc <.LBB12>:
    72cc:	46 43       	clr.b	r6		;
    72ce:	38 40 34 1c 	mov	#7220,	r8	;#0x1c34

000072d2 <.L94>:
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    72d2:	0a 46       	mov	r6,	r10	;
    72d4:	5a 06       	rlam	#2,	r10	;
    72d6:	0a 56       	add	r6,	r10	;
    72d8:	5a 02       	rlam	#1,	r10	;
    72da:	0a 58       	add	r8,	r10	;
    72dc:	4e 43       	clr.b	r14		;
    72de:	4d 46       	mov.b	r6,	r13	;
    72e0:	0c 41       	mov	r1,	r12	;
    72e2:	b0 12 40 7f 	call	#32576		;#0x7f40
    72e6:	aa 41 00 00 	mov	@r1,	0(r10)	;
    72ea:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    72ee:	02 00 
    72f0:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    72f4:	04 00 
    72f6:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    72fa:	06 00 
    72fc:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7300:	08 00 

00007302 <.LVL43>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    7302:	16 53       	inc	r6		;

00007304 <.Loc.115.1>:
    7304:	36 90 03 00 	cmp	#3,	r6	;
    7308:	e4 23       	jnz	$-54     	;abs 0x72d2

0000730a <.Loc.189.1>:
    //fetch from persistent buffer to local variables
    unpack_wkup_to_local();

    //init the timer
    //TODO:check if needed
    stop_timer();
    730a:	b0 12 9e 7b 	call	#31646		;#0x7b9e

0000730e <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    730e:	0e 49       	mov	r9,	r14	;
    7310:	0f 43       	clr	r15		;

00007312 <.Loc.194.1>:
    7312:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    7316:	22 24       	jz	$+70     	;abs 0x735c

00007318 <.Loc.192.1>:
    7318:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    731c:	49 24       	jz	$+148    	;abs 0x73b0

0000731e <.Loc.192.1>:
    731e:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    7322:	49 24       	jz	$+148    	;abs 0x73b6

00007324 <.Loc.192.1>:

    }else{

        //buffer is full
        //TODO: ADD failcheck
        wkup_timing[2].data = ticks;
    7324:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    7328:	82 4f 4e 1c 	mov	r15,	&0x1c4e	;

0000732c <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    732c:	4d 43       	clr.b	r13		;
    732e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7330:	b0 12 a4 7c 	call	#31908		;#0x7ca4

00007334 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    7334:	c2 47 4a 1c 	mov.b	r7,	&0x1c4a	;

00007338 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    7338:	4e 47       	mov.b	r7,	r14	;
    733a:	4d 43       	clr.b	r13		;
    733c:	7c 40 03 00 	mov.b	#3,	r12	;
    7340:	b0 12 f8 7c 	call	#31992		;#0x7cf8

00007344 <.Loc.219.1>:
        refresh_wkup_timers();
    7344:	b0 12 bc 70 	call	#28860		;#0x70bc

00007348 <.Loc.222.1>:
    }

    _pers_timer_update_lock(WKUP);
    7348:	4c 43       	clr.b	r12		;
    734a:	b0 12 a8 7d 	call	#32168		;#0x7da8

0000734e <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    734e:	4c 43       	clr.b	r12		;
    7350:	b0 12 fc 7e 	call	#32508		;#0x7efc

00007354 <.Loc.224.1>:
}
    7354:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007358 <.LCFI16>:
    7358:	46 17       	popm	#5,	r10	;16-bit words

0000735a <.LCFI17>:
    735a:	30 41       	ret			

0000735c <.L97>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    735c:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

00007360 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    7360:	0d 4a       	mov	r10,	r13	;

00007362 <.L95>:
            wkup_timing[i].data = ticks;
    7362:	0c 4d       	mov	r13,	r12	;
    7364:	5c 06       	rlam	#2,	r12	;
    7366:	0c 5d       	add	r13,	r12	;
    7368:	5c 02       	rlam	#1,	r12	;
    736a:	08 5c       	add	r12,	r8	;
    736c:	88 4e 04 00 	mov	r14,	4(r8)	;
    7370:	88 4f 06 00 	mov	r15,	6(r8)	;

00007374 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    7374:	4d 43       	clr.b	r13		;
    7376:	4c 4a       	mov.b	r10,	r12	;
    7378:	b0 12 a4 7c 	call	#31908		;#0x7ca4

0000737c <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    737c:	c8 47 02 00 	mov.b	r7,	2(r8)	;

00007380 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    7380:	4e 47       	mov.b	r7,	r14	;
    7382:	4d 43       	clr.b	r13		;
    7384:	4c 4a       	mov.b	r10,	r12	;
    7386:	b0 12 f8 7c 	call	#31992		;#0x7cf8

0000738a <.Loc.200.1>:
            wkup_timing[i].status = USED;
    738a:	98 43 00 00 	mov	#1,	0(r8)	;r3 As==01

0000738e <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    738e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7390:	4d 43       	clr.b	r13		;
    7392:	4c 4a       	mov.b	r10,	r12	;
    7394:	b0 12 44 7d 	call	#32068		;#0x7d44

00007398 <.Loc.202.1>:
        refresh_wkup_timers();
    7398:	b0 12 bc 70 	call	#28860		;#0x70bc

0000739c <.Loc.222.1>:
    _pers_timer_update_lock(WKUP);
    739c:	4c 43       	clr.b	r12		;
    739e:	b0 12 a8 7d 	call	#32168		;#0x7da8

000073a2 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    73a2:	4c 43       	clr.b	r12		;
    73a4:	b0 12 fc 7e 	call	#32508		;#0x7efc

000073a8 <.Loc.224.1>:
}
    73a8:	31 50 0a 00 	add	#10,	r1	;#0x000a

000073ac <.LCFI19>:
    73ac:	46 17       	popm	#5,	r10	;16-bit words

000073ae <.LCFI20>:
    73ae:	30 41       	ret			

000073b0 <.L98>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    73b0:	5a 43       	mov.b	#1,	r10	;r3 As==01

000073b2 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    73b2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    73b4:	d6 3f       	jmp	$-82     	;abs 0x7362

000073b6 <.L99>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    73b6:	6a 43       	mov.b	#2,	r10	;r3 As==10

000073b8 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    73b8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    73ba:	d3 3f       	jmp	$-88     	;abs 0x7362

000073bc <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    73bc:	4d 4c       	mov.b	r12,	r13	;

000073be <.Loc.236.1>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    73be:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    73c2:	14 24       	jz	$+42     	;abs 0x73ec

000073c4 <.Loc.237.1>:
    73c4:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    73c8:	14 24       	jz	$+42     	;abs 0x73f2

000073ca <.Loc.237.1>:
    73ca:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    73ce:	01 24       	jz	$+4      	;abs 0x73d2

000073d0 <.Loc.246.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
            break;
        }
    }

}
    73d0:	30 41       	ret			

000073d2 <.L106>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    73d2:	6c 43       	mov.b	#2,	r12	;r3 As==10

000073d4 <.LVL69>:
        if (xpr_timing[i].thread_id == thread_id){
    73d4:	6e 43       	mov.b	#2,	r14	;r3 As==10

000073d6 <.L102>:
            xpr_timing[i].status = NOT_USED;
    73d6:	0d 4e       	mov	r14,	r13	;

000073d8 <.LVL71>:
    73d8:	5d 06       	rlam	#2,	r13	;
    73da:	0d 5e       	add	r14,	r13	;
    73dc:	5d 02       	rlam	#1,	r13	;
    73de:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

000073e2 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    73e2:	4e 43       	clr.b	r14		;
    73e4:	6d 43       	mov.b	#2,	r13	;r3 As==10
    73e6:	b0 12 44 7d 	call	#32068		;#0x7d44

000073ea <.Loc.242.1>:
}
    73ea:	30 41       	ret			

000073ec <.L104>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    73ec:	4c 43       	clr.b	r12		;

000073ee <.LVL74>:
        if (xpr_timing[i].thread_id == thread_id){
    73ee:	4e 43       	clr.b	r14		;
    73f0:	f2 3f       	jmp	$-26     	;abs 0x73d6

000073f2 <.L105>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    73f2:	5c 43       	mov.b	#1,	r12	;r3 As==01

000073f4 <.LVL76>:
        if (xpr_timing[i].thread_id == thread_id){
    73f4:	5e 43       	mov.b	#1,	r14	;r3 As==01
    73f6:	ef 3f       	jmp	$-32     	;abs 0x73d6

000073f8 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    73f8:	2a 15       	pushm	#3,	r10	;16-bit words

000073fa <.LCFI22>:
    73fa:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000073fe <.LCFI23>:
    73fe:	49 43       	clr.b	r9		;
    7400:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

00007404 <.L108>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);
    7404:	0a 49       	mov	r9,	r10	;
    7406:	5a 06       	rlam	#2,	r10	;
    7408:	0a 59       	add	r9,	r10	;
    740a:	5a 02       	rlam	#1,	r10	;
    740c:	0a 58       	add	r8,	r10	;
    740e:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7410:	4d 49       	mov.b	r9,	r13	;
    7412:	0c 41       	mov	r1,	r12	;
    7414:	b0 12 40 7f 	call	#32576		;#0x7f40
    7418:	aa 41 00 00 	mov	@r1,	0(r10)	;
    741c:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    7420:	02 00 
    7422:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    7426:	04 00 
    7428:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    742c:	06 00 
    742e:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7432:	08 00 

00007434 <.LVL80>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7434:	19 53       	inc	r9		;

00007436 <.Loc.252.1>:
    7436:	39 90 03 00 	cmp	#3,	r9	;
    743a:	e4 23       	jnz	$-54     	;abs 0x7404

0000743c <.Loc.257.1>:
    }

}
    743c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007440 <.LCFI24>:
    7440:	28 17       	popm	#3,	r10	;16-bit words

00007442 <.LCFI25>:
    7442:	30 41       	ret			

00007444 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    7444:	4a 15       	pushm	#5,	r10	;16-bit words

00007446 <.LCFI26>:
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    {

        if (xpr_timing[i].status == USED)
    7446:	92 93 16 1c 	cmp	#1,	&0x1c16	;r3 As==01
    744a:	62 24       	jz	$+198    	;abs 0x7510

0000744c <.Loc.265.1>:
    744c:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    7450:	07 24       	jz	$+16     	;abs 0x7460

00007452 <.Loc.265.1>:
    7452:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    7456:	15 25       	jz	$+556    	;abs 0x7682

00007458 <.Loc.265.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();
    7458:	b0 12 de 7b 	call	#31710		;#0x7bde

0000745c <.Loc.313.1>:

}
    745c:	46 17       	popm	#5,	r10	;16-bit words

0000745e <.LCFI27>:
    745e:	30 41       	ret			

00007460 <.L160>:
            if (first)
    7460:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    7464:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

00007468 <.LVL88>:
                nxt_xpr = xpr_timing[i].thread_id;
    7468:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

0000746c <.LVL89>:
    746c:	08 46       	mov	r6,	r8	;
    746e:	09 47       	mov	r7,	r9	;

00007470 <.L125>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    7470:	b0 12 40 7c 	call	#31808		;#0x7c40

00007474 <.Loc.278.1>:
    7474:	0e 46       	mov	r6,	r14	;
    7476:	0f 47       	mov	r7,	r15	;
    7478:	0e 8c       	sub	r12,	r14	;
    747a:	0f 7d       	subc	r13,	r15	;

0000747c <.Loc.278.1>:
    747c:	82 4e 24 1c 	mov	r14,	&0x1c24	;
    7480:	82 4f 26 1c 	mov	r15,	&0x1c26	;

00007484 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    7484:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7486:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7488:	b0 12 a4 7c 	call	#31908		;#0x7ca4

0000748c <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    748c:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    7490:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

00007494 <.Loc.281.1>:
    7494:	4e 43       	clr.b	r14		;
    7496:	0e 9c       	cmp	r12,	r14	;
    7498:	a2 34       	jge	$+326    	;abs 0x75de

0000749a <.L132>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    749a:	0c 99       	cmp	r9,	r12	;
    749c:	04 38       	jl	$+10     	;abs 0x74a6

0000749e <.L170>:
    749e:	09 9c       	cmp	r12,	r9	;
    74a0:	e5 20       	jnz	$+460    	;abs 0x766c
    74a2:	0d 98       	cmp	r8,	r13	;
    74a4:	e3 2c       	jc	$+456    	;abs 0x766c

000074a6 <.L152>:
    74a6:	5a 42 22 1c 	mov.b	&0x1c22,r10	;0x1c22

000074aa <.L130>:
                    nxt_xpr = xpr_timing[i].thread_id;
    74aa:	08 4d       	mov	r13,	r8	;
    74ac:	09 4c       	mov	r12,	r9	;

000074ae <.L117>:
        if (xpr_timing[i].status == USED)
    74ae:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    74b2:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

000074b6 <.Loc.268.1>:
    74b6:	92 93 2a 1c 	cmp	#1,	&0x1c2a	;r3 As==01
    74ba:	1d 20       	jnz	$+60     	;abs 0x74f6

000074bc <.L142>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    74bc:	b0 12 40 7c 	call	#31808		;#0x7c40

000074c0 <.Loc.278.1>:
    74c0:	0e 46       	mov	r6,	r14	;
    74c2:	0f 47       	mov	r7,	r15	;
    74c4:	0e 8c       	sub	r12,	r14	;
    74c6:	0f 7d       	subc	r13,	r15	;

000074c8 <.Loc.278.1>:
    74c8:	82 4e 2e 1c 	mov	r14,	&0x1c2e	;
    74cc:	82 4f 30 1c 	mov	r15,	&0x1c30	;

000074d0 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    74d0:	6d 43       	mov.b	#2,	r13	;r3 As==10
    74d2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    74d4:	b0 12 a4 7c 	call	#31908		;#0x7ca4

000074d8 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    74d8:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    74dc:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

000074e0 <.Loc.281.1>:
    74e0:	4e 43       	clr.b	r14		;
    74e2:	0e 9c       	cmp	r12,	r14	;
    74e4:	4c 34       	jge	$+154    	;abs 0x757e

000074e6 <.L134>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    74e6:	0c 99       	cmp	r9,	r12	;
    74e8:	76 38       	jl	$+238    	;abs 0x75d6

000074ea <.L168>:
    74ea:	09 9c       	cmp	r12,	r9	;
    74ec:	02 20       	jnz	$+6      	;abs 0x74f2
    74ee:	0d 98       	cmp	r8,	r13	;
    74f0:	72 28       	jnc	$+230    	;abs 0x75d6

000074f2 <.L139>:
    74f2:	08 9d       	cmp	r13,	r8	;
    74f4:	d8 24       	jz	$+434    	;abs 0x76a6

000074f6 <.L137>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    74f6:	4d 4a       	mov.b	r10,	r13	;
    74f8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    74fa:	b0 12 8c 7d 	call	#32140		;#0x7d8c

000074fe <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr);
    74fe:	0d 48       	mov	r8,	r13	;
    7500:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7502:	b0 12 9a 7d 	call	#32154		;#0x7d9a

00007506 <.Loc.308.1>:
        set_timer_xpr(min_xpr);
    7506:	0c 48       	mov	r8,	r12	;
    7508:	b0 12 c8 7b 	call	#31688		;#0x7bc8

0000750c <.Loc.313.1>:
}
    750c:	46 17       	popm	#5,	r10	;16-bit words

0000750e <.LCFI29>:
    750e:	30 41       	ret			

00007510 <.L159>:
            if (first)
    7510:	18 42 1a 1c 	mov	&0x1c1a,r8	;0x1c1a
    7514:	19 42 1c 1c 	mov	&0x1c1c,r9	;0x1c1c

00007518 <.LVL103>:
                nxt_xpr = xpr_timing[i].thread_id;
    7518:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000751c <.LVL104>:
            xpr_timing[i].data = xpr_timing[i].data - __get_time();
    751c:	b0 12 40 7c 	call	#31808		;#0x7c40

00007520 <.LVL105>:
    7520:	0e 48       	mov	r8,	r14	;
    7522:	0f 49       	mov	r9,	r15	;
    7524:	0e 8c       	sub	r12,	r14	;
    7526:	0f 7d       	subc	r13,	r15	;

00007528 <.Loc.278.1>:
    7528:	82 4e 1a 1c 	mov	r14,	&0x1c1a	;
    752c:	82 4f 1c 1c 	mov	r15,	&0x1c1c	;

00007530 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    7530:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7532:	4c 43       	clr.b	r12		;
    7534:	b0 12 a4 7c 	call	#31908		;#0x7ca4

00007538 <.Loc.281.1>:
            if (xpr_timing[i].data <= 0)
    7538:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    753c:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00007540 <.Loc.281.1>:
    7540:	4e 43       	clr.b	r14		;
    7542:	0e 9c       	cmp	r12,	r14	;
    7544:	74 34       	jge	$+234    	;abs 0x762e

00007546 <.L121>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7546:	0c 99       	cmp	r9,	r12	;
    7548:	0c 34       	jge	$+26     	;abs 0x7562

0000754a <.L151>:
    754a:	5a 42 18 1c 	mov.b	&0x1c18,r10	;0x1c18

0000754e <.L119>:
        if (xpr_timing[i].status == USED)
    754e:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    7552:	ab 23       	jnz	$-168    	;abs 0x74aa

00007554 <.Loc.271.1>:
            if (first)
    7554:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    7558:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26

0000755c <.Loc.268.1>:
        if (xpr_timing[i].status == USED)
    755c:	08 4d       	mov	r13,	r8	;
    755e:	09 4c       	mov	r12,	r9	;
    7560:	87 3f       	jmp	$-240    	;abs 0x7470

00007562 <.L165>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7562:	09 9c       	cmp	r12,	r9	;
    7564:	02 20       	jnz	$+6      	;abs 0x756a
    7566:	0d 98       	cmp	r8,	r13	;
    7568:	f0 2b       	jnc	$-30     	;abs 0x754a

0000756a <.L114>:
    756a:	0d 98       	cmp	r8,	r13	;
    756c:	93 24       	jz	$+296    	;abs 0x7694

0000756e <.L118>:
        if (xpr_timing[i].status == USED)
    756e:	92 93 20 1c 	cmp	#1,	&0x1c20	;r3 As==01
    7572:	9d 23       	jnz	$-196    	;abs 0x74ae

00007574 <.Loc.271.1>:
            if (first)
    7574:	16 42 24 1c 	mov	&0x1c24,r6	;0x1c24
    7578:	17 42 26 1c 	mov	&0x1c26,r7	;0x1c26
    757c:	79 3f       	jmp	$-268    	;abs 0x7470

0000757e <.L162>:
            if (xpr_timing[i].data <= 0)
    757e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7580:	02 20       	jnz	$+6      	;abs 0x7586
    7582:	0d 93       	cmp	#0,	r13	;r3 As==00
    7584:	b0 23       	jnz	$-158    	;abs 0x74e6

00007586 <.L153>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    7586:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c
    758a:	b0 12 3c 6e 	call	#28220		;#0x6e3c
    758e:	b0 12 e2 6d 	call	#28130		;#0x6de2

00007592 <.Loc.289.1>:
                clear_xpr_status(xpr_timing[i].thread_id);
    7592:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

00007596 <.LBB18>:
        if (xpr_timing[i].thread_id == thread_id){
    7596:	d2 92 2c 1c 	cmp.b	&0x1c2c,&0x1c18	;0x1c2c
    759a:	18 1c 
    759c:	8e 24       	jz	$+286    	;abs 0x76ba

0000759e <.Loc.237.1>:
    759e:	c2 9c 22 1c 	cmp.b	r12,	&0x1c22	;
    75a2:	91 24       	jz	$+292    	;abs 0x76c6

000075a4 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    75a4:	6c 43       	mov.b	#2,	r12	;r3 As==10

000075a6 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    75a6:	6e 43       	mov.b	#2,	r14	;r3 As==10

000075a8 <.L136>:
            xpr_timing[i].status = NOT_USED;
    75a8:	0d 4e       	mov	r14,	r13	;
    75aa:	5d 06       	rlam	#2,	r13	;
    75ac:	0d 5e       	add	r14,	r13	;
    75ae:	5d 02       	rlam	#1,	r13	;
    75b0:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

000075b4 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    75b4:	4e 43       	clr.b	r14		;
    75b6:	6d 43       	mov.b	#2,	r13	;r3 As==10
    75b8:	b0 12 44 7d 	call	#32068		;#0x7d44

000075bc <.LBE18>:
            if (xpr_timing[i].data > 0)
    75bc:	1d 42 2e 1c 	mov	&0x1c2e,r13	;0x1c2e
    75c0:	1c 42 30 1c 	mov	&0x1c30,r12	;0x1c30

000075c4 <.Loc.292.1>:
    75c4:	4e 43       	clr.b	r14		;
    75c6:	0e 9c       	cmp	r12,	r14	;
    75c8:	8e 3b       	jl	$-226    	;abs 0x74e6
    75ca:	0c 93       	cmp	#0,	r12	;r3 As==00
    75cc:	94 23       	jnz	$-214    	;abs 0x74f6
    75ce:	0d 93       	cmp	#0,	r13	;r3 As==00
    75d0:	92 27       	jz	$-218    	;abs 0x74f6

000075d2 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    75d2:	0c 99       	cmp	r9,	r12	;
    75d4:	8a 37       	jge	$-234    	;abs 0x74ea

000075d6 <.L154>:
    75d6:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

000075da <.LVL117>:
    if (!first)
    75da:	08 4d       	mov	r13,	r8	;
    75dc:	8c 3f       	jmp	$-230    	;abs 0x74f6

000075de <.L161>:
            if (xpr_timing[i].data <= 0)
    75de:	0c 93       	cmp	#0,	r12	;r3 As==00
    75e0:	02 20       	jnz	$+6      	;abs 0x75e6
    75e2:	0d 93       	cmp	#0,	r13	;r3 As==00
    75e4:	5a 23       	jnz	$-330    	;abs 0x749a

000075e6 <.L126>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    75e6:	5c 42 22 1c 	mov.b	&0x1c22,r12	;0x1c22
    75ea:	b0 12 3c 6e 	call	#28220		;#0x6e3c
    75ee:	b0 12 e2 6d 	call	#28130		;#0x6de2

000075f2 <.LVL120>:
        if (xpr_timing[i].thread_id == thread_id){
    75f2:	d2 92 18 1c 	cmp.b	&0x1c18,&0x1c22	;0x1c18
    75f6:	22 1c 
    75f8:	63 24       	jz	$+200    	;abs 0x76c0

000075fa <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    75fa:	5c 43       	mov.b	#1,	r12	;r3 As==01

000075fc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    75fc:	5e 43       	mov.b	#1,	r14	;r3 As==01

000075fe <.L131>:
            xpr_timing[i].status = NOT_USED;
    75fe:	0d 4e       	mov	r14,	r13	;
    7600:	5d 06       	rlam	#2,	r13	;
    7602:	0d 5e       	add	r14,	r13	;
    7604:	5d 02       	rlam	#1,	r13	;
    7606:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000760a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    760a:	4e 43       	clr.b	r14		;
    760c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    760e:	b0 12 44 7d 	call	#32068		;#0x7d44

00007612 <.LVL122>:
            if (xpr_timing[i].data > 0)
    7612:	1d 42 24 1c 	mov	&0x1c24,r13	;0x1c24
    7616:	1c 42 26 1c 	mov	&0x1c26,r12	;0x1c26

0000761a <.Loc.292.1>:
    761a:	4e 43       	clr.b	r14		;
    761c:	0e 9c       	cmp	r12,	r14	;
    761e:	3d 3b       	jl	$-388    	;abs 0x749a
    7620:	0c 93       	cmp	#0,	r12	;r3 As==00
    7622:	45 23       	jnz	$-372    	;abs 0x74ae
    7624:	0d 93       	cmp	#0,	r13	;r3 As==00
    7626:	43 27       	jz	$-376    	;abs 0x74ae

00007628 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7628:	0c 99       	cmp	r9,	r12	;
    762a:	3d 3b       	jl	$-388    	;abs 0x74a6
    762c:	38 3f       	jmp	$-398    	;abs 0x749e

0000762e <.L164>:
            if (xpr_timing[i].data <= 0)
    762e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7630:	02 20       	jnz	$+6      	;abs 0x7636
    7632:	0d 93       	cmp	#0,	r13	;r3 As==00
    7634:	88 23       	jnz	$-238    	;abs 0x7546

00007636 <.L112>:
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    7636:	5c 42 18 1c 	mov.b	&0x1c18,r12	;0x1c18
    763a:	b0 12 3c 6e 	call	#28220		;#0x6e3c
    763e:	b0 12 e2 6d 	call	#28130		;#0x6de2

00007642 <.LVL125>:
            xpr_timing[i].status = NOT_USED;
    7642:	82 43 16 1c 	mov	#0,	&0x1c16	;r3 As==00

00007646 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    7646:	4e 43       	clr.b	r14		;
    7648:	6d 43       	mov.b	#2,	r13	;r3 As==10
    764a:	4c 43       	clr.b	r12		;
    764c:	b0 12 44 7d 	call	#32068		;#0x7d44

00007650 <.LVL126>:
            if (xpr_timing[i].data > 0)
    7650:	1d 42 1a 1c 	mov	&0x1c1a,r13	;0x1c1a
    7654:	1c 42 1c 1c 	mov	&0x1c1c,r12	;0x1c1c

00007658 <.Loc.292.1>:
    7658:	4e 43       	clr.b	r14		;
    765a:	0e 9c       	cmp	r12,	r14	;
    765c:	74 3b       	jl	$-278    	;abs 0x7546
    765e:	0c 93       	cmp	#0,	r12	;r3 As==00
    7660:	86 23       	jnz	$-242    	;abs 0x756e
    7662:	0d 93       	cmp	#0,	r13	;r3 As==00
    7664:	84 27       	jz	$-246    	;abs 0x756e

00007666 <.Loc.294.1>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7666:	0c 99       	cmp	r9,	r12	;
    7668:	70 3b       	jl	$-286    	;abs 0x754a
    766a:	7b 3f       	jmp	$-264    	;abs 0x7562

0000766c <.L128>:
    766c:	08 9d       	cmp	r13,	r8	;
    766e:	1f 23       	jnz	$-448    	;abs 0x74ae
    7670:	09 9c       	cmp	r12,	r9	;
    7672:	1d 23       	jnz	$-452    	;abs 0x74ae

00007674 <.Loc.294.1>:
    7674:	5e 42 22 1c 	mov.b	&0x1c22,r14	;0x1c22

00007678 <.Loc.294.1>:
    7678:	5a 92 22 1c 	cmp.b	&0x1c22,r10	;0x1c22
    767c:	18 2f       	jc	$-462    	;abs 0x74ae
    767e:	0a 4e       	mov	r14,	r10	;

00007680 <.LVL128>:
    7680:	14 3f       	jmp	$-470    	;abs 0x74aa

00007682 <.L143>:
            if (first)
    7682:	16 42 2e 1c 	mov	&0x1c2e,r6	;0x1c2e
    7686:	17 42 30 1c 	mov	&0x1c30,r7	;0x1c30

0000768a <.LVL130>:
                nxt_xpr = xpr_timing[i].thread_id;
    768a:	5a 42 2c 1c 	mov.b	&0x1c2c,r10	;0x1c2c

0000768e <.LVL131>:
    768e:	08 46       	mov	r6,	r8	;
    7690:	09 47       	mov	r7,	r9	;
    7692:	14 3f       	jmp	$-470    	;abs 0x74bc

00007694 <.L166>:
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    7694:	0c 99       	cmp	r9,	r12	;
    7696:	6b 23       	jnz	$-296    	;abs 0x756e

00007698 <.Loc.294.1>:
    7698:	5e 42 18 1c 	mov.b	&0x1c18,r14	;0x1c18

0000769c <.Loc.294.1>:
    769c:	5a 92 18 1c 	cmp.b	&0x1c18,r10	;0x1c18
    76a0:	66 2f       	jc	$-306    	;abs 0x756e
    76a2:	0a 4e       	mov	r14,	r10	;

000076a4 <.LVL133>:
    76a4:	54 3f       	jmp	$-342    	;abs 0x754e

000076a6 <.L163>:
    76a6:	09 9c       	cmp	r12,	r9	;
    76a8:	26 23       	jnz	$-434    	;abs 0x74f6

000076aa <.Loc.294.1>:
    76aa:	5c 42 2c 1c 	mov.b	&0x1c2c,r12	;0x1c2c

000076ae <.Loc.294.1>:
    76ae:	5a 92 2c 1c 	cmp.b	&0x1c2c,r10	;0x1c2c
    76b2:	21 2f       	jc	$-444    	;abs 0x74f6
    76b4:	0a 4c       	mov	r12,	r10	;

000076b6 <.LVL135>:
    if (!first)
    76b6:	08 4d       	mov	r13,	r8	;
    76b8:	1e 3f       	jmp	$-450    	;abs 0x74f6

000076ba <.L149>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    76ba:	4c 43       	clr.b	r12		;

000076bc <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    76bc:	4e 43       	clr.b	r14		;
    76be:	74 3f       	jmp	$-278    	;abs 0x75a8

000076c0 <.L169>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    76c0:	4c 43       	clr.b	r12		;

000076c2 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    76c2:	4e 43       	clr.b	r14		;
    76c4:	9c 3f       	jmp	$-198    	;abs 0x75fe

000076c6 <.L167>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    76c6:	5c 43       	mov.b	#1,	r12	;r3 As==01

000076c8 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    76c8:	5e 43       	mov.b	#1,	r14	;r3 As==01
    76ca:	6e 3f       	jmp	$-290    	;abs 0x75a8

000076cc <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    76cc:	5a 15       	pushm	#6,	r10	;16-bit words

000076ce <.LCFI31>:
    76ce:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000076d2 <.LCFI32>:
    76d2:	47 4c       	mov.b	r12,	r7	;
    76d4:	08 4d       	mov	r13,	r8	;
    76d6:	06 4e       	mov	r14,	r6	;

000076d8 <.LBB26>:
    76d8:	45 43       	clr.b	r5		;
    76da:	39 40 16 1c 	mov	#7190,	r9	;#0x1c16

000076de <.L172>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    76de:	0a 45       	mov	r5,	r10	;
    76e0:	5a 06       	rlam	#2,	r10	;
    76e2:	0a 55       	add	r5,	r10	;
    76e4:	5a 02       	rlam	#1,	r10	;
    76e6:	0a 59       	add	r9,	r10	;
    76e8:	6e 43       	mov.b	#2,	r14	;r3 As==10
    76ea:	4d 45       	mov.b	r5,	r13	;
    76ec:	0c 41       	mov	r1,	r12	;
    76ee:	b0 12 40 7f 	call	#32576		;#0x7f40
    76f2:	aa 41 00 00 	mov	@r1,	0(r10)	;
    76f6:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    76fa:	02 00 
    76fc:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    7700:	04 00 
    7702:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7706:	06 00 
    7708:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    770c:	08 00 

0000770e <.LVL143>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    770e:	15 53       	inc	r5		;

00007710 <.Loc.252.1>:
    7710:	35 90 03 00 	cmp	#3,	r5	;
    7714:	e4 23       	jnz	$-54     	;abs 0x76de

00007716 <.Loc.324.1>:

    unpack_xpr_to_local();

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    7716:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    771a:	1d 24       	jz	$+60     	;abs 0x7756

0000771c <.Loc.324.1>:
    771c:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    7720:	4e 24       	jz	$+158    	;abs 0x77be

00007722 <.Loc.324.1>:
    7722:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    7726:	4e 24       	jz	$+158    	;abs 0x77c4

00007728 <.Loc.324.1>:

    }else{

        //failure
        //TODO: ADD fail check
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    7728:	0e 48       	mov	r8,	r14	;
    772a:	0f 46       	mov	r6,	r15	;
    772c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    772e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7730:	b0 12 a4 7c 	call	#31908		;#0x7ca4

00007734 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    7734:	4e 47       	mov.b	r7,	r14	;
    7736:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7738:	6c 43       	mov.b	#2,	r12	;r3 As==10
    773a:	b0 12 f8 7c 	call	#31992		;#0x7cf8

0000773e <.Loc.349.1>:
        refresh_xpr_timers();
    773e:	b0 12 44 74 	call	#29764		;#0x7444

00007742 <.Loc.352.1>:
    }

    _pers_timer_update_lock(XPR);
    7742:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7744:	b0 12 a8 7d 	call	#32168		;#0x7da8

00007748 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    7748:	6c 43       	mov.b	#2,	r12	;r3 As==10
    774a:	b0 12 fc 7e 	call	#32508		;#0x7efc

0000774e <.Loc.354.1>:
}
    774e:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007752 <.LCFI33>:
    7752:	55 17       	popm	#6,	r10	;16-bit words

00007754 <.LCFI34>:
    7754:	30 41       	ret			

00007756 <.L175>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    7756:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

0000775a <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    775a:	05 4a       	mov	r10,	r5	;

0000775c <.L173>:
            xpr_timing[i].data = ticks + __get_time();
    775c:	b0 12 40 7c 	call	#31808		;#0x7c40

00007760 <.Loc.328.1>:
    7760:	0e 45       	mov	r5,	r14	;
    7762:	5e 06       	rlam	#2,	r14	;
    7764:	0e 55       	add	r5,	r14	;
    7766:	5e 02       	rlam	#1,	r14	;
    7768:	09 5e       	add	r14,	r9	;

0000776a <.Loc.328.1>:
    776a:	0c 58       	add	r8,	r12	;
    776c:	89 4c 04 00 	mov	r12,	4(r9)	;
    7770:	0d 66       	addc	r6,	r13	;
    7772:	89 4d 06 00 	mov	r13,	6(r9)	;

00007776 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    7776:	b0 12 40 7c 	call	#31808		;#0x7c40

0000777a <.Loc.329.1>:
    777a:	0e 4c       	mov	r12,	r14	;
    777c:	0e 58       	add	r8,	r14	;
    777e:	0f 4d       	mov	r13,	r15	;
    7780:	0f 66       	addc	r6,	r15	;
    7782:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7784:	4c 4a       	mov.b	r10,	r12	;
    7786:	b0 12 a4 7c 	call	#31908		;#0x7ca4

0000778a <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    778a:	c9 47 02 00 	mov.b	r7,	2(r9)	;

0000778e <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    778e:	4e 47       	mov.b	r7,	r14	;
    7790:	6d 43       	mov.b	#2,	r13	;r3 As==10
    7792:	4c 4a       	mov.b	r10,	r12	;
    7794:	b0 12 f8 7c 	call	#31992		;#0x7cf8

00007798 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    7798:	99 43 00 00 	mov	#1,	0(r9)	;r3 As==01

0000779c <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    779c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    779e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    77a0:	4c 4a       	mov.b	r10,	r12	;
    77a2:	b0 12 44 7d 	call	#32068		;#0x7d44

000077a6 <.Loc.334.1>:
        refresh_xpr_timers();
    77a6:	b0 12 44 74 	call	#29764		;#0x7444

000077aa <.Loc.352.1>:
    _pers_timer_update_lock(XPR);
    77aa:	6c 43       	mov.b	#2,	r12	;r3 As==10
    77ac:	b0 12 a8 7d 	call	#32168		;#0x7da8

000077b0 <.Loc.353.1>:
    _pers_timer_commit(XPR);
    77b0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    77b2:	b0 12 fc 7e 	call	#32508		;#0x7efc

000077b6 <.Loc.354.1>:
}
    77b6:	31 50 0a 00 	add	#10,	r1	;#0x000a

000077ba <.LCFI36>:
    77ba:	55 17       	popm	#6,	r10	;16-bit words

000077bc <.LCFI37>:
    77bc:	30 41       	ret			

000077be <.L176>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    77be:	5a 43       	mov.b	#1,	r10	;r3 As==01

000077c0 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    77c0:	55 43       	mov.b	#1,	r5	;r3 As==01
    77c2:	cc 3f       	jmp	$-102    	;abs 0x775c

000077c4 <.L177>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    77c4:	6a 43       	mov.b	#2,	r10	;r3 As==10

000077c6 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    77c6:	65 43       	mov.b	#2,	r5	;r3 As==10
    77c8:	c9 3f       	jmp	$-108    	;abs 0x775c

000077ca <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    77ca:	3a 15       	pushm	#4,	r10	;16-bit words

000077cc <.LCFI39>:
    77cc:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000077d0 <.LCFI40>:
    77d0:	47 4c       	mov.b	r12,	r7	;

000077d2 <.LBB34>:
    77d2:	49 43       	clr.b	r9		;
    77d4:	38 40 16 1c 	mov	#7190,	r8	;#0x1c16

000077d8 <.L180>:
        xpr_timing[i] = _pers_timer_get(i,XPR);
    77d8:	0a 49       	mov	r9,	r10	;
    77da:	5a 06       	rlam	#2,	r10	;
    77dc:	0a 59       	add	r9,	r10	;
    77de:	5a 02       	rlam	#1,	r10	;
    77e0:	0a 58       	add	r8,	r10	;
    77e2:	6e 43       	mov.b	#2,	r14	;r3 As==10
    77e4:	4d 49       	mov.b	r9,	r13	;
    77e6:	0c 41       	mov	r1,	r12	;
    77e8:	b0 12 40 7f 	call	#32576		;#0x7f40
    77ec:	aa 41 00 00 	mov	@r1,	0(r10)	;
    77f0:	9a 41 02 00 	mov	2(r1),	2(r10)	;
    77f4:	02 00 
    77f6:	9a 41 04 00 	mov	4(r1),	4(r10)	;
    77fa:	04 00 
    77fc:	9a 41 06 00 	mov	6(r1),	6(r10)	;
    7800:	06 00 
    7802:	9a 41 08 00 	mov	8(r1),	8(r10)	;
    7806:	08 00 

00007808 <.LVL170>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7808:	19 53       	inc	r9		;

0000780a <.Loc.252.1>:
    780a:	39 90 03 00 	cmp	#3,	r9	;
    780e:	e4 23       	jnz	$-54     	;abs 0x77d8

00007810 <.LBB38>:
        if (xpr_timing[i].thread_id == thread_id){
    7810:	c2 97 18 1c 	cmp.b	r7,	&0x1c18	;
    7814:	12 24       	jz	$+38     	;abs 0x783a

00007816 <.Loc.237.1>:
    7816:	c2 97 22 1c 	cmp.b	r7,	&0x1c22	;
    781a:	27 24       	jz	$+80     	;abs 0x786a

0000781c <.Loc.237.1>:
    781c:	c2 97 2c 1c 	cmp.b	r7,	&0x1c2c	;
    7820:	27 24       	jz	$+80     	;abs 0x7870

00007822 <.LBE38>:
    unpack_xpr_to_local();

    clear_xpr_status(thread_id);

    //TODO:care infinite loop?
    refresh_xpr_timers();
    7822:	b0 12 44 74 	call	#29764		;#0x7444

00007826 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    7826:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7828:	b0 12 a8 7d 	call	#32168		;#0x7da8

0000782c <.Loc.369.1>:
    _pers_timer_commit(XPR);
    782c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    782e:	b0 12 fc 7e 	call	#32508		;#0x7efc

00007832 <.Loc.371.1>:

}
    7832:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007836 <.LCFI41>:
    7836:	37 17       	popm	#4,	r10	;16-bit words

00007838 <.LCFI42>:
    7838:	30 41       	ret			

0000783a <.L183>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    783a:	4c 43       	clr.b	r12		;

0000783c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    783c:	4e 43       	clr.b	r14		;

0000783e <.L181>:
            xpr_timing[i].status = NOT_USED;
    783e:	0d 4e       	mov	r14,	r13	;
    7840:	5d 06       	rlam	#2,	r13	;
    7842:	0d 5e       	add	r14,	r13	;
    7844:	5d 02       	rlam	#1,	r13	;
    7846:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

0000784a <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    784a:	4e 43       	clr.b	r14		;
    784c:	6d 43       	mov.b	#2,	r13	;r3 As==10
    784e:	b0 12 44 7d 	call	#32068		;#0x7d44

00007852 <.Loc.242.1>:
    refresh_xpr_timers();
    7852:	b0 12 44 74 	call	#29764		;#0x7444

00007856 <.Loc.368.1>:
    _pers_timer_update_lock(XPR);
    7856:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7858:	b0 12 a8 7d 	call	#32168		;#0x7da8

0000785c <.Loc.369.1>:
    _pers_timer_commit(XPR);
    785c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    785e:	b0 12 fc 7e 	call	#32508		;#0x7efc

00007862 <.Loc.371.1>:
}
    7862:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007866 <.LCFI44>:
    7866:	37 17       	popm	#4,	r10	;16-bit words

00007868 <.LCFI45>:
    7868:	30 41       	ret			

0000786a <.L184>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    786a:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000786c <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    786c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    786e:	e7 3f       	jmp	$-48     	;abs 0x783e

00007870 <.L186>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    7870:	6c 43       	mov.b	#2,	r12	;r3 As==10

00007872 <.Loc.239.1>:
        if (xpr_timing[i].thread_id == thread_id){
    7872:	6e 43       	mov.b	#2,	r14	;r3 As==10
    7874:	e4 3f       	jmp	$-54     	;abs 0x783e

00007876 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    7876:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000787a <.LCFI47>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);
    787a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    787c:	4d 43       	clr.b	r13		;
    787e:	0c 41       	mov	r1,	r12	;
    7880:	b0 12 40 7f 	call	#32576		;#0x7f40
    7884:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    7888:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    788c:	0e 1c 
    788e:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    7892:	10 1c 
    7894:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    7898:	12 1c 
    789a:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    789e:	14 1c 

000078a0 <.Loc.383.1>:
    }

}
    78a0:	31 50 0a 00 	add	#10,	r1	;#0x000a

000078a4 <.LCFI48>:
    78a4:	30 41       	ret			

000078a6 <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    78a6:	2a 15       	pushm	#3,	r10	;16-bit words

000078a8 <.LCFI49>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    78a8:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    78ac:	8a 20       	jnz	$+278    	;abs 0x79c2

000078ae <.Loc.463.1>:
        {

            if (first)
            {
                min_pdc = pdc_timing[i].data;
    78ae:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    78b2:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

000078b6 <.Loc.465.1>:
    78b6:	82 48 52 1c 	mov	r8,	&0x1c52	;

000078ba <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    78ba:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    78be:	54 1c 

000078c0 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time();
    78c0:	b0 12 40 7c 	call	#31808		;#0x7c40

000078c4 <.Loc.471.1>:
    78c4:	0e 48       	mov	r8,	r14	;
    78c6:	0f 49       	mov	r9,	r15	;
    78c8:	0e 8c       	sub	r12,	r14	;
    78ca:	0f 7d       	subc	r13,	r15	;

000078cc <.Loc.471.1>:
    78cc:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    78d0:	82 4f 12 1c 	mov	r15,	&0x1c12	;

000078d4 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    78d4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    78d6:	4c 43       	clr.b	r12		;
    78d8:	b0 12 a4 7c 	call	#31908		;#0x7ca4

000078dc <.Loc.474.1>:

            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    78dc:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    78e0:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

000078e4 <.Loc.474.1>:
    78e4:	0d 93       	cmp	#0,	r13	;r3 As==00
    78e6:	21 38       	jl	$+68     	;abs 0x792a

000078e8 <.Loc.481.1>:
                    min_pdc = -pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
                }
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;

            if (pdc_timing[i].data > 0)
    78e8:	0f 4c       	mov	r12,	r15	;
    78ea:	0f dd       	bis	r13,	r15	;
    78ec:	0f 93       	cmp	#0,	r15	;r3 As==00
    78ee:	6d 24       	jz	$+220    	;abs 0x79ca

000078f0 <.Loc.485.1>:
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    78f0:	1f 42 52 1c 	mov	&0x1c52,r15	;0x1c52
    78f4:	08 4f       	mov	r15,	r8	;
    78f6:	09 43       	clr	r9		;

000078f8 <.Loc.485.1>:
    78f8:	0d 93       	cmp	#0,	r13	;r3 As==00
    78fa:	54 38       	jl	$+170    	;abs 0x79a4
    78fc:	0d 93       	cmp	#0,	r13	;r3 As==00
    78fe:	02 20       	jnz	$+6      	;abs 0x7904
    7900:	0c 98       	cmp	r8,	r12	;
    7902:	50 28       	jnc	$+162    	;abs 0x79a4

00007904 <.L209>:
    7904:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00007908 <.Loc.485.1>:
    7908:	0c 98       	cmp	r8,	r12	;
    790a:	53 24       	jz	$+168    	;abs 0x79b2

0000790c <.L197>:
       }
    }

    if (!first)
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    790c:	4d 4e       	mov.b	r14,	r13	;
    790e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7910:	b0 12 8c 7d 	call	#32140		;#0x7d8c

00007914 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    7914:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    7918:	5c 43       	mov.b	#1,	r12	;r3 As==01
    791a:	b0 12 9a 7d 	call	#32154		;#0x7d9a

0000791e <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    791e:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    7922:	b0 12 e8 7b 	call	#31720		;#0x7be8

00007926 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    7926:	28 17       	popm	#3,	r10	;16-bit words

00007928 <.LCFI50>:
    7928:	30 41       	ret			

0000792a <.L210>:
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    792a:	59 42 5d 1c 	mov.b	&0x1c5d,r9	;0x1c5d
    792e:	0f 43       	clr	r15		;
    7930:	0f 89       	sub	r9,	r15	;
    7932:	08 4f       	mov	r15,	r8	;
    7934:	09 4f       	mov	r15,	r9	;
    7936:	4e 18 09 11 	rpt #15 { rrax.w	r9		;

0000793a <.Loc.474.1>:
    793a:	09 9d       	cmp	r13,	r9	;
    793c:	04 38       	jl	$+10     	;abs 0x7946

0000793e <.Loc.474.1>:
    793e:	0d 99       	cmp	r9,	r13	;
    7940:	25 20       	jnz	$+76     	;abs 0x798c
    7942:	0f 9c       	cmp	r12,	r15	;
    7944:	23 2c       	jc	$+72     	;abs 0x798c

00007946 <.L206>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7946:	1e 42 52 1c 	mov	&0x1c52,r14	;0x1c52
    794a:	0a 4e       	mov	r14,	r10	;
    794c:	0b 43       	clr	r11		;

0000794e <.Loc.476.1>:
    794e:	48 43       	clr.b	r8		;
    7950:	49 43       	clr.b	r9		;
    7952:	08 8c       	sub	r12,	r8	;
    7954:	09 7d       	subc	r13,	r9	;

00007956 <.Loc.476.1>:
    7956:	09 93       	cmp	#0,	r9	;r3 As==00
    7958:	04 38       	jl	$+10     	;abs 0x7962
    795a:	09 93       	cmp	#0,	r9	;r3 As==00
    795c:	0b 20       	jnz	$+24     	;abs 0x7974
    795e:	08 9a       	cmp	r10,	r8	;
    7960:	09 2c       	jc	$+20     	;abs 0x7974

00007962 <.L207>:
    7962:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

00007966 <.L196>:
                    min_pdc = -pdc_timing[i].data;
    7966:	4f 43       	clr.b	r15		;
    7968:	0f 8c       	sub	r12,	r15	;
    796a:	82 4f 52 1c 	mov	r15,	&0x1c52	;

0000796e <.Loc.479.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    796e:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

00007972 <.Loc.494.1>:
    if (!first)
    7972:	cc 3f       	jmp	$-102    	;abs 0x790c

00007974 <.L194>:
    7974:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00007978 <.Loc.476.1>:
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    7978:	0a 98       	cmp	r8,	r10	;
    797a:	c8 23       	jnz	$-110    	;abs 0x790c
    797c:	09 93       	cmp	#0,	r9	;r3 As==00
    797e:	c6 23       	jnz	$-114    	;abs 0x790c

00007980 <.Loc.476.1>:
    7980:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

00007984 <.Loc.476.1>:
    7984:	4f 9e       	cmp.b	r14,	r15	;
    7986:	c2 2f       	jc	$-122    	;abs 0x790c
    7988:	0e 4f       	mov	r15,	r14	;
    798a:	ed 3f       	jmp	$-36     	;abs 0x7966

0000798c <.L192>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    798c:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54

00007990 <.Loc.481.1>:
    7990:	0d 99       	cmp	r9,	r13	;
    7992:	05 38       	jl	$+12     	;abs 0x799e
    7994:	0a 49       	mov	r9,	r10	;
    7996:	09 9d       	cmp	r13,	r9	;
    7998:	b9 23       	jnz	$-140    	;abs 0x790c
    799a:	0c 9f       	cmp	r15,	r12	;
    799c:	b7 2f       	jc	$-144    	;abs 0x790c

0000799e <.L208>:
    799e:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

000079a2 <.Loc.494.1>:
    if (!first)
    79a2:	b4 3f       	jmp	$-150    	;abs 0x790c

000079a4 <.L201>:
    79a4:	5e 42 0e 1c 	mov.b	&0x1c0e,r14	;0x1c0e

000079a8 <.L203>:
                    min_pdc = pdc_timing[i].data;
    79a8:	82 4c 52 1c 	mov	r12,	&0x1c52	;

000079ac <.Loc.488.1>:
                    nxt_pdc = pdc_timing[i].thread_id;
    79ac:	c2 4e 54 1c 	mov.b	r14,	&0x1c54	;

000079b0 <.Loc.494.1>:
    if (!first)
    79b0:	ad 3f       	jmp	$-164    	;abs 0x790c

000079b2 <.L211>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    79b2:	0d 99       	cmp	r9,	r13	;
    79b4:	ab 23       	jnz	$-168    	;abs 0x790c

000079b6 <.Loc.485.1>:
    79b6:	5f 42 0e 1c 	mov.b	&0x1c0e,r15	;0x1c0e

000079ba <.Loc.485.1>:
    79ba:	4f 9e       	cmp.b	r14,	r15	;
    79bc:	a7 2f       	jc	$-176    	;abs 0x790c
    79be:	0e 4f       	mov	r15,	r14	;
    79c0:	f3 3f       	jmp	$-24     	;abs 0x79a8

000079c2 <.L189>:
    else stop_timer();
    79c2:	b0 12 9e 7b 	call	#31646		;#0x7b9e

000079c6 <.Loc.507.1>:
}
    79c6:	28 17       	popm	#3,	r10	;16-bit words

000079c8 <.LCFI52>:
    79c8:	30 41       	ret			

000079ca <.L199>:
    if (!first)
    79ca:	5e 42 54 1c 	mov.b	&0x1c54,r14	;0x1c54
    79ce:	9e 3f       	jmp	$-194    	;abs 0x790c

000079d0 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    79d0:	1a 15       	pushm	#2,	r10	;16-bit words

000079d2 <.LCFI54>:
    79d2:	17 15       	pushm	#2,	r7	;16-bit words

000079d4 <.LCFI55>:
    79d4:	31 80 0a 00 	sub	#10,	r1	;#0x000a

000079d8 <.LCFI56>:
    79d8:	49 4c       	mov.b	r12,	r9	;
    79da:	0a 4d       	mov	r13,	r10	;

000079dc <.LBB44>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    79dc:	5e 43       	mov.b	#1,	r14	;r3 As==01
    79de:	4d 43       	clr.b	r13		;

000079e0 <.LVL210>:
    79e0:	0c 41       	mov	r1,	r12	;

000079e2 <.LVL211>:
    79e2:	b0 12 40 7f 	call	#32576		;#0x7f40
    79e6:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    79ea:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    79ee:	0e 1c 
    79f0:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    79f4:	10 1c 
    79f6:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    79fa:	12 1c 
    79fc:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    7a00:	14 1c 

00007a02 <.LBE44>:
        if (pdc_timing[i].status == NOT_USED)
    7a02:	06 4a       	mov	r10,	r6	;
    7a04:	07 43       	clr	r7		;

00007a06 <.Loc.401.1>:
    7a06:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    7a0a:	31 20       	jnz	$+100    	;abs 0x7a6e

00007a0c <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    7a0c:	4c 49       	mov.b	r9,	r12	;
    7a0e:	b0 12 3c 6e 	call	#28220		;#0x6e3c
    7a12:	0d 4a       	mov	r10,	r13	;
    7a14:	b0 12 08 6e 	call	#28168		;#0x6e08

00007a18 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    7a18:	4c 49       	mov.b	r9,	r12	;
    7a1a:	b0 12 3c 6e 	call	#28220		;#0x6e3c
    7a1e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7a20:	b0 12 0e 6e 	call	#28174		;#0x6e0e

00007a24 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    7a24:	0e 46       	mov	r6,	r14	;
    7a26:	0f 47       	mov	r7,	r15	;
    7a28:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7a2a:	4c 43       	clr.b	r12		;
    7a2c:	b0 12 a4 7c 	call	#31908		;#0x7ca4

00007a30 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    7a30:	82 46 10 1c 	mov	r6,	&0x1c10	;
    7a34:	82 47 12 1c 	mov	r7,	&0x1c12	;

00007a38 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    7a38:	4e 49       	mov.b	r9,	r14	;
    7a3a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7a3c:	4c 43       	clr.b	r12		;
    7a3e:	b0 12 f8 7c 	call	#31992		;#0x7cf8

00007a42 <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    7a42:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00007a46 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    7a46:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7a48:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7a4a:	4c 43       	clr.b	r12		;
    7a4c:	b0 12 44 7d 	call	#32068		;#0x7d44

00007a50 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    7a50:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

00007a54 <.Loc.411.1>:
        refresh_pdc_timers();
    7a54:	b0 12 a6 78 	call	#30886		;#0x78a6

00007a58 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    7a58:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7a5a:	b0 12 a8 7d 	call	#32168		;#0x7da8

00007a5e <.Loc.434.1>:
    _pers_timer_commit(PDC);
    7a5e:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7a60:	b0 12 fc 7e 	call	#32508		;#0x7efc

00007a64 <.Loc.435.1>:
}
    7a64:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007a68 <.LCFI57>:
    7a68:	16 17       	popm	#2,	r7	;16-bit words

00007a6a <.LCFI58>:
    7a6a:	19 17       	popm	#2,	r10	;16-bit words

00007a6c <.LCFI59>:
    7a6c:	30 41       	ret			

00007a6e <.L213>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    7a6e:	82 46 10 1c 	mov	r6,	&0x1c10	;
    7a72:	82 47 12 1c 	mov	r7,	&0x1c12	;

00007a76 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    7a76:	0e 46       	mov	r6,	r14	;
    7a78:	0f 47       	mov	r7,	r15	;
    7a7a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7a7c:	4c 43       	clr.b	r12		;
    7a7e:	b0 12 a4 7c 	call	#31908		;#0x7ca4

00007a82 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    7a82:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00007a86 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    7a86:	4e 49       	mov.b	r9,	r14	;
    7a88:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7a8a:	4c 43       	clr.b	r12		;
    7a8c:	b0 12 f8 7c 	call	#31992		;#0x7cf8

00007a90 <.Loc.430.1>:
        refresh_pdc_timers();
    7a90:	b0 12 a6 78 	call	#30886		;#0x78a6

00007a94 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    7a94:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7a96:	b0 12 a8 7d 	call	#32168		;#0x7da8

00007a9a <.Loc.434.1>:
    _pers_timer_commit(PDC);
    7a9a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    7a9c:	b0 12 fc 7e 	call	#32508		;#0x7efc

00007aa0 <.Loc.435.1>:
}
    7aa0:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007aa4 <.LCFI61>:
    7aa4:	16 17       	popm	#2,	r7	;16-bit words

00007aa6 <.LCFI62>:
    7aa6:	19 17       	popm	#2,	r10	;16-bit words

00007aa8 <.LCFI63>:
    7aa8:	30 41       	ret			

00007aaa <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    7aaa:	0a 15       	pushm	#1,	r10	;16-bit words

00007aac <.LCFI64>:
    7aac:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00007ab0 <.LCFI65>:
    7ab0:	4a 4c       	mov.b	r12,	r10	;

00007ab2 <.LBB50>:
        pdc_timing[i] = _pers_timer_get(i,PDC);
    7ab2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    7ab4:	4d 43       	clr.b	r13		;
    7ab6:	0c 41       	mov	r1,	r12	;

00007ab8 <.LVL233>:
    7ab8:	b0 12 40 7f 	call	#32576		;#0x7f40
    7abc:	a2 41 0c 1c 	mov	@r1,	&0x1c0c	;
    7ac0:	92 41 02 00 	mov	2(r1),	&0x1c0e	;
    7ac4:	0e 1c 
    7ac6:	92 41 04 00 	mov	4(r1),	&0x1c10	;
    7aca:	10 1c 
    7acc:	92 41 06 00 	mov	6(r1),	&0x1c12	;
    7ad0:	12 1c 
    7ad2:	92 41 08 00 	mov	8(r1),	&0x1c14	;
    7ad6:	14 1c 

00007ad8 <.LBB52>:
void clear_pdc_status(uint8_t thread_id){

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    7ad8:	c2 9a 0e 1c 	cmp.b	r10,	&0x1c0e	;
    7adc:	07 20       	jnz	$+16     	;abs 0x7aec

00007ade <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    7ade:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007ae2 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    7ae2:	4e 43       	clr.b	r14		;
    7ae4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7ae6:	4c 43       	clr.b	r12		;
    7ae8:	b0 12 44 7d 	call	#32068		;#0x7d44

00007aec <.L216>:
    refresh_pdc_timers();
    7aec:	b0 12 a6 78 	call	#30886		;#0x78a6

00007af0 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    7af0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7af2:	b0 12 a8 7d 	call	#32168		;#0x7da8

00007af6 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    7af6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    7af8:	b0 12 fc 7e 	call	#32508		;#0x7efc

00007afc <.Loc.450.1>:
}
    7afc:	31 50 0a 00 	add	#10,	r1	;#0x000a

00007b00 <.LCFI66>:
    7b00:	0a 17       	popm	#1,	r10	;16-bit words

00007b02 <.LCFI67>:
    7b02:	30 41       	ret			

00007b04 <clear_pdc_status>:
        if (pdc_timing[i].thread_id == thread_id){
    7b04:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    7b08:	07 20       	jnz	$+16     	;abs 0x7b18

00007b0a <.Loc.516.1>:
            pdc_timing[i].status = NOT_USED;
    7b0a:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00007b0e <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    7b0e:	4e 43       	clr.b	r14		;
    7b10:	5d 43       	mov.b	#1,	r13	;r3 As==01
    7b12:	4c 43       	clr.b	r12		;

00007b14 <.LVL242>:
    7b14:	b0 12 44 7d 	call	#32068		;#0x7d44

00007b18 <.L217>:

        }
    }
}
    7b18:	30 41       	ret			

00007b1a <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    7b1a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00007b1e <.Loc.83.1>:
    7b1e:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00007b22 <.Loc.83.1>:
    7b22:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00007b26 <.Loc.83.1>:
    7b26:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00007b2a <.Loc.83.1>:
    7b2a:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00007b2e <.Loc.83.1>:
    7b2e:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00007b32 <.Loc.83.1>:
    7b32:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00007b36 <.Loc.83.1>:
    7b36:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00007b3a <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    7b3a:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00007b3e <.Loc.88.1>:
}
    7b3e:	30 41       	ret			

00007b40 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    7b40:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007b44 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    7b44:	0e 4c       	mov	r12,	r14	;
    7b46:	5e 09       	rram	#3,	r14	;

00007b48 <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    7b48:	7e f0 07 00 	and.b	#7,	r14	;

00007b4c <.Loc.99.1>:
    7b4c:	dd de c4 4e 	bis.b	20164(r14),8(r13)	;0x04ec4
    7b50:	08 00 

00007b52 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    7b52:	0d 5e       	add	r14,	r13	;

00007b54 <.LVL12>:
    7b54:	7c f0 07 00 	and.b	#7,	r12	;

00007b58 <.LVL13>:
    7b58:	dd dc c4 4e 	bis.b	20164(r12),0(r13)	;0x04ec4
    7b5c:	00 00 

00007b5e <.Loc.101.1>:
}
    7b5e:	30 41       	ret			

00007b60 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    7b60:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007b64 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    7b64:	0e 4c       	mov	r12,	r14	;
    7b66:	5e 09       	rram	#3,	r14	;

00007b68 <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    7b68:	7e f0 07 00 	and.b	#7,	r14	;
    7b6c:	0f 4d       	mov	r13,	r15	;
    7b6e:	0f 5e       	add	r14,	r15	;

00007b70 <.Loc.112.1>:
    7b70:	7c f0 07 00 	and.b	#7,	r12	;

00007b74 <.LVL16>:
    7b74:	df cc c4 4e 	bic.b	20164(r12),0(r15)	;0x04ec4
    7b78:	00 00 

00007b7a <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    7b7a:	6c 4f       	mov.b	@r15,	r12	;

00007b7c <.Loc.114.1>:
    7b7c:	0c 93       	cmp	#0,	r12	;r3 As==00
    7b7e:	03 20       	jnz	$+8      	;abs 0x7b86

00007b80 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    7b80:	dd ce c4 4e 	bic.b	20164(r14),8(r13)	;0x04ec4
    7b84:	08 00 

00007b86 <.L4>:
    }
}
    7b86:	30 41       	ret			

00007b88 <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    7b88:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00007b8c <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    7b8c:	5d 4d c4 4d 	mov.b	19908(r13),r13	;0x04dc4

00007b90 <.LVL19>:
    7b90:	0c 5d       	add	r13,	r12	;

00007b92 <.LVL20>:
    7b92:	6e 4c       	mov.b	@r12,	r14	;

00007b94 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    7b94:	0c 4d       	mov	r13,	r12	;
    7b96:	5c 0a       	rlam	#3,	r12	;

00007b98 <.Loc.128.1>:
}
    7b98:	5c de c4 4d 	bis.b	19908(r14),r12	;0x04dc4
    7b9c:	30 41       	ret			

00007b9e <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    7b9e:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00007ba2 <.Loc.158.1>:
    TA2CTL = 0;
    7ba2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00007ba6 <.Loc.159.1>:
}
    7ba6:	30 41       	ret			

00007ba8 <timerA2_init>:
    7ba8:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7bac:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7bb0:	30 41       	ret			

00007bb2 <set_timer_wkup>:
    TA2CTL = 0;
}

void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    7bb2:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00007bb6 <.Loc.172.1>:
    TA0CCR0 = ticks;
    7bb6:	82 4c 52 03 	mov	r12,	&0x0352	;

00007bba <.Loc.173.1>:
    TA0CCTL0 = CCIE;
    7bba:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    7bbe:	42 03 

00007bc0 <.Loc.174.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7bc0:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    7bc4:	40 03 

00007bc6 <.Loc.175.1>:
}
    7bc6:	30 41       	ret			

00007bc8 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    7bc8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00007bcc <.Loc.179.1>:
    TA2CCR0 = ticks;
    7bcc:	82 4c 12 04 	mov	r12,	&0x0412	;

00007bd0 <.Loc.180.1>:
    TA2CCTL0 = CCIE;
    7bd0:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    7bd4:	02 04 

00007bd6 <.Loc.181.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    7bd6:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    7bda:	00 04 

00007bdc <.Loc.183.1>:

}
    7bdc:	30 41       	ret			

00007bde <stop_timer_xpr>:
    7bde:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00
    7be2:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00
    7be6:	30 41       	ret			

00007be8 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    7be8:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007bec <.Loc.195.1>:
    TA1CCR0 = ticks;
    7bec:	82 4c 92 03 	mov	r12,	&0x0392	;

00007bf0 <.Loc.196.1>:
    TA1CCTL0 = CCIE;
    7bf0:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    7bf4:	82 03 

00007bf6 <.Loc.197.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7bf6:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    7bfa:	80 03 

00007bfc <.Loc.198.1>:
}
    7bfc:	30 41       	ret			

00007bfe <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    7bfe:	30 41       	ret			

00007c00 <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    7c00:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    7c04:	61 01 

00007c06 <.Loc.246.1>:
  CSCTL2 = SELA__VLOCLK;
    7c06:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    7c0a:	64 01 

00007c0c <.Loc.247.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    7c0c:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

00007c10 <.Loc.248.1>:
  CSCTL0_H = 0;
    7c10:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00007c14 <.Loc.250.1>:

}
    7c14:	30 41       	ret			

00007c16 <__get_rtc_time>:
#endif
    current_time = (uint32_t) buff;

    return current_time;

}
    7c16:	4c 43       	clr.b	r12		;
    7c18:	4d 43       	clr.b	r13		;
    7c1a:	30 41       	ret			

00007c1c <__get_time_init>:
{
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    7c1c:	82 43 10 5b 	mov	#0,	&0x5b10	;r3 As==00
    7c20:	82 43 12 5b 	mov	#0,	&0x5b12	;r3 As==00

00007c24 <.Loc.330.1>:

    //stop TA1 timer
    TA3CTL = 0;
    7c24:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007c28 <.Loc.332.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    7c28:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    7c2c:	40 04 

00007c2e <.Loc.334.1>:

    __bis_SR_register(GIE);
    7c2e:	03 43       	nop			
    7c30:	32 d2       	eint			
    7c32:	03 43       	nop			

00007c34 <.Loc.335.1>:
}
    7c34:	30 41       	ret			

00007c36 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    7c36:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007c3a <.Loc.343.1>:
    TA3CCTL0 = 0;
    7c3a:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00007c3e <.Loc.344.1>:
}
    7c3e:	30 41       	ret			

00007c40 <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    7c40:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7c44:	40 04 

00007c46 <.Loc.356.1>:

   tmp = TA3R;
    7c46:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00007c4a <.Loc.358.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    7c4a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7c4e:	40 04 

00007c50 <.Loc.362.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    7c50:	0d 43       	clr	r13		;

00007c52 <.LVL6>:
    7c52:	0e 4c       	mov	r12,	r14	;
    7c54:	0f 4d       	mov	r13,	r15	;
    7c56:	0e 5e       	rla	r14		;
    7c58:	0f 6f       	rlc	r15		;
    7c5a:	0e 5e       	rla	r14		;
    7c5c:	0f 6f       	rlc	r15		;
    7c5e:	0c 5e       	add	r14,	r12	;

00007c60 <.LVL7>:
    7c60:	0d 6f       	addc	r15,	r13	;
    7c62:	0c 5c       	rla	r12		;
    7c64:	0d 6d       	rlc	r13		;

00007c66 <.Loc.363.1>:
}
    7c66:	1c 52 10 5b 	add	&0x5b10,r12	;0x5b10
    7c6a:	1d 62 12 5b 	addc	&0x5b12,r13	;0x5b12
    7c6e:	30 41       	ret			

00007c70 <TIMER3_A1_ISR>:
void __attribute__ ((interrupt(TIMER3_A1_VECTOR))) TIMER3_A1_ISR (void)
#else
#error Compiler not supported!
#endif
{
        current_ticks += 0xA00AA;
    7c70:	b2 50 aa 00 	add	#170,	&0x5b10	;#0x00aa
    7c74:	10 5b 
    7c76:	b2 60 0a 00 	addc	#10,	&0x5b12	;#0x000a
    7c7a:	12 5b 

00007c7c <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    7c7c:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

00007c80 <.Loc.381.1>:
}
    7c80:	00 13       	reti			

00007c82 <_pers_timer_init>:

void _pers_timer_init(){
    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    7c82:	3c 40 14 5b 	mov	#23316,	r12	;#0x5b14
    7c86:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00007c8a <.Loc.34.1>:
    7c8a:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

00007c8e <.Loc.34.1>:
    7c8e:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

00007c92 <.Loc.34.1>:
    }
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        pers_timer_vars[0].xpr_timing[i].status = NOT_USED;
    7c92:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

00007c96 <.Loc.38.1>:
    7c96:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

00007c9a <.Loc.38.1>:
    7c9a:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

00007c9e <.Loc.38.1>:
    }
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pers_timer_vars[0].pdc_timing[i].status = NOT_USED;
    7c9e:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

00007ca2 <.Loc.42.1>:
    }
}
    7ca2:	30 41       	ret			

00007ca4 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    7ca4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007ca8 <.Loc.50.1>:
    //update the persistent timer dirty buffer
    switch(interface)
    7ca8:	1d 93       	cmp	#1,	r13	;r3 As==01
    7caa:	1b 24       	jz	$+56     	;abs 0x7ce2
    7cac:	2d 93       	cmp	#2,	r13	;r3 As==10
    7cae:	0e 24       	jz	$+30     	;abs 0x7ccc
    7cb0:	0d 93       	cmp	#0,	r13	;r3 As==00
    7cb2:	01 24       	jz	$+4      	;abs 0x7cb6

00007cb4 <.Loc.69.1>:
        default:
            break;
    }


}
    7cb4:	30 41       	ret			

00007cb6 <.L7>:
            pers_timer_vars[1].wkup_timing[idx].data = time_data;
    7cb6:	0d 4c       	mov	r12,	r13	;

00007cb8 <.LVL9>:
    7cb8:	5d 06       	rlam	#2,	r13	;
    7cba:	0c 5d       	add	r13,	r12	;

00007cbc <.LVL10>:
    7cbc:	5c 02       	rlam	#1,	r12	;
    7cbe:	8c 4e 7c 5b 	mov	r14,	23420(r12); 0x5b7c
    7cc2:	8c 4f 7e 5b 	mov	r15,	23422(r12); 0x5b7e

00007cc6 <.Loc.54.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7cc6:	9c 43 80 5b 	mov	#1,	23424(r12);r3 As==01, 0x5b80

00007cca <.Loc.55.1>:
}
    7cca:	30 41       	ret			

00007ccc <.L5>:
            pers_timer_vars[1].xpr_timing[idx].data = time_data;
    7ccc:	0d 4c       	mov	r12,	r13	;

00007cce <.LVL12>:
    7cce:	5d 06       	rlam	#2,	r13	;
    7cd0:	0c 5d       	add	r13,	r12	;
    7cd2:	5c 02       	rlam	#1,	r12	;
    7cd4:	8c 4e 9a 5b 	mov	r14,	23450(r12); 0x5b9a
    7cd8:	8c 4f 9c 5b 	mov	r15,	23452(r12); 0x5b9c

00007cdc <.Loc.58.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7cdc:	9c 43 9e 5b 	mov	#1,	23454(r12);r3 As==01, 0x5b9e

00007ce0 <.Loc.59.1>:
}
    7ce0:	30 41       	ret			

00007ce2 <.L4>:
            pers_timer_vars[1].pdc_timing[idx].data = time_data;
    7ce2:	0d 4c       	mov	r12,	r13	;

00007ce4 <.LVL14>:
    7ce4:	5d 06       	rlam	#2,	r13	;
    7ce6:	0c 5d       	add	r13,	r12	;
    7ce8:	5c 02       	rlam	#1,	r12	;
    7cea:	8c 4e b8 5b 	mov	r14,	23480(r12); 0x5bb8
    7cee:	8c 4f ba 5b 	mov	r15,	23482(r12); 0x5bba

00007cf2 <.Loc.62.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7cf2:	9c 43 bc 5b 	mov	#1,	23484(r12);r3 As==01, 0x5bbc

00007cf6 <.Loc.63.1>:
}
    7cf6:	30 41       	ret			

00007cf8 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    7cf8:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7cfc:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

00007d00 <.Loc.73.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    7d00:	1d 93       	cmp	#1,	r13	;r3 As==01
    7d02:	17 24       	jz	$+48     	;abs 0x7d32
    7d04:	2d 93       	cmp	#2,	r13	;r3 As==10
    7d06:	0c 24       	jz	$+26     	;abs 0x7d20
    7d08:	0d 93       	cmp	#0,	r13	;r3 As==00
    7d0a:	01 24       	jz	$+4      	;abs 0x7d0e

00007d0c <.Loc.91.1>:
            break;
        default:
            break;
    }

}
    7d0c:	30 41       	ret			

00007d0e <.L12>:
            pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    7d0e:	0d 4c       	mov	r12,	r13	;

00007d10 <.LVL16>:
    7d10:	5d 06       	rlam	#2,	r13	;
    7d12:	0c 5d       	add	r13,	r12	;

00007d14 <.LVL17>:
    7d14:	5c 02       	rlam	#1,	r12	;
    7d16:	cc 4e 7a 5b 	mov.b	r14,	23418(r12); 0x5b7a

00007d1a <.Loc.77.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7d1a:	9c 43 80 5b 	mov	#1,	23424(r12);r3 As==01, 0x5b80

00007d1e <.Loc.78.1>:
}
    7d1e:	30 41       	ret			

00007d20 <.L10>:
            pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    7d20:	0d 4c       	mov	r12,	r13	;

00007d22 <.LVL19>:
    7d22:	5d 06       	rlam	#2,	r13	;
    7d24:	0c 5d       	add	r13,	r12	;
    7d26:	5c 02       	rlam	#1,	r12	;
    7d28:	cc 4e 98 5b 	mov.b	r14,	23448(r12); 0x5b98

00007d2c <.Loc.81.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7d2c:	9c 43 9e 5b 	mov	#1,	23454(r12);r3 As==01, 0x5b9e

00007d30 <.Loc.82.1>:
}
    7d30:	30 41       	ret			

00007d32 <.L9>:
            pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    7d32:	0d 4c       	mov	r12,	r13	;

00007d34 <.LVL21>:
    7d34:	5d 06       	rlam	#2,	r13	;
    7d36:	0c 5d       	add	r13,	r12	;
    7d38:	5c 02       	rlam	#1,	r12	;
    7d3a:	cc 4e b6 5b 	mov.b	r14,	23478(r12); 0x5bb6

00007d3e <.Loc.85.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7d3e:	9c 43 bc 5b 	mov	#1,	23484(r12);r3 As==01, 0x5bbc

00007d42 <.Loc.86.1>:
}
    7d42:	30 41       	ret			

00007d44 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    7d44:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007d48 <.Loc.95.1>:
    //update the persistent timer dirty buffer
    switch (interface)
    7d48:	1d 93       	cmp	#1,	r13	;r3 As==01
    7d4a:	17 24       	jz	$+48     	;abs 0x7d7a
    7d4c:	2d 93       	cmp	#2,	r13	;r3 As==10
    7d4e:	0c 24       	jz	$+26     	;abs 0x7d68
    7d50:	0d 93       	cmp	#0,	r13	;r3 As==00
    7d52:	01 24       	jz	$+4      	;abs 0x7d56

00007d54 <.Loc.113.1>:
            break;
        default:
            break;

    }
}
    7d54:	30 41       	ret			

00007d56 <.L17>:
            pers_timer_vars[1].wkup_timing[idx].status = status;
    7d56:	0d 4c       	mov	r12,	r13	;

00007d58 <.LVL23>:
    7d58:	5d 06       	rlam	#2,	r13	;
    7d5a:	0c 5d       	add	r13,	r12	;

00007d5c <.LVL24>:
    7d5c:	5c 02       	rlam	#1,	r12	;
    7d5e:	8c 4e 78 5b 	mov	r14,	23416(r12); 0x5b78

00007d62 <.Loc.99.1>:
            pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7d62:	9c 43 80 5b 	mov	#1,	23424(r12);r3 As==01, 0x5b80

00007d66 <.Loc.100.1>:
}
    7d66:	30 41       	ret			

00007d68 <.L15>:
            pers_timer_vars[1].xpr_timing[idx].status = status;
    7d68:	0d 4c       	mov	r12,	r13	;

00007d6a <.LVL26>:
    7d6a:	5d 06       	rlam	#2,	r13	;
    7d6c:	0c 5d       	add	r13,	r12	;
    7d6e:	5c 02       	rlam	#1,	r12	;
    7d70:	8c 4e 96 5b 	mov	r14,	23446(r12); 0x5b96

00007d74 <.Loc.103.1>:
            pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7d74:	9c 43 9e 5b 	mov	#1,	23454(r12);r3 As==01, 0x5b9e

00007d78 <.Loc.104.1>:
}
    7d78:	30 41       	ret			

00007d7a <.L14>:
            pers_timer_vars[1].pdc_timing[idx].status = status;
    7d7a:	0d 4c       	mov	r12,	r13	;

00007d7c <.LVL28>:
    7d7c:	5d 06       	rlam	#2,	r13	;
    7d7e:	0c 5d       	add	r13,	r12	;
    7d80:	5c 02       	rlam	#1,	r12	;
    7d82:	8c 4e b4 5b 	mov	r14,	23476(r12); 0x5bb4

00007d86 <.Loc.107.1>:
            pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7d86:	9c 43 bc 5b 	mov	#1,	23484(r12);r3 As==01, 0x5bbc

00007d8a <.Loc.108.1>:
}
    7d8a:	30 41       	ret			

00007d8c <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    7d8c:	0e 4c       	mov	r12,	r14	;
    7d8e:	5e 0a       	rlam	#3,	r14	;
    7d90:	ce 4d c0 5b 	mov.b	r13,	23488(r14); 0x5bc0

00007d94 <.Loc.118.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7d94:	9e 43 c4 5b 	mov	#1,	23492(r14);r3 As==01, 0x5bc4

00007d98 <.Loc.119.1>:
}
    7d98:	30 41       	ret			

00007d9a <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
    //update the persistent timer dirty buffer
    pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    7d9a:	0e 4c       	mov	r12,	r14	;
    7d9c:	5e 0a       	rlam	#3,	r14	;
    7d9e:	8e 4d c2 5b 	mov	r13,	23490(r14); 0x5bc2

00007da2 <.Loc.124.1>:
    pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    7da2:	9e 43 c4 5b 	mov	#1,	23492(r14);r3 As==01, 0x5bc4

00007da6 <.Loc.125.1>:
}
    7da6:	30 41       	ret			

00007da8 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    7da8:	1c 93       	cmp	#1,	r12	;r3 As==01
    7daa:	0b 24       	jz	$+24     	;abs 0x7dc2
    7dac:	2c 93       	cmp	#2,	r12	;r3 As==10
    7dae:	06 24       	jz	$+14     	;abs 0x7dbc
    7db0:	0c 93       	cmp	#0,	r12	;r3 As==00
    7db2:	01 24       	jz	$+4      	;abs 0x7db6

00007db4 <.Loc.145.1>:
        default:
            break;

    }

}
    7db4:	30 41       	ret			

00007db6 <.L24>:
            wkup_tstatus = TIMER_COMMIT;
    7db6:	92 43 dc 5b 	mov	#1,	&0x5bdc	;r3 As==01

00007dba <.Loc.133.1>:
}
    7dba:	30 41       	ret			

00007dbc <.L22>:
            xpr_tstatus = TIMER_COMMIT;
    7dbc:	92 43 de 5b 	mov	#1,	&0x5bde	;r3 As==01

00007dc0 <.Loc.136.1>:
}
    7dc0:	30 41       	ret			

00007dc2 <.L21>:
            pdc_tstatus = TIMER_COMMIT;
    7dc2:	92 43 e0 5b 	mov	#1,	&0x5be0	;r3 As==01

00007dc6 <.Loc.139.1>:
}
    7dc6:	30 41       	ret			

00007dc8 <_commit_timer_buffers>:

void _commit_timer_buffers(ink_time_interface_t interface){

    uint8_t i;

    switch (interface){
    7dc8:	3d 40 14 5b 	mov	#23316,	r13	;#0x5b14
    7dcc:	1c 93       	cmp	#1,	r12	;r3 As==01
    7dce:	18 24       	jz	$+50     	;abs 0x7e00
    7dd0:	2c 93       	cmp	#2,	r12	;r3 As==10
    7dd2:	40 24       	jz	$+130    	;abs 0x7e54
    7dd4:	0c 93       	cmp	#0,	r12	;r3 As==00
    7dd6:	26 24       	jz	$+78     	;abs 0x7e24

00007dd8 <.L28>:
    7dd8:	0e 4c       	mov	r12,	r14	;
    7dda:	5e 0a       	rlam	#3,	r14	;
    7ddc:	9e 93 c4 5b 	cmp	#1,	23492(r14);r3 As==01, 0x5bc4
    7de0:	01 24       	jz	$+4      	;abs 0x7de4

00007de2 <.Loc.201.1>:
                pers_timer_vars[1].next_info[interface];
            pers_timer_vars[0].next_info[interface].__dirty =
                NOT_DIRTY;
        }
    }
}
    7de2:	30 41       	ret			

00007de4 <.L40>:
            pers_timer_vars[0].next_info[interface] =
    7de4:	0c 4e       	mov	r14,	r12	;

00007de6 <.LVL33>:
    7de6:	0c 5d       	add	r13,	r12	;
    7de8:	9c 4c aa 00 	mov	170(r12),70(r12)	;0x000aa, 0x0046
    7dec:	46 00 
    7dee:	9c 4c ac 00 	mov	172(r12),72(r12)	;0x000ac, 0x0048
    7df2:	48 00 
    7df4:	9c 4c ae 00 	mov	174(r12),74(r12)	;0x000ae, 0x004a
    7df8:	4a 00 

00007dfa <.Loc.197.1>:
            pers_timer_vars[0].next_info[interface].__dirty =
    7dfa:	8c 43 4c 00 	mov	#0,	76(r12)	;r3 As==00, 0x004c

00007dfe <.Loc.191.1>:
}
    7dfe:	30 41       	ret			

00007e00 <.L26>:
            if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    7e00:	92 93 bc 5b 	cmp	#1,	&0x5bbc	;r3 As==01
    7e04:	e9 23       	jnz	$-44     	;abs 0x7dd8

00007e06 <.Loc.182.1>:
                pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    7e06:	92 42 b4 5b 	mov	&0x5bb4,&0x5b50	;0x5bb4
    7e0a:	50 5b 
    7e0c:	92 42 b6 5b 	mov	&0x5bb6,&0x5b52	;0x5bb6
    7e10:	52 5b 
    7e12:	92 42 b8 5b 	mov	&0x5bb8,&0x5b54	;0x5bb8
    7e16:	54 5b 
    7e18:	92 42 ba 5b 	mov	&0x5bba,&0x5b56	;0x5bba
    7e1c:	56 5b 

00007e1e <.Loc.183.1>:
                pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    7e1e:	82 43 58 5b 	mov	#0,	&0x5b58	;r3 As==00

00007e22 <.Loc.177.1>:
        for (i = 0; i < MAX_PDC_THREADS; i++)
    7e22:	da 3f       	jmp	$-74     	;abs 0x7dd8

00007e24 <.L39>:
            if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    7e24:	92 93 80 5b 	cmp	#1,	&0x5b80	;r3 As==01
    7e28:	5a 24       	jz	$+182    	;abs 0x7ede

00007e2a <.L29>:
    7e2a:	92 93 8a 5b 	cmp	#1,	&0x5b8a	;r3 As==01
    7e2e:	48 24       	jz	$+146    	;abs 0x7ec0

00007e30 <.L30>:
    7e30:	92 93 94 5b 	cmp	#1,	&0x5b94	;r3 As==01
    7e34:	d1 23       	jnz	$-92     	;abs 0x7dd8

00007e36 <.Loc.160.1>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7e36:	92 42 8c 5b 	mov	&0x5b8c,&0x5b28	;0x5b8c
    7e3a:	28 5b 
    7e3c:	92 42 8e 5b 	mov	&0x5b8e,&0x5b2a	;0x5b8e
    7e40:	2a 5b 
    7e42:	92 42 90 5b 	mov	&0x5b90,&0x5b2c	;0x5b90
    7e46:	2c 5b 
    7e48:	92 42 92 5b 	mov	&0x5b92,&0x5b2e	;0x5b92
    7e4c:	2e 5b 

00007e4e <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7e4e:	82 43 30 5b 	mov	#0,	&0x5b30	;r3 As==00

00007e52 <.Loc.155.1>:
        for (i = 0; i < MAX_WKUP_THREADS; i++)
    7e52:	c2 3f       	jmp	$-122    	;abs 0x7dd8

00007e54 <.L27>:
            if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    7e54:	92 93 9e 5b 	cmp	#1,	&0x5b9e	;r3 As==01
    7e58:	24 24       	jz	$+74     	;abs 0x7ea2

00007e5a <.L32>:
    7e5a:	92 93 a8 5b 	cmp	#1,	&0x5ba8	;r3 As==01
    7e5e:	12 24       	jz	$+38     	;abs 0x7e84

00007e60 <.L33>:
    7e60:	92 93 b2 5b 	cmp	#1,	&0x5bb2	;r3 As==01
    7e64:	b9 23       	jnz	$-140    	;abs 0x7dd8

00007e66 <.Loc.171.1>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7e66:	92 42 aa 5b 	mov	&0x5baa,&0x5b46	;0x5baa
    7e6a:	46 5b 
    7e6c:	92 42 ac 5b 	mov	&0x5bac,&0x5b48	;0x5bac
    7e70:	48 5b 
    7e72:	92 42 ae 5b 	mov	&0x5bae,&0x5b4a	;0x5bae
    7e76:	4a 5b 
    7e78:	92 42 b0 5b 	mov	&0x5bb0,&0x5b4c	;0x5bb0
    7e7c:	4c 5b 

00007e7e <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7e7e:	82 43 4e 5b 	mov	#0,	&0x5b4e	;r3 As==00

00007e82 <.Loc.166.1>:
        for (i = 0; i < MAX_XPR_THREADS; i++)
    7e82:	aa 3f       	jmp	$-170    	;abs 0x7dd8

00007e84 <.L44>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7e84:	92 42 a0 5b 	mov	&0x5ba0,&0x5b3c	;0x5ba0
    7e88:	3c 5b 
    7e8a:	92 42 a2 5b 	mov	&0x5ba2,&0x5b3e	;0x5ba2
    7e8e:	3e 5b 
    7e90:	92 42 a4 5b 	mov	&0x5ba4,&0x5b40	;0x5ba4
    7e94:	40 5b 
    7e96:	92 42 a6 5b 	mov	&0x5ba6,&0x5b42	;0x5ba6
    7e9a:	42 5b 

00007e9c <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7e9c:	82 43 44 5b 	mov	#0,	&0x5b44	;r3 As==00
    7ea0:	df 3f       	jmp	$-64     	;abs 0x7e60

00007ea2 <.L43>:
                pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7ea2:	92 42 96 5b 	mov	&0x5b96,&0x5b32	;0x5b96
    7ea6:	32 5b 
    7ea8:	92 42 98 5b 	mov	&0x5b98,&0x5b34	;0x5b98
    7eac:	34 5b 
    7eae:	92 42 9a 5b 	mov	&0x5b9a,&0x5b36	;0x5b9a
    7eb2:	36 5b 
    7eb4:	92 42 9c 5b 	mov	&0x5b9c,&0x5b38	;0x5b9c
    7eb8:	38 5b 

00007eba <.Loc.172.1>:
                pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7eba:	82 43 3a 5b 	mov	#0,	&0x5b3a	;r3 As==00
    7ebe:	cd 3f       	jmp	$-100    	;abs 0x7e5a

00007ec0 <.L42>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7ec0:	92 42 82 5b 	mov	&0x5b82,&0x5b1e	;0x5b82
    7ec4:	1e 5b 
    7ec6:	92 42 84 5b 	mov	&0x5b84,&0x5b20	;0x5b84
    7eca:	20 5b 
    7ecc:	92 42 86 5b 	mov	&0x5b86,&0x5b22	;0x5b86
    7ed0:	22 5b 
    7ed2:	92 42 88 5b 	mov	&0x5b88,&0x5b24	;0x5b88
    7ed6:	24 5b 

00007ed8 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7ed8:	82 43 26 5b 	mov	#0,	&0x5b26	;r3 As==00
    7edc:	a9 3f       	jmp	$-172    	;abs 0x7e30

00007ede <.L41>:
                pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    7ede:	92 42 78 5b 	mov	&0x5b78,&0x5b14	;0x5b78
    7ee2:	14 5b 
    7ee4:	92 42 7a 5b 	mov	&0x5b7a,&0x5b16	;0x5b7a
    7ee8:	16 5b 
    7eea:	92 42 7c 5b 	mov	&0x5b7c,&0x5b18	;0x5b7c
    7eee:	18 5b 
    7ef0:	92 42 7e 5b 	mov	&0x5b7e,&0x5b1a	;0x5b7e
    7ef4:	1a 5b 

00007ef6 <.Loc.161.1>:
                pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    7ef6:	82 43 1c 5b 	mov	#0,	&0x5b1c	;r3 As==00
    7efa:	97 3f       	jmp	$-208    	;abs 0x7e2a

00007efc <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    7efc:	1c 93       	cmp	#1,	r12	;r3 As==01
    7efe:	17 24       	jz	$+48     	;abs 0x7f2e
    7f00:	2c 93       	cmp	#2,	r12	;r3 As==10
    7f02:	0c 24       	jz	$+26     	;abs 0x7f1c
    7f04:	0c 93       	cmp	#0,	r12	;r3 As==00
    7f06:	01 24       	jz	$+4      	;abs 0x7f0a

00007f08 <.L45>:
            break;
        default:
            break;

    }
}
    7f08:	30 41       	ret			

00007f0a <.L49>:
            if (wkup_tstatus == TIMER_COMMIT)
    7f0a:	1d 42 dc 5b 	mov	&0x5bdc,r13	;0x5bdc

00007f0e <.Loc.207.1>:
    7f0e:	1d 93       	cmp	#1,	r13	;r3 As==01
    7f10:	fb 23       	jnz	$-8      	;abs 0x7f08

00007f12 <.Loc.209.1>:
                _commit_timer_buffers(interface);
    7f12:	b0 12 c8 7d 	call	#32200		;#0x7dc8

00007f16 <.LVL49>:
                wkup_tstatus = TIMER_DONE;
    7f16:	a2 43 dc 5b 	mov	#2,	&0x5bdc	;r3 As==10

00007f1a <.Loc.230.1>:
}
    7f1a:	30 41       	ret			

00007f1c <.L47>:
            if (xpr_tstatus == TIMER_COMMIT)
    7f1c:	1d 42 de 5b 	mov	&0x5bde,r13	;0x5bde

00007f20 <.Loc.214.1>:
    7f20:	1d 93       	cmp	#1,	r13	;r3 As==01
    7f22:	f2 23       	jnz	$-26     	;abs 0x7f08

00007f24 <.Loc.216.1>:
                _commit_timer_buffers(interface);
    7f24:	b0 12 c8 7d 	call	#32200		;#0x7dc8

00007f28 <.LVL51>:
                xpr_tstatus = TIMER_DONE;
    7f28:	a2 43 de 5b 	mov	#2,	&0x5bde	;r3 As==10

00007f2c <.Loc.230.1>:
}
    7f2c:	30 41       	ret			

00007f2e <.L46>:
            if (pdc_tstatus == TIMER_COMMIT)
    7f2e:	1d 42 e0 5b 	mov	&0x5be0,r13	;0x5be0

00007f32 <.Loc.220.1>:
    7f32:	1d 93       	cmp	#1,	r13	;r3 As==01
    7f34:	e9 23       	jnz	$-44     	;abs 0x7f08

00007f36 <.Loc.222.1>:
                _commit_timer_buffers(interface);
    7f36:	b0 12 c8 7d 	call	#32200		;#0x7dc8

00007f3a <.LVL53>:
                pdc_tstatus = TIMER_DONE;
    7f3a:	a2 43 e0 5b 	mov	#2,	&0x5be0	;r3 As==10

00007f3e <.Loc.230.1>:
}
    7f3e:	30 41       	ret			

00007f40 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    7f40:	3d f0 ff 00 	and	#255,	r13	;#0x00ff

00007f44 <.Loc.233.1>:
    switch (interface)
    7f44:	1e 93       	cmp	#1,	r14	;r3 As==01
    7f46:	17 24       	jz	$+48     	;abs 0x7f76
    7f48:	2e 93       	cmp	#2,	r14	;r3 As==10
    7f4a:	2a 24       	jz	$+86     	;abs 0x7fa0

00007f4c <.Loc.242.1>:
        case XPR:
            return pers_timer_vars[0].xpr_timing[idx];
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx];
        default:
            return pers_timer_vars[0].wkup_timing[idx];
    7f4c:	0e 4d       	mov	r13,	r14	;

00007f4e <.LVL55>:
    7f4e:	5e 06       	rlam	#2,	r14	;
    7f50:	0d 5e       	add	r14,	r13	;

00007f52 <.LVL56>:
    7f52:	5d 02       	rlam	#1,	r13	;
    7f54:	3d 50 14 5b 	add	#23316,	r13	;#0x5b14
    7f58:	0e 4d       	mov	r13,	r14	;
    7f5a:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7f5e:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7f62:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7f66:	04 00 
    7f68:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7f6c:	06 00 
    7f6e:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7f72:	08 00 

00007f74 <.Loc.245.1>:
    }

}
    7f74:	30 41       	ret			

00007f76 <.L51>:
            return pers_timer_vars[0].pdc_timing[idx];
    7f76:	0e 4d       	mov	r13,	r14	;

00007f78 <.LVL58>:
    7f78:	5e 06       	rlam	#2,	r14	;
    7f7a:	0d 5e       	add	r14,	r13	;
    7f7c:	5d 02       	rlam	#1,	r13	;
    7f7e:	3d 50 50 5b 	add	#23376,	r13	;#0x5b50

00007f82 <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    7f82:	0e 4d       	mov	r13,	r14	;
    7f84:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7f88:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7f8c:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7f90:	04 00 
    7f92:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7f96:	06 00 
    7f98:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7f9c:	08 00 

00007f9e <.Loc.245.1>:
}
    7f9e:	30 41       	ret			

00007fa0 <.L55>:
            return pers_timer_vars[0].xpr_timing[idx];
    7fa0:	0e 4d       	mov	r13,	r14	;

00007fa2 <.LVL60>:
    7fa2:	5e 06       	rlam	#2,	r14	;
    7fa4:	0d 5e       	add	r14,	r13	;
    7fa6:	5d 02       	rlam	#1,	r13	;
    7fa8:	3d 50 32 5b 	add	#23346,	r13	;#0x5b32

00007fac <.Loc.242.1>:
            return pers_timer_vars[0].wkup_timing[idx];
    7fac:	0e 4d       	mov	r13,	r14	;
    7fae:	bc 4e 00 00 	mov	@r14+,	0(r12)	;
    7fb2:	bc 4e 02 00 	mov	@r14+,	2(r12)	;
    7fb6:	9c 4d 04 00 	mov	4(r13),	4(r12)	;
    7fba:	04 00 
    7fbc:	9c 4d 06 00 	mov	6(r13),	6(r12)	;
    7fc0:	06 00 
    7fc2:	9c 4e 04 00 	mov	4(r14),	8(r12)	;
    7fc6:	08 00 

00007fc8 <.Loc.245.1>:
}
    7fc8:	30 41       	ret			

00007fca <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    7fca:	4e 4c       	mov.b	r12,	r14	;

00007fcc <.Loc.249.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    7fcc:	1d 93       	cmp	#1,	r13	;r3 As==01
    7fce:	14 24       	jz	$+42     	;abs 0x7ff8
    7fd0:	2d 93       	cmp	#2,	r13	;r3 As==10
    7fd2:	0b 24       	jz	$+24     	;abs 0x7fea
    7fd4:	4c 43       	clr.b	r12		;

00007fd6 <.LVL62>:
    7fd6:	0d 93       	cmp	#0,	r13	;r3 As==00
    7fd8:	01 24       	jz	$+4      	;abs 0x7fdc

00007fda <.Loc.262.1>:
        default:
            return 0;

    }

}
    7fda:	30 41       	ret			

00007fdc <.L61>:
            return pers_timer_vars[0].wkup_timing[idx].data ;
    7fdc:	0c 4e       	mov	r14,	r12	;
    7fde:	5c 06       	rlam	#2,	r12	;
    7fe0:	0c 5e       	add	r14,	r12	;
    7fe2:	5c 02       	rlam	#1,	r12	;
    7fe4:	1c 4c 18 5b 	mov	23320(r12),r12	;0x05b18

00007fe8 <.Loc.262.1>:
}
    7fe8:	30 41       	ret			

00007fea <.L58>:
            return pers_timer_vars[0].xpr_timing[idx].data ;
    7fea:	0c 4e       	mov	r14,	r12	;

00007fec <.LVL64>:
    7fec:	5c 06       	rlam	#2,	r12	;
    7fee:	0c 5e       	add	r14,	r12	;
    7ff0:	5c 02       	rlam	#1,	r12	;
    7ff2:	1c 4c 36 5b 	mov	23350(r12),r12	;0x05b36

00007ff6 <.Loc.262.1>:
}
    7ff6:	30 41       	ret			

00007ff8 <.L57>:
            return pers_timer_vars[0].pdc_timing[idx].data ;
    7ff8:	0c 4e       	mov	r14,	r12	;

00007ffa <.LVL66>:
    7ffa:	5c 06       	rlam	#2,	r12	;
    7ffc:	0c 5e       	add	r14,	r12	;
    7ffe:	5c 02       	rlam	#1,	r12	;
    8000:	1c 4c 54 5b 	mov	23380(r12),r12	;0x05b54

00008004 <.Loc.262.1>:
}
    8004:	30 41       	ret			

00008006 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    8006:	4e 4c       	mov.b	r12,	r14	;

00008008 <.Loc.266.1>:
    //get the persistent timer from persistent buffer
    switch (interface)
    8008:	1d 93       	cmp	#1,	r13	;r3 As==01
    800a:	14 24       	jz	$+42     	;abs 0x8034
    800c:	2d 93       	cmp	#2,	r13	;r3 As==10
    800e:	0b 24       	jz	$+24     	;abs 0x8026
    8010:	4c 43       	clr.b	r12		;

00008012 <.LVL68>:
    8012:	0d 93       	cmp	#0,	r13	;r3 As==00
    8014:	01 24       	jz	$+4      	;abs 0x8018

00008016 <.Loc.279.1>:
        default:
            return    0;
    }


}
    8016:	30 41       	ret			

00008018 <.L67>:
            return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    8018:	0c 4e       	mov	r14,	r12	;
    801a:	5c 06       	rlam	#2,	r12	;
    801c:	0c 5e       	add	r14,	r12	;
    801e:	5c 02       	rlam	#1,	r12	;
    8020:	5c 4c 16 5b 	mov.b	23318(r12),r12	;0x05b16

00008024 <.Loc.279.1>:
}
    8024:	30 41       	ret			

00008026 <.L64>:
            return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    8026:	0c 4e       	mov	r14,	r12	;

00008028 <.LVL70>:
    8028:	5c 06       	rlam	#2,	r12	;
    802a:	0c 5e       	add	r14,	r12	;
    802c:	5c 02       	rlam	#1,	r12	;
    802e:	5c 4c 34 5b 	mov.b	23348(r12),r12	;0x05b34

00008032 <.Loc.279.1>:
}
    8032:	30 41       	ret			

00008034 <.L63>:
            return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    8034:	0c 4e       	mov	r14,	r12	;

00008036 <.LVL72>:
    8036:	5c 06       	rlam	#2,	r12	;
    8038:	0c 5e       	add	r14,	r12	;
    803a:	5c 02       	rlam	#1,	r12	;
    803c:	5c 4c 52 5b 	mov.b	23378(r12),r12	;0x05b52

00008040 <.Loc.279.1>:
}
    8040:	30 41       	ret			

00008042 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    8042:	4e 4c       	mov.b	r12,	r14	;

00008044 <.Loc.283.1>:
    //get the persistent timer from persistent buffer
switch (interface)
    8044:	1d 93       	cmp	#1,	r13	;r3 As==01
    8046:	14 24       	jz	$+42     	;abs 0x8070
    8048:	2d 93       	cmp	#2,	r13	;r3 As==10
    804a:	0b 24       	jz	$+24     	;abs 0x8062
    804c:	5c 43       	mov.b	#1,	r12	;r3 As==01

0000804e <.LVL74>:
    804e:	0d 93       	cmp	#0,	r13	;r3 As==00
    8050:	01 24       	jz	$+4      	;abs 0x8054

00008052 <.Loc.294.1>:
        case PDC:
            return pers_timer_vars[0].pdc_timing[idx].status ;
        default:
            return USED;
    }
}
    8052:	30 41       	ret			

00008054 <.L73>:
            return pers_timer_vars[0].wkup_timing[idx].status ;
    8054:	0c 4e       	mov	r14,	r12	;
    8056:	5c 06       	rlam	#2,	r12	;
    8058:	0c 5e       	add	r14,	r12	;
    805a:	5c 02       	rlam	#1,	r12	;
    805c:	1c 4c 14 5b 	mov	23316(r12),r12	;0x05b14

00008060 <.Loc.294.1>:
}
    8060:	30 41       	ret			

00008062 <.L70>:
            return pers_timer_vars[0].xpr_timing[idx].status ;
    8062:	0c 4e       	mov	r14,	r12	;

00008064 <.LVL76>:
    8064:	5c 06       	rlam	#2,	r12	;
    8066:	0c 5e       	add	r14,	r12	;
    8068:	5c 02       	rlam	#1,	r12	;
    806a:	1c 4c 32 5b 	mov	23346(r12),r12	;0x05b32

0000806e <.Loc.294.1>:
}
    806e:	30 41       	ret			

00008070 <.L69>:
            return pers_timer_vars[0].pdc_timing[idx].status ;
    8070:	0c 4e       	mov	r14,	r12	;

00008072 <.LVL78>:
    8072:	5c 06       	rlam	#2,	r12	;
    8074:	0c 5e       	add	r14,	r12	;
    8076:	5c 02       	rlam	#1,	r12	;
    8078:	1c 4c 50 5b 	mov	23376(r12),r12	;0x05b50

0000807c <.Loc.294.1>:
}
    807c:	30 41       	ret			

0000807e <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    807e:	5c 0a       	rlam	#3,	r12	;

00008080 <.LVL80>:
}
    8080:	5c 4c 5c 5b 	mov.b	23388(r12),r12	;0x05b5c
    8084:	30 41       	ret			

00008086 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
    //get the persistent timer from persistent buffer
    return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    8086:	5c 0a       	rlam	#3,	r12	;

00008088 <.LVL82>:
}
    8088:	1c 4c 5e 5b 	mov	23390(r12),r12	;0x05b5e
    808c:	30 41       	ret			

0000808e <__mulhi2>:
    808e:	02 12       	push	r2		;
    8090:	32 c2       	dint			
    8092:	03 43       	nop			
    8094:	82 4c c0 04 	mov	r12,	&0x04c0	;
    8098:	82 4d c8 04 	mov	r13,	&0x04c8	;

0000809c <L0^A>:
    809c:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    80a0:	00 13       	reti			

000080a2 <_exit>:
    80a2:	ff 3f       	jmp	$+0      	;abs 0x80a2

000080a4 <memset>:
    80a4:	0e 5c       	add	r12,	r14	;

000080a6 <L0^A>:
    80a6:	0f 4c       	mov	r12,	r15	;

000080a8 <.L2>:
    80a8:	0f 9e       	cmp	r14,	r15	;
    80aa:	01 20       	jnz	$+4      	;abs 0x80ae

000080ac <.Loc.104.1>:
    80ac:	30 41       	ret			

000080ae <.L3>:
    80ae:	1f 53       	inc	r15		;

000080b0 <.LVL4>:
    80b0:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    80b4:	f9 3f       	jmp	$-12     	;abs 0x80a8
