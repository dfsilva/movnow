// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;

import android.util.Log;

public final class Debug
{

    public static final String BLELOGTAG = "blelogtag";
    public static boolean isDebug = true;
    public static boolean isPringBleData = true;

    public Debug()
    {
    }

    public static void closeLog()
    {
        isDebug = false;
        isPringBleData = false;
    }

    public static void logBle(String s)
    {
        if (isDebug)
        {
            Log.i("blelogtag", s);
        }
    }

    public static void logBleAllDataByTag(String s, String s1)
    {
        if (isPringBleData)
        {
            Log.i(s, s1);
        }
    }

    public static void logBleByTag(String s, String s1)
    {
        if (isDebug)
        {
            Log.i(s, s1);
        }
    }

    public static void logD(String s, String s1)
    {
        if (isDebug)
        {
            Log.d(s, s1);
        }
    }

    public static void logE(String s, String s1)
    {
        if (isDebug)
        {
            Log.e(s, s1);
        }
    }

    public static void logV(String s, String s1)
    {
        if (isDebug)
        {
            Log.v(s, s1);
        }
    }

}
