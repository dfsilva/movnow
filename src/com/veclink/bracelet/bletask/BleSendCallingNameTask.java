// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import com.veclink.hw.bledevice.BraceletNewDevice;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleSendCallingNameTask extends BleTask
{

    private BraceletNewDevice braceletNewDevice;
    private byte msgContentByteArray[];

    public BleSendCallingNameTask(Context context, byte abyte0[])
    {
        super(context, new BleCallBack());
        msgContentByteArray = abyte0;
        braceletNewDevice = (BraceletNewDevice)bleDeviceProfile;
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        if (i == 0)
        {
            mDeviceRespondOk = true;
        }
    }

    public void doWork()
    {
        mDeviceRespondOk = false;
        byte abyte0[] = braceletNewDevice.createSendNameCmdArray(msgContentByteArray);
        Debug.logBle((new StringBuilder()).append("\u53D1\u9001\u8054\u7CFB\u4EBA\u540D\u5B57\u6307\u4EE4\uFF1A").append(Helper.bytesToHexString(abyte0)).toString());
        sendCmdToBleDevice(abyte0);
        mDeviceRespondOk = false;
        waitResponse(2000);
        Debug.logBle("sync wait for device response syncparams cmd");
        if (!mDeviceRespondOk)
        {
            Debug.logBle("\u8BBE\u5907\u65E0\u76F8\u5E94\uFF0C\u53D1\u9001\u8054\u7CFB\u4EBA\u540D\u5B57\u6307\u4EE4\u4EFB\u52A1\u6267\u884C\u5931\u8D25");
            return;
        } else
        {
            Debug.logBle("\u53D1\u9001\u8054\u7CFB\u4EBA\u540D\u5B57\u6307\u4EE4   \u4EFB\u52A1\u6267\u884C\u6210\u529F");
            return;
        }
    }
}
