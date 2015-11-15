// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import java.util.List;

public class UploadBraceletResponse
{

    private String error;
    private String message;
    private List subErrors;

    public UploadBraceletResponse()
    {
    }

    public String getError()
    {
        return error;
    }

    public String getMessage()
    {
        return message;
    }

    public List getSubErrors()
    {
        return subErrors;
    }

    public void setError(String s)
    {
        error = s;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    public void setSubErrors(List list)
    {
        subErrors = list;
    }
}
