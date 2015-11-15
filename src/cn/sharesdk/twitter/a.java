// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.twitter;

import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;

// Referenced classes of package cn.sharesdk.twitter:
//            Twitter, e

class a
    implements AuthorizeListener
{

    final e a;
    final Twitter b;

    a(Twitter twitter, e e1)
    {
        b = twitter;
        a = e1;
        super();
    }

    public void onCancel()
    {
        if (Twitter.g(b) != null)
        {
            Twitter.h(b).onCancel(b, 1);
        }
    }

    public void onComplete(Bundle bundle)
    {
        String s = bundle.getString("oauth_token");
        String s1 = bundle.getString("oauth_token_secret");
        String s2 = bundle.getString("user_id");
        bundle = bundle.getString("screen_name");
        Twitter.a(b).putToken(s);
        Twitter.b(b).putTokenSecret(s1);
        Twitter.c(b).putUserId(s2);
        Twitter.d(b).put("nickname", bundle);
        a.a(s, s1);
        Twitter.a(b, 1, null);
    }

    public void onError(Throwable throwable)
    {
        if (Twitter.e(b) != null)
        {
            Twitter.f(b).onError(b, 1, throwable);
        }
    }
}
