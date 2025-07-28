
bin/dijkstra_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

00006152 <__crt0_start>:
    6152:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00006156 <__crt0_init_bss>:
    6156:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

0000615a <.Loc.76.1>:
    615a:	0d 43       	clr	r13		;

0000615c <.Loc.77.1>:
    615c:	3e 40 62 00 	mov	#98,	r14	;#0x0062

00006160 <.Loc.81.1>:
    6160:	b0 12 10 74 	call	#29712		;#0x7410

00006164 <__crt0_call_main>:
    6164:	0c 43       	clr	r12		;

00006166 <.Loc.254.1>:
    6166:	b0 12 4c 6c 	call	#27724		;#0x6c4c

0000616a <__crt0_call_exit>:
    616a:	b0 12 0e 74 	call	#29710		;#0x740e

0000616e <__app_init>:
extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init()
{
    thread1_init();
    616e:	b0 12 d6 62 	call	#25302		;#0x62d6

00006172 <.Loc.32.1>:
}
    6172:	30 41       	ret			

00006174 <task_init>:
}

ENTRY_TASK(task_init)
{
#if RAISE_PIN
    full_run_started = 1;
    6174:	d2 43 61 54 	mov.b	#1,	&0x5461	;r3 As==01

00006178 <.Loc.79.1>:
#endif

    __SET(deq_idx, 0);
    6178:	8c 43 58 02 	mov	#0,	600(r12);r3 As==00, 0x0258

0000617c <.Loc.80.1>:
    __SET(enq_idx, 0);

    // Enqueue.
    __SET(queue[0].node, __GET(src_node));
    617c:	9c 4c 5e 02 	mov	606(r12),0(r12)	;0x0025e
    6180:	00 00 

00006182 <.Loc.84.1>:
    __SET(queue[0].dist, 0);
    6182:	8c 43 02 00 	mov	#0,	2(r12)	;r3 As==00

00006186 <.Loc.85.1>:
    __SET(queue[0].prev, UNDEFINED);
    6186:	bc 43 04 00 	mov	#-1,	4(r12)	;r3 As==11

0000618a <.Loc.86.1>:
    __SET(enq_idx, ++__GET(enq_idx));
    618a:	9c 43 5a 02 	mov	#1,	602(r12);r3 As==01, 0x025a

0000618e <.Loc.89.1>:
    // LOG("E: %u, D: %u\n", __GET(enq_idx), __GET(deq_idx));

    return task_init_list;
}
    618e:	3c 40 94 61 	mov	#24980,	r12	;#0x6194

00006192 <.LVL1>:
    6192:	30 41       	ret			

00006194 <task_init_list>:

TASK(task_init_list)
{
    uint16_t i, sn;

    for (i = 0; i < N_NODES; i++)
    6194:	0d 4c       	mov	r12,	r13	;
    6196:	3d 50 66 02 	add	#614,	r13	;#0x0266
    619a:	0e 4c       	mov	r12,	r14	;
    619c:	3e 50 ca 02 	add	#714,	r14	;#0x02ca

000061a0 <.L3>:
    {
        __SET(node_list[i].dist, INFINITY);
    61a0:	bd 43 00 00 	mov	#-1,	0(r13)	;r3 As==11

000061a4 <.Loc.99.1>:
        __SET(node_list[i].prev, UNDEFINED);
    61a4:	bd 43 02 00 	mov	#-1,	2(r13)	;r3 As==11

000061a8 <.Loc.96.1>:
    for (i = 0; i < N_NODES; i++)
    61a8:	2d 52       	add	#4,	r13	;r2 As==10

000061aa <.Loc.96.1>:
    61aa:	0d 9e       	cmp	r14,	r13	;
    61ac:	f9 23       	jnz	$-12     	;abs 0x61a0

000061ae <.Loc.102.1>:
    }

    sn = __GET(src_node);
    61ae:	1d 4c 5e 02 	mov	606(r12),r13	;0x0025e

000061b2 <.Loc.103.1>:
    __SET(node_list[sn].dist, 0);
    61b2:	0e 4d       	mov	r13,	r14	;
    61b4:	5e 06       	rlam	#2,	r14	;
    61b6:	0e 5c       	add	r12,	r14	;
    61b8:	8e 43 66 02 	mov	#0,	614(r14);r3 As==00, 0x0266

000061bc <.Loc.104.1>:
    __SET(node_list[sn].prev, UNDEFINED);
    61bc:	0e 4d       	mov	r13,	r14	;
    61be:	3e 50 9a 00 	add	#154,	r14	;#0x009a
    61c2:	5e 06       	rlam	#2,	r14	;
    61c4:	0e 5c       	add	r12,	r14	;
    61c6:	be 43 00 00 	mov	#-1,	0(r14)	;r3 As==11

000061ca <.Loc.106.1>:

    sn++;
    61ca:	1d 53       	inc	r13		;

000061cc <.Loc.108.1>:
    // Test nodes 0, 1, 2, 3.
    if (sn < 4)
    61cc:	7e 40 03 00 	mov.b	#3,	r14	;
    61d0:	0e 9d       	cmp	r13,	r14	;
    61d2:	05 28       	jnc	$+12     	;abs 0x61de

000061d4 <.Loc.110.1>:
    {
        __SET(src_node, sn);
    61d4:	8c 4d 5e 02 	mov	r13,	606(r12); 0x025e

000061d8 <.L5>:
    {
        __SET(src_node, 0);
    }

    return task_select_nearest_node;
}
    61d8:	3c 40 e4 61 	mov	#25060,	r12	;#0x61e4

000061dc <.LVL7>:
    61dc:	30 41       	ret			

000061de <.L4>:
        __SET(src_node, 0);
    61de:	8c 43 5e 02 	mov	#0,	606(r12);r3 As==00, 0x025e
    61e2:	fa 3f       	jmp	$-10     	;abs 0x61d8

000061e4 <task_select_nearest_node>:

TASK(task_select_nearest_node)
{
    61e4:	0d 4c       	mov	r12,	r13	;

000061e6 <.Loc.122.1>:
    uint16_t i = __GET(deq_idx);
    61e6:	1e 4c 58 02 	mov	600(r12),r14	;0x00258

000061ea <.Loc.124.1>:
        __SET(node_idx, 0);
        return task_find_shorter_path;
    }
    else
    {
        return task_done;
    61ea:	3c 40 ba 62 	mov	#25274,	r12	;#0x62ba

000061ee <.LVL11>:
    if (__GET(enq_idx) != i)
    61ee:	8d 9e 5a 02 	cmp	r14,	602(r13); 0x025a
    61f2:	18 24       	jz	$+50     	;abs 0x6224

000061f4 <.Loc.127.1>:
        __SET(nearest_node.node, __GET(queue[i].node));
    61f4:	0c 4e       	mov	r14,	r12	;
    61f6:	5c 02       	rlam	#1,	r12	;
    61f8:	0c 5e       	add	r14,	r12	;
    61fa:	5c 02       	rlam	#1,	r12	;
    61fc:	0c 5d       	add	r13,	r12	;
    61fe:	ad 4c 60 02 	mov	@r12,	608(r13); 0x0260

00006202 <.Loc.128.1>:
        __SET(nearest_node.dist, __GET(queue[i].dist));
    6202:	9d 4c 02 00 	mov	2(r12),	610(r13); 0x0262
    6206:	62 02 

00006208 <.Loc.129.1>:
        __SET(nearest_node.prev, __GET(queue[i].prev));
    6208:	9d 4c 04 00 	mov	4(r12),	612(r13); 0x0264
    620c:	64 02 

0000620e <.Loc.130.1>:
        i++;
    620e:	1e 53       	inc	r14		;

00006210 <.Loc.131.1>:
        if (i < Q_SIZE)
    6210:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    6214:	0c 9e       	cmp	r14,	r12	;
    6216:	07 28       	jnc	$+16     	;abs 0x6226

00006218 <.Loc.133.1>:
            __SET(deq_idx, i);
    6218:	8d 4e 58 02 	mov	r14,	600(r13); 0x0258

0000621c <.L10>:
        __SET(node_idx, 0);
    621c:	8d 43 5c 02 	mov	#0,	604(r13);r3 As==00, 0x025c

00006220 <.Loc.142.1>:
        return task_find_shorter_path;
    6220:	3c 40 2c 62 	mov	#25132,	r12	;#0x622c

00006224 <.L7>:
    }
}
    6224:	30 41       	ret			

00006226 <.L9>:
            __SET(deq_idx, 0);
    6226:	8d 43 58 02 	mov	#0,	600(r13);r3 As==00, 0x0258
    622a:	f8 3f       	jmp	$-14     	;abs 0x621c

0000622c <task_find_shorter_path>:

TASK(task_find_shorter_path)
{
    622c:	4a 15       	pushm	#5,	r10	;16-bit words

0000622e <.LCFI0>:
    622e:	0a 4c       	mov	r12,	r10	;

00006230 <.Loc.152.1>:
    uint16_t cost, node, dist, nearest_dist, i;

    node = __GET(nearest_node.node);
    6230:	18 4c 60 02 	mov	608(r12),r8	;0x00260

00006234 <.Loc.155.1>:
    i    = __GET(node_idx);
    6234:	19 4c 5c 02 	mov	604(r12),r9	;0x0025c

00006238 <.LVL15>:
    cost = adj_matrix[node][i];

    if (cost != INFINITY)
    {
        nearest_dist = __GET(nearest_node.dist);
        dist         = __GET(node_list[i].dist);
    6238:	07 49       	mov	r9,	r7	;
    623a:	57 06       	rlam	#2,	r7	;
    623c:	0c 57       	add	r7,	r12	;

0000623e <.LVL16>:
    623e:	16 4c 66 02 	mov	614(r12),r6	;0x00266

00006242 <.Loc.156.1>:
    cost = adj_matrix[node][i];
    6242:	0c 48       	mov	r8,	r12	;
    6244:	7d 40 32 00 	mov.b	#50,	r13	;#0x0032
    6248:	b0 12 d0 73 	call	#29648		;#0x73d0

0000624c <.LVL18>:
    624c:	0c 59       	add	r9,	r12	;
    624e:	5e 4c 00 44 	mov.b	17408(r12),r14	;0x04400
    6252:	1e 5a 62 02 	add	610(r10),r14	;0x00262

00006256 <.Loc.162.1>:
        if (dist == INFINITY || dist > (cost + nearest_dist))
    6256:	36 93       	cmp	#-1,	r6	;r3 As==11
    6258:	02 24       	jz	$+6      	;abs 0x625e

0000625a <.Loc.162.1>:
    625a:	0e 96       	cmp	r6,	r14	;
    625c:	1e 2c       	jc	$+62     	;abs 0x629a

0000625e <.L13>:
        {
            __SET(node_list[i].dist, nearest_dist + cost);
    625e:	07 5a       	add	r10,	r7	;
    6260:	87 4e 66 02 	mov	r14,	614(r7)	; 0x0266

00006264 <.Loc.165.1>:
            __SET(node_list[i].prev, node);
    6264:	0c 49       	mov	r9,	r12	;
    6266:	3c 50 9a 00 	add	#154,	r12	;#0x009a
    626a:	5c 06       	rlam	#2,	r12	;
    626c:	0c 5a       	add	r10,	r12	;
    626e:	8c 48 00 00 	mov	r8,	0(r12)	;

00006272 <.Loc.168.1>:

            // Enqueue.
            uint16_t j = __GET(enq_idx);
    6272:	1d 4a 5a 02 	mov	602(r10),r13	;0x0025a

00006276 <.LVL19>:
            if (j == (__GET(deq_idx) - 1))
            {
                // LOG("QUEUE IS FULL!");
            }
            __SET(queue[j].node, i);
    6276:	0c 4d       	mov	r13,	r12	;
    6278:	5c 02       	rlam	#1,	r12	;
    627a:	0c 5d       	add	r13,	r12	;
    627c:	5c 02       	rlam	#1,	r12	;
    627e:	0c 5a       	add	r10,	r12	;
    6280:	8c 49 00 00 	mov	r9,	0(r12)	;

00006284 <.Loc.174.1>:
            __SET(queue[j].dist, nearest_dist + cost);
    6284:	8c 4e 02 00 	mov	r14,	2(r12)	;

00006288 <.Loc.175.1>:
            __SET(queue[j].prev, node);
    6288:	8c 48 04 00 	mov	r8,	4(r12)	;

0000628c <.Loc.176.1>:
            j++;
    628c:	1d 53       	inc	r13		;

0000628e <.Loc.177.1>:
            if (j < Q_SIZE)
    628e:	7c 40 63 00 	mov.b	#99,	r12	;#0x0063
    6292:	0c 9d       	cmp	r13,	r12	;
    6294:	0f 28       	jnc	$+32     	;abs 0x62b4

00006296 <.Loc.179.1>:
            {
                __SET(enq_idx, j);
    6296:	8a 4d 5a 02 	mov	r13,	602(r10); 0x025a

0000629a <.L14>:
            }
            // LOG("E: %u, D: %u\n", __GET(enq_idx), __GET(deq_idx));
        }
    }

    __SET(node_idx, ++__GET(node_idx));
    629a:	19 53       	inc	r9		;

0000629c <.LVL22>:
    629c:	8a 49 5c 02 	mov	r9,	604(r10); 0x025c

000062a0 <.Loc.190.1>:
    if (__GET(node_idx) < N_NODES)
    {
        return task_find_shorter_path;
    62a0:	3c 40 2c 62 	mov	#25132,	r12	;#0x622c

000062a4 <.Loc.190.1>:
    if (__GET(node_idx) < N_NODES)
    62a4:	7d 40 18 00 	mov.b	#24,	r13	;#0x0018
    62a8:	0d 99       	cmp	r9,	r13	;
    62aa:	02 2c       	jc	$+6      	;abs 0x62b0

000062ac <.Loc.196.1>:
    }
    else
    {
        return task_select_nearest_node;
    62ac:	3c 40 e4 61 	mov	#25060,	r12	;#0x61e4

000062b0 <.L12>:
    }
}
    62b0:	46 17       	popm	#5,	r10	;16-bit words

000062b2 <.LCFI1>:
    62b2:	30 41       	ret			

000062b4 <.L15>:
                __SET(enq_idx, 0);
    62b4:	8a 43 5a 02 	mov	#0,	602(r10);r3 As==00, 0x025a
    62b8:	f0 3f       	jmp	$-30     	;abs 0x629a

000062ba <task_done>:

TASK(task_done)
{
#ifdef RAISE_PIN
    if (full_run_started)
    62ba:	c2 93 61 54 	cmp.b	#0,	&0x5461	;r3 As==00
    62be:	08 24       	jz	$+18     	;abs 0x62d0

000062c0 <.LBB6>:
    {
        __port_on(3, 4);
    62c0:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    62c4:	22 02 

000062c6 <.Loc.205.1>:
        __port_off(3, 4);
    62c6:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    62ca:	22 02 

000062cc <.Loc.206.1>:
        full_run_started = 0;
    62cc:	c2 43 61 54 	mov.b	#0,	&0x5461	;r3 As==00

000062d0 <.L22>:
    }
#endif

    return task_init;
}
    62d0:	3c 40 74 61 	mov	#24948,	r12	;#0x6174

000062d4 <.LVL27>:
    62d4:	30 41       	ret			

000062d6 <thread1_init>:
{
    62d6:	21 83       	decd	r1		;

000062d8 <.LCFI3>:
    __CREATE(15, task_init);
    62d8:	b1 40 ca 02 	mov	#714,	0(r1)	;#0x02ca
    62dc:	00 00 
    62de:	3f 40 96 51 	mov	#20886,	r15	;#0x5196
    62e2:	3e 40 cc 4e 	mov	#20172,	r14	;#0x4ecc
    62e6:	3d 40 74 61 	mov	#24948,	r13	;#0x6174
    62ea:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    62ee:	b0 12 4a 63 	call	#25418		;#0x634a

000062f2 <.Loc.61.1>:
    __SIGNAL(15);
    62f2:	32 c2       	dint			
    62f4:	03 43       	nop			

000062f6 <.Loc.61.1>:
    62f6:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    62fa:	b0 12 3a 64 	call	#25658		;#0x643a
    62fe:	b0 12 1e 64 	call	#25630		;#0x641e

00006302 <.Loc.61.1>:
    6302:	03 43       	nop			
    6304:	32 d2       	eint			
    6306:	03 43       	nop			

00006308 <.Loc.62.1>:
}
    6308:	21 53       	incd	r1		;

0000630a <.LCFI4>:
    630a:	30 41       	ret			

0000630c <__app_reboot>:
    __port_init(3, 4);
    630c:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    6310:	22 02 

00006312 <.Loc.67.1>:
    6312:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    6316:	24 02 

00006318 <.Loc.67.1>:
    6318:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    631c:	22 02 

0000631e <.Loc.67.1>:
}
    631e:	30 41       	ret			

00006320 <__scheduler_boot_init>:
 * a higher-priority thread.
 * As such, the scheduler state should ALWAYS be SCHED_SELECT at reboot.
 */
static volatile uint8_t _sched_state = SCHED_SELECT;

void __scheduler_boot_init() {
    6320:	0a 15       	pushm	#1,	r10	;16-bit words

00006322 <.LCFI0>:
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    6322:	3c 40 64 54 	mov	#21604,	r12	;#0x5464

00006326 <L0^A>:
    6326:	b0 12 3c 6f 	call	#28476		;#0x6f3c

0000632a <.Loc.65.1>:
    632a:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

0000632e <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    632e:	0c 4a       	mov	r10,	r12	;
    6330:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6334:	b0 12 d0 73 	call	#29648		;#0x73d0
    6338:	1c 4c 70 54 	mov	21616(r12),r12	;0x05470

0000633c <.LVL3>:
    for (i = MAX_THREADS; i > 0; i--){
    633c:	3a 53       	add	#-1,	r10	;r3 As==11

0000633e <.Loc.67.1>:
    633e:	0a 93       	cmp	#0,	r10	;r3 As==00
    6340:	f6 23       	jnz	$-18     	;abs 0x632e

00006342 <.Loc.71.1>:
    }
    _sched_state = SCHED_SELECT;
    6342:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00006346 <.Loc.72.1>:
}
    6346:	0a 17       	popm	#1,	r10	;16-bit words

