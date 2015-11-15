// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import android.text.format.Time;
import com.veclink.bracelet.bean.BleUserInfoBean;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bleservice.util.ByteUtil;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import java.sql.Date;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleSyncParamsTask extends BleTask
{

    Date date;
    byte syncparamsArray[];

    public BleSyncParamsTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
        context = new Time();
        context.setToNow();
        int i = ((Time) (context)).year;
        int j = ((Time) (context)).month;
        int k = ((Time) (context)).monthDay;
        int l = ((Time) (context)).hour;
        int i1 = ((Time) (context)).minute;
        int j1 = ((Time) (context)).second;
        syncparamsArray = new byte[20];
        syncparamsArray[0] = 90;
        syncparamsArray[1] = 1;
        syncparamsArray[2] = 0;
        syncparamsArray[3] = (byte)(i - 2000 & 0xff);
        syncparamsArray[4] = (byte)(j + 1);
        syncparamsArray[5] = (byte)k;
        syncparamsArray[6] = (byte)l;
        syncparamsArray[7] = (byte)i1;
        syncparamsArray[8] = (byte)j1;
    }

    public BleSyncParamsTask(Context context, BleCallBack blecallback, int i, int j, int k)
    {
        super(context, blecallback);
        context = new Time();
        context.setToNow();
        int l = ((Time) (context)).year;
        int i1 = ((Time) (context)).month;
        int j1 = ((Time) (context)).monthDay;
        int k1 = ((Time) (context)).hour;
        int l1 = ((Time) (context)).minute;
        int i2 = ((Time) (context)).second;
        syncparamsArray = new byte[20];
        syncparamsArray[0] = 90;
        syncparamsArray[1] = 1;
        syncparamsArray[2] = 0;
        syncparamsArray[3] = (byte)(l - 2000 & 0xff);
        syncparamsArray[4] = (byte)(i1 + 1);
        syncparamsArray[5] = (byte)j1;
        syncparamsArray[6] = (byte)k1;
        syncparamsArray[7] = (byte)l1;
        syncparamsArray[8] = (byte)i2;
        i /= 100;
        syncparamsArray[9] = (byte)(i >> 8 & 0xff);
        syncparamsArray[10] = (byte)(i & 0xff);
        syncparamsArray[11] = (byte)j;
        syncparamsArray[12] = (byte)k;
    }

    public BleSyncParamsTask(Context context, BleCallBack blecallback, BleUserInfoBean bleuserinfobean)
    {
        super(context, blecallback);
        context = new Time();
        context.setToNow();
        int i = ((Time) (context)).year;
        int j = ((Time) (context)).month;
        int k = ((Time) (context)).monthDay;
        int l = ((Time) (context)).hour;
        int i1 = ((Time) (context)).minute;
        int j1 = ((Time) (context)).second;
        syncparamsArray = new byte[20];
        syncparamsArray[0] = 90;
        syncparamsArray[1] = 1;
        syncparamsArray[2] = 0;
        syncparamsArray[3] = (byte)(i - 2000 & 0xff);
        syncparamsArray[4] = (byte)(j + 1);
        syncparamsArray[5] = (byte)k;
        syncparamsArray[6] = (byte)l;
        syncparamsArray[7] = (byte)i1;
        syncparamsArray[8] = (byte)j1;
        bleuserinfobean.targetStepNumber = bleuserinfobean.targetStepNumber / 100;
        syncparamsArray[9] = (byte)(bleuserinfobean.targetStepNumber >> 8 & 0xff);
        syncparamsArray[10] = (byte)(bleuserinfobean.targetStepNumber & 0xff);
        syncparamsArray[11] = (byte)bleuserinfobean.wearPosition;
        syncparamsArray[12] = (byte)bleuserinfobean.motionMode;
        byte byte0 = ByteUtil.decodeBinaryStringToBit((new StringBuilder()).append(bleuserinfobean.sex).append(ByteUtil.ageChangeToBinaryString(bleuserinfobean.age)).toString());
        syncparamsArray[14] = 0;
        syncparamsArray[15] = 2;
        syncparamsArray[16] = byte0;
        syncparamsArray[17] = (byte)(int)bleuserinfobean.weight;
        syncparamsArray[18] = (byte)(int)bleuserinfobean.height;
        byte0 = ByteUtil.decodeBinaryStringToBit((new StringBuilder()).append("1").append(bleuserinfobean.distanceUnit).append(bleuserinfobean.keptOnOff).append(bleuserinfobean.keptOnOff).append("0000").toString());
        syncparamsArray[19] = byte0;
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("\u540C\u6B65\u53C2\u6570\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(syncparamsArray)).toString());
        sendCmdToBleDevice(syncparamsArray);
        waitResponse(2000);
        Debug.logBle("sync wait for device response syncparams cmd");
        if (!mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u540C\u6B65\u53C2\u6570\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            return;
        } else
        {
            Debug.logBle("\u540C\u6B65\u53C2\u6570\u4EFB\u52A1\u6267\u884C\u6210\u529F");
            bleCallBack.sendOnFinishMessage(bleDeviceProfile.deviceInfo);
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return bleDeviceProfile.parseSyncParamsResponse(abyte0);
    }
}
