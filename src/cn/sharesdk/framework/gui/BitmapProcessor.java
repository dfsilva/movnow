// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.gui;

import android.content.Context;
import android.graphics.Bitmap;
import cn.sharesdk.framework.network.i;
import cn.sharesdk.framework.utils.BitmapHelper;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.e;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.Timer;
import java.util.Vector;
import java.util.WeakHashMap;

// Referenced classes of package cn.sharesdk.framework.gui:
//            a, b

public class BitmapProcessor
{
    public static interface BitmapCallback
    {

        public abstract void onImageGot(String s, Bitmap bitmap);
    }

    public static class a
    {

        private String a;
        private BitmapCallback b;
        private d c;
        private long d;
        private Bitmap e;

        static d a(a a1, d d1)
        {
            a1.c = d1;
            return d1;
        }

        static String a(a a1)
        {
            return a1.a;
        }

        private void a(Bitmap bitmap)
        {
            e = bitmap;
            if (b != null)
            {
                b.onImageGot(a, e);
            }
        }

        static void a(a a1, Bitmap bitmap)
        {
            a1.a(bitmap);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("url=").append(a);
            stringbuilder.append("time=").append(d);
            stringbuilder.append("worker=").append(c.getName()).append(" (").append(c.getId()).append("");
            return stringbuilder.toString();
        }

        public a()
        {
            d = System.currentTimeMillis();
        }
    }

    private static class b extends Timer
    {

        private BitmapProcessor a;

        static BitmapProcessor a(b b1)
        {
            return b1.a;
        }

        private void a()
        {
            if (BitmapProcessor.a(a))
            {
                long l = System.currentTimeMillis();
                int i = 0;
                while (i < BitmapProcessor.b(a).length) 
                {
                    if (BitmapProcessor.b(a)[i] == null)
                    {
                        BitmapProcessor.b(a)[i] = new d(a);
                        BitmapProcessor.b(a)[i].setName((new StringBuilder()).append("worker ").append(i).toString());
                        d d1 = BitmapProcessor.b(a)[i];
                        boolean flag;
                        if (i == 0)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        d.a(d1, flag);
                        BitmapProcessor.b(a)[i].start();
                    } else
                    if (l - d.a(BitmapProcessor.b(a)[i]) > 20000L)
                    {
                        BitmapProcessor.b(a)[i].interrupt();
                        boolean flag1 = d.b(BitmapProcessor.b(a)[i]);
                        BitmapProcessor.b(a)[i] = new d(a);
                        BitmapProcessor.b(a)[i].setName((new StringBuilder()).append("worker ").append(i).toString());
                        d.a(BitmapProcessor.b(a)[i], flag1);
                        BitmapProcessor.b(a)[i].start();
                    }
                    i++;
                }
            }
        }

        static void b(b b1)
        {
            b1.a();
        }

        public b(BitmapProcessor bitmapprocessor)
        {
            a = bitmapprocessor;
            schedule(new cn.sharesdk.framework.gui.a(this), 0L, 200L);
        }
    }

    private static class c extends FilterInputStream
    {

        InputStream a;

        public long skip(long l)
        {
            long l1 = 0L;
            do
            {
                long l2;
label0:
                {
                    if (l1 < l)
                    {
                        l2 = a.skip(l - l1);
                        if (l2 != 0L)
                        {
                            break label0;
                        }
                    }
                    return l1;
                }
                l1 += l2;
            } while (true);
        }

        protected c(InputStream inputstream)
        {
            super(inputstream);
            a = inputstream;
        }
    }

    private static class d extends Thread
    {

        private BitmapProcessor a;
        private long b;
        private boolean c;
        private a d;

        static long a(d d1)
        {
            return d1.b;
        }

        static a a(d d1, a a1)
        {
            d1.d = a1;
            return a1;
        }

