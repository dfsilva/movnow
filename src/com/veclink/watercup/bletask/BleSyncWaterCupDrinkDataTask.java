// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bletask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSyncNewDeviceDataTask;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bledevice.WaterCupDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.util.Date;

public class BleSyncWaterCupDrinkDataTask extends BleSyncNewDeviceDataTask
{

    private Date endDate;
    private Date startDate;
    private WaterCupDevice waterCupDevice;

    public BleSyncWaterCupDrinkDataTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
    }

    public BleSyncWaterCupDrinkDataTask(Context context, BleCallBack blecallback, Date date, Date date1)
    {
        super(context, blecallback, date, date1);
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
        startDate = date;
        endDate = date1;
    }

    public void doWork()
    {
        isSyncParams = false;
        mDeviceRespondOk = false;
        byte abyte0[] = waterCupDevice.createSyncCupDrinkDataCmd(startDate, endDate);
        Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u996E\u6C34\u6570\u636E\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
        Debug.logBle("sync wait for device response SyncWaterCupDrinkData cmd");
        waitResponse(2000);
        if (!mDeviceRespondOk)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u996E\u6C34\u6570\u636E\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        } else
        {
            Debug.logBle(" response SyncWaterCupDrinkData  cmd ok");
            if (bleDeviceProfile.totalPackDataNum == 0)
            {
                Debug.logBle(" response SyncWaterCupDrinkData totalPackDataNum is 0 finish task");
                bleCallBack.sendOnFinishMessage(waterCupDevice.drinkDataList);
                return;
            }
            maxDayCount = bleDeviceProfile.totalPackDataNum;
            progress = 0;
            Debug.logBle((new StringBuilder()).append("water all date is ").append(maxDayCount).toString());
            if (!longPackageTrasport(maxDayCount))
            {
                Debug.logBle("\u4F20\u8F93\u6570\u636E\u8FC7\u7A0B\u5931\u8D25\uFF0C\u540C\u6B65\u996E\u6C34\u6570\u636E\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                return;
            }
            if (bleDeviceProfile.mAllDataOk)
            {
                Debug.logBle(" SyncWaterCupDrinkData data over task finish ..");
                bleCallBack.sendOnFinishMessage(waterCupDevice.drinkDataList);
                return;
            }
        }
    }

    protected int parseData(byte abyte0[])
    {
        waterCupDevice.parseDringkWaterData(abyte0);
        sendLongpackDataProgress(abyte0);
        return 0;
    }
}
