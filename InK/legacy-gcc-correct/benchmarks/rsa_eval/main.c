#include <math.h>
#include <msp430.h>
#include <stdio.h>
#include <stdlib.h>

#include "ink.h"
#include "msp-math.h"

#define MSG     "hello"
#define MSG_LEN 5

// Debug defines and flags.
#define DEBUG_PORT 3
#define DEBUG_PIN  4
__nv uint8_t full_run_started = 0;
__nv uint8_t first_run = 0;

char* msgPt = MSG;

// Tasks.
ENTRY_TASK(initTask);
TASK(ce_1);
TASK(ce_2);
TASK(is_i_prime);
TASK(ce_3);
TASK(cd);
TASK(ce_4);
TASK(encrypt_init);
TASK(encrypt_inner_loop);
TASK(encrypt_finish);
TASK(encrypt_print);
TASK(decrypt_init);
TASK(decrypt_inner_loop);
TASK(decrypt_finish);
TASK(decrypt_print);

// Task-shared protected variables.
__shared(
    long int p, q, n, t, k, j, i, flag; 
    long int e[10], d[10], m[10], temp[10], en[10];
    long int en_pt, en_ct, en_key, en_k, en_cnt, en_j;
    long int de_pt, de_ct, de_key, de_k, de_cnt, de_j;
)

// called at the very first boot
void thread1_init()
{
    // create a thread with priority 15 and entry task t_init
    __CREATE(15, initTask);
    __SIGNAL(15);
}

__app_reboot()
{
#ifdef RAISE_PIN
    __port_init(3, 4);
#else
    __no_operation();
#endif
}

ENTRY_TASK(initTask)
{
    // Added because needs to be initialised to 0 on first boot.
    if (first_run == 0)
    {
        __SET(en_ct, 0);
        __SET(de_ct, 0);
        __SET(en_j, 0);
        __SET(de_j, 0);
        first_run = 1;
    }

#ifdef RAISE_PIN
    full_run_started = 1;
#endif

    int in_p = 7;
    int in_q = 17;

    __SET(p, in_p);
    __SET(q, in_q);
    __SET(n, in_p * in_q);
    __SET(t, (in_p - 1) * (in_q - 1));
    __SET(i, 1);
    __SET(k, 0);
    __SET(flag, 0);
    for (int ii = 0; ii < MSG_LEN; ii++)
    {
        __SET(m[ii], *(msgPt + ii));
    }

    return ce_1;
}

TASK(ce_1)
{
    __SET(i, ++__GET(i));  // start with i=2

    if (__GET(i) >= __GET(t))
    {
        return encrypt_init;
    }
    else
    {
        return ce_2;
    }
}

TASK(ce_2)
{
    if (__GET(t) % __GET(i) == 0)
    {
        return ce_1;
    }
    else
    {
        return is_i_prime;
    }
}

TASK(is_i_prime)
{
    int c;
    c = sqrt32(__GET(i));
    __SET(j, c);
    for (c = 2; c <= __GET(j); c++)
    {
        if (__GET(i) % c == 0)
        {
            __SET(flag, 0);
            return ce_1;
        }
    }
    __SET(flag, 1);

    return ce_3;
}

TASK(ce_3)
{
    long int in_i = __GET(i);
    if (__GET(flag) == 1 && in_i != __GET(p) && in_i != __GET(q))
    {
        __SET(e[__GET(k)], in_i);
    }
    else
    {
        return ce_1;
    }

    return cd;
}

TASK(cd)
{
    long int kk = 1, __cry;
    while (1)
    {
        kk = kk + __GET(t);
        if (kk % __GET(e[__GET(k)]) == 0)
        {
            __cry = (kk / __GET(e[__GET(k)]));
            __SET(flag, __cry);
            break;
        }
    }

    return ce_4;
}

TASK(ce_4)
{
    int __cry = __GET(flag);
    if (__cry > 0)
    {
        __SET(d[__GET(k)], __cry);
        __SET(k, ++__GET(k));
    }

    if (__GET(k) < 9)
    {
        return ce_1;
    }
    else
    {
        return encrypt_init;
    }
}

TASK(encrypt_init)
{
    long int __cry;
    __cry = __GET(m[__GET(en_cnt)]);
    __SET(en_pt, __cry);
    __SET(en_pt, __GET(en_pt) - 96);
    __SET(en_k, 1);
    __SET(en_j, 0);
    __cry = __GET(e[0]);
    __SET(en_key, __cry);

    return encrypt_inner_loop;
}

TASK(encrypt_inner_loop)
{
    long int __cry;
    if (__GET(en_j) < __GET(en_key))
    {
        __cry = __GET(en_k) * __GET(en_pt);
        __SET(en_k, __cry);
        __cry = __GET(en_k) % __GET(n);
        __SET(en_k, __cry);
        __SET(en_j, ++__GET(en_j));
        return encrypt_inner_loop;
    }
    else
    {
        return encrypt_finish;
    }
}

TASK(encrypt_finish)
{
    long int __cry;
    __cry = __GET(en_k);
    __SET(temp[__GET(en_cnt)], __cry);
    __cry = __GET(en_k) + 96;
    __SET(en_ct, __cry);
    __cry = __GET(en_ct);
    __SET(en[__GET(en_cnt)], __cry);

    if (__GET(en_cnt) < MSG_LEN)
    {
        __SET(en_cnt, ++__GET(en_cnt));
        return encrypt_init;
    }
    else
    {
        __SET(en[__GET(en_cnt)], -1);
        return encrypt_print;
    }
}

TASK(encrypt_print)
{
    return decrypt_init;
}

TASK(decrypt_init)
{
    long int __cry;
    __SET(de_k, 1);
    __SET(de_j, 0);
    __cry = __GET(d[0]);
    __SET(de_key, __cry);

    return decrypt_inner_loop;
}

TASK(decrypt_inner_loop)
{
    long int __cry;
    __cry = __GET(temp[__GET(de_cnt)]);
    __SET(de_ct, __cry);

    if (__GET(de_j) < __GET(de_key))
    {
        __cry = __GET(de_k) * __GET(de_ct);
        __SET(de_k, __cry);
        __cry = __GET(de_k) % __GET(n);
        __SET(de_k, __cry);
        __SET(de_j, ++__GET(de_j));
        return decrypt_inner_loop;
    }
    else
    {
        return decrypt_finish;
    }
}

TASK(decrypt_finish)
{
    long int __cry;
    __cry = __GET(de_k) + 96;
    __SET(de_pt, __cry);
    __SET(m[__GET(de_cnt)], __cry);

    if (__GET(en[__GET(de_cnt)]) != -1)
    {
        __SET(de_cnt, ++__GET(de_cnt));
        return decrypt_init;
    }
    else
    {
        return decrypt_print;
    }
}

TASK(decrypt_print)
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
