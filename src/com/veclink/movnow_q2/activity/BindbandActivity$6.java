// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.widget.TextView;
import com.veclink.hw.bleservice.util.Keeper;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BindbandActivity

class this._cls0
    implements Runnable
{

    final BindbandActivity this$0;

    public void run()
    {
        if (!Keeper.getUserHasBindBand(BindbandActivity.access$200(BindbandActivity.this)))
        {
            connectHandler.sendEmptyMessage(34);
            first_bind_tip_view.setText(0x7f0c017c);
        }
    }

    ()
    {
        this$0 = BindbandActivity.this;
        super();
    }
}
