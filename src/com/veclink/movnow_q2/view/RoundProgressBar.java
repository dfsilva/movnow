// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import java.util.Timer;
import java.util.TimerTask;

public class RoundProgressBar extends View
{

    public static final int FILL = 1;
    public static final int STROKE = 0;
    private Drawable backgroundDrawable;
    private Handler handler = new Handler() {

        final RoundProgressBar this$0;

        public void handleMessage(Message message)
        {
            handleMessage(message);
            postInvalidate();
        }

            
            {
                this$0 = RoundProgressBar.this;
                super();
            }
    };
    private boolean mChanged;
    private int max;
    private int mbgViewHeight;
    private int mbgViewWidth;
    private Paint paint;
    private int progress;
    private int roundColor;
    private int roundProgressColor;
    private float roundWidth;
    private boolean stopRun;
    private int style;
    private TimerTask task;
    private int textColor;
    private boolean textIsDisplayable;
    private float textSize;
    private Timer timer;

    public RoundProgressBar(Context context)
    {
        RoundProgressBar(context, null);
    }

    public RoundProgressBar(Context context, AttributeSet attributeset)
    {
        RoundProgressBar(context, attributeset, 0);
    }

    public RoundProgressBar(Context context, AttributeSet attributeset, int i)
    {
        View(context, attributeset, i);
        paint = new Paint();
        attributeset = context.obtainStyledAttributes(attributeset, com.veclink.movnow.healthy_q2.R.styleable.RoundProgressBar);
        roundColor = attributeset.getColor(0, 0xffff0000);
        roundProgressColor = attributeset.getColor(1, 0xff00ff00);
        textColor = attributeset.getColor(3, 0xff00ff00);
        textSize = attributeset.getDimension(4, 15F);
        roundWidth = attributeset.getDimension(2, 5F);
        max = attributeset.getInteger(5, 100);
        textIsDisplayable = attributeset.getBoolean(6, true);
        style = attributeset.getInt(7, 0);
        attributeset.recycle();
        backgroundDrawable = context.getResources().getDrawable(0x7f0200f8);
        mbgViewWidth = backgroundDrawable.getIntrinsicWidth();
        mbgViewHeight = backgroundDrawable.getIntrinsicHeight();
    }

    public int getCricleColor()
    {
        return roundColor;
    }

    public int getCricleProgressColor()
    {
        return roundProgressColor;
    }

    public int getMax()
    {
        this;
        JVM INSTR monitorenter ;
        int i = max;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public int getProgress()
    {
        this;
        JVM INSTR monitorenter ;
        int i = progress;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public float getRoundWidth()
    {
        return roundWidth;
    }

    public int getTextColor()
    {
        return textColor;
    }

    public float getTextSize()
    {
        return textSize;
    }

    protected void onDraw(Canvas canvas)
    {
        Object obj;
        onDraw(canvas);
        boolean flag = mChanged;
        if (flag)
        {
            mChanged = false;
        }
        int i = getWidth();
        int j = getHeight();
        i /= 2;
        j /= 2;
        obj = backgroundDrawable;
        int k = ((Drawable) (obj)).getIntrinsicWidth();
        int l = ((Drawable) (obj)).getIntrinsicHeight();
        if (flag)
        {
            ((Drawable) (obj)).setBounds(i - k / 2, j - l / 2, k / 2 + i, l / 2 + j);
        }
        ((Drawable) (obj)).draw(canvas);
        i = getWidth() / 2;
        j = (int)((float)i - roundWidth / 2.0F);
        paint.setColor(roundColor);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(roundWidth);
        paint.setAntiAlias(true);
        canvas.drawCircle(i, i, j, paint);
        paint.setStrokeWidth(0.0F);
        paint.setColor(textColor);
        paint.setTextSize(textSize);
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        k = (int)(((float)progress / (float)max) * 100F);
        float f = paint.measureText((new StringBuilder()).append(k).append("%").toString());
        if (textIsDisplayable && k != 0 && style == 0)
        {
            canvas.drawText((new StringBuilder()).append(k).append("%").toString(), (float)i - f / 2.0F, (float)i + textSize / 2.0F, paint);
        }
        paint.setStrokeWidth(roundWidth);
        paint.setColor(roundProgressColor);
        obj = new RectF(i - j, i - j, i + j, i + j);
        style;
        JVM INSTR tableswitch 0 1: default 412
    //                   0 413
    //                   1 450;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        canvas.drawArc(((RectF) (obj)), 270F, (progress * 360) / max, false, paint);
        return;
_L3:
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        if (progress != 0)
        {
            canvas.drawArc(((RectF) (obj)), 0.0F, (progress * 360) / max, true, paint);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
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
        setMeasuredDimension(resolveSize(mbgViewWidth, i), resolveSize(mbgViewHeight, j));
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        onSizeChanged(i, j, k, l);
        mChanged = true;
    }

    public void setCricleColor(int i)
    {
        roundColor = i;
    }

    public void setCricleProgressColor(int i)
    {
        roundProgressColor = i;
    }

    public void setMax(int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        throw new IllegalArgumentException("max not less than 0");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        max = i;
        this;
        JVM INSTR monitorexit ;
    }

    public void setProgress(int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        throw new IllegalArgumentException("progress not less than 0");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int j = i;
        if (i > max)
        {
            j = max;
        }
        if (j <= max)
        {
            progress = j;
            postInvalidate();
        }
        this;
        JVM INSTR monitorexit ;
    }

    public void setRoundWidth(float f)
    {
        roundWidth = f;
    }

    public void setTextColor(int i)
    {
        textColor = i;
    }

    public void setTextSize(float f)
    {
        textSize = f;
    }

    public void startRunCircle()
    {
        if (timer != null)
        {
            stopRunCircle();
        }
        setMax(100);
        timer = new Timer(true);
        task = new RunCircleTask();
        timer.schedule(task, 0L, 20L);
    }

    public void stopRunCircle()
    {
        if (timer != null)
        {
            timer.cancel();
        }
        timer = null;
    }



/*
    static int access$002(RoundProgressBar roundprogressbar, int i)
    {
        roundprogressbar.progress = i;
        return i;
    }

*/


/*
    static int access$008(RoundProgressBar roundprogressbar)
    {
        int i = roundprogressbar.progress;
        roundprogressbar.progress = i + 1;
        return i;
    }

*/

}
