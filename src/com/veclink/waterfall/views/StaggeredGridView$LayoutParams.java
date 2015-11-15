// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;

// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

public static class height extends android.view.w.LayoutParams
{

    private static final int LAYOUT_ATTRS[] = {
        0x101014d
    };
    private static final int SPAN_INDEX = 0;
    int column;
    long id;
    int position;
    public int span;
    int viewType;


    public (int i)
    {
        super(-1, i);
        span = 1;
        id = -1L;
        if (height == -1)
        {
            Log.w("StaggeredGridView", "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT");
            height = -2;
        }
    }

    public height(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        span = 1;
        id = -1L;
        if (width != -1)
        {
            Log.w("StaggeredGridView", (new StringBuilder()).append("Inflation setting LayoutParams width to ").append(width).append(" - must be MATCH_PARENT").toString());
            width = -1;
        }
        if (height == -1)
        {
            Log.w("StaggeredGridView", "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT");
            height = -2;
        }
        context = context.obtainStyledAttributes(attributeset, LAYOUT_ATTRS);
        span = context.getInteger(0, 1);
        context.recycle();
    }

    public span(android.view.w.LayoutParams layoutparams)
    {
        super(layoutparams);
        span = 1;
        id = -1L;
        if (width != -1)
        {
            Log.w("StaggeredGridView", (new StringBuilder()).append("Constructing LayoutParams with width ").append(width).append(" - must be MATCH_PARENT").toString());
            width = -1;
        }
        if (height == -1)
        {
            Log.w("StaggeredGridView", "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT");
            height = -2;
        }
    }
}
