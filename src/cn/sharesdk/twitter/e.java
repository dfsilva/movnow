// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.twitter;

import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.h;
import cn.sharesdk.framework.network.f;
import cn.sharesdk.framework.network.i;
import cn.sharesdk.framework.network.k;
import cn.sharesdk.framework.utils.BitmapHelper;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.g;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package cn.sharesdk.twitter:
//            b

public class e extends h
{

    private static e b;
    private g c;
    private k d;

    private e(Platform platform)
    {
        super(platform);
        c = new g();
        d = k.a();
    }

    public static e a(Platform platform)
    {
        if (b == null)
        {
            b = new e(platform);
        }
        return b;
    }

    public String a(String s)
    {
        try
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(new f("oauth_verifier", s));
            s = c.a("https://api.twitter.com/oauth/access_token", arraylist);
            s = c.a(s);
            s = d.a("https://api.twitter.com/oauth/access_token", arraylist, null, s, "/oauth/access_token", c());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            cn.sharesdk.framework.utils.e.c(s);
            return null;
        }
        return s;
    }

    public HashMap a(int j, int l, String s)
    {
        Object obj;
        Object obj1;
        long l1;
        obj = null;
        obj1 = new ArrayList();
        l1 = 0L;
        long l2 = R.parseLong(s);
        l1 = l2;
_L1:
        if (s == null)
        {
            s = a.getDb().getUserId();
        } else
        {
            s = String.valueOf(l1);
        }
        ((ArrayList) (obj1)).add(new f("user_id", s));
        s = c.b("https://api.twitter.com/1.1/friends/list.json", ((ArrayList) (obj1)));
        s = c.a(s);
        obj1 = d.a("https://api.twitter.com/1.1/friends/list.json", ((ArrayList) (obj1)), s, null, "/1.1/friends/list.json", c());
        s = obj;
        if (obj1 != null)
        {
            s = obj;
            if (((String) (obj1)).length() > 0)
            {
                s = (new d()).a(((String) (obj1)));
            }
        }
        return s;
        s;
        s = null;
          goto _L1
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
            if (hashmap1 != null && hashmap1.size() > 0)
            {
                Iterator iterator = hashmap1.entrySet().iterator();
                for (hashmap = null; iterator.hasNext(); hashmap = new f((String)hashmap.getKey(), hashmap.getValue()))
                {
                    hashmap = (java.util.Map.Entry)iterator.next();
                }

            } else
            {
                hashmap = null;
            }
            if ("GET".equals(s1.toUpperCase()))
            {
                s1 = c.b(s, arraylist);
                s1 = c.a(s1);
                s = (new i()).a(s, arraylist, s1, null);
            } else
            if ("POST".equals(s1.toUpperCase()))
            {
                if (hashmap1 == null || hashmap1.size() <= 0)
                {
                    s1 = c.a(s, arraylist);
                    s1 = c.a(s1);
                } else
                {
                    s1 = new ArrayList();
                    s1 = c.a(s, s1);
                    s1 = c.a(s1);
                    s1.remove(1);
                }
                s = (new i()).a(s, arraylist, hashmap, s1, null);
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

    public HashMap a(String s, String as[])
    {
        ArrayList arraylist1;
        ArrayList arraylist2;
        StringBuilder stringbuilder;
        ArrayList arraylist3;
        int j;
        boolean flag;
        flag = false;
        arraylist1 = new ArrayList();
        ArrayList arraylist = c.a("https://upload.twitter.com/1.1/media/upload.json", arraylist1);
        arraylist2 = c.a(arraylist);
        arraylist2.remove(1);
        stringbuilder = new StringBuilder();
        arraylist3 = new ArrayList();
        j = 0;
_L6:
        if (j >= as.length || arraylist3 != null && arraylist3.size() > 3)
        {
            stringbuilder.setLength(0);
            Object obj;
            Exception exception;
            boolean flag1;
            for (j = ((flag) ? 1 : 0); j < arraylist3.size(); j++)
            {
                if (((HashMap)arraylist3.get(j)).containsKey("image"))
                {
                    if (stringbuilder.length() > 0)
                    {
                        stringbuilder.append(',');
                    }
                    stringbuilder.append(String.valueOf(((HashMap)arraylist3.get(j)).get("media_id")));
                }
            }

            return b(s, stringbuilder.toString());
        }
        obj = as[j];
        if (!((String) (obj)).startsWith("http")) goto _L2; else goto _L1
_L1:
        obj = BitmapHelper.downloadBitmap(a.getContext(), ((String) (obj)));
_L4:
        obj = new f("media", obj);
        obj = d.a("https://upload.twitter.com/1.1/media/upload.json", arraylist1, ((f) (obj)), arraylist2, "/1.1/media/upload.json", c());
        stringbuilder.append(as[j]).append(": ").append(((String) (obj))).append("\n");
        if (obj == null)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            if (((String) (obj)).length() > 0)
            {
                arraylist3.add((new d()).a(((String) (obj))));
            }
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            cn.sharesdk.framework.utils.e.c(stringbuilder.toString(), new Object[0]);
            exception.printStackTrace();
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = (new File(((String) (obj)))).exists();
        if (flag1) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(AuthorizeListener authorizelistener)
    {
        b(authorizelistener);
    }

    public void a(String s, String s1)
    {
        c.a(s, s1);
    }

    public void a(String s, String s1, String s2)
    {
        c.a(s, s1, s2);
    }

    public HashMap b(String s)
    {
        Object obj;
        Object obj1;
        long l;
        obj = null;
        obj1 = new ArrayList();
        l = 0L;
        long l1 = R.parseLong(s);
        l = l1;
_L1:
        if (s == null)
        {
            s = a.getDb().getUserId();
        } else
        {
            s = String.valueOf(l);
        }
        ((ArrayList) (obj1)).add(new f("user_id", s));
        s = c.b("https://api.twitter.com/1.1/users/show.json", ((ArrayList) (obj1)));
        s = c.a(s);
        obj1 = d.a("https://api.twitter.com/1.1/users/show.json", ((ArrayList) (obj1)), s, null, "/1.1/users/show.json", c());
        s = obj;
        if (obj1 != null)
        {
            s = obj;
            if (((String) (obj1)).length() > 0)
            {
                s = (new d()).a(((String) (obj1)));
            }
        }
        return s;
        s;
        s = null;
          goto _L1
    }

    public HashMap b(String s, String s1)
    {
        Object obj = null;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new f("status", s));
        if (!TextUtils.isEmpty(s1))
        {
            arraylist.add(new f("media_ids", s1));
        }
        s = c.a("https://api.twitter.com/1.1/statuses/update.json", arraylist);
        s = c.a(s);
        s1 = d.a("https://api.twitter.com/1.1/statuses/update.json", arraylist, null, s, "/1.1/statuses/update.json", c());
        s = obj;
        if (s1 != null)
        {
            s = obj;
            if (s1.length() > 0)
            {
                s = (new d()).a(s1);
            }
        }
        return s;
    }

    public HashMap c(String s)
    {
        return b(s, null);
    }

    public HashMap c(String s, String s1)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = c.a("https://api.twitter.com/1.1/statuses/update_with_media.json", arraylist);
        arraylist1 = c.a(arraylist1);
        arraylist1.remove(1);
        arraylist.add(new f("status", s));
        s = new f("media[]", s1);
        s = d.a("https://api.twitter.com/1.1/statuses/update_with_media.json", arraylist, s, arraylist1, "/1.1/statuses/update_with_media.json", c());
        if (s != null && s.length() > 0)
        {
            return (new d()).a(s);
        } else
        {
            return null;
        }
    }

    public String getAuthorizeUrl()
    {
        Object obj;
        obj = new ArrayList();
        ((ArrayList) (obj)).add(new f("oauth_callback", getRedirectUri()));
        a(null, ((String) (null)));
        ArrayList arraylist = c.a("https://api.twitter.com/oauth/request_token", ((ArrayList) (obj)));
        arraylist = c.a(arraylist);
        obj = d.a("https://api.twitter.com/oauth/request_token", ((ArrayList) (obj)), null, arraylist, "/oauth/request_token", c());
        if (obj == null)
        {
            return null;
        }
        Object obj1;
        int l;
        obj1 = ((String) (obj)).split("&");
        obj = new HashMap();
        l = obj1.length;
        int j = 0;
          goto _L1
_L7:
        Object obj2;
        try
        {
            obj2 = ((String) (obj2)).split("=");
            if (obj2.length >= 2)
            {
                ((HashMap) (obj)).put(obj2[0], obj2[1]);
            }
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            cn.sharesdk.framework.utils.e.c(((Throwable) (obj)));
        }
_L3:
        return null;
_L5:
        if (!((HashMap) (obj)).containsKey("oauth_token")) goto _L3; else goto _L2
_L2:
        obj1 = (String)((HashMap) (obj)).get("oauth_token");
        a(((String) (obj1)), (String)((HashMap) (obj)).get("oauth_token_secret"));
        ShareSDK.logApiEvent("/oauth/authorize", c());
        obj = (new StringBuilder()).append("https://api.twitter.com/oauth/authorize?oauth_token=").append(((String) (obj1))).toString();
        return ((String) (obj));
_L1:
        if (j >= l) goto _L5; else goto _L4
_L4:
        if ((obj2 = obj1[j]) != null) goto _L7; else goto _L6
_L6:
        j++;
          goto _L1
    }

    public b getAuthorizeWebviewClient(cn.sharesdk.framework.authorize.g g1)
    {
        return new cn.sharesdk.twitter.b(g1);
    }

    public String getRedirectUri()
    {
        return c.a().e;
    }
}
