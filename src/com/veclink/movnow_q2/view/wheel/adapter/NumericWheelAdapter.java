// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel.adapter;

import android.content.Context;

// Referenced classes of package com.veclink.movnow_q2.view.wheel.adapter:
//            AbstractWheelTextAdapter

public class NumericWheelAdapter extends AbstractWheelTextAdapter
{

    public static final int DEFAULT_MAX_VALUE = 9;
    private static final int DEFAULT_MIN_VALUE = 0;
    private String format;
    boolean isfloat;
    private int maxValue;
    private int minValue;

    public NumericWheelAdapter(Context context)
    {
        this(context, 0, 9);
    }

    public NumericWheelAdapter(Context context, int i, int j)
    {
        this(context, i, j, ((String) (null)));
    }

    public NumericWheelAdapter(Context context, int i, int j, int k)
    {
        this(context, i, j, ((String) (null)), k);
    }

    public NumericWheelAdapter(Context context, int i, int j, String s)
    {
        super(context);
        minValue = i;
        maxValue = j;
        format = s;
    }

    public NumericWheelAdapter(Context context, int i, int j, String s, int k)
    {
        super(context);
        minValue = i;
        maxValue = j;
        format = s;
        itemResourceId = k;
    }

    public NumericWheelAdapter(Context context, int i, int j, boolean flag, int k)
    {
        this(context, i, j, ((String) (null)), k);
        isfloat = flag;
    }

    public CharSequence getItemText(int i)
    {
        if (i >= 0 && i < getItemsCount())
        {
            i = minValue + i;
            if (isfloat)
            {
                return String.format("%.2f", new Object[] {
                    Float.valueOf((float)i / 100F)
                });
            }
            String s;
            if (format != null)
            {
                s = String.format(format, new Object[] {
                    Integer.valueOf(i)
                });
            } else
            {
                s = Integer.toString(i);
            }
            return s;
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
