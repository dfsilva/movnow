// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.business.http.server;

import com.google.gson.Gson;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.ZLibUtils;
import java.util.List;

// Referenced classes of package com.veclink.healthy.business.http.server:
//            UpLoadObject

public class UpLoadBraceleteDataUtil
{

    public UpLoadBraceleteDataUtil()
    {
    }

    public static byte[] createUploadContent(List list, List list1, List list2)
    {
        list = (new Gson()).toJson(new UpLoadObject(list, list1, list2));
        DebugUtil.logd("uploadContent", (new StringBuilder()).append("uploadContent:").append(list).toString());
        return ZLibUtils.compress(list.getBytes());
    }
}
