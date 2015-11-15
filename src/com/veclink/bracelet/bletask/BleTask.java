// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import com.veclink.hw.bledevice.BaseBleDevice;
import com.veclink.hw.bledevice.BraceletNewDevice;
import com.veclink.hw.bledevice.BraceletOldDevice;
import com.veclink.hw.bledevice.WaterCupDevice;
import com.veclink.hw.bleservice.DeviceReponseObserver;
import com.veclink.hw.bleservice.VLBleService;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.profile.OldBraceletGattAttributes;
import com.veclink.hw.bleservice.profile.WaterCupGattAttributes;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.Keeper;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleCallBack

public abstract class BleTask
    implements Runnable, DeviceReponseObserver
{

    public static final int CONNECT_TIMEOUT_ERROR = -100;
    public static final int DEVICE_NO_RESPONSE_ERROR = -101;
    public static final int PARSE_FIAL = -99;
    public static final int PARSE_SUCCESS = 0;
    public static final String TAG = "BleTask";
    public static final int USER_STOP_TASK = -102;
    protected static BluetoothAdapter mBluetoothAdapter;
    public static ExecutorService taskExecutorService;
    public static boolean updateing;
    private final long CONNECT_BLEDEVICE_TIMEOUT = 8000L;
    private final long CONNECT_BLESERVICE_TIMEOUT = 10000L;
    protected final long TRANSPORT_DATA_TIME = 20000L;
    protected BleCallBack bleCallBack;
    protected BaseBleDevice bleDeviceProfile;
    private BleTask bleTask;
    protected boolean isConnected;
    protected boolean isStopTask;
    protected VLBleService mBluetoothLeService;
    protected Context mContext;
    protected String mDeviceAddress;
    protected boolean mDeviceRespondOk;
    protected byte receiveDataArray[];

    public BleTask(Context context, BleCallBack blecallback)
    {
        mContext = context;
        bleCallBack = blecallback;
        mDeviceAddress = Keeper.getBindDeviceMacAddress(context);
        mBluetoothLeService = VLBleServiceManager.getInstance().getVLBleService();
        if (mBluetoothAdapter == null)
        {
            mBluetoothAdapter = ((BluetoothManager)mContext.getSystemService("bluetooth")).getAdapter();
        }
        if ((VLBleServiceManager.gattAttributes instanceof OldBraceletGattAttributes) || Keeper.getChangeToOldProtocol(context))
        {
            bleDeviceProfile = new BraceletOldDevice(context);
            return;
        }
        if (VLBleServiceManager.gattAttributes instanceof WaterCupGattAttributes)
        {
            bleDeviceProfile = new WaterCupDevice(context);
            return;
        } else
        {
            bleDeviceProfile = new BraceletNewDevice(context);
            return;
        }
    }

    public void deviceConnected()
    {
        isConnected = true;
    }

    public void deviceDisConnect()
    {
        isConnected = false;
    }

    public void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        receiveDataArray = bluetoothgattcharacteristic.getValue();
        if (parseData(receiveDataArray) == 0)
        {
            mDeviceRespondOk = true;
        }
    }

    public void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
    }

    public void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
    }

    public abstract void doWork();

    protected int parseData(byte abyte0[])
    {
        if (abyte0 != null)
        {
            Debug.logBle(Helper.bytesToHexString(abyte0));
        }
        return 0;
    }

    public void registerObserver()
    {
        bleTask = this;
        if (mBluetoothLeService != null)
        {
            mBluetoothLeService.registerObserver(bleTask);
        }
    }

    public void run()
    {
        long l = System.currentTimeMillis();
        if (!mBluetoothAdapter.isEnabled())
        {
            Debug.logBle("\u6CA1\u6709\u5F00\u542F\u84DD\u7259\uFF0C\u4EFB\u52A1\u5931\u8D25\uFF01");
            unregisterObserver();
            bleCallBack.sendOnFialedMessage(Integer.valueOf(-100));
            isConnected = false;
            return;
        }
        while (mBluetoothLeService == null) 
        {
            mBluetoothLeService = VLBleServiceManager.getInstance().getVLBleService();
            if (System.currentTimeMillis() - l > 10000L)
            {
                Debug.logBle("\u8FDE\u63A5bleservice\uFF0C\u8D85\u65F6\uFF0C\u4EFB\u52A1\u5931\u8D25");
                unregisterObserver();
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-100));
                return;
            }
        }
        l = System.currentTimeMillis();
        isConnected = mBluetoothLeService.isConnected();
        while (!isConnected) 
        {
            mBluetoothLeService.disconnect();
            mBluetoothLeService.close();
            isConnected = mBluetoothLeService.connect(mDeviceAddress);
            Debug.logBle("\u8FDE\u63A5\u84DD\u7259\u8BBE\u5907isConnected");
            if (System.currentTimeMillis() - l > 8000L)
            {
                Debug.logBle("\u8FDE\u63A5\u84DD\u7259\u8BBE\u5907\u8D85\u65F6\uFF0C\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-100));
                unregisterObserver();
                return;
            }
        }
        BluetoothGattCharacteristic bluetoothgattcharacteristic = (BluetoothGattCharacteristic)mBluetoothLeService.characteristicMap.get(mBluetoothLeService.UUID_BLE_SHIELD_TX);
        l = System.currentTimeMillis();
        while (bluetoothgattcharacteristic == null) 
        {
            if (System.currentTimeMillis() - l > 8000L)
            {
                BluetoothGattCharacteristic bluetoothgattcharacteristic1 = (BluetoothGattCharacteristic)mBluetoothLeService.characteristicMap.get(mBluetoothLeService.UUID_BLE_SHIELD_TX);
                Debug.logBle("\u83B7\u53D6\u8BFB\u5199\u670D\u52A1\u8D85\u65F6\uFF0C\u4EFB\u52A1\u5931\u8D25");
                bleCallBack.sendOnFialedMessage(Integer.valueOf(-100));
                isConnected = false;
                if (mContext instanceof Activity)
                {
                    VLBleServiceManager.getInstance().unBindService(((Activity)mContext).getApplication());
                    VLBleServiceManager.getInstance().bindService(((Activity)mContext).getApplication(), VLBleServiceManager.gattAttributes);
                }
                unregisterObserver();
                return;
            }
        }
        registerObserver();
        bleCallBack.sendOnStartMessage(Integer.valueOf(0));
        doWork();
        unregisterObserver();
    }

    public void sendCmdToBleDevice(byte abyte0[])
    {
        BluetoothGattCharacteristic bluetoothgattcharacteristic = (BluetoothGattCharacteristic)mBluetoothLeService.characteristicMap.get(mBluetoothLeService.UUID_BLE_SHIELD_TX);
        if (bluetoothgattcharacteristic == null || !isConnected)
        {
            Debug.logBle("characteristic is null sendCmdToBleDevice fial");
            return;
        } else
        {
            bluetoothgattcharacteristic.setValue(abyte0);
            mBluetoothLeService.writeCharacteristic(bluetoothgattcharacteristic);
            return;
        }
    }

    public void stopSyncTask()
    {
        isStopTask = false;
        unregisterObserver();
    }

    public void unregisterObserver()
    {
        if (mBluetoothLeService != null)
        {
            mBluetoothLeService.unRegisterObserver(bleTask);
        }
    }

    public boolean waitResponse(int i)
    {
        i /= 10;
        do
        {
            i--;
            if (i <= 0 || mDeviceRespondOk)
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

    public void work()
    {
        if (taskExecutorService == null || updateing)
        {
            return;
        }
        try
        {
            taskExecutorService.execute(this);
            return;
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            taskExecutorService = Executors.newSingleThreadExecutor();
        }
        taskExecutorService.execute(this);
    }
}
