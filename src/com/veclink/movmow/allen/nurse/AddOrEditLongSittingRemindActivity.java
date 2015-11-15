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
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            RemindBaseActivity, RemindObject

public class AddOrEditLongSittingRemindActivity extends RemindBaseActivity
{

    public static final String LONG_SIT_ENDHOUR = "endHour";
    public static final String LONG_SIT_ENDMINUTE = "endMinute";
    public static final String LONG_SIT_STARTHOUR = "startHour";
    public static final String LONG_SIT_STARTMINUTE = "startMinute";
    int editObjectPosition;
    RemindObject editRemindObject;
    TextView remind_label;

    public AddOrEditLongSittingRemindActivity()
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
                hourWheel.setCurrentItem(i - 1);
                minuteWheel.setCurrentItem(j);
                remindtitleLabel.setText(getString(0x7f0c00f1));
            }
        }
    }

    protected int getHourWheelIntValue()
    {
        return hourWheel.getCurrentItem() + 1;
    }

    protected int getMinuteWheelIntValue()
    {
        return minuteWheel.getCurrentItem();
    }

    protected String getTimeStringValue()
    {
        return (new StringBuilder()).append(String.format("%02d", new Object[] {
            Integer.valueOf(getHourWheelIntValue())
        })).append(":").append(String.format("%02d", new Object[] {
            Integer.valueOf(getMinuteWheelIntValue())
        })).toString();
    }

    protected void initView()
    {
        super.initView();
        remind_label = (TextView)findViewById(0x7f060022);
        remind_label.setText(mContext.getString(0x7f0c0100));
        titleBar.setTitleText(mContext.getString(0x7f0c00ed));
        remindtitleLabel.setText(mContext.getString(0x7f0c00f2));
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final AddOrEditLongSittingRemindActivity this$0;

            public void onClick(View view)
            {
                if (getHourWheelIntValue() == 0 && getMinuteWheelIntValue() == 0)
                {
                    ToastUtil.showShortToast(mContext, mContext.getString(0x7f0c0105));
                    return;
                }
                view = StorageUtil.readRemindObject(mContext, "sitting_remind_objects_file.wao");
                int i;
                int j;
                if (editRemindObject == null)
                {
                    RemindObject remindobject = new RemindObject(getTimeStringValue(), mContext.getString(0x7f0c0104));
                    remindobject.setHour(getHourWheelIntValue());
                    remindobject.setMinute(getMinuteWheelIntValue());
                    view.add(remindobject);
                    i = remindobject.getHour();
                    j = remindobject.getMinute();
                } else
                {
                    editRemindObject.setTime(getTimeStringValue());
                    editRemindObject.setHour(getHourWheelIntValue());
                    editRemindObject.setMinute(getMinuteWheelIntValue());
                    view.set(editObjectPosition, editRemindObject);
                    i = editRemindObject.getHour();
                    j = editRemindObject.getMinute();
                }
                StorageUtil.writeRemindObject(mContext, view, "sitting_remind_objects_file.wao");
                view = new BleAlarmRemindParam(i, j, new int[] {
                    1, 1, 1, 1, 1, 1, 1
                });
                (new Thread(new SetRemindTask(mContext, 1, view))).start();
                finish();
            }

            
            {
                this$0 = AddOrEditLongSittingRemindActivity.this;
                super();
            }
        });
    }

    protected void initWheelViewData()
    {
        NumericWheelAdapter numericwheeladapter = new NumericWheelAdapter(this, 1, 59, "%02d", 0x7f030050);
        hourWheel.setViewAdapter(numericwheeladapter);
        hourWheel.setCyclic(true);
        numericwheeladapter = new NumericWheelAdapter(this, 0, 59, "%02d", 0x7f030050);
        minuteWheel.setViewAdapter(numericwheeladapter);
        minuteWheel.setCyclic(true);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030009);
        initView();
        initWheelViewData();
        editCurrentItemHourMinute();
    }
}
