// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebook;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.e;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package cn.sharesdk.facebook:
//            d, a

public class Facebook extends Platform
{
    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams
    {

        public ShareParams()
        {
        }
    }


    public static final String NAME = cn/sharesdk/facebook/Facebook.getSimpleName();
    private String a;
    private String b;

    public Facebook(Context context)
    {
        super(context);
    }

    static PlatformActionListener a(Facebook facebook)
    {
        return facebook.listener;
    }

    static void a(Facebook facebook, int i, Object obj)
    {
        facebook.afterRegister(i, obj);
    }

    static PlatformActionListener b(Facebook facebook)
    {
        return facebook.listener;
    }

    static PlatformDb c(Facebook facebook)
    {
        return facebook.db;
    }

    static PlatformDb d(Facebook facebook)
    {
        return facebook.db;
    }

    static PlatformActionListener e(Facebook facebook)
    {
        return facebook.listener;
    }

    static PlatformActionListener f(Facebook facebook)
    {
        return facebook.listener;
    }

    protected boolean checkAuthorize(int i, Object obj)
    {
        if (isAuthValid())
        {
            cn.sharesdk.facebook.d d1 = cn.sharesdk.facebook.d.a(this);
            d1.a(a);
            String s = db.getToken();
            String s1 = String.valueOf(db.getExpiresIn());
            if (s != null && s1 != null)
            {
                d1.a(s, s1);
                if (d1.a())
                {
                    return true;
                }
            }
        }
        innerAuthorize(i, obj);
        return false;
    }

    protected void doAuthorize(String as[])
    {
        cn.sharesdk.facebook.d d1 = cn.sharesdk.facebook.d.a(this);
        d1.a(a);
        d1.e(b);
        d1.a(as);
        d1.a(new a(this, d1), isSSODisable());
    }