00006348 <.LCFI1>:
    6348:	30 41       	ret			

0000634a <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    634a:	3a 15       	pushm	#4,	r10	;16-bit words

0000634c <.LCFI2>:
    634c:	4a 4c       	mov.b	r12,	r10	;
    634e:	09 4d       	mov	r13,	r9	;
    6350:	07 4e       	mov	r14,	r7	;
    6352:	08 4f       	mov	r15,	r8	;

00006354 <.Loc.79.1>:
    // init properties
    _threads[priority].priority = priority;
    6354:	0c 4a       	mov	r10,	r12	;

00006356 <.LVL6>:
    6356:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

0000635a <.LVL7>:
    635a:	b0 12 d0 73 	call	#29648		;#0x73d0

0000635e <.LVL8>:
    635e:	cc 4a 6e 54 	mov.b	r10,	21614(r12); 0x546e

00006362 <.Loc.80.1>:
    _threads[priority].entry = entry;
    6362:	0c 4a       	mov	r10,	r12	;
    6364:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6368:	b0 12 d0 73 	call	#29648		;#0x73d0
    636c:	8c 49 72 54 	mov	r9,	21618(r12); 0x5472

00006370 <.Loc.81.1>:
    _threads[priority].next = entry;
    6370:	0c 4a       	mov	r10,	r12	;
    6372:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6376:	b0 12 d0 73 	call	#29648		;#0x73d0
    637a:	8c 49 74 54 	mov	r9,	21620(r12); 0x5474

0000637e <.Loc.82.1>:
    _threads[priority].state = THREAD_STOPPED;
    637e:	0c 4a       	mov	r10,	r12	;
    6380:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6384:	b0 12 d0 73 	call	#29648		;#0x73d0
    6388:	bc 42 70 54 	mov	#8,	21616(r12);r2 As==11, 0x5470

0000638c <.Loc.85.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    638c:	0c 4a       	mov	r10,	r12	;
    638e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6392:	b0 12 d0 73 	call	#29648		;#0x73d0
    6396:	8c 47 78 54 	mov	r7,	21624(r12); 0x5478

0000639a <.Loc.86.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    639a:	0c 4a       	mov	r10,	r12	;
    639c:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    63a0:	b0 12 d0 73 	call	#29648		;#0x73d0
    63a4:	8c 48 7a 54 	mov	r8,	21626(r12); 0x547a

000063a8 <.Loc.87.1>:
    _threads[priority].buffer.idx = 0;
    63a8:	0c 4a       	mov	r10,	r12	;
    63aa:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    63ae:	b0 12 d0 73 	call	#29648		;#0x73d0
    63b2:	cc 43 7c 54 	mov.b	#0,	21628(r12);r3 As==00, 0x547c

000063b6 <.Loc.88.1>:
    _threads[priority].buffer.size = size;
    63b6:	0c 4a       	mov	r10,	r12	;
    63b8:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    63bc:	b0 12 d0 73 	call	#29648		;#0x73d0
    63c0:	9c 41 0a 00 	mov	10(r1),	21630(r12);0x0000a, 0x547e
    63c4:	7e 54 

000063c6 <.Loc.89.1>:
}
    63c6:	37 17       	popm	#4,	r10	;16-bit words

000063c8 <.LCFI3>:
    63c8:	30 41       	ret			

000063ca <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    63ca:	0a 15       	pushm	#1,	r10	;16-bit words

000063cc <.LCFI4>:
    63cc:	0a 4c       	mov	r12,	r10	;

000063ce <.Loc.93.1>:
    __priority_remove(thread->priority, &_priorities);
    63ce:	3d 40 64 54 	mov	#21604,	r13	;#0x5464
    63d2:	6c 4c       	mov.b	@r12,	r12	;

000063d4 <.LVL17>:
    63d4:	b0 12 82 6f 	call	#28546		;#0x6f82

000063d8 <.Loc.94.1>:
    thread->state = THREAD_STOPPED;
    63d8:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000063dc <.Loc.95.1>:
}
    63dc:	0a 17       	popm	#1,	r10	;16-bit words

000063de <.LCFI5>:
    63de:	30 41       	ret			

000063e0 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    63e0:	0a 15       	pushm	#1,	r10	;16-bit words

000063e2 <.LCFI6>:
    63e2:	0a 4c       	mov	r12,	r10	;

000063e4 <.Loc.99.1>:
    __priority_remove(thread->priority, &_priorities);
    63e4:	3d 40 64 54 	mov	#21604,	r13	;#0x5464
    63e8:	6c 4c       	mov.b	@r12,	r12	;

000063ea <.LVL20>:
    63ea:	b0 12 82 6f 	call	#28546		;#0x6f82

000063ee <.Loc.100.1>:
    thread->next = NULL;
    63ee:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

000063f2 <.Loc.101.1>:
    thread->state = THREAD_STOPPED;
    63f2:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

000063f6 <.Loc.102.1>:
}
    63f6:	0a 17       	popm	#1,	r10	;16-bit words

000063f8 <.LCFI7>:
    63f8:	30 41       	ret			

000063fa <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    63fa:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

000063fe <.Loc.106.1>:
    return;
}
    63fe:	30 41       	ret			

00006400 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    6400:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00006404 <.Loc.112.1>:
    return;
}
    6404:	30 41       	ret			

00006406 <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    6406:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

0000640a <.Loc.118.1>:
    return;
}
    640a:	30 41       	ret			

0000640c <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    640c:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00006410 <.Loc.123.1>:
    return;
}
    6410:	30 41       	ret			

00006412 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    6412:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00006416 <.LVL27>:
    6416:	30 41       	ret			

00006418 <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    6418:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

0000641c <.LVL29>:
    641c:	30 41       	ret			

0000641e <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    641e:	0a 15       	pushm	#1,	r10	;16-bit words

00006420 <.LCFI8>:
    6420:	0a 4c       	mov	r12,	r10	;

00006422 <.Loc.136.1>:
    thread->next = thread->entry;
    6422:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    6426:	06 00 

00006428 <.Loc.137.1>:
    __priority_insert(thread->priority, &_priorities);
    6428:	3d 40 64 54 	mov	#21604,	r13	;#0x5464
    642c:	6c 4c       	mov.b	@r12,	r12	;

0000642e <.LVL31>:
    642e:	b0 12 62 6f 	call	#28514		;#0x6f62

00006432 <.Loc.138.1>:
    thread->state = TASK_READY;
    6432:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00006436 <.Loc.139.1>:
}
    6436:	0a 17       	popm	#1,	r10	;16-bit words

00006438 <.LCFI9>:
    6438:	30 41       	ret			

0000643a <__get_thread>:

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    return &_threads[priority];
    643a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    643e:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    6442:	b0 12 d0 73 	call	#29648		;#0x73d0

00006446 <.LVL34>:
}
    6446:	3c 50 6e 54 	add	#21614,	r12	;#0x546e
    644a:	30 41       	ret			

0000644c <__scheduler_run>:
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    644c:	b0 12 da 6c 	call	#27866		;#0x6cda

00006450 <.Loc.171.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    6450:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00006454 <.Loc.171.1>:
    __port_off(1, 3);
    6454:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006458 <.LBB8>:
    if(_thread){
    6458:	82 93 62 54 	cmp	#0,	&0x5462	;r3 As==00
    645c:	04 24       	jz	$+10     	;abs 0x6466

0000645e <.Loc.157.1>:
        __tick(_thread);
    645e:	1c 42 62 54 	mov	&0x5462,r12	;0x5462
    6462:	b0 12 ee 64 	call	#25838		;#0x64ee

00006466 <.L16>:
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

#ifdef RAISE_PIN
    __port_on(1, 3);
    6466:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

0000646a <.Loc.184.1>:
    __port_off(1, 3);
    646a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000646e <.Loc.185.1>:
#endif

    __reboot_timers();
    646e:	b0 12 f2 65 	call	#26098		;#0x65f2

00006472 <.L31>:
    // enable interrupts
    __enable_interrupt();
    6472:	03 43       	nop			
    6474:	32 d2       	eint			
    6476:	03 43       	nop			

00006478 <.L20>:

    while (1){
        switch (_sched_state){
    6478:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    647c:	0c 93       	cmp	#0,	r12	;r3 As==00
    647e:	0e 24       	jz	$+30     	;abs 0x649c
    6480:	1c 93       	cmp	#1,	r12	;r3 As==01
    6482:	fa 23       	jnz	$-10     	;abs 0x6478

00006484 <.L19>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    6484:	82 93 62 54 	cmp	#0,	&0x5462	;r3 As==00
    6488:	21 24       	jz	$+68     	;abs 0x64cc

0000648a <.Loc.207.1>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    648a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000648e <.Loc.207.1>:
#endif
                __tick(_thread);
    648e:	1c 42 62 54 	mov	&0x5462,r12	;0x5462
    6492:	b0 12 ee 64 	call	#25838		;#0x64ee

00006496 <.Loc.211.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    6496:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

0000649a <.Loc.212.1>:
                break;
    649a:	ee 3f       	jmp	$-34     	;abs 0x6478

0000649c <.L18>:
            __port_on(1, 3);
    649c:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

000064a0 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    64a0:	3c 40 64 54 	mov	#21604,	r12	;#0x5464
    64a4:	b0 12 aa 6f 	call	#28586		;#0x6faa
    64a8:	4e 4c       	mov.b	r12,	r14	;
    64aa:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000064ae <.LVL40>:
    return NULL;
    64ae:	4d 43       	clr.b	r13		;

000064b0 <.Loc.144.1>:
    if(idx)
    64b0:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    64b2:	07 24       	jz	$+16     	;abs 0x64c2

000064b4 <.Loc.145.1>:
        return &_threads[idx];
    64b4:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    64b8:	b0 12 d0 73 	call	#29648		;#0x73d0

000064bc <.LVL41>:
    64bc:	0d 4c       	mov	r12,	r13	;
    64be:	3d 50 6e 54 	add	#21614,	r13	;#0x546e

000064c2 <.L21>:
            _thread = __next_thread();
    64c2:	82 4d 62 54 	mov	r13,	&0x5462	;

000064c6 <.Loc.201.1>:
            _sched_state = SCHED_BUSY;
    64c6:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01
    64ca:	dc 3f       	jmp	$-70     	;abs 0x6484

000064cc <.L22>:
            }
            _sched_state = SCHED_SELECT;
    64cc:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

000064d0 <.Loc.215.1>:
            __disable_interrupt();
    64d0:	32 c2       	dint			
    64d2:	03 43       	nop			

000064d4 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    64d4:	3c 40 64 54 	mov	#21604,	r12	;#0x5464
    64d8:	b0 12 aa 6f 	call	#28586		;#0x6faa

000064dc <.LVL42>:
    if(idx)
    64dc:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    64de:	cc 23       	jnz	$-102    	;abs 0x6478

000064e0 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    64e0:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

000064e4 <.Loc.219.1>:
#endif
                __mcu_sleep();
    64e4:	03 43       	nop			
    64e6:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    64ea:	03 43       	nop			

000064ec <.Loc.222.1>:
                __enable_interrupt();
    64ec:	c2 3f       	jmp	$-122    	;abs 0x6472

000064ee <__tick>:

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    64ee:	1a 15       	pushm	#2,	r10	;16-bit words

000064f0 <.LCFI0>:
    64f0:	0a 4c       	mov	r12,	r10	;

000064f2 <.Loc.53.1>:
    void *buf;
    switch (thread->state)
    64f2:	
000064f4 <L0^A>:
    64f4:	02 00       	mova	@r0,	r2	;

000064f6 <.LVL1>:
    64f6:	2c 93       	cmp	#2,	r12	;r3 As==10
    64f8:	3f 24       	jz	$+128    	;abs 0x6578
    64fa:	2c 92       	cmp	#4,	r12	;r2 As==10
    64fc:	4d 24       	jz	$+156    	;abs 0x6598
    64fe:	1c 93       	cmp	#1,	r12	;r3 As==01
    6500:	67 20       	jnz	$+208    	;abs 0x65d0

00006502 <.LBB5>:
    __port_on(3,6);
    6502:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    6506:	22 02 

00006508 <.Loc.40.1>:
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    6508:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

0000650c <.Loc.43.1>:
    650c:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    6510:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6512:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006516 <.Loc.43.1>:
    6516:	5c 02       	rlam	#1,	r12	;
    6518:	0c 5a       	add	r10,	r12	;
    651a:	5f 02       	rlam	#1,	r15	;
    651c:	0f 5a       	add	r10,	r15	;
    651e:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    6522:	5e 03       	rrum	#1,	r14	;
    6524:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    6528:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    652c:	b0 12 b4 6e 	call	#28340		;#0x6eb4

00006530 <.Loc.45.1>:
    __port_off(3,6);
    6530:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6534:	22 02 

00006536 <.LBE5>:
    {
    case TASK_READY:
        // refresh thread stack
        __prologue(thread);
#ifdef RAISE_PIN
        __port_on(1, 4);
    6536:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    653a:	02 02 

0000653c <.Loc.60.1>:
#endif
        // get thread buffer
        buf = thread->buffer.buf[thread->buffer._idx^1];
    653c:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    6540:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6542:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006546 <.Loc.63.1>:
    6546:	3c 50 05 00 	add	#5,	r12	;
    654a:	5c 02       	rlam	#1,	r12	;
    654c:	0c 5a       	add	r10,	r12	;
    654e:	29 4c       	mov	@r12,	r9	;

00006550 <.LVL5>:
        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
    6550:	1d 4a 06 00 	mov	6(r10),	r13	;

00006554 <.Loc.66.1>:
    6554:	1d 9a 04 00 	cmp	4(r10),	r13	;
    6558:	3d 20       	jnz	$+124    	;abs 0x65d4

0000655a <.LBB7>:
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
    655a:	0c 4a       	mov	r10,	r12	;
    655c:	b0 12 8e 6d 	call	#28046		;#0x6d8e

00006560 <.LVL6>:
            // push event data to the entry task
            thread->next_temp = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    6560:	0d 4c       	mov	r12,	r13	;
    6562:	0c 49       	mov	r9,	r12	;

00006564 <.LVL7>:
    6564:	1e 4a 04 00 	mov	4(r10),	r14	;
    6568:	8e 12       	call	r14		;

0000656a <.L17>:
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    656a:	8a 4c 08 00 	mov	r12,	8(r10)	;

0000656e <.Loc.76.1>:
        }
        thread->state = TASK_PRECOMMIT;
    656e:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00006572 <.Loc.78.1>:
#ifdef RAISE_PIN
        __port_off(1, 4);
    6572:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6576:	02 02 

00006578 <.L2>:
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
    6578:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    657c:	22 02 

0000657e <.Loc.82.1>:
#endif
        // release any event which is popped by the task
        __release_event(thread);
    657e:	0c 4a       	mov	r10,	r12	;
    6580:	b0 12 bc 6d 	call	#28092		;#0x6dbc

00006584 <.Loc.86.1>:
        thread->next = thread->next_temp;
    6584:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    6588:	06 00 

0000658a <.Loc.88.1>:
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
    658a:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    658e:	5c e3       	xor.b	#1,	r12	;r3 As==01
    6590:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

00006594 <.Loc.89.1>:
        thread->state = TASK_COMMIT;
    6594:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00006598 <.L3>:
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
    6598:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    659c:	0e 00 

0000659e <.Loc.94.1>:
#ifdef RAISE_PIN
        __port_off(3,5);
    659e:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    65a2:	22 02 

000065a4 <.Loc.94.1>:
        __port_on(3,5);
    65a4:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    65a8:	22 02 

000065aa <.Loc.95.1>:
#endif

        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
    65aa:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    65ae:	1b 20       	jnz	$+56     	;abs 0x65e6

000065b0 <.Loc.101.1>:
        {
            __disable_interrupt();
    65b0:	32 c2       	dint			
    65b2:	03 43       	nop			

000065b4 <.Loc.103.1>:
            // check if there are any pending events
            if(!__has_events(thread)){
    65b4:	0c 4a       	mov	r10,	r12	;
    65b6:	b0 12 70 6d 	call	#28016		;#0x6d70

000065ba <.Loc.103.1>:
    65ba:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    65bc:	0e 20       	jnz	$+30     	;abs 0x65da

000065be <.Loc.105.1>:
                // suspend the thread if there are no pending events
                __stop_thread(thread);
    65be:	0c 4a       	mov	r10,	r12	;
    65c0:	b0 12 ca 63 	call	#25546		;#0x63ca

000065c4 <.L9>:
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
    65c4:	03 43       	nop			
    65c6:	32 d2       	eint			
    65c8:	03 43       	nop			

000065ca <.L10>:
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    65ca:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    65ce:	22 02 

000065d0 <.L1>:
#endif
    }
}
    65d0:	19 17       	popm	#2,	r10	;16-bit words

000065d2 <.LCFI1>:
    65d2:	30 41       	ret			

000065d4 <.L5>:
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    65d4:	2c 4c       	mov	@r12,	r12	;
    65d6:	8d 12       	call	r13		;
    65d8:	c8 3f       	jmp	$-110    	;abs 0x656a

000065da <.L8>:
                thread->next = thread->entry;
    65da:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    65de:	06 00 

000065e0 <.Loc.111.1>:
                thread->state = TASK_READY;
    65e0:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    65e4:	ef 3f       	jmp	$-32     	;abs 0x65c4

000065e6 <.L7>:
            thread->state = TASK_READY;
    65e6:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    65ea:	ef 3f       	jmp	$-32     	;abs 0x65ca

000065ec <__timers_init>:
    65ec:	b0 12 8e 70 	call	#28814		;#0x708e

000065f0 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    65f0:	30 41       	ret			

000065f2 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    65f2:	30 41       	ret			

000065f4 <clear_wkup_status>:
//WKUP timers 
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    65f4:	2a 15       	pushm	#3,	r10	;16-bit words

000065f6 <.LCFI0>:
    65f6:	48 4c       	mov.b	r12,	r8	;

000065f8 <.Loc.100.1>:
    
    uint8_t i; 
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    65f8:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

000065fc <.Loc.101.1>:
    65fc:	49 43       	clr.b	r9		;

000065fe <.L5>:
    {
        if (wkup_timing[i].thread_id == thread_id) {
    65fe:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    6602:	07 20       	jnz	$+16     	;abs 0x6612

00006604 <.Loc.104.1>:
            wkup_timing[i].status = NOT_USED;
    6604:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00006608 <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    6608:	4e 43       	clr.b	r14		;
    660a:	4d 43       	clr.b	r13		;
    660c:	4c 49       	mov.b	r9,	r12	;
    660e:	b0 12 4c 71 	call	#29004		;#0x714c

00006612 <.L4>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6612:	4c 49       	mov.b	r9,	r12	;
    6614:	5c 53       	inc.b	r12		;
    6616:	49 4c       	mov.b	r12,	r9	;

00006618 <.LVL5>:
    6618:	3a 50 0a 00 	add	#10,	r10	;#0x000a

0000661c <.Loc.101.1>:
    661c:	7c 90 03 00 	cmp.b	#3,	r12	;
    6620:	ee 23       	jnz	$-34     	;abs 0x65fe

00006622 <.Loc.109.1>:

        }
    }
}
    6622:	28 17       	popm	#3,	r10	;16-bit words

00006624 <.LCFI1>:
    6624:	30 41       	ret			

00006626 <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    6626:	1a 15       	pushm	#2,	r10	;16-bit words

00006628 <.LCFI2>:
    6628:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000662c <.LCFI3>:
    662c:	49 43       	clr.b	r9		;

0000662e <.L8>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    662e:	0a 49       	mov	r9,	r10	;
    6630:	5a 06       	rlam	#2,	r10	;
    6632:	0a 59       	add	r9,	r10	;
    6634:	5a 02       	rlam	#1,	r10	;
    6636:	3a 50 34 1c 	add	#7220,	r10	;#0x1c34
    663a:	4e 43       	clr.b	r14		;
    663c:	4d 49       	mov.b	r9,	r13	;
    663e:	0c 41       	mov	r1,	r12	;
    6640:	b0 12 d6 72 	call	#29398		;#0x72d6
    6644:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6648:	0d 41       	mov	r1,	r13	;
    664a:	0c 4a       	mov	r10,	r12	;
    664c:	b0 12 fc 73 	call	#29692		;#0x73fc

00006650 <.LVL9>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6650:	19 53       	inc	r9		;

00006652 <.Loc.115.1>:
    6652:	39 90 03 00 	cmp	#3,	r9	;
    6656:	eb 23       	jnz	$-40     	;abs 0x662e

00006658 <.Loc.120.1>:
    }

}
    6658:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000665c <.LCFI4>:
    665c:	19 17       	popm	#2,	r10	;16-bit words

