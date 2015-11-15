// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.LogoutResponse;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.view.SettingsItemView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MovnowTwoApplication, SettingsActivityMyDevice, SettingsActivityMytarget, 
//            SettingsActivityMyDeviceSportModeSelect, SettingsActivitySetting, LoginActivity, MyAccountActivity, 
//            BleDeviceListActivity, MainActivity

public class SettingsActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private Context mContext;
    private SettingsItemView siLogin;
    private SettingsItemView siMyDevices;
    private SettingsItemView siMyTarget;
    private SettingsItemView siSettings;
    private SettingsItemView siSportType;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private TextView tvConSyn;

    public SettingsActivity()
    {
    }

    private void initView()
    {
        siMyDevices = (SettingsItemView)findViewById(0x7f06005c);
        siMyTarget = (SettingsItemView)findViewById(0x7f06005d);
        siSettings = (SettingsItemView)findViewById(0x7f06005f);
        siLogin = (SettingsItemView)findViewById(0x7f060060);
        siSportType = (SettingsItemView)findViewById(0x7f06005e);
        siSportType.setLeftText(getString(0x7f0c00c8));
        tvConSyn = (TextView)findViewById(0x7f060061);
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060017);
        tvConSyn.setOnClickListener(this);
        siMyDevices.setOnClickListener(this);
        siMyTarget.setOnClickListener(this);
        siSettings.setOnClickListener(this);
        siLogin.setOnClickListener(this);
        siSportType.setOnClickListener(this);
        siMyDevices.setLeftText(getString(0x7f0c00c4));
        siMyTarget.setLeftText(getString(0x7f0c00c3));
        siSettings.setLeftText(getString(0x7f0c0035));
        titleBarRelativeLayout.setTitleText("");
        titleBarRelativeLayout.setLeftTextBackground(0x7f020173);
        titleBarRelativeLayout.setLefttButtonListener(new android.view.View.OnClickListener() {

            final SettingsActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(mContext, com/veclink/movnow_q2/activity/MainActivity);
                startActivity(view);
                finish();
            }

            
            {
                this$0 = SettingsActivity.this;
                super();
            }
        });
        siSportType.setVisibility(MovnowTwoApplication.deviceProduct.canShowSportType);
    }

    private void sendIntent(Class class1)
    {
        startActivity(new Intent(this, class1));
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131099740: 
            sendIntent(com/veclink/movnow_q2/activity/SettingsActivityMyDevice);
            return;

        case 2131099741: 
            sendIntent(com/veclink/movnow_q2/activity/SettingsActivityMytarget);
            return;

        case 2131099742: 
            sendIntent(com/veclink/movnow_q2/activity/SettingsActivityMyDeviceSportModeSelect);
            return;

        case 2131099743: 
            sendIntent(com/veclink/movnow_q2/activity/SettingsActivitySetting);
            return;

        case 2131099744: 
            if (HealthyAccountHolder.isNeedLogin(mContext))
            {
                sendIntent(com/veclink/movnow_q2/activity/LoginActivity);
                return;
            } else
            {
                sendIntent(com/veclink/movnow_q2/activity/MyAccountActivity);
                return;
            }

        case 2131099745: 
            break;
        }
        if (Keeper.getBindDeviceMacAddress(mContext).equals(""))
        {
            sendIntent(com/veclink/movnow_q2/activity/BleDeviceListActivity);
        }
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mContext = this;
        setContentView(0x7f030013);
        initView();
    }

    public void onEvent(LogoutResponse logoutresponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/LogoutResponse
        });
        Log.v("LogoutResponse", logoutresponse.toString());
        HealthyAccountHolder.logOut(this);
        siLogin.setRightText("");
        logoutresponse = (MovnowTwoApplication)getApplication();
        logoutresponse.setHasSyncSleepData(false);
        logoutresponse.setHasSyncStepData(false);
        logoutresponse.getActivityManager().popAllActivityExceptOne(android/app/Activity);
        startActivity(new Intent(this, com/veclink/movnow_q2/activity/LoginActivity));
    }

    protected void onResume()
    {
        super.onResume();
        if (!HealthyAccountHolder.getSessionId(mContext).equals(""))
        {
            siLogin.setLeftText(HealthyAccountHolder.getEmail(mContext));
        }
    }

}
