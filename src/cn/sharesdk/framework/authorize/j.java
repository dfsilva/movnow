// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.os.Message;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.utils.UIHandler;
import cn.sharesdk.framework.utils.b;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            g, AuthorizeHelper

class j extends Thread
{

    final g a;

    j(g g1)
    {
        a = g1;
        super();
    }

    public void run()
    {
        Message message = new Message();
        message.what = 2;
        if ("none".equals(b.a(g.a(a)).n()))
        {
            message.arg1 = 1;
            UIHandler.sendMessage(message, a);
            return;
        }
        if (ShareSDK.isRemoveCookieOnAuthorize())
        {
            CookieSyncManager.createInstance(cn.sharesdk.framework.authorize.g.b(a));
            CookieManager.getInstance().removeAllCookie();
        }
        message.obj = a.a.getAuthorizeUrl();
        UIHandler.sendMessage(message, a);
    }
}