0000665e <.LCFI5>:
    665e:	30 41       	ret			

00006660 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing 
void refresh_wkup_timers(){
    6660:	4a 15       	pushm	#5,	r10	;16-bit words

00006662 <.LCFI6>:

    uint8_t i,first = 1;

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6662:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

00006666 <.Loc.125.1>:
    uint8_t i,first = 1;
    6666:	5f 43       	mov.b	#1,	r15	;r3 As==01

00006668 <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6668:	49 43       	clr.b	r9		;

0000666a <.L23>:
    {

        if (wkup_timing[i].status == USED)
    666a:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    666e:	56 20       	jnz	$+174    	;abs 0x671c

00006670 <.Loc.133.1>:
        {
            
            if (first)
    6670:	16 4a 04 00 	mov	4(r10),	r6	;
    6674:	17 4a 06 00 	mov	6(r10),	r7	;

00006678 <.Loc.133.1>:
    6678:	0f 93       	cmp	#0,	r15	;r3 As==00
    667a:	05 24       	jz	$+12     	;abs 0x6686

0000667c <.Loc.135.1>:
            {
                min_wkup = wkup_timing[i].data;
    667c:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

00006680 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    6680:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    6684:	5c 1c 

00006686 <.L12>:
                first = 0;
            }
            

            wkup_timing[i].data = wkup_timing[i].data - __get_time(); 
    6686:	b0 12 5a 70 	call	#28762		;#0x705a

0000668a <.Loc.141.1>:
    668a:	0e 46       	mov	r6,	r14	;
    668c:	0f 47       	mov	r7,	r15	;
    668e:	0e 8c       	sub	r12,	r14	;
    6690:	0f 7d       	subc	r13,	r15	;

00006692 <.Loc.141.1>:
    6692:	8a 4e 04 00 	mov	r14,	4(r10)	;
    6696:	8a 4f 06 00 	mov	r15,	6(r10)	;

0000669a <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    669a:	4d 43       	clr.b	r13		;
    669c:	4c 49       	mov.b	r9,	r12	;
    669e:	b0 12 b0 70 	call	#28848		;#0x70b0

000066a2 <.Loc.144.1>:

            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    66a2:	1c 4a 04 00 	mov	4(r10),	r12	;
    66a6:	1d 4a 06 00 	mov	6(r10),	r13	;

000066aa <.Loc.144.1>:
    66aa:	07 4d       	mov	r13,	r7	;
    66ac:	0d 93       	cmp	#0,	r13	;r3 As==00
    66ae:	50 34       	jge	$+162    	;abs 0x6750

000066b0 <.Loc.144.1>:
    66b0:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    66b4:	06 43       	clr	r6		;
    66b6:	06 8e       	sub	r14,	r6	;
    66b8:	0e 46       	mov	r6,	r14	;
    66ba:	0f 46       	mov	r6,	r15	;
    66bc:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000066c0 <.Loc.144.1>:
    66c0:	0f 9d       	cmp	r13,	r15	;
    66c2:	04 38       	jl	$+10     	;abs 0x66cc

000066c4 <.Loc.144.1>:
    66c4:	0d 9f       	cmp	r15,	r13	;
    66c6:	20 20       	jnz	$+66     	;abs 0x6708
    66c8:	06 9c       	cmp	r12,	r6	;
    66ca:	1e 2c       	jc	$+62     	;abs 0x6708

000066cc <.L32>:
            {
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    66cc:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    66d0:	06 48       	mov	r8,	r6	;
    66d2:	07 43       	clr	r7		;

000066d4 <.Loc.146.1>:
    66d4:	4e 43       	clr.b	r14		;
    66d6:	4f 43       	clr.b	r15		;
    66d8:	0e 8c       	sub	r12,	r14	;
    66da:	0f 7d       	subc	r13,	r15	;

000066dc <.Loc.146.1>:
    66dc:	0f 93       	cmp	#0,	r15	;r3 As==00
    66de:	0c 38       	jl	$+26     	;abs 0x66f8
    66e0:	0f 93       	cmp	#0,	r15	;r3 As==00
    66e2:	02 20       	jnz	$+6      	;abs 0x66e8
    66e4:	0e 96       	cmp	r6,	r14	;
    66e6:	08 28       	jnc	$+18     	;abs 0x66f8

000066e8 <.L33>:
    66e8:	06 9e       	cmp	r14,	r6	;
    66ea:	17 20       	jnz	$+48     	;abs 0x671a
    66ec:	0f 93       	cmp	#0,	r15	;r3 As==00
    66ee:	15 20       	jnz	$+44     	;abs 0x671a

000066f0 <.Loc.146.1>:
    66f0:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    66f4:	02 00 
    66f6:	12 2c       	jc	$+38     	;abs 0x671c

000066f8 <.L17>:
                {
                    min_wkup = -wkup_timing[i].data;
    66f8:	4e 43       	clr.b	r14		;
    66fa:	0e 8c       	sub	r12,	r14	;
    66fc:	82 4e 5a 1c 	mov	r14,	&0x1c5a	;

00006700 <.L40>:
            if (wkup_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
                {
                    min_wkup = wkup_timing[i].data;
                    nxt_wkup = wkup_timing[i].thread_id;
    6700:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    6704:	5c 1c 
    6706:	09 3c       	jmp	$+20     	;abs 0x671a

00006708 <.L15>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    6708:	07 4d       	mov	r13,	r7	;
    670a:	0d 9f       	cmp	r15,	r13	;
    670c:	04 38       	jl	$+10     	;abs 0x6716
    670e:	0f 9d       	cmp	r13,	r15	;
    6710:	04 20       	jnz	$+10     	;abs 0x671a
    6712:	0c 96       	cmp	r6,	r12	;
    6714:	02 2c       	jc	$+6      	;abs 0x671a

00006716 <.L34>:
    6716:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

0000671a <.L30>:
    671a:	4f 43       	clr.b	r15		;

0000671c <.L11>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    671c:	4c 49       	mov.b	r9,	r12	;
    671e:	5c 53       	inc.b	r12		;
    6720:	49 4c       	mov.b	r12,	r9	;

00006722 <.LVL17>:
    6722:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00006726 <.Loc.127.1>:
    6726:	7c 90 03 00 	cmp.b	#3,	r12	;
    672a:	9f 23       	jnz	$-192    	;abs 0x666a

0000672c <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    672c:	0f 93       	cmp	#0,	r15	;r3 As==00
    672e:	2d 20       	jnz	$+92     	;abs 0x678a

00006730 <.Loc.166.1>:
    {
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    6730:	5d 42 5c 1c 	mov.b	&0x1c5c,r13	;0x1c5c
    6734:	4c 43       	clr.b	r12		;

00006736 <.LVL18>:
    6736:	b0 12 92 71 	call	#29074		;#0x7192

0000673a <.LVL19>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    673a:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    673e:	4c 43       	clr.b	r12		;
    6740:	b0 12 a0 71 	call	#29088		;#0x71a0

00006744 <.Loc.171.1>:
        //set the new pending ISR timer.
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    6744:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    6748:	b0 12 d0 6f 	call	#28624		;#0x6fd0

0000674c <.L10>:
    }
    //no pending wake up timer was found.
    else stop_timer();


}
    674c:	46 17       	popm	#5,	r10	;16-bit words

0000674e <.LCFI7>:
    674e:	30 41       	ret			

00006750 <.L13>:
            if (wkup_timing[i].data > 0)
    6750:	0e 4c       	mov	r12,	r14	;
    6752:	0e dd       	bis	r13,	r14	;
    6754:	4f 43       	clr.b	r15		;
    6756:	0e 93       	cmp	#0,	r14	;r3 As==00
    6758:	e1 27       	jz	$-60     	;abs 0x671c

0000675a <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    675a:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    675e:	0e 48       	mov	r8,	r14	;
    6760:	0f 43       	clr	r15		;

00006762 <.Loc.155.1>:
    6762:	0d 93       	cmp	#0,	r13	;r3 As==00
    6764:	0f 38       	jl	$+32     	;abs 0x6784
    6766:	0d 93       	cmp	#0,	r13	;r3 As==00
    6768:	03 20       	jnz	$+8      	;abs 0x6770
    676a:	07 4c       	mov	r12,	r7	;
    676c:	0c 9e       	cmp	r14,	r12	;
    676e:	0a 28       	jnc	$+22     	;abs 0x6784

00006770 <.L35>:
    6770:	07 4c       	mov	r12,	r7	;
    6772:	0c 9e       	cmp	r14,	r12	;
    6774:	d2 23       	jnz	$-90     	;abs 0x671a
    6776:	0d 9f       	cmp	r15,	r13	;
    6778:	d0 23       	jnz	$-94     	;abs 0x671a
    677a:	4f 43       	clr.b	r15		;

0000677c <.Loc.155.1>:
    677c:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    6780:	02 00 
    6782:	cc 2f       	jc	$-102    	;abs 0x671c

00006784 <.L21>:
                    min_wkup = wkup_timing[i].data;
    6784:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;
    6788:	bb 3f       	jmp	$-136    	;abs 0x6700

0000678a <.L24>:
    else stop_timer();
    678a:	b0 12 c0 6f 	call	#28608		;#0x6fc0

0000678e <.LVL24>:
}
    678e:	de 3f       	jmp	$-66     	;abs 0x674c

00006790 <set_wkup_timer>:

// sets a one-shot timer using Timer A2 
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    6790:	2a 15       	pushm	#3,	r10	;16-bit words

00006792 <.LCFI9>:
    6792:	21 83       	decd	r1		;

00006794 <.LCFI10>:
    6794:	49 4c       	mov.b	r12,	r9	;

00006796 <.Loc.182.1>:
    uint8_t i,cmpl = 0;

    //fetch from persistent buffer to local variables 
    unpack_wkup_to_local();
    6796:	81 4d 00 00 	mov	r13,	0(r1)	;
    679a:	b0 12 26 66 	call	#26150		;#0x6626

0000679e <.LVL27>:

    //init the timer 
    //TODO:check if needed 
    stop_timer();
    679e:	b0 12 c0 6f 	call	#28608		;#0x6fc0

000067a2 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    67a2:	2e 41       	mov	@r1,	r14	;
    67a4:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    67a8:	22 24       	jz	$+70     	;abs 0x67ee

000067aa <.Loc.192.1>:
    67aa:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    67ae:	41 24       	jz	$+132    	;abs 0x6832

000067b0 <.Loc.192.1>:
    67b0:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    67b4:	41 24       	jz	$+132    	;abs 0x6838

000067b6 <.Loc.192.1>:
    
    }else{

        //buffer is full
        //TODO: ADD failcheck 
        wkup_timing[2].data = ticks;
    67b6:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    67ba:	82 43 4e 1c 	mov	#0,	&0x1c4e	;r3 As==00

000067be <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    67be:	4f 43       	clr.b	r15		;
    67c0:	4d 43       	clr.b	r13		;
    67c2:	6c 43       	mov.b	#2,	r12	;r3 As==10
    67c4:	b0 12 b0 70 	call	#28848		;#0x70b0

000067c8 <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    67c8:	c2 49 4a 1c 	mov.b	r9,	&0x1c4a	;

000067cc <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    67cc:	4e 49       	mov.b	r9,	r14	;
    67ce:	4d 43       	clr.b	r13		;
    67d0:	7c 40 03 00 	mov.b	#3,	r12	;
    67d4:	b0 12 02 71 	call	#28930		;#0x7102

000067d8 <.L47>:
        refresh_wkup_timers();
    67d8:	b0 12 60 66 	call	#26208		;#0x6660

000067dc <.Loc.222.1>:
        refresh_wkup_timers();
    }

    _pers_timer_update_lock(WKUP);
    67dc:	4c 43       	clr.b	r12		;
    67de:	b0 12 ae 71 	call	#29102		;#0x71ae

000067e2 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    67e2:	4c 43       	clr.b	r12		;
    67e4:	b0 12 94 72 	call	#29332		;#0x7294

000067e8 <.Loc.224.1>:
}
    67e8:	21 53       	incd	r1		;

000067ea <.LCFI11>:
    67ea:	28 17       	popm	#3,	r10	;16-bit words

000067ec <.LCFI12>:
    67ec:	30 41       	ret			

000067ee <.L44>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    67ee:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

000067f2 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    67f2:	0d 4a       	mov	r10,	r13	;

000067f4 <.L42>:
            wkup_timing[i].data = ticks;
    67f4:	0c 4d       	mov	r13,	r12	;
    67f6:	5c 06       	rlam	#2,	r12	;
    67f8:	0c 5d       	add	r13,	r12	;
    67fa:	5c 02       	rlam	#1,	r12	;
    67fc:	08 4c       	mov	r12,	r8	;
    67fe:	8c 4e 38 1c 	mov	r14,	7224(r12); 0x1c38
    6802:	8c 43 3a 1c 	mov	#0,	7226(r12);r3 As==00, 0x1c3a

00006806 <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    6806:	4f 43       	clr.b	r15		;
    6808:	4d 43       	clr.b	r13		;
    680a:	4c 4a       	mov.b	r10,	r12	;
    680c:	b0 12 b0 70 	call	#28848		;#0x70b0

00006810 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    6810:	c8 49 36 1c 	mov.b	r9,	7222(r8); 0x1c36

00006814 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    6814:	4e 49       	mov.b	r9,	r14	;
    6816:	4d 43       	clr.b	r13		;
    6818:	4c 4a       	mov.b	r10,	r12	;
    681a:	b0 12 02 71 	call	#28930		;#0x7102

0000681e <.Loc.200.1>:
            wkup_timing[i].status = USED;
    681e:	98 43 34 1c 	mov	#1,	7220(r8);r3 As==01, 0x1c34

00006822 <.Loc.196.1>:
            wkup_timing[i].data = ticks;
    6822:	38 50 34 1c 	add	#7220,	r8	;#0x1c34

00006826 <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    6826:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6828:	4d 43       	clr.b	r13		;
    682a:	4c 4a       	mov.b	r10,	r12	;
    682c:	b0 12 4c 71 	call	#29004		;#0x714c
    6830:	d3 3f       	jmp	$-88     	;abs 0x67d8

00006832 <.L45>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6832:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006834 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    6834:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6836:	de 3f       	jmp	$-66     	;abs 0x67f4

00006838 <.L46>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    6838:	6a 43       	mov.b	#2,	r10	;r3 As==10

0000683a <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    683a:	6d 43       	mov.b	#2,	r13	;r3 As==10
    683c:	db 3f       	jmp	$-72     	;abs 0x67f4

0000683e <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    683e:	4d 4c       	mov.b	r12,	r13	;

00006840 <.Loc.236.1>:
    
    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    6840:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    6844:	13 24       	jz	$+40     	;abs 0x686c

00006846 <.Loc.237.1>:
    6846:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    684a:	13 24       	jz	$+40     	;abs 0x6872

0000684c <.Loc.237.1>:
    684c:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    6850:	0c 20       	jnz	$+26     	;abs 0x686a

00006852 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6852:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006854 <.LVL48>:
        if (xpr_timing[i].thread_id == thread_id){
    6854:	6e 43       	mov.b	#2,	r14	;r3 As==10

00006856 <.L49>:
            xpr_timing[i].status = NOT_USED;
    6856:	0d 4e       	mov	r14,	r13	;

00006858 <.LVL50>:
    6858:	5d 06       	rlam	#2,	r13	;
    685a:	0d 5e       	add	r14,	r13	;
    685c:	5d 02       	rlam	#1,	r13	;
    685e:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00006862 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    6862:	4e 43       	clr.b	r14		;
    6864:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6866:	b0 12 4c 71 	call	#29004		;#0x714c

0000686a <.L48>:
            break;
        }    
    }

}
    686a:	30 41       	ret			

0000686c <.L51>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    686c:	4c 43       	clr.b	r12		;

0000686e <.LVL53>:
        if (xpr_timing[i].thread_id == thread_id){
    686e:	4e 43       	clr.b	r14		;
    6870:	f2 3f       	jmp	$-26     	;abs 0x6856

00006872 <.L52>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6872:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006874 <.LVL55>:
        if (xpr_timing[i].thread_id == thread_id){
    6874:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6876:	ef 3f       	jmp	$-32     	;abs 0x6856

00006878 <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    6878:	1a 15       	pushm	#2,	r10	;16-bit words

0000687a <.LCFI14>:
    687a:	31 80 0a 00 	sub	#10,	r1	;#0x000a

0000687e <.LCFI15>:
    687e:	49 43       	clr.b	r9		;

00006880 <.L54>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    6880:	0a 49       	mov	r9,	r10	;
    6882:	5a 06       	rlam	#2,	r10	;
    6884:	0a 59       	add	r9,	r10	;
    6886:	5a 02       	rlam	#1,	r10	;
    6888:	3a 50 16 1c 	add	#7190,	r10	;#0x1c16
    688c:	6e 43       	mov.b	#2,	r14	;r3 As==10
    688e:	4d 49       	mov.b	r9,	r13	;
    6890:	0c 41       	mov	r1,	r12	;
    6892:	b0 12 d6 72 	call	#29398		;#0x72d6
    6896:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    689a:	0d 41       	mov	r1,	r13	;
    689c:	0c 4a       	mov	r10,	r12	;
    689e:	b0 12 fc 73 	call	#29692		;#0x73fc

000068a2 <.LVL59>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    68a2:	19 53       	inc	r9		;

000068a4 <.Loc.252.1>:
    68a4:	39 90 03 00 	cmp	#3,	r9	;
    68a8:	eb 23       	jnz	$-40     	;abs 0x6880

000068aa <.Loc.257.1>:
    }

}
    68aa:	31 50 0a 00 	add	#10,	r1	;#0x000a

000068ae <.LCFI16>:
    68ae:	19 17       	popm	#2,	r10	;16-bit words

000068b0 <.LCFI17>:
    68b0:	30 41       	ret			

000068b2 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    68b2:	6a 15       	pushm	#7,	r10	;16-bit words

000068b4 <.LCFI18>:
    68b4:	47 43       	clr.b	r7		;

000068b6 <.Loc.261.1>:
    
    uint8_t i,first = 1;
    uint8_t nxt_xpr;
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    68b6:	3a 40 16 1c 	mov	#7190,	r10	;#0x1c16

000068ba <.Loc.261.1>:
    uint8_t i,first = 1;
    68ba:	5c 43       	mov.b	#1,	r12	;r3 As==01

000068bc <.Loc.265.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    68bc:	46 43       	clr.b	r6		;

000068be <.L64>:
    {

        if (xpr_timing[i].status == USED)
    68be:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    68c2:	4a 20       	jnz	$+150    	;abs 0x6958

000068c4 <.Loc.271.1>:
        {
            
            if (first)
    68c4:	14 4a 04 00 	mov	4(r10),	r4	;
    68c8:	15 4a 06 00 	mov	6(r10),	r5	;

000068cc <.Loc.271.1>:
    68cc:	0c 93       	cmp	#0,	r12	;r3 As==00
    68ce:	04 24       	jz	$+10     	;abs 0x68d8

000068d0 <.LVL63>:
            {
                min_xpr = xpr_timing[i].data;
                nxt_xpr = xpr_timing[i].thread_id;
    68d0:	57 4a 02 00 	mov.b	2(r10),	r7	;

000068d4 <.LVL64>:
                min_xpr = xpr_timing[i].data;
    68d4:	09 44       	mov	r4,	r9	;
    68d6:	08 45       	mov	r5,	r8	;

000068d8 <.L58>:
                first = 0;
            }
            
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    68d8:	b0 12 5a 70 	call	#28762		;#0x705a

000068dc <.Loc.278.1>:
    68dc:	0e 44       	mov	r4,	r14	;
    68de:	0f 45       	mov	r5,	r15	;
    68e0:	0e 8c       	sub	r12,	r14	;
    68e2:	0f 7d       	subc	r13,	r15	;

000068e4 <.Loc.278.1>:
    68e4:	8a 4e 04 00 	mov	r14,	4(r10)	;
    68e8:	8a 4f 06 00 	mov	r15,	6(r10)	;

000068ec <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    68ec:	6d 43       	mov.b	#2,	r13	;r3 As==10
    68ee:	4c 46       	mov.b	r6,	r12	;
    68f0:	b0 12 b0 70 	call	#28848		;#0x70b0

000068f4 <.Loc.281.1>:

            if (xpr_timing[i].data <= 0)
    68f4:	4c 43       	clr.b	r12		;
    68f6:	1c 9a 06 00 	cmp	6(r10),	r12	;
    68fa:	10 38       	jl	$+34     	;abs 0x691c
    68fc:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    6900:	03 20       	jnz	$+8      	;abs 0x6908
    6902:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    6906:	0a 20       	jnz	$+22     	;abs 0x691c

00006908 <.L70>:
            {
                //evict thread 
                //TODO:fix bug to disable ISR
                //TODO:find a more elegant way??
                //__stop_thread(__get_thread(xpr_timing[i].thread_id));
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    6908:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    690c:	b0 12 3a 64 	call	#25658		;#0x643a
    6910:	b0 12 e0 63 	call	#25568		;#0x63e0

00006914 <.Loc.289.1>:
                //update struct
                clear_xpr_status(xpr_timing[i].thread_id);
    6914:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    6918:	b0 12 3e 68 	call	#26686		;#0x683e

0000691c <.L59>:
            }

            if (xpr_timing[i].data > 0)
    691c:	1e 4a 04 00 	mov	4(r10),	r14	;
    6920:	1d 4a 06 00 	mov	6(r10),	r13	;

00006924 <.Loc.292.1>:
    6924:	4c 43       	clr.b	r12		;
    6926:	0c 9d       	cmp	r13,	r12	;
    6928:	04 38       	jl	$+10     	;abs 0x6932
    692a:	0d 93       	cmp	#0,	r13	;r3 As==00
    692c:	14 20       	jnz	$+42     	;abs 0x6956
    692e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6930:	12 24       	jz	$+38     	;abs 0x6956

00006932 <.L71>:
            {   //TODO:priority convention
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6932:	0d 98       	cmp	r8,	r13	;
    6934:	0c 38       	jl	$+26     	;abs 0x694e
    6936:	08 9d       	cmp	r13,	r8	;
    6938:	02 20       	jnz	$+6      	;abs 0x693e
    693a:	0e 99       	cmp	r9,	r14	;
    693c:	08 28       	jnc	$+18     	;abs 0x694e

0000693e <.L72>:
    693e:	4c 43       	clr.b	r12		;

00006940 <.Loc.294.1>:
    6940:	0e 99       	cmp	r9,	r14	;
    6942:	0a 20       	jnz	$+22     	;abs 0x6958
    6944:	0d 98       	cmp	r8,	r13	;
    6946:	08 20       	jnz	$+18     	;abs 0x6958

00006948 <.Loc.294.1>:
    6948:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    694c:	05 2c       	jc	$+12     	;abs 0x6958

0000694e <.L62>:
                {
                    min_xpr = xpr_timing[i].data;
                    nxt_xpr = xpr_timing[i].thread_id;
    694e:	57 4a 02 00 	mov.b	2(r10),	r7	;

00006952 <.LVL72>:
    6952:	09 4e       	mov	r14,	r9	;
    6954:	08 4d       	mov	r13,	r8	;

00006956 <.L67>:
    6956:	4c 43       	clr.b	r12		;

00006958 <.L57>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    6958:	4d 46       	mov.b	r6,	r13	;
    695a:	5d 53       	inc.b	r13		;
    695c:	46 4d       	mov.b	r13,	r6	;

0000695e <.LVL75>:
    695e:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00006962 <.Loc.265.1>:
    6962:	7d 90 03 00 	cmp.b	#3,	r13	;
    6966:	ab 23       	jnz	$-168    	;abs 0x68be

00006968 <.Loc.303.1>:
                }
            }
       }
    }

    if (!first)
    6968:	0c 93       	cmp	#0,	r12	;r3 As==00
    696a:	0d 20       	jnz	$+28     	;abs 0x6986

0000696c <.Loc.304.1>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    696c:	4d 47       	mov.b	r7,	r13	;

0000696e <.LVL76>:
    696e:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006970 <.LVL77>:
    6970:	b0 12 92 71 	call	#29074		;#0x7192

00006974 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr); 
    6974:	0d 49       	mov	r9,	r13	;
    6976:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6978:	b0 12 a0 71 	call	#29088		;#0x71a0

