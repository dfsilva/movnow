// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.e;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            i

class j
    implements SSOListener
{

    final AuthorizeListener a;
    final i b;

    j(i k, AuthorizeListener authorizelistener)
    {
        b = k;
        a = authorizelistener;
        super();
    }

    public void onCancel()
    {
        a.onCancel();
    }

    public void onComplete(Bundle bundle)
    {
        try
        {
            R.parseLong(bundle.getString("expires_in"));
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            onFailed(bundle);
            return;
        }
        a.onComplete(bundle);
    }

    public void onFailed(Throwable throwable)
    {
        e.c(throwable);
        i.a(b, a);
    }
}
