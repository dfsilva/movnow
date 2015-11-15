// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.reveiver;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.veclink.movnow_q2.activity.LoginActivity;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StorageUtil;
import java.util.Calendar;
import java.util.List;

public class RemindReceiver extends BroadcastReceiver
{

    public static final String DRINGK_WATER_REMIND_ACTION = "dringk_water_remind_action";
    public static final String SITTING_LONG_REMIND_ACTION = "sitting_long_remind_action";
    public static final String WAKE_UP_REMIND_ACTION = "wake_up_remind_action";
    private Context mContext;

    public RemindReceiver()
    {
    }

    private boolean isInSittingRemindTime()
    {
        int i = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "key_sitting_remind_timemind_time_begin_hour", Integer.valueOf(9))).intValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "key_sitting_remind_time_begin_minute", Integer.valueOf(0))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "key_sitting_remind_time_end_hour", Integer.valueOf(21))).intValue();
        int l = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "key_sitting_remind_time_end_minute", Integer.valueOf(0))).intValue();
        Calendar calendar = Calendar.getInstance();
        int i1 = calendar.get(11) * 60 * 60 + calendar.get(12) * 60;
        return i * 60 * 60 + j * 60 <= i1 && i1 <= k * 60 * 60 + l * 60;
    }

    public void onReceive(Context context, Intent intent)
    {
        intent = intent.getAction();
        mContext = context;
        if (intent.equals("dringk_water_remind_action"))
        {
            context = mContext.getString(0x7f0c00ec);
            intent = mContext.getString(0x7f0c014a);
            if (StorageUtil.readRemindObject(mContext, "water_remind_objects_file.wao").size() > 0)
            {
                sendNotification(0x7f0200a4, 0, context, intent);
            }
            MovnowTwoApplication.setNextRemind("water_remind_objects_file.wao");
            return;
        }
        if (intent.equals("wake_up_remind_action"))
        {
            context = mContext.getString(0x7f0c00ef);
            intent = mContext.getString(0x7f0c0148);
            if (StorageUtil.readRemindObject(mContext, "wakeup_remind_objects_file.wao").size() > 0)
            {
                sendNotification(0x7f0200a4, 1, context, intent);
            }
            MovnowTwoApplication.setNextRemind("wakeup_remind_objects_file.wao");
            return;
        } else
        {
            mContext.getString(0x7f0c00ed);
            mContext.getString(0x7f0c0149);
            Log.i("RemindReceiver", "\u4E45\u5750\u5B9A\u65F6\u63D0\u9192");
            return;
        }
    }

    public void sendNotification(int i, int j, CharSequence charsequence, CharSequence charsequence1)
    {
        NotificationManager notificationmanager = (NotificationManager)mContext.getSystemService("notification");
        Object obj = new Intent("android.intent.action.MAIN");
        ((Intent) (obj)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj)).setClass(mContext, com/veclink/movnow_q2/activity/LoginActivity);
        ((Intent) (obj)).setFlags(0x10200000);
        obj = PendingIntent.getActivity(mContext, 0, ((Intent) (obj)), 0);
        android.support.v4.app.NotificationCompat.Builder builder = new android.support.v4.app.NotificationCompat.Builder(mContext);
        try
        {
            builder.setSmallIcon(i).setAutoCancel(true).setContentTitle(charsequence).setContentText(charsequence1).setContentIntent(((PendingIntent) (obj)));
            charsequence = builder.build();
            charsequence.defaults = 1;
            notificationmanager.notify(j, charsequence);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (CharSequence charsequence)
        {
            Log.d("uri", (new StringBuilder()).append("uriString----e---:").append(charsequence.getMessage()).toString());
        }
        charsequence.printStackTrace();
    }
}
