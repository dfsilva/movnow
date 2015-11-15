// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.wheel.adapter;

import android.content.Context;
import com.veclink.movnow_q2.view.wheel.WheelAdapter;

// Referenced classes of package com.veclink.movnow_q2.view.wheel.adapter:
//            AbstractWheelTextAdapter

public class AdapterWheel extends AbstractWheelTextAdapter
{

    private WheelAdapter adapter;

    public AdapterWheel(Context context, WheelAdapter wheeladapter)
    {
        super(context);
        adapter = wheeladapter;
    }

    public WheelAdapter getAdapter()
    {
        return adapter;
    }

    protected CharSequence getItemText(int i)
    {
        return adapter.getItem(i);
    }

    public int getItemsCount()
    {
        return adapter.getItemsCount();
    }
}
