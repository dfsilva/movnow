// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import com.veclink.bracelet.bean.BluetoothDeviceBean;
import com.veclink.healthy.view.BluetoothConnAnimView;
import com.veclink.movnow_q2.util.DebugUtil;
import java.util.ArrayList;
import java.util.Collections;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BindbandActivity

class this._cls0 extends Handler
{

    final BindbandActivity this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1000 1003: default 36
    //                   1000 36
    //                   1001 263
    //                   1002 37
    //                   1003 105;
           goto _L1 _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        message = (BluetoothDeviceBean)message.obj;
        DebugUtil.println((new StringBuilder()).append("BindbandActivity macaddrss is").append(message.getDevice_address()).append("\n rssi is ").append(message.getDevice_rssi()).toString());
        if (message.getDevice_rssi() >= -60)
        {
            DebugUtil.println("BindbandActivity direct connect");
            BindbandActivity.access$000(BindbandActivity.this, message);
            return;
        }
          goto _L1
_L4:
        BindbandActivity.access$102(BindbandActivity.this, (ArrayList)message.obj);
        Collections.sort(BindbandActivity.access$100(BindbandActivity.this));
        scanTask = null;
        if (BindbandActivity.access$100(BindbandActivity.this).size() == 0)
        {
            connAnimView.setConnectMessage(getString(0x7f0c0117));
            connAnimView.stopWaveAnimation();
            return;
        }
        if (((BluetoothDeviceBean)BindbandActivity.access$100(BindbandActivity.this).get(0)).getDevice_rssi() <= -100)
        {
            scanTask = null;
            connAnimView.setConnectMessage(getString(0x7f0c0117));
            connAnimView.stopWaveAnimation();
            return;
        } else
        {
            BindbandActivity.access$000(BindbandActivity.this, (BluetoothDeviceBean)BindbandActivity.access$100(BindbandActivity.this).get(0));
            return;
        }
_L2:
        scanTask = null;
        connAnimView.setConnectMessage(getString(0x7f0c0117));
        connAnimView.stopWaveAnimation();
        return;
    }

    ()
    {
        this$0 = BindbandActivity.this;
        super();
    }
}
