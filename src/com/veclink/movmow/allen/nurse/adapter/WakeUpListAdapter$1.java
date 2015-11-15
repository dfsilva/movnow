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
//            WakeUpListAdapter

class val.position
    implements android.view.
{

    final WakeUpListAdapter this$0;
    final int val$position;

    public void onClick(final View dialog)
    {
        dialog = new BaseRemindDialog(mContext);
        dialog.setTitle(mContext.getString(0x7f0c00e6));
        dialog.setContent(mContext.getString(0x7f0c0151));
        dialog.setOkListener(new android.view.View.OnClickListener() {

            final WakeUpListAdapter._cls1 this$1;
            final BaseRemindDialog val$dialog;

            public void onClick(View view)
            {
                dialog.dismiss();
                view = new int[7];
                view = (RemindObject)remindList.get(position);
                BleAlarmRemindParam blealarmremindparam = new BleAlarmRemindParam(view.getHour(), view.getMinute(), new int[] {
                    0, 0, 0, 0, 0, 0, 0
                });
                blealarmremindparam.openflag = 0;
                (new Thread(new SetRemindTask(mContext, 3, blealarmremindparam))).start();
                remindList.remove(position);
                StorageUtil.writeRemindObject(mContext, remindList, "wakeup_remind_objects_file.wao");
                notifyDataSetChanged();
                MovnowTwoApplication.cancelRemind(view.getHour(), view.getMinute(), "wake_up_remind_action");
            }

            
            {
                this$1 = WakeUpListAdapter._cls1.this;
                dialog = basereminddialog;
                super();
            }
        });
        dialog.show();
    }

    _cls1.val.dialog()
    {
        this$0 = final_wakeuplistadapter;
        val$position = I.this;
        super();
    }
}
