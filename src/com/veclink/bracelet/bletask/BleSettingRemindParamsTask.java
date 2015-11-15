// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.bracelet.bean.BaseRemindParam;
import com.veclink.hw.bledevice.BraceletNewDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleSettingRemindParamsTask extends BleTask
{

    private BaseRemindParam baseRemindParam;
    private BraceletNewDevice braceletNewDevice;

    public BleSettingRemindParamsTask(Context context, BleCallBack blecallback, BaseRemindParam baseremindparam)
    {
        super(context, blecallback);
        baseRemindParam = baseremindparam;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        int i = 0;
        byte abyte0[] = braceletNewDevice.createSetRemindCmdArrayOfByte(baseRemindParam);
        for (; i < 3 && !mDeviceRespondOk; i++)
        {
            Debug.logBle((new StringBuilder()).append("\u8BBE\u7F6E\u63D0\u9192\u53C2\u6570\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
            sendCmdToBleDevice(abyte0);
            mDeviceRespondOk = false;
            waitResponse(2000);
            Debug.logBle("sync wait for device response setRmindParmas cmd");
        }

        if (i >= 3 && !mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u8BBE\u7F6E\u63D0\u9192\u53C2\u6570\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
            return;
        } else
        {
            Debug.logBle("\u8BBE\u7F6E\u63D0\u9192\u53C2\u6570\u4EFB\u52A1\u6267\u884C\u6210\u529F");
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        if (abyte0.length >= 5)
        {
            if (abyte0[0] == 91 && abyte0[1] == 20 && abyte0[2] == 0)
            {
                byte byte0 = abyte0[4];
                if (byte0 == 1)
                {
                    bleCallBack.sendOnFinishMessage(Byte.valueOf(byte0));
                    return 0;
                } else
                {
                    bleCallBack.sendOnFialedMessage(Byte.valueOf(byte0));
                    return 0;
                }
            } else
            {
                bleCallBack.sendOnFialedMessage(Helper.bytesToHexString(abyte0));
                return 0;
            }
        } else
        {
            bleCallBack.sendOnFialedMessage(Helper.bytesToHexString(abyte0));
            return 0;
        }
    }
}
