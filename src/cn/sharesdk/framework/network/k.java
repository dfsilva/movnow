// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDK;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.framework.network:
//            i, f, e, RawNetworkCallback

public class k extends i
{

    private static k c = null;

    private k()
    {
    }

    public static k a()
    {
        if (c == null)
        {
            c = new k();
        }
        return c;
    }

    private void a(String s, int j)
    {
        if (TextUtils.isEmpty(s) || j <= 0)
        {
            return;
        } else
        {
            ShareSDK.logApiEvent(s, j);
            return;
        }
    }

    public String a(String s, ArrayList arraylist, f f, String s1, int j)
    {
        return a(s, arraylist, f, ((ArrayList) (null)), s1, j);
    }

    public String a(String s, ArrayList arraylist, f f, ArrayList arraylist1, String s1, int j)
    {
        return a(s, arraylist, f, arraylist1, null, s1, j);
    }

    public String a(String s, ArrayList arraylist, f f, ArrayList arraylist1, ArrayList arraylist2, String s1, int j)
    {
        a(s1, j);
        return super.a(s, arraylist, f, arraylist1, arraylist2);
    }

    public String a(String s, ArrayList arraylist, String s1, int j)
    {
        return a(s, arraylist, ((ArrayList) (null)), ((ArrayList) (null)), s1, j);
    }

    public String a(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, String s1, int j)
    {
        a(s1, j);
        return super.a(s, arraylist, arraylist1, arraylist2);
    }

    public void a(String s, ArrayList arraylist, e e, RawNetworkCallback rawnetworkcallback, String s1, int j)
    {
        a(s1, j);
        super.a(s, arraylist, e, rawnetworkcallback);
    }

    public String b(String s, ArrayList arraylist, f f, ArrayList arraylist1, ArrayList arraylist2, String s1, int j)
    {
        a(s1, j);
        return super.b(s, arraylist, f, arraylist1, arraylist2);
    }

    public String b(String s, ArrayList arraylist, String s1, int j)
    {
        return a(s, arraylist, null, s1, j);
    }

    public String b(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, String s1, int j)
    {
        a(s1, j);
        return super.b(s, arraylist, arraylist1, arraylist2);
    }

}
