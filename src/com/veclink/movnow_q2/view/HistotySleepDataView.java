// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.veclink.healthy.database.entity.SleepData;
import java.util.ArrayList;
import java.util.List;

public class HistotySleepDataView extends View
{

    private ArrayList Titles;
    private float XLength;
    private int XPoint;
    private float XScale;
    private float YLength;
    private int YPoint;
    private float YScale;
    private Drawable backgroundDrawable;
    private List datas;
    private Paint linePaint;
    private boolean mChanged;
    private Context mContext;
    private int mViewHeight;
    private int mViewWidth;
    private int mbgViewHeight;
    private int mbgViewWidth;
    private Bitmap pointBitmap;
    private int stepCountUnit;
    private Paint zPaint;

    public HistotySleepDataView(Context context)
    {
        this(context, null);
    }

    public HistotySleepDataView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public HistotySleepDataView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        datas = new ArrayList();
        stepCountUnit = 200;
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f02009e);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
    }

    private float formatY(String s)
    {
        float f;
        try
        {
            f = Float.valueOf(s).floatValue();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -999F;
        }
        return (float)YPoint - (YScale * f) / (float)stepCountUnit;
    }

    protected void onDraw(Canvas canvas)
    {
        int i;
        super.onDraw(canvas);
        boolean flag = mChanged;
        if (flag)
        {
            mChanged = false;
        }
        i = getWidth();
        int j = getHeight();
        i /= 2;
        j /= 2;
        Object obj = backgroundDrawable;
        int k = ((Drawable) (obj)).getIntrinsicWidth();
        int l = ((Drawable) (obj)).getIntrinsicHeight();
        if (flag)
        {
            ((Drawable) (obj)).setBounds(i - k / 2, j - l / 2, k / 2 + i, l / 2 + j);
        }
        ((Drawable) (obj)).draw(canvas);
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080016));
        ((Paint) (obj)).setTextSize(getResources().getDimension(0x7f090039));
        float f;
        try
        {
            obj = new Path();
            ((Path) (obj)).moveTo(XPoint, YPoint);
            linePaint.setStyle(android.graphics.Paint.Style.FILL);
            linePaint.setAlpha(255);
        }
        // Misplaced declaration of an exception variable
        catch (Canvas canvas)
        {
            return;
        }
        i = 0;
_L2:
        if (i < datas.size())
        {
            f = XPoint;
            ((Path) (obj)).lineTo(XScale * (float)i + f, formatY(String.valueOf(((SleepData)datas.get(i)).getSleepDuration())));
            if (i == datas.size() - 1)
            {
                ((Path) (obj)).lineTo((float)XPoint + XScale * (float)i, YPoint);
            }
            break MISSING_BLOCK_LABEL_295;
        }
        canvas.drawPath(((Path) (obj)), linePaint);
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
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
        YPoint = (int)((double)mViewHeight * 0.98999999999999999D);
        XPoint = (int)((double)mViewWidth * 0.050000000000000003D);
        XLength = (float)mViewWidth * 0.9F;
        YLength = (float)mViewHeight * 0.92F;
        XScale = XLength / 6F;
        YScale = YLength / 10F;
        setMeasuredDimension(mViewWidth, mViewHeight);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        mChanged = true;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 24
    //                   0 26;
           goto _L1 _L2
_L1:
        return false;
_L2:
        motionevent.getX();
        motionevent.getY();
        int i = 0;
        while (i < datas.size()) 
        {
            i++;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void setDataInfo(List list)
    {
        datas = list;
        linePaint = new Paint();
        linePaint.setStyle(android.graphics.Paint.Style.STROKE);
        linePaint.setAntiAlias(true);
        linePaint.setColor(getResources().getColor(0x7f080017));
        linePaint.setStrokeWidth(6F);
    }
}
