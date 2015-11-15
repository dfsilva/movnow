// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.google.gson.Gson;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.UploadFileResponse;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.FileUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MyAccountActivity

private class <init> extends AsyncTask
{

    final MyAccountActivity this$0;

    protected transient Object doInBackground(Object aobj[])
    {
        String s = "";
        Object obj = s;
        Object obj1;
        Object obj2;
        byte abyte0[];
        byte abyte1[];
        byte abyte2[];
        try
        {
            Thread.sleep(500L);
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[])
        {
            ((Exception) (aobj)).printStackTrace();
            return obj;
        }
        obj = s;
        obj1 = (String)aobj[0];
        obj = s;
        obj2 = (String)aobj[1];
        obj = s;
        aobj = (String)aobj[2];
        obj = s;
        System.out.println((new StringBuilder()).append("filepath:").append(((String) (obj1))).append("  ").append(((String) (obj2))).append("  ").append(((String) (aobj))).toString());
        obj = s;
        aobj = (HttpURLConnection)(new URL((new StringBuilder()).append("http://upload.movnow.com/upload/file.do?method=file.upload&filename=").append(((String) (obj2))).append("&token=").append(((String) (aobj))).toString())).openConnection();
        obj = s;
        ((HttpURLConnection) (aobj)).setRequestMethod("POST");
        obj = s;
        ((HttpURLConnection) (aobj)).setDoOutput(true);
        obj = s;
        abyte0 = FileUtil.getFileByte(((String) (obj1)));
        obj = s;
        System.out.println((new StringBuilder()).append("\u5B57\u8282\u6570\u7EC4\u7684\u5927\u5C0F:").append(abyte0.length).toString());
        obj = s;
        abyte1 = ("--" + "---------------------------7d4a6d158c9" + "\r\n" + "Content-Disposition: form-data; name=\"s\"; filename=\"test.doc\"\r\n" + "Content-Type: application/octet-stream\r\n\r\n").getBytes();
        obj = s;
        abyte2 = (new StringBuilder()).append("\r\n--").append("---------------------------7d4a6d158c9").append("--\r\n").toString().getBytes();
        obj = s;
        ((HttpURLConnection) (aobj)).setRequestProperty("Content-Type", (new StringBuilder()).append("multipart/form-data;boundary=").append("---------------------------7d4a6d158c9").toString());
        obj = s;
        ((HttpURLConnection) (aobj)).setRequestProperty("Content-Length", String.valueOf(abyte1.length + abyte0.length + abyte2.length));
        obj = s;
        ((HttpURLConnection) (aobj)).setRequestProperty("User-Agent", (new StringBuilder()).append(android.os.y).append(",").append(SimpleHttpSchedualer.getVersionName(MyAccountActivity.access$200(MyAccountActivity.this))).toString());
        obj = s;
        obj1 = ((HttpURLConnection) (aobj)).getOutputStream();
        obj = s;
        ((OutputStream) (obj1)).write(abyte1);
        obj = s;
        ((OutputStream) (obj1)).write(abyte0);
        obj = s;
        ((OutputStream) (obj1)).write(abyte2);
        obj = s;
        ((OutputStream) (obj1)).flush();
        obj = s;
        abyte0 = new BufferedReader(new InputStreamReader(((HttpURLConnection) (aobj)).getInputStream()));
        aobj = s;
_L2:
        obj = ((Object) (aobj));
        s = abyte0.readLine();
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = ((Object) (aobj));
        aobj = (new StringBuilder()).append(((String) (aobj))).append(s).toString();
        if (true) goto _L2; else goto _L1
_L1:
        obj = ((Object) (aobj));
        System.out.println((new StringBuilder()).append("result:").append(((String) (aobj))).toString());
        obj = ((Object) (aobj));
        abyte0.close();
        obj = ((Object) (aobj));
        ((OutputStream) (obj1)).close();
        return ((Object) (aobj));
    }

    protected void onPostExecute(Object obj)
    {
        super.onPostExecute(obj);
        MyAccountActivity.access$100(MyAccountActivity.this).dismissDialog();
        Log.d("uploadresult:", obj.toString());
        obj = (UploadFileResponse)(new Gson()).fromJson(obj.toString(), com/veclink/healthy/business/http/pojo/UploadFileResponse);
        if (obj != null && ((UploadFileResponse) (obj)).error != null && ((UploadFileResponse) (obj)).error.equalsIgnoreCase("succeed"))
        {
            HealthyAccountHolder.setUserIconUrl(MyAccountActivity.access$200(MyAccountActivity.this), ((UploadFileResponse) (obj)).fileId);
            MyAccountActivity.access$000(MyAccountActivity.this);
            return;
        }
        if (obj != null && ((UploadFileResponse) (obj)).messag != null)
        {
            ToastUtil.showShortToast(MyAccountActivity.access$200(MyAccountActivity.this), ((UploadFileResponse) (obj)).messag);
            return;
        } else
        {
            ToastUtil.showShortToast(MyAccountActivity.access$200(MyAccountActivity.this), MyAccountActivity.access$200(MyAccountActivity.this).getString(0x7f0c009a));
            return;
        }
    }

    private ()
    {
        this$0 = MyAccountActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
