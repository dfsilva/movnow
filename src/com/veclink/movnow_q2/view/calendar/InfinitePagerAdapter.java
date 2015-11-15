// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public class InfinitePagerAdapter extends PagerAdapter
{

    private PagerAdapter adapter;

    public InfinitePagerAdapter(PagerAdapter pageradapter)
    {
        adapter = pageradapter;
    }

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        int j = getRealCount();
        adapter.destroyItem(viewgroup, i % j, obj);
    }

    public void finishUpdate(ViewGroup viewgroup)
    {
        adapter.finishUpdate(viewgroup);
    }

    public int getCount()
    {
        return 0x7fffffff;
    }

    public int getRealCount()
    {
        return adapter.getCount();
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        int j = getRealCount();
        return adapter.instantiateItem(viewgroup, i % j);
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return adapter.isViewFromObject(view, obj);
    }

    public void restoreState(Parcelable parcelable, ClassLoader classloader)
    {
        adapter.restoreState(parcelable, classloader);
    }

    public Parcelable saveState()
    {
        return adapter.saveState();
    }

    public void startUpdate(ViewGroup viewgroup)
    {
        adapter.startUpdate(viewgroup);
    }
}
