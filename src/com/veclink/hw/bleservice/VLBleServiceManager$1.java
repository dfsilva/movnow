// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.veclink.hw.bleservice.util.Keeper;

// Referenced classes of package com.veclink.hw.bleservice:
//            VLBleServiceManager, VLBleService

static final class er
    implements ServiceConnection
{

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        try
        {
            VLBleService _tmp = VLBleServiceManager.access$002(((er)ibinder).getService());
            VLBleServiceManager.access$100().updatePostExceute();
        }
        // Misplaced declaration of an exception variable
        catch (ComponentName componentname)
        {
            VLBleServiceManager.access$100().unBindService(VLBleServiceManager.access$200());
            VLBleServiceManager.access$100().bindService(VLBleServiceManager.access$200(), VLBleServiceManager.gattAttributes);
            return;
        }
        if (VLBleServiceManager.access$300() != null)
        {
            VLBleServiceManager.access$000().registerObserver(VLBleServiceManager.access$300());
            VLBleServiceManager.access$000().setAutoReConnect(VLBleServiceManager.access$400());
        }
        String _tmp1 = VLBleServiceManager.access$502(Keeper.getBindDeviceMacAddress(VLBleServiceManager.access$200()));
        if (!VLBleServiceManager.access$500().equals(""))
        {
            if (!VLBleServiceManager.access$000().initialize())
            {
                Log.e(VLBleServiceManager.access$600(), "Unable to initialize Bluetooth");
            }
            VLBleServiceManager.access$000().connect(VLBleServiceManager.access$500());
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        VLBleService _tmp = VLBleServiceManager.access$002(null);
    }

    er()
    {
    }
}
