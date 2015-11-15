// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebookmessenger;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.e;

// Referenced classes of package cn.sharesdk.facebookmessenger:
//            FacebookMessenger, b

class a
    implements AuthorizeListener
{

    final b a;
    final FacebookMessenger b;

    a(FacebookMessenger facebookmessenger, b b1)
    {
        b = facebookmessenger;
        a = b1;
        super();
    }

    public void onCancel()
    {
        if (cn.sharesdk.facebookmessenger.FacebookMessenger.e(b) != null)
        {
            FacebookMessenger.f(b).onCancel(b, 1);
        }
    }

    public void onComplete(Bundle bundle)
    {
        String s1 = bundle.getString("oauth_token");
        int j = bundle.getInt("oauth_token_expires");
        int i = j;
        if (j == 0)
        {
            String s = String.valueOf(bundle.get("expires_in"));
            try
            {
                i = R.parseInt(s);
            }
            catch (Throwable throwable)
            {
                e.c(throwable);
                i = 0;
            }
        }
        s = s1;
        if (TextUtils.isEmpty(s1))
        {
            s = bundle.getString("access_token");
        }
        FacebookMessenger.c(b).putToken(s);
        FacebookMessenger.d(b).putExpiresIn(i);
        a.a(s, String.valueOf(i));
        FacebookMessenger.a(b, 1, null);
    }

    public void onError(Throwable throwable)
    {
        if (FacebookMessenger.a(b) != null)
        {
            FacebookMessenger.b(b).onError(b, 1, throwable);
        }
    }
}
