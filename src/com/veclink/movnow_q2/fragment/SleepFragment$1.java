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
import com.veclink.movnow_q2.activity.MainActivity;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.view.RoundProgressBar;

// Referenced classes of package com.veclink.movnow_q2.fragment:
//            SleepFragment

class this._cls0 extends Handler
{

    final SleepFragment this$0;

    public void handleMessage(Message message)
    {
        if (syncTask != null && !SleepFragment.access$000(SleepFragment.this)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        LogObject logobject = new LogObject("", "1", "0", DateTimeUtil.getNowTime(), "", "", "", "1.0", "");
        logobject.setDeviceId(Keeper.getDeviceId(SleepFragment.access$100(SleepFragment.this)));
        logobject.setUserId(HealthyAccountHolder.getUserId(SleepFragment.access$100(SleepFragment.this)));
        logobject.set_id((new StringBuilder()).append(logobject.getUserId()).append(logobject.getDeviceId()).append(logobject.getOptTime()).toString());
        logobject.setDeviceType(Keeper.getDeviceType(SleepFragment.access$100(SleepFragment.this)));
        logobject.setFirmwareVer(Keeper.getDeviceRomVersion(SleepFragment.access$100(SleepFragment.this)));
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
            SleepFragment.access$200(SleepFragment.this).setMax(100);
            SleepFragment.access$200(SleepFragment.this).setProgress(0);
            return;

        case 1002: 
            if (message.obj != null)
            {
                SleepFragment.access$200(SleepFragment.this).setMax(100);
                SleepFragment.access$200(SleepFragment.this).setProgress(((Integer)message.obj).intValue());
                return;
            }
            break;

        case 1009: 
            if (message.obj != null)
            {
                logobject.setResult("1");
                HealthyDBLogOperate.addLogObject(SleepFragment.access$100(SleepFragment.this), logobject);
                message = (DeviceSportAndSleepData)message.obj;
                (new Thread(new SaveSyncDataRunnable(SleepFragment.access$100(SleepFragment.this), message, logobject, syncDataHandler))).start();
                return;
            }
            break;

        case 1003: 
            SleepFragment.access$300(SleepFragment.this).onRefreshComplete();
            application.setHasSyncSleepData(true);
            if (message.obj != null)
            {
                logobject.setResult("1");
                HealthyDBLogOperate.addLogObject(SleepFragment.access$100(SleepFragment.this), logobject);
                message = (DeviceSportAndSleepData)message.obj;
                (new Thread(new SaveSyncDataRunnable(SleepFragment.access$100(SleepFragment.this), message, logobject, syncDataHandler))).start();
            }
            MainActivity.mainActivity.checkFirmwareUpdate();
            return;

        case 1001: 
            SleepFragment.access$300(SleepFragment.this).onRefreshComplete();
            logobject.setResult("0");
            HealthyDBLogOperate.addLogObject(SleepFragment.access$100(SleepFragment.this), logobject);
            SleepFragment.access$200(SleepFragment.this).setMax(1440);
            SleepFragment.access$400(SleepFragment.this);
            syncTask = null;
            MainActivity.mainActivity.checkFirmwareUpdate();
            return;

        case 1010: 
            SleepFragment.access$200(SleepFragment.this).setMax(1440);
            SleepFragment.access$400(SleepFragment.this);
            syncTask = null;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    tion()
    {
        this$0 = SleepFragment.this;
        super();
    }
}
