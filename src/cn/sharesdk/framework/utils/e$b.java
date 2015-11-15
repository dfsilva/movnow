// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

// Referenced classes of package cn.sharesdk.framework.utils:
//            e

private static class b
{

    public Context a;
    public String b;

    protected static String a(int i)
    {
label0:
        {
label1:
            {
                if (e.a().a > 3)
                {
                    break label0;
                }
                StackTraceElement astacktraceelement[] = Thread.currentThread().getStackTrace();
                if (i < 0 || i >= astacktraceelement.length)
                {
                    break label0;
                }
                Object obj = astacktraceelement[i];
                String s = ((StackTraceElement) (obj)).getFileName();
                String s1;
                if (s == null || s.length() <= 0)
                {
                    s1 = ((StackTraceElement) (obj)).getClassName();
                } else
                {
                    s1 = (new StringBuilder()).append(e.a().c).append("/").append(s).toString();
                }
                i = ((StackTraceElement) (obj)).getLineNumber();
                s = String.valueOf(i);
                if (i >= 0)
                {
                    break label1;
                }
                obj = ((StackTraceElement) (obj)).getMethodName();
                if (obj != null)
                {
                    s = ((String) (obj));
                    if (((String) (obj)).length() > 0)
                    {
                        break label1;
                    }
                }
                s = "Unknown Source";
            }
            return (new StringBuilder()).append(s1).append("(").append(s).append(")").toString();
        }
        return e.a().c;
    }

    public int a(int i, String s)
    {
        return Log.println(i, a(5), a(s));
    }

    protected String a(String s)
    {
        String s1 = s;
        if (e.a().a <= 3)
        {
            s1 = String.format("%s %s", new Object[] {
                Thread.currentThread().getName(), s
            });
        }
        return s1;
    }

    public void a(Context context)
    {
        if (context != null)
        {
            a = context;
            b = context.getPackageName();
            if (TextUtils.isEmpty(b))
            {
                b = "";
                return;
            }
        }
    }

    public int b(int i, String s)
    {
        if (a != null)
        {
            try
            {
                Intent intent = new Intent();
                intent.setAction("cn.sharesdk.log");
                intent.putExtra("package", b);
                intent.putExtra("priority", i);
                intent.putExtra("msg", s);
                a.sendBroadcast(intent);
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return 0;
    }

    public ()
    {
        b = "";
    }
}
