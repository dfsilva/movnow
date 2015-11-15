// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.Window;

public class CustomTipDialog extends Dialog
{

    public CustomTipDialog(Context context)
    {
        this(context, 0x7f0b000e);
    }

    public CustomTipDialog(Context context, int i)
    {
        super(context, i);
    }

    public CustomTipDialog createDialog()
    {
        setContentView(0x7f03002a);
        getWindow().getAttributes().gravity = 17;
        getWindow().getAttributes().width = -2;
        getWindow().getAttributes().height = -2;
        setCanceledOnTouchOutside(false);
        return this;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }
}
