// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.app.Instrumentation;
import cn.sharesdk.framework.utils.e;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            h, g, AuthorizeHelper, AuthorizeListener

class i extends Thread
{

    final h a;

    i(h h1)
    {
        a = h1;
        super();
    }

    public void run()
    {
        try
        {
            (new Instrumentation()).sendKeyDownUpSync(4);
            return;
        }
        catch (Throwable throwable)
        {
            e.c(throwable);
        }
        AuthorizeListener authorizelistener = a.a.a.getAuthorizeListener();
        if (authorizelistener != null)
        {
            authorizelistener.onCancel();
        }
        a.a.finish();
    }
}
