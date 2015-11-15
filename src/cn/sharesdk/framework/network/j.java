// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import cn.sharesdk.framework.utils.d;
import java.util.HashMap;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;

// Referenced classes of package cn.sharesdk.framework.network:
//            HttpResponseCallback, i

class j
    implements HttpResponseCallback
{

    final HashMap a;
    final i b;

    j(i i, HashMap hashmap)
    {
        b = i;
        a = hashmap;
        super();
    }

    public void onResponse(HttpResponse httpresponse)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 200 || i == 201)
        {
            a.put("resp", EntityUtils.toString(httpresponse.getEntity(), "utf-8"));
            return;
        } else
        {
            httpresponse = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
            HashMap hashmap = new HashMap();
            hashmap.put("error", httpresponse);
            hashmap.put("status", Integer.valueOf(i));
            throw new Throwable((new d()).a(hashmap));
        }
    }
}
