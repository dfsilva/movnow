// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.reveiver;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.telephony.PhoneStateListener;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.ITelephony;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSendShortMsgRemindTask;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.hw.bleservice.VLBleService;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.PinYinUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StorageUtil;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.List;

public class SmsAndPhoneReceiver extends BroadcastReceiver
{

    public static final int DIAL_NUMBER = 2000;
    public static boolean isCALL_STATE_IDLE;
    public static boolean isCALL_STATE_OFFHOOK;
    public static String telePhoneNumber;
    Handler sendMsgHandler;

    public SmsAndPhoneReceiver()
    {
        sendMsgHandler = new Handler() {

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

            
            {
                this$0 = SmsAndPhoneReceiver.this;
                super();
            }
        };
    }

    private void closePhone()
    {
        this;
        JVM INSTR monitorenter ;
        isCALL_STATE_OFFHOOK = false;
        getTelephony().endCall();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Object obj;
        obj;
        ((RemoteException) (obj)).printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        throw obj;
    }

    private String getDisplayName(Context context, String s)
    {
        Object obj = Uri.withAppendedPath(android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(s));
        obj = context.getContentResolver().query(((Uri) (obj)), new String[] {
            "display_name"
        }, null, null, null);
        context = null;
        if (((Cursor) (obj)).moveToFirst())
        {
            context = ((Cursor) (obj)).getString(0);
            Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("incomingNumbername:").append(context).toString());
        }
        if (!TextUtils.isEmpty(context))
        {
            s = context;
        }
        ((Cursor) (obj)).close();
        return s;
    }

    public ITelephony getTelephony()
    {
        Object obj;
        Object obj1;
        TelephonyManager telephonymanager;
        telephonymanager = (TelephonyManager)MovnowTwoApplication.application.getSystemService("phone");
        obj1 = null;
        obj = null;
        Method method = android/telephony/TelephonyManager.getDeclaredMethod("getITelephony", (Class[])null);
        obj = method;
        obj1 = method;
        method.setAccessible(true);
        obj = method;
_L2:
        NoSuchMethodException nosuchmethodexception;
        try
        {
            obj = (ITelephony)((Method) (obj)).invoke(telephonymanager, (Object[])null);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            return null;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            invocationtargetexception.printStackTrace();
            return null;
        }
        return ((ITelephony) (obj));
        obj1;
        ((SecurityException) (obj1)).printStackTrace();
        continue; /* Loop/switch isn't completed */
        nosuchmethodexception;
        nosuchmethodexception.printStackTrace();
        nosuchmethodexception = ((NoSuchMethodException) (obj1));
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onReceive(final Context context, Intent intent)
    {
        final BleCallBack sendMsgCallBack;
        Object obj;
        obj = intent.getAction();
        sendMsgCallBack = new BleCallBack(sendMsgHandler);
        Log.i("SmsAndPhoneReceiver", (new StringBuilder()).append("action:").append(((String) (obj))).toString());
        context.startService(new Intent(context, com/veclink/hw/bleservice/VLBleService));
        if (!((String) (obj)).equals("android.intent.action.PHONE_STATE")) goto _L2; else goto _L1
_L1:
        ((TelephonyManager)context.getSystemService("phone")).listen(new PhoneStateListener() {

            final SmsAndPhoneReceiver this$0;
            final Context val$context;
            final BleCallBack val$sendMsgCallBack;

            public void onCallStateChanged(int l, String s)
            {
                super.onCallStateChanged(l, s);
                l;
                JVM INSTR tableswitch 0 2: default 32
            //                           0 155
            //                           1 33
            //                           2 176;
                   goto _L1 _L2 _L3 _L4
_L1:
                return;
_L3:
                SmsAndPhoneReceiver.isCALL_STATE_IDLE = false;
                SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK = false;
                Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("incomingNumber:").append(s).toString());
                if (((Boolean)SharedPreferencesUtils.getSharedPreferences(context, "personal_remind_mobile", Boolean.valueOf(false))).booleanValue() && SmsAndPhoneReceiver.telePhoneNumber == null)
                {
                    SmsAndPhoneReceiver.telePhoneNumber = s.trim();
                    s = PinYinUtil.getPingYin(getDisplayName(context, SmsAndPhoneReceiver.telePhoneNumber)).getBytes();
                    (new BleSendShortMsgRemindTask(context, sendMsgCallBack, (byte)1, Helper.getNeedSendNumberByteArray(SmsAndPhoneReceiver.telePhoneNumber), SmsAndPhoneReceiver.telePhoneNumber.length(), s)).work();
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

            
            {
                this$0 = SmsAndPhoneReceiver.this;
                context = context1;
                sendMsgCallBack = blecallback;
                super();
            }
        }, 32);
_L4:
        return;
_L2:
        if (!((String) (obj)).equals("android.provider.Telephony.SMS_RECEIVED"))
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj1 = new StringBuffer();
        obj = new StringBuffer();
        intent = intent.getExtras();
        if (intent != null)
        {
            Object aobj[] = (Object[])(Object[])intent.get("pdus");
            intent = new SmsMessage[aobj.length];
            for (int i = 0; i < aobj.length; i++)
            {
                intent[i] = SmsMessage.createFromPdu((byte[])(byte[])aobj[i]);
            }

            int k = intent.length;
            for (int j = 0; j < k; j++)
            {
                SmsMessage smsmessage = intent[j];
                ((StringBuffer) (obj1)).append(smsmessage.getDisplayOriginatingAddress());
                ((StringBuffer) (obj)).append(smsmessage.getDisplayMessageBody());
            }

        }
        Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("SMSAddress:").append(obj1).toString());
        Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("SMSContent:").append(obj).toString());
        intent = ((StringBuffer) (obj1)).toString();
        obj1 = getDisplayName(context, intent);
        obj = (new StringBuilder()).append(((String) (obj1))).append("|").append(((StringBuffer) (obj)).toString()).toString();
        Log.d("SmsAndPhoneReceiver", (new StringBuilder()).append("transfer:").append(((String) (obj))).toString());
        if (((Boolean)SharedPreferencesUtils.getSharedPreferences(context, "personal_remind_sms", Boolean.valueOf(false))).booleanValue())
        {
            context = new BleSendShortMsgRemindTask(context, sendMsgCallBack, (byte)2, Helper.getNeedSendNumberByteArray(intent), intent.length());
            if (context != null)
            {
                context.work();
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (((String) (obj)).equals("ACTION_DEVICE_FIND_PHONE"))
        {
            intent = MovnowTwoApplication.application;
            MovnowTwoApplication.playFindPhoneRing();
            intent = MovnowTwoApplication.application;
            MovnowTwoApplication.sendNotification(0x7f0200a4, 1000, context.getString(0x7f0c0000), context.getString(0x7f0c01ae));
            return;
        }
        if (((String) (obj)).equals("ACTION_HANDOFF_COMINGCALL"))
        {
            closePhone();
            return;
        }
        if (((String) (obj)).equals("ACTION_DIAL_FAMILY_NUMBERS"))
        {
            (new Thread() {

                final SmsAndPhoneReceiver this$0;
                final Context val$context;

                public void run()
                {
                    List list = StorageUtil.readRemindObject(context, "family_phone_number_file.wao");
                    int l = 0;
                    do
                    {
label0:
                        {
                            if (l < list.size())
                            {
                                String s = ((RemindObject)list.get(l)).getTitle();
                                DebugUtil.println((new StringBuilder()).append("diaNumber is ").append(s).toString());
                                Message message = new Message();
                                message.what = 2000;
                                message.obj = s;
                                sendMsgHandler.sendMessage(message);
                                long l1 = System.currentTimeMillis();
                                SmsAndPhoneReceiver.isCALL_STATE_IDLE = false;
                                do
                                {
                                    if (System.currentTimeMillis() - l1 >= 60000L || SmsAndPhoneReceiver.isCALL_STATE_IDLE)
                                    {
                                        break label0;
                                    }
                                    Cursor cursor;
                                    String s1;
                                    long l2;
                                    long l3;
                                    boolean flag;
                                    try
                                    {
                                        Thread.sleep(2000L);
                                    }
                                    catch (InterruptedException interruptedexception)
                                    {
                                        interruptedexception.printStackTrace();
                                    }
                                    cursor = context.getContentResolver().query(android.provider.CallLog.Calls.CONTENT_URI, new String[] {
                                        "number", "name", "type", "date", "duration"
                                    }, null, null, "date DESC");
                                    cursor.moveToPosition(0);
                                    l2 = cursor.getLong(4);
                                    s1 = cursor.getString(0);
                                    new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                                    l3 = Long.parseLong(cursor.getString(3));
                                    DebugUtil.println((new StringBuilder()).append("lastRecordNumber is ").append(s1).toString());
                                    DebugUtil.println((new StringBuilder()).append("duration is ").append(l2).toString());
                                    flag = false;
                                    if (l3 - l1 < 0x1d4c0L)
                                    {
                                        flag = true;
                                    }
                                    DebugUtil.println((new StringBuilder()).append("isNowDialTime is ").append(flag).toString());
                                } while (l2 <= 0L || !s1.equals(s) || !flag || !SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK);
                                SmsAndPhoneReceiver.isCALL_STATE_OFFHOOK = false;
                            }
                            return;
                        }
                        closePhone();
                        l++;
                    } while (true);
                }

            
            {
                this$0 = SmsAndPhoneReceiver.this;
                context = context1;
                super();
            }
            }).start();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }


}
