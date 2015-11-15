// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class h extends InputStream
{

    private ArrayList a;
    private int b;

    h()
    {
        a = new ArrayList();
    }

    private boolean a()
    {
        return a == null || a.size() <= 0;
    }

    public void a(InputStream inputstream)
    {
        a.add(inputstream);
    }

    public int available()
    {
        if (a())
        {
            return 0;
        } else
        {
            return ((InputStream)a.get(b)).available();
        }
    }

    public void close()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((InputStream)iterator.next()).close()) { }
    }

    public int read()
    {
        if (!a()) goto _L2; else goto _L1
_L1:
        int j = -1;
_L4:
        return j;
_L2:
        int i = ((InputStream)a.get(b)).read();
_L6:
        j = i;
        if (i >= 0) goto _L4; else goto _L3
_L3:
        b = b + 1;
        j = i;
        if (b >= a.size()) goto _L4; else goto _L5
_L5:
        i = ((InputStream)a.get(b)).read();
          goto _L6
    }

    public int read(byte abyte0[], int i, int j)
    {
        if (!a()) goto _L2; else goto _L1
_L1:
        int l = -1;
_L4:
        return l;
_L2:
        int k = ((InputStream)a.get(b)).read(abyte0, i, j);
_L6:
        l = k;
        if (k >= 0) goto _L4; else goto _L3
_L3:
        b = b + 1;
        l = k;
        if (b >= a.size()) goto _L4; else goto _L5
_L5:
        k = ((InputStream)a.get(b)).read(abyte0, i, j);
          goto _L6
    }

    public long skip(long l)
    {
        throw new IOException();
    }
}
