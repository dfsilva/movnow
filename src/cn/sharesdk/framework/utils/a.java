// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package cn.sharesdk.framework.utils:
//            e, c

public class a
{

    public static String a(byte abyte0[], int i, int j)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if (abyte0 == null)
        {
            return stringbuffer.toString();
        }
        for (; i < j; i++)
        {
            stringbuffer.append(String.format("%02x", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
        }

        return stringbuffer.toString();
    }

    public static byte[] a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            return null;
        }
        byte abyte0[];
        MessageDigest messagedigest;
        int i;
        try
        {
            abyte0 = new byte[1024];
            messagedigest = MessageDigest.getInstance("MD5");
            i = inputstream.read(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            e.b(inputstream);
            return null;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        messagedigest.update(abyte0, 0, i);
        i = inputstream.read(abyte0);
        break MISSING_BLOCK_LABEL_24;
        inputstream = messagedigest.digest();
        return inputstream;
    }

    public static byte[] a(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return a(s.getBytes("utf-8"));
        }
    }

    public static byte[] a(String s, String s1)
    {
        if (s == null || s1 == null)
        {
            return null;
        } else
        {
            s = s.getBytes("UTF-8");
            byte abyte0[] = new byte[16];
            System.arraycopy(s, 0, abyte0, 0, Math.min(s.length, 16));
            s = s1.getBytes("UTF-8");
            SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
            s1 = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
            s1.init(1, secretkeyspec);
            secretkeyspec = new byte[s1.getOutputSize(s.length)];
            s1.doFinal(secretkeyspec, s1.update(s, 0, s.length, secretkeyspec, 0));
            return secretkeyspec;
        }
    }

    public static byte[] a(byte abyte0[])
    {
        MessageDigest messagedigest = MessageDigest.getInstance("SHA-1");
        messagedigest.update(abyte0);
        return messagedigest.digest();
    }

    public static byte[] a(byte abyte0[], String s)
    {
        if (abyte0 == null || s == null)
        {
            return null;
        } else
        {
            s = s.getBytes("UTF-8");
            SecretKeySpec secretkeyspec = new SecretKeySpec(abyte0, "AES");
            abyte0 = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
            abyte0.init(1, secretkeyspec);
            byte abyte1[] = new byte[abyte0.getOutputSize(s.length)];
            abyte0.doFinal(abyte1, abyte0.update(s, 0, s.length, abyte1, 0));
            return abyte1;
        }
    }

    public static byte[] a(byte abyte0[], byte abyte1[])
    {
        if (abyte0 == null || abyte1 == null)
        {
            return null;
        } else
        {
            byte abyte2[] = new byte[16];
            System.arraycopy(abyte0, 0, abyte2, 0, Math.min(abyte0.length, 16));
            SecretKeySpec secretkeyspec = new SecretKeySpec(abyte2, "AES");
            abyte0 = Cipher.getInstance("AES/ECB/NoPadding", "BC");
            abyte0.init(2, secretkeyspec);
            secretkeyspec = new byte[abyte0.getOutputSize(abyte1.length)];
            int i = abyte0.update(abyte1, 0, abyte1.length, secretkeyspec, 0);
            abyte0.doFinal(secretkeyspec, i);
            return secretkeyspec;
        }
    }

    public static String b(String s)
    {
        if (s != null)
        {
            if ((s = c(s)) != null)
            {
                return cn.sharesdk.framework.utils.c.a(s);
            }
        }
        return null;
    }

    public static String b(String s, String s1)
    {
        String s2;
        Object obj;
        Object obj1;
        obj1 = null;
        obj = null;
        s2 = obj;
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s1 != null) goto _L4; else goto _L3
_L3:
        s2 = obj;
_L2:
        return s2;
_L4:
        String s3 = obj1;
        try
        {
            s = Base64.encodeToString(a(s1, s), 0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            e.b(s);
            return s3;
        }
        s2 = s;
        s3 = s;
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L5
_L5:
        s2 = s;
        s3 = s;
        if (!s.contains("\n")) goto _L2; else goto _L6
_L6:
        s3 = s;
        s = s.replace("\n", "");
        return s;
    }

    public static String b(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length);
    }

    public static String c(String s, String s1)
    {
        s = URLEncoder.encode(s, s1);
        if (TextUtils.isEmpty(s))
        {
            return s;
        } else
        {
            return s.replace("+", "%20");
        }
    }

    public static byte[] c(String s)
    {
        if (s == null)
        {
            return null;
        }
        try
        {
            s = c(s.getBytes("utf-8"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            e.b(s);
            return null;
        }
        return s;
    }

    public static byte[] c(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        try
        {
            ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
            abyte0 = a(bytearrayinputstream);
            bytearrayinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            e.b(abyte0);
            abyte0 = null;
        }
        return abyte0;
    }

    public static String d(String s)
    {
        try
        {
            s = c(s, "utf-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            e.b(s);
            return null;
        }
        return s;
    }
}
