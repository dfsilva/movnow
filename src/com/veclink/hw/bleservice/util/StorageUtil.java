// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;

import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;

public class StorageUtil
{

    public static final String MOVNOW_DATA_DIR = "Movnow";
    private static final String MOVNOW_DATA_DIR_PATH;

    public StorageUtil()
    {
    }

    public static boolean createDataDir()
    {
        File file = new File(MOVNOW_DATA_DIR_PATH);
        if (!file.exists())
        {
            return file.mkdirs();
        } else
        {
            return true;
        }
    }

    public static void deleteRomAferUpdate(String s)
    {
        s = new File(s);
        if (s.exists())
        {
            s.delete();
        }
    }

    public static String downloadLastestRom(String s, String s1)
        throws IOException
    {
        s1 = (new StringBuilder()).append(getMovnowDataDirPath()).append(File.separator).append(s1).toString();
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setConnectTimeout(5000);
        s = s.getInputStream();
        FileOutputStream fileoutputstream = new FileOutputStream(s1);
        BufferedInputStream bufferedinputstream = new BufferedInputStream(s);
        byte abyte0[] = new byte[1024];
        do
        {
            int i = bufferedinputstream.read(abyte0);
            if (i == -1)
            {
                break;
            }
            fileoutputstream.write(abyte0, 0, i);
        } while (true);
        fileoutputstream.flush();
        if (fileoutputstream != null)
        {
            fileoutputstream.close();
        }
        if (bufferedinputstream != null)
        {
            bufferedinputstream.close();
        }
        if (s != null)
        {
            s.close();
        }
        return s1;
    }

    public static String getFileMD5(String s)
    {
        Object obj;
        obj = new File(s);
        if (!((File) (obj)).exists())
        {
            return null;
        }
        s = new byte[1024];
        MessageDigest messagedigest;
        messagedigest = MessageDigest.getInstance("MD5");
        obj = new FileInputStream(((File) (obj)));
_L3:
        int i = ((FileInputStream) (obj)).read(s, 0, 1024);
        if (i == -1) goto _L2; else goto _L1
_L1:
        messagedigest.update(s, 0, i);
          goto _L3
        s;
_L5:
        s.printStackTrace();
        return null;
_L2:
        ((FileInputStream) (obj)).close();
        return (new BigInteger(1, messagedigest.digest())).toString(16);
        s;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String getMovnowDataDirPath()
    {
        if (createDataDir())
        {
            return MOVNOW_DATA_DIR_PATH;
        } else
        {
            return Environment.getExternalStorageDirectory().toString();
        }
    }

    static 
    {
        MOVNOW_DATA_DIR_PATH = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append("Movnow").toString();
    }
}
