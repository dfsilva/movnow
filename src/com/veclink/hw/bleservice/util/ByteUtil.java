// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;


public class ByteUtil
{

    public ByteUtil()
    {
    }

    public static String ageChangeToBinaryString(int i)
    {
        String s = Integer.toBinaryString(i);
        Object obj = s;
        if (s.length() < 7)
        {
            obj = new StringBuffer();
            for (i = 0; i < 7 - s.length(); i++)
            {
                ((StringBuffer) (obj)).append("0");
            }

            ((StringBuffer) (obj)).append(s);
            obj = ((StringBuffer) (obj)).toString();
        }
        return ((String) (obj));
    }

    public static byte booleanAraytoByte(boolean aflag[])
    {
        byte byte0;
        if (aflag != null && aflag.length > 0)
        {
            int i = 0;
            int j = 0;
            do
            {
                byte0 = i;
                if (j >= Math.min(aflag.length, 8))
                {
                    break;
                }
                byte0 = i;
                if (aflag[j])
                {
                    byte0 = (byte)((1 << j) + i);
                }
                j++;
                i = byte0;
            } while (true);
        } else
        {
            byte0 = 0;
        }
        return byte0;
    }

    public static String byteToBitString(byte byte0)
    {
        return (new StringBuilder()).append("").append((byte)(byte0 >> 7 & 1)).append((byte)(byte0 >> 6 & 1)).append((byte)(byte0 >> 5 & 1)).append((byte)(byte0 >> 4 & 1)).append((byte)(byte0 >> 3 & 1)).append((byte)(byte0 >> 2 & 1)).append((byte)(byte0 >> 1 & 1)).append((byte)(byte0 >> 0 & 1)).toString();
    }

    public static byte decodeBinaryStringToBit(String s)
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
}
