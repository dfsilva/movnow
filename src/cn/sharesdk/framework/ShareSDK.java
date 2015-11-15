// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            p, ShareSDKUIShell, FakeActivity, Platform, 
//            Service

public class ShareSDK
{

    private static p a;
    private static boolean b = true;

    public ShareSDK()
    {
    }

    static String a(int i, String s)
    {
        c();
        return a.a(i, s);
    }

    static String a(Bitmap bitmap)
    {
        c();
        return a.a(bitmap);
    }

    static String a(String s)
    {
        c();
        return a.d(s);
    }

    static String a(String s, boolean flag, int i, String s1)
    {
        c();
        return a.a(s, flag, i, s1);
    }

    static void a(int i, int j)
    {
        c();
        a.a(i, j);
    }

    static void a(String s, String s1)
    {
        c();
        a.a(s, s1);
    }

    static boolean a()
    {
        c();
        return a.g();
    }

    static boolean a(HashMap hashmap)
    {
        c();
        return a.a(hashmap);
    }

    static String b(String s, String s1)
    {
        c();
        return a.b(s, s1);
    }

    static boolean b()
    {
        c();
        return a.h();
    }

    static boolean b(HashMap hashmap)
    {
        c();
        return a.b(hashmap);
    }

    private static void c()
    {
        if (a == null)
        {
            throw new NullPointerException("Please call ShareSDK.initSDK(Context) before any action.");
        } else
        {
            return;
        }
    }

    public static void closeDebug()
    {
        b = false;
    }

    public static void deleteCache()
    {
        c();
        a.i();
    }

    public static Platform getPlatform(Context context, String s)
    {
        c();
        return a.b(s);
    }

    public static Platform getPlatform(String s)
    {
        c();
        return a.b(s);
    }

    public static Platform[] getPlatformList()
    {
        cn/sharesdk/framework/ShareSDK;
        JVM INSTR monitorenter ;
        Platform aplatform[];
        c();
        aplatform = a.c();
        cn/sharesdk/framework/ShareSDK;
        JVM INSTR monitorexit ;
        return aplatform;
        Exception exception;
        exception;
        throw exception;
    }

    public static Platform[] getPlatformList(Context context)
    {
        cn/sharesdk/framework/ShareSDK;
        JVM INSTR monitorenter ;
        context = getPlatformList();
        cn/sharesdk/framework/ShareSDK;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public static int getSDKVersionCode()
    {
        c();
        return a.e();
    }

    public static String getSDKVersionName()
    {
        c();
        return a.d();
    }

    public static Service getService(Class class1)
    {
        c();
        return a.c(class1);
    }

    public static void initSDK(Context context)
    {
        initSDK(context, null, true);
    }

    public static void initSDK(Context context, String s)
    {
        initSDK(context, s, true);
    }

    public static void initSDK(Context context, String s, boolean flag)
    {
        if (a == null)
        {
            FakeActivity.setShell(cn/sharesdk/framework/ShareSDKUIShell);
            context = new p(context);
            context.a(s);
            context.a(flag);
            context.a();
            a = context;
        }
    }

    public static void initSDK(Context context, boolean flag)
    {
        initSDK(context, null, flag);
    }

    public static boolean isDebug()
    {
        return b;
    }

    public static boolean isRemoveCookieOnAuthorize()
    {
        c();
        return a.f();
    }

    public static void logApiEvent(String s, int i)
    {
        c();
        a.a(s, i);
    }

    public static void logDemoEvent(int i, Platform platform)
    {
        c();
        a.a(i, platform);
    }

    public static String platformIdToName(int i)
    {
        c();
        return a.c(i);
    }

    public static int platformNameToId(String s)
    {
        c();
        return a.c(s);
    }

    public static void registerPlatform(Class class1)
    {
        c();
        a.d(class1);
    }

    public static void registerService(Class class1)
    {
        c();
        a.a(class1);
    }

    public static void removeCookieOnAuthorize(boolean flag)
    {
        c();
        a.b(flag);
    }

    public static void setConnTimeout(int i)
    {
        c();
        a.a(i);
    }

    public static void setPlatformDevInfo(String s, HashMap hashmap)
    {
        c();
        a.a(s, hashmap);
    }

    public static void setReadTimeout(int i)
    {
        c();
        a.b(i);
    }

    public static void stopSDK()
    {
    }

    public static void stopSDK(Context context)
    {
        stopSDK();
    }

    public static void unregisterPlatform(Class class1)
    {
        c();
        a.e(class1);
    }

    public static void unregisterService(Class class1)
    {
        c();
        a.b(class1);
    }

}
