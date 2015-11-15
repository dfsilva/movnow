// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.waterfall.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.movnow_q2.activity.EditCaloriesActivity;
import com.veclink.movnow_q2.activity.ManagerCaloriesActivity;

// Referenced classes of package com.veclink.waterfall.adapter:
//            StaggeredAdapter

class 
    implements android.view.r
{

    final StaggeredAdapter this$0;
    final UptakeCalorie val$calorie;

    public void onClick(View view)
    {
        view = new Intent(StaggeredAdapter.access$000(StaggeredAdapter.this), com/veclink/movnow_q2/activity/EditCaloriesActivity);
        Bundle bundle = new Bundle();
        bundle.putSerializable("Calorie", val$calorie);
        view.putExtras(bundle);
        StaggeredAdapter.access$000(StaggeredAdapter.this).startActivity(view);
        StaggeredAdapter.access$100(StaggeredAdapter.this).finish();
    }

    ()
    {
        this$0 = final_staggeredadapter;
        val$calorie = UptakeCalorie.this;
        super();
    }
}
