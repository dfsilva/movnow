// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            LoginActivity, MainActivity

class this._cls0
    implements android.view.ener
{

    final LoginActivity this$0;

    public void onClick(View view)
    {
        if (MainActivity.mainActivity != null)
        {
            MainActivity.mainActivity.finish();
        }
        finish();
    }

    ()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
