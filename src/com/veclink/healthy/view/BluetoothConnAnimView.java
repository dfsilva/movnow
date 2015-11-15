// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

public class BluetoothConnAnimView extends FrameLayout
{

    private static final int ANIMATIONEACHOFFSET = 1000;
    private AnimationSet aniSet;
    private AnimationSet aniSet2;
    private AnimationSet aniSet3;
    private TextView connect_message_view;
    private View control_view;
    private Handler handler;
    public boolean mDragging;
    private ImageView wave1;
    private ImageView wave2;
    private ImageView wave3;
    private ImageView wave_halo;

    public BluetoothConnAnimView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        handler = new Handler() {

            final BluetoothConnAnimView this$0;

            public void handleMessage(Message message)
            {
                if (!mDragging)
                {
                    return;
                }
                if (message.what != 546) goto _L2; else goto _L1
_L1:
                wave2.startAnimation(aniSet2);
_L4:
                super.handleMessage(message);
                return;
_L2:
                if (message.what == 819)
                {
                    wave3.startAnimation(aniSet3);
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                this$0 = BluetoothConnAnimView.this;
                super();
            }
        };
        LayoutInflater.from(context).inflate(0x7f030023, this);
        aniSet = getNewAnimationSet();
        aniSet2 = getNewAnimationSet();
        aniSet3 = getNewAnimationSet();
        control_view = findViewById(0x7f060082);
        connect_message_view = (TextView)findViewById(0x7f060083);
        wave1 = (ImageView)findViewById(0x7f06007e);
        wave2 = (ImageView)findViewById(0x7f06007f);
        wave3 = (ImageView)findViewById(0x7f060080);
        wave_halo = (ImageView)findViewById(0x7f060081);
    }

    private AnimationSet getNewAnimationSet()
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 1.6F, 1.0F, 1.6F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(3000L);
        scaleanimation.setRepeatCount(-1);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.1F);
        alphaanimation.setRepeatCount(-1);
        animationset.setDuration(3000L);
        animationset.addAnimation(scaleanimation);
        animationset.addAnimation(alphaanimation);
        return animationset;
    }

    public void setConnectMessage(String s)
    {
        if (connect_message_view != null)
        {
            connect_message_view.setText(s);
        }
    }

    public void setControListener(android.view.View.OnClickListener onclicklistener)
    {
        control_view.setOnClickListener(onclicklistener);
    }

    public void startWaveAnimation()
    {
        mDragging = true;
        wave1.startAnimation(aniSet);
        LinearInterpolator linearinterpolator = new LinearInterpolator();
        RotateAnimation rotateanimation = new RotateAnimation(360F, 0.0F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(2000L);
        rotateanimation.setRepeatCount(-1);
        rotateanimation.setInterpolator(linearinterpolator);
        wave_halo.setAnimation(rotateanimation);
        wave_halo.startAnimation(rotateanimation);
        handler.sendEmptyMessageDelayed(546, 1000L);
        handler.sendEmptyMessageDelayed(819, 2000L);
    }

    public void stopWaveAnimation()
    {
        wave1.clearAnimation();
        wave2.clearAnimation();
        wave3.clearAnimation();
        wave_halo.clearAnimation();
        mDragging = false;
    }




}
