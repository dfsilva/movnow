// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.view.View;
import com.veclink.bracelet.bean.BleAlarmRemindParam;
import com.veclink.healthy.task.SetRemindTask;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse.adapter:
//            WaterRemindListAdapter

class val.dialog
    implements android.view.aterRemindListAdapter._cls1._cls1
{

    final fyDataSetChanged this$1;
    final BaseRemindDialog val$dialog;

    public void onClick(View view)
    {
        val$dialog.dismiss();
        view = new BleAlarmRemindParam(remindObject.getHour(), remindObject.getMinute(), new int[] {
            0, 0, 0, 0, 0, 0, 0
        });
        view.openflag = 0;
        (new Thread(new SetRemindTask(mContext, 1, view))).start();
        MovnowTwoApplication.cancelRemind(remindObject.getHour(), remindObject.getMinute(), "dringk_water_remind_action");
        remindList.remove(position);
        StorageUtil.writeRemindObject(mContext, remindList, "water_remind_objects_file.wao");
        notifyDataSetChanged();
    }

    l.position()
    {
        this$1 = final_position;
        val$dialog = BaseRemindDialog.this;
        super();
    }

    // Unreferenced inner class com/veclink/movmow/allen/nurse/adapter/WaterRemindListAdapter$1

/* anonymous class */
    class WaterRemindListAdapter._cls1
        implements android.view.View.OnClickListener
    {

        final WaterRemindListAdapter this$0;
        final int val$position;
        final RemindObject val$remindObject;

        public void onClick(View view)
        {
            view = new BaseRemindDialog(mContext);
            view.setTitle(mContext.getString(0x7f0c00e6));
            view.setContent(mContext.getString(0x7f0c0153));
            view.setOkListener(view. new WaterRemindListAdapter._cls1._cls1());
            view.show();
        }

            
            {
                this$0 = final_waterremindlistadapter;
                remindObject = remindobject;
                position = I.this;
                super();
            }
    }

}
