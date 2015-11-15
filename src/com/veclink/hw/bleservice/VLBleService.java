// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import com.veclink.bracelet.bletask.BleAppConfirmBindSuccess;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.SuotaUpdateHelper;
import com.veclink.hw.bleservice.profile.BaseGattAttributes;
import com.veclink.hw.bleservice.profile.BraceletGattAttributes;
import com.veclink.hw.bleservice.profile.RemoteControlGattAttributes;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.veclink.hw.bleservice:
//            DeviceReponseObserver, VLBleServiceManager, ControlPlayer

public class VLBleService extends Service
    implements DeviceReponseObserver
{
    private class AutoConnectThread extends Thread
    {

        private boolean stopTask;
        final VLBleService this$0;

        public void run()
        {
            onFindSupportService = false;
_L4:
            if (onFindSupportService || stopTask || !autoReConnect) goto _L2; else goto _L1
_L1:
            Debug.logBle("vlbservice \u6B63\u5728\u5C1D\u8BD5\u91CD\u8FDE\u8BBE\u5907");
            if (!Keeper.getBindDeviceMacAddress(getApplicationContext()).equals("")) goto _L3; else goto _L2
_L2:
            autoConnectThread = null;
            return;
_L3:
            connect(Keeper.getBindDeviceMacAddress(getApplicationContext()));
            Thread.sleep(10000L);
            if (!onFindSupportService)
            {
                sendDeviceDisConnectMsg();
            }
              goto _L4
            InterruptedException interruptedexception;
            interruptedexception;
            interruptedexception.printStackTrace();
              goto _L2
        }

        public void stopTask()
        {
            stopTask = true;
        }

        private AutoConnectThread()
        {
            this$0 = VLBleService.this;
            super();
        }

    }

    class BluetoothBroadcastReceiver extends BroadcastReceiver
    {

        final VLBleService this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) goto _L2; else goto _L1
_L1:
            context.startService(new Intent(context, com/veclink/hw/bleservice/VLBleService));
_L4:
            return;
_L2:
            if (mBluetoothAdapter != null)
            {
                bluetoothEnable = mBluetoothAdapter.isEnabled();
            }
            Log.w(VLBleService.TAG, (new StringBuilder()).append("BluetoothBroadcastReceiver bluetoothEnable = ").append(bluetoothEnable).toString());
            if (bluetoothEnable)
            {
                continue; /* Loop/switch isn't completed */
            }
            sendDeviceDisConnectMsg();
            disconnect();
            close();
            if (autoConnectThread == null) goto _L4; else goto _L3
_L3:
            autoConnectThread.stopTask();
            return;
            if (!autoReConnect || !bluetoothEnable) goto _L4; else goto _L5
_L5:
            if (autoConnectThread != null)
            {
                autoConnectThread.stopTask();
            }
            autoConnectThread = new AutoConnectThread();
            autoConnectThread.start();
            return;
        }

        BluetoothBroadcastReceiver()
        {
            this$0 = VLBleService.this;
            super();
        }
    }

    public class LocalBinder extends Binder
    {

        final VLBleService this$0;

        public VLBleService getService()
        {
            return VLBleService.this;
        }

        public LocalBinder()
        {
            this$0 = VLBleService.this;
            super();
        }
    }


    public static final String ACTION_DATA_AVAILABLE = "ACTION_DATA_AVAILABLE";
    public static final String ACTION_DEVICE_FIND_PHONE = "ACTION_DEVICE_FIND_PHONE";
    public static final String ACTION_DIAL_FAMILY_NUMBERS = "ACTION_DIAL_FAMILY_NUMBERS";
    public static final String ACTION_GATT_CONNECTED = "ACTION_GATT_CONNECTED";
    public static final String ACTION_GATT_DISCONNECTED = "ACTION_GATT_DISCONNECTED";
    public static final String ACTION_GATT_RSSI = "ACTION_GATT_RSSI";
    public static final String ACTION_GATT_SERVICES_DISCOVERED = "ACTION_GATT_SERVICES_DISCOVERED";
    public static final String ACTION_HANDOFF_COMINGCALL = "ACTION_HANDOFF_COMINGCALL";
    public static final String ACTION_LONGSIITING_REMIND = "ACTION_LONGSIITING_REMIND";
    public static final String ACTION_POWER_CHANGE_DATA = "ACTION_POWER_CHANGE_DATA";
    public static final String ACTION_SHORT_SPORT_DATA = "ACTION_SHORT_SPORT_DATA";
    public static final String ACTION_USER_HAD_CLICK_DEVICE = "ACTION_USER_HAD_CLICK_DEVICE";
    public static final String CAMERA_CTR_ACTION = "net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION";
    public static final String EXTRA_DATA = "EXTRA_DATA";
    private static final String TAG = com/veclink/hw/bleservice/VLBleService.getSimpleName();
    public UUID UUID_BLE_SHIELD_RX;
    public UUID UUID_BLE_SHIELD_SERVICE;
    public UUID UUID_BLE_SHIELD_TX;
    private AutoConnectThread autoConnectThread;
    private boolean autoReConnect;
    private BluetoothBroadcastReceiver bluetoothBroadcastReceiver;
    private boolean bluetoothEnable;
    public Map characteristicMap;
    private ControlPlayer controlPlayer;
    private BaseDeviceProduct deviceProduct;
    Handler handler;
    private boolean isConnected;
    private final IBinder mBinder = new LocalBinder();
    private BluetoothAdapter mBluetoothAdapter;
    private String mBluetoothDeviceAddress;
    public BluetoothGatt mBluetoothGatt;
    private BluetoothManager mBluetoothManager;
    private final BluetoothGattCallback mGattCallback = new BluetoothGattCallback() {

        final VLBleService this$0;

        public void onCharacteristicChanged(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
        {
            byte abyte0[];
            abyte0 = bluetoothgattcharacteristic.getValue();
            Debug.logBleByTag((new StringBuilder()).append("VLBleService data onCharacteristicChanged :").append(Thread.currentThread().getId()).toString(), Helper.bytesToHexString(abyte0));
            deviceOnCharacteristicChange(bluetoothgatt, bluetoothgattcharacteristic);
            if (abyte0 == null) goto _L2; else goto _L1
_L1:
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 13 || abyte0[2] != 0 || abyte0[3] != 1) goto _L2; else goto _L3
_L3:
            broadcastUpdate("ACTION_SHORT_SPORT_DATA", bluetoothgattcharacteristic);
_L4:
            if (controlPlayer == null)
            {
                break MISSING_BLOCK_LABEL_823;
            }
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_561;
            }
            break MISSING_BLOCK_LABEL_108;
_L2:
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 13 || abyte0[2] != 0 || abyte0[3] != 3)
            {
                break MISSING_BLOCK_LABEL_218;
            }
            broadcastUpdate("ACTION_POWER_CHANGE_DATA", bluetoothgattcharacteristic);
              goto _L4
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 18)
            {
                break MISSING_BLOCK_LABEL_561;
            }
            try
            {
                controlPlayer.sendKeyCtroPlayAciton(85);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (BluetoothGatt bluetoothgatt)
            {
                Debug.logBle(bluetoothgatt.toString());
            }
            bluetoothgatt.printStackTrace();
            return;
            if (abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 1 && abyte0[3] != 17)
            {
                break MISSING_BLOCK_LABEL_265;
            }
            sendCameraCtr();
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_322;
            }
            if (abyte0.length <= 4 || abyte0[0] != 90 || abyte0[1] != 11 || abyte0[2] != 0 || abyte0[3] != 2 || abyte0[4] != 0)
            {
                break MISSING_BLOCK_LABEL_322;
            }
            broadcastUpdate("ACTION_USER_HAD_CLICK_DEVICE");
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_374;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 16)
            {
                break MISSING_BLOCK_LABEL_374;
            }
            broadcastUpdate("ACTION_DEVICE_FIND_PHONE");
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_426;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 22)
            {
                break MISSING_BLOCK_LABEL_426;
            }
            broadcastUpdate("ACTION_DIAL_FAMILY_NUMBERS");
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_478;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 25)
            {
                break MISSING_BLOCK_LABEL_478;
            }
            broadcastUpdate("ACTION_HANDOFF_COMINGCALL");
              goto _L4
            if (abyte0 == null) goto _L6; else goto _L5
