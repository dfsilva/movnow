// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.utils.e;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            l, WXMediaMessage

public class d extends l
{

    public WXMediaMessage a;
    public int b;

    public d()
    {
    }

    public int a()
    {
        return 2;
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        bundle.putAll(WXMediaMessage.a.a(a));
        bundle.putInt("_wxapi_sendmessagetowx_req_scene", b);
    }

    public boolean b()
    {
        if (a.getType() == 8 && (a.thumbData == null || a.thumbData.length <= 0))
        {
            e.c("checkArgs fail, thumbData should not be null when send emoji", new Object[0]);
            return false;
        }
        if (a.thumbData != null && a.thumbData.length > 32768)
        {
            e.c("checkArgs fail, thumbData is invalid", new Object[0]);
            return false;
        }
        if (a.title != null && a.title.length() > 512)
        {
            e.c("checkArgs fail, title is invalid", new Object[0]);
            return false;
        }
        if (a.description != null && a.description.length() > 1024)
        {
            a.description = (new StringBuilder()).append(a.description.substring(0, 1021)).append("...").toString();
        }
        if (a.mediaObject == null)
        {
            e.c("checkArgs fail, mediaObject is null", new Object[0]);
            return false;
        } else
        {
            return a.mediaObject.checkArgs();
        }
    }
}
