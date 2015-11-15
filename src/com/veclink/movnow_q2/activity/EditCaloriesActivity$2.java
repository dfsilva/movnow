// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            EditCaloriesActivity, ManagerCaloriesActivity

class this._cls0
    implements android.view.aloriesActivity._cls2
{

    final EditCaloriesActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(EditCaloriesActivity.this, com/veclink/movnow_q2/activity/ManagerCaloriesActivity);
        startActivity(view);
        finish();
    }

    ()
    {
        this$0 = EditCaloriesActivity.this;
        super();
    }
}
