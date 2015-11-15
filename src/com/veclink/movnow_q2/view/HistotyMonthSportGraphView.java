// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.veclink.healthy.database.entity.SportData;
import java.util.ArrayList;
import java.util.List;

public class HistotyMonthSportGraphView extends View
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

    public HistotyMonthSportGraphView(Context context)
    {
        this(context, null);
    }

    public HistotyMonthSportGraphView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public HistotyMonthSportGraphView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        datas = new ArrayList();
        stepCountUnit = 2000;
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
        float f1;
        float f2;
        float f3;
        float f4;
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
_L6:
        if (i >= datas.size()) goto _L2; else goto _L1
_L1:
        f = XPoint;
        ((Path) (obj)).lineTo(XScale * (float)(i + 1) + f, formatY(((SportData)datas.get(i)).getSportStep()));
        if (i == datas.size() - 1)
        {
            ((Path) (obj)).lineTo((float)XPoint + XScale * (float)(i + 1), YPoint);
        }
          goto _L3
_L2:
        canvas.drawPath(((Path) (obj)), linePaint);
        i = 0;
_L4:
        if (i >= datas.size())
        {
            break MISSING_BLOCK_LABEL_540;
        }
        if (Integer.parseInt(((SportData)datas.get(i)).getSportStep()) < 8000)
        {
            break MISSING_BLOCK_LABEL_541;
        }
        pointBitmap = BitmapFactory.decodeResource(getResources(), 0x7f0200e9);
        canvas.drawBitmap(pointBitmap, ((float)XPoint + XScale * (float)(i + 1)) - (float)(pointBitmap.getWidth() / 2), formatY(((SportData)datas.get(i)).getSportStep()) - (float)(pointBitmap.getWidth() / 2), null);
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080013));
        ((Paint) (obj)).setStrokeWidth(3F);
        f = XPoint;
        f1 = XScale;
        f2 = i + 1;
        f3 = formatY(((SportData)datas.get(i)).getSportStep());
        f4 = XPoint;
        canvas.drawLine(f1 * f2 + f, f3, XScale * (float)(i + 1) + f4, YPoint, ((Paint) (obj)));
        return;
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
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
        XPoint = (int)((double)mViewWidth * 0.01D);
        XLength = (float)mViewWidth * 0.9F;
        YLength = mViewHeight;
        XScale = XLength / 31F;
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
        boolean flag;
        boolean flag1;
        flag = false;
        flag1 = false;
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 39;
           goto _L1 _L2
_L1:
        float f;
        float f1;
        int i;
        if (flag1)
        {
            return super.onTouchEvent(motionevent);
        } else
        {
            return false;
        }
_L2:
        f = motionevent.getX();
        f1 = motionevent.getY();
        i = 0;
_L4:
        flag1 = flag;
        if (i >= datas.size()) goto _L1; else goto _L3
_L3:
        boolean flag2 = flag;
        if (Integer.parseInt(((SportData)datas.get(i)).getSportStep()) >= 8000)
        {
            float f2 = (float)XPoint + XScale * (float)(i + 1);
            float f3 = formatY(((SportData)datas.get(i)).getSportStep());
            flag2 = flag;
            if (Math.sqrt(Math.abs(f2 - f) * Math.abs(f2 - f) + Math.abs(f3 - f1) * Math.abs(f3 - f1)) < 80D)
            {
                flag2 = true;
            }
        }
        i++;
        flag = flag2;
          goto _L4
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
