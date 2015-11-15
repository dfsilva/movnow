// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Debug;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleSuotaUpdateTask, BleCallBack, SuotaUpdateHelper

class this._cls0 extends Thread
{

    final BleSuotaUpdateTask this$0;

    public void run()
    {
        BleSuotaUpdateTask.mBluetoothLeService = VLBleServiceManager.getInstance().getVLBleService();
        if (BleSuotaUpdateTask.mBluetoothLeService == null)
        {
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
        bleCallBack.sendOnStartMessage(Integer.valueOf(0));
        registerObserver();
        BleSuotaUpdateTask.access$002(BleSuotaUpdateTask.this, new SuotaUpdateHelper(BleSuotaUpdateTask.mBluetoothLeService, BleSuotaUpdateTask.access$100(BleSuotaUpdateTask.this), bleCallBack, BleSuotaUpdateTask.access$200(BleSuotaUpdateTask.this)));
        sendCmdToBleDevice(new byte[] {
            90, 17, 0
        });
        waitResponse(5000);
        if (BleSuotaUpdateTask.access$300(BleSuotaUpdateTask.this))
        {
            Debug.logBle("\u7A0B\u5E8F\u5F00\u59CB\u6267\u884C\u5347\u7EA7");
            BleSuotaUpdateTask.access$000(BleSuotaUpdateTask.this).onServicesReady(true);
            BleSuotaUpdateTask.access$400(BleSuotaUpdateTask.this, 500);
            BleSuotaUpdateTask.access$000(BleSuotaUpdateTask.this).suotaReadImageData(BleSuotaUpdateTask.access$100(BleSuotaUpdateTask.this));
            BleSuotaUpdateTask.access$400(BleSuotaUpdateTask.this, 500);
            BleSuotaUpdateTask.access$000(BleSuotaUpdateTask.this).suotaUpdateStart();
            return;
        } else
        {
            Debug.logBle("\u53D1\u9001\u51C6\u5907\u5347\u7EA7\u547D\u4EE4\u6CA1\u6709\u56DE\u5E94\uFF0C\u5347\u7EA7\u5931\u8D25");
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }
    }

    ()
    {
        this$0 = BleSuotaUpdateTask.this;
        super();
    }
}
