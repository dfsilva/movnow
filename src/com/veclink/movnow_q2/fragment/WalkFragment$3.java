// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.veclink.bracelet.bletask.BleQueryPowerValueTask;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WalkFragment

class this._cls0 extends Handler
{

    final WalkFragment this$0;

    public void handleMessage(Message message)
    {
        if (message.what == 1003)
        {
            WalkFragment.access$600(WalkFragment.this).setText((new StringBuilder()).append(String.valueOf(message.obj)).append("%").toString());
            return;
        } else
        {
            queryPowerValueTask = new BleQueryPowerValueTask(application, queryPowerCallBack);
            queryPowerValueTask.work();
            return;
        }
    }

    eTask()
    {
        this$0 = WalkFragment.this;
        super();
    }
}
