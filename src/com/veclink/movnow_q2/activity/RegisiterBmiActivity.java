// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.view.ReBmiWheelViewDialog;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, SettingsActivityMytarget

public class RegisiterBmiActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    ImageView female_img;
    private Context mContext;
    ImageView male_img;
    View person_birthday_layout;
    TextView person_birthday_textview;
    View person_height_layout;
    TextView person_height_textview;
    View person_weight_layout;
    TextView person_weight_textview;
    ReBmiWheelViewDialog reBmiWheelViewDialog;
    TitleBarRelativeLayout titleBar;

    public RegisiterBmiActivity()
    {
        reBmiWheelViewDialog = null;
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060017);
        titleBar.setTitleText(getString(0x7f0c010e));
        titleBar.setRightVisisble(0);
        titleBar.setRightBackground(0x7f020168);
        titleBar.setRightButtonListener(this);
        titleBar.setRightText(getString(0x7f0c00f4));
        male_img = (ImageView)findViewById(0x7f06004c);
        female_img = (ImageView)findViewById(0x7f06004d);
        person_birthday_textview = (TextView)findViewById(0x7f06004f);
        person_height_textview = (TextView)findViewById(0x7f060053);
        person_weight_textview = (TextView)findViewById(0x7f060051);
        person_birthday_layout = findViewById(0x7f06004e);
        person_height_layout = findViewById(0x7f060052);
        person_weight_layout = findViewById(0x7f060050);
        male_img.setOnClickListener(this);
        female_img.setSelected(true);
        female_img.setOnClickListener(this);
        person_birthday_layout.setOnClickListener(this);
        person_height_layout.setOnClickListener(this);
        person_weight_layout.setOnClickListener(this);
        setDefaultPersonnalMsg();
    }

    private void setDefaultPersonnalMsg()
    {
        String as[] = mContext.getResources().getStringArray(0x7f050002);
        String as1[] = mContext.getResources().getStringArray(0x7f050001);
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_year", Integer.valueOf(1990));
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_month", Integer.valueOf(12));
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_day", Integer.valueOf(12));
        SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1));
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_weight", Float.valueOf(78F));
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_height", Float.valueOf(175F));
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(String.valueOf(1990));
        stringbuffer.append("-");
        stringbuffer.append(String.valueOf(12));
        stringbuffer.append("-");
        stringbuffer.append(String.valueOf(12));
        person_birthday_textview.setText(stringbuffer.toString());
        if (LanguageUtil.isChina())
        {
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0));
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(1));
            person_height_textview.setText((new StringBuilder()).append(1.75D).append(as1[1]).toString());
            person_weight_textview.setText((new StringBuilder()).append(78).append(as[1]).toString());
            return;
        } else
        {
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(1));
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(0));
            person_height_textview.setText((new StringBuilder()).append(StepDataConverterUtil.getFtByM(1.75F)).append(as1[0]).toString());
            person_weight_textview.setText((new StringBuilder()).append(StepDataConverterUtil.getLbUnitWeight(78F)).append(as[0]).toString());
            return;
        }
    }

    private void setImgSelectedState(ImageView imageview)
    {
        if (imageview.isSelected())
        {
            imageview.setSelected(false);
        } else
        {
            imageview.setSelected(true);
        }
        if (imageview.equals(female_img))
        {
            male_img.setSelected(false);
            return;
        } else
        {
            female_img.setSelected(false);
            return;
        }
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131100107: 
            view = new Intent(this, com/veclink/movnow_q2/activity/SettingsActivityMytarget);
            view.putExtra("firstLogin", true);
            startActivity(view);
            finish();
            return;

        case 2131099724: 
            male_img.setSelected(true);
            female_img.setSelected(false);
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Sex", Integer.valueOf(0));
            return;

        case 2131099725: 
            male_img.setSelected(false);
            female_img.setSelected(true);
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Sex", Integer.valueOf(1));
            return;

        case 2131099726: 
            reBmiWheelViewDialog = new ReBmiWheelViewDialog(this, 1, person_birthday_textview);
            reBmiWheelViewDialog.setCanceledOnTouchOutside(true);
            reBmiWheelViewDialog.show();
            return;

        case 2131099730: 
            reBmiWheelViewDialog = new ReBmiWheelViewDialog(this, 3, person_height_textview);
            reBmiWheelViewDialog.setCanceledOnTouchOutside(true);
            reBmiWheelViewDialog.show();
            return;

        case 2131099728: 
            reBmiWheelViewDialog = new ReBmiWheelViewDialog(this, 2, person_weight_textview);
            reBmiWheelViewDialog.setCanceledOnTouchOutside(true);
            reBmiWheelViewDialog.show();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000f);
        mContext = this;
        initView();
    }
}
