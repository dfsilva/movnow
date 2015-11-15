// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.util.Log;
import com.veclink.hw.bleservice.util.Debug;
import java.io.PrintStream;

public class DebugUtil
{

    private static boolean ISDEBUG = true;

    public DebugUtil()
    {
    }

    public static void closeLog()
    {
        ISDEBUG = false;
        Debug.closeLog();
    }

    public static void logd(String s, String s1)
    {
        if (ISDEBUG)
        {
            Log.d(s, s1);
        }
    }

    public static void logv(String s, String s1)
    {
        if (ISDEBUG)
        {
            Log.v(s, s1);
        }
    }

    public static void printBloothElog(String s, String s1)
    {
        Log.e(s, s1);
    }

    public static void printBloothlog(String s)
    {
        Log.i("phoneconnectdevice", s);
    }

    public static void println(String s)
    {
        if (ISDEBUG)
        {
            System.out.println(s);
        }
    }

    public static void wpringtln(String s, String s1)
    {
        Log.w(s, s1);
    }

}
