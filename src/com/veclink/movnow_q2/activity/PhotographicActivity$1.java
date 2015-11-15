// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            PhotographicActivity

class this._cls0 extends Handler
{

    final PhotographicActivity this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            PhotographicActivity.access$000(PhotographicActivity.this).setPadding(0, 0, 0, 0);
            return;

        case 1: // '\001'
            PhotographicActivity.access$000(PhotographicActivity.this).setPadding(0, 0, 0, 0);
            break;
        }
    }

    ()
    {
        this$0 = PhotographicActivity.this;
        super();
    }
}
