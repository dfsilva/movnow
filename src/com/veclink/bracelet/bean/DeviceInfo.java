// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;


public class DeviceInfo
{

    public String deviceId;
    public String device_type;
    public int firmware_version;
    public int protocol_version;

    public DeviceInfo()
    {
        deviceId = "";
        protocol_version = 0;
        firmware_version = -100;
        device_type = "0";
    }

    public String toString()
    {
        return (new StringBuilder()).append("DeviceInfo [deviceId=").append(deviceId).append(", protocol_version=").append(protocol_version).append(", firmware_version=").append(firmware_version).append(", device_type=").append(device_type).append("]").toString();
    }
}
