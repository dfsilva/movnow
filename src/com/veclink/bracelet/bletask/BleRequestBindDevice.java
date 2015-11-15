// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleRequestBindDevice extends BleTask
{

    public BleRequestBindDevice(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 11;
        abyte0[2] = 0;
        abyte0[3] = 1;
        Debug.logBleByTag("BleRequestBindDevice", Helper.bytesToHexString(abyte0));
        mDeviceRespondOk = false;
        sendCmdToBleDevice(abyte0);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(null);
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(null);
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return abyte0.length <= 5 || abyte0[0] != 91 || abyte0[1] != 11 || abyte0[2] != 0 || abyte0[3] != 1 || abyte0[4] != 0 || abyte0[5] != 30 ? -99 : 0;
    }
}
