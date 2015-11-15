// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextPaint;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.veclink.bracelet.bean.BluetoothDeviceBean;
import com.veclink.bracelet.bletask.BleAppConfirmBindSuccess;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleRequestBindDevice;
import com.veclink.bracelet.bletask.BleScanDeviceTask;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.view.BluetoothConnAnimView;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.profile.BraceletGattAttributes;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, MovnowTwoApplication, MainActivity

public class BindbandActivity extends HealthyBaseActivity
    implements android.view.View.OnClickListener
{

    public static final String EXTRA_DEVICE_ADDRESS = "EXTRA_DEVICE_ADDRESS";
    public static final String EXTRA_DEVICE_NAME = "EXTRA_DEVICE_NAME";
    public static final String FILTERNAME = null;
    public static final int RESULT_CODE = 31;
    private final int BIND_DEVICE_SUCCESS = 38;
    private final long CANBINDDURATION = 30000L;
    private final int CAN_CONNECT_MIN_RSSI = -100;
    private final int DERECIT_CONNECT_MIN_RSSI = -60;
    private final int DEVICE_CAN_BEBINDED = 36;
    private final int DEVICE_CONNECTED = 33;
    private final int DEVICE_DISCONNECTED = 34;
    private final int DEVICE_SYNCPARAMSDONE = 35;
    private final int USER_HAS_CLICK_DEVICE = 37;
    private BindbandActivity bindbandActivity;
    TextView cannot_bind_view;
    BluetoothConnAnimView connAnimView;
    Handler connectHandler;
    BroadcastReceiver deviceInfoReceiver;
    private ArrayList devicesList;
    private long exitTime;
    TextView first_bind_tip_view;
    boolean hasDoBind;
    IntentFilter intentFilter;
    Button not_bind_band_first;
    BleCallBack requestBindDeviceCallBack;
    Handler requestBindDeviceHandler;
    Handler scanBleDeviceHandler;
    BleCallBack scanDeviceCallBack;
    BleScanDeviceTask scanTask;

    public BindbandActivity()
    {
        scanBleDeviceHandler = new Handler() {

            final BindbandActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1000 1003: default 36
            //                           1000 36
            //                           1001 263
            //                           1002 37
            //                           1003 105;
                   goto _L1 _L1 _L2 _L3 _L4
_L1:
                return;
_L3:
                message = (BluetoothDeviceBean)message.obj;
                DebugUtil.println((new StringBuilder()).append("BindbandActivity macaddrss is").append(message.getDevice_address()).append("\n rssi is ").append(message.getDevice_rssi()).toString());
                if (message.getDevice_rssi() >= -60)
                {
                    DebugUtil.println("BindbandActivity direct connect");
                    connectBand(message);
                    return;
                }
                  goto _L1
_L4:
                devicesList = (ArrayList)message.obj;
                Collections.sort(devicesList);
                scanTask = null;
                if (devicesList.size() == 0)
                {
                    connAnimView.setConnectMessage(getString(0x7f0c0117));
                    connAnimView.stopWaveAnimation();
                    return;
                }
                if (((BluetoothDeviceBean)devicesList.get(0)).getDevice_rssi() <= -100)
                {
                    scanTask = null;
                    connAnimView.setConnectMessage(getString(0x7f0c0117));
                    connAnimView.stopWaveAnimation();
                    return;
                } else
                {
                    connectBand((BluetoothDeviceBean)devicesList.get(0));
                    return;
                }
_L2:
                scanTask = null;
                connAnimView.setConnectMessage(getString(0x7f0c0117));
                connAnimView.stopWaveAnimation();
                return;
            }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
        };
        requestBindDeviceHandler = new Handler() {

            final BindbandActivity this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 1000: 
                case 1001: 
                case 1002: 
                default:
                    return;

                case 1003: 
                    first_bind_tip_view.setText(0x7f0c017d);
                    break;
                }
            }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
        };
        connectHandler = new Handler() {

            final BindbandActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 33 38: default 44
            //                           33 45
            //                           34 88
            //                           35 153
            //                           36 44
            //                           37 222
            //                           38 287;
                   goto _L1 _L2 _L3 _L4 _L1 _L5 _L6
_L1:
                break; /* Loop/switch isn't completed */
_L6:
                break MISSING_BLOCK_LABEL_287;
_L7:
                return;
_L2:
                connAnimView.setConnectMessage(getString(0x7f0c0175));
                if (!connAnimView.mDragging)
                {
                    connAnimView.startWaveAnimation();
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                HealthyAccountHolder.unBindDevice(getApplicationContext());
                connAnimView.setConnectMessage(getString(0x7f0c0174));
                first_bind_tip_view.setText(0x7f0c017c);
                connAnimView.stopWaveAnimation();
                VLBleServiceManager.getInstance().unBindService(getApplication());
                return;
_L4:
                System.out.println((new StringBuilder()).append("devicename:").append(Keeper.getBindDeviceName(bindbandActivity)).toString());
                if (MovnowTwoApplication.deviceProduct.bindDeviceWay == 1)
                {
                    (new BleRequestBindDevice(getApplicationContext(), requestBindDeviceCallBack)).work();
                    return;
                }
                if (true) goto _L7; else goto _L5
_L5:
                (new BleAppConfirmBindSuccess(getApplicationContext(), new BleCallBack(new Handler()))).work();
                Keeper.setUserHasBindBand(getApplicationContext(), true);
                connectHandler.postDelayed(new Runnable() {

                    final _cls3 this$1;

                    public void run()
                    {
                        connectHandler.sendEmptyMessage(38);
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                }, 1000L);
                return;
                if (!SimpleHttpSchedualer.isNetworkAvailable(bindbandActivity))
                {
                    message = new Intent(bindbandActivity, com/veclink/movnow_q2/activity/MainActivity);
                    message.putExtra("fromBindBand", true);
                    bindbandActivity.startActivity(message);
                    finish();
                    return;
                } else
                {
                    Object obj = Calendar.getInstance();
                    message = StringUtil.getMonthFirstDay(((Calendar) (obj)).getTime());
                    obj = StringUtil.getMonthLastDay(((Calendar) (obj)).getTime());
                    MovnowTwoApplication.application.syncSportData(message, ((String) (obj)));
                    MovnowTwoApplication.application.syncSleepData(message, ((String) (obj)));
                    message = new Intent(bindbandActivity, com/veclink/movnow_q2/activity/MainActivity);
                    message.putExtra("fromBindBand", true);
                    bindbandActivity.startActivity(message);
                    finish();
                    return;
                }
            }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
        };
        scanDeviceCallBack = new BleCallBack(scanBleDeviceHandler);
        requestBindDeviceCallBack = new BleCallBack(requestBindDeviceHandler);
        intentFilter = new IntentFilter("action_sync_params_done");
        deviceInfoReceiver = new BroadcastReceiver() {

            final BindbandActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                context = intent.getAction();
                if (context.equals("action_sync_params_done"))
                {
                    connectHandler.sendEmptyMessage(35);
                } else
                {
                    if (context.equals("ACTION_USER_HAD_CLICK_DEVICE"))
                    {
                        connectHandler.sendEmptyMessage(37);
                        return;
                    }
                    if (context.equals("ACTION_GATT_DISCONNECTED"))
                    {
                        connectHandler.sendEmptyMessage(34);
                        return;
                    }
                    if (context.equals("ACTION_GATT_SERVICES_DISCOVERED"))
                    {
                        connectHandler.sendEmptyMessage(33);
                        return;
                    }
                    if (context.equals("action_bind_device_done"))
                    {
                        connectHandler.sendEmptyMessage(38);
                        return;
                    }
                }
            }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
        };
    }

    private void connectBand(BluetoothDeviceBean bluetoothdevicebean)
    {
        if (scanTask != null)
        {
            scanTask.stopScanTask();
            scanTask = null;
        }
        String s = bluetoothdevicebean.getDevice_address();
        bluetoothdevicebean = bluetoothdevicebean.getDevice_name();
        Keeper.setBindDeviceMacAddress(this, s);
        Keeper.setBindDeviceName(this, bluetoothdevicebean);
        VLBleServiceManager.getInstance().unBindService(getApplication());
        VLBleServiceManager.getInstance().bindService(getApplication(), new BraceletGattAttributes());
        VLBleServiceManager.getInstance();
        VLBleServiceManager.registerObserver(MovnowTwoApplication.application);
        VLBleServiceManager.setAutoReConnect(false);
        hasDoBind = true;
        not_bind_band_first.setVisibility(8);
        connAnimView.setConnectMessage(getString(0x7f0c0173));
        requestBindDeviceHandler.postDelayed(new Runnable() {

            final BindbandActivity this$0;

            public void run()
            {
                if (!Keeper.getUserHasBindBand(bindbandActivity))
                {
                    connectHandler.sendEmptyMessage(34);
                    first_bind_tip_view.setText(0x7f0c017c);
                }
            }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
        }, 15000L);
    }

    private void initReciver()
    {
        intentFilter.addAction("ACTION_GATT_SERVICES_DISCOVERED");
        intentFilter.addAction("ACTION_GATT_DISCONNECTED");
        intentFilter.addAction("ACTION_DATA_AVAILABLE");
        intentFilter.addAction("ACTION_USER_HAD_CLICK_DEVICE");
        intentFilter.addAction("action_bind_device_done");
        registerReceiver(deviceInfoReceiver, intentFilter);
    }

    private void initView()
    {
        connAnimView = (BluetoothConnAnimView)findViewById(0x7f06007a);
        connAnimView.setOnClickListener(new android.view.View.OnClickListener() {

            final BindbandActivity this$0;

            public void onClick(View view)
            {
                if (!connAnimView.mDragging)
                {
                    searchBand();
                }
            }

            
            {
                this$0 = BindbandActivity.this;
                super();
            }
        });
        cannot_bind_view = (TextView)findViewById(0x7f06007b);
        first_bind_tip_view = (TextView)findViewById(0x7f06007c);
        not_bind_band_first = (Button)findViewById(0x7f06007d);
        not_bind_band_first.getPaint().setFlags(8);
        cannot_bind_view.setOnClickListener(this);
        not_bind_band_first.setOnClickListener(this);
    }

    private void searchBand()
    {
        scanTask = new BleScanDeviceTask(this, scanDeviceCallBack);
        scanTask.setScan_timeout(10000L);
        scanTask.execute(new Object[] {
            Integer.valueOf(0)
        });
        connAnimView.startWaveAnimation();
        connAnimView.setConnectMessage(getString(0x7f0c0116));
    }

    public void enabledBlueAndSearchBand()
    {
        if (!((BluetoothManager)getSystemService("bluetooth")).getAdapter().isEnabled())
        {
            startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 1);
            return;
        } else
        {
            MovnowTwoApplication.application.getActivityManager().popActivity(MainActivity.mainActivity);
            searchBand();
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        System.out.println((new StringBuilder()).append("resultCode:").append(j).toString());
        if (j == -1)
        {
            searchBand();
            return;
        } else
        {
            ToastUtil.showShortToast(this, getString(0x7f0c018a));
            finish();
            return;
        }
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131099771 2131099773: default 32
    //                   2131099771 107
    //                   2131099772 32
    //                   2131099773 33;
           goto _L1 _L2 _L1 _L3
_L1:
        return;
_L3:
        if (scanTask != null)
        {
            scanTask.stopScanTask();
        }
        Keeper.setUserHasBindBand(getApplication(), false);
        Keeper.setBindDeviceMacAddress(this, "");
        Keeper.setBindDeviceName(this, "");
        VLBleServiceManager.getInstance().unBindService(getApplication());
        view = new Intent(bindbandActivity, com/veclink/movnow_q2/activity/MainActivity);
        bindbandActivity.startActivity(view);
        finish();
        return;
_L2:
        if (scanTask == null)
        {
            searchBand();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030022);
        bindbandActivity = this;
        initReciver();
        initView();
        enabledBlueAndSearchBand();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unregisterReceiver(deviceInfoReceiver);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getAction() == 0)
        {
            if (System.currentTimeMillis() - exitTime > 2000L)
            {
                Toast.makeText(getApplicationContext(), getString(0x7f0c0177), 0).show();
                exitTime = System.currentTimeMillis();
            } else
            {
                if (scanTask != null)
                {
                    scanTask.stopScanTask();
                }
                Keeper.setUserHasBindBand(getApplication(), false);
                Keeper.setBindDeviceMacAddress(this, "");
                Keeper.setBindDeviceName(this, "");
                VLBleServiceManager.getInstance().unBindService(getApplication());
                keyevent = (MovnowTwoApplication)getApplication();
                keyevent.setHasSyncSleepData(false);
                keyevent.setHasSyncStepData(false);
                keyevent.getActivityManager().popAllActivityExceptOne(android/app/Activity);
            }
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onPause()
    {
        super.onPause();
        if (!Keeper.getUserHasBindBand(getApplicationContext()))
        {
            VLBleServiceManager.getInstance().unBindService(getApplication());
            HealthyAccountHolder.unBindDevice(getApplicationContext());
        }
        finish();
    }





/*
    static ArrayList access$102(BindbandActivity bindbandactivity, ArrayList arraylist)
    {
        bindbandactivity.devicesList = arraylist;
        return arraylist;
    }

*/


}
