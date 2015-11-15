// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;

import java.util.ArrayList;
import java.util.List;

public class DeviceSportAndSleepData
{

    public List syncSleepDataResult;
    public List syncSportDataResult;

    public DeviceSportAndSleepData()
    {
        syncSportDataResult = new ArrayList();
        syncSleepDataResult = new ArrayList();
    }
}
