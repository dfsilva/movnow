// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.graphics.Bitmap;
import android.support.v4.util.LruCache;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageCache, Utils

class this._cls0 extends LruCache
{

    final ImageCache this$0;

    protected volatile int sizeOf(Object obj, Object obj1)
    {
        return sizeOf((String)obj, (Bitmap)obj1);
    }

    protected int sizeOf(String s, Bitmap bitmap)
    {
        return Utils.getBitmapSize(bitmap);
    }

    (int i)
    {
        this$0 = ImageCache.this;
        super(i);
    }
}
