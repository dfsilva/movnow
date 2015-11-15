// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDevice

class this._cls0 extends BroadcastReceiver
{

    final SettingsActivityMyDevice this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("ACTION_POWER_CHANGE_DATA"))
        {
            int i = intent.getIntExtra("EXTRA_DATA", 0);
            context = new Message();
            context.what = 3;
            context.obj = Integer.valueOf(i);
            queryPowerHandler.sendMessage(context);
        }
    }

    ()
    {
        this$0 = SettingsActivityMyDevice.this;
        super();
    }
}
