// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;


public class StringByteUtil
{

    public StringByteUtil()
    {
    }

    public static String byteBitStringByArray(byte abyte0[])
    {
        String s = "";
        for (int i = 0; i < abyte0.length; i++)
        {
            s = (new StringBuilder()).append(s).append(abyte0[i]).toString();
        }

        return s;
    }

    public static String byteToBit(byte byte0)
    {
        return (new StringBuilder()).append("").append((byte)(byte0 >> 7 & 1)).append((byte)(byte0 >> 6 & 1)).append((byte)(byte0 >> 5 & 1)).append((byte)(byte0 >> 4 & 1)).append((byte)(byte0 >> 3 & 1)).append((byte)(byte0 >> 2 & 1)).append((byte)(byte0 >> 1 & 1)).append((byte)(byte0 >> 0 & 1)).toString();
    }

    private static byte charToByte(char c)
    {
        return (byte)"0123456789ABCDEF".indexOf(c);
    }

    public static byte decodeBinaryString(String s)
    {
        int i;
        if (s != null)
        {
            if ((i = s.length()) == 4 || i == 8)
            {
                if (i == 8)
                {
                    if (s.charAt(0) == '0')
                    {
                        i = Integer.parseInt(s, 2);
                    } else
                    {
                        i = Integer.parseInt(s, 2) - 256;
                    }
                } else
                {
                    i = Integer.parseInt(s, 2);
                }
                return (byte)i;
            }
        }
        return 0;
    }

    public static byte[] getBooleanArray(byte byte0)
    {
        byte abyte0[] = new byte[8];
        byte byte2 = 7;
        byte byte1 = byte0;
        for (byte0 = byte2; byte0 >= 0; byte0--)
        {
            abyte0[byte0] = (byte)(byte1 & 1);
            byte1 >>= 1;
        }

        return abyte0;
    }

    public static byte[] hexStringToBytes(String s)
    {
        if (s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        s = s.toUpperCase();
        int j = s.length() / 2;
        char ac[] = s.toCharArray();
        byte abyte0[] = new byte[j];
        int i = 0;
        do
        {
            s = abyte0;
            if (i >= j)
            {
                continue;
            }
            int k = i * 2;
            abyte0[i] = (byte)(charToByte(ac[k]) << 4 | charToByte(ac[k + 1]));
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String printHexString(byte abyte0[])
    {
        String s = "";
        for (int i = 0; i < abyte0.length; i++)
        {
            String s2 = Integer.toHexString(abyte0[i] & 0xff);
            String s1 = s2;
            if (s2.length() == 1)
            {
                s1 = (new StringBuilder()).append('0').append(s2).toString();
            }
            s = (new StringBuilder()).append(s).append(s1).toString();
        }

        return s;
    }
}
