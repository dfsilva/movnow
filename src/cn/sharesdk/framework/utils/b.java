// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.Parcel;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package cn.sharesdk.framework.utils:
//            e, a, R

public class b
{
    private class a
        implements ServiceConnection
    {

        boolean a;
        final b b;
        private final BlockingQueue c;

        public IBinder a()
        {
            if (a)
            {
                throw new IllegalStateException();
            } else
            {
                a = true;
                return (IBinder)c.poll(1500L, TimeUnit.MILLISECONDS);
            }
        }

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            try
            {
                c.put(ibinder);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ComponentName componentname)
            {
                cn.sharesdk.framework.utils.e.b(componentname);
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
        }

        private a()
        {
            b = b.this;
            super();
            a = false;
            c = new LinkedBlockingQueue();
        }

    }


    private static b b;
    private Context a;

    private b(Context context)
    {
        a = context.getApplicationContext();
    }

    private boolean A()
    {
        TelephonyManager telephonymanager = (TelephonyManager)b("phone");
        if (telephonymanager == null)
        {
            return false;
        }
        boolean flag;
        if (telephonymanager.getNetworkType() == 13)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private boolean B()
    {
        TelephonyManager telephonymanager = (TelephonyManager)b("phone");
        if (telephonymanager == null)
        {
            return false;
        }
        switch (telephonymanager.getNetworkType())
        {
        default:
            return false;

        case 7: // '\007'
            return false;

        case 4: // '\004'
            return false;

        case 2: // '\002'
            return false;

        case 5: // '\005'
            return true;

        case 6: // '\006'
            return true;

        case 1: // '\001'
            return false;

        case 8: // '\b'
            return true;

        case 10: // '\n'
            return true;

        case 9: // '\t'
            return true;

        case 3: // '\003'
            return true;

        case 14: // '\016'
            return true;

        case 12: // '\f'
            return true;

        case 15: // '\017'
            return true;

        case 11: // '\013'
            return false;

        case 13: // '\r'
            return true;

        case 0: // '\0'
            return false;
        }
    }

    private String C()
    {
        Object obj;
        if (w())
        {
            if (((File) (obj = new File(x(), "ShareSDK"))).exists() && ((File) (obj = new File(((File) (obj)), ".dk"))).exists())
            {
                ObjectInputStream objectinputstream = new ObjectInputStream(new FileInputStream(((File) (obj))));
                obj = objectinputstream.readObject();
                if (obj != null && (obj instanceof char[]))
                {
                    obj = String.valueOf((char[])(char[])obj);
                } else
                {
                    obj = null;
                }
                objectinputstream.close();
                return ((String) (obj));
            }
        }
        return null;
    }

    public static b a(Context context)
    {
        if (b == null)
        {
            b = new b(context);
        }
        return b;
    }

    private boolean a(PackageInfo packageinfo)
    {
        boolean flag2 = false;
        boolean flag;
        boolean flag1;
        if ((packageinfo.applicationInfo.flags & 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((packageinfo.applicationInfo.flags & 0x80) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag || flag1)
        {
            flag2 = true;
        }
        return flag2;
    }

    private Object b(String s1)
    {
        try
        {
            s1 = ((String) (a.getSystemService(s1)));
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            cn.sharesdk.framework.utils.e.c(s1);
            return null;
        }
        return s1;
    }

    private void c(String s1)
    {
        if (!w())
        {
            return;
        }
        Object obj = new File(x(), "ShareSDK");
        if (!((File) (obj)).exists())
        {
            ((File) (obj)).mkdirs();
        }
        obj = new File(((File) (obj)), ".dk");
        if (((File) (obj)).exists())
        {
            ((File) (obj)).delete();
        }
        obj = new ObjectOutputStream(new FileOutputStream(((File) (obj))));
        ((ObjectOutputStream) (obj)).writeObject(s1.toCharArray());
        ((ObjectOutputStream) (obj)).flush();
        ((ObjectOutputStream) (obj)).close();
    }

    public String a()
    {
        Object obj = (WifiManager)b("wifi");
        if (obj != null)
        {
            if ((obj = ((WifiManager) (obj)).getConnectionInfo()) != null)
            {
                String s1 = ((WifiInfo) (obj)).getMacAddress();
                obj = s1;
                if (s1 == null)
                {
                    obj = null;
                }
                return ((String) (obj));
            }
        }
        return null;
    }

    public String a(int i1)
    {
        long l1 = System.currentTimeMillis();
        long l2 = SystemClock.elapsedRealtime();
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(l1 ^ l2);
        Random random = new Random();
        int j1 = 0;
        while (j1 < i1) 
        {
            String s1;
            if (random.nextInt(2) % 2 == 0)
            {
                s1 = "char";
            } else
            {
                s1 = "num";
            }
            if ("char".equalsIgnoreCase(s1))
            {
                stringbuffer.insert(j1 + 1, (char)(random.nextInt(26) + 97));
            } else
            {
                stringbuffer.insert(stringbuffer.length(), random.nextInt(10));
            }
            j1++;
        }
        return stringbuffer.toString().substring(0, 40);
    }

    public String a(String s1, String s2)
    {
        s1 = Base64.encodeToString(cn.sharesdk.framework.utils.a.a(s2, s1), 0);
        s2 = s1;
        if (s1.contains("\n"))
        {
            s2 = s1.replace("\n", "");
        }
        return s2;
        s2;
        s1 = null;
_L2:
        cn.sharesdk.framework.utils.e.b(s2);
        return s1;
        s2;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ArrayList a(boolean flag)
    {
        PackageManager packagemanager;
        ArrayList arraylist;
        Object obj;
        packagemanager = a.getPackageManager();
        obj = packagemanager.getInstalledPackages(0);
        arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
_L3:
        PackageInfo packageinfo;
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_151;
        }
        packageinfo = (PackageInfo)((Iterator) (obj)).next();
        if (flag) goto _L2; else goto _L1
_L1:
        if (a(packageinfo)) goto _L3; else goto _L2
_L2:
        HashMap hashmap = new HashMap();
        hashmap.put("pkg", packageinfo.packageName);
        hashmap.put("name", packageinfo.applicationInfo.loadLabel(packagemanager).toString());
        hashmap.put("version", packageinfo.versionName);
        arraylist.add(hashmap);
          goto _L3
        Throwable throwable;
        throwable;
        cn.sharesdk.framework.utils.e.b(throwable);
        return new ArrayList();
        return arraylist;
    }

    public boolean a(String s1)
    {
        return a.getPackageManager().checkPermission(s1, q()) == 0;
    }

    public String b()
    {
        return Build.MODEL;
    }

    public String c()
    {
        return Build.MANUFACTURER;
    }

    public String d()
    {
        String s2 = e();
        String s1 = s2;
        if (s2 == null)
        {
            s1 = f();
        }
        return s1;
    }

    public String e()
    {
        Object obj = (TelephonyManager)b("phone");
        String s1;
        if (obj == null)
        {
            s1 = null;
        } else
        {
            s1 = ((TelephonyManager) (obj)).getDeviceId();
            obj = "";
            if (s1 != null)
            {
                obj = (new String(s1)).replace("0", "");
            }
            if (s1 == null || ((String) (obj)).length() <= 0)
            {
                return null;
            }
        }
        return s1;
    }

    public String f()
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            Object obj;
            try
            {
                obj = Class.forName("android.os.SystemProperties");
                obj = (String)(String)((Class) (obj)).getMethod("get", new Class[] {
                    java/lang/String, java/lang/String
                }).invoke(obj, new Object[] {
                    "ro.serialno", "unknown"
                });
            }
            catch (Throwable throwable)
            {
                cn.sharesdk.framework.utils.e.a(throwable);
                return null;
            }
            return ((String) (obj));
        } else
        {
            return null;
        }
    }

    public String g()
    {
        return a((new StringBuilder()).append(b()).append("|").append(i()).append("|").append(c()).append("|").append(l()).append("|").append(k()).toString(), p().substring(0, 16));
    }

    public String h()
    {
        return (new StringBuilder()).append(b()).append("|").append(i()).append("|").append(c()).append("|").append(l()).append("|").append(k()).toString();
    }

    public String i()
    {
        return String.valueOf(android.os.Build.VERSION.SDK_INT);
    }

    public String j()
    {
        return android.os.Build.VERSION.RELEASE;
    }

    public String k()
    {
        int ai[] = R.getScreenSize(a);
        if (a.getResources().getConfiguration().orientation == 1)
        {
            return (new StringBuilder()).append(ai[0]).append("x").append(ai[1]).toString();
        } else
        {
            return (new StringBuilder()).append(ai[1]).append("x").append(ai[0]).toString();
        }
    }

    public String l()
    {
        Object obj = (TelephonyManager)b("phone");
        if (obj == null)
        {
            obj = "-1";
        } else
        {
            String s1 = ((TelephonyManager) (obj)).getSimOperator();
            obj = s1;
            if (TextUtils.isEmpty(s1))
            {
                return "-1";
            }
        }
        return ((String) (obj));
    }

    public String m()
    {
        Object obj = (ConnectivityManager)b("connectivity");
        if (obj == null)
        {
            return "none";
        }
        obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (obj == null || !((NetworkInfo) (obj)).isAvailable())
        {
            return "none";
        }
        switch (((NetworkInfo) (obj)).getType())
        {
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        default:
            return "none";

        case 1: // '\001'
            return "wifi";

        case 0: // '\0'
            Object obj1 = Proxy.getDefaultHost();
            String s2 = "";
            String s1 = s2;
            if (obj1 != null)
            {
                s1 = s2;
                if (((String) (obj1)).length() > 0)
                {
                    s1 = " wap";
                }
            }
            if (A())
            {
                return (new StringBuilder()).append("4G").append(s1).toString();
            }
            obj1 = new StringBuilder();
            if (B())
            {
                s2 = "3G";
            } else
            {
                s2 = "2G";
            }
            return ((StringBuilder) (obj1)).append(s2).append(s1).toString();

        case 7: // '\007'
            return "bluetooth";

        case 8: // '\b'
            return "dummy";

        case 9: // '\t'
            return "ethernet";

        case 6: // '\006'
            return "wimax";
        }
    }

    public String n()
    {
        String s1 = m();
        if (TextUtils.isEmpty(s1) || "none".equals(s1))
        {
            return "none";
        }
        if (s1.startsWith("4G") || s1.startsWith("3G") || s1.startsWith("2G"))
        {
            return "cell";
        }
        if (s1.startsWith("wifi"))
        {
            return "wifi";
        } else
        {
            return "other";
        }
    }

    public int o()
    {
        return 1;
    }

    public String p()
    {
        String s4;
        s4 = null;
        String s1;
        try
        {
            s1 = C();
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.b(throwable);
            throwable = null;
        }
        if (s1 == null) goto _L2; else goto _L1
_L1:
        s4 = s1;
_L4:
        return s4;
_L2:
        String s2;
        s2 = a();
        String s5 = d();
        String s6 = b();
        s2 = cn.sharesdk.framework.utils.a.b(cn.sharesdk.framework.utils.a.a((new StringBuilder()).append(s2).append(":").append(s5).append(":").append(s6).toString()));
        s4 = s2;
_L5:
        String s3 = s4;
        if (TextUtils.isEmpty(s4))
        {
            s3 = a(40);
        }
        s4 = s3;
        if (s3 != null)
        {
            try
            {
                c(s3);
            }
            catch (Throwable throwable2)
            {
                cn.sharesdk.framework.utils.e.b(throwable2);
                return s3;
            }
            return s3;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Throwable throwable1;
        throwable1;
        cn.sharesdk.framework.utils.e.a(throwable1);
          goto _L5
    }

    public String q()
    {
        return a.getPackageName();
    }

    public String r()
    {
        String s1 = a.getApplicationInfo().name;
        int i1;
        if (s1 == null)
        {
            if ((i1 = a.getApplicationInfo().labelRes) > 0)
            {
                return a.getString(i1);
            }
        }
        return s1;
    }

    public int s()
    {
        int i1;
        try
        {
            i1 = a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionCode;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.a(throwable);
            return 0;
        }
        return i1;
    }

    public String t()
    {
        String s1;
        try
        {
            s1 = a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionName;
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.a(throwable);
            return "1.0";
        }
        return s1;
    }

    public String u()
    {
        TelephonyManager telephonymanager = (TelephonyManager)b("phone");
        if (telephonymanager == null)
        {
            return null;
        } else
        {
            return telephonymanager.getNetworkOperator();
        }
    }

    public String v()
    {
        Object obj;
        boolean flag;
        try
        {
            flag = a("android.permission.GET_TASKS");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            cn.sharesdk.framework.utils.e.b(((Throwable) (obj)));
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        obj = (ActivityManager)b("activity");
        if (obj == null)
        {
            return null;
        }
        obj = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager) (obj)).getRunningTasks(1).get(0)).topActivity.getPackageName();
        return ((String) (obj));
        Throwable throwable;
        throwable;
        cn.sharesdk.framework.utils.e.b(throwable);
        return null;
    }

