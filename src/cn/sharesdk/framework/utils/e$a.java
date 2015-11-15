// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.content.Context;
import android.text.TextUtils;

// Referenced classes of package cn.sharesdk.framework.utils:
//            e

private static class c
{

    public int a;
    public String b;
    public String c;

    public void a(Context context)
    {
        if (context == null)
        {
            return;
        }
        b = context.getPackageName();
        if (TextUtils.isEmpty(b))
        {
            b = "";
            return;
        } else
        {
            c = b.toUpperCase();
            return;
        }
    }

    public ()
    {
        a = 7;
        b = "";
        c = "";
    }
}
