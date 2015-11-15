// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            SettingsActivity, MainActivity

class this._cls0
    implements android.view.r
{

    final SettingsActivity this$0;

    public void onClick(View view)
    {
        view = new Intent(SettingsActivity.access$000(SettingsActivity.this), com/veclink/movnow_q2/activity/MainActivity);
        startActivity(view);
        finish();
    }

    ()
    {
        this$0 = SettingsActivity.this;
        super();
    }
}
