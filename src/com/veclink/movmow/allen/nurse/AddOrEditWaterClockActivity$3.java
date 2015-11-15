// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.view.View;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            AddOrEditWaterClockActivity, RemindObject

class this._cls0
    implements android.view.erClockActivity._cls3
{

    final AddOrEditWaterClockActivity this$0;

    public void onClick(View view)
    {
        List list = StorageUtil.readRemindObject(mContext, "water_remind_objects_file.wao");
        MovnowTwoApplication movnowtwoapplication;
        int i;
        int j;
        if (editRemindObject == null)
        {
            view = new RemindObject(getTimeStringValue(), mContext.getString(0x7f0c0103));
            view.setHour(getHourWheelIntValue());
            view.setMinute(getMinuteWheelIntValue());
            list.add(view);
            i = view.getHour();
            j = view.getMinute();
        } else
        {
            MovnowTwoApplication.cancelRemind(editRemindObject.getHour(), editRemindObject.getMinute(), "dringk_water_remind_action");
            editRemindObject.setTime(getTimeStringValue());
            editRemindObject.setHour(getHourWheelIntValue());
            editRemindObject.setMinute(getMinuteWheelIntValue());
            list.set(editObjectPosition, editRemindObject);
            i = editRemindObject.getHour();
            j = editRemindObject.getMinute();
            view = editRemindObject;
        }
        movnowtwoapplication = (MovnowTwoApplication)getApplication();
        MovnowTwoApplication.setRemindAlarm(view, "dringk_water_remind_action");
        StorageUtil.writeRemindObject(mContext, list, "water_remind_objects_file.wao");
        view = new BleAlarmRemindParam(i, j, new int[] {
            1, 1, 1, 1, 1, 1, 1
        });
        (new Thread(new SetRemindTask(mContext, 1, view))).start();
        finish();
    }

    ()
    {
        this$0 = AddOrEditWaterClockActivity.this;
        super();
    }
}
