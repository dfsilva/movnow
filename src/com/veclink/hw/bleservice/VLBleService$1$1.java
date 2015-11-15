// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.os.Handler;
import android.util.Log;
import com.veclink.bracelet.bletask.BleAppConfirmBindSuccess;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.hw.bleservice.util.Debug;
import com.veclink.hw.bleservice.util.Helper;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.DeviceProductFactory;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import java.util.UUID;

// Referenced classes of package com.veclink.hw.bleservice:
//            VLBleService, ControlPlayer

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        if (!VLBleService.access$100(_fld0))
        {
            Debug.logBle("10\u79D2\u540E\u6CA1\u53D1\u73B0\u670D\u52A1\uFF0C\u81EA\u52A8\u65AD\u5F00");
            disconnect();
            close();
            VLBleService.access$200(_fld0);
        }
    }

    it>()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/veclink/hw/bleservice/VLBleService$1

/* anonymous class */
    class VLBleService._cls1 extends BluetoothGattCallback
    {

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
            VLBleService.access$1300(VLBleService.this, "ACTION_SHORT_SPORT_DATA", bluetoothgattcharacteristic);
_L4:
            if (VLBleService.access$1200(VLBleService.this) == null)
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
            VLBleService.access$1300(VLBleService.this, "ACTION_POWER_CHANGE_DATA", bluetoothgattcharacteristic);
              goto _L4
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 18)
            {
                break MISSING_BLOCK_LABEL_561;
            }
            try
            {
                VLBleService.access$1200(VLBleService.this).sendKeyCtroPlayAciton(85);
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
            VLBleService.access$1400(VLBleService.this);
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_322;
            }
            if (abyte0.length <= 4 || abyte0[0] != 90 || abyte0[1] != 11 || abyte0[2] != 0 || abyte0[3] != 2 || abyte0[4] != 0)
            {
                break MISSING_BLOCK_LABEL_322;
            }
            VLBleService.access$1000(VLBleService.this, "ACTION_USER_HAD_CLICK_DEVICE");
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_374;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 16)
            {
                break MISSING_BLOCK_LABEL_374;
            }
            VLBleService.access$1000(VLBleService.this, "ACTION_DEVICE_FIND_PHONE");
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_426;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 22)
            {
                break MISSING_BLOCK_LABEL_426;
            }
            VLBleService.access$1000(VLBleService.this, "ACTION_DIAL_FAMILY_NUMBERS");
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_478;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 25)
            {
                break MISSING_BLOCK_LABEL_478;
            }
            VLBleService.access$1000(VLBleService.this, "ACTION_HANDOFF_COMINGCALL");
              goto _L4
            if (abyte0 == null) goto _L6; else goto _L5
_L5:
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 129) goto _L6; else goto _L7
_L7:
            VLBleService.access$1000(VLBleService.this, "ACTION_LONGSIITING_REMIND");
              goto _L4
_L6:
            if (!bluetoothgattcharacteristic.getUuid().equals(UUID_BLE_SHIELD_RX)) goto _L4; else goto _L8
