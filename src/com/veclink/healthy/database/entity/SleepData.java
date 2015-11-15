// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class SleepData
    implements Serializable
{

    private String _id;
    private String dateTime;
    private String deviceId;
    private String deviceType;
    private String hadupload;
    private int sleepDuration;
    private String sleepState;
    private int startTime;
    private String userId;

    public SleepData()
    {
    }

    public SleepData(String s)
    {
        _id = s;
    }

    public SleepData(String s, String s1, String s2, String s3, int i, int j, String s4, 
            String s5, String s6)
    {
        _id = s;
        userId = s1;
        deviceId = s2;
        dateTime = s3;
        startTime = i;
        sleepDuration = j;
        sleepState = s4;
        deviceType = s5;
        hadupload = s6;
    }

    public String getDateTime()
    {
        return dateTime;
    }

    public String getDeviceId()
    {
        return deviceId;
    }

    public String getDeviceType()
    {
        return deviceType;
    }

    public String getHadupload()
    {
        return hadupload;
    }

    public int getSleepDuration()
    {
        return sleepDuration;
    }

    public String getSleepState()
    {
        return sleepState;
    }

    public int getStartTime()
    {
        return startTime;
    }

    public String getUserId()
    {
        return userId;
    }

    public String get_id()
    {
        return _id;
    }

    public void setDateTime(String s)
    {
        dateTime = s;
    }

    public void setDeviceId(String s)
    {
        deviceId = s;
    }

    public void setDeviceType(String s)
    {
        deviceType = s;
    }

    public void setHadupload(String s)
    {
        hadupload = s;
    }

    public void setSleepDuration(int i)
    {
        sleepDuration = i;
    }

    public void setSleepState(String s)
    {
        sleepState = s;
    }

    public void setStartTime(int i)
    {
        startTime = i;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    public void set_id(String s)
    {
        _id = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("SleepData [_id=").append(_id).append(", userId=").append(userId).append(", deviceId=").append(deviceId).append(", dateTime=").append(dateTime).append(", startTime=").append(startTime).append(", sleepDuration=").append(sleepDuration).append(", sleepState=").append(sleepState).append(", deviceType=").append(deviceType).append(", hadupload=").append(hadupload).append("]").toString();
    }
}
