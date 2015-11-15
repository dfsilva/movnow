// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class SettingSittingRemindTime extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    public static final String STR_SITTING_REMIND_TIME_BEGIN_HOUR = "key_sitting_remind_timemind_time_begin_hour";
    public static final String STR_SITTING_REMIND_TIME_BEGIN_MINUTE = "key_sitting_remind_time_begin_minute";
    public static final String STR_SITTING_REMIND_TIME_END_HOUR = "key_sitting_remind_time_end_hour";
    public static final String STR_SITTING_REMIND_TIME_END_MINUTE = "key_sitting_remind_time_end_minute";
    public static final String TAG = "SettingsActivityMySittingRemindTime";
    Button btnChooseSave;
    private int currentItem;
    private int currentItem2;
    private EditText evCurrent;
    EditText evSleeptimeBegin;
    EditText evSleeptimeEnd;
    WheelView hourWheel;
    WheelView minuteWheel;
    Dialog selectPortaitDialog;
    int timeBeginHour;
    int timeBeginMinute;
    int timeEndHour;
    int timeEndMinute;
    TitleBarRelativeLayout titleBar;
    private View viewPopup;

    public SettingSittingRemindTime()
    {
        evCurrent = null;
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBar.setTitleText(getString(0x7f0c006a));
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020128);
        titleBar.setRightText(getString(0x7f0c00f4));
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final SettingSittingRemindTime this$0;

            public void onClick(View view)
            {
                SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(timeBeginHour));
                SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_time_begin_minute", Integer.valueOf(timeBeginMinute));
                SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_time_end_hour", Integer.valueOf(timeEndHour));
                SharedPreferencesUtils.setSharedPreferences(getApplication(), "key_sitting_remind_time_end_minute", Integer.valueOf(timeEndMinute));
                finish();
            }

            
            {
                this$0 = SettingSittingRemindTime.this;
                super();
            }
        });
        evSleeptimeBegin = (EditText)findViewById(0x7f060182);
        evSleeptimeEnd = (EditText)findViewById(0x7f060183);
        evSleeptimeBegin.setInputType(0);
        evSleeptimeEnd.setInputType(0);
        evSleeptimeBegin.setOnClickListener(this);
        evSleeptimeEnd.setOnClickListener(this);
        timeBeginHour = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(9))).intValue();
        timeBeginMinute = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_begin_minute", Integer.valueOf(0))).intValue();
        timeEndHour = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_hour", Integer.valueOf(21))).intValue();
        timeEndMinute = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_minute", Integer.valueOf(0))).intValue();
        evSleeptimeBegin.setText(String.format("%02d:%02d", new Object[] {
            Integer.valueOf(timeBeginHour), Integer.valueOf(timeBeginMinute)
        }));
        evSleeptimeEnd.setText(String.format("%02d:%02d", new Object[] {
            Integer.valueOf(timeEndHour), Integer.valueOf(timeEndMinute)
        }));
    }

    private void initWheel()
    {
        hourWheel = (WheelView)viewPopup.findViewById(0x7f06001e);
        NumericWheelAdapter numericwheeladapter;
        int i;
        if (evCurrent == evSleeptimeBegin)
        {
            currentItem = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(9))).intValue();
        } else
        if (evCurrent == evSleeptimeEnd)
        {
            currentItem = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_hour", Integer.valueOf(21))).intValue();
        } else
        {
            Log.e("SettingsActivityMySittingRemindTime", "evCurrent err!");
        }
        minuteWheel = (WheelView)viewPopup.findViewById(0x7f06001f);
        if (evCurrent == evSleeptimeBegin)
        {
            currentItem2 = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_begin_minute", Integer.valueOf(0))).intValue();
        } else
        if (evCurrent == evSleeptimeEnd)
        {
            currentItem2 = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_minute", Integer.valueOf(0))).intValue();
        } else
        {
            Log.e("SettingsActivityMySittingRemindTime", "evCurrent err!");
        }
        numericwheeladapter = new NumericWheelAdapter(this, 0, 23, "%02d", 0x7f030050);
        hourWheel.setViewAdapter(numericwheeladapter);
        hourWheel.setCyclic(true);
        numericwheeladapter = new NumericWheelAdapter(this, 0, 59, "%02d", 0x7f030050);
        minuteWheel.setViewAdapter(numericwheeladapter);
        minuteWheel.setCyclic(true);
        i = getResources().getInteger(0x7f0a0001);
        hourWheel.setCurrentItemSize(i);
        minuteWheel.setCurrentItemSize(i);
        hourWheel.setWheelForeground(0x7f020124);
        hourWheel.setWheelBackground(0x7f02018f);
        minuteWheel.setWheelForeground(0x7f020124);
        minuteWheel.setWheelBackground(0x7f02018f);
        hourWheel.setCurrentItem(currentItem);
        hourWheel.setVisibleItems(5);
        minuteWheel.setVisibleItems(5);
        minuteWheel.setCurrentItem(currentItem2);
    }

    private void showDialog()
    {
        selectPortaitDialog = new Dialog(this, 0x7f0b0014);
        selectPortaitDialog.setContentView(viewPopup);
        Object obj = selectPortaitDialog.getWindow();
        ((Window) (obj)).setWindowAnimations(0x7f0b0018);
        obj = ((Window) (obj)).getAttributes();
        obj.x = 0;
        obj.y = getWindowManager().getDefaultDisplay().getHeight();
        obj.width = -1;
        selectPortaitDialog.onWindowAttributesChanged(((android.view.WindowManager.LayoutParams) (obj)));
        selectPortaitDialog.setCanceledOnTouchOutside(true);
        selectPortaitDialog.show();
    }

    private void showSetTimeDialog()
    {
        viewPopup = getLayoutInflater().inflate(0x7f030053, null);
        btnChooseSave = (Button)viewPopup.findViewById(0x7f0600a1);
        initWheel();
        showDialog();
        btnChooseSave.setOnClickListener(new android.view.View.OnClickListener() {

            final SettingSittingRemindTime this$0;

            public void onClick(View view)
            {
                if (evCurrent == evSleeptimeBegin)
                {
                    evSleeptimeBegin.setText(String.format("%02d:%02d", new Object[] {
                        Integer.valueOf(hourWheel.getCurrentItem()), Integer.valueOf(minuteWheel.getCurrentItem())
                    }));
                    timeBeginHour = hourWheel.getCurrentItem();
                    timeBeginMinute = minuteWheel.getCurrentItem();
                } else
                if (evCurrent == evSleeptimeEnd)
                {
                    evSleeptimeEnd.setText(String.format("%02d:%02d", new Object[] {
                        Integer.valueOf(hourWheel.getCurrentItem()), Integer.valueOf(minuteWheel.getCurrentItem())
                    }));
                    timeEndHour = hourWheel.getCurrentItem();
                    timeEndMinute = minuteWheel.getCurrentItem();
                } else
                {
                    Log.e("SettingsActivityMySittingRemindTime", "evCurrent err!");
                }
                selectPortaitDialog.dismiss();
            }

            
            {
                this$0 = SettingSittingRemindTime.this;
                super();
            }
        });
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131100034: 
            evCurrent = evSleeptimeBegin;
            showSetTimeDialog();
            return;

        case 2131100035: 
            evCurrent = evSleeptimeEnd;
            break;
        }
        showSetTimeDialog();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030057);
        initView();
    }

}
