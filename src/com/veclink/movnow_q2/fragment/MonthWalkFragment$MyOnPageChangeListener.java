// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import java.util.Calendar;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            MonthWalkFragment

class this._cls0
    implements android.support.v4.view.stener
{

    final MonthWalkFragment this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        MonthWalkFragment.access$002(MonthWalkFragment.this, MonthWalkFragment.access$100(MonthWalkFragment.this));
        MonthWalkFragment.access$102(MonthWalkFragment.this, i);
        c.setTimeInMillis(MonthWalkFragment.access$200(MonthWalkFragment.this));
        MonthWalkFragment.access$302(MonthWalkFragment.this, -1);
        if (MonthWalkFragment.access$100(MonthWalkFragment.this) >= MonthWalkFragment.access$000(MonthWalkFragment.this)) goto _L2; else goto _L1
_L1:
        c.add(2, -1);
        MonthWalkFragment.access$302(MonthWalkFragment.this, 0);
        MonthWalkFragment.access$400(MonthWalkFragment.this, c);
_L4:
        MonthWalkFragment.access$202(MonthWalkFragment.this, c.getTimeInMillis());
        return;
_L2:
        if (MonthWalkFragment.access$100(MonthWalkFragment.this) > MonthWalkFragment.access$000(MonthWalkFragment.this))
        {
            c.add(2, 1);
            MonthWalkFragment.access$302(MonthWalkFragment.this, 1);
            MonthWalkFragment.access$400(MonthWalkFragment.this, c);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = MonthWalkFragment.this;
        super();
    }
}
