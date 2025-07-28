
bin/sort_eval:     file format elf32-msp430


Disassembly of section __interrupt_vector_35:

0000ffd4 <__interrupt_vector_35>:
    ffd4:	
Disassembly of section .text:

0000590e <__crt0_start>:
    590e:	31 40 00 24 	mov	#9216,	r1	;#0x2400

00005912 <__crt0_init_bss>:
    5912:	3c 40 00 1c 	mov	#7168,	r12	;#0x1c00

00005916 <.Loc.76.1>:
    5916:	0d 43       	clr	r13		;

00005918 <.Loc.77.1>:
    5918:	3e 40 62 00 	mov	#98,	r14	;#0x0062

0000591c <.Loc.81.1>:
    591c:	b0 12 24 6b 	call	#27428		;#0x6b24

00005920 <__crt0_call_main>:
    5920:	0c 43       	clr	r12		;

00005922 <.Loc.254.1>:
    5922:	b0 12 60 63 	call	#25440		;#0x6360

00005926 <__crt0_call_exit>:
    5926:	b0 12 22 6b 	call	#27426		;#0x6b22

0000592a <task_init>:
}

ENTRY_TASK(task_init)
{
#if RAISE_PIN
    full_run_started = 1;
    592a:	d2 43 1d 4c 	mov.b	#1,	&0x4c1d	;r3 As==01

0000592e <.Loc.111.1>:
#endif

    __SET(outer_idx, 0);
    592e:	8c 43 c8 00 	mov	#0,	200(r12);r3 As==00, 0x00c8

00005932 <.Loc.112.1>:
    __SET(inner_idx, 1);
    5932:	9c 43 ca 00 	mov	#1,	202(r12);r3 As==01, 0x00ca

00005936 <.Loc.114.1>:

    const uint16_t* array_pt;

    __SET(iteration, ++__GET(iteration));
    5936:	5e 4c cc 00 	mov.b	204(r12),r14	;0x000cc
    593a:	5e 53       	inc.b	r14		;
    593c:	cc 4e cc 00 	mov.b	r14,	204(r12); 0x00cc

00005940 <.Loc.117.1>:
    if (__GET(iteration) & 0x01)
    {
        array_pt = a1;
    5940:	3d 40 b0 48 	mov	#18608,	r13	;#0x48b0

00005944 <.LVL1>:
    if (__GET(iteration) & 0x01)
    5944:	1e b3       	bit	#1,	r14	;r3 As==01
    5946:	02 20       	jnz	$+6      	;abs 0x594c

00005948 <.Loc.123.1>:
    }
    else
    {
        array_pt = a2;
    5948:	3d 40 00 44 	mov	#17408,	r13	;#0x4400

0000594c <.L2>:
    }

    uint16_t idx;
    for (idx = 0; idx < LENGTH; idx++)
    594c:	0e 4d       	mov	r13,	r14	;
    594e:	3e 50 c8 00 	add	#200,	r14	;#0x00c8

00005952 <.L3>:
    {
        __SET(array[idx], array_pt[idx]);
    5952:	bc 4d 00 00 	mov	@r13+,	0(r12)	;
    5956:	2c 53       	incd	r12		;

00005958 <.Loc.127.1>:
    for (idx = 0; idx < LENGTH; idx++)
    5958:	0d 9e       	cmp	r14,	r13	;
    595a:	fb 23       	jnz	$-8      	;abs 0x5952

0000595c <.Loc.132.1>:
    }

    return task_inner_loop;
}
    595c:	3c 40 62 59 	mov	#22882,	r12	;#0x5962
    5960:	30 41       	ret			

00005962 <task_inner_loop>:

TASK(task_inner_loop)
{
    5962:	0a 15       	pushm	#1,	r10	;16-bit words

00005964 <.LCFI0>:
    uint16_t i, j, x_i, x_j, temp;

    i = __GET(outer_idx);
    j = __GET(inner_idx);
    5964:	1d 4c ca 00 	mov	202(r12),r13	;0x000ca

00005968 <.LVL6>:

    x_i = __GET(array[i]);
    5968:	1f 4c c8 00 	mov	200(r12),r15	;0x000c8
    596c:	5f 02       	rlam	#1,	r15	;
    596e:	0f 5c       	add	r12,	r15	;

00005970 <.Loc.142.1>:
    5970:	2a 4f       	mov	@r15,	r10	;

00005972 <.LVL7>:
    x_j = __GET(array[j]);
    5972:	0e 4d       	mov	r13,	r14	;
    5974:	5e 02       	rlam	#1,	r14	;
    5976:	0e 5c       	add	r12,	r14	;

00005978 <.Loc.143.1>:
    5978:	2b 4e       	mov	@r14,	r11	;

0000597a <.Loc.145.1>:

    if (x_i > x_j)
    597a:	0b 9a       	cmp	r10,	r11	;
    597c:	02 2c       	jc	$+6      	;abs 0x5982
    597e:	0a 4b       	mov	r11,	r10	;

00005980 <.LVL9>:
    5980:	2b 4f       	mov	@r15,	r11	;

00005982 <.L7>:
        temp = x_j;
        x_j  = x_i;
        x_i  = temp;
    }

    __SET(array[i], x_i);
    5982:	8f 4a 00 00 	mov	r10,	0(r15)	;

00005986 <.LVL11>:
    __SET(array[j], x_j);
    5986:	8e 4b 00 00 	mov	r11,	0(r14)	;

0000598a <.Loc.154.1>:
    __SET(inner_idx, ++__GET(inner_idx));
    598a:	1d 53       	inc	r13		;

0000598c <.LVL12>:
    598c:	8c 4d ca 00 	mov	r13,	202(r12); 0x00ca

00005990 <.Loc.156.1>:

    if (__GET(inner_idx) < LENGTH)
    {
        return task_inner_loop;
    5990:	3c 40 62 59 	mov	#22882,	r12	;#0x5962

00005994 <.LVL13>:
    if (__GET(inner_idx) < LENGTH)
    5994:	7e 40 63 00 	mov.b	#99,	r14	;#0x0063
    5998:	0e 9d       	cmp	r13,	r14	;
    599a:	02 2c       	jc	$+6      	;abs 0x59a0

0000599c <.Loc.162.1>:
    }
    else
    {
        return task_outer_loop;
    599c:	3c 40 a4 59 	mov	#22948,	r12	;#0x59a4

000059a0 <.L6>:
    }
}
    59a0:	0a 17       	popm	#1,	r10	;16-bit words

000059a2 <.LCFI1>:
    59a2:	30 41       	ret			

000059a4 <task_outer_loop>:

TASK(task_outer_loop)
{
    __SET(outer_idx, ++__GET(outer_idx));
    59a4:	1e 4c c8 00 	mov	200(r12),r14	;0x000c8
    59a8:	0d 4e       	mov	r14,	r13	;
    59aa:	1d 53       	inc	r13		;
    59ac:	8c 4d c8 00 	mov	r13,	200(r12); 0x00c8

000059b0 <.Loc.169.1>:
    __SET(inner_idx, __GET(outer_idx) + 1);
    59b0:	2e 53       	incd	r14		;
    59b2:	8c 4e ca 00 	mov	r14,	202(r12); 0x00ca

000059b6 <.Loc.171.1>:

    if (__GET(outer_idx) < LENGTH - 1)
    {
        return task_inner_loop;
    59b6:	3c 40 62 59 	mov	#22882,	r12	;#0x5962

000059ba <.LVL15>:
    if (__GET(outer_idx) < LENGTH - 1)
    59ba:	7e 40 62 00 	mov.b	#98,	r14	;#0x0062
    59be:	0e 9d       	cmp	r13,	r14	;
    59c0:	02 2c       	jc	$+6      	;abs 0x59c6

000059c2 <.Loc.177.1>:
    }
    else
    {
        return task_finish;
    59c2:	3c 40 c8 59 	mov	#22984,	r12	;#0x59c8

000059c6 <.L10>:
    }
}
    59c6:	30 41       	ret			

000059c8 <task_finish>:

TASK(task_finish)
{
#if RAISE_PIN
    if (full_run_started)
    59c8:	c2 93 1d 4c 	cmp.b	#0,	&0x4c1d	;r3 As==00
    59cc:	08 24       	jz	$+18     	;abs 0x59de

000059ce <.LBB4>:
    {
        __port_on(3, 4);
    59ce:	f2 d0 10 00 	bis.b	#16,	&0x0222	;#0x0010
    59d2:	22 02 

000059d4 <.Loc.186.1>:
        __port_off(3, 4);
    59d4:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    59d8:	22 02 

000059da <.Loc.187.1>:
        full_run_started = 0;
    59da:	c2 43 1d 4c 	mov.b	#0,	&0x4c1d	;r3 As==00

000059de <.L14>:
    }
#endif

    return task_init;
}
    59de:	3c 40 2a 59 	mov	#22826,	r12	;#0x592a

000059e2 <.LVL19>:
    59e2:	30 41       	ret			

000059e4 <thread1_init>:
{
    59e4:	21 83       	decd	r1		;

000059e6 <.LCFI2>:
    __CREATE(15, task_init);
    59e6:	b1 40 ce 00 	mov	#206,	0(r1)	;#0x00ce
    59ea:	00 00 
    59ec:	3f 40 4e 4b 	mov	#19278,	r15	;#0x4b4e
    59f0:	3e 40 80 4a 	mov	#19072,	r14	;#0x4a80
    59f4:	3d 40 2a 59 	mov	#22826,	r13	;#0x592a
    59f8:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    59fc:	b0 12 5e 5a 	call	#23134		;#0x5a5e

00005a00 <.Loc.93.1>:
    __SIGNAL(15);
    5a00:	32 c2       	dint			
    5a02:	03 43       	nop			

00005a04 <.Loc.93.1>:
    5a04:	7c 40 0f 00 	mov.b	#15,	r12	;#0x000f
    5a08:	b0 12 4e 5b 	call	#23374		;#0x5b4e
    5a0c:	b0 12 32 5b 	call	#23346		;#0x5b32

00005a10 <.Loc.93.1>:
    5a10:	03 43       	nop			
    5a12:	32 d2       	eint			
    5a14:	03 43       	nop			

00005a16 <.Loc.94.1>:
}
    5a16:	21 53       	incd	r1		;

00005a18 <.LCFI3>:
    5a18:	30 41       	ret			

00005a1a <__app_reboot>:
    __port_init(3, 4);
    5a1a:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5a1e:	22 02 

00005a20 <.Loc.99.1>:
    5a20:	f2 d0 10 00 	bis.b	#16,	&0x0224	;#0x0010
    5a24:	24 02 

00005a26 <.Loc.99.1>:
    5a26:	f2 f0 ef ff 	and.b	#-17,	&0x0222	;#0xffef
    5a2a:	22 02 

00005a2c <.Loc.103.1>:
}
    5a2c:	30 41       	ret			

00005a2e <__app_init>:
extern void thread1_init();

// this is the function that will be called only at initial boot by the runtime.
void __app_init()
{
    thread1_init();
    5a2e:	b0 12 e4 59 	call	#23012		;#0x59e4

00005a32 <.Loc.32.1>:
}
    5a32:	30 41       	ret			

00005a34 <__scheduler_boot_init>:
 * a higher-priority thread.
 * As such, the scheduler state should ALWAYS be SCHED_SELECT at reboot.
 */
static volatile uint8_t _sched_state = SCHED_SELECT;

void __scheduler_boot_init() {
    5a34:	0a 15       	pushm	#1,	r10	;16-bit words

00005a36 <.LCFI0>:
    uint8_t i;

    // clear priority variables for the threads
    __priority_init(&_priorities);
    5a36:	3c 40 20 4c 	mov	#19488,	r12	;#0x4c20
    5a3a:	b0 12 50 66 	call	#26192		;#0x6650

00005a3e <.Loc.65.1>:
    5a3e:	7a 40 40 00 	mov.b	#64,	r10	;#0x0040

00005a42 <.L2>:

    for (i = MAX_THREADS; i > 0; i--){
        // threads are not created yet
        _threads[i].state == THREAD_STOPPED;
    5a42:	0c 4a       	mov	r10,	r12	;
    5a44:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5a48:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5a4c:	1c 4c 2c 4c 	mov	19500(r12),r12	;0x04c2c

00005a50 <.LVL3>:
    for (i = MAX_THREADS; i > 0; i--){
    5a50:	3a 53       	add	#-1,	r10	;r3 As==11

00005a52 <.Loc.67.1>:
    5a52:	0a 93       	cmp	#0,	r10	;r3 As==00
    5a54:	f6 23       	jnz	$-18     	;abs 0x5a42

00005a56 <.Loc.71.1>:
    }
    _sched_state = SCHED_SELECT;
    5a56:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00005a5a <.Loc.72.1>:
}
    5a5a:	0a 17       	popm	#1,	r10	;16-bit words

00005a5c <.LCFI1>:
    5a5c:	30 41       	ret			

00005a5e <__create_thread>:

// Assigns a slot to a thread. Should be called ONLY at the first system boot
void __create_thread(uint8_t priority, void *entry, void *data_org,
                     void *data_temp, uint16_t size)
{
    5a5e:	3a 15       	pushm	#4,	r10	;16-bit words

00005a60 <.LCFI2>:
    5a60:	4a 4c       	mov.b	r12,	r10	;
    5a62:	09 4d       	mov	r13,	r9	;
    5a64:	07 4e       	mov	r14,	r7	;
    5a66:	08 4f       	mov	r15,	r8	;

00005a68 <.Loc.79.1>:
    // init properties
    _threads[priority].priority = priority;
    5a68:	0c 4a       	mov	r10,	r12	;

00005a6a <.LVL6>:
    5a6a:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a

00005a6e <.LVL7>:
    5a6e:	b0 12 e4 6a 	call	#27364		;#0x6ae4

00005a72 <.LVL8>:
    5a72:	cc 4a 2a 4c 	mov.b	r10,	19498(r12); 0x4c2a

00005a76 <.Loc.80.1>:
    _threads[priority].entry = entry;
    5a76:	0c 4a       	mov	r10,	r12	;
    5a78:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5a7c:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5a80:	8c 49 2e 4c 	mov	r9,	19502(r12); 0x4c2e

00005a84 <.Loc.81.1>:
    _threads[priority].next = entry;
    5a84:	0c 4a       	mov	r10,	r12	;
    5a86:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5a8a:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5a8e:	8c 49 30 4c 	mov	r9,	19504(r12); 0x4c30

00005a92 <.Loc.82.1>:
    _threads[priority].state = THREAD_STOPPED;
    5a92:	0c 4a       	mov	r10,	r12	;
    5a94:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5a98:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5a9c:	bc 42 2c 4c 	mov	#8,	19500(r12);r2 As==11, 0x4c2c

00005aa0 <.Loc.85.1>:

    // init shared buffer
    _threads[priority].buffer.buf[0] = data_org;
    5aa0:	0c 4a       	mov	r10,	r12	;
    5aa2:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5aa6:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5aaa:	8c 47 34 4c 	mov	r7,	19508(r12); 0x4c34

00005aae <.Loc.86.1>:
    _threads[priority].buffer.buf[1] = data_temp;
    5aae:	0c 4a       	mov	r10,	r12	;
    5ab0:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5ab4:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5ab8:	8c 48 36 4c 	mov	r8,	19510(r12); 0x4c36

00005abc <.Loc.87.1>:
    _threads[priority].buffer.idx = 0;
    5abc:	0c 4a       	mov	r10,	r12	;
    5abe:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5ac2:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5ac6:	cc 43 38 4c 	mov.b	#0,	19512(r12);r3 As==00, 0x4c38

00005aca <.Loc.88.1>:
    _threads[priority].buffer.size = size;
    5aca:	0c 4a       	mov	r10,	r12	;
    5acc:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5ad0:	b0 12 e4 6a 	call	#27364		;#0x6ae4
    5ad4:	9c 41 0a 00 	mov	10(r1),	19514(r12);0x0000a, 0x4c3a
    5ad8:	3a 4c 

00005ada <.Loc.89.1>:
}
    5ada:	37 17       	popm	#4,	r10	;16-bit words

00005adc <.LCFI3>:
    5adc:	30 41       	ret			

00005ade <__stop_thread>:

// puts the thread in waiting state
inline void __stop_thread(thread_t *thread){
    5ade:	0a 15       	pushm	#1,	r10	;16-bit words

00005ae0 <.LCFI4>:
    5ae0:	0a 4c       	mov	r12,	r10	;

00005ae2 <.Loc.93.1>:
    __priority_remove(thread->priority, &_priorities);
    5ae2:	3d 40 20 4c 	mov	#19488,	r13	;#0x4c20
    5ae6:	6c 4c       	mov.b	@r12,	r12	;

00005ae8 <.LVL17>:
    5ae8:	b0 12 96 66 	call	#26262		;#0x6696

00005aec <.Loc.94.1>:
    thread->state = THREAD_STOPPED;
    5aec:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005af0 <.Loc.95.1>:
}
    5af0:	0a 17       	popm	#1,	r10	;16-bit words

00005af2 <.LCFI5>:
    5af2:	30 41       	ret			

00005af4 <__evict_thread>:

// puts the thread in waiting state
void __evict_thread(thread_t *thread){
    5af4:	0a 15       	pushm	#1,	r10	;16-bit words

00005af6 <.LCFI6>:
    5af6:	0a 4c       	mov	r12,	r10	;

00005af8 <.Loc.99.1>:
    __priority_remove(thread->priority, &_priorities);
    5af8:	3d 40 20 4c 	mov	#19488,	r13	;#0x4c20
    5afc:	6c 4c       	mov.b	@r12,	r12	;

00005afe <.LVL20>:
    5afe:	b0 12 96 66 	call	#26262		;#0x6696

00005b02 <.Loc.100.1>:
    thread->next = NULL;
    5b02:	8a 43 06 00 	mov	#0,	6(r10)	;r3 As==00

00005b06 <.Loc.101.1>:
    thread->state = THREAD_STOPPED;
    5b06:	ba 42 02 00 	mov	#8,	2(r10)	;r2 As==11

00005b0a <.Loc.102.1>:
}
    5b0a:	0a 17       	popm	#1,	r10	;16-bit words

00005b0c <.LCFI7>:
    5b0c:	30 41       	ret			

00005b0e <__set_sing_timer>:

void __set_sing_timer(thread_t *thread,uint16_t timing){
    thread->sing_timer = timing;
    5b0e:	8c 4d 12 00 	mov	r13,	18(r12)	; 0x0012

00005b12 <.Loc.106.1>:
    return;
}
    5b12:	30 41       	ret			

00005b14 <__set_expr_timer>:

//TODO: update necessary
void __set_expr_timer(thread_t *thread,uint16_t timing){
    thread->expr_timer = timing;
    5b14:	8c 4d 16 00 	mov	r13,	22(r12)	; 0x0016

00005b18 <.Loc.112.1>:
    return;
}
    5b18:	30 41       	ret			

00005b1a <__set_pdc_timer>:


void __set_pdc_timer(thread_t *thread,uint16_t timing){
    thread->pdc_timer = timing;
    5b1a:	8c 4d 14 00 	mov	r13,	20(r12)	; 0x0014

00005b1e <.Loc.118.1>:
    return;
}
    5b1e:	30 41       	ret			

00005b20 <__set_pdc_period>:

void __set_pdc_period(thread_t *thread,uint16_t period){
    thread->pdc_period = period;
    5b20:	8c 4d 18 00 	mov	r13,	24(r12)	; 0x0018

00005b24 <.Loc.123.1>:
    return;
}
    5b24:	30 41       	ret			

00005b26 <__get_pdc_timer>:

uint16_t __get_pdc_timer(thread_t *thread){
    return thread->pdc_timer;
}
    5b26:	1c 4c 14 00 	mov	20(r12),r12	;0x00014

00005b2a <.LVL27>:
    5b2a:	30 41       	ret			

00005b2c <__get_pdc_period>:

uint16_t __get_pdc_period(thread_t *thread){
    return thread->pdc_period;
}
    5b2c:	1c 4c 18 00 	mov	24(r12),r12	;0x00018

00005b30 <.LVL29>:
    5b30:	30 41       	ret			

00005b32 <__start_thread>:

// puts the thread in active state
inline void __start_thread(thread_t *thread) {
    5b32:	0a 15       	pushm	#1,	r10	;16-bit words

00005b34 <.LCFI8>:
    5b34:	0a 4c       	mov	r12,	r10	;

00005b36 <.Loc.136.1>:
    thread->next = thread->entry;
    5b36:	9c 4c 04 00 	mov	4(r12),	6(r12)	;
    5b3a:	06 00 

00005b3c <.Loc.137.1>:
    __priority_insert(thread->priority, &_priorities);
    5b3c:	3d 40 20 4c 	mov	#19488,	r13	;#0x4c20
    5b40:	6c 4c       	mov.b	@r12,	r12	;

00005b42 <.LVL31>:
    5b42:	b0 12 76 66 	call	#26230		;#0x6676

00005b46 <.Loc.138.1>:
    thread->state = TASK_READY;
    5b46:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01

00005b4a <.Loc.139.1>:
}
    5b4a:	0a 17       	popm	#1,	r10	;16-bit words

00005b4c <.LCFI9>:
    5b4c:	30 41       	ret			

00005b4e <__get_thread>:

    return NULL;
}

inline thread_t *__get_thread(uint8_t priority){
    return &_threads[priority];
    5b4e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    5b52:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5b56:	b0 12 e4 6a 	call	#27364		;#0x6ae4

00005b5a <.LVL34>:
}
    5b5a:	3c 50 2a 4c 	add	#19498,	r12	;#0x4c2a
    5b5e:	30 41       	ret			

