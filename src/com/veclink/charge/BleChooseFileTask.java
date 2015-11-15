// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.charge;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSyncNewDeviceDataTask;
import com.veclink.hw.bledevice.BraceletNewDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

public class BleChooseFileTask extends BleSyncNewDeviceDataTask
{

    public BleChooseFileTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
        byte abyte0[] = new byte[12];
        byte[] _tmp = abyte0;
        abyte0[0] = 90;
        abyte0[1] = 25;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = 7;
        abyte0[5] = 0;
        abyte0[6] = -92;
        abyte0[7] = 0;
        abyte0[8] = 0;
        abyte0[9] = 2;
        abyte0[10] = 63;
        abyte0[11] = 0;
        sendCmdToBleDevice(abyte0);
        Debug.logBleByTag("BleChooseFileTask", Helper.bytesToHexString(abyte0));
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            longPackageTrasport(1.0F);
            String s = Helper.bytesToNoSpaceHexString(braceletNewDevice.mTmpChargeDataArrayOfByte);
            Debug.logBleByTag("BleChooseFileTask receiveResult", s);
            if (s.endsWith("9000"))
            {
                byte abyte1[] = new byte[12];
                byte[] _tmp1 = abyte1;
                abyte1[0] = 90;
                abyte1[1] = 25;
                abyte1[2] = 0;
                abyte1[3] = 0;
                abyte1[4] = 7;
                abyte1[5] = 0;
                abyte1[6] = -92;
                abyte1[7] = 0;
                abyte1[8] = 0;
                abyte1[9] = 2;
                abyte1[10] = 63;
                abyte1[11] = 1;
                sendCmdToBleDevice(abyte1);
                Debug.logBleByTag("BleChooseFileTask", Helper.bytesToHexString(abyte1));
                waitResponse(5000);
                if (mDeviceRespondOk)
                {
                    longPackageTrasport(1.0F);
                    String s1 = Helper.bytesToNoSpaceHexString(braceletNewDevice.mTmpChargeDataArrayOfByte);
                    Debug.logBleByTag("BleChooseFileTask receiveResult2", s1);
                    if (s1.endsWith("9000"))
                    {
                        bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
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
        braceletNewDevice.parseChargeData(abyte0);
        return 0;
    }
}
