// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            p

class q extends Thread
{

    final p a;

    q(p p1)
    {
        a = p1;
        super();
    }

    public void run()
    {
        HashMap hashmap = new HashMap();
        if (!a.h() && a.a(hashmap))
        {
            a.b(hashmap);
        }
    }
}
