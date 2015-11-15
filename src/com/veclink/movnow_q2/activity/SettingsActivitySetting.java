// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.LogoutResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.healthy.business.http.session.HealthyLogoutSession;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.SettingsItemView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MovnowTwoApplication, SettingsIntroduceActivity, ActivityGuidePage, 
//            LoginActivity

public class SettingsActivitySetting extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private int appVersionClickCount;
    private long appVersionClickStartTime;
    private Context mContext;
    private SettingsItemView siAppVersion;
    private SettingsItemView siGuide;
    private SettingsItemView siInstructions;
    private Switch switch_mile_onoff;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private TextView tvLogout;

    public SettingsActivitySetting()
    {
        appVersionClickCount = 0;
    }

    private String getVersionName()
    {
        Object obj = getPackageManager();
        try
        {
            obj = ((PackageManager) (obj)).getPackageInfo(getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
            return null;
        }
        return ((String) (obj));
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c0035));
        siInstructions = (SettingsItemView)findViewById(0x7f06019c);
        siGuide = (SettingsItemView)findViewById(0x7f06019d);
        siAppVersion = (SettingsItemView)findViewById(0x7f06019e);
        siAppVersion.setLeftText(getString(0x7f0c012b));
        siAppVersion.setRightText((new StringBuilder()).append("V").append(getVersionName()).toString());
        siAppVersion.setRightVisisble(4);
        tvLogout = (TextView)findViewById(0x7f0601a0);
        switch_mile_onoff = (Switch)findViewById(0x7f06019b);
        siInstructions.setOnClickListener(this);
        siGuide.setOnClickListener(this);
        siAppVersion.setOnClickListener(this);
        tvLogout.setOnClickListener(this);
        siInstructions.setLeftText(getString(0x7f0c00da));
        siGuide.setLeftText(getString(0x7f0c00db));
        findViewById(0x7f06019f).setOnClickListener(this);
        switch_mile_onoff.setChecked(((Boolean)SharedPreferencesUtils.getSharedPreferences(mContext, "mile_set", Boolean.valueOf(false))).booleanValue());
        switch_mile_onoff.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final SettingsActivitySetting this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (((Boolean)SharedPreferencesUtils.getSharedPreferences(mContext, "mile_set", Boolean.valueOf(false))).booleanValue() != flag)
                {
                    SharedPreferencesUtils.setSharedPreferences(mContext, "mile_set", Boolean.valueOf(flag));
                    if (flag)
                    {
                        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_DistanceType", Integer.valueOf(1));
                        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_Weight_Type", Integer.valueOf(0));
                    } else
                    {
                        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_DistanceType", Integer.valueOf(0));
                        SharedPreferencesUtils.setSharedPreferences(getApplicationContext(), "pre_Weight_Type", Integer.valueOf(1));
                    }
                    MovnowTwoApplication.syncParams();
                }
            }

            
            {
                this$0 = SettingsActivitySetting.this;
                super();
            }
        });
        siInstructions.setVisibility(MovnowTwoApplication.deviceProduct.canShowUseInstructions);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131100060 2131100064: default 40
    //                   2131100060 41
    //                   2131100061 63
    //                   2131100062 155
    //                   2131100063 85
    //                   2131100064 90;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L2:
        view = new Intent();
        view.setClass(this, com/veclink/movnow_q2/activity/SettingsIntroduceActivity);
        startActivity(view);
        return;
_L3:
        view = new Intent();
        view.setClass(this, com/veclink/movnow_q2/activity/ActivityGuidePage);
        startActivity(view);
        return;
_L5:
        HealthyDBOperate.delAllSportAndSleepData(this);
        return;
_L6:
        if (!HealthyAccountHolder.getSessionId(this).equals(""))
        {
            ToastUtil.showShortToast(this, getString(0x7f0c00e3));
            EventBus.getDefault().unregister(this, new Class[] {
                com/veclink/healthy/business/http/pojo/LogoutResponse
            });
            EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/LogoutResponse, new Class[0]);
            SimpleHttpSchedualer.ansycSchedual(this, new HealthyLogoutSession(this));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (appVersionClickCount == 0)
        {
            appVersionClickStartTime = System.currentTimeMillis();
        }
        appVersionClickCount = appVersionClickCount + 1;
        if (appVersionClickCount >= 10 && System.currentTimeMillis() - appVersionClickStartTime < 2000L)
        {
            appVersionClickCount = 0;
            appVersionClickStartTime = 0L;
            if (ServerUrl.BASEURL.equals("http://q.movnow.com/rest"))
            {
                ServerUrl.BASEURL = "http://113.108.103.150:8985/rest";
                ServerUrl.UPLOAD_BRACELET_DATA_URL = "http://113.108.103.150:8985/Bracelet";
                ToastUtil.showShortToast(this, "change to test address success");
                return;
            } else
            {
                ServerUrl.BASEURL = "http://q.movnow.com/rest";
                ServerUrl.UPLOAD_BRACELET_DATA_URL = "http://dataq.movnow.com/Bracelet";
                ToastUtil.showShortToast(this, "change to public address success");
                return;
            }
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030056);
        mContext = this;
        initView();
    }

    public void onEvent(LogoutResponse logoutresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/LogoutResponse
        });
        HealthyAccountHolder.logOut(this);
        VLBleServiceManager.getInstance().unBindService(getApplication());
        HealthyAccountHolder.unBindDevice(this);
        startActivity(new Intent(this, com/veclink/movnow_q2/activity/LoginActivity));
        finish();
    }

    protected void onResume()
    {
        super.onResume();
        if (HealthyAccountHolder.getSessionId(this).equals(""))
        {
            tvLogout.setVisibility(8);
            return;
        } else
        {
            tvLogout.setVisibility(0);
            return;
        }
    }

}
