// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.veclink.movmow.allen.nurse.AddOrEditWakeUpRemindActivity;
import com.veclink.movmow.allen.nurse.AddOrEditWaterClockActivity;
import com.veclink.movmow.allen.nurse.LongSittingRemindListActivity;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movmow.allen.nurse.WakeUpRemindListActivity;
import com.veclink.movmow.allen.nurse.WaterRemindListActivity;
import com.veclink.movnow_q2.activity.BMIActivity;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.RemindProgressBar;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class WaterFragment extends Fragment
    implements android.view.View.OnClickListener
{

    private RemindProgressBar bmiRemindProBar;
    private View bmi_layout;
    private Context mContext;
    private RemindProgressBar sittingLongRemindProBar;
    private View sitting_remind_layout;
    private TextView tvTime;
    private RemindProgressBar wakeupRemindProBar;
    private View wakeup_remind_layout;
    private RemindProgressBar waterRemindProBar;
    private View water_clock_layout;

    public WaterFragment()
    {
    }

    private void addViewListener()
    {
        water_clock_layout.setOnClickListener(this);
        sitting_remind_layout.setOnClickListener(this);
        wakeup_remind_layout.setOnClickListener(this);
        bmi_layout.setOnClickListener(this);
    }

    private void initView(View view)
    {
        water_clock_layout = view.findViewById(0x7f0600ee);
        sitting_remind_layout = view.findViewById(0x7f0600f0);
        wakeup_remind_layout = view.findViewById(0x7f0600f4);
        bmi_layout = view.findViewById(0x7f0600f2);
        tvTime = (TextView)view.findViewById(0x7f0600b3);
        waterRemindProBar = (RemindProgressBar)view.findViewById(0x7f0600ef);
        sittingLongRemindProBar = (RemindProgressBar)view.findViewById(0x7f0600f1);
        sittingLongRemindProBar.setTag("sittingLongRemindProBar");
        wakeupRemindProBar = (RemindProgressBar)view.findViewById(0x7f0600f5);
        bmiRemindProBar = (RemindProgressBar)view.findViewById(0x7f0600f3);
        tvTime.setText(StringUtil.fromatCurrDateByLanguage());
    }

    private void reFreshBarProgress(RemindProgressBar remindprogressbar, String s)
    {
label0:
        {
            s = StorageUtil.readRemindObject(mContext, s);
            Collections.sort(s);
            boolean flag = false;
            Iterator iterator = s.iterator();
            int i;
            do
            {
                i = ((flag) ? 1 : 0);
                if (!iterator.hasNext())
                {
                    break;
                }
                RemindObject remindobject = (RemindObject)iterator.next();
                Calendar calendar = Calendar.getInstance();
                int j = calendar.get(11) * 60 * 60 + calendar.get(12) * 60 + calendar.get(13);
                i = remindobject.getHour() * 60 * 60 + remindobject.getMinute() * 60;
                DebugUtil.logd(getTag(), (new StringBuilder()).append("progress:").append(j).append("  max:").append(i).toString());
                if (j > i)
                {
                    continue;
                }
                flag = true;
                remindprogressbar.setMax(i);
                i = ((flag) ? 1 : 0);
                if (j >= 0)
                {
                    remindprogressbar.setProgress(j);
                    i = ((flag) ? 1 : 0);
                }
                break;
            } while (true);
            if (i == 0)
            {
                remindprogressbar.setMax(100);
                if (s.size() <= 0)
                {
                    break label0;
                }
                remindprogressbar.setProgress(100);
                remindprogressbar.stopFreshView();
            }
            return;
        }
        remindprogressbar.setProgress(0);
        remindprogressbar.stopFreshView();
    }

    private void reFreshLongSittingProgress()
    {
        sittingLongRemindProBar.setProgress(0);
        sittingLongRemindProBar.stopFreshView();
    }

    private void setBarProgress()
    {
        bmiRemindProBar.stopFreshView();
        bmiRemindProBar.setProgress(0);
        reFreshBarProgress(waterRemindProBar, "water_remind_objects_file.wao");
        reFreshBarProgress(wakeupRemindProBar, "wakeup_remind_objects_file.wao");
        reFreshLongSittingProgress();
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public void onClick(View view)
    {
        Intent intent = new Intent();
        view.getId();
        JVM INSTR tableswitch 2131099886 2131099892: default 56
    //                   2131099886 65
    //                   2131099887 56
    //                   2131099888 110
    //                   2131099889 56
    //                   2131099890 134
    //                   2131099891 56
    //                   2131099892 148;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L1 _L5
_L1:
        getActivity().startActivity(intent);
        return;
_L2:
        if (StorageUtil.readRemindObject(mContext, "water_remind_objects_file.wao").size() > 0)
        {
            intent.setClass(mContext, com/veclink/movmow/allen/nurse/WaterRemindListActivity);
        } else
        {
            intent.setClass(mContext, com/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        StorageUtil.readRemindObject(mContext, "sitting_remind_objects_file.wao");
        intent.setClass(mContext, com/veclink/movmow/allen/nurse/LongSittingRemindListActivity);
        continue; /* Loop/switch isn't completed */
_L4:
        intent.setClass(mContext, com/veclink/movnow_q2/activity/BMIActivity);
        continue; /* Loop/switch isn't completed */
_L5:
        if (StorageUtil.readRemindObject(mContext, "wakeup_remind_objects_file.wao").size() > 0)
        {
            intent.setClass(mContext, com/veclink/movmow/allen/nurse/WakeUpRemindListActivity);
        } else
        {
            intent.setClass(mContext, com/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity);
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f03003c, viewgroup, false);
        mContext = getActivity();
        initView(layoutinflater);
        addViewListener();
        setBarProgress();
        return layoutinflater;
    }

    public void onResume()
    {
        super.onResume();
        setBarProgress();
    }
}
