// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import com.veclink.movnow_q2.util.ActivityUtil;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.view.SystemBarTintManager;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MovnowTwoApplication, LoginActivity, ActivityGuidePage, GuideIntroduceActivity, 
//            FirmwareUpdateActivity, BindbandActivity

public class HealthyBaseActivity extends Activity
{

    public HealthyBaseActivity()
    {
    }

    public void finish()
    {
        super.finish();
        overridePendingTransition(0x7f040003, 0x7f040004);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        ((MovnowTwoApplication)getApplication()).getActivityManager().popActivity(this);
    }

    protected void onCreate(Bundle bundle)
    {
        String s;
        int i;
        super.onCreate(bundle);
        ActivityUtil.setActivityTheme(this);
        ((MovnowTwoApplication)getApplication()).getActivityManager().pushActivity(this);
        if (ActivityUtil.isFullScreen)
        {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            getWindow().addFlags(0x4000000);
            getWindow().addFlags(0x8000000);
        }
        bundle = new SystemBarTintManager(this);
        bundle.setStatusBarTintEnabled(true);
        i = 0x7f080034;
        s = getClass().getSimpleName();
        if (!s.equals(com/veclink/movnow_q2/activity/LoginActivity.getSimpleName())) goto _L2; else goto _L1
_L1:
        i = 0x7f08004e;
_L4:
        bundle.setStatusBarTintResource(i);
        return;
_L2:
        if (s.equals(com/veclink/movnow_q2/activity/ActivityGuidePage.getSimpleName()))
        {
            i = 0x7f08004d;
        } else
        if (s.equals(com/veclink/movnow_q2/activity/GuideIntroduceActivity.getSimpleName()))
        {
            i = 0x7f080050;
        } else
        if (s.equals(com/veclink/movnow_q2/activity/FirmwareUpdateActivity.getSimpleName()) || s.equals(com/veclink/movnow_q2/activity/BindbandActivity.getSimpleName()))
        {
            i = 0x7f08004f;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void startActivity(Intent intent)
    {
        super.startActivity(intent);
        overridePendingTransition(0x7f040005, 0x7f040006);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        super.startActivityForResult(intent, i);
        overridePendingTransition(0x7f040005, 0x7f040006);
    }
}
