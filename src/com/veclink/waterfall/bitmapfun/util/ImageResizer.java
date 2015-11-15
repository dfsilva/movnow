// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageWorker

public class ImageResizer extends ImageWorker
{

    private static final String TAG = "ImageWorker";

    public ImageResizer(Context context)
    {
        super(context);
    }

    public static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int i1 = options.outHeight;
        int j1 = options.outWidth;
        int l = 1;
        if (i1 > j || j1 > i)
        {
            float f;
            float f1;
            int k;
            if (j1 > i1)
            {
                k = Math.round((float)i1 / (float)j);
            } else
            {
                k = Math.round((float)j1 / (float)i);
            }
            f = j1 * i1;
            f1 = i * j * 2;
            do
            {
                l = k;
                if (f / (float)(k * k) <= f1)
                {
                    break;
                }
                k++;
            } while (true);
        }
        return l;
    }

    public static Bitmap decodeSampledBitmapFromFile(String s)
    {
        com/veclink/waterfall/bitmapfun/util/ImageResizer;
        JVM INSTR monitorenter ;
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(s, options);
        options.inSampleSize = 1;
        options.inJustDecodeBounds = false;
        s = BitmapFactory.decodeFile(s, options);
        com/veclink/waterfall/bitmapfun/util/ImageResizer;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public static Bitmap decodeSampledBitmapFromResource(Resources resources, int i)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = 1;
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    private Bitmap processBitmap(int i)
    {
        return decodeSampledBitmapFromResource(mContext.getResources(), i);
    }

    protected Bitmap processBitmap(Object obj)
    {
        return processBitmap(Integer.parseInt(String.valueOf(obj)));
    }
}
