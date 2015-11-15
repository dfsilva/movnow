// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.pojo;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.healthy.business.http.pojo:
//            SubError

public class GetBraceletRomReponse
{

    private String error;
    private List subErrors;
    private String token;
    private String url;
    private String version;

    public GetBraceletRomReponse()
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

    public String getToken()
    {
        return token;
    }

    public String getUrl()
    {
        return url;
    }

    public String getVersion()
    {
        return version;
    }

    public void setError(String s)
    {
        error = s;
    }

    public void setSubErrors(List list)
    {
        subErrors = list;
    }

    public void setToken(String s)
    {
        token = s;
    }

    public void setUrl(String s)
    {
        url = s;
    }

    public void setVersion(String s)
    {
        version = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("GetBraceletRomReponse [error=").append(error).append(", subError=").append(getSubErrorsString()).append(" version=").append(version).append(", url=").append(url).append(", token=").append(token).append("]").toString();
    }
}
