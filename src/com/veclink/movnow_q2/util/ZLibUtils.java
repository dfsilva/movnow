// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

public abstract class ZLibUtils
{

    public ZLibUtils()
    {
    }

    public static void compress(byte abyte0[], OutputStream outputstream)
    {
        outputstream = new DeflaterOutputStream(outputstream);
        try
        {
            outputstream.write(abyte0, 0, abyte0.length);
            outputstream.finish();
            outputstream.flush();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
        }
    }

    public static byte[] compress(byte abyte0[])
    {
        Deflater deflater;
        ByteArrayOutputStream bytearrayoutputstream;
        deflater = new Deflater();
        deflater.reset();
        deflater.setInput(abyte0);
        deflater.finish();
        bytearrayoutputstream = new ByteArrayOutputStream(abyte0.length);
        byte abyte1[] = new byte[1024];
        for (; !deflater.finished(); bytearrayoutputstream.write(abyte1, 0, deflater.deflate(abyte1))) { }
        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        exception.printStackTrace();
        byte abyte2[];
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        deflater.end();
        return abyte0;
        abyte2 = bytearrayoutputstream.toByteArray();
        abyte0 = abyte2;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_67;
        }
        abyte0;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        throw abyte0;
    }

    public static byte[] decompress(InputStream inputstream)
    {
        InflaterInputStream inflaterinputstream;
        int i;
        inflaterinputstream = new InflaterInputStream(inputstream);
        inputstream = new ByteArrayOutputStream(1024);
        i = 1024;
        byte abyte0[] = new byte[1024];
_L1:
        i = inflaterinputstream.read(abyte0, 0, i);
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        inputstream.write(abyte0, 0, i);
          goto _L1
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return inputstream.toByteArray();
    }

    public static byte[] decompress(byte abyte0[])
    {
        Inflater inflater;
        ByteArrayOutputStream bytearrayoutputstream;
        inflater = new Inflater();
        inflater.reset();
        inflater.setInput(abyte0);
        bytearrayoutputstream = new ByteArrayOutputStream(abyte0.length);
        byte abyte1[] = new byte[1024];
        for (; !inflater.finished(); bytearrayoutputstream.write(abyte1, 0, inflater.inflate(abyte1))) { }
        break MISSING_BLOCK_LABEL_69;
        Exception exception;
        exception;
        exception.printStackTrace();
        byte abyte2[];
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        inflater.end();
        return abyte0;
        abyte2 = bytearrayoutputstream.toByteArray();
        abyte0 = abyte2;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_63;
        }
        abyte0;
        try
        {
            bytearrayoutputstream.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        throw abyte0;
    }
}
