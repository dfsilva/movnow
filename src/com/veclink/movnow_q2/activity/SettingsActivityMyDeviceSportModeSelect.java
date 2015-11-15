// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.view.CustomAlertDialog;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MovnowTwoApplication

public class SettingsActivityMyDeviceSportModeSelect extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    public static final String SPORTTYPE = "sporttype";
    private int currentSportType;
    private CustomAlertDialog dialog;
    private Context mContext;
    private int savedSportType;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private TextView tvDefault;
    private TextView tvRiding;
    private TextView tvSleep;
    private TextView tvWalk;

    public SettingsActivityMyDeviceSportModeSelect()
    {
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c00c8));
        titleBarRelativeLayout.setRightVisisble(8);
        titleBarRelativeLayout.setRightBackground(0x7f020128);
        titleBarRelativeLayout.setRightText(getString(0x7f0c00f4));
        titleBarRelativeLayout.setRightButtonListener(this);
        tvDefault = (TextView)findViewById(0x7f060185);
        tvWalk = (TextView)findViewById(0x7f060186);
        tvSleep = (TextView)findViewById(0x7f060187);
        tvRiding = (TextView)findViewById(0x7f060188);
        tvDefault.setOnClickListener(this);
        tvWalk.setOnClickListener(this);
        tvSleep.setOnClickListener(this);
        tvRiding.setOnClickListener(this);
        tvSleep.setSelected(false);
        tvRiding.setSelected(false);
    }

    private void saveSportType(int i)
    {
        if (currentSportType != i)
        {
            currentSportType = i;
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_SportType", Integer.valueOf(currentSportType));
            MovnowTwoApplication.syncParams();
        }
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        case 2131100107: 
        default:
            return;

        case 2131100037: 
            tvDefault.setSelected(true);
            tvWalk.setSelected(false);
            tvSleep.setSelected(false);
            saveSportType(0);
            return;

        case 2131100038: 
            tvWalk.setSelected(true);
            tvDefault.setSelected(false);
            tvSleep.setSelected(false);
            saveSportType(1);
            return;

        case 2131100039: 
            tvSleep.setSelected(true);
            tvWalk.setSelected(false);
            tvDefault.setSelected(false);
            saveSportType(2);
            return;

        case 2131100040: 
            break;
        }
        if (tvRiding.isSelected())
        {
            tvRiding.setSelected(false);
            return;
        } else
        {
            tvRiding.setSelected(true);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030054);
        initView();
        mContext = this;
    }

    protected void onResume()
    {
        super.onResume();
        currentSportType = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplication(), "pre_SportType", Integer.valueOf(0))).intValue();
        switch (currentSportType)
        {
        default:
            return;

        case 0: // '\0'
            tvDefault.setSelected(true);
            tvWalk.setSelected(false);
            tvSleep.setSelected(false);
            return;

        case 1: // '\001'
            tvDefault.setSelected(false);
            tvWalk.setSelected(true);
            tvSleep.setSelected(false);
            return;

        case 2: // '\002'
            tvDefault.setSelected(false);
            break;
        }
        tvWalk.setSelected(false);
        tvSleep.setSelected(true);
    }
}
