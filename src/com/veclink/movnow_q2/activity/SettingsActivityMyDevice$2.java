// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.veclink.movnow_q2.view.SettingsItemView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDevice

class this._cls0 extends Handler
{

    final SettingsActivityMyDevice this$0;

    public void handleMessage(Message message)
    {
        if (message.what != 3 && message.what != 1003) goto _L2; else goto _L1
_L1:
        boolean flag;
        SettingsActivityMyDevice.access$402(SettingsActivityMyDevice.this, ((Integer)message.obj).intValue());
        SettingsActivityMyDevice.access$500(SettingsActivityMyDevice.this).setText((new StringBuilder()).append(String.valueOf(SettingsActivityMyDevice.access$400(SettingsActivityMyDevice.this))).append("%").toString());
        message = getString(0x7f0c0188);
        SettingsActivityMyDevice.access$600(SettingsActivityMyDevice.this).setTextColor(getResources().getColor(0x7f080014));
        flag = true;
        if (SettingsActivityMyDevice.access$400(SettingsActivityMyDevice.this) >= 10 || SettingsActivityMyDevice.access$400(SettingsActivityMyDevice.this) < 5) goto _L4; else goto _L3
_L3:
        message = getString(0x7f0c01b4);
        SettingsActivityMyDevice.access$600(SettingsActivityMyDevice.this).setTextColor(getResources().getColor(0x7f080013));
_L6:
        SettingsActivityMyDevice.access$700(SettingsActivityMyDevice.this).setEnabled(flag);
        SettingsActivityMyDevice.access$800(SettingsActivityMyDevice.this).setEnabled(flag);
        SettingsActivityMyDevice.access$600(SettingsActivityMyDevice.this).setText(message);
_L2:
        return;
_L4:
        if (SettingsActivityMyDevice.access$400(SettingsActivityMyDevice.this) < 5)
        {
            message = getString(0x7f0c01b3);
            flag = false;
            SettingsActivityMyDevice.access$600(SettingsActivityMyDevice.this).setTextColor(getResources().getColor(0x7f080013));
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    ()
    {
        this$0 = SettingsActivityMyDevice.this;
        super();
    }
}
