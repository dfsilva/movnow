// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import cn.sharesdk.framework.utils.a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

// Referenced classes of package cn.sharesdk.framework.network:
//            e, a

public class b extends e
{

    private cn.sharesdk.framework.network.a a;

    public b()
    {
    }

    public b a(byte abyte0[])
    {
        if (a == null)
        {
            a = new cn.sharesdk.framework.network.a(abyte0.length);
        }
        a.write(abyte0);
        a.flush();
        return this;
    }

    protected InputStream a()
    {
        if (a == null)
        {
            return new ByteArrayInputStream(new byte[0]);
        }
        byte abyte0[] = a.a();
        if (abyte0 == null || a.size() <= 0)
        {
            return new ByteArrayInputStream(new byte[0]);
        } else
        {
            return new ByteArrayInputStream(abyte0, 0, a.size());
        }
    }

    protected long b()
    {
        if (a == null)
        {
            return 0L;
        } else
        {
            return (long)a.size();
        }
    }

    public String toString()
    {
        byte abyte0[];
        if (a != null)
        {
            if ((abyte0 = a.a()) != null)
            {
                return cn.sharesdk.framework.utils.a.a(abyte0, 0, a.size());
            }
        }
        return null;
    }
}
