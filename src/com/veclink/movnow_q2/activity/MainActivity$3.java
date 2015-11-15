// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import com.veclink.healthy.view.ShareDialog;
import com.veclink.movnow_q2.util.ScreenShot;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            MainActivity

class this._cls0 extends Thread
{

    final MainActivity this$0;

    public void run()
    {
        ScreenShot.shoot(MainActivity.mainActivity, ShareDialog.getImageFilePath());
    }

    ()
    {
        this$0 = MainActivity.this;
        super();
    }
}
