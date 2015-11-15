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
        message.what;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 42
    //                   1 59
    //                   2 36
    //                   3 36;
           goto _L1 _L2 _L3 _L1 _L1
_L1:
        super.handleMessage(message);
        return;
_L2:
        PhotographicActivity.access$000(PhotographicActivity.this).setPadding(5, 5, 5, 5);
        continue; /* Loop/switch isn't completed */
_L3:
        PhotographicActivity.access$000(PhotographicActivity.this).setPadding(0, 0, 0, 0);
        if (true) goto _L1; else goto _L4
_L4:
    }

    ()
    {
        this$0 = PhotographicActivity.this;
        super();
    }
}
