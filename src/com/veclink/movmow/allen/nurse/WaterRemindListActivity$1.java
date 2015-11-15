// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Intent;
import android.view.View;
import com.veclink.movmow.allen.nurse.adapter.WaterRemindListAdapter;
import com.veclink.movnow_q2.util.ToastUtil;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            WaterRemindListActivity, AddOrEditWaterClockActivity

class this._cls0
    implements android.view.indListActivity._cls1
{

    final WaterRemindListActivity this$0;

    public void onClick(View view)
    {
        if (WaterRemindListActivity.access$000(WaterRemindListActivity.this).remindList != null && WaterRemindListActivity.access$000(WaterRemindListActivity.this).remindList.size() >= 5)
        {
            ToastUtil.showTextToast(WaterRemindListActivity.access$100(WaterRemindListActivity.this), getString(0x7f0c0179));
            return;
        } else
        {
            view = new Intent(WaterRemindListActivity.access$100(WaterRemindListActivity.this), com/veclink/movmow/allen/nurse/AddOrEditWaterClockActivity);
            startActivity(view);
            return;
        }
    }

    y()
    {
        this$0 = WaterRemindListActivity.this;
        super();
    }
}
