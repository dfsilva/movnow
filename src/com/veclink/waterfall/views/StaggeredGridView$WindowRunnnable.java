// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;


// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

private class <init>
{

    private int mOriginalAttachCount;
    final StaggeredGridView this$0;

    public void rememberWindowAttachCount()
    {
        mOriginalAttachCount = StaggeredGridView.access$2100(StaggeredGridView.this);
    }

    public boolean sameWindow()
    {
        return hasWindowFocus() && StaggeredGridView.access$2200(StaggeredGridView.this) == mOriginalAttachCount;
    }

    private ()
    {
        this$0 = StaggeredGridView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
