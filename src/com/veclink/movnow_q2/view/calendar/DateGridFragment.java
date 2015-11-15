// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;

// Referenced classes of package com.veclink.movnow_q2.view.calendar:
//            CaldroidGridAdapter

public class DateGridFragment extends Fragment
{

    private CaldroidGridAdapter gridAdapter;
    private GridView gridView;
    private android.widget.AdapterView.OnItemClickListener onItemClickListener;
    private android.widget.AdapterView.OnItemLongClickListener onItemLongClickListener;

    public DateGridFragment()
    {
    }

    public CaldroidGridAdapter getGridAdapter()
    {
        return gridAdapter;
    }

    public GridView getGridView()
    {
        return gridView;
    }

    public android.widget.AdapterView.OnItemClickListener getOnItemClickListener()
    {
        return onItemClickListener;
    }

    public android.widget.AdapterView.OnItemLongClickListener getOnItemLongClickListener()
    {
        return onItemLongClickListener;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        gridView = (GridView)layoutinflater.inflate(0x7f03002e, viewgroup, false);
        if (gridAdapter != null)
        {
            gridView.setAdapter(gridAdapter);
        }
        if (onItemClickListener != null)
        {
            gridView.setOnItemClickListener(onItemClickListener);
        }
        if (onItemLongClickListener != null)
        {
            gridView.setOnItemLongClickListener(onItemLongClickListener);
        }
        return gridView;
    }

    public void setGridAdapter(CaldroidGridAdapter caldroidgridadapter)
    {
        gridAdapter = caldroidgridadapter;
    }

    public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        onItemClickListener = onitemclicklistener;
    }

    public void setOnItemLongClickListener(android.widget.AdapterView.OnItemLongClickListener onitemlongclicklistener)
    {
        onItemLongClickListener = onitemlongclicklistener;
    }
}
