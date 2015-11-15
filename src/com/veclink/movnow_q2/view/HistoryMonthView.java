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

public class HistoryMonthView extends View
{

    private float XLength;
    private int XPoint;
    private float XScale;
    private float YLength;
    private int YPoint;
    private float YScale;
    private Drawable backgroundDrawable;
    private List datas;
    private boolean mChanged;
    private Context mContext;
    private int mViewHeight;
    private int mViewWidth;
    private int mbgViewHeight;
    private int mbgViewWidth;
    private List times;

    public HistoryMonthView(Context context)
    {
        this(context, null);
    }

    public HistoryMonthView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public HistoryMonthView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        datas = new ArrayList();
        times = new ArrayList();
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f02002c);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
        times.add("0");
        times.add("5");
        times.add("10");
        times.add("15");
        times.add("20");
        times.add("25");
        times.add("30");
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
            canvas.drawText((String)times.get(j), (float)((double)mViewWidth * (0.048000000000000001D + (double)j * 0.14000000000000001D)), (float)((double)mViewHeight * 0.5D), ((Paint) (obj)));
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
