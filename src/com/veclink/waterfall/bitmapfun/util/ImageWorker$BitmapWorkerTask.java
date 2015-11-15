// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageWorker, ImageCache

private class imageViewReference extends AsyncTask
{

    private Object data;
    private final WeakReference imageViewReference;
    final ImageWorker this$0;

    private ImageView getAttachedImageView()
    {
        ImageView imageview = (ImageView)imageViewReference.get();
        if (this == ImageWorker.access$400(imageview))
        {
            return imageview;
        } else
        {
            return null;
        }
    }

    protected transient Bitmap doInBackground(Object aobj[])
    {
        data = aobj[0];
        String s = String.valueOf(data);
        Bitmap bitmap1 = null;
        Bitmap bitmap = bitmap1;
        if (ImageWorker.access$100(ImageWorker.this) != null)
        {
            bitmap = bitmap1;
            if (!isCancelled())
            {
                bitmap = bitmap1;
                if (getAttachedImageView() != null)
                {
                    bitmap = bitmap1;
                    if (!ImageWorker.access$200(ImageWorker.this))
                    {
                        bitmap = ImageWorker.access$100(ImageWorker.this).getBitmapFromDiskCache(s);
                    }
                }
            }
        }
        bitmap1 = bitmap;
        if (bitmap == null)
        {
            bitmap1 = bitmap;
            if (!isCancelled())
            {
                bitmap1 = bitmap;
                if (getAttachedImageView() != null)
                {
                    bitmap1 = bitmap;
                    if (!ImageWorker.access$200(ImageWorker.this))
                    {
                        bitmap1 = processBitmap(aobj[0]);
                    }
                }
            }
        }
        if (bitmap1 != null && ImageWorker.access$100(ImageWorker.this) != null)
        {
            ImageWorker.access$100(ImageWorker.this).addBitmapToCache(s, bitmap1);
        }
        return bitmap1;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground(aobj);
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (isCancelled() || ImageWorker.access$200(ImageWorker.this))
        {
            bitmap = null;
        }
        ImageView imageview = getAttachedImageView();
        if (bitmap != null && imageview != null)
        {
            ImageWorker.access$300(ImageWorker.this, imageview, bitmap);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }


    public (ImageView imageview)
    {
        this$0 = ImageWorker.this;
        super();
        imageViewReference = new WeakReference(imageview);
    }
}