0000697c <.Loc.308.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    697c:	0c 49       	mov	r9,	r12	;
    697e:	b0 12 e6 6f 	call	#28646		;#0x6fe6

00006982 <.L56>:
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();

}
    6982:	64 17       	popm	#7,	r10	;16-bit words

00006984 <.LCFI19>:
    6984:	30 41       	ret			

00006986 <.L65>:
    else stop_timer_xpr();
    6986:	b0 12 fc 6f 	call	#28668		;#0x6ffc

0000698a <.LVL82>:
}
    698a:	fb 3f       	jmp	$-8      	;abs 0x6982

0000698c <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    698c:	5a 15       	pushm	#6,	r10	;16-bit words

0000698e <.LCFI21>:
    698e:	48 4c       	mov.b	r12,	r8	;
    6990:	09 4d       	mov	r13,	r9	;
    6992:	07 4e       	mov	r14,	r7	;

00006994 <.Loc.318.1>:

    uint8_t i,cmpl = 0;

    //__set_xpr_timer(__get_thread(thread_id), ticks);

    unpack_xpr_to_local();
    6994:	b0 12 78 68 	call	#26744		;#0x6878

00006998 <.LVL85>:

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    6998:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    699c:	1b 24       	jz	$+56     	;abs 0x69d4

0000699e <.Loc.324.1>:
    699e:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    69a2:	43 24       	jz	$+136    	;abs 0x6a2a

000069a4 <.Loc.324.1>:
    69a4:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    69a8:	43 24       	jz	$+136    	;abs 0x6a30

000069aa <.Loc.324.1>:
    
    }else{

        //failure 
        //TODO: ADD fail check 
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    69aa:	0e 49       	mov	r9,	r14	;
    69ac:	0f 47       	mov	r7,	r15	;
    69ae:	6d 43       	mov.b	#2,	r13	;r3 As==10
    69b0:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69b2:	b0 12 b0 70 	call	#28848		;#0x70b0

000069b6 <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    69b6:	4e 48       	mov.b	r8,	r14	;
    69b8:	6d 43       	mov.b	#2,	r13	;r3 As==10
    69ba:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69bc:	b0 12 02 71 	call	#28930		;#0x7102

000069c0 <.L83>:
        refresh_xpr_timers();
    69c0:	b0 12 b2 68 	call	#26802		;#0x68b2

000069c4 <.Loc.352.1>:
        refresh_xpr_timers();
    }

    _pers_timer_update_lock(XPR);
    69c4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69c6:	b0 12 ae 71 	call	#29102		;#0x71ae

000069ca <.Loc.353.1>:
    _pers_timer_commit(XPR);
    69ca:	6c 43       	mov.b	#2,	r12	;r3 As==10
    69cc:	b0 12 94 72 	call	#29332		;#0x7294

000069d0 <.Loc.354.1>:
}
    69d0:	55 17       	popm	#6,	r10	;16-bit words

000069d2 <.LCFI22>:
    69d2:	30 41       	ret			

000069d4 <.L80>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    69d4:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

000069d8 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    69d8:	06 4a       	mov	r10,	r6	;

000069da <.L78>:
            xpr_timing[i].data = ticks + __get_time();
    69da:	35 40 5a 70 	mov	#28762,	r5	;#0x705a
    69de:	85 12       	call	r5		;

000069e0 <.Loc.328.1>:
    69e0:	0e 46       	mov	r6,	r14	;
    69e2:	5e 06       	rlam	#2,	r14	;
    69e4:	0e 56       	add	r6,	r14	;
    69e6:	5e 02       	rlam	#1,	r14	;
    69e8:	06 4e       	mov	r14,	r6	;

000069ea <.Loc.328.1>:
    69ea:	0c 59       	add	r9,	r12	;
    69ec:	8e 4c 1a 1c 	mov	r12,	7194(r14); 0x1c1a
    69f0:	0d 67       	addc	r7,	r13	;
    69f2:	8e 4d 1c 1c 	mov	r13,	7196(r14); 0x1c1c

000069f6 <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    69f6:	85 12       	call	r5		;

000069f8 <.Loc.329.1>:
    69f8:	0e 4c       	mov	r12,	r14	;
    69fa:	0e 59       	add	r9,	r14	;
    69fc:	0f 4d       	mov	r13,	r15	;
    69fe:	0f 67       	addc	r7,	r15	;
    6a00:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a02:	4c 4a       	mov.b	r10,	r12	;
    6a04:	b0 12 b0 70 	call	#28848		;#0x70b0

00006a08 <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    6a08:	c6 48 18 1c 	mov.b	r8,	7192(r6); 0x1c18

00006a0c <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    6a0c:	4e 48       	mov.b	r8,	r14	;
    6a0e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a10:	4c 4a       	mov.b	r10,	r12	;
    6a12:	b0 12 02 71 	call	#28930		;#0x7102

00006a16 <.Loc.332.1>:
            xpr_timing[i].status = USED;
    6a16:	96 43 16 1c 	mov	#1,	7190(r6);r3 As==01, 0x1c16

00006a1a <.Loc.328.1>:
            xpr_timing[i].data = ticks + __get_time();
    6a1a:	36 50 16 1c 	add	#7190,	r6	;#0x1c16

00006a1e <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    6a1e:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6a20:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6a22:	4c 4a       	mov.b	r10,	r12	;
    6a24:	b0 12 4c 71 	call	#29004		;#0x714c
    6a28:	cb 3f       	jmp	$-104    	;abs 0x69c0

00006a2a <.L81>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6a2a:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006a2c <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6a2c:	56 43       	mov.b	#1,	r6	;r3 As==01
    6a2e:	d5 3f       	jmp	$-84     	;abs 0x69da

00006a30 <.L82>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6a30:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006a32 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6a32:	66 43       	mov.b	#2,	r6	;r3 As==10
    6a34:	d2 3f       	jmp	$-90     	;abs 0x69da

00006a36 <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    6a36:	0a 15       	pushm	#1,	r10	;16-bit words

00006a38 <.LCFI24>:
    6a38:	4a 4c       	mov.b	r12,	r10	;

00006a3a <.Loc.361.1>:
   
    //__set_xpr_timer(__get_thread(thread_id),0);

    unpack_xpr_to_local();
    6a3a:	b0 12 78 68 	call	#26744		;#0x6878

00006a3e <.LVL104>:

    clear_xpr_status(thread_id);
    6a3e:	4c 4a       	mov.b	r10,	r12	;
    6a40:	b0 12 3e 68 	call	#26686		;#0x683e

00006a44 <.Loc.366.1>:

    //TODO:care infinite loop?
    refresh_xpr_timers();
    6a44:	b0 12 b2 68 	call	#26802		;#0x68b2

00006a48 <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    6a48:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a4a:	b0 12 ae 71 	call	#29102		;#0x71ae

00006a4e <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6a4e:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6a50:	b0 12 94 72 	call	#29332		;#0x7294

00006a54 <.Loc.371.1>:

}
    6a54:	0a 17       	popm	#1,	r10	;16-bit words

00006a56 <.LCFI25>:
    6a56:	30 41       	ret			

00006a58 <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    6a58:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006a5c <.LCFI26>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    6a5c:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6a5e:	4d 43       	clr.b	r13		;
    6a60:	0c 41       	mov	r1,	r12	;
    6a62:	b0 12 d6 72 	call	#29398		;#0x72d6
    6a66:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6a6a:	0d 41       	mov	r1,	r13	;
    6a6c:	3c 40 0c 1c 	mov	#7180,	r12	;#0x1c0c
    6a70:	b0 12 fc 73 	call	#29692		;#0x73fc

