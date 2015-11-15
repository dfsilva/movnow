// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.veclink.bracelet.bletask.BleAppConfirmBindSuccess;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleRequestBindDevice;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.view.BluetoothConnAnimView;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.StringUtil;
import java.io.PrintStream;
import java.util.Calendar;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            BindbandActivity, MovnowTwoApplication, MainActivity

class this._cls1
    implements Runnable
{

    final ectHandler this$1;

    public void run()
    {
        connectHandler.sendEmptyMessage(38);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/veclink/movnow_q2/activity/BindbandActivity$3

/* anonymous class */
    class BindbandActivity._cls3 extends Handler
    {

        final BindbandActivity this$0;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 33 38: default 44
        //                       33 45
        //                       34 88
        //                       35 153
        //                       36 44
        //                       37 222
        //                       38 287;
               goto _L1 _L2 _L3 _L4 _L1 _L5 _L6
_L1:
            break; /* Loop/switch isn't completed */
_L6:
            break MISSING_BLOCK_LABEL_287;
_L7:
            return;
_L2:
            connAnimView.setConnectMessage(getString(0x7f0c0175));
            if (!connAnimView.mDragging)
            {
                connAnimView.startWaveAnimation();
                return;
            }
            continue; /* Loop/switch isn't completed */
_L3:
            HealthyAccountHolder.unBindDevice(getApplicationContext());
            connAnimView.setConnectMessage(getString(0x7f0c0174));
            first_bind_tip_view.setText(0x7f0c017c);
            connAnimView.stopWaveAnimation();
            VLBleServiceManager.getInstance().unBindService(getApplication());
            return;
_L4:
            System.out.println((new StringBuilder()).append("devicename:").append(Keeper.getBindDeviceName(BindbandActivity.access$200(BindbandActivity.this))).toString());
            if (MovnowTwoApplication.deviceProduct.bindDeviceWay == 1)
            {
                (new BleRequestBindDevice(getApplicationContext(), requestBindDeviceCallBack)).work();
                return;
            }
            if (true) goto _L7; else goto _L5
_L5:
            (new BleAppConfirmBindSuccess(getApplicationContext(), new BleCallBack(new Handler()))).work();
            Keeper.setUserHasBindBand(getApplicationContext(), true);
            connectHandler.postDelayed(new BindbandActivity._cls3._cls1(), 1000L);
            return;
            if (!SimpleHttpSchedualer.isNetworkAvailable(BindbandActivity.access$200(BindbandActivity.this)))
            {
                message = new Intent(BindbandActivity.access$200(BindbandActivity.this), com/veclink/movnow_q2/activity/MainActivity);
                message.putExtra("fromBindBand", true);
                BindbandActivity.access$200(BindbandActivity.this).startActivity(message);
                finish();
                return;
            } else
            {
                Object obj = Calendar.getInstance();
                message = StringUtil.getMonthFirstDay(((Calendar) (obj)).getTime());
                obj = StringUtil.getMonthLastDay(((Calendar) (obj)).getTime());
                MovnowTwoApplication.application.syncSportData(message, ((String) (obj)));
                MovnowTwoApplication.application.syncSleepData(message, ((String) (obj)));
                message = new Intent(BindbandActivity.access$200(BindbandActivity.this), com/veclink/movnow_q2/activity/MainActivity);
                message.putExtra("fromBindBand", true);
                BindbandActivity.access$200(BindbandActivity.this).startActivity(message);
                finish();
                return;
            }
        }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
    }

}
