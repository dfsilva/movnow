// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDevice

class this._cls0 extends Handler
{

    final SettingsActivityMyDevice this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1003: 
            SettingsActivityMyDevice.access$100(SettingsActivityMyDevice.this).setText(SettingsActivityMyDevice.access$000(SettingsActivityMyDevice.this));
            break;
        }
        SettingsActivityMyDevice.access$300(SettingsActivityMyDevice.this).setBackgroundResource(SettingsActivityMyDevice.access$200(SettingsActivityMyDevice.this));
    }

    ()
    {
        this$0 = SettingsActivityMyDevice.this;
        super();
    }
}
