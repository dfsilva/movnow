// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.view.View;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            LoginActivity

class this._cls0
    implements android.view.geListener
{

    final LoginActivity this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (view.hasFocus())
        {
            LoginActivity.access$000(LoginActivity.this).setVisibility(8);
            return;
        } else
        {
            LoginActivity.access$000(LoginActivity.this).setVisibility(0);
            return;
        }
    }

    ()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
