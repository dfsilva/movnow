// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.network;

import android.content.Context;
import cn.sharesdk.framework.utils.R;
import cn.sharesdk.framework.utils.a;
import cn.sharesdk.framework.utils.d;
import cn.sharesdk.framework.utils.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

// Referenced classes of package cn.sharesdk.framework.network:
//            f, l, n, g, 
//            d, j, RawNetworkCallback, e, 
//            HttpResponseCallback

public class i
{

    public static int a;
    public static int b;

    public i()
    {
    }

    private String a(ArrayList arraylist)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = arraylist.iterator();
        while (iterator.hasNext()) 
        {
            arraylist = (f)iterator.next();
            String s = cn.sharesdk.framework.utils.a.c(((f) (arraylist)).a, "utf-8");
            if (((f) (arraylist)).b != null)
            {
                arraylist = cn.sharesdk.framework.utils.a.c((String)((f) (arraylist)).b, "utf-8");
            } else
            {
                arraylist = "";
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append('&');
            }
            stringbuilder.append(s).append('=').append(arraylist);
        }
        return stringbuilder.toString();
    }

    private HttpClient a()
    {
        Object obj = KeyStore.getInstance(KeyStore.getDefaultType());
        ((KeyStore) (obj)).load(null, null);
        obj = new l(((KeyStore) (obj)));
        ((SSLSocketFactory) (obj)).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basichttpparams, "UTF-8");
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeregistry.register(new Scheme("https", ((org.apache.http.conn.scheme.SocketFactory) (obj)), 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basichttpparams, schemeregistry), basichttpparams);
    }

    private HttpPost a(String s, ArrayList arraylist)
    {
        s = new HttpPost(s);
        if (arraylist != null)
        {
            n n1 = new n();
            n1.a(a(arraylist));
            arraylist = n1.c();
            arraylist.setContentType("application/x-www-form-urlencoded");
            s.setEntity(arraylist);
        }
        return s;
    }

    private HttpPost a(String s, ArrayList arraylist, ArrayList arraylist1)
    {
        String s1;
        HttpPost httppost;
        g g1;
        s1 = UUID.randomUUID().toString();
        httppost = new HttpPost(s);
        httppost.setHeader("Content-Type", (new StringBuilder()).append("multipart/form-data; boundary=").append(s1).toString());
        g1 = new g();
        s = new n();
        if (arraylist != null)
        {
            f f1;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); s.a((String)f1.b).a("\r\n"))
            {
                f1 = (f)arraylist.next();
                s.a("--").a(s1).a("\r\n");
                s.a("Content-Disposition: form-data; name=\"").a(f1.a).a("\"\r\n\r\n");
            }

        }
        g1.a(s);
        arraylist1 = arraylist1.iterator();
_L2:
        f f2;
        n n1;
label0:
        {
            if (!arraylist1.hasNext())
            {
                break MISSING_BLOCK_LABEL_504;
            }
            f2 = (f)arraylist1.next();
            n1 = new n();
            s = new File((String)f2.b);
            n1.a("--").a(s1).a("\r\n");
            n1.a("Content-Disposition: form-data; name=\"").a(f2.a).a("\"; filename=\"").a(s.getName()).a("\"\r\n");
            arraylist = URLConnection.getFileNameMap().getContentTypeFor((String)f2.b);
            if (arraylist != null)
            {
                s = arraylist;
                if (arraylist.length() > 0)
                {
                    break label0;
                }
            }
            if (!((String)f2.b).toLowerCase().endsWith("jpg") && !((String)f2.b).toLowerCase().endsWith("jpeg"))
            {
                break; /* Loop/switch isn't completed */
            }
            s = "image/jpeg";
        }
_L3:
        n1.a("Content-Type: ").a(s).a("\r\n\r\n");
        g1.a(n1);
        s = new cn.sharesdk.framework.network.d();
        s.a((String)f2.b);
        g1.a(s);
        s = new n();
        s.a("\r\n");
        g1.a(s);
        if (true) goto _L2; else goto _L1
