// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.bluetooth.BluetoothGattCharacteristic;

public interface OnBleServiceStatusListener
{

    public abstract void onCharacteristicRead(BluetoothGattCharacteristic bluetoothgattcharacteristic);

    public abstract void onCharacteristicWriteStatus(int i);

    public abstract void onConnectionStateChange(boolean flag);

    public abstract void onReadRemoteRssi(int i);

    public abstract void onServicesReady(boolean flag);

    public abstract void onSuotaServiceStatusChange(BluetoothGattCharacteristic bluetoothgattcharacteristic);
}
