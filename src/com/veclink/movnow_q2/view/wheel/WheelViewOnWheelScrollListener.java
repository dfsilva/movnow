// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel;

import android.os.Handler;

// Referenced classes of package com.veclink.movnow_q2.view.wheel:
//            OnWheelScrollListener, WheelView

public class WheelViewOnWheelScrollListener
    implements OnWheelScrollListener
{

    private Handler handler;

    public WheelViewOnWheelScrollListener()
    {
    }

    public WheelViewOnWheelScrollListener(Handler handler1)
    {
        handler = handler1;
    }

    public void onScrollingFinished(WheelView wheelview)
    {
        if (handler != null)
        {
            handler.sendEmptyMessage(0);
        }
    }

    public void onScrollingStarted(WheelView wheelview)
    {
    }
}