00006a74 <.Loc.383.1>:
    }

}
    6a74:	31 50 0a 00 	add	#10,	r1	;#0x000a

00006a78 <.LCFI27>:
    6a78:	30 41       	ret			

00006a7a <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    6a7a:	2a 15       	pushm	#3,	r10	;16-bit words

00006a7c <.LCFI28>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    6a7c:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    6a80:	7d 20       	jnz	$+252    	;abs 0x6b7c

00006a82 <.Loc.463.1>:
        {
            
            if (first)
            {
                min_pdc = pdc_timing[i].data;
    6a82:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    6a86:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

00006a8a <.Loc.465.1>:
    6a8a:	82 48 52 1c 	mov	r8,	&0x1c52	;

00006a8e <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    6a8e:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    6a92:	54 1c 

00006a94 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time(); 
    6a94:	b0 12 5a 70 	call	#28762		;#0x705a

00006a98 <.Loc.471.1>:
    6a98:	0e 48       	mov	r8,	r14	;
    6a9a:	0f 49       	mov	r9,	r15	;
    6a9c:	0e 8c       	sub	r12,	r14	;
    6a9e:	0f 7d       	subc	r13,	r15	;

00006aa0 <.Loc.471.1>:
    6aa0:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    6aa4:	82 4f 12 1c 	mov	r15,	&0x1c12	;

00006aa8 <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    6aa8:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6aaa:	4c 43       	clr.b	r12		;
    6aac:	b0 12 b0 70 	call	#28848		;#0x70b0

00006ab0 <.Loc.474.1>:
            
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    6ab0:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    6ab4:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

00006ab8 <.Loc.474.1>:
    6ab8:	09 4d       	mov	r13,	r9	;
    6aba:	0d 93       	cmp	#0,	r13	;r3 As==00
    6abc:	44 34       	jge	$+138    	;abs 0x6b46

00006abe <.Loc.474.1>:
    6abe:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    6ac2:	08 43       	clr	r8		;
    6ac4:	08 8e       	sub	r14,	r8	;
    6ac6:	0e 48       	mov	r8,	r14	;
    6ac8:	0f 48       	mov	r8,	r15	;
    6aca:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00006ace <.Loc.474.1>:
    6ace:	0f 9d       	cmp	r13,	r15	;
    6ad0:	04 38       	jl	$+10     	;abs 0x6ada

00006ad2 <.Loc.474.1>:
    6ad2:	0d 9f       	cmp	r15,	r13	;
    6ad4:	20 20       	jnz	$+66     	;abs 0x6b16
    6ad6:	08 9c       	cmp	r12,	r8	;
    6ad8:	1e 2c       	jc	$+62     	;abs 0x6b16

00006ada <.L100>:
            {
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6ada:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    6ade:	08 4a       	mov	r10,	r8	;
    6ae0:	09 43       	clr	r9		;

00006ae2 <.Loc.476.1>:
    6ae2:	4e 43       	clr.b	r14		;
    6ae4:	4f 43       	clr.b	r15		;
    6ae6:	0e 8c       	sub	r12,	r14	;
    6ae8:	0f 7d       	subc	r13,	r15	;

00006aea <.Loc.476.1>:
    6aea:	0f 93       	cmp	#0,	r15	;r3 As==00
    6aec:	0c 38       	jl	$+26     	;abs 0x6b06
    6aee:	0f 93       	cmp	#0,	r15	;r3 As==00
    6af0:	02 20       	jnz	$+6      	;abs 0x6af6
    6af2:	0e 98       	cmp	r8,	r14	;
    6af4:	08 28       	jnc	$+18     	;abs 0x6b06

00006af6 <.L101>:
    6af6:	08 9e       	cmp	r14,	r8	;
    6af8:	17 20       	jnz	$+48     	;abs 0x6b28
    6afa:	0f 93       	cmp	#0,	r15	;r3 As==00
    6afc:	15 20       	jnz	$+44     	;abs 0x6b28

00006afe <.Loc.476.1>:
    6afe:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    6b02:	0e 1c 
    6b04:	11 2c       	jc	$+36     	;abs 0x6b28

00006b06 <.L92>:
                {
                    min_pdc = -pdc_timing[i].data;
    6b06:	4e 43       	clr.b	r14		;
    6b08:	0e 8c       	sub	r12,	r14	;
    6b0a:	82 4e 52 1c 	mov	r14,	&0x1c52	;

00006b0e <.L107>:
            if (pdc_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
                {
                    min_pdc = pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
    6b0e:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    6b12:	54 1c 

00006b14 <.Loc.494.1>:
                }
            }
       }
    }

    if (!first)
    6b14:	09 3c       	jmp	$+20     	;abs 0x6b28

00006b16 <.L90>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    6b16:	09 4d       	mov	r13,	r9	;
    6b18:	0d 9f       	cmp	r15,	r13	;
    6b1a:	04 38       	jl	$+10     	;abs 0x6b24
    6b1c:	0f 9d       	cmp	r13,	r15	;
    6b1e:	04 20       	jnz	$+10     	;abs 0x6b28
    6b20:	0c 98       	cmp	r8,	r12	;
    6b22:	02 2c       	jc	$+6      	;abs 0x6b28

00006b24 <.L102>:
    6b24:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00006b28 <.L94>:
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    6b28:	5d 42 54 1c 	mov.b	&0x1c54,r13	;0x1c54
    6b2c:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6b2e:	b0 12 92 71 	call	#29074		;#0x7192

00006b32 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    6b32:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    6b36:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6b38:	b0 12 a0 71 	call	#29088		;#0x71a0

00006b3c <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    6b3c:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    6b40:	b0 12 02 70 	call	#28674		;#0x7002

00006b44 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    6b44:	1d 3c       	jmp	$+60     	;abs 0x6b80

00006b46 <.L88>:
            if (pdc_timing[i].data > 0)
    6b46:	0e 4c       	mov	r12,	r14	;
    6b48:	0e dd       	bis	r13,	r14	;
    6b4a:	0e 93       	cmp	#0,	r14	;r3 As==00
    6b4c:	ed 27       	jz	$-36     	;abs 0x6b28

00006b4e <.Loc.485.1>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6b4e:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    6b52:	0e 4a       	mov	r10,	r14	;
    6b54:	0f 43       	clr	r15		;

00006b56 <.Loc.485.1>:
    6b56:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b58:	0e 38       	jl	$+30     	;abs 0x6b76
    6b5a:	0d 93       	cmp	#0,	r13	;r3 As==00
    6b5c:	03 20       	jnz	$+8      	;abs 0x6b64
    6b5e:	09 4c       	mov	r12,	r9	;
    6b60:	0c 9e       	cmp	r14,	r12	;
    6b62:	09 28       	jnc	$+20     	;abs 0x6b76

00006b64 <.L103>:
    6b64:	09 4c       	mov	r12,	r9	;
    6b66:	0c 9e       	cmp	r14,	r12	;
    6b68:	df 23       	jnz	$-64     	;abs 0x6b28
    6b6a:	0d 9f       	cmp	r15,	r13	;
    6b6c:	dd 23       	jnz	$-68     	;abs 0x6b28

00006b6e <.Loc.485.1>:
    6b6e:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    6b72:	0e 1c 
    6b74:	d9 2f       	jc	$-76     	;abs 0x6b28

00006b76 <.L97>:
                    min_pdc = pdc_timing[i].data;
    6b76:	82 4c 52 1c 	mov	r12,	&0x1c52	;
    6b7a:	c9 3f       	jmp	$-108    	;abs 0x6b0e

00006b7c <.L87>:
    else stop_timer();
    6b7c:	b0 12 c0 6f 	call	#28608		;#0x6fc0

00006b80 <.L86>:
}
    6b80:	28 17       	popm	#3,	r10	;16-bit words

00006b82 <.LCFI29>:
    6b82:	30 41       	ret			

00006b84 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    6b84:	2a 15       	pushm	#3,	r10	;16-bit words

00006b86 <.LCFI30>:
    6b86:	49 4c       	mov.b	r12,	r9	;
    6b88:	0a 4d       	mov	r13,	r10	;

00006b8a <.Loc.392.1>:
    unpack_pdc_to_local();
    6b8a:	b0 12 58 6a 	call	#27224		;#0x6a58

00006b8e <.LVL127>:
        if (pdc_timing[i].status == NOT_USED)
    6b8e:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    6b92:	2e 20       	jnz	$+94     	;abs 0x6bf0

00006b94 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    6b94:	38 40 3a 64 	mov	#25658,	r8	;#0x643a
    6b98:	4c 49       	mov.b	r9,	r12	;
    6b9a:	88 12       	call	r8		;
    6b9c:	0d 4a       	mov	r10,	r13	;
    6b9e:	b0 12 06 64 	call	#25606		;#0x6406

00006ba2 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    6ba2:	4c 49       	mov.b	r9,	r12	;
    6ba4:	88 12       	call	r8		;
    6ba6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6ba8:	b0 12 0c 64 	call	#25612		;#0x640c

00006bac <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    6bac:	0e 4a       	mov	r10,	r14	;
    6bae:	4f 43       	clr.b	r15		;
    6bb0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6bb2:	4c 43       	clr.b	r12		;
    6bb4:	b0 12 b0 70 	call	#28848		;#0x70b0

00006bb8 <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    6bb8:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    6bbc:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

00006bc0 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    6bc0:	4e 49       	mov.b	r9,	r14	;
    6bc2:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6bc4:	4c 43       	clr.b	r12		;
    6bc6:	b0 12 02 71 	call	#28930		;#0x7102

00006bca <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    6bca:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00006bce <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    6bce:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6bd0:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6bd2:	4c 43       	clr.b	r12		;
    6bd4:	b0 12 4c 71 	call	#29004		;#0x714c

00006bd8 <.Loc.410.1>:
            pdc_timing[i].status = USED;
    6bd8:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

00006bdc <.L111>:
        refresh_pdc_timers();
    6bdc:	b0 12 7a 6a 	call	#27258		;#0x6a7a

00006be0 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    6be0:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6be2:	b0 12 ae 71 	call	#29102		;#0x71ae

00006be6 <.Loc.434.1>:
    _pers_timer_commit(PDC);
    6be6:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6be8:	b0 12 94 72 	call	#29332		;#0x7294

00006bec <.Loc.435.1>:
}
    6bec:	28 17       	popm	#3,	r10	;16-bit words

00006bee <.LCFI31>:
    6bee:	30 41       	ret			

00006bf0 <.L109>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    6bf0:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    6bf4:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

00006bf8 <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    6bf8:	0e 4a       	mov	r10,	r14	;
    6bfa:	4f 43       	clr.b	r15		;
    6bfc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6bfe:	4c 43       	clr.b	r12		;
    6c00:	b0 12 b0 70 	call	#28848		;#0x70b0

00006c04 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    6c04:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

00006c08 <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    6c08:	4e 49       	mov.b	r9,	r14	;
    6c0a:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6c0c:	4c 43       	clr.b	r12		;
    6c0e:	b0 12 02 71 	call	#28930		;#0x7102
    6c12:	e4 3f       	jmp	$-54     	;abs 0x6bdc

00006c14 <clear_pdc_status>:
void clear_pdc_status(uint8_t thread_id){
    
    uint8_t i; 
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    6c14:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    6c18:	07 20       	jnz	$+16     	;abs 0x6c28

00006c1a <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    6c1a:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00006c1e <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    6c1e:	4e 43       	clr.b	r14		;
    6c20:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6c22:	4c 43       	clr.b	r12		;

00006c24 <.LVL144>:
    6c24:	b0 12 4c 71 	call	#29004		;#0x714c

00006c28 <.L112>:

        } 
    }
}
    6c28:	30 41       	ret			

00006c2a <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    6c2a:	0a 15       	pushm	#1,	r10	;16-bit words

00006c2c <.LCFI33>:
    6c2c:	4a 4c       	mov.b	r12,	r10	;

00006c2e <.Loc.440.1>:
    unpack_pdc_to_local();
    6c2e:	b0 12 58 6a 	call	#27224		;#0x6a58

00006c32 <.LVL147>:
    clear_pdc_status(thread_id);
    6c32:	4c 4a       	mov.b	r10,	r12	;
    6c34:	b0 12 14 6c 	call	#27668		;#0x6c14

00006c38 <.Loc.445.1>:
    refresh_pdc_timers();
    6c38:	b0 12 7a 6a 	call	#27258		;#0x6a7a

00006c3c <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    6c3c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6c3e:	b0 12 ae 71 	call	#29102		;#0x71ae

00006c42 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    6c42:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6c44:	b0 12 94 72 	call	#29332		;#0x7294

00006c48 <.Loc.450.1>:
}
    6c48:	0a 17       	popm	#1,	r10	;16-bit words

00006c4a <.LCFI34>:
    6c4a:	30 41       	ret			

00006c4c <main>:
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    6c4c:	b0 12 fe 6e 	call	#28414		;#0x6efe

00006c50 <.Loc.46.1>:

	// if this is the first boot
	if(!__inited){
    6c50:	c2 93 ee 5a 	cmp.b	#0,	&0x5aee	;r3 As==00
    6c54:	08 20       	jnz	$+18     	;abs 0x6c66

00006c56 <.Loc.48.1>:
	    // init the scheduler state
	    __scheduler_boot_init();
    6c56:	b0 12 20 63 	call	#25376		;#0x6320

00006c5a <.Loc.50.1>:
	    // init the event handler
	    __events_boot_init();
    6c5a:	b0 12 b4 6c 	call	#27828		;#0x6cb4

00006c5e <.Loc.57.1>:
	    __get_time_init();
	    //init the timers
	    __timers_init();
#endif
	    // init the applications
	    __app_init();
    6c5e:	b0 12 6e 61 	call	#24942		;#0x616e

00006c62 <.Loc.59.1>:
	    // the first and initial boot is finished
	    __inited = 1;
    6c62:	d2 43 ee 5a 	mov.b	#1,	&0x5aee	;r3 As==01

00006c66 <.L2>:
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    6c66:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006c6a <.Loc.68.1>:
    6c6a:	
00006c6c <L0^A>:
    6c6c:	04 02       	mova	@r2,	r4	;

00006c6e <.Loc.68.1>:
    6c6e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006c72 <.Loc.68.1>:
    __port_init(1, 4); // Task Execution
    6c72:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6c76:	02 02 

00006c78 <.Loc.69.1>:
    6c78:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    6c7c:	04 02 

00006c7e <.Loc.69.1>:
    6c7e:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6c82:	02 02 

00006c84 <.Loc.69.1>:
    __port_init(3, 5); // Task commit
    6c84:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6c88:	22 02 

00006c8a <.Loc.70.1>:
    6c8a:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    6c8e:	24 02 

00006c90 <.Loc.70.1>:
    6c90:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    6c94:	22 02 

00006c96 <.Loc.70.1>:
    __port_init(3, 6); // Task buffer copy
    6c96:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6c9a:	22 02 

00006c9c <.Loc.71.1>:
    6c9c:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    6ca0:	24 02 

00006ca2 <.Loc.71.1>:
    6ca2:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    6ca6:	22 02 

00006ca8 <.Loc.71.1>:
#endif

	// will be called at each reboot of the application
	__app_reboot();
    6ca8:	b0 12 0c 63 	call	#25356		;#0x630c

00006cac <.Loc.78.1>:

	// activate the scheduler
	__scheduler_run();
    6cac:	b0 12 4c 64 	call	#25676		;#0x644c

00006cb0 <.Loc.80.1>:

	return 0;
}
    6cb0:	4c 43       	clr.b	r12		;
    6cb2:	30 41       	ret			

00006cb4 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    6cb4:	1a 15       	pushm	#2,	r10	;16-bit words

00006cb6 <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    6cb6:	3a 40 70 60 	mov	#24688,	r10	;#0x6070
    6cba:	39 40 f0 5a 	mov	#23280,	r9	;#0x5af0

00006cbe <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    6cbe:	0c 4a       	mov	r10,	r12	;
    6cc0:	b0 12 e0 6d 	call	#28128		;#0x6de0

00006cc4 <.Loc.56.1>:
        _popped[i] = NULL;
    6cc4:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

00006cc8 <.Loc.53.1>:
    for(i=MAX_THREADS;i>0;i--){
    6cc8:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    6ccc:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

00006cd0 <.Loc.53.1>:
    6cd0:	3a 90 70 5b 	cmp	#23408,	r10	;#0x5b70
    6cd4:	f4 23       	jnz	$-22     	;abs 0x6cbe

00006cd6 <.Loc.58.1>:
    }
}
    6cd6:	19 17       	popm	#2,	r10	;16-bit words

00006cd8 <.LCFI1>:
    6cd8:	30 41       	ret			

00006cda <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    6cda:	5c 42 7c 60 	mov.b	&0x607c,r12	;0x607c
    6cde:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    6ce0:	13 24       	jz	$+40     	;abs 0x6d08
    6ce2:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    6ce4:	1e 24       	jz	$+62     	;abs 0x6d22
    6ce6:	0c 93       	cmp	#0,	r12	;r3 As==00
    6ce8:	29 20       	jnz	$+84     	;abs 0x6d3c

00006cea <.Loc.65.1>:
    case EVENT_INSERT:
        __perqueue_push(&_events[_thread->priority], &_event);
    6cea:	1d 42 7a 60 	mov	&0x607a,r13	;0x607a

