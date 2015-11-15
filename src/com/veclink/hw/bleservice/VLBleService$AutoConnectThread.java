// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Keeper;

// Referenced classes of package com.veclink.hw.bleservice:
//            VLBleService

private class <init> extends Thread
{

    private boolean stopTask;
    final VLBleService this$0;

    public void run()
    {
        VLBleService.access$102(VLBleService.this, false);
_L4:
        if (VLBleService.access$100(VLBleService.this) || stopTask || !VLBleService.access$400(VLBleService.this)) goto _L2; else goto _L1
_L1:
        Debug.logBle("vlbservice \u6B63\u5728\u5C1D\u8BD5\u91CD\u8FDE\u8BBE\u5907");
        if (!Keeper.getBindDeviceMacAddress(getApplicationContext()).equals("")) goto _L3; else goto _L2
_L2:
        VLBleService.access$602(VLBleService.this, null);
        return;
_L3:
        connect(Keeper.getBindDeviceMacAddress(getApplicationContext()));
        Thread.sleep(10000L);
        if (!VLBleService.access$100(VLBleService.this))
        {
            VLBleService.access$200(VLBleService.this);
        }
          goto _L4
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L2
    }

    public void stopTask()
    {
        stopTask = true;
    }

    private ()
    {
        this$0 = VLBleService.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
