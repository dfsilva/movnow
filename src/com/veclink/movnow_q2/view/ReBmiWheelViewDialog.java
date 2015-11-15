// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.wheel.OnWheelChangedListener;
import com.veclink.movnow_q2.view.wheel.WheelView;
import com.veclink.movnow_q2.view.wheel.adapter.ArrayWheelAdapter;
import com.veclink.movnow_q2.view.wheel.adapter.NumericWheelAdapter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ReBmiWheelViewDialog extends Dialog
{

    public static final int SHOW_BIRDAY_VIEW = 1;
    public static final int SHOW_HEIGHTVIEW = 3;
    public static final int SHOW_WIEGHTVIEW = 2;
    final int VISIBLEITEMCOUNT = 5;
    private View birday_wheelViews;
    int currentItemSize;
    private WheelView dayWheelView;
    private android.view.View.OnClickListener defaultListener;
    private WheelView first_height_wheelview;
    private WheelView first_weight_wheelview;
    String height_unit_array[];
    private WheelView height_unit_wheelview;
    private View height_wheelViews;
    private Context mContext;
    int minWeight;
    private WheelView monthWheelView;
    private Button saveBtn;
    private android.view.View.OnClickListener saveListener;
    private WheelView second_height_wheelview;
    private WheelView second_weight_wheelview;
    public TextView show_result_view;
    private int show_which;
    String weight_unit_array[];
    private WheelView weight_unit_wheelview;
    private View weight_wheelViews;
    private WheelView yearWheelView;

    public ReBmiWheelViewDialog(Context context, int i, TextView textview)
    {
        super(context, 0x7f0b0016);
        minWeight = 2;
        defaultListener = new android.view.View.OnClickListener() {

            final ReBmiWheelViewDialog this$0;

            public void onClick(View view)
            {
                view = saveResult();
                if (view.equals(""))
                {
                    return;
                } else
                {
                    show_result_view.setText(view);
                    dismiss();
                    return;
                }
            }

            
            {
                this$0 = ReBmiWheelViewDialog.this;
                super();
            }
        };
        mContext = context;
        show_which = i;
        show_result_view = textview;
    }

    private void initHeightView()
    {
        first_height_wheelview = (WheelView)findViewById(0x7f06016a);
        second_height_wheelview = (WheelView)findViewById(0x7f06016b);
        height_unit_wheelview = (WheelView)findViewById(0x7f06016c);
        first_height_wheelview.setWheelBackground(0x7f02018f);
        first_height_wheelview.setWheelForeground(0x7f020124);
        second_height_wheelview.setWheelBackground(0x7f02018f);
        second_height_wheelview.setWheelForeground(0x7f020124);
        height_unit_wheelview.setWheelBackground(0x7f02018f);
        height_unit_wheelview.setWheelForeground(0x7f020124);
        final ArrayWheelAdapter height_unit_adapter = new NumericWheelAdapter(mContext, 0, 8, 0x7f030050);
        first_height_wheelview.setCurrentItemSize(currentItemSize);
        first_height_wheelview.setViewAdapter(height_unit_adapter);
        first_height_wheelview.setCyclic(true);
        first_height_wheelview.setVisibleItems(5);
        height_unit_adapter = new ArrayList();
        for (int i = 0; i < 100; i++)
        {
            height_unit_adapter.add(String.format(".%02d", new Object[] {
                Integer.valueOf(i)
            }));
        }

        height_unit_adapter = new ArrayWheelAdapter(mContext, height_unit_adapter.toArray());
        height_unit_adapter.setItemResource(0x7f030050);
        second_height_wheelview.setCurrentItemSize(currentItemSize);
        second_height_wheelview.setViewAdapter(height_unit_adapter);
        second_height_wheelview.setCyclic(true);
        height_unit_array = mContext.getResources().getStringArray(0x7f050001);
        height_unit_adapter = new ArrayWheelAdapter(mContext, height_unit_array);
        height_unit_adapter.setItemResource(0x7f030050);
        height_unit_wheelview.setCurrentItemSize(currentItemSize);
        height_unit_wheelview.setViewAdapter(height_unit_adapter);
        height_unit_wheelview.addChangingListener(new OnWheelChangedListener() {

            final ReBmiWheelViewDialog this$0;
            final ArrayWheelAdapter val$height_unit_adapter;

            public void onChanged(WheelView wheelview, int k, int l)
            {
                if (height_unit_adapter.getItemText(wheelview.getCurrentItem()).equals(height_unit_array[0]))
                {
                    wheelview = new NumericWheelAdapter(mContext, 0, 8, 0x7f030050);
                } else
                {
                    wheelview = new NumericWheelAdapter(mContext, 0, 2, 0x7f030050);
                }
                first_height_wheelview.setViewAdapter(wheelview);
            }

            
            {
                this$0 = ReBmiWheelViewDialog.this;
                height_unit_adapter = arraywheeladapter;
                super();
            }
        });
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(0.0F))).floatValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0))).intValue();
        height_unit_adapter = mContext.getResources().getStringArray(0x7f050001);
        if (j == 0)
        {
            height_unit_adapter = height_unit_adapter[1];
            f = StepDataConverterUtil.roundFloat(0.01F * f, 2, 4);
            height_unit_wheelview.setCurrentItem(1);
        } else
        {
            height_unit_adapter = height_unit_adapter[0];
            f = StepDataConverterUtil.getFtByM(0.01F * f);
            height_unit_wheelview.setCurrentItem(0);
        }
        height_unit_adapter = Float.toString(f).split("[.]");
        first_height_wheelview.setCurrentItem(Integer.parseInt(height_unit_adapter[0]));
        second_height_wheelview.setCurrentItem(Integer.parseInt(height_unit_adapter[1]));
    }

    private void initShowView()
    {
        switch (show_which)
        {
        default:
            return;

        case 1: // '\001'
            birday_wheelViews.setVisibility(0);
            weight_wheelViews.setVisibility(8);
            height_wheelViews.setVisibility(8);
            int i = Calendar.getInstance().get(1);
            NumericWheelAdapter numericwheeladapter = new NumericWheelAdapter(mContext, 1921, i, 0x7f030050);
            NumericWheelAdapter numericwheeladapter1 = new NumericWheelAdapter(mContext, 1, 12, 0x7f030050);
            NumericWheelAdapter numericwheeladapter2 = new NumericWheelAdapter(mContext, 1, 31, 0x7f030050);
            yearWheelView.setViewAdapter(numericwheeladapter);
            monthWheelView.setViewAdapter(numericwheeladapter1);
            dayWheelView.setViewAdapter(numericwheeladapter2);
            yearWheelView.setCyclic(true);
            monthWheelView.setCyclic(true);
            dayWheelView.setCyclic(true);
            yearWheelView.setCurrentItemSize(currentItemSize);
            monthWheelView.setCurrentItemSize(currentItemSize);
            dayWheelView.setCurrentItemSize(currentItemSize);
            i = mContext.getResources().getInteger(0x7f0a0002);
            yearWheelView.setLabelSize(i);
            monthWheelView.setLabelSize(i);
            dayWheelView.setLabelSize(i);
            yearWheelView.setVisibleItems(5);
            monthWheelView.setVisibleItems(5);
            dayWheelView.setVisibleItems(5);
            i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_year", Integer.valueOf(1921))).intValue();
            int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_month", Integer.valueOf(1))).intValue();
            int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_day", Integer.valueOf(1))).intValue();
            yearWheelView.setCurrentItem(i - 1921);
            monthWheelView.setCurrentItem(j - 1);
            dayWheelView.setCurrentItem(k - 1);
            return;

        case 2: // '\002'
            birday_wheelViews.setVisibility(8);
            weight_wheelViews.setVisibility(0);
            height_wheelViews.setVisibility(8);
            initWeightView();
            return;

        case 3: // '\003'
            birday_wheelViews.setVisibility(8);
            break;
        }
        weight_wheelViews.setVisibility(8);
        height_wheelViews.setVisibility(0);
        initHeightView();
    }

    private void initWeightView()
    {
        first_weight_wheelview = (WheelView)findViewById(0x7f060166);
        second_weight_wheelview = (WheelView)findViewById(0x7f060167);
        weight_unit_wheelview = (WheelView)findViewById(0x7f060168);
        first_weight_wheelview.setWheelBackground(0x7f02018f);
        first_weight_wheelview.setWheelForeground(0x7f020124);
        second_weight_wheelview.setWheelBackground(0x7f02018f);
        second_weight_wheelview.setWheelForeground(0x7f020124);
        weight_unit_wheelview.setWheelBackground(0x7f02018f);
        weight_unit_wheelview.setWheelForeground(0x7f020124);
        weight_unit_array = mContext.getResources().getStringArray(0x7f050002);
        final ArrayWheelAdapter weight_unit_adapter = new ArrayWheelAdapter(mContext, weight_unit_array);
        weight_unit_adapter.setItemResource(0x7f030050);
        weight_unit_wheelview.setCurrentItemSize(currentItemSize);
        weight_unit_wheelview.setViewAdapter(weight_unit_adapter);
        weight_unit_wheelview.addChangingListener(new OnWheelChangedListener() {

            final ReBmiWheelViewDialog this$0;
            final ArrayWheelAdapter val$weight_unit_adapter;

            public void onChanged(WheelView wheelview, int j, int k)
            {
                first_weight_wheelview.getCurrentItem();
                if (weight_unit_adapter.getItemText(wheelview.getCurrentItem()).equals(weight_unit_array[0]))
                {
                    wheelview = new NumericWheelAdapter(mContext, 4, 1103, 0x7f030050);
                    minWeight = 4;
                } else
                {
                    wheelview = new NumericWheelAdapter(mContext, 2, 500, 0x7f030050);
                    minWeight = 2;
                }
                first_weight_wheelview.setViewAdapter(wheelview);
                first_weight_wheelview.setCurrentItem(0);
            }

            
            {
                this$0 = ReBmiWheelViewDialog.this;
                weight_unit_adapter = arraywheeladapter;
                super();
            }
        });
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(1))).intValue();
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(0.0F))).floatValue();
        if (i == 1)
        {
            Object obj = weight_unit_array[1];
            weight_unit_wheelview.setCurrentItem(1);
            minWeight = 2;
            obj = new NumericWheelAdapter(mContext, 2, 200, 0x7f030050);
            first_weight_wheelview.setViewAdapter(((com.veclink.movnow_q2.view.wheel.adapter.WheelViewAdapter) (obj)));
            first_weight_wheelview.setCyclic(true);
            first_weight_wheelview.setVisibleItems(5);
        } else
        {
            Object obj1 = weight_unit_array[0];
            f = StepDataConverterUtil.getLbUnitWeight(f);
            weight_unit_wheelview.setCurrentItem(0);
            minWeight = 4;
            obj1 = new NumericWheelAdapter(mContext, 4, 441, 0x7f030050);
            first_weight_wheelview.setViewAdapter(((com.veclink.movnow_q2.view.wheel.adapter.WheelViewAdapter) (obj1)));
            first_weight_wheelview.setCyclic(true);
            first_weight_wheelview.setVisibleItems(5);
        }
        i = (int)(f - (float)minWeight);
        first_weight_wheelview.setCurrentItem(i);
    }

    public android.view.View.OnClickListener getSaveListener()
    {
        return saveListener;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        int i = 0x7f03004f;
        if (LanguageUtil.isChina())
        {
            i = 0x7f03004e;
        }
        View view = getLayoutInflater().inflate(i, null);
        setContentView(view);
        saveBtn = (Button)findViewById(0x7f0600a1);
        Button button = saveBtn;
        if (saveListener == null)
        {
            bundle = defaultListener;
        } else
        {
            bundle = saveListener;
        }
        button.setOnClickListener(bundle);
        birday_wheelViews = findViewById(0x7f060161);
        weight_wheelViews = findViewById(0x7f060165);
        height_wheelViews = findViewById(0x7f060169);
        yearWheelView = (WheelView)findViewById(0x7f060162);
        monthWheelView = (WheelView)findViewById(0x7f060163);
        dayWheelView = (WheelView)findViewById(0x7f060164);
        currentItemSize = mContext.getResources().getInteger(0x7f0a0001);
        yearWheelView.setWheelForeground(0x7f020124);
        yearWheelView.setWheelBackground(0x7f02018f);
        monthWheelView.setWheelForeground(0x7f020124);
        monthWheelView.setWheelBackground(0x7f02018f);
        dayWheelView.setWheelForeground(0x7f020124);
        dayWheelView.setWheelBackground(0x7f02018f);
        setContentView(view, new android.view.ViewGroup.LayoutParams(((Activity)mContext).getWindowManager().getDefaultDisplay().getWidth(), -2));
        bundle = getWindow();
        bundle.setWindowAnimations(0x7f0b0018);
        bundle = bundle.getAttributes();
        bundle.x = 0;
        bundle.y = ((Activity)mContext).getWindowManager().getDefaultDisplay().getHeight();
        onWindowAttributesChanged(bundle);
        initShowView();
    }

    public String saveResult()
    {
        Object obj = null;
        show_which;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 34
    //                   2 265
    //                   3 438;
           goto _L1 _L2 _L3 _L4
_L1:
        return ((String) (obj));
_L2:
        obj = new StringBuffer();
        if (LanguageUtil.isChina())
        {
            ((StringBuffer) (obj)).append(String.valueOf(yearWheelView.getCurrentItem() + 1921));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(monthWheelView.getCurrentItem() + 1));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(dayWheelView.getCurrentItem() + 1));
        } else
        {
            ((StringBuffer) (obj)).append(String.valueOf(monthWheelView.getCurrentItem() + 1));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(dayWheelView.getCurrentItem() + 1));
            ((StringBuffer) (obj)).append("/");
            ((StringBuffer) (obj)).append(String.valueOf(yearWheelView.getCurrentItem() + 1921));
        }
        obj = ((StringBuffer) (obj)).toString();
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_year", Integer.valueOf(yearWheelView.getCurrentItem() + 1921));
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_month", Integer.valueOf(monthWheelView.getCurrentItem() + 1));
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_day", Integer.valueOf(dayWheelView.getCurrentItem() + 1));
        continue; /* Loop/switch isn't completed */
