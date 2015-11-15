// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Bundle;
import android.widget.ImageView;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity

public class SettingsIntroduceActivity extends HealthyBaseActivity
{

    private TitleBarRelativeLayout barRelativeLayout;
    private ImageView introduce_img1;
    private ImageView introduce_img2;
    private ImageView introduce_img3;

    public SettingsIntroduceActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030014);
        barRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060017);
        barRelativeLayout.setTitleText(getString(0x7f0c00da));
        introduce_img1 = (ImageView)findViewById(0x7f060062);
        introduce_img2 = (ImageView)findViewById(0x7f060063);
        introduce_img3 = (ImageView)findViewById(0x7f060064);
        if (LanguageUtil.isChina())
        {
            return;
        }
        if (LanguageUtil.isSpanish())
        {
            introduce_img1.setImageResource(0x7f0200cb);
            introduce_img2.setImageResource(0x7f0200cc);
            introduce_img3.setImageResource(0x7f0200cd);
            return;
        } else
        {
            introduce_img1.setImageResource(0x7f0200c8);
            introduce_img2.setImageResource(0x7f0200c9);
            introduce_img3.setImageResource(0x7f0200ca);
            return;
        }
    }
}
