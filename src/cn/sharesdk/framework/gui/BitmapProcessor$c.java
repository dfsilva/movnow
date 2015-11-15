// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import java.io.FilterInputStream;
import java.io.InputStream;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor

private static class a extends FilterInputStream
{

    InputStream a;

    public long skip(long l)
    {
        long l1 = 0L;
        do
        {
            long l2;
label0:
            {
                if (l1 < l)
                {
                    l2 = a.skip(l - l1);
                    if (l2 != 0L)
                    {
                        break label0;
                    }
                }
                return l1;
            }
            l1 += l2;
        } while (true);
    }

    protected (InputStream inputstream)
    {
        super(inputstream);
        a = inputstream;
    }
}