00005b60 <__scheduler_run>:
void __scheduler_run()
{
    // For the sake of consistency, the event insertion by an ISR which
    // was interrupted by a power failure should be committed to the
    // event queue _events in isrmanager.c before enabling the interrupts.
    __events_commit();
    5b60:	b0 12 ee 63 	call	#25582		;#0x63ee

00005b64 <.Loc.171.1>:

#ifdef RAISE_PIN
    __port_on(1, 3);
    5b64:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005b68 <.Loc.171.1>:
    __port_off(1, 3);
    5b68:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005b6c <.LBB8>:
    if(_thread){
    5b6c:	82 93 1e 4c 	cmp	#0,	&0x4c1e	;r3 As==00
    5b70:	04 24       	jz	$+10     	;abs 0x5b7a

00005b72 <.Loc.157.1>:
        __tick(_thread);
    5b72:	1c 42 1e 4c 	mov	&0x4c1e,r12	;0x4c1e
    5b76:	b0 12 02 5c 	call	#23554		;#0x5c02

00005b7a <.L16>:
    // will be committed before enabling interrupts so that these variables
    // remain consistent and stable.
    __task_commit();

#ifdef RAISE_PIN
    __port_on(1, 3);
    5b7a:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005b7e <.Loc.184.1>:
    __port_off(1, 3);
    5b7e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005b82 <.Loc.185.1>:
#endif

    __reboot_timers();
    5b82:	b0 12 06 5d 	call	#23814		;#0x5d06

00005b86 <.L31>:
    // enable interrupts
    __enable_interrupt();
    5b86:	03 43       	nop			
    5b88:	32 d2       	eint			
    5b8a:	03 43       	nop			

00005b8c <.L20>:

    while (1){
        switch (_sched_state){
    5b8c:	5c 42 00 1c 	mov.b	&0x1c00,r12	;0x1c00
    5b90:	0c 93       	cmp	#0,	r12	;r3 As==00
    5b92:	0e 24       	jz	$+30     	;abs 0x5bb0
    5b94:	1c 93       	cmp	#1,	r12	;r3 As==01
    5b96:	fa 23       	jnz	$-10     	;abs 0x5b8c

00005b98 <.L19>:
            _thread = __next_thread();
            _sched_state = SCHED_BUSY;
        case SCHED_BUSY:
            // always execute the selected task to completion
            // execute one task inside the highest priority thread
            if (_thread){
    5b98:	82 93 1e 4c 	cmp	#0,	&0x4c1e	;r3 As==00
    5b9c:	21 24       	jz	$+68     	;abs 0x5be0

00005b9e <.Loc.207.1>:
#ifdef RAISE_PIN
                __port_off(1, 3);
    5b9e:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005ba2 <.Loc.207.1>:
#endif
                __tick(_thread);
    5ba2:	1c 42 1e 4c 	mov	&0x4c1e,r12	;0x4c1e
    5ba6:	b0 12 02 5c 	call	#23554		;#0x5c02

00005baa <.Loc.211.1>:
                // after execution of one task, check the events
                _sched_state = SCHED_SELECT;
    5baa:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00005bae <.Loc.212.1>:
                break;
    5bae:	ee 3f       	jmp	$-34     	;abs 0x5b8c

00005bb0 <.L18>:
            __port_on(1, 3);
    5bb0:	f2 d2 02 02 	bis.b	#8,	&0x0202	;r2 As==11

00005bb4 <.LBB10>:
    uint8_t idx = __priority_highest(&_priorities);
    5bb4:	3c 40 20 4c 	mov	#19488,	r12	;#0x4c20
    5bb8:	b0 12 be 66 	call	#26302		;#0x66be
    5bbc:	4e 4c       	mov.b	r12,	r14	;
    5bbe:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005bc2 <.LVL40>:
    return NULL;
    5bc2:	4d 43       	clr.b	r13		;

00005bc4 <.Loc.144.1>:
    if(idx)
    5bc4:	4e 93       	cmp.b	#0,	r14	;r3 As==00
    5bc6:	07 24       	jz	$+16     	;abs 0x5bd6

00005bc8 <.Loc.145.1>:
        return &_threads[idx];
    5bc8:	7d 40 1a 00 	mov.b	#26,	r13	;#0x001a
    5bcc:	b0 12 e4 6a 	call	#27364		;#0x6ae4

00005bd0 <.LVL41>:
    5bd0:	0d 4c       	mov	r12,	r13	;
    5bd2:	3d 50 2a 4c 	add	#19498,	r13	;#0x4c2a

00005bd6 <.L21>:
            _thread = __next_thread();
    5bd6:	82 4d 1e 4c 	mov	r13,	&0x4c1e	;

00005bda <.Loc.201.1>:
            _sched_state = SCHED_BUSY;
    5bda:	d2 43 00 1c 	mov.b	#1,	&0x1c00	;r3 As==01
    5bde:	dc 3f       	jmp	$-70     	;abs 0x5b98

00005be0 <.L22>:
            }
            _sched_state = SCHED_SELECT;
    5be0:	c2 43 00 1c 	mov.b	#0,	&0x1c00	;r3 As==00

00005be4 <.Loc.215.1>:
            __disable_interrupt();
    5be4:	32 c2       	dint			
    5be6:	03 43       	nop			

00005be8 <.LBB12>:
    uint8_t idx = __priority_highest(&_priorities);
    5be8:	3c 40 20 4c 	mov	#19488,	r12	;#0x4c20
    5bec:	b0 12 be 66 	call	#26302		;#0x66be

00005bf0 <.LVL42>:
    if(idx)
    5bf0:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5bf2:	cc 23       	jnz	$-102    	;abs 0x5b8c

00005bf4 <.LBE12>:
            // check the ready queue for the last time
            if(!__next_thread()){
#ifdef RAISE_PIN
                __port_off(1, 3);
    5bf4:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00005bf8 <.Loc.219.1>:
#endif
                __mcu_sleep();
    5bf8:	03 43       	nop			
    5bfa:	32 d0 d8 00 	bis	#216,	r2	;#0x00d8
    5bfe:	03 43       	nop			

00005c00 <.Loc.222.1>:
                __enable_interrupt();
    5c00:	c2 3f       	jmp	$-122    	;abs 0x5b86

00005c02 <__tick>:

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    5c02:	1a 15       	pushm	#2,	r10	;16-bit words

00005c04 <.LCFI0>:
    5c04:	0a 4c       	mov	r12,	r10	;

00005c06 <.Loc.53.1>:
    void *buf;
    switch (thread->state)
    5c06:	
00005c08 <L0^A>:
    5c08:	02 00       	mova	@r0,	r2	;

00005c0a <.LVL1>:
    5c0a:	2c 93       	cmp	#2,	r12	;r3 As==10
    5c0c:	3f 24       	jz	$+128    	;abs 0x5c8c
    5c0e:	2c 92       	cmp	#4,	r12	;r2 As==10
    5c10:	4d 24       	jz	$+156    	;abs 0x5cac
    5c12:	1c 93       	cmp	#1,	r12	;r3 As==01
    5c14:	67 20       	jnz	$+208    	;abs 0x5ce4

00005c16 <.LBB5>:
    __port_on(3,6);
    5c16:	f2 d0 40 00 	bis.b	#64,	&0x0222	;#0x0040
    5c1a:	22 02 

00005c1c <.Loc.40.1>:
    __dma_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1], buffer->size>>1);
    5c1c:	5f 4a 0e 00 	mov.b	14(r10),r15	;0x0000e

00005c20 <.Loc.43.1>:
    5c20:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5c24:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5c26:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005c2a <.Loc.43.1>:
    5c2a:	5c 02       	rlam	#1,	r12	;
    5c2c:	0c 5a       	add	r10,	r12	;
    5c2e:	5f 02       	rlam	#1,	r15	;
    5c30:	0f 5a       	add	r10,	r15	;
    5c32:	1e 4a 10 00 	mov	16(r10),r14	;0x00010
    5c36:	5e 03       	rrum	#1,	r14	;
    5c38:	1d 4c 0a 00 	mov	10(r12),r13	;0x0000a
    5c3c:	1c 4f 0a 00 	mov	10(r15),r12	;0x0000a
    5c40:	b0 12 c8 65 	call	#26056		;#0x65c8

00005c44 <.Loc.45.1>:
    __port_off(3,6);
    5c44:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    5c48:	22 02 

00005c4a <.LBE5>:
    {
    case TASK_READY:
        // refresh thread stack
        __prologue(thread);
#ifdef RAISE_PIN
        __port_on(1, 4);
    5c4a:	f2 d0 10 00 	bis.b	#16,	&0x0202	;#0x0010
    5c4e:	02 02 

00005c50 <.Loc.60.1>:
#endif
        // get thread buffer
        buf = thread->buffer.buf[thread->buffer._idx^1];
    5c50:	5c 4a 0f 00 	mov.b	15(r10),r12	;0x0000f
    5c54:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5c56:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00005c5a <.Loc.63.1>:
    5c5a:	3c 50 05 00 	add	#5,	r12	;
    5c5e:	5c 02       	rlam	#1,	r12	;
    5c60:	0c 5a       	add	r10,	r12	;
    5c62:	29 4c       	mov	@r12,	r9	;

00005c64 <.LVL5>:
        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
    5c64:	1d 4a 06 00 	mov	6(r10),	r13	;

00005c68 <.Loc.66.1>:
    5c68:	1d 9a 04 00 	cmp	4(r10),	r13	;
    5c6c:	3d 20       	jnz	$+124    	;abs 0x5ce8

00005c6e <.LBB7>:
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
    5c6e:	0c 4a       	mov	r10,	r12	;
    5c70:	b0 12 a2 64 	call	#25762		;#0x64a2

00005c74 <.LVL6>:
            // push event data to the entry task
            thread->next_temp = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
    5c74:	0d 4c       	mov	r12,	r13	;
    5c76:	0c 49       	mov	r9,	r12	;

00005c78 <.LVL7>:
    5c78:	1e 4a 04 00 	mov	4(r10),	r14	;
    5c7c:	8e 12       	call	r14		;

00005c7e <.L17>:
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    5c7e:	8a 4c 08 00 	mov	r12,	8(r10)	;

00005c82 <.Loc.76.1>:
        }
        thread->state = TASK_PRECOMMIT;
    5c82:	aa 43 02 00 	mov	#2,	2(r10)	;r3 As==10

00005c86 <.Loc.78.1>:
#ifdef RAISE_PIN
        __port_off(1, 4);
    5c86:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    5c8a:	02 02 

00005c8c <.L2>:
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
    5c8c:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5c90:	22 02 

00005c92 <.Loc.82.1>:
#endif
        // release any event which is popped by the task
        __release_event(thread);
    5c92:	0c 4a       	mov	r10,	r12	;
    5c94:	b0 12 d0 64 	call	#25808		;#0x64d0

00005c98 <.Loc.86.1>:
        thread->next = thread->next_temp;
    5c98:	9a 4a 08 00 	mov	8(r10),	6(r10)	;
    5c9c:	06 00 

00005c9e <.Loc.88.1>:
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
    5c9e:	5c 4a 0e 00 	mov.b	14(r10),r12	;0x0000e
    5ca2:	5c e3       	xor.b	#1,	r12	;r3 As==01
    5ca4:	ca 4c 0f 00 	mov.b	r12,	15(r10)	; 0x000f

00005ca8 <.Loc.89.1>:
        thread->state = TASK_COMMIT;
    5ca8:	aa 42 02 00 	mov	#4,	2(r10)	;r2 As==10

00005cac <.L3>:
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
    5cac:	da 4a 0f 00 	mov.b	15(r10),14(r10)	;0x0000f, 0x000e
    5cb0:	0e 00 

00005cb2 <.Loc.94.1>:
#ifdef RAISE_PIN
        __port_off(3,5);
    5cb2:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5cb6:	22 02 

00005cb8 <.Loc.94.1>:
        __port_on(3,5);
    5cb8:	f2 d0 20 00 	bis.b	#32,	&0x0222	;#0x0020
    5cbc:	22 02 

00005cbe <.Loc.95.1>:
#endif

        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
    5cbe:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    5cc2:	1b 20       	jnz	$+56     	;abs 0x5cfa

00005cc4 <.Loc.101.1>:
        {
            __disable_interrupt();
    5cc4:	32 c2       	dint			
    5cc6:	03 43       	nop			

00005cc8 <.Loc.103.1>:
            // check if there are any pending events
            if(!__has_events(thread)){
    5cc8:	0c 4a       	mov	r10,	r12	;
    5cca:	b0 12 84 64 	call	#25732		;#0x6484

00005cce <.Loc.103.1>:
    5cce:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    5cd0:	0e 20       	jnz	$+30     	;abs 0x5cee

00005cd2 <.Loc.105.1>:
                // suspend the thread if there are no pending events
                __stop_thread(thread);
    5cd2:	0c 4a       	mov	r10,	r12	;
    5cd4:	b0 12 de 5a 	call	#23262		;#0x5ade

00005cd8 <.L9>:
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
    5cd8:	03 43       	nop			
    5cda:	32 d2       	eint			
    5cdc:	03 43       	nop			

00005cde <.L10>:
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
    5cde:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    5ce2:	22 02 

00005ce4 <.L1>:
#endif
    }
}
    5ce4:	19 17       	popm	#2,	r10	;16-bit words

00005ce6 <.LCFI1>:
    5ce6:	30 41       	ret			

00005ce8 <.L5>:
            thread->next_temp = (void *)(((task_t)thread->next)(buf));
    5ce8:	2c 4c       	mov	@r12,	r12	;
    5cea:	8d 12       	call	r13		;
    5cec:	c8 3f       	jmp	$-110    	;abs 0x5c7e

00005cee <.L8>:
                thread->next = thread->entry;
    5cee:	9a 4a 04 00 	mov	4(r10),	6(r10)	;
    5cf2:	06 00 

00005cf4 <.Loc.111.1>:
                thread->state = TASK_READY;
    5cf4:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    5cf8:	ef 3f       	jmp	$-32     	;abs 0x5cd8

00005cfa <.L7>:
            thread->state = TASK_READY;
    5cfa:	9a 43 02 00 	mov	#1,	2(r10)	;r3 As==01
    5cfe:	ef 3f       	jmp	$-32     	;abs 0x5cde

00005d00 <__timers_init>:
    5d00:	b0 12 a2 67 	call	#26530		;#0x67a2

00005d04 <.Loc.64.1>:


void __timers_init()
{
    _pers_timer_init();
}
    5d04:	30 41       	ret			

00005d06 <__reboot_timers>:
    refresh_pdc_timers();
    _pers_timer_update_lock(PDC);
    _pers_timer_commit(PDC);
#endif

}
    5d06:	30 41       	ret			

00005d08 <clear_wkup_status>:
//WKUP timers 
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void clear_wkup_status(uint8_t thread_id){
    5d08:	2a 15       	pushm	#3,	r10	;16-bit words

00005d0a <.LCFI0>:
    5d0a:	48 4c       	mov.b	r12,	r8	;

00005d0c <.Loc.100.1>:
    
    uint8_t i; 
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d0c:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

00005d10 <.Loc.101.1>:
    5d10:	49 43       	clr.b	r9		;

00005d12 <.L5>:
    {
        if (wkup_timing[i].thread_id == thread_id) {
    5d12:	ca 98 02 00 	cmp.b	r8,	2(r10)	;
    5d16:	07 20       	jnz	$+16     	;abs 0x5d26

00005d18 <.Loc.104.1>:
            wkup_timing[i].status = NOT_USED;
    5d18:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00005d1c <.Loc.105.1>:
            _pers_timer_update_status(i,WKUP,NOT_USED);
    5d1c:	4e 43       	clr.b	r14		;
    5d1e:	4d 43       	clr.b	r13		;
    5d20:	4c 49       	mov.b	r9,	r12	;
    5d22:	b0 12 60 68 	call	#26720		;#0x6860

00005d26 <.L4>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d26:	4c 49       	mov.b	r9,	r12	;
    5d28:	5c 53       	inc.b	r12		;
    5d2a:	49 4c       	mov.b	r12,	r9	;

00005d2c <.LVL5>:
    5d2c:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005d30 <.Loc.101.1>:
    5d30:	7c 90 03 00 	cmp.b	#3,	r12	;
    5d34:	ee 23       	jnz	$-34     	;abs 0x5d12

00005d36 <.Loc.109.1>:

        }
    }
}
    5d36:	28 17       	popm	#3,	r10	;16-bit words

00005d38 <.LCFI1>:
    5d38:	30 41       	ret			

00005d3a <unpack_wkup_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_wkup_to_local(){
    5d3a:	1a 15       	pushm	#2,	r10	;16-bit words

00005d3c <.LCFI2>:
    5d3c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005d40 <.LCFI3>:
    5d40:	49 43       	clr.b	r9		;

00005d42 <.L8>:

    uint8_t i;
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        wkup_timing[i] = _pers_timer_get(i,WKUP);
    5d42:	0a 49       	mov	r9,	r10	;
    5d44:	5a 06       	rlam	#2,	r10	;
    5d46:	0a 59       	add	r9,	r10	;
    5d48:	5a 02       	rlam	#1,	r10	;
    5d4a:	3a 50 34 1c 	add	#7220,	r10	;#0x1c34
    5d4e:	4e 43       	clr.b	r14		;
    5d50:	4d 49       	mov.b	r9,	r13	;
    5d52:	0c 41       	mov	r1,	r12	;
    5d54:	b0 12 ea 69 	call	#27114		;#0x69ea
    5d58:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5d5c:	0d 41       	mov	r1,	r13	;
    5d5e:	0c 4a       	mov	r10,	r12	;
    5d60:	b0 12 10 6b 	call	#27408		;#0x6b10

00005d64 <.LVL9>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d64:	19 53       	inc	r9		;

00005d66 <.Loc.115.1>:
    5d66:	39 90 03 00 	cmp	#3,	r9	;
    5d6a:	eb 23       	jnz	$-40     	;abs 0x5d42

00005d6c <.Loc.120.1>:
    }

}
    5d6c:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005d70 <.LCFI4>:
    5d70:	19 17       	popm	#2,	r10	;16-bit words

00005d72 <.LCFI5>:
    5d72:	30 41       	ret			

00005d74 <refresh_wkup_timers>:

//updates the information on which thread is scheduled to execute next based on timing 
void refresh_wkup_timers(){
    5d74:	4a 15       	pushm	#5,	r10	;16-bit words

00005d76 <.LCFI6>:

    uint8_t i,first = 1;

    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d76:	3a 40 34 1c 	mov	#7220,	r10	;#0x1c34

00005d7a <.Loc.125.1>:
    uint8_t i,first = 1;
    5d7a:	5f 43       	mov.b	#1,	r15	;r3 As==01

00005d7c <.Loc.127.1>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5d7c:	49 43       	clr.b	r9		;

00005d7e <.L23>:
    {

        if (wkup_timing[i].status == USED)
    5d7e:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    5d82:	56 20       	jnz	$+174    	;abs 0x5e30

00005d84 <.Loc.133.1>:
        {
            
            if (first)
    5d84:	16 4a 04 00 	mov	4(r10),	r6	;
    5d88:	17 4a 06 00 	mov	6(r10),	r7	;

00005d8c <.Loc.133.1>:
    5d8c:	0f 93       	cmp	#0,	r15	;r3 As==00
    5d8e:	05 24       	jz	$+12     	;abs 0x5d9a

00005d90 <.Loc.135.1>:
            {
                min_wkup = wkup_timing[i].data;
    5d90:	82 46 5a 1c 	mov	r6,	&0x1c5a	;

00005d94 <.Loc.136.1>:
                nxt_wkup = wkup_timing[i].thread_id;
    5d94:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    5d98:	5c 1c 

00005d9a <.L12>:
                first = 0;
            }
            

            wkup_timing[i].data = wkup_timing[i].data - __get_time(); 
    5d9a:	b0 12 6e 67 	call	#26478		;#0x676e

00005d9e <.Loc.141.1>:
    5d9e:	0e 46       	mov	r6,	r14	;
    5da0:	0f 47       	mov	r7,	r15	;
    5da2:	0e 8c       	sub	r12,	r14	;
    5da4:	0f 7d       	subc	r13,	r15	;

00005da6 <.Loc.141.1>:
    5da6:	8a 4e 04 00 	mov	r14,	4(r10)	;
    5daa:	8a 4f 06 00 	mov	r15,	6(r10)	;

00005dae <.Loc.142.1>:
            _pers_timer_update_data(i, WKUP, wkup_timing[i].data);
    5dae:	4d 43       	clr.b	r13		;
    5db0:	4c 49       	mov.b	r9,	r12	;
    5db2:	b0 12 c4 67 	call	#26564		;#0x67c4

00005db6 <.Loc.144.1>:

            if (wkup_timing[i].data < 0 && wkup_timing[i].data > -tol)
    5db6:	1c 4a 04 00 	mov	4(r10),	r12	;
    5dba:	1d 4a 06 00 	mov	6(r10),	r13	;

00005dbe <.Loc.144.1>:
    5dbe:	07 4d       	mov	r13,	r7	;
    5dc0:	0d 93       	cmp	#0,	r13	;r3 As==00
    5dc2:	50 34       	jge	$+162    	;abs 0x5e64

00005dc4 <.Loc.144.1>:
    5dc4:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    5dc8:	06 43       	clr	r6		;
    5dca:	06 8e       	sub	r14,	r6	;
    5dcc:	0e 46       	mov	r6,	r14	;
    5dce:	0f 46       	mov	r6,	r15	;
    5dd0:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

00005dd4 <.Loc.144.1>:
    5dd4:	0f 9d       	cmp	r13,	r15	;
    5dd6:	04 38       	jl	$+10     	;abs 0x5de0

00005dd8 <.Loc.144.1>:
    5dd8:	0d 9f       	cmp	r15,	r13	;
    5dda:	20 20       	jnz	$+66     	;abs 0x5e1c
    5ddc:	06 9c       	cmp	r12,	r6	;
    5dde:	1e 2c       	jc	$+62     	;abs 0x5e1c

00005de0 <.L32>:
            {
                if ((min_wkup > -wkup_timing[i].data) || (min_wkup == -wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5de0:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    5de4:	06 48       	mov	r8,	r6	;
    5de6:	07 43       	clr	r7		;

00005de8 <.Loc.146.1>:
    5de8:	4e 43       	clr.b	r14		;
    5dea:	4f 43       	clr.b	r15		;
    5dec:	0e 8c       	sub	r12,	r14	;
    5dee:	0f 7d       	subc	r13,	r15	;

00005df0 <.Loc.146.1>:
    5df0:	0f 93       	cmp	#0,	r15	;r3 As==00
    5df2:	0c 38       	jl	$+26     	;abs 0x5e0c
    5df4:	0f 93       	cmp	#0,	r15	;r3 As==00
    5df6:	02 20       	jnz	$+6      	;abs 0x5dfc
    5df8:	0e 96       	cmp	r6,	r14	;
    5dfa:	08 28       	jnc	$+18     	;abs 0x5e0c

00005dfc <.L33>:
    5dfc:	06 9e       	cmp	r14,	r6	;
    5dfe:	17 20       	jnz	$+48     	;abs 0x5e2e
    5e00:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e02:	15 20       	jnz	$+44     	;abs 0x5e2e

00005e04 <.Loc.146.1>:
    5e04:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    5e08:	02 00 
    5e0a:	12 2c       	jc	$+38     	;abs 0x5e30

00005e0c <.L17>:
                {
                    min_wkup = -wkup_timing[i].data;
    5e0c:	4e 43       	clr.b	r14		;
    5e0e:	0e 8c       	sub	r12,	r14	;
    5e10:	82 4e 5a 1c 	mov	r14,	&0x1c5a	;

00005e14 <.L40>:
            if (wkup_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
                {
                    min_wkup = wkup_timing[i].data;
                    nxt_wkup = wkup_timing[i].thread_id;
    5e14:	d2 4a 02 00 	mov.b	2(r10),	&0x1c5c	;
    5e18:	5c 1c 
    5e1a:	09 3c       	jmp	$+20     	;abs 0x5e2e

00005e1c <.L15>:
            }else if (wkup_timing[i].data < 0 && wkup_timing[i].data < -tol) wkup_timing[i].status = NOT_USED;
    5e1c:	07 4d       	mov	r13,	r7	;
    5e1e:	0d 9f       	cmp	r15,	r13	;
    5e20:	04 38       	jl	$+10     	;abs 0x5e2a
    5e22:	0f 9d       	cmp	r13,	r15	;
    5e24:	04 20       	jnz	$+10     	;abs 0x5e2e
    5e26:	0c 96       	cmp	r6,	r12	;
    5e28:	02 2c       	jc	$+6      	;abs 0x5e2e

00005e2a <.L34>:
    5e2a:	8a 43 00 00 	mov	#0,	0(r10)	;r3 As==00

00005e2e <.L30>:
    5e2e:	4f 43       	clr.b	r15		;

00005e30 <.L11>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5e30:	4c 49       	mov.b	r9,	r12	;
    5e32:	5c 53       	inc.b	r12		;
    5e34:	49 4c       	mov.b	r12,	r9	;

00005e36 <.LVL17>:
    5e36:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00005e3a <.Loc.127.1>:
    5e3a:	7c 90 03 00 	cmp.b	#3,	r12	;
    5e3e:	9f 23       	jnz	$-192    	;abs 0x5d7e

00005e40 <.Loc.164.1>:
                }
            }
       }
    }

    if (!first)
    5e40:	0f 93       	cmp	#0,	r15	;r3 As==00
    5e42:	2d 20       	jnz	$+92     	;abs 0x5e9e

00005e44 <.Loc.166.1>:
    {
       _pers_timer_update_nxt_thread(WKUP,nxt_wkup);
    5e44:	5d 42 5c 1c 	mov.b	&0x1c5c,r13	;0x1c5c
    5e48:	4c 43       	clr.b	r12		;

00005e4a <.LVL18>:
    5e4a:	b0 12 a6 68 	call	#26790		;#0x68a6

00005e4e <.LVL19>:
       _pers_timer_update_nxt_time(WKUP,min_wkup);
    5e4e:	1d 42 5a 1c 	mov	&0x1c5a,r13	;0x1c5a
    5e52:	4c 43       	clr.b	r12		;
    5e54:	b0 12 b4 68 	call	#26804		;#0x68b4

00005e58 <.Loc.171.1>:
        //set the new pending ISR timer.
        //TODO:set correct CLK
        //timerA2_set_CCR0(min_wkup);
        set_timer_wkup(min_wkup);
    5e58:	1c 42 5a 1c 	mov	&0x1c5a,r12	;0x1c5a
    5e5c:	b0 12 e4 66 	call	#26340		;#0x66e4

00005e60 <.L10>:
    }
    //no pending wake up timer was found.
    else stop_timer();


}
    5e60:	46 17       	popm	#5,	r10	;16-bit words

00005e62 <.LCFI7>:
    5e62:	30 41       	ret			

00005e64 <.L13>:
            if (wkup_timing[i].data > 0)
    5e64:	0e 4c       	mov	r12,	r14	;
    5e66:	0e dd       	bis	r13,	r14	;
    5e68:	4f 43       	clr.b	r15		;
    5e6a:	0e 93       	cmp	#0,	r14	;r3 As==00
    5e6c:	e1 27       	jz	$-60     	;abs 0x5e30

00005e6e <.Loc.155.1>:
                if ((min_wkup > wkup_timing[i].data) || (min_wkup == wkup_timing[i].data && nxt_wkup > wkup_timing[i].thread_id))
    5e6e:	18 42 5a 1c 	mov	&0x1c5a,r8	;0x1c5a
    5e72:	0e 48       	mov	r8,	r14	;
    5e74:	0f 43       	clr	r15		;

00005e76 <.Loc.155.1>:
    5e76:	0d 93       	cmp	#0,	r13	;r3 As==00
    5e78:	0f 38       	jl	$+32     	;abs 0x5e98
    5e7a:	0d 93       	cmp	#0,	r13	;r3 As==00
    5e7c:	03 20       	jnz	$+8      	;abs 0x5e84
    5e7e:	07 4c       	mov	r12,	r7	;
    5e80:	0c 9e       	cmp	r14,	r12	;
    5e82:	0a 28       	jnc	$+22     	;abs 0x5e98

00005e84 <.L35>:
    5e84:	07 4c       	mov	r12,	r7	;
    5e86:	0c 9e       	cmp	r14,	r12	;
    5e88:	d2 23       	jnz	$-90     	;abs 0x5e2e
    5e8a:	0d 9f       	cmp	r15,	r13	;
    5e8c:	d0 23       	jnz	$-94     	;abs 0x5e2e
    5e8e:	4f 43       	clr.b	r15		;

00005e90 <.Loc.155.1>:
    5e90:	da 92 5c 1c 	cmp.b	&0x1c5c,2(r10)	;0x1c5c
    5e94:	02 00 
    5e96:	cc 2f       	jc	$-102    	;abs 0x5e30

00005e98 <.L21>:
                    min_wkup = wkup_timing[i].data;
    5e98:	82 4c 5a 1c 	mov	r12,	&0x1c5a	;
    5e9c:	bb 3f       	jmp	$-136    	;abs 0x5e14

00005e9e <.L24>:
    else stop_timer();
    5e9e:	b0 12 d4 66 	call	#26324		;#0x66d4

00005ea2 <.LVL24>:
}
    5ea2:	de 3f       	jmp	$-66     	;abs 0x5e60

00005ea4 <set_wkup_timer>:

// sets a one-shot timer using Timer A2 
void set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    5ea4:	2a 15       	pushm	#3,	r10	;16-bit words

00005ea6 <.LCFI9>:
    5ea6:	21 83       	decd	r1		;

00005ea8 <.LCFI10>:
    5ea8:	49 4c       	mov.b	r12,	r9	;

00005eaa <.Loc.182.1>:
    uint8_t i,cmpl = 0;

    //fetch from persistent buffer to local variables 
    unpack_wkup_to_local();
    5eaa:	81 4d 00 00 	mov	r13,	0(r1)	;
    5eae:	b0 12 3a 5d 	call	#23866		;#0x5d3a

00005eb2 <.LVL27>:

    //init the timer 
    //TODO:check if needed 
    stop_timer();
    5eb2:	b0 12 d4 66 	call	#26324		;#0x66d4

00005eb6 <.Loc.192.1>:

    //set the compare register on the device
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    {
        if (wkup_timing[i].status == NOT_USED)
    5eb6:	2e 41       	mov	@r1,	r14	;
    5eb8:	82 93 34 1c 	cmp	#0,	&0x1c34	;r3 As==00
    5ebc:	22 24       	jz	$+70     	;abs 0x5f02

00005ebe <.Loc.192.1>:
    5ebe:	82 93 3e 1c 	cmp	#0,	&0x1c3e	;r3 As==00
    5ec2:	41 24       	jz	$+132    	;abs 0x5f46

00005ec4 <.Loc.192.1>:
    5ec4:	82 93 48 1c 	cmp	#0,	&0x1c48	;r3 As==00
    5ec8:	41 24       	jz	$+132    	;abs 0x5f4c

00005eca <.Loc.192.1>:
    
    }else{

        //buffer is full
        //TODO: ADD failcheck 
        wkup_timing[2].data = ticks;
    5eca:	82 4e 4c 1c 	mov	r14,	&0x1c4c	;
    5ece:	82 43 4e 1c 	mov	#0,	&0x1c4e	;r3 As==00

00005ed2 <.Loc.216.1>:
        _pers_timer_update_data(2,WKUP,ticks);
    5ed2:	4f 43       	clr.b	r15		;
    5ed4:	4d 43       	clr.b	r13		;
    5ed6:	6c 43       	mov.b	#2,	r12	;r3 As==10
    5ed8:	b0 12 c4 67 	call	#26564		;#0x67c4

00005edc <.Loc.217.1>:
        wkup_timing[2].thread_id = thread_id;
    5edc:	c2 49 4a 1c 	mov.b	r9,	&0x1c4a	;

00005ee0 <.Loc.218.1>:
        _pers_timer_update_thread_id(i,WKUP,thread_id);
    5ee0:	4e 49       	mov.b	r9,	r14	;
    5ee2:	4d 43       	clr.b	r13		;
    5ee4:	7c 40 03 00 	mov.b	#3,	r12	;
    5ee8:	b0 12 16 68 	call	#26646		;#0x6816

00005eec <.L47>:
        refresh_wkup_timers();
    5eec:	b0 12 74 5d 	call	#23924		;#0x5d74

00005ef0 <.Loc.222.1>:
        refresh_wkup_timers();
    }

    _pers_timer_update_lock(WKUP);
    5ef0:	4c 43       	clr.b	r12		;
    5ef2:	b0 12 c2 68 	call	#26818		;#0x68c2

00005ef6 <.Loc.223.1>:
    _pers_timer_commit(WKUP);
    5ef6:	4c 43       	clr.b	r12		;
    5ef8:	b0 12 a8 69 	call	#27048		;#0x69a8

00005efc <.Loc.224.1>:
}
    5efc:	21 53       	incd	r1		;

00005efe <.LCFI11>:
    5efe:	28 17       	popm	#3,	r10	;16-bit words

00005f00 <.LCFI12>:
    5f00:	30 41       	ret			

00005f02 <.L44>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f02:	1a 42 34 1c 	mov	&0x1c34,r10	;0x1c34

00005f06 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5f06:	0d 4a       	mov	r10,	r13	;

00005f08 <.L42>:
            wkup_timing[i].data = ticks;
    5f08:	0c 4d       	mov	r13,	r12	;
    5f0a:	5c 06       	rlam	#2,	r12	;
    5f0c:	0c 5d       	add	r13,	r12	;
    5f0e:	5c 02       	rlam	#1,	r12	;
    5f10:	08 4c       	mov	r12,	r8	;
    5f12:	8c 4e 38 1c 	mov	r14,	7224(r12); 0x1c38
    5f16:	8c 43 3a 1c 	mov	#0,	7226(r12);r3 As==00, 0x1c3a

00005f1a <.Loc.197.1>:
            _pers_timer_update_data(i,WKUP , ticks);
    5f1a:	4f 43       	clr.b	r15		;
    5f1c:	4d 43       	clr.b	r13		;
    5f1e:	4c 4a       	mov.b	r10,	r12	;
    5f20:	b0 12 c4 67 	call	#26564		;#0x67c4

00005f24 <.Loc.198.1>:
            wkup_timing[i].thread_id = thread_id;
    5f24:	c8 49 36 1c 	mov.b	r9,	7222(r8); 0x1c36

00005f28 <.Loc.199.1>:
            _pers_timer_update_thread_id(i, WKUP, thread_id);
    5f28:	4e 49       	mov.b	r9,	r14	;
    5f2a:	4d 43       	clr.b	r13		;
    5f2c:	4c 4a       	mov.b	r10,	r12	;
    5f2e:	b0 12 16 68 	call	#26646		;#0x6816

00005f32 <.Loc.200.1>:
            wkup_timing[i].status = USED;
    5f32:	98 43 34 1c 	mov	#1,	7220(r8);r3 As==01, 0x1c34

00005f36 <.Loc.196.1>:
            wkup_timing[i].data = ticks;
    5f36:	38 50 34 1c 	add	#7220,	r8	;#0x1c34

00005f3a <.Loc.201.1>:
            _pers_timer_update_status(i, WKUP, USED);
    5f3a:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f3c:	4d 43       	clr.b	r13		;
    5f3e:	4c 4a       	mov.b	r10,	r12	;
    5f40:	b0 12 60 68 	call	#26720		;#0x6860
    5f44:	d3 3f       	jmp	$-88     	;abs 0x5eec

00005f46 <.L45>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f46:	5a 43       	mov.b	#1,	r10	;r3 As==01

00005f48 <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5f48:	5d 43       	mov.b	#1,	r13	;r3 As==01
    5f4a:	de 3f       	jmp	$-66     	;abs 0x5f08

00005f4c <.L46>:
    for (i = 0; i < MAX_WKUP_THREADS; i++)
    5f4c:	6a 43       	mov.b	#2,	r10	;r3 As==10

00005f4e <.Loc.194.1>:
        if (wkup_timing[i].status == NOT_USED)
    5f4e:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f50:	db 3f       	jmp	$-72     	;abs 0x5f08

00005f52 <clear_xpr_status>:
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
void clear_xpr_status(uint8_t thread_id){
    5f52:	4d 4c       	mov.b	r12,	r13	;

00005f54 <.Loc.236.1>:
    
    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].thread_id == thread_id){
    5f54:	5c 92 18 1c 	cmp.b	&0x1c18,r12	;0x1c18
    5f58:	13 24       	jz	$+40     	;abs 0x5f80

00005f5a <.Loc.237.1>:
    5f5a:	c2 9d 22 1c 	cmp.b	r13,	&0x1c22	;
    5f5e:	13 24       	jz	$+40     	;abs 0x5f86

00005f60 <.Loc.237.1>:
    5f60:	c2 9d 2c 1c 	cmp.b	r13,	&0x1c2c	;
    5f64:	0c 20       	jnz	$+26     	;abs 0x5f7e

00005f66 <.Loc.237.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5f66:	6c 43       	mov.b	#2,	r12	;r3 As==10

00005f68 <.LVL48>:
        if (xpr_timing[i].thread_id == thread_id){
    5f68:	6e 43       	mov.b	#2,	r14	;r3 As==10

00005f6a <.L49>:
            xpr_timing[i].status = NOT_USED;
    5f6a:	0d 4e       	mov	r14,	r13	;

00005f6c <.LVL50>:
    5f6c:	5d 06       	rlam	#2,	r13	;
    5f6e:	0d 5e       	add	r14,	r13	;
    5f70:	5d 02       	rlam	#1,	r13	;
    5f72:	8d 43 16 1c 	mov	#0,	7190(r13);r3 As==00, 0x1c16

00005f76 <.Loc.241.1>:
            _pers_timer_update_status(i,XPR,NOT_USED);
    5f76:	4e 43       	clr.b	r14		;
    5f78:	6d 43       	mov.b	#2,	r13	;r3 As==10
    5f7a:	b0 12 60 68 	call	#26720		;#0x6860

00005f7e <.L48>:
            break;
        }    
    }

}
    5f7e:	30 41       	ret			

