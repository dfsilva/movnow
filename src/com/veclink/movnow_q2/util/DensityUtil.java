// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class DensityUtil
{

    public DensityUtil()
    {
    }

    public static int dip2px(Context context, float f)
    {
        return (int)(f * context.getResources().getDisplayMetrics().density + 0.5F);
    }

    public static int px2dip(Context context, float f)
    {
        return (int)(f / context.getResources().getDisplayMetrics().density + 0.5F);
    }
}
