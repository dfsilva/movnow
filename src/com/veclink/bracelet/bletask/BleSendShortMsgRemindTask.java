// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bledevice.BraceletNewDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleSendShortMsgRemindTask extends BleTask
{

    private BraceletNewDevice braceletNewDevice;
    private int contentLength;
    private byte msgContentByteArray[];
    private byte msgRemindType;
    private byte nameArray[];

    public BleSendShortMsgRemindTask(Context context, BleCallBack blecallback, byte byte0, byte abyte0[])
    {
        super(context, blecallback);
        msgContentByteArray = abyte0;
        msgRemindType = byte0;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
    }

    public BleSendShortMsgRemindTask(Context context, BleCallBack blecallback, byte byte0, byte abyte0[], int i)
    {
        super(context, blecallback);
        msgContentByteArray = abyte0;
        msgRemindType = byte0;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
        contentLength = i;
    }

    public BleSendShortMsgRemindTask(Context context, BleCallBack blecallback, byte byte0, byte abyte0[], int i, byte abyte1[])
    {
        super(context, blecallback);
        msgContentByteArray = abyte0;
        msgRemindType = byte0;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
        contentLength = i;
        nameArray = abyte1;
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        byte abyte0[] = braceletNewDevice.createSendShortRemindCmdArrayOfByte(msgRemindType, msgContentByteArray, contentLength);
        Debug.logBle((new StringBuilder()).append("\u53D1\u9001\u77ED\u6D88\u606F\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
        mDeviceRespondOk = false;
        waitResponse(2000);
        Debug.logBle("sync wait for device response syncparams cmd");
        if (!mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u53D1\u9001\u77ED\u6D88\u606F\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
        } else
        {
            Debug.logBle("\u53D1\u9001\u77ED\u6D88\u606F   \u4EFB\u52A1\u6267\u884C\u6210\u529F");
        }
        if (nameArray != null)
        {
            mDeviceRespondOk = false;
            waitResponse(100);
            byte abyte1[] = braceletNewDevice.createSendNameCmdArray(nameArray);
            Debug.logBle((new StringBuilder()).append("\u53D1\u9001\u8054\u7CFB\u4EBA\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte1)).toString());
            sendCmdToBleDevice(abyte1);
        }
    }

    protected int parseData(byte abyte0[])
    {
        Debug.logBle((new StringBuilder()).append("\u8BBE\u5907\u56DE\u5E94\u53D1\u9001\u77ED\u6D88\u606F\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        if (abyte0.length >= 5)
        {
            if (abyte0[0] == 91 && abyte0[1] == 21 && abyte0[2] == 0)
            {
                byte byte0 = abyte0[4];
                if (byte0 == 0)
                {
                    bleCallBack.sendOnFinishMessage(Byte.valueOf(byte0));
                    return 0;
                } else
                {
                    bleCallBack.sendOnFialedMessage(Byte.valueOf(byte0));
                    return -100;
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
