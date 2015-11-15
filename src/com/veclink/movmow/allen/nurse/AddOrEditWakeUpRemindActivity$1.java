// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Context;
import android.view.View;
import android.widget.ToggleButton;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movnow_q2.util.StorageUtil;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            AddOrEditWakeUpRemindActivity, RemindObject

class this._cls0
    implements android.view.pRemindActivity._cls1
{

    final AddOrEditWakeUpRemindActivity this$0;

    public void onClick(View view)
    {
        view = StorageUtil.readRemindObject(mContext, "wakeup_remind_objects_file.wao");
        int ai[];
        int j;
        int k;
        int l;
        if (editRemindObject == null)
        {
            RemindObject remindobject = new RemindObject(getTimeStringValue(), mContext.getString(0x7f0c0109));
            remindobject.setHour(getHourWheelIntValue());
            remindobject.setMinute(getMinuteWheelIntValue());
            for (int i = 0; i < AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this).length; i++)
            {
                remindobject.getRepeateArray()[i] = AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this)[i].isChecked();
            }

            view.add(remindobject);
            j = remindobject.getHour();
            k = remindobject.getMinute();
        } else
        {
            editRemindObject.setTime(getTimeStringValue());
            editRemindObject.setHour(getHourWheelIntValue());
            editRemindObject.setMinute(getMinuteWheelIntValue());
            for (j = 0; j < AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this).length; j++)
            {
                editRemindObject.getRepeateArray()[j] = AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this)[j].isChecked();
            }

            view.set(editObjectPosition, editRemindObject);
            j = editRemindObject.getHour();
            k = editRemindObject.getMinute();
        }
        ai = new int[7];
        l = 0;
        while (l < AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this).length) 
        {
            if (AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this)[l].isChecked())
            {
                ai[l] = 1;
            } else
            {
                ai[l] = 0;
            }
            l++;
        }
        StorageUtil.writeRemindObject(mContext, view, "wakeup_remind_objects_file.wao");
        view = new BleAlarmRemindParam(j, k, new int[] {
            1, 1, 1, 1, 1, 1, 1
        });
        (new Thread(new SetRemindTask(mContext, 3, view))).start();
        finish();
    }

    ()
    {
        this$0 = AddOrEditWakeUpRemindActivity.this;
        super();
    }
}
