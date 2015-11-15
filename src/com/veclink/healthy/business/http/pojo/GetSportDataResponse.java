// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import com.veclink.healthy.database.entity.SportData;
import java.util.Iterator;
import java.util.List;

public class GetSportDataResponse
{

    private String error;
    private String errorToken;
    private String message;
    private String solution;
    private List sports;
    private List subErrors;

    public GetSportDataResponse()
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

    public List getSports()
    {
        return sports;
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

    public void setSports(List list)
    {
        sports = list;
    }

    public void setSubErrors(List list)
    {
        subErrors = list;
    }

    public String toString()
    {
        if (sports != null && sports.size() > 0)
        {
            StringBuilder stringbuilder = new StringBuilder("GetSportDataResponse\uFF1A");
            for (Iterator iterator = sports.iterator(); iterator.hasNext(); stringbuilder.append(((SportData)iterator.next()).toString())) { }
            return stringbuilder.toString();
        } else
        {
            return (new StringBuilder()).append("GetSportDataResponse [error=").append(error).append(", errorToken=").append(errorToken).append(", message=").append(message).append(", solution=").append(solution).append(", subErrors=").append(subErrors).append("]").toString();
        }
    }
}
