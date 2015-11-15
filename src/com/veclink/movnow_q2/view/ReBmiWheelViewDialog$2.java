// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import com.veclink.movnow_q2.view.wheel.OnWheelChangedListener;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.ArrayWheelAdapter;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;

// Referenced classes of package com.veclink.movnow_q2.view:
//            ReBmiWheelViewDialog

class lAdapter
    implements OnWheelChangedListener
{

    final ReBmiWheelViewDialog this$0;
    final ArrayWheelAdapter val$height_unit_adapter;

    public void onChanged(WheelView wheelview, int i, int j)
    {
        if (val$height_unit_adapter.getItemText(wheelview.getCurrentItem()).equals(height_unit_array[0]))
        {
            wheelview = new NumericWheelAdapter(ReBmiWheelViewDialog.access$000(ReBmiWheelViewDialog.this), 0, 8, 0x7f030050);
        } else
        {
            wheelview = new NumericWheelAdapter(ReBmiWheelViewDialog.access$000(ReBmiWheelViewDialog.this), 0, 2, 0x7f030050);
        }
        ReBmiWheelViewDialog.access$100(ReBmiWheelViewDialog.this).setViewAdapter(wheelview);
    }

    lAdapter()
    {
        this$0 = final_rebmiwheelviewdialog;
        val$height_unit_adapter = ArrayWheelAdapter.this;
        super();
    }
}
