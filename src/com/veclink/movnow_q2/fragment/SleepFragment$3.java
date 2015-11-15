// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.SleepStatus;
import com.veclink.movnow_q2.view.RoundProgressBar;
import com.veclink.movnow_q2.view.SleepBarGraphView;
import com.veclink.movnow_q2.view.SleepHideBarGraphView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            SleepFragment

class this._cls0 extends Handler
{

    final SleepFragment this$0;

    public void handleMessage(Message message)
    {
        int j;
        int l;
        int j1;
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            message = (SleepStatus)message.obj;
            SleepFragment.access$200(SleepFragment.this).setMax(1440);
            SleepFragment.access$200(SleepFragment.this).setProgress(message.getTotalTimes());
            SleepFragment.access$600(SleepFragment.this).setText(DateTimeUtil.secToTime(message.getTotalTimes() * 60));
            SleepFragment.access$700(SleepFragment.this).setText(DateTimeUtil.secToTime(message.getLightTimes() * 60));
            SleepFragment.access$800(SleepFragment.this).setText(DateTimeUtil.secToTime(message.getDeepTimes() * 60));
            return;

        case 1: // '\001'
            message = (ArrayList)message.obj;
            int i1 = 0;
            int k = 0;
            int i = 0;
            SleepFragment.access$1000(SleepFragment.this).init(message, SleepFragment.access$900(SleepFragment.this), false);
            SleepFragment.access$1000(SleepFragment.this).invalidate();
            SleepFragment.access$1100(SleepFragment.this).init(message, SleepFragment.access$900(SleepFragment.this), false);
            SleepFragment.access$1100(SleepFragment.this).invalidate();
            SleepFragment.access$1202(SleepFragment.this, message);
            for (message = message.iterator(); message.hasNext();)
            {
                SleepData sleepdata = (SleepData)message.next();
                i1 += sleepdata.getSleepDuration();
                if (sleepdata != null && sleepdata.getSleepState().equals("0"))
                {
                    k += sleepdata.getSleepDuration();
                } else
                {
                    i += sleepdata.getSleepDuration();
                }
            }

            Log.d("SleepFragment", (new StringBuilder()).append("daytime:").append(i1).toString());
            Log.d("SleepFragment", (new StringBuilder()).append("daytimeDeepTime:").append(k).toString());
            Log.d("SleepFragment", (new StringBuilder()).append("daytimeLightTime:").append(i).toString());
            SleepFragment.access$1300(SleepFragment.this).setText(DateTimeUtil.secToTime(i1 * 60));
            SleepFragment.access$1400(SleepFragment.this).setText(DateTimeUtil.secToTime(k * 60));
            SleepFragment.access$1500(SleepFragment.this).setText(DateTimeUtil.secToTime(i * 60));
            return;

        case 2: // '\002'
            message = (ArrayList)message.obj;
            SleepFragment.access$1602(SleepFragment.this, message);
            SleepFragment.access$1000(SleepFragment.this).init(message, SleepFragment.access$1700(SleepFragment.this), true);
            SleepFragment.access$1000(SleepFragment.this).postInvalidate();
            SleepFragment.access$1100(SleepFragment.this).init(message, SleepFragment.access$1700(SleepFragment.this), true);
            SleepFragment.access$1100(SleepFragment.this).postInvalidate();
            j1 = 0;
            l = 0;
            j = 0;
            message = message.iterator();
            break;
        }
        while (message.hasNext()) 
        {
            SleepData sleepdata1 = (SleepData)message.next();
            j1 += sleepdata1.getSleepDuration();
            if (sleepdata1 != null && sleepdata1.getSleepState().equals("0"))
            {
                l += sleepdata1.getSleepDuration();
            } else
            {
                j += sleepdata1.getSleepDuration();
            }
        }
        Log.d("SleepFragment", (new StringBuilder()).append("atnightTotal:").append(j1).toString());
        Log.d("SleepFragment", (new StringBuilder()).append("atnightDeepTime:").append(l).toString());
        Log.d("SleepFragment", (new StringBuilder()).append("atnightLightTime:").append(j).toString());
        SleepFragment.access$1800(SleepFragment.this).setText(DateTimeUtil.secToTime(j1 * 60));
        SleepFragment.access$1900(SleepFragment.this).setText(DateTimeUtil.secToTime(l * 60));
        SleepFragment.access$2000(SleepFragment.this).setText(DateTimeUtil.secToTime(j * 60));
    }

    w()
    {
        this$0 = SleepFragment.this;
        super();
    }
}
