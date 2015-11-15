// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.task;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.StorageUtil;
import java.io.File;
import java.io.IOException;

public class DownLoadBraceleteRomTask extends AsyncTask
{

    private Handler handler;

    public DownLoadBraceleteRomTask(Handler handler1)
    {
        handler = handler1;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient Object doInBackground(String as[])
    {
        Object obj;
        String s;
        File file;
        Object obj1;
        obj = as[0];
        s = ((String) (obj)).substring(((String) (obj)).lastIndexOf("/"), ((String) (obj)).length());
        obj = (new StringBuilder()).append(StorageUtil.getMovnowDataDirPath()).append(File.separator).append(s).toString();
        file = new File(((String) (obj)));
        obj1 = new Message();
        if (file.exists()) goto _L2; else goto _L1
_L1:
        obj1.what = 35220;
        handler.sendMessage(((Message) (obj1)));
        String s1 = as[1];
        obj1 = as[0];
        int i = 3;
        as = ((String []) (obj));
        while (i > 0) 
        {
            i--;
            try
            {
                obj = StorageUtil.downloadLastestRom(((String) (obj1)), s);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace();
                obj = new Message();
                obj.obj = as;
                obj.what = 35218;
                handler.sendMessage(((Message) (obj)));
                obj = as;
            }
            as = ((String []) (obj));
            if (s1.equals(StorageUtil.getFileMD5(((String) (obj)))))
            {
                DebugUtil.println("MD5 is equal");
                as = new Message();
                as.obj = obj;
                as.what = 35217;
                handler.sendMessage(as);
                return obj;
            }
        }
        obj = as;
        if (i <= 0)
        {
            obj = new Message();
            obj.obj = as;
            obj.what = 35218;
            handler.sendMessage(((Message) (obj)));
            obj = as;
        }
_L4:
        return obj;
_L2:
        as = new Message();
        as.obj = obj;
        as.what = 35217;
        handler.sendMessage(as);
        if (true) goto _L4; else goto _L3
_L3:
    }
}
