// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDevice, ManagerDeviceActivity

class this._cls0
    implements android.view.ctivityMyDevice._cls4
{

    final SettingsActivityMyDevice this$0;

    public void onClick(View view)
    {
        view = new Intent();
        view.setClass(SettingsActivityMyDevice.this, com/veclink/movnow_q2/activity/ManagerDeviceActivity);
        startActivity(view);
    }

    ()
    {
        this$0 = SettingsActivityMyDevice.this;
        super();
    }
}
