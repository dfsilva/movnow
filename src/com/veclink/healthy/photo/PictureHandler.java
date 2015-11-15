// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.veclink.healthy.photo:
//            Const, AndroidUtil

public class PictureHandler
    implements android.hardware.Camera.PictureCallback
{

    private final String TAG = "PictureHandler";
    private final Context context;
    private int mImageRotation;
    private Handler mRecordHandler;

    public PictureHandler(Context context1)
    {
        mRecordHandler = null;
        mImageRotation = 0;
        context = context1;
    }

    public void onPictureTaken(byte abyte0[], Camera camera)
    {
        String s = Const.ImagePath;
        if (s == null)
        {
            Toast.makeText(context, "No directory to save image.", 1).show();
            return;
        }
        Object obj = (new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss")).format(new Date());
        obj = (new StringBuilder()).append("Clever_Cam").append(((String) (obj))).append(".jpg").toString();
        s = (new StringBuilder()).append(s).append(File.separator).append(((String) (obj))).toString();
        obj = new File(s);
        Log.i("PictureHandler", (new StringBuilder()).append("filename is ").append(s).toString());
        if (false)
        {
            break MISSING_BLOCK_LABEL_285;
        }
        try
        {
            Log.i("PictureHandler", (new StringBuilder()).append("mImageRotation: ").append(mImageRotation).toString());
            abyte0 = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            Matrix matrix = new Matrix();
            matrix.reset();
            matrix.postRotate(mImageRotation);
            abyte0 = Bitmap.createBitmap(abyte0, 0, 0, abyte0.getWidth(), abyte0.getHeight(), matrix, true);
            obj = new BufferedOutputStream(new FileOutputStream(((File) (obj))));
            abyte0.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, ((java.io.OutputStream) (obj)));
            ((BufferedOutputStream) (obj)).flush();
            ((BufferedOutputStream) (obj)).close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            Toast.makeText(context, "Image could not be saved.", 1).show();
        }
        camera.startPreview();
        if (mRecordHandler != null)
        {
            Message.obtain(mRecordHandler, 1).sendToTarget();
        }
        AndroidUtil.fileScan(context, s);
        return;
        obj = new FileOutputStream(((File) (obj)));
        ((FileOutputStream) (obj)).write(abyte0);
        ((FileOutputStream) (obj)).close();
        break MISSING_BLOCK_LABEL_254;
    }

    public void setImageRotation(int i)
    {
        mImageRotation = i;
    }

    public void setRecordHandler(Handler handler)
    {
        Log.d("PictureHandler", "setRecordHandler()");
        mRecordHandler = handler;
    }
}
