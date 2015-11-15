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
import android.util.AttributeSet;
import android.view.View;

public class RemindProgressBar extends View
{

    public static final int FILL = 1;
    public static final int STROKE = 0;
    private final String TAG;
    public boolean isRunningProgress;
    private Drawable mDial;
    private int mDialHeight;
    private int mDialWidth;
    private final Runnable mProgressTick;
    private int max;
    private Paint paint;
    private int progress;
    private int roundColor;
    private int roundProgressColor;
    private float roundWidth;
    private int style;
    private int textColor;
    private boolean textIsDisplayable;
    private float textSize;

    public RemindProgressBar(Context context)
    {
        this(context, null);
    }

    public RemindProgressBar(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public RemindProgressBar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        TAG = com/veclink/movnow_q2/view/RemindProgressBar.getSimpleName();
        mProgressTick = new Runnable() {

            final RemindProgressBar this$0;

            public void run()
            {
                onTimeChanged();
                postDelayed(mProgressTick, 1000L);
            }

            
            {
                this$0 = RemindProgressBar.this;
                super();
            }
        };
        Resources resources = context.getResources();
        paint = new Paint();
        context = context.obtainStyledAttributes(attributeset, com.veclink.movnow.healthy_q2.R.styleable.RoundProgressBar);
        roundColor = context.getColor(0, resources.getColor(0x7f080030));
        roundProgressColor = context.getColor(1, resources.getColor(0x7f08002f));
        textColor = context.getColor(3, 0xff00ff00);
        textSize = context.getDimension(4, 15F);
        roundWidth = context.getDimension(2, 13F);
        max = context.getInteger(5, 100);
        textIsDisplayable = context.getBoolean(6, false);
        style = context.getInt(7, 0);
        context.recycle();
        mDial = getBackground();
        mDialWidth = mDial.getIntrinsicWidth();
        mDialHeight = mDial.getIntrinsicHeight();
        progress = 0;
    }

    private void onDrawBackgroud(Canvas canvas)
    {
        int j = getWidth();
        int i = getHeight();
        j /= 2;
        i /= 2;
        Drawable drawable = mDial;
        drawable.getIntrinsicWidth();
        drawable.getIntrinsicHeight();
        drawable.draw(canvas);
    }

    private void onTimeChanged()
    {
        progress = progress + 1;
        if (progress > max)
        {
            if (getId() == 0x7f0600f1)
            {
                progress = 1;
            } else
            {
                invalidate();
                removeCallbacks(mProgressTick);
                isRunningProgress = false;
            }
        }
        invalidate();
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
        return progress;
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

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        onTimeChanged();
        post(mProgressTick);
        isRunningProgress = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        removeCallbacks(mProgressTick);
        isRunningProgress = false;
    }

    protected void onDraw(Canvas canvas)
    {
        RectF rectf;
        super.onDraw(canvas);
        onDrawBackgroud(canvas);
        int i = getWidth() / 2;
        int j = (int)((float)i - roundWidth / 2.0F);
        paint.setColor(roundColor);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setStrokeWidth(roundWidth);
        paint.setAntiAlias(true);
        canvas.drawCircle(i, i, j, paint);
        paint.setStrokeWidth(0.0F);
        paint.setColor(textColor);
        paint.setTextSize(textSize);
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        int k = (int)(((float)progress / (float)max) * 100F);
        float f = paint.measureText((new StringBuilder()).append(k).append("%").toString());
        if (textIsDisplayable && k != 0 && style == 0)
        {
            canvas.drawText((new StringBuilder()).append(k).append("%").toString(), (float)i - f / 2.0F, (float)i + textSize / 2.0F, paint);
        }
        paint.setStrokeWidth(roundWidth);
        paint.setColor(roundProgressColor);
        rectf = new RectF(i - j, i - j, i + j, i + j);
        style;
        JVM INSTR tableswitch 0 1: default 320
    //                   0 321
    //                   1 357;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        canvas.drawArc(rectf, 0.0F, (progress * 360) / max, false, paint);
        return;
_L3:
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        if (progress != 0)
        {
            canvas.drawArc(rectf, 0.0F, (progress * 360) / max, true, paint);
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
            if (l < mDialWidth)
            {
                f = (float)l / (float)mDialWidth;
            }
        }
        f1 = f2;
        if (i1 != 0)
        {
            f1 = f2;
            if (j1 < mDialHeight)
            {
                f1 = (float)j1 / (float)mDialHeight;
            }
        }
        f = Math.min(f, f1);
        setMeasuredDimension(resolveSizeAndState((int)((float)mDialWidth * f), i, 0), resolveSizeAndState((int)((float)mDialHeight * f), j, 0));
        setMeasuredDimension(resolveSize(mDialWidth, i), resolveSize(mDialHeight, j));
    }

    public void runFreshViewAgain()
    {
        onTimeChanged();
        post(mProgressTick);
        isRunningProgress = true;
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
        if (i < 0)
        {
            throw new IllegalArgumentException("max not less than 0");
        } else
        {
            max = i;
            return;
        }
    }

    public void setProgress(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("progress not less than 0");
        }
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

    public void stopFreshView()
    {
        removeCallbacks(mProgressTick);
        isRunningProgress = false;
    }


}