_L3:
        obj = (NumericWheelAdapter)first_weight_wheelview.getViewAdapter();
        obj = (ArrayWheelAdapter)second_weight_wheelview.getViewAdapter();
        Object obj1 = (ArrayWheelAdapter)weight_unit_wheelview.getViewAdapter();
        obj = new StringBuffer();
        float f2 = first_weight_wheelview.getCurrentItem() + minWeight;
        ((StringBuffer) (obj)).append((int)f2);
        obj1 = ((ArrayWheelAdapter) (obj1)).getItemText(weight_unit_wheelview.getCurrentItem()).toString();
        ((StringBuffer) (obj)).append(((String) (obj1)));
        obj = ((StringBuffer) (obj)).toString();
        float f = f2;
        if (((String) (obj1)).equals(weight_unit_array[0]))
        {
            f = StepDataConverterUtil.getKgUnitWeight(f2);
        }
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_weight", Float.valueOf(f));
        if (weight_unit_wheelview.getCurrentItem() == 0)
        {
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(0));
        } else
        {
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(1));
        }
        continue; /* Loop/switch isn't completed */
_L4:
        obj = (NumericWheelAdapter)first_height_wheelview.getViewAdapter();
        Object obj2 = (ArrayWheelAdapter)second_height_wheelview.getViewAdapter();
        ArrayWheelAdapter arraywheeladapter = (ArrayWheelAdapter)height_unit_wheelview.getViewAdapter();
        obj = new StringBuffer();
        ((StringBuffer) (obj)).append(String.valueOf(first_height_wheelview.getCurrentItem()));
        ((StringBuffer) (obj)).append(((ArrayWheelAdapter) (obj2)).getItemText(second_height_wheelview.getCurrentItem()));
        float f1 = Float.parseFloat(((StringBuffer) (obj)).toString());
        if (f1 == 0.0F)
        {
            ToastUtil.showShortToast(mContext, mContext.getString(0x7f0c01b5));
            return "";
        }
        obj2 = arraywheeladapter.getItemText(height_unit_wheelview.getCurrentItem()).toString();
        ((StringBuffer) (obj)).append(((String) (obj2)));
        obj = ((StringBuffer) (obj)).toString();
        if (((String) (obj2)).equals(height_unit_array[0]))
        {
            f1 = StepDataConverterUtil.getMbyFt(f1) * 100F;
        } else
        {
            f1 *= 100F;
        }
        SharedPreferencesUtils.setSharedPreferences(mContext, "personal_height", Float.valueOf(f1));
        if (height_unit_wheelview.getCurrentItem() == 0)
        {
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(1));
        } else
        {
            SharedPreferencesUtils.setSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0));
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setSaveListener(android.view.View.OnClickListener onclicklistener)
    {
        saveListener = onclicklistener;
    }



}
