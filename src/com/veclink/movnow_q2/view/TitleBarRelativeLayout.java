// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class TitleBarRelativeLayout extends RelativeLayout
{

    private TextView tvLeft;
    private TextView tvRight;
    private TextView tvTitle;

    public TitleBarRelativeLayout(Context context)
    {
        super(context);
        initView(context);
    }

    public TitleBarRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initView(context);
    }

    public TitleBarRelativeLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initView(context);
    }

    private void initView(Context context)
    {
        LayoutInflater.from(context).inflate(0x7f030063, this, true);
        tvLeft = (TextView)findViewById(0x7f0601c9);
        tvRight = (TextView)findViewById(0x7f0601cb);
        tvTitle = (TextView)findViewById(0x7f0601ca);
        context = new android.view.View.OnClickListener() {

            final TitleBarRelativeLayout this$0;

            public void onClick(View view)
            {
                ((Activity)getContext()).finish();
            }

            
            {
                this$0 = TitleBarRelativeLayout.this;
                super();
            }
        };
        tvLeft.setOnClickListener(context);
        tvTitle.setOnClickListener(context);
    }

    public String getLeftTxt()
    {
        String s = tvLeft.getText().toString();
        if (!s.equals(""))
        {
            return s;
        } else
        {
            return "";
        }
    }

    public String getRightTxt()
    {
        String s = tvRight.getText().toString();
        if (!s.equals(""))
        {
            return s;
        } else
        {
            return "";
        }
    }

    public boolean isRightVisisble()
    {
        return tvRight.getVisibility() != 8;
    }

    public void setLeftText(String s)
    {
        tvLeft.setText(s);
    }

    public void setLeftTextBackground(int i)
    {
        tvLeft.setBackgroundResource(i);
    }

    public void setLeftTextColor(int i)
    {
        tvLeft.setTextColor(i);
    }

    public void setLeftVisisble(int i)
    {
        tvLeft.setVisibility(i);
    }

    public void setLefttButtonListener(android.view.View.OnClickListener onclicklistener)
    {
        tvLeft.setOnClickListener(onclicklistener);
    }

    public void setRightBackground(int i)
    {
        tvRight.setBackgroundResource(i);
    }

    public void setRightButtonListener(android.view.View.OnClickListener onclicklistener)
    {
        tvRight.setOnClickListener(onclicklistener);
    }

    public void setRightEnalbe(boolean flag)
    {
        tvRight.setEnabled(flag);
    }

    public void setRightText(String s)
    {
        tvRight.setText(s);
    }

    public void setRightVisisble(int i)
    {
        tvRight.setVisibility(i);
    }

    public void setTitleButtonListener(android.view.View.OnClickListener onclicklistener)
    {
        tvTitle.setOnClickListener(onclicklistener);
    }

    public void setTitleColor(int i)
    {
        tvTitle.setTextColor(i);
    }

    public void setTitleText(String s)
    {
        tvTitle.setText(s);
    }
}
