// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.InputStream;

// Referenced classes of package cn.sharesdk.framework.network:
//            OnReadListener

public class c extends InputStream
{

    private InputStream a;
    private long b;
    private OnReadListener c;

    public c(InputStream inputstream)
    {
        a = inputstream;
    }

    public void a(OnReadListener onreadlistener)
    {
        c = onreadlistener;
    }

    public int available()
    {
        return a.available();
    }

    public void close()
    {
        a.close();
    }

    public void mark(int i)
    {
        a.mark(i);
    }

    public boolean markSupported()
    {
        return a.markSupported();
    }

    public int read()
    {
        int i = a.read();
        if (i >= 0)
        {
            b = b + 1L;
            if (c != null)
            {
                c.onRead(b);
            }
        }
        return i;
    }

    public int read(byte abyte0[], int i, int j)
    {
        i = a.read(abyte0, i, j);
        if (i > 0)
        {
            b = b + (long)i;
            if (c != null)
            {
                c.onRead(b);
            }
        }
        return i;
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        a.reset();
        b = 0L;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public long skip(long l)
    {
        return a.skip(l);
    }
}
