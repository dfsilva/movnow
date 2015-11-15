// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.util.Log;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            WalkDateHistoryRecordActivity

class this._cls0
    implements android.support.v4.view.vity._cls1
{

    final WalkDateHistoryRecordActivity this$0;

    public void onPageScrollStateChanged(int i)
    {
        currentPage = i;
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(WalkDateHistoryRecordActivity.access$000(WalkDateHistoryRecordActivity.this), WalkDateHistoryRecordActivity.access$100(WalkDateHistoryRecordActivity.this), i + 1);
        WalkDateHistoryRecordActivity.access$200(WalkDateHistoryRecordActivity.this).setTitleText(DateTimeUtil.getHistoryTitleDateString(calendar));
        Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("onPageSelected:").append(i).toString());
        WalkDateHistoryRecordActivity.access$400(WalkDateHistoryRecordActivity.this).set(5, WalkDateHistoryRecordActivity.access$300(WalkDateHistoryRecordActivity.this));
        WalkDateHistoryRecordActivity.access$400(WalkDateHistoryRecordActivity.this).add(5, i - (WalkDateHistoryRecordActivity.access$300(WalkDateHistoryRecordActivity.this) - 1));
        WalkDateHistoryRecordActivity.access$502(WalkDateHistoryRecordActivity.this, new Date(WalkDateHistoryRecordActivity.access$400(WalkDateHistoryRecordActivity.this).getTimeInMillis()));
    }

    ()
    {
        this$0 = WalkDateHistoryRecordActivity.this;
        super();
    }
}
