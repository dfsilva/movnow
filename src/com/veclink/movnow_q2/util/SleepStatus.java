// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;


public class SleepStatus
{

    public static final String DEEP_SLEEP = "0";
    public static final String LIGHT_SLEEP = "1";
    public int deepTimes;
    public int lightTimes;
    public int totalTimes;

    public SleepStatus()
    {
    }

    public int getDeepTimes()
    {
        return deepTimes;
    }

    public int getLightTimes()
    {
        return lightTimes;
    }

    public int getTotalTimes()
    {
        return totalTimes;
    }

    public void setDeepTimes(int i)
    {
        deepTimes = i;
    }

    public void setLightTimes(int i)
    {
        lightTimes = i;
    }

    public void setTotalTimes(int i)
    {
        totalTimes = i;
    }
}
