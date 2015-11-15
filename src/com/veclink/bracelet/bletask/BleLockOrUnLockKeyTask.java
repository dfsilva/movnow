// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.NumberToByteArray;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleLockOrUnLockKeyTask extends BleTask
{

    private boolean lockOrUnLock;
    private int lockTime;

    public BleLockOrUnLockKeyTask(Context context, BleCallBack blecallback, boolean flag, int i)
    {
        super(context, blecallback);
        lockOrUnLock = flag;
        lockTime = i;
    }

    public void doWork()
    {
        byte abyte0[] = new byte[20];
        abyte0[0] = 90;
        abyte0[1] = 12;
        abyte0[2] = 0;
        abyte0[3] = 4;
        byte abyte1[];
        if (lockOrUnLock)
        {
            abyte0[4] = 1;
        } else
        {
            abyte0[4] = 0;
        }
        abyte1 = NumberToByteArray.intToBytes(lockTime);
        abyte0[5] = abyte1[2];
        abyte0[6] = abyte1[3];
        mDeviceRespondOk = false;
        Debug.logBle((new StringBuilder()).append("sendLockOrUnlockCmd:").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
        waitResponse(5000);
        if (mDeviceRespondOk)
        {
            bleCallBack.sendOnFinishMessage(null);
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(null);
            return;
        }
    }

    protected int parseData(byte abyte0[])
    {
        return abyte0.length <= 4 || abyte0[0] != 91 || abyte0[1] != 12 || abyte0[2] != 0 || abyte0[3] != 4 || abyte0[4] != 0 && abyte0[4] != 1 ? -99 : 0;
    }
}
