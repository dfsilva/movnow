// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.task;

import android.content.Context;
import android.os.AsyncTask;
import com.google.gson.Gson;
import com.veclink.healthy.business.http.pojo.UploadBraceletResponse;
import com.veclink.healthy.business.http.server.ServerUrl;
import com.veclink.healthy.business.http.server.UpLoadBraceleteDataUtil;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBLogOperate;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.movnow_q2.util.DebugUtil;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class UploadBraceletDataTask extends AsyncTask
{

    private final String TAG = "UploadBraceletDataTask";
    private Context mContext;

    public UploadBraceletDataTask(Context context)
    {
        mContext = context;
    }

    private boolean post(String s, byte abyte0[])
    {
        int i;
        boolean flag2;
        flag2 = false;
        i = 3;
_L7:
        Object obj;
        Object obj1;
        int j;
        boolean flag;
        if (i <= 0 || flag2)
        {
            break MISSING_BLOCK_LABEL_865;
        }
        j = i - 1;
        obj1 = null;
        obj = null;
        flag = flag2;
        Object obj2 = (HttpURLConnection)(new URL(s)).openConnection();
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setConnectTimeout(5000);
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setReadTimeout(30000);
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setDoOutput(true);
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setDoInput(true);
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setUseCaches(false);
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestMethod("POST");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        Object obj3 = new HashMap();
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HashMap) (obj3)).put("data_type", "1");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HashMap) (obj3)).put("method", "bracelet.receivebraceletdata");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        Object obj4 = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date());
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("Connection", "Keep-Alive");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6)");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("Content-Type", "application/x-www-form-urlencoded;");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("method", "bracelet.receivebraceletdata");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("data_type", "1");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("app_key", "q2_android");
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("timestamp", ((String) (obj4)));
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((HttpURLConnection) (obj2)).setRequestProperty("sign", ServerUrl.getSHASignValue(ServerUrl.getUploadDataPrimarySign(((HashMap) (obj3)), ((String) (obj4)))));
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        obj3 = new DataOutputStream(((HttpURLConnection) (obj2)).getOutputStream());
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((OutputStream) (obj3)).write(abyte0);
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((OutputStream) (obj3)).flush();
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((OutputStream) (obj3)).close();
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        obj4 = new StringBuffer();
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        obj3 = new BufferedReader(new InputStreamReader(((HttpURLConnection) (obj2)).getInputStream()));
_L2:
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        String s1 = ((BufferedReader) (obj3)).readLine();
        if (s1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        ((StringBuffer) (obj4)).append(s1).append("\n");
        if (true) goto _L2; else goto _L1
        obj2;
        obj1 = obj;
        ((IOException) (obj2)).printStackTrace();
        i = j;
        flag2 = flag;
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
            i = j;
            flag2 = flag;
        }
        continue; /* Loop/switch isn't completed */
_L1:
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        DebugUtil.logd("UploadBraceletDataTask", (new StringBuilder()).append("upload return result ").append(((StringBuffer) (obj4)).toString()).toString());
        obj = obj2;
        flag = flag2;
        obj1 = obj2;
        obj4 = ((StringBuffer) (obj4)).toString();
        boolean flag1;
        obj = obj2;
        flag = flag2;
        flag1 = flag2;
        obj1 = obj2;
        if (!((UploadBraceletResponse)(new Gson()).fromJson(((String) (obj4)), com/veclink/healthy/business/http/pojo/UploadBraceletResponse)).getError().equals("0")) goto _L4; else goto _L3
_L3:
        flag2 = true;
        flag1 = true;
        flag = true;
        obj = obj2;
        obj1 = obj2;
        DebugUtil.logd("UploadBraceletDataTask", "do upload Braceletedata task success");
        flag1 = flag2;
_L5:
        obj = obj2;
        flag = flag1;
        obj1 = obj2;
        ((BufferedReader) (obj3)).close();
        i = j;
        flag2 = flag1;
        if (obj2 != null)
        {
            ((HttpURLConnection) (obj2)).disconnect();
            i = j;
            flag2 = flag1;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        flag2 = false;
        flag1 = false;
        flag = false;
        obj = obj2;
        obj1 = obj2;
        DebugUtil.logd("UploadBraceletDataTask", "do upload Braceletedata task fail");
        flag1 = flag2;
          goto _L5
        Exception exception;
        exception;
        obj = obj2;
        flag = flag1;
        obj1 = obj2;
        exception.printStackTrace();
          goto _L5
        s;
        if (obj1 != null)
        {
            ((HttpURLConnection) (obj1)).disconnect();
        }
        throw s;
        return flag2;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected transient Object doInBackground(Object aobj[])
    {
        List list = HealthyDBOperate.queryAlWaitUploadSportData(mContext);
        aobj = HealthyDBOperate.queryAlWaitUploadSleepData(mContext);
        List list1 = HealthyDBLogOperate.loadAllLogObject(mContext);
        if (list1 == null && list == null && aobj == null)
        {
            return null;
        }
        byte abyte0[] = UpLoadBraceleteDataUtil.createUploadContent(list, list1, ((List) (aobj)));
        boolean flag = post(ServerUrl.UPLOAD_BRACELET_DATA_URL, abyte0);
        if (flag)
        {
            if (list != null)
            {
                for (Iterator iterator1 = list.iterator(); iterator1.hasNext(); ((SportData)iterator1.next()).setHadupload("done")) { }
                HealthyDBOperate.addOriginSportDataList(mContext, list);
            }
            if (aobj != null)
            {
                for (Iterator iterator = ((List) (aobj)).iterator(); iterator.hasNext(); ((SleepData)iterator.next()).setHadupload("done")) { }
                HealthyDBOperate.addOriginSleepdataList(mContext, ((List) (aobj)));
            }
            HealthyDBLogOperate.delAllLogObject(mContext);
        }
        return Boolean.valueOf(flag);
    }
}
