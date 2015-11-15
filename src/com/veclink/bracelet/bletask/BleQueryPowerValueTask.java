// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleQueryPowerValueTask extends BleTask
{

    private int powerValue;

    public BleQueryPowerValueTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
        byte abyte0[] = new byte[4];
        abyte0[0] = 90;
        abyte0[1] = 13;
        abyte0[2] = 0;
        abyte0[3] = -128;
        Debug.logBleByTag("BleQueryPowerValueTask", Helper.bytesToHexString(abyte0));
        mDeviceRespondOk = false;
        sendCmdToBleDevice(abyte0);
        waitResponse(2000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(powerValue));
            return;
        }
        sendCmdToBleDevice(abyte0);
        waitResponse(2000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(Integer.valueOf(powerValue));
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        if (abyte0.length > 4 && abyte0[0] == 91 && abyte0[1] == 13 && abyte0[2] == 0 && abyte0[3] == -128)
        {
            powerValue = abyte0[4] & 0xff;
            return 0;
        } else
        {
            return -99;
        }
    }
}
