// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingSittingRemindTime

class this._cls0
    implements android.view.ttingRemindTime._cls1
{

    final SettingSittingRemindTime this$0;

    public void onClick(View view)
    {
        SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(timeBeginHour));
        SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_time_begin_minute", Integer.valueOf(timeBeginMinute));
        SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_time_end_hour", Integer.valueOf(timeEndHour));
        SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_time_end_minute", Integer.valueOf(timeEndMinute));
        finish();
    }

    ()
    {
        this$0 = SettingSittingRemindTime.this;
        super();
    }
}
