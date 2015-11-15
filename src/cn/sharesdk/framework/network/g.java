// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package cn.sharesdk.framework.network:
//            e, h

public class g extends e
{

    private ArrayList a;

    public g()
    {
        a = new ArrayList();
    }

    public g a(e e1)
    {
        a.add(e1);
        return this;
    }

    protected InputStream a()
    {
        h h1 = new h();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); h1.a(((e)iterator.next()).a())) { }
        return h1;
    }

    protected long b()
    {
        Iterator iterator = a.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((e)iterator.next()).b()) { }
        return l;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); stringbuilder.append(((e)iterator.next()).toString())) { }
        return stringbuilder.toString();
    }
}
