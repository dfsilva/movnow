// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;

// Referenced classes of package com.veclink.movnow_q2.view:
//            WeekSleepPagerItemView

class this._cls0
    implements android.view.gerItemView._cls1
{

    final WeekSleepPagerItemView this$0;

    public void onClick(View view)
    {
        view = AnimationUtils.loadAnimation(WeekSleepPagerItemView.access$000(WeekSleepPagerItemView.this), 0x7f04000f);
        WeekSleepPagerItemView.access$100(WeekSleepPagerItemView.this).setVisibility(8);
        WeekSleepPagerItemView.access$200(WeekSleepPagerItemView.this).setVisibility(0);
        WeekSleepPagerItemView.access$200(WeekSleepPagerItemView.this).startAnimation(view);
    }

    _cls9()
    {
        this$0 = WeekSleepPagerItemView.this;
        super();
    }
}
