// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.veclink.bracelet.bean.DeviceInfo;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Keeper;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MovnowTwoApplication

static final class  extends Handler
{

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1000 1003: default 36
    //                   1000 36
    //                   1001 102
    //                   1002 36
    //                   1003 37;
           goto _L1 _L1 _L2 _L1 _L3
_L1:
        return;
_L3:
        MovnowTwoApplication.canDoTask = true;
        MovnowTwoApplication.queryVersonCount = 0;
        if (message.obj != null)
        {
            if (((DeviceInfo)message.obj).device_type.equals("0"))
            {
                Keeper.setChangeToOldProtocol(MovnowTwoApplication.application, true);
            }
            Keeper.setUserHasBindBand(MovnowTwoApplication.application, true);
            message = new Intent("action_bind_device_done");
            MovnowTwoApplication.application.sendBroadcast(message);
            return;
        }
          goto _L1
_L2:
        if (MovnowTwoApplication.queryVersonCount < 2)
        {
            MovnowTwoApplication.queryFirewareVersion();
            return;
        } else
        {
            Keeper.setUserHasBindBand(MovnowTwoApplication.application, false);
            VLBleServiceManager.getInstance().unBindService(MovnowTwoApplication.application);
            return;
        }
    }

    ()
    {
    }
}
