// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.os.AsyncTask;
import com.veclink.healthy.business.http.pojo.GetSportDataResponse;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.healthy.task.SaveSyncDataRunnable;
import com.veclink.movnow_q2.util.DebugUtil;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MovnowTwoApplication

private class <init> extends AsyncTask
{

    String eventName;
    final MovnowTwoApplication this$0;

    protected transient Object doInBackground(Object aobj[])
    {
        eventName = aobj[0].toString();
        if (eventName.equals(com/veclink/healthy/business/http/pojo/GetSportDataResponse.getSimpleName()))
        {
            Object obj = (List)aobj[1];
            DebugUtil.println((new StringBuilder()).append("net SportData size is ").append(((List) (obj)).size()).toString());
            aobj = new ArrayList();
            SportData sportdata;
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); DebugUtil.println(sportdata.toString()))
            {
                sportdata = (SportData)((Iterator) (obj)).next();
                String s = SaveSyncDataRunnable.createSportDataId(sportdata.getUserId(), sportdata.getDeviceId(), sportdata.getSportTime());
                if (!HealthyDBOperate.isExitSportRecord(MovnowTwoApplication.mContext, s))
                {
                    sportdata.setHadupload("done");
                    sportdata.set_id(s);
                    ((List) (aobj)).add(sportdata);
                }
            }

            HealthyDBOperate.addOriginSportDataList(MovnowTwoApplication.mContext, ((List) (aobj)));
        } else
        {
            Object obj1 = (List)aobj[1];
            aobj = new ArrayList();
            DebugUtil.println((new StringBuilder()).append("net SleepData size is ").append(((List) (obj1)).size()).toString());
            SleepData sleepdata;
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); DebugUtil.println(sleepdata.toString()))
            {
                sleepdata = (SleepData)((Iterator) (obj1)).next();
                String s1 = SaveSyncDataRunnable.createSportDataId(sleepdata.getUserId(), sleepdata.getDeviceId(), (new StringBuilder()).append(sleepdata.getDateTime()).append(sleepdata.getStartTime()).toString());
                if (!HealthyDBOperate.isExitSleepRecord(MovnowTwoApplication.mContext, s1))
                {
                    sleepdata.setHadupload("done");
                    sleepdata.set_id(s1);
                    ((List) (aobj)).add(sleepdata);
                }
            }

            HealthyDBOperate.addOriginSleepdataList(MovnowTwoApplication.mContext, ((List) (aobj)));
        }
        return eventName;
    }

    protected void onPostExecute(Object obj)
    {
        super.onPostExecute(obj);
        DebugUtil.println((new StringBuilder()).append("eventName is ").append(eventName).toString());
        EventBus.getDefault().post(eventName);
    }

    private Q()
    {
        this$0 = MovnowTwoApplication.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
