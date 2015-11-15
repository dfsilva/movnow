// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import cn.sharesdk.framework.statistics.b.b;
import cn.sharesdk.framework.utils.d;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            PlatformActionListener, d, Platform, PlatformDb

class e
    implements PlatformActionListener
{

    final PlatformActionListener a;
    final int b;
    final HashMap c;
    final cn.sharesdk.framework.d d;

    e(cn.sharesdk.framework.d d1, PlatformActionListener platformactionlistener, int i, HashMap hashmap)
    {
        d = d1;
        a = platformactionlistener;
        b = i;
        c = hashmap;
        super();
    }

    public void onCancel(Platform platform, int i)
    {
        cn.sharesdk.framework.d.a(d, a);
        if (cn.sharesdk.framework.d.a(d) != null)
        {
            cn.sharesdk.framework.d.a(d).onComplete(platform, b, c);
        }
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        cn.sharesdk.framework.d.a(d, a);
        if (cn.sharesdk.framework.d.a(d) != null)
        {
            cn.sharesdk.framework.d.a(d).onComplete(platform, b, c);
        }
        b b1 = new b();
        b1.a = platform.getPlatformId();
        String s;
        if ("TencentWeibo".equals(platform.getName()))
        {
            s = platform.getDb().get("name");
        } else
        {
            s = platform.getDb().getUserId();
        }
        b1.b = s;
        b1.c = (new d()).a(hashmap);
        b1.d = cn.sharesdk.framework.d.a(d, platform);
        cn.sharesdk.framework.statistics.b.a(platform.getContext()).a(b1);
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        cn.sharesdk.framework.utils.e.c(throwable);
        cn.sharesdk.framework.d.a(d, a);
        if (cn.sharesdk.framework.d.a(d) != null)
        {
            cn.sharesdk.framework.d.a(d).onComplete(platform, b, c);
        }
    }
}
