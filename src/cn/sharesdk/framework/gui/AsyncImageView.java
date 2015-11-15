// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ImageView;
import cn.sharesdk.framework.utils.BitmapHelper;
import cn.sharesdk.framework.utils.UIHandler;
import cn.sharesdk.framework.utils.e;
import java.util.Random;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor

public class AsyncImageView extends ImageView
    implements android.os.Handler.Callback, BitmapProcessor.BitmapCallback
{

    private static final Random a = new Random();
    private float b[];
    private boolean c;
    private String d;
    private int e;

    public AsyncImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    public AsyncImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(context);
    }

    private Bitmap a(Bitmap bitmap)
    {
        float f = bitmap.getWidth();
        float f1 = bitmap.getHeight();
        float f2;
        Object obj;
        if (f != 0.0F && f1 != 0.0F)
        {
            if ((obj = a())[0] != 0 && obj[1] != 0 && (f2 = ((float)obj[1] * f) / (float)obj[0]) != f1)
            {
                int ai[] = new int[4];
                if (f2 < f1)
                {
                    ai[1] = (int)((f1 - f2) / 2.0F);
                    ai[3] = ai[1];
                } else
                {
                    ai[0] = (int)((f - (f1 * (float)obj[0]) / (float)obj[1]) / 2.0F);
                    ai[2] = ai[0];
                }
                try
                {
                    obj = BitmapHelper.cropBitmap(bitmap, ai[0], ai[1], ai[2], ai[3]);
                }
                catch (Throwable throwable)
                {
                    cn.sharesdk.framework.utils.e.b(throwable);
                    return bitmap;
                }
                return ((Bitmap) (obj));
            }
        }
        return bitmap;
    }

    private void a(Context context)
    {
        if (isInEditMode())
        {
            setBackgroundColor(0xff000000);
            return;
        } else
        {
            BitmapProcessor.a(context);
            return;
        }
    }

    private int[] a()
    {
        int i;
        int j;
label0:
        {
            int k = getWidth();
            int i1 = getHeight();
            if (k != 0)
            {
                i = i1;
                j = k;
                if (i1 != 0)
                {
                    break label0;
                }
            }
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            i = i1;
            j = k;
            if (layoutparams != null)
            {
                j = layoutparams.width;
                i = layoutparams.height;
            }
        }
        int l;
label1:
        {
            if (j != 0)
            {
                l = i;
                if (i != 0)
                {
                    break label1;
                }
            }
            measure(0, 0);
            j = getMeasuredWidth();
            l = getMeasuredHeight();
        }
        return (new int[] {
            j, l
        });
    }

    private Bitmap b(Bitmap bitmap)
    {
        Bitmap bitmap1;
        try
        {
            int ai[] = a();
            bitmap1 = BitmapHelper.roundBitmap(bitmap, ai[0], ai[1], b[0], b[1], b[2], b[3]);
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.b(throwable);
            return bitmap;
        }
        return bitmap1;
    }

    public boolean handleMessage(Message message)
    {
label0:
        {
            if (message.what == 1)
            {
                Object obj = ((Object[])(Object[])message.obj)[0];
                message = ((Message) (((Object[])(Object[])message.obj)[1]));
                if (message == null || obj == null || !obj.equals(d))
                {
                    break label0;
                }
                setImageBitmap((Bitmap)message);
            }
            return false;
        }
        setImageResource(e);
        return false;
    }

    public void onImageGot(String s, Bitmap bitmap)
    {
        Object obj1 = null;
        Object obj = obj1;
        if (s != null)
        {
            obj = obj1;
            if (s.trim().length() > 0)
            {
                obj = obj1;
                if (s.equals(d))
                {
                    obj = bitmap;
                }
            }
        }
        bitmap = ((Bitmap) (obj));
        if (obj != null)
        {
            Bitmap bitmap1 = ((Bitmap) (obj));
            if (c)
            {
                bitmap1 = a(((Bitmap) (obj)));
            }
            bitmap = bitmap1;
            if (b != null)
            {
                bitmap = b(bitmap1);
            }
        }
        obj = new Message();
        obj.what = 1;
        obj.obj = ((Object) (new Object[] {
            s, bitmap
        }));
        UIHandler.sendMessageDelayed(((Message) (obj)), a.nextInt(300), this);
    }

}
