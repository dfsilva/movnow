// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Dialog;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDeviceSleepTime

class this._cls0
    implements android.view.DeviceSleepTime._cls2
{

    final SettingsActivityMyDeviceSleepTime this$0;

    public void onClick(View view)
    {
        if (SettingsActivityMyDeviceSleepTime.access$000(SettingsActivityMyDeviceSleepTime.this) == evSleeptimeBegin)
        {
            evSleeptimeBegin.setText(String.format("%02d:%02d", new Object[] {
                Integer.valueOf(hourWheel.getCurrentItem()), Integer.valueOf(minuteWheel.getCurrentItem())
            }));
            SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sleep_time_begin_hour", Integer.valueOf(hourWheel.getCurrentItem()));
            SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sleep_time_begin_minute", Integer.valueOf(minuteWheel.getCurrentItem()));
        } else
        if (SettingsActivityMyDeviceSleepTime.access$000(SettingsActivityMyDeviceSleepTime.this) == evSleeptimeEnd)
        {
            evSleeptimeEnd.setText(String.format("%02d:%02d", new Object[] {
                Integer.valueOf(hourWheel.getCurrentItem()), Integer.valueOf(minuteWheel.getCurrentItem())
            }));
            SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sleep_time_end_hour", Integer.valueOf(hourWheel.getCurrentItem()));
            SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sleep_time_end_minute", Integer.valueOf(minuteWheel.getCurrentItem()));
        } else
        {
            Log.e("SettingsActivityMyDeviceSleepTime", "evCurrent err!");
        }
        selectPortaitDialog.dismiss();
    }

    ()
    {
        this$0 = SettingsActivityMyDeviceSleepTime.this;
        super();
    }
}
