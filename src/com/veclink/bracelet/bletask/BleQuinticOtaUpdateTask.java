// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.quintic.libota.BluetoothLeInterface;
import com.quintic.libota.bleGlobalVariables;
import com.quintic.libota.otaManager;
import com.veclink.hw.bleservice.VLBleService;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleTask, BleCallBack

public class BleQuinticOtaUpdateTask extends BleTask
{
    private class updateInstance extends BluetoothLeInterface
    {

        final BleQuinticOtaUpdateTask this$0;

        public boolean bleInterfaceInit(BluetoothGatt bluetoothgatt)
        {
            return super.bleInterfaceInit(bluetoothgatt);
        }

        private updateInstance()
        {
            this$0 = BleQuinticOtaUpdateTask.this;
            super();
        }

    }


    public static final int ERROR_CODE = 2;
    private static final String TAG = com/veclink/bracelet/bletask/BleQuinticOtaUpdateTask.getSimpleName();
    public static final int UPDATE_DATA = 1;
    protected boolean canDoOtaUpdate;
    protected String filePath;
    private String filepath;
    private Handler mHandler;
    private boolean mStopUpdate;
    Runnable update;
    private otaManager updateManager;

    public BleQuinticOtaUpdateTask(Context context, BleCallBack blecallback, String s)
    {
        super(context, blecallback);
        updateManager = new otaManager();
        mStopUpdate = false;
        update = new Runnable() {

            final BleQuinticOtaUpdateTask this$0;

            public void run()
            {
            }

            
            {
                this$0 = BleQuinticOtaUpdateTask.this;
                super();
            }
        };
        mHandler = new Handler() {

            int byteRate;
            int elapsedTime;
            int percent;
            final BleQuinticOtaUpdateTask this$0;

            public void handleMessage(Message message)
            {
                if (Thread.currentThread().isInterrupted()) goto _L2; else goto _L1
_L1:
                message.what;
                JVM INSTR tableswitch 1 2: default 36
            //                           1 37
            //                           2 126;
                   goto _L2 _L3 _L4
_L2:
                return;
_L3:
                message = message.getData().getIntArray("UPDATE_DATA");
                percent = message[0];
                byteRate = message[1];
                elapsedTime = message[2];
                bleCallBack.sendOnProgressMessage(Integer.valueOf(percent));
                if (percent == 100)
                {
                    mStopUpdate = true;
                    mHandler.postDelayed(new Runnable() {

                        final _cls2 this$1;

                        public void run()
                        {
                            bleCallBack.sendOnFinishMessage(Integer.valueOf(100));
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    }, 2000L);
                    return;
                }
                if (true) goto _L2; else goto _L4
_L4:
                bleCallBack.sendOnFialedMessage(Integer.valueOf(0));
                return;
            }

            
            {
                this$0 = BleQuinticOtaUpdateTask.this;
                super();
                percent = 0;
                byteRate = 0;
                elapsedTime = 0;
            }
        };
        filepath = s;
    }

    private void SendUpdateMsg(int i, String s, String s1)
    {
        Message message = new Message();
        message.what = i;
        message.getData().putString(s, s1);
        if (mHandler != null)
        {
            mHandler.sendMessage(message);
        }
    }

    private void SendUpdateMsg(int i, String s, int ai[])
    {
        Message message = new Message();
        message.what = i;
        message.getData().putIntArray(s, ai);
        if (mHandler != null)
        {
            mHandler.sendMessage(message);
        }
    }

    private static String generateDisplayMsg(String s, int i, int j)
    {
        return new String((new StringBuilder()).append(s).append("\n").append(i).append(" s").append("\n").append(j).append(" Bps").toString());
    }

    private boolean isOtaServiceSupported()
    {
        return mBluetoothLeService.getmBluetoothGatt().getService(bleGlobalVariables.UUID_QUINTIC_OTA_SERVICE) != null;
    }

    private static String otaError2String(com.quintic.libota.bleGlobalVariables.otaResult otaresult)
    {
        static class _cls3
        {

            static final int $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[];

            static 
            {
                $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult = new int[com.quintic.libota.bleGlobalVariables.otaResult.values().length];
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_PKT_CHECKSUM_ERROR.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_PKT_LEN_ERROR.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_DEVICE_NOT_SUPPORT_OTA.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_FW_SIZE_ERROR.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_FW_VERIFY_ERROR.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_OPEN_FIRMWAREFILE_ERROR.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_META_RESPONSE_TIMEOUT.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_DATA_RESPONSE_TIMEOUT.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_SEND_META_ERROR.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_RECEIVED_INVALID_PACKET.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$quintic$libota$bleGlobalVariables$otaResult[com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_INVALID_ARGUMENT.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls3..SwitchMap.com.quintic.libota.bleGlobalVariables.otaResult[otaresult.ordinal()])
        {
        default:
            return "Unknown error";

        case 1: // '\001'
            return "SUCCESS";

        case 2: // '\002'
            return "Transmission is failed,firmware checksum error";

        case 3: // '\003'
            return "Transmission is failed,packet length error";

        case 4: // '\004'
            return "The OTA function is disabled by the server";

        case 5: // '\005'
            return "Transmission is failed,firmware file size error";

        case 6: // '\006'
            return "Transmission is failed,verify failed";

        case 7: // '\007'
            return "Open firmware file failed";

        case 8: // '\b'
            return "Wait meta packet response timeout";

        case 9: // '\t'
            return "Wait data packet response timeout";

        case 10: // '\n'
            return "Send meta data error";

        case 11: // '\013'
            return "Transmission is failed,received invalid packet";
        }
    }

    public void deviceConnected()
    {
        super.deviceConnected();
    }

    public void deviceDisConnect()
    {
        super.deviceDisConnect();
        updateManager.otaStop();
        mStopUpdate = true;
        SendUpdateMsg(2, "ERROR_CODE", "disConnect");
    }

    public void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        super.deviceOnCharacteristicChange(bluetoothgatt, bluetoothgattcharacteristic);
        bluetoothgatt = bluetoothgattcharacteristic.getValue();
        updateManager.otaGetResult(bluetoothgatt);
    }

    public void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        super.deviceOnCharacteristicRead(bluetoothgatt, bluetoothgattcharacteristic, i);
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        super.deviceOnCharacteristicWrite(bluetoothgatt, bluetoothgattcharacteristic, i);
        if (i == 0)
        {
            updateManager.notifyWriteDataCompleted();
            return;
        } else
        {
            SendUpdateMsg(2, "ERROR_CODE", (new StringBuilder()).append("Gatt write fail,errCode:").append(String.valueOf(i)).toString());
            mStopUpdate = true;
            return;
        }
    }

    public void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
        super.deviceOnServicesDiscovered(bluetoothgatt, i);
    }

