// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;

// Referenced classes of package com.veclink.hw.bleservice:
//            ControlPlayer

class val.keycode
    implements Runnable
{

    final ControlPlayer this$0;
    final int val$keycode;

    public void run()
    {
        KeyEvent keyevent = new KeyEvent(1, val$keycode);
        Intent intent = new Intent();
        intent.setAction("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", keyevent);
        ControlPlayer.access$000(ControlPlayer.this).sendOrderedBroadcast(intent, null);
    }

    ()
    {
        this$0 = final_controlplayer;
        val$keycode = I.this;
        super();
    }
}
