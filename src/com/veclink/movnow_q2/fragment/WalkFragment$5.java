// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshScrollView;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.BindbandActivity;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WalkFragment

class this._cls0
    implements com.handmark.pulltorefresh.library.se.OnRefreshListener
{

    final WalkFragment this$0;

    public void onRefresh(PullToRefreshBase pulltorefreshbase)
    {
        if (Keeper.getBindDeviceMacAddress(application).equals(""))
        {
            WalkFragment.access$1100(WalkFragment.this).onRefreshComplete();
            WalkFragment.access$1400(WalkFragment.this, com/veclink/movnow_q2/activity/BindbandActivity);
            return;
        } else
        {
            WalkFragment.access$1500(WalkFragment.this);
            return;
        }
    }

    shBase()
    {
        this$0 = WalkFragment.this;
        super();
    }
}
