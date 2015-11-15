// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            PhotographicActivity

class this._cls0 extends Thread
{

    final PhotographicActivity this$0;

    public void run()
    {
        try
        {
            Thread.sleep(2000L);
            Message message = new Message();
            message.what = 1;
            MyHandler.sendMessage(message);
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
        PhotographicActivity.access$502(PhotographicActivity.this, true);
    }

    ()
    {
        this$0 = PhotographicActivity.this;
        super();
    }
}
