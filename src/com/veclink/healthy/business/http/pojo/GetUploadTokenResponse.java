// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import java.util.List;

public class GetUploadTokenResponse
{

    private String error;
    private String errorToken;
    private String message;
    private String solution;
    private List subErrors;
    private String token;

    public GetUploadTokenResponse()
    {
    }

    public String getError()
    {
        return error;
    }

    public String getErrorToken()
    {
        return errorToken;
    }

    public String getMessage()
    {
        return message;
    }

    public String getSolution()
    {
        return solution;
    }

    public List getSubErrors()
    {
        return subErrors;
    }

    public String getToken()
    {
        return token;
    }

    public void setError(String s)
    {
        error = s;
    }

    public void setErrorToken(String s)
    {
        errorToken = s;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    public void setSolution(String s)
    {
        solution = s;
    }

    public void setSubErrors(List list)
    {
        subErrors = list;
    }

    public void setToken(String s)
    {
        token = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("GetUploadTokenResponse [error=").append(error).append(", errorToken=").append(errorToken).append(", message=").append(message).append(", solution=").append(solution).append(", subErrors=").append(subErrors).append(", token=").append(token).append("]").toString();
    }
}
