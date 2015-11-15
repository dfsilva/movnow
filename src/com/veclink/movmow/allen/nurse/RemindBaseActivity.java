// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.veclink.movnow_q2.activity.HealthyBaseActivity;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;

public class RemindBaseActivity extends HealthyBaseActivity
{

    protected WheelView hourWheel;
    protected Context mContext;
    protected WheelView minuteWheel;
    protected TextView remindtitleLabel;
    protected Resources res;
    protected TitleBarRelativeLayout titleBar;

    public RemindBaseActivity()
    {
    }

    protected int getHourWheelIntValue()
    {
        return hourWheel.getCurrentItem();
    }

    protected int getMinuteWheelIntValue()
    {
        return minuteWheel.getCurrentItem();
    }

    protected String getTimeStringValue()
    {
        return (new StringBuilder()).append(String.format("%02d", new Object[] {
            Integer.valueOf(hourWheel.getCurrentItem())
        })).append(":").append(String.format("%02d", new Object[] {
            Integer.valueOf(minuteWheel.getCurrentItem())
        })).toString();
    }

    protected void initView()
    {
        hourWheel = (WheelView)findViewById(0x7f06001e);
        minuteWheel = (WheelView)findViewById(0x7f06001f);
        remindtitleLabel = (TextView)findViewById(0x7f06001c);
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020128);
        titleBar.setRightText(getString(0x7f0c00f4));
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final RemindBaseActivity this$0;

            public void onClick(View view)
            {
                ToastUtil.showShortToast(mContext, "saveRemindSetting");
            }

            
            {
                this$0 = RemindBaseActivity.this;
                super();
            }
        });
    }

    protected void initWheelViewData()
    {
        NumericWheelAdapter numericwheeladapter = new NumericWheelAdapter(this, 0, 23, "%02d", 0x7f030050);
        hourWheel.setViewAdapter(numericwheeladapter);
        hourWheel.setCyclic(true);
        numericwheeladapter = new NumericWheelAdapter(this, 0, 59, "%02d", 0x7f030050);
        minuteWheel.setViewAdapter(numericwheeladapter);
        minuteWheel.setCyclic(true);
        int i = getResources().getInteger(0x7f0a0001);
        hourWheel.setCurrentItemSize(i);
        minuteWheel.setCurrentItemSize(i);
        hourWheel.setWheelForeground(0x7f020124);
        hourWheel.setWheelBackground(0x7f02018f);
        minuteWheel.setWheelForeground(0x7f020124);
        minuteWheel.setWheelBackground(0x7f02018f);
        hourWheel.setCurrentItem(1);
        minuteWheel.setCurrentItem(0);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mContext = this;
        res = getResources();
    }
}
