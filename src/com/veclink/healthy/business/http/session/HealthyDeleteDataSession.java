// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.DeleteBraceleteDataReponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.DateTimeUtil;
import java.util.Date;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyDeleteDataSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 1L;
    String deviceId;
    String endTime;
    String sessionId;
    String startTime;
    String userId;

    public HealthyDeleteDataSession(Context context)
    {
        super(com/veclink/healthy/business/http/pojo/DeleteBraceleteDataReponse, context);
        userId = HealthyAccountHolder.getUserId(context);
        deviceId = Keeper.getDeviceId(context);
        endTime = DateTimeUtil.getDateStringByDate(new Date());
        sessionId = HealthyAccountHolder.getSessionId(context);
        startTime = "";
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("userId", userId);
        hashmap.put("deviceId", deviceId);
        hashmap.put("session", sessionId);
        hashmap.put("method", "bracelet.deletesportsdata");
        String s = createTimeStamp();
        requestparams.put("method", "bracelet.deletesportsdata");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("userId", userId);
        requestparams.put("deviceId", deviceId);
        requestparams.put("session", sessionId);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
