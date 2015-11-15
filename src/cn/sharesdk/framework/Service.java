// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import cn.sharesdk.framework.utils.b;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.e;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.framework:
//            ShareSDK, Platform

public abstract class Service
{
    public static abstract class ServiceEvent
    {

        private final int PLATFORM = 1;
        protected Service service;

        protected HashMap filterShareContent(int i, Platform.ShareParams shareparams, HashMap hashmap)
        {
            shareparams = ShareSDK.getPlatform(ShareSDK.platformIdToName(i)).filterShareContent(shareparams, hashmap);
            hashmap = new HashMap();
            hashmap.put("shareID", ((cn.sharesdk.framework.statistics.b.f.a) (shareparams)).a);
            hashmap.put("shareContent", (new d()).a(shareparams.toString()));
            e.c("filterShareContent ==>>%s", new Object[] {
                hashmap
            });
            return hashmap;
        }

        protected HashMap toMap()
        {
            HashMap hashmap = new HashMap();
            b b1 = cn.sharesdk.framework.utils.b.a(Service.a(service));
            hashmap.put("deviceid", b1.p());
            hashmap.put("appkey", service.getAppKey());
            hashmap.put("apppkg", b1.q());
            hashmap.put("appver", Integer.valueOf(b1.s()));
            hashmap.put("sdkver", Integer.valueOf(service.getServiceVersionInt()));
            hashmap.put("plat", Integer.valueOf(1));
            hashmap.put("networktype", b1.n());
            hashmap.put("deviceData", b1.h());
            return hashmap;
        }

        public final String toString()
        {
            return (new d()).a(toMap());
        }

        public ServiceEvent(Service service1)
        {
            service = service1;
        }
    }


    private Context a;
    private String b;

    public Service()
    {
    }

    static Context a(Service service)
    {
        return service.a;
    }

    void a(Context context)
    {
        a = context;
    }

    void a(String s)
    {
        b = s;
    }

    public String getAppKey()
    {
        return b;
    }

    public Context getContext()
    {
        return a;
    }

    public String getDeviceKey()
    {
        return cn.sharesdk.framework.utils.b.a(a).p();
    }

    protected abstract int getServiceVersionInt();

    public abstract String getServiceVersionName();

    public void onBind()
    {
    }

    public void onUnbind()
    {
    }
}
