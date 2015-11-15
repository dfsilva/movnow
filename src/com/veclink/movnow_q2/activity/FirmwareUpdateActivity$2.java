// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.veclink.bracelet.bletask.UpdateFirmwareUtil;
import com.veclink.healthy.view.BluetoothConnAnimView;
import java.io.PrintStream;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            FirmwareUpdateActivity

class this._cls0 extends Handler
{

    final FirmwareUpdateActivity this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR lookupswitch 6: default 64
    //                   34: 256
    //                   35217: 65
    //                   35218: 146
    //                   35219: 187
    //                   35220: 228
    //                   35221: 248;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return;
_L3:
        filepath = (String)message.obj;
        FirmwareUpdateActivity.access$000(FirmwareUpdateActivity.this).setVisibility(0);
        System.out.println((new StringBuilder()).append("GETNEWROMOVER do update task\uFF1A").append(filepath).toString());
        UpdateFirmwareUtil.update(FirmwareUpdateActivity.access$100(FirmwareUpdateActivity.this), updateCallBack, filepath);
        return;
_L4:
        mConnAnimView.setClickable(true);
        mConnAnimView.setConnectMessage(getString(0x7f0c011c));
        mConnAnimView.stopWaveAnimation();
        return;
_L5:
        mConnAnimView.setConnectMessage(getString(0x7f0c011d));
        mConnAnimView.setClickable(true);
        mConnAnimView.stopWaveAnimation();
        return;
_L6:
        mConnAnimView.setConnectMessage(getString(0x7f0c0131));
        return;
_L7:
        FirmwareUpdateActivity.access$200(FirmwareUpdateActivity.this);
        return;
_L2:
        if (!updateOver && progress < 100)
        {
            mConnAnimView.setConnectMessage(getString(0x7f0c011c));
            mConnAnimView.setClickable(true);
            mConnAnimView.stopWaveAnimation();
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    ()
    {
        this$0 = FirmwareUpdateActivity.this;
        super();
    }
}
