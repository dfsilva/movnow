// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import com.veclink.healthy.database.entity.SleepData;
import java.util.Iterator;
import java.util.List;

public class GetSleepDataResponse
{

    private String error;
    private String errorToken;
    private String message;
    private List sleeps;
    private String solution;
    private List subErrors;

    public GetSleepDataResponse()
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

    public List getSleeps()
    {
        return sleeps;
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

    public void setSleeps(List list)
    {
        sleeps = list;
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
        if (sleeps != null && sleeps.size() > 0)
        {
            StringBuilder stringbuilder = new StringBuilder("GetSleepDataResponse\uFF1A");
            for (Iterator iterator = sleeps.iterator(); iterator.hasNext(); stringbuilder.append(((SleepData)iterator.next()).toString())) { }
            return stringbuilder.toString();
        } else
        {
            return (new StringBuilder()).append("GetSleepDataResponse [error=").append(error).append(", errorToken=").append(errorToken).append(", message=").append(message).append(", solution=").append(solution).append(", subErrors=").append(subErrors).append("]").toString();
        }
    }
}
