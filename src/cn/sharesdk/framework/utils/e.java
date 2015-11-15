// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

public class e
{
    private static class a
    {

        public int a;
        public String b;
        public String c;

        public void a(Context context)
        {
            if (context == null)
            {
                return;
            }
            b = context.getPackageName();
            if (TextUtils.isEmpty(b))
            {
                b = "";
                return;
            } else
            {
                c = b.toUpperCase();
                return;
            }
        }

        public a()
        {
            a = 7;
            b = "";
            c = "";
        }
    }

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

        public b()
        {
            b = "";
        }
    }


    private static a a = new a();
    private static b b = new b();

    public static transient int a(Object obj, Object aobj[])
    {
        if (a.a > 3)
        {
            String s = obj.toString();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            return b.b(3, ((String) (obj)));
        }
        String s1 = obj.toString();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        return b.a(3, ((String) (obj)));
    }

    public static int a(Throwable throwable)
    {
        if (a.a <= 3)
        {
            return b.a(3, Log.getStackTraceString(throwable));
        } else
        {
            return b.b(3, Log.getStackTraceString(throwable));
        }
    }

    public static transient int a(Throwable throwable, Object obj, Object aobj[])
    {
        if (a.a > 6)
        {
            String s = obj.toString();
            StringBuilder stringbuilder = new StringBuilder();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            throwable = stringbuilder.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
            return b.b(6, throwable);
        }
        String s1 = obj.toString();
        StringBuilder stringbuilder1 = new StringBuilder();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        throwable = stringbuilder1.append(((String) (obj))).append('\n').append(Log.getStackTraceString(throwable)).toString();
        return b.a(6, throwable);
    }

    static a a()
    {
        return a;
    }

    public static void a(Context context)
    {
        a.a(context.getApplicationContext());
        b.a(context.getApplicationContext());
    }

    public static transient int b(Object obj, Object aobj[])
    {
        if (a.a > 4)
        {
            String s = obj.toString();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            return b.b(4, ((String) (obj)));
        }
        String s1 = obj.toString();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        return b.a(4, ((String) (obj)));
    }

    public static int b(Throwable throwable)
    {
        if (a.a <= 5)
        {
            return b.a(5, Log.getStackTraceString(throwable));
        } else
        {
            return 0;
        }
    }

    public static transient int c(Object obj, Object aobj[])
    {
        if (a.a > 6)
        {
            String s = obj.toString();
            obj = s;
            if (aobj.length > 0)
            {
                obj = String.format(s, aobj);
            }
            return b.b(6, ((String) (obj)));
        }
        String s1 = obj.toString();
        obj = s1;
        if (aobj.length > 0)
        {
            obj = String.format(s1, aobj);
        }
        return b.a(6, ((String) (obj)));
    }

    public static int c(Throwable throwable)
    {
        if (a.a <= 6)
        {
            return b.a(6, Log.getStackTraceString(throwable));
        } else
        {
            return b.b(6, Log.getStackTraceString(throwable));
        }
    }

}
