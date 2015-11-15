// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.remotecontrol.bletask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleTask;

public class RemoteBleTask extends BleTask
{

    public final byte headone = 48;
    public final byte headtwo = 0;

    public RemoteBleTask(Context context, BleCallBack blecallback)
    {
        super(context, blecallback);
    }

    public void doWork()
    {
    }
}
