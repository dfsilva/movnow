// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.graphics.Bitmap;
import cn.sharesdk.framework.network.i;
import cn.sharesdk.framework.utils.BitmapHelper;
import cn.sharesdk.framework.utils.a;
import cn.sharesdk.framework.utils.e;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Vector;
import java.util.WeakHashMap;

// Referenced classes of package cn.sharesdk.framework.gui:
//            BitmapProcessor, b

private static class b extends Thread
{

    private BitmapProcessor a;
    private long b;
    private boolean c;
    private b d;

    static long a(b b1)
    {
        return b1.b;
    }

    static b a(b b1, b b2)
    {
        b1.d = b2;
        return b2;
    }

    private void a()
    {
        int j = BitmapProcessor.c(a).size();
        d d1;
        if (j > 0)
        {
            d1 = (a)BitmapProcessor.c(a).remove(j - 1);
        } else
        {
            d1 = null;
        }
        if (d1 != null)
        {
            Bitmap bitmap = (Bitmap)BitmapProcessor.d(a).get(cn.sharesdk.framework.gui.a(d1));
            if (bitmap != null)
            {
                d = d1;
                cn.sharesdk.framework.gui.a(d, this);
                cn.sharesdk.framework.gui.a(d1, bitmap);
            } else
            {
                if ((new File(cn.sharesdk.framework.gui.BitmapProcessor.e(a), cn.sharesdk.framework.utils.a.b(cn.sharesdk.framework.gui.a(d1)))).exists())
                {
                    a(d1);
                    b = System.currentTimeMillis();
                    return;
                }
                if (BitmapProcessor.f(a).size() > 40)
                {
                    for (; BitmapProcessor.c(a).size() > 0; BitmapProcessor.c(a).remove(0)) { }
                    BitmapProcessor.f(a).remove(0);
                }
                BitmapProcessor.f(a).add(d1);
            }
            b = System.currentTimeMillis();
            return;
        } else
        {
            b = System.currentTimeMillis();
            Thread.sleep(30L);
            return;
        }
    }

    private void a(Bitmap bitmap, File file, boolean flag)
    {
        android.graphics.mat mat;
        FileOutputStream fileoutputstream;
        try
        {
            if (file.exists())
            {
                file.delete();
            }
            if (!file.getParentFile().exists())
            {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            if (file.exists())
            {
                file.delete();
            }
            return;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        mat = android.graphics.mat.PNG;
_L2:
        fileoutputstream = new FileOutputStream(file);
        bitmap.compress(mat, 100, fileoutputstream);
        fileoutputstream.flush();
        fileoutputstream.close();
        return;
        mat = android.graphics.mat.JPEG;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(b b1)
    {
        d = b1;
        cn.sharesdk.framework.gui.a(d, this);
        Object obj;
        boolean flag;
        if (cn.sharesdk.framework.gui.a(b1).toLowerCase().endsWith("png") || cn.sharesdk.framework.gui.a(b1).toLowerCase().endsWith("gif"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = new File(cn.sharesdk.framework.gui.BitmapProcessor.e(a), cn.sharesdk.framework.utils.a.b(cn.sharesdk.framework.gui.a(b1)));
        if (((File) (obj)).exists())
        {
            obj = BitmapHelper.getBitmap(((File) (obj)).getAbsolutePath());
            if (obj != null)
            {
                BitmapProcessor.d(a).put(cn.sharesdk.framework.gui.a(b1), obj);
                cn.sharesdk.framework.gui.a(b1, ((Bitmap) (obj)));
            }
            d = null;
        } else
        {
            (new i()).a(cn.sharesdk.framework.gui.a(b1), new b(this, ((File) (obj)), flag, b1));
            obj = null;
        }
        if (obj != null)
        {
            BitmapProcessor.d(a).put(cn.sharesdk.framework.gui.a(b1), obj);
            cn.sharesdk.framework.gui.a(b1, ((Bitmap) (obj)));
        }
        d = null;
    }

    static void a(d d1, Bitmap bitmap, File file, boolean flag)
    {
        d1.a(bitmap, file, flag);
    }

    static boolean a(a a1, boolean flag)
    {
        a1.c = flag;
        return flag;
    }

    private void b()
    {
        c c1 = null;
        if (BitmapProcessor.f(a).size() > 0)
        {
            c1 = (a)BitmapProcessor.f(a).remove(0);
        }
        if (c1 == null)
        {
            int j = BitmapProcessor.c(a).size();
            if (j > 0)
            {
                c1 = (a)BitmapProcessor.c(a).remove(j - 1);
            }
        }
        if (c1 != null)
        {
            Bitmap bitmap = (Bitmap)BitmapProcessor.d(a).get(cn.sharesdk.framework.gui.a(c1));
            if (bitmap != null)
            {
                d = c1;
                cn.sharesdk.framework.gui.a(d, this);
                cn.sharesdk.framework.gui.a(c1, bitmap);
            } else
            {
                a(c1);
            }
            b = System.currentTimeMillis();
            return;
        } else
        {
            b = System.currentTimeMillis();
            Thread.sleep(30L);
            return;
        }
    }

    static boolean b(b b1)
    {
        return b1.c;
    }

    static BitmapProcessor c(c c1)
    {
        return c1.a;
    }

    public void interrupt()
    {
        try
        {
            super.interrupt();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void run()
    {
_L2:
        if (!cn.sharesdk.framework.gui.BitmapProcessor.a(a))
        {
            break; /* Loop/switch isn't completed */
        }
        Throwable throwable;
        if (c)
        {
            a();
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            b();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            e.b(throwable);
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public (BitmapProcessor bitmapprocessor)
    {
        a = bitmapprocessor;
        b = System.currentTimeMillis();
    }
}
