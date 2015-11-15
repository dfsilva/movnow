// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.GetUploadTokenResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyGetUploadTokenSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 0xc4028b41c0e77a5fL;
    protected String sessionId;

    public HealthyGetUploadTokenSession(Context context)
    {
        super(com/veclink/healthy/business/http/pojo/GetUploadTokenResponse, context);
        sessionId = HealthyAccountHolder.getSessionId(context);
        uid = HealthyAccountHolder.getUserId(context);
    }

    public RequestParams getRequestParams()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("uid", uid);
        hashmap.put("method", "user.getuploadfiletoken");
        hashmap.put("session", sessionId);
        String s = createTimeStamp();
        RequestParams requestparams = new RequestParams();
        requestparams.put("method", "user.getuploadfiletoken");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("uid", uid);
        requestparams.put("session", sessionId);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
