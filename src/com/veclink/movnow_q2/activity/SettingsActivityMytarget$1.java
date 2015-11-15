// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMytarget, MovnowTwoApplication

class this._cls0
    implements android.view.ctivityMytarget._cls1
{

    final SettingsActivityMytarget this$0;

    public void onClick(View view)
    {
        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_wan", Integer.valueOf(SettingsActivityMytarget.access$000(SettingsActivityMytarget.this).getCurrentItem()));
        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_qian", Integer.valueOf(SettingsActivityMytarget.access$100(SettingsActivityMytarget.this).getCurrentItem()));
        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_bai", Integer.valueOf(SettingsActivityMytarget.access$200(SettingsActivityMytarget.this).getCurrentItem()));
        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_shi", Integer.valueOf(SettingsActivityMytarget.access$300(SettingsActivityMytarget.this).getCurrentItem()));
        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_ge", Integer.valueOf(SettingsActivityMytarget.access$400(SettingsActivityMytarget.this).getCurrentItem()));
        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget", SettingsActivityMytarget.access$500(SettingsActivityMytarget.this));
        MovnowTwoApplication.syncParams();
        if (!SettingsActivityMytarget.access$600(SettingsActivityMytarget.this))
        {
            finish();
            return;
        } else
        {
            SettingsActivityMytarget.access$700(SettingsActivityMytarget.this);
            return;
        }
    }

    ()
    {
        this$0 = SettingsActivityMytarget.this;
        super();
    }
}
