// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.UpdateFirmwareUtil;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.GetBraceletRomReponse;
import com.veclink.healthy.business.http.pojo.SubError;
import com.veclink.healthy.business.http.session.HealthyGetNewRomSession;
import com.veclink.healthy.task.DownLoadBraceleteRomTask;
import com.veclink.healthy.view.BluetoothConnAnimView;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.io.PrintStream;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealthyBaseActivity, BindbandActivity

public class FirmwareUpdateActivity extends HealthyBaseActivity
{

    private static final int DEVICE_CONNECTED = 33;
    private static final int DEVICE_DISCONNECTED = 34;
    public static final int DOWNLOADING_ROM = 35220;
    public static final int EXITSYNC = 35221;
    public static final int GETNEWROMFAIL = 35218;
    public static final int GETNEWROMOVER = 35217;
    public static final int NONEEDEDUPDATE = 35219;
    String filepath;
    IntentFilter intentFilter;
    public BluetoothConnAnimView mConnAnimView;
    private Context mContext;
    Handler mHandler;
    int newVersion;
    int oldversion;
    int progress;
    BroadcastReceiver receiver;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    BleCallBack updateCallBack;
    Handler updateHandler;
    boolean updateOver;
    private TextView update_remind_tip;

    public FirmwareUpdateActivity()
    {
        oldversion = 0;
        newVersion = 0;
        progress = 0;
        updateHandler = new Handler() {

            final FirmwareUpdateActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1000 1003: default 36
            //                           1000 37
            //                           1001 216
            //                           1002 63
            //                           1003 139;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return;
_L2:
                VLBleServiceManager.getInstance().flagDoUpdateNotDoOtherTask();
                mConnAnimView.setConnectMessage(getString(0x7f0c012d));
                return;
_L4:
                if (message.obj != null)
                {
                    progress = ((Integer)message.obj).intValue();
                    mConnAnimView.setConnectMessage((new StringBuilder()).append(String.format(getString(0x7f0c0161), new Object[] {
                        message.obj
                    })).append("%").toString());
                    return;
                }
                  goto _L1
_L5:
                updateOver = true;
                message = new File(filepath);
                if (message.exists())
                {
                    message.delete();
                }
                mConnAnimView.setConnectMessage(getString(0x7f0c011b));
                mHandler.postDelayed(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        mHandler.sendEmptyMessage(35221);
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                }, 2000L);
                return;
_L3:
                message = new File(filepath);
                if (message.exists())
                {
                    message.delete();
                }
                mConnAnimView.setConnectMessage(getString(0x7f0c011c));
                mConnAnimView.setClickable(true);
                mConnAnimView.stopWaveAnimation();
                return;
            }

            
            {
                this$0 = FirmwareUpdateActivity.this;
                super();
            }
        };
        updateCallBack = new BleCallBack(updateHandler);
        mHandler = new Handler() {

            final FirmwareUpdateActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR lookupswitch 6: default 64
            //                           34: 256
            //                           35217: 65
            //                           35218: 146
            //                           35219: 187
            //                           35220: 228
            //                           35221: 248;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
                return;
_L3:
                filepath = (String)message.obj;
                update_remind_tip.setVisibility(0);
                System.out.println((new StringBuilder()).append("GETNEWROMOVER do update task\uFF1A").append(filepath).toString());
                UpdateFirmwareUtil.update(mContext, updateCallBack, filepath);
                return;
_L4:
                mConnAnimView.setClickable(true);
                mConnAnimView.setConnectMessage(getString(0x7f0c011c));
                mConnAnimView.stopWaveAnimation();
                return;
_L5:
                mConnAnimView.setConnectMessage(getString(0x7f0c011d));
                mConnAnimView.setClickable(true);
                mConnAnimView.stopWaveAnimation();
                return;
_L6:
                mConnAnimView.setConnectMessage(getString(0x7f0c0131));
                return;
_L7:
                finishFirwareActivity();
                return;
_L2:
                if (!updateOver && progress < 100)
                {
                    mConnAnimView.setConnectMessage(getString(0x7f0c011c));
                    mConnAnimView.setClickable(true);
                    mConnAnimView.stopWaveAnimation();
                    return;
                }
                if (true) goto _L1; else goto _L8
_L8:
            }

            
            {
                this$0 = FirmwareUpdateActivity.this;
                super();
            }
        };
        intentFilter = new IntentFilter("action_sync_params_done");
        receiver = new BroadcastReceiver() {

            final FirmwareUpdateActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                context = intent.getAction();
                if (context.equals("action_sync_params_done"))
                {
                    mHandler.sendEmptyMessage(35221);
                } else
                {
                    if (context.equals("ACTION_GATT_DISCONNECTED"))
                    {
                        mHandler.sendEmptyMessage(34);
                        return;
                    }
                    if (context.equals("ACTION_GATT_CONNECTED"))
                    {
                        mHandler.sendEmptyMessage(33);
                        return;
                    }
                }
            }

            
            {
                this$0 = FirmwareUpdateActivity.this;
                super();
            }
        };
    }

    private void finishFirwareActivity()
    {
        mConnAnimView.stopWaveAnimation();
        HealthyAccountHolder.unBindDevice(mContext);
        VLBleServiceManager.getInstance().unBindService(getApplication());
        mHandler.postDelayed(new Runnable() {

            final FirmwareUpdateActivity this$0;

            public void run()
            {
                Intent intent = new Intent(mContext, com/veclink/movnow_q2/activity/BindbandActivity);
                startActivity(intent);
                finish();
            }

            
            {
                this$0 = FirmwareUpdateActivity.this;
                super();
            }
        }, 2000L);
    }

    private void getFirmware()
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetBraceletRomReponse
        });
        EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/GetBraceletRomReponse, new Class[0]);
        SimpleHttpSchedualer.ansycSchedual(this, new HealthyGetNewRomSession(mContext));
    }

    private void initView()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060023);
        update_remind_tip = (TextView)findViewById(0x7f06002a);
        mConnAnimView = (BluetoothConnAnimView)findViewById(0x7f060029);
        mConnAnimView.setControListener(new android.view.View.OnClickListener() {

            final FirmwareUpdateActivity this$0;

            public void onClick(View view)
            {
                if (!mConnAnimView.mDragging)
                {
                    startAnimation();
                    setCenterTip();
                }
            }

            
            {
                this$0 = FirmwareUpdateActivity.this;
                super();
            }
        });
        setCenterTip();
    }

    private void setCenterTip()
    {
        titleBarRelativeLayout.setTitleText(getString(0x7f0c011e));
        mConnAnimView.setConnectMessage(getString(0x7f0c011e));
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mContext = this;
        setContentView(0x7f030003);
        intentFilter.addAction("ACTION_GATT_CONNECTED");
        intentFilter.addAction("ACTION_GATT_DISCONNECTED");
        registerReceiver(receiver, intentFilter);
        initView();
        startAnimation();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        unregisterReceiver(receiver);
        VLBleServiceManager.getInstance().updatePostExceute();
    }

    public void onEvent(GetBraceletRomReponse getbraceletromreponse)
    {
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetBraceletRomReponse
        });
        Message message = new Message();
        DebugUtil.logv("GetBraceletRomReponse", getbraceletromreponse.toString());
        if (getbraceletromreponse.getError().equals("0"))
        {
            try
            {
                oldversion = Integer.parseInt(Keeper.getDeviceRomVersion(mContext));
                newVersion = Integer.parseInt(getbraceletromreponse.getVersion());
                System.out.println((new StringBuilder()).append("current rom version\uFF1A").append(oldversion).toString());
                System.out.println((new StringBuilder()).append("server rom version\uFF1A").append(newVersion).toString());
            }
            catch (Exception exception)
            {
                message.what = 35218;
            }
            if (newVersion > oldversion)
            {
                (new DownLoadBraceleteRomTask(mHandler)).execute(new String[] {
                    getbraceletromreponse.getUrl(), getbraceletromreponse.getToken()
                });
            } else
            {
                message.what = 35219;
            }
        } else
        if (getbraceletromreponse.getSubErrors() != null)
        {
            getbraceletromreponse = (SubError)getbraceletromreponse.getSubErrors().get(0);
            if (getbraceletromreponse != null && getbraceletromreponse.getCode().equals("isv.bracelet-firmwareupgrade-service-error:NO_FIRMWARE"))
            {
                message.what = 35219;
            } else
            {
                message.what = 35218;
            }
        } else
        {
            message.what = 35218;
        }
        mHandler.sendMessage(message);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 && mConnAnimView.mDragging)
        {
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public void startAnimation()
    {
        mConnAnimView.setClickable(false);
        mConnAnimView.startWaveAnimation();
        getFirmware();
    }




}
