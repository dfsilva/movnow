// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import android.text.TextUtils;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.UpdateUserInfoResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.healthy.database.entity.UserInfo;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyUpdateUserInfoSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 0x2b4d79257b3fdd26L;
    private String sessionId;
    private UserInfo userInfo;

    public HealthyUpdateUserInfoSession(Context context, UserInfo userinfo)
    {
        super(com/veclink/healthy/business/http/pojo/UpdateUserInfoResponse, context);
        userInfo = userinfo;
        sessionId = HealthyAccountHolder.getSessionId(context);
        uid = HealthyAccountHolder.getUserId(context);
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        if (!TextUtils.isEmpty(userInfo.getNickName()))
        {
            hashmap.put("nickName", userInfo.getNickName());
            requestparams.put("nickName", userInfo.getNickName());
        }
        if (!TextUtils.isEmpty(userInfo.getSex()))
        {
            hashmap.put("sex", userInfo.getSex());
            requestparams.put("sex", userInfo.getSex());
        }
        if (!TextUtils.isEmpty(userInfo.getBirthday()))
        {
            hashmap.put("birthday", userInfo.getBirthday());
            requestparams.put("birthday", userInfo.getBirthday());
        }
        if (!TextUtils.isEmpty(userInfo.getHeight()))
        {
            hashmap.put("height", userInfo.getHeight());
            requestparams.put("height", userInfo.getHeight());
        }
        if (!TextUtils.isEmpty(userInfo.getWeight()))
        {
            hashmap.put("weight", userInfo.getWeight());
            requestparams.put("weight", userInfo.getWeight());
        }
        if (!TextUtils.isEmpty(userInfo.getAvatar()))
        {
            hashmap.put("avatar", userInfo.getAvatar());
            requestparams.put("avatar", userInfo.getAvatar());
        }
        if (!TextUtils.isEmpty(uid))
        {
            hashmap.put("uid", uid);
            requestparams.put("uid", uid);
        }
        hashmap.put("session", sessionId);
        hashmap.put("method", "user.updateinfo");
        String s = createTimeStamp();
        requestparams.put("method", "user.updateinfo");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("session", sessionId);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
