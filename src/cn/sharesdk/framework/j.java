// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;


// Referenced classes of package cn.sharesdk.framework:
//            i, Platform

class j extends Thread
{

    final int a;
    final Object b;
    final i c;

    j(i k, int l, Object obj)
    {
        c = k;
        a = l;
        b = obj;
        super();
    }

    public void run()
    {
        i.a(c);
        if (i.b(c).checkAuthorize(a, b))
        {
            c.b(a, b);
        }
    }
}
