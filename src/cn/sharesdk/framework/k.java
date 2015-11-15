// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;


// Referenced classes of package cn.sharesdk.framework:
//            i, Platform

class k extends Thread
{

    final String a[];
    final i b;

    k(i j, String as[])
    {
        b = j;
        a = as;
        super();
    }

    public void run()
    {
        i.a(b);
        i.b(b).doAuthorize(a);
    }
}
