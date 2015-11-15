// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.widget.CompoundButton;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivitySetting, MovnowTwoApplication

class this._cls0
    implements android.widget.angeListener
{

    final SettingsActivitySetting this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (((Boolean)SharedPreferencesUtils.getSharedPreferences(SettingsActivitySetting.access$000(SettingsActivitySetting.this), "mile_set", Boolean.valueOf(false))).booleanValue() != flag)
        {
            SharedPreferencesUtils.setSharedPreferences(SettingsActivitySetting.access$000(SettingsActivitySetting.this), "mile_set", Boolean.valueOf(flag));
            if (flag)
            {
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_DistanceType", Integer.valueOf(1));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_Weight_Type", Integer.valueOf(0));
            } else
            {
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_DistanceType", Integer.valueOf(0));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_Weight_Type", Integer.valueOf(1));
            }
            MovnowTwoApplication.syncParams();
        }
    }

    ()
    {
        this$0 = SettingsActivitySetting.this;
        super();
    }
}
