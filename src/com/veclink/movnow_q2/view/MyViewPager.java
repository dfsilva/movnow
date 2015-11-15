// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class MyViewPager extends ViewPager
{

    private boolean enabled;
    float startX;

    public MyViewPager(Context context)
    {
        super(context);
        enabled = true;
    }

    public MyViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        enabled = true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        return super.onInterceptTouchEvent(motionevent);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 38
    //                   1 32
    //                   2 49;
           goto _L1 _L2 _L1 _L3
_L1:
        return super.onTouchEvent(motionevent);
_L2:
        startX = motionevent.getX();
        continue; /* Loop/switch isn't completed */
_L3:
        if (motionevent.getX() - startX >= 0.0F || enabled);
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void setPagingEnabled(boolean flag)
    {
        enabled = flag;
    }
}
