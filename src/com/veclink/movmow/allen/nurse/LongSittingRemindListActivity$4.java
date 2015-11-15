// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.app.Dialog;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StorageUtil;
import com.veclink.movnow_q2.view.wheel.WheelView;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            LongSittingRemindListActivity

class this._cls0
    implements android.view.indListActivity._cls4
{

    final LongSittingRemindListActivity this$0;

    public void onClick(View view)
    {
        selectDistanceDialog.dismiss();
        int i = (selectTime.getCurrentItem() + 1) * 25;
        Log.d("mins", (new StringBuilder()).append("mins:").append(i).toString());
        SharedPreferencesUtils.setSharedPreferences(LongSittingRemindListActivity.this, "select_wake_up_times", Integer.valueOf(i));
        LongSittingRemindListActivity.access$400(LongSittingRemindListActivity.this).setText(getString(0x7f0c00ff, new Object[] {
            Integer.valueOf(i)
        }));
        startSyn();
        StorageUtil.writeRemindObject(LongSittingRemindListActivity.access$100(LongSittingRemindListActivity.this), remindList, "sitting_remind_objects_file.wao");
    }

    ()
    {
        this$0 = LongSittingRemindListActivity.this;
        super();
    }
}
