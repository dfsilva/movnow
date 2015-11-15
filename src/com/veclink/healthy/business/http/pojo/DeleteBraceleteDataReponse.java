// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.healthy.business.http.pojo:
//            SubError

public class DeleteBraceleteDataReponse
{

    private String error;
    private List subErrors;

    public DeleteBraceleteDataReponse()
    {
    }

    public String getError()
    {
        return error;
    }

    public List getSubErrors()
    {
        return subErrors;
    }

    public String getSubErrorsString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (subErrors != null)
        {
            SubError suberror;
            for (Iterator iterator = subErrors.iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder()).append(suberror.toString()).append("\n").toString()))
            {
                suberror = (SubError)iterator.next();
            }

        }
        return stringbuilder.toString();
    }

    public void setError(String s)
    {
        error = s;
    }

    public void setSubErrors(List list)
    {
        subErrors = list;
    }

    public String toString()
    {
        return (new StringBuilder()).append("DeleteBraceleteDataReponse [error=").append(error).append(", subError=").append(getSubErrorsString()).append("]").toString();
    }
}
