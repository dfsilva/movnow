// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;

// Referenced classes of package com.veclink.healthy.view:
//            ShareDialog

class this._cls0 extends Handler
{

    final ShareDialog this$0;

    public void handleMessage(Message message)
    {
        while ("yes".equals(message.obj.toString()) || !(message.obj instanceof WechatClientNotExistException)) 
        {
            return;
        }
        Toast.makeText(ShareDialog.access$000(ShareDialog.this), ShareDialog.access$000(ShareDialog.this).getString(0x7f0c01b7), 1).show();
    }

    tExistException()
    {
        this$0 = ShareDialog.this;
        super();
    }
}
