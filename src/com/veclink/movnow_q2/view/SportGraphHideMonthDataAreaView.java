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
import java.util.ArrayList;
import java.util.List;

public class SportGraphHideMonthDataAreaView extends View
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

    public SportGraphHideMonthDataAreaView(Context context)
    {
        this(context, null);
    }

    public SportGraphHideMonthDataAreaView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SportGraphHideMonthDataAreaView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        XPoint = 0;
        datas = new ArrayList();
        stepCountUnit = 2000;
        mContext = context;
        backgroundDrawable = mContext.getResources().getDrawable(0x7f020159);
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
_L14:
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
        float f1;
        float f2;
        float f3;
        float f4;
        float f5;
        try
        {
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
        }
        // Misplaced declaration of an exception variable
        catch (Canvas canvas)
        {
            return;
        }
        k = 1;
        if (k >= datas.size())
        {
            break; /* Loop/switch isn't completed */
        }
        f1 = XPoint;
        f2 = k - 1;
        f3 = XScale;
        f4 = formatY(((SportData)datas.get(k - 1)).getSportStep());
        f5 = XPoint;
        canvas.drawLine(f2 * f3 + f1, f4, (float)k * XScale + f5, formatY(((SportData)datas.get(k)).getSportStep()), ((Paint) (obj)));
        k++;
        if (true) goto _L7; else goto _L6
_L7:
        break MISSING_BLOCK_LABEL_484;
_L15:
        if (k >= datas.size())
        {
            break MISSING_BLOCK_LABEL_924;
        }
        if (k == 0) goto _L9; else goto _L8
_L8:
        if (Integer.parseInt(((SportData)datas.get(k)).getSportStep()) != 0)
        {
            (new Paint()).setStrokeWidth(3F);
            pointBitmap = BitmapFactory.decodeResource(getResources(), 0x7f020037);
            canvas.drawBitmap(pointBitmap, ((float)XPoint + XScale * (float)k) - (float)(pointBitmap.getWidth() / 2), formatY(((SportData)datas.get(k)).getSportStep()) - (float)(pointBitmap.getWidth() / 2), null);
        }
          goto _L9
_L13:
        if (k >= datas.size()) goto _L2; else goto _L10
_L10:
        if (Integer.parseInt(((SportData)datas.get(k)).getSportStep()) < 8000) goto _L12; else goto _L11
_L11:
        obj = new Paint();
        ((Paint) (obj)).setColor(getResources().getColor(0x7f080013));
        ((Paint) (obj)).setStrokeWidth(3F);
        pointBitmap = BitmapFactory.decodeResource(getResources(), 0x7f0200ec);
        canvas.drawBitmap(pointBitmap, ((float)XPoint + XScale * (float)k) - (float)(pointBitmap.getWidth() / 2), formatY(((SportData)datas.get(k)).getSportStep()) - (float)(pointBitmap.getWidth() / 2), null);
_L2:
        return;
_L12:
        k++;
          goto _L13
_L5:
        k++;
          goto _L14
_L6:
        k = 0;
          goto _L15
_L9:
        k++;
          goto _L15
        k = 0;
          goto _L13
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
        XPoint = (int)((double)mViewWidth * 0.10000000000000001D);
        XLength = (float)mViewWidth * 0.8F;
        YLength = mViewHeight;
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
        boolean flag;
        boolean flag1;
        flag = false;
        flag1 = false;
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 28
    //                   0 35;
           goto _L1 _L2
_L1:
        float f;
        float f1;
        int i;
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
        if (datas.size() == 0) goto _L1; else goto _L3
_L3:
        i = 0;
_L5:
        flag1 = flag;
        if (i >= datas.size()) goto _L1; else goto _L4
_L4:
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
          goto _L5
    }

    public void setDataInfo(List list)
    {
        datas = list;
        pathPaint = new Paint();
        pathPaint.setStyle(android.graphics.Paint.Style.STROKE);
        pathPaint.setAntiAlias(true);
        pathPaint.setColor(getResources().getColor(0x7f080016));
        pathPaint.setStrokeWidth(6F);
    }
}
