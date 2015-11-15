// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class HeartRateListAdapter extends BaseExpandableListAdapter
{

    private String buddy[][];
    private Context context;
    private String group[];
    LayoutInflater inflater;

    public HeartRateListAdapter(Context context1, String as[], String as1[][])
    {
        context = context1;
        inflater = LayoutInflater.from(context1);
        group = as;
        buddy = as1;
    }

    public Object getChild(int i, int j)
    {
        return buddy[i][j];
    }

    public long getChildId(int i, int j)
    {
        return (long)j;
    }

    public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        view = inflater.inflate(0x7f03003e, null);
        ((TextView)view.findViewById(0x7f0600fb)).setText(getChild(i, j).toString());
        return view;
    }

    public int getChildrenCount(int i)
    {
        return buddy[i].length;
    }

    public Object getGroup(int i)
    {
        return group[i];
    }

    public int getGroupCount()
    {
        return group.length;
    }

    public long getGroupId(int i)
    {
        return (long)i;
    }

    public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        view = inflater.inflate(0x7f03003f, null);
        viewgroup = (TextView)view.findViewById(0x7f0600fd);
        viewgroup.setText(getGroup(i).toString());
        ImageView imageview = (ImageView)view.findViewById(0x7f0600fe);
        if (!flag)
        {
            imageview.setImageResource(0x7f0200d4);
            viewgroup.setSelected(false);
            return view;
        } else
        {
            imageview.setImageResource(0x7f0200d3);
            viewgroup.setSelected(true);
            return view;
        }
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public boolean isChildSelectable(int i, int j)
    {
        return true;
    }
}
