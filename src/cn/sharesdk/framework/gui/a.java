// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import java.util.TimerTask;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor

class a extends TimerTask
{

    final BitmapProcessor.b a;
    private int b;

    a(BitmapProcessor.b b1)
    {
        a = b1;
        super();
    }

    public void run()
    {
        if (BitmapProcessor.a(BitmapProcessor.b.a(a)))
        {
            b = b - 1;
            if (b <= 0)
            {
                b = 100;
                BitmapProcessor.b.b(a);
            }
        }
    }
}
