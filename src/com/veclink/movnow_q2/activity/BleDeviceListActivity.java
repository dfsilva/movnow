// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.veclink.bracelet.bean.BluetoothDeviceBean;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleScanDeviceTask;
import com.veclink.hw.bleservice.DeviceReponseObserver;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.profile.BraceletGattAttributes;
import com.veclink.hw.bleservice.util.Keeper;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, BleDeviceListAdapter

public class BleDeviceListActivity extends HealthyBaseActivity
    implements android.widget.AdapterView.OnItemClickListener, DeviceReponseObserver
{

    public static final String EXTRA_DEVICE_ADDRESS = "EXTRA_DEVICE_ADDRESS";
    public static final String EXTRA_DEVICE_NAME = "EXTRA_DEVICE_NAME";
    public static final String FILTERNAME = null;
    public static final int RESULT_CODE = 31;
    private BleDeviceListAdapter adapter;
    private TextView back_btn;
    private TextView connectingMsgView;
    private ArrayList devices;
    private ListView listView;
    Handler scanBleDeviceHandler;
    BleCallBack scanDeviceCallBack;
    BleScanDeviceTask scanTask;
    private ImageView search_img;

    public BleDeviceListActivity()
    {
        scanBleDeviceHandler = new Handler() {

            final BleDeviceListActivity this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 1000: 
                default:
                    return;

                case 1002: 
                    message = (BluetoothDeviceBean)message.obj;
                    adapter.addDeviceItem(message);
                    return;

                case 1003: 
                    scanTask = null;
                    stopAnimation();
                    return;

                case 1001: 
                    scanTask = null;
                    stopAnimation();
                    return;
                }
            }

            
            {
                this$0 = BleDeviceListActivity.this;
                super();
            }
        };
        scanDeviceCallBack = new BleCallBack(scanBleDeviceHandler);
    }

    public void deviceConnected()
    {
    }

    public void deviceDisConnect()
    {
        connectingMsgView.setText(0x7f0c0174);
    }

    public void deviceOnCharacteristicChange(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
    }

    public void deviceOnCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
    }

    public void deviceOnCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
    }

    public void deviceOnServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
        VLBleServiceManager.getInstance();
        VLBleServiceManager.unRegisterObserver(this);
        scanBleDeviceHandler.postDelayed(new Runnable() {

            final BleDeviceListActivity this$0;

            public void run()
            {
            }

            
            {
                this$0 = BleDeviceListActivity.this;
                super();
            }
        }, 2000L);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030030);
        listView = (ListView)findViewById(0x7f06009d);
        back_btn = (TextView)findViewById(0x7f06009b);
        search_img = (ImageView)findViewById(0x7f06009c);
        adapter = new BleDeviceListAdapter(this);
        listView.setAdapter(adapter);
        listView.setOnItemClickListener(this);
        new BraceletGattAttributes();
        back_btn.setOnClickListener(new android.view.View.OnClickListener() {

            final BleDeviceListActivity this$0;

            public void onClick(View view)
            {
                onBackPressed();
            }

            
            {
                this$0 = BleDeviceListActivity.this;
                super();
            }
        });
        search_img.setOnClickListener(new android.view.View.OnClickListener() {

            final BleDeviceListActivity this$0;

            public void onClick(View view)
            {
                if (scanTask == null)
                {
                    adapter.clearAllDeviceItem();
                    scanTask = new BleScanDeviceTask(BleDeviceListActivity.this, scanDeviceCallBack);
                    scanTask.execute(new Object[] {
                        Integer.valueOf(0)
                    });
                    startAnimation();
                    return;
                } else
                {
                    scanTask.stopScanTask();
                    scanTask = null;
                    stopAnimation();
                    return;
                }
            }

            
            {
                this$0 = BleDeviceListActivity.this;
                super();
            }
        });
        scanTask = new BleScanDeviceTask(this, scanDeviceCallBack);
        scanTask.execute(new Object[] {
            Integer.valueOf(0)
        });
        startAnimation();
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        connectingMsgView = (TextView)view.findViewById(0x7f060105);
        if (scanTask != null)
        {
            scanTask.stopScanTask();
            scanTask = null;
            stopAnimation();
        }
        adapter.notifyDataSetChanged();
        view = (BluetoothDeviceBean)adapter.listItems.get(i);
        adapterview = view.getDevice_address();
        view = view.getDevice_name();
        Keeper.setBindDeviceMacAddress(this, adapterview);
        Keeper.setBindDeviceName(this, view);
        VLBleServiceManager.getInstance().unBindService(getApplication());
        VLBleServiceManager.getInstance();
        VLBleServiceManager.registerObserver(this);
        VLBleServiceManager.getInstance().bindService(getApplication(), new BraceletGattAttributes());
        VLBleServiceManager.setAutoReConnect(true);
        scanBleDeviceHandler.postDelayed(new Runnable() {

            final BleDeviceListActivity this$0;

            public void run()
            {
                connectingMsgView.setText(0x7f0c0173);
            }

            
            {
                this$0 = BleDeviceListActivity.this;
                super();
            }
        }, 100L);
    }

    public void startAnimation()
    {
        LinearInterpolator linearinterpolator = new LinearInterpolator();
        RotateAnimation rotateanimation = new RotateAnimation(0.0F, 360F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(1000L);
        rotateanimation.setRepeatCount(-1);
        rotateanimation.setInterpolator(linearinterpolator);
        search_img.setAnimation(rotateanimation);
        search_img.startAnimation(rotateanimation);
    }

    public void stopAnimation()
    {
        search_img.clearAnimation();
    }



}
