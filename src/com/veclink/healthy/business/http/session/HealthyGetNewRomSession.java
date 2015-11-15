// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.business.http.pojo.GetBraceletRomReponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.hw.bleservice.util.Keeper;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class HealthyGetNewRomSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 0x3fc1844c435f2d13L;
    private String device_type;

    public HealthyGetNewRomSession(Context context)
    {
        super(com/veclink/healthy/business/http/pojo/GetBraceletRomReponse, context);
        device_type = Keeper.getDeviceType(context);
        if (device_type.contains("BW79"))
        {
            device_type = "W079A";
        }
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("deviceType", device_type);
        hashmap.put("method", "bracelet.firmwareupgrade");
        String s = createTimeStamp();
        requestparams.put("method", "bracelet.firmwareupgrade");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("deviceType", device_type);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.BASEURL;
    }
}
