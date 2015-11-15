// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;

import java.io.Serializable;

public class BluetoothDeviceBean
    implements Serializable, Comparable
{

    private static final long serialVersionUID = 0x1a6d0c1fc3816adbL;
    private String device_address;
    private String device_name;
    private int device_rssi;

    public BluetoothDeviceBean(String s, String s1, int i)
    {
        device_address = s;
        device_name = s1;
        device_rssi = i;
    }

    public int compareTo(BluetoothDeviceBean bluetoothdevicebean)
    {
        return -(device_rssi - bluetoothdevicebean.device_rssi);
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((BluetoothDeviceBean)obj);
    }

    public String getDevice_address()
    {
        return device_address;
    }

    public String getDevice_name()
    {
        return device_name;
    }

    public int getDevice_rssi()
    {
        return device_rssi;
    }

    public void setDevice_address(String s)
    {
        device_address = s;
    }

    public void setDevice_name(String s)
    {
        device_name = s;
    }

    public void setDevice_rssi(int i)
    {
        device_rssi = i;
    }
}
