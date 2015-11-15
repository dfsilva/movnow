// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bletask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bledevice.WaterCupDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.watercup.bean.WaterCupState;

public class BleQueryCupStateTask extends BleTask
{

    private boolean isStopTask;
    private WaterCupDevice waterCupDevice;

    public BleQueryCupStateTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        waterCupDevice = (WaterCupDevice)bleDeviceProfile;
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        bleCallBack.sendOnStartMessage(Integer.valueOf(0));
        byte abyte0[] = waterCupDevice.createQueryCupStateCmd();
        Debug.logBle((new StringBuilder()).append("\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
        mDeviceRespondOk = false;
        Debug.logBle("sync wait for device response ble query cup state cmd");
        waitResponse(5000);
        if (!mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u4EFB\u52A1\u5931\u8D25");
            Debug.logBle((new StringBuilder()).append("\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
            sendCmdToBleDevice(abyte0);
            mDeviceRespondOk = false;
            Debug.logBle("sync wait for device response ble query cup state cmd");
            waitResponse(5000);
            if (!mDeviceRespondOk)
            {
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
                Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u4EFB\u52A1\u5931\u8D25");
                return;
            } else
            {
                Debug.logBle("\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u4EFB\u52A1\u6210\u529F\u6267\u884C");
                return;
            }
        } else
        {
            Debug.logBle("\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u4EFB\u52A1\u6210\u529F\u6267\u884C");
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        Debug.logBle((new StringBuilder()).append("BleQueryCupStateTask response\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        if (abyte0[1] == 8 && abyte0.length >= 16)
        {
            WaterCupState watercupstate = new WaterCupState();
            watercupstate.parseByteArray(abyte0);
            Debug.logBle((new StringBuilder()).append("\u67E5\u8BE2\u6C34\u676F\u72B6\u6001\u7ED3\u679C\uFF1A").append(watercupstate.toString()).toString());
            bleCallBack.sendOnFinishMessage(watercupstate);
            return 0;
        } else
        {
            return -99;
        }
    }

    public void stopTask()
    {
        isStopTask = true;
    }
}
