// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Intent;
import android.view.View;
import com.veclink.movmow.allen.nurse.adapter.WakeUpListAdapter;
import com.veclink.movnow_q2.util.ToastUtil;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            WakeUpRemindListActivity, AddOrEditWakeUpRemindActivity

class this._cls0
    implements android.view.indListActivity._cls1
{

    final WakeUpRemindListActivity this$0;

    public void onClick(View view)
    {
        if (WakeUpRemindListActivity.access$000(WakeUpRemindListActivity.this) != null && WakeUpRemindListActivity.access$000(WakeUpRemindListActivity.this).getRemindList().size() >= 1)
        {
            ToastUtil.showShortToast(WakeUpRemindListActivity.access$100(WakeUpRemindListActivity.this), getString(0x7f0c0190));
            return;
        } else
        {
            view = new Intent(WakeUpRemindListActivity.access$100(WakeUpRemindListActivity.this), com/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity);
            startActivity(view);
            return;
        }
    }

    ty()
    {
        this$0 = WakeUpRemindListActivity.this;
        super();
    }
}
