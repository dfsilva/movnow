// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.veclink.bracelet.bean.DeviceInfo;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MovnowTwoApplication

static final class  extends Handler
{

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1000 1003: default 36
    //                   1000 37
    //                   1001 183
    //                   1002 36
    //                   1003 46;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        return;
_L2:
        Log.d("MovnowTwoApplication", "syncParamHandler:\u6B63\u5728\u540C\u6B65\u53C2\u6570");
        return;
_L4:
        message = (DeviceInfo)message.obj;
        Log.d("MovnowTwoApplication", (new StringBuilder()).append("\u540C\u6B65\u53C2\u6570\u5B8C\u6210").append(message.toString()).toString());
        VLBleServiceManager.getInstance();
        VLBleServiceManager.unRegisterObserver(MovnowTwoApplication.access$000());
        MovnowTwoApplication.deviceProduct = DeviceProductFactory.createDeviceProduct(((DeviceInfo) (message)).device_type);
        if (MovnowTwoApplication.deviceProduct.canShowKeptView == 0)
        {
            VLBleServiceManager.setAutoReConnect(true);
        } else
        {
            VLBleServiceManager.setAutoReConnect(false);
        }
        message = new Intent("action_sync_params_done");
        MovnowTwoApplication.application.sendBroadcast(message);
        MovnowTwoApplication.canDoTask = true;
        MovnowTwoApplication.access$002(null);
        if (MovnowTwoApplication.deviceProduct.bindDeviceWay != 1)
        {
            Keeper.setUserHasBindBand(MovnowTwoApplication.application, true);
            message = new Intent("action_bind_device_done");
            MovnowTwoApplication.application.sendBroadcast(message);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        VLBleServiceManager.getInstance();
        VLBleServiceManager.unRegisterObserver(MovnowTwoApplication.access$000());
        MovnowTwoApplication.access$002(null);
        if (MovnowTwoApplication.syncParmasCount < 2)
        {
            MovnowTwoApplication.syncParams();
            return;
        }
        if (Keeper.getDeviceType(MovnowTwoApplication.mContext).equals(""))
        {
            MovnowTwoApplication.queryFirewareVersion();
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    ()
    {
    }
}
