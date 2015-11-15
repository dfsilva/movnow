// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BindbandActivity

class this._cls0 extends Handler
{

    final BindbandActivity this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 1000: 
        case 1001: 
        case 1002: 
        default:
            return;

        case 1003: 
            first_bind_tip_view.setText(0x7f0c017d);
            break;
        }
    }

    ()
    {
        this$0 = BindbandActivity.this;
        super();
    }
}
