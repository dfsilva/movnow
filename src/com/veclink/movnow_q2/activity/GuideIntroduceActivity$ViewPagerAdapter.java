// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            GuideIntroduceActivity

class data extends PagerAdapter
{

    private List data;
    final GuideIntroduceActivity this$0;

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        viewgroup.removeView((View)data.get(i));
    }

    public int getCount()
    {
        return data.size();
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        viewgroup.addView((View)data.get(i));
        return data.get(i);
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public (List list)
    {
        this$0 = GuideIntroduceActivity.this;
        super();
        data = list;
    }
}
