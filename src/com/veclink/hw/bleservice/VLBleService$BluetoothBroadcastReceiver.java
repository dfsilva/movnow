// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

// Referenced classes of package com.veclink.hw.bleservice:
//            VLBleService

class this._cls0 extends BroadcastReceiver
{

    final VLBleService this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) goto _L2; else goto _L1
_L1:
        context.startService(new Intent(context, com/veclink/hw/bleservice/VLBleService));
_L4:
        return;
_L2:
        if (VLBleService.access$1500(VLBleService.this) != null)
        {
            VLBleService.access$502(VLBleService.this, VLBleService.access$1500(VLBleService.this).isEnabled());
        }
        Log.w(VLBleService.access$000(), (new StringBuilder()).append("BluetoothBroadcastReceiver bluetoothEnable = ").append(VLBleService.access$500(VLBleService.this)).toString());
        if (VLBleService.access$500(VLBleService.this))
        {
            continue; /* Loop/switch isn't completed */
        }
        VLBleService.access$200(VLBleService.this);
        disconnect();
        close();
        if (VLBleService.access$600(VLBleService.this) == null) goto _L4; else goto _L3
_L3:
        VLBleService.access$600(VLBleService.this)._mth0();
        return;
        if (!VLBleService.access$400(VLBleService.this) || !VLBleService.access$500(VLBleService.this)) goto _L4; else goto _L5
_L5:
        if (VLBleService.access$600(VLBleService.this) != null)
        {
            VLBleService.access$600(VLBleService.this)._mth0();
        }
        VLBleService.access$602(VLBleService.this, new this._cls0(VLBleService.this, null));
        VLBleService.access$600(VLBleService.this)._mth0();
        return;
    }

    ()
    {
        this$0 = VLBleService.this;
        super();
    }
}