    public boolean w()
    {
        boolean flag;
        try
        {
            flag = "mounted".equals(Environment.getExternalStorageState());
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.b(throwable);
            return false;
        }
        return flag;
    }

    public String x()
    {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public String y()
    {
        String s1 = android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id");
        cn.sharesdk.framework.utils.e.b("getAndroidID === %s", new Object[] {
            s1
        });
        return s1;
    }

    public String z()
    {
        Object obj2;
        try
        {
            Object obj = new Intent("com.google.android.gms.ads.identifier.service.START");
            ((Intent) (obj)).setPackage("com.google.android.gms");
            Object obj1 = new a();
            a.bindService(((Intent) (obj)), ((ServiceConnection) (obj1)), 1);
            obj2 = ((a) (obj1)).a();
            obj = Parcel.obtain();
            obj1 = Parcel.obtain();
            ((Parcel) (obj)).writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            ((IBinder) (obj2)).transact(1, ((Parcel) (obj)), ((Parcel) (obj1)), 0);
            ((Parcel) (obj1)).readException();
            obj2 = ((Parcel) (obj1)).readString();
            ((Parcel) (obj1)).recycle();
            ((Parcel) (obj)).recycle();
            cn.sharesdk.framework.utils.e.b("getAdvertisingID === %s", new Object[] {
                obj2
            });
        }
        catch (Throwable throwable)
        {
            cn.sharesdk.framework.utils.e.b(throwable);
            return null;
        }
        return ((String) (obj2));
    }
}
