// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.charge;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;

public class BleNFCEnableTask extends BleTask
{

    private static boolean isEnalbe;
    private boolean enable;

    public BleNFCEnableTask(Context context, BleCallBack blecallback, boolean flag)
    {
        super(context, blecallback);
        enable = flag;
    }

    public static boolean isNFCEnable()
    {
        return isEnalbe;
    }

    public void doWork()
    {
        byte abyte0[];
        if (enable)
        {
            abyte0 = new byte[4];
            byte[] _tmp = abyte0;
            abyte0[0] = 90;
            abyte0[1] = 24;
            abyte0[2] = 0;
            abyte0[3] = 32;
        } else
        {
            abyte0 = new byte[4];
            byte[] _tmp1 = abyte0;
            abyte0[0] = 90;
            abyte0[1] = 24;
            abyte0[2] = 0;
            abyte0[3] = 33;
        }
        sendCmdToBleDevice(abyte0);
        waitResponse(2000);
        if (mDeviceRespondOk)
        {
            isEnalbe = true;
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        } else
        {
            isEnalbe = false;
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-1));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return 0;
    }
}
