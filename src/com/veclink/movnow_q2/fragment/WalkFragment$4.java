// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WalkFragment

class this._cls0 extends BroadcastReceiver
{

    final WalkFragment this$0;

    public void onReceive(Context context, Intent intent)
    {
        context = intent.getAction();
        if (context.equals("ACTION_SHORT_SPORT_DATA"))
        {
            int i = intent.getIntExtra("EXTRA_DATA", 0);
            context = new Message();
            context.what = 2;
            context.obj = Integer.valueOf(i);
            WalkFragment.access$1300(WalkFragment.this).sendMessage(context);
        } else
        {
            if (context.equals("ACTION_POWER_CHANGE_DATA"))
            {
                int j = intent.getIntExtra("EXTRA_DATA", 0);
                context = new Message();
                context.what = 3;
                context.obj = Integer.valueOf(j);
                WalkFragment.access$1300(WalkFragment.this).sendMessage(context);
                return;
            }
            if (context.equals("ACTION_GATT_DISCONNECTED"))
            {
                context = new Message();
                context.what = 4;
                WalkFragment.access$1300(WalkFragment.this).sendMessage(context);
                return;
            }
            if (context.equals("ACTION_GATT_SERVICES_DISCOVERED"))
            {
                context = new Message();
                context.what = 5;
                WalkFragment.access$1300(WalkFragment.this).sendMessage(context);
                return;
            }
        }
    }

    ()
    {
        this$0 = WalkFragment.this;
        super();
    }
}
