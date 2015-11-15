// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.twitter;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.utils.BitmapHelper;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.d;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.twitter:
//            e, a

public class Twitter extends Platform
{
    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams
    {

        public ShareParams()
        {
        }
    }


    public static final String NAME = cn/sharesdk/twitter/Twitter.getSimpleName();
    private String a;
    private String b;
    private String c;

    public Twitter(Context context)
    {
        super(context);
    }

    static PlatformDb a(Twitter twitter)
    {
        return twitter.db;
    }

    static void a(Twitter twitter, int i, Object obj)
    {
        twitter.afterRegister(i, obj);
    }

    static PlatformDb b(Twitter twitter)
    {
        return twitter.db;
    }

    static PlatformDb c(Twitter twitter)
    {
        return twitter.db;
    }

    static PlatformDb d(Twitter twitter)
    {
        return twitter.db;
    }

    static PlatformActionListener e(Twitter twitter)
    {
        return twitter.listener;
    }

    static PlatformActionListener f(Twitter twitter)
    {
        return twitter.listener;
    }

    static PlatformActionListener g(Twitter twitter)
    {
        return twitter.listener;
    }

    static PlatformActionListener h(Twitter twitter)
    {
        return twitter.listener;
    }

    protected boolean checkAuthorize(int i, Object obj)
    {
        if (isAuthValid())
        {
            e e1 = cn.sharesdk.twitter.e.a(this);
            e1.a(a, b, c);
            String s = db.getToken();
            String s1 = db.getTokenSecret();
            if (s != null && s1 != null)
            {
                e1.a(s, s1);
                return true;
            }
        }
        innerAuthorize(i, obj);
        return false;
    }

    protected void doAuthorize(String as[])
    {
        as = cn.sharesdk.twitter.e.a(this);
        as.a(a, b, c);
        as.a(new a(this, as));
    }

    protected void doCustomerProtocol(String s, String s1, int i, HashMap hashmap, HashMap hashmap1)
    {
        e e1 = cn.sharesdk.twitter.e.a(this);
        try
        {
            s = e1.a(s, s1, hashmap, hashmap1);
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
        HashMap hashmap;
        e e1;
        String s;
        e1 = cn.sharesdk.twitter.e.a(this);
        hashmap = null;
        s = getShortLintk(shareparams.getText(), false);
        String as[];
        String s2;
        String s3;
        as = shareparams.getImageArray();
        s2 = shareparams.getImagePath();
        s3 = shareparams.getImageUrl();
        if (as == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        hashmap = e1.a(s, as);
_L10:
        if (hashmap != null) goto _L5; else goto _L4
_L4:
        if (listener != null)
        {
            listener.onError(this, 8, new Throwable("response is null"));
        }
_L7:
        return;
_L2:
        if (!TextUtils.isEmpty(s2) && (new File(s2)).exists())
        {
            hashmap = e1.c(s, s2);
            continue; /* Loop/switch isn't completed */
        }
        if (!TextUtils.isEmpty(s3))
        {
            String s1 = BitmapHelper.downloadBitmap(getContext(), s3);
            if ((new File(s1)).exists())
            {
                hashmap = e1.c(s, s1);
            }
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            hashmap = e1.c(s);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (cn.sharesdk.framework.Platform.ShareParams shareparams) { }
        if (listener != null)
        {
            listener.onError(this, 9, shareparams);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (!hashmap.containsKey("error_code") && !hashmap.containsKey("error"))
        {
            break; /* Loop/switch isn't completed */
        }
        if (listener != null)
        {
            shareparams = (new d()).a(hashmap);
            listener.onError(this, 8, new Throwable(shareparams));
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
        hashmap.put("ShareParams", shareparams);
        if (listener == null) goto _L7; else goto _L8
_L8:
        listener.onComplete(this, 9, hashmap);
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected cn.sharesdk.framework.statistics.b.f.a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareparams, HashMap hashmap)
    {
        cn.sharesdk.framework.statistics.b.f.a a1 = new cn.sharesdk.framework.statistics.b.f.a();
        a1.b = shareparams.getText();
        if (hashmap != null)
        {
            shareparams = (HashMap)hashmap.get("entities");
            if (shareparams != null)
            {
                shareparams = (ArrayList)shareparams.get("media");
                if (shareparams != null && shareparams.size() > 0 && (HashMap)shareparams.get(0) != null)
                {
                    a1.d.add(String.valueOf(hashmap.get("media_url")));
                }
            }
            a1.a = String.valueOf(hashmap.get("id"));
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
        e e1 = cn.sharesdk.twitter.e.a(this);
        try
        {
            s = e1.a(i, j, s);
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
        return 11;
    }

    public int getVersion()
    {
        return 2;
    }

    protected void initDevInfo(String s)
    {
        a = getDevinfo("ConsumerKey");
        b = getDevinfo("ConsumerSecret");
        c = getDevinfo("CallbackUrl");
    }

    protected void setNetworkDevinfo()
    {
        a = getNetworkDevinfo("consumer_key", "ConsumerKey");
        b = getNetworkDevinfo("consumer_secret", "ConsumerSecret");
        c = getNetworkDevinfo("redirect_uri", "CallbackUrl");
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
        Object obj;
        obj = cn.sharesdk.twitter.e.a(this);
        try
        {
            obj = ((e) (obj)).b(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            if (listener != null)
            {
                listener.onError(this, 8, s);
                return;
            }
            break MISSING_BLOCK_LABEL_404;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        if (((HashMap) (obj)).size() > 0)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (listener != null)
        {
            listener.onError(this, 8, new Throwable("response is null"));
            return;
        }
        break MISSING_BLOCK_LABEL_404;
        if (((HashMap) (obj)).containsKey("error_code") || ((HashMap) (obj)).containsKey("error"))
        {
            if (listener != null)
            {
                s = (new d()).a(((HashMap) (obj)));
                listener.onError(this, 8, new Throwable(s));
                return;
            }
            break MISSING_BLOCK_LABEL_404;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_376;
        }
        PlatformDb platformdb;
        boolean flag;
        db.put("nickname", String.valueOf(((HashMap) (obj)).get("screen_name")));
        db.put("icon", String.valueOf(((HashMap) (obj)).get("profile_image_url")));
        db.put("gender", "2");
        db.put("resume", String.valueOf(((HashMap) (obj)).get("description")));
        flag = "true".equals(String.valueOf(((HashMap) (obj)).get("verified")));
        platformdb = db;
        long l;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        platformdb.put("secretType", s);
        db.put("followerCount", String.valueOf(((HashMap) (obj)).get("followers_count")));
        db.put("favouriteCount", String.valueOf(((HashMap) (obj)).get("friends_count")));
        db.put("shareCount", String.valueOf(((HashMap) (obj)).get("statuses_count")));
        l = R.dateToLong(String.valueOf(((HashMap) (obj)).get("created_at")));
        db.put("snsregat", String.valueOf(l));
        s = (new StringBuilder()).append("https://twitter.com/").append(((HashMap) (obj)).get("screen_name")).toString();
        db.put("snsUserUrl", s);
        if (listener != null)
        {
            listener.onComplete(this, 8, ((HashMap) (obj)));
            return;
        }
    }

}
