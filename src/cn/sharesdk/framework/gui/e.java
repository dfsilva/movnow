// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;


// Referenced classes of package cn.sharesdk.framework.gui:
//            ScrollableListView, Scrollable

class e
    implements Scrollable.OnScrollListener
{

    final ScrollableListView a;

    e(ScrollableListView scrollablelistview)
    {
        a = scrollablelistview;
        super();
    }

    public void onScrollChanged(Scrollable scrollable, int i, int j, int k, int l)
    {
        scrollable = a;
        boolean flag;
        if (j <= 0 && l <= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ScrollableListView.a(scrollable, flag);
    }
}
