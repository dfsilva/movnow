// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;

public class BitmapUtil
{

    public BitmapUtil()
    {
    }

    public static Bitmap compressBitmap(Bitmap bitmap, int i, int j)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        android.graphics.BitmapFactory.Options options;
        boolean flag;
        int k;
        int l;
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
        if (bytearrayoutputstream.toByteArray().length / 1024 > 1024)
        {
            bytearrayoutputstream.reset();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 50, bytearrayoutputstream);
        }
        bitmap = new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(bitmap, null, options);
        options.inJustDecodeBounds = false;
        k = options.outWidth;
        l = options.outHeight;
        flag = true;
        if (k <= l || k <= j) goto _L2; else goto _L1
_L1:
        j = options.outWidth / j;
_L4:
        i = j;
        if (j <= 0)
        {
            i = 1;
        }
        options.inSampleSize = i;
        options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
        return BitmapFactory.decodeStream(new ByteArrayInputStream(bytearrayoutputstream.toByteArray()), null, options);
_L2:
        j = ((flag) ? 1 : 0);
        if (k < l)
        {
            j = ((flag) ? 1 : 0);
            if (l > i)
            {
                j = options.outHeight / i;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void compressBitmap(Bitmap bitmap, int i)
        throws Exception
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, i, bytearrayoutputstream);
        for (; bytearrayoutputstream.toByteArray().length / 1024 > 100; bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, i, bytearrayoutputstream))
        {
            bytearrayoutputstream.reset();
            i -= 10;
        }

        bytearrayoutputstream.close();
    }

    public static Bitmap getBitmapByFile(File file)
    {
        try
        {
            file = BitmapFactory.decodeStream(new BufferedInputStream(new FileInputStream(file)));
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
            return null;
        }
        return file;
    }

    public static Bitmap getBitmapBySdPath(String s)
    {
        try
        {
            s = BitmapFactory.decodeStream(new BufferedInputStream(new FileInputStream(s)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static int getQualityCompressBitmap(Bitmap bitmap, int i)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        int j;
        int k;
        k = i;
        j = k;
        try
        {
            bytearrayoutputstream = new ByteArrayOutputStream();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return j;
        }
        j = k;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, i, bytearrayoutputstream);
_L2:
        j = k;
        if (bytearrayoutputstream.toByteArray().length / 1024 <= 100)
        {
            break; /* Loop/switch isn't completed */
        }
        j = k;
        bytearrayoutputstream.reset();
        k -= 10;
        j = k;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, k, bytearrayoutputstream);
        if (true) goto _L2; else goto _L1
_L1:
        j = k;
        bytearrayoutputstream.close();
        return k;
    }

    public static Bitmap getRCB(Bitmap bitmap, float f, int i, int j)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectf = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        canvas.drawRoundRect(rectf, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmap1;
    }
}
