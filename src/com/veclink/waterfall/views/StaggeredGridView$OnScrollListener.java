// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.views;


// Referenced classes of package com.veclink.waterfall.views:
//            StaggeredGridView

public static interface 
{

    public static final int SCROLL_STATE_FLING = 2;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

    public abstract void onScroll(StaggeredGridView staggeredgridview, int i, int j, int k);

    public abstract void onScrollStateChanged(StaggeredGridView staggeredgridview, int i);
}
