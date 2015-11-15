// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.widget.TextView;
import com.veclink.movnow_q2.view.wheel.OnWheelScrollListener;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            AddOrEditWaterClockActivity

class this._cls0
    implements OnWheelScrollListener
{

    final AddOrEditWaterClockActivity this$0;

    public void onScrollingFinished(WheelView wheelview)
    {
        int i = getHourWheelIntValue();
        int j = getMinuteWheelIntValue();
        remind_label.setText(AddOrEditWaterClockActivity.access$000(AddOrEditWaterClockActivity.this, mContext, i, j));
    }

    public void onScrollingStarted(WheelView wheelview)
    {
    }

    ()
    {
        this$0 = AddOrEditWaterClockActivity.this;
        super();
    }
}
