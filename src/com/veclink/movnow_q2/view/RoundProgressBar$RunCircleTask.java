// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

// Referenced classes of package com.veclink.movnow_q2.view:
//            RoundProgressBar

private class <init> extends TimerTask
{

    final RoundProgressBar this$0;

    public void run()
    {
        int _tmp = RoundProgressBar.access$008(RoundProgressBar.this);
        RoundProgressBar.access$002(RoundProgressBar.this, RoundProgressBar.access$000(RoundProgressBar.this) % 100);
        Message message = new Message();
        RoundProgressBar.access$100(RoundProgressBar.this).sendMessage(message);
    }

    private ()
    {
        this$0 = RoundProgressBar.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
