// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bleservice.util.Debug;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleQueryFirmareVersionTask extends BleTask
{

    public BleQueryFirmareVersionTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        sendCmdToBleDevice(bleDeviceProfile.createCmdArrayOfByte(new Object[] {
            Byte.valueOf((byte)16), null
        }));
        mDeviceRespondOk = false;
        Debug.logBle("sync wait for device response ble query verison cmd");
        waitResponse(5000);
        if (!mDeviceRespondOk)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u67E5\u8BE2\u56FA\u4EF6\u7248\u672C\u4EFB\u52A1\u5931\u8D25");
            return;
        } else
        {
            Debug.logBle("\u67E5\u8BE2\u56FA\u4EF6\u7248\u672C\u4EFB\u52A1\u6210\u529F\u6267\u884C");
            bleCallBack.sendOnFinishMessage(bleDeviceProfile.deviceInfo);
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return bleDeviceProfile.pareseQueryFirmwareVersionResponse(abyte0);
    }
}
