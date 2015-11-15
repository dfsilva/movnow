// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.view.View;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

class rformClick
    implements Runnable
{

    final StaggeredGridView this$0;
    final View val$child;
    final rformClick val$performClick;

    public void run()
    {
        StaggeredGridView.access$302(StaggeredGridView.this, 6);
        val$child.setPressed(false);
        setPressed(false);
        if (!StaggeredGridView.access$400(StaggeredGridView.this))
        {
            val$performClick.run();
        }
    }

    rformClick()
    {
        this$0 = final_staggeredgridview;
        val$child = view;
        val$performClick = rformClick.this;
        super();
    }
}
