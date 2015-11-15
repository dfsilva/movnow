// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.os.Handler;
import android.os.Message;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

// Referenced classes of package com.veclink.healthy.view:
//            ShareDialog

class this._cls0
    implements PlatformActionListener
{

    final ShareDialog this$0;

    public void onCancel(Platform platform, int i)
    {
    }

    public void onComplete(Platform platform, int i, HashMap hashmap)
    {
        platform = new Message();
        platform.obj = "yes";
        sharehand.sendMessage(platform);
    }

    public void onError(Platform platform, int i, Throwable throwable)
    {
        platform = new Message();
        platform.obj = throwable;
        sharehand.sendMessage(platform);
    }

    tener()
    {
        this$0 = ShareDialog.this;
        super();
    }
}