_L1:
        if (((String)f2.b).toLowerCase().endsWith("png"))
        {
            s = "image/png";
        } else
        {
label1:
            {
                if (!((String)f2.b).toLowerCase().endsWith("gif"))
                {
                    break label1;
                }
                s = "image/gif";
            }
        }
          goto _L3
        s = new FileInputStream((String)f2.b);
        arraylist = URLConnection.guessContentTypeFromStream(s);
        s.close();
        if (arraylist == null) goto _L5; else goto _L4
_L4:
        s = arraylist;
        if (arraylist.length() > 0) goto _L3; else goto _L5
_L5:
        s = "application/octet-stream";
          goto _L3
        s = new n();
        s.a("--").a(s1).a("--\r\n");
        g1.a(s);
        httppost.setEntity(g1.c());
        return httppost;
    }

    public String a(Context context, String s, String s1, boolean flag)
    {
        Object obj2;
        Object obj3;
        HttpResponse httpresponse;
        int k;
        long l1;
        l1 = System.currentTimeMillis();
        e.b((new StringBuilder()).append("downloading: ").append(s).toString(), new Object[0]);
        if (flag)
        {
            File file = new File(R.getCachePath(context, s1), cn.sharesdk.framework.utils.a.b(s));
            if (flag && file.exists())
            {
                e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
                return file.getAbsolutePath();
            }
        }
        Object obj = new HttpGet(s);
        String as[];
        Header aheader[];
        int i1;
        if (s.startsWith("https://"))
        {
            obj3 = a();
        } else
        {
            obj3 = new DefaultHttpClient();
        }
        httpresponse = ((HttpClient) (obj3)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        k = httpresponse.getStatusLine().getStatusCode();
        if (k != 200) goto _L2; else goto _L1
_L1:
        Object obj1;
        as = null;
        obj = null;
        aheader = httpresponse.getHeaders("Content-Disposition");
        obj2 = as;
        if (aheader != null)
        {
            obj2 = as;
            if (aheader.length > 0)
            {
                as = aheader[0].getValue().split(";");
                i1 = as.length;
                k = 0;
                do
                {
                    obj2 = obj;
                    if (k >= i1)
                    {
                        break;
                    }
                    obj2 = as[k];
                    if (((String) (obj2)).trim().startsWith("filename"))
                    {
                        obj2 = ((String) (obj2)).split("=")[1];
                        obj = obj2;
                        if (((String) (obj2)).startsWith("\""))
                        {
                            obj = obj2;
                            if (((String) (obj2)).endsWith("\""))
                            {
                                obj = ((String) (obj2)).substring(1, ((String) (obj2)).length() - 1);
                            }
                        }
                    }
                    k++;
                } while (true);
            }
        }
        obj1 = obj2;
        if (obj2 != null) goto _L4; else goto _L3
_L3:
        obj2 = cn.sharesdk.framework.utils.a.b(s);
        obj1 = httpresponse.getHeaders("Content-Type");
        if (obj1 == null || obj1.length <= 0) goto _L6; else goto _L5
_L5:
        obj1 = obj1[0].getValue().trim();
        if (!((String) (obj1)).startsWith("image/")) goto _L8; else goto _L7
_L7:
        obj1 = ((String) (obj1)).substring("image/".length());
        obj2 = (new StringBuilder()).append(((String) (obj2))).append(".");
        s = ((String) (obj1));
        if ("jpeg".equals(obj1))
        {
            s = "jpg";
        }
        obj1 = ((StringBuilder) (obj2)).append(s).toString();
          goto _L4
_L8:
        k = s.lastIndexOf('/');
        obj1 = null;
        if (k > 0)
        {
            obj1 = s.substring(k + 1);
        }
        if (obj1 != null && ((String) (obj1)).length() > 0)
        {
            k = ((String) (obj1)).lastIndexOf('.');
            if (k > 0 && ((String) (obj1)).length() - k < 10)
            {
                obj1 = (new StringBuilder()).append(((String) (obj2))).append(((String) (obj1)).substring(k)).toString();
                continue; /* Loop/switch isn't completed */
            }
        }
          goto _L6
_L4:
        {
            context = new File(R.getCachePath(context, s1), ((String) (obj1)));
            if (flag && context.exists())
            {
                ((HttpClient) (obj3)).getConnectionManager().shutdown();
                e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
                return context.getAbsolutePath();
            }
            if (!context.getParentFile().exists())
            {
                context.getParentFile().mkdirs();
            }
            if (context.exists())
            {
                context.delete();
            }
            try
            {
                s = httpresponse.getEntity().getContent();
                s1 = new FileOutputStream(context);
                obj1 = new byte[1024];
                k = s.read(((byte []) (obj1)));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                if (context.exists())
                {
                    context.delete();
                }
                throw s;
            }
        }
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_726;
        }
        s1.write(((byte []) (obj1)), 0, k);
        k = s.read(((byte []) (obj1)));
        break MISSING_BLOCK_LABEL_701;
        s1.flush();
        s.close();
        s1.close();
        ((HttpClient) (obj3)).getConnectionManager().shutdown();
        e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
        return context.getAbsolutePath();
_L2:
        context = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
        s = new HashMap();
        s.put("error", context);
        s.put("status", Integer.valueOf(k));
        ((HttpClient) (obj3)).getConnectionManager().shutdown();
        throw new Throwable((new d()).a(s));
_L6:
        obj1 = obj2;
        if (true) goto _L4; else goto _L9
_L9:
    }

    public String a(String s, ArrayList arraylist, f f1, ArrayList arraylist1, ArrayList arraylist2)
    {
        ArrayList arraylist3 = new ArrayList();
        if (f1 != null && f1.b != null && (new File((String)f1.b)).exists())
        {
            arraylist3.add(f1);
        }
        return a(s, arraylist, arraylist3, arraylist1, arraylist2);
    }

    public String a(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2)
    {
        String s1;
        long l1;
        l1 = System.currentTimeMillis();
        e.b((new StringBuilder()).append("httpGet: ").append(s).toString(), new Object[0]);
        s1 = s;
        if (arraylist != null)
        {
            arraylist = a(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder()).append(s).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpGet(s1);
        if (arraylist1 != null)
        {
            for (s = arraylist1.iterator(); s.hasNext(); arraylist.setHeader(((f) (arraylist1)).a, (String)((f) (arraylist1)).b))
            {
                arraylist1 = (f)s.next();
            }

        }
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, a);
        HttpConnectionParams.setSoTimeout(s, b);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        arraylist1 = arraylist2.iterator();
_L5:
        if (!arraylist1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist2 = (f)arraylist1.next();
        int k = R.parseInt(String.valueOf(((f) (arraylist2)).b));
        s.setIntParameter(((f) (arraylist2)).a, k);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(s);
        int i1;
        if (s1.startsWith("https://"))
        {
            s = a();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        i1 = arraylist.getStatusLine().getStatusCode();
        if (i1 == 200)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            arraylist1 = new HashMap();
            arraylist1.put("error", arraylist);
            arraylist1.put("status", Integer.valueOf(i1));
            s.getConnectionManager().shutdown();
            throw new Throwable((new d()).a(arraylist1));
        }
        arraylist2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String a(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, ArrayList arraylist3)
    {
        HashMap hashmap = new HashMap();
        a(s, arraylist, arraylist1, arraylist2, arraylist3, ((HttpResponseCallback) (new j(this, hashmap))));
        return (String)hashmap.get("resp");
    }

    public void a(String s, RawNetworkCallback rawnetworkcallback)
    {
        Object obj = new HttpGet(s);
        int k;
        if (s.startsWith("https://"))
        {
            s = a();
        } else
        {
            s = new DefaultHttpClient();
        }
        obj = s.execute(((org.apache.http.client.methods.HttpUriRequest) (obj)));
        k = ((HttpResponse) (obj)).getStatusLine().getStatusCode();
        if (k == 200)
        {
            if (rawnetworkcallback != null)
            {
                rawnetworkcallback.onResponse(((HttpResponse) (obj)).getEntity().getContent());
            }
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            rawnetworkcallback = EntityUtils.toString(((HttpResponse) (obj)).getEntity(), "utf-8");
            obj = new HashMap();
            ((HashMap) (obj)).put("error", rawnetworkcallback);
            ((HashMap) (obj)).put("status", Integer.valueOf(k));
            s.getConnectionManager().shutdown();
            throw new Throwable((new d()).a(((HashMap) (obj))));
        }
    }

    public void a(String s, ArrayList arraylist, cn.sharesdk.framework.network.e e1, RawNetworkCallback rawnetworkcallback)
    {
        long l1 = System.currentTimeMillis();
        e.b((new StringBuilder()).append("raw post: ").append(s).toString(), new Object[0]);
        HttpPost httppost = new HttpPost(s);
        if (arraylist != null)
        {
            f f1;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); httppost.setHeader(f1.a, (String)f1.b))
            {
                f1 = (f)arraylist.next();
            }

        }
        httppost.setEntity(e1.c());
        int k;
        if (s.startsWith("https://"))
        {
            s = a();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(httppost);
        k = arraylist.getStatusLine().getStatusCode();
        if (k == 200)
        {
            e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
            if (rawnetworkcallback != null)
            {
                rawnetworkcallback.onResponse(arraylist.getEntity().getContent());
            }
            s.getConnectionManager().shutdown();
            return;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            e1 = new HashMap();
            e1.put("error", arraylist);
            e1.put("status", Integer.valueOf(k));
            s.getConnectionManager().shutdown();
            throw new Throwable((new d()).a(e1));
        }
    }

    public void a(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, ArrayList arraylist3, HttpResponseCallback httpresponsecallback)
    {
        long l1;
        l1 = System.currentTimeMillis();
        e.b((new StringBuilder()).append("httpPost: ").append(s).toString(), new Object[0]);
        if (arraylist1 != null && arraylist1.size() > 0)
        {
            arraylist = a(s, arraylist, arraylist1);
        } else
        {
            arraylist = a(s, arraylist);
        }
        if (arraylist2 != null)
        {
            for (arraylist1 = arraylist2.iterator(); arraylist1.hasNext(); arraylist.setHeader(((f) (arraylist2)).a, (String)((f) (arraylist2)).b))
            {
                arraylist2 = (f)arraylist1.next();
            }

        }
        arraylist1 = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(arraylist1, a);
        HttpConnectionParams.setSoTimeout(arraylist1, b);
        e.b((new StringBuilder()).append("before set SO_TIMEOUT :").append(arraylist1.getIntParameter("http.socket.timeout", b)).toString(), new Object[0]);
        e.b((new StringBuilder()).append("before set CONNECTION_TIMEOUT :").append(arraylist1.getIntParameter("http.connection.timeout", a)).toString(), new Object[0]);
        if (arraylist3 == null) goto _L2; else goto _L1
_L1:
        arraylist2 = arraylist3.iterator();
_L5:
        if (!arraylist2.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist3 = (f)arraylist2.next();
        int k = R.parseInt(String.valueOf(((f) (arraylist3)).b));
        arraylist1.setIntParameter(((f) (arraylist3)).a, k);
        continue; /* Loop/switch isn't completed */
_L2:
        e.b((new StringBuilder()).append("before set SO_TIMEOUT :").append(arraylist1.getIntParameter("http.socket.timeout", b)).toString(), new Object[0]);
        e.b((new StringBuilder()).append("before set CONNECTION_TIMEOUT :").append(arraylist1.getIntParameter("http.connection.timeout", a)).toString(), new Object[0]);
        arraylist.setParams(arraylist1);
        if (s.startsWith("https://"))
        {
            s = a();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        if (httpresponsecallback != null)
        {
            try
            {
                httpresponsecallback.onResponse(arraylist);
            }
            // Misplaced declaration of an exception variable
            catch (ArrayList arraylist)
            {
                s.getConnectionManager().shutdown();
                throw arraylist;
            }
        }
        s.getConnectionManager().shutdown();
        e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
        return;
        arraylist3;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String b(String s, ArrayList arraylist, f f1, ArrayList arraylist1, ArrayList arraylist2)
    {
        String s1;
        long l1;
        l1 = System.currentTimeMillis();
        e.b((new StringBuilder()).append("httpPut: ").append(s).toString(), new Object[0]);
        s1 = s;
        if (arraylist != null)
        {
            arraylist = a(arraylist);
            s1 = s;
            if (arraylist.length() > 0)
            {
                s1 = (new StringBuilder()).append(s).append("?").append(arraylist).toString();
            }
        }
        arraylist = new HttpPut(s1);
        if (arraylist1 != null)
        {
            for (s = arraylist1.iterator(); s.hasNext(); arraylist.setHeader(((f) (arraylist1)).a, (String)((f) (arraylist1)).b))
            {
                arraylist1 = (f)s.next();
            }

        }
        s = new cn.sharesdk.framework.network.d();
        s.a((String)f1.b);
        s = s.c();
        s.setContentEncoding("application/octet-stream");
        arraylist.setEntity(s);
        s = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(s, a);
        HttpConnectionParams.setSoTimeout(s, b);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        f1 = arraylist2.iterator();
_L5:
        if (!f1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist1 = (f)f1.next();
        int k = R.parseInt(String.valueOf(((f) (arraylist1)).b));
        s.setIntParameter(((f) (arraylist1)).a, k);
        continue; /* Loop/switch isn't completed */
_L2:
        arraylist.setParams(s);
        int i1;
        if (s1.startsWith("https://"))
        {
            s = a();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(arraylist);
        i1 = arraylist.getStatusLine().getStatusCode();
        if (i1 == 200 || i1 == 201)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            f1 = new HashMap();
            f1.put("error", arraylist);
            f1.put("status", Integer.valueOf(i1));
            s.getConnectionManager().shutdown();
            throw new Throwable((new d()).a(f1));
        }
        arraylist1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String b(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2)
    {
        HttpPost httppost;
        long l1;
        l1 = System.currentTimeMillis();
        e.b((new StringBuilder()).append("jsonPost: ").append(s).toString(), new Object[0]);
        httppost = new HttpPost(s);
        n n1 = new n();
        if (arraylist != null)
        {
            HashMap hashmap = new HashMap();
            f f1;
            for (arraylist = arraylist.iterator(); arraylist.hasNext(); hashmap.put(f1.a, f1.b))
            {
                f1 = (f)arraylist.next();
            }

            n1.a((new d()).a(hashmap));
        }
        arraylist = n1.c();
        arraylist.setContentType("application/json");
        httppost.setEntity(arraylist);
        if (arraylist1 != null)
        {
            for (arraylist = arraylist1.iterator(); arraylist.hasNext(); httppost.setHeader(((f) (arraylist1)).a, (String)((f) (arraylist1)).b))
            {
                arraylist1 = (f)arraylist.next();
            }

        }
        arraylist = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(arraylist, a);
        HttpConnectionParams.setSoTimeout(arraylist, b);
        if (arraylist2 == null) goto _L2; else goto _L1
_L1:
        arraylist1 = arraylist2.iterator();
_L5:
        if (!arraylist1.hasNext()) goto _L2; else goto _L3
_L3:
        arraylist2 = (f)arraylist1.next();
        int k = R.parseInt(String.valueOf(((f) (arraylist2)).b));
        arraylist.setIntParameter(((f) (arraylist2)).a, k);
        continue; /* Loop/switch isn't completed */
_L2:
        httppost.setParams(arraylist);
        int i1;
        if (s.startsWith("https://"))
        {
            s = a();
        } else
        {
            s = new DefaultHttpClient();
        }
        arraylist = s.execute(httppost);
        i1 = arraylist.getStatusLine().getStatusCode();
        if (i1 == 200 || i1 == 201)
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            s.getConnectionManager().shutdown();
            e.b((new StringBuilder()).append("use time: ").append(System.currentTimeMillis() - l1).toString(), new Object[0]);
            return arraylist;
        } else
        {
            arraylist = EntityUtils.toString(arraylist.getEntity(), "utf-8");
            arraylist1 = new HashMap();
            arraylist1.put("error", arraylist);
            arraylist1.put("status", Integer.valueOf(i1));
            s.getConnectionManager().shutdown();
            throw new Throwable((new d()).a(arraylist1));
        }
        arraylist2;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
