// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.NumberToByteArray;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleKeptNonTask extends BleTask
{

    private int defaultRemindTimeLong;
    private boolean isOpen;

    public BleKeptNonTask(Context context, BleCallBack blecallback, boolean flag)
    {
        super(context, blecallback);
        defaultRemindTimeLong = 5000;
        isOpen = flag;
    }

    public void doWork()
    {
        byte abyte0[] = new byte[20];
        if (isOpen)
        {
            byte abyte1[] = NumberToByteArray.intToBytes(defaultRemindTimeLong);
            abyte0 = new byte[7];
            abyte0[0] = 90;
            abyte0[1] = 12;
            abyte0[2] = 0;
            abyte0[3] = 3;
            abyte0[4] = 1;
            abyte0[5] = abyte1[2];
            abyte0[6] = abyte1[3];
        } else
        {
            abyte0 = new byte[5];
            byte[] _tmp = abyte0;
            abyte0[0] = 90;
            abyte0[1] = 12;
            abyte0[2] = 0;
            abyte0[3] = 3;
            abyte0[4] = 0;
        }
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
        while (abyte0.length > 4 && abyte0[0] == 91 && abyte0[1] == 12 && abyte0[2] == 0 && abyte0[3] == 3 && (abyte0[4] == 0 && !isOpen || abyte0[4] == 1 && isOpen)) 
        {
            return 0;
        }
        return -99;
    }
}
