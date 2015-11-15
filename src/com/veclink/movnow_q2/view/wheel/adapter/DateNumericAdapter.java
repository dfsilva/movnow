// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel.adapter;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

// Referenced classes of package com.veclink.movnow_q2.view.wheel.adapter:
//            NumericWheelAdapter

public class DateNumericAdapter extends NumericWheelAdapter
{

    int currentItem;
    int currentValue;
    int fontSize;

    public DateNumericAdapter(Context context, int i, int j, int k)
    {
        super(context, i, j);
        fontSize = 18;
        currentValue = k;
        setTextSize(fontSize);
    }

    public DateNumericAdapter(Context context, int i, int j, int k, String s)
    {
        super(context, i, j, s);
        fontSize = 18;
        currentValue = k;
        setTextSize(fontSize);
    }

    protected void configureTextView(TextView textview)
    {
        super.configureTextView(textview);
        if (currentItem == currentValue)
        {
            textview.setTextColor(0xff888888);
        }
        textview.setTypeface(Typeface.SANS_SERIF);
    }

    public View getItem(int i, View view, ViewGroup viewgroup)
    {
        currentItem = i;
        return super.getItem(i, view, viewgroup);
    }
}