00005f80 <.L51>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5f80:	4c 43       	clr.b	r12		;

00005f82 <.LVL53>:
        if (xpr_timing[i].thread_id == thread_id){
    5f82:	4e 43       	clr.b	r14		;
    5f84:	f2 3f       	jmp	$-26     	;abs 0x5f6a

00005f86 <.L52>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5f86:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005f88 <.LVL55>:
        if (xpr_timing[i].thread_id == thread_id){
    5f88:	5e 43       	mov.b	#1,	r14	;r3 As==01
    5f8a:	ef 3f       	jmp	$-32     	;abs 0x5f6a

00005f8c <unpack_xpr_to_local>:

//unload persistent buffer to local variables for fewer fram accesses
void unpack_xpr_to_local(){
    5f8c:	1a 15       	pushm	#2,	r10	;16-bit words

00005f8e <.LCFI14>:
    5f8e:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00005f92 <.LCFI15>:
    5f92:	49 43       	clr.b	r9		;

00005f94 <.L54>:

    uint8_t i;
    for (i = 0; i < MAX_XPR_THREADS; i++)
    {
        xpr_timing[i] = _pers_timer_get(i,XPR);  
    5f94:	0a 49       	mov	r9,	r10	;
    5f96:	5a 06       	rlam	#2,	r10	;
    5f98:	0a 59       	add	r9,	r10	;
    5f9a:	5a 02       	rlam	#1,	r10	;
    5f9c:	3a 50 16 1c 	add	#7190,	r10	;#0x1c16
    5fa0:	6e 43       	mov.b	#2,	r14	;r3 As==10
    5fa2:	4d 49       	mov.b	r9,	r13	;
    5fa4:	0c 41       	mov	r1,	r12	;
    5fa6:	b0 12 ea 69 	call	#27114		;#0x69ea
    5faa:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    5fae:	0d 41       	mov	r1,	r13	;
    5fb0:	0c 4a       	mov	r10,	r12	;
    5fb2:	b0 12 10 6b 	call	#27408		;#0x6b10

00005fb6 <.LVL59>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5fb6:	19 53       	inc	r9		;

00005fb8 <.Loc.252.1>:
    5fb8:	39 90 03 00 	cmp	#3,	r9	;
    5fbc:	eb 23       	jnz	$-40     	;abs 0x5f94

00005fbe <.Loc.257.1>:
    }

}
    5fbe:	31 50 0a 00 	add	#10,	r1	;#0x000a

00005fc2 <.LCFI16>:
    5fc2:	19 17       	popm	#2,	r10	;16-bit words

00005fc4 <.LCFI17>:
    5fc4:	30 41       	ret			

00005fc6 <refresh_xpr_timers>:

void refresh_xpr_timers(){
    5fc6:	6a 15       	pushm	#7,	r10	;16-bit words

00005fc8 <.LCFI18>:
    5fc8:	47 43       	clr.b	r7		;

00005fca <.Loc.261.1>:
    
    uint8_t i,first = 1;
    uint8_t nxt_xpr;
    int32_t min_xpr;

    for (i = 0; i < MAX_XPR_THREADS; i++)
    5fca:	3a 40 16 1c 	mov	#7190,	r10	;#0x1c16

00005fce <.Loc.261.1>:
    uint8_t i,first = 1;
    5fce:	5c 43       	mov.b	#1,	r12	;r3 As==01

00005fd0 <.Loc.265.1>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    5fd0:	46 43       	clr.b	r6		;

00005fd2 <.L64>:
    {

        if (xpr_timing[i].status == USED)
    5fd2:	9a 93 00 00 	cmp	#1,	0(r10)	;r3 As==01
    5fd6:	4a 20       	jnz	$+150    	;abs 0x606c

00005fd8 <.Loc.271.1>:
        {
            
            if (first)
    5fd8:	14 4a 04 00 	mov	4(r10),	r4	;
    5fdc:	15 4a 06 00 	mov	6(r10),	r5	;

00005fe0 <.Loc.271.1>:
    5fe0:	0c 93       	cmp	#0,	r12	;r3 As==00
    5fe2:	04 24       	jz	$+10     	;abs 0x5fec

00005fe4 <.LVL63>:
            {
                min_xpr = xpr_timing[i].data;
                nxt_xpr = xpr_timing[i].thread_id;
    5fe4:	57 4a 02 00 	mov.b	2(r10),	r7	;

00005fe8 <.LVL64>:
                min_xpr = xpr_timing[i].data;
    5fe8:	09 44       	mov	r4,	r9	;
    5fea:	08 45       	mov	r5,	r8	;

00005fec <.L58>:
                first = 0;
            }
            
            xpr_timing[i].data = xpr_timing[i].data - __get_time(); 
    5fec:	b0 12 6e 67 	call	#26478		;#0x676e

00005ff0 <.Loc.278.1>:
    5ff0:	0e 44       	mov	r4,	r14	;
    5ff2:	0f 45       	mov	r5,	r15	;
    5ff4:	0e 8c       	sub	r12,	r14	;
    5ff6:	0f 7d       	subc	r13,	r15	;

00005ff8 <.Loc.278.1>:
    5ff8:	8a 4e 04 00 	mov	r14,	4(r10)	;
    5ffc:	8a 4f 06 00 	mov	r15,	6(r10)	;

00006000 <.Loc.279.1>:
            _pers_timer_update_data(i,XPR,xpr_timing[i].data);
    6000:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6002:	4c 46       	mov.b	r6,	r12	;
    6004:	b0 12 c4 67 	call	#26564		;#0x67c4

00006008 <.Loc.281.1>:

            if (xpr_timing[i].data <= 0)
    6008:	4c 43       	clr.b	r12		;
    600a:	1c 9a 06 00 	cmp	6(r10),	r12	;
    600e:	10 38       	jl	$+34     	;abs 0x6030
    6010:	8a 93 06 00 	cmp	#0,	6(r10)	;r3 As==00
    6014:	03 20       	jnz	$+8      	;abs 0x601c
    6016:	8a 93 04 00 	cmp	#0,	4(r10)	;r3 As==00
    601a:	0a 20       	jnz	$+22     	;abs 0x6030

0000601c <.L70>:
            {
                //evict thread 
                //TODO:fix bug to disable ISR
                //TODO:find a more elegant way??
                //__stop_thread(__get_thread(xpr_timing[i].thread_id));
                __evict_thread(__get_thread(xpr_timing[i].thread_id));
    601c:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    6020:	b0 12 4e 5b 	call	#23374		;#0x5b4e
    6024:	b0 12 f4 5a 	call	#23284		;#0x5af4

00006028 <.Loc.289.1>:
                //update struct
                clear_xpr_status(xpr_timing[i].thread_id);
    6028:	5c 4a 02 00 	mov.b	2(r10),	r12	;
    602c:	b0 12 52 5f 	call	#24402		;#0x5f52

00006030 <.L59>:
            }

            if (xpr_timing[i].data > 0)
    6030:	1e 4a 04 00 	mov	4(r10),	r14	;
    6034:	1d 4a 06 00 	mov	6(r10),	r13	;

00006038 <.Loc.292.1>:
    6038:	4c 43       	clr.b	r12		;
    603a:	0c 9d       	cmp	r13,	r12	;
    603c:	04 38       	jl	$+10     	;abs 0x6046
    603e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6040:	14 20       	jnz	$+42     	;abs 0x606a
    6042:	0e 93       	cmp	#0,	r14	;r3 As==00
    6044:	12 24       	jz	$+38     	;abs 0x606a

00006046 <.L71>:
            {   //TODO:priority convention
                if ((min_xpr > xpr_timing[i].data) || (min_xpr == xpr_timing[i].data && nxt_xpr < xpr_timing[i].thread_id))
    6046:	0d 98       	cmp	r8,	r13	;
    6048:	0c 38       	jl	$+26     	;abs 0x6062
    604a:	08 9d       	cmp	r13,	r8	;
    604c:	02 20       	jnz	$+6      	;abs 0x6052
    604e:	0e 99       	cmp	r9,	r14	;
    6050:	08 28       	jnc	$+18     	;abs 0x6062

00006052 <.L72>:
    6052:	4c 43       	clr.b	r12		;

00006054 <.Loc.294.1>:
    6054:	0e 99       	cmp	r9,	r14	;
    6056:	0a 20       	jnz	$+22     	;abs 0x606c
    6058:	0d 98       	cmp	r8,	r13	;
    605a:	08 20       	jnz	$+18     	;abs 0x606c

0000605c <.Loc.294.1>:
    605c:	57 9a 02 00 	cmp.b	2(r10),	r7	;
    6060:	05 2c       	jc	$+12     	;abs 0x606c

00006062 <.L62>:
                {
                    min_xpr = xpr_timing[i].data;
                    nxt_xpr = xpr_timing[i].thread_id;
    6062:	57 4a 02 00 	mov.b	2(r10),	r7	;

00006066 <.LVL72>:
    6066:	09 4e       	mov	r14,	r9	;
    6068:	08 4d       	mov	r13,	r8	;

0000606a <.L67>:
    606a:	4c 43       	clr.b	r12		;

0000606c <.L57>:
    for (i = 0; i < MAX_XPR_THREADS; i++)
    606c:	4d 46       	mov.b	r6,	r13	;
    606e:	5d 53       	inc.b	r13		;
    6070:	46 4d       	mov.b	r13,	r6	;

00006072 <.LVL75>:
    6072:	3a 50 0a 00 	add	#10,	r10	;#0x000a

00006076 <.Loc.265.1>:
    6076:	7d 90 03 00 	cmp.b	#3,	r13	;
    607a:	ab 23       	jnz	$-168    	;abs 0x5fd2

0000607c <.Loc.303.1>:
                }
            }
       }
    }

    if (!first)
    607c:	0c 93       	cmp	#0,	r12	;r3 As==00
    607e:	0d 20       	jnz	$+28     	;abs 0x609a

00006080 <.Loc.304.1>:
    {   _pers_timer_update_nxt_thread(XPR,nxt_xpr);
    6080:	4d 47       	mov.b	r7,	r13	;

00006082 <.LVL76>:
    6082:	6c 43       	mov.b	#2,	r12	;r3 As==10

00006084 <.LVL77>:
    6084:	b0 12 a6 68 	call	#26790		;#0x68a6

00006088 <.Loc.305.1>:
        _pers_timer_update_nxt_time(XPR,min_xpr); 
    6088:	0d 49       	mov	r9,	r13	;
    608a:	6c 43       	mov.b	#2,	r12	;r3 As==10
    608c:	b0 12 b4 68 	call	#26804		;#0x68b4

00006090 <.Loc.308.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_xpr);
        set_timer_xpr(min_xpr);
    6090:	0c 49       	mov	r9,	r12	;
    6092:	b0 12 fa 66 	call	#26362		;#0x66fa

00006096 <.L56>:
    }
    //no pending wake up timer was found.
    else stop_timer_xpr();

}
    6096:	64 17       	popm	#7,	r10	;16-bit words

00006098 <.LCFI19>:
    6098:	30 41       	ret			

0000609a <.L65>:
    else stop_timer_xpr();
    609a:	b0 12 10 67 	call	#26384		;#0x6710

0000609e <.LVL82>:
}
    609e:	fb 3f       	jmp	$-8      	;abs 0x6096

