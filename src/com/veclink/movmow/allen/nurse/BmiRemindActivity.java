// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            RemindBaseActivity

public class BmiRemindActivity extends RemindBaseActivity
{

    TextView remind_label;

    public BmiRemindActivity()
    {
    }

    protected void initView()
    {
        super.initView();
        remind_label = (TextView)findViewById(0x7f060022);
        remind_label.setText(mContext.getString(0x7f0c0101));
        titleBar.setTitleText(mContext.getString(0x7f0c00ee));
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030009);
        initView();
        initWheelViewData();
    }
}
