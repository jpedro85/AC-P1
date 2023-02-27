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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//VBoxSvr/Partilha/P1/Proj1/RegistoB.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0306977970_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 844U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1884);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1132U);
    t3 = *((char **)t1);
    t1 = (t0 + 1928);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 684U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 592U);
    t10 = *((char **)t3);
    t3 = (t0 + 1132U);
    t11 = *((char **)t3);
    t3 = (t11 + 0);
    memcpy(t3, t10, 8U);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1132U);
    t3 = *((char **)t1);
    t1 = (t0 + 1928);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

}


extern void work_a_0306977970_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0306977970_3212880686_p_0};
	xsi_register_didat("work_a_0306977970_3212880686", "isim/test_registoB_isim_beh.exe.sim/work/a_0306977970_3212880686.didat");
	xsi_register_executes(pe);
}
