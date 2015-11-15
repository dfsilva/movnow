// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
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

public class SportGraphHideDataAreaView extends View
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
    private Paint pathPaint;
    private Bitmap pointBitmap;
    private int stepCountUnit;
    private Paint zPaint;

    public SportGraphHideDataAreaView(Context context)
    {
        this(context, null);
    }

    public SportGraphHideDataAreaView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SportGraphHideDataAreaView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        datas = new ArrayList();
        stepCountUnit = 1;
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f020159);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
        setWillNotDraw(false);
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
        return (float)YPoint - ((float)YPoint * f * 0.8F) / (float)stepCountUnit;
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
        Drawable drawable = backgroundDrawable;
        int k1 = drawable.getIntrinsicWidth();
        int j2 = drawable.getIntrinsicHeight();
        if (flag)
        {
            drawable.setBounds(i - k1 / 2, l - j2 / 2, k1 / 2 + i, j2 / 2 + l);
        }
        drawable.draw(canvas);
        if (datas == null || datas.size() <= 1) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = new Path();
        ((Path) (obj)).moveTo(XPoint, YPoint);
        pathPaint.setStyle(android.graphics.Paint.Style.FILL);
        pathPaint.setAlpha(255);
        int j = getResources().getColor(0x7f08001d);
        int i1 = getResources().getColor(0x7f08001e);
        int l1 = getResources().getColor(0x7f08001f);
        Object obj1 = android.graphics.Shader.TileMode.MIRROR;
        obj1 = new LinearGradient(0.0F, 0.0F, 100F, 100F, new int[] {
            j, i1, l1
        }, null, ((android.graphics.Shader.TileMode) (obj1)));
        pathPaint.setShader(((android.graphics.Shader) (obj1)));
        int k = 0;
_L10:
        if (k >= datas.size()) goto _L4; else goto _L3
_L3:
        float f = XPoint;
        ((Path) (obj)).lineTo(XScale * (float)k + f, formatY(((SportData)datas.get(k)).getSportStep()));
        if (k == datas.size() - 1)
        {
            ((Path) (obj)).lineTo((float)XPoint + XScale * (float)k, YPoint);
        }
          goto _L5
_L4:
        canvas.drawPath(((Path) (obj)), pathPaint);
        obj = new Paint();
        k = getResources().getColor(0x7f08001a);
        int j1 = getResources().getColor(0x7f08001b);
        int i2 = getResources().getColor(0x7f08001c);
        Object obj2 = android.graphics.Shader.TileMode.MIRROR;
        obj2 = new LinearGradient(0.0F, 0.0F, 100F, 100F, new int[] {
            k, j1, i2
        }, null, ((android.graphics.Shader.TileMode) (obj2)));
        ((Paint) (obj)).setStyle(android.graphics.Paint.Style.FILL);
        ((Paint) (obj)).setAntiAlias(true);
        ((Paint) (obj)).setShader(((android.graphics.Shader) (obj2)));
        ((Paint) (obj)).setStrokeWidth(3F);
        k = 1;
_L7:
        float f1;
        if (k >= datas.size())
        {
            break; /* Loop/switch isn't completed */
        }
        f1 = XPoint;
        float f2 = k - 1;
        float f3 = XScale;
        float f5 = formatY(((SportData)datas.get(k - 1)).getSportStep());
        float f7 = XPoint;
        canvas.drawLine(f2 * f3 + f1, f5, (float)k * XScale + f7, formatY(((SportData)datas.get(k)).getSportStep()), ((Paint) (obj)));
        k++;
        if (true) goto _L7; else goto _L6
_L9:
        if (k >= datas.size()) goto _L2; else goto _L8
_L8:
        if (k == 0)
        {
            break MISSING_BLOCK_LABEL_736;
        }
        if (Integer.parseInt(((SportData)datas.get(k)).getSportStep()) != 0)
        {
            (new Paint()).setStrokeWidth(3F);
            pointBitmap = BitmapFactory.decodeResource(getResources(), 0x7f020037);
            canvas.drawBitmap(pointBitmap, ((float)XPoint + XScale * (float)k) - (float)(pointBitmap.getWidth() / 2), formatY(((SportData)datas.get(k)).getSportStep()) - (float)(pointBitmap.getWidth() / 2), null);
        }
        if (Integer.parseInt(((SportData)datas.get(k)).getSportStep()) < 8000)
        {
            break MISSING_BLOCK_LABEL_936;
        }
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080013));
        ((Paint) (obj)).setStrokeWidth(3F);
        f1 = XPoint;
        f2 = XScale;
        float f4 = k;
        float f6 = (float)((double)mViewHeight * 0.079000000000000001D);
        float f8 = XPoint;
        canvas.drawLine(f2 * f4 + f1, f6, XScale * (float)k + f8, YPoint, ((Paint) (obj)));
        pointBitmap = BitmapFactory.decodeResource(getResources(), 0x7f0200ec);
        canvas.drawBitmap(pointBitmap, ((float)XPoint + XScale * (float)k) - (float)(pointBitmap.getWidth() / 2), formatY(((SportData)datas.get(k)).getSportStep()) - (float)(pointBitmap.getWidth() / 2), null);
        k++;
          goto _L9
        canvas;
        canvas.printStackTrace();
_L2:
        return;
_L5:
        k++;
          goto _L10
_L6:
        k = 0;
          goto _L9
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
        XPoint = (int)((double)mViewWidth * 0.070000000000000007D);
        XLength = (float)mViewWidth * 0.86F;
        YLength = mViewHeight;
        XScale = XLength / 36F;
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
        int i;
        flag = false;
        i = 0;
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 39;
           goto _L1 _L2
_L1:
        boolean flag1 = i;
_L4:
        float f;
        float f1;
        if (flag1)
        {
            return false;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
_L2:
        f = motionevent.getX();
        f1 = motionevent.getY();
        flag1 = i;
        if (datas == null) goto _L4; else goto _L3
_L3:
        flag1 = i;
        if (datas.size() == 0) goto _L4; else goto _L5
_L5:
        i = 0;
_L7:
        flag1 = flag;
        if (i >= datas.size()) goto _L4; else goto _L6
_L6:
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
          goto _L7
    }

    public void setDataInfo(List list)
    {
        datas.clear();
        int i = stepCountUnit;
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
        pathPaint = new Paint();
        pathPaint.setStyle(android.graphics.Paint.Style.STROKE);
        pathPaint.setAntiAlias(true);
        pathPaint.setColor(getResources().getColor(0x7f080016));
        pathPaint.setStrokeWidth(6F);
        postInvalidate();
    }
}
