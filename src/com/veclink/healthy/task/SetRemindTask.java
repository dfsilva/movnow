// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.task;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.veclink.bracelet.bean.BaseRemindParam;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSettingRemindParamsTask;
import com.veclink.movmow.allen.nurse.WakeUpRemindListActivity;
import com.veclink.movmow.allen.nurse.WaterRemindListActivity;
import com.veclink.movnow_q2.activity.MainActivity;

public class SetRemindTask
    implements Runnable
{

    public static final int SETDRINKWATERREMIND = 1;
    public static final int SETLONGSITREMIND = 2;
    public static final int SETWAKEUPREMIND = 3;
    final String TAG = "SetRemindTask";
    private BaseRemindParam baseRemindParam;
    private Context mContext;
    private int remindType;
    BleCallBack settingRemindCallBack;
    Handler settingRemindHandler;

    public SetRemindTask(Context context, int i, BaseRemindParam baseremindparam)
    {
        settingRemindHandler = new Handler() {

            final SetRemindTask this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1000 1003: default 36
            //                           1000 36
            //                           1001 166
            //                           1002 36
            //                           1003 37;
                   goto _L1 _L1 _L2 _L1 _L3
_L1:
                return;
_L3:
                Log.d("SetRemindTask", (new StringBuilder()).append("\u559D\u6C34\u8BBE\u7F6E\u63D0\u9192\u5B8C\u6210").append(message.obj).toString());
                message = new Intent();
                if (remindType == 1)
                {
                    message.setClass(mContext, com/veclink/movmow/allen/nurse/WaterRemindListActivity);
                } else
                if (remindType == 2)
                {
                    message.setClass(mContext, com/veclink/movnow_q2/activity/MainActivity);
                } else
                if (remindType == 3)
                {
                    message.setClass(mContext, com/veclink/movmow/allen/nurse/WakeUpRemindListActivity);
                }
                mContext.startActivity(message);
                return;
_L2:
                if (remindType == 1)
                {
                    Log.d("SetRemindTask", (new StringBuilder()).append("\u559D\u6C34\u8BBE\u7F6E\u63D0\u9192\u5931\u8D25").append(message.obj).toString());
                    return;
                }
                if (remindType == 2)
                {
                    Log.d("SetRemindTask", (new StringBuilder()).append("\u4E45\u5750\u8BBE\u7F6E\u63D0\u9192\u5931\u8D25").append(message.obj).toString());
                    return;
                }
                if (remindType == 3)
                {
                    Log.d("SetRemindTask", (new StringBuilder()).append("\u7761\u7720\u8D77\u5E8A\u95F9\u94C3\u8BBE\u7F6E\u63D0\u9192\u5931\u8D25").append(message.obj).toString());
                    return;
                }
                if (true) goto _L1; else goto _L4
_L4:
            }

            
            {
                this$0 = SetRemindTask.this;
                super();
            }
        };
        settingRemindCallBack = new BleCallBack(settingRemindHandler);
        mContext = context;
        remindType = i;
        baseRemindParam = baseremindparam;
    }

    public void run()
    {
        (new BleSettingRemindParamsTask(mContext, settingRemindCallBack, baseRemindParam)).work();
    }


}