000060a0 <set_expire_timer>:


void set_expire_timer(uint8_t thread_id, uint32_t ticks){
    60a0:	5a 15       	pushm	#6,	r10	;16-bit words

000060a2 <.LCFI21>:
    60a2:	48 4c       	mov.b	r12,	r8	;
    60a4:	09 4d       	mov	r13,	r9	;
    60a6:	07 4e       	mov	r14,	r7	;

000060a8 <.Loc.318.1>:

    uint8_t i,cmpl = 0;

    //__set_xpr_timer(__get_thread(thread_id), ticks);

    unpack_xpr_to_local();
    60a8:	b0 12 8c 5f 	call	#24460		;#0x5f8c

000060ac <.LVL85>:

    for ( i = 0; i < MAX_XPR_THREADS; i++)
    {
        if (xpr_timing[i].status == NOT_USED)
    60ac:	82 93 16 1c 	cmp	#0,	&0x1c16	;r3 As==00
    60b0:	1b 24       	jz	$+56     	;abs 0x60e8

000060b2 <.Loc.324.1>:
    60b2:	82 93 20 1c 	cmp	#0,	&0x1c20	;r3 As==00
    60b6:	43 24       	jz	$+136    	;abs 0x613e

000060b8 <.Loc.324.1>:
    60b8:	82 93 2a 1c 	cmp	#0,	&0x1c2a	;r3 As==00
    60bc:	43 24       	jz	$+136    	;abs 0x6144

000060be <.Loc.324.1>:
    
    }else{

        //failure 
        //TODO: ADD fail check 
        _pers_timer_update_data(MAX_XPR_THREADS-1,XPR,ticks);
    60be:	0e 49       	mov	r9,	r14	;
    60c0:	0f 47       	mov	r7,	r15	;
    60c2:	6d 43       	mov.b	#2,	r13	;r3 As==10
    60c4:	6c 43       	mov.b	#2,	r12	;r3 As==10
    60c6:	b0 12 c4 67 	call	#26564		;#0x67c4

000060ca <.Loc.348.1>:
        _pers_timer_update_thread_id(MAX_XPR_THREADS-1,XPR,thread_id);
    60ca:	4e 48       	mov.b	r8,	r14	;
    60cc:	6d 43       	mov.b	#2,	r13	;r3 As==10
    60ce:	6c 43       	mov.b	#2,	r12	;r3 As==10
    60d0:	b0 12 16 68 	call	#26646		;#0x6816

000060d4 <.L83>:
        refresh_xpr_timers();
    60d4:	b0 12 c6 5f 	call	#24518		;#0x5fc6

000060d8 <.Loc.352.1>:
        refresh_xpr_timers();
    }

    _pers_timer_update_lock(XPR);
    60d8:	6c 43       	mov.b	#2,	r12	;r3 As==10
    60da:	b0 12 c2 68 	call	#26818		;#0x68c2

000060de <.Loc.353.1>:
    _pers_timer_commit(XPR);
    60de:	6c 43       	mov.b	#2,	r12	;r3 As==10
    60e0:	b0 12 a8 69 	call	#27048		;#0x69a8

000060e4 <.Loc.354.1>:
}
    60e4:	55 17       	popm	#6,	r10	;16-bit words

000060e6 <.LCFI22>:
    60e6:	30 41       	ret			

000060e8 <.L80>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    60e8:	1a 42 16 1c 	mov	&0x1c16,r10	;0x1c16

000060ec <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    60ec:	06 4a       	mov	r10,	r6	;

000060ee <.L78>:
            xpr_timing[i].data = ticks + __get_time();
    60ee:	35 40 6e 67 	mov	#26478,	r5	;#0x676e
    60f2:	85 12       	call	r5		;

000060f4 <.Loc.328.1>:
    60f4:	0e 46       	mov	r6,	r14	;
    60f6:	5e 06       	rlam	#2,	r14	;
    60f8:	0e 56       	add	r6,	r14	;
    60fa:	5e 02       	rlam	#1,	r14	;
    60fc:	06 4e       	mov	r14,	r6	;

000060fe <.Loc.328.1>:
    60fe:	0c 59       	add	r9,	r12	;
    6100:	8e 4c 1a 1c 	mov	r12,	7194(r14); 0x1c1a
    6104:	0d 67       	addc	r7,	r13	;
    6106:	8e 4d 1c 1c 	mov	r13,	7196(r14); 0x1c1c

0000610a <.Loc.329.1>:
            _pers_timer_update_data(i,XPR,__get_time()+ticks);
    610a:	85 12       	call	r5		;

0000610c <.Loc.329.1>:
    610c:	0e 4c       	mov	r12,	r14	;
    610e:	0e 59       	add	r9,	r14	;
    6110:	0f 4d       	mov	r13,	r15	;
    6112:	0f 67       	addc	r7,	r15	;
    6114:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6116:	4c 4a       	mov.b	r10,	r12	;
    6118:	b0 12 c4 67 	call	#26564		;#0x67c4

0000611c <.Loc.330.1>:
            xpr_timing[i].thread_id = thread_id;
    611c:	c6 48 18 1c 	mov.b	r8,	7192(r6); 0x1c18

00006120 <.Loc.331.1>:
            _pers_timer_update_thread_id(i,XPR,thread_id);
    6120:	4e 48       	mov.b	r8,	r14	;
    6122:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6124:	4c 4a       	mov.b	r10,	r12	;
    6126:	b0 12 16 68 	call	#26646		;#0x6816

0000612a <.Loc.332.1>:
            xpr_timing[i].status = USED;
    612a:	96 43 16 1c 	mov	#1,	7190(r6);r3 As==01, 0x1c16

0000612e <.Loc.328.1>:
            xpr_timing[i].data = ticks + __get_time();
    612e:	36 50 16 1c 	add	#7190,	r6	;#0x1c16

00006132 <.Loc.333.1>:
            _pers_timer_update_status(i,XPR,USED);
    6132:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6134:	6d 43       	mov.b	#2,	r13	;r3 As==10
    6136:	4c 4a       	mov.b	r10,	r12	;
    6138:	b0 12 60 68 	call	#26720		;#0x6860
    613c:	cb 3f       	jmp	$-104    	;abs 0x60d4

0000613e <.L81>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    613e:	5a 43       	mov.b	#1,	r10	;r3 As==01

00006140 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6140:	56 43       	mov.b	#1,	r6	;r3 As==01
    6142:	d5 3f       	jmp	$-84     	;abs 0x60ee

00006144 <.L82>:
    for ( i = 0; i < MAX_XPR_THREADS; i++)
    6144:	6a 43       	mov.b	#2,	r10	;r3 As==10

00006146 <.Loc.326.1>:
        if (xpr_timing[i].status == NOT_USED)
    6146:	66 43       	mov.b	#2,	r6	;r3 As==10
    6148:	d2 3f       	jmp	$-90     	;abs 0x60ee

0000614a <stop_expire_timer>:


void stop_expire_timer(uint8_t thread_id){
    614a:	0a 15       	pushm	#1,	r10	;16-bit words

0000614c <.LCFI24>:
    614c:	4a 4c       	mov.b	r12,	r10	;

0000614e <.Loc.361.1>:
   
    //__set_xpr_timer(__get_thread(thread_id),0);

    unpack_xpr_to_local();
    614e:	b0 12 8c 5f 	call	#24460		;#0x5f8c

00006152 <.LVL104>:

    clear_xpr_status(thread_id);
    6152:	4c 4a       	mov.b	r10,	r12	;
    6154:	b0 12 52 5f 	call	#24402		;#0x5f52

00006158 <.Loc.366.1>:

    //TODO:care infinite loop?
    refresh_xpr_timers();
    6158:	b0 12 c6 5f 	call	#24518		;#0x5fc6

0000615c <.Loc.368.1>:

    _pers_timer_update_lock(XPR);
    615c:	6c 43       	mov.b	#2,	r12	;r3 As==10
    615e:	b0 12 c2 68 	call	#26818		;#0x68c2

00006162 <.Loc.369.1>:
    _pers_timer_commit(XPR);
    6162:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6164:	b0 12 a8 69 	call	#27048		;#0x69a8

00006168 <.Loc.371.1>:

}
    6168:	0a 17       	popm	#1,	r10	;16-bit words

0000616a <.LCFI25>:
    616a:	30 41       	ret			

0000616c <unpack_pdc_to_local>:
//if the time limit has been surpassed by a death event the thread is evicted from the 
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/
//unload persistent buffer to local variables for fewer fram accesses
void unpack_pdc_to_local(){
    616c:	31 80 0a 00 	sub	#10,	r1	;#0x000a

00006170 <.LCFI26>:

    uint8_t i;
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        pdc_timing[i] = _pers_timer_get(i,PDC);  
    6170:	5e 43       	mov.b	#1,	r14	;r3 As==01
    6172:	4d 43       	clr.b	r13		;
    6174:	0c 41       	mov	r1,	r12	;
    6176:	b0 12 ea 69 	call	#27114		;#0x69ea
    617a:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    617e:	0d 41       	mov	r1,	r13	;
    6180:	3c 40 0c 1c 	mov	#7180,	r12	;#0x1c0c
    6184:	b0 12 10 6b 	call	#27408		;#0x6b10

00006188 <.Loc.383.1>:
    }

}
    6188:	31 50 0a 00 	add	#10,	r1	;#0x000a

0000618c <.LCFI27>:
    618c:	30 41       	ret			

0000618e <refresh_pdc_timers>:
    _pers_timer_commit(XPR);

}

