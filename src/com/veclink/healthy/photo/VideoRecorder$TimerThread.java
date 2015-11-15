// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.util.Log;
import java.io.IOException;
import java.util.TimerTask;

// Referenced classes of package com.veclink.healthy.photo:
//            VideoRecorder

class this._cls0 extends TimerTask
{

    final VideoRecorder this$0;

    public void run()
    {
        Log.i("VideoRecorder", "TimerThread, run()");
        try
        {
            stopRecording();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    _cls9()
    {
        this$0 = VideoRecorder.this;
        super();
    }
}
