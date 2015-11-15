// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class SleepQuality
    implements Serializable
{

    private String DateTime;
    private String DeepSleep;
    private String SleepAmount;
    private Long id;
    private String shallowSleep;

    public SleepQuality()
    {
    }

    public SleepQuality(Long long1)
    {
        id = long1;
    }

    public SleepQuality(Long long1, String s, String s1, String s2, String s3)
    {
        id = long1;
        SleepAmount = s;
        DeepSleep = s1;
        shallowSleep = s2;
        DateTime = s3;
    }

    public String getDateTime()
    {
        return DateTime;
    }

    public String getDeepSleep()
    {
        return DeepSleep;
    }

    public Long getId()
    {
        return id;
    }

    public String getShallowSleep()
    {
        return shallowSleep;
    }

    public String getSleepAmount()
    {
        return SleepAmount;
    }

    public void setDateTime(String s)
    {
        DateTime = s;
    }

    public void setDeepSleep(String s)
    {
        DeepSleep = s;
    }

    public void setId(Long long1)
    {
        id = long1;
    }

    public void setShallowSleep(String s)
    {
        shallowSleep = s;
    }

    public void setSleepAmount(String s)
    {
        SleepAmount = s;
    }
}
