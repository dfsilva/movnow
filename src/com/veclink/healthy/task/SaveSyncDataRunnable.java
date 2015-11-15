// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.task;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.veclink.bracelet.bean.DeviceSleepData;
import com.veclink.bracelet.bean.DeviceSportAndSleepData;
import com.veclink.bracelet.bean.DeviceSportData;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.entity.LogObject;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.entity.SyncRecord;
import com.veclink.healthy.database.op.HealthyDBLogOperate;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.healthy.database.op.HealthyDBSyncRecordOperate;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.healthy.task:
//            UploadBraceletDataTask

public class SaveSyncDataRunnable
    implements Runnable
{

    public static final int SAVEDATADONE = 1010;
    private DeviceSportAndSleepData deviceSportAndSleepData;
    private Handler handler;
    private LogObject logObject;
    private Context mContext;

    public SaveSyncDataRunnable(Context context, DeviceSportAndSleepData devicesportandsleepdata, LogObject logobject, Handler handler1)
    {
        mContext = context;
        deviceSportAndSleepData = devicesportandsleepdata;
        logObject = logobject;
        handler = handler1;
    }

    public static SportData createSportData(Context context, String s)
    {
        String s1 = HealthyAccountHolder.getUserId(context);
        String s2 = Keeper.getDeviceId(context);
        return new SportData(createSportDataId(s1, s2, s), s1, s2, s, "01", "0", "1800", Keeper.getDeviceType(context), "wait");
    }

    public static String createSportDataId(String s, String s1, String s2)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(s);
        stringbuilder.append(s1);
        stringbuilder.append(s2);
        return stringbuilder.toString();
    }

    public static String intToString(int i)
    {
        return String.format("%02d", new Object[] {
            Integer.valueOf(i)
        });
    }

    public void run()
    {
        int i = 0;
        Object obj;
        String s;
        Object obj1;
        ArrayList arraylist;
        Object obj2;
        Object obj3;
        if (deviceSportAndSleepData.syncSportDataResult.size() > 0)
        {
            i = 1;
        } else
        if (deviceSportAndSleepData.syncSleepDataResult.size() > 0)
        {
            i = 2;
        }
        DebugUtil.logd("DataType:", (new StringBuilder()).append(i).append("").toString());
        obj = HealthyDBSyncRecordOperate.loadLastSyncRecordByDataType(mContext, i);
        if (obj != null)
        {
            HealthyDBOperate.delLastSyncData(mContext, ((SyncRecord) (obj)).getLastSyncTime().substring(0, 8), i);
        }
        if (Keeper.getDeviceType(mContext) == null)
        {
            obj = "Q2";
        } else
        {
            obj = Keeper.getDeviceType(mContext);
        }
        s = HealthyAccountHolder.getUserId(mContext);
        obj1 = Keeper.getDeviceId(mContext);
        obj1 = new SyncRecord((new StringBuilder()).append(s).append(((String) (obj1))).append(i).toString(), s, ((String) (obj1)), DateTimeUtil.getNowTime(), DateTimeUtil.getNowTime(), i);
        HealthyDBSyncRecordOperate.addSyncRecord(mContext, ((SyncRecord) (obj1)));
        obj1 = Keeper.getDeviceId(mContext);
        logObject.setResult("1");
        HealthyDBLogOperate.addLogObject(mContext, logObject);
        obj3 = deviceSportAndSleepData.syncSportDataResult;
        arraylist = new ArrayList();
        i = 0;
        obj2 = new HashMap();
        for (obj3 = ((List) (obj3)).iterator(); ((Iterator) (obj3)).hasNext();)
        {
            DeviceSportData devicesportdata = (DeviceSportData)((Iterator) (obj3)).next();
            String s2 = devicesportdata.sportTime;
            String s5 = devicesportdata.sportType;
            int j = devicesportdata.sportStep;
            if (!((HashMap) (obj2)).containsKey(s2))
            {
                ((HashMap) (obj2)).put(s2, s2);
                i += devicesportdata.sportStep;
                arraylist.add(new SportData(createSportDataId(s, ((String) (obj1)), s2), s, ((String) (obj1)), s2, s5, String.valueOf(j), "1800", ((String) (obj)), "wait"));
            }
        }

        HealthyDBOperate.addOriginSportDataList(mContext, arraylist);
        obj2 = deviceSportAndSleepData.syncSleepDataResult;
        arraylist = new ArrayList();
        i = 0;
        int k = 1;
        int l = 1;
        for (obj2 = ((List) (obj2)).iterator(); ((Iterator) (obj2)).hasNext();)
        {
            Object obj4 = (DeviceSleepData)((Iterator) (obj2)).next();
            String s1 = ((DeviceSleepData) (obj4)).dateTime;
            int i1 = ((DeviceSleepData) (obj4)).startTime;
            int j1 = ((DeviceSleepData) (obj4)).sleepDuration;
            if (i1 < 1260 && i1 + j1 > 1260 && k != 0)
            {
                k = 1260 - i1;
                i += j1;
                obj4 = String.valueOf(((DeviceSleepData) (obj4)).sleepState);
                String s3 = createSportDataId(s, ((String) (obj1)), (new StringBuilder()).append(s1).append(i1).toString());
                arraylist.add(new SleepData(s3, s, ((String) (obj1)), s1, i1, k, ((String) (obj4)), ((String) (obj)), "wait"));
                arraylist.add(new SleepData(s3, s, ((String) (obj1)), s1, 1260, j1 - k, ((String) (obj4)), ((String) (obj)), "wait"));
                k = 0;
            } else
            if (i1 < 540 && i1 + j1 > 540 && l != 0)
            {
                l = 540 - i1;
                i += j1;
                obj4 = String.valueOf(((DeviceSleepData) (obj4)).sleepState);
                String s4 = createSportDataId(s, ((String) (obj1)), (new StringBuilder()).append(s1).append(i1).toString());
                arraylist.add(new SleepData(s4, s, ((String) (obj1)), s1, i1, l, ((String) (obj4)), ((String) (obj)), "wait"));
                arraylist.add(new SleepData(s4, s, ((String) (obj1)), s1, 540, j1 - l, ((String) (obj4)), ((String) (obj)), "wait"));
                l = 0;
            } else
            {
                i += j1;
                int k1 = ((DeviceSleepData) (obj4)).sleepState;
                arraylist.add(new SleepData(createSportDataId(s, ((String) (obj1)), (new StringBuilder()).append(s1).append(i1).toString()), s, ((String) (obj1)), s1, i1, j1, String.valueOf(k1), ((String) (obj)), "wait"));
            }
        }

        HealthyDBOperate.addOriginSleepdataList(mContext, arraylist);
        if (i != 0)
        {
            Debug.logBleByTag("\u7761\u7720\u603B\u65F6\u957F\uFF1A", String.valueOf(i));
        }
        if (StringUtil.isNetworkAvailable(mContext) && !TextUtils.isEmpty(s))
        {
            (new UploadBraceletDataTask(mContext)).execute(new Object[] {
                ""
            });
        }
        handler.sendEmptyMessage(1010);
    }
}