        private void a()
        {
            int j = BitmapProcessor.c(a).size();
            a a1;
            if (j > 0)
            {
                a1 = (a)BitmapProcessor.c(a).remove(j - 1);
            } else
            {
                a1 = null;
            }
            if (a1 != null)
            {
                Bitmap bitmap = (Bitmap)BitmapProcessor.d(a).get(a.a(a1));
                if (bitmap != null)
                {
                    d = a1;
                    a.a(d, this);
                    a.a(a1, bitmap);
                } else
                {
                    if ((new File(cn.sharesdk.framework.gui.BitmapProcessor.e(a), cn.sharesdk.framework.utils.a.b(a.a(a1)))).exists())
                    {
                        a(a1);
                        b = System.currentTimeMillis();
                        return;
                    }
                    if (BitmapProcessor.f(a).size() > 40)
                    {
                        for (; BitmapProcessor.c(a).size() > 0; BitmapProcessor.c(a).remove(0)) { }
                        BitmapProcessor.f(a).remove(0);
                    }
                    BitmapProcessor.f(a).add(a1);
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
            android.graphics.Bitmap.CompressFormat compressformat;
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
            compressformat = android.graphics.Bitmap.CompressFormat.PNG;
_L2:
            fileoutputstream = new FileOutputStream(file);
            bitmap.compress(compressformat, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            return;
            compressformat = android.graphics.Bitmap.CompressFormat.JPEG;
            if (true) goto _L2; else goto _L1
_L1:
        }

        private void a(a a1)
        {
            d = a1;
            a.a(d, this);
            Object obj;
            boolean flag;
            if (a.a(a1).toLowerCase().endsWith("png") || a.a(a1).toLowerCase().endsWith("gif"))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            obj = new File(cn.sharesdk.framework.gui.BitmapProcessor.e(a), cn.sharesdk.framework.utils.a.b(a.a(a1)));
            if (((File) (obj)).exists())
            {
                obj = BitmapHelper.getBitmap(((File) (obj)).getAbsolutePath());
                if (obj != null)
                {
                    BitmapProcessor.d(a).put(a.a(a1), obj);
                    a.a(a1, ((Bitmap) (obj)));
                }
                d = null;
            } else
            {
                (new i()).a(a.a(a1), new cn.sharesdk.framework.gui.b(this, ((File) (obj)), flag, a1));
                obj = null;
            }
            if (obj != null)
            {
                BitmapProcessor.d(a).put(a.a(a1), obj);
                a.a(a1, ((Bitmap) (obj)));
            }
            d = null;
        }

        static void a(d d1, Bitmap bitmap, File file, boolean flag)
        {
            d1.a(bitmap, file, flag);
        }

        static boolean a(d d1, boolean flag)
        {
            d1.c = flag;
            return flag;
        }

        private void b()
        {
            a a1 = null;
            if (BitmapProcessor.f(a).size() > 0)
            {
                a1 = (a)BitmapProcessor.f(a).remove(0);
            }
            if (a1 == null)
            {
                int j = BitmapProcessor.c(a).size();
                if (j > 0)
                {
                    a1 = (a)BitmapProcessor.c(a).remove(j - 1);
                }
            }
            if (a1 != null)
            {
                Bitmap bitmap = (Bitmap)BitmapProcessor.d(a).get(a.a(a1));
                if (bitmap != null)
                {
                    d = a1;
                    a.a(d, this);
                    a.a(a1, bitmap);
                } else
                {
                    a(a1);
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

        static boolean b(d d1)
        {
            return d1.c;
        }

        static BitmapProcessor c(d d1)
        {
            return d1.a;
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
            if (!BitmapProcessor.a(a))
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
                cn.sharesdk.framework.utils.e.b(throwable);
            }
            if (true) goto _L2; else goto _L1
_L1:
        }

        public d(BitmapProcessor bitmapprocessor)
        {
            a = bitmapprocessor;
            b = System.currentTimeMillis();
        }
    }


    private static BitmapProcessor a;
    private WeakHashMap b;
    private boolean c;
    private Vector d;
    private File e;
    private d f[];
    private Vector g;
    private b h;

    private BitmapProcessor(Context context)
    {
        d = new Vector();
        g = new Vector();
        f = new d[3];
        b = new WeakHashMap();
        e = new File(R.getImageCachePath(context));
        h = new b(this);
    }

    public static void a(Context context)
    {
        cn/sharesdk/framework/gui/BitmapProcessor;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new BitmapProcessor(context.getApplicationContext());
        }
        cn/sharesdk/framework/gui/BitmapProcessor;
        JVM INSTR monitorexit ;
        return;
        context;
        throw context;
    }

    static boolean a(BitmapProcessor bitmapprocessor)
    {
        return bitmapprocessor.c;
    }

    static d[] b(BitmapProcessor bitmapprocessor)
    {
        return bitmapprocessor.f;
    }

    static Vector c(BitmapProcessor bitmapprocessor)
    {
        return bitmapprocessor.d;
    }

    static WeakHashMap d(BitmapProcessor bitmapprocessor)
    {
        return bitmapprocessor.b;
    }

    static File e(BitmapProcessor bitmapprocessor)
    {
        return bitmapprocessor.e;
    }

    static Vector f(BitmapProcessor bitmapprocessor)
    {
        return bitmapprocessor.g;
    }
}
