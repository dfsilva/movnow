// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.op.HealthyDBOprateSleepData;
import com.veclink.movnow_q2.util.SleepStatus;
import com.veclink.movnow_q2.util.StringUtil;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SleepDateHistoryRecordActivity

class this._cls0 extends Thread
{

    final SleepDateHistoryRecordActivity this$0;

    public void run()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, SleepDateHistoryRecordActivity.access$1800(SleepDateHistoryRecordActivity.this));
        calendar.set(2, SleepDateHistoryRecordActivity.access$1900(SleepDateHistoryRecordActivity.this));
        calendar.set(5, SleepDateHistoryRecordActivity.access$1800(SleepDateHistoryRecordActivity.this));
        SparseArray sparsearray = new SparseArray();
        SparseArray sparsearray1 = new SparseArray();
        SparseArray sparsearray2 = new SparseArray();
        for (int l1 = SleepDateHistoryRecordActivity.access$1800(SleepDateHistoryRecordActivity.this); l1 > 0; l1--)
        {
            Object obj = StringUtil.formatCurrDate(calendar.getTime());
            calendar.add(5, -1);
            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("currentDay:").append(((String) (obj))).toString());
            Object obj1 = StringUtil.formatCurrDate(calendar.getTime());
            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("preDay:").append(((String) (obj1))).toString());
            obj = HealthyDBOprateSleepData.selectSleepDataByDay(SleepDateHistoryRecordActivity.access$2000(SleepDateHistoryRecordActivity.this), ((String) (obj)));
            List list = HealthyDBOprateSleepData.selectPreDaySleepData(SleepDateHistoryRecordActivity.access$2000(SleepDateHistoryRecordActivity.this), ((String) (obj1)));
            obj1 = new ArrayList();
            ArrayList arraylist = new ArrayList();
            int k = 0;
            int k1 = 0;
            int j = 0;
            int j1 = 0;
            int i = 0;
            int l = 0;
            if (list != null)
            {
                int i2 = 0;
                do
                {
                    i = l;
                    j = j1;
                    k = k1;
                    if (i2 >= list.size())
                    {
                        break;
                    }
                    ((SleepData)list.get(i2)).getStartTime();
                    k1 += ((SleepData)list.get(i2)).getSleepDuration();
                    arraylist.add(list.get(i2));
                    if ("0".equals(((SleepData)list.get(i2)).getSleepState()))
                    {
                        l += ((SleepData)list.get(i2)).getSleepDuration();
                    } else
                    {
                        j1 += ((SleepData)list.get(i2)).getSleepDuration();
                    }
                    i2++;
                } while (true);
            } else
            {
                new ArrayList();
            }
            j1 = i;
            k1 = j;
            int j2 = k;
            if (obj != null)
            {
                int i1 = 0;
                do
                {
                    j1 = i;
                    k1 = j;
                    j2 = k;
                    if (i1 >= ((List) (obj)).size())
                    {
                        break;
                    }
                    int k2 = ((SleepData)((List) (obj)).get(i1)).getStartTime();
                    j1 = i;
                    k1 = j;
                    j2 = k;
                    if (k2 < 540)
                    {
                        j2 = k + ((SleepData)((List) (obj)).get(i1)).getSleepDuration();
                        if ("0".equals(((SleepData)((List) (obj)).get(i1)).getSleepState()))
                        {
                            j1 = i + ((SleepData)((List) (obj)).get(i1)).getSleepDuration();
                            k1 = j;
                        } else
                        {
                            k1 = j + ((SleepData)((List) (obj)).get(i1)).getSleepDuration();
                            j1 = i;
                        }
                    }
                    if (k2 >= 540)
                    {
                        ((List) (obj1)).add(((List) (obj)).get(i1));
                    } else
                    {
                        arraylist.add(((List) (obj)).get(i1));
                    }
                    i1++;
                    i = j1;
                    j = k1;
                    k = j2;
                } while (true);
            }
            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("totalDuration :").append(j2).toString());
            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("lightSleep:").append(k1).toString());
            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("deepSleep:").append(j1).toString());
            obj = new SleepStatus();
            ((SleepStatus) (obj)).setTotalTimes(j2);
            ((SleepStatus) (obj)).setDeepTimes(j1);
            ((SleepStatus) (obj)).setLightTimes(k1);
            sparsearray.put(l1, obj);
            sparsearray1.put(l1, arraylist);
            sparsearray2.put(l1, obj1);
            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("day:").append(l1).toString());
        }

        SleepDateHistoryRecordActivity.access$2100(SleepDateHistoryRecordActivity.this).obtainMessage(0, sparsearray).sendToTarget();
        SleepDateHistoryRecordActivity.access$2100(SleepDateHistoryRecordActivity.this).obtainMessage(1, sparsearray2).sendToTarget();
        SleepDateHistoryRecordActivity.access$2100(SleepDateHistoryRecordActivity.this).obtainMessage(2, sparsearray1).sendToTarget();
    }

    ()
    {
        this$0 = SleepDateHistoryRecordActivity.this;
        super();
    }
}
