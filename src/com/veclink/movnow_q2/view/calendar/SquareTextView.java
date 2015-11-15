// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class SquareTextView extends TextView
{

    public SquareTextView(Context context)
    {
        super(context);
    }

    public SquareTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SquareTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void onMeasure(int i, int j)
    {
        super.onMeasure(i, i);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, i, k, l);
    }
}
