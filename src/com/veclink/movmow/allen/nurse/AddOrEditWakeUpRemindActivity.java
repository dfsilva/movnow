// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.WheelView;
import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            RemindBaseActivity, RemindObject

public class AddOrEditWakeUpRemindActivity extends RemindBaseActivity
{

    public static final String WAKEUPREMIAND = "wakeupremind";
    public static final String WAKEUP_ALARMHOUR = "alarmHour";
    public static final String WAKEUP_ALARMMINUTE = "alarmMinute";
    public static final String WAKEUP_REPEATDAY = "repeatDay";
    private final int DAY_ORDER[] = {
        1, 2, 3, 4, 5, 6, 7
    };
    private ViewGroup dayButtonParents[];
    private ToggleButton dayButtons[];
    int editObjectPosition;
    RemindObject editRemindObject;
    private LayoutInflater mFactory;
    private String mLongWeekDayStrings[];
    private String mShortWeekDayStrings[];
    private TextView remind_label;
    private LinearLayout repeat_days;

    public AddOrEditWakeUpRemindActivity()
    {
        dayButtonParents = new ViewGroup[7];
        dayButtons = new ToggleButton[7];
    }

    private void editCurrentItemHourMinuteAndRepeatDate()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            editObjectPosition = getIntent().getIntExtra("position", 0);
            editRemindObject = (RemindObject)bundle.getSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName());
            if (editRemindObject != null)
            {
                int i = editRemindObject.getHour();
                int k = editRemindObject.getMinute();
                hourWheel.setCurrentItem(i);
                minuteWheel.setCurrentItem(k);
                remindtitleLabel.setText(getString(0x7f0c01ab));
                boolean aflag[] = editRemindObject.getRepeateArray();
                for (int j = 0; j < aflag.length; j++)
                {
                    dayButtons[j].setChecked(aflag[j]);
                }

            } else
            {
                Calendar calendar = Calendar.getInstance();
                hourWheel.setCurrentItem(calendar.get(11));
                minuteWheel.setCurrentItem(calendar.get(12));
            }
            return;
        } else
        {
            Calendar calendar1 = Calendar.getInstance();
            hourWheel.setCurrentItem(calendar1.get(11));
            minuteWheel.setCurrentItem(calendar1.get(12));
            return;
        }
    }

    private void initAlarmData()
    {
        Object obj = new DateFormatSymbols();
        mShortWeekDayStrings = ((DateFormatSymbols) (obj)).getShortWeekdays();
        mLongWeekDayStrings = ((DateFormatSymbols) (obj)).getWeekdays();
        mFactory = LayoutInflater.from(this);
        obj = getResources().getConfiguration().locale.getCountry();
        int i = 0;
        while (i < 7) 
        {
            ViewGroup viewgroup = (ViewGroup)mFactory.inflate(0x7f03002f, repeat_days, false);
            ToggleButton togglebutton = (ToggleButton)viewgroup.getChildAt(0);
            int j = DAY_ORDER[i];
            String s = mShortWeekDayStrings[j];
            int k = s.length();
            String s1 = s.substring(k - 1, k);
            if (((String) (obj)).equals("CN"))
            {
                togglebutton.setText(s1);
                togglebutton.setTextOn(s1);
                togglebutton.setTextOff(s1);
                togglebutton.setContentDescription(mLongWeekDayStrings[j]);
            } else
            {
                togglebutton.setText(s);
                togglebutton.setTextOn(s);
                togglebutton.setTextOff(s);
                togglebutton.setContentDescription(mLongWeekDayStrings[j]);
            }
            repeat_days.addView(viewgroup);
            dayButtons[i] = togglebutton;
            dayButtonParents[i] = viewgroup;
            i++;
        }
        for (final int buttonIndex = 0; buttonIndex < 7; buttonIndex++)
        {
            dayButtonParents[buttonIndex].setOnClickListener(new android.view.View.OnClickListener() {

                final AddOrEditWakeUpRemindActivity this$0;
                final int val$buttonIndex;

                public void onClick(View view)
                {
                    dayButtons[buttonIndex].toggle();
                    boolean flag = dayButtons[buttonIndex].isChecked();
                    int l = DAY_ORDER[buttonIndex];
                    if (flag)
                    {
                        turnOnDayOfWeek(buttonIndex);
                        return;
                    } else
                    {
                        turnOffDayOfWeek(buttonIndex);
                        return;
                    }
                }

            
            {
                this$0 = AddOrEditWakeUpRemindActivity.this;
                buttonIndex = i;
                super();
            }
            });
        }

    }

    private void turnOffDayOfWeek(int i)
    {
        dayButtons[i].setChecked(false);
    }

    private void turnOnDayOfWeek(int i)
    {
        dayButtons[i].setChecked(true);
    }

    protected void initView()
    {
        super.initView();
        remind_label = (TextView)findViewById(0x7f060022);
        remind_label.setText(mContext.getString(0x7f0c0101));
        titleBar.setTitleText(mContext.getString(0x7f0c00ef));
        repeat_days = (LinearLayout)findViewById(0x7f060021);
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final AddOrEditWakeUpRemindActivity this$0;

            public void onClick(View view)
            {
                view = StorageUtil.readRemindObject(mContext, "wakeup_remind_objects_file.wao");
                int ai[];
                int j;
                int k;
                int l;
                if (editRemindObject == null)
                {
                    RemindObject remindobject = new RemindObject(getTimeStringValue(), mContext.getString(0x7f0c0109));
                    remindobject.setHour(getHourWheelIntValue());
                    remindobject.setMinute(getMinuteWheelIntValue());
                    for (int i = 0; i < dayButtons.length; i++)
                    {
                        remindobject.getRepeateArray()[i] = dayButtons[i].isChecked();
                    }

                    view.add(remindobject);
                    j = remindobject.getHour();
                    k = remindobject.getMinute();
                } else
                {
                    editRemindObject.setTime(getTimeStringValue());
                    editRemindObject.setHour(getHourWheelIntValue());
                    editRemindObject.setMinute(getMinuteWheelIntValue());
                    for (j = 0; j < dayButtons.length; j++)
                    {
                        editRemindObject.getRepeateArray()[j] = dayButtons[j].isChecked();
                    }

                    view.set(editObjectPosition, editRemindObject);
                    j = editRemindObject.getHour();
                    k = editRemindObject.getMinute();
                }
                ai = new int[7];
                l = 0;
                while (l < dayButtons.length) 
                {
                    if (dayButtons[l].isChecked())
                    {
                        ai[l] = 1;
                    } else
                    {
                        ai[l] = 0;
                    }
                    l++;
                }
                StorageUtil.writeRemindObject(mContext, view, "wakeup_remind_objects_file.wao");
                view = new BleAlarmRemindParam(j, k, new int[] {
                    1, 1, 1, 1, 1, 1, 1
                });
                (new Thread(new SetRemindTask(mContext, 3, view))).start();
                finish();
            }

            
            {
                this$0 = AddOrEditWakeUpRemindActivity.this;
                super();
            }
        });
        initAlarmData();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030001);
        initView();
        initWheelViewData();
        editCurrentItemHourMinuteAndRepeatDate();
    }




}
