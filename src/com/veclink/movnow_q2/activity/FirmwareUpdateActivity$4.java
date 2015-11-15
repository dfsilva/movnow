// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;
import com.veclink.healthy.view.BluetoothConnAnimView;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            FirmwareUpdateActivity

class this._cls0
    implements android.view.eUpdateActivity._cls4
{

    final FirmwareUpdateActivity this$0;

    public void onClick(View view)
    {
        if (!mConnAnimView.mDragging)
        {
            startAnimation();
            FirmwareUpdateActivity.access$300(FirmwareUpdateActivity.this);
        }
    }

    ()
    {
        this$0 = FirmwareUpdateActivity.this;
        super();
    }
}
