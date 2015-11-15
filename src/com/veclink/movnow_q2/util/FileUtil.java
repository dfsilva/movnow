// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileUtil
{

    public FileUtil()
    {
    }

    public static byte[] getFileByte(String s)
        throws FileNotFoundException
    {
        Object obj;
        obj = new FileInputStream(s);
        s = new ByteArrayOutputStream(4096);
        byte abyte0[] = new byte[4096];
_L1:
        int i = ((FileInputStream) (obj)).read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        s.write(abyte0, 0, i);
          goto _L1
        IOException ioexception4;
        ioexception4;
        IOException ioexception;
        Exception exception;
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch (IOException ioexception1) { }
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            catch (IOException ioexception2) { }
        }
        return s.toByteArray();
        s.flush();
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_64;
        }
        exception;
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch (IOException ioexception3) { }
        }
        if (s != null)
        {
            try
            {
                s.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        throw exception;
    }
}
