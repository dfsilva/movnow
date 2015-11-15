// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class ShowHeartReateResultActivity extends HealthyBaseActivity
{

    private TextView bmi_result_remind_textview;
    private TextView bmi_result_textview;
    private int heart_reate;
    private ImageView progress_bar_img;
    private ImageView result_remind_point_img;
    private TitleBarRelativeLayout titleBar;

    public ShowHeartReateResultActivity()
    {
    }

    private void initView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060023);
        titleBar.setTitleText(getString(0x7f0c01a9));
        bmi_result_textview = (TextView)findViewById(0x7f0601b3);
        bmi_result_remind_textview = (TextView)findViewById(0x7f0601ba);
        progress_bar_img = (ImageView)findViewById(0x7f0601af);
        result_remind_point_img = (ImageView)findViewById(0x7f0601b1);
        bmi_result_textview.setText(getString(0x7f0c01a8, new Object[] {
            String.valueOf(heart_reate)
        }));
        if (heart_reate >= 100) goto _L2; else goto _L1
_L1:
        bmi_result_remind_textview.setText(getString(0x7f0c01a2));
_L4:
        setImgLocation();
        return;
_L2:
        if (heart_reate >= 100 && heart_reate <= 120)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c01a3));
        } else
        if (heart_reate > 120)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c01a4));
        } else
        if (heart_reate > 39 && heart_reate <= 50)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c01a1));
        } else
        if (heart_reate <= 39)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c01a0));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void setImgLocation()
    {
        Object obj;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        int i;
        int j;
        obj = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(((DisplayMetrics) (obj)));
        j = (int)((double)((DisplayMetrics) (obj)).widthPixels * 0.90000000000000002D);
        obj = (android.widget.FrameLayout.LayoutParams)progress_bar_img.getLayoutParams();
        layoutparams = (android.widget.RelativeLayout.LayoutParams)result_remind_point_img.getLayoutParams();
        i = 0;
        if (heart_reate >= 60) goto _L2; else goto _L1
_L1:
        i = ((j / 4) * heart_reate) / 60;
_L4:
        obj.leftMargin = i;
        progress_bar_img.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        layoutparams.leftMargin = i;
        result_remind_point_img.setLayoutParams(layoutparams);
        return;
_L2:
        if (heart_reate > 60 && heart_reate <= 100)
        {
            i = (((j * 3) / 4) * heart_reate) / 100;
        } else
        if (heart_reate > 100)
        {
            int k = (j * 3) / 4 + ((heart_reate - 100) * j) / 4 / 60;
            i = k;
            if (k > j)
            {
                i = j;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03005e);
        heart_reate = getIntent().getIntExtra("heart_reate", 0);
        initView();
    }
}
