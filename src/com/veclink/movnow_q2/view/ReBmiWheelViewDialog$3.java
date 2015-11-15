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
    final ArrayWheelAdapter val$weight_unit_adapter;

    public void onChanged(WheelView wheelview, int i, int j)
    {
        ReBmiWheelViewDialog.access$200(ReBmiWheelViewDialog.this).getCurrentItem();
        if (val$weight_unit_adapter.getItemText(wheelview.getCurrentItem()).equals(weight_unit_array[0]))
        {
            wheelview = new NumericWheelAdapter(ReBmiWheelViewDialog.access$000(ReBmiWheelViewDialog.this), 4, 1103, 0x7f030050);
            minWeight = 4;
        } else
        {
            wheelview = new NumericWheelAdapter(ReBmiWheelViewDialog.access$000(ReBmiWheelViewDialog.this), 2, 500, 0x7f030050);
            minWeight = 2;
        }
        ReBmiWheelViewDialog.access$200(ReBmiWheelViewDialog.this).setViewAdapter(wheelview);
        ReBmiWheelViewDialog.access$200(ReBmiWheelViewDialog.this).setCurrentItem(0);
    }

    lAdapter()
    {
        this$0 = final_rebmiwheelviewdialog;
        val$weight_unit_adapter = ArrayWheelAdapter.this;
        super();
    }
}
