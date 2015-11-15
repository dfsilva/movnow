// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Debug;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleReBootOrResetParamsDeviceRask extends BleTask
{

    private byte callBackCmd;
    private byte cmd_action_result;
    private byte contentCmd;

    public BleReBootOrResetParamsDeviceRask(Context context, BleCallBack blecallback, byte byte0)
    {
        super(context, blecallback);
        contentCmd = byte0;
        callBackCmd = 1;
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        sendCmdToBleDevice(new byte[] {
            90, 15, 0, contentCmd, callBackCmd
        });
        mDeviceRespondOk = false;
        Debug.logBle("sync wait for device response ble reboot cmd");
        waitResponse(5000);
        if (!mDeviceRespondOk)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-101));
            Debug.logBle("reboot action fail");
            return;
        } else
        {
            Debug.logBle("reboot action success");
            bleCallBack.sendOnFinishMessage(Byte.valueOf(cmd_action_result));
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        if (abyte0.length >= 4 && abyte0[0] == 91 && abyte0[1] == 15 && abyte0[2] == 0)
        {
            cmd_action_result = abyte0[3];
            return 0;
        } else
        {
            return -1000;
        }
    }
}
