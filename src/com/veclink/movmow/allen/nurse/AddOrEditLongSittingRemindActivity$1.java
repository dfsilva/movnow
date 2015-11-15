// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.view.View;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            AddOrEditLongSittingRemindActivity, RemindObject

class this._cls0
    implements android.view.gRemindActivity._cls1
{

    final AddOrEditLongSittingRemindActivity this$0;

    public void onClick(View view)
    {
        if (getHourWheelIntValue() == 0 && getMinuteWheelIntValue() == 0)
        {
            ToastUtil.showShortToast(mContext, mContext.getString(0x7f0c0105));
            return;
        }
        view = StorageUtil.readRemindObject(mContext, "sitting_remind_objects_file.wao");
        int i;
        int j;
        if (editRemindObject == null)
        {
            RemindObject remindobject = new RemindObject(getTimeStringValue(), mContext.getString(0x7f0c0104));
            remindobject.setHour(getHourWheelIntValue());
            remindobject.setMinute(getMinuteWheelIntValue());
            view.add(remindobject);
            i = remindobject.getHour();
            j = remindobject.getMinute();
        } else
        {
            editRemindObject.setTime(getTimeStringValue());
            editRemindObject.setHour(getHourWheelIntValue());
            editRemindObject.setMinute(getMinuteWheelIntValue());
            view.set(editObjectPosition, editRemindObject);
            i = editRemindObject.getHour();
            j = editRemindObject.getMinute();
        }
        StorageUtil.writeRemindObject(mContext, view, "sitting_remind_objects_file.wao");
        view = new BleAlarmRemindParam(i, j, new int[] {
            1, 1, 1, 1, 1, 1, 1
        });
        (new Thread(new SetRemindTask(mContext, 1, view))).start();
        finish();
    }

    I()
    {
        this$0 = AddOrEditLongSittingRemindActivity.this;
        super();
    }
}
