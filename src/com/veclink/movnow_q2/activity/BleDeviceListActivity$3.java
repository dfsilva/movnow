// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.bracelet.bletask.BleScanDeviceTask;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BleDeviceListActivity, BleDeviceListAdapter

class this._cls0
    implements android.view.iceListActivity._cls3
{

    final BleDeviceListActivity this$0;

    public void onClick(View view)
    {
        if (scanTask == null)
        {
            BleDeviceListActivity.access$000(BleDeviceListActivity.this).clearAllDeviceItem();
            scanTask = new BleScanDeviceTask(BleDeviceListActivity.this, scanDeviceCallBack);
            scanTask.execute(new Object[] {
                Integer.valueOf(0)
            });
            startAnimation();
            return;
        } else
        {
            scanTask.stopScanTask();
            scanTask = null;
            stopAnimation();
            return;
        }
    }

    ()
    {
        this$0 = BleDeviceListActivity.this;
        super();
    }
}