/*Internal functions*/
void refresh_pdc_timers(){
    618e:	2a 15       	pushm	#3,	r10	;16-bit words

00006190 <.LCFI28>:
    uint8_t i,first = 1;

    for (i = 0; i < MAX_PDC_THREADS; i++)
    {

        if (pdc_timing[i].status == USED)
    6190:	92 93 0c 1c 	cmp	#1,	&0x1c0c	;r3 As==01
    6194:	7d 20       	jnz	$+252    	;abs 0x6290

00006196 <.Loc.463.1>:
        {
            
            if (first)
            {
                min_pdc = pdc_timing[i].data;
    6196:	18 42 10 1c 	mov	&0x1c10,r8	;0x1c10
    619a:	19 42 12 1c 	mov	&0x1c12,r9	;0x1c12

0000619e <.Loc.465.1>:
    619e:	82 48 52 1c 	mov	r8,	&0x1c52	;

000061a2 <.Loc.466.1>:
                nxt_pdc = pdc_timing[i].thread_id;
    61a2:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    61a6:	54 1c 

000061a8 <.Loc.467.1>:
                first = 0;
            }


            pdc_timing[i].data = pdc_timing[i].data - __get_time(); 
    61a8:	b0 12 6e 67 	call	#26478		;#0x676e

000061ac <.Loc.471.1>:
    61ac:	0e 48       	mov	r8,	r14	;
    61ae:	0f 49       	mov	r9,	r15	;
    61b0:	0e 8c       	sub	r12,	r14	;
    61b2:	0f 7d       	subc	r13,	r15	;

000061b4 <.Loc.471.1>:
    61b4:	82 4e 10 1c 	mov	r14,	&0x1c10	;
    61b8:	82 4f 12 1c 	mov	r15,	&0x1c12	;

000061bc <.Loc.472.1>:
            _pers_timer_update_data(i,PDC,pdc_timing[i].data);
    61bc:	5d 43       	mov.b	#1,	r13	;r3 As==01
    61be:	4c 43       	clr.b	r12		;
    61c0:	b0 12 c4 67 	call	#26564		;#0x67c4

000061c4 <.Loc.474.1>:
            
            if (pdc_timing[i].data < 0 && pdc_timing[i].data > -tol)
    61c4:	1c 42 10 1c 	mov	&0x1c10,r12	;0x1c10
    61c8:	1d 42 12 1c 	mov	&0x1c12,r13	;0x1c12

000061cc <.Loc.474.1>:
    61cc:	09 4d       	mov	r13,	r9	;
    61ce:	0d 93       	cmp	#0,	r13	;r3 As==00
    61d0:	44 34       	jge	$+138    	;abs 0x625a

000061d2 <.Loc.474.1>:
    61d2:	5e 42 5d 1c 	mov.b	&0x1c5d,r14	;0x1c5d
    61d6:	08 43       	clr	r8		;
    61d8:	08 8e       	sub	r14,	r8	;
    61da:	0e 48       	mov	r8,	r14	;
    61dc:	0f 48       	mov	r8,	r15	;
    61de:	4e 18 0f 11 	rpt #15 { rrax.w	r15		;

000061e2 <.Loc.474.1>:
    61e2:	0f 9d       	cmp	r13,	r15	;
    61e4:	04 38       	jl	$+10     	;abs 0x61ee

000061e6 <.Loc.474.1>:
    61e6:	0d 9f       	cmp	r15,	r13	;
    61e8:	20 20       	jnz	$+66     	;abs 0x622a
    61ea:	08 9c       	cmp	r12,	r8	;
    61ec:	1e 2c       	jc	$+62     	;abs 0x622a

000061ee <.L100>:
            {
                if ((min_pdc > -pdc_timing[i].data) || (min_pdc == -pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    61ee:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    61f2:	08 4a       	mov	r10,	r8	;
    61f4:	09 43       	clr	r9		;

000061f6 <.Loc.476.1>:
    61f6:	4e 43       	clr.b	r14		;
    61f8:	4f 43       	clr.b	r15		;
    61fa:	0e 8c       	sub	r12,	r14	;
    61fc:	0f 7d       	subc	r13,	r15	;

000061fe <.Loc.476.1>:
    61fe:	0f 93       	cmp	#0,	r15	;r3 As==00
    6200:	0c 38       	jl	$+26     	;abs 0x621a
    6202:	0f 93       	cmp	#0,	r15	;r3 As==00
    6204:	02 20       	jnz	$+6      	;abs 0x620a
    6206:	0e 98       	cmp	r8,	r14	;
    6208:	08 28       	jnc	$+18     	;abs 0x621a

0000620a <.L101>:
    620a:	08 9e       	cmp	r14,	r8	;
    620c:	17 20       	jnz	$+48     	;abs 0x623c
    620e:	0f 93       	cmp	#0,	r15	;r3 As==00
    6210:	15 20       	jnz	$+44     	;abs 0x623c

00006212 <.Loc.476.1>:
    6212:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    6216:	0e 1c 
    6218:	11 2c       	jc	$+36     	;abs 0x623c

0000621a <.L92>:
                {
                    min_pdc = -pdc_timing[i].data;
    621a:	4e 43       	clr.b	r14		;
    621c:	0e 8c       	sub	r12,	r14	;
    621e:	82 4e 52 1c 	mov	r14,	&0x1c52	;

00006222 <.L107>:
            if (pdc_timing[i].data > 0)
            {   //TODO:priority convention
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
                {
                    min_pdc = pdc_timing[i].data;
                    nxt_pdc = pdc_timing[i].thread_id;
    6222:	d2 42 0e 1c 	mov.b	&0x1c0e,&0x1c54	;0x1c0e
    6226:	54 1c 

00006228 <.Loc.494.1>:
                }
            }
       }
    }

    if (!first)
    6228:	09 3c       	jmp	$+20     	;abs 0x623c

0000622a <.L90>:
            }else if (pdc_timing[i].data < 0 && pdc_timing[i].data < -tol) pdc_timing[i].status = NOT_USED;
    622a:	09 4d       	mov	r13,	r9	;
    622c:	0d 9f       	cmp	r15,	r13	;
    622e:	04 38       	jl	$+10     	;abs 0x6238
    6230:	0f 9d       	cmp	r13,	r15	;
    6232:	04 20       	jnz	$+10     	;abs 0x623c
    6234:	0c 98       	cmp	r8,	r12	;
    6236:	02 2c       	jc	$+6      	;abs 0x623c

00006238 <.L102>:
    6238:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

0000623c <.L94>:
    {
       _pers_timer_update_nxt_thread(PDC,nxt_pdc);
    623c:	5d 42 54 1c 	mov.b	&0x1c54,r13	;0x1c54
    6240:	5c 43       	mov.b	#1,	r12	;r3 As==01
    6242:	b0 12 a6 68 	call	#26790		;#0x68a6

00006246 <.Loc.497.1>:
       _pers_timer_update_nxt_time(PDC,min_pdc);
    6246:	1d 42 52 1c 	mov	&0x1c52,r13	;0x1c52
    624a:	5c 43       	mov.b	#1,	r12	;r3 As==01
    624c:	b0 12 b4 68 	call	#26804		;#0x68b4

00006250 <.Loc.500.1>:
        //set the new pending ISR timer.
        //timerA2_set_CCR0(min_pdc);
        set_timer_pdc(min_pdc);
    6250:	1c 42 52 1c 	mov	&0x1c52,r12	;0x1c52
    6254:	b0 12 16 67 	call	#26390		;#0x6716

00006258 <.Loc.507.1>:
    //no pending wake up timer was found.
    else stop_timer();



}
    6258:	1d 3c       	jmp	$+60     	;abs 0x6294

0000625a <.L88>:
            if (pdc_timing[i].data > 0)
    625a:	0e 4c       	mov	r12,	r14	;
    625c:	0e dd       	bis	r13,	r14	;
    625e:	0e 93       	cmp	#0,	r14	;r3 As==00
    6260:	ed 27       	jz	$-36     	;abs 0x623c

00006262 <.Loc.485.1>:
                if ((min_pdc > pdc_timing[i].data) || (min_pdc == pdc_timing[i].data && nxt_pdc > pdc_timing[i].thread_id))
    6262:	1a 42 52 1c 	mov	&0x1c52,r10	;0x1c52
    6266:	0e 4a       	mov	r10,	r14	;
    6268:	0f 43       	clr	r15		;

0000626a <.Loc.485.1>:
    626a:	0d 93       	cmp	#0,	r13	;r3 As==00
    626c:	0e 38       	jl	$+30     	;abs 0x628a
    626e:	0d 93       	cmp	#0,	r13	;r3 As==00
    6270:	03 20       	jnz	$+8      	;abs 0x6278
    6272:	09 4c       	mov	r12,	r9	;
    6274:	0c 9e       	cmp	r14,	r12	;
    6276:	09 28       	jnc	$+20     	;abs 0x628a

00006278 <.L103>:
    6278:	09 4c       	mov	r12,	r9	;
    627a:	0c 9e       	cmp	r14,	r12	;
    627c:	df 23       	jnz	$-64     	;abs 0x623c
    627e:	0d 9f       	cmp	r15,	r13	;
    6280:	dd 23       	jnz	$-68     	;abs 0x623c

00006282 <.Loc.485.1>:
    6282:	d2 92 54 1c 	cmp.b	&0x1c54,&0x1c0e	;0x1c54
    6286:	0e 1c 
    6288:	d9 2f       	jc	$-76     	;abs 0x623c

0000628a <.L97>:
                    min_pdc = pdc_timing[i].data;
    628a:	82 4c 52 1c 	mov	r12,	&0x1c52	;
    628e:	c9 3f       	jmp	$-108    	;abs 0x6222

00006290 <.L87>:
    else stop_timer();
    6290:	b0 12 d4 66 	call	#26324		;#0x66d4

00006294 <.L86>:
}
    6294:	28 17       	popm	#3,	r10	;16-bit words

00006296 <.LCFI29>:
    6296:	30 41       	ret			

00006298 <set_periodic_timer>:
void set_periodic_timer(uint8_t thread_id, uint16_t ticks){
    6298:	2a 15       	pushm	#3,	r10	;16-bit words

0000629a <.LCFI30>:
    629a:	49 4c       	mov.b	r12,	r9	;
    629c:	0a 4d       	mov	r13,	r10	;

0000629e <.Loc.392.1>:
    unpack_pdc_to_local();
    629e:	b0 12 6c 61 	call	#24940		;#0x616c

000062a2 <.LVL127>:
        if (pdc_timing[i].status == NOT_USED)
    62a2:	82 93 0c 1c 	cmp	#0,	&0x1c0c	;r3 As==00
    62a6:	2e 20       	jnz	$+94     	;abs 0x6304

000062a8 <.Loc.403.1>:
            __set_pdc_timer(__get_thread(thread_id), ticks);
    62a8:	38 40 4e 5b 	mov	#23374,	r8	;#0x5b4e
    62ac:	4c 49       	mov.b	r9,	r12	;
    62ae:	88 12       	call	r8		;
    62b0:	0d 4a       	mov	r10,	r13	;
    62b2:	b0 12 1a 5b 	call	#23322		;#0x5b1a

000062b6 <.Loc.404.1>:
            __set_pdc_period(__get_thread(thread_id), 1);
    62b6:	4c 49       	mov.b	r9,	r12	;
    62b8:	88 12       	call	r8		;
    62ba:	5d 43       	mov.b	#1,	r13	;r3 As==01
    62bc:	b0 12 20 5b 	call	#23328		;#0x5b20

000062c0 <.Loc.405.1>:
            _pers_timer_update_data(i,PDC,ticks);
    62c0:	0e 4a       	mov	r10,	r14	;
    62c2:	4f 43       	clr.b	r15		;
    62c4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    62c6:	4c 43       	clr.b	r12		;
    62c8:	b0 12 c4 67 	call	#26564		;#0x67c4

000062cc <.Loc.406.1>:
            pdc_timing[i].data = ticks;
    62cc:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    62d0:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

000062d4 <.Loc.407.1>:
            _pers_timer_update_thread_id(i,PDC,thread_id);
    62d4:	4e 49       	mov.b	r9,	r14	;
    62d6:	5d 43       	mov.b	#1,	r13	;r3 As==01
    62d8:	4c 43       	clr.b	r12		;
    62da:	b0 12 16 68 	call	#26646		;#0x6816

000062de <.Loc.408.1>:
            pdc_timing[i].thread_id = thread_id;
    62de:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

000062e2 <.Loc.409.1>:
            _pers_timer_update_status(i,PDC,USED);
    62e2:	5e 43       	mov.b	#1,	r14	;r3 As==01
    62e4:	5d 43       	mov.b	#1,	r13	;r3 As==01
    62e6:	4c 43       	clr.b	r12		;
    62e8:	b0 12 60 68 	call	#26720		;#0x6860

000062ec <.Loc.410.1>:
            pdc_timing[i].status = USED;
    62ec:	92 43 0c 1c 	mov	#1,	&0x1c0c	;r3 As==01

000062f0 <.L111>:
        refresh_pdc_timers();
    62f0:	b0 12 8e 61 	call	#24974		;#0x618e

000062f4 <.Loc.433.1>:
    _pers_timer_update_lock(PDC);
    62f4:	5c 43       	mov.b	#1,	r12	;r3 As==01
    62f6:	b0 12 c2 68 	call	#26818		;#0x68c2

000062fa <.Loc.434.1>:
    _pers_timer_commit(PDC);
    62fa:	5c 43       	mov.b	#1,	r12	;r3 As==01
    62fc:	b0 12 a8 69 	call	#27048		;#0x69a8

00006300 <.Loc.435.1>:
}
    6300:	28 17       	popm	#3,	r10	;16-bit words

00006302 <.LCFI31>:
    6302:	30 41       	ret			

00006304 <.L109>:
        pdc_timing[MAX_PDC_THREADS-1].data = ticks;
    6304:	82 4a 10 1c 	mov	r10,	&0x1c10	;
    6308:	82 43 12 1c 	mov	#0,	&0x1c12	;r3 As==00

0000630c <.Loc.426.1>:
        _pers_timer_update_data(MAX_PDC_THREADS-1,PDC,ticks);
    630c:	0e 4a       	mov	r10,	r14	;
    630e:	4f 43       	clr.b	r15		;
    6310:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6312:	4c 43       	clr.b	r12		;
    6314:	b0 12 c4 67 	call	#26564		;#0x67c4

00006318 <.Loc.427.1>:
        pdc_timing[MAX_PDC_THREADS-1].thread_id = thread_id;
    6318:	c2 49 0e 1c 	mov.b	r9,	&0x1c0e	;

0000631c <.Loc.428.1>:
        _pers_timer_update_thread_id(MAX_PDC_THREADS-1,PDC,thread_id);
    631c:	4e 49       	mov.b	r9,	r14	;
    631e:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6320:	4c 43       	clr.b	r12		;
    6322:	b0 12 16 68 	call	#26646		;#0x6816
    6326:	e4 3f       	jmp	$-54     	;abs 0x62f0

00006328 <clear_pdc_status>:
void clear_pdc_status(uint8_t thread_id){
    
    uint8_t i; 
    for (i = 0; i < MAX_PDC_THREADS; i++)
    {
        if (pdc_timing[i].thread_id == thread_id){
    6328:	5c 92 0e 1c 	cmp.b	&0x1c0e,r12	;0x1c0e
    632c:	07 20       	jnz	$+16     	;abs 0x633c

0000632e <.Loc.516.1>:

            pdc_timing[i].status = NOT_USED;
    632e:	82 43 0c 1c 	mov	#0,	&0x1c0c	;r3 As==00

00006332 <.Loc.517.1>:
            _pers_timer_update_status(i,PDC,NOT_USED);
    6332:	4e 43       	clr.b	r14		;
    6334:	5d 43       	mov.b	#1,	r13	;r3 As==01
    6336:	4c 43       	clr.b	r12		;

00006338 <.LVL144>:
    6338:	b0 12 60 68 	call	#26720		;#0x6860

0000633c <.L112>:

        } 
    }
}
    633c:	30 41       	ret			

0000633e <stop_periodic_timer>:
void stop_periodic_timer(uint8_t thread_id){
    633e:	0a 15       	pushm	#1,	r10	;16-bit words

00006340 <.LCFI33>:
    6340:	4a 4c       	mov.b	r12,	r10	;

00006342 <.Loc.440.1>:
    unpack_pdc_to_local();
    6342:	b0 12 6c 61 	call	#24940		;#0x616c

00006346 <.LVL147>:
    clear_pdc_status(thread_id);
    6346:	4c 4a       	mov.b	r10,	r12	;
    6348:	b0 12 28 63 	call	#25384		;#0x6328

0000634c <.Loc.445.1>:
    refresh_pdc_timers();
    634c:	b0 12 8e 61 	call	#24974		;#0x618e

00006350 <.Loc.447.1>:
    _pers_timer_update_lock(XPR);
    6350:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6352:	b0 12 c2 68 	call	#26818		;#0x68c2

00006356 <.Loc.448.1>:
    _pers_timer_commit(XPR);
    6356:	6c 43       	mov.b	#2,	r12	;r3 As==10
    6358:	b0 12 a8 69 	call	#27048		;#0x69a8

0000635c <.Loc.450.1>:
}
    635c:	0a 17       	popm	#1,	r10	;16-bit words

0000635e <.LCFI34>:
    635e:	30 41       	ret			

00006360 <main>:
extern void __app_reboot();

int main(void)
{
    // always init microcontroller
    __mcu_init();
    6360:	b0 12 12 66 	call	#26130		;#0x6612

00006364 <.Loc.46.1>:

	// if this is the first boot
	if(!__inited){
    6364:	c2 93 aa 52 	cmp.b	#0,	&0x52aa	;r3 As==00
    6368:	08 20       	jnz	$+18     	;abs 0x637a

0000636a <.Loc.48.1>:
	    // init the scheduler state
	    __scheduler_boot_init();
    636a:	b0 12 34 5a 	call	#23092		;#0x5a34

0000636e <.Loc.50.1>:
	    // init the event handler
	    __events_boot_init();
    636e:	b0 12 c8 63 	call	#25544		;#0x63c8

00006372 <.Loc.57.1>:
	    __get_time_init();
	    //init the timers
	    __timers_init();
#endif
	    // init the applications
	    __app_init();
    6372:	b0 12 2e 5a 	call	#23086		;#0x5a2e

00006376 <.Loc.59.1>:
	    // the first and initial boot is finished
	    __inited = 1;
    6376:	d2 43 aa 52 	mov.b	#1,	&0x52aa	;r3 As==01

0000637a <.L2>:
		__get_time_init();
	}
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    637a:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

0000637e <.Loc.68.1>:
    637e:	
00006380 <L0^A>:
    6380:	04 02       	mova	@r2,	r4	;

00006382 <.Loc.68.1>:
    6382:	f2 c2 02 02 	bic.b	#8,	&0x0202	;r2 As==11

00006386 <.Loc.68.1>:
    __port_init(1, 4); // Task Execution
    6386:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    638a:	02 02 

0000638c <.Loc.69.1>:
    638c:	f2 d0 10 00 	bis.b	#16,	&0x0204	;#0x0010
    6390:	04 02 

00006392 <.Loc.69.1>:
    6392:	f2 f0 ef ff 	and.b	#-17,	&0x0202	;#0xffef
    6396:	02 02 

00006398 <.Loc.69.1>:
    __port_init(3, 5); // Task commit
    6398:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    639c:	22 02 

0000639e <.Loc.70.1>:
    639e:	f2 d0 20 00 	bis.b	#32,	&0x0224	;#0x0020
    63a2:	24 02 

000063a4 <.Loc.70.1>:
    63a4:	f2 f0 df ff 	and.b	#-33,	&0x0222	;#0xffdf
    63a8:	22 02 

000063aa <.Loc.70.1>:
    __port_init(3, 6); // Task buffer copy
    63aa:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    63ae:	22 02 

000063b0 <.Loc.71.1>:
    63b0:	f2 d0 40 00 	bis.b	#64,	&0x0224	;#0x0040
    63b4:	24 02 

000063b6 <.Loc.71.1>:
    63b6:	f2 f0 bf ff 	and.b	#-65,	&0x0222	;#0xffbf
    63ba:	22 02 

000063bc <.Loc.71.1>:
#endif

	// will be called at each reboot of the application
	__app_reboot();
    63bc:	b0 12 1a 5a 	call	#23066		;#0x5a1a

000063c0 <.Loc.78.1>:

	// activate the scheduler
	__scheduler_run();
    63c0:	b0 12 60 5b 	call	#23392		;#0x5b60

000063c4 <.Loc.80.1>:

	return 0;
}
    63c4:	4c 43       	clr.b	r12		;
    63c6:	30 41       	ret			

000063c8 <__events_boot_init>:
// keep track of the popped event since tasks
// might be restarted
static __nv isr_event_t *_popped[MAX_THREADS];

// should be called at the first boot only
void __events_boot_init(){
    63c8:	1a 15       	pushm	#2,	r10	;16-bit words

000063ca <.LCFI0>:
    uint8_t i;

    for(i=MAX_THREADS;i>0;i--){
    63ca:	3a 40 2c 58 	mov	#22572,	r10	;#0x582c
    63ce:	39 40 ac 52 	mov	#21164,	r9	;#0x52ac

000063d2 <.L2>:
        // initialize each queue
        __perqueue_init(&_events[i]);
    63d2:	0c 4a       	mov	r10,	r12	;
    63d4:	b0 12 f4 64 	call	#25844		;#0x64f4

000063d8 <.Loc.56.1>:
        _popped[i] = NULL;
    63d8:	89 43 80 00 	mov	#0,	128(r9)	;r3 As==00, 0x0080

000063dc <.Loc.53.1>:
    for(i=MAX_THREADS;i>0;i--){
    63dc:	3a 50 ec ff 	add	#-20,	r10	;#0xffec
    63e0:	39 50 fe ff 	add	#-2,	r9	;#0xfffe

000063e4 <.Loc.53.1>:
    63e4:	3a 90 2c 53 	cmp	#21292,	r10	;#0x532c
    63e8:	f4 23       	jnz	$-22     	;abs 0x63d2

000063ea <.Loc.58.1>:
    }
}
    63ea:	19 17       	popm	#2,	r10	;16-bit words

000063ec <.LCFI1>:
    63ec:	30 41       	ret			

000063ee <__events_commit>:

// This function will be executed withing the context of an ISR or
// it should be also called at each reboot to finish event insertion
void __events_commit(){
    switch(_status){
    63ee:	5c 42 38 58 	mov.b	&0x5838,r12	;0x5838
    63f2:	5c 93       	cmp.b	#1,	r12	;r3 As==01
    63f4:	13 24       	jz	$+40     	;abs 0x641c
    63f6:	6c 93       	cmp.b	#2,	r12	;r3 As==10
    63f8:	1e 24       	jz	$+62     	;abs 0x6436
    63fa:	0c 93       	cmp	#0,	r12	;r3 As==00
    63fc:	29 20       	jnz	$+84     	;abs 0x6450

000063fe <.Loc.65.1>:
    case EVENT_INSERT:
        __perqueue_push(&_events[_thread->priority], &_event);
    63fe:	1d 42 36 58 	mov	&0x5836,r13	;0x5836

00006402 <.Loc.65.1>:
    6402:	6c 4d       	mov.b	@r13,	r12	;
    6404:	5c 06       	rlam	#2,	r12	;
    6406:	6d 4d       	mov.b	@r13,	r13	;
    6408:	0c 5d       	add	r13,	r12	;
    640a:	5c 06       	rlam	#2,	r12	;
    640c:	3d 40 2c 58 	mov	#22572,	r13	;#0x582c
    6410:	3c 50 2c 53 	add	#21292,	r12	;#0x532c
    6414:	b0 12 50 65 	call	#25936		;#0x6550

00006418 <.Loc.66.1>:
        _status = EVENT_COMMIT;
    6418:	d2 43 38 58 	mov.b	#1,	&0x5838	;r3 As==01

0000641c <.L5>:
    case EVENT_COMMIT:
        __perqueue_push_commit(&_events[_thread->priority]);
    641c:	1d 42 36 58 	mov	&0x5836,r13	;0x5836

00006420 <.Loc.68.1>:
    6420:	6c 4d       	mov.b	@r13,	r12	;
    6422:	5c 06       	rlam	#2,	r12	;
    6424:	6d 4d       	mov.b	@r13,	r13	;
    6426:	0c 5d       	add	r13,	r12	;
    6428:	5c 06       	rlam	#2,	r12	;
    642a:	3c 50 2c 53 	add	#21292,	r12	;#0x532c
    642e:	b0 12 86 65 	call	#25990		;#0x6586

00006432 <.Loc.69.1>:
        _status = EVENT_SIGNAL;
    6432:	e2 43 38 58 	mov.b	#2,	&0x5838	;r3 As==10

00006436 <.L6>:
    case EVENT_SIGNAL:
        // if the thread is sleeping, activate it!
        if(_thread->state == THREAD_STOPPED){
    6436:	1c 42 36 58 	mov	&0x5836,r12	;0x5836
    643a:	1c 4c 02 00 	mov	2(r12),	r12	;

0000643e <.Loc.72.1>:
    643e:	3c 92       	cmp	#8,	r12	;r2 As==11
    6440:	04 20       	jnz	$+10     	;abs 0x644a

00006442 <.Loc.73.1>:
            __start_thread(_thread);
    6442:	1c 42 36 58 	mov	&0x5836,r12	;0x5836
    6446:	b0 12 32 5b 	call	#23346		;#0x5b32

0000644a <.L8>:
        }
        _status = EVENT_DONE;
    644a:	f2 40 03 00 	mov.b	#3,	&0x5838	;
    644e:	38 58 

00006450 <.L4>:
    }
}
    6450:	30 41       	ret			

00006452 <__event_buffer_full_ISR>:

// check if all slots are full or not
inline uint8_t __event_buffer_full_ISR(thread_t *thread){
    return __perqueue_is_full(&_events[_thread->priority]);
    6452:	1d 42 36 58 	mov	&0x5836,r13	;0x5836

00006456 <.Loc.81.1>:
    6456:	6c 4d       	mov.b	@r13,	r12	;

00006458 <.LVL7>:
    6458:	5c 06       	rlam	#2,	r12	;
    645a:	6d 4d       	mov.b	@r13,	r13	;
    645c:	0c 5d       	add	r13,	r12	;
    645e:	5c 06       	rlam	#2,	r12	;
    6460:	3c 50 2c 53 	add	#21292,	r12	;#0x532c
    6464:	b0 12 24 65 	call	#25892		;#0x6524

00006468 <.Loc.82.1>:
}
    6468:	30 41       	ret			

0000646a <__event_signal_ISR>:

// Signaling of the events from ISRs-- can be interrupted by power failures.
// Therefore, additional state handling is required
inline void __event_signal_ISR(thread_t *thread, isr_event_t *event){
    // insert to the event queue
    _thread = thread;
    646a:	82 4c 36 58 	mov	r12,	&0x5836	;

0000646e <.Loc.90.1>:
    _event = *event;
    646e:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6472:	3c 40 2c 58 	mov	#22572,	r12	;#0x582c

00006476 <.LVL10>:
    6476:	b0 12 10 6b 	call	#27408		;#0x6b10

0000647a <.LVL11>:
    _status = EVENT_INSERT;
    647a:	c2 43 38 58 	mov.b	#0,	&0x5838	;r3 As==00

0000647e <.Loc.92.1>:
    __events_commit();
    647e:	b0 12 ee 63 	call	#25582		;#0x63ee

00006482 <.Loc.93.1>:
}
    6482:	30 41       	ret			

00006484 <__has_events>:

// check if there is a pending event for the given thread
inline uint8_t __has_events(thread_t *thread){
    if(__perqueue_is_empty(&_events[thread->priority]))
    6484:	6d 4c       	mov.b	@r12,	r13	;
    6486:	5d 06       	rlam	#2,	r13	;
    6488:	6c 4c       	mov.b	@r12,	r12	;

0000648a <.LVL14>:
    648a:	0c 5d       	add	r13,	r12	;
    648c:	5c 06       	rlam	#2,	r12	;
    648e:	3c 50 2c 53 	add	#21292,	r12	;#0x532c
    6492:	b0 12 0e 65 	call	#25870		;#0x650e
    6496:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000649a <.Loc.97.1>:
    649a:	3c 53       	add	#-1,	r12	;r3 As==11

0000649c <.Loc.101.1>:
        return 0;

    return 1;
}
    649c:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    64a0:	30 41       	ret			

000064a2 <__lock_event>:

// This function is called by the tasks. Therefore, when the task is restarted,
// this function is recalled. Therefore, we need to keep track of our state.
// We first pop an event and lock it
inline isr_event_t *__lock_event(thread_t *thread){
    64a2:	0a 15       	pushm	#1,	r10	;16-bit words

000064a4 <.LCFI2>:
    _popped[_thread->priority] = __perqueue_pop(&_events[_thread->priority]);
    64a4:	1c 42 36 58 	mov	&0x5836,r12	;0x5836

000064a8 <.LVL17>:
    64a8:	6a 4c       	mov.b	@r12,	r10	;

000064aa <.Loc.107.1>:
    64aa:	0c 4a       	mov	r10,	r12	;
    64ac:	5c 06       	rlam	#2,	r12	;
    64ae:	0c 5a       	add	r10,	r12	;
    64b0:	5c 06       	rlam	#2,	r12	;
    64b2:	3c 50 2c 53 	add	#21292,	r12	;#0x532c
    64b6:	b0 12 8e 65 	call	#25998		;#0x658e

000064ba <.Loc.107.1>:
    64ba:	5a 02       	rlam	#1,	r10	;
    64bc:	8a 4c ac 52 	mov	r12,	21164(r10); 0x52ac

000064c0 <.Loc.108.1>:
    return _popped[_thread->priority];
    64c0:	1c 42 36 58 	mov	&0x5836,r12	;0x5836
    64c4:	6c 4c       	mov.b	@r12,	r12	;
    64c6:	5c 02       	rlam	#1,	r12	;

000064c8 <.Loc.109.1>:
}
    64c8:	1c 4c ac 52 	mov	21164(r12),r12	;0x052ac
    64cc:	0a 17       	popm	#1,	r10	;16-bit words

000064ce <.LCFI3>:
    64ce:	30 41       	ret			

000064d0 <__release_event>:

// Events should be released after lock
inline void __release_event(thread_t *thread){
    __perqueue_pop_commit(&_events[_thread->priority]);
    64d0:	1d 42 36 58 	mov	&0x5836,r13	;0x5836

000064d4 <.Loc.113.1>:
    64d4:	6c 4d       	mov.b	@r13,	r12	;

000064d6 <.LVL20>:
    64d6:	5c 06       	rlam	#2,	r12	;
    64d8:	6d 4d       	mov.b	@r13,	r13	;
    64da:	0c 5d       	add	r13,	r12	;
    64dc:	5c 06       	rlam	#2,	r12	;
    64de:	3c 50 2c 53 	add	#21292,	r12	;#0x532c
    64e2:	b0 12 c0 65 	call	#26048		;#0x65c0

000064e6 <.Loc.114.1>:
    _popped[_thread->priority] = NULL;
    64e6:	1c 42 36 58 	mov	&0x5836,r12	;0x5836
    64ea:	6c 4c       	mov.b	@r12,	r12	;
    64ec:	5c 02       	rlam	#1,	r12	;
    64ee:	8c 43 ac 52 	mov	#0,	21164(r12);r3 As==00, 0x52ac

000064f2 <.Loc.115.1>:
}
    64f2:	30 41       	ret			

000064f4 <__perqueue_init>:
#include "ink.h"
#include "persistentqueue.h"

// inits the persistent queue
void __perqueue_init(per_queue_t *queue){
    queue->_head ^= queue->_head;
    64f4:	dc ec 10 00 	xor.b	16(r12),16(r12)	;0x00010, 0x0010
    64f8:	10 00 

000064fa <.Loc.37.1>:
    queue->_tail ^= queue->_tail;
    64fa:	dc ec 11 00 	xor.b	17(r12),17(r12)	;0x00011, 0x0011
    64fe:	11 00 

00006500 <.Loc.38.1>:
    queue->__head ^= queue->__head;
    6500:	dc ec 12 00 	xor.b	18(r12),18(r12)	;0x00012, 0x0012
    6504:	12 00 

00006506 <.Loc.39.1>:
    queue->__tail ^= queue->__tail;
    6506:	dc ec 13 00 	xor.b	19(r12),19(r12)	;0x00013, 0x0013
    650a:	13 00 

0000650c <.Loc.40.1>:
}
    650c:	30 41       	ret			

0000650e <__perqueue_is_empty>:

uint8_t __perqueue_is_empty(per_queue_t *queue){
    // if there is no event in the persistent queue
    if (queue->_head == queue->_tail) {
    650e:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6512:	5d ec 10 00 	xor.b	16(r12),r13	;0x00010
    6516:	4c 4d       	mov.b	r13,	r12	;

00006518 <.LVL2>:
    6518:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    651c:	3c 53       	add	#-1,	r12	;r3 As==11

0000651e <.Loc.49.1>:
        return 1;
    }

    return 0;
}
    651e:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    6522:	30 41       	ret			

00006524 <__perqueue_is_full>:

uint8_t __perqueue_is_full(per_queue_t *queue){
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6524:	5d 4c 11 00 	mov.b	17(r12),r13	;0x00011
    6528:	5d 53       	inc.b	r13		;
    652a:	cc 4d 13 00 	mov.b	r13,	19(r12)	; 0x0013

0000652e <.Loc.54.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS){
    652e:	5d 4c 13 00 	mov.b	19(r12),r13	;0x00013
    6532:	7d 92       	cmp.b	#8,	r13	;r2 As==11
    6534:	02 20       	jnz	$+6      	;abs 0x653a

00006536 <.Loc.55.1>:
        queue->__tail = 0;
    6536:	cc 43 13 00 	mov.b	#0,	19(r12)	;r3 As==00, 0x0013

0000653a <.L4>:
    }

    // check if all slots are full
    if (queue->__tail == queue->_head) {
    653a:	5d 4c 10 00 	mov.b	16(r12),r13	;0x00010
    653e:	5d ec 13 00 	xor.b	19(r12),r13	;0x00013
    6542:	4c 4d       	mov.b	r13,	r12	;

00006544 <.LVL4>:
    6544:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    6548:	3c 53       	add	#-1,	r12	;r3 As==11

0000654a <.Loc.64.1>:
        return 1;
    }

    return 0;
}
    654a:	4e 19 0c 10 	rpt #15 { rrux.w	r12		;
    654e:	30 41       	ret			

00006550 <__perqueue_push>:

uint8_t __perqueue_push(per_queue_t *queue,void *item){
    6550:	0e 4c       	mov	r12,	r14	;

00006552 <.Loc.68.1>:
    // use the temporary variable to calculate the next slot for the tail
    queue->__tail = queue->_tail + 1;
    6552:	5c 4c 11 00 	mov.b	17(r12),r12	;0x00011

00006556 <.LVL6>:
    6556:	5c 53       	inc.b	r12		;
    6558:	ce 4c 13 00 	mov.b	r12,	19(r14)	; 0x0013

0000655c <.Loc.69.1>:
    if (queue->__tail == MAX_QUEUE_ITEMS)
    655c:	5c 4e 13 00 	mov.b	19(r14),r12	;0x00013
    6560:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    6562:	02 20       	jnz	$+6      	;abs 0x6568

00006564 <.Loc.70.1>:
        queue->__tail = 0;
    6564:	ce 43 13 00 	mov.b	#0,	19(r14)	;r3 As==00, 0x0013

00006568 <.L6>:
    // if all slots are full, no way to register the interrupt! We loose one slot
    // with this check, but this allows us to update just one variable in the end
    // to insert the event: no need to keep track the number of inserted events!
    if (queue->__tail == queue->_head) {
    6568:	5b 4e 13 00 	mov.b	19(r14),r11	;0x00013

0000656c <.Loc.74.1>:
    656c:	5f 4e 10 00 	mov.b	16(r14),r15	;0x00010

00006570 <.Loc.75.1>:
        return 0;
    6570:	4c 43       	clr.b	r12		;

00006572 <.Loc.74.1>:
    if (queue->__tail == queue->_head) {
    6572:	0b 9f       	cmp	r15,	r11	;
    6574:	07 24       	jz	$+16     	;abs 0x6584

00006576 <.Loc.79.1>:
    }

    // copy the event to the event queue but do not modify the tail
    queue->_items[queue->_tail] = item;
    6576:	5c 4e 11 00 	mov.b	17(r14),r12	;0x00011

0000657a <.Loc.79.1>:
    657a:	5c 02       	rlam	#1,	r12	;
    657c:	0e 5c       	add	r12,	r14	;

0000657e <.LVL7>:
    657e:	8e 4d 00 00 	mov	r13,	0(r14)	;

00006582 <.Loc.81.1>:

    return 1;
    6582:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006584 <.L7>:
}
    6584:	30 41       	ret			

00006586 <__perqueue_push_commit>:

/* commit the operation on the queue */
void __perqueue_push_commit(per_queue_t *queue)
{
    // update the real tail of the queue in one step so that the item is inserted!
    queue->_tail = queue->__tail;
    6586:	dc 4c 13 00 	mov.b	19(r12),17(r12)	;0x00013, 0x0011
    658a:	11 00 

0000658c <.Loc.89.1>:
}
    658c:	30 41       	ret			

0000658e <__perqueue_pop>:

void *__perqueue_pop(per_queue_t *queue){
    658e:	0d 4c       	mov	r12,	r13	;

00006590 <.Loc.93.1>:
    // if there is no item in the persistent queue
    if (queue->_head == queue->_tail){
    6590:	5f 4c 10 00 	mov.b	16(r12),r15	;0x00010

00006594 <.Loc.93.1>:
    6594:	5e 4c 11 00 	mov.b	17(r12),r14	;0x00011

00006598 <.Loc.94.1>:
        return NULL;
    6598:	4c 43       	clr.b	r12		;

0000659a <.LVL10>:
    if (queue->_head == queue->_tail){
    659a:	0f 9e       	cmp	r14,	r15	;
    659c:	10 24       	jz	$+34     	;abs 0x65be

0000659e <.Loc.98.1>:
    }

    // use the temporary variable to calculate the next slot for the tail
    queue->__head = queue->_head + 1;
    659e:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010
    65a2:	5c 53       	inc.b	r12		;
    65a4:	cd 4c 12 00 	mov.b	r12,	18(r13)	; 0x0012

000065a8 <.Loc.99.1>:
    if (queue->__head == MAX_QUEUE_ITEMS)
    65a8:	5c 4d 12 00 	mov.b	18(r13),r12	;0x00012
    65ac:	7c 92       	cmp.b	#8,	r12	;r2 As==11
    65ae:	02 20       	jnz	$+6      	;abs 0x65b4

000065b0 <.Loc.100.1>:
        queue->__head = 0;
    65b0:	cd 43 12 00 	mov.b	#0,	18(r13)	;r3 As==00, 0x0012

000065b4 <.L12>:

    return queue->_items[queue->_head];
    65b4:	5c 4d 10 00 	mov.b	16(r13),r12	;0x00010

000065b8 <.Loc.102.1>:
    65b8:	5c 02       	rlam	#1,	r12	;
    65ba:	0d 5c       	add	r12,	r13	;

000065bc <.LVL11>:
    65bc:	2c 4d       	mov	@r13,	r12	;

000065be <.L10>:
}
    65be:	30 41       	ret			

000065c0 <__perqueue_pop_commit>:

// commit the operation on the queue
void __perqueue_pop_commit(per_queue_t *queue){
    // remove the item from the queue with one step!
    queue->_head = queue->__head;
    65c0:	dc 4c 12 00 	mov.b	18(r12),16(r12)	;0x00012, 0x0010
    65c4:	10 00 

000065c6 <.Loc.109.1>:
}
    65c6:	30 41       	ret			

000065c8 <__dma_word_copy>:
#include "fram.h"
#include "stdint.h"

// size should be in words
void __dma_word_copy(void* from, void* to, unsigned short size)
{
    65c8:	0a 15       	pushm	#1,	r10	;16-bit words

000065ca <.LCFI0>:
    65ca:	21 82       	sub	#4,	r1	;r2 As==10

000065cc <.LBB2>:
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA,(uintptr_t) from);
    65cc:	0a 4c       	mov	r12,	r10	;
    65ce:	0b 43       	clr	r11		;
    65d0:	81 4a 00 00 	mov	r10,	0(r1)	;
    65d4:	81 4b 02 00 	mov	r11,	2(r1)	;

000065d8 <.Loc.38.1>:
    65d8:	3c 40 12 05 	mov	#1298,	r12	;#0x0512

000065dc <.LVL1>:
    65dc:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    65e0:	00 00 

000065e2 <.LBB3>:
                                              // Source block address
    __data16_write_addr((unsigned short) &DMA0DA,(uintptr_t) to);
    65e2:	0a 4d       	mov	r13,	r10	;
    65e4:	0b 43       	clr	r11		;

000065e6 <.LVL2>:
    65e6:	81 4a 00 00 	mov	r10,	0(r1)	;
    65ea:	81 4b 02 00 	mov	r11,	2(r1)	;

000065ee <.Loc.40.1>:
    65ee:	3c 40 16 05 	mov	#1302,	r12	;#0x0516
    65f2:	00 18 ec 41 	movx.a	@r1,	0(r12)	;
    65f6:	00 00 

000065f8 <.LBE3>:
                                              // Destination single address
    DMA0SZ = size;                          // Block size
    65f8:	82 4e 1a 05 	mov	r14,	&0x051a	;

000065fc <.Loc.43.1>:
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    65fc:	b2 40 00 5f 	mov	#24320,	&0x0510	;#0x5f00
    6600:	10 05 

00006602 <.Loc.44.1>:
    DMA0CTL |= DMAEN;                         // Enable DMA0
    6602:	b2 d0 10 00 	bis	#16,	&0x0510	;#0x0010
    6606:	10 05 

00006608 <.Loc.46.1>:

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
    6608:	92 d3 10 05 	bis	#1,	&0x0510	;r3 As==01

0000660c <.Loc.47.1>:
}
    660c:	21 52       	add	#4,	r1	;r2 As==10

0000660e <.LCFI2>:
    660e:	0a 17       	popm	#1,	r10	;16-bit words

00006610 <.LCFI3>:
    6610:	30 41       	ret			

00006612 <__mcu_init>:

#include <mcu/msp430/msp430fr5969.h>

void __mcu_init() {

  WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    6612:	b2 40 80 5a 	mov	#23168,	&0x015c	;#0x5a80
    6616:	5c 01 

00006618 <.Loc.40.1>:


  // Disable FRAM wait cycles to allow clock operation over 8MHz
  FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;
    6618:	b2 40 10 a5 	mov	#-23280,&0x0140	;#0xa510
    661c:	40 01 

0000661e <L0^A>:
  __delay_cycles(3);
    661e:	00 3c       	jmp	$+2      	;abs 0x6620
    6620:	03 43       	nop			

00006622 <.Loc.44.1>:

  /* init FRAM */
  FRCTL0_H |= (FWPW) >> 8;
    6622:	f2 d0 a5 ff 	bis.b	#-91,	&0x0141	;#0xffa5
    6626:	41 01 

00006628 <L0^A>:
  
  __delay_cycles(3);
    6628:	00 3c       	jmp	$+2      	;abs 0x662a
    662a:	03 43       	nop			

0000662c <.Loc.48.1>:

  __led_init(LED1);
    662c:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    6630:	23 02 

00006632 <.Loc.48.1>:
    6632:	f2 d0 40 00 	bis.b	#64,	&0x0225	;#0x0040
    6636:	25 02 

00006638 <.Loc.48.1>:
    6638:	f2 f0 bf ff 	and.b	#-65,	&0x0223	;#0xffbf
    663c:	23 02 

0000663e <.Loc.48.1>:
  __led_init(LED2);
    663e:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

00006642 <.Loc.49.1>:
    6642:	d2 d3 04 02 	bis.b	#1,	&0x0204	;r3 As==01

00006646 <.Loc.49.1>:
    6646:	d2 c3 02 02 	bic.b	#1,	&0x0202	;r3 As==01

0000664a <.Loc.49.1>:
  
  PM5CTL0 &= ~LOCKLPM5; // Disable the GPIO power-on default high-impedance mode
    664a:	92 c3 30 01 	bic	#1,	&0x0130	;r3 As==01

0000664e <.Loc.53.1>:

}
    664e:	30 41       	ret			

00006650 <__priority_init>:

void __priority_init(priority_t *p){
    uint8_t i;

    for (i = NUM_PRIORITY_LEVEL; i > 0; i--){
        p->_readyTable[i] = 0x0;
    6650:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006654 <.Loc.83.1>:
    6654:	cc 43 07 00 	mov.b	#0,	7(r12)	;r3 As==00

00006658 <.Loc.83.1>:
    6658:	cc 43 06 00 	mov.b	#0,	6(r12)	;r3 As==00

0000665c <.Loc.83.1>:
    665c:	cc 43 05 00 	mov.b	#0,	5(r12)	;r3 As==00

00006660 <.Loc.83.1>:
    6660:	cc 43 04 00 	mov.b	#0,	4(r12)	;r3 As==00

00006664 <.Loc.83.1>:
    6664:	cc 43 03 00 	mov.b	#0,	3(r12)	;r3 As==00

00006668 <.Loc.83.1>:
    6668:	cc 43 02 00 	mov.b	#0,	2(r12)	;r3 As==00

0000666c <.Loc.83.1>:
    666c:	cc 43 01 00 	mov.b	#0,	1(r12)	;r3 As==00

00006670 <.Loc.83.1>:
    }

    p->_readyLevel = 0x0;
    6670:	cc 43 08 00 	mov.b	#0,	8(r12)	;r3 As==00

00006674 <.Loc.88.1>:
}
    6674:	30 41       	ret			

00006676 <__priority_insert>:

// inserts the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_insert(uint8_t priority,priority_t *p){
    6676:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000667a <.Loc.93.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK) >> 3;
    667a:	0e 4c       	mov	r12,	r14	;
    667c:	5e 09       	rram	#3,	r14	;

0000667e <.Loc.99.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyLevel|= PriorityTbl[priorityLevel];
    667e:	7e f0 07 00 	and.b	#7,	r14	;

00006682 <.Loc.99.1>:
    6682:	dd de 78 4a 	bis.b	19064(r14),8(r13)	;0x04a78
    6686:	08 00 

00006688 <.Loc.100.1>:
    p->_readyTable[priorityLevel] |= PriorityTbl[priorityBits];
    6688:	0d 5e       	add	r14,	r13	;

0000668a <.LVL12>:
    668a:	7c f0 07 00 	and.b	#7,	r12	;

0000668e <.LVL13>:
    668e:	dd dc 78 4a 	bis.b	19064(r12),0(r13)	;0x04a78
    6692:	00 00 

00006694 <.Loc.101.1>:
}
    6694:	30 41       	ret			

00006696 <__priority_remove>:

// removes the task with given priority and adjusts the priority
// levels. This is an idempotent function! (restartable)
void __priority_remove(uint8_t priority,priority_t *p){
    6696:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

0000669a <.Loc.106.1>:
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = (priority & PRIORITY_LEVEL_MASK)>>3;
    669a:	0e 4c       	mov	r12,	r14	;
    669c:	5e 09       	rram	#3,	r14	;

0000669e <.Loc.112.1>:
    priorityBits = priority & PRIORITY_BIT_MASK;

    p->_readyTable[priorityLevel] &= ~PriorityTbl[priorityBits];
    669e:	7e f0 07 00 	and.b	#7,	r14	;
    66a2:	0f 4d       	mov	r13,	r15	;
    66a4:	0f 5e       	add	r14,	r15	;

000066a6 <.Loc.112.1>:
    66a6:	7c f0 07 00 	and.b	#7,	r12	;

000066aa <.LVL16>:
    66aa:	df cc 78 4a 	bic.b	19064(r12),0(r15)	;0x04a78
    66ae:	00 00 

000066b0 <.Loc.114.1>:

    if(!p->_readyTable[priorityLevel])    {
    66b0:	6c 4f       	mov.b	@r15,	r12	;

000066b2 <.Loc.114.1>:
    66b2:	0c 93       	cmp	#0,	r12	;r3 As==00
    66b4:	03 20       	jnz	$+8      	;abs 0x66bc

000066b6 <.Loc.115.1>:
        p->_readyLevel &= ~PriorityTbl[priorityLevel];
    66b6:	dd ce 78 4a 	bic.b	19064(r14),8(r13)	;0x04a78
    66ba:	08 00 

000066bc <.L3>:
    }
}
    66bc:	30 41       	ret			

000066be <__priority_highest>:
// returns the task with highest priority
uint8_t __priority_highest(priority_t *p){
    uint8_t priorityLevel;
    uint8_t priorityBits;

    priorityLevel = UnmapTbl[p->_readyLevel];
    66be:	5d 4c 08 00 	mov.b	8(r12),	r13	;

000066c2 <.LVL18>:
    priorityBits = p->_readyTable[priorityLevel];
    66c2:	5d 4d 78 49 	mov.b	18808(r13),r13	;0x04978

000066c6 <.LVL19>:
    66c6:	0c 5d       	add	r13,	r12	;

000066c8 <.LVL20>:
    66c8:	6e 4c       	mov.b	@r12,	r14	;

000066ca <.Loc.127.1>:

    return (priorityLevel << 3) | (UnmapTbl[priorityBits]);
    66ca:	0c 4d       	mov	r13,	r12	;
    66cc:	5c 0a       	rlam	#3,	r12	;

000066ce <.Loc.128.1>:
}
    66ce:	5c de 78 49 	bis.b	18808(r14),r12	;0x04978
    66d2:	30 41       	ret			

000066d4 <stop_timer>:


void stop_timer()
{
    /* stop timer */
    TA2CCTL0 = 0x00;
    66d4:	82 43 02 04 	mov	#0,	&0x0402	;r3 As==00

000066d8 <.Loc.157.1>:
    TA2CTL = 0;
    66d8:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000066dc <.Loc.158.1>:
}
    66dc:	30 41       	ret			

000066de <timerA2_init>:
    66de:	b0 12 d4 66 	call	#26324		;#0x66d4
    66e2:	30 41       	ret			

000066e4 <set_timer_wkup>:
// }


void set_timer_wkup(uint16_t ticks){

    TA0CTL = 0;
    66e4:	82 43 40 03 	mov	#0,	&0x0340	;r3 As==00

000066e8 <.Loc.179.1>:
    TA0CCR0 = ticks;
    66e8:	82 4c 52 03 	mov	r12,	&0x0352	;

000066ec <.Loc.180.1>:
    TA0CCTL0 = CCIE;
    66ec:	b2 40 10 00 	mov	#16,	&0x0342	;#0x0010
    66f0:	42 03 

000066f2 <.Loc.181.1>:
    TA0CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    66f2:	b2 40 14 02 	mov	#532,	&0x0340	;#0x0214
    66f6:	40 03 

000066f8 <.Loc.182.1>:
}
    66f8:	30 41       	ret			

000066fa <set_timer_xpr>:

void set_timer_xpr(uint16_t ticks){
    TA2CTL = 0;
    66fa:	82 43 00 04 	mov	#0,	&0x0400	;r3 As==00

000066fe <.Loc.186.1>:
    TA2CCR0 = ticks;
    66fe:	82 4c 12 04 	mov	r12,	&0x0412	;

00006702 <.Loc.187.1>:
    TA2CCTL0 = CCIE;
    6702:	b2 40 10 00 	mov	#16,	&0x0402	;#0x0010
    6706:	02 04 

00006708 <.Loc.188.1>:
    TA2CTL = TASSEL__ACLK  | MC__UP | TACLR ;
    6708:	b2 40 14 01 	mov	#276,	&0x0400	;#0x0114
    670c:	00 04 

0000670e <.Loc.190.1>:

}
    670e:	30 41       	ret			

00006710 <stop_timer_xpr>:
    6710:	b0 12 d4 66 	call	#26324		;#0x66d4
    6714:	30 41       	ret			

00006716 <set_timer_pdc>:
    TA2CCTL0 = 0x00;
    TA2CTL = 0;
}

void set_timer_pdc(uint16_t ticks){
    TA1CTL = 0;
    6716:	82 43 80 03 	mov	#0,	&0x0380	;r3 As==00

0000671a <.Loc.202.1>:
    TA1CCR0 = ticks;
    671a:	82 4c 92 03 	mov	r12,	&0x0392	;

0000671e <.Loc.203.1>:
    TA1CCTL0 = CCIE;
    671e:	b2 40 10 00 	mov	#16,	&0x0382	;#0x0010
    6722:	82 03 

00006724 <.Loc.204.1>:
    TA1CTL = TASSEL__SMCLK  | MC__UP | TACLR ;
    6724:	b2 40 14 02 	mov	#532,	&0x0380	;#0x0214
    6728:	80 03 

0000672a <.Loc.205.1>:
}
    672a:	30 41       	ret			

0000672c <__setup_rtc>:
  //Use RTC I2C communication
  i2c_init();
  i2c_write(RTC , RTC_CONF_REG , 0x00);

#endif
}
    672c:	30 41       	ret			

