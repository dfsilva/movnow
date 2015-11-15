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

public class SleepBarGraphView extends View
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

    public SleepBarGraphView(Context context)
    {
        super(context);
        XPoint = 0;
        times = new ArrayList();
        mContext = context;
    }

    public SleepBarGraphView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        XPoint = 0;
        times = new ArrayList();
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f020146);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
    }

    public SleepBarGraphView(Context context, AttributeSet attributeset, int i)
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

    public void init(List list, List list1, boolean flag)
    {
        datas = list;
        times = list1;
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
        int l = getHeight();
        i /= 2;
        l /= 2;
        Object obj = backgroundDrawable;
        int j1 = ((Drawable) (obj)).getIntrinsicWidth();
        int l1 = ((Drawable) (obj)).getIntrinsicHeight();
        if (flag)
        {
            ((Drawable) (obj)).setBounds(i - j1 / 2, l - l1 / 2, j1 / 2 + i, l1 / 2 + l);
        }
        ((Drawable) (obj)).draw(canvas);
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080016));
        ((Paint) (obj)).setTextSize(getResources().getDimension(0x7f090039));
        for (int j = 0; j < times.size(); j++)
        {
            canvas.drawText((String)times.get(j), (float)((double)mViewWidth * (0.040000000000000001D + (double)j * (0.94999999999999996D / (double)times.size()))), (float)((double)mViewHeight * 0.94999999999999996D), ((Paint) (obj)));
        }

        obj = new Paint();
        if (datas != null)
        {
            int i1 = 1;
            while (i1 <= datas.size()) 
            {
                float f;
                float f1;
                float f2;
                float f3;
                float f4;
                int k;
                int k1;
                int i2;
                if (((SleepData)datas.get(i1 - 1)).getSleepState().equals("0"))
                {
                    k1 = 3;
                    ((Paint) (obj)).setColor(getResources().getColor(0x7f080019));
                } else
                {
                    ((Paint) (obj)).setColor(getResources().getColor(0x7f080018));
                    k1 = 2;
                }
                i2 = ((SleepData)datas.get(i1 - 1)).getStartTime();
                Log.d("SleepFragment", (new StringBuilder()).append("startTime \uFF1A").append(DateTimeUtil.secToTime(i2 * 60)).toString());
                if (isAtnight)
                {
                    if (i2 >= 1260)
                    {
                        k = ((SleepData)datas.get(i1 - 1)).getStartTime() - 1260;
                    } else
                    {
                        k = i2;
                        if (i2 >= 0)
                        {
                            k = i2;
                            if (i2 < 1260)
                            {
                                k = ((SleepData)datas.get(i1 - 1)).getStartTime() + 180;
                            }
                        }
                    }
                } else
                {
                    k = ((SleepData)datas.get(i1 - 1)).getStartTime() - 540;
                }
                f2 = (float)k * XScale + (float)XPoint;
                f1 = (float)(((SleepData)datas.get(i1 - 1)).getSleepDuration() + k) * XScale + (float)XPoint;
                f = f1;
                if (f1 > (float)((double)mViewWidth * 0.91000000000000003D))
                {
                    f = (float)((double)mViewWidth * 0.91000000000000003D);
                }
                f1 = YPoint;
                f3 = k1;
                f4 = YScale;
                canvas.drawRect(f2, f1, f, (float)YPoint + f3 * f4, ((Paint) (obj)));
                Log.d("SleepFragment", (new StringBuilder()).append("x_pre_position\uFF1A").append(f2).toString());
                Log.d("SleepFragment", (new StringBuilder()).append("x_current_position\uFF1A").append(f).toString());
                Log.d("SleepFragment", (new StringBuilder()).append("datas.get(j-1).getSleepDuration()\uFF1A").append(((SleepData)datas.get(i1 - 1)).getSleepDuration()).toString());
                i1++;
            }
        }
        Log.d("SleepFragment", (new StringBuilder()).append("XScale \u5355\u4F4D\u957F\u5EA6\uFF1A").append(XScale).toString());
        Log.d("SleepFragment", (new StringBuilder()).append("XPoint \u539F\u70B9\u5750\u6807\uFF1A").append(XPoint).toString());
        Log.d("SleepFragment", (new StringBuilder()).append("XLength X\u8F74\u957F\u5EA6\uFF1A").append(XLength).toString());
        Log.d("SleepFragment", (new StringBuilder()).append("(float)(mViewWidth*0.91)\uFF1A").append((float)((double)mViewWidth * 0.91000000000000003D)).toString());
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
        YLength = (float)mViewHeight * 0.9F;
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
