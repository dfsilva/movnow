// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.widget.ListAdapter;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

private class <init> extends le
    implements Runnable
{

    int mClickMotionPosition;
    final StaggeredGridView this$0;

    public void run()
    {
        if (!StaggeredGridView.access$400(StaggeredGridView.this))
        {
            ListAdapter listadapter = StaggeredGridView.access$800(StaggeredGridView.this);
            int i = mClickMotionPosition;
            if (listadapter != null && StaggeredGridView.access$700(StaggeredGridView.this) > 0 && i != -1 && i < listadapter.getCount() && sameWindow())
            {
                android.view.View view = getChildAt(i - StaggeredGridView.access$1600(StaggeredGridView.this));
                if (view != null)
                {
                    performItemClick(view, i, listadapter.getItemId(i));
                    return;
                }
            }
        }
    }

    private le()
    {
        this$0 = StaggeredGridView.this;
        super(StaggeredGridView.this, null);
    }

    le(le le)
    {
        this();
    }
}
