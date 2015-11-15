// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Dialog;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingSittingRemindTime

class this._cls0
    implements android.view.ttingRemindTime._cls2
{

    final SettingSittingRemindTime this$0;

    public void onClick(View view)
    {
        if (SettingSittingRemindTime.access$000(SettingSittingRemindTime.this) == evSleeptimeBegin)
        {
            evSleeptimeBegin.setText(String.format("%02d:%02d", new Object[] {
                Integer.valueOf(hourWheel.getCurrentItem()), Integer.valueOf(minuteWheel.getCurrentItem())
            }));
            timeBeginHour = hourWheel.getCurrentItem();
            timeBeginMinute = minuteWheel.getCurrentItem();
        } else
        if (SettingSittingRemindTime.access$000(SettingSittingRemindTime.this) == evSleeptimeEnd)
        {
            evSleeptimeEnd.setText(String.format("%02d:%02d", new Object[] {
                Integer.valueOf(hourWheel.getCurrentItem()), Integer.valueOf(minuteWheel.getCurrentItem())
            }));
            timeEndHour = hourWheel.getCurrentItem();
            timeEndMinute = minuteWheel.getCurrentItem();
        } else
        {
            Log.e("SettingsActivityMySittingRemindTime", "evCurrent err!");
        }
        selectPortaitDialog.dismiss();
    }

    ()
    {
        this$0 = SettingSittingRemindTime.this;
        super();
    }
}
