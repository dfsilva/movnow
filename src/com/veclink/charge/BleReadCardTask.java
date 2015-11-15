// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.charge;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSyncNewDeviceDataTask;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

public class BleReadCardTask extends BleSyncNewDeviceDataTask
{

    private String appSerial;
    private String cityCode;

    public BleReadCardTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
        byte abyte0[] = new byte[10];
        byte[] _tmp = abyte0;
        abyte0[0] = 90;
        abyte0[1] = 25;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = 5;
        abyte0[5] = 0;
        abyte0[6] = -80;
        abyte0[7] = -107;
        abyte0[8] = 12;
        abyte0[9] = 8;
        sendCmdToBleDevice(abyte0);
        Debug.logBleByTag("BleReadCardTask", Helper.bytesToHexString(abyte0));
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            longPackageTrasport(1.0F);
            if (appSerial.endsWith("9000"))
            {
                byte abyte1[] = new byte[10];
                byte[] _tmp1 = abyte1;
                abyte1[0] = 90;
                abyte1[1] = 25;
                abyte1[2] = 0;
                abyte1[3] = 0;
                abyte1[4] = 5;
                abyte1[5] = 0;
                abyte1[6] = -80;
                abyte1[7] = -107;
                abyte1[8] = 2;
                abyte1[9] = 2;
                sendCmdToBleDevice(abyte1);
                Debug.logBleByTag("BleReadCardTask", Helper.bytesToHexString(abyte1));
                waitResponse(5000);
                if (mDeviceRespondOk)
                {
                    longPackageTrasport(1.0F);
                    if (cityCode.endsWith("9000"))
                    {
                        bleCallBack.sendOnFinishMessage((new StringBuilder()).append(cityCode.substring(0, cityCode.length() - 4)).append(appSerial.substring(0, appSerial.length() - 4)).toString());
                        return;
                    } else
                    {
                        bleCallBack.sendOnFialedMessage(Integer.valueOf(-1));
                        return;
                    }
                } else
                {
                    bleCallBack.sendOnFialedMessage(Integer.valueOf(-1));
                    return;
                }
            } else
            {
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-1));
                return;
            }
        } else
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-1));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        if (appSerial == null)
        {
            appSerial = Helper.bytesToNoSpaceHexString(abyte0);
        } else
        {
            cityCode = Helper.bytesToNoSpaceHexString(abyte0);
        }
        return 0;
    }
}
