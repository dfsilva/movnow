// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.GetSleepDataResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.hw.bleservice.util.Keeper;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyGetSleepDataSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 1L;
    String deviceId;
    String endTime;
    String sessionId;
    String startTime;
    String userId;

    public HealthyGetSleepDataSession(Context context, String s, String s1)
    {
        super(com/veclink/healthy/business/http/pojo/GetSleepDataResponse, context);
        userId = HealthyAccountHolder.getUserId(context);
        deviceId = Keeper.getDeviceId(context);
        sessionId = HealthyAccountHolder.getSessionId(context);
        startTime = s;
        endTime = s1;
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("userId", userId);
        hashmap.put("deviceId", deviceId);
        hashmap.put("session", sessionId);
        hashmap.put("startDate", startTime);
        hashmap.put("endDate", endTime);
        hashmap.put("method", "bracelet.getsleepdata");
        String s = createTimeStamp();
        requestparams.put("method", "bracelet.getsleepdata");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("userId", userId);
        requestparams.put("deviceId", deviceId);
        requestparams.put("session", sessionId);
        requestparams.put("startDate", startTime);
        requestparams.put("endDate", endTime);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
