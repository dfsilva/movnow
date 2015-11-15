// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.veclink.healthy.photo.RecordService;
import com.veclink.healthy.photo.mySharedPreferences;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            PhotographicActivity

class this._cls0 extends BroadcastReceiver
{

    final PhotographicActivity this$0;

    public void onReceive(Context context, Intent intent)
    {
        if ("net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION".equals(intent.getAction()))
        {
            if (PhotographicActivity.access$500(PhotographicActivity.this))
            {
                PhotographicActivity.access$502(PhotographicActivity.this, false);
                if (PhotographicActivity.access$700(PhotographicActivity.this) == 1)
                {
                    mHandler.postDelayed(runnable, PhotographicActivity.access$200(PhotographicActivity.this).getShootInterval());
                } else
                if (!PhotographicActivity.access$800(PhotographicActivity.this))
                {
                    if (PhotographicActivity.access$900(PhotographicActivity.this) != null)
                    {
                        PhotographicActivity.access$802(PhotographicActivity.this, true);
                        PhotographicActivity.access$400().setSurfaceHolder(PhotographicActivity.access$900(PhotographicActivity.this));
                        PhotographicActivity.access$400().startVideoRecord(PhotographicActivity.access$300(PhotographicActivity.this), Integer.parseInt(PhotographicActivity.access$1000(PhotographicActivity.this).toString()), 0);
                        context = new Message();
                        context.what = 3;
                        MyHandler.sendMessage(context);
                    } else
                    {
                        Log.e("MainActivity", "surfaceHolder is null !");
                    }
                } else
                {
                    context = new Message();
                    context.what = 4;
                    MyHandler.sendMessage(context);
                }
            }
            (new Thread() {

                final PhotographicActivity._cls6 this$1;

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
                    PhotographicActivity.access$502(this$0, true);
                }

            
            {
                this$1 = PhotographicActivity._cls6.this;
                super();
            }
            }).start();
        }
    }

    _cls1.this._cls1()
    {
        this$0 = PhotographicActivity.this;
        super();
    }
}
