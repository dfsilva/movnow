// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class SettingsItemView extends RelativeLayout
{

    private TextView leftTextView;
    private TextView rightTextView;
    private RelativeLayout rlSettingItemBg;
    private TextView tvarrow;

    public SettingsItemView(Context context)
    {
        super(context);
        initView(context);
    }

    public SettingsItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initView(context);
    }

    public SettingsItemView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initView(context);
    }

    private void initView(Context context)
    {
        LayoutInflater.from(context).inflate(0x7f03003d, this);
        rlSettingItemBg = (RelativeLayout)findViewById(0x7f0600f6);
        leftTextView = (TextView)findViewById(0x7f0600f7);
        rightTextView = (TextView)findViewById(0x7f0600f9);
        tvarrow = (TextView)findViewById(0x7f0600f8);
    }

    public String getRightText()
    {
        if (!rightTextView.getText().equals(""))
        {
            return rightTextView.getText().toString();
        } else
        {
            return "";
        }
    }

    public TextView getRightTextView()
    {
        return rightTextView;
    }

    public void setLeftText(String s)
    {
        leftTextView.setText(s);
    }

    public void setRightText(String s)
    {
        rightTextView.setText(s);
    }

    public void setRightTextBackground(int i)
    {
        rightTextView.setBackgroundResource(i);
    }

    public void setRightVisisble(int i)
    {
        tvarrow.setVisibility(i);
    }

    public void setSettingsItemBg(int i)
    {
        rlSettingItemBg.setBackgroundResource(i);
    }
}
