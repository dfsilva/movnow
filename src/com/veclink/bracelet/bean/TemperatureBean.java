// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bean;

import com.veclink.hw.bleservice.util.Helper;
import java.util.Arrays;

public class TemperatureBean
{

    public String macAddress;
    public float powerValue;
    public byte primaryByteArray[];
    public float temperatureValue;
    public long time;

    public TemperatureBean(byte abyte0[])
    {
        primaryByteArray = abyte0;
        temperatureValue = abyte0[2] << 8 & 0xff00 | abyte0[1] & 0xff;
        temperatureValue = temperatureValue / 10F;
        powerValue = abyte0[6] & 0xff;
        byte abyte1[] = new byte[6];
        for (int i = 7; i < 12; i++)
        {
            abyte1[i - 7] = abyte0[i];
        }

        macAddress = Helper.bytesToHexString(abyte1);
        time = System.currentTimeMillis();
    }

    public String toString()
    {
        return (new StringBuilder()).append("TemperatureBean [primaryByteArray=").append(Arrays.toString(primaryByteArray)).append(", temperatureValue=").append(temperatureValue).append(", powerValue=").append(powerValue).append(", macAddress=").append(macAddress).append(", time=").append(time).append("]").toString();
    }
}
