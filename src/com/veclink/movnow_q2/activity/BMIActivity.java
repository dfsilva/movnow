// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;
import java.util.Calendar;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class BMIActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private int MAXHEIGHT;
    private int MAXWEIGHT;
    private int MINHEIGHT;
    private int MINWEIGHT;
    private final String TAG = com/veclink/movnow_q2/activity/BMIActivity.getSimpleName();
    private View birthdayLayout;
    private TextView bmi_result_remind_textview;
    private TextView bmi_result_textview;
    private Button bmi_test_btn;
    private Context context;
    private int current_item_textsize;
    private WheelView dayWheelView;
    int distanceType;
    private ImageView femaleimg;
    private float height;
    private View heightLayout;
    private WheelView heightWheelView;
    private ImageView maleimg;
    private WheelView monthWheelView;
    private ImageView progress_bar_img;
    private View progress_layout;
    private View resultLayout;
    private ImageView result_remind_point_img;
    private View sexLayout;
    private TitleBarRelativeLayout titleBar;
    private float weight;
    private View weightLayout;
    private WheelView weightWheelView;
    private WheelView yearWheelView;

    public BMIActivity()
    {
        MINHEIGHT = 99;
        MAXHEIGHT = 299;
        MINWEIGHT = 40;
        MAXWEIGHT = 500;
        distanceType = -1;
    }

    private void getBMI()
    {
        float f;
        DebugUtil.logv(TAG, (new StringBuilder()).append("height:").append(height).toString());
        DebugUtil.logv(TAG, (new StringBuilder()).append("weight:").append(weight).toString());
        f = (height / 100F) * (height / 100F);
        if (f == 0.0F) goto _L2; else goto _L1
_L1:
        f = weight / f;
        DebugUtil.logv(TAG, (new StringBuilder()).append("bmi:").append(f).toString());
        f = StepDataConverterUtil.roundFloat(f, 1, 5);
        DebugUtil.logv(TAG, (new StringBuilder()).append("formatbmi:").append(f).toString());
        bmi_result_textview.setText(getString(0x7f0c0142, new Object[] {
            String.valueOf(f)
        }));
        if ((double)f >= 18.5D) goto _L4; else goto _L3
_L3:
        bmi_result_remind_textview.setText(getString(0x7f0c0049));
_L6:
        setImgLocation(f);
_L2:
        return;
_L4:
        if ((double)f >= 18.5D && (double)f < 24.899999999999999D)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c004b));
        } else
        if ((double)f >= 24.899999999999999D && (double)f < 29.899999999999999D)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c004d));
        } else
        if ((double)f >= 29.899999999999999D)
        {
            bmi_result_remind_textview.setText(getString(0x7f0c004f));
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void initBirthdayView()
    {
        titleBar = (TitleBarRelativeLayout)findViewById(0x7f060023);
        titleBar.setTitleText(getString(0x7f0c00ee));
        birthdayLayout = findViewById(0x7f060024);
        yearWheelView = (WheelView)findViewById(0x7f060162);
        monthWheelView = (WheelView)findViewById(0x7f060163);
        dayWheelView = (WheelView)findViewById(0x7f060164);
        yearWheelView.setWheelBackground(0x7f02018f);
        monthWheelView.setWheelBackground(0x7f02018f);
        dayWheelView.setWheelBackground(0x7f02018f);
        yearWheelView.setWheelForeground(0x7f02018f);
        monthWheelView.setWheelForeground(0x7f02018f);
        dayWheelView.setWheelForeground(0x7f02018f);
        current_item_textsize = getResources().getInteger(0x7f0a0000);
        yearWheelView.setCurrentItemSize(current_item_textsize);
        monthWheelView.setCurrentItemSize(current_item_textsize);
        dayWheelView.setCurrentItemSize(current_item_textsize);
        NumericWheelAdapter numericwheeladapter = new NumericWheelAdapter(this, 1921, Calendar.getInstance().get(1), 0x7f030068);
        NumericWheelAdapter numericwheeladapter1 = new NumericWheelAdapter(this, 1, 12, 0x7f030068);
        NumericWheelAdapter numericwheeladapter2 = new NumericWheelAdapter(this, 1, 31, 0x7f030068);
        yearWheelView.setViewAdapter(numericwheeladapter);
        monthWheelView.setViewAdapter(numericwheeladapter1);
        dayWheelView.setViewAdapter(numericwheeladapter2);
        yearWheelView.setCyclic(true);
        monthWheelView.setCyclic(true);
        dayWheelView.setCyclic(true);
    }

    private void initHeightView()
    {
        heightLayout = findViewById(0x7f060026);
        heightWheelView = (WheelView)findViewById(0x7f0601a6);
        heightWheelView.setWheelBackground(0x7f02018f);
        heightWheelView.setWheelForeground(0x7f02018f);
        TextView textview = (TextView)findViewById(0x7f0601a7);
        NumericWheelAdapter numericwheeladapter;
        if (distanceType == 0)
        {
            numericwheeladapter = new NumericWheelAdapter(this, MINHEIGHT, MAXHEIGHT, true, 0x7f030068);
            textview.setText(getString(0x7f0c0163));
        } else
        {
            MINHEIGHT = 300;
            MAXHEIGHT = 900;
            textview.setText(getString(0x7f0c0164));
            numericwheeladapter = new NumericWheelAdapter(this, MINHEIGHT, MAXHEIGHT, true, 0x7f030068);
        }
        heightWheelView.setCurrentItemSize(current_item_textsize);
        heightWheelView.setViewAdapter(numericwheeladapter);
        heightWheelView.setCyclic(true);
    }

    private void initResultView()
    {
        resultLayout = findViewById(0x7f060028);
        bmi_result_textview = (TextView)findViewById(0x7f0601b3);
        bmi_result_remind_textview = (TextView)findViewById(0x7f0601b5);
        bmi_test_btn = (Button)findViewById(0x7f0601b4);
        progress_bar_img = (ImageView)findViewById(0x7f0601af);
        result_remind_point_img = (ImageView)findViewById(0x7f0601b1);
        progress_layout = findViewById(0x7f0601ae);
    }

    private void initSexView()
    {
        sexLayout = findViewById(0x7f060025);
        maleimg = (ImageView)findViewById(0x7f06004c);
        femaleimg = (ImageView)findViewById(0x7f06004d);
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_Sex", Integer.valueOf(1))).intValue() == 0)
        {
            maleimg.setSelected(false);
            femaleimg.setSelected(true);
        } else
        {
            maleimg.setSelected(true);
            femaleimg.setSelected(false);
        }
        maleimg.setOnClickListener(this);
        femaleimg.setOnClickListener(this);
    }

    private void initWeightView()
    {
        weightLayout = findViewById(0x7f060027);
        weightWheelView = (WheelView)findViewById(0x7f0601aa);
        TextView textview = (TextView)findViewById(0x7f0601ab);
        weightWheelView.setWheelBackground(0x7f020166);
        weightWheelView.setWheelBackground(0x7f02018f);
        weightWheelView.setWheelForeground(0x7f02018f);
        NumericWheelAdapter numericwheeladapter;
        if (distanceType == 0)
        {
            numericwheeladapter = new NumericWheelAdapter(this, MINWEIGHT, MAXWEIGHT, 0x7f030068);
            textview.setText(getString(0x7f0c0166));
        } else
        {
            MINWEIGHT = 80;
            MAXWEIGHT = 220;
            textview.setText(getString(0x7f0c0165));
            numericwheeladapter = new NumericWheelAdapter(this, MINWEIGHT, MAXWEIGHT, 0x7f030068);
        }
        weightWheelView.setCurrentItemSize(current_item_textsize);
        weightWheelView.setViewAdapter(numericwheeladapter);
        weightWheelView.setCyclic(true);
    }

    private void setCurrentLayoutVisible(View view)
    {
        birthdayLayout.setVisibility(8);
        sexLayout.setVisibility(8);
        heightLayout.setVisibility(8);
        weightLayout.setVisibility(8);
        resultLayout.setVisibility(8);
        view.setVisibility(0);
    }

    private void setImgLocation(float f)
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
        if ((double)f > 18.5D) goto _L2; else goto _L1
_L1:
        i = (int)((double)((float)(j / 4) * f) / 18.5D);
_L4:
        obj.leftMargin = i;
        progress_bar_img.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        layoutparams.leftMargin = i;
        result_remind_point_img.setLayoutParams(layoutparams);
        return;
_L2:
        if ((double)f > 18.5D && f <= 25F)
        {
            i = (int)((double)((float)(j / 2) * f) / 24.899999999999999D);
        } else
        if (f > 25F && (double)f <= 29.899999999999999D)
        {
            i = (int)((double)((float)((j * 3) / 4) * f) / 29.899999999999999D);
        } else
        if ((double)f > 29.899999999999999D)
        {
            int k = (int)((double)((j * 3) / 4) + (((double)f - 29.899999999999999D) * (double)j) / 4D / 18.5D);
            i = k;
            if (k > j)
            {
                i = j;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
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
        if (imageview.equals(femaleimg))
        {
            maleimg.setSelected(false);
            return;
        } else
        {
            femaleimg.setSelected(false);
            return;
        }
    }

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131100066: 
            setCurrentLayoutVisible(sexLayout);
            return;

        case 2131100068: 
            setCurrentLayoutVisible(birthdayLayout);
            return;

        case 2131100069: 
            setCurrentLayoutVisible(heightLayout);
            return;

        case 2131100072: 
            setCurrentLayoutVisible(sexLayout);
            return;

        case 2131100073: 
            setCurrentLayoutVisible(weightLayout);
            return;

        case 2131100076: 
            setCurrentLayoutVisible(heightLayout);
            return;

        case 2131100077: 
            setCurrentLayoutVisible(resultLayout);
            height = heightWheelView.getCurrentItem() + MINHEIGHT;
            weight = weightWheelView.getCurrentItem() + MINWEIGHT;
            if (distanceType == 1)
            {
                height = StepDataConverterUtil.getMbyFt(height / 100F) * 100F;
                weight = StepDataConverterUtil.getKgUnitWeight(weight);
            }
            getBMI();
            return;

        case 2131100084: 
            setCurrentLayoutVisible(birthdayLayout);
            return;

        case 2131099724: 
            maleimg.setSelected(true);
            femaleimg.setSelected(false);
            return;

        case 2131099725: 
            maleimg.setSelected(false);
            femaleimg.setSelected(true);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030002);
        context = this;
        distanceType = ((Integer)SharedPreferencesUtils.getSharedPreferences(getApplicationContext(), "pre_DistanceType", Integer.valueOf(0))).intValue();
        initBirthdayView();
        initSexView();
        initHeightView();
        initWeightView();
        initResultView();
        setCurrentLayoutVisible(resultLayout);
        weight = ((Float)SharedPreferencesUtils.getSharedPreferences(this, "personal_weight", Float.valueOf(50F))).floatValue();
        height = ((Float)SharedPreferencesUtils.getSharedPreferences(this, "personal_height", Float.valueOf(160F))).floatValue();
        getBMI();
    }
}
