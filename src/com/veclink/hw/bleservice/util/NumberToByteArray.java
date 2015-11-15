// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;


public class NumberToByteArray
{

    public NumberToByteArray()
    {
    }

    public static char bytesToChar(byte abyte0[])
    {
        char c = (char)(int)((long)(abyte0[0] << 8) & 65280L);
        return (char)((char)(int)((long)abyte0[1] & 255L) | c);
    }

    public static double bytesToDouble(byte abyte0[])
    {
        return Double.longBitsToDouble(bytesToLong(abyte0));
    }

    public static float bytesToFloat(byte abyte0[])
    {
        return Float.intBitsToFloat(bytesToInt(abyte0));
    }

    public static int bytesToInt(byte abyte0[])
    {
        return abyte0[0] << 24 & 0xff000000 | abyte0[1] << 16 & 0xff0000 | abyte0[2] << 8 & 0xff00 | abyte0[3] & 0xff;
    }

    public static long bytesToLong(byte abyte0[])
    {
        return (long)abyte0[0] << 56 & 0xff00000000000000L | (long)abyte0[1] << 48 & 0xff000000000000L | (long)abyte0[2] << 40 & 0xff0000000000L | (long)abyte0[3] << 32 & 0xff00000000L | (long)abyte0[4] << 24 & 0xff000000L | (long)abyte0[5] << 16 & 0xff0000L | (long)abyte0[6] << 8 & 65280L | (long)abyte0[7] & 255L;
    }

    public static byte[] charToBytes(char c)
    {
        byte abyte0[] = new byte[8];
        abyte0[0] = (byte)(c >>> 8);
        abyte0[1] = (byte)c;
        return abyte0;
    }

    public static byte[] doubleToBytes(double d)
    {
        return longToBytes(Double.doubleToLongBits(d));
    }

    public static byte[] floatToBytes(float f)
    {
        return intToBytes(Float.floatToIntBits(f));
    }

    public static byte[] intToBytes(int i)
    {
        return (new byte[] {
            (byte)(i >>> 24), (byte)(i >>> 16), (byte)(i >>> 8), (byte)i
        });
    }

    public static byte[] longToBytes(long l)
    {
        return (new byte[] {
            (byte)(int)(l >>> 56), (byte)(int)(l >>> 48), (byte)(int)(l >>> 40), (byte)(int)(l >>> 32), (byte)(int)(l >>> 24), (byte)(int)(l >>> 16), (byte)(int)(l >>> 8), (byte)(int)l
        });
    }
}
