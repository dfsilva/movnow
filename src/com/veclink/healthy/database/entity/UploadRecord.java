// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.entity;

import java.io.Serializable;

public class UploadRecord
    implements Serializable
{

    private String _id;
    private String deviceImei;
    private String lastSyncTime;
    private String uploadTime;
    private String userId;

    public UploadRecord()
    {
    }

    public UploadRecord(String s)
    {
        _id = s;
    }

    public UploadRecord(String s, String s1, String s2, String s3, String s4)
    {
        _id = s;
        userId = s1;
        deviceImei = s2;
        lastSyncTime = s3;
        uploadTime = s4;
    }

    public String getDeviceImei()
    {
        return deviceImei;
    }

    public String getLastSyncTime()
    {
        return lastSyncTime;
    }

    public String getUploadTime()
    {
        return uploadTime;
    }

    public String getUserId()
    {
        return userId;
    }

    public String get_id()
    {
        return _id;
    }

    public void setDeviceImei(String s)
    {
        deviceImei = s;
    }

    public void setLastSyncTime(String s)
    {
        lastSyncTime = s;
    }

    public void setUploadTime(String s)
    {
        uploadTime = s;
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
