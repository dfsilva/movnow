// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.veclink.healthy.account.HealthyAccountHolder;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            ActivityGuidePage, LoginActivity, MainActivity

public class LoadingActivity extends Activity
{

    private static final String SHAREDPREFERENCES_NAME = "first_pref";
    boolean isFirstIn;

    public LoadingActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        isFirstIn = getSharedPreferences("first_pref", 0).getBoolean("isFirstIn", true);
        if (isFirstIn)
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/ActivityGuidePage));
            finish();
            return;
        }
        if (HealthyAccountHolder.isNeedLogin(this))
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/LoginActivity));
            finish();
            return;
        } else
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/MainActivity));
            finish();
            return;
        }
    }
}
