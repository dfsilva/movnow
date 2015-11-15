// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import java.util.Calendar;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WeekWalkFragment

class this._cls0
    implements android.support.v4.view.stener
{

    final WeekWalkFragment this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        WeekWalkFragment.access$002(WeekWalkFragment.this, WeekWalkFragment.access$100(WeekWalkFragment.this));
        WeekWalkFragment.access$102(WeekWalkFragment.this, i);
        c.setTimeInMillis(WeekWalkFragment.access$200(WeekWalkFragment.this));
        WeekWalkFragment.access$302(WeekWalkFragment.this, -1);
        if (WeekWalkFragment.access$100(WeekWalkFragment.this) >= WeekWalkFragment.access$000(WeekWalkFragment.this)) goto _L2; else goto _L1
_L1:
        c.add(5, -7);
        WeekWalkFragment.access$302(WeekWalkFragment.this, 0);
        WeekWalkFragment.access$400(WeekWalkFragment.this, c);
_L4:
        WeekWalkFragment.access$202(WeekWalkFragment.this, c.getTimeInMillis());
        return;
_L2:
        if (WeekWalkFragment.access$100(WeekWalkFragment.this) > WeekWalkFragment.access$000(WeekWalkFragment.this))
        {
            c.add(5, 7);
            WeekWalkFragment.access$302(WeekWalkFragment.this, 1);
            WeekWalkFragment.access$400(WeekWalkFragment.this, c);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = WeekWalkFragment.this;
        super();
    }
}
