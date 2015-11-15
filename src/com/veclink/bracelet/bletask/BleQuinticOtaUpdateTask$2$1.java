// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleQuinticOtaUpdateTask, BleCallBack

class this._cls1
    implements Runnable
{

    final age this$1;

    public void run()
    {
        bleCallBack.sendOnFinishMessage(Integer.valueOf(100));
    }

    apsedTime()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/veclink/bracelet/bletask/BleQuinticOtaUpdateTask$2

/* anonymous class */
    class BleQuinticOtaUpdateTask._cls2 extends Handler
    {

        int byteRate;
        int elapsedTime;
        int percent;
        final BleQuinticOtaUpdateTask this$0;

        public void handleMessage(Message message)
        {
            if (Thread.currentThread().isInterrupted()) goto _L2; else goto _L1
_L1:
            message.what;
            JVM INSTR tableswitch 1 2: default 36
        //                       1 37
        //                       2 126;
               goto _L2 _L3 _L4
_L2:
            return;
_L3:
            message = message.getData().getIntArray("UPDATE_DATA");
            percent = message[0];
            byteRate = message[1];
            elapsedTime = message[2];
            bleCallBack.sendOnProgressMessage(Integer.valueOf(percent));
            if (percent == 100)
            {
                BleQuinticOtaUpdateTask.access$102(BleQuinticOtaUpdateTask.this, true);
                BleQuinticOtaUpdateTask.access$200(BleQuinticOtaUpdateTask.this).postDelayed(new BleQuinticOtaUpdateTask._cls2._cls1(), 2000L);
                return;
            }
            if (true) goto _L2; else goto _L4
_L4:
            bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
            return;
        }

            
            {
                this$0 = BleQuinticOtaUpdateTask.this;
                super();
                percent = 0;
                byteRate = 0;
                elapsedTime = 0;
            }
    }

}
