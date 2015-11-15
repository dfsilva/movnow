// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.view.HistotySleepDataView;
import com.veclink.movnow_q2.view.SleepHideBarGraphView;
import com.veclink.movnow_q2.view.WeekSleepPagerItemView;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WeekSleepFragment

class this._cls0 extends Handler
{

    final WeekSleepFragment this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 37
    //                   1 182
    //                   2 300
    //                   3 418;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        int i1 = 0;
        message = (List)message.obj;
        if (message != null && message.size() > 0)
        {
            WeekSleepPagerItemView weeksleeppageritemview = (WeekSleepPagerItemView)WeekSleepFragment.access$100(WeekSleepFragment.this).getView(WeekSleepFragment.access$000(WeekSleepFragment.this));
            weeksleeppageritemview.getHistotySleepTotal().setDataInfo(message);
            weeksleeppageritemview.getHistotySleepTotal().invalidate();
            for (int i = 0; i < message.size(); i++)
            {
                i1 += ((SleepData)message.get(i)).getSleepDuration();
            }

            weeksleeppageritemview.getTvSleepTotal().setText((new StringBuilder()).append(i1).append("").toString());
            weeksleeppageritemview.getTvSleepTotal().setText(DateTimeUtil.secToTime(i1 * 60));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        int j1 = 0;
        message = (List)message.obj;
        if (message != null && message.size() > 0)
        {
            WeekSleepPagerItemView weeksleeppageritemview1 = (WeekSleepPagerItemView)WeekSleepFragment.access$100(WeekSleepFragment.this).getView(WeekSleepFragment.access$000(WeekSleepFragment.this));
            weeksleeppageritemview1.getHistotyDeepSleep().setDataInfo(message);
            weeksleeppageritemview1.getHistotyDeepSleep().invalidate();
            for (int j = 0; j < message.size(); j++)
            {
                j1 += ((SleepData)message.get(j)).getSleepDuration();
            }

            weeksleeppageritemview1.getTvSleepDeep().setText(DateTimeUtil.secToTime(j1 * 60));
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
        int k1 = 0;
        message = (List)message.obj;
        if (message != null && message.size() > 0)
        {
            WeekSleepPagerItemView weeksleeppageritemview2 = (WeekSleepPagerItemView)WeekSleepFragment.access$100(WeekSleepFragment.this).getView(WeekSleepFragment.access$000(WeekSleepFragment.this));
            weeksleeppageritemview2.getHistotyLightSleep().setDataInfo(message);
            weeksleeppageritemview2.getHistotyLightSleep().invalidate();
            for (int k = 0; k < message.size(); k++)
            {
                k1 += ((SleepData)message.get(k)).getSleepDuration();
            }

            weeksleeppageritemview2.getTvSleepLight().setText(DateTimeUtil.secToTime(k1 * 60));
            return;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        int l1 = 0;
        int l = 0;
        Object obj = (List)message.obj;
        if (obj != null && ((List) (obj)).size() > 0)
        {
            Log.d("WeekSleepFragment", (new StringBuilder()).append("\u6BCF\u4E2A\u661F\u671F\u7684size:").append(((List) (obj)).size()).toString());
            message = (WeekSleepPagerItemView)WeekSleepFragment.access$100(WeekSleepFragment.this).getView(WeekSleepFragment.access$000(WeekSleepFragment.this));
            message.getSleepGraphHideView().init((List)((List) (obj)).get(0), WeekSleepFragment.access$200(WeekSleepFragment.this), true);
            message.getSleepGraphHideView().invalidate();
            message.getLlHistorySportMon().setSelected(true);
            message.getLlHistorySportTues().setSelected(false);
            message.getLlHistorySportWen().setSelected(false);
            message.getLlHistorySportThus().setSelected(false);
            message.getLlHistorySportFri().setSelected(false);
            message.getLlHistorySportSat().setSelected(false);
            message.getLlHistorySportSun().setSelected(false);
            if (((List) (obj)).get(0) != null)
            {
                Iterator iterator = ((List)((List) (obj)).get(0)).iterator();
                do
                {
                    l1 = l;
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)iterator.next()).getSleepDuration();
                } while (true);
            }
            message.getTvMon().setText(DateTimeUtil.secToTime(l1 * 60));
            l1 = 0;
            l = 0;
            if (((List) (obj)).get(1) != null)
            {
                Iterator iterator1 = ((List)((List) (obj)).get(1)).iterator();
                do
                {
                    l1 = l;
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)iterator1.next()).getSleepDuration();
                } while (true);
            }
            message.getTvTues().setText(DateTimeUtil.secToTime(l1 * 60));
            l1 = 0;
            l = 0;
            if (((List) (obj)).get(2) != null)
            {
                Iterator iterator2 = ((List)((List) (obj)).get(2)).iterator();
                do
                {
                    l1 = l;
                    if (!iterator2.hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)iterator2.next()).getSleepDuration();
                } while (true);
            }
            message.getTvWen().setText(DateTimeUtil.secToTime(l1 * 60));
            l1 = 0;
            l = 0;
            if (((List) (obj)).get(3) != null)
            {
                Iterator iterator3 = ((List)((List) (obj)).get(3)).iterator();
                do
                {
                    l1 = l;
                    if (!iterator3.hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)iterator3.next()).getSleepDuration();
                } while (true);
            }
            message.getTvThus().setText(DateTimeUtil.secToTime(l1 * 60));
            l1 = 0;
            l = 0;
            if (((List) (obj)).get(4) != null)
            {
                Iterator iterator4 = ((List)((List) (obj)).get(4)).iterator();
                do
                {
                    l1 = l;
                    if (!iterator4.hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)iterator4.next()).getSleepDuration();
                } while (true);
            }
            message.getTvFri().setText(DateTimeUtil.secToTime(l1 * 60));
            l1 = 0;
            l = 0;
            if (((List) (obj)).get(5) != null)
            {
                Iterator iterator5 = ((List)((List) (obj)).get(5)).iterator();
                do
                {
                    l1 = l;
                    if (!iterator5.hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)iterator5.next()).getSleepDuration();
                } while (true);
            }
            message.getTvSat().setText(DateTimeUtil.secToTime(l1 * 60));
            l1 = 0;
            l = 0;
            if (((List) (obj)).get(6) != null)
            {
                obj = ((List)((List) (obj)).get(6)).iterator();
                do
                {
                    l1 = l;
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    l += ((SleepData)((Iterator) (obj)).next()).getSleepDuration();
                } while (true);
            }
            message.getTvSun().setText(DateTimeUtil.secToTime(l1 * 60));
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    ewPaperAdapter()
    {
        this$0 = WeekSleepFragment.this;
        super();
    }
}
