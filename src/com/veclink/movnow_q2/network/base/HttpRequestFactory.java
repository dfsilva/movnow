// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.network.base;

import android.content.Context;
import com.loopj.android.http.AsyncHttpClient;
import java.util.Vector;

public class HttpRequestFactory
{

    private static Vector clientVector = new Vector();

    public HttpRequestFactory()
    {
    }

    public static AsyncHttpClient getClient()
    {
        return new AsyncHttpClient();
    }

    public static void retrieveAll(Context context)
    {
        for (int i = 0; i < clientVector.size(); i++)
        {
            ((AsyncHttpClient)clientVector.get(i)).cancelRequests(context, true);
        }

        clientVector.clear();
    }

    public static void retrieveClient(Context context, AsyncHttpClient asynchttpclient)
    {
        while (asynchttpclient == null || !clientVector.contains(asynchttpclient)) 
        {
            return;
        }
        asynchttpclient.cancelRequests(context, true);
        clientVector.remove(asynchttpclient);
    }

}
