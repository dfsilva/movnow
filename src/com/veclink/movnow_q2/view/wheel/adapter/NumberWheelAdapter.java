// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel.adapter;

import android.content.Context;

// Referenced classes of package com.veclink.movnow_q2.view.wheel.adapter:
//            AbstractWheelTextAdapter

public class NumberWheelAdapter extends AbstractWheelTextAdapter
{

    public static final int DEFAULT_MAX_VALUE = 9;
    private static final int DEFAULT_MIN_VALUE = 0;
    private String format;
    private int maxValue;
    private int minValue;
    private int time;

    public NumberWheelAdapter(Context context)
    {
        this(context, 0, 9);
    }

    public NumberWheelAdapter(Context context, int i, int j)
    {
        this(context, i, j, ((String) (null)));
    }

    public NumberWheelAdapter(Context context, int i, int j, int k)
    {
        this(context, i, j, ((String) (null)), k);
    }

    public NumberWheelAdapter(Context context, int i, int j, int k, int l)
    {
        this(context, i, j, ((String) (null)), l);
        time = k;
    }

    public NumberWheelAdapter(Context context, int i, int j, String s)
    {
        super(context);
        minValue = i;
        maxValue = j;
        format = s;
    }

    public NumberWheelAdapter(Context context, int i, int j, String s, int k)
    {
        super(context);
        minValue = i;
        maxValue = j;
        format = s;
        itemResourceId = k;
    }

    public CharSequence getItemText(int i)
    {
        if (i >= 0 && i < getItemsCount())
        {
            i = minValue + i;
            if (format != null)
            {
                return String.format(format, new Object[] {
                    Integer.valueOf(i)
                });
            } else
            {
                return Integer.toString(time * i);
            }
        } else
        {
            return null;
        }
    }

    public int getItemsCount()
    {
        return (maxValue - minValue) + 1;
    }
}