_L5:
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 129) goto _L6; else goto _L7
_L7:
            broadcastUpdate("ACTION_LONGSIITING_REMIND");
              goto _L4
_L6:
            if (!bluetoothgattcharacteristic.getUuid().equals(UUID_BLE_SHIELD_RX)) goto _L4; else goto _L8
_L8:
            broadcastUpdate("ACTION_DATA_AVAILABLE", bluetoothgattcharacteristic);
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_614;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 19)
            {
                break MISSING_BLOCK_LABEL_614;
            }
            controlPlayer.sendKeyCtroPlayAciton(85);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_667;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 20)
            {
                break MISSING_BLOCK_LABEL_667;
            }
            controlPlayer.sendKeyCtroPlayAciton(88);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_720;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 21)
            {
                break MISSING_BLOCK_LABEL_720;
            }
            controlPlayer.sendKeyCtroPlayAciton(87);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_772;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 23)
            {
                break MISSING_BLOCK_LABEL_772;
            }
            controlPlayer.controVolume(1);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_823;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 24)
            {
                break MISSING_BLOCK_LABEL_823;
            }
            controlPlayer.controVolume(-1);
        }

        public void onCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
        {
            if (i == 0)
            {
                broadcastUpdate("ACTION_DATA_AVAILABLE", bluetoothgattcharacteristic);
                deviceOnCharacteristicRead(bluetoothgatt, bluetoothgattcharacteristic, i);
                Debug.logBleByTag("VLBleService newdatareveive:", Helper.bytesToHexString(bluetoothgattcharacteristic.getValue()));
            }
        }

        public void onCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
        {
            deviceOnCharacteristicWrite(bluetoothgatt, bluetoothgattcharacteristic, i);
        }

        public void onConnectionStateChange(BluetoothGatt bluetoothgatt, int i, int j)
        {
            if (j != 2) goto _L2; else goto _L1
_L1:
            Debug.logBleByTag(VLBleService.TAG, "Connected to GATT server.");
            if (mBluetoothGatt != null) goto _L4; else goto _L3
_L3:
            connect(Keeper.getBindDeviceMacAddress(getApplicationContext()));
_L6:
            return;
_L4:
            Debug.logBleByTag(VLBleService.TAG, (new StringBuilder()).append("Attempting to start service discovery:").append(mBluetoothGatt.discoverServices()).toString());
            handler.postDelayed(new Runnable() {

                final _cls1 this$1;

                public void run()
                {
                    if (!onFindSupportService)
                    {
                        Debug.logBle("10\u79D2\u540E\u6CA1\u53D1\u73B0\u670D\u52A1\uFF0C\u81EA\u52A8\u65AD\u5F00");
                        disconnect();
                        close();
                        sendDeviceDisConnectMsg();
                    }
                }

            
            {
                this$1 = _cls1.this;
                super();
            }
            }, 10000L);
            return;
_L2:
            if (j == 0)
            {
                isConnected = false;
                Debug.logBleByTag(VLBleService.TAG, (new StringBuilder()).append("autoReConnect:").append(autoReConnect).append(" bluetoothEnable: ").append(bluetoothEnable).toString());
                if (autoReConnect && bluetoothEnable)
                {
                    if (autoConnectThread == null)
                    {
                        autoConnectThread = new AutoConnectThread();
                        autoConnectThread.start();
                        return;
                    }
                } else
                {
                    sendDeviceDisConnectMsg();
                    return;
                }
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void onReadRemoteRssi(BluetoothGatt bluetoothgatt, int i, int j)
        {
            Log.w(VLBleService.TAG, (new StringBuilder()).append("onReadRemoteRssi received rssi is ").append(i).append(" status is ").append(j).toString());
            if (j == 0)
            {
                broadcastUpdate("ACTION_GATT_RSSI", i);
            }
        }

        public void onServicesDiscovered(final BluetoothGatt gatt, int i)
        {
            if (i == 0)
            {
                Debug.logBleByTag(VLBleService.TAG, (new StringBuilder()).append("onServicesDiscovered success: ").append(i).toString());
                Debug.logBleByTag(VLBleService.TAG, (new StringBuilder()).append("UserHasBindBand  ").append(Keeper.getUserHasBindBand(getApplicationContext())).toString());
                getGattService(getOneSupportedGattService());
                isConnected = true;
                broadcastUpdate("ACTION_GATT_CONNECTED");
                deviceConnected();
                onFindSupportService = true;
                deviceProduct = DeviceProductFactory.createDeviceProduct(Keeper.getDeviceType(getApplicationContext()));
                if (deviceProduct.controlPlayer)
                {
                    controlPlayer = new ControlPlayer(getApplicationContext(), handler);
                }
                if (deviceProduct.bindDeviceWay == 1 && Keeper.getUserHasBindBand(getApplicationContext()))
                {
                    handler.postDelayed(i. new Runnable() {

                        final _cls1 this$1;
                        final BluetoothGatt val$gatt;
                        final int val$status;

                        public void run()
                        {
                            (new BleAppConfirmBindSuccess(getApplicationContext(), new BleCallBack(new Handler()))).work();
                            deviceOnServicesDiscovered(gatt, status);
                        }

            
            {
                this$1 = final__pcls1;
                gatt = bluetoothgatt;
                status = I.this;
                super();
            }
                    }, 1000L);
                } else
                {
                    deviceOnServicesDiscovered(gatt, i);
                }
                broadcastUpdate("ACTION_GATT_SERVICES_DISCOVERED");
                return;
            } else
            {
                Log.w(VLBleService.TAG, (new StringBuilder()).append("onServicesDiscovered received: ").append(i).toString());
                return;
            }
        }

            
            {
                this$0 = VLBleService.this;
                super();
            }
    };
    private List observerList;
    private boolean onFindSupportService;
    PowerManager pm;
    android.os.PowerManager.WakeLock wl;

    public VLBleService()
    {
        observerList = new ArrayList();
        characteristicMap = new HashMap();
        BaseGattAttributes basegattattributes = VLBleServiceManager.gattAttributes;
        UUID_BLE_SHIELD_TX = UUID.fromString(BaseGattAttributes.BLE_SHIELD_TX);
        basegattattributes = VLBleServiceManager.gattAttributes;
        UUID_BLE_SHIELD_RX = UUID.fromString(BaseGattAttributes.BLE_SHIELD_RX);
        basegattattributes = VLBleServiceManager.gattAttributes;
        UUID_BLE_SHIELD_SERVICE = UUID.fromString(BaseGattAttributes.BLE_SHIELD_SERVICE);
        autoReConnect = false;
        bluetoothBroadcastReceiver = new BluetoothBroadcastReceiver();
        bluetoothEnable = true;
        handler = new Handler();
    }

    private void broadcastUpdate(String s)
    {
        sendBroadcast(new Intent(s));
    }

    private void broadcastUpdate(String s, int i)
    {
        s = new Intent(s);
        s.putExtra("EXTRA_DATA", String.valueOf(i));
        sendBroadcast(s);
    }

    private void broadcastUpdate(String s, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        Intent intent = new Intent(s);
        if (UUID_BLE_SHIELD_RX.equals(bluetoothgattcharacteristic.getUuid()))
        {
            bluetoothgattcharacteristic = bluetoothgattcharacteristic.getValue();
            if (s.equals("ACTION_SHORT_SPORT_DATA") && bluetoothgattcharacteristic.length > 7)
            {
                int i = bytesToInt(new byte[] {
                    bluetoothgattcharacteristic[4], bluetoothgattcharacteristic[5], bluetoothgattcharacteristic[6], bluetoothgattcharacteristic[7]
                });
                Debug.logBleByTag("VLBleService sendACTION_SHORT_SPORT_DATA:", (new StringBuilder()).append(i).append("").toString());
                intent.putExtra("EXTRA_DATA", i);
            } else
            if (s.equals("ACTION_POWER_CHANGE_DATA"))
            {
                int j = bluetoothgattcharacteristic[4] & 0xff;
                Debug.logBleByTag("VLBleService ACTION_POWER_CHANGE_DATA:", (new StringBuilder()).append(j).append("").toString());
                intent.putExtra("EXTRA_DATA", j);
            } else
            {
                intent.putExtra("EXTRA_DATA", bluetoothgattcharacteristic);
            }
        }
        sendBroadcast(intent);
    }

    private void getGattService(BluetoothGattService bluetoothgattservice)
    {
        if (bluetoothgattservice != null)
        {
            Debug.logBle("getGattService \u83B7\u53D6\u8BFB\u5199\u670D\u52A1");
            BluetoothGattCharacteristic bluetoothgattcharacteristic = bluetoothgattservice.getCharacteristic(UUID_BLE_SHIELD_TX);
            characteristicMap.put(bluetoothgattcharacteristic.getUuid(), bluetoothgattcharacteristic);
            bluetoothgattservice = bluetoothgattservice.getCharacteristic(UUID_BLE_SHIELD_RX);
            characteristicMap.put(bluetoothgattservice.getUuid(), bluetoothgattservice);
            if (!(VLBleServiceManager.gattAttributes instanceof RemoteControlGattAttributes))
            {
                setCharacteristicNotification(bluetoothgattservice, true);
                readCharacteristic(bluetoothgattservice);
                return;
            }
        }
    }

    private void sendCameraCtr()
    {
        Intent intent = new Intent();
        intent.setAction("net.bestouch.caretracker.cameraCtrActivity.action.CAMERA_CTR_ACTION");
        sendBroadcast(intent);
    }

    private void sendDeviceDisConnectMsg()
    {
        Debug.logBleByTag(TAG, "Disconnected from GATT server.");
        broadcastUpdate("ACTION_GATT_DISCONNECTED");
        isConnected = false;
        deviceDisConnect();
    }

    private boolean waitResponse(int i)
    {
        i /= 10;
        do
        {
            i--;
            if (i <= 0 || isConnected)
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

    public void acquirePowerLock()
    {
        if (pm == null)
        {
            pm = (PowerManager)getSystemService("power");
            if (wl == null)
            {
                wl = pm.newWakeLock(1, "VLBleService");
                try
                {
                    wl.acquire();
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }
        }
    }

    public int bytesToInt(byte abyte0[])
    {
        return abyte0[3] & 0xff | abyte0[2] << 8 & 0xff00 | abyte0[1] << 16 & 0xff0000 | abyte0[0] << 24 & 0xff000000;
    }

    public void close()
    {
        if (mBluetoothGatt == null)
        {
            return;
        } else
        {
            mBluetoothGatt.close();
            mBluetoothGatt = null;
            return;
        }
    }

    public boolean connect(String s)
    {
        Debug.logBle((new StringBuilder()).append("connect device address is:").append(s).toString());
        onFindSupportService = false;
        if (mBluetoothAdapter == null || s == null || s.equals(""))
        {
            Log.w(TAG, "BluetoothAdapter not initialized or unspecified address.");
            isConnected = false;
            return isConnected;
        }
        if (mBluetoothGatt != null)
        {
            Debug.logBle((new StringBuilder()).append("mBluetoothGatt is not null reconnect device address is:").append(s).toString());
            return mBluetoothGatt.connect();
        }
        BluetoothDevice bluetoothdevice = mBluetoothAdapter.getRemoteDevice(s);
        if (bluetoothdevice == null)
        {
            Log.w(TAG, "Device not found.  Unable to connect.");
            isConnected = false;
            return false;
        } else
        {
            mBluetoothGatt = bluetoothdevice.connectGatt(this, false, mGattCallback);
            Log.d(TAG, "Trying to create a new connection.");
            mBluetoothDeviceAddress = s;
            return true;
        }
    }

    public void deviceConnected()
    {
        for (Iterator iterator = observerList.iterator(); iterator.hasNext(); ((DeviceReponseObserver)iterator.next()).deviceConnected()) { }
    }

    public void deviceDisConnect()
    {
        for (Iterator iterator = observerList.iterator(); iterator.hasNext(); ((DeviceReponseObserver)iterator.next()).deviceDisConnect()) { }
    }

    public void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        for (Iterator iterator = observerList.iterator(); iterator.hasNext(); ((DeviceReponseObserver)iterator.next()).deviceOnCharacteristicChange(bluetoothgatt, bluetoothgattcharacteristic)) { }
    }

    public void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        for (Iterator iterator = observerList.iterator(); iterator.hasNext(); ((DeviceReponseObserver)iterator.next()).deviceOnCharacteristicRead(bluetoothgatt, bluetoothgattcharacteristic, i)) { }
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        for (Iterator iterator = observerList.iterator(); iterator.hasNext(); ((DeviceReponseObserver)iterator.next()).deviceOnCharacteristicWrite(bluetoothgatt, bluetoothgattcharacteristic, i)) { }
    }

    public void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
        for (Iterator iterator = observerList.iterator(); iterator.hasNext(); ((DeviceReponseObserver)iterator.next()).deviceOnServicesDiscovered(bluetoothgatt, i)) { }
    }

    public void disCoverServices()
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        } else
        {
            mBluetoothGatt.discoverServices();
            return;
        }
    }

    public void disconnect()
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        } else
        {
            mBluetoothGatt.disconnect();
            isConnected = false;
            return;
        }
    }

    public BluetoothGattService getOneSupportedGattService()
    {
        Object obj2;
        if (mBluetoothGatt == null)
        {
            obj2 = null;
        } else
        if (VLBleServiceManager.gattAttributes instanceof BraceletGattAttributes)
        {
            obj2 = mBluetoothGatt.getService(UUID_BLE_SHIELD_SERVICE);
            Object obj = obj2;
            if (obj2 == null)
            {
                obj = (BraceletGattAttributes)VLBleServiceManager.gattAttributes;
                BraceletGattAttributes.setPrimaryGattAttributesConfig();
                VLBleServiceManager.gattAttributes = ((BaseGattAttributes) (obj));
                obj = VLBleServiceManager.gattAttributes;
                UUID_BLE_SHIELD_TX = UUID.fromString(BaseGattAttributes.BLE_SHIELD_TX);
                obj = VLBleServiceManager.gattAttributes;
                UUID_BLE_SHIELD_RX = UUID.fromString(BaseGattAttributes.BLE_SHIELD_RX);
                obj = VLBleServiceManager.gattAttributes;
                UUID_BLE_SHIELD_SERVICE = UUID.fromString(BaseGattAttributes.BLE_SHIELD_SERVICE);
                obj = mBluetoothGatt.getService(UUID_BLE_SHIELD_SERVICE);
            }
            obj2 = obj;
            if (obj == null)
            {
                Object obj1 = (BraceletGattAttributes)VLBleServiceManager.gattAttributes;
                BraceletGattAttributes.setSecondGattAttributesConfig();
                VLBleServiceManager.gattAttributes = ((BaseGattAttributes) (obj1));
                obj1 = VLBleServiceManager.gattAttributes;
                UUID_BLE_SHIELD_TX = UUID.fromString(BaseGattAttributes.BLE_SHIELD_TX);
                obj1 = VLBleServiceManager.gattAttributes;
                UUID_BLE_SHIELD_RX = UUID.fromString(BaseGattAttributes.BLE_SHIELD_RX);
                obj1 = VLBleServiceManager.gattAttributes;
                UUID_BLE_SHIELD_SERVICE = UUID.fromString(BaseGattAttributes.BLE_SHIELD_SERVICE);
                Debug.logBle((new StringBuilder()).append("setSecondGattAttributesConfig ").append(UUID_BLE_SHIELD_SERVICE.toString()).toString());
                return mBluetoothGatt.getService(UUID_BLE_SHIELD_SERVICE);
            }
        } else
        {
            return mBluetoothGatt.getService(UUID_BLE_SHIELD_SERVICE);
        }
        return ((BluetoothGattService) (obj2));
    }

    public List getSupportedGattServices()
    {
        if (mBluetoothGatt == null)
        {
            return null;
        } else
        {
            return mBluetoothGatt.getServices();
        }
    }

    public BluetoothGatt getmBluetoothGatt()
    {
        return mBluetoothGatt;
    }

    public boolean initialize()
    {
        if (mBluetoothManager == null)
        {
            mBluetoothManager = (BluetoothManager)getSystemService("bluetooth");
            if (mBluetoothManager == null)
            {
                Log.e(TAG, "Unable to initialize BluetoothManager.");
                return false;
            }
        }
        mBluetoothAdapter = mBluetoothManager.getAdapter();
        if (mBluetoothAdapter == null)
        {
            Log.e(TAG, "Unable to obtain a BluetoothAdapter.");
            return false;
        } else
        {
            return true;
        }
    }

    public boolean isAutoReConnect()
    {
        return autoReConnect;
    }

    public boolean isConnected()
    {
        return isConnected;
    }

    public IBinder onBind(Intent intent)
    {
        return mBinder;
    }

    public void onCreate()
    {
        super.onCreate();
        bluetoothEnable = true;
        IntentFilter intentfilter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        registerReceiver(bluetoothBroadcastReceiver, intentfilter);
        Debug.logBle("vlbservice onCreate");
    }

    public void onDestroy()
    {
        super.onDestroy();
        close();
        unregisterReceiver(bluetoothBroadcastReceiver);
        Debug.logBle("vlbservice onDestroy");
        releasePowerLock();
        sendDeviceDisConnectMsg();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.v("VLBService log", "vlbservice onStartCommand fla");
        deviceProduct = DeviceProductFactory.createDeviceProduct(Keeper.getDeviceType(getApplicationContext()));
        if (!isConnected && mBluetoothDeviceAddress != null && deviceProduct != null && deviceProduct.canShowKeptView == 0)
        {
            connect(mBluetoothDeviceAddress);
        }
        return super.onStartCommand(intent, i, j);
    }

    public boolean onUnbind(Intent intent)
    {
        close();
        return super.onUnbind(intent);
    }

    public void readCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        } else
        {
            mBluetoothGatt.readCharacteristic(bluetoothgattcharacteristic);
            return;
        }
    }

    public void readRssi()
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        } else
        {
            mBluetoothGatt.readRemoteRssi();
            return;
        }
    }

    public void registerObserver(DeviceReponseObserver devicereponseobserver)
    {
        observerList.add(devicereponseobserver);
    }

    public void releasePowerLock()
    {
        if (wl != null)
        {
            wl.release();
            wl = null;
        }
    }

    public void setAutoReConnect(boolean flag)
    {
        autoReConnect = flag;
    }

    public void setCharacteristicNotification(BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        } else
        {
            mBluetoothGatt.setCharacteristicNotification(bluetoothgattcharacteristic, flag);
            BaseGattAttributes basegattattributes = VLBleServiceManager.gattAttributes;
            bluetoothgattcharacteristic = bluetoothgattcharacteristic.getDescriptor(UUID.fromString(BaseGattAttributes.CLIENT_CHARACTERISTIC_CONFIG));
            bluetoothgattcharacteristic.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            mBluetoothGatt.writeDescriptor(bluetoothgattcharacteristic);
            return;
        }
    }

    public void setSuotaCharacteristicNotification(BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w("zznkey", "BluetoothAdapter not initialized");
        } else
        if (SuotaUpdateHelper.SPOTA_SERV_STATUS_UUID.equals(bluetoothgattcharacteristic.getUuid()))
        {
            mBluetoothGatt.setCharacteristicNotification(bluetoothgattcharacteristic, flag);
            Object obj = VLBleServiceManager.gattAttributes;
            obj = bluetoothgattcharacteristic.getDescriptor(UUID.fromString(BaseGattAttributes.CLIENT_CHARACTERISTIC_CONFIG));
            if (obj == null)
            {
                Log.i("zznkey", "setCharacteristicNotification:descriptor = null");
                return;
            }
            if (flag)
            {
                bluetoothgattcharacteristic = BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE;
            } else
            {
                bluetoothgattcharacteristic = new byte[2];
                BluetoothGattCharacteristic _tmp = bluetoothgattcharacteristic;
                bluetoothgattcharacteristic[0] = 0;
                bluetoothgattcharacteristic[1] = 0;
            }
            ((BluetoothGattDescriptor) (obj)).setValue(bluetoothgattcharacteristic);
            flag = mBluetoothGatt.writeDescriptor(((BluetoothGattDescriptor) (obj)));
            Log.i("zznkey", (new StringBuilder()).append("setCharacteristicNotification:result = ").append(flag).toString());
            return;
        }
    }

    public void unRegisterAllObserver()
    {
        observerList.clear();
    }

    public void unRegisterObserver(DeviceReponseObserver devicereponseobserver)
    {
        observerList.remove(devicereponseobserver);
    }

    public void writeCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (mBluetoothAdapter == null || mBluetoothGatt == null)
        {
            Log.w(TAG, "BluetoothAdapter not initialized");
            return;
        } else
        {
            mBluetoothGatt.writeCharacteristic(bluetoothgattcharacteristic);
            return;
        }
    }






/*
    static boolean access$102(VLBleService vlbleservice, boolean flag)
    {
        vlbleservice.onFindSupportService = flag;
        return flag;
    }

*/



/*
    static BaseDeviceProduct access$1102(VLBleService vlbleservice, BaseDeviceProduct basedeviceproduct)
    {
        vlbleservice.deviceProduct = basedeviceproduct;
        return basedeviceproduct;
    }

*/



/*
    static ControlPlayer access$1202(VLBleService vlbleservice, ControlPlayer controlplayer)
    {
        vlbleservice.controlPlayer = controlplayer;
        return controlplayer;
    }

*/






/*
    static boolean access$302(VLBleService vlbleservice, boolean flag)
    {
        vlbleservice.isConnected = flag;
        return flag;
    }

*/




/*
    static boolean access$502(VLBleService vlbleservice, boolean flag)
    {
        vlbleservice.bluetoothEnable = flag;
        return flag;
    }

*/



/*
    static AutoConnectThread access$602(VLBleService vlbleservice, AutoConnectThread autoconnectthread)
    {
        vlbleservice.autoConnectThread = autoconnectthread;
        return autoconnectthread;
    }

*/


}
