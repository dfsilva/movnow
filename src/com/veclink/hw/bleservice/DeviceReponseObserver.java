// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;

public interface DeviceReponseObserver
{

    public abstract void deviceConnected();

    public abstract void deviceDisConnect();

    public abstract void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic);

    public abstract void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i);

    public abstract void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i);

    public abstract void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i);
}
