// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.animation.AnticipateOvershootInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.veclink.healthy.business.http.pojo.SubError;
import com.veclink.healthy.business.http.pojo.UpdateUserInfoResponse;
import com.veclink.healthy.business.http.session.HealthyUpdateUserInfoSession;
import com.veclink.healthy.database.entity.UserInfo;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.OnWheelChangedListener;
import com.veclink.movnow_q2.view.wheel.OnWheelScrollListener;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;
import de.greenrobot.event.EventBus;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MainActivity, MovnowTwoApplication

public class SettingsActivityMytarget extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    public static final String TAG = "SettingsActivityMytarget";
    private OnWheelChangedListener changedListener;
    private String currentStep;
    private boolean firstLogin;
    private ImageView imgStepDown;
    private ImageView imgStepUp;
    private Context mContext;
    OnWheelScrollListener scrolledListener;
    private TitleBarRelativeLayout titleBar;
    private TextView tvActive;
    private TextView tvActiveText;
    private TextView tvCommon;
    private TextView tvCommonText;
    private TextView tvLoseWeigth;
    private TextView tvLoseWeigthText;
    private boolean wheelScrolled;
    private WheelView wv1;
    private WheelView wv2;
    private WheelView wv3;
    private WheelView wv4;
    private WheelView wv5;

    public SettingsActivityMytarget()
    {
        currentStep = "0";
        changedListener = new OnWheelChangedListener() {

            final SettingsActivityMytarget this$0;

            public void onChanged(WheelView wheelview, int i, int j)
            {
                wheelview.getCurrentItem();
                if (wheelScrolled);
                if (wv1.getCurrentItem() == 0 && wv2.getCurrentItem() == 0 && wv3.getCurrentItem() <= 0)
                {
                    wv3.setCurrentItem(1);
                }
                if (wv1.getCurrentItem() == 0)
                {
                    currentStep = (new StringBuilder()).append(String.valueOf(wv2.getCurrentItem())).append(String.valueOf((new StringBuilder()).append(wv3.getCurrentItem()).append(String.valueOf(wv4.getCurrentItem())).append(String.valueOf(wv5.getCurrentItem())).toString())).toString();
                } else
                {
                    currentStep = (new StringBuilder()).append(String.valueOf(wv1.getCurrentItem())).append(String.valueOf(wv2.getCurrentItem())).append(String.valueOf((new StringBuilder()).append(wv3.getCurrentItem()).append(String.valueOf(wv4.getCurrentItem())).append(String.valueOf(wv5.getCurrentItem())).toString())).toString();
                }
                Log.d("currentStep", (new StringBuilder()).append("currentStep--onclcik----:").append(currentStep).toString());
                if (wheelview == wv4 || wheelview == wv5)
                {
                    return;
                } else
                {
                    setSetpText(currentStep);
                    return;
                }
            }

            
            {
                this$0 = SettingsActivityMytarget.this;
                super();
            }
        };
        wheelScrolled = false;
        scrolledListener = new OnWheelScrollListener() {

            final SettingsActivityMytarget this$0;

            public void onScrollingFinished(WheelView wheelview)
            {
                wheelScrolled = false;
                wv4.setCurrentItem(0);
                wv5.setCurrentItem(0);
            }

            public void onScrollingStarted(WheelView wheelview)
            {
                wheelScrolled = true;
            }

            
            {
                this$0 = SettingsActivityMytarget.this;
                super();
            }
        };
    }

    private WheelView getWheel(int i)
    {
        return (WheelView)findViewById(i);
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBar.setTitleText(getString(0x7f0c00c3));
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBar.setTitleText(getString(0x7f0c00c3));
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020128);
        titleBar.setRightText(getString(0x7f0c015e));
        titleBar.setRightButtonListener(new android.view.View.OnClickListener() {

            final SettingsActivityMytarget this$0;

            public void onClick(View view)
            {
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_wan", Integer.valueOf(wv1.getCurrentItem()));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_qian", Integer.valueOf(wv2.getCurrentItem()));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_bai", Integer.valueOf(wv3.getCurrentItem()));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_shi", Integer.valueOf(wv4.getCurrentItem()));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget_ge", Integer.valueOf(wv5.getCurrentItem()));
                SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_MyTarget", currentStep);
                MovnowTwoApplication.syncParams();
                if (!firstLogin)
                {
                    finish();
                    return;
                } else
                {
                    submitUserInfo();
                    return;
                }
            }

            
            {
                this$0 = SettingsActivityMytarget.this;
                super();
            }
        });
        imgStepUp = (ImageView)findViewById(0x7f060189);
        imgStepDown = (ImageView)findViewById(0x7f060190);
        tvActiveText = (TextView)findViewById(0x7f060193);
        tvLoseWeigthText = (TextView)findViewById(0x7f060194);
        tvCommonText = (TextView)findViewById(0x7f060195);
        tvActive = (TextView)findViewById(0x7f060197);
        tvLoseWeigth = (TextView)findViewById(0x7f060198);
        tvCommon = (TextView)findViewById(0x7f060199);
        wv1 = (WheelView)findViewById(0x7f06018b);
        wv2 = (WheelView)findViewById(0x7f06018c);
        wv3 = (WheelView)findViewById(0x7f06018d);
        wv4 = (WheelView)findViewById(0x7f06018e);
        wv5 = (WheelView)findViewById(0x7f06018f);
        wv1.setWheelBackground(0x7f020166);
        wv2.setWheelBackground(0x7f020166);
        wv3.setWheelBackground(0x7f020166);
        wv4.setWheelBackground(0x7f020166);
        wv5.setWheelBackground(0x7f020166);
        wv1.setCurrentItemSize(50);
        wv2.setCurrentItemSize(50);
        wv3.setCurrentItemSize(50);
        wv4.setCurrentItemSize(50);
        wv5.setCurrentItemSize(50);
        wv1.setChangeAllItemSizeByCurrentitem(true);
        wv2.setChangeAllItemSizeByCurrentitem(true);
        wv3.setChangeAllItemSizeByCurrentitem(true);
        wv4.setChangeAllItemSizeByCurrentitem(true);
        wv5.setChangeAllItemSizeByCurrentitem(true);
        setWheel(wv1);
        setWheel(wv2);
        setWheel(wv3);
        setWheel(wv4);
        setWheel(wv5);
        imgStepUp.setOnClickListener(this);
        imgStepDown.setOnClickListener(this);
        tvActive.setOnClickListener(this);
        tvLoseWeigth.setOnClickListener(this);
        tvCommon.setOnClickListener(this);
    }

    private void initWheel(int i)
    {
        WheelView wheelview = getWheel(i);
        wheelview.setViewAdapter(new NumericWheelAdapter(this, 0, 9));
        wheelview.setCurrentItem((int)(Math.random() * 10D));
        wheelview.addChangingListener(changedListener);
        wheelview.addScrollingListener(scrolledListener);
        wheelview.setCyclic(true);
        wheelview.setInterpolator(new AnticipateOvershootInterpolator());
        wheelview.setVisibleItems(1);
        wheelview.getHeight();
        Log.d("height", (new StringBuilder()).append("wheel.getHeight()-------:").append(wheelview.getHeight()).toString());
    }

    private void setSetpText(String s)
    {
        int i = Integer.parseInt(s);
        if (i < 7000)
        {
            tvActiveText.setVisibility(4);
            tvLoseWeigthText.setVisibility(4);
            tvCommonText.setVisibility(0);
            tvCommonText.setText(getString(0x7f0c0064, new Object[] {
                s
            }));
            tvActive.setSelected(false);
            tvLoseWeigth.setSelected(false);
            tvCommon.setSelected(false);
        } else
        {
            if (i >= 7000 && i < 12000)
            {
                tvActiveText.setVisibility(4);
                tvLoseWeigthText.setVisibility(4);
                tvCommonText.setVisibility(0);
                tvCommonText.setText(getString(0x7f0c0064, new Object[] {
                    s
                }));
                tvActive.setSelected(false);
                tvLoseWeigth.setSelected(false);
                tvCommon.setSelected(true);
                return;
            }
            if (i >= 12000 && i < 17000)
            {
                tvActiveText.setVisibility(0);
                tvLoseWeigthText.setVisibility(4);
                tvCommonText.setVisibility(4);
                tvActive.setSelected(true);
                tvLoseWeigth.setSelected(false);
                tvCommon.setSelected(false);
                tvActiveText.setText(getString(0x7f0c0062, new Object[] {
                    s
                }));
                return;
            }
            if (i >= 17000)
            {
                tvActiveText.setVisibility(4);
                tvLoseWeigthText.setVisibility(0);
                tvCommonText.setVisibility(4);
                tvLoseWeigthText.setText(getString(0x7f0c0063, new Object[] {
                    s
                }));
                tvActive.setSelected(false);
                tvLoseWeigth.setSelected(true);
                tvCommon.setSelected(false);
                return;
            }
        }
    }

    private void setWheel(WheelView wheelview)
    {
        wheelview.setViewAdapter(new NumericWheelAdapter(this, 0, 9));
        wheelview.addChangingListener(changedListener);
        wheelview.addScrollingListener(scrolledListener);
        wheelview.setCyclic(true);
        wheelview.setInterpolator(new AnticipateOvershootInterpolator());
        wheelview.setVisibleItems(1);
    }

    private void submitUserInfo()
    {
        String s = String.valueOf((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1)));
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_year", Integer.valueOf(1970))).intValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_month", Integer.valueOf(1))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_day", Integer.valueOf(1))).intValue();
        StringBuilder stringbuilder = new StringBuilder();
        float f;
        float f1;
        Object obj;
        Object obj1;
        if (j < 10)
        {
            obj = (new StringBuilder()).append("0").append(String.valueOf(j)).toString();
        } else
        {
            obj = String.valueOf(j);
        }
        if (k < 10)
        {
            obj1 = (new StringBuilder()).append("0").append(String.valueOf(k)).toString();
        } else
        {
            obj1 = String.valueOf(k);
        }
        stringbuilder.append(String.valueOf(i)).append(((String) (obj))).append(((String) (obj1)));
        obj = stringbuilder.toString();
        f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(160F))).floatValue();
        f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(50F))).floatValue();
        obj1 = new UserInfo();
        ((UserInfo) (obj1)).setSex(s);
        ((UserInfo) (obj1)).setBirthday(((String) (obj)));
        ((UserInfo) (obj1)).setHeight(String.valueOf((int)f));
        ((UserInfo) (obj1)).setWeight(String.valueOf((int)(1000F * f1)));
        Log.d("SettingsActivityMytarget", (new StringBuilder()).append("sex:").append(s).toString());
        Log.d("SettingsActivityMytarget", (new StringBuilder()).append("birthday:").append(((String) (obj))).toString());
        Log.d("SettingsActivityMytarget", (new StringBuilder()).append("(int)(height):").append((int)f).toString());
        Log.d("SettingsActivityMytarget", (new StringBuilder()).append("(int)(weight*1000):").append((int)(1000F * f1)).toString());
        EventBus.getDefault().unregister(mContext, new Class[] {
            com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse
        });
        EventBus.getDefault().register(mContext, com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse, new Class[0]);
        obj = new HealthyUpdateUserInfoSession(mContext, ((UserInfo) (obj1)));
        SimpleHttpSchedualer.ansycSchedual(mContext, ((com.veclink.movnow_q2.network.base.BaseSession) (obj)));
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 5: default 56
    //                   2131100041: 184
    //                   2131100048: 259
    //                   2131100055: 330
    //                   2131100056: 448
    //                   2131100057: 567;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_567;
