// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.veclink.movnow_q2.view:
//            RoundProgressBar

class this._cls0 extends Handler
{

    final RoundProgressBar this$0;

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        postInvalidate();
    }

    ()
    {
        this$0 = RoundProgressBar.this;
        super();
    }
}