0000672e <__setup_clock>:

void __setup_clock()
{
  // Clock System Setup
  CSCTL0_H = CSKEY >> 8;                    // Unlock CS registers
    672e:	f2 40 a5 ff 	mov.b	#-91,	&0x0161	;#0xffa5
    6732:	61 01 

00006734 <.Loc.253.1>:
  CSCTL2 = SELA__VLOCLK;
    6734:	b2 40 00 01 	mov	#256,	&0x0164	;#0x0100
    6738:	64 01 

0000673a <.Loc.254.1>:
  CSCTL3 = DIVA__1 ;     // Set all dividers to 1
    673a:	82 43 66 01 	mov	#0,	&0x0166	;r3 As==00

0000673e <.Loc.255.1>:
  CSCTL0_H = 0;
    673e:	c2 43 61 01 	mov.b	#0,	&0x0161	;r3 As==00

00006742 <.Loc.257.1>:

}
    6742:	30 41       	ret			

00006744 <__get_rtc_time>:
#endif
    current_time =(uint32_t) buff;

    return current_time;

}
    6744:	4c 43       	clr.b	r12		;
    6746:	4d 43       	clr.b	r13		;
    6748:	30 41       	ret			

0000674a <__get_time_init>:
{   
    //configure rtc interface
    __setup_rtc();

    //get the current time from rtc;
    current_ticks = __get_rtc_time();
    674a:	82 43 3a 58 	mov	#0,	&0x583a	;r3 As==00
    674e:	82 43 3c 58 	mov	#0,	&0x583c	;r3 As==00

00006752 <.Loc.337.1>:

    //stop TA1 timer
    TA3CTL = 0;
    6752:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006756 <.Loc.339.1>:
    //Start timer with ACLK source in CONTINUOUS mode CLEAR bit and enable interrupts;
    TA3CTL = TASSEL__ACLK  | MC__CONTINUOUS | TACLR | TAIE;
    6756:	b2 40 26 01 	mov	#294,	&0x0440	;#0x0126
    675a:	40 04 

0000675c <.Loc.341.1>:

    __bis_SR_register(GIE);
    675c:	03 43       	nop			
    675e:	32 d2       	eint			
    6760:	03 43       	nop			

00006762 <.Loc.342.1>:
}
    6762:	30 41       	ret			

