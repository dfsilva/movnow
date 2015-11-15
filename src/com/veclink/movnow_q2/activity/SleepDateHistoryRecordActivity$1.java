// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.SleepStatus;
import com.veclink.movnow_q2.view.SleepBarGraphView;
import com.veclink.movnow_q2.view.SleepHideBarGraphView;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SleepDateHistoryRecordActivity

class this._cls0 extends Handler
{

    final SleepDateHistoryRecordActivity this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 33
    //                   1 201
    //                   2 640;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if ((message = (SparseArray)message.obj) != null && message.size() > 0)
        {
            int i = message.size();
            while (i > 0) 
            {
                if (message.get(i) != null)
                {
                    ((TextView)SleepDateHistoryRecordActivity.access$000(SleepDateHistoryRecordActivity.this).get(i - 1)).setText(DateTimeUtil.secToTime(((SleepStatus)message.get(i)).getTotalTimes() * 60));
                    ((TextView)SleepDateHistoryRecordActivity.access$100(SleepDateHistoryRecordActivity.this).get(i - 1)).setText(DateTimeUtil.secToTime(((SleepStatus)message.get(i)).getLightTimes() * 60));
                    ((TextView)SleepDateHistoryRecordActivity.access$200(SleepDateHistoryRecordActivity.this).get(i - 1)).setText(DateTimeUtil.secToTime(((SleepStatus)message.get(i)).getDeepTimes() * 60));
                }
                i--;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        message = (SparseArray)message.obj;
        SleepDateHistoryRecordActivity.access$302(SleepDateHistoryRecordActivity.this, message);
        if (message != null && message.size() > 0)
        {
            int j = message.size();
            while (j > 0) 
            {
                int l1 = 0;
                int j1 = 0;
                int l = 0;
                if (message.get(j) != null)
                {
                    ((SleepBarGraphView)SleepDateHistoryRecordActivity.access$500(SleepDateHistoryRecordActivity.this).get(j - 1)).init((List)message.get(j), SleepDateHistoryRecordActivity.access$400(SleepDateHistoryRecordActivity.this), false);
                    ((SleepBarGraphView)SleepDateHistoryRecordActivity.access$500(SleepDateHistoryRecordActivity.this).get(j - 1)).invalidate();
                    ((SleepHideBarGraphView)SleepDateHistoryRecordActivity.access$600(SleepDateHistoryRecordActivity.this).get(j - 1)).init((List)message.get(j), SleepDateHistoryRecordActivity.access$400(SleepDateHistoryRecordActivity.this), false);
                    ((SleepHideBarGraphView)SleepDateHistoryRecordActivity.access$600(SleepDateHistoryRecordActivity.this).get(j - 1)).invalidate();
                    for (Iterator iterator = ((List)message.get(j)).iterator(); iterator.hasNext();)
                    {
                        SleepData sleepdata = (SleepData)iterator.next();
                        l1 += sleepdata.getSleepDuration();
                        if (sleepdata != null && sleepdata.getSleepState().equals("0"))
                        {
                            j1 += sleepdata.getSleepDuration();
                        } else
                        {
                            l += sleepdata.getSleepDuration();
                        }
                    }

                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("daytimeTotal:").append(l1).toString());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("daytimeDeepTime:").append(j1).toString());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("daytimeLightTime:").append(l).toString());
                    ((TextView)SleepDateHistoryRecordActivity.access$700(SleepDateHistoryRecordActivity.this).get(j - 1)).setText(DateTimeUtil.secToTime(l1 * 60));
                    ((TextView)SleepDateHistoryRecordActivity.access$800(SleepDateHistoryRecordActivity.this).get(j - 1)).setText(DateTimeUtil.secToTime(j1 * 60));
                    ((TextView)SleepDateHistoryRecordActivity.access$900(SleepDateHistoryRecordActivity.this).get(j - 1)).setText(DateTimeUtil.secToTime(l * 60));
                }
                j--;
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        message = (SparseArray)message.obj;
        SleepDateHistoryRecordActivity.access$1002(SleepDateHistoryRecordActivity.this, message);
        if (message != null && message.size() > 0)
        {
            int k = message.size();
            while (k > 0) 
            {
                int i2 = 0;
                int k1 = 0;
                int i1 = 0;
                if (message.get(k) != null)
                {
                    ((SleepBarGraphView)SleepDateHistoryRecordActivity.access$500(SleepDateHistoryRecordActivity.this).get(k - 1)).init((List)message.get(k), SleepDateHistoryRecordActivity.access$1100(SleepDateHistoryRecordActivity.this), true);
                    ((SleepBarGraphView)SleepDateHistoryRecordActivity.access$500(SleepDateHistoryRecordActivity.this).get(k - 1)).invalidate();
                    ((SleepHideBarGraphView)SleepDateHistoryRecordActivity.access$600(SleepDateHistoryRecordActivity.this).get(k - 1)).init((List)message.get(k), SleepDateHistoryRecordActivity.access$1100(SleepDateHistoryRecordActivity.this), true);
                    ((SleepHideBarGraphView)SleepDateHistoryRecordActivity.access$600(SleepDateHistoryRecordActivity.this).get(k - 1)).invalidate();
                    for (Iterator iterator1 = ((List)message.get(k)).iterator(); iterator1.hasNext();)
                    {
                        SleepData sleepdata1 = (SleepData)iterator1.next();
                        i2 += sleepdata1.getSleepDuration();
                        if (sleepdata1 != null && sleepdata1.getSleepState().equals("0"))
                        {
                            k1 += sleepdata1.getSleepDuration();
                        } else
                        {
                            i1 += sleepdata1.getSleepDuration();
                        }
                    }

                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("atnightTotal:").append(i2).toString());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("atnightDeepTime:").append(k1).toString());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("atnightLightTime:").append(i1).toString());
                    ((TextView)SleepDateHistoryRecordActivity.access$1200(SleepDateHistoryRecordActivity.this).get(k - 1)).setText(DateTimeUtil.secToTime(i2 * 60));
                    ((TextView)SleepDateHistoryRecordActivity.access$1300(SleepDateHistoryRecordActivity.this).get(k - 1)).setText(DateTimeUtil.secToTime(k1 * 60));
                    ((TextView)SleepDateHistoryRecordActivity.access$1400(SleepDateHistoryRecordActivity.this).get(k - 1)).setText(DateTimeUtil.secToTime(i1 * 60));
                }
                k--;
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    ()
    {
        this$0 = SleepDateHistoryRecordActivity.this;
        super();
    }
}
