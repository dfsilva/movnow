// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.adapter;

import android.app.Activity;
import android.view.View;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.hw.bleservice.VLBleServiceManager;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.adapter:
//            DeviceListAdapter

class val.posititon
    implements android.view.
{

    final DeviceListAdapter this$0;
    final int val$posititon;

    public void onClick(View view)
    {
        HealthyAccountHolder.unBindDevice(DeviceListAdapter.access$000(DeviceListAdapter.this));
        DeviceListAdapter.access$100(DeviceListAdapter.this).remove(val$posititon);
        notifyDataSetChanged();
        view = (Activity)DeviceListAdapter.access$000(DeviceListAdapter.this);
        VLBleServiceManager.getInstance().unBindService(view.getApplication());
    }

    ()
    {
        this$0 = final_devicelistadapter;
        val$posititon = I.this;
        super();
    }
}