    public void doWork()
    {
        startOtaUpdate(filepath);
    }

    public void startOtaUpdate(String s)
    {
        Log.e(TAG, "canDoOtaUpdate otaStart");
        updateInstance updateinstance = new updateInstance();
        updateinstance.bleInterfaceInit(mBluetoothLeService.getmBluetoothGatt());
        if (updateManager.otaStart(s, updateinstance) == com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS)
        {
            mStopUpdate = false;
            s = new int[8];
            do
            {
                if (mStopUpdate)
                {
                    break;
                }
                try
                {
                    Thread.sleep(100L);
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((InterruptedException) (obj)).printStackTrace();
                }
                if (!Thread.currentThread().isInterrupted())
                {
                    Object obj = updateManager.otaGetProcess(s);
                    if (obj == com.quintic.libota.bleGlobalVariables.otaResult.OTA_RESULT_SUCCESS)
                    {
                        SendUpdateMsg(1, "UPDATE_DATA", s);
                    } else
                    {
                        updateManager.otaStop();
                        mStopUpdate = true;
                        SendUpdateMsg(2, "ERROR_CODE", otaError2String(((com.quintic.libota.bleGlobalVariables.otaResult) (obj))));
                    }
                }
            } while (true);
        } else
        {
            Log.e(TAG, "onListItemClick:Faild to otaStart");
        }
    }



/*
    static boolean access$102(BleQuinticOtaUpdateTask blequinticotaupdatetask, boolean flag)
    {
        blequinticotaupdatetask.mStopUpdate = flag;
        return flag;
    }

*/

}
