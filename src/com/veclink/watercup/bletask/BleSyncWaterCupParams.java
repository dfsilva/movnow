// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.watercup.bletask;

import android.content.Context;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSyncParamsTask;

public class BleSyncWaterCupParams extends BleSyncParamsTask
{

    public BleSyncWaterCupParams(Context context, BleCallBack blecallback)
    {
        super(context, blecallback, 0, 0, 0);
    }
}
