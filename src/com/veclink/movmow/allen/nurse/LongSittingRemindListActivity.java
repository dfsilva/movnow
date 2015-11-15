// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.bracelet.bean.BleLongSittingRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movmow.allen.nurse.adapter.LongSittingRemindListAdapter;
import com.veclink.movnow_q2.activity.HealthyBaseActivity;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.activity.SettingSittingRemindTime;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.NumberWheelAdapter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class LongSittingRemindListActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    public static final String LONG_SITTING = "long_sitting";
    public static final String LONG_SIT_INTERVALMINUTE = "intervalMinute";
    public static final String OPEN_WAKEUP = "open_wakeup";
    public static final String SELECT_WAKE_UP_TIMES = "select_wake_up_times";
    private LongSittingRemindListAdapter adapter;
    Button btnChooseSave;
    Switch cs_turn_onoff;
    private Handler handler;
    private boolean isOnCreate;
    private boolean isOpenWakeUp;
    private ListView listView;
    private Context mContext;
    List remindList;
    private RelativeLayout rl_wake_up_times;
    Dialog selectDistanceDialog;
    WheelView selectTime;
    public int selsectTime;
    private TextView start_end_time_textView;
    private TitleBarRelativeLayout titleBar;
    private TextView tv_wake_up_time;
    private View viewPopup;

    public LongSittingRemindListActivity()
    {
        isOpenWakeUp = false;
        handler = new Handler() {

            final LongSittingRemindListActivity this$0;

            public void handleMessage(Message message)
            {
                setData();
            }

            
            {
                this$0 = LongSittingRemindListActivity.this;
                super();
            }
        };
    }

    private void initView()
    {
        mContext = this;
        listView = (ListView)findViewById(0x7f060073);
        View view = LayoutInflater.from(mContext).inflate(0x7f03001c, null);
        view.findViewById(0x7f06006e).setOnClickListener(new android.view.View.OnClickListener() {

            final LongSittingRemindListActivity this$0;

            public void onClick(View view1)
            {
                view1 = new Intent(mContext, com/veclink/movnow_q2/activity/SettingSittingRemindTime);
                startActivity(view1);
            }

            
            {
                this$0 = LongSittingRemindListActivity.this;
                super();
            }
        });
        start_end_time_textView = (TextView)view.findViewById(0x7f06006f);
        tv_wake_up_time = (TextView)view.findViewById(0x7f060071);
        selsectTime = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "select_wake_up_times", Integer.valueOf(25))).intValue();
        tv_wake_up_time.setText(getString(0x7f0c00ff, new Object[] {
            Integer.valueOf(selsectTime)
        }));
        rl_wake_up_times = (RelativeLayout)view.findViewById(0x7f060070);
        rl_wake_up_times.setOnClickListener(this);
        cs_turn_onoff = (Switch)view.findViewById(0x7f060072);
        cs_turn_onoff.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final LongSittingRemindListActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                isOpenWakeUp = flag;
                SharedPreferencesUtils.setSharedPreferences(LongSittingRemindListActivity.this, "open_wakeup", Boolean.valueOf(flag));
                if (!isOnCreate)
                {
                    startSyn();
                }
            }

            
            {
                this$0 = LongSittingRemindListActivity.this;
                super();
            }
        });
        listView.addHeaderView(view);
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setTitleText(mContext.getString(0x7f0c00ed));
    }

    private void initWheel()
    {
        selectTime = (WheelView)viewPopup.findViewById(0x7f0600a2);
        NumberWheelAdapter numberwheeladapter = new NumberWheelAdapter(this, 1, 5, 25, 0x7f030050);
        selectTime.setViewAdapter(numberwheeladapter);
        selectTime.setCyclic(true);
        int i = getResources().getInteger(0x7f0a0001);
        selectTime.setCurrentItemSize(i);
        selectTime.setWheelForeground(0x7f020124);
        selectTime.setWheelBackground(0x7f02018f);
        selectTime.setCurrentItem(0);
        selectTime.setVisibleItems(5);
        selectTime.setLabel("mins");
        selectTime.setLabelSize(getResources().getInteger(0x7f0a0003));
    }

    private void setData()
    {
        ArrayList arraylist = new ArrayList();
        TitleBarRelativeLayout titlebarrelativelayout = titleBar;
        boolean flag;
        if (arraylist.size() > 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        titlebarrelativelayout.setRightEnalbe(flag);
        adapter = new LongSittingRemindListAdapter(this, arraylist, handler);
        listView.setAdapter(adapter);
        setLongSittingStartEndTime();
    }

    private void setLongSittingStartEndTime()
    {
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(9))).intValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_begin_minute", Integer.valueOf(0))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_hour", Integer.valueOf(21))).intValue();
        int l = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_minute", Integer.valueOf(0))).intValue();
        String s = (new StringBuilder()).append(String.format("%02d:%02d", new Object[] {
            Integer.valueOf(i), Integer.valueOf(j)
        })).append("-").append(String.format("%02d:%02d", new Object[] {
            Integer.valueOf(k), Integer.valueOf(l)
        })).toString();
        if (start_end_time_textView != null)
        {
            start_end_time_textView.setText(s);
        }
    }

    private void showDialog()
    {
        selectDistanceDialog = new Dialog(this, 0x7f0b0014);
        selectDistanceDialog.setContentView(viewPopup, new android.view.ViewGroup.LayoutParams(getWindowManager().getDefaultDisplay().getWidth(), -2));
        Object obj = selectDistanceDialog.getWindow();
        ((Window) (obj)).setWindowAnimations(0x7f0b0018);
        obj = ((Window) (obj)).getAttributes();
        obj.x = 0;
        obj.y = getWindowManager().getDefaultDisplay().getHeight();
        selectDistanceDialog.onWindowAttributesChanged(((android.view.WindowManager.LayoutParams) (obj)));
        selectDistanceDialog.setCanceledOnTouchOutside(true);
        selectDistanceDialog.show();
    }

    private void showSetTimeDialog()
    {
        viewPopup = getLayoutInflater().inflate(0x7f030032, null);
        btnChooseSave = (Button)viewPopup.findViewById(0x7f0600a1);
        initWheel();
        showDialog();
        btnChooseSave.setOnClickListener(new android.view.View.OnClickListener() {

            final LongSittingRemindListActivity this$0;

            public void onClick(View view)
            {
                selectDistanceDialog.dismiss();
                int i = (selectTime.getCurrentItem() + 1) * 25;
                Log.d("mins", (new StringBuilder()).append("mins:").append(i).toString());
                SharedPreferencesUtils.setSharedPreferences(LongSittingRemindListActivity.this, "select_wake_up_times", Integer.valueOf(i));
                tv_wake_up_time.setText(getString(0x7f0c00ff, new Object[] {
                    Integer.valueOf(i)
                }));
                startSyn();
                StorageUtil.writeRemindObject(mContext, remindList, "sitting_remind_objects_file.wao");
            }

            
            {
                this$0 = LongSittingRemindListActivity.this;
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

        case 2131099760: 
            showSetTimeDialog();
            break;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001f);
        initView();
        isOnCreate = true;
        isOpenWakeUp = ((Boolean)SharedPreferencesUtils.getSharedPreferences(this, "open_wakeup", Boolean.valueOf(false))).booleanValue();
        if (isOnCreate)
        {
            cs_turn_onoff.setChecked(isOpenWakeUp);
        }
        isOnCreate = false;
        remindList = StorageUtil.readRemindObject(this, "sitting_remind_objects_file.wao");
    }

    protected void onResume()
    {
        super.onResume();
        setData();
    }

    public void startSyn()
    {
        MovnowTwoApplication.sitting_remind_startTime = System.currentTimeMillis();
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "select_wake_up_times", Integer.valueOf(25))).intValue();
        int j = i / 60;
        int k = i % 60;
        int l = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(9))).intValue();
        int i1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_begin_minute", Integer.valueOf(0))).intValue();
        int j1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_hour", Integer.valueOf(21))).intValue();
        int k1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(this, "key_sitting_remind_time_end_minute", Integer.valueOf(0))).intValue();
        i = 0;
        if (isOpenWakeUp)
        {
            i = 1;
        }
        if (MovnowTwoApplication.deviceProduct.updateFirewareWay == 2)
        {
            Object obj = Calendar.getInstance();
            l = ((Calendar) (obj)).get(11) + j;
            i1 = ((Calendar) (obj)).get(12) + k;
            k = l;
            j = i1;
            if (i1 > 59)
            {
                k = l + 1;
                j = i1 - 59;
            }
            obj = new BleAlarmRemindParam(k, j, new int[] {
                1, 1, 1, 1, 1, 1, 1
            }, i, 0);
            (new Thread(new SetRemindTask(mContext, 2, ((com.veclink.bracelet.bean.BaseRemindParam) (obj))))).start();
        } else
        {
            BleLongSittingRemindParam blelongsittingremindparam = new BleLongSittingRemindParam(j, k, l, i1, j1, k1, i);
            (new Thread(new SetRemindTask(mContext, 2, blelongsittingremindparam))).start();
        }
        finish();
    }




/*
    static boolean access$202(LongSittingRemindListActivity longsittingremindlistactivity, boolean flag)
    {
        longsittingremindlistactivity.isOpenWakeUp = flag;
        return flag;
    }

*/


}
