// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.TextView;

public class CustomPopupWimdow extends PopupWindow
{

    private View contentView;
    private TextView tvOne;
    private TextView tvThree;
    private TextView tvTwo;

    public CustomPopupWimdow(Activity activity)
    {
        contentView = ((LayoutInflater)activity.getSystemService("layout_inflater")).inflate(0x7f030029, null);
        tvOne = (TextView)contentView.findViewById(0x7f060092);
        tvTwo = (TextView)contentView.findViewById(0x7f060093);
        tvThree = (TextView)contentView.findViewById(0x7f060094);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        int i = displaymetrics.widthPixels;
        int j = displaymetrics.heightPixels;
        setContentView(contentView);
        setWidth(i / 2 - 50);
        setHeight(-2);
        setFocusable(true);
        setOutsideTouchable(true);
        update();
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(0x7f0b000c);
    }

    public void setOneBtnText(String s)
    {
        tvOne.setText(s);
    }

    public void setOneOnclicListener(android.view.View.OnClickListener onclicklistener)
    {
        tvOne.setOnClickListener(onclicklistener);
    }

    public void setThreeOnclicListener(android.view.View.OnClickListener onclicklistener)
    {
        tvThree.setOnClickListener(onclicklistener);
    }

    public void setThreeVisisble(int i)
    {
        tvThree.setVisibility(i);
    }

    public void setTwoBtnText(String s)
    {
        tvTwo.setText(s);
    }

    public void setTwoOnclicListener(android.view.View.OnClickListener onclicklistener)
    {
        tvTwo.setOnClickListener(onclicklistener);
    }
}
