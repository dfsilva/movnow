// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.LruCache;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            RetainFragment, DiskLruCache, Utils

public class ImageCache
{
    public static class ImageCacheParams
    {

        public boolean clearDiskCacheOnStart;
        public android.graphics.Bitmap.CompressFormat compressFormat;
        public int compressQuality;
        public boolean diskCacheEnabled;
        public int diskCacheSize;
        public int memCacheSize;
        public boolean memoryCacheEnabled;
        public String uniqueName;

        public ImageCacheParams(String s)
        {
            memCacheSize = 0x500000;
            diskCacheSize = 0xa00000;
            compressFormat = ImageCache.DEFAULT_COMPRESS_FORMAT;
            compressQuality = 70;
            memoryCacheEnabled = true;
            diskCacheEnabled = true;
            clearDiskCacheOnStart = false;
            uniqueName = s;
        }
    }


    private static final boolean DEFAULT_CLEAR_DISK_CACHE_ON_START = false;
    private static final android.graphics.Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT;
    private static final int DEFAULT_COMPRESS_QUALITY = 70;
    private static final boolean DEFAULT_DISK_CACHE_ENABLED = true;
    private static final int DEFAULT_DISK_CACHE_SIZE = 0xa00000;
    private static final boolean DEFAULT_MEM_CACHE_ENABLED = true;
    private static final int DEFAULT_MEM_CACHE_SIZE = 0x500000;
    private static final String TAG = "ImageCache";
    private DiskLruCache mDiskCache;
    private LruCache mMemoryCache;

    public ImageCache(Context context, ImageCacheParams imagecacheparams)
    {
        init(context, imagecacheparams);
    }

    public ImageCache(Context context, String s)
    {
        init(context, new ImageCacheParams(s));
    }

    public static ImageCache findOrCreateCache(FragmentActivity fragmentactivity, ImageCacheParams imagecacheparams)
    {
        RetainFragment retainfragment = RetainFragment.findOrCreateRetainFragment(fragmentactivity.getSupportFragmentManager());
        ImageCache imagecache1 = (ImageCache)retainfragment.getObject();
        ImageCache imagecache = imagecache1;
        if (imagecache1 == null)
        {
            imagecache = new ImageCache(fragmentactivity, imagecacheparams);
            retainfragment.setObject(imagecache);
        }
        return imagecache;
    }

    public static ImageCache findOrCreateCache(FragmentActivity fragmentactivity, String s)
    {
        return findOrCreateCache(fragmentactivity, new ImageCacheParams(s));
    }

    private void init(Context context, ImageCacheParams imagecacheparams)
    {
        java.io.File file = DiskLruCache.getDiskCacheDir(context, imagecacheparams.uniqueName);
        if (imagecacheparams.diskCacheEnabled)
        {
            mDiskCache = DiskLruCache.openCache(context, file, imagecacheparams.diskCacheSize);
            mDiskCache.setCompressParams(imagecacheparams.compressFormat, imagecacheparams.compressQuality);
            if (imagecacheparams.clearDiskCacheOnStart)
            {
                mDiskCache.clearCache();
            }
        }
        if (imagecacheparams.memoryCacheEnabled)
        {
            mMemoryCache = new LruCache(imagecacheparams.memCacheSize) {

                final ImageCache this$0;

                protected volatile int sizeOf(Object obj, Object obj1)
                {
                    return sizeOf((String)obj, (Bitmap)obj1);
                }

                protected int sizeOf(String s, Bitmap bitmap)
                {
                    return Utils.getBitmapSize(bitmap);
                }

            
            {
                this$0 = ImageCache.this;
                super(i);
            }
            };
        }
    }

    public void addBitmapToCache(String s, Bitmap bitmap)
    {
        if (s != null && bitmap != null)
        {
            if (mMemoryCache != null && mMemoryCache.get(s) == null)
            {
                mMemoryCache.put(s, bitmap);
            }
            if (mDiskCache != null && !mDiskCache.containsKey(s))
            {
                mDiskCache.put(s, bitmap);
                return;
            }
        }
    }

    public void clearCaches()
    {
        mDiskCache.clearCache();
        mMemoryCache.evictAll();
    }

    public Bitmap getBitmapFromDiskCache(String s)
    {
        if (mDiskCache != null)
        {
            return mDiskCache.get(s);
        } else
        {
            return null;
        }
    }

    public Bitmap getBitmapFromMemCache(String s)
    {
        if (mMemoryCache != null)
        {
            s = (Bitmap)mMemoryCache.get(s);
            if (s != null)
            {
                return s;
            }
        }
        return null;
    }

    static 
    {
        DEFAULT_COMPRESS_FORMAT = android.graphics.Bitmap.CompressFormat.JPEG;
    }

}
