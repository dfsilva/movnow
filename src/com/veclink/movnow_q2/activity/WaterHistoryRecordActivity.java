// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.view.View;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class WaterHistoryRecordActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    private TitleBarRelativeLayout titleBarRelativeLayout;

    public WaterHistoryRecordActivity()
    {
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setRightButtonListener(this);
    }

    public void onClick(View view)
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001a);
        initView();
    }
}
