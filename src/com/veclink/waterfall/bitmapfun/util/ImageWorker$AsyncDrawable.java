// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageWorker

private static class bitmapWorkerTaskReference extends BitmapDrawable
{

    private final WeakReference bitmapWorkerTaskReference;

    public sk getBitmapWorkerTask()
    {
        return (sk)bitmapWorkerTaskReference.get();
    }

    public sk(Resources resources, Bitmap bitmap, sk sk)
    {
        super(resources, bitmap);
        bitmapWorkerTaskReference = new WeakReference(sk);
    }
}
