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
import android.util.Log;
import android.view.View;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.movnow_q2.util.DateTimeUtil;
import java.util.ArrayList;
import java.util.List;

public class SleepHideBarDataAreaGraphView extends View
{

    private float XLength;
    private int XPoint;
    private float XScale;
    private float YLength;
    private int YPoint;
    private float YScale;
    private Drawable backgroundDrawable;
    private List datas;
    private boolean isAtnight;
    private boolean mChanged;
    private Context mContext;
    private int mViewHeight;
    private int mViewWidth;
    private int mbgViewHeight;
    private int mbgViewWidth;
    private Paint paint;
    private List times;

    public SleepHideBarDataAreaGraphView(Context context)
    {
        super(context);
        XPoint = 0;
        times = new ArrayList();
        mContext = context;
    }

    public SleepHideBarDataAreaGraphView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        XPoint = 0;
        times = new ArrayList();
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f02014a);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
    }

    public SleepHideBarDataAreaGraphView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        times = new ArrayList();
        mContext = context;
    }

    private float formatX(String s)
    {
        int i;
        int j;
        try
        {
            i = Integer.parseInt(s.substring(s.length() - 4, s.length() - 2));
            j = Integer.parseInt(s.substring(s.length() - 2, s.length()));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -999F;
        }
        if (j == 30)
        {
            return (float)i + 0.5F;
        } else
        {
            return (float)i;
        }
    }

    public void init(List list, boolean flag)
    {
        datas = list;
        isAtnight = flag;
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
        int i1 = ((Drawable) (obj)).getIntrinsicWidth();
        int k1 = ((Drawable) (obj)).getIntrinsicHeight();
        if (flag)
        {
            ((Drawable) (obj)).setBounds(i - i1 / 2, k - k1 / 2, i1 / 2 + i, k1 / 2 + k);
        }
        ((Drawable) (obj)).draw(canvas);
        paint = new Paint();
        paint.setColor(mContext.getResources().getColor(0x7f080007));
        paint.setStrokeWidth(4F);
        canvas.drawLine(0.0F, 0.0F, mViewWidth, 0.0F, paint);
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080013));
        if (datas != null)
        {
            int l = 1;
            while (l <= datas.size()) 
            {
                float f;
                float f1;
                float f2;
                float f3;
                float f4;
                float f5;
                float f6;
                int j;
                int j1;
                int l1;
                if (((SleepData)datas.get(l - 1)).getSleepState().equals("0"))
                {
                    j1 = 3;
                    ((Paint) (obj)).setColor(getResources().getColor(0x7f080019));
                } else
                {
                    ((Paint) (obj)).setColor(getResources().getColor(0x7f080018));
                    j1 = 2;
                }
                l1 = ((SleepData)datas.get(l - 1)).getStartTime();
                Log.d("SleepFragment", (new StringBuilder()).append("startTime \uFF1A").append(DateTimeUtil.secToTime(l1 * 60)).toString());
                if (isAtnight)
                {
                    if (l1 >= 1260)
                    {
                        j = ((SleepData)datas.get(l - 1)).getStartTime() - 1260;
                    } else
                    {
                        j = l1;
                        if (l1 >= 0)
                        {
                            j = l1;
                            if (l1 < 1260)
                            {
                                j = ((SleepData)datas.get(l - 1)).getStartTime() + 180;
                            }
                        }
                    }
                } else
                {
                    j = ((SleepData)datas.get(l - 1)).getStartTime() - 540;
                }
                f2 = j;
                f3 = XScale;
                f4 = XPoint;
                f1 = (float)(((SleepData)datas.get(l - 1)).getSleepDuration() + j) * XScale + (float)XPoint;
                f = f1;
                if (f1 > (float)((double)mViewWidth * 0.91000000000000003D))
                {
                    f = (float)((double)mViewWidth * 0.91000000000000003D);
                }
                f1 = YPoint;
                f5 = j1;
                f6 = YScale;
                canvas.drawRect(f2 * f3 + f4, f1, f, (float)YPoint + f5 * f6, ((Paint) (obj)));
                l++;
            }
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
        YPoint = 0;
        XPoint = (int)((double)mViewWidth * 0.089999999999999997D);
        XLength = (float)mViewWidth * 0.82F;
        YLength = (float)mViewHeight * 0.75F;
        XScale = XLength / 720F;
        YScale = YLength / 4F;
        setMeasuredDimension(mViewWidth, mViewHeight);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        mChanged = true;
    }
}
