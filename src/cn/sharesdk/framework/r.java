// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import cn.sharesdk.framework.statistics.a;
import cn.sharesdk.framework.utils.d;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            p, ShareSDK

class r extends Thread
{

    final a a;
    final p b;

    r(p p1, a a1)
    {
        b = p1;
        a = a1;
        super();
    }

    public void run()
    {
        Object obj = a.f(cn.sharesdk.framework.p.a(b));
        a.a(cn.sharesdk.framework.p.a(b), ((String) (obj)));
        obj = (new d()).a(((String) (obj)));
        HashMap hashmap = new HashMap();
        if (cn.sharesdk.framework.p.a(b, a, ((HashMap) (obj)), hashmap))
        {
            b.b(hashmap);
        }
_L1:
        return;
        Throwable throwable;
        throwable;
        if (ShareSDK.isDebug())
        {
            throwable.printStackTrace();
            return;
        }
          goto _L1
    }
}
