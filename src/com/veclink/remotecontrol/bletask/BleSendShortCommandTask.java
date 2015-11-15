// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.remotecontrol.bletask;

import android.content.Context;
import android.util.Log;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.util.Helper;

public class BleSendShortCommandTask extends BleTask
{

    private final byte headone = 48;
    private final byte headtwo = 0;
    private byte keyCommandArray[];
    private byte modelCommandArray[];

    public BleSendShortCommandTask(Context context, BleCallBack blecallback, byte abyte0[], byte abyte1[])
    {
        super(context, blecallback);
        modelCommandArray = abyte0;
        keyCommandArray = abyte1;
    }

    public void doWork()
    {
        byte abyte0[] = new byte[10];
        abyte0[0] = 48;
        abyte0[1] = 0;
        abyte0[2] = modelCommandArray[0];
        abyte0[3] = keyCommandArray[0];
        abyte0[4] = keyCommandArray[1];
        abyte0[5] = modelCommandArray[modelCommandArray.length - 4];
        abyte0[6] = modelCommandArray[modelCommandArray.length - 3];
        abyte0[7] = modelCommandArray[modelCommandArray.length - 2];
        abyte0[8] = modelCommandArray[modelCommandArray.length - 1];
        byte byte0 = 0;
        for (int i = 0; i < abyte0.length; i++)
        {
            byte0 = (byte)(abyte0[i] + byte0);
        }

        abyte0[9] = (byte)(byte0 & 0xff);
        sendCmdToBleDevice(abyte0);
        Log.i("SendCommandTask", Helper.bytesToHexString(abyte0));
    }
}
