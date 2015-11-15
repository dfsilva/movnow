// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.movnow_q2.util.ToastUtil;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivityMyDeviceSleepTime

class this._cls0
    implements android.view.DeviceSleepTime._cls1
{

    final SettingsActivityMyDeviceSleepTime this$0;

    public void onClick(View view)
    {
        ToastUtil.showShortToast(SettingsActivityMyDeviceSleepTime.this, "saveRemindSetting");
    }

    ()
    {
        this$0 = SettingsActivityMyDeviceSleepTime.this;
        super();
    }
}
