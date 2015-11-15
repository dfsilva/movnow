// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class SportData
    implements Serializable
{

    private String _id;
    private String dataFrequency;
    private String deviceId;
    private String deviceType;
    private String hadupload;
    private String sportStep;
    private String sportTime;
    private String sportType;
    private String userId;

    public SportData()
    {
    }

    public SportData(String s)
    {
        _id = s;
    }

    public SportData(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8)
    {
        _id = s;
        userId = s1;
        deviceId = s2;
        sportTime = s3;
        sportType = s4;
        sportStep = s5;
        dataFrequency = s6;
        deviceType = s7;
        hadupload = s8;
    }

    public String getDataFrequency()
    {
        return dataFrequency;
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

    public String getSportStep()
    {
        return sportStep;
    }

    public String getSportTime()
    {
        return sportTime;
    }

    public String getSportType()
    {
        return sportType;
    }

    public String getUserId()
    {
        return userId;
    }

    public String get_id()
    {
        return _id;
    }

    public void setDataFrequency(String s)
    {
        dataFrequency = s;
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

    public void setSportStep(String s)
    {
        sportStep = s;
    }

    public void setSportTime(String s)
    {
        sportTime = s;
    }

    public void setSportType(String s)
    {
        sportType = s;
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
        return (new StringBuilder()).append("SportData [_id=").append(_id).append(", userId=").append(userId).append(", deviceId=").append(deviceId).append(", sportTime=").append(sportTime).append(", sportType=").append(sportType).append(", sportStep=").append(sportStep).append(", dataFrequency=").append(dataFrequency).append(", deviceType=").append(deviceType).append(", hadupload=").append(hadupload).append("]").toString();
    }
}
