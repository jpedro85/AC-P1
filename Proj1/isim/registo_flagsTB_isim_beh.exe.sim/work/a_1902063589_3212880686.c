/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//VBoxSvr/Partilha/P1/Proj1/registo_flags.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1902063589_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t2 = (t0 + 5175);
    t10 = xsi_mem_cmp(t2, t4, 3U);
    if (t10 == 1)
        goto LAB9;

LAB15:    t8 = (t0 + 5178);
    t11 = xsi_mem_cmp(t8, t4, 3U);
    if (t11 == 1)
        goto LAB10;

LAB16:    t12 = (t0 + 5181);
    t14 = xsi_mem_cmp(t12, t4, 3U);
    if (t14 == 1)
        goto LAB11;

LAB17:    t15 = (t0 + 5184);
    t17 = xsi_mem_cmp(t15, t4, 3U);
    if (t17 == 1)
        goto LAB12;

LAB18:    t18 = (t0 + 5187);
    t20 = xsi_mem_cmp(t18, t4, 3U);
    if (t20 == 1)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3352);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB8:    t2 = (t0 + 3272);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t4 = (t0 + 1968U);
    t9 = *((char **)t4);
    t4 = (t9 + 0);
    memcpy(t4, t8, 5U);
    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(57, ng0);
    t21 = (t0 + 1968U);
    t22 = *((char **)t21);
    t23 = (0 - 4);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t21 = (t22 + t26);
    t1 = *((unsigned char *)t21);
    t27 = (t0 + 3352);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    *((unsigned char *)t31) = t1;
    xsi_driver_first_trans_fast_port(t27);
    goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t10 = (1 - 4);
    t24 = (t10 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t2 = (t4 + t26);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3352);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB11:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t10 = (2 - 4);
    t24 = (t10 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t2 = (t4 + t26);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3352);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB12:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t10 = (3 - 4);
    t24 = (t10 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t2 = (t4 + t26);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3352);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB13:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t10 = (4 - 4);
    t24 = (t10 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t2 = (t4 + t26);
    t1 = *((unsigned char *)t2);
    t5 = (t0 + 3352);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB20:;
}


extern void work_a_1902063589_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1902063589_3212880686_p_0};
	xsi_register_didat("work_a_1902063589_3212880686", "isim/registo_flagsTB_isim_beh.exe.sim/work/a_1902063589_3212880686.didat");
	xsi_register_executes(pe);
}
