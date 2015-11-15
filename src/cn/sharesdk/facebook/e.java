// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebook;

import android.os.Bundle;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOListener;

// Referenced classes of package cn.sharesdk.facebook:
//            d

class e
    implements SSOListener
{

    final AuthorizeListener a;
    final d b;

    e(d d1, AuthorizeListener authorizelistener)
    {
        b = d1;
        a = authorizelistener;
        super();
    }

    public void onCancel()
    {
        a.onCancel();
    }

    public void onComplete(Bundle bundle)
    {
        a.onComplete(bundle);
    }

    public void onFailed(Throwable throwable)
    {
        cn.sharesdk.framework.utils.e.c(throwable);
        d.a(b, a);
    }
}
