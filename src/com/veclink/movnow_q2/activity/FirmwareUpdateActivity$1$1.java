// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.Handler;
import android.os.Message;
import com.veclink.healthy.view.BluetoothConnAnimView;
import com.veclink.hw.bleservice.VLBleServiceManager;
import java.io.File;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            FirmwareUpdateActivity

class this._cls1
    implements Runnable
{

    final dler this$1;

    public void run()
    {
        mHandler.sendEmptyMessage(35221);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/veclink/movnow_q2/activity/FirmwareUpdateActivity$1

/* anonymous class */
    class FirmwareUpdateActivity._cls1 extends Handler
    {

        final FirmwareUpdateActivity this$0;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 1000 1003: default 36
        //                       1000 37
        //                       1001 216
        //                       1002 63
        //                       1003 139;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return;
_L2:
            VLBleServiceManager.getInstance().flagDoUpdateNotDoOtherTask();
            mConnAnimView.setConnectMessage(getString(0x7f0c012d));
            return;
_L4:
            if (message.obj != null)
            {
                progress = ((Integer)message.obj).intValue();
                mConnAnimView.setConnectMessage((new StringBuilder()).append(String.format(getString(0x7f0c0161), new Object[] {
                    message.obj
                })).append("%").toString());
                return;
            }
              goto _L1
_L5:
            updateOver = true;
            message = new File(filepath);
            if (message.exists())
            {
                message.delete();
            }
            mConnAnimView.setConnectMessage(getString(0x7f0c011b));
            mHandler.postDelayed(new FirmwareUpdateActivity._cls1._cls1(), 2000L);
            return;
_L3:
            message = new File(filepath);
            if (message.exists())
            {
                message.delete();
            }
            mConnAnimView.setConnectMessage(getString(0x7f0c011c));
            mConnAnimView.setClickable(true);
            mConnAnimView.stopWaveAnimation();
            return;
        }

            
            {
                this$0 = FirmwareUpdateActivity.this;
                super();
            }
    }

}
