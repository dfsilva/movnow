// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.os.Handler;
import android.os.Message;
import com.handmark.pulltorefresh.library.PullToRefreshScrollView;
import com.veclink.bracelet.bean.DeviceSportAndSleepData;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.entity.LogObject;
import com.veclink.healthy.database.op.HealthyDBLogOperate;
import com.veclink.healthy.task.SaveSyncDataRunnable;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.view.RoundProgressBar;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            WalkFragment

class this._cls0 extends Handler
{

    final WalkFragment this$0;

    public void handleMessage(Message message)
    {
        if (syncTask != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        LogObject logobject = new LogObject("", "1", "0", DateTimeUtil.getNowTime(), "", "", "", "1.0", "");
        logobject.setDeviceId(Keeper.getDeviceId(application));
        logobject.setUserId(HealthyAccountHolder.getUserId(application));
        logobject.set_id((new StringBuilder()).append(logobject.getUserId()).append(logobject.getDeviceId()).append(logobject.getOptTime()).toString());
        logobject.setDeviceType(Keeper.getDeviceType(application));
        logobject.setFirmwareVer(Keeper.getDeviceRomVersion(application));
        switch (message.what)
        {
        case 1004: 
        case 1005: 
        case 1006: 
        case 1007: 
        case 1008: 
        default:
            return;

        case 1000: 
            WalkFragment.access$1000(WalkFragment.this).setMax(100);
            WalkFragment.access$1000(WalkFragment.this).setProgress(0);
            return;

        case 1002: 
            if (message.obj != null)
            {
                WalkFragment.access$1000(WalkFragment.this).setMax(100);
                WalkFragment.access$1000(WalkFragment.this).setProgress(((Integer)message.obj).intValue());
                return;
            }
            break;

        case 1009: 
            if (message.obj != null)
            {
                logobject.setResult("1");
                HealthyDBLogOperate.addLogObject(application, logobject);
                message = (DeviceSportAndSleepData)message.obj;
                (new Thread(new SaveSyncDataRunnable(application, message, logobject, syncDataHandler))).start();
                return;
            }
            break;

        case 1003: 
            WalkFragment.access$1100(WalkFragment.this).onRefreshComplete();
            application.setHasSyncStepData(true);
            if (message.obj != null)
            {
                logobject.setResult("1");
                HealthyDBLogOperate.addLogObject(application, logobject);
                message = (DeviceSportAndSleepData)message.obj;
                (new Thread(new SaveSyncDataRunnable(application, message, logobject, syncDataHandler))).start();
                return;
            }
            break;

        case 1001: 
            syncTask = null;
            WalkFragment.access$1100(WalkFragment.this).onRefreshComplete();
            logobject.setResult("0");
            HealthyDBLogOperate.addLogObject(application, logobject);
            WalkFragment.access$1200(WalkFragment.this);
            return;

        case 1010: 
            syncTask = null;
            WalkFragment.access$1200(WalkFragment.this);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    ation()
    {
        this$0 = WalkFragment.this;
        super();
    }
}
