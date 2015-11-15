// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.veclink.healthy.photo.RecordService;
import com.veclink.healthy.photo.mySharedPreferences;
import java.io.PrintStream;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            PhotographicActivity

class this._cls0
    implements Runnable
{

    final PhotographicActivity this$0;

    public void run()
    {
        Log.i("mLlWhiteBorder", "setPadding+ ");
        if (PhotographicActivity.access$100(PhotographicActivity.this) < PhotographicActivity.access$200(PhotographicActivity.this).getShootNumber())
        {
            PhotographicActivity.access$400().takePicture(PhotographicActivity.access$300(PhotographicActivity.this));
            Message message = new Message();
            message.what = 0;
            MyHandler.sendMessage(message);
            mHandler.postDelayed(this, PhotographicActivity.access$200(PhotographicActivity.this).getShootInterval() * 1000);
            PhotographicActivity.access$108(PhotographicActivity.this);
            return;
        }
        try
        {
            mHandler.removeCallbacks(runnable);
            Message message1 = new Message();
            message1.what = 1;
            MyHandler.sendMessage(message1);
            PhotographicActivity.access$502(PhotographicActivity.this, true);
            PhotographicActivity.access$102(PhotographicActivity.this, 0);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        System.out.println("exception...");
        return;
    }

    ()
    {
        this$0 = PhotographicActivity.this;
        super();
    }
}
