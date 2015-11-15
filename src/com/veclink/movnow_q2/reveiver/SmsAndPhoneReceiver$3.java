// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.reveiver;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;

// Referenced classes of package com.veclink.movnow_q2.reveiver:
//            SmsAndPhoneReceiver

class this._cls0 extends Handler
{

    final SmsAndPhoneReceiver this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1000: 
            Log.d("SmsAndPhoneReceiver", "\u5F00\u59CB\u53D1\u9001\u6D88\u606F");
            return;

        case 1003: 
            Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("\u53D1\u9001\u6D88\u606F\u5B8C\u6210").append(message.obj).toString());
            return;

        case 1001: 
            Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("\u53D1\u9001\u6D88\u606F\u5931\u8D25").append(message.obj).toString());
            return;

        case 2000: 
            message = message.obj.toString();
            break;
        }
        message = new Intent("android.intent.action.CALL", Uri.parse((new StringBuilder()).append("tel:").append(message).toString()));
        message.addFlags(0x10000000);
        MovnowTwoApplication.application.startActivity(message);
    }

    ()
    {
        this$0 = SmsAndPhoneReceiver.this;
        super();
    }
}
