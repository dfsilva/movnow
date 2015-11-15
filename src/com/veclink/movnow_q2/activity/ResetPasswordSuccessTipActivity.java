// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.view.View;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class ResetPasswordSuccessTipActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private static final String TAG = "ResetPasswordSuccessTipActivity";
    private TitleBarRelativeLayout titleBarRelativeLayout;

    public ResetPasswordSuccessTipActivity()
    {
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060023);
        titleBarRelativeLayout.setTitleText(getString(0x7f0c008c));
    }

    public void onClick(View view)
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030011);
        initView();
    }
}
