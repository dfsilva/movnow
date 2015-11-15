// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;


public class ButtonUtil
{

    private static long lastClickTime;

    public ButtonUtil()
    {
    }

    public static boolean isFastClick()
    {
        com/veclink/movnow_q2/util/ButtonUtil;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l = System.currentTimeMillis();
        l1 = lastClickTime;
        if (l - l1 >= 500L) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        com/veclink/movnow_q2/util/ButtonUtil;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        lastClickTime = l;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean isFindBtnFastClick()
    {
        com/veclink/movnow_q2/util/ButtonUtil;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        l = System.currentTimeMillis();
        l1 = lastClickTime;
        if (l - l1 >= 1000L) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        com/veclink/movnow_q2/util/ButtonUtil;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        lastClickTime = l;
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }
}
