// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.bitmapfun.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.veclink.waterfall.bitmapfun.util:
//            ImageCache

public abstract class ImageWorker
{
    private static class AsyncDrawable extends BitmapDrawable
    {

        private final WeakReference bitmapWorkerTaskReference;

        public BitmapWorkerTask getBitmapWorkerTask()
        {
            return (BitmapWorkerTask)bitmapWorkerTaskReference.get();
        }

        public AsyncDrawable(Resources resources, Bitmap bitmap, BitmapWorkerTask bitmapworkertask)
        {
            super(resources, bitmap);
            bitmapWorkerTaskReference = new WeakReference(bitmapworkertask);
        }
    }

    private class BitmapWorkerTask extends AsyncTask
    {

        private Object data;
        private final WeakReference imageViewReference;
        final ImageWorker this$0;

        private ImageView getAttachedImageView()
        {
            ImageView imageview = (ImageView)imageViewReference.get();
            if (this == ImageWorker.getBitmapWorkerTask(imageview))
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
            if (mImageCache != null)
            {
                bitmap = bitmap1;
                if (!isCancelled())
                {
                    bitmap = bitmap1;
                    if (getAttachedImageView() != null)
                    {
                        bitmap = bitmap1;
                        if (!mExitTasksEarly)
                        {
                            bitmap = mImageCache.getBitmapFromDiskCache(s);
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
                        if (!mExitTasksEarly)
                        {
                            bitmap1 = processBitmap(aobj[0]);
                        }
                    }
                }
            }
            if (bitmap1 != null && mImageCache != null)
            {
                mImageCache.addBitmapToCache(s, bitmap1);
            }
            return bitmap1;
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground(aobj);
        }

        protected void onPostExecute(Bitmap bitmap)
        {
            if (isCancelled() || mExitTasksEarly)
            {
                bitmap = null;
            }
            ImageView imageview = getAttachedImageView();
            if (bitmap != null && imageview != null)
            {
                setImageBitmap(imageview, bitmap);
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }


        public BitmapWorkerTask(ImageView imageview)
        {
            this$0 = ImageWorker.this;
            super();
            imageViewReference = new WeakReference(imageview);
        }
    }

    public static abstract class ImageWorkerAdapter
    {

        public abstract Object getItem(int i);

        public abstract int getSize();

        public ImageWorkerAdapter()
        {
        }
    }


    private static final int FADE_IN_TIME = 200;
    private static final String TAG = "ImageWorker";
    protected Context mContext;
    private boolean mExitTasksEarly;
    private boolean mFadeInBitmap;
    private ImageCache mImageCache;
    protected ImageWorkerAdapter mImageWorkerAdapter;
    private Bitmap mLoadingBitmap;

    protected ImageWorker(Context context)
    {
        mFadeInBitmap = true;
        mExitTasksEarly = false;
        mContext = context;
    }

    public static boolean cancelPotentialWork(Object obj, ImageView imageview)
    {
label0:
        {
            imageview = getBitmapWorkerTask(imageview);
            if (imageview != null)
            {
                Object obj1 = ((BitmapWorkerTask) (imageview)).data;
                if (obj1 != null && obj1.equals(obj))
                {
                    break label0;
                }
                imageview.cancel(true);
            }
            return true;
        }
        return false;
    }

    public static void cancelWork(ImageView imageview)
    {
        imageview = getBitmapWorkerTask(imageview);
        if (imageview != null)
        {
            imageview.cancel(true);
        }
    }

    private static BitmapWorkerTask getBitmapWorkerTask(ImageView imageview)
    {
        if (imageview != null)
        {
            imageview = imageview.getDrawable();
            if (imageview instanceof AsyncDrawable)
            {
                return ((AsyncDrawable)imageview).getBitmapWorkerTask();
            }
        }
        return null;
    }

    private void setImageBitmap(ImageView imageview, Bitmap bitmap)
    {
        if (mFadeInBitmap)
        {
            bitmap = new TransitionDrawable(new Drawable[] {
                new ColorDrawable(0x106000d), new BitmapDrawable(mContext.getResources(), bitmap)
            });
            imageview.setBackgroundDrawable(new BitmapDrawable(mContext.getResources(), mLoadingBitmap));
            imageview.setImageDrawable(bitmap);
            bitmap.startTransition(200);
            return;
        } else
        {
            imageview.setImageBitmap(bitmap);
            return;
        }
    }

    public ImageWorkerAdapter getAdapter()
    {
        return mImageWorkerAdapter;
    }

    public ImageCache getImageCache()
    {
        return mImageCache;
    }

    public void loadImage(int i, ImageView imageview)
    {
        if (mImageWorkerAdapter != null)
        {
            loadImage(mImageWorkerAdapter.getItem(i), imageview);
            return;
        } else
        {
            throw new NullPointerException("Data not set, must call setAdapter() first.");
        }
    }

    public void loadImage(Object obj, ImageView imageview)
    {
        Bitmap bitmap = null;
        if (mImageCache != null)
        {
            bitmap = mImageCache.getBitmapFromMemCache(String.valueOf(obj));
        }
        if (bitmap != null)
        {
            imageview.setImageBitmap(bitmap);
        } else
        if (cancelPotentialWork(obj, imageview))
        {
            BitmapWorkerTask bitmapworkertask = new BitmapWorkerTask(imageview);
            imageview.setImageDrawable(new AsyncDrawable(mContext.getResources(), mLoadingBitmap, bitmapworkertask));
            bitmapworkertask.execute(new Object[] {
                obj
            });
            return;
        }
    }

    protected abstract Bitmap processBitmap(Object obj);

    public void setAdapter(ImageWorkerAdapter imageworkeradapter)
    {
        mImageWorkerAdapter = imageworkeradapter;
    }

    public void setExitTasksEarly(boolean flag)
    {
        mExitTasksEarly = flag;
    }

    public void setImageCache(ImageCache imagecache)
    {
        mImageCache = imagecache;
    }

    public void setImageFadeIn(boolean flag)
    {
        mFadeInBitmap = flag;
    }

    public void setLoadingImage(int i)
    {
        mLoadingBitmap = BitmapFactory.decodeResource(mContext.getResources(), i);
    }

    public void setLoadingImage(Bitmap bitmap)
    {
        mLoadingBitmap = bitmap;
    }




}
