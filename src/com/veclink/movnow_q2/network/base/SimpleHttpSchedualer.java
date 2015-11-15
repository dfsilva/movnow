// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.network.base;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.loopj.android.http.AsyncHttpClient;
import com.veclink.movnow_q2.util.ToastUtil;

// Referenced classes of package com.veclink.movnow_q2.network.base:
//            HttpRequestFactory, BaseSession

public class SimpleHttpSchedualer
{

    public static final String TAG = com/veclink/movnow_q2/network/base/SimpleHttpSchedualer.getSimpleName();

    public SimpleHttpSchedualer()
    {
    }

    public static AsyncHttpClient ansycSchedual(Context context, BaseSession basesession)
    {
        AsyncHttpClient asynchttpclient = HttpRequestFactory.getClient();
        if (!isNetworkAvailable(context))
        {
            ToastUtil.showTextToast(context, context.getString(0x7f0c0176));
            return null;
        }
        setUserAgent(asynchttpclient, context);
        if (basesession.getRequestParams() != null)
        {
            asynchttpclient.get(context, basesession.getUrl(), basesession.getRequestParams(), basesession.getResponseHandler());
            return asynchttpclient;
        } else
        {
            asynchttpclient.get(context, basesession.getUrl(), basesession.getResponseHandler());
            return asynchttpclient;
        }
    }

    public static AsyncHttpClient ansycSchedual(Context context, BaseSession basesession, String s)
    {
        s = HttpRequestFactory.getClient();
        if (!isNetworkAvailable(context))
        {
            ToastUtil.showTextToast(context, context.getString(0x7f0c0176));
            return null;
        }
        setUserAgent(s, context);
        if (basesession.getRequestParams() != null)
        {
            s.post(context, basesession.getUrl(), basesession.getRequestParams(), basesession.getResponseHandler());
            return s;
        } else
        {
            s.post(context, basesession.getUrl(), null, basesession.getResponseHandler());
            return s;
        }
    }

    public static String getVersionName(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            context = packagemanager.getPackageInfo(context.getPackageName(), 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "";
        }
        return context;
    }

    public static boolean isNetworkAvailable(Context context)
    {
        context = (ConnectivityManager)context.getSystemService("connectivity");
        if (context != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if ((context = context.getAllNetworkInfo()) != null && context.length > 0)
        {
            int i = 0;
            while (i < context.length) 
            {
                if (context[i].getState() == android.net.NetworkInfo.State.CONNECTED)
                {
                    return true;
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static void setUserAgent(AsyncHttpClient asynchttpclient, Context context)
    {
        context = (new StringBuilder()).append(android.os.Build.VERSION.SDK_INT).append(",").append(getVersionName(context)).toString();
        Log.i(TAG, context);
        asynchttpclient.setUserAgent(context);
    }

}
