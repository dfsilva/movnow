// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.friends;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.utils.e;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import cn.sharesdk.wechat.utils.WechatHelper;
import cn.sharesdk.wechat.utils.g;
import cn.sharesdk.wechat.utils.k;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.wechat.friends:
//            a

public class Wechat extends Platform
{
    public static class ShareParams extends cn.sharesdk.wechat.utils.WechatHelper.ShareParams
    {

        public ShareParams()
        {
            scene = 0;
        }
    }


    public static final String NAME = cn/sharesdk/wechat/friends/Wechat.getSimpleName();
    private String a;
    private String b;
    private boolean c;

    public Wechat(Context context)
    {
        super(context);
    }

    static PlatformActionListener a(Wechat wechat)
    {
        return wechat.listener;
    }

    static void a(Wechat wechat, int i, Object obj)
    {
        wechat.afterRegister(i, obj);
    }

    static PlatformActionListener b(Wechat wechat)
    {
        return wechat.listener;
    }

    static PlatformActionListener c(Wechat wechat)
    {
        return wechat.listener;
    }

    static PlatformActionListener d(Wechat wechat)
    {
        return wechat.listener;
    }

    protected boolean checkAuthorize(int i, Object obj)
    {
        WechatHelper wechathelper = WechatHelper.a();
        wechathelper.a(context, a);
        if (!wechathelper.c())
        {
            if (listener != null)
            {
                listener.onError(this, i, new WechatClientNotExistException());
            }
            return false;
        }
        if (i == 9 || isAuthValid())
        {
            return true;
        } else
        {
            if (!TextUtils.isEmpty(getDb().get("refresh_token")));
            innerAuthorize(i, obj);
            return false;
        }
    }

    protected void doAuthorize(String as[])
    {
        if (!TextUtils.isEmpty(a) && !TextUtils.isEmpty(b)) goto _L2; else goto _L1
_L1:
        if (listener != null)
        {
            listener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
        }
_L4:
        return;
_L2:
        as = WechatHelper.a();
        as.a(context, a);
        if (as.c())
        {
            break; /* Loop/switch isn't completed */
        }
        if (listener != null)
        {
            listener.onError(this, 1, new WechatClientNotExistException());
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        g g1 = new g(this, 22);
        g1.a(a, b);
        k k1 = new k(this);
        k1.a(g1);
        k1.a(new a(this));
        try
        {
            as.a(k1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String as[]) { }
        if (listener != null)
        {
            listener.onError(this, 1, as);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    protected void doCustomerProtocol(String s, String s1, int i, HashMap hashmap, HashMap hashmap1)
    {
        if (listener != null)
        {
            listener.onCancel(this, i);
        }
    }

    protected void doShare(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        Object obj;
        k k1;
        shareparams.set("scene", Integer.valueOf(0));
        obj = WechatHelper.a();
        ((WechatHelper) (obj)).a(context, a);
        k1 = new k(this);
        if (!c)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        ((WechatHelper) (obj)).a(k1, shareparams);
        if (listener != null)
        {
            obj = new HashMap();
            ((HashMap) (obj)).put("ShareParams", shareparams);
            if (listener != null)
            {
                listener.onComplete(this, 9, ((HashMap) (obj)));
            }
        }
_L2:
        return;
        shareparams;
        if (listener == null) goto _L2; else goto _L1
_L1:
        listener.onError(this, 9, shareparams);
        return;
        k1.a(shareparams, listener);
        try
        {
            ((WechatHelper) (obj)).b(k1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (cn.sharesdk.framework.Platform.ShareParams shareparams) { }
        if (listener != null)
        {
            listener.onError(this, 9, shareparams);
            return;
        }
          goto _L2
    }

    protected cn.sharesdk.framework.statistics.b.f.a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareparams, HashMap hashmap)
    {
        String s;
        String s1;
        Object obj;
        android.graphics.Bitmap bitmap;
        hashmap = new cn.sharesdk.framework.statistics.b.f.a();
        s = shareparams.getText();
        hashmap.b = s;
        s1 = shareparams.getImageUrl();
        obj = shareparams.getImagePath();
        bitmap = shareparams.getImageData();
        if (TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).d.add(s1);
_L4:
        String s2 = shareparams.getUrl();
        if (s2 != null)
        {
            ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).c.add(s2);
        }
        obj = new HashMap();
        ((HashMap) (obj)).put("title", shareparams.getTitle());
        ((HashMap) (obj)).put("url", s2);
        ((HashMap) (obj)).put("extInfo", null);
        ((HashMap) (obj)).put("content", s);
        ((HashMap) (obj)).put("image", ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).d);
        ((HashMap) (obj)).put("musicFileUrl", s2);
        hashmap.g = ((HashMap) (obj));
        return hashmap;
_L2:
        if (obj != null)
        {
            ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).e.add(obj);
        } else
        if (bitmap != null)
        {
            ((cn.sharesdk.framework.statistics.b.f.a) (hashmap)).f.add(bitmap);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void follow(String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 6);
        }
    }

    protected void getFriendList(int i, int j, String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 2);
        }
    }

