// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.view.View;
import android.widget.ToggleButton;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            AddOrEditWakeUpRemindActivity

class val.buttonIndex
    implements android.view.pRemindActivity._cls2
{

    final AddOrEditWakeUpRemindActivity this$0;
    final int val$buttonIndex;

    public void onClick(View view)
    {
        AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this)[val$buttonIndex].toggle();
        boolean flag = AddOrEditWakeUpRemindActivity.access$000(AddOrEditWakeUpRemindActivity.this)[val$buttonIndex].isChecked();
        int i = AddOrEditWakeUpRemindActivity.access$100(AddOrEditWakeUpRemindActivity.this)[val$buttonIndex];
        if (flag)
        {
            AddOrEditWakeUpRemindActivity.access$200(AddOrEditWakeUpRemindActivity.this, val$buttonIndex);
            return;
        } else
        {
            AddOrEditWakeUpRemindActivity.access$300(AddOrEditWakeUpRemindActivity.this, val$buttonIndex);
            return;
        }
    }

    ()
    {
        this$0 = final_addoreditwakeupremindactivity;
        val$buttonIndex = I.this;
        super();
    }
}
