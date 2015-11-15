// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebookmessenger;

import android.os.Bundle;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.utils.e;

// Referenced classes of package cn.sharesdk.facebookmessenger:
//            b

class c
    implements SSOListener
{

    final AuthorizeListener a;
    final b b;

    c(b b1, AuthorizeListener authorizelistener)
    {
        b = b1;
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
        e.c(throwable);
        cn.sharesdk.facebookmessenger.b.a(b, a);
    }
}
