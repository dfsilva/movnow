// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;

// Referenced classes of package com.veclink.healthy.view:
//            BluetoothConnAnimView

class this._cls0 extends Handler
{

    final BluetoothConnAnimView this$0;

    public void handleMessage(Message message)
    {
        if (!mDragging)
        {
            return;
        }
        if (message.what != 546) goto _L2; else goto _L1
_L1:
        BluetoothConnAnimView.access$100(BluetoothConnAnimView.this).startAnimation(BluetoothConnAnimView.access$000(BluetoothConnAnimView.this));
_L4:
        super.handleMessage(message);
        return;
_L2:
        if (message.what == 819)
        {
            BluetoothConnAnimView.access$300(BluetoothConnAnimView.this).startAnimation(BluetoothConnAnimView.access$200(BluetoothConnAnimView.this));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = BluetoothConnAnimView.this;
        super();
    }
}
