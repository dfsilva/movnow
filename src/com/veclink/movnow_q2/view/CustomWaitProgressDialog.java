// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;

public class CustomWaitProgressDialog extends Dialog
{

    private Context mContext;
    private TextView m_tvMsg;

    public CustomWaitProgressDialog(Context context)
    {
        this(context, 0x7f0b000e);
        mContext = context;
    }

    public CustomWaitProgressDialog(Context context, int i)
    {
        super(context, i);
        mContext = context;
    }

    public CustomWaitProgressDialog createDialog()
    {
        setContentView(0x7f03002c);
        getWindow().getAttributes().gravity = 17;
        getWindow().getAttributes().width = -2;
        getWindow().getAttributes().height = -2;
        setCanceledOnTouchOutside(false);
        m_tvMsg = (TextView)findViewById(0x7f060098);
        return this;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        ImageView imageview = (ImageView)findViewById(0x7f060097);
        RotateAnimation rotateanimation = (RotateAnimation)AnimationUtils.loadAnimation(mContext, 0x7f040007);
        imageview.setAnimation(rotateanimation);
        imageview.startAnimation(rotateanimation);
    }

    public CustomWaitProgressDialog setMessage(String s)
    {
        m_tvMsg.setText(s);
        return this;
    }

    public CustomWaitProgressDialog setTitile(String s)
    {
        return this;
    }

    public void showDialog()
    {
        show();
    }
}
