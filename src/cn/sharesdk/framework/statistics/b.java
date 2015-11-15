// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.l;
import cn.sharesdk.framework.statistics.b.c;
import cn.sharesdk.framework.statistics.b.e;
import cn.sharesdk.framework.statistics.b.g;
import java.io.PrintStream;
import java.util.Calendar;

// Referenced classes of package cn.sharesdk.framework.statistics:
//            a, NewAppReceiver

public class b extends l
{

    private static b b;
    private Context c;
    private cn.sharesdk.framework.utils.b d;
    private a e;
    private String f;
    private Handler g;
    private boolean h;
    private int i;
    private boolean j;
    private long k;
    private boolean l;

    private b(Context context)
    {
        super((new StringBuilder()).append("Thread-").append(Math.abs(-31130)).toString());
        c = context;
        d = cn.sharesdk.framework.utils.b.a(context);
        e = cn.sharesdk.framework.statistics.a.a(context);
    }

    public static b a(Context context)
    {
        cn/sharesdk/framework/statistics/b;
        JVM INSTR monitorenter ;
        b b1 = b;
        if (b1 != null) goto _L2; else goto _L1
_L1:
        if (context != null) goto _L4; else goto _L3
_L3:
        context = null;
_L6:
        cn/sharesdk/framework/statistics/b;
        JVM INSTR monitorexit ;
        return context;
_L4:
        b = new b(context.getApplicationContext());
_L2:
        context = b;
        if (true) goto _L6; else goto _L5
_L5:
        context;
        throw context;
    }

    private void b(c c1)
    {
        c1.f = d.p();
        c1.g = f;
        c1.h = d.q();
        c1.i = d.s();
        c1.j = String.valueOf(i + 30000);
        c1.k = d.o();
        c1.l = d.n();
        if (!"cn.sharesdk.demo".equals(c1.h) && "api20".equals(f) && ShareSDK.isDebug())
        {
            System.err.println("Your application is using the appkey of ShareSDK Demo, this will cause its data won't be count!");
        }
        c1.m = d.g();
    }

    private void c()
    {
        boolean flag = d();
        if (flag)
        {
            if (!l)
            {
                l = flag;
                k = System.currentTimeMillis();
                a(new g());
            }
        } else
        if (l)
        {
            l = flag;
            long l1 = System.currentTimeMillis();
            long l2 = k;
            e e1 = new e();
            e1.a = l1 - l2;
            a(e1);
            return;
        }
    }

    private void c(c c1)
    {
        try
        {
            e.a(c1);
            c1.b(c);
            return;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.c(throwable);
        }
        cn.sharesdk.framework.utils.e.c(c1.toString(), new Object[0]);
    }

    private boolean d()
    {
        Object obj = cn.sharesdk.framework.utils.b.a(c);
        String s = ((cn.sharesdk.framework.utils.b) (obj)).v();
        obj = ((cn.sharesdk.framework.utils.b) (obj)).q();
        return obj != null && ((String) (obj)).equals(s);
    }

    private void e()
    {
        try
        {
            cn.sharesdk.framework.statistics.a.a(c).a();
            return;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.c(throwable);
        }
    }

    public void a(int i1)
    {
        i = i1;
    }

    public void a(Handler handler)
    {
        g = handler;
    }

    protected void a(Message message)
    {
        if (!j)
        {
            j = true;
            e.a(f);
            e.b(f);
            a.sendEmptyMessageDelayed(4, 0x36ee80L);
            e.a(h);
            a.sendEmptyMessage(1);
            a.sendEmptyMessage(2);
            NewAppReceiver.a(c);
        }
    }

    public void a(c c1)
    {
        Message message;
        if (!j)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        b(c1);
        if (!c1.a(c))
        {
            break MISSING_BLOCK_LABEL_58;
        }
        message = new Message();
        message.what = 3;
        message.obj = c1;
        a.sendMessage(message);
        return;
        c1;
        cn.sharesdk.framework.utils.e.c(c1);
        return;
        cn.sharesdk.framework.utils.e.a((new StringBuilder()).append("Drop event: ").append(c1.toString()).toString(), new Object[0]);
        return;
    }

    public void a(String s)
    {
        f = s;
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    protected void b(Message message)
    {
        if (j)
        {
            long l1 = System.currentTimeMillis();
            long l2 = k;
            message = new e();
            message.a = l1 - l2;
            a(message);
            j = false;
            try
            {
                g.sendEmptyMessage(1);
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                cn.sharesdk.framework.utils.e.c(message);
            }
            b = null;
            a.getLooper().quit();
        }
    }

    protected void c(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 56
    //                   2 80
    //                   3 37
    //                   4 104;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L4:
        if (message.obj != null)
        {
            c((c)message.obj);
            return;
        }
          goto _L1
_L2:
        c();
        try
        {
            a.sendEmptyMessageDelayed(1, 100L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            cn.sharesdk.framework.utils.e.c(message);
        }
        return;
_L3:
        e();
        try
        {
            a.sendEmptyMessageDelayed(2, 10000L);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            cn.sharesdk.framework.utils.e.c(message);
        }
        return;
_L5:
        long l2 = cn.sharesdk.framework.statistics.a.c.a(c).f().longValue();
        message = Calendar.getInstance();
        message.setTimeInMillis(l2);
        int i1 = message.get(1);
        int j1 = message.get(2);
        int k1 = message.get(5);
        message.setTimeInMillis(System.currentTimeMillis());
        int l1 = message.get(1);
        int i2 = message.get(2);
        int j2 = message.get(5);
        if (i1 != l1 || j1 != i2 || k1 != j2)
        {
            e.b(f);
        } else
        {
            e.c(f);
        }
        a.sendEmptyMessageDelayed(4, 0x36ee80L);
        return;
    }
}
