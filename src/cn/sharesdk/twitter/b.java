// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.twitter;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.WebView;
import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.g;
import cn.sharesdk.framework.utils.R;

// Referenced classes of package cn.sharesdk.twitter:
//            e, d, c

public class b extends cn.sharesdk.framework.authorize.b
{

    private boolean d;

    public b(g g1)
    {
        super(g1);
    }

    public void a(String s)
    {
        if (!d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        d = true;
        s = e.a(a.a().getPlatform()).a(s);
        if (s != null && s.length() > 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (c != null)
        {
            c.onError(new Throwable());
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Bundle bundle;
        s = s.split("&");
        bundle = new Bundle();
        int j = s.length;
        int i = 0;
        while (i < j) 
        {
            String s1 = s[i];
            if (s1 != null)
            {
                String as[] = s1.split("=");
                if (as.length >= 2)
                {
                    bundle.putString(as[0], as[1]);
                }
            }
            i++;
        }
        if (bundle != null && bundle.size() > 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (c == null) goto _L1; else goto _L4
_L4:
        c.onError(new Throwable());
        return;
        if (c == null) goto _L1; else goto _L5
_L5:
        c.onComplete(bundle);
        return;
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        if (b != null && s.startsWith(b))
        {
            webview.stopLoading();
            a.finish();
            (new d(this, String.valueOf(R.urlToBundle(s).get("oauth_verifier")))).start();
        }
        super.onPageStarted(webview, s, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (b != null && s.startsWith(b))
        {
            webview.stopLoading();
            a.finish();
            (new c(this, String.valueOf(R.urlToBundle(s).get("oauth_verifier")))).start();
            return true;
        } else
        {
            return super.shouldOverrideUrlLoading(webview, s);
        }
    }
}