    public String getName()
    {
        return NAME;
    }

    public int getPlatformId()
    {
        return 22;
    }

    public int getVersion()
    {
        return 1;
    }

    protected void initDevInfo(String s)
    {
        a = getDevinfo("AppId");
        b = getDevinfo("AppSecret");
        c = "true".equals(getDevinfo("BypassApproval"));
        if (a == null || a.length() <= 0)
        {
            a = getDevinfo("WechatMoments", "AppId");
            c = "true".equals(getDevinfo("WechatMoments", "BypassApproval"));
            if (a != null && a.length() > 0)
            {
                copyDevinfo("WechatMoments", NAME);
                a = getDevinfo("AppId");
                c = "true".equals(getDevinfo("BypassApproval"));
                if (ShareSDK.isDebug())
                {
                    System.err.println("Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0.");
                }
            } else
            {
                a = getDevinfo("WechatFavorite", "AppId");
                if (a != null && a.length() > 0)
                {
                    copyDevinfo("WechatFavorite", NAME);
                    a = getDevinfo("AppId");
                    if (ShareSDK.isDebug())
                    {
                        System.err.println("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.");
                        return;
                    }
                }
            }
        }
    }

    public boolean isClientValid()
    {
        WechatHelper wechathelper = WechatHelper.a();
        wechathelper.a(context, a);
        return wechathelper.c();
    }

    public boolean isValid()
    {
        WechatHelper wechathelper = WechatHelper.a();
        wechathelper.a(context, a);
        return wechathelper.c() && super.isValid();
    }

    protected void setNetworkDevinfo()
    {
        a = getNetworkDevinfo("app_id", "AppId");
        b = getNetworkDevinfo("app_secret", "AppSecret");
        if (a != null && a.length() > 0) goto _L2; else goto _L1
_L1:
        a = getNetworkDevinfo(23, "app_id", "AppId");
        if (a == null || a.length() <= 0) goto _L4; else goto _L3
_L3:
        copyNetworkDevinfo(23, 22);
        a = getNetworkDevinfo("app_id", "AppId");
        if (ShareSDK.isDebug())
        {
            System.err.println("Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0.");
        }
_L2:
        if (b != null && b.length() > 0) goto _L6; else goto _L5
_L5:
        b = getNetworkDevinfo(23, "app_secret", "AppSecret");
        if (b == null || b.length() <= 0) goto _L8; else goto _L7
_L7:
        copyNetworkDevinfo(23, 22);
        b = getNetworkDevinfo("app_secret", "AppSecret");
        if (ShareSDK.isDebug())
        {
            System.err.println("Try to use the dev info of WechatMoments, this will cause Id and SortId field are always 0.");
        }
_L6:
        return;
_L4:
        a = getNetworkDevinfo(37, "app_id", "AppId");
        if (a != null && a.length() > 0)
        {
            copyNetworkDevinfo(37, 22);
            a = getNetworkDevinfo("app_id", "AppId");
            if (ShareSDK.isDebug())
            {
                System.err.println("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.");
            }
        }
        continue; /* Loop/switch isn't completed */
_L8:
        b = getNetworkDevinfo(37, "app_secret", "AppSecret");
        if (b == null || b.length() <= 0) goto _L6; else goto _L9
_L9:
        copyNetworkDevinfo(37, 22);
        b = getNetworkDevinfo("app_secret", "AppSecret");
        if (!ShareSDK.isDebug()) goto _L6; else goto _L10
_L10:
        System.err.println("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.");
        return;
        if (true) goto _L2; else goto _L11
_L11:
    }

    protected void timeline(int i, int j, String s)
    {
        if (listener != null)
        {
            listener.onCancel(this, 7);
        }
    }

    protected void userInfor(String s)
    {
        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(b))
        {
            if (listener != null)
            {
                listener.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
            }
        } else
        {
            s = new g(this, 22);
            s.a(a, b);
            try
            {
                s.a(listener);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                e.c(s);
            }
            if (listener != null)
            {
                listener.onError(this, 8, s);
                return;
            }
        }
    }

}
