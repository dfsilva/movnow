// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshScrollView;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.BindbandActivity;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            SleepFragment

class this._cls0
    implements com.handmark.pulltorefresh.library.e.OnRefreshListener
{

    final SleepFragment this$0;

    public void onRefresh(PullToRefreshBase pulltorefreshbase)
    {
        if (Keeper.getBindDeviceMacAddress(application).equals(""))
        {
            SleepFragment.access$300(SleepFragment.this).onRefreshComplete();
            SleepFragment.access$500(SleepFragment.this, com/veclink/movnow_q2/activity/BindbandActivity);
            return;
        } else
        {
            syncSleepData();
            return;
        }
    }

    hBase()
    {
        this$0 = SleepFragment.this;
        super();
    }
}
