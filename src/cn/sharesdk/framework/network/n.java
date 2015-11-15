// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

// Referenced classes of package cn.sharesdk.framework.network:
//            e

public class n extends e
{

    private StringBuilder a;

    public n()
    {
        a = new StringBuilder();
    }

    public n a(String s)
    {
        a.append(s);
        return this;
    }

    protected InputStream a()
    {
        return new ByteArrayInputStream(a.toString().getBytes("utf-8"));
    }

    protected long b()
    {
        return (long)a.toString().getBytes("utf-8").length;
    }

    public String toString()
    {
        return a.toString();
    }
}
