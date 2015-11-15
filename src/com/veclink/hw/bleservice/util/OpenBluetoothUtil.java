// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Intent;

public class OpenBluetoothUtil
{

    public OpenBluetoothUtil()
    {
    }

    public static boolean bluetoothIsOpen(Activity activity)
    {
        return ((BluetoothManager)activity.getSystemService("bluetooth")).getAdapter().isEnabled();
    }

    public static void openBluetoothWithSystemDialog(Activity activity)
    {
        if (!((BluetoothManager)activity.getSystemService("bluetooth")).getAdapter().isEnabled())
        {
            activity.startActivity(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"));
        }
    }
}
