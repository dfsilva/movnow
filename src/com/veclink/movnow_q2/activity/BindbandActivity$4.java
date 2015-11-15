// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BindbandActivity

class this._cls0 extends BroadcastReceiver
{

    final BindbandActivity this$0;

    public void onReceive(Context context, Intent intent)
    {
        context = intent.getAction();
        if (context.equals("action_sync_params_done"))
        {
            connectHandler.sendEmptyMessage(35);
        } else
        {
            if (context.equals("ACTION_USER_HAD_CLICK_DEVICE"))
            {
                connectHandler.sendEmptyMessage(37);
                return;
            }
            if (context.equals("ACTION_GATT_DISCONNECTED"))
            {
                connectHandler.sendEmptyMessage(34);
                return;
            }
            if (context.equals("ACTION_GATT_SERVICES_DISCOVERED"))
            {
                connectHandler.sendEmptyMessage(33);
                return;
            }
            if (context.equals("action_bind_device_done"))
            {
                connectHandler.sendEmptyMessage(38);
                return;
            }
        }
    }

    ()
    {
        this$0 = BindbandActivity.this;
        super();
    }
}
