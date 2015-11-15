// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;


// Referenced classes of package cn.sharesdk.framework.gui:
//            PullToRefreshView

class d
    implements Runnable
{

    final PullToRefreshView a;

    d(PullToRefreshView pulltorefreshview)
    {
        a = pulltorefreshview;
        super();
    }

    public void run()
    {
        PullToRefreshView.a(a);
        PullToRefreshView.b(a);
    }
}
