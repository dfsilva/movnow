// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;

// Referenced classes of package com.veclink.movnow_q2.view.calendar:
//            DateGridFragment

public class MonthPagerAdapter extends FragmentPagerAdapter
{

    private ArrayList fragments;

    public MonthPagerAdapter(FragmentManager fragmentmanager)
    {
        super(fragmentmanager);
    }

    public int getCount()
    {
        return 4;
    }

    public ArrayList getFragments()
    {
        if (fragments == null)
        {
            fragments = new ArrayList();
            for (int i = 0; i < getCount(); i++)
            {
                fragments.add(new DateGridFragment());
            }

        }
        return fragments;
    }

    public Fragment getItem(int i)
    {
        return (DateGridFragment)getFragments().get(i);
    }

    public void setFragments(ArrayList arraylist)
    {
        fragments = arraylist;
    }
}
