// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import java.io.File;
import java.io.FilenameFilter;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            DiskLruCache

static final class _cls9
    implements FilenameFilter
{

    public boolean accept(File file, String s)
    {
        return s.startsWith("cache_");
    }

    _cls9()
    {
    }
}
