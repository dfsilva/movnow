// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.InputStream;
import org.apache.http.entity.InputStreamEntity;

// Referenced classes of package cn.sharesdk.framework.network:
//            c, OnReadListener

public abstract class e
{

    private long a;
    private OnReadListener b;

    public e()
    {
    }

    protected abstract InputStream a();

    protected abstract long b();

    public InputStreamEntity c()
    {
        c c1 = new c(a());
        c1.a(b);
        if (a > 0L)
        {
            c1.skip(a);
        }
        return new InputStreamEntity(c1, b() - a);
    }
}
