// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

public class WeekdayArrayAdapter extends ArrayAdapter
{

    public static int textColor = -1;

    public WeekdayArrayAdapter(Context context, int i, List list)
    {
        super(context, i, list);
        textColor = context.getResources().getColor(0x7f080025);
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = (TextView)super.getView(i, view, viewgroup);
        if (((String)getItem(i)).length() <= 3)
        {
            view.setTextSize(2, 12F);
        } else
        {
            view.setTextSize(2, 11F);
        }
        view.setTextColor(textColor);
        view.setGravity(17);
        return view;
    }

    public boolean isEnabled(int i)
    {
        return false;
    }

}
