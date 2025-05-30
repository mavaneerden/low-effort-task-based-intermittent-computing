#include <msp430.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "msp-math.h"
#include "ink/ink.h"
#include "benchmark_helpers.h"

#define MSG "hello"
#define MSG_LEN 5

// Debug defines and flags.
#define DEBUG_PORT 3
#define DEBUG_PIN  4
INK_PERSISTENT uint8_t full_run_started = 0;

char * msgPt = MSG;

// Tasks.
void* initTask();
void* ce_1();
void* ce_2();
void* is_i_prime();
void* ce_3();
void* cd();
void* ce_4();
void* encrypt_init();
void* encrypt_inner_loop();
void* encrypt_finish();
void* encrypt_print();
void* decrypt_init();
void* decrypt_inner_loop();
void* decrypt_finish();
void* decrypt_print();

// Task-shared protected variables.
long int p, q, n, t, k, j, i, flag;
long int e[10], d[10], m[10], temp[10], en[10];
long int en_pt, en_ct = 0, en_key, en_k, en_cnt, en_j = 0;
long int de_pt, de_ct = 0, de_key, de_k, de_cnt, de_j = 0;

INK_CREATE_THREAD(15, true)
{
    return initTask;
}

void* initTask()
{
    full_run_started = 1;

    int in_p = 7;
    int in_q = 17;

    p= in_p;
    q= in_q;
    n= in_p * in_q;
    t= (in_p-1) * (in_q-1);
    i=1;
    k=0;
    flag=0;
    for (int ii = 0; ii < MSG_LEN; ii++)
    {
        m[ii] = *(msgPt+ii);
    }
    return ce_1;
}

void* ce_1()
{
    i++; // start with i=2

    if (i >= t) {
        return encrypt_init;
    } else {
        return ce_2;
    }
}

void* ce_2()
{
    if (t % i == 0) {
        return ce_1;
    } else {
        return is_i_prime;
    }
}

void*  is_i_prime()
{
    int c;
    c=sqrt32(i);
    j = c;
    for(c=2; c <= j ;c++)
    {
        if( i % c==0)
        {
            flag=0;
            return ce_1;
        }
    }
    flag = 1;

    return ce_3;
}

void* ce_3()
{
    long int in_i = i;
    if( flag == 1 && in_i != p && in_i != q )
    {
        e[k] = in_i ;
    } else {
        return ce_1;
    }

    return cd;
}

void* cd()
{
    long int kk=1, __cry;
    while(1)
    {
        kk=kk +  t;
        if(kk % e[k] ==0){
            __cry = (kk/ e[ k ] );
            flag = __cry;
            break;
        }
    }
    return ce_4;
}

void* ce_4()
{
    int __cry = flag;
    if(__cry > 0)
    {
        d[ k ] =__cry;
        k++;
    }

    if (k < 9) {
        return ce_1;
    } else {
        return encrypt_init;
    }
}

void* encrypt_init()
{
    long int __cry;
    __cry = m[ en_cnt ] ;
    en_pt = __cry;
    en_pt -=96;
    en_k  = 1;
    en_j  = 0;
    __cry = e[0] ;
    en_key = __cry;
    return encrypt_inner_loop;
}

void* encrypt_inner_loop()
{
    long int __cry;
    if (en_j < en_key) {
        __cry = en_k * en_pt;
        en_k = __cry;
        __cry = en_k % n;
        en_k = __cry;
        en_j++;
        return encrypt_inner_loop;
    } else {
        return encrypt_finish;
    }
}

void* encrypt_finish()
{
    long int __cry;
    __cry = en_k;
    temp[ en_cnt ] = __cry;
    __cry = en_k + 96;
    en_ct = __cry;
    __cry = en_ct;
    en[ en_cnt ] = __cry;

    if (en_cnt < MSG_LEN) {
        en_cnt++;
        return encrypt_init;
    } else {
        en[ en_cnt ] = -1;
        return encrypt_print;
    }
}

void* encrypt_print()
{
    return decrypt_init;
}
void* decrypt_init()
{

   long int __cry;
   de_k  = 1;
   de_j  = 0;
   __cry =d[0];
   de_key = __cry;
    return decrypt_inner_loop;
}

void* decrypt_inner_loop()
{
   long int __cry;
   __cry =  temp[ de_cnt ];
   de_ct = __cry;

    if( de_j < de_key )
    {
        __cry = de_k * de_ct;
        de_k = __cry;
        __cry = de_k % n;
        de_k = __cry;
        de_j++;
        return decrypt_inner_loop;
    } else {
        return decrypt_finish;
    }
}

void* decrypt_finish()
{
   long int __cry;
   __cry = de_k + 96;
   de_pt = __cry;
   m[ de_cnt ] = __cry;

    if (en[ de_cnt ] != -1) {
        de_cnt++;
        return decrypt_init;
    } else {
        return decrypt_print;
    }
}

void* decrypt_print()
{
#ifdef RAISE_PIN
    if (full_run_started)
    {
        __port_on(3, 4);
        __port_off(3, 4);
        full_run_started = 0;
    }
#endif

    return initTask;
}


int main(void)
{
    /*** Things to do after reboot. ***/
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     // Disable the GPIO power-on default high-impedance mode

#ifdef RAISE_PIN
    __port_init(3, 4); // Initialize the pin so we can read the timing.
#endif

    /* Start the scheduler. */
    ink_scheduler_run();

    return 0;
}
