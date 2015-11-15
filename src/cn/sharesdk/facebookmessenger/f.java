// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebookmessenger;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.Principal;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.X509TrustManager;

class f
    implements X509TrustManager
{
    private static class a
    {

        private final String a;
        private final String b;
        private final String c;

        public String a()
        {
            return a;
        }

        public String b()
        {
            return b;
        }

        public String c()
        {
            return c;
        }

        public boolean equals(Object obj)
        {
            if (this != obj) goto _L2; else goto _L1
_L1:
            return true;
_L2:
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            obj = (a)obj;
            if (c == null)
            {
                if (((a) (obj)).c != null)
                {
                    return false;
                }
            } else
            if (!c.equals(((a) (obj)).c))
            {
                return false;
            }
            if (b == null)
            {
                if (((a) (obj)).b != null)
                {
                    return false;
                }
            } else
            if (!b.equals(((a) (obj)).b))
            {
                return false;
            }
            if (a != null)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (((a) (obj)).a == null) goto _L1; else goto _L3
_L3:
            return false;
            if (a.equals(((a) (obj)).a)) goto _L1; else goto _L4
_L4:
            return false;
        }

        public int hashCode()
        {
            int k = 0;
            int i;
            int j;
            if (c == null)
            {
                i = 0;
            } else
            {
                i = c.hashCode();
            }
            if (b == null)
            {
                j = 0;
            } else
            {
                j = b.hashCode();
            }
            if (a != null)
            {
                k = a.hashCode();
            }
            return (j + (i + 31) * 31) * 31 + k;
        }

        public a(String s, String s1, String s2)
        {
            a = s;
            b = s1;
            c = s2;
        }
    }


    private static Pattern a = Pattern.compile("(?i)(cn=)([^,]*)");
    private static Map d = new HashMap();
    private String b;
    private KeyStore c;

    public f(String s)
    {
        Object obj;
        Object obj2;
        Object obj3;
        obj2 = null;
        obj3 = null;
        obj = null;
        super();
        b = s;
        Map map = d;
        map;
        JVM INSTR monitorenter ;
        a a1 = new a("jks", null, null);
        if (!d.containsKey(a1)) goto _L2; else goto _L1
_L1:
        c = (KeyStore)d.get(a1);
_L5:
        return;
_L2:
        s = obj3;
        c = KeyStore.getInstance(a1.a());
        s = obj3;
        if (a1.c() == null)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        s = obj3;
        Object obj1 = a1.c().toCharArray();
_L11:
        s = obj3;
        if (a1.b() != null) goto _L4; else goto _L3
_L3:
        s = obj3;
        c.load(null, ((char []) (obj1)));
        s = ((String) (obj));
_L6:
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        d.put(a1, c);
          goto _L5
        map;
        JVM INSTR monitorexit ;
        throw s;
_L4:
        s = obj3;
        obj = new FileInputStream(a1.b());
        c.load(((InputStream) (obj)), ((char []) (obj1)));
        s = ((String) (obj));
          goto _L6
        obj1;
        obj = obj2;
_L10:
        s = ((String) (obj));
        c = null;
        s = ((String) (obj));
        ((Exception) (obj1)).printStackTrace();
        if (obj != null)
        {
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
            finally { }
        }
        break MISSING_BLOCK_LABEL_143;
        obj1;
        obj = s;
        s = ((String) (obj1));
_L8:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_242;
        }
        try
        {
            ((InputStream) (obj)).close();
        }
        catch (IOException ioexception) { }
        throw s;
        s;
        if (true) goto _L8; else goto _L7
_L7:
        obj1;
        if (true) goto _L10; else goto _L9
_L9:
        obj1 = null;
          goto _L11
    }

    public static List a(X509Certificate x509certificate)
    {
        List list = b(x509certificate);
        Object obj = list;
        if (list.isEmpty())
        {
            x509certificate = x509certificate.getSubjectDN().getName();
            obj = a.matcher(x509certificate);
            if (((Matcher) (obj)).find())
            {
                x509certificate = ((Matcher) (obj)).group(2);
            }
            obj = new ArrayList();
            ((List) (obj)).add(x509certificate);
        }
        return ((List) (obj));
    }

    private static List b(X509Certificate x509certificate)
    {
        ArrayList arraylist = new ArrayList();
        Object obj = arraylist;
        try
        {
            if (x509certificate.getSubjectAlternativeNames() == null)
            {
                obj = Collections.emptyList();
            }
        }
        // Misplaced declaration of an exception variable
        catch (X509Certificate x509certificate)
        {
            x509certificate.printStackTrace();
            return arraylist;
        }
        return ((List) (obj));
    }

    public void checkClientTrusted(X509Certificate ax509certificate[], String s)
    {
    }

    public void checkServerTrusted(X509Certificate ax509certificate[], String s)
    {
        int i = ax509certificate.length;
        a(ax509certificate[0]);
    }

    public X509Certificate[] getAcceptedIssuers()
    {
        return new X509Certificate[0];
    }

}
