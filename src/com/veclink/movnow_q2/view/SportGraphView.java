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
import com.veclink.healthy.task.SaveSyncDataRunnable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class SportGraphView extends View
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
    private List times;
    private Paint zPaint;

    public SportGraphView(Context context)
    {
        this(context, null);
    }

    public SportGraphView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SportGraphView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        datas = new ArrayList();
        times = new ArrayList();
        stepCountUnit = 1;
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f020146);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
        times.add("03:00");
        times.add("06:00");
        times.add("09:00");
        times.add("12:00");
        times.add("15:00");
        times.add("18:00");
        times.add("21:00");
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
        return (float)YPoint - ((float)YPoint * f) / (float)stepCountUnit;
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
        int i1 = ((Drawable) (obj)).getIntrinsicWidth();
        int j1 = ((Drawable) (obj)).getIntrinsicHeight();
        if (flag)
        {
            ((Drawable) (obj)).setBounds(i - i1 / 2, l - j1 / 2, i1 / 2 + i, j1 / 2 + l);
        }
        ((Drawable) (obj)).draw(canvas);
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080016));
        ((Paint) (obj)).setTextSize(getResources().getDimension(0x7f090039));
        for (int j = 0; j < times.size(); j++)
        {
            canvas.drawText((String)times.get(j), (float)((double)mViewWidth * (0.029999999999999999D + (double)j * (0.96999999999999997D / (double)times.size()))), (float)((double)mViewHeight * 0.94999999999999996D), ((Paint) (obj)));
        }

        if (datas == null) goto _L2; else goto _L1
_L1:
        Object obj1;
        if (datas.size() <= 1)
        {
            break MISSING_BLOCK_LABEL_657;
        }
        obj1 = new Path();
        ((Path) (obj1)).moveTo(XPoint, YPoint);
        linePaint.setStyle(android.graphics.Paint.Style.FILL);
        linePaint.setAlpha(255);
        int k = 0;
_L8:
        if (k >= datas.size()) goto _L4; else goto _L3
_L3:
        float f = XPoint;
        ((Path) (obj1)).lineTo(XScale * (float)k + f, formatY(((SportData)datas.get(k)).getSportStep()));
        if (k == datas.size() - 1)
        {
            ((Path) (obj1)).lineTo((float)XPoint + XScale * (float)k, YPoint);
        }
          goto _L5
_L4:
        float f1;
        float f2;
        float f3;
        try
        {
            canvas.drawPath(((Path) (obj1)), linePaint);
            break MISSING_BLOCK_LABEL_657;
        }
        // Misplaced declaration of an exception variable
        catch (Canvas canvas) { }
          goto _L2
_L7:
        if (k >= datas.size()) goto _L2; else goto _L6
_L6:
        if (Integer.parseInt(((SportData)datas.get(k)).getSportStep()) < 8000)
        {
            break MISSING_BLOCK_LABEL_637;
        }
        pointBitmap = BitmapFactory.decodeResource(getResources(), 0x7f0200e9);
        canvas.drawBitmap(pointBitmap, ((float)XPoint + XScale * (float)k) - (float)(pointBitmap.getWidth() / 2), formatY(((SportData)datas.get(k)).getSportStep()) - (float)(pointBitmap.getWidth() / 2), null);
        obj1 = new Paint();
        ((Paint) (obj1)).setColor(getResources().getColor(0x7f080013));
        ((Paint) (obj1)).setStrokeWidth(3F);
        f1 = XPoint;
        f2 = XScale;
        f3 = k;
        float f4 = formatY(((SportData)datas.get(k)).getSportStep());
        float f5 = XPoint;
        canvas.drawLine(f2 * f3 + f1, f4, XScale * (float)k + f5, YPoint, ((Paint) (obj1)));
        k++;
          goto _L7
_L2:
        return;
_L5:
        k++;
          goto _L8
        k = 0;
          goto _L7
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
        YPoint = (int)((double)mViewHeight * 0.80000000000000004D);
        XPoint = (int)((double)mViewWidth * 0.080000000000000002D);
        XLength = (float)mViewWidth * 0.84F;
        YLength = mViewHeight;
        XScale = XLength / 36F;
        YScale = YLength / 8F;
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
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        if (datas != null)
        {
            int i = 0;
            while (i < datas.size()) 
            {
                if (Integer.parseInt(((SportData)datas.get(i)).getSportStep()) >= 8000)
                {
                    float f2 = (float)XPoint + XScale * (float)(i + 1);
                    float f3 = formatY(((SportData)datas.get(i)).getSportStep());
                    if (Math.sqrt(Math.abs(f2 - f) * Math.abs(f2 - f) + Math.abs(f3 - f1) * Math.abs(f3 - f1)) >= 80D);
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void setDataInfo(List list)
    {
        int i = stepCountUnit;
        datas.clear();
        int j = i;
        if (list != null)
        {
            j = i;
            if (list.size() > 0)
            {
                HashMap hashmap = new HashMap();
                for (Iterator iterator = list.iterator(); iterator.hasNext();)
                {
                    SportData sportdata = (SportData)iterator.next();
                    String s = sportdata.getSportTime();
                    int i1 = Integer.parseInt(s.substring(s.length() - 6, s.length() - 4));
                    int j1 = Integer.parseInt(s.substring(s.length() - 4, s.length() - 2));
                    int k = Integer.parseInt(sportdata.getSportStep());
                    j = i;
                    if (k > i)
                    {
                        j = k;
                    }
                    hashmap.put(Integer.valueOf(i1 * 60 + j1), sportdata);
                    i = j;
                }

                list = ((SportData)list.get(0)).getSportTime();
                int l = 180;
                do
                {
                    j = i;
                    if (l >= 1260)
                    {
                        break;
                    }
                    if (hashmap.containsKey(Integer.valueOf(l)))
                    {
                        datas.add(hashmap.get(Integer.valueOf(l)));
                    } else
                    {
                        Object obj = list.substring(0, list.length() - 4);
                        obj = (new StringBuilder()).append(((String) (obj))).append(SaveSyncDataRunnable.intToString(l / 60)).toString();
                        obj = (new StringBuilder()).append(((String) (obj))).append(SaveSyncDataRunnable.intToString(l % 60)).toString();
                        obj = SaveSyncDataRunnable.createSportData(mContext, ((String) (obj)));
                        datas.add(obj);
                    }
                    l += 30;
                } while (true);
            }
        }
        stepCountUnit = j;
        linePaint = new Paint();
        linePaint.setStyle(android.graphics.Paint.Style.STROKE);
        linePaint.setAntiAlias(true);
        linePaint.setColor(getResources().getColor(0x7f080016));
        linePaint.setStrokeWidth(6F);
    }
}
