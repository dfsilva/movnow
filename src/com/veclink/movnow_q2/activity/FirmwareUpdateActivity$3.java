// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            FirmwareUpdateActivity

class this._cls0 extends BroadcastReceiver
{

    final FirmwareUpdateActivity this$0;

    public void onReceive(Context context, Intent intent)
    {
        context = intent.getAction();
        if (context.equals("action_sync_params_done"))
        {
            mHandler.sendEmptyMessage(35221);
        } else
        {
            if (context.equals("ACTION_GATT_DISCONNECTED"))
            {
                mHandler.sendEmptyMessage(34);
                return;
            }
            if (context.equals("ACTION_GATT_CONNECTED"))
            {
                mHandler.sendEmptyMessage(33);
                return;
            }
        }
    }

    ()
    {
        this$0 = FirmwareUpdateActivity.this;
        super();
    }
}
