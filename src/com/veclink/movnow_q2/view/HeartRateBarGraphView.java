// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;

public class HeartRateBarGraphView extends View
{

    private float XLength;
    private int XPoint;
    private float YLength;
    private int YPoint;
    private List datas;
    private boolean isAtnight;
    private Context mContext;
    private int mViewHeight;
    private int mViewWidth;
    private int mbgViewHeight;
    private int mbgViewWidth;
    private Paint paint;
    private List times;
    private int zhuziMargin;
    private int zhuziWidth;

    public HeartRateBarGraphView(Context context)
    {
        super(context);
        XPoint = 20;
        YPoint = 0;
        zhuziWidth = 13;
        zhuziMargin = 18;
        times = new ArrayList();
        mContext = context;
    }

    public HeartRateBarGraphView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        XPoint = 20;
        YPoint = 0;
        zhuziWidth = 13;
        zhuziMargin = 18;
        times = new ArrayList();
        mContext = context;
        attributeset = new DisplayMetrics();
        ((Activity)context).getWindowManager().getDefaultDisplay().getMetrics(attributeset);
        mbgViewWidth = ((DisplayMetrics) (attributeset)).widthPixels;
        mbgViewHeight = ((DisplayMetrics) (attributeset)).heightPixels / 3;
        paint = new Paint();
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setColor(mContext.getResources().getColor(0x7f080007));
        paint.setStrokeWidth(2.0F);
    }

    public HeartRateBarGraphView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 20;
        YPoint = 0;
        zhuziWidth = 13;
        zhuziMargin = 18;
        times = new ArrayList();
        mContext = context;
    }

    public void init(List list, List list1, boolean flag)
    {
        datas = list;
        times = list1;
        isAtnight = flag;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int k = getWidth();
        int i = getHeight();
        k /= 2;
        i /= 2;
        canvas.drawLine(0.0F, mViewHeight / 5, mViewWidth, mViewHeight / 5, paint);
        Paint paint1 = new Paint();
        paint1.setStyle(android.graphics.Paint.Style.FILL);
        paint1.setColor(mContext.getResources().getColor(0x7f080014));
        for (int j = 0; j < 31; j++)
        {
            if (XPoint + (zhuziWidth + zhuziMargin) * j <= (mViewWidth * 7) / 8)
            {
                canvas.drawRect(XPoint + (zhuziWidth + zhuziMargin) * j, (mViewHeight * (j % 4 + 1)) / 5, XPoint + (zhuziWidth + zhuziMargin) * j + zhuziWidth, mViewHeight, paint1);
            }
        }

        paint1 = new Paint();
        paint1.setStyle(android.graphics.Paint.Style.FILL);
        paint1.setColor(mContext.getResources().getColor(0x7f080000));
        paint1.setStrokeWidth(10F);
        canvas.drawLine(0.0F, (mViewHeight * 3) / 5, (mViewWidth * 7) / 8, (mViewHeight * 3) / 5, paint1);
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
        YPoint = mViewHeight;
        XLength = (mViewWidth * 7) / 8;
        setMeasuredDimension(mViewWidth, mViewHeight);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }
}
