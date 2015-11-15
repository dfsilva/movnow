// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.business.http.pojo.RegisterbyemailResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyRegisterSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 1L;

    public HealthyRegisterSession(Context context, String s, String s1)
    {
        super(com/veclink/healthy/business/http/pojo/RegisterbyemailResponse, context);
        email = s;
        password = s1;
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("email", email);
        hashmap.put("password", password);
        hashmap.put("method", "user.registerbyemail");
        hashmap.put("locale", Locale.getDefault().toString());
        String s = createTimeStamp();
        requestparams.put("method", "user.registerbyemail");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("email", email);
        requestparams.put("password", password);
        requestparams.put("locale", Locale.getDefault().toString());
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
