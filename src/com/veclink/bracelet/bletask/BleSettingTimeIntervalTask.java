// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleSettingTimeIntervalTask extends BleTask
{

    private int timeInterval;

    public BleSettingTimeIntervalTask(Context context, BleCallBack blecallback, int i)
    {
        super(context, blecallback);
        timeInterval = i;
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        int i;
        for (i = 0; i < 3 && !mDeviceRespondOk; i++)
        {
            mDeviceRespondOk = false;
            byte abyte0[] = bleDeviceProfile.createCmdArrayOfByte(new Object[] {
                Byte.valueOf((byte)2), Integer.valueOf(timeInterval)
            });
            Debug.logBle((new StringBuilder()).append("set SettingTimeInterval cmd is ").append(Helper.bytesToHexString(abyte0)).toString());
            sendCmdToBleDevice(abyte0);
            Debug.logBle("sync wait for device response SettingTimeInterval cmd");
            waitResponse(2000);
        }

        if (i >= 3 && !mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u8BBE\u7F6E\u65F6\u95F4\u95F4\u9694\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            return;
        } else
        {
            Debug.logBle("\u8BBE\u7F6E\u65F6\u95F4\u95F4\u9694\u4EFB\u52A1\u6267\u884C");
            bleCallBack.sendOnFinishMessage(Integer.valueOf(0));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return bleDeviceProfile.parseSetTimeIntervalRespone(abyte0);
    }
}
