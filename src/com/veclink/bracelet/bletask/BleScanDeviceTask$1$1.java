// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import com.veclink.bracelet.bean.BluetoothDeviceBean;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleScanDeviceTask, BleCallBack

class val.rssi
    implements Runnable
{

    final ressMessage this$1;
    final BluetoothDevice val$device;
    final int val$rssi;

    public void run()
    {
        if (val$device == null || BleScanDeviceTask.access$000(_fld0).containsKey(val$device.getAddress())) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = "unknow Device";
        if (val$device.getName() != null)
        {
            obj = val$device.getName();
        }
        obj = new BluetoothDeviceBean(val$device.getAddress(), ((String) (obj)), val$rssi);
        if (BleScanDeviceTask.access$100(_fld0) != null || BleScanDeviceTask.access$200(_fld0) != null) goto _L4; else goto _L3
_L3:
        BleScanDeviceTask.access$300(_fld0).add(obj);
        BleScanDeviceTask.access$000(_fld0).put(val$device.getAddress(), val$device.getAddress());
        BleScanDeviceTask.access$400(_fld0).sendOnProgressMessage(obj);
_L2:
        return;
_L4:
        if (BleScanDeviceTask.access$100(_fld0) != null && val$device.getName().contains(BleScanDeviceTask.access$100(_fld0)))
        {
            BleScanDeviceTask.access$300(_fld0).add(obj);
            BleScanDeviceTask.access$000(_fld0).put(val$device.getAddress(), val$device.getAddress());
            BleScanDeviceTask.access$400(_fld0).sendOnProgressMessage(obj);
        }
        if (BleScanDeviceTask.access$200(_fld0) != null && BleScanDeviceTask.access$200(_fld0).length > 0)
        {
            int i = 0;
            while (i < BleScanDeviceTask.access$200(_fld0).length) 
            {
                if (val$device.getName().contains(BleScanDeviceTask.access$200(_fld0)[i]))
                {
                    BleScanDeviceTask.access$300(_fld0).add(obj);
                    BleScanDeviceTask.access$000(_fld0).put(val$device.getAddress(), val$device.getAddress());
                    BleScanDeviceTask.access$400(_fld0).sendOnProgressMessage(obj);
                }
                i++;
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$device = bluetoothdevice;
        val$rssi = I.this;
        super();
    }

    // Unreferenced inner class com/veclink/bracelet/bletask/BleScanDeviceTask$1

/* anonymous class */
    class BleScanDeviceTask._cls1
        implements android.bluetooth.BluetoothAdapter.LeScanCallback
    {

        final BleScanDeviceTask this$0;

        public void onLeScan(final BluetoothDevice device, int i, byte abyte0[])
        {
            BleScanDeviceTask.access$500(BleScanDeviceTask.this).runOnUiThread(i. new BleScanDeviceTask._cls1._cls1());
        }

            
            {
                this$0 = BleScanDeviceTask.this;
                super();
            }
    }

}
