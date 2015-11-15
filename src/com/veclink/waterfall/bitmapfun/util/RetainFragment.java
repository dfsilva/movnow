// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

public class RetainFragment extends Fragment
{

    private static final String TAG = "RetainFragment";
    private Object mObject;

    public RetainFragment()
    {
    }

    public static RetainFragment findOrCreateRetainFragment(FragmentManager fragmentmanager)
    {
        RetainFragment retainfragment1 = (RetainFragment)fragmentmanager.findFragmentByTag("RetainFragment");
        RetainFragment retainfragment = retainfragment1;
        if (retainfragment1 == null)
        {
            retainfragment = new RetainFragment();
            fragmentmanager.beginTransaction().add(retainfragment, "RetainFragment").commit();
        }
        return retainfragment;
    }

    public Object getObject()
    {
        return mObject;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public void setObject(Object obj)
    {
        mObject = obj;
    }
}
