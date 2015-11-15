// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.bracelet.bletask;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.os.AsyncTask;
import android.os.Handler;
import com.veclink.bracelet.bean.BluetoothDeviceBean;
import com.veclink.hw.bleservice.util.Debug;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.veclink.bracelet.bletask:
//            BleCallBack

public class BleScanDeviceTask extends AsyncTask
{

    private Activity activity;
    private BleCallBack bleCallBack;
    private String filterName;
    private String filterNameArray[];
    private BluetoothAdapter mBluetoothAdapter;
    private HashMap mDeviceAddressMap;
    private List mDeviceList;
    private Handler mHandler;
    private android.bluetooth.BluetoothAdapter.LeScanCallback mLeScanCallback = new android.bluetooth.BluetoothAdapter.LeScanCallback() {

        final BleScanDeviceTask this$0;

        public void onLeScan(final BluetoothDevice device, int i, byte abyte0[])
        {
            activity.runOnUiThread(i. new Runnable() {

                final _cls1 this$1;
                final BluetoothDevice val$device;
                final int val$rssi;

                public void run()
                {
                    if (device == null || mDeviceAddressMap.containsKey(device.getAddress())) goto _L2; else goto _L1
_L1:
                    Object obj;
                    obj = "unknow Device";
                    if (device.getName() != null)
                    {
                        obj = device.getName();
                    }
                    obj = new BluetoothDeviceBean(device.getAddress(), ((String) (obj)), rssi);
                    if (filterName != null || filterNameArray != null) goto _L4; else goto _L3
_L3:
                    mDeviceList.add(obj);
                    mDeviceAddressMap.put(device.getAddress(), device.getAddress());
                    bleCallBack.sendOnProgressMessage(obj);
_L2:
                    return;
_L4:
                    if (filterName != null && device.getName().contains(filterName))
                    {
                        mDeviceList.add(obj);
                        mDeviceAddressMap.put(device.getAddress(), device.getAddress());
                        bleCallBack.sendOnProgressMessage(obj);
                    }
                    if (filterNameArray != null && filterNameArray.length > 0)
                    {
                        int i = 0;
                        while (i < filterNameArray.length) 
                        {
                            if (device.getName().contains(filterNameArray[i]))
                            {
                                mDeviceList.add(obj);
                                mDeviceAddressMap.put(device.getAddress(), device.getAddress());
                                bleCallBack.sendOnProgressMessage(obj);
                            }
                            i++;
                        }
                    }
                    if (true) goto _L2; else goto _L5
_L5:
                }

            
            {
                this$1 = final__pcls1;
                device = bluetoothdevice;
                rssi = I.this;
                super();
            }
            });
        }

            
            {
                this$0 = BleScanDeviceTask.this;
                super();
            }
    };
    private boolean mScanning;
    private long scan_timeout;
    private UUID serviceUuids[];

    public BleScanDeviceTask(Activity activity1, BleCallBack blecallback)
    {
        scan_timeout = 10000L;
        filterName = null;
        filterNameArray = null;
        mDeviceList = new ArrayList();
        mDeviceAddressMap = new HashMap();
        initNeedData(activity1, blecallback);
    }

    public BleScanDeviceTask(Activity activity1, BleCallBack blecallback, UUID auuid[])
    {
        scan_timeout = 10000L;
        filterName = null;
        filterNameArray = null;
        mDeviceList = new ArrayList();
        mDeviceAddressMap = new HashMap();
        serviceUuids = auuid;
        initNeedData(activity1, blecallback);
    }

    private void initNeedData(Activity activity1, BleCallBack blecallback)
    {
        activity = activity1;
        bleCallBack = blecallback;
        mHandler = new Handler();
        mBluetoothAdapter = ((BluetoothManager)activity1.getSystemService("bluetooth")).getAdapter();
    }

    private void scanLeDevice(boolean flag)
    {
        if (flag)
        {
            mHandler.postDelayed(new Runnable() {

                final BleScanDeviceTask this$0;

                public void run()
                {
                    mScanning = false;
                    mBluetoothAdapter.stopLeScan(mLeScanCallback);
                }

            
            {
                this$0 = BleScanDeviceTask.this;
                super();
            }
            }, scan_timeout);
            mScanning = true;
            if (serviceUuids == null)
            {
                mBluetoothAdapter.startLeScan(mLeScanCallback);
                return;
            } else
            {
                mBluetoothAdapter.startLeScan(serviceUuids, mLeScanCallback);
                return;
            }
        } else
        {
            mScanning = false;
            mBluetoothAdapter.stopLeScan(mLeScanCallback);
            return;
        }
    }

    protected transient Object doInBackground(Object aobj[])
    {
        Debug.logBle("\u5F00\u59CB\u626B\u63CF\u8BBE\u5907");
        scanLeDevice(true);
        for (long l = System.currentTimeMillis(); (mScanning || !mBluetoothAdapter.isEnabled()) && System.currentTimeMillis() - l <= scan_timeout * 1000L;) { }
        return mDeviceList;
    }

    public String getFilterName()
    {
        return filterName;
    }

    public String[] getFilterNameArray()
    {
        return filterNameArray;
    }

    public long getScan_timeout()
    {
        return scan_timeout;
    }

    protected void onPostExecute(Object obj)
    {
        super.onPostExecute(obj);
        if (mDeviceList.size() > 0)
        {
            bleCallBack.sendOnFinishMessage(obj);
            return;
        } else
        {
            bleCallBack.sendOnFialedMessage(null);
            return;
        }
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        bleCallBack.sendOnStartMessage(Integer.valueOf(0));
    }

    public void setFilterName(String s)
    {
        filterName = s;
    }

    public void setFilterNameArray(String as[])
    {
        filterNameArray = as;
    }

    public void setScan_timeout(long l)
    {
        scan_timeout = l;
    }

    public void stopScanTask()
    {
        bleCallBack.sendOnFinishMessage(mDeviceList);
        scanLeDevice(false);
        cancel(true);
    }








/*
    static boolean access$602(BleScanDeviceTask blescandevicetask, boolean flag)
    {
        blescandevicetask.mScanning = flag;
        return flag;
    }

*/


}
