// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import cn.sharesdk.framework.network.i;
import cn.sharesdk.framework.statistics.a;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.e;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package cn.sharesdk.framework:
//            l, ShareSDK, q, n, 
//            Platform, Service, r, CustomPlatform

public class p extends l
{
    private static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        private static final a d[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(cn/sharesdk/framework/p$a, s);
        }

        public static a[] values()
        {
            return (a[])d.clone();
        }

        static 
        {
            a = new a("IDLE", 0);
            b = new a("INITIALIZING", 1);
            c = new a("READY", 2);
            d = (new a[] {
                a, b, c
            });
        }

        private a(String s, int i1)
        {
            super(s, i1);
        }
    }


    private a b;
    private Context c;
    private HashMap d;
    private ArrayList e;
    private HashMap f;
    private HashMap g;
    private HashMap h;
    private HashMap i;
    private HashMap j;
    private String k;
    private boolean l;
    private String m;
    private boolean n;
    private boolean o;

    public p(Context context)
    {
        super((new StringBuilder()).append("Thread-").append(Math.abs(-4655)).toString());
        b = cn.sharesdk.framework.a.a;
        c = context.getApplicationContext();
        cn.sharesdk.framework.utils.e.a(c);
        d = new HashMap();
        e = new ArrayList();
        f = new HashMap();
        g = new HashMap();
        h = new HashMap();
        i = new HashMap();
        j = new HashMap();
    }

    static String a(p p1)
    {
        return p1.k;
    }

    static boolean a(p p1, cn.sharesdk.framework.statistics.a a1, HashMap hashmap, HashMap hashmap1)
    {
        return p1.a(a1, hashmap, hashmap1);
    }

    private boolean a(cn.sharesdk.framework.statistics.a a1, HashMap hashmap, HashMap hashmap1)
    {
        boolean flag1 = false;
        boolean flag;
        if (hashmap.containsKey("error"))
        {
            flag = flag1;
            try
            {
                if (!ShareSDK.isDebug())
                {
                    break MISSING_BLOCK_LABEL_149;
                }
                Log.e("ShareSDK request platform config ==>>", (new d()).a(hashmap));
            }
            // Misplaced declaration of an exception variable
            catch (cn.sharesdk.framework.statistics.a a1)
            {
                flag = flag1;
                if (ShareSDK.isDebug())
                {
                    a1.printStackTrace();
                    return false;
                }
                break MISSING_BLOCK_LABEL_149;
            }
            return false;
        }
        if (hashmap.containsKey("res"))
        {
            break MISSING_BLOCK_LABEL_87;
        }
        flag = flag1;
        if (!ShareSDK.isDebug())
        {
            break MISSING_BLOCK_LABEL_149;
        }
        Log.e("ShareSDK platform config result ==>>", "SNS configuration is empty");
        return false;
        hashmap = String.valueOf(hashmap.get("res")).replace("\n", "");
        a1 = a1.b(k, hashmap).trim();
        cn.sharesdk.framework.utils.e.b("snsconf returns ===> %s", new Object[] {
            a1
        });
        hashmap1.putAll((new d()).a(a1));
        flag = true;
        return flag;
    }

    private void j()
    {
        HashMap hashmap = d;
        hashmap;
        JVM INSTR monitorenter ;
        d.clear();
        k();
        if (!d.containsKey("ShareSDK")) goto _L2; else goto _L1
_L1:
        Object obj = (HashMap)d.remove("ShareSDK");
        if (obj == null) goto _L2; else goto _L3
_L3:
        if (k == null)
        {
            k = (String)((HashMap) (obj)).get("AppKey");
        }
        if (!((HashMap) (obj)).containsKey("UseVersion"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        obj = (String)((HashMap) (obj)).get("UseVersion");
_L4:
        m = ((String) (obj));
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        throw obj;
        obj = "latest";
          goto _L4
    }

    private void k()
    {
        XmlPullParser xmlpullparser;
        XmlPullParserFactory xmlpullparserfactory = XmlPullParserFactory.newInstance();
        xmlpullparserfactory.setNamespaceAware(true);
        xmlpullparser = xmlpullparserfactory.newPullParser();
        Object obj = c.getAssets().open("ShareSDK.xml");
_L6:
        int i1;
        xmlpullparser.setInput(((InputStream) (obj)), "utf-8");
        i1 = xmlpullparser.getEventType();
_L4:
        if (i1 == 1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (i1 != 2)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        String s;
        HashMap hashmap;
        int j1;
        s = xmlpullparser.getName();
        hashmap = new HashMap();
        j1 = xmlpullparser.getAttributeCount();
        i1 = 0;
_L2:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        hashmap.put(xmlpullparser.getAttributeName(i1), xmlpullparser.getAttributeValue(i1).trim());
        i1++;
        if (true) goto _L2; else goto _L1
        obj;
        cn.sharesdk.framework.utils.e.c(((Throwable) (obj)));
        obj = c.getAssets().open("ShareSDK.conf");
        continue; /* Loop/switch isn't completed */
_L1:
        d.put(s, hashmap);
        i1 = xmlpullparser.next();
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            ((InputStream) (obj)).close();
            return;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.c(throwable);
        }
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void l()
    {
        (new q(this)).start();
    }

    private void m()
    {
        e.clear();
        ArrayList arraylist = (new n()).a(c);
        if (arraylist != null)
        {
            e.addAll(arraylist);
        }
        HashMap hashmap = f;
        hashmap;
        JVM INSTR monitorenter ;
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        Platform platform;
        for (Iterator iterator = e.iterator(); iterator.hasNext(); f.put(platform.getName(), Integer.valueOf(platform.getPlatformId())))
        {
            platform = (Platform)iterator.next();
            g.put(Integer.valueOf(platform.getPlatformId()), platform.getName());
        }

        break MISSING_BLOCK_LABEL_132;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        JVM INSTR monitorexit ;
        hashmap;
        JVM INSTR monitorexit ;
    }

    private void n()
    {
        (new n()).a(c, k, a, l, e());
    }

    public String a(int i1, String s)
    {
        synchronized (i)
        {
            s = (new n()).a(i1, s, i);
        }
        return s;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public String a(Bitmap bitmap)
    {
        if (a.c != b)
        {
            return null;
        } else
        {
            return (new n()).a(c, bitmap);
        }
    }

    public String a(String s, boolean flag, int i1, String s1)
    {
        if (a.c != b)
        {
            return s;
        } else
        {
            return (new n()).a(c, k, s, flag, i1, s1);
        }
    }

    public void a()
    {
        b = a.b;
        j();
        super.a();
    }

    public void a(int i1)
    {
        i.a = i1;
    }

    public void a(int i1, int j1)
    {
        synchronized (i)
        {
            (new n()).a(i1, j1, i);
        }
        return;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(int i1, Platform platform)
    {
        (new n()).a(i1, platform);
    }

    protected void a(Message message)
    {
        synchronized (e)
        {
            m();
            n();
            b = a.c;
            e.notify();
            l();
        }
        return;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Class class1)
    {
label0:
        {
            synchronized (j)
            {
                if (!j.containsKey(Integer.valueOf(class1.hashCode())))
                {
                    break label0;
                }
            }
            return;
        }
        Service service = (Service)class1.newInstance();
        j.put(Integer.valueOf(class1.hashCode()), service);
        service.a(c);
        service.a(k);
        service.onBind();
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        class1;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
        class1;
        cn.sharesdk.framework.utils.e.c(class1);
          goto _L1
    }

    public void a(String s)
    {
        k = s;
    }

    public void a(String s, int i1)
    {
        (new n()).a(s, i1);
    }

    public void a(String s, String s1)
    {
        synchronized (d)
        {
            s = (HashMap)d.get(s);
            d.put(s1, s);
        }
        return;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void a(String s, HashMap hashmap)
    {
        HashMap hashmap2 = d;
        hashmap2;
        JVM INSTR monitorenter ;
        HashMap hashmap1 = (HashMap)d.get(s);
        if (hashmap1 != null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        hashmap1 = new HashMap();
        hashmap1;
        JVM INSTR monitorenter ;
        hashmap = hashmap.entrySet().iterator();
_L2:
        String s1;
        Object obj;
        do
        {
            if (!hashmap.hasNext())
            {
                break MISSING_BLOCK_LABEL_117;
            }
            obj = (java.util.Map.Entry)hashmap.next();
            s1 = (String)((java.util.Map.Entry) (obj)).getKey();
            obj = ((java.util.Map.Entry) (obj)).getValue();
        } while (obj == null);
        hashmap1.put(s1, String.valueOf(obj));
        if (true) goto _L2; else goto _L1
_L1:
        s;
        hashmap1;
        JVM INSTR monitorexit ;
        throw s;
        s;
        hashmap2;
        JVM INSTR monitorexit ;
        throw s;
        hashmap1;
        JVM INSTR monitorexit ;
        d.put(s, hashmap1);
        hashmap2;
        JVM INSTR monitorexit ;
    }

    public void a(boolean flag)
    {
        l = flag;
    }

    public boolean a(HashMap hashmap)
    {
        if (a.c != b)
        {
            if (ShareSDK.isDebug())
            {
                System.err.println("Statistics module unopened");
            }
            return false;
        }
        cn.sharesdk.framework.statistics.a a1 = cn.sharesdk.framework.statistics.a.a(c);
        boolean flag1 = a(a1, a1.e(k), hashmap);
        if (flag1)
        {
            o = true;
            (new r(this, a1)).start();
            return flag1;
        }
        boolean flag = flag1;
        String s;
        try
        {
            s = a1.f(k);
        }
        // Misplaced declaration of an exception variable
        catch (HashMap hashmap)
        {
            if (ShareSDK.isDebug())
            {
                hashmap.printStackTrace();
            }
            o = false;
            return flag;
        }
        flag = flag1;
        a1.a(k, s);
        flag = flag1;
        flag1 = a(a1, (new d()).a(s), hashmap);
        flag = flag1;
        o = true;
        return flag1;
    }

    public Platform b(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        Platform aplatform[];
        return null;
_L2:
        if ((aplatform = c()) != null)
        {
            int j1 = aplatform.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                Platform platform = aplatform[i1];
                if (s.equals(platform.getName()))
                {
                    return platform;
                }
                i1++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public String b(String s, String s1)
    {
        HashMap hashmap = d;
        hashmap;
        JVM INSTR monitorenter ;
        s = (HashMap)d.get(s);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return null;
        s = (String)s.get(s1);
        hashmap;
        JVM INSTR monitorexit ;
        return s;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void b(int i1)
    {
        i.b = i1;
    }

    protected void b(Message message)
    {
        message = j;
        message;
        JVM INSTR monitorenter ;
        for (Iterator iterator = j.entrySet().iterator(); iterator.hasNext(); ((Service)((java.util.Map.Entry)iterator.next()).getValue()).onUnbind()) { }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
        j.clear();
        message;
        JVM INSTR monitorexit ;
        synchronized (h)
        {
            h.clear();
        }
        try
        {
            (new n()).b(c);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            cn.sharesdk.framework.utils.e.c(message);
        }
        break MISSING_BLOCK_LABEL_108;
        exception1;
        message;
        JVM INSTR monitorexit ;
        throw exception1;
        a.getLooper().quit();
        b = cn.sharesdk.framework.a.a;
        return;
    }

    public void b(Class class1)
    {
        synchronized (j)
        {
            int i1 = class1.hashCode();
            if (j.containsKey(Integer.valueOf(i1)))
            {
                ((Service)j.get(Integer.valueOf(i1))).onUnbind();
                j.remove(Integer.valueOf(i1));
            }
        }
        return;
        class1;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public void b(boolean flag)
    {
        n = flag;
    }

    public boolean b(HashMap hashmap)
    {
        boolean flag;
        synchronized (i)
        {
            i.clear();
            flag = (new n()).a(hashmap, i);
        }
        return flag;
        hashmap;
        hashmap1;
        JVM INSTR monitorexit ;
        throw hashmap;
    }

    public int c(String s)
    {
        HashMap hashmap = f;
        hashmap;
        JVM INSTR monitorenter ;
        int i1;
        if (!f.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_37;
        }
        i1 = ((Integer)f.get(s)).intValue();
        return i1;
        hashmap;
        JVM INSTR monitorexit ;
        return 0;
        s;
        hashmap;
        JVM INSTR monitorexit ;
        throw s;
    }

    public Service c(Class class1)
    {
        hashmap;
        JVM INSTR monitorenter ;
        Service service;
        synchronized (j)
        {
            service = (Service)class1.cast(j.get(Integer.valueOf(class1.hashCode())));
        }
        return service;
        Throwable throwable;
        throwable;
        if (ShareSDK.isDebug())
        {
            System.err.println((new StringBuilder()).append(class1.getName()).append(" has not registered").toString());
        }
        cn.sharesdk.framework.utils.e.c(throwable);
        hashmap;
        JVM INSTR monitorexit ;
        return null;
        class1;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
    }

    public String c(int i1)
    {
        String s;
        synchronized (g)
        {
            s = (String)g.get(Integer.valueOf(i1));
        }
        return s;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void c(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            b = cn.sharesdk.framework.a.a;
            break;
        }
        a.getLooper().quit();
    }

    public Platform[] c()
    {
        long l1;
label0:
        {
            l1 = System.currentTimeMillis();
            synchronized (e)
            {
                if (b != cn.sharesdk.framework.a.a)
                {
                    break label0;
                }
            }
            return null;
        }
        a a1;
        a a2;
        a1 = b;
        a2 = a.b;
        if (a1 != a2)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        e.wait();
_L1:
        arraylist;
        JVM INSTR monitorexit ;
        arraylist = new ArrayList();
        Iterator iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Platform platform = (Platform)iterator.next();
            if (platform != null && platform.b())
            {
                platform.a();
                arraylist.add(platform);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_122;
        Throwable throwable;
        throwable;
        cn.sharesdk.framework.utils.e.c(throwable);
          goto _L1
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        Iterator iterator1 = h.entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Platform platform1 = (Platform)((java.util.Map.Entry)iterator1.next()).getValue();
            if (platform1 != null && platform1.b())
            {
                arraylist.add(platform1);
            }
        } while (true);
        if (arraylist.size() <= 0)
        {
            return null;
        }
        Platform aplatform[] = new Platform[arraylist.size()];
        for (int i1 = 0; i1 < aplatform.length; i1++)
        {
            aplatform[i1] = (Platform)arraylist.get(i1);
        }

        cn.sharesdk.framework.utils.e.b("sort list use time: %s", new Object[] {
            Long.valueOf(System.currentTimeMillis() - l1)
        });
        return aplatform;
    }

    public String d()
    {
        String s;
        try
        {
            s = (new n()).a();
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.c(throwable);
            return "2.5.9";
        }
        return s;
    }

    public String d(String s)
    {
        if (a.c != b)
        {
            return null;
        } else
        {
            return (new n()).a(c, s);
        }
    }

    public void d(Class class1)
    {
        HashMap hashmap = h;
        hashmap;
        JVM INSTR monitorenter ;
label0:
        {
            if (!h.containsKey(Integer.valueOf(class1.hashCode())))
            {
                break label0;
            }
            return;
        }
        CustomPlatform customplatform;
        customplatform = (CustomPlatform)class1.getConstructor(new Class[] {
            android/content/Context
        }).newInstance(new Object[] {
            c
        });
        h.put(Integer.valueOf(class1.hashCode()), customplatform);
        class1 = f;
        class1;
        JVM INSTR monitorenter ;
        HashMap hashmap1 = g;
        hashmap1;
        JVM INSTR monitorenter ;
        if (customplatform == null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (customplatform.b())
        {
            g.put(Integer.valueOf(customplatform.getPlatformId()), customplatform.getName());
            f.put(customplatform.getName(), Integer.valueOf(customplatform.getPlatformId()));
        }
        hashmap1;
        JVM INSTR monitorexit ;
        class1;
        JVM INSTR monitorexit ;
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        hashmap;
        JVM INSTR monitorexit ;
        throw class1;
        Exception exception;
        exception;
        hashmap1;
        JVM INSTR monitorexit ;
        throw exception;
        exception;
        class1;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1) { }
        finally { }
        cn.sharesdk.framework.utils.e.c(class1);
          goto _L1
    }

    public int e()
    {
        int i1;
        try
        {
            i1 = (new n()).b();
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.c(throwable);
            return 50;
        }
        return i1;
    }

    public void e(Class class1)
    {
        int i1 = class1.hashCode();
        synchronized (h)
        {
            h.remove(Integer.valueOf(i1));
        }
        return;
        exception;
        class1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean f()
    {
        return n;
    }

    public boolean g()
    {
        return l;
    }

    public boolean h()
    {
label0:
        {
            synchronized (i)
            {
                if (i == null || i.size() <= 0)
                {
                    break label0;
                }
            }
            return true;
        }
        boolean flag = o;
        hashmap;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void i()
    {
        try
        {
            R.clearCache(c);
            return;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.c(throwable);
        }
    }
}
