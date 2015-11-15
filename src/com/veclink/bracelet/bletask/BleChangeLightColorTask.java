// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.Keeper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleChangeLightColorTask extends BleTask
{

    public static final int BLUECOLOR = 0;
    public static final int GREENCOLOR = 2;
    public static final int ORANGECOLOR = 1;
    public static final int REDCOLOR = 3;
    private int band_light_color;

    public BleChangeLightColorTask(Context context, BleCallBack blecallback, int i)
    {
        super(context, blecallback);
        band_light_color = i;
    }

    public void doWork()
    {
        byte abyte0[] = new byte[5];
        abyte0[0] = 90;
        abyte0[1] = 12;
        abyte0[2] = 0;
        abyte0[3] = 5;
        abyte0[4] = (byte)band_light_color;
        mDeviceRespondOk = false;
        Debug.logBleByTag("BleChangeLightColorTask", Helper.bytesToHexString(abyte0));
        sendCmdToBleDevice(abyte0);
        waitResponse(2000);
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
        if (abyte0.length > 4 && abyte0[0] == 91 && abyte0[1] == 12 && abyte0[2] == 0 && abyte0[3] == 5 && (abyte0[4] & 0xff) == 0)
        {
            Keeper.setBandLightColor(mContext, band_light_color);
            return 0;
        } else
        {
            return -99;
        }
    }
}
