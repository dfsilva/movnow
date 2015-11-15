// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bean;


public class DrinkWaterData
{

    public String dateTime;
    public String deviceId;
    public int drinkWaterCount;
    public int startTime;

    public DrinkWaterData()
    {
    }

    public String toString()
    {
        return (new StringBuilder()).append("DrinkWaterData [deviceId=").append(deviceId).append(", startTime=").append(startTime).append(", dateTime=").append(dateTime).append(", drinkWaterCount=").append(drinkWaterCount).append("]").toString();
    }
}
