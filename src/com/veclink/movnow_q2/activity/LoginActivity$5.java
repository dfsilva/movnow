// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.widget.Toast;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            LoginActivity

class val.toastString
    implements Runnable
{

    final LoginActivity this$0;
    final String val$toastString;

    public void run()
    {
        Toast.makeText(LoginActivity.this, val$toastString, 0).show();
    }

    ()
    {
        this$0 = final_loginactivity;
        val$toastString = String.this;
        super();
    }
}
