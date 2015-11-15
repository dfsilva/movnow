// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.network.base;

import android.util.Base64;
import java.security.MessageDigest;

public class Encodes
{

    private Encodes()
    {
    }

    public static String MD5(String s)
    {
        Object obj;
        byte abyte0[];
        try
        {
            obj = MessageDigest.getInstance("MD5");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        s = s.toCharArray();
        abyte0 = new byte[s.length];
        for (int i = 0; i < s.length; i++)
        {
            abyte0[i] = (byte)s[i];
        }

        s = ((MessageDigest) (obj)).digest(abyte0);
        obj = new StringBuffer();
        for (int j = 0; j < s.length; j++)
        {
            int k = s[j] & 0xff;
            if (k < 16)
            {
                ((StringBuffer) (obj)).append("0");
            }
            ((StringBuffer) (obj)).append(Integer.toHexString(k));
        }

        return ((StringBuffer) (obj)).toString();
    }

    public static byte[] decode(String s)
    {
        try
        {
            s = Base64.decode(s.replace(" ", "+"), 3);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return (new String("base64 error")).getBytes();
        }
        return s;
    }

    public static String encode(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        } else
        {
            return Base64.encodeToString(abyte0, 3);
        }
    }

    public static String encryptmd5(String s)
    {
        s = s.toCharArray();
        for (int i = 0; i < s.length; i++)
        {
            s[i] = (char)(s[i] ^ 0x6c);
        }

        return new String(s);
    }
}