_L8:
            VLBleService.access$1300(VLBleService.this, "ACTION_DATA_AVAILABLE", bluetoothgattcharacteristic);
              goto _L4
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_614;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 19)
            {
                break MISSING_BLOCK_LABEL_614;
            }
            VLBleService.access$1200(VLBleService.this).sendKeyCtroPlayAciton(85);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_667;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 20)
            {
                break MISSING_BLOCK_LABEL_667;
            }
            VLBleService.access$1200(VLBleService.this).sendKeyCtroPlayAciton(88);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_720;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 21)
            {
                break MISSING_BLOCK_LABEL_720;
            }
            VLBleService.access$1200(VLBleService.this).sendKeyCtroPlayAciton(87);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_772;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 23)
            {
                break MISSING_BLOCK_LABEL_772;
            }
            VLBleService.access$1200(VLBleService.this).controVolume(1);
            return;
            if (abyte0 == null)
            {
                break MISSING_BLOCK_LABEL_823;
            }
            if (abyte0.length <= 3 || abyte0[0] != 90 || abyte0[1] != 22 || abyte0[2] != 0 || abyte0[3] != 24)
            {
                break MISSING_BLOCK_LABEL_823;
            }
            VLBleService.access$1200(VLBleService.this).controVolume(-1);
        }

        public void onCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
        {
            if (i == 0)
            {
                VLBleService.access$1300(VLBleService.this, "ACTION_DATA_AVAILABLE", bluetoothgattcharacteristic);
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
            Debug.logBleByTag(VLBleService.access$000(), "Connected to GATT server.");
            if (mBluetoothGatt != null) goto _L4; else goto _L3
_L3:
            connect(Keeper.getBindDeviceMacAddress(getApplicationContext()));
_L6:
            return;
_L4:
            Debug.logBleByTag(VLBleService.access$000(), (new StringBuilder()).append("Attempting to start service discovery:").append(mBluetoothGatt.discoverServices()).toString());
            handler.postDelayed(new VLBleService._cls1._cls1(), 10000L);
            return;
_L2:
            if (j == 0)
            {
                VLBleService.access$302(VLBleService.this, false);
                Debug.logBleByTag(VLBleService.access$000(), (new StringBuilder()).append("autoReConnect:").append(VLBleService.access$400(VLBleService.this)).append(" bluetoothEnable: ").append(VLBleService.access$500(VLBleService.this)).toString());
                if (VLBleService.access$400(VLBleService.this) && VLBleService.access$500(VLBleService.this))
                {
                    if (VLBleService.access$600(VLBleService.this) == null)
                    {
                        VLBleService.access$602(VLBleService.this, new VLBleService.AutoConnectThread(VLBleService.this, null));
                        VLBleService.access$600(VLBleService.this).start();
                        return;
                    }
                } else
                {
                    VLBleService.access$200(VLBleService.this);
                    return;
                }
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void onReadRemoteRssi(BluetoothGatt bluetoothgatt, int i, int j)
        {
            Log.w(VLBleService.access$000(), (new StringBuilder()).append("onReadRemoteRssi received rssi is ").append(i).append(" status is ").append(j).toString());
            if (j == 0)
            {
                VLBleService.access$800(VLBleService.this, "ACTION_GATT_RSSI", i);
            }
        }

        public void onServicesDiscovered(final BluetoothGatt gatt, final int status)
        {
            if (status == 0)
            {
                Debug.logBleByTag(VLBleService.access$000(), (new StringBuilder()).append("onServicesDiscovered success: ").append(status).toString());
                Debug.logBleByTag(VLBleService.access$000(), (new StringBuilder()).append("UserHasBindBand  ").append(Keeper.getUserHasBindBand(getApplicationContext())).toString());
                VLBleService.access$900(VLBleService.this, getOneSupportedGattService());
                VLBleService.access$302(VLBleService.this, true);
                VLBleService.access$1000(VLBleService.this, "ACTION_GATT_CONNECTED");
                deviceConnected();
                VLBleService.access$102(VLBleService.this, true);
                VLBleService.access$1102(VLBleService.this, DeviceProductFactory.createDeviceProduct(Keeper.getDeviceType(getApplicationContext())));
                if (VLBleService.access$1100(VLBleService.this).controlPlayer)
                {
                    VLBleService.access$1202(VLBleService.this, new ControlPlayer(getApplicationContext(), handler));
                }
                if (VLBleService.access$1100(VLBleService.this).bindDeviceWay == 1 && Keeper.getUserHasBindBand(getApplicationContext()))
                {
                    handler.postDelayed(new VLBleService._cls1._cls2(), 1000L);
                } else
                {
                    deviceOnServicesDiscovered(gatt, status);
                }
                VLBleService.access$1000(VLBleService.this, "ACTION_GATT_SERVICES_DISCOVERED");
                return;
            } else
            {
                Log.w(VLBleService.access$000(), (new StringBuilder()).append("onServicesDiscovered received: ").append(status).toString());
                return;
            }
        }

            
            {
                this$0 = VLBleService.this;
                super();
            }

        // Unreferenced inner class com/veclink/hw/bleservice/VLBleService$1$2

/* anonymous class */
        class VLBleService._cls1._cls2
            implements Runnable
        {

            final VLBleService._cls1 this$1;
            final BluetoothGatt val$gatt;
            final int val$status;

            public void run()
            {
                (new BleAppConfirmBindSuccess(getApplicationContext(), new BleCallBack(new Handler()))).work();
                deviceOnServicesDiscovered(gatt, status);
            }

                    
                    {
                        this$1 = VLBleService._cls1.this;
                        gatt = bluetoothgatt;
                        status = i;
                        super();
                    }
        }

    }

}
