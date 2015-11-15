// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import java.util.List;

public class UpdateUserInfoResponse
{

    private String error;
    private String errorToken;
    private String message;
    private String solution;
    private List subErrors;

    public UpdateUserInfoResponse()
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

    public String toString()
    {
        if (error.equals("0"))
        {
            return (new StringBuilder()).append("UpdateUserInfoResponse [error=").append(error).append("]").toString();
        } else
        {
            return (new StringBuilder()).append("UpdateUserInfoResponse [error=").append(error).append(", subErrors=").append(subErrors).append(", errorToken=").append(errorToken).append(", message=").append(message).append(", solution=").append(solution).append("]").toString();
        }
    }
}
