// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.bracelet.bean.DeviceSportAndSleepData;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bleservice.util.DateTimeUtil;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.util.Date;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleSyncOldDeviceDataTask extends BleTask
{

    private byte parmasArray[];
    private int progress;

    public BleSyncOldDeviceDataTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public BleSyncOldDeviceDataTask(Context context, BleCallBack blecallback, Date date, Date date1)
    {
        super(context, blecallback);
        context = DateTimeUtil.getYearMonthDayArrayByDate(date);
        blecallback = DateTimeUtil.getYearMonthDayArrayByDate(date1);
        int i = context[0];
        int j = context[1];
        int k = context[2];
        int l = blecallback[0];
        int i1 = blecallback[1];
        int j1 = blecallback[2];
        Debug.logBle((new StringBuilder()).append("\u5F00\u59CB\u65F6\u95F4\uFF1A").append(i).append("\u5E74").append(j).append("\u6708").append(k).append("\u65E5").toString());
        Debug.logBle((new StringBuilder()).append("\u7ED3\u675F\u65F6\u95F4\uFF1A").append(l).append("\u5E74").append(i1).append("\u6708").append(j1).append("\u65E5").toString());
        parmasArray = new byte[6];
        parmasArray[0] = (byte)(i - 2000 & 0xff);
        parmasArray[1] = (byte)j;
        parmasArray[2] = (byte)k;
        parmasArray[3] = (byte)(l - 2000 & 0xff);
        parmasArray[4] = (byte)i1;
        parmasArray[5] = (byte)j1;
    }

    public void doWork()
    {
        int i;
        mDeviceRespondOk = false;
        i = 0;
        while (i < 3 && !mDeviceRespondOk && !isStopTask) 
        {
            if (parmasArray != null)
            {
                Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u6307\u5B9A\u65F6\u95F4\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                    Byte.valueOf((byte)3), parmasArray
                }))).toString());
                sendCmdToBleDevice(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                    Byte.valueOf((byte)3), parmasArray
                }));
            } else
            {
                Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u5168\u90E8\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                    Byte.valueOf((byte)4)
                }))).toString());
                sendCmdToBleDevice(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                    Byte.valueOf((byte)4)
                }));
            }
            waitResponse(2000);
            Debug.logBle("sync wait for device response sync data cmd");
            i++;
        }
        if (i < 3 || mDeviceRespondOk) goto _L2; else goto _L1
_L1:
        bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
        Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
_L7:
        return;
_L2:
        System.currentTimeMillis();
_L9:
        if (bleDeviceProfile.mAllDataOk || isStopTask) goto _L4; else goto _L3
_L3:
        mDeviceRespondOk = false;
        DeviceSportAndSleepData devicesportandsleepdata;
        if (parmasArray != null)
        {
            sendCmdToBleDevice(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                Byte.valueOf((byte)91), Byte.valueOf((byte)3)
            }));
        } else
        {
            sendCmdToBleDevice(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                Byte.valueOf((byte)91), Byte.valueOf((byte)4)
            }));
        }
        waitResponse(2000);
        if (mDeviceRespondOk) goto _L6; else goto _L5
_L5:
        Debug.logBle("sync old device data fial because device no response ");
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
_L4:
        if (bleDeviceProfile.mAllDataOk)
        {
            Debug.logBle("sync data over task finish ..");
            devicesportandsleepdata = new DeviceSportAndSleepData();
            devicesportandsleepdata.syncSportDataResult = bleDeviceProfile.syncSportDataResult;
            devicesportandsleepdata.syncSleepDataResult = bleDeviceProfile.syncSleepDataResult;
            mDeviceRespondOk = false;
            bleCallBack.sendOnFinishMessage(devicesportandsleepdata);
            return;
        }
          goto _L7
_L6:
        progress = progress + 1;
        if (progress > 100)
        {
            progress = 1;
        }
        bleCallBack.sendOnProgressMessage(Integer.valueOf(progress));
        if (!bleDeviceProfile.mAllDataOk) goto _L9; else goto _L8
_L8:
        Debug.logBle("sync over break..");
        bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
        mDeviceRespondOk = false;
        int j = 0;
        while (j < 3) 
        {
            waitResponse(400);
            bleCallBack.sendOnProgressMessage(Integer.valueOf(0));
            waitResponse(400);
            bleCallBack.sendOnProgressMessage(Integer.valueOf(100));
            waitResponse(400);
            j++;
        }
          goto _L4
    }

    protected int parseData(byte abyte0[])
    {
        bleDeviceProfile.parseSportData(abyte0);
        return 0;
    }

    public void stopSyncTask()
    {
        super.stopSyncTask();
        bleCallBack.sendOnFinishMessage(null);
    }
}
