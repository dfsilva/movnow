// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.content.Context;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleQuinticOtaUpdateTask, BleTask, BleOldUpdateFirmWareTask, BleSuotaUpdateTask, 
//            BleUpdateFirmWareTask, BleCallBack

public class UpdateFirmwareUtil
{

    public UpdateFirmwareUtil()
    {
    }

    public static void update(Context context, BleCallBack blecallback, String s)
    {
        String s1 = Keeper.getDeviceType(context);
        BaseDeviceProduct basedeviceproduct = DeviceProductFactory.createDeviceProduct(s1);
        if (basedeviceproduct.updateFirewareWay == 2)
        {
            (new BleQuinticOtaUpdateTask(context, blecallback, s)).work();
            return;
        }
        if (s1.equals("0"))
        {
            (new BleOldUpdateFirmWareTask(context, blecallback, s)).work();
            return;
        }
        if (basedeviceproduct.updateFirewareWay == 1)
        {
            (new BleSuotaUpdateTask(context, blecallback, s)).doWork();
            return;
        } else
        {
            (new BleUpdateFirmWareTask(context, blecallback, s)).work();
            return;
        }
    }
}
