// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.wechat.utils;

import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.network.f;
import cn.sharesdk.framework.network.k;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.e;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.wechat.utils:
//            g

class i extends Thread
{

    final PlatformActionListener a;
    final g b;

    i(g g1, PlatformActionListener platformactionlistener)
    {
        b = g1;
        a = platformactionlistener;
        super();
    }

    public void run()
    {
        Object obj;
        Object obj1 = new ArrayList();
        ((ArrayList) (obj1)).add(new f("access_token", g.a(b).getDb().getToken()));
        ((ArrayList) (obj1)).add(new f("openid", g.a(b).getDb().get("openid")));
        obj = null;
        try
        {
            obj1 = g.c(b).a("https://api.weixin.qq.com/sns/userinfo", ((ArrayList) (obj1)), "/sns/userinfo", g.b(b));
        }
        catch (Throwable throwable)
        {
            e.c(throwable);
            continue; /* Loop/switch isn't completed */
        }
        obj = obj1;
_L6:
        if (!TextUtils.isEmpty(((CharSequence) (obj)))) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.onError(g.a(b), 8, new Throwable());
        }
_L4:
        return;
_L2:
        e.a((new StringBuilder()).append("getUserInfo ==>>").append(((String) (obj))).toString(), new Object[0]);
        obj = (new d()).a(((String) (obj)));
        if (!((HashMap) (obj)).containsKey("errcode") || ((Integer)((HashMap) (obj)).get("errcode")).intValue() == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (a != null)
        {
            obj = (new d()).a(((HashMap) (obj)));
            a.onError(g.a(b), 8, new Throwable(((String) (obj))));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        String s = String.valueOf(((HashMap) (obj)).get("openid"));
        String s1 = String.valueOf(((HashMap) (obj)).get("nickname"));
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        int j;
        try
        {
            j = R.parseInt(String.valueOf(((HashMap) (obj)).get("sex")));
        }
        catch (Throwable throwable1)
        {
            e.c(throwable1);
            j = 2;
        }
        s2 = String.valueOf(((HashMap) (obj)).get("province"));
        s3 = String.valueOf(((HashMap) (obj)).get("city"));
        s4 = String.valueOf(((HashMap) (obj)).get("country"));
        s5 = String.valueOf(((HashMap) (obj)).get("headimgurl"));
        s6 = String.valueOf(((HashMap) (obj)).get("unionid"));
        g.a(b).getDb().put("nickname", s1);
        if (j == 1)
        {
            g.a(b).getDb().put("gender", "0");
        } else
        if (j == 2)
        {
            g.a(b).getDb().put("gender", "1");
        } else
        {
            g.a(b).getDb().put("gender", "2");
        }
        g.a(b).getDb().putUserId(s);
        g.a(b).getDb().put("icon", s5);
        g.a(b).getDb().put("province", s2);
        g.a(b).getDb().put("city", s3);
        g.a(b).getDb().put("country", s4);
        g.a(b).getDb().put("openid", s);
        g.a(b).getDb().put("unionid", s6);
        a.onComplete(g.a(b), 8, ((HashMap) (obj)));
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
