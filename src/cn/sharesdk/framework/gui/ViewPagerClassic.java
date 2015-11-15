// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import cn.sharesdk.framework.utils.R;

// Referenced classes of package cn.sharesdk.framework.gui:
//            g, f

public class ViewPagerClassic extends ViewGroup
{

    private int a;
    private Scroller b;
    private VelocityTracker c;
    private float d;
    private float e;
    private int f;
    private int g;
    private int h;
    private f i;

    public ViewPagerClassic(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ViewPagerClassic(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        f = 0;
        a(context);
    }

    private void a(int j, boolean flag)
    {
        Object obj;
        int k;
        int l;
        if (j != a)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        obj = getFocusedChild();
        if (obj != null && k != 0 && obj == getChildAt(a))
        {
            ((View) (obj)).clearFocus();
        }
        k = getWidth() * j - getScrollX();
        obj = b;
        l = getScrollX();
        if (flag)
        {
            j = 0;
        } else
        {
            j = Math.abs(k) / 2;
        }
        ((Scroller) (obj)).startScroll(l, 0, k, 0, j);
        invalidate();
    }

    private void a(Context context)
    {
        b = new Scroller(getContext(), new g(this));
        context = ViewConfiguration.get(context);
        g = context.getScaledTouchSlop();
        h = context.getScaledMaximumFlingVelocity();
    }

    private void a(MotionEvent motionevent)
    {
        boolean flag1 = false;
        float f1 = motionevent.getX();
        float f2 = motionevent.getY();
        int j = (int)Math.abs(f1 - d);
        int k = (int)Math.abs(f2 - e);
        boolean flag;
        if (j > g)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (k > g)
        {
            flag1 = true;
        }
        if ((flag || flag1) && flag)
        {
            f = 1;
            d = f1;
        }
    }

    private void b(MotionEvent motionevent)
    {
        if (i != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j;
        float f1 = motionevent.getX();
        j = (int)(d - f1);
        d = f1;
        if (j >= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (getScrollX() > 0)
        {
            scrollBy(Math.max(-getScrollX(), j), 0);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (j <= 0 || getChildCount() == 0) goto _L1; else goto _L3
_L3:
        int k = getChildAt(getChildCount() - 1).getRight() - getScrollX() - getWidth();
        if (k > 0)
        {
            scrollBy(Math.min(k, j), 0);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void a(int j)
    {
        a(j, false);
    }

    public void computeScroll()
    {
        if (i != null)
        {
            if (b.computeScrollOffset())
            {
                scrollTo(b.getCurrX(), b.getCurrY());
                postInvalidate();
                return;
            }
            int l = a;
            int i1 = b.getCurrX();
            int j1 = getWidth();
            int k = i1 / j1;
            int j = k;
            if (i1 % j1 > j1 / 2)
            {
                j = k + 1;
            }
            a = Math.max(0, Math.min(j, getChildCount() - 1));
            if (l != a && i != null)
            {
                i.a(a, l);
                return;
            }
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        if (i != null && getChildCount() > 0)
        {
            long l = getDrawingTime();
            if (a > 0)
            {
                drawChild(canvas, getChildAt(a - 1), l);
            }
            drawChild(canvas, getChildAt(a), l);
            if (a < getChildCount() - 1)
            {
                drawChild(canvas, getChildAt(a + 1), l);
                return;
            }
        }
    }

    public boolean dispatchUnhandledMove(View view, int j)
    {
        if (i == null)
        {
            return super.dispatchUnhandledMove(view, j);
        }
        if (j == 17)
        {
            if (a > 0)
            {
                a(a - 1);
                return true;
            }
        } else
        if (j == 66 && a < getChildCount() - 1)
        {
            a(a + 1);
            return true;
        }
        return super.dispatchUnhandledMove(view, j);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int j = motionevent.getAction();
        if (j != 2 || f == 0) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (c == null)
        {
            c = VelocityTracker.obtain();
        }
        c.addMovement(motionevent);
        j;
        JVM INSTR tableswitch 0 3: default 76
    //                   0 93
    //                   1 141
    //                   2 85
    //                   3 141;
           goto _L3 _L4 _L5 _L6 _L5
_L5:
        break MISSING_BLOCK_LABEL_141;
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break; /* Loop/switch isn't completed */
_L8:
        if (f == 0)
        {
            return false;
        }
        if (true) goto _L1; else goto _L7
_L7:
        a(motionevent);
          goto _L8
_L4:
        float f1 = motionevent.getX();
        float f2 = motionevent.getY();
        d = f1;
        e = f2;
        int k;
        if (b.isFinished())
        {
            k = 0;
        } else
        {
            k = 1;
        }
        f = k;
          goto _L8
        if (c != null)
        {
            c.recycle();
            c = null;
        }
        f = 0;
          goto _L8
    }

    protected void onLayout(boolean flag, int j, int k, int l, int i1)
    {
        if (i != null)
        {
            int k1 = l - j;
            int l1 = getChildCount();
            j = 0;
            l = 0;
            while (j < l1) 
            {
                View view = getChildAt(j);
                int j1 = l;
                if (view.getVisibility() != 8)
                {
                    view.layout(l, 0, l + k1, i1 - k);
                    j1 = l + k1;
                }
                j++;
                l = j1;
            }
        }
    }

    protected void onMeasure(int j, int k)
    {
        if (i == null)
        {
            super.onMeasure(j, k);
        } else
        {
            int i1 = getChildCount();
            int j1 = android.view.View.MeasureSpec.makeMeasureSpec(R.getScreenWidth(getContext()), 0x40000000);
            k = 0;
            j = 0;
            for (; k < i1; k++)
            {
                View view = getChildAt(k);
                view.measure(j1, 0);
                int l = view.getMeasuredHeight();
                if (l > j)
                {
                    j = l;
                }
            }

            k = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
            super.onMeasure(j1, k);
            j = 0;
            while (j < i1) 
            {
                getChildAt(j).measure(j1, k);
                j++;
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f1;
        int j;
        if (i == null)
        {
            return false;
        }
        if (c == null)
        {
            c = VelocityTracker.obtain();
        }
        c.addMovement(motionevent);
        j = motionevent.getAction();
        f1 = motionevent.getX();
        j;
        JVM INSTR tableswitch 0 3: default 72
    //                   0 74
    //                   1 146
    //                   2 106
    //                   3 283;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        if (f != 0)
        {
            if (!b.isFinished())
            {
                b.abortAnimation();
            }
            d = f1;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (f == 1)
        {
            b(motionevent);
        } else
        if (onInterceptTouchEvent(motionevent) && f == 1)
        {
            b(motionevent);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (f == 1)
        {
            motionevent = c;
            motionevent.computeCurrentVelocity(1000, h);
            int k = (int)motionevent.getXVelocity();
            if (k > 500 && a > 0)
            {
                a(a - 1);
            } else
            if (k < -500 && a < getChildCount() - 1)
            {
                a(a + 1);
            } else
            {
                int l = getWidth();
                a((getScrollX() + l / 2) / l);
            }
            if (c != null)
            {
                c.recycle();
                c = null;
            }
        }
        f = 0;
        continue; /* Loop/switch isn't completed */
_L5:
        f = 0;
        if (true) goto _L1; else goto _L6
_L6:
    }
}
