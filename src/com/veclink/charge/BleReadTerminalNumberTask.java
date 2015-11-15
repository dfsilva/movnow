// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.charge;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.util.Helper;

public class BleReadTerminalNumberTask extends BleTask
{

    private String terminalNo;

    public BleReadTerminalNumberTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
        sendCmdToBleDevice(new byte[] {
            90, 25, 0, 0, 5, 0, -80, -125, 0, 6
        });
        waitResponse(2000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(terminalNo);
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-1));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        abyte0 = Helper.bytesToNoSpaceHexString(abyte0);
        if (!abyte0.endsWith("9000"))
        {
            return -99;
        } else
        {
            terminalNo = abyte0.substring(0, abyte0.length() - 4);
            return 0;
        }
    }
}
