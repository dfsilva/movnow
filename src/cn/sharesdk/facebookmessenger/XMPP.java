// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.facebookmessenger;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.e;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package cn.sharesdk.facebookmessenger:
//            f

public class XMPP
{
    private static class NoResponseException extends Exception
    {

        public NoResponseException(String s)
        {
            super(s);
        }
    }


    private static int a = 0;
    private static XMPP b;
    private static final char j[] = "&quot;".toCharArray();
    private static final char k[] = "&apos;".toCharArray();
    private static final char l[] = "&amp;".toCharArray();
    private static final char m[] = "&lt;".toCharArray();
    private static final char n[] = "&gt;".toCharArray();
    private XmlPullParser c;
    private Socket d;
    private BufferedReader e;
    private BufferedWriter f;
    private String g;
    private String h;
    private String i;

    public XMPP()
    {
        try
        {
            c = XmlPullParserFactory.newInstance().newPullParser();
            c.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
            return;
        }
        catch (XmlPullParserException xmlpullparserexception)
        {
            xmlpullparserexception.printStackTrace();
        }
    }

    public static XMPP a()
    {
        if (b == null)
        {
            b = new XMPP();
        }
        return b;
    }

    private ArrayList a(XmlPullParser xmlpullparser)
    {
        ArrayList arraylist = new ArrayList();
        boolean flag = false;
        Object obj = null;
        do
        {
            if (flag)
            {
                break;
            }
            int i1 = xmlpullparser.next();
            if (i1 == 2)
            {
                Object obj1 = obj;
                if (xmlpullparser.getName().equals("item"))
                {
                    obj = xmlpullparser.getAttributeValue("", "jid");
                    String s = xmlpullparser.getAttributeValue("", "name");
                    obj1 = new HashMap(2);
                    ((HashMap) (obj1)).put("jid", obj);
                    ((HashMap) (obj1)).put("name", s);
                }
                obj = obj1;
                if (xmlpullparser.getName().equals("group"))
                {
                    obj = obj1;
                    if (obj1 != null)
                    {
                        String s1 = xmlpullparser.nextText();
                        obj = obj1;
                        if (s1 != null)
                        {
                            obj = obj1;
                            if (s1.trim().length() > 0)
                            {
                                ((HashMap) (obj1)).put("group", s1);
                                obj = obj1;
                            }
                        }
                    }
                }
            } else
            if (i1 == 3)
            {
                if (xmlpullparser.getName().equals("item"))
                {
                    arraylist.add(obj);
                }
                if (xmlpullparser.getName().equals("query"))
                {
                    flag = true;
                }
            }
        } while (true);
        return arraylist;
    }

    public static String c(String s)
    {
        int k1 = 0;
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L9:
        return s;
_L2:
        char ac[];
        StringBuilder stringbuilder;
        int j1;
        int l1;
        ac = s.toCharArray();
        l1 = ac.length;
        stringbuilder = new StringBuilder((int)((double)l1 * 1.3D));
        j1 = 0;
_L4:
        int i1;
        char c1;
        if (j1 >= l1)
        {
            continue; /* Loop/switch isn't completed */
        }
        c1 = ac[j1];
        if (c1 <= '>')
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = k1;
_L5:
        j1++;
        k1 = i1;
        if (true) goto _L4; else goto _L3
_L3:
        if (c1 == '<')
        {
            if (j1 > k1)
            {
                stringbuilder.append(ac, k1, j1 - k1);
            }
            i1 = j1 + 1;
            stringbuilder.append(m);
        } else
        {
label0:
            {
                if (c1 != '>')
                {
                    break label0;
                }
                if (j1 > k1)
                {
                    stringbuilder.append(ac, k1, j1 - k1);
                }
                i1 = j1 + 1;
                stringbuilder.append(n);
            }
        }
          goto _L5
        if (c1 != '&')
        {
            break MISSING_BLOCK_LABEL_273;
        }
        if (j1 > k1)
        {
            stringbuilder.append(ac, k1, j1 - k1);
        }
        if (l1 <= j1 + 5 || ac[j1 + 1] != '#' || !Character.isDigit(ac[j1 + 2]) || !Character.isDigit(ac[j1 + 3]) || !Character.isDigit(ac[j1 + 4])) goto _L7; else goto _L6
_L6:
        i1 = k1;
        if (ac[j1 + 5] == ';') goto _L5; else goto _L7
_L7:
        i1 = j1 + 1;
        stringbuilder.append(l);
          goto _L5
        if (c1 == '"')
        {
            if (j1 > k1)
            {
                stringbuilder.append(ac, k1, j1 - k1);
            }
            i1 = j1 + 1;
            stringbuilder.append(j);
        } else
        {
            i1 = k1;
            if (c1 == '\'')
            {
                if (j1 > k1)
                {
                    stringbuilder.append(ac, k1, j1 - k1);
                }
                i1 = j1 + 1;
                stringbuilder.append(k);
            }
        }
          goto _L5
        if (k1 == 0) goto _L9; else goto _L8
_L8:
        if (j1 > k1)
        {
            stringbuilder.append(ac, k1, j1 - k1);
        }
        return stringbuilder.toString();
    }

