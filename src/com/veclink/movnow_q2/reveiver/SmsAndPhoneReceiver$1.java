// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.reveiver;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.util.Log;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSendShortMsgRemindTask;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.movnow_q2.util.PinYinUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import java.io.PrintStream;

// Referenced classes of package com.veclink.movnow_q2.reveiver:
//            SmsAndPhoneReceiver

class val.sendMsgCallBack extends PhoneStateListener
{

    final SmsAndPhoneReceiver this$0;
    final Context val$context;
    final BleCallBack val$sendMsgCallBack;

    public void onCallStateChanged(int i, String s)
    {
        super.onCallStateChanged(i, s);
        i;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 155
    //                   1 33
    //                   2 176;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        SmsAndPhoneReceiver.isCALL_STATE_IDLE = false;
        SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK = false;
        Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("incomingNumber:").append(s).toString());
        if (((Boolean)SharedPreferencesUtils.getSharedPreferences(val$context, "personal_remind_mobile", Boolean.valueOf(false))).booleanValue() && SmsAndPhoneReceiver.telePhoneNumber == null)
        {
            SmsAndPhoneReceiver.telePhoneNumber = s.trim();
            s = PinYinUtil.getPingYin(SmsAndPhoneReceiver.access$000(SmsAndPhoneReceiver.this, val$context, SmsAndPhoneReceiver.telePhoneNumber)).getBytes();
            (new BleSendShortMsgRemindTask(val$context, val$sendMsgCallBack, (byte)1, Helper.getNeedSendNumberByteArray(SmsAndPhoneReceiver.telePhoneNumber), SmsAndPhoneReceiver.telePhoneNumber.length(), s)).work();
            return;
        }
          goto _L1
_L2:
        System.out.println("TelephonyManager.CALL_STATE_IDLE \u6302\u65AD");
        SmsAndPhoneReceiver.telePhoneNumber = null;
        SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK = false;
        SmsAndPhoneReceiver.isCALL_STATE_IDLE = true;
        return;
_L4:
        System.out.println("TelephonyManager.CALL_STATE_OFFHOOK \u63A5\u542C");
        SmsAndPhoneReceiver.telePhoneNumber = null;
        SmsAndPhoneReceiver.isCALL_STATE_IDLE = false;
        SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK = true;
        return;
    }

    k()
    {
        this$0 = final_smsandphonereceiver;
        val$context = context1;
        val$sendMsgCallBack = BleCallBack.this;
        super();
    }
}
