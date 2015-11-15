// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics;

import android.content.Context;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.b;
import cn.sharesdk.framework.utils.e;
import cn.sharesdk.framework.utils.f;
import java.io.File;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.framework.statistics:
//            NewAppReceiver

private static class a
{

    private f a;

    public ArrayList a()
    {
        Object obj = a.d("buffered_apps");
        if (obj == null)
        {
            return new ArrayList();
        } else
        {
            return (ArrayList)obj;
        }
    }

    public void a(long l)
    {
        a.a("buffered_apps_time", Long.valueOf(l));
    }

    public void a(ArrayList arraylist)
    {
        a.a("buffered_apps", arraylist);
    }

    public long b()
    {
        return a.c("buffered_apps_time");
    }

    public (Context context)
    {
        Object obj = cn.sharesdk.framework.utils.b.a(context);
        context = R.getCachePath(context, null);
        if (((b) (obj)).w())
        {
            obj = new File(((b) (obj)).x(), "ShareSDK");
            if (((File) (obj)).exists())
            {
                a = new f();
                context = new File(((File) (obj)), ".ba");
                a.a(context.getAbsolutePath());
                return;
            }
        }
        try
        {
            a = new f();
            context = new File(context, ".ba");
            if (!context.getParentFile().exists())
            {
                context.getParentFile().mkdirs();
            }
            a.a(context.getAbsolutePath());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            e.c(context);
        }
        if (a == null)
        {
            a = new f();
        }
        return;
    }
}
