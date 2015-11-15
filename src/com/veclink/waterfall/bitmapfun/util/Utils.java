// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public class Utils
{

    public static final int IO_BUFFER_SIZE = 8192;

    private Utils()
    {
    }

    public static void disableConnectionReuseIfNecessary()
    {
        if (hasHttpConnectionBug())
        {
            System.setProperty("http.keepAlive", "false");
        }
    }

    public static int getBitmapSize(Bitmap bitmap)
    {
        if (android.os.Build.VERSION.SDK_INT >= 12)
        {
            return bitmap.getByteCount();
        } else
        {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
    }

    public static File getExternalCacheDir(Context context)
    {
        if (hasExternalCacheDir())
        {
            return context.getExternalCacheDir();
        } else
        {
            context = (new StringBuilder()).append("/Android/data/").append(context.getPackageName()).append("/cache/").toString();
            return new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append(context).toString());
        }
    }

    public static int getMemoryClass(Context context)
    {
        return ((ActivityManager)context.getSystemService("activity")).getMemoryClass();
    }

    public static long getUsableSpace(File file)
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            return file.getUsableSpace();
        } else
        {
            file = new StatFs(file.getPath());
            return (long)file.getBlockSize() * (long)file.getAvailableBlocks();
        }
    }

    public static boolean hasActionBar()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public static boolean hasExternalCacheDir()
    {
        return android.os.Build.VERSION.SDK_INT >= 8;
    }

    public static boolean hasHttpConnectionBug()
    {
        return android.os.Build.VERSION.SDK_INT < 8;
    }

    public static boolean isExternalStorageRemovable()
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            return Environment.isExternalStorageRemovable();
        } else
        {
            return true;
        }
    }
}
