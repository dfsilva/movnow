// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            MonthWalkFragment

class views extends PagerAdapter
{

    final MonthWalkFragment this$0;
    private List views;

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
    }

    public int getCount()
    {
        return 0x7fffffff;
    }

    public View getView(int i)
    {
        return (View)views.get(i % views.size());
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        viewgroup.removeView((View)views.get(i % views.size()));
        viewgroup.addView((View)views.get(i % views.size()), 0);
        return views.get(i % views.size());
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public (List list)
    {
        this$0 = MonthWalkFragment.this;
        super();
        views = list;
    }
}
