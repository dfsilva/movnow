// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.graphics.Bitmap;
import cn.sharesdk.framework.network.RawNetworkCallback;
import cn.sharesdk.framework.utils.BitmapHelper;
import java.io.File;
import java.io.InputStream;
import java.util.WeakHashMap;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor

class b
    implements RawNetworkCallback
{

    final File a;
    final boolean b;
    final BitmapProcessor.a c;
    final BitmapProcessor.d d;

    b(BitmapProcessor.d d1, File file, boolean flag, BitmapProcessor.a a1)
    {
        d = d1;
        a = file;
        b = flag;
        c = a1;
        super();
    }

    public void onResponse(InputStream inputstream)
    {
        inputstream = BitmapHelper.getBitmap(new BitmapProcessor.c(inputstream), 1);
        if (inputstream == null || inputstream.isRecycled())
        {
            BitmapProcessor.d.a(d, null);
            return;
        }
        BitmapProcessor.d.a(d, inputstream, a, b);
        if (inputstream != null)
        {
            BitmapProcessor.d(BitmapProcessor.d.c(d)).put(BitmapProcessor.a.a(c), inputstream);
            BitmapProcessor.a.a(c, inputstream);
        }
        BitmapProcessor.d.a(d, null);
    }
}
