// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.veclink.movmow.allen.nurse.RemindObject;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse.adapter:
//            LongSittingRemindListAdapter

class val.dialog
    implements android.view.tingRemindListAdapter._cls1._cls1
{

    final l.remindObject this$1;
    final BaseRemindDialog val$dialog;

    public void onClick(View view)
    {
        val$dialog.dismiss();
        remindList.remove(position);
        StorageUtil.writeRemindObject(mContext, remindList, "sitting_remind_objects_file.wao");
        notifyDataSetChanged();
        handler.sendEmptyMessage(0);
        MovnowTwoApplication.cancelRemind(remindObject.getHour(), remindObject.getMinute(), "sitting_long_remind_action");
    }

    l.remindObject()
    {
        this$1 = final_remindobject;
        val$dialog = BaseRemindDialog.this;
        super();
    }

    // Unreferenced inner class com/veclink/movmow/allen/nurse/adapter/LongSittingRemindListAdapter$1

/* anonymous class */
    class LongSittingRemindListAdapter._cls1
        implements android.view.View.OnClickListener
    {

        final LongSittingRemindListAdapter this$0;
        final int val$position;
        final RemindObject val$remindObject;

        public void onClick(View view)
        {
            view = new BaseRemindDialog(mContext);
            view.setTitle(mContext.getString(0x7f0c00e6));
            view.setContent(mContext.getString(0x7f0c0155));
            view.setOkListener(view. new LongSittingRemindListAdapter._cls1._cls1());
            view.show();
        }

            
            {
                this$0 = final_longsittingremindlistadapter;
                position = i;
                remindObject = RemindObject.this;
                super();
            }
    }

}
