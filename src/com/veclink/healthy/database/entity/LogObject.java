// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class LogObject
    implements Serializable
{

    private String _id;
    private String deviceId;
    private String deviceType;
    private String firmwareVer;
    private String logType;
    private String newFirmwareVer;
    private String optTime;
    private String result;
    private String userId;

    public LogObject()
    {
    }

    public LogObject(String s)
    {
        _id = s;
    }

    public LogObject(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8)
    {
        _id = s;
        logType = s1;
        result = s2;
        optTime = s3;
        deviceId = s4;
        deviceType = s5;
        userId = s6;
        firmwareVer = s7;
        newFirmwareVer = s8;
    }

    public String getDeviceId()
    {
        return deviceId;
    }

    public String getDeviceType()
    {
        return deviceType;
    }

    public String getFirmwareVer()
    {
        return firmwareVer;
    }

    public String getLogType()
    {
        return logType;
    }

    public String getNewFirmwareVer()
    {
        return newFirmwareVer;
    }

    public String getOptTime()
    {
        return optTime;
    }

    public String getResult()
    {
        return result;
    }

    public String getUserId()
    {
        return userId;
    }

    public String get_id()
    {
        return _id;
    }

    public void setDeviceId(String s)
    {
        deviceId = s;
    }

    public void setDeviceType(String s)
    {
        deviceType = s;
    }

    public void setFirmwareVer(String s)
    {
        firmwareVer = s;
    }

    public void setLogType(String s)
    {
        logType = s;
    }

    public void setNewFirmwareVer(String s)
    {
        newFirmwareVer = s;
    }

    public void setOptTime(String s)
    {
        optTime = s;
    }

    public void setResult(String s)
    {
        result = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    public void set_id(String s)
    {
        _id = s;
    }
}
