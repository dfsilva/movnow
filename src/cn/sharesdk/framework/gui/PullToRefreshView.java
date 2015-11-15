// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

// Referenced classes of package cn.sharesdk.framework.gui:
//            d, c

public class PullToRefreshView extends RelativeLayout
{

    private c a;
    private int b;
    private int c;
    private float d;
    private boolean e;
    private boolean f;
    private Runnable g;
    private long h;

    public PullToRefreshView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public PullToRefreshView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private MotionEvent a(MotionEvent motionevent)
    {
        return MotionEvent.obtain(motionevent.getDownTime(), motionevent.getEventTime(), 3, motionevent.getX(), motionevent.getY(), motionevent.getMetaState());
    }

    private void a()
    {
        g = new d(this);
    }

    static void a(PullToRefreshView pulltorefreshview)
    {
        pulltorefreshview.d();
    }

    private void b()
    {
        h = System.currentTimeMillis();
        e = true;
        if (a != null)
        {
            a.b();
        }
    }

    static void b(PullToRefreshView pulltorefreshview)
    {
        pulltorefreshview.c();
    }

    private void c()
    {
        e = false;
    }

    private void d()
    {
        c = 0;
        scrollTo(0, 0);
        if (a != null)
        {
            a.c();
        }
    }

    private boolean e()
    {
        return !f && a.a();
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 44
    //                   1 177
    //                   2 57
    //                   3 177;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        MotionEvent motionevent1 = motionevent;
_L6:
        return super.dispatchTouchEvent(motionevent1);
_L2:
        d = motionevent.getY();
        motionevent1 = motionevent;
        continue; /* Loop/switch isn't completed */
_L4:
label0:
        {
            float f1 = motionevent.getY();
            if (!e)
            {
                motionevent1 = motionevent;
                if (!e())
                {
                    break label0;
                }
            }
            c = (int)((float)c + (f1 - d) / 2.0F);
            if (c > 0)
            {
                scrollTo(0, -c);
                if (!e && a != null)
                {
                    a.a((c * 100) / b);
                }
                motionevent1 = a(motionevent);
            } else
            {
                c = 0;
                scrollTo(0, 0);
                motionevent1 = motionevent;
            }
        }
        d = f1;
        continue; /* Loop/switch isn't completed */
_L3:
        if (!e)
        {
            if (c > b)
            {
                c = b;
                scrollTo(0, -c);
                if (a != null)
                {
                    a.a(100);
                }
                b();
                motionevent1 = a(motionevent);
            } else
            {
                motionevent1 = motionevent;
                if (c != 0)
                {
                    d();
                    motionevent1 = motionevent;
                    if (a != null)
                    {
                        a.a(0);
                        motionevent1 = motionevent;
                    }
                }
            }
        } else
        {
            c = b;
            scrollTo(0, -c);
            motionevent1 = motionevent;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
