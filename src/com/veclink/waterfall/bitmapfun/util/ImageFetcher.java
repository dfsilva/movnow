// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import android.widget.Toast;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageResizer, DiskLruCache, Utils

public class ImageFetcher extends ImageResizer
{

    public static final String HTTP_CACHE_DIR = "http";
    private static final int HTTP_CACHE_SIZE = 0xa00000;
    private static final String TAG = "ImageFetcher";

    public ImageFetcher(Context context, int i)
    {
        super(context);
        init(context);
    }

    public ImageFetcher(Context context, int i, int j)
    {
        super(context);
        init(context);
    }

    private void checkConnection(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || !networkinfo.isConnectedOrConnecting())
        {
            Toast.makeText(context, "No network connection found.", 1).show();
            Log.e("ImageFetcher", "checkConnection - no connection found");
        }
    }

    public static File downloadBitmap(Context context, String s)
    {
        File file;
        context = DiskLruCache.openCache(context, DiskLruCache.getDiskCacheDir(context, "http"), 0xa00000L);
        file = new File(context.createFilePath(s));
        if (!context.containsKey(s)) goto _L2; else goto _L1
_L1:
        return file;
_L2:
        Object obj;
        String s1;
        Object obj1;
        Object obj2;
        Utils.disableConnectionReuseIfNecessary();
        s1 = null;
        context = null;
        obj1 = null;
        obj2 = null;
        obj = obj1;
        s = (HttpURLConnection)(new URL(s)).openConnection();
        obj = obj1;
        context = s;
        s1 = s;
        BufferedInputStream bufferedinputstream = new BufferedInputStream(s.getInputStream(), 8192);
        obj = obj1;
        context = s;
        s1 = s;
        obj1 = new BufferedOutputStream(new FileOutputStream(file), 8192);
_L5:
        int i = bufferedinputstream.read();
        if (i == -1) goto _L4; else goto _L3
_L3:
        ((BufferedOutputStream) (obj1)).write(i);
          goto _L5
        context;
        s1 = s;
        s = ((String) (obj1));
        obj1 = context;
_L9:
        obj = s;
        context = s1;
        Log.e("ImageFetcher", (new StringBuilder()).append("Error in downloadBitmap - ").append(obj1).toString());
        if (s1 != null)
        {
            s1.disconnect();
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("ImageFetcher", (new StringBuilder()).append("Error in downloadBitmap - ").append(context).toString());
            }
        }
        return null;
_L4:
        if (s != null)
        {
            s.disconnect();
        }
        if (obj1 == null) goto _L1; else goto _L6
_L6:
        try
        {
            ((BufferedOutputStream) (obj1)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("ImageFetcher", (new StringBuilder()).append("Error in downloadBitmap - ").append(context).toString());
            return file;
        }
        return file;
        s;
_L8:
        if (context != null)
        {
            context.disconnect();
        }
        if (obj != null)
        {
            try
            {
                ((BufferedOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("ImageFetcher", (new StringBuilder()).append("Error in downloadBitmap - ").append(context).toString());
            }
        }
        throw s;
        Exception exception;
        exception;
        obj = obj1;
        context = s;
        s = exception;
        if (true) goto _L8; else goto _L7
_L7:
        obj1;
        s = obj2;
          goto _L9
    }

    private void init(Context context)
    {
        checkConnection(context);
    }

    private Bitmap processBitmap(String s)
    {
        s = downloadBitmap(mContext, s);
        if (s != null)
        {
            return decodeSampledBitmapFromFile(s.toString());
        } else
        {
            return null;
        }
    }

    protected Bitmap processBitmap(Object obj)
    {
        return processBitmap(String.valueOf(obj));
    }
}
