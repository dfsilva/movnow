// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.database.DataSetObserver;
import android.support.v4.util.SparseArrayCompat;
import android.widget.ListAdapter;
import java.util.Arrays;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

private class <init> extends DataSetObserver
{

    final StaggeredGridView this$0;

    public void onChanged()
    {
        StaggeredGridView.access$402(StaggeredGridView.this, true);
        StaggeredGridView.access$702(StaggeredGridView.this, StaggeredGridView.access$800(StaggeredGridView.this).getCount());
        StaggeredGridView.access$900(StaggeredGridView.this).ntViews();
        if (!StaggeredGridView.access$1000(StaggeredGridView.this))
        {
            StaggeredGridView.access$1100(StaggeredGridView.this).clear();
            StaggeredGridView.access$1200(StaggeredGridView.this);
            int j = StaggeredGridView.access$1300(StaggeredGridView.this);
            for (int i = 0; i < j; i++)
            {
                StaggeredGridView.access$1400(StaggeredGridView.this)[i] = StaggeredGridView.access$1500(StaggeredGridView.this)[i];
            }

        }
        if (StaggeredGridView.access$1600(StaggeredGridView.this) > StaggeredGridView.access$700(StaggeredGridView.this) - 1 || StaggeredGridView.access$800(StaggeredGridView.this).getItemId(StaggeredGridView.access$1600(StaggeredGridView.this)) != StaggeredGridView.access$1700(StaggeredGridView.this))
        {
            StaggeredGridView.access$1602(StaggeredGridView.this, 0);
            Arrays.fill(StaggeredGridView.access$1500(StaggeredGridView.this), 0);
            Arrays.fill(StaggeredGridView.access$1400(StaggeredGridView.this), 0);
            if (StaggeredGridView.access$1800(StaggeredGridView.this) != null)
            {
                Arrays.fill(StaggeredGridView.access$1800(StaggeredGridView.this), 0);
            }
        }
        requestLayout();
    }

    public void onInvalidated()
    {
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
