// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.controltask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.util.ByteUtil;
import com.veclink.hw.bleservice.util.NumberToByteArray;

public class TurnOnAllLedTask extends BleTask
{

    public int highLightTime;
    public boolean isTurnOn;
    public int lowLightTime;

    public TurnOnAllLedTask(Context context, BleCallBack blecallback, boolean flag)
    {
        super(context, blecallback);
        highLightTime = 60000;
        lowLightTime = 5000;
        isTurnOn = flag;
    }

    public void doWork()
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 12;
        abyte0[2] = 0;
        abyte0[3] = 1;
        String s = "00000000";
        if (isTurnOn)
        {
            s = "11111111";
        }
        byte byte0 = ByteUtil.decodeBinaryStringToBit(s);
        abyte0[4] = byte0;
        abyte0[5] = byte0;
        abyte0[6] = byte0;
        abyte0[7] = byte0;
        abyte0[8] = (byte)(highLightTime >> 8 & 0xff);
        abyte0[9] = (byte)(highLightTime & 0xff);
        abyte0[10] = (byte)(lowLightTime >> 8 & 0xff);
        abyte0[11] = (byte)(lowLightTime & 0xff);
        abyte0[12] = 0;
        abyte0[13] = 0;
        sendCmdToBleDevice(abyte0);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return abyte0.length < 8 || abyte0[0] != 91 || abyte0[1] != 12 || NumberToByteArray.bytesToInt(new byte[] {
            abyte0[4], abyte0[5], abyte0[6], abyte0[7]
        }) != 1 ? -99 : 0;
    }
}
