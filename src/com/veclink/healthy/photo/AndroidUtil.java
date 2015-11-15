// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.util.Log;
import java.io.File;

public class AndroidUtil
{

    private static final String TAG = "AndroidUtil";

    public AndroidUtil()
    {
    }

    public static void fileScan(Context context, String s)
    {
        context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse((new StringBuilder()).append("file://").append(s).toString())));
    }

    public static void folderScan(Context context, String s)
    {
        s = new File(s);
        if (s.isDirectory())
        {
            s = s.listFiles();
            Log.i("AndroidUtil", (new StringBuilder()).append("array.length: ").append(s.length).toString());
            int i = 0;
            while (i < s.length) 
            {
                File file = s[i];
                if (file.isFile())
                {
                    String s1 = getFileType(file);
                    Log.i("AndroidUtil", (new StringBuilder()).append("file type: ").append(s1).toString());
                    if (!s1.equals("*"))
                    {
                        fileScan(context, file.getAbsolutePath());
                        Log.i("AndroidUtil", (new StringBuilder()).append("file path: ").append(file.getAbsolutePath()).toString());
                    }
                } else
                {
                    folderScan(context, file.getAbsolutePath());
                }
                i++;
            }
        }
    }

    public static File getExternalDir(String s, Boolean boolean1)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            if (!Environment.getExternalStorageState().equals("mounted"))
            {
                return null;
            }
            File file = new File(Environment.getExternalStorageDirectory(), s);
            s = file;
            if (!file.exists())
            {
                s = file;
                if (boolean1.booleanValue())
                {
                    file.mkdirs();
                    return file;
                }
            }
        }
        return s;
    }

    public static String getFileType(File file)
    {
        file = file.getName();
        file = file.substring(file.lastIndexOf(".") + 1).toLowerCase();
        if (file.equals("m4a") || file.equals("mp3") || file.equals("mid") || file.equals("xmf") || file.equals("ogg") || file.equals("wav"))
        {
            return "audio";
        }
        if (file.equals("3gp") || file.equals("mp4"))
        {
            return "video";
        }
        if (file.equals("jpg") || file.equals("gif") || file.equals("png") || file.equals("jpeg") || file.equals("bmp"))
        {
            return "image";
        } else
        {
            return "*";
        }
    }

    public static String getMIMEType(File file)
    {
        file = getFileType(file);
        return (new StringBuilder()).append(file).append("/*").toString();
    }

    public static boolean readBooleanPreference(String s, Context context)
    {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(s, false);
    }

    public static int readIntPreference(String s, Context context)
    {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(s, 0);
    }

    public static String readStringPreference(String s, Context context)
    {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(s, "");
    }

    public static void writePreference(String s, int i, Context context)
    {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(s, i).commit();
    }

    public static void writePreference(String s, String s1, Context context)
    {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(s, s1).commit();
    }

    public static void writePreference(String s, boolean flag, Context context)
    {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(s, flag).commit();
    }
}
