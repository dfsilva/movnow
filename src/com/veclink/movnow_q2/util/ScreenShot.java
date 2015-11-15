// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.veclink.movnow_q2.util:
//            BitmapUtil

public class ScreenShot
{

    public ScreenShot()
    {
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

    private static void savePic(Bitmap bitmap, String s)
    {
        Bitmap bitmap1 = BitmapUtil.compressBitmap(bitmap, 800, 480);
        int i;
        i = getQualityCompressBitmap(bitmap, 100);
        bitmap = new FileOutputStream(s);
        bitmap1.compress(android.graphics.Bitmap.CompressFormat.PNG, i, bitmap);
        bitmap.flush();
        bitmap.close();
        return;
        bitmap;
_L4:
        bitmap.printStackTrace();
        return;
        bitmap;
_L2:
        bitmap.printStackTrace();
        return;
        bitmap;
        if (true) goto _L2; else goto _L1
_L1:
        bitmap;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void shoot(Activity activity, String s)
    {
        savePic(takeScreenShot(activity), s);
    }

    private static Bitmap takeScreenShot(Activity activity)
    {
        View view = activity.getWindow().getDecorView();
        view.setDrawingCacheEnabled(true);
        view.buildDrawingCache();
        Bitmap bitmap = view.getDrawingCache();
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i = rect.top;
        Log.i("TAG", (new StringBuilder()).append("").append(i).toString());
        activity = Bitmap.createBitmap(bitmap, 0, i, activity.getWindowManager().getDefaultDisplay().getWidth(), activity.getWindowManager().getDefaultDisplay().getHeight() - i);
        view.destroyDrawingCache();
        return activity;
    }
}
