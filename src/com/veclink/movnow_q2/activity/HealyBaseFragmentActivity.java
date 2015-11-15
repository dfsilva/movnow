// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.Window;
import com.veclink.movnow_q2.util.ActivityUtil;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.view.SystemBarTintManager;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MovnowTwoApplication, MainActivity

public class HealyBaseFragmentActivity extends FragmentActivity
{

    public HealyBaseFragmentActivity()
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
        super.onCreate(bundle);
        ActivityUtil.setActivityTheme(this);
        ((MovnowTwoApplication)getApplication()).getActivityManager().pushActivity(this);
        if (!ActivityUtil.isFullScreen)
        {
            if (android.os.Build.VERSION.SDK_INT >= 19)
            {
                getWindow().addFlags(0x4000000);
                getWindow().addFlags(0x8000000);
            }
            if (!getClass().getSimpleName().equals(com/veclink/movnow_q2/activity/MainActivity.getSimpleName()))
            {
                bundle = new SystemBarTintManager(this);
                bundle.setStatusBarTintEnabled(true);
                bundle.setStatusBarTintResource(0x7f080034);
                return;
            }
        }
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