00006764 <__get_time_stop>:
/*
* stop the __get_time interface
*/
void __get_time_stop()
{
    TA3CTL = 0;
    6764:	82 43 40 04 	mov	#0,	&0x0440	;r3 As==00

00006768 <.Loc.350.1>:
    TA3CCTL0 = 0;
    6768:	82 43 42 04 	mov	#0,	&0x0442	;r3 As==00

0000676c <.Loc.351.1>:
}
    676c:	30 41       	ret			

0000676e <__get_time>:
*/
uint32_t __get_time()
{
   uint32_t tmp;

   TA3CTL ^= MC__CONTINUOUS ; //halt the timer
    676e:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    6772:	40 04 

00006774 <.Loc.363.1>:

   tmp = TA3R;
    6774:	1c 42 50 04 	mov	&0x0450,r12	;0x0450

00006778 <.Loc.365.1>:

   TA3CTL ^= MC__CONTINUOUS; //restart the timer
    6778:	b2 e0 20 00 	xor	#32,	&0x0440	;#0x0020
    677c:	40 04 

0000677e <.Loc.369.1>:



   return (tmp*10 + current_ticks);//current_ticks/1000;
    677e:	7d 40 0a 00 	mov.b	#10,	r13	;#0x000a
    6782:	b0 12 f8 6a 	call	#27384		;#0x6af8

00006786 <.Loc.370.1>:
}
    6786:	1c 52 3a 58 	add	&0x583a,r12	;0x583a
    678a:	1d 62 3c 58 	addc	&0x583c,r13	;0x583c
    678e:	30 41       	ret			

00006790 <isr_TIMER3_A1_VECTOR>:
*__get_time() ISR
*increments time_count every 65553 ticks of the specified CLK
*/
_interrupt (TIMER3_A1_VECTOR)
{
        current_ticks += 0xA00AA;
    6790:	b2 50 aa 00 	add	#170,	&0x583a	;#0x00aa
    6794:	3a 58 
    6796:	b2 60 0a 00 	addc	#10,	&0x583c	;#0x000a
    679a:	3c 58 

0000679c <.Loc.380.1>:
       //current_ticks += 0x10000;
       TA3CTL &= ~TAIFG;
    679c:	92 c3 40 04 	bic	#1,	&0x0440	;r3 As==01

000067a0 <.Loc.381.1>:
}
    67a0:	00 13       	reti			

000067a2 <_pers_timer_init>:

void _pers_timer_init(){
	uint8_t i;
	for (i = 0; i < MAX_WKUP_THREADS; i++)
	{
		pers_timer_vars[0].wkup_timing[i].status = NOT_USED;
    67a2:	3c 40 3e 58 	mov	#22590,	r12	;#0x583e
    67a6:	8c 43 00 00 	mov	#0,	0(r12)	;r3 As==00

000067aa <.Loc.34.1>:
    67aa:	8c 43 0a 00 	mov	#0,	10(r12)	;r3 As==00, 0x000a

000067ae <.Loc.34.1>:
    67ae:	8c 43 14 00 	mov	#0,	20(r12)	;r3 As==00, 0x0014

000067b2 <.Loc.34.1>:
	}
	for (i = 0; i < MAX_XPR_THREADS; i++)
	{
		pers_timer_vars[0].xpr_timing[i].status = NOT_USED; 
    67b2:	8c 43 1e 00 	mov	#0,	30(r12)	;r3 As==00, 0x001e

000067b6 <.Loc.38.1>:
    67b6:	8c 43 28 00 	mov	#0,	40(r12)	;r3 As==00, 0x0028

000067ba <.Loc.38.1>:
    67ba:	8c 43 32 00 	mov	#0,	50(r12)	;r3 As==00, 0x0032

000067be <.Loc.38.1>:
	}
	for (i = 0; i < MAX_PDC_THREADS; i++)
	{
		pers_timer_vars[0].pdc_timing[i].status = NOT_USED; 
    67be:	8c 43 3c 00 	mov	#0,	60(r12)	;r3 As==00, 0x003c

000067c2 <.Loc.42.1>:
	}
}
    67c2:	30 41       	ret			

000067c4 <_pers_timer_update_data>:

void _pers_timer_update_data(uint8_t idx,ink_time_interface_t interface , uint32_t time_data){
    67c4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

000067c8 <.Loc.50.1>:
	//update the persistent timer dirty buffer
	switch(interface)
    67c8:	1d 93       	cmp	#1,	r13	;r3 As==01
    67ca:	1a 24       	jz	$+54     	;abs 0x6800
    67cc:	2d 93       	cmp	#2,	r13	;r3 As==10
    67ce:	0d 24       	jz	$+28     	;abs 0x67ea
    67d0:	0d 93       	cmp	#0,	r13	;r3 As==00
    67d2:	0a 20       	jnz	$+22     	;abs 0x67e8

000067d4 <.Loc.53.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].data = time_data;
    67d4:	0d 4c       	mov	r12,	r13	;

000067d6 <.LVL9>:
    67d6:	5d 06       	rlam	#2,	r13	;
    67d8:	0c 5d       	add	r13,	r12	;

000067da <.LVL10>:
    67da:	5c 02       	rlam	#1,	r12	;
    67dc:	8c 4e a6 58 	mov	r14,	22694(r12); 0x58a6
    67e0:	8c 4f a8 58 	mov	r15,	22696(r12); 0x58a8

000067e4 <.Loc.54.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    67e4:	9c 43 aa 58 	mov	#1,	22698(r12);r3 As==01, 0x58aa

000067e8 <.L2>:
		default:
			break;
	}

		
}
    67e8:	30 41       	ret			

000067ea <.L4>:
			pers_timer_vars[1].xpr_timing[idx].data = time_data;
    67ea:	0d 4c       	mov	r12,	r13	;

000067ec <.LVL12>:
    67ec:	5d 06       	rlam	#2,	r13	;
    67ee:	0c 5d       	add	r13,	r12	;
    67f0:	5c 02       	rlam	#1,	r12	;
    67f2:	8c 4e c4 58 	mov	r14,	22724(r12); 0x58c4
    67f6:	8c 4f c6 58 	mov	r15,	22726(r12); 0x58c6

000067fa <.Loc.58.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    67fa:	9c 43 c8 58 	mov	#1,	22728(r12);r3 As==01, 0x58c8
    67fe:	f4 3f       	jmp	$-22     	;abs 0x67e8

00006800 <.L3>:
			pers_timer_vars[1].pdc_timing[idx].data = time_data;
    6800:	0d 4c       	mov	r12,	r13	;

00006802 <.LVL14>:
    6802:	5d 06       	rlam	#2,	r13	;
    6804:	0c 5d       	add	r13,	r12	;
    6806:	5c 02       	rlam	#1,	r12	;
    6808:	8c 4e e2 58 	mov	r14,	22754(r12); 0x58e2
    680c:	8c 4f e4 58 	mov	r15,	22756(r12); 0x58e4

00006810 <.Loc.62.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    6810:	9c 43 e6 58 	mov	#1,	22758(r12);r3 As==01, 0x58e6

00006814 <.Loc.63.1>:
			break;
    6814:	e9 3f       	jmp	$-44     	;abs 0x67e8

00006816 <_pers_timer_update_thread_id>:

void _pers_timer_update_thread_id(uint8_t idx,ink_time_interface_t interface , uint8_t thread_id){
    6816:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
    681a:	3e f0 ff 00 	and	#255,	r14	;#0x00ff

0000681e <.Loc.73.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    681e:	1d 93       	cmp	#1,	r13	;r3 As==01
    6820:	16 24       	jz	$+46     	;abs 0x684e
    6822:	2d 93       	cmp	#2,	r13	;r3 As==10
    6824:	0b 24       	jz	$+24     	;abs 0x683c
    6826:	0d 93       	cmp	#0,	r13	;r3 As==00
    6828:	08 20       	jnz	$+18     	;abs 0x683a

0000682a <.Loc.76.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].thread_id = thread_id;
    682a:	0d 4c       	mov	r12,	r13	;

0000682c <.LVL16>:
    682c:	5d 06       	rlam	#2,	r13	;
    682e:	0c 5d       	add	r13,	r12	;

00006830 <.LVL17>:
    6830:	5c 02       	rlam	#1,	r12	;
    6832:	cc 4e a4 58 	mov.b	r14,	22692(r12); 0x58a4

00006836 <.Loc.77.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    6836:	9c 43 aa 58 	mov	#1,	22698(r12);r3 As==01, 0x58aa

0000683a <.L7>:
			break;
		default:
			break;
	}

}
    683a:	30 41       	ret			

0000683c <.L9>:
			pers_timer_vars[1].xpr_timing[idx].thread_id = thread_id;
    683c:	0d 4c       	mov	r12,	r13	;

0000683e <.LVL19>:
    683e:	5d 06       	rlam	#2,	r13	;
    6840:	0c 5d       	add	r13,	r12	;
    6842:	5c 02       	rlam	#1,	r12	;
    6844:	cc 4e c2 58 	mov.b	r14,	22722(r12); 0x58c2

00006848 <.Loc.81.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    6848:	9c 43 c8 58 	mov	#1,	22728(r12);r3 As==01, 0x58c8
    684c:	f6 3f       	jmp	$-18     	;abs 0x683a

0000684e <.L8>:
			pers_timer_vars[1].pdc_timing[idx].thread_id = thread_id;
    684e:	0d 4c       	mov	r12,	r13	;

00006850 <.LVL21>:
    6850:	5d 06       	rlam	#2,	r13	;
    6852:	0c 5d       	add	r13,	r12	;
    6854:	5c 02       	rlam	#1,	r12	;
    6856:	cc 4e e0 58 	mov.b	r14,	22752(r12); 0x58e0

0000685a <.Loc.85.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    685a:	9c 43 e6 58 	mov	#1,	22758(r12);r3 As==01, 0x58e6

0000685e <.Loc.86.1>:
}
    685e:	ed 3f       	jmp	$-36     	;abs 0x683a

00006860 <_pers_timer_update_status>:

void _pers_timer_update_status(uint8_t idx,ink_time_interface_t interface , used_st status){
    6860:	3c f0 ff 00 	and	#255,	r12	;#0x00ff

00006864 <.Loc.95.1>:
	//update the persistent timer dirty buffer
	switch (interface)
    6864:	1d 93       	cmp	#1,	r13	;r3 As==01
    6866:	16 24       	jz	$+46     	;abs 0x6894
    6868:	2d 93       	cmp	#2,	r13	;r3 As==10
    686a:	0b 24       	jz	$+24     	;abs 0x6882
    686c:	0d 93       	cmp	#0,	r13	;r3 As==00
    686e:	08 20       	jnz	$+18     	;abs 0x6880

00006870 <.Loc.98.1>:
	{
		case WKUP:
			pers_timer_vars[1].wkup_timing[idx].status = status;
    6870:	0d 4c       	mov	r12,	r13	;

00006872 <.LVL23>:
    6872:	5d 06       	rlam	#2,	r13	;
    6874:	0c 5d       	add	r13,	r12	;

00006876 <.LVL24>:
    6876:	5c 02       	rlam	#1,	r12	;
    6878:	8c 4e a2 58 	mov	r14,	22690(r12); 0x58a2

0000687c <.Loc.99.1>:
			pers_timer_vars[1].wkup_timing[idx].__dirty = DIRTY;
    687c:	9c 43 aa 58 	mov	#1,	22698(r12);r3 As==01, 0x58aa

00006880 <.L12>:
			break;
		default:
			break;

	}
}
    6880:	30 41       	ret			

00006882 <.L14>:
			pers_timer_vars[1].xpr_timing[idx].status = status;
    6882:	0d 4c       	mov	r12,	r13	;

00006884 <.LVL26>:
    6884:	5d 06       	rlam	#2,	r13	;
    6886:	0c 5d       	add	r13,	r12	;
    6888:	5c 02       	rlam	#1,	r12	;
    688a:	8c 4e c0 58 	mov	r14,	22720(r12); 0x58c0

0000688e <.Loc.103.1>:
			pers_timer_vars[1].xpr_timing[idx].__dirty = DIRTY;
    688e:	9c 43 c8 58 	mov	#1,	22728(r12);r3 As==01, 0x58c8
    6892:	f6 3f       	jmp	$-18     	;abs 0x6880

00006894 <.L13>:
			pers_timer_vars[1].pdc_timing[idx].status = status;
    6894:	0d 4c       	mov	r12,	r13	;

00006896 <.LVL28>:
    6896:	5d 06       	rlam	#2,	r13	;
    6898:	0c 5d       	add	r13,	r12	;
    689a:	5c 02       	rlam	#1,	r12	;
    689c:	8c 4e de 58 	mov	r14,	22750(r12); 0x58de

000068a0 <.Loc.107.1>:
			pers_timer_vars[1].pdc_timing[idx].__dirty = DIRTY;
    68a0:	9c 43 e6 58 	mov	#1,	22758(r12);r3 As==01, 0x58e6

000068a4 <.Loc.108.1>:
}
    68a4:	ed 3f       	jmp	$-36     	;abs 0x6880

000068a6 <_pers_timer_update_nxt_thread>:

void _pers_timer_update_nxt_thread(ink_time_interface_t ink_time_interface ,uint8_t next_thread){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_thread = next_thread;
    68a6:	0e 4c       	mov	r12,	r14	;
    68a8:	5e 0a       	rlam	#3,	r14	;
    68aa:	ce 4d ea 58 	mov.b	r13,	22762(r14); 0x58ea

000068ae <.Loc.118.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    68ae:	9e 43 ee 58 	mov	#1,	22766(r14);r3 As==01, 0x58ee

000068b2 <.Loc.119.1>:
}
    68b2:	30 41       	ret			

000068b4 <_pers_timer_update_nxt_time>:

void _pers_timer_update_nxt_time(ink_time_interface_t ink_time_interface, uint16_t next_time){
	//update the persistent timer dirty buffer
	pers_timer_vars[1].next_info[ink_time_interface].next_time = next_time;
    68b4:	0e 4c       	mov	r12,	r14	;
    68b6:	5e 0a       	rlam	#3,	r14	;
    68b8:	8e 4d ec 58 	mov	r13,	22764(r14); 0x58ec

000068bc <.Loc.124.1>:
	pers_timer_vars[1].next_info[ink_time_interface].__dirty = DIRTY;
    68bc:	9e 43 ee 58 	mov	#1,	22766(r14);r3 As==01, 0x58ee

000068c0 <.Loc.125.1>:
}
    68c0:	30 41       	ret			

000068c2 <_pers_timer_update_lock>:

//timer buffer is ready to commit
void _pers_timer_update_lock(ink_time_interface_t interface){
switch (interface)
    68c2:	1c 93       	cmp	#1,	r12	;r3 As==01
    68c4:	0a 24       	jz	$+22     	;abs 0x68da
    68c6:	2c 93       	cmp	#2,	r12	;r3 As==10
    68c8:	05 24       	jz	$+12     	;abs 0x68d4
    68ca:	0c 93       	cmp	#0,	r12	;r3 As==00
    68cc:	02 20       	jnz	$+6      	;abs 0x68d2

000068ce <.Loc.132.1>:
	{
		case WKUP:
			wkup_tstatus = TIMER_COMMIT;
    68ce:	92 43 06 59 	mov	#1,	&0x5906	;r3 As==01

000068d2 <.L19>:
		default:
			break;

	}

}
    68d2:	30 41       	ret			

000068d4 <.L21>:
			xpr_tstatus = TIMER_COMMIT;
    68d4:	92 43 08 59 	mov	#1,	&0x5908	;r3 As==01

000068d8 <.Loc.136.1>:
		break;
    68d8:	fc 3f       	jmp	$-6      	;abs 0x68d2

000068da <.L20>:
			pdc_tstatus = TIMER_COMMIT;
    68da:	92 43 0a 59 	mov	#1,	&0x590a	;r3 As==01

000068de <.Loc.139.1>:
}
    68de:	f9 3f       	jmp	$-12     	;abs 0x68d2

000068e0 <_commit_timer_buffers>:

//commit into the persistent buffer