_L7:
        if (wv1.getCurrentItem() == 0)
        {
            currentStep = (new StringBuilder()).append(String.valueOf(wv2.getCurrentItem())).append(String.valueOf((new StringBuilder()).append(wv3.getCurrentItem()).append(String.valueOf(wv4.getCurrentItem())).append(String.valueOf(wv5.getCurrentItem())).toString())).toString();
        } else
        {
            currentStep = (new StringBuilder()).append(String.valueOf(wv1.getCurrentItem())).append(String.valueOf(wv2.getCurrentItem())).append(String.valueOf((new StringBuilder()).append(wv3.getCurrentItem()).append(String.valueOf(wv4.getCurrentItem())).append(String.valueOf(wv5.getCurrentItem())).toString())).toString();
        }
        Log.d("currentStep", (new StringBuilder()).append("currentStep--onclcik----:").append(currentStep).toString());
        setSetpText(currentStep);
        return;
_L2:
        if (wv3.getCurrentItem() == 9)
        {
            if (wv2.getCurrentItem() == 9)
            {
                wv1.setCurrentItem(wv1.getCurrentItem() + 1);
            }
            wv2.setCurrentItem(wv2.getCurrentItem() + 1);
        }
        wv3.setCurrentItem(wv3.getCurrentItem() + 1);
          goto _L7
