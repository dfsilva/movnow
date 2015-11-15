// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.network.base;

import com.loopj.android.http.AsyncHttpResponseHandler;
import java.io.Serializable;

// Referenced classes of package com.veclink.movnow_q2.network.base:
//            BaseRequest, Taggable

public abstract class BaseSession extends AsyncHttpResponseHandler
    implements BaseRequest, Serializable, Taggable
{

    public static String NWT_ERROR = "-1000";
    private static final long serialVersionUID = 0xc01c6bb799b4aee4L;

    public BaseSession()
    {
    }

    public AsyncHttpResponseHandler getResponseHandler()
    {
        return this;
    }

    public String getTag()
    {
        return toString();
    }

}
