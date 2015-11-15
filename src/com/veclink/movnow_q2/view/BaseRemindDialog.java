// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class BaseRemindDialog extends Dialog
    implements android.view.View.OnClickListener
{

    private android.view.View.OnClickListener cancelListener;
    private Button cancel_btn;
    private String content;
    private TextView contentView;
    private Context mContext;
    private String okBtnText;
    private android.view.View.OnClickListener okListener;
    private Button ok_btn;
    private String title;
    private TextView titleView;

    public BaseRemindDialog(Context context)
    {
        super(context, 0x7f0b0016);
        mContext = context;
    }

    public android.view.View.OnClickListener getCancelListener()
    {
        return cancelListener;
    }

    public String getContent()
    {
        return content;
    }

    public String getOkBtnText()
    {
        return okBtnText;
    }

    public android.view.View.OnClickListener getOkListener()
    {
        return okListener;
    }

    public String getTitle()
    {
        return title;
    }

    public void onClick(View view)
    {
        dismiss();
        switch (view.getId())
        {
        case 2131099768: 
        case 2131099769: 
        default:
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030021);
        cancel_btn = (Button)findViewById(0x7f060078);
        ok_btn = (Button)findViewById(0x7f060079);
        titleView = (TextView)findViewById(0x7f060076);
        contentView = (TextView)findViewById(0x7f060077);
        if (title != null)
        {
            titleView.setText(title);
        }
        if (content != null)
        {
            contentView.setText(content);
        }
        if (okBtnText != null)
        {
            ok_btn.setText(okBtnText);
        }
        Button button = cancel_btn;
        if (cancelListener == null)
        {
            bundle = this;
        } else
        {
            bundle = cancelListener;
        }
        button.setOnClickListener(bundle);
        button = ok_btn;
        if (okListener == null)
        {
            bundle = this;
        } else
        {
            bundle = okListener;
        }
        button.setOnClickListener(bundle);
    }

    public void setCancelListener(android.view.View.OnClickListener onclicklistener)
    {
        cancelListener = onclicklistener;
    }

    public void setContent(String s)
    {
        content = s;
    }

    public void setOkBtnText(String s)
    {
        okBtnText = s;
    }

    public void setOkListener(android.view.View.OnClickListener onclicklistener)
    {
        okListener = onclicklistener;
    }

    public void setTitle(String s)
    {
        title = s;
    }
}
