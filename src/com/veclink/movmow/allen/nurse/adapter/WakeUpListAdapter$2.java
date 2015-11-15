// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.veclink.movmow.allen.nurse.AddOrEditWakeUpRemindActivity;
import com.veclink.movmow.allen.nurse.RemindObject;

// Referenced classes of package com.veclink.movmow.allen.nurse.adapter:
//            WakeUpListAdapter

class val.position
    implements android.view.
{

    final WakeUpListAdapter this$0;
    final int val$position;
    final RemindObject val$remindObject;

    public void onClick(View view)
    {
        view = new Intent(mContext, com/veclink/movmow/allen/nurse/AddOrEditWakeUpRemindActivity);
        Bundle bundle = new Bundle();
        bundle.putSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName(), val$remindObject);
        view.putExtras(bundle);
        view.putExtra("position", val$position);
        mContext.startActivity(view);
    }

    y()
    {
        this$0 = final_wakeuplistadapter;
        val$remindObject = remindobject;
        val$position = I.this;
        super();
    }
}
