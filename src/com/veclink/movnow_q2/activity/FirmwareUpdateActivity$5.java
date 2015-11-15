// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            FirmwareUpdateActivity, BindbandActivity

class this._cls0
    implements Runnable
{

    final FirmwareUpdateActivity this$0;

    public void run()
    {
        Intent intent = new Intent(FirmwareUpdateActivity.access$100(FirmwareUpdateActivity.this), com/veclink/movnow_q2/activity/BindbandActivity);
        startActivity(intent);
        finish();
    }

    ()
    {
        this$0 = FirmwareUpdateActivity.this;
        super();
    }
}
