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

class this._cls0
    implements android.bluetooth.canCallback
{

    final BleScanDeviceTask this$0;

    public void onLeScan(final BluetoothDevice device, final int rssi, byte abyte0[])
    {
        BleScanDeviceTask.access$500(BleScanDeviceTask.this).runOnUiThread(new Runnable() {

            final BleScanDeviceTask._cls1 this$1;
            final BluetoothDevice val$device;
            final int val$rssi;

            public void run()
            {
                if (device == null || BleScanDeviceTask.access$000(this$0).containsKey(device.getAddress())) goto _L2; else goto _L1
_L1:
                Object obj;
                obj = "unknow Device";
                if (device.getName() != null)
                {
                    obj = device.getName();
                }
                obj = new BluetoothDeviceBean(device.getAddress(), ((String) (obj)), rssi);
                if (BleScanDeviceTask.access$100(this$0) != null || BleScanDeviceTask.access$200(this$0) != null) goto _L4; else goto _L3
_L3:
                BleScanDeviceTask.access$300(this$0).add(obj);
                BleScanDeviceTask.access$000(this$0).put(device.getAddress(), device.getAddress());
                BleScanDeviceTask.access$400(this$0).sendOnProgressMessage(obj);
_L2:
                return;
_L4:
                if (BleScanDeviceTask.access$100(this$0) != null && device.getName().contains(BleScanDeviceTask.access$100(this$0)))
                {
                    BleScanDeviceTask.access$300(this$0).add(obj);
                    BleScanDeviceTask.access$000(this$0).put(device.getAddress(), device.getAddress());
                    BleScanDeviceTask.access$400(this$0).sendOnProgressMessage(obj);
                }
                if (BleScanDeviceTask.access$200(this$0) != null && BleScanDeviceTask.access$200(this$0).length > 0)
                {
                    int i = 0;
                    while (i < BleScanDeviceTask.access$200(this$0).length) 
                    {
                        if (device.getName().contains(BleScanDeviceTask.access$200(this$0)[i]))
                        {
                            BleScanDeviceTask.access$300(this$0).add(obj);
                            BleScanDeviceTask.access$000(this$0).put(device.getAddress(), device.getAddress());
                            BleScanDeviceTask.access$400(this$0).sendOnProgressMessage(obj);
                        }
                        i++;
                    }
                }
                if (true) goto _L2; else goto _L5
_L5:
            }

            
            {
                this$1 = BleScanDeviceTask._cls1.this;
                device = bluetoothdevice;
                rssi = i;
                super();
            }
        });
    }

    _cls1.val.rssi()
    {
        this$0 = BleScanDeviceTask.this;
        super();
    }
}
