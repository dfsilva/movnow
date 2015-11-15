// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.movnow_q2.view.calendar.CaldroidListener;
import java.util.Date;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SleepHistoryRecordActivity, SleepDateHistoryRecordActivity

class this._cls0 extends CaldroidListener
{

    final SleepHistoryRecordActivity this$0;

    public void onCaldroidViewCreated()
    {
    }

    public void onChangeMonth(int i, int j)
    {
    }

    public void onLongClickDate(Date date, View view)
    {
    }

    public void onSelectDate(Date date, View view)
    {
        date.getMonth();
        SleepDateHistoryRecordActivity.launchActivity(SleepHistoryRecordActivity.this, date);
    }

    y()
    {
        this$0 = SleepHistoryRecordActivity.this;
        super();
    }
}
