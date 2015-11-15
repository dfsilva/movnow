// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            Utils

public class DiskLruCache
{

    private static final String CACHE_FILENAME_PREFIX = "cache_";
    private static final int INITIAL_CAPACITY = 32;
    private static final float LOAD_FACTOR = 0.75F;
    private static final int MAX_REMOVALS = 4;
    private static final String TAG = "DiskLruCache";
    private static final FilenameFilter cacheFileFilter = new FilenameFilter() {

        public boolean accept(File file, String s)
        {
            return s.startsWith("cache_");
        }

    };
    private int cacheByteSize;
    private int cacheSize;
    private final File mCacheDir;
    private android.graphics.Bitmap.CompressFormat mCompressFormat;
    private int mCompressQuality;
    private final Map mLinkedHashMap = Collections.synchronizedMap(new LinkedHashMap(32, 0.75F, true));
    private long maxCacheByteSize;
    private final int maxCacheItemSize = 64;

    private DiskLruCache(File file, long l)
    {
        cacheSize = 0;
        cacheByteSize = 0;
        maxCacheByteSize = 0x500000L;
        mCompressFormat = android.graphics.Bitmap.CompressFormat.JPEG;
        mCompressQuality = 70;
        mCacheDir = file;
        maxCacheByteSize = l;
    }

    public static void clearCache(Context context, String s)
    {
        clearCache(getDiskCacheDir(context, s));
    }

    private static void clearCache(File file)
    {
        file = file.listFiles(cacheFileFilter);
        for (int i = 0; i < file.length; i++)
        {
            file[i].delete();
        }

    }

    public static String createFilePath(File file, String s)
    {
        try
        {
            file = (new StringBuilder()).append(file.getAbsolutePath()).append(File.separator).append("cache_").append(URLEncoder.encode(s.replace("*", ""), "UTF-8")).toString();
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            Log.e("DiskLruCache", (new StringBuilder()).append("createFilePath - ").append(file).toString());
            return null;
        }
        return file;
    }

    private void flushCache()
    {
        for (int i = 0; i < 4 && (cacheSize > 64 || (long)cacheByteSize > maxCacheByteSize); i++)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)mLinkedHashMap.entrySet().iterator().next();
            File file = new File((String)entry.getValue());
            long l = file.length();
            mLinkedHashMap.remove(entry.getKey());
            file.delete();
            cacheSize = mLinkedHashMap.size();
            cacheByteSize = (int)((long)cacheByteSize - l);
        }

    }

    public static File getDiskCacheDir(Context context, String s)
    {
        if (Environment.getExternalStorageState() == "mounted" || !Utils.isExternalStorageRemovable())
        {
            context = Utils.getExternalCacheDir(context).getPath();
        } else
        {
            context = context.getCacheDir().getPath();
        }
        return new File((new StringBuilder()).append(context).append(File.separator).append(s).toString());
    }

    public static DiskLruCache openCache(Context context, File file, long l)
    {
        if (!file.exists())
        {
            file.mkdir();
        }
        if (file.isDirectory() && file.canWrite() && Utils.getUsableSpace(file) > l)
        {
            return new DiskLruCache(file, l);
        } else
        {
            return null;
        }
    }

    private void put(String s, String s1)
    {
        mLinkedHashMap.put(s, s1);
        cacheSize = mLinkedHashMap.size();
        cacheByteSize = (int)((long)cacheByteSize + (new File(s1)).length());
    }

    private boolean writeBitmapToFile(Bitmap bitmap, String s)
        throws IOException, FileNotFoundException
    {
        Object obj = null;
        s = new BufferedOutputStream(new FileOutputStream(s), 8192);
        boolean flag = bitmap.compress(mCompressFormat, mCompressQuality, s);
        if (s != null)
        {
            s.close();
        }
        return flag;
        s;
        bitmap = obj;
_L2:
        if (bitmap != null)
        {
            bitmap.close();
        }
        throw s;
        Exception exception;
        exception;
        bitmap = s;
        s = exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void clearCache()
    {
        clearCache(mCacheDir);
    }

    public boolean containsKey(String s)
    {
        if (mLinkedHashMap.containsKey(s))
        {
            return true;
        }
        String s1 = createFilePath(mCacheDir, s);
        if ((new File(s1)).exists())
        {
            put(s, s1);
            return true;
        } else
        {
            return false;
        }
    }

    public String createFilePath(String s)
    {
        return createFilePath(mCacheDir, s);
    }

    public Bitmap get(String s)
    {
        Map map = mLinkedHashMap;
        map;
        JVM INSTR monitorenter ;
        String s1 = (String)mLinkedHashMap.get(s);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        s = BitmapFactory.decodeFile(s1);
        map;
        JVM INSTR monitorexit ;
        return s;
        String s2 = createFilePath(mCacheDir, s);
        if (!(new File(s2)).exists())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        put(s, s2);
        s = BitmapFactory.decodeFile(s2);
        return s;
        s;
        map;
        JVM INSTR monitorexit ;
        throw s;
        map;
        JVM INSTR monitorexit ;
        return null;
    }

    public void put(String s, Bitmap bitmap)
    {
        Map map = mLinkedHashMap;
        map;
        JVM INSTR monitorenter ;
        Object obj = mLinkedHashMap.get(s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        String s1 = createFilePath(mCacheDir, s);
        if (writeBitmapToFile(bitmap, s1))
        {
            put(s, s1);
            flushCache();
        }
_L1:
        map;
        JVM INSTR monitorexit ;
        return;
        s;
        Log.e("DiskLruCache", (new StringBuilder()).append("Error in put: ").append(s.getMessage()).toString());
          goto _L1
        s;
        map;
        JVM INSTR monitorexit ;
        throw s;
        s;
        Log.e("DiskLruCache", (new StringBuilder()).append("Error in put: ").append(s.getMessage()).toString());
          goto _L1
    }

    public void setCompressParams(android.graphics.Bitmap.CompressFormat compressformat, int i)
    {
        mCompressFormat = compressformat;
        mCompressQuality = i;
    }

}
