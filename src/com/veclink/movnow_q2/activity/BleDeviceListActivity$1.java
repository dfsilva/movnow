// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import com.veclink.bracelet.bean.BluetoothDeviceBean;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BleDeviceListActivity, BleDeviceListAdapter

class this._cls0 extends Handler
{

    final BleDeviceListActivity this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 1000: 
        default:
            return;

        case 1002: 
            message = (BluetoothDeviceBean)message.obj;
            BleDeviceListActivity.access$000(BleDeviceListActivity.this).addDeviceItem(message);
            return;

        case 1003: 
            scanTask = null;
            stopAnimation();
            return;

        case 1001: 
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
