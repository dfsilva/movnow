// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.photo;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.veclink.healthy.photo:
//            RecordService

class this._cls0 extends Handler
{

    final RecordService this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 2: // '\002'
        default:
            return;

        case 1: // '\001'
            RecordService.access$302(RecordService.this, 0);
            Log.d("RecordService", "stop take picture");
            return;

        case 3: // '\003'
            RecordService.access$302(RecordService.this, 0);
            break;
        }
        Log.d("RecordService", "stop recording");
    }

    ()
    {
        this$0 = RecordService.this;
        super();
    }
}
