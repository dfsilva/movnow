// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;


public class GetNewVersionGson
{

    public String checkCode;
    public String desc;
    public String error;
    public String installType;
    public String size;
    public String url;
    public String versionCode;
    public String versionName;

    public GetNewVersionGson()
    {
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
