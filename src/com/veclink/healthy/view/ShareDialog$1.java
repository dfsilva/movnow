// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.app.Activity;
import com.veclink.movnow_q2.util.ScreenShot;

// Referenced classes of package com.veclink.healthy.view:
//            ShareDialog

class this._cls0 extends Thread
{

    final ShareDialog this$0;

    public void run()
    {
        ScreenShot.shoot((Activity)ShareDialog.access$000(ShareDialog.this), ShareDialog.getImageFilePath());
    }

    ()
    {
        this$0 = ShareDialog.this;
        super();
    }
}
