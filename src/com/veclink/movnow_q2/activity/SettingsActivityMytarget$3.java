// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import com.veclink.movnow_q2.view.wheel.OnWheelScrollListener;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMytarget

class this._cls0
    implements OnWheelScrollListener
{

    final SettingsActivityMytarget this$0;

    public void onScrollingFinished(WheelView wheelview)
    {
        SettingsActivityMytarget.access$802(SettingsActivityMytarget.this, false);
        SettingsActivityMytarget.access$300(SettingsActivityMytarget.this).setCurrentItem(0);
        SettingsActivityMytarget.access$400(SettingsActivityMytarget.this).setCurrentItem(0);
    }

    public void onScrollingStarted(WheelView wheelview)
    {
        SettingsActivityMytarget.access$802(SettingsActivityMytarget.this, true);
    }

    ()
    {
        this$0 = SettingsActivityMytarget.this;
        super();
    }
}
