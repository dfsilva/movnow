// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebook;

import android.os.Bundle;
import android.webkit.WebView;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.g;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.e;

public class c extends b
{

    public c(g g1)
    {
        super(g1);
    }

    protected void a(String s)
    {
        Object obj = R.urlToBundle(s);
        String s1 = ((Bundle) (obj)).getString("error");
        s = s1;
        if (s1 == null)
        {
            s = ((Bundle) (obj)).getString("error_type");
        }
        if (s == null)
        {
            s = ((Bundle) (obj)).getString("access_token");
            obj = ((Bundle) (obj)).getString("expires_in");
            if (c != null)
            {
                Bundle bundle = new Bundle();
                bundle.putString("oauth_token", s);
                bundle.putString("oauth_token_secret", "");
                int i;
                try
                {
                    i = R.parseInt(((String) (obj)));
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    e.c(s);
                    i = -1;
                }
                bundle.putInt("oauth_token_expires", i);
                c.onComplete(bundle);
            }
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.startsWith(b))
        {
            webview.stopLoading();
            a.finish();
            a(s);
            return true;
        } else
        {
            return super.shouldOverrideUrlLoading(webview, s);
        }
    }
}
