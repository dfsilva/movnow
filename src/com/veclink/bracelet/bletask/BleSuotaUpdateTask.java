// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import com.veclink.hw.bleservice.DeviceReponseObserver;
import com.veclink.hw.bleservice.VLBleService;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Keeper;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleCallBack, SuotaUpdateHelper

public class BleSuotaUpdateTask
    implements DeviceReponseObserver
{

    protected static VLBleService mBluetoothLeService;
    public static DeviceReponseObserver observer;
    protected BleCallBack bleCallBack;
    private boolean canUpdate;
    private String filePath;
    private Context mContext;
    private String mDeviceAddress;
    private SuotaUpdateHelper updateHelper;

    public BleSuotaUpdateTask(Context context, BleCallBack blecallback, String s)
    {
        filePath = s;
        bleCallBack = blecallback;
        mContext = context;
        mDeviceAddress = Keeper.getBindDeviceMacAddress(mContext);
    }

    public static void unregisterObserver()
    {
        if (mBluetoothLeService != null)
        {
            mBluetoothLeService.unRegisterObserver(observer);
        }
    }

    private void waitSleep(int i)
    {
        long l = i;
        try
        {
            Thread.sleep(l);
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
        }
    }

    public void deviceConnected()
    {
    }

    public void deviceDisConnect()
    {
        bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
    }

    public void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (bluetoothgattcharacteristic.getUuid().equals(SuotaUpdateHelper.SPOTA_SERV_STATUS_UUID))
        {
            updateHelper.onSuotaServiceStatusChange(bluetoothgattcharacteristic);
        } else
        if (bluetoothgattcharacteristic.getUuid().equals(mBluetoothLeService.UUID_BLE_SHIELD_RX))
        {
            parseData(bluetoothgattcharacteristic.getValue());
            return;
        }
    }

    public void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        if (i == 0 && canUpdate)
        {
            updateHelper.onCharacteristicRead(bluetoothgattcharacteristic);
        }
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        if (canUpdate)
        {
            updateHelper.onCharacteristicWriteStatus(i);
        }
    }

    public void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
        if (i == 0)
        {
            updateHelper.onServicesReady(true);
            return;
        } else
        {
            updateHelper.onServicesReady(false);
            return;
        }
    }

    public void doWork()
    {
        (new Thread() {

            final BleSuotaUpdateTask this$0;

            public void run()
            {
                BleSuotaUpdateTask.mBluetoothLeService = VLBleServiceManager.getInstance().getVLBleService();
                if (BleSuotaUpdateTask.mBluetoothLeService == null)
                {
                    bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
                    return;
                }
                bleCallBack.sendOnStartMessage(Integer.valueOf(0));
                registerObserver();
                updateHelper = new SuotaUpdateHelper(BleSuotaUpdateTask.mBluetoothLeService, filePath, bleCallBack, mDeviceAddress);
                sendCmdToBleDevice(new byte[] {
                    90, 17, 0
                });
                waitResponse(5000);
                if (canUpdate)
                {
                    Debug.logBle("\u7A0B\u5E8F\u5F00\u59CB\u6267\u884C\u5347\u7EA7");
                    updateHelper.onServicesReady(true);
                    waitSleep(500);
                    updateHelper.suotaReadImageData(filePath);
                    waitSleep(500);
                    updateHelper.suotaUpdateStart();
                    return;
                } else
                {
                    Debug.logBle("\u53D1\u9001\u51C6\u5907\u5347\u7EA7\u547D\u4EE4\u6CA1\u6709\u56DE\u5E94\uFF0C\u5347\u7EA7\u5931\u8D25");
                    bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
                    return;
                }
            }

            
            {
                this$0 = BleSuotaUpdateTask.this;
                super();
            }
        }).start();
    }

    protected void parseData(byte abyte0[])
    {
        if (abyte0.length == 4 && abyte0[0] == 91 && abyte0[1] == 17 && abyte0[2] == 0 && abyte0[3] == 1)
        {
            canUpdate = true;
            Debug.logBle("\u6536\u5230\u51C6\u5907\u5347\u7EA7\u6210\u529F\u56DE\u5E94");
            return;
        } else
        {
            canUpdate = false;
            return;
        }
    }

    public void registerObserver()
    {
        observer = this;
        if (mBluetoothLeService != null)
        {
            mBluetoothLeService.registerObserver(this);
        }
    }

    public void sendCmdToBleDevice(byte abyte0[])
    {
        BluetoothGattCharacteristic bluetoothgattcharacteristic = (BluetoothGattCharacteristic)mBluetoothLeService.characteristicMap.get(mBluetoothLeService.UUID_BLE_SHIELD_TX);
        bluetoothgattcharacteristic.setValue(abyte0);
        mBluetoothLeService.writeCharacteristic(bluetoothgattcharacteristic);
    }

    public boolean waitResponse(int i)
    {
        i /= 10;
        do
        {
            i--;
            if (i <= 0 || canUpdate)
            {
                break;
            }
            try
            {
                Thread.sleep(10L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        } while (true);
        return i > 0;
    }



/*
    static SuotaUpdateHelper access$002(BleSuotaUpdateTask blesuotaupdatetask, SuotaUpdateHelper suotaupdatehelper)
    {
        blesuotaupdatetask.updateHelper = suotaupdatehelper;
        return suotaupdatehelper;
    }

*/




}
