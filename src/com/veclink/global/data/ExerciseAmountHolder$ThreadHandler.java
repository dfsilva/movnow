// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.global.data;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.veclink.global.data:
//            ExerciseAmountHolder

private final class this._cls0 extends Handler
{

    final ExerciseAmountHolder this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 0: // '\0'
        default:
            return;
        }
    }

    public (Looper looper)
    {
        this$0 = ExerciseAmountHolder.this;
        super(looper);
    }
}
