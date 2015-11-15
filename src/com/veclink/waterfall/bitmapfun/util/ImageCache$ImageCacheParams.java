// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;


// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageCache

public static class uniqueName
{

    public boolean clearDiskCacheOnStart;
    public android.graphics.he.ImageCacheParams compressFormat;
    public int compressQuality;
    public boolean diskCacheEnabled;
    public int diskCacheSize;
    public int memCacheSize;
    public boolean memoryCacheEnabled;
    public String uniqueName;

    public (String s)
    {
        memCacheSize = 0x500000;
        diskCacheSize = 0xa00000;
        compressFormat = ImageCache.access$000();
        compressQuality = 70;
        memoryCacheEnabled = true;
        diskCacheEnabled = true;
        clearDiskCacheOnStart = false;
        uniqueName = s;
    }
}
