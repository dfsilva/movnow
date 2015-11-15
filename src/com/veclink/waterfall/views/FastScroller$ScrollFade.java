// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.os.SystemClock;

// Referenced classes of package com.veclink.waterfall.views:
//            FastScroller, StaggeredGridView

public class this._cls0
    implements Runnable
{

    static final int ALPHA_MAX = 208;
    static final long FADE_DURATION = 200L;
    long mFadeDuration;
    long mStartTime;
    final FastScroller this$0;

    int getAlpha()
    {
        if (getState() != 4)
        {
            return 208;
        }
        long l = SystemClock.uptimeMillis();
        if (l > mStartTime + mFadeDuration)
        {
            return 0;
        } else
        {
            return (int)(208L - ((l - mStartTime) * 208L) / mFadeDuration);
        }
    }

    public void run()
    {
        if (getState() != 4)
        {
            startFade();
            return;
        }
        if (getAlpha() > 0)
        {
            FastScroller.access$000(FastScroller.this).invalidate();
            return;
        } else
        {
            setState(0);
            return;
        }
    }

    void startFade()
    {
        mFadeDuration = 200L;
        mStartTime = SystemClock.uptimeMillis();
        setState(4);
    }

    public _cls9()
    {
        this$0 = FastScroller.this;
        super();
    }
}
