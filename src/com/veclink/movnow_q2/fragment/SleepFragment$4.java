// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.op.HealthyDBOprateSleepData;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DateTimeUtil;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            SleepFragment

class val.preDay extends Thread
{

    final SleepFragment this$0;
    final String val$currentDay;
    final String val$preDay;

    public void run()
    {
        Object obj = MovnowTwoApplication.application;
        List list = HealthyDBOprateSleepData.selectSleepDataByDay(((android.content.Context) (obj)), val$currentDay);
        List list1 = HealthyDBOprateSleepData.selectPreDaySleepData(((android.content.Context) (obj)), val$preDay);
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        boolean flag = false;
        int j1 = 0;
        int k = 0;
        int i1 = 0;
        int i = 0;
        if (list1 != null)
        {
            int k1 = 0;
            do
            {
                i1 = i;
                j1 = k;
                if (k1 >= list1.size())
                {
                    break;
                }
                i1 = ((SleepData)list1.get(k1)).getStartTime();
                Log.d("SleepFragment", (new StringBuilder()).append("\u524D\u4E00\u5929\u665A\u4E0A21:00-24:00-------------").append(DateTimeUtil.secToTime(i1 * 60)).toString());
                arraylist1.add(list1.get(k1));
                if ("0".equals(((SleepData)list1.get(k1)).getSleepState()))
                {
                    i += ((SleepData)list1.get(k1)).getSleepDuration();
                } else
                {
                    k += ((SleepData)list1.get(k1)).getSleepDuration();
                }
                k1++;
            } while (true);
        } else
        {
            new ArrayList();
        }
        if (list != null)
        {
            int j = 0;
            int l = ((flag) ? 1 : 0);
            while (j < list.size()) 
            {
                int l1 = ((SleepData)list.get(j)).getStartTime();
                l += ((SleepData)list.get(j)).getSleepDuration();
                if ("0".equals(((SleepData)list.get(j)).getSleepState()))
                {
                    i1 += ((SleepData)list.get(j)).getSleepDuration();
                } else
                {
                    j1 += ((SleepData)list.get(j)).getSleepDuration();
                }
                if (l1 >= 540)
                {
                    arraylist.add(list.get(j));
                } else
                {
                    arraylist1.add(list.get(j));
                }
                j++;
            }
        }
        obj = HealthyDBOprateSleepData.querySleepTotalTimeFromZeroToTwentyFour(((android.content.Context) (obj)), val$currentDay);
        SleepFragment.access$2100(SleepFragment.this).obtainMessage(0, obj).sendToTarget();
        SleepFragment.access$2100(SleepFragment.this).obtainMessage(1, arraylist).sendToTarget();
        SleepFragment.access$2100(SleepFragment.this).obtainMessage(2, arraylist1).sendToTarget();
    }

    SleepData()
    {
        this$0 = final_sleepfragment;
        val$currentDay = s;
        val$preDay = String.this;
        super();
    }
}
