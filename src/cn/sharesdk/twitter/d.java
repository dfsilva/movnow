// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.twitter;


// Referenced classes of package cn.sharesdk.twitter:
//            b

class d extends Thread
{

    final String a;
    final b b;

    d(b b1, String s)
    {
        b = b1;
        a = s;
        super();
    }

    public void run()
    {
        b.a(a);
    }
}
