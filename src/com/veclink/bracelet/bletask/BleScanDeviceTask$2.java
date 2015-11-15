// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.bluetooth.BluetoothAdapter;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleScanDeviceTask

class this._cls0
    implements Runnable
{

    final BleScanDeviceTask this$0;

    public void run()
    {
        BleScanDeviceTask.access$602(BleScanDeviceTask.this, false);
        BleScanDeviceTask.access$800(BleScanDeviceTask.this).stopLeScan(BleScanDeviceTask.access$700(BleScanDeviceTask.this));
    }

    ()
    {
        this$0 = BleScanDeviceTask.this;
        super();
    }
}
