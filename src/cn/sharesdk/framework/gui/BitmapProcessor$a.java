// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.graphics.Bitmap;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor

public static class d
{

    private String a;
    private tmapCallback b;
    private tmapCallback c;
    private long d;
    private Bitmap e;

    static d a(d d1, d d2)
    {
        d1.c = d2;
        return d2;
    }

    static String a(c c1)
    {
        return c1.a;
    }

    private void a(Bitmap bitmap)
    {
        e = bitmap;
        if (b != null)
        {
            b.onImageGot(a, e);
        }
    }

    static void a(e e1, Bitmap bitmap)
    {
        e1.a(bitmap);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("url=").append(a);
        stringbuilder.append("time=").append(d);
        stringbuilder.append("worker=").append(c.getName()).append(" (").append(c.getId()).append("");
        return stringbuilder.toString();
    }

    public tmapCallback()
    {
        d = System.currentTimeMillis();
    }
}
