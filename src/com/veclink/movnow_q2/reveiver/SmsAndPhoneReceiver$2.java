// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.reveiver;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Message;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.StorageUtil;
import java.text.SimpleDateFormat;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.reveiver:
//            SmsAndPhoneReceiver

class val.context extends Thread
{

    final SmsAndPhoneReceiver this$0;
    final Context val$context;

    public void run()
    {
        List list = StorageUtil.readRemindObject(val$context, "family_phone_number_file.wao");
        int i = 0;
        do
        {
label0:
            {
                if (i < list.size())
                {
                    String s = ((RemindObject)list.get(i)).getTitle();
                    DebugUtil.println((new StringBuilder()).append("diaNumber is ").append(s).toString());
                    Message message = new Message();
                    message.what = 2000;
                    message.obj = s;
                    sendMsgHandler.sendMessage(message);
                    long l = System.currentTimeMillis();
                    SmsAndPhoneReceiver.isCALL_STATE_IDLE = false;
                    do
                    {
                        if (System.currentTimeMillis() - l >= 60000L || SmsAndPhoneReceiver.isCALL_STATE_IDLE)
                        {
                            break label0;
                        }
                        Cursor cursor;
                        String s1;
                        long l1;
                        long l2;
                        boolean flag;
                        try
                        {
                            Thread.sleep(2000L);
                        }
                        catch (InterruptedException interruptedexception)
                        {
                            interruptedexception.printStackTrace();
                        }
                        cursor = val$context.getContentResolver().query(android.provider.URI, new String[] {
                            "number", "name", "type", "date", "duration"
                        }, null, null, "date DESC");
                        cursor.moveToPosition(0);
                        l1 = cursor.getLong(4);
                        s1 = cursor.getString(0);
                        new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                        l2 = Long.parseLong(cursor.getString(3));
                        DebugUtil.println((new StringBuilder()).append("lastRecordNumber is ").append(s1).toString());
                        DebugUtil.println((new StringBuilder()).append("duration is ").append(l1).toString());
                        flag = false;
                        if (l2 - l < 0x1d4c0L)
                        {
                            flag = true;
                        }
                        DebugUtil.println((new StringBuilder()).append("isNowDialTime is ").append(flag).toString());
                    } while (l1 <= 0L || !s1.equals(s) || !flag || !SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK);
                    SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK = false;
                }
                return;
            }
            SmsAndPhoneReceiver.access$100(SmsAndPhoneReceiver.this);
            i++;
        } while (true);
    }

    ()
    {
        this$0 = final_smsandphonereceiver;
        val$context = Context.this;
        super();
    }
}
