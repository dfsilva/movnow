// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import android.widget.Toast;

public class ToastUtil
{

    public static Toast toast = null;

    public ToastUtil()
    {
    }

    public static void showLongToast(Context context, String s)
    {
        Toast.makeText(context, s, 1).show();
    }

    public static void showShortToast(Context context, String s)
    {
        Toast.makeText(context, s, 0).show();
    }

    public static void showTextToast(Context context, String s)
    {
        if (toast == null)
        {
            toast = Toast.makeText(context, s, 0);
        } else
        {
            toast.setText(s);
        }
        toast.show();
    }

}
