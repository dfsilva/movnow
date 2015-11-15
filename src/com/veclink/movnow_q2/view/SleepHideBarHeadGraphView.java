// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class SleepHideBarHeadGraphView extends View
{

    private Drawable backgroundDrawable;
    private boolean mChanged;
    private Context mContext;
    private int mViewHeight;
    private int mViewWidth;
    private int mbgViewHeight;
    private int mbgViewWidth;
    private List times;

    public SleepHideBarHeadGraphView(Context context)
    {
        super(context);
        times = new ArrayList();
        mContext = context;
    }

    public SleepHideBarHeadGraphView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        times = new ArrayList();
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f020147);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
    }

    public SleepHideBarHeadGraphView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        times = new ArrayList();
        mContext = context;
    }

    public void init(List list, boolean flag)
    {
        times = list;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        boolean flag = mChanged;
        if (flag)
        {
            mChanged = false;
        }
        int i = getWidth();
        int k = getHeight();
        i /= 2;
        k /= 2;
        Object obj = backgroundDrawable;
        int l = ((Drawable) (obj)).getIntrinsicWidth();
        int i1 = ((Drawable) (obj)).getIntrinsicHeight();
        if (flag)
        {
            ((Drawable) (obj)).setBounds(i - l / 2, k - i1 / 2, l / 2 + i, i1 / 2 + k);
        }
        ((Drawable) (obj)).draw(canvas);
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080024));
        ((Paint) (obj)).setTextSize(getResources().getDimension(0x7f090039));
        for (int j = 0; j < times.size(); j++)
        {
            canvas.drawText((String)times.get(j), (float)((double)mViewWidth * (0.040000000000000001D + (double)j * (0.94999999999999996D / (double)times.size()))), mViewHeight / 2, ((Paint) (obj)));
        }

    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int l = android.view.View.MeasureSpec.getSize(i);
        int i1 = android.view.View.MeasureSpec.getMode(j);
        int j1 = android.view.View.MeasureSpec.getSize(j);
        float f1 = 1.0F;
        float f2 = 1.0F;
        float f = f1;
        if (k != 0)
        {
            f = f1;
            if (l < mbgViewWidth)
            {
                f = (float)l / (float)mbgViewWidth;
            }
        }
        f1 = f2;
        if (i1 != 0)
        {
            f1 = f2;
            if (j1 < mbgViewHeight)
            {
                f1 = (float)j1 / (float)mbgViewHeight;
            }
        }
        f = Math.min(f, f1);
        setMeasuredDimension(resolveSizeAndState((int)((float)mbgViewWidth * f), i, 0), resolveSizeAndState((int)((float)mbgViewHeight * f), j, 0));
        mViewWidth = resolveSize(mbgViewWidth, i);
        mViewHeight = resolveSize(mbgViewHeight, j);
        setMeasuredDimension(mViewWidth, mViewHeight);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        mChanged = true;
    }
}
