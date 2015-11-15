// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.session;

import android.content.Context;
import com.loopj.android.http.RequestParams;
import com.veclink.healthy.business.http.pojo.UploadBraceletResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.business.http.session:
//            HealthyCommentSession

public class UploadBraceletDataSession extends HealthyCommentSession
{

    private static final long serialVersionUID = 0x48c03b9903bc4f42L;
    private String dataType;

    public UploadBraceletDataSession(Context context)
    {
        super(com/veclink/healthy/business/http/pojo/UploadBraceletResponse, context);
        dataType = "1";
    }

    public RequestParams getRequestParams()
    {
        RequestParams requestparams = new RequestParams();
        HashMap hashmap = new HashMap();
        hashmap.put("data_type", dataType);
        hashmap.put("method", "bracelet.receivebraceletdata");
        String s = createTimeStamp();
        requestparams.put("method", "bracelet.receivebraceletdata");
        requestparams.put("sign", ServerUrl.getSHASignValue(ServerUrl.getPrimarySign(hashmap, s)));
        requestparams.put("timestamp", s);
        requestparams.put("app_key", "q2_android");
        requestparams.put("v", "2.0.0");
        requestparams.put("data_type", dataType);
        return requestparams;
    }

    public String getUrl()
    {
        return ServerUrl.UPLOAD_BRACELET_DATA_URL;
    }
}