00006cee <.Loc.65.1>:
    6cee:	6c 4d       	mov.b	@r13,	r12	;
    6cf0:	5c 06       	rlam	#2,	r12	;
    6cf2:	6d 4d       	mov.b	@r13,	r13	;
    6cf4:	0c 5d       	add	r13,	r12	;
    6cf6:	5c 06       	rlam	#2,	r12	;
    6cf8:	3d 40 70 60 	mov	#24688,	r13	;#0x6070
    6cfc:	3c 50 70 5b 	add	#23408,	r12	;#0x5b70
    6d00:	b0 12 3c 6e 	call	#28220		;#0x6e3c

00006d04 <.Loc.66.1>:
        _status = EVENT_COMMIT;
    6d04:	d2 43 7c 60 	mov.b	#1,	&0x607c	;r3 As==01

00006d08 <.L5>:
    case EVENT_COMMIT:
        __perqueue_push_commit(&_events[_thread->priority]);
    6d08:	1d 42 7a 60 	mov	&0x607a,r13	;0x607a

00006d0c <.Loc.68.1>:
    6d0c:	6c 4d       	mov.b	@r13,	r12	;
    6d0e:	5c 06       	rlam	#2,	r12	;
    6d10:	6d 4d       	mov.b	@r13,	r13	;
    6d12:	0c 5d       	add	r13,	r12	;
    6d14:	5c 06       	rlam	#2,	r12	;
    6d16:	3c 50 70 5b 	add	#23408,	r12	;#0x5b70
    6d1a:	b0 12 72 6e 	call	#28274		;#0x6e72

00006d1e <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    6d1e:	e2 43 7c 60 	mov.b	#2,	&0x607c	;r3 As==10

00006d22 <.L6>:
    case EVENT_SIGNAL:
        // if the thread is sleeping, activate it!
        if(_thread->state == THREAD_STOPPED){
    6d22:	1c 42 7a 60 	mov	&0x607a,r12	;0x607a
    6d26:	1c 4c 02 00 	mov	2(r12),	r12	;

00006d2a <.Loc.72.1>:
    6d2a:	3c 92       	cmp	#8,	r12	;r2 As==11
    6d2c:	04 20       	jnz	$+10     	;abs 0x6d36

00006d2e <.Loc.73.1>:
            __start_thread(_thread);
    6d2e:	1c 42 7a 60 	mov	&0x607a,r12	;0x607a
    6d32:	b0 12 1e 64 	call	#25630		;#0x641e

00006d36 <.L8>:
        }
        _status = EVENT_DONE;
    6d36:	f2 40 03 00 	mov.b	#3,	&0x607c	;
    6d3a:	7c 60 

00006d3c <.L4>:
    }
}
    6d3c:	30 41       	ret			

00006d3e <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    6d3e:	1d 42 7a 60 	mov	&0x607a,r13	;0x607a

00006d42 <.Loc.81.1>:
    6d42:	6c 4d       	mov.b	@r13,	r12	;

00006d44 <.LVL7>:
    6d44:	5c 06       	rlam	#2,	r12	;
    6d46:	6d 4d       	mov.b	@r13,	r13	;
    6d48:	0c 5d       	add	r13,	r12	;
    6d4a:	5c 06       	rlam	#2,	r12	;
    6d4c:	3c 50 70 5b 	add	#23408,	r12	;#0x5b70
    6d50:	b0 12 10 6e 	call	#28176		;#0x6e10

00006d54 <.Loc.82.1>:
}
    6d54:	30 41       	ret			

00006d56 <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    6d56:	82 4c 7a 60 	mov	r12,	&0x607a	;

00006d5a <.Loc.90.1>:
    _event = *event;
    6d5a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6d5e:	3c 40 70 60 	mov	#24688,	r12	;#0x6070

00006d62 <.LVL10>:
    6d62:	b0 12 fc 73 	call	#29692		;#0x73fc

00006d66 <.LVL11>:
    _status = EVENT_INSERT;
    6d66:	c2 43 7c 60 	mov.b	#0,	&0x607c	;r3 As==00

00006d6a <.Loc.92.1>:
    __events_commit();
    6d6a:	b0 12 da 6c 	call	#27866		;#0x6cda

00006d6e <.Loc.93.1>:
}
    6d6e:	30 41       	ret			

00006d70 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    6d70:	6d 4c       	mov.b	@r12,	r13	;
    6d72:	5d 06       	rlam	#2,	r13	;
    6d74:	6c 4c       	mov.b	@r12,	r12	;

00006d76 <.LVL14>:
    6d76:	0c 5d       	add	r13,	r12	;
    6d78:	5c 06       	rlam	#2,	r12	;
    6d7a:	3c 50 70 5b 	add	#23408,	r12	;#0x5b70
    6d7e:	b0 12 fa 6d 	call	#28154		;#0x6dfa
    6d82:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006d86 <.Loc.97.1>:
    6d86:	3c 53       	add	#-1,	r12	;r3 As==11

00006d88 <.Loc.101.1>:
        return 0;

    return 1;
}
    6d88:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6d8c:	30 41       	ret			

00006d8e <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    6d8e:	0a 15       	pushm	#1,	r10	;16-bit words

00006d90 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    6d90:	1c 42 7a 60 	mov	&0x607a,r12	;0x607a

00006d94 <.LVL17>:
    6d94:	6a 4c       	mov.b	@r12,	r10	;

00006d96 <.Loc.107.1>:
    6d96:	0c 4a       	mov	r10,	r12	;
    6d98:	5c 06       	rlam	#2,	r12	;
    6d9a:	0c 5a       	add	r10,	r12	;
    6d9c:	5c 06       	rlam	#2,	r12	;
    6d9e:	3c 50 70 5b 	add	#23408,	r12	;#0x5b70
    6da2:	b0 12 7a 6e 	call	#28282		;#0x6e7a

00006da6 <.Loc.107.1>:
    6da6:	5a 02       	rlam	#1,	r10	;
    6da8:	8a 4c f0 5a 	mov	r12,	23280(r10); 0x5af0

00006dac <.Loc.108.1>:
    return _popped[_thread->priority];
    6dac:	1c 42 7a 60 	mov	&0x607a,r12	;0x607a
    6db0:	6c 4c       	mov.b	@r12,	r12	;
    6db2:	5c 02       	rlam	#1,	r12	;

00006db4 <.Loc.109.1>:
}
    6db4:	1c 4c f0 5a 	mov	23280(r12),r12	;0x05af0
    6db8:	0a 17       	popm	#1,	r10	;16-bit words

00006dba <.LCFI3>:
    6dba:	30 41       	ret			

00006dbc <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    6dbc:	1d 42 7a 60 	mov	&0x607a,r13	;0x607a

00006dc0 <.Loc.113.1>:
    6dc0:	6c 4d       	mov.b	@r13,	r12	;

00006dc2 <.LVL20>:
    6dc2:	5c 06       	rlam	#2,	r12	;
    6dc4:	6d 4d       	mov.b	@r13,	r13	;
    6dc6:	0c 5d       	add	r13,	r12	;
    6dc8:	5c 06       	rlam	#2,	r12	;
    6dca:	3c 50 70 5b 	add	#23408,	r12	;#0x5b70
    6dce:	b0 12 ac 6e 	call	#28332		;#0x6eac

00006dd2 <.Loc.114.1>:
    _popped[_thread->priority] = NULL;
    6dd2:	1c 42 7a 60 	mov	&0x607a,r12	;0x607a
    6dd6:	6c 4c       	mov.b	@r12,	r12	;
    6dd8:	5c 02       	rlam	#1,	r12	;
    6dda:	8c 43 f0 5a 	mov	#0,	23280(r12);r3 As==00, 0x5af0

00006dde <.Loc.115.1>:
}
    6dde:	30 41       	ret			

00006de0 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    6de0:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    6de4:	10 00 

00006de6 <.Loc.37.1>:
    queue->_tail ^= queue->_tail;
    6de6:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    6dea:	11 00 

00006dec <.Loc.38.1>:
    queue->__head ^= queue->__head;
    6dec:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    6df0:	12 00 

00006df2 <.Loc.39.1>:
    queue->__tail ^= queue->__tail;
    6df2:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    6df6:	13 00 

00006df8 <.Loc.40.1>:
}
    6df8:	30 41       	ret			

00006dfa <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    6dfa:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6dfe:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    6e02:	4c 4d       	mov.b	r13,	r12	;

00006e04 <.LVL2>:
    6e04:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6e08:	3c 53       	add	#-1,	r12	;r3 As==11

00006e0a <.Loc.49.1>:
        return 1;
    }

    return 0;
}
    6e0a:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6e0e:	30 41       	ret			

00006e10 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6e10:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6e14:	5d 53       	inc.b	r13		;
    6e16:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

00006e1a <.Loc.54.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    6e1a:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6e1e:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6e20:	02 20       	jnz	$+6      	;abs 0x6e26

00006e22 <.Loc.55.1>:
        queue->__tail = 0;
    6e22:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

00006e26 <.L4>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    6e26:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    6e2a:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6e2e:	4c 4d       	mov.b	r13,	r12	;

00006e30 <.LVL4>:
    6e30:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6e34:	3c 53       	add	#-1,	r12	;r3 As==11

00006e36 <.Loc.64.1>:
        return 1;
    }

    return 0;
}
    6e36:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6e3a:	30 41       	ret			

00006e3c <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    6e3c:	0e 4c       	mov	r12,	r14	;

00006e3e <.Loc.68.1>:
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6e3e:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

00006e42 <.LVL6>:
    6e42:	5c 53       	inc.b	r12		;
    6e44:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

00006e48 <.Loc.69.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    6e48:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    6e4c:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    6e4e:	02 20       	jnz	$+6      	;abs 0x6e54

00006e50 <.Loc.70.1>:
        queue->__tail = 0;
    6e50:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

00006e54 <.L6>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    6e54:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

00006e58 <.Loc.74.1>:
    6e58:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

00006e5c <.Loc.75.1>:
        return 0;
    6e5c:	4c 43       	clr.b	r12		;

00006e5e <.Loc.74.1>:
    if (queue->__tail == queue->_head) {
    6e5e:	0b 9f       	cmp	r15,	r11	;
    6e60:	07 24       	jz	$+16     	;abs 0x6e70

00006e62 <.Loc.79.1>:
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6e62:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

00006e66 <.Loc.79.1>:
    6e66:	5c 02       	rlam	#1,	r12	;
    6e68:	0e 5c       	add	r12,	r14	;

00006e6a <.LVL7>:
    6e6a:	8e 4d 00 00 	mov	r13,	0(r14)	;

00006e6e <.Loc.81.1>:

    return 1;
    6e6e:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006e70 <.L7>:
}
    6e70:	30 41       	ret			

00006e72 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    6e72:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    6e76:	11 00 

00006e78 <.Loc.89.1>:
}
    6e78:	30 41       	ret			

00006e7a <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    6e7a:	0d 4c       	mov	r12,	r13	;

00006e7c <.Loc.93.1>:
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6e7c:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

00006e80 <.Loc.93.1>:
    6e80:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006e84 <.Loc.94.1>:
        return NULL;
    6e84:	4c 43       	clr.b	r12		;

00006e86 <.LVL10>:
    if (queue->_head == queue->_tail){
    6e86:	0f 9e       	cmp	r14,	r15	;
    6e88:	10 24       	jz	$+34     	;abs 0x6eaa

00006e8a <.Loc.98.1>:
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    6e8a:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    6e8e:	5c 53       	inc.b	r12		;
    6e90:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

00006e94 <.Loc.99.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    6e94:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    6e98:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    6e9a:	02 20       	jnz	$+6      	;abs 0x6ea0

00006e9c <.Loc.100.1>:
        queue->__head = 0;
    6e9c:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

00006ea0 <.L12>:

    return queue->_items[queue->_head];
    6ea0:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

00006ea4 <.Loc.102.1>:
    6ea4:	5c 02       	rlam	#1,	r12	;
    6ea6:	0d 5c       	add	r12,	r13	;

00006ea8 <.LVL11>:
    6ea8:	2c 4d       	mov	@r13,	r12	;

00006eaa <.L10>:
}
    6eaa:	30 41       	ret			

00006eac <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    6eac:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    6eb0:	10 00 

00006eb2 <.Loc.109.1>:
}
    6eb2:	30 41       	ret			

00006eb4 <__dma_word_copy>:
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    6eb4:	0a 15       	pushm	#1,	r10	;16-bit words

00006eb6 <.LCFI0>:
    6eb6:	21 82       	sub	#4,	r1	;r2 As==10

00006eb8 <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    6eb8:	0a 4c       	mov	r12,	r10	;
    6eba:	0b 43       	clr	r11		;
    6ebc:	81 4a 00 00 	mov	r10,	0(r1)	;
    6ec0:	81 4b 02 00 	mov	r11,	2(r1)	;

00006ec4 <.Loc.38.1>:
    6ec4:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

00006ec8 <.LVL1>:
    6ec8:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6ecc:	00 00 

00006ece <.LBB3>:
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    6ece:	0a 4d       	mov	r13,	r10	;
    6ed0:	0b 43       	clr	r11		;

00006ed2 <.LVL2>:
    6ed2:	81 4a 00 00 	mov	r10,	0(r1)	;
    6ed6:	81 4b 02 00 	mov	r11,	2(r1)	;

00006eda <.Loc.40.1>:
    6eda:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    6ede:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    6ee2:	00 00 

00006ee4 <.LBE3>:
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    6ee4:	82 4e 1a 05 	mov	r14,	&0x051a	;

00006ee8 <.Loc.43.1>:
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    6ee8:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6eec:	10 05 

00006eee <.Loc.44.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6eee:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    6ef2:	10 05 

00006ef4 <.Loc.46.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    6ef4:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

00006ef8 <.Loc.47.1>:
}
    6ef8:	21 52       	add	#4,	r1	;r2 As==10

00006efa <.LCFI2>:
    6efa:	0a 17       	popm	#1,	r10	;16-bit words

00006efc <.LCFI3>:
    6efc:	30 41       	ret			

00006efe <__mcu_init>:

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    6efe:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    6f02:	5c 01 

00006f04 <.Loc.40.1>:


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    6f04:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    6f08:	40 01 

00006f0a <L0^A>:
  __delay_cycles(3);
    6f0a:	00 3c       	jmp	$+2      	;abs 0x6f0c
    6f0c:	03 43       	nop			

00006f0e <.Loc.44.1>:

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    6f0e:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6f12:	41 01 

00006f14 <L0^A>:
  
  __delay_cycles(3);
    6f14:	00 3c       	jmp	$+2      	;abs 0x6f16
    6f16:	03 43       	nop			

00006f18 <.Loc.48.1>:

  __led_init(LED1);
    6f18:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6f1c:	23 02 

00006f1e <.Loc.48.1>:
    6f1e:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    6f22:	25 02 

00006f24 <.Loc.48.1>:
    6f24:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6f28:	23 02 

00006f2a <.Loc.48.1>:
  __led_init(LED2);
    6f2a:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006f2e <.Loc.49.1>:
    6f2e:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

00006f32 <.Loc.49.1>:
    6f32:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006f36 <.Loc.49.1>:
  
  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    6f36:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

00006f3a <.Loc.53.1>:

}
    6f3a:	30 41       	ret			

00006f3c <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    6f3c:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006f40 <.Loc.83.1>:
    6f40:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00006f44 <.Loc.83.1>:
    6f44:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

00006f48 <.Loc.83.1>:
    6f48:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006f4c <.Loc.83.1>:
    6f4c:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006f50 <.Loc.83.1>:
    6f50:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00006f54 <.Loc.83.1>:
    6f54:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

00006f58 <.Loc.83.1>:
    6f58:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006f5c <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    6f5c:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006f60 <.Loc.88.1>:
}
    6f60:	30 41       	ret			

00006f62 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    6f62:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006f66 <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    6f66:	0e 4c       	mov	r12,	r14	;
    6f68:	5e 09       	rram	#3,	r14	;

00006f6a <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    6f6a:	7e f0 07 00 	and.b	#7,	r14	;

00006f6e <.Loc.99.1>:
    6f6e:	dd de c4 4e 	bis.b	20164(r14),8(r13)	;0x04ec4
    6f72:	08 00 

00006f74 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    6f74:	0d 5e       	add	r14,	r13	;

00006f76 <.LVL12>:
    6f76:	7c f0 07 00 	and.b	#7,	r12	;

00006f7a <.LVL13>:
    6f7a:	dd dc c4 4e 	bis.b	20164(r12),0(r13)	;0x04ec4
    6f7e:	00 00 

00006f80 <.Loc.101.1>:
}
    6f80:	30 41       	ret			

00006f82 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    6f82:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006f86 <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    6f86:	0e 4c       	mov	r12,	r14	;
    6f88:	5e 09       	rram	#3,	r14	;

00006f8a <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    6f8a:	7e f0 07 00 	and.b	#7,	r14	;
    6f8e:	0f 4d       	mov	r13,	r15	;
    6f90:	0f 5e       	add	r14,	r15	;

00006f92 <.Loc.112.1>:
    6f92:	7c f0 07 00 	and.b	#7,	r12	;

00006f96 <.LVL16>:
    6f96:	df cc c4 4e 	bic.b	20164(r12),0(r15)	;0x04ec4
    6f9a:	00 00 

00006f9c <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    6f9c:	6c 4f       	mov.b	@r15,	r12	;

00006f9e <.Loc.114.1>:
    6f9e:	0c 93       	cmp	#0,	r12	;r3 As==00
    6fa0:	03 20       	jnz	$+8      	;abs 0x6fa8

00006fa2 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    6fa2:	dd ce c4 4e 	bic.b	20164(r14),8(r13)	;0x04ec4
    6fa6:	08 00 

00006fa8 <.L3>:
    }
}
    6fa8:	30 41       	ret			

00006faa <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    6faa:	5d 4c 08 00 	mov.b	8(r12),	r13	;

