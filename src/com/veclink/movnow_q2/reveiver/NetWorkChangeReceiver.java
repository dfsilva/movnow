// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.reveiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.text.TextUtils;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.task.UploadBraceletDataTask;

public class NetWorkChangeReceiver extends BroadcastReceiver
{

    public NetWorkChangeReceiver()
    {
    }

    private boolean hasInternet(Context context)
    {
        if (context != null)
        {
            if ((context = (ConnectivityManager)context.getSystemService("connectivity")) != null && context.getActiveNetworkInfo() != null)
            {
                return true;
            }
        }
        return false;
    }

    public void onReceive(Context context, Intent intent)
    {
        if (hasInternet(context) && !TextUtils.isEmpty(HealthyAccountHolder.getUserId(context)))
        {
            (new UploadBraceletDataTask(context)).execute(new Object[] {
                ""
            });
        }
    }
}
