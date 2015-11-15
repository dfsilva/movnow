// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.util.Calendar;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SleepDateHistoryRecordActivity

class this._cls0
    implements android.support.v4.view.vity._cls2
{

    final SleepDateHistoryRecordActivity this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(SleepDateHistoryRecordActivity.access$1500(SleepDateHistoryRecordActivity.this), SleepDateHistoryRecordActivity.access$1600(SleepDateHistoryRecordActivity.this), i + 1);
        SleepDateHistoryRecordActivity.access$1700(SleepDateHistoryRecordActivity.this).setTitleText(DateTimeUtil.getHistoryTitleDateString(calendar));
    }

    ()
    {
        this$0 = SleepDateHistoryRecordActivity.this;
        super();
    }
}
