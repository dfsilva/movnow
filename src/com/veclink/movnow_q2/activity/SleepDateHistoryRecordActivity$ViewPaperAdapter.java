// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SleepDateHistoryRecordActivity

class views extends PagerAdapter
{

    final SleepDateHistoryRecordActivity this$0;
    private List views;

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        viewgroup.removeView((View)views.get(i));
    }

    public int getCount()
    {
        return views.size();
    }

    public CharSequence getPageTitle(int i)
    {
        return String.valueOf(i + 1);
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        viewgroup.addView((View)views.get(i), 0);
        return views.get(i);
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public (List list)
    {
        this$0 = SleepDateHistoryRecordActivity.this;
        super();
        views = list;
    }
}
