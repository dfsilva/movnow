// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleRequestUnBindDevice extends BleTask
{

    public static final byte CLEAR_ALL_DATA = 2;
    public static final byte CLEAR_ALL_DATA_AND_REBOOT = 3;
    public static final byte REBOOT = 1;
    private byte operateType;

    public BleRequestUnBindDevice(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        operateType = 0;
    }

    public BleRequestUnBindDevice(Context context, BleCallBack blecallback, byte byte0)
    {
        super(context, blecallback);
        operateType = byte0;
    }

    public void doWork()
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 11;
        abyte0[2] = 0;
        abyte0[3] = 3;
        abyte0[12] = operateType;
        Debug.logBleByTag("BleRequestUnBindDevice", Helper.bytesToHexString(abyte0));
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
        return abyte0.length <= 4 || abyte0[0] != 91 || abyte0[1] != 11 || abyte0[2] != 0 || abyte0[3] != 3 || abyte0[4] != 0 ? -99 : 0;
    }
}
