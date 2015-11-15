// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;


public final class Helper
{

    public Helper()
    {
    }

    public static int CRC16(byte abyte0[])
    {
        int i = 0;
        int j = 65535;
        do
        {
            if (i >= abyte0.length)
            {
                return j & 0xffff;
            }
            j = (j >>> 8 | j << 8) & 0xffff ^ abyte0[i] & 0xff;
            j ^= (j & 0xff) >> 4;
            j ^= j << 12 & 0xffff;
            j ^= (j & 0xff) << 5 & 0xffff;
            i++;
        } while (true);
    }

    public static int CRC8(byte abyte0[])
    {
        int i = 0;
        int j = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return j;
            }
            j ^= abyte0[i] & 0xff;
            boolean flag = false;
            if (8 < 0)
            {
                if ((j & 1) == 0);
                i = j >> 1 & 0xff ^ 0x8c;
                j = ((flag) ? 1 : 0);
                do
                {
                    j++;
                    i = i >> 1 & 0xff;
                } while (true);
            }
            i++;
        } while (true);
    }

    public static String bytesToDeviceId(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < abyte0.length) 
        {
            byte byte0 = abyte0[i];
            Object aobj[] = new Object[1];
            aobj[0] = Byte.valueOf(byte0);
            if (i == abyte0.length - 1)
            {
                stringbuilder.append(String.format("%02x", aobj));
            } else
            {
                stringbuilder.append(String.format("%02x-", aobj));
            }
            i++;
        }
        return stringbuilder.toString();
    }

    public static String bytesToHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuilder.append(String.format("%02x ", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
        }

        return stringbuilder.toString();
    }

    public static String bytesToNoSpaceHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuilder.append(String.format("%02x", new Object[] {
                Byte.valueOf(abyte0[i])
            }));
        }

        return stringbuilder.toString();
    }

    public static byte[] getNeedSendNumberByteArray(String s)
    {
        s = str2Bcd(s);
        byte abyte0[] = new byte[8];
        for (int i = 0; i < abyte0.length; i++)
        {
            abyte0[i] = -1;
        }

        for (int j = 0; j < s.length; j++)
        {
            abyte0[j] = s[j];
        }

        return abyte0;
    }

    public static byte[] str2Bcd(String s)
    {
        String s1 = s.replaceAll("\\+", "a");
        int k = s1.length();
        int i = k;
        s = s1;
        if (k % 2 != 0)
        {
            s = (new StringBuilder()).append(s1).append("F").toString();
            i = s.length();
        }
        byte abyte0[] = new byte[i];
        k = i;
        if (i >= 2)
        {
            k = i / 2;
        }
        abyte0 = new byte[k];
        byte abyte1[] = s.getBytes();
        int i1 = 0;
        do
        {
            while (i1 < s.length() / 2) 
            {
                int j;
                int l;
                if (abyte1[i1 * 2] >= 48 && abyte1[i1 * 2] <= 57)
                {
                    j = abyte1[i1 * 2] - 48;
                } else
                if (abyte1[i1 * 2] >= 97 && abyte1[i1 * 2] <= 122)
                {
                    j = (abyte1[i1 * 2] - 97) + 10;
                } else
                {
                    j = (abyte1[i1 * 2] - 65) + 10;
                }
                if (abyte1[i1 * 2 + 1] >= 48 && abyte1[i1 * 2 + 1] <= 57)
                {
                    l = abyte1[i1 * 2 + 1] - 48;
                } else
                if (abyte1[i1 * 2 + 1] >= 97 && abyte1[i1 * 2 + 1] <= 122)
                {
                    l = (abyte1[i1 * 2 + 1] - 97) + 10;
                } else
                {
                    l = (abyte1[i1 * 2 + 1] - 65) + 10;
                }
                abyte0[i1] = (byte)((j << 4) + l);
                i1++;
            }
            return abyte0;
        } while (true);
    }
}
