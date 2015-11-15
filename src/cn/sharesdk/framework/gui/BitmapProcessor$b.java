// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import java.util.Timer;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor, a

private static class schedule extends Timer
{

    private BitmapProcessor a;

    static BitmapProcessor a(schedule schedule)
    {
        return schedule.a;
    }

    private void a()
    {
        if (BitmapProcessor.a(a))
        {
            long l = System.currentTimeMillis();
            int i = 0;
            while (i < BitmapProcessor.b(a).length) 
            {
                if (BitmapProcessor.b(a)[i] == null)
                {
                    BitmapProcessor.b(a)[i] = new <init>(a);
                    BitmapProcessor.b(a)[i].setName((new StringBuilder()).append("worker ").append(i).toString());
                    a a1 = BitmapProcessor.b(a)[i];
                    boolean flag;
                    if (i == 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    a(a1, flag);
                    BitmapProcessor.b(a)[i].start();
                } else
                if (l - a(BitmapProcessor.b(a)[i]) > 20000L)
                {
                    BitmapProcessor.b(a)[i].interrupt();
                    boolean flag1 = b(BitmapProcessor.b(a)[i]);
                    BitmapProcessor.b(a)[i] = new <init>(a);
                    BitmapProcessor.b(a)[i].setName((new StringBuilder()).append("worker ").append(i).toString());
                    a(BitmapProcessor.b(a)[i], flag1);
                    BitmapProcessor.b(a)[i].start();
                }
                i++;
            }
        }
    }

    static void b(start start)
    {
        start.a();
    }

    public (BitmapProcessor bitmapprocessor)
    {
        a = bitmapprocessor;
        schedule(new a(this), 0L, 200L);
    }
}