00006fae <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    6fae:	5d 4d c4 4d 	mov.b	19908(r13),r13	;0x04dc4

00006fb2 <.LVL19>:
    6fb2:	0c 5d       	add	r13,	r12	;

00006fb4 <.LVL20>:
    6fb4:	6e 4c       	mov.b	@r12,	r14	;

00006fb6 <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    6fb6:	0c 4d       	mov	r13,	r12	;
    6fb8:	5c 0a       	rlam	#3,	r12	;

00006fba <.Loc.128.1>:
}
    6fba:	5c de c4 4d 	bis.b	19908(r14),r12	;0x04dc4
    6fbe:	30 41       	ret			

00006fc0 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    6fc0:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

00006fc4 <.Loc.157.1>:
    TA2CTL = 0;
    6fc4:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006fc8 <.Loc.158.1>:
}
    6fc8:	30 41       	ret			

00006fca <timerA2_init>:
    6fca:	b0 12 c0 6f 	call	#28608		;#0x6fc0
    6fce:	30 41       	ret			

00006fd0 <set_timer_wkup>:
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    6fd0:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

00006fd4 <.Loc.179.1>:
    TA0CCR0 = ticks;
    6fd4:	82 4c 52 03 	mov	r12,	&0x0352	;

00006fd8 <.Loc.180.1>:
    TA0CCTL0 = CCIE;
    6fd8:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    6fdc:	42 03 

00006fde <.Loc.181.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6fde:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    6fe2:	40 03 

00006fe4 <.Loc.182.1>:
}
    6fe4:	30 41       	ret			

00006fe6 <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    6fe6:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

00006fea <.Loc.186.1>:
    TA2CCR0 = ticks;
    6fea:	82 4c 12 04 	mov	r12,	&0x0412	;

00006fee <.Loc.187.1>:
    TA2CCTL0 = CCIE;
    6fee:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    6ff2:	02 04 

00006ff4 <.Loc.188.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    6ff4:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    6ff8:	00 04 

00006ffa <.Loc.190.1>:

}
    6ffa:	30 41       	ret			

00006ffc <stop_timer_xpr>:
    6ffc:	b0 12 c0 6f 	call	#28608		;#0x6fc0
    7000:	30 41       	ret			

00007002 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    7002:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

00007006 <.Loc.202.1>:
    TA1CCR0 = ticks;
    7006:	82 4c 92 03 	mov	r12,	&0x0392	;

0000700a <.Loc.203.1>:
    TA1CCTL0 = CCIE;
    700a:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    700e:	82 03 

00007010 <.Loc.204.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    7010:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    7014:	80 03 

00007016 <.Loc.205.1>:
}
    7016:	30 41       	ret			

00007018 <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    7018:	30 41       	ret			

0000701a <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    701a:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    701e:	61 01 

00007020 <.Loc.253.1>:
  CSCTL2 = SELA__VLOCLK;
    7020:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    7024:	64 01 

00007026 <.Loc.254.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    7026:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000702a <.Loc.255.1>:
  CSCTL0_H = 0;
    702a:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

0000702e <.Loc.257.1>:

}
    702e:	30 41       	ret			

00007030 <__get_rtc_time>:
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    7030:	4c 43       	clr.b	r12		;
    7032:	4d 43       	clr.b	r13		;
    7034:	30 41       	ret			

00007036 <__get_time_init>:
{   
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    7036:	82 43 7e 60 	mov	#0,	&0x607e	;r3 As==00
    703a:	82 43 80 60 	mov	#0,	&0x6080	;r3 As==00

0000703e <.Loc.337.1>:

    //stop TA1 timer
    TA3CTL = 0;
    703e:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007042 <.Loc.339.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    7042:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    7046:	40 04 

00007048 <.Loc.341.1>:

    __bis_SR_register(GIE);
    7048:	03 43       	nop			
    704a:	32 d2       	eint			
    704c:	03 43       	nop			

0000704e <.Loc.342.1>:
}
    704e:	30 41       	ret			

00007050 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    7050:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00007054 <.Loc.350.1>:
    TA3CCTL0 = 0;
    7054:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

00007058 <.Loc.351.1>:
}
    7058:	30 41       	ret			

0000705a <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    705a:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    705e:	40 04 

00007060 <.Loc.363.1>:

   tmp = TA3R;
    7060:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00007064 <.Loc.365.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    7064:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    7068:	40 04 

0000706a <.Loc.369.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    706a:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    706e:	b0 12 e4 73 	call	#29668		;#0x73e4

00007072 <.Loc.370.1>:
}
    7072:	1c 52 7e 60 	add	&0x607e,r12	;0x607e
    7076:	1d 62 80 60 	addc	&0x6080,r13	;0x6080
    707a:	30 41       	ret			

0000707c <isr_TIMER3_A1_VECTOR>:
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    707c:	b2 50 aa 00 	add	#170,	&0x607e	;#0x00aa
    7080:	7e 60 
    7082:	b2 60 0a 00 	addc	#10,	&0x6080	;#0x000a
    7086:	80 60 

00007088 <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    7088:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

0000708c <.Loc.381.1>:
}
    708c:	00 13       	reti			

0000708e <_pers_timer_init>:

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    708e:	3c 40 82 60 	mov	#24706,	r12	;#0x6082
    7092:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

00007096 <.Loc.34.1>:
    7096:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

0000709a <.Loc.34.1>:
    709a:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

0000709e <.Loc.34.1>:
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED; 
    709e:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

000070a2 <.Loc.38.1>:
    70a2:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

000070a6 <.Loc.38.1>:
    70a6:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

000070aa <.Loc.38.1>:
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED; 
    70aa:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

000070ae <.Loc.42.1>:
	}
}
    70ae:	30 41       	ret			

000070b0 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    70b0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000070b4 <.Loc.50.1>:
	//update the persistent timer dirty buffer
	switch(interface)
    70b4:	1d 93       	cmp	#1,	r13	;r3 As==01
    70b6:	1a 24       	jz	$+54     	;abs 0x70ec
    70b8:	2d 93       	cmp	#2,	r13	;r3 As==10
    70ba:	0d 24       	jz	$+28     	;abs 0x70d6
    70bc:	0d 93       	cmp	#0,	r13	;r3 As==00
    70be:	0a 20       	jnz	$+22     	;abs 0x70d4

000070c0 <.Loc.53.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    70c0:	0d 4c       	mov	r12,	r13	;

000070c2 <.LVL9>:
    70c2:	5d 06       	rlam	#2,	r13	;
    70c4:	0c 5d       	add	r13,	r12	;

000070c6 <.LVL10>:
    70c6:	5c 02       	rlam	#1,	r12	;
    70c8:	8c 4e ea 60 	mov	r14,	24810(r12); 0x60ea
    70cc:	8c 4f ec 60 	mov	r15,	24812(r12); 0x60ec

000070d0 <.Loc.54.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    70d0:	9c 43 ee 60 	mov	#1,	24814(r12);r3 As==01, 0x60ee

000070d4 <.L2>:
		default:
			break;
	}

		
}
    70d4:	30 41       	ret			

000070d6 <.L4>:
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    70d6:	0d 4c       	mov	r12,	r13	;

000070d8 <.LVL12>:
    70d8:	5d 06       	rlam	#2,	r13	;
    70da:	0c 5d       	add	r13,	r12	;
    70dc:	5c 02       	rlam	#1,	r12	;
    70de:	8c 4e 08 61 	mov	r14,	24840(r12); 0x6108
    70e2:	8c 4f 0a 61 	mov	r15,	24842(r12); 0x610a

000070e6 <.Loc.58.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    70e6:	9c 43 0c 61 	mov	#1,	24844(r12);r3 As==01, 0x610c
    70ea:	f4 3f       	jmp	$-22     	;abs 0x70d4

000070ec <.L3>:
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    70ec:	0d 4c       	mov	r12,	r13	;

000070ee <.LVL14>:
    70ee:	5d 06       	rlam	#2,	r13	;
    70f0:	0c 5d       	add	r13,	r12	;
    70f2:	5c 02       	rlam	#1,	r12	;
    70f4:	8c 4e 26 61 	mov	r14,	24870(r12); 0x6126
    70f8:	8c 4f 28 61 	mov	r15,	24872(r12); 0x6128

000070fc <.Loc.62.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    70fc:	9c 43 2a 61 	mov	#1,	24874(r12);r3 As==01, 0x612a

00007100 <.Loc.63.1>:
			break;
    7100:	e9 3f       	jmp	$-44     	;abs 0x70d4

00007102 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    7102:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    7106:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000710a <.Loc.73.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    710a:	1d 93       	cmp	#1,	r13	;r3 As==01
    710c:	16 24       	jz	$+46     	;abs 0x713a
    710e:	2d 93       	cmp	#2,	r13	;r3 As==10
    7110:	0b 24       	jz	$+24     	;abs 0x7128
    7112:	0d 93       	cmp	#0,	r13	;r3 As==00
    7114:	08 20       	jnz	$+18     	;abs 0x7126

00007116 <.Loc.76.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    7116:	0d 4c       	mov	r12,	r13	;

00007118 <.LVL16>:
    7118:	5d 06       	rlam	#2,	r13	;
    711a:	0c 5d       	add	r13,	r12	;

0000711c <.LVL17>:
    711c:	5c 02       	rlam	#1,	r12	;
    711e:	cc 4e e8 60 	mov.b	r14,	24808(r12); 0x60e8

00007122 <.Loc.77.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7122:	9c 43 ee 60 	mov	#1,	24814(r12);r3 As==01, 0x60ee

00007126 <.L7>:
			break;
		default:
			break;
	}

}
    7126:	30 41       	ret			

00007128 <.L9>:
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    7128:	0d 4c       	mov	r12,	r13	;

0000712a <.LVL19>:
    712a:	5d 06       	rlam	#2,	r13	;
    712c:	0c 5d       	add	r13,	r12	;
    712e:	5c 02       	rlam	#1,	r12	;
    7130:	cc 4e 06 61 	mov.b	r14,	24838(r12); 0x6106

00007134 <.Loc.81.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    7134:	9c 43 0c 61 	mov	#1,	24844(r12);r3 As==01, 0x610c
    7138:	f6 3f       	jmp	$-18     	;abs 0x7126

0000713a <.L8>:
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    713a:	0d 4c       	mov	r12,	r13	;

0000713c <.LVL21>:
    713c:	5d 06       	rlam	#2,	r13	;
    713e:	0c 5d       	add	r13,	r12	;
    7140:	5c 02       	rlam	#1,	r12	;
    7142:	cc 4e 24 61 	mov.b	r14,	24868(r12); 0x6124

00007146 <.Loc.85.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    7146:	9c 43 2a 61 	mov	#1,	24874(r12);r3 As==01, 0x612a

0000714a <.Loc.86.1>:
}
    714a:	ed 3f       	jmp	$-36     	;abs 0x7126

0000714c <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    714c:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00007150 <.Loc.95.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    7150:	1d 93       	cmp	#1,	r13	;r3 As==01
    7152:	16 24       	jz	$+46     	;abs 0x7180
    7154:	2d 93       	cmp	#2,	r13	;r3 As==10
    7156:	0b 24       	jz	$+24     	;abs 0x716e
    7158:	0d 93       	cmp	#0,	r13	;r3 As==00
    715a:	08 20       	jnz	$+18     	;abs 0x716c

0000715c <.Loc.98.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].status = status;
    715c:	0d 4c       	mov	r12,	r13	;

0000715e <.LVL23>:
    715e:	5d 06       	rlam	#2,	r13	;
    7160:	0c 5d       	add	r13,	r12	;

00007162 <.LVL24>:
    7162:	5c 02       	rlam	#1,	r12	;
    7164:	8c 4e e6 60 	mov	r14,	24806(r12); 0x60e6

00007168 <.Loc.99.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    7168:	9c 43 ee 60 	mov	#1,	24814(r12);r3 As==01, 0x60ee

0000716c <.L12>:
			break;
		default:
			break;

	}
}
    716c:	30 41       	ret			

0000716e <.L14>:
			pers_timer_vars[1].xpr_timing[idx].status = status;
    716e:	0d 4c       	mov	r12,	r13	;

00007170 <.LVL26>:
    7170:	5d 06       	rlam	#2,	r13	;
    7172:	0c 5d       	add	r13,	r12	;
    7174:	5c 02       	rlam	#1,	r12	;
    7176:	8c 4e 04 61 	mov	r14,	24836(r12); 0x6104

0000717a <.Loc.103.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    717a:	9c 43 0c 61 	mov	#1,	24844(r12);r3 As==01, 0x610c
    717e:	f6 3f       	jmp	$-18     	;abs 0x716c

00007180 <.L13>:
			pers_timer_vars[1].pdc_timing[idx].status = status;
    7180:	0d 4c       	mov	r12,	r13	;

00007182 <.LVL28>:
    7182:	5d 06       	rlam	#2,	r13	;
    7184:	0c 5d       	add	r13,	r12	;
    7186:	5c 02       	rlam	#1,	r12	;
    7188:	8c 4e 22 61 	mov	r14,	24866(r12); 0x6122

0000718c <.Loc.107.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    718c:	9c 43 2a 61 	mov	#1,	24874(r12);r3 As==01, 0x612a

00007190 <.Loc.108.1>:
}
    7190:	ed 3f       	jmp	$-36     	;abs 0x716c

00007192 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    7192:	0e 4c       	mov	r12,	r14	;
    7194:	5e 0a       	rlam	#3,	r14	;
    7196:	ce 4d 2e 61 	mov.b	r13,	24878(r14); 0x612e

0000719a <.Loc.118.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    719a:	9e 43 32 61 	mov	#1,	24882(r14);r3 As==01, 0x6132

0000719e <.Loc.119.1>:
}
    719e:	30 41       	ret			

000071a0 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    71a0:	0e 4c       	mov	r12,	r14	;
    71a2:	5e 0a       	rlam	#3,	r14	;
    71a4:	8e 4d 30 61 	mov	r13,	24880(r14); 0x6130

000071a8 <.Loc.124.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    71a8:	9e 43 32 61 	mov	#1,	24882(r14);r3 As==01, 0x6132

000071ac <.Loc.125.1>:
}
    71ac:	30 41       	ret			

000071ae <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    71ae:	1c 93       	cmp	#1,	r12	;r3 As==01
    71b0:	0a 24       	jz	$+22     	;abs 0x71c6
    71b2:	2c 93       	cmp	#2,	r12	;r3 As==10
    71b4:	05 24       	jz	$+12     	;abs 0x71c0
    71b6:	0c 93       	cmp	#0,	r12	;r3 As==00
    71b8:	02 20       	jnz	$+6      	;abs 0x71be

000071ba <.Loc.132.1>:
	{
		case WKUP:
			wkup_tstatus = TIMER_COMMIT;
    71ba:	92 43 4a 61 	mov	#1,	&0x614a	;r3 As==01

000071be <.L19>:
		default:
			break;

	}

}
    71be:	30 41       	ret			

000071c0 <.L21>:
			xpr_tstatus = TIMER_COMMIT;
    71c0:	92 43 4c 61 	mov	#1,	&0x614c	;r3 As==01

000071c4 <.Loc.136.1>:
		break;
    71c4:	fc 3f       	jmp	$-6      	;abs 0x71be

000071c6 <.L20>:
			pdc_tstatus = TIMER_COMMIT;
    71c6:	92 43 4e 61 	mov	#1,	&0x614e	;r3 As==01

000071ca <.Loc.139.1>:
}
    71ca:	f9 3f       	jmp	$-12     	;abs 0x71be

000071cc <_commit_timer_buffers>:

//commit into the persistent buffer

