// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel.adapter;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.view.wheel.adapter:
//            WheelViewAdapter

public abstract class AbstractWheelAdapter
    implements WheelViewAdapter
{

    private List datasetObservers;

    public AbstractWheelAdapter()
    {
    }

    public View getEmptyItem(View view, ViewGroup viewgroup)
    {
        return null;
    }

    protected void notifyDataChangedEvent()
    {
        if (datasetObservers != null)
        {
            for (Iterator iterator = datasetObservers.iterator(); iterator.hasNext(); ((DataSetObserver)iterator.next()).onChanged()) { }
        }
    }

    protected void notifyDataInvalidatedEvent()
    {
        if (datasetObservers != null)
        {
            for (Iterator iterator = datasetObservers.iterator(); iterator.hasNext(); ((DataSetObserver)iterator.next()).onInvalidated()) { }
        }
    }

    public void registerDataSetObserver(DataSetObserver datasetobserver)
    {
        if (datasetObservers == null)
        {
            datasetObservers = new LinkedList();
        }
        datasetObservers.add(datasetobserver);
    }

    public void unregisterDataSetObserver(DataSetObserver datasetobserver)
    {
        if (datasetObservers != null)
        {
            datasetObservers.remove(datasetobserver);
        }
    }
}
