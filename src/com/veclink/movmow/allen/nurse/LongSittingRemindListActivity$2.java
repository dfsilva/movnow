// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movmow.allen.nurse;

import android.content.Intent;
import android.view.View;
import com.veclink.movnow_q2.activity.SettingSittingRemindTime;

// Referenced classes of package com.veclink.movmow.allen.nurse:
//            LongSittingRemindListActivity

class this._cls0
    implements android.view.indListActivity._cls2
{

    final LongSittingRemindListActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(LongSittingRemindListActivity.access$100(LongSittingRemindListActivity.this), com/veclink/movnow_q2/activity/SettingSittingRemindTime);
        startActivity(view);
    }

    ()
    {
        this$0 = LongSittingRemindListActivity.this;
        super();
    }
}
