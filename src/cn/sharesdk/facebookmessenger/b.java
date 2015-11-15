// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebookmessenger;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.g;
import cn.sharesdk.framework.h;
import cn.sharesdk.framework.network.f;
import cn.sharesdk.framework.network.k;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package cn.sharesdk.facebookmessenger:
//            XMPP, c, e, d

public class b extends h
{

    private static final String b[] = {
        "user_about_me", "user_birthday", "user_photos", "publish_stream", "read_stream", "manage_notifications", "publish_actions", "xmpp_login"
    };
    private static b c;
    private String d;
    private String e;
    private long f;
    private String g;
    private k h;
    private String i[];
    private String j;

    private b(Platform platform)
    {
        super(platform);
        h = k.a();
    }

    public static b a(Platform platform)
    {
        if (c == null)
        {
            c = new b(platform);
        }
        return c;
    }

    static void a(b b1, AuthorizeListener authorizelistener)
    {
        b1.b(authorizelistener);
    }

    public HashMap a(int l, int i1, String s)
    {
        Object obj = XMPP.a();
        ((XMPP) (obj)).b();
        s = ((XMPP) (obj)).e();
        ((XMPP) (obj)).c();
        obj = new HashMap(1);
        ((HashMap) (obj)).put("users", s);
        return ((HashMap) (obj));
    }

    public HashMap a(String s, String s1, HashMap hashmap, HashMap hashmap1)
    {
        if (s1 != null)
        {
            ArrayList arraylist = new ArrayList();
            if (hashmap != null && hashmap.size() > 0)
            {
                java.util.Map.Entry entry;
                for (hashmap = hashmap.entrySet().iterator(); hashmap.hasNext(); arraylist.add(new f((String)entry.getKey(), String.valueOf(entry.getValue()))))
                {
                    entry = (java.util.Map.Entry)hashmap.next();
                }

            }
            arraylist.add(new f("access_token", e));
            arraylist.add(new f("format", "json"));
            if (hashmap1 != null && hashmap1.size() > 0)
            {
                hashmap1 = hashmap1.entrySet().iterator();
                for (hashmap = null; hashmap1.hasNext(); hashmap = new f((String)hashmap.getKey(), hashmap.getValue()))
                {
                    hashmap = (java.util.Map.Entry)hashmap1.next();
                }

            } else
            {
                hashmap = null;
            }
            if ("GET".equals(s1.toUpperCase()))
            {
                s = h.a(s, arraylist, null, null);
            } else
            if ("POST".equals(s1.toUpperCase()))
            {
                s = h.a(s, arraylist, hashmap, null, null);
            } else
            {
                s = null;
            }
            if (s != null && s.length() > 0)
            {
                return (new d()).a(s);
            }
        }
        return null;
    }

    public void a(AuthorizeListener authorizelistener, boolean flag)
    {
        if (flag)
        {
            b(authorizelistener);
            return;
        } else
        {
            a(((cn.sharesdk.framework.authorize.SSOListener) (new c(this, authorizelistener))));
            return;
        }
    }

    public void a(String s)
    {
        g = s;
        XMPP.a().b(g);
    }

    public void a(String s, String s1)
    {
        e = s;
        XMPP.a().a(s);
        if (s1 == null || s1.equals("0"))
        {
            break MISSING_BLOCK_LABEL_42;
        }
        f = System.currentTimeMillis() + (long)(R.parseInt(s1) * 1000);
        return;
        s;
        cn.sharesdk.framework.utils.e.c(s);
        return;
    }

    public void a(String as[])
    {
        i = as;
    }

    public boolean a()
    {
        return e != null && (f == 0L || System.currentTimeMillis() < f);
    }

    public HashMap b(String s)
    {
        String s1 = "/me";
        if (s != null)
        {
            s1 = (new StringBuilder()).append("/").append(s).toString();
        }
        s = new ArrayList();
        s.add(new f("access_token", e));
        s.add(new f("format", "json"));
        s.add(new f("fields", "id,name,first_name,middle_name,last_name,gender,locale,languages,link,age_range,third_party_id,installed,timezone,updated_time,verified,bio,birthday,cover,currency,devices,education,email,hometown,interested_in,location,political,payment_pricepoints,favorite_athletes,favorite_teams,picture,quotes,relationship_status,religion,security_settings,significant_other,video_upload_limits,website,work"));
        s = h.a((new StringBuilder()).append("https://graph.facebook.com/v2.2").append(s1).toString(), s, "get_user_info", c());
        if (s != null && s.length() > 0)
        {
            return (new d()).a(s);
        } else
        {
            return null;
        }
    }

    public HashMap b(String s, String s1)
    {
        XMPP xmpp = XMPP.a();
        xmpp.b();
        xmpp.a(s, s1);
        xmpp.c();
        s = new HashMap();
        s.put("status", "ok");
        return s;
    }

    public void c(String s)
    {
        j = s;
    }

    public String getAuthorizeUrl()
    {
        int l = 0;
        Bundle bundle = new Bundle();
        bundle.putString("display", "touch");
        bundle.putString("redirect_uri", j);
        bundle.putString("type", "user_agent");
        String as[];
        StringBuilder stringbuilder;
        int i1;
        int j1;
        if (i == null)
        {
            as = b;
        } else
        {
            as = i;
        }
        stringbuilder = new StringBuilder();
        j1 = as.length;
        i1 = 0;
        for (; l < j1; l++)
        {
            String s = as[l];
            if (i1 > 0)
            {
                stringbuilder.append(',');
            }
            stringbuilder.append(s);
            i1++;
        }

        bundle.putString("scope", stringbuilder.toString());
        bundle.putString("client_id", g);
        bundle.putString("response_type", "code");
        d = (new StringBuilder()).append("https://www.facebook.com/dialog/oauth").append("?").append(R.encodeUrl(bundle)).toString();
        ShareSDK.logApiEvent("/dialog/oauth", c());
        return d;
    }

    public cn.sharesdk.framework.authorize.b getAuthorizeWebviewClient(g g1)
    {
        return new cn.sharesdk.facebookmessenger.e(g1);
    }

    public String getRedirectUri()
    {
        return j;
    }

    public cn.sharesdk.framework.authorize.f getSSOProcessor(cn.sharesdk.framework.authorize.e e1)
    {
        cn.sharesdk.facebookmessenger.d d1 = new cn.sharesdk.facebookmessenger.d(e1);
        d1.a(32525);
        String s = g;
        if (i == null)
        {
            e1 = b;
        } else
        {
            e1 = i;
        }
        d1.a(s, e1);
        return d1;
    }

}
