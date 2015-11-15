// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.veclink.movnow_q2.activity.FirmwareUpdateActivity;

public class UpdateRemindDialog extends Dialog
    implements android.view.View.OnClickListener
{

    private Button cancel_btn;
    private Context mContext;
    private Button ok_btn;

    public UpdateRemindDialog(Context context)
    {
        super(context, 0x7f0b0016);
        mContext = context;
    }

    public void onClick(View view)
    {
        dismiss();
        switch (view.getId())
        {
        case 2131099768: 
        default:
            return;

        case 2131099769: 
            view = new Intent(mContext, com/veclink/movnow_q2/activity/FirmwareUpdateActivity);
            break;
        }
        view.putExtra("upgrade", true);
        mContext.startActivity(view);
        ((Activity)mContext).finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030064);
        cancel_btn = (Button)findViewById(0x7f060078);
        ok_btn = (Button)findViewById(0x7f060079);
        cancel_btn.setOnClickListener(this);
        ok_btn.setOnClickListener(this);
    }
}
