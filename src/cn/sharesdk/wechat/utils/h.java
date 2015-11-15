// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.text.TextUtils;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.network.f;
import cn.sharesdk.framework.network.k;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            g

class h extends Thread
{

    final String a;
    final AuthorizeListener b;
    final g c;

    h(g g1, String s, AuthorizeListener authorizelistener)
    {
        c = g1;
        a = s;
        b = authorizelistener;
        super();
    }

    public void run()
    {
        Object obj = new ArrayList();
        ((ArrayList) (obj)).add(new f("appid", g.d(c)));
        ((ArrayList) (obj)).add(new f("secret", g.e(c)));
        ((ArrayList) (obj)).add(new f("code", a));
        ((ArrayList) (obj)).add(new f("grant_type", "authorization_code"));
        try
        {
            obj = g.c(c).a("https://api.weixin.qq.com/sns/oauth2/access_token", ((ArrayList) (obj)), "/sns/oauth2/access_token", g.b(c));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            b.onError(((Throwable) (obj)));
            return;
        }
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            b.onError(new Throwable("Authorize token is empty"));
        } else
        if (((String) (obj)).contains("errcode"))
        {
            if (b != null)
            {
                b.onError(new Throwable(((String) (obj))));
                return;
            }
        } else
        {
            g.a(c, ((String) (obj)));
            b.onComplete(null);
            return;
        }
    }
}
