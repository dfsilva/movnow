// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.viewpagerindicator.IconPagerAdapter;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MainActivity

class fragmentList extends FragmentStatePagerAdapter
    implements IconPagerAdapter
{

    public List fragmentList;
    final MainActivity this$0;

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
    }

    public int getCount()
    {
        return fragmentList.size();
    }

    public int getIconResId(int i)
    {
        return ((Integer)MainActivity.access$400(MainActivity.this).get(i)).intValue();
    }

    public Fragment getItem(int i)
    {
        return (Fragment)fragmentList.get(i);
    }

    public int getItemPosition(Object obj)
    {
        return -2;
    }

    public I(FragmentManager fragmentmanager, List list)
    {
        this$0 = MainActivity.this;
        super(fragmentmanager);
        fragmentList = list;
    }
}