    protected void doCustomerProtocol(String s, String s1, int i, HashMap hashmap, HashMap hashmap1)
    {
        cn.sharesdk.facebook.d d1 = cn.sharesdk.facebook.d.a(this);
        try
        {
            s = d1.a(s, s1, hashmap, hashmap1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            if (listener != null)
            {
                listener.onError(this, i, s);
                return;
            }
            break MISSING_BLOCK_LABEL_154;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        if (s.size() > 0)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        if (listener != null)
        {
            listener.onError(this, i, new Throwable("response is null"));
            return;
        }
        break MISSING_BLOCK_LABEL_154;
        if (s.containsKey("error_code") || s.containsKey("error"))
        {
            if (listener != null)
            {
                s = (new d()).a(s);
                listener.onError(this, i, new Throwable(s));
                return;
            }
            break MISSING_BLOCK_LABEL_154;
        }
        if (listener != null)
        {
            listener.onComplete(this, i, s);
        }
    }

    protected void doShare(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        Object obj = cn.sharesdk.facebook.d.a(this);
        String s;
        String s1;
        String s2;
        s = getShortLintk(shareparams.getText(), false);
        s1 = shareparams.getImagePath();
        s2 = shareparams.getImageUrl();
        if (TextUtils.isEmpty(s2)) goto _L2; else goto _L1
_L1:
        obj = ((cn.sharesdk.facebook.d) (obj)).b(s, s2);
_L9:
        if (obj == null) goto _L4; else goto _L3
_L3:
        if (((HashMap) (obj)).size() > 0) goto _L5; else goto _L4
_L4:
        if (listener != null)
        {
            listener.onError(this, 9, new Throwable("response is null"));
            return;
        }
        break MISSING_BLOCK_LABEL_234;
_L2:
        if (TextUtils.isEmpty(s1) || !(new File(s1)).exists()) goto _L7; else goto _L6
_L6:
        obj = ((cn.sharesdk.facebook.d) (obj)).b(s, s1);
          goto _L8
_L7:
        try
        {
            obj = ((cn.sharesdk.facebook.d) (obj)).b(s);
        }
        // Misplaced declaration of an exception variable
        catch (cn.sharesdk.framework.Platform.ShareParams shareparams)
        {
            if (listener != null)
            {
                listener.onError(this, 9, shareparams);
                return;
            }
            break MISSING_BLOCK_LABEL_234;
        }
_L8:
        if (true) goto _L9; else goto _L5
_L5:
        if (((HashMap) (obj)).containsKey("error_code") || ((HashMap) (obj)).containsKey("error"))
        {
            if (listener != null)
            {
                shareparams = (new d()).a(((HashMap) (obj)));
                listener.onError(this, 9, new Throwable(shareparams));
                return;
            }
            break MISSING_BLOCK_LABEL_234;
        }
        if (listener != null)
        {
            ((HashMap) (obj)).put("ShareParams", shareparams);
            listener.onComplete(this, 9, ((HashMap) (obj)));
        }
    }

    protected cn.sharesdk.framework.statistics.b.f.a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareparams, HashMap hashmap)
    {
        cn.sharesdk.framework.statistics.b.f.a a1 = new cn.sharesdk.framework.statistics.b.f.a();
        a1.b = shareparams.getText();
        if (hashmap != null)
        {
            a1.d.add(String.valueOf(hashmap.get("source")));
            shareparams = ((cn.sharesdk.framework.Platform.ShareParams) (hashmap.get("post_id")));
            if (shareparams == null)
            {
                shareparams = null;
            } else
            {
                shareparams = String.valueOf(shareparams);
            }
            a1.a = shareparams;
            a1.g = hashmap;
        }
        return a1;
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
        cn.sharesdk.facebook.d d1 = cn.sharesdk.facebook.d.a(this);
        try
        {
            s = d1.a(i, j, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            if (listener != null)
            {
                listener.onError(this, 2, s);
                return;
            }
            break MISSING_BLOCK_LABEL_151;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        if (s.size() > 0)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        if (listener != null)
        {
            listener.onError(this, 2, new Throwable("response is null"));
            return;
        }
        break MISSING_BLOCK_LABEL_151;
        if (s.containsKey("error_code") || s.containsKey("error"))
        {
            if (listener != null)
            {
                s = (new d()).a(s);
                listener.onError(this, 2, new Throwable(s));
                return;
            }
            break MISSING_BLOCK_LABEL_151;
        }
        if (listener != null)
        {
            listener.onComplete(this, 2, s);
        }
    }

    public String getName()
    {
        return NAME;
    }

    public int getPlatformId()
    {
        return 10;
    }

    public int getVersion()
    {
        return 2;
    }

    protected void initDevInfo(String s)
    {
        a = getDevinfo("ConsumerKey");
        b = getDevinfo("RedirectUrl");
    }

    protected void setNetworkDevinfo()
    {
        a = getNetworkDevinfo("api_key", "ConsumerKey");
        b = getNetworkDevinfo("redirect_uri", "RedirectUrl");
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
        Object obj = cn.sharesdk.facebook.d.a(this);
        obj = ((cn.sharesdk.facebook.d) (obj)).d(s);
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((HashMap) (obj)).size() > 0) goto _L3; else goto _L2
_L2:
        if (listener != null)
        {
            listener.onError(this, 8, new Throwable("response is null"));
            return;
        }
          goto _L4
_L3:
        if (!((HashMap) (obj)).containsKey("error_code") && !((HashMap) (obj)).containsKey("error")) goto _L6; else goto _L5
_L5:
        if (listener != null)
        {
            s = (new d()).a(((HashMap) (obj)));
            listener.onError(this, 8, new Throwable(s));
            return;
        }
          goto _L4
_L6:
        if (s != null) goto _L8; else goto _L7
_L7:
        Object obj1;
        db.putUserId(String.valueOf(((HashMap) (obj)).get("id")));
        db.put("nickname", String.valueOf(((HashMap) (obj)).get("name")));
        obj1 = db;
        HashMap hashmap1;
        HashMap hashmap2;
        Throwable throwable;
        HashMap hashmap3;
        Throwable throwable1;
        if ("male".equals(String.valueOf(((HashMap) (obj)).get("gender"))))
        {
            s = "0";
        } else
        {
            s = "1";
        }
        ((PlatformDb) (obj1)).put("gender", s);
        s = (HashMap)((HashMap) (obj)).get("picture");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_257;
        }
        s = (HashMap)s.get("data");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_257;
        }
        db.put("icon", String.valueOf(s.get("url")));
        s = String.valueOf(((HashMap) (obj)).get("birthday")).split("/");
        obj1 = Calendar.getInstance();
        ((Calendar) (obj1)).set(1, R.parseInt(s[2]));
        ((Calendar) (obj1)).set(2, R.parseInt(s[0]) - 1);
        ((Calendar) (obj1)).set(5, R.parseInt(s[1]));
        db.put("birthday", String.valueOf(((Calendar) (obj1)).getTimeInMillis()));
_L20:
        obj1 = db;
        if ("true".equals(String.valueOf(((HashMap) (obj)).get("verified"))))
        {
            s = "1";
        } else
        {
            s = "0";
        }
        ((PlatformDb) (obj1)).put("secretType", s);
        db.put("snsUserUrl", String.valueOf(((HashMap) (obj)).get("link")));
        db.put("resume", String.valueOf(((HashMap) (obj)).get("link")));
        obj1 = (ArrayList)((HashMap) (obj)).get("education");
        if (obj1 == null) goto _L10; else goto _L9
_L9:
        s = new ArrayList();
        obj1 = ((ArrayList) (obj1)).iterator();
_L13:
        if (!((Iterator) (obj1)).hasNext()) goto _L12; else goto _L11
_L11:
        hashmap2 = (HashMap)((Iterator) (obj1)).next();
        hashmap1 = new HashMap();
        hashmap1.put("school_type", Integer.valueOf(0));
        hashmap3 = (HashMap)hashmap2.get("school");
        if (hashmap3 == null)
        {
            break MISSING_BLOCK_LABEL_514;
        }
        hashmap1.put("school", String.valueOf(hashmap3.get("name")));
        hashmap1.put("year", Integer.valueOf(R.parseInt(String.valueOf(((HashMap)hashmap2.get("year")).get("name")))));
_L14:
        hashmap1.put("background", Integer.valueOf(0));
        s.add(hashmap1);
          goto _L13
        s;
        try
        {
            cn.sharesdk.framework.utils.e.c(s);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            if (listener != null)
            {
                listener.onError(this, 8, s);
                return;
            }
        }
          goto _L4
        throwable;
        cn.sharesdk.framework.utils.e.c(throwable);
          goto _L14
_L12:
        obj1 = new HashMap();
        ((HashMap) (obj1)).put("list", s);
        s = (new d()).a(((HashMap) (obj1)));
        db.put("educationJSONArrayStr", s.substring(8, s.length() - 1));
_L10:
        obj1 = (ArrayList)((HashMap) (obj)).get("work");
        if (obj1 == null) goto _L8; else goto _L15
_L15:
        s = new ArrayList();
        obj1 = ((ArrayList) (obj1)).iterator();
_L16:
        if (!((Iterator) (obj1)).hasNext())
        {
            break MISSING_BLOCK_LABEL_927;
        }
        throwable = (HashMap)((Iterator) (obj1)).next();
        hashmap1 = new HashMap();
        hashmap3 = (HashMap)throwable.get("employer");
        if (hashmap3 == null)
        {
            break MISSING_BLOCK_LABEL_738;
        }
        hashmap1.put("company", String.valueOf(hashmap3.get("name")));
        hashmap3 = (HashMap)throwable.get("position");
        if (hashmap3 == null)
        {
            break MISSING_BLOCK_LABEL_776;
        }
        hashmap1.put("position", String.valueOf(hashmap3.get("name")));
        String as1[] = String.valueOf(throwable.get("start_date")).split("-");
        int i = R.parseInt(as1[0]);
        hashmap1.put("start_date", Integer.valueOf(R.parseInt(as1[1]) + i * 100));
_L17:
        String as[] = String.valueOf(throwable.get("end_date")).split("-");
        int j = R.parseInt(as[0]);
        hashmap1.put("end_date", Integer.valueOf(R.parseInt(as[1]) + j * 100));
_L18:
        s.add(hashmap1);
          goto _L16
        throwable1;
        cn.sharesdk.framework.utils.e.c(throwable1);
          goto _L17
        as;
        cn.sharesdk.framework.utils.e.c(as);
        hashmap1.put("end_date", Integer.valueOf(0));
          goto _L18
        HashMap hashmap = new HashMap();
        hashmap.put("list", s);
        s = (new d()).a(hashmap);
        db.put("workJSONArrayStr", s.substring(8, s.length() - 1));
_L8:
        if (listener != null)
        {
            listener.onComplete(this, 8, ((HashMap) (obj)));
        }
_L4:
        return;
        if (true) goto _L20; else goto _L19
_L19:
    }

}
