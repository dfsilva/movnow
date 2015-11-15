// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.view.View;
import android.widget.ListAdapter;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

private class <init> extends <init>
    implements Runnable
{

    final StaggeredGridView this$0;

    public void run()
    {
label0:
        {
            int i = StaggeredGridView.access$2300(StaggeredGridView.this);
            View view = getChildAt(i - StaggeredGridView.access$1600(StaggeredGridView.this));
            if (view != null)
            {
                int j = StaggeredGridView.access$2300(StaggeredGridView.this);
                long l = StaggeredGridView.access$800(StaggeredGridView.this).getItemId(StaggeredGridView.access$2300(StaggeredGridView.this));
                boolean flag1 = false;
                boolean flag = flag1;
                if (sameWindow())
                {
                    flag = flag1;
                    if (!StaggeredGridView.access$400(StaggeredGridView.this))
                    {
                        flag = performLongPress(view, j, l);
                    }
                }
                if (!flag)
                {
                    break label0;
                }
                StaggeredGridView.access$302(StaggeredGridView.this, 6);
                setPressed(false);
                view.setPressed(false);
            }
            return;
        }
        StaggeredGridView.access$302(StaggeredGridView.this, 5);
    }

    private ()
    {
        this$0 = StaggeredGridView.this;
        super(StaggeredGridView.this, null);
    }

    nit>(nit> nit>)
    {
        this();
    }
}
