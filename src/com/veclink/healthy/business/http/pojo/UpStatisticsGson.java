// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;


public class UpStatisticsGson
{

    public String error;
    public boolean isInstall;

    public UpStatisticsGson()
    {
        isInstall = false;
    }

    public String getError()
    {
        return error;
    }

    public void setError(String s)
    {
        error = s;
    }
}