void _commit_timer_buffers(ink_time_interface_t interface){
    68e0:	1a 15       	pushm	#2,	r10	;16-bit words

000068e2 <.LCFI0>:
    68e2:	0a 4c       	mov	r12,	r10	;

000068e4 <.Loc.151.1>:
	
	uint8_t i;
	
	switch (interface){
    68e4:	1c 93       	cmp	#1,	r12	;r3 As==01
    68e6:	52 24       	jz	$+166    	;abs 0x698c
    68e8:	2c 93       	cmp	#2,	r12	;r3 As==10
    68ea:	39 24       	jz	$+116    	;abs 0x695e
    68ec:	0c 93       	cmp	#0,	r12	;r3 As==00
    68ee:	16 20       	jnz	$+46     	;abs 0x691c
    68f0:	3f 40 3e 58 	mov	#22590,	r15	;#0x583e
    68f4:	39 40 5c 58 	mov	#22620,	r9	;#0x585c

000068f8 <.L28>:
		case WKUP:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
		{
			if (pers_timer_vars[1].wkup_timing[i].__dirty == DIRTY)
    68f8:	9f 93 6c 00 	cmp	#1,	108(r15);r3 As==01, 0x006c
    68fc:	0b 20       	jnz	$+24     	;abs 0x6914

000068fe <.Loc.160.1>:
			{
				
				pers_timer_vars[0].wkup_timing[i] = pers_timer_vars[1].wkup_timing[i];
    68fe:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6902:	0d 4f       	mov	r15,	r13	;
    6904:	3d 50 64 00 	add	#100,	r13	;#0x0064
    6908:	0c 4f       	mov	r15,	r12	;
    690a:	b0 12 10 6b 	call	#27408		;#0x6b10
    690e:	0f 4c       	mov	r12,	r15	;

00006910 <.Loc.161.1>:
				pers_timer_vars[0].wkup_timing[i].__dirty = NOT_DIRTY;
    6910:	8c 43 08 00 	mov	#0,	8(r12)	;r3 As==00

00006914 <.L27>:
		for (i = 0; i < MAX_WKUP_THREADS; i++)
    6914:	3f 50 0a 00 	add	#10,	r15	;#0x000a

00006918 <.Loc.155.1>:
    6918:	09 9f       	cmp	r15,	r9	;
    691a:	ee 23       	jnz	$-34     	;abs 0x68f8

0000691c <.L26>:
void _commit_timer_buffers(ink_time_interface_t interface){
    691c:	7f 40 03 00 	mov.b	#3,	r15	;

00006920 <.L33>:
		break;
	}	

	for (i = 0; i < TIMER_TOOLS; i++)
	{
		if (	pers_timer_vars[1].next_info[interface].__dirty == DIRTY)
    6920:	0c 4a       	mov	r10,	r12	;
    6922:	5c 0a       	rlam	#3,	r12	;

00006924 <.Loc.193.1>:
    6924:	9c 93 ee 58 	cmp	#1,	22766(r12);r3 As==01, 0x58ee
    6928:	13 20       	jnz	$+40     	;abs 0x6950

0000692a <.Loc.195.1>:
		{
			pers_timer_vars[0].next_info[interface] = 
    692a:	0c 4a       	mov	r10,	r12	;
    692c:	5c 0a       	rlam	#3,	r12	;
    692e:	0d 4c       	mov	r12,	r13	;
    6930:	3d 50 3e 58 	add	#22590,	r13	;#0x583e
    6934:	9d 4d aa 00 	mov	170(r13),70(r13)	;0x000aa, 0x0046
    6938:	46 00 
    693a:	9c 4c ea 58 	mov	22762(r12),22662(r12);0x058ea, 0x5886
    693e:	86 58 
    6940:	9c 4c ec 58 	mov	22764(r12),22664(r12);0x058ec, 0x5888
    6944:	88 58 
    6946:	9c 4c ee 58 	mov	22766(r12),22666(r12);0x058ee, 0x588a
    694a:	8a 58 

0000694c <.Loc.197.1>:
				pers_timer_vars[1].next_info[interface];
			pers_timer_vars[0].next_info[interface].__dirty = 
    694c:	8d 43 4c 00 	mov	#0,	76(r13)	;r3 As==00, 0x004c

00006950 <.L32>:
	for (i = 0; i < TIMER_TOOLS; i++)
    6950:	4c 4f       	mov.b	r15,	r12	;
    6952:	7c 53       	add.b	#-1,	r12	;r3 As==11
    6954:	4f 4c       	mov.b	r12,	r15	;

00006956 <.Loc.191.1>:
    6956:	4c 93       	cmp.b	#0,	r12	;r3 As==00
    6958:	e3 23       	jnz	$-56     	;abs 0x6920

0000695a <.Loc.201.1>:
				NOT_DIRTY;
		}
	}
}
    695a:	19 17       	popm	#2,	r10	;16-bit words

0000695c <.LCFI1>:
    695c:	30 41       	ret			

0000695e <.L25>:
    695e:	39 40 3e 58 	mov	#22590,	r9	;#0x583e

00006962 <.L30>:
			if (pers_timer_vars[1].xpr_timing[i].__dirty == DIRTY)
    6962:	99 93 8a 00 	cmp	#1,	138(r9)	;r3 As==01, 0x008a
    6966:	0c 20       	jnz	$+26     	;abs 0x6980

00006968 <.Loc.171.1>:
				pers_timer_vars[0].xpr_timing[i] = pers_timer_vars[1].xpr_timing[i];
    6968:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    696c:	0d 49       	mov	r9,	r13	;
    696e:	3d 50 82 00 	add	#130,	r13	;#0x0082
    6972:	0c 49       	mov	r9,	r12	;
    6974:	3c 50 1e 00 	add	#30,	r12	;#0x001e
    6978:	b0 12 10 6b 	call	#27408		;#0x6b10

0000697c <.Loc.172.1>:
				pers_timer_vars[0].xpr_timing[i].__dirty = NOT_DIRTY;
    697c:	89 43 26 00 	mov	#0,	38(r9)	;r3 As==00, 0x0026

00006980 <.L29>:
		for (i = 0; i < MAX_XPR_THREADS; i++)
    6980:	39 50 0a 00 	add	#10,	r9	;#0x000a

00006984 <.Loc.166.1>:
    6984:	39 90 5c 58 	cmp	#22620,	r9	;#0x585c
    6988:	ec 23       	jnz	$-38     	;abs 0x6962
    698a:	c8 3f       	jmp	$-110    	;abs 0x691c

0000698c <.L24>:
			if (pers_timer_vars[1].pdc_timing[i].__dirty == DIRTY)
    698c:	92 93 e6 58 	cmp	#1,	&0x58e6	;r3 As==01
    6990:	c5 23       	jnz	$-116    	;abs 0x691c

00006992 <.Loc.182.1>:
				pers_timer_vars[0].pdc_timing[i] = pers_timer_vars[1].pdc_timing[i];
    6992:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
    6996:	3d 40 de 58 	mov	#22750,	r13	;#0x58de
    699a:	3c 40 7a 58 	mov	#22650,	r12	;#0x587a
    699e:	b0 12 10 6b 	call	#27408		;#0x6b10

000069a2 <.Loc.183.1>:
				pers_timer_vars[0].pdc_timing[i].__dirty = NOT_DIRTY;
    69a2:	82 43 82 58 	mov	#0,	&0x5882	;r3 As==00

000069a6 <.Loc.177.1>:
		for (i = 0; i < MAX_PDC_THREADS; i++)
    69a6:	ba 3f       	jmp	$-138    	;abs 0x691c

000069a8 <_pers_timer_commit>:

void _pers_timer_commit(ink_time_interface_t interface){
switch (interface)
    69a8:	1c 93       	cmp	#1,	r12	;r3 As==01
    69aa:	16 24       	jz	$+46     	;abs 0x69d8
    69ac:	2c 93       	cmp	#2,	r12	;r3 As==10
    69ae:	0b 24       	jz	$+24     	;abs 0x69c6
    69b0:	0c 93       	cmp	#0,	r12	;r3 As==00
    69b2:	08 20       	jnz	$+18     	;abs 0x69c4

000069b4 <.Loc.207.1>:
	{
		case WKUP:
		    if (wkup_tstatus == TIMER_COMMIT)
    69b4:	1d 42 06 59 	mov	&0x5906,r13	;0x5906

000069b8 <.Loc.207.1>:
    69b8:	1d 93       	cmp	#1,	r13	;r3 As==01
    69ba:	04 20       	jnz	$+10     	;abs 0x69c4

000069bc <.Loc.209.1>:
		    {
		    	_commit_timer_buffers(interface);
    69bc:	b0 12 e0 68 	call	#26848		;#0x68e0

000069c0 <.LVL43>:
		        wkup_tstatus = TIMER_DONE;
    69c0:	a2 43 06 59 	mov	#2,	&0x5906	;r3 As==10

000069c4 <.L39>:
			break;
		default:
			break;

	}
}
    69c4:	30 41       	ret			

000069c6 <.L41>:
			if (xpr_tstatus == TIMER_COMMIT)
    69c6:	1d 42 08 59 	mov	&0x5908,r13	;0x5908

000069ca <.Loc.214.1>:
    69ca:	1d 93       	cmp	#1,	r13	;r3 As==01
    69cc:	fb 23       	jnz	$-8      	;abs 0x69c4

000069ce <.Loc.216.1>:
		    	_commit_timer_buffers(interface);
    69ce:	b0 12 e0 68 	call	#26848		;#0x68e0

000069d2 <.LVL45>:
		        xpr_tstatus = TIMER_DONE;
    69d2:	a2 43 08 59 	mov	#2,	&0x5908	;r3 As==10
    69d6:	f6 3f       	jmp	$-18     	;abs 0x69c4

000069d8 <.L40>:
			if (pdc_tstatus == TIMER_COMMIT)
    69d8:	1d 42 0a 59 	mov	&0x590a,r13	;0x590a

000069dc <.Loc.220.1>:
    69dc:	1d 93       	cmp	#1,	r13	;r3 As==01
    69de:	f2 23       	jnz	$-26     	;abs 0x69c4

000069e0 <.Loc.222.1>:
		    	_commit_timer_buffers(interface);
    69e0:	b0 12 e0 68 	call	#26848		;#0x68e0

000069e4 <.LVL47>:
		        pdc_tstatus = TIMER_DONE;
    69e4:	a2 43 0a 59 	mov	#2,	&0x590a	;r3 As==10

000069e8 <.Loc.230.1>:
}
    69e8:	ed 3f       	jmp	$-36     	;abs 0x69c4

000069ea <_pers_timer_get>:

timing_d _pers_timer_get(uint8_t idx,ink_time_interface_t interface ){
    69ea:	0a 15       	pushm	#1,	r10	;16-bit words

000069ec <.LCFI3>:
    69ec:	0a 4c       	mov	r12,	r10	;
    69ee:	4f 4d       	mov.b	r13,	r15	;

000069f0 <.Loc.233.1>:
	switch (interface)
    69f0:	0d 4f       	mov	r15,	r13	;
    69f2:	5d 06       	rlam	#2,	r13	;

000069f4 <.LVL49>:
		case XPR:
			return pers_timer_vars[0].xpr_timing[idx];
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx];
		default:
		    return pers_timer_vars[0].wkup_timing[idx];
    69f4:	0d 5f       	add	r15,	r13	;
    69f6:	5d 02       	rlam	#1,	r13	;

000069f8 <.Loc.233.1>:
	switch (interface)
    69f8:	1e 93       	cmp	#1,	r14	;r3 As==01
    69fa:	0b 24       	jz	$+24     	;abs 0x6a12
    69fc:	2e 93       	cmp	#2,	r14	;r3 As==10
    69fe:	0e 20       	jnz	$+30     	;abs 0x6a1c

00006a00 <.Loc.238.1>:
			return pers_timer_vars[0].xpr_timing[idx];
    6a00:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006a04 <.LVL50>:
    6a04:	3d 50 5c 58 	add	#22620,	r13	;#0x585c

00006a08 <.L47>:
		    return pers_timer_vars[0].wkup_timing[idx];
    6a08:	b0 12 10 6b 	call	#27408		;#0x6b10

00006a0c <.LVL51>:
	}
		
}
    6a0c:	0c 4a       	mov	r10,	r12	;
    6a0e:	0a 17       	popm	#1,	r10	;16-bit words

00006a10 <.LCFI4>:
    6a10:	30 41       	ret			

00006a12 <.L44>:
			return pers_timer_vars[0].pdc_timing[idx];
    6a12:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006a16 <.LVL53>:
    6a16:	3d 50 7a 58 	add	#22650,	r13	;#0x587a
    6a1a:	f6 3f       	jmp	$-18     	;abs 0x6a08

00006a1c <.L45>:
		    return pers_timer_vars[0].wkup_timing[idx];
    6a1c:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a

00006a20 <.LVL55>:
    6a20:	3d 50 3e 58 	add	#22590,	r13	;#0x583e
    6a24:	f1 3f       	jmp	$-28     	;abs 0x6a08

00006a26 <_pers_timer_get_data>:

uint16_t _pers_timer_get_data(uint8_t idx,ink_time_interface_t interface ){
    6a26:	4e 4c       	mov.b	r12,	r14	;

00006a28 <.Loc.249.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    6a28:	1d 93       	cmp	#1,	r13	;r3 As==01
    6a2a:	13 24       	jz	$+40     	;abs 0x6a52
    6a2c:	2d 93       	cmp	#2,	r13	;r3 As==10
    6a2e:	0a 24       	jz	$+22     	;abs 0x6a44
    6a30:	4c 43       	clr.b	r12		;

00006a32 <.LVL57>:
    6a32:	0d 93       	cmp	#0,	r13	;r3 As==00
    6a34:	06 20       	jnz	$+14     	;abs 0x6a42

00006a36 <.Loc.252.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].data ;		
    6a36:	0c 4e       	mov	r14,	r12	;
    6a38:	5c 06       	rlam	#2,	r12	;
    6a3a:	0c 5e       	add	r14,	r12	;
    6a3c:	5c 02       	rlam	#1,	r12	;
    6a3e:	1c 4c 42 58 	mov	22594(r12),r12	;0x05842

00006a42 <.L48>:
		default:
			return 0;

	}

}
    6a42:	30 41       	ret			

00006a44 <.L50>:
			return pers_timer_vars[0].xpr_timing[idx].data ;			
    6a44:	0c 4e       	mov	r14,	r12	;

00006a46 <.LVL59>:
    6a46:	5c 06       	rlam	#2,	r12	;
    6a48:	0c 5e       	add	r14,	r12	;
    6a4a:	5c 02       	rlam	#1,	r12	;
    6a4c:	1c 4c 60 58 	mov	22624(r12),r12	;0x05860
    6a50:	f8 3f       	jmp	$-14     	;abs 0x6a42

00006a52 <.L49>:
			return pers_timer_vars[0].pdc_timing[idx].data ;			
    6a52:	0c 4e       	mov	r14,	r12	;

00006a54 <.LVL61>:
    6a54:	5c 06       	rlam	#2,	r12	;
    6a56:	0c 5e       	add	r14,	r12	;
    6a58:	5c 02       	rlam	#1,	r12	;
    6a5a:	1c 4c 7e 58 	mov	22654(r12),r12	;0x0587e
    6a5e:	f1 3f       	jmp	$-28     	;abs 0x6a42

00006a60 <_pers_timer_get_thread_id>:

uint8_t _pers_timer_get_thread_id(uint8_t idx,ink_time_interface_t interface ){
    6a60:	4e 4c       	mov.b	r12,	r14	;

00006a62 <.Loc.266.1>:
	//get the persistent timer from persistent buffer
	switch (interface)
    6a62:	1d 93       	cmp	#1,	r13	;r3 As==01
    6a64:	13 24       	jz	$+40     	;abs 0x6a8c
    6a66:	2d 93       	cmp	#2,	r13	;r3 As==10
    6a68:	0a 24       	jz	$+22     	;abs 0x6a7e
    6a6a:	4c 43       	clr.b	r12		;

00006a6c <.LVL63>:
    6a6c:	0d 93       	cmp	#0,	r13	;r3 As==00
    6a6e:	06 20       	jnz	$+14     	;abs 0x6a7c

00006a70 <.Loc.269.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].thread_id ;
    6a70:	0c 4e       	mov	r14,	r12	;
    6a72:	5c 06       	rlam	#2,	r12	;
    6a74:	0c 5e       	add	r14,	r12	;
    6a76:	5c 02       	rlam	#1,	r12	;
    6a78:	5c 4c 40 58 	mov.b	22592(r12),r12	;0x05840

00006a7c <.L56>:
		default:
		    return	0;
	}


}
    6a7c:	30 41       	ret			

00006a7e <.L55>:
			return pers_timer_vars[0].xpr_timing[idx].thread_id ;
    6a7e:	0c 4e       	mov	r14,	r12	;

00006a80 <.LVL65>:
    6a80:	5c 06       	rlam	#2,	r12	;
    6a82:	0c 5e       	add	r14,	r12	;
    6a84:	5c 02       	rlam	#1,	r12	;
    6a86:	5c 4c 5e 58 	mov.b	22622(r12),r12	;0x0585e
    6a8a:	f8 3f       	jmp	$-14     	;abs 0x6a7c

00006a8c <.L54>:
			return pers_timer_vars[0].pdc_timing[idx].thread_id ;
    6a8c:	0c 4e       	mov	r14,	r12	;

00006a8e <.LVL67>:
    6a8e:	5c 06       	rlam	#2,	r12	;
    6a90:	0c 5e       	add	r14,	r12	;
    6a92:	5c 02       	rlam	#1,	r12	;
    6a94:	5c 4c 7c 58 	mov.b	22652(r12),r12	;0x0587c
    6a98:	f1 3f       	jmp	$-28     	;abs 0x6a7c

00006a9a <_pers_timer_get_status>:

used_st _pers_timer_get_status(uint8_t idx,ink_time_interface_t interface ){
    6a9a:	4e 4c       	mov.b	r12,	r14	;

00006a9c <.Loc.283.1>:
	//get the persistent timer from persistent buffer
switch (interface)
    6a9c:	1d 93       	cmp	#1,	r13	;r3 As==01
    6a9e:	13 24       	jz	$+40     	;abs 0x6ac6
    6aa0:	2d 93       	cmp	#2,	r13	;r3 As==10
    6aa2:	0a 24       	jz	$+22     	;abs 0x6ab8
    6aa4:	5c 43       	mov.b	#1,	r12	;r3 As==01

00006aa6 <.LVL69>:
    6aa6:	0d 93       	cmp	#0,	r13	;r3 As==00
    6aa8:	06 20       	jnz	$+14     	;abs 0x6ab6

00006aaa <.Loc.286.1>:
	{
		case WKUP:
			return pers_timer_vars[0].wkup_timing[idx].status ;
    6aaa:	0c 4e       	mov	r14,	r12	;
    6aac:	5c 06       	rlam	#2,	r12	;
    6aae:	0c 5e       	add	r14,	r12	;
    6ab0:	5c 02       	rlam	#1,	r12	;
    6ab2:	1c 4c 3e 58 	mov	22590(r12),r12	;0x0583e

00006ab6 <.L58>:
		case PDC:
			return pers_timer_vars[0].pdc_timing[idx].status ;
		default:
		    return USED;
	}
}
    6ab6:	30 41       	ret			

00006ab8 <.L60>:
			return pers_timer_vars[0].xpr_timing[idx].status ;
    6ab8:	0c 4e       	mov	r14,	r12	;

00006aba <.LVL71>:
    6aba:	5c 06       	rlam	#2,	r12	;
    6abc:	0c 5e       	add	r14,	r12	;
    6abe:	5c 02       	rlam	#1,	r12	;
    6ac0:	1c 4c 5c 58 	mov	22620(r12),r12	;0x0585c
    6ac4:	f8 3f       	jmp	$-14     	;abs 0x6ab6

00006ac6 <.L59>:
			return pers_timer_vars[0].pdc_timing[idx].status ;
    6ac6:	0c 4e       	mov	r14,	r12	;

00006ac8 <.LVL73>:
    6ac8:	5c 06       	rlam	#2,	r12	;
    6aca:	0c 5e       	add	r14,	r12	;
    6acc:	5c 02       	rlam	#1,	r12	;
    6ace:	1c 4c 7a 58 	mov	22650(r12),r12	;0x0587a
    6ad2:	f1 3f       	jmp	$-28     	;abs 0x6ab6

00006ad4 <_pers_timer_get_nxt_thread>:
//TODO: change types
uint8_t _pers_timer_get_nxt_thread(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_thread;
    6ad4:	5c 0a       	rlam	#3,	r12	;

00006ad6 <.LVL75>:
}
    6ad6:	5c 4c 86 58 	mov.b	22662(r12),r12	;0x05886
    6ada:	30 41       	ret			

00006adc <_pers_timer_get_nxt_time>:

uint16_t _pers_timer_get_nxt_time(ink_time_interface_t ink_time_interface){
	//get the persistent timer from persistent buffer
	return pers_timer_vars[0].next_info[ink_time_interface].next_time;
    6adc:	5c 0a       	rlam	#3,	r12	;

00006ade <.LVL77>:
}
    6ade:	1c 4c 88 58 	mov	22664(r12),r12	;0x05888
    6ae2:	30 41       	ret			

00006ae4 <__mulhi2>:
    6ae4:	02 12       	push	r2		;
    6ae6:	32 c2       	dint			
    6ae8:	03 43       	nop			
    6aea:	82 4c c0 04 	mov	r12,	&0x04c0	;
    6aee:	82 4d c8 04 	mov	r13,	&0x04c8	;
    6af2:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6af6:	00 13       	reti			

00006af8 <__umulhisi2>:
    6af8:	02 12       	push	r2		;
    6afa:	32 c2       	dint			
    6afc:	03 43       	nop			
    6afe:	82 4c c0 04 	mov	r12,	&0x04c0	;
    6b02:	82 4d c8 04 	mov	r13,	&0x04c8	;
    6b06:	1c 42 ca 04 	mov	&0x04ca,r12	;0x04ca
    6b0a:	
00006b0c <L0^A>:
    6b0c:	cc 04       	mova	r4,	r12	;
    6b0e:	00 13       	reti			

00006b10 <memcpy>:
    6b10:	0f 4c       	mov	r12,	r15	;
    6b12:	0e 5d       	add	r13,	r14	;

00006b14 <.L2>:
    6b14:	0d 9e       	cmp	r14,	r13	;
    6b16:	01 20       	jnz	$+4      	;abs 0x6b1a

00006b18 <.Loc.111.1>:
    6b18:	30 41       	ret			

00006b1a <.L3>:
    6b1a:	ff 4d 00 00 	mov.b	@r13+,	0(r15)	;

00006b1e <.LVL4>:
    6b1e:	1f 53       	inc	r15		;
    6b20:	f9 3f       	jmp	$-12     	;abs 0x6b14

00006b22 <_exit>:
    6b22:	ff 3f       	jmp	$+0      	;abs 0x6b22

00006b24 <memset>:
    6b24:	0e 5c       	add	r12,	r14	;

00006b26 <L0^A>:
    6b26:	0f 4c       	mov	r12,	r15	;

00006b28 <.L2>:
    6b28:	0f 9e       	cmp	r14,	r15	;
    6b2a:	01 20       	jnz	$+4      	;abs 0x6b2e

00006b2c <.Loc.104.1>:
    6b2c:	30 41       	ret			

00006b2e <.L3>:
    6b2e:	1f 53       	inc	r15		;

00006b30 <.LVL4>:
    6b30:	cf 4d ff ff 	mov.b	r13,	-1(r15)	; 0xffff
    6b34:	f9 3f       	jmp	$-12     	;abs 0x6b28
