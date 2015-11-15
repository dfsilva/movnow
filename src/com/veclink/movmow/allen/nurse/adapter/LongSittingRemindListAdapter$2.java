// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.veclink.movmow.allen.nurse.AddOrEditLongSittingRemindActivity;
import com.veclink.movmow.allen.nurse.RemindObject;
import java.io.Serializable;
import java.util.List;

// Referenced classes of package com.veclink.movmow.allen.nurse.adapter:
//            LongSittingRemindListAdapter

class val.position
    implements android.view.ittingRemindListAdapter._cls2
{

    final LongSittingRemindListAdapter this$0;
    final int val$position;

    public void onClick(View view)
    {
        view = new Intent(mContext, com/veclink/movmow/allen/nurse/AddOrEditLongSittingRemindActivity);
        Bundle bundle = new Bundle();
        bundle.putSerializable(com/veclink/movmow/allen/nurse/RemindObject.getSimpleName(), (Serializable)remindList.get(val$position));
        view.putExtras(bundle);
        view.putExtra("position", val$position);
        mContext.startActivity(view);
    }

    ()
    {
        this$0 = final_longsittingremindlistadapter;
        val$position = I.this;
        super();
    }
}
