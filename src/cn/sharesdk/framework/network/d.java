// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

// Referenced classes of package cn.sharesdk.framework.network:
//            e

public class d extends e
{

    private File a;

    public d()
    {
    }

    protected InputStream a()
    {
        return new FileInputStream(a);
    }

    public void a(File file)
    {
        a = file;
    }

    public void a(String s)
    {
        a = new File(s);
    }

    protected long b()
    {
        return a.length();
    }

    public String toString()
    {
        return a.toString();
    }
}
