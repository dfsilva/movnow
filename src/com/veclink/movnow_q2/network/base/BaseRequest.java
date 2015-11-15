// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.network.base;

import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;

public interface BaseRequest
{

    public abstract RequestParams getRequestParams();

    public abstract AsyncHttpResponseHandler getResponseHandler();

    public abstract boolean getSyncParam();

    public abstract String getUrl();

    public abstract void onSuccessAfter(Object obj);

    public abstract String onSuccessBefore(String s);

    public abstract Object onSuccessDoMore(String s, Object obj);
}
