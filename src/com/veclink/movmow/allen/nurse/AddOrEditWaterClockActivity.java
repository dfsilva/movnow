// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.OnWheelScrollListener;
import com.veclink.movnow_q2.view.wheel.WheelView;
import java.util.Calendar;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            RemindBaseActivity, RemindObject

public class AddOrEditWaterClockActivity extends RemindBaseActivity
{

    public static final String REMINDWATER = "remindwater";
    public static final String WATER_HOUR = "water_hour";
    public static final String WATER_MINUTES = "water_minutes";
    public static final String WATER_REMINDCOUNT = "water_remindCount";
    public static final String WATER_REMINDCYLE = "water_remindCyle";
    public static final String WATER_REMINDRUNNINGTIME = "water_remindRunningTime";
    public static final String WATER_REMINDSERIALNUMBER = "remindSerialNumber";
    int editObjectPosition;
    RemindObject editRemindObject;
    TextView remind_label;

    public AddOrEditWaterClockActivity()
    {
    }

    private void editCurrentItemHourMinute()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            editObjectPosition = getIntent().getIntExtra("position", 0);
            editRemindObject = (RemindObject)bundle.getSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName());
            if (editRemindObject != null)
            {
                int i = editRemindObject.getHour();
                int j = editRemindObject.getMinute();
                hourWheel.setCurrentItem(i);
                minuteWheel.setCurrentItem(j);
                remindtitleLabel.setText(getString(0x7f0c00f1));
                return;
            } else
            {
                Calendar calendar = Calendar.getInstance();
                hourWheel.setCurrentItem(calendar.get(11));
                minuteWheel.setCurrentItem(calendar.get(12));
                return;
            }
        } else
        {
            Calendar calendar1 = Calendar.getInstance();
            hourWheel.setCurrentItem(calendar1.get(11));
            minuteWheel.setCurrentItem(calendar1.get(12));
            return;
        }
    }

    private String getRemindWaterTip(Context context)
    {
        Object obj;
        String s;
        int i;
        int j;
        s = context.getString(0x7f0c00fd);
        obj = Calendar.getInstance();
        i = ((Calendar) (obj)).get(11);
        j = ((Calendar) (obj)).get(12);
        obj = s;
        i;
        JVM INSTR tableswitch 6 22: default 112
    //                   6 141
    //                   7 114
    //                   8 151
    //                   9 114
    //                   10 161
    //                   11 114
    //                   12 114
    //                   13 114
    //                   14 114
    //                   15 171
    //                   16 114
    //                   17 181
    //                   18 200
    //                   19 114
    //                   20 219
    //                   21 114
    //                   22 229;
           goto _L1 _L2 _L3 _L4 _L3 _L5 _L3 _L3 _L3 _L3 _L6 _L3 _L7 _L8 _L3 _L9 _L3 _L10
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        obj = s;
_L12:
        s = ((String) (obj));
        if (i == 11)
        {
            s = ((String) (obj));
            if (j == 30)
            {
                s = context.getString(0x7f0c00f8);
            }
        }
        return s;
_L2:
        obj = context.getString(0x7f0c00f5);
        continue; /* Loop/switch isn't completed */
_L4:
        obj = context.getString(0x7f0c00f6);
        continue; /* Loop/switch isn't completed */
_L5:
        obj = context.getString(0x7f0c00f7);
        continue; /* Loop/switch isn't completed */
_L6:
        obj = context.getString(0x7f0c00f9);
        continue; /* Loop/switch isn't completed */
_L7:
        obj = s;
        if (j >= 30)
        {
            obj = context.getString(0x7f0c00fa);
        }
        continue; /* Loop/switch isn't completed */
_L8:
        obj = s;
        if (j <= 30)
        {
            obj = context.getString(0x7f0c00fa);
        }
        continue; /* Loop/switch isn't completed */
_L9:
        obj = context.getString(0x7f0c00fb);
        continue; /* Loop/switch isn't completed */
_L10:
        obj = context.getString(0x7f0c00fc);
        if (true) goto _L12; else goto _L11
_L11:
    }

    private String getRemindWaterTip(Context context, int i, int j)
    {
        String s;
        String s1;
        s1 = context.getString(0x7f0c00fd);
        s = s1;
        i;
        JVM INSTR tableswitch 6 22: default 96
    //                   6 131
    //                   7 100
    //                   8 142
    //                   9 100
    //                   10 153
    //                   11 100
    //                   12 100
    //                   13 100
    //                   14 100
    //                   15 164
    //                   16 100
    //                   17 175
    //                   18 196
    //                   19 100
    //                   20 217
    //                   21 100
    //                   22 228;
           goto _L1 _L2 _L3 _L4 _L3 _L5 _L3 _L3 _L3 _L3 _L6 _L3 _L7 _L8 _L3 _L9 _L3 _L10
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        s = s1;
_L12:
        s1 = s;
        if (i == 11)
        {
            s1 = s;
            if (j == 30)
            {
                s1 = context.getString(0x7f0c00f8);
            }
        }
        return s1;
_L2:
        s = context.getString(0x7f0c00f5);
        continue; /* Loop/switch isn't completed */
_L4:
        s = context.getString(0x7f0c00f6);
        continue; /* Loop/switch isn't completed */
_L5:
        s = context.getString(0x7f0c00f7);
        continue; /* Loop/switch isn't completed */
_L6:
        s = context.getString(0x7f0c00f9);
        continue; /* Loop/switch isn't completed */
_L7:
        s = s1;
        if (j >= 30)
        {
            s = context.getString(0x7f0c00fa);
        }
        continue; /* Loop/switch isn't completed */
_L8:
        s = s1;
        if (j <= 30)
        {
            s = context.getString(0x7f0c00fa);
        }
        continue; /* Loop/switch isn't completed */
_L9:
        s = context.getString(0x7f0c00fb);
        continue; /* Loop/switch isn't completed */
_L10:
        s = context.getString(0x7f0c00fc);
        if (true) goto _L12; else goto _L11
_L11:
    }

    protected void initView()
    {
        super.initView();
        remind_label = (TextView)findViewById(0x7f060022);
        remind_label.setText(getRemindWaterTip(this));
        titleBar.setTitleText(mContext.getString(0x7f0c00fe));
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final AddOrEditWaterClockActivity this$0;

            public void onClick(View view)
            {
                List list = StorageUtil.readRemindObject(mContext, "water_remind_objects_file.wao");
                MovnowTwoApplication movnowtwoapplication;
                int i;
                int j;
                if (editRemindObject == null)
                {
                    view = new RemindObject(getTimeStringValue(), mContext.getString(0x7f0c0103));
                    view.setHour(getHourWheelIntValue());
                    view.setMinute(getMinuteWheelIntValue());
                    list.add(view);
                    i = view.getHour();
                    j = view.getMinute();
                } else
                {
                    MovnowTwoApplication.cancelRemind(editRemindObject.getHour(), editRemindObject.getMinute(), "dringk_water_remind_action");
                    editRemindObject.setTime(getTimeStringValue());
                    editRemindObject.setHour(getHourWheelIntValue());
                    editRemindObject.setMinute(getMinuteWheelIntValue());
                    list.set(editObjectPosition, editRemindObject);
                    i = editRemindObject.getHour();
                    j = editRemindObject.getMinute();
                    view = editRemindObject;
                }
                movnowtwoapplication = (MovnowTwoApplication)getApplication();
                MovnowTwoApplication.setRemindAlarm(view, "dringk_water_remind_action");
                StorageUtil.writeRemindObject(mContext, list, "water_remind_objects_file.wao");
                view = new BleAlarmRemindParam(i, j, new int[] {
                    1, 1, 1, 1, 1, 1, 1
                });
                (new Thread(new SetRemindTask(mContext, 1, view))).start();
                finish();
            }

            
            {
                this$0 = AddOrEditWaterClockActivity.this;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001b);
        initView();
        initWheelViewData();
        editCurrentItemHourMinute();
        hourWheel.addScrollingListener(new OnWheelScrollListener() {

            final AddOrEditWaterClockActivity this$0;

            public void onScrollingFinished(WheelView wheelview)
            {
                int i = getHourWheelIntValue();
                int j = getMinuteWheelIntValue();
                remind_label.setText(getRemindWaterTip(mContext, i, j));
            }

            public void onScrollingStarted(WheelView wheelview)
            {
            }

            
            {
                this$0 = AddOrEditWaterClockActivity.this;
                super();
            }
        });
        minuteWheel.addScrollingListener(new OnWheelScrollListener() {

            final AddOrEditWaterClockActivity this$0;

            public void onScrollingFinished(WheelView wheelview)
            {
                int i = getHourWheelIntValue();
                int j = getMinuteWheelIntValue();
                remind_label.setText(getRemindWaterTip(mContext, i, j));
            }

            public void onScrollingStarted(WheelView wheelview)
            {
            }

            
            {
                this$0 = AddOrEditWaterClockActivity.this;
                super();
            }
        });
    }

}
