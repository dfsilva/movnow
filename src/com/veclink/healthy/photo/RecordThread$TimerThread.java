// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.util.Log;
import java.util.TimerTask;

// Referenced classes of package com.veclink.healthy.photo:
//            RecordThread

class this._cls0 extends TimerTask
{

    final RecordThread this$0;

    public void run()
    {
        Log.i(RecordThread.access$000(RecordThread.this), "TimerThread, run()");
        stopRecord();
        cancel();
    }

    ()
    {
        this$0 = RecordThread.this;
        super();
    }
}
