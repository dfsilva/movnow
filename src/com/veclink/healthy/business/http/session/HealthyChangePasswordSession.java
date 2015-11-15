// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.business.http.pojo.ChangePassWordResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyChangePasswordSession extends HealthyCommentSession
{

    public HealthyChangePasswordSession(Context context, String s, String s1)
    {
        super(com/veclink/healthy/business/http/pojo/ChangePassWordResponse, context);
        uid = uid;
        newPassword = s;
        oldPassword = s1;
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("uid", uid);
        hashmap.put("newPassword", newPassword);
        hashmap.put("oldPassword", oldPassword);
        hashmap.put("method", "user.changepassword");
        String s = createTimeStamp();
        requestparams.put("method", "user.changepassword");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("uid", uid);
        requestparams.put("newPassword", newPassword);
        requestparams.put("oldPassword", oldPassword);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