    private void d(String s)
    {
        f.write(s);
        f.flush();
    }

    private Object e(String s)
    {
        d(s);
        return f(g());
    }

    private Object f(String s)
    {
        int i1 = c.getEventType();
_L2:
        Object obj;
        if (i1 == 2)
        {
            obj = c.getName();
            if (!((String) (obj)).equals("message"))
            {
                break; /* Loop/switch isn't completed */
            }
        }
_L3:
        int j1 = c.next();
        i1 = j1;
        if (j1 == 1)
        {
            return null;
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (((String) (obj)).equals("iq"))
        {
            return h();
        }
        if (!((String) (obj)).equals("presence") && !((String) (obj)).equals("stream"))
        {
            if (((String) (obj)).equals("error"))
            {
                throw new Exception(s);
            }
            if (!((String) (obj)).equals("features"))
            {
                if (((String) (obj)).equals("proceed"))
                {
                    d();
                } else
                if (((String) (obj)).equals("failure"))
                {
                    obj = c.getNamespace(null);
                    if ("urn:ietf:params:xml:ns:xmpp-tls".equals(obj))
                    {
                        throw new Exception("TLS negotiation has failed");
                    }
                    if (!"http://jabber.org/protocol/compress".equals(obj))
                    {
                        throw new Exception("SASL authentication failed");
                    }
                } else
                if (((String) (obj)).equals("challenge"))
                {
                    obj = c.nextText();
                    if (obj != null)
                    {
                        Object obj1 = g(new String(Base64.decode(((String) (obj)), 0)));
                        obj = (String)((Map) (obj1)).get("nonce");
                        obj1 = (String)((Map) (obj1)).get("method");
                        obj = (new StringBuilder()).append("method=").append(URLEncoder.encode(((String) (obj1)), "utf-8")).append("&nonce=").append(URLEncoder.encode(((String) (obj)), "utf-8")).append("&access_token=").append(URLEncoder.encode(g, "utf-8")).append("&api_key=").append(URLEncoder.encode(h, "utf-8")).append("&call_id=0").append("&v=").append(URLEncoder.encode("1.0", "utf-8")).toString().getBytes();
                    } else
                    {
                        obj = null;
                    }
                    if (obj == null)
                    {
                        throw new Exception("can't composed response");
                    }
                    obj = Base64.encodeToString(((byte []) (obj)), 0);
                    e((new StringBuilder()).append("<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">").append(((String) (obj))).append("</response>").toString());
                } else
                if (!((String) (obj)).equals("success"));
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private void f()
    {
        e = new BufferedReader(new InputStreamReader(d.getInputStream(), "UTF-8"));
        f = new BufferedWriter(new OutputStreamWriter(d.getOutputStream(), "UTF-8"));
    }

    private String g()
    {
        char ac[] = new char[4096];
        int i1 = e.read(ac);
        if (i1 > 0)
        {
            String s = new String(ac, 0, i1);
            cn.sharesdk.framework.utils.e.a("recvXML: %s", new Object[] {
                s
            });
            c.setInput(new StringReader(s));
            return s;
        } else
        {
            cn.sharesdk.framework.utils.e.c("recvXML: 0.", new Object[0]);
            throw new NoResponseException("receive socket data failed");
        }
    }

    private Map g(String s)
    {
        HashMap hashmap = new HashMap();
        String as[] = s.split("\\&");
        int j1 = as.length;
        int i1 = 0;
        while (i1 < j1) 
        {
            s = as[i1].split("=", 2);
            Object obj = s[0];
            if (s.length > 1)
            {
                s = s[1];
            } else
            {
                s = null;
            }
            hashmap.put(obj, s);
            i1++;
        }
        return hashmap;
    }

    private Object h()
    {
        String s = c.getAttributeValue("", "from");
        if (!TextUtils.isEmpty(s))
        {
            i = s;
        }
        boolean flag = false;
        do
        {
            if (flag)
            {
                break;
            }
            int i1 = c.next();
            if (i1 == 2)
            {
                String s1 = c.getName();
                String s2 = c.getNamespace();
                if (s1.equals("error"))
                {
                    throw new Exception("parse iq attr but has error");
                }
                if (s1.equals("query") && s2.equals("jabber:iq:roster"))
                {
                    return a(c);
                }
            } else
            if (i1 == 3 && c.getName().equals("iq"))
            {
                flag = true;
            }
        } while (true);
        return null;
    }

    public void a(String s)
    {
        g = s;
    }

    public void a(String s, String s1)
    {
        if (TextUtils.isEmpty(i))
        {
            throw new Exception("Missing your JID");
        }
        s = (new StringBuilder()).append("<message id=\"5lw7t-6\" to=\"").append(s).append("\" from=\"").append(i).append("/ShareSDK\" type=\"chat\"><body>").append(c(s1)).append("</body></message>").toString();
        try
        {
            d.setSoTimeout(500);
            e(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    public void b()
    {
        d = new Socket(Proxy.NO_PROXY);
        InetAddress ainetaddress[] = InetAddress.getAllByName("chat.facebook.com");
        Socket socket = d;
        int i1 = a;
        a = i1 + 1;
        socket.connect(new InetSocketAddress(ainetaddress[i1 % ainetaddress.length], 5222));
        f();
        e("<stream:stream to=\"chat.facebook.com\" xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" version=\"1.0\">");
        e("<starttls xmlns=\"urn:ietf:params:xml:ns:xmpp-tls\"/>");
        e("<stream:stream to=\"chat.facebook.com\" xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" version=\"1.0\">");
        e("<auth mechanism=\"X-FACEBOOK-PLATFORM\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\"></auth>");
        e("<stream:stream to=\"chat.facebook.com\" xmlns=\"jabber:client\" xmlns:stream=\"http://etherx.jabber.org/streams\" version=\"1.0\">");
        e("<iq id=\"5lw7t-4\" type=\"set\"><bind xmlns=\"urn:ietf:params:xml:ns:xmpp-bind\"><resource>ShareSDK</resource></bind></iq>");
        e("<iq id=\"5lw7t-5\" type=\"set\"><session xmlns=\"urn:ietf:params:xml:ns:xmpp-session\"/></iq>");
    }

    public void b(String s)
    {
        h = s;
    }

    public void c()
    {
        d("</stream:stream>");
        try
        {
            d.close();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void d()
    {
        SSLContext sslcontext = SSLContext.getInstance("TLS");
        Object obj = new f("chat.facebook.com");
        SecureRandom securerandom = new SecureRandom();
        sslcontext.init(null, new TrustManager[] {
            obj
        }, securerandom);
        obj = d;
        d = sslcontext.getSocketFactory().createSocket(((Socket) (obj)), ((Socket) (obj)).getInetAddress().getHostAddress(), ((Socket) (obj)).getPort(), true);
        d.setSoTimeout(8000);
        d.setKeepAlive(true);
        ((SSLSocket)d).startHandshake();
        f();
    }

    public ArrayList e()
    {
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)e("<iq id=\"5lw7t-6\" type=\"get\"><query xmlns=\"jabber:iq:roster\" ></query></iq>");
        }
        catch (NoResponseException noresponseexception)
        {
            return new ArrayList();
        }
        return arraylist;
    }

}
