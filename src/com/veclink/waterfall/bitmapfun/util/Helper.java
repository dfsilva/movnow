// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class Helper
{

    public Helper()
    {
    }

    public static boolean checkConnection(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context != null)
        {
            return context.isAvailable();
        } else
        {
            return false;
        }
    }

    public static String getStringFromUrl(String s)
        throws ClientProtocolException, IOException
    {
        s = new HttpGet(s);
        return EntityUtils.toString((new DefaultHttpClient()).execute(s).getEntity(), "UTF-8");
    }

    public static boolean isWifi(Context context)
    {
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return context != null && context.getTypeName().equals("WIFI");
    }
}
