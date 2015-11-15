// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.LogoutResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyLogoutSession extends HealthyCommentSession
{

    private String sessionId;

    public HealthyLogoutSession(Context context)
    {
        super(com/veclink/healthy/business/http/pojo/LogoutResponse, context);
        uid = HealthyAccountHolder.getUserId(context);
        sessionId = HealthyAccountHolder.getSessionId(context);
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("uid", uid);
        hashmap.put("session", sessionId);
        hashmap.put("method", "user.logout");
        String s = createTimeStamp();
        requestparams.put("method", "user.logout");
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
