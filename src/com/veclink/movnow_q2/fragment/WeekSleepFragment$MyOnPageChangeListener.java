// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import java.util.Calendar;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WeekSleepFragment

class this._cls0
    implements android.support.v4.view.stener
{

    final WeekSleepFragment this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        WeekSleepFragment.access$302(WeekSleepFragment.this, WeekSleepFragment.access$000(WeekSleepFragment.this));
        WeekSleepFragment.access$002(WeekSleepFragment.this, i);
        c.setTimeInMillis(WeekSleepFragment.access$400(WeekSleepFragment.this));
        WeekSleepFragment.access$502(WeekSleepFragment.this, -1);
        if (WeekSleepFragment.access$000(WeekSleepFragment.this) >= WeekSleepFragment.access$300(WeekSleepFragment.this)) goto _L2; else goto _L1
_L1:
        c.add(5, -7);
        WeekSleepFragment.access$502(WeekSleepFragment.this, 0);
        WeekSleepFragment.access$600(WeekSleepFragment.this, c);
_L4:
        WeekSleepFragment.access$402(WeekSleepFragment.this, c.getTimeInMillis());
        checkViewPagePagingEnabled();
        return;
_L2:
        if (WeekSleepFragment.access$000(WeekSleepFragment.this) > WeekSleepFragment.access$300(WeekSleepFragment.this))
        {
            c.add(5, 7);
            WeekSleepFragment.access$502(WeekSleepFragment.this, 1);
            WeekSleepFragment.access$600(WeekSleepFragment.this, c);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = WeekSleepFragment.this;
        super();
    }
}
