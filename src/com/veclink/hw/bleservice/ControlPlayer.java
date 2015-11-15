// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Handler;
import android.view.KeyEvent;

public class ControlPlayer
{

    private AudioManager mAudioManager;
    private Context mContext;
    private Handler mHandler;

    public ControlPlayer(Context context, Handler handler)
    {
        mContext = context;
        mHandler = handler;
        mAudioManager = (AudioManager)mContext.getSystemService("audio");
    }

    public void controVolume(int i)
    {
        if (i == -1)
        {
            mAudioManager.adjustStreamVolume(3, -1, 1);
        } else
        if (i == 1)
        {
            mAudioManager.adjustStreamVolume(3, 1, 1);
            return;
        }
    }

    public void sendKeyCtroPlayAciton(final int keycode)
    {
        KeyEvent keyevent = new KeyEvent(0, keycode);
        Intent intent = new Intent();
        intent.setAction("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", keyevent);
        mContext.sendOrderedBroadcast(intent, null);
        mHandler.postDelayed(new Runnable() {

            final ControlPlayer this$0;
            final int val$keycode;

            public void run()
            {
                KeyEvent keyevent1 = new KeyEvent(1, keycode);
                Intent intent1 = new Intent();
                intent1.setAction("android.intent.action.MEDIA_BUTTON");
                intent1.putExtra("android.intent.extra.KEY_EVENT", keyevent1);
                mContext.sendOrderedBroadcast(intent1, null);
            }

            
            {
                this$0 = ControlPlayer.this;
                keycode = i;
                super();
            }
        }, 200L);
    }

}
