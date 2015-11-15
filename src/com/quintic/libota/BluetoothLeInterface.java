// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.quintic.libota;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;

// Referenced classes of package com.quintic.libota:
//            bleGlobalVariables

public abstract class BluetoothLeInterface
{

    protected BluetoothGatt mBluetoothGatt;
    protected BluetoothGattCharacteristic mNotifyCharacteristic;
    protected BluetoothGattCharacteristic mReadCharacteristic;
    protected BluetoothGattCharacteristic mWriteCharacteristic;

    public BluetoothLeInterface()
    {
        mBluetoothGatt = null;
        mWriteCharacteristic = null;
        mReadCharacteristic = null;
        mNotifyCharacteristic = null;
    }

    public boolean bleInterfaceInit()
    {
        return true;
    }

    public boolean bleInterfaceInit(BluetoothGatt bluetoothgatt)
    {
        if (bluetoothgatt == null)
        {
            return false;
        }
        mBluetoothGatt = bluetoothgatt;
        bluetoothgatt = mBluetoothGatt.getService(bleGlobalVariables.UUID_QUINTIC_OTA_SERVICE);
        if (bluetoothgatt == null)
        {
            mBluetoothGatt = null;
            return false;
        } else
        {
            mNotifyCharacteristic = bluetoothgatt.getCharacteristic(bleGlobalVariables.UUID_OTA_NOTIFY_CHARACTERISTIC);
            mWriteCharacteristic = bluetoothgatt.getCharacteristic(bleGlobalVariables.UUID_OTA_WRITE_CHARACTERISTIC);
            return true;
        }
    }

    public boolean readCharacteristic()
    {
        if (mBluetoothGatt == null || mReadCharacteristic == null)
        {
            return false;
        } else
        {
            return mBluetoothGatt.readCharacteristic(mReadCharacteristic);
        }
    }

    public boolean readCharacteristic(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (bluetoothgatt == null || bluetoothgattcharacteristic == null)
        {
            return false;
        } else
        {
            return bluetoothgatt.readCharacteristic(bluetoothgattcharacteristic);
        }
    }

    public boolean readCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (bluetoothgattcharacteristic == null)
        {
            return false;
        } else
        {
            return mBluetoothGatt.readCharacteristic(bluetoothgattcharacteristic);
        }
    }

    public boolean setCharacteristicNotification(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        if (bluetoothgatt == null || bluetoothgattcharacteristic == null)
        {
            return false;
        } else
        {
            return bluetoothgatt.setCharacteristicNotification(bluetoothgattcharacteristic, flag);
        }
    }

    public boolean setCharacteristicNotification(BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        if (mBluetoothGatt == null || bluetoothgattcharacteristic == null)
        {
            return false;
        } else
        {
            return mBluetoothGatt.setCharacteristicNotification(bluetoothgattcharacteristic, flag);
        }
    }

    public boolean setCharacteristicNotification(boolean flag)
    {
        if (mBluetoothGatt == null || mNotifyCharacteristic == null)
        {
            return false;
        } else
        {
            return mBluetoothGatt.setCharacteristicNotification(mNotifyCharacteristic, flag);
        }
    }

    public boolean writeCharacteristic(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, byte abyte0[])
    {
        if (bluetoothgatt == null || bluetoothgattcharacteristic == null || abyte0 == null)
        {
            return false;
        } else
        {
            bluetoothgattcharacteristic.setValue(abyte0);
            return bluetoothgatt.writeCharacteristic(bluetoothgattcharacteristic);
        }
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic, byte abyte0[])
    {
        if (mBluetoothGatt == null || bluetoothgattcharacteristic == null || abyte0 == null)
        {
            return false;
        } else
        {
            bluetoothgattcharacteristic.setValue(abyte0);
            return mBluetoothGatt.writeCharacteristic(bluetoothgattcharacteristic);
        }
    }

    public boolean writeCharacteristic(byte abyte0[])
    {
        if (mBluetoothGatt == null || mWriteCharacteristic == null || abyte0 == null)
        {
            return false;
        } else
        {
            mWriteCharacteristic.setValue(abyte0);
            return mBluetoothGatt.writeCharacteristic(mWriteCharacteristic);
        }
    }

    public boolean writeDescripter(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, byte abyte0[])
    {
        if (bluetoothgatt == null || bluetoothgattdescriptor == null || abyte0 == null)
        {
            return false;
        } else
        {
            bluetoothgattdescriptor.setValue(abyte0);
            return bluetoothgatt.writeDescriptor(bluetoothgattdescriptor);
        }
    }

    public boolean writeDescripter(BluetoothGattDescriptor bluetoothgattdescriptor, byte abyte0[])
    {
        if (mBluetoothGatt == null || bluetoothgattdescriptor == null || abyte0 == null)
        {
            return false;
        } else
        {
            bluetoothgattdescriptor.setValue(abyte0);
            return mBluetoothGatt.writeDescriptor(bluetoothgattdescriptor);
        }
    }
}