void _commit_timer_buffers(ink_time_interface_t interface){
    71cc:	1a 15       	pushm	#2,	r10	;16-bit words

000071ce <.LCFI0>:
    71ce:	0a 4c       	mov	r12,	r10	;

000071d0 <.Loc.151.1>:
	
	uint8_t i;
	
	switch (interface){
    71d0:	1c 93       	cmp	#1,	r12	;r3 As==01
    71d2:	52 24       	jz	$+166    	;abs 0x7278
    71d4:	2c 93       	cmp	#2,	r12	;r3 As==10
    71d6:	39 24       	jz	$+116    	;abs 0x724a
    71d8:	0c 93       	cmp	#0,	r12	;r3 As==00
    71da:	16 20       	jnz	$+46     	;abs 0x7208
    71dc:	3f 40 82 60 	mov	#24706,	r15	;#0x6082
    71e0:	39 40 a0 60 	mov	#24736,	r9	;#0x60a0

000071e4 <.L28>:
		case WKUP:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
		{
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    71e4:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    71e8:	0b 20       	jnz	$+24     	;abs 0x7200

000071ea <.Loc.160.1>:
			{
				
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    71ea:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    71ee:	0d 4f       	mov	r15,	r13	;
    71f0:	3d 50 64 00 	add	#100,	r13	;#0x0064
    71f4:	0c 4f       	mov	r15,	r12	;
    71f6:	b0 12 fc 73 	call	#29692		;#0x73fc
    71fa:	0f 4c       	mov	r12,	r15	;

000071fc <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    71fc:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

00007200 <.L27>:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    7200:	3f 50 0a 00 	add	#10,	r15	;#0x000a

00007204 <.Loc.155.1>:
    7204:	09 9f       	cmp	r15,	r9	;
    7206:	ee 23       	jnz	$-34     	;abs 0x71e4

00007208 <.L26>:
void _commit_timer_buffers(ink_time_interface_t interface){
    7208:	7f 40 03 00 	mov.b	#3,	r15	;

0000720c <.L33>:
		break;
	}	

	for (i = 0; i < TIMER_TOOLS; i++)
	{
		if (	pers_timer_vars[1].next_info[interface].__dirty == DIRTY)
    720c:	0c 4a       	mov	r10,	r12	;
    720e:	5c 0a       	rlam	#3,	r12	;

00007210 <.Loc.193.1>:
    7210:	9c 93 32 61 	cmp	#1,	24882(r12);r3 As==01, 0x6132
    7214:	13 20       	jnz	$+40     	;abs 0x723c

00007216 <.Loc.195.1>:
		{
			pers_timer_vars[0].next_info[interface] = 
    7216:	0c 4a       	mov	r10,	r12	;
    7218:	5c 0a       	rlam	#3,	r12	;
    721a:	0d 4c       	mov	r12,	r13	;
    721c:	3d 50 82 60 	add	#24706,	r13	;#0x6082
    7220:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    7224:	46 00 
    7226:	9c 4c 2e 61 	mov	24878(r12),24778(r12);0x0612e, 0x60ca
    722a:	ca 60 
    722c:	9c 4c 30 61 	mov	24880(r12),24780(r12);0x06130, 0x60cc
    7230:	cc 60 
    7232:	9c 4c 32 61 	mov	24882(r12),24782(r12);0x06132, 0x60ce
    7236:	ce 60 

00007238 <.Loc.197.1>:
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty = 
    7238:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

0000723c <.L32>:
	for (i = 0; i < TIMER_TOOLS; i++)
    723c:	4c 4f       	mov.b	r15,	r12	;
    723e:	7c 53       	add.b	#-1,	r12	;r3 As==11
    7240:	4f 4c       	mov.b	r12,	r15	;

00007242 <.Loc.191.1>:
    7242:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    7244:	e3 23       	jnz	$-56     	;abs 0x720c

00007246 <.Loc.201.1>:
				NOT_DIRTY;
		}
	}
}
    7246:	19 17       	popm	#2,	r10	;16-bit words

00007248 <.LCFI1>:
    7248:	30 41       	ret			

0000724a <.L25>:
    724a:	39 40 82 60 	mov	#24706,	r9	;#0x6082

0000724e <.L30>:
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    724e:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    7252:	0c 20       	jnz	$+26     	;abs 0x726c

00007254 <.Loc.171.1>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    7254:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7258:	0d 49       	mov	r9,	r13	;
    725a:	3d 50 82 00 	add	#130,	r13	;#0x0082
    725e:	0c 49       	mov	r9,	r12	;
    7260:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    7264:	b0 12 fc 73 	call	#29692		;#0x73fc

00007268 <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    7268:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

0000726c <.L29>:
		for (i = 0; i < MAX_XPR_THREADS; i++)
    726c:	39 50 0a 00 	add	#10,	r9	;#0x000a

00007270 <.Loc.166.1>:
    7270:	39 90 a0 60 	cmp	#24736,	r9	;#0x60a0
    7274:	ec 23       	jnz	$-38     	;abs 0x724e
    7276:	c8 3f       	jmp	$-110    	;abs 0x7208

00007278 <.L24>:
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    7278:	92 93 2a 61 	cmp	#1,	&0x612a	;r3 As==01
    727c:	c5 23       	jnz	$-116    	;abs 0x7208

0000727e <.Loc.182.1>:
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    727e:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    7282:	3d 40 22 61 	mov	#24866,	r13	;#0x6122
    7286:	3c 40 be 60 	mov	#24766,	r12	;#0x60be
    728a:	b0 12 fc 73 	call	#29692		;#0x73fc

0000728e <.Loc.183.1>:
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    728e:	82 43 c6 60 	mov	#0,	&0x60c6	;r3 As==00

00007292 <.Loc.177.1>:
		for (i = 0; i < MAX_PDC_THREADS; i++)
    7292:	ba 3f       	jmp	$-138    	;abs 0x7208

00007294 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    7294:	1c 93       	cmp	#1,	r12	;r3 As==01
    7296:	16 24       	jz	$+46     	;abs 0x72c4
    7298:	2c 93       	cmp	#2,	r12	;r3 As==10
    729a:	0b 24       	jz	$+24     	;abs 0x72b2
    729c:	0c 93       	cmp	#0,	r12	;r3 As==00
    729e:	08 20       	jnz	$+18     	;abs 0x72b0

000072a0 <.Loc.207.1>:
	{
		case WKUP:
		    if (wkup_tstatus == TIMER_COMMIT)
    72a0:	1d 42 4a 61 	mov	&0x614a,r13	;0x614a

000072a4 <.Loc.207.1>:
    72a4:	1d 93       	cmp	#1,	r13	;r3 As==01
    72a6:	04 20       	jnz	$+10     	;abs 0x72b0

000072a8 <.Loc.209.1>:
		    {
		    	_commit_timer_buffers(interface);
    72a8:	b0 12 cc 71 	call	#29132		;#0x71cc

000072ac <.LVL43>:
		        wkup_tstatus = TIMER_DONE;
    72ac:	a2 43 4a 61 	mov	#2,	&0x614a	;r3 As==10

000072b0 <.L39>:
			break;
		default:
			break;

	}
}
    72b0:	30 41       	ret			

000072b2 <.L41>:
			if (xpr_tstatus == TIMER_COMMIT)
    72b2:	1d 42 4c 61 	mov	&0x614c,r13	;0x614c

000072b6 <.Loc.214.1>:
    72b6:	1d 93       	cmp	#1,	r13	;r3 As==01
    72b8:	fb 23       	jnz	$-8      	;abs 0x72b0

000072ba <.Loc.216.1>:
		    	_commit_timer_buffers(interface);
    72ba:	b0 12 cc 71 	call	#29132		;#0x71cc

000072be <.LVL45>:
		        xpr_tstatus = TIMER_DONE;
    72be:	a2 43 4c 61 	mov	#2,	&0x614c	;r3 As==10
    72c2:	f6 3f       	jmp	$-18     	;abs 0x72b0

000072c4 <.L40>:
			if (pdc_tstatus == TIMER_COMMIT)
    72c4:	1d 42 4e 61 	mov	&0x614e,r13	;0x614e

000072c8 <.Loc.220.1>:
    72c8:	1d 93       	cmp	#1,	r13	;r3 As==01
    72ca:	f2 23       	jnz	$-26     	;abs 0x72b0

000072cc <.Loc.222.1>:
		    	_commit_timer_buffers(interface);
    72cc:	b0 12 cc 71 	call	#29132		;#0x71cc

000072d0 <.LVL47>:
		        pdc_tstatus = TIMER_DONE;
    72d0:	a2 43 4e 61 	mov	#2,	&0x614e	;r3 As==10

000072d4 <.Loc.230.1>:
}
    72d4:	ed 3f       	jmp	$-36     	;abs 0x72b0

000072d6 <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    72d6:	0a 15       	pushm	#1,	r10	;16-bit words

000072d8 <.LCFI3>:
    72d8:	0a 4c       	mov	r12,	r10	;
    72da:	4f 4d       	mov.b	r13,	r15	;

000072dc <.Loc.233.1>:
	switch (interface)
    72dc:	0d 4f       	mov	r15,	r13	;
    72de:	5d 06       	rlam	#2,	r13	;

000072e0 <.LVL49>:
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    72e0:	0d 5f       	add	r15,	r13	;
    72e2:	5d 02       	rlam	#1,	r13	;

000072e4 <.Loc.233.1>:
	switch (interface)
    72e4:	1e 93       	cmp	#1,	r14	;r3 As==01
    72e6:	0b 24       	jz	$+24     	;abs 0x72fe
    72e8:	2e 93       	cmp	#2,	r14	;r3 As==10
    72ea:	0e 20       	jnz	$+30     	;abs 0x7308

000072ec <.Loc.238.1>:
			return pers_timer_vars[0].xpr_timing[idx];
    72ec:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

000072f0 <.LVL50>:
    72f0:	3d 50 a0 60 	add	#24736,	r13	;#0x60a0

000072f4 <.L47>:
		    return pers_timer_vars[0].wkup_timing[idx];
    72f4:	b0 12 fc 73 	call	#29692		;#0x73fc

000072f8 <.LVL51>:
	}
		
}
    72f8:	0c 4a       	mov	r10,	r12	;
    72fa:	0a 17       	popm	#1,	r10	;16-bit words

000072fc <.LCFI4>:
    72fc:	30 41       	ret			

000072fe <.L44>:
			return pers_timer_vars[0].pdc_timing[idx];
    72fe:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00007302 <.LVL53>:
    7302:	3d 50 be 60 	add	#24766,	r13	;#0x60be
    7306:	f6 3f       	jmp	$-18     	;abs 0x72f4

00007308 <.L45>:
		    return pers_timer_vars[0].wkup_timing[idx];
    7308:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

0000730c <.LVL55>:
    730c:	3d 50 82 60 	add	#24706,	r13	;#0x6082
    7310:	f1 3f       	jmp	$-28     	;abs 0x72f4

00007312 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    7312:	4e 4c       	mov.b	r12,	r14	;

00007314 <.Loc.249.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    7314:	1d 93       	cmp	#1,	r13	;r3 As==01
    7316:	13 24       	jz	$+40     	;abs 0x733e
    7318:	2d 93       	cmp	#2,	r13	;r3 As==10
    731a:	0a 24       	jz	$+22     	;abs 0x7330
    731c:	4c 43       	clr.b	r12		;

0000731e <.LVL57>:
    731e:	0d 93       	cmp	#0,	r13	;r3 As==00
    7320:	06 20       	jnz	$+14     	;abs 0x732e

00007322 <.Loc.252.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].data ;		
    7322:	0c 4e       	mov	r14,	r12	;
    7324:	5c 06       	rlam	#2,	r12	;
    7326:	0c 5e       	add	r14,	r12	;
    7328:	5c 02       	rlam	#1,	r12	;
    732a:	1c 4c 86 60 	mov	24710(r12),r12	;0x06086

0000732e <.L48>:
		default:
			return 0;

	}

}
    732e:	30 41       	ret			

00007330 <.L50>:
			return pers_timer_vars[0].xpr_timing[idx].data ;			
    7330:	0c 4e       	mov	r14,	r12	;

00007332 <.LVL59>:
    7332:	5c 06       	rlam	#2,	r12	;
    7334:	0c 5e       	add	r14,	r12	;
    7336:	5c 02       	rlam	#1,	r12	;
    7338:	1c 4c a4 60 	mov	24740(r12),r12	;0x060a4
    733c:	f8 3f       	jmp	$-14     	;abs 0x732e

0000733e <.L49>:
			return pers_timer_vars[0].pdc_timing[idx].data ;			
    733e:	0c 4e       	mov	r14,	r12	;

00007340 <.LVL61>:
    7340:	5c 06       	rlam	#2,	r12	;
    7342:	0c 5e       	add	r14,	r12	;
    7344:	5c 02       	rlam	#1,	r12	;
    7346:	1c 4c c2 60 	mov	24770(r12),r12	;0x060c2
    734a:	f1 3f       	jmp	$-28     	;abs 0x732e

0000734c <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    734c:	4e 4c       	mov.b	r12,	r14	;

0000734e <.Loc.266.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    734e:	1d 93       	cmp	#1,	r13	;r3 As==01
    7350:	13 24       	jz	$+40     	;abs 0x7378
    7352:	2d 93       	cmp	#2,	r13	;r3 As==10
    7354:	0a 24       	jz	$+22     	;abs 0x736a
    7356:	4c 43       	clr.b	r12		;

00007358 <.LVL63>:
    7358:	0d 93       	cmp	#0,	r13	;r3 As==00
    735a:	06 20       	jnz	$+14     	;abs 0x7368

0000735c <.Loc.269.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    735c:	0c 4e       	mov	r14,	r12	;
    735e:	5c 06       	rlam	#2,	r12	;
    7360:	0c 5e       	add	r14,	r12	;
    7362:	5c 02       	rlam	#1,	r12	;
    7364:	5c 4c 84 60 	mov.b	24708(r12),r12	;0x06084

00007368 <.L56>:
		default:
		    return	0;
	}


}
    7368:	30 41       	ret			

0000736a <.L55>:
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    736a:	0c 4e       	mov	r14,	r12	;

0000736c <.LVL65>:
    736c:	5c 06       	rlam	#2,	r12	;
    736e:	0c 5e       	add	r14,	r12	;
    7370:	5c 02       	rlam	#1,	r12	;
    7372:	5c 4c a2 60 	mov.b	24738(r12),r12	;0x060a2
    7376:	f8 3f       	jmp	$-14     	;abs 0x7368

00007378 <.L54>:
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    7378:	0c 4e       	mov	r14,	r12	;

0000737a <.LVL67>:
    737a:	5c 06       	rlam	#2,	r12	;
    737c:	0c 5e       	add	r14,	r12	;
    737e:	5c 02       	rlam	#1,	r12	;
    7380:	5c 4c c0 60 	mov.b	24768(r12),r12	;0x060c0
    7384:	f1 3f       	jmp	$-28     	;abs 0x7368

00007386 <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    7386:	4e 4c       	mov.b	r12,	r14	;

00007388 <.Loc.283.1>:
	//get the persistent timer from persistent buffer
switch (interface)
    7388:	1d 93       	cmp	#1,	r13	;r3 As==01
    738a:	13 24       	jz	$+40     	;abs 0x73b2
    738c:	2d 93       	cmp	#2,	r13	;r3 As==10
    738e:	0a 24       	jz	$+22     	;abs 0x73a4
    7390:	5c 43       	mov.b	#1,	r12	;r3 As==01

00007392 <.LVL69>:
    7392:	0d 93       	cmp	#0,	r13	;r3 As==00
    7394:	06 20       	jnz	$+14     	;abs 0x73a2

00007396 <.Loc.286.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].status ;
    7396:	0c 4e       	mov	r14,	r12	;
    7398:	5c 06       	rlam	#2,	r12	;
    739a:	0c 5e       	add	r14,	r12	;
    739c:	5c 02       	rlam	#1,	r12	;
    739e:	1c 4c 82 60 	mov	24706(r12),r12	;0x06082

000073a2 <.L58>:
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    73a2:	30 41       	ret			

000073a4 <.L60>:
			return pers_timer_vars[0].xpr_timing[idx].status ;
    73a4:	0c 4e       	mov	r14,	r12	;

000073a6 <.LVL71>:
    73a6:	5c 06       	rlam	#2,	r12	;
    73a8:	0c 5e       	add	r14,	r12	;
    73aa:	5c 02       	rlam	#1,	r12	;
    73ac:	1c 4c a0 60 	mov	24736(r12),r12	;0x060a0
    73b0:	f8 3f       	jmp	$-14     	;abs 0x73a2

000073b2 <.L59>:
			return pers_timer_vars[0].pdc_timing[idx].status ;
    73b2:	0c 4e       	mov	r14,	r12	;

000073b4 <.LVL73>:
    73b4:	5c 06       	rlam	#2,	r12	;
    73b6:	0c 5e       	add	r14,	r12	;
    73b8:	5c 02       	rlam	#1,	r12	;
    73ba:	1c 4c be 60 	mov	24766(r12),r12	;0x060be
    73be:	f1 3f       	jmp	$-28     	;abs 0x73a2

000073c0 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    73c0:	5c 0a       	rlam	#3,	r12	;

000073c2 <.LVL75>:
}
    73c2:	5c 4c ca 60 	mov.b	24778(r12),r12	;0x060ca
    73c6:	30 41       	ret			

000073c8 <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    73c8:	5c 0a       	rlam	#3,	r12	;

000073ca <.LVL77>:
}
    73ca:	1c 4c cc 60 	mov	24780(r12),r12	;0x060cc
    73ce:	30 41       	ret			

000073d0 <__mulhi2>:
    73d0:	02 12       	push	r2		;
    73d2:	32 c2       	dint			
    73d4:	03 43       	nop			
    73d6:	82 4c c0 04 	mov	r12,	&0x04c0	;
    73da:	82 4d c8 04 	mov	r13,	&0x04c8	;
    73de:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    73e2:	00 13       	reti			

000073e4 <__umulhisi2>:
    73e4:	02 12       	push	r2		;
    73e6:	32 c2       	dint			
    73e8:	03 43       	nop			
    73ea:	82 4c c0 04 	mov	r12,	&0x04c0	;
    73ee:	82 4d c8 04 	mov	r13,	&0x04c8	;
    73f2:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    73f6:	
000073f8 <L0^A>:
    73f8:	cc 04       	mova	r4,	r12	;
    73fa:	00 13       	reti			

000073fc <memcpy>:
    73fc:	0f 4c       	mov	r12,	r15	;
    73fe:	0e 5d       	add	r13,	r14	;

00007400 <.L2>:
    7400:	0d 9e       	cmp	r14,	r13	;
    7402:	01 20       	jnz	$+4      	;abs 0x7406

00007404 <.Loc.111.1>:
    7404:	30 41       	ret			

00007406 <.L3>:
    7406:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

0000740a <.LVL4>:
    740a:	1f 53       	inc	r15		;
    740c:	f9 3f       	jmp	$-12     	;abs 0x7400

0000740e <_exit>:
    740e:	ff 3f       	jmp	$+0      	;abs 0x740e

00007410 <memset>:
    7410:	0e 5c       	add	r12,	r14	;

00007412 <L0^A>:
    7412:	0f 4c       	mov	r12,	r15	;

00007414 <.L2>:
    7414:	0f 9e       	cmp	r14,	r15	;
    7416:	01 20       	jnz	$+4      	;abs 0x741a

00007418 <.Loc.104.1>:
    7418:	30 41       	ret			

0000741a <.L3>:
    741a:	1f 53       	inc	r15		;

0000741c <.LVL4>:
    741c:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    7420:	f9 3f       	jmp	$-12     	;abs 0x7414
