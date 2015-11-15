// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;

public class CustomAlertDialog extends Dialog
{

    private Context m_Context;
    private Button m_btnEditCancel;
    private Button m_btnEditSure;
    private TextView m_tvCancelReason;
    private TextView m_tvTip;

    public CustomAlertDialog(Context context)
    {
        this(context, 0x7f0b000e);
    }

    public CustomAlertDialog(Context context, int i)
    {
        super(context, i);
        m_Context = context;
    }

    public CustomAlertDialog createDialog()
    {
        setContentView(0x7f030027);
        getWindow().getAttributes().gravity = 17;
        getWindow().getAttributes().width = -2;
        getWindow().getAttributes().height = -2;
        setCanceledOnTouchOutside(false);
        m_tvTip = (TextView)findViewById(0x7f06008a);
        m_tvTip.setText(m_Context.getResources().getString(0x7f0c0044));
        m_tvCancelReason = (TextView)findViewById(0x7f06008b);
        m_tvCancelReason.setText(m_Context.getResources().getString(0x7f0c0045));
        m_btnEditCancel = (Button)findViewById(0x7f06008d);
        m_btnEditCancel.setText(m_Context.getString(0x7f0c0047));
        m_btnEditSure = (Button)findViewById(0x7f06008e);
        m_btnEditSure.setText(m_Context.getString(0x7f0c0046));
        return this;
    }

    public Button getCancelButton()
    {
        return m_btnEditCancel;
    }

    public Button getSureButton()
    {
        return m_btnEditSure;
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
    }

    public CustomAlertDialog setCancelText(String s)
    {
        m_tvCancelReason.setText(s);
        return this;
    }

    public CustomAlertDialog setNegativeButton(String s, android.view.View.OnClickListener onclicklistener)
    {
        m_btnEditCancel.setText(s);
        m_btnEditCancel.setOnClickListener(onclicklistener);
        m_btnEditCancel.setTag(Integer.valueOf(0));
        return this;
    }

    public CustomAlertDialog setPositiveButton(String s, android.view.View.OnClickListener onclicklistener)
    {
        m_btnEditSure.setText(s);
        m_btnEditSure.setOnClickListener(onclicklistener);
        m_btnEditSure.setTag(Integer.valueOf(1));
        return this;
    }

    public CustomAlertDialog setTip(String s)
    {
        m_tvTip.setText(s);
        return this;
    }

    public CustomAlertDialog setTitle(String s)
    {
        super.setTitle(s);
        return this;
    }

    public void showDialog()
    {
        show();
    }
}
