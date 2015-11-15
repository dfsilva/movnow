// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.pet;


public class PetData
{

    public String dateTime;
    public String deviceId;
    public int lightSleepDuration;
    public int lightSportDuration;
    public int middleSportDuration;
    public int noSportDuration;
    public int startTime;
    public int strongSportDuration;

    public PetData()
    {
    }

    public String toString()
    {
        return (new StringBuilder()).append("PetData [noSportDuration=").append(noSportDuration).append(", lightSleepDuration=").append(lightSleepDuration).append(", lightSportDuration=").append(lightSportDuration).append(", middleSportDuration=").append(middleSportDuration).append(", strongSportDuration=").append(strongSportDuration).append(", deviceId=").append(deviceId).append(", dateTime=").append(dateTime).append(", startTime=").append(startTime).append("]").toString();
    }
}