_L3:
        if (wv3.getCurrentItem() == 0)
        {
            if (wv2.getCurrentItem() == 0)
            {
                wv1.setCurrentItem(wv1.getCurrentItem() - 1);
            }
            wv2.setCurrentItem(wv2.getCurrentItem() - 1);
        }
        wv3.setCurrentItem(wv3.getCurrentItem() - 1);
          goto _L7
_L4:
        tvActiveText.setVisibility(0);
        tvLoseWeigthText.setVisibility(4);
        tvCommonText.setVisibility(4);
        tvActive.setSelected(true);
        tvLoseWeigth.setSelected(false);
        tvCommon.setSelected(false);
        tvActiveText.setText(getString(0x7f0c0062, new Object[] {
            Integer.valueOf(12000)
        }));
        wv1.setCurrentItem(1);
        wv2.setCurrentItem(2);
        wv3.setCurrentItem(0);
        wv4.setCurrentItem(0);
        wv5.setCurrentItem(0);
          goto _L7
_L5:
        tvActiveText.setVisibility(4);
        tvLoseWeigthText.setVisibility(0);
        tvCommonText.setVisibility(4);
        tvLoseWeigthText.setText(getString(0x7f0c0063, new Object[] {
            Integer.valueOf(17000)
        }));
        tvActive.setSelected(false);
        tvLoseWeigth.setSelected(true);
        tvCommon.setSelected(false);
        wv1.setCurrentItem(1);
        wv2.setCurrentItem(7);
        wv3.setCurrentItem(0);
        wv4.setCurrentItem(0);
        wv5.setCurrentItem(0);
          goto _L7
        tvActiveText.setVisibility(4);
        tvLoseWeigthText.setVisibility(4);
        tvCommonText.setVisibility(0);
        tvCommonText.setText(getString(0x7f0c0064, new Object[] {
            Integer.valueOf(7000)
        }));
        tvActive.setSelected(false);
        tvLoseWeigth.setSelected(false);
        tvCommon.setSelected(true);
        wv1.setCurrentItem(0);
        wv2.setCurrentItem(7);
        wv3.setCurrentItem(0);
        wv4.setCurrentItem(0);
        wv5.setCurrentItem(0);
          goto _L7
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030055);
        mContext = this;
        firstLogin = getIntent().getBooleanExtra("firstLogin", false);
        initView();
        tvActiveText.setVisibility(4);
        tvLoseWeigthText.setVisibility(0);
        tvLoseWeigthText.setText(getString(0x7f0c0063, new Object[] {
            Integer.valueOf(17000)
        }));
        tvCommonText.setVisibility(4);
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onEvent(UpdateUserInfoResponse updateuserinforesponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse
        });
        Log.v("UpdateUserInfoResponse", updateuserinforesponse.toString());
        if (updateuserinforesponse.getError().equals("0"))
        {
            if (firstLogin)
            {
                startActivity(new Intent(mContext, com/veclink/movnow_q2/activity/MainActivity));
            }
            finish();
            return;
        }
        if (updateuserinforesponse.getSubErrors() == null)
        {
            Toast.makeText(this, getString(0x7f0c009a), 1).show();
            return;
        } else
        {
            Toast.makeText(this, ((SubError)updateuserinforesponse.getSubErrors().get(0)).getMessage(), 1).show();
            return;
        }
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_MyTarget_wan", Integer.valueOf(0))).intValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_MyTarget_qian", Integer.valueOf(7))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_MyTarget_bai", Integer.valueOf(0))).intValue();
        int l = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_MyTarget_shi", Integer.valueOf(0))).intValue();
        int i1 = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_MyTarget_ge", Integer.valueOf(0))).intValue();
        wv1.setCurrentItem(i);
        wv2.setCurrentItem(j);
        wv3.setCurrentItem(k);
        wv4.setCurrentItem(l);
        wv5.setCurrentItem(i1);
        currentStep = (String)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_MyTarget", "7000");
        setSetpText(currentStep);
    }








/*
    static String access$502(SettingsActivityMytarget settingsactivitymytarget, String s)
    {
        settingsactivitymytarget.currentStep = s;
        return s;
    }

*/





/*
    static boolean access$802(SettingsActivityMytarget settingsactivitymytarget, boolean flag)
    {
        settingsactivitymytarget.wheelScrolled = flag;
        return flag;
    }

*/

}
