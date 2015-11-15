// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.view.View;
import android.widget.AdapterView;
import com.veclink.movnow_q2.util.StringUtil;
import hirondelle.date4j.DateTime;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

// Referenced classes of package com.veclink.movnow_q2.view.calendar:
//            CaldroidFragment, CalendarHelper, CaldroidListener

class this._cls0
    implements android.widget.lickListener
{

    final CaldroidFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (DateTime)dateInMonthsList.get(i);
        if (CaldroidFragment.access$000(CaldroidFragment.this) != null && (enableClickOnDisabledDates || (minDateTime == null || !adapterview.lt(minDateTime)) && (maxDateTime == null || !adapterview.gt(maxDateTime)) && (disableDates == null || disableDates.indexOf(adapterview) == -1)))
        {
            if (Integer.parseInt(formatterMonth.format(adapterview = CalendarHelper.convertDateTimeToDate(adapterview))) <= Integer.parseInt(StringUtil.formatCurrDate("yyyyMMdd")))
            {
                CaldroidFragment.access$000(CaldroidFragment.this).onSelectDate(adapterview, view);
                return;
            }
        }
    }

    ()
    {
        this$0 = CaldroidFragment.this;
        super();
    }
}
