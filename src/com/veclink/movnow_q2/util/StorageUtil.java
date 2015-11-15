// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Scanner;

// Referenced classes of package com.veclink.movnow_q2.util:
//            DebugUtil

public class StorageUtil
{

    public static final String FAMILY_NUMBR_REMIND_FILENAME = "family_phone_number_file.wao";
    public static final String MOVNOW_DATA_DIR = "Movnow_Q2";
    private static final String MOVNOW_DATA_DIR_PATH;
    private static final String MOVNOW_USER_PIC_DIR_PATH;
    public static final String SITTING_REMIND_FILENAME = "sitting_remind_objects_file.wao";
    public static final String USER_PIC_DIR_PATH;
    public static final String WAKEUP_REMIND_FILENAME = "wakeup_remind_objects_file.wao";
    public static final String WATER_REMIND_FILENAME = "water_remind_objects_file.wao";

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

    public static void delteAllRemindObject(Context context)
    {
        try
        {
            context = context.getFilesDir();
            (new File((new StringBuilder()).append(context.getAbsolutePath()).append(File.separator).append("water_remind_objects_file.wao").toString())).delete();
            (new File((new StringBuilder()).append(context.getAbsolutePath()).append(File.separator).append("sitting_remind_objects_file.wao").toString())).delete();
            (new File((new StringBuilder()).append(context.getAbsolutePath()).append(File.separator).append("wakeup_remind_objects_file.wao").toString())).delete();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
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

    public static String getMovnowUserPicDirPath()
    {
        File file = new File(MOVNOW_USER_PIC_DIR_PATH);
        if (!file.exists())
        {
            file.mkdirs();
        }
        return MOVNOW_USER_PIC_DIR_PATH;
    }

    public static List readRemindObject(Context context, String s)
    {
        ArrayList arraylist = new ArrayList();
        context = context.getFilesDir();
        context = new File((new StringBuilder()).append(context.getAbsolutePath()).append(File.separator).append(s).toString());
        s = arraylist;
        Object obj = arraylist;
        Object obj1 = arraylist;
        ObjectInputStream objectinputstream;
        try
        {
            objectinputstream = new ObjectInputStream(new FileInputStream(context));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            DebugUtil.wpringtln("readRemindObject", context.toString());
            return s;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            DebugUtil.wpringtln("readRemindObject", context.toString());
            return ((List) (obj));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            DebugUtil.wpringtln("readRemindObject", context.toString());
            return ((List) (obj1));
        }
        s = arraylist;
        obj = arraylist;
        obj1 = arraylist;
        context = (List)objectinputstream.readObject();
        s = context;
        obj = context;
        obj1 = context;
        objectinputstream.close();
        return context;
    }

    public static void saveLogFile(String s, String s1)
    {
        new GregorianCalendar();
        s = new File((new StringBuilder()).append(MOVNOW_DATA_DIR_PATH).append("/").append(s).append(".txt").toString());
        Scanner scanner;
        if (!s.exists())
        {
            File file = new File(s.getParent());
            if (!file.exists())
            {
                file.mkdirs();
            }
            s.createNewFile();
        }
        scanner = new Scanner(s);
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder();
        for (; scanner.hasNextLine(); stringbuilder.append("\r\n"))
        {
            stringbuilder.append(scanner.nextLine());
        }

          goto _L1
        s;
_L3:
        s.printStackTrace();
        return;
_L1:
        scanner.close();
        s = new PrintWriter(new FileWriter(s), true);
        try
        {
            s.println(stringbuilder.toString());
            s.println(s1);
            s.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        continue; /* Loop/switch isn't completed */
        s;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static void writeRemindObject(Context context, List list, String s)
    {
        context = context.getFilesDir();
        context = new File((new StringBuilder()).append(context.getAbsolutePath()).append(File.separator).append(s).toString());
        try
        {
            context = new ObjectOutputStream(new FileOutputStream(context));
            context.writeObject(list);
            context.flush();
            context.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    static 
    {
        USER_PIC_DIR_PATH = (new StringBuilder()).append("Movnow_Q2").append(File.separator).append("Favicon").toString();
        MOVNOW_DATA_DIR_PATH = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append("Movnow_Q2").toString();
        MOVNOW_USER_PIC_DIR_PATH = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(USER_PIC_DIR_PATH).toString();
    }
}
