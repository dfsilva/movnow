// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshScrollView;
import com.veclink.bracelet.bean.DeviceSportAndSleepData;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleQueryPowerValueTask;
import com.veclink.bracelet.bletask.BleSyncNewDeviceDataTask;
import com.veclink.bracelet.bletask.BleSyncOldDeviceDataTask;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.entity.LogObject;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBLogOperate;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.healthy.database.op.HealthyDBOprateWalkData;
import com.veclink.healthy.database.op.HealthyDBSyncRecordOperate;
import com.veclink.healthy.task.SaveSyncDataRunnable;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.BindbandActivity;
import com.veclink.movnow_q2.activity.MainActivity;
import com.veclink.movnow_q2.activity.ManagerCaloriesActivity;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.util.ToastUtil;
import com.veclink.movnow_q2.view.RoundProgressBar;
import com.veclink.movnow_q2.view.SportGraphHideView;
import com.veclink.movnow_q2.view.SportGraphView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class WalkFragment extends Fragment
    implements android.view.View.OnTouchListener, android.view.View.OnClickListener
{

    private static final int BAR_DATA = 1;
    private static final int CIRCLE_PROGRESS = 0;
    private static final int DEVICE_CONNECTED = 5;
    private static final int DEVICE_DISCONNECT = 4;
    private static final int POWER_DATA = 3;
    private static final int SHORT_SPORTDATA = 2;
    public static final String TAG = "WalkFragment";
    MovnowTwoApplication application;
    private TextView band_power_value;
    private TextView bind_remind_tip;
    private View bind_remind_view;
    private SportGraphHideView graphHideView;
    private Handler handler;
    private ImageView imgSlidingDrower;
    IntentFilter intentFilter;
    private boolean isDestroy;
    private boolean isHide;
    private LinearLayout llButtomHide;
    private LinearLayout llManagerCalories;
    private LinearLayout llOntouch;
    private LinearLayout llShare;
    private LinearLayout llTouchUPAndDown;
    private PullToRefreshScrollView mPullRefreshScrollView;
    BleCallBack queryPowerCallBack;
    Handler queryPowerHandler;
    BleQueryPowerValueTask queryPowerValueTask;
    private RoundProgressBar roundProgressBar;
    BroadcastReceiver shortSportDataReceiver;
    private int shortStepCount;
    private SportGraphView sportGraphView;
    private long startSyncTime;
    BleCallBack syncDataCallBack;
    Handler syncDataHandler;
    BleTask syncTask;
    private List times;
    private TextView tvDistance;
    private TextView tvDistanceUint;
    private TextView tvHideDistance;
    private TextView tvHideDistanceUint;
    private TextView tvHideKcla;
    private TextView tvHideStepAccount;
    private TextView tvKcla;
    private TextView tvPercent;
    private TextView tvSteps;
    private TextView tvTargetSteps;
    private TextView tvTime;
    float y1;
    float y2;

    public WalkFragment()
    {
        isHide = false;
        times = new ArrayList();
        application = MovnowTwoApplication.application;
        isDestroy = false;
        handler = new Handler() {

            final WalkFragment this$0;

            public void handleMessage(Message message)
            {
                if (!isDestroy) goto _L2; else goto _L1
_L1:
                return;
_L2:
                switch (message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    shortStepCount = ((Integer)SharedPreferencesUtils.getSharedPreferences(application, (new StringBuilder()).append(Keeper.getDeviceId(application)).append(DateTimeUtil.getDateStringByDate(new Date())).append("tempStepCount").toString(), Integer.valueOf(0))).intValue();
                    int j = ((Integer)message.obj).intValue();
                    int i = j;
                    if (shortStepCount > j)
                    {
                        i = shortStepCount;
                    }
                    setKmlStepAndKclaDta(i);
                    return;

                case 1: // '\001'
                    message = (List)message.obj;
                    sportGraphView.setDataInfo(message);
                    sportGraphView.invalidate();
                    graphHideView.setDataInfo(message, times);
                    graphHideView.invalidate();
                    return;

                case 2: // '\002'
                    shortStepCount = ((Integer)message.obj).intValue();
                    SharedPreferencesUtils.setSharedPreferences(application, (new StringBuilder()).append(Keeper.getDeviceId(application)).append(DateTimeUtil.getDateStringByDate(new Date())).append("tempStepCount").toString(), Integer.valueOf(shortStepCount));
                    setKmlStepAndKclaDta(shortStepCount);
                    return;

                case 3: // '\003'
                    band_power_value.setText((new StringBuilder()).append(String.valueOf(message.obj)).append("%").toString());
                    return;

                case 4: // '\004'
                    if (!TextUtils.isEmpty(Keeper.getBindDeviceMacAddress(application)))
                    {
                        bind_remind_view.setVisibility(0);
                        bind_remind_tip.setText(0x7f0c0185);
                        llTouchUPAndDown.setVisibility(8);
                        return;
                    }
                    break;

                case 5: // '\005'
                    bind_remind_view.setVisibility(8);
                    llTouchUPAndDown.setVisibility(0);
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = WalkFragment.this;
                super();
            }
        };
        syncDataHandler = new Handler() {

            final WalkFragment this$0;

            public void handleMessage(Message message)
            {
                if (syncTask != null) goto _L2; else goto _L1
_L1:
                return;
_L2:
                LogObject logobject = new LogObject("", "1", "0", DateTimeUtil.getNowTime(), "", "", "", "1.0", "");
                logobject.setDeviceId(Keeper.getDeviceId(application));
                logobject.setUserId(HealthyAccountHolder.getUserId(application));
                logobject.set_id((new StringBuilder()).append(logobject.getUserId()).append(logobject.getDeviceId()).append(logobject.getOptTime()).toString());
                logobject.setDeviceType(Keeper.getDeviceType(application));
                logobject.setFirmwareVer(Keeper.getDeviceRomVersion(application));
                switch (message.what)
                {
                case 1004: 
                case 1005: 
                case 1006: 
                case 1007: 
                case 1008: 
                default:
                    return;

                case 1000: 
                    roundProgressBar.setMax(100);
                    roundProgressBar.setProgress(0);
                    return;

                case 1002: 
                    if (message.obj != null)
                    {
                        roundProgressBar.setMax(100);
                        roundProgressBar.setProgress(((Integer)message.obj).intValue());
                        return;
                    }
                    break;

                case 1009: 
                    if (message.obj != null)
                    {
                        logobject.setResult("1");
                        HealthyDBLogOperate.addLogObject(application, logobject);
                        message = (DeviceSportAndSleepData)message.obj;
                        (new Thread(new SaveSyncDataRunnable(application, message, logobject, syncDataHandler))).start();
                        return;
                    }
                    break;

                case 1003: 
                    mPullRefreshScrollView.onRefreshComplete();
                    application.setHasSyncStepData(true);
                    if (message.obj != null)
                    {
                        logobject.setResult("1");
                        HealthyDBLogOperate.addLogObject(application, logobject);
                        message = (DeviceSportAndSleepData)message.obj;
                        (new Thread(new SaveSyncDataRunnable(application, message, logobject, syncDataHandler))).start();
                        return;
                    }
                    break;

                case 1001: 
                    syncTask = null;
                    mPullRefreshScrollView.onRefreshComplete();
                    logobject.setResult("0");
                    HealthyDBLogOperate.addLogObject(application, logobject);
                    refreshRoundView();
                    return;

                case 1010: 
                    syncTask = null;
                    refreshRoundView();
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = WalkFragment.this;
                super();
            }
        };
        queryPowerHandler = new Handler() {

            final WalkFragment this$0;

            public void handleMessage(Message message)
            {
                if (message.what == 1003)
                {
                    band_power_value.setText((new StringBuilder()).append(String.valueOf(message.obj)).append("%").toString());
                    return;
                } else
                {
                    queryPowerValueTask = new BleQueryPowerValueTask(application, queryPowerCallBack);
                    queryPowerValueTask.work();
                    return;
                }
            }

            
            {
                this$0 = WalkFragment.this;
                super();
            }
        };
        syncDataCallBack = new BleCallBack(syncDataHandler);
        queryPowerCallBack = new BleCallBack(queryPowerHandler);
        syncTask = null;
        queryPowerValueTask = null;
        intentFilter = new IntentFilter("ACTION_SHORT_SPORT_DATA");
        shortSportDataReceiver = new BroadcastReceiver() {

            final WalkFragment this$0;

            public void onReceive(Context context, Intent intent)
            {
                context = intent.getAction();
                if (context.equals("ACTION_SHORT_SPORT_DATA"))
                {
                    int i = intent.getIntExtra("EXTRA_DATA", 0);
                    context = new Message();
                    context.what = 2;
                    context.obj = Integer.valueOf(i);
                    handler.sendMessage(context);
                } else
                {
                    if (context.equals("ACTION_POWER_CHANGE_DATA"))
                    {
                        int j = intent.getIntExtra("EXTRA_DATA", 0);
                        context = new Message();
                        context.what = 3;
                        context.obj = Integer.valueOf(j);
                        handler.sendMessage(context);
                        return;
                    }
                    if (context.equals("ACTION_GATT_DISCONNECTED"))
                    {
                        context = new Message();
                        context.what = 4;
                        handler.sendMessage(context);
                        return;
                    }
                    if (context.equals("ACTION_GATT_SERVICES_DISCOVERED"))
                    {
                        context = new Message();
                        context.what = 5;
                        handler.sendMessage(context);
                        return;
                    }
                }
            }

            
            {
                this$0 = WalkFragment.this;
                super();
            }
        };
        y1 = 0.0F;
        y2 = 0.0F;
    }

    private void refreshRoundView()
    {
        (new Thread(new Runnable() {

            final WalkFragment this$0;

            public void run()
            {
                int j = 0;
                int i = 0;
                Object obj = DateTimeUtil.getDateString(0);
                Object obj1 = HealthyDBOperate.loadOriginSportDataByDate(MovnowTwoApplication.application, ((String) (obj)));
                if (obj1 != null)
                {
                    obj1 = ((List) (obj1)).iterator();
                    do
                    {
                        j = i;
                        if (!((Iterator) (obj1)).hasNext())
                        {
                            break;
                        }
                        i += Integer.parseInt(((SportData)((Iterator) (obj1)).next()).getSportStep());
                    } while (true);
                }
                handler.obtainMessage(0, Integer.valueOf(j)).sendToTarget();
                obj = HealthyDBOprateWalkData.loadSportDataByDate(MovnowTwoApplication.application, ((String) (obj)));
                if (obj != null)
                {
                    handler.obtainMessage(1, obj).sendToTarget();
                }
            }

            
            {
                this$0 = WalkFragment.this;
                super();
            }
        })).start();
    }

    private void sendIntent(Class class1)
    {
        class1 = new Intent(getActivity(), class1);
        getActivity().startActivity(class1);
    }

    private void setKmlStepAndKclaDta(int i)
    {
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(application, "personal_weight", Float.valueOf(50F))).floatValue();
        float f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(application, "personal_height", Float.valueOf(160F))).floatValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(application, "pre_DistanceType", Integer.valueOf(0))).intValue();
        int k = ((Integer)SharedPreferencesUtils.getSharedPreferences(application, "pre_Weight_Type", Integer.valueOf(1))).intValue();
        DebugUtil.logv("WalkFragment", (new StringBuilder()).append("distance_unit:").append(j).toString());
        DebugUtil.logv("WalkFragment", (new StringBuilder()).append("weight_unit:").append(k).toString());
        DebugUtil.logv("WalkFragment", (new StringBuilder()).append("person_height:").append(f1).toString());
        DebugUtil.logv("WalkFragment", (new StringBuilder()).append("person_weight:").append(f).toString());
        double d = StepDataConverterUtil.getDistance(application, i);
        double d1 = StepDataConverterUtil.getStepDistanceByHeight(f1, 0) * (double)i;
        DebugUtil.logv("WalkFragment", (new StringBuilder()).append("stepDistance:").append(d).toString());
        DebugUtil.logv("WalkFragment", (new StringBuilder()).append("stepDistanceKMUnit:").append(d1).toString());
        k = StepDataConverterUtil.getCaloryByWeightAndDisStance(f, d1, 1);
        if (j == 0)
        {
            tvDistance.setText(String.format(getString(0x7f0c0036), new Object[] {
                Double.valueOf(StepDataConverterUtil.getFormatDistance(d))
            }));
            tvDistanceUint.setText(getString(0x7f0c00b0));
            tvHideDistance.setText((new StringBuilder()).append(StepDataConverterUtil.getFormatDistance(d)).append("").toString());
            tvHideDistanceUint.setText(getString(0x7f0c003a));
        } else
        {
            tvDistance.setText(String.format(getString(0x7f0c0037), new Object[] {
                Double.valueOf(StepDataConverterUtil.getFormatDistance(d))
            }));
            tvDistanceUint.setText(getString(0x7f0c00b1));
            tvHideDistance.setText((new StringBuilder()).append(StepDataConverterUtil.getFormatDistance(d)).append("").toString());
            tvHideDistanceUint.setText(getString(0x7f0c003b));
        }
        DebugUtil.logv("setKmlStepAndKclaDta:", (new StringBuilder()).append("km:").append(d).append(":").append(" stepCount\uFF1A").append(i).append(" kcal:").append(k).toString());
        tvSteps.setText(String.format(getString(0x7f0c0038), new Object[] {
            Integer.valueOf(i)
        }));
        tvKcla.setText(String.format(getString(0x7f0c0039), new Object[] {
            Integer.valueOf(k)
        }));
        tvHideStepAccount.setText(String.valueOf(i));
        tvKcla.setText(String.format(getString(0x7f0c0039), new Object[] {
            Integer.valueOf(k)
        }));
        tvHideKcla.setText(String.valueOf(k));
        j = Integer.parseInt((String)SharedPreferencesUtils.getSharedPreferences(MovnowTwoApplication.application.getApplicationContext(), "pre_MyTarget", "7000"));
        tvPercent.setText(getString(0x7f0c009f, new Object[] {
            Integer.valueOf((i * 100) / j)
        }));
        roundProgressBar.setMax(j);
        roundProgressBar.setProgress(i);
    }

    private void syncStepData()
    {
        Object obj = HealthyDBSyncRecordOperate.loadLastSyncRecordByDataType(application, 1);
        long l = (System.currentTimeMillis() - startSyncTime) / 1000L;
        if (syncTask != null && l < 30L)
        {
            mPullRefreshScrollView.onRefreshComplete();
            return;
        }
        if (Keeper.getChangeToOldProtocol(application))
        {
            if (obj != null)
            {
                obj = DateTimeUtil.getStartSyncTime(application, 1);
                Calendar calendar = Calendar.getInstance();
                calendar.set(obj[0], obj[1] - 1, obj[2]);
                obj = calendar.getTime();
                syncTask = new BleSyncOldDeviceDataTask(application, syncDataCallBack, ((Date) (obj)), new Date());
            } else
            {
                syncTask = new BleSyncOldDeviceDataTask(application, syncDataCallBack);
            }
        } else
        if (obj != null)
        {
            int ai[] = DateTimeUtil.getStartSyncTime(application, 1);
            Calendar calendar1 = Calendar.getInstance();
            calendar1.set(ai[0], ai[1] - 1, ai[2]);
            Date date = calendar1.getTime();
            syncTask = new BleSyncNewDeviceDataTask(application, syncDataCallBack, 1, date, new Date());
        } else
        {
            syncTask = new BleSyncNewDeviceDataTask(application, syncDataCallBack, 1);
        }
        startSyncTime = System.currentTimeMillis();
        syncTask.work();
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 4: default 48
    //                   2131099838: 49
    //                   2131099840: 126
    //                   2131099845: 89
    //                   2131099871: 151;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        view = new Intent();
        view.setClass(getActivity(), com/veclink/movnow_q2/activity/ManagerCaloriesActivity);
        view.putExtra("date", StringUtil.formatCurrDate("yyyyMMdd"));
        startActivity(view);
        return;
_L4:
        mPullRefreshScrollView.setVisibility(8);
        llButtomHide.setVisibility(0);
        view = AnimationUtils.loadAnimation(getActivity(), 0x7f04000f);
        llButtomHide.startAnimation(view);
        return;
_L3:
        if (!MainActivity.mainActivity.getString(0x7f0c0000).equals("Pwatch"))
        {
            MainActivity.mainActivity.showShareDialog();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        view = bind_remind_tip.getText().toString();
        if (view.equals(getString(0x7f0c0178)))
        {
            sendIntent(com/veclink/movnow_q2/activity/BindbandActivity);
            return;
        }
        if (view.equals(getString(0x7f0c0185)))
        {
            if (!((BluetoothManager)application.getSystemService("bluetooth")).getAdapter().isEnabled())
            {
                ToastUtil.showShortToast(application, getString(0x7f0c018a));
                return;
            } else
            {
                VLBleServiceManager.getInstance().bindService(application);
                bind_remind_tip.setText(getString(0x7f0c0173));
                return;
            }
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        times.clear();
        times.add("03:00");
        times.add("06:00");
        times.add("09:00");
        times.add("12:00");
        times.add("15:00");
        times.add("18:00");
        times.add("21:00");
        intentFilter = new IntentFilter("ACTION_SHORT_SPORT_DATA");
        intentFilter.addAction("ACTION_POWER_CHANGE_DATA");
        intentFilter.addAction("ACTION_GATT_DISCONNECTED");
        intentFilter.addAction("ACTION_GATT_SERVICES_DISCOVERED");
        getActivity().registerReceiver(shortSportDataReceiver, intentFilter);
        application = MovnowTwoApplication.application;
        layoutinflater = layoutinflater.inflate(0x7f030039, viewgroup, false);
        llTouchUPAndDown = (LinearLayout)layoutinflater.findViewById(0x7f0600c2);
        imgSlidingDrower = (ImageView)layoutinflater.findViewById(0x7f0600c5);
        llManagerCalories = (LinearLayout)layoutinflater.findViewById(0x7f0600be);
        llShare = (LinearLayout)layoutinflater.findViewById(0x7f0600c0);
        tvTime = (TextView)layoutinflater.findViewById(0x7f0600b3);
        band_power_value = (TextView)layoutinflater.findViewById(0x7f0600d9);
        llButtomHide = (LinearLayout)layoutinflater.findViewById(0x7f0600c7);
        llOntouch = (LinearLayout)layoutinflater.findViewById(0x7f0600c8);
        sportGraphView = (SportGraphView)layoutinflater.findViewById(0x7f0600e1);
        graphHideView = (SportGraphHideView)layoutinflater.findViewById(0x7f0600e3);
        roundProgressBar = (RoundProgressBar)layoutinflater.findViewById(0x7f0600b5);
        roundProgressBar.setMax(Integer.parseInt((String)SharedPreferencesUtils.getSharedPreferences(application, "pre_MyTarget", "7000")));
        tvSteps = (TextView)layoutinflater.findViewById(0x7f0600da);
        tvPercent = (TextView)layoutinflater.findViewById(0x7f0600db);
        tvDistance = (TextView)layoutinflater.findViewById(0x7f0600dc);
        tvDistanceUint = (TextView)layoutinflater.findViewById(0x7f0600dd);
        tvKcla = (TextView)layoutinflater.findViewById(0x7f0600de);
        tvTargetSteps = (TextView)layoutinflater.findViewById(0x7f0600e2);
        tvHideDistance = (TextView)layoutinflater.findViewById(0x7f0600e5);
        tvHideDistanceUint = (TextView)layoutinflater.findViewById(0x7f0600e6);
        tvHideStepAccount = (TextView)layoutinflater.findViewById(0x7f0600e7);
        tvHideKcla = (TextView)layoutinflater.findViewById(0x7f0600e9);
        bind_remind_view = layoutinflater.findViewById(0x7f0600df);
        bind_remind_tip = (TextView)layoutinflater.findViewById(0x7f0600e0);
        bind_remind_view.setOnClickListener(this);
        llTouchUPAndDown.setOnTouchListener(this);
        llOntouch.setOnTouchListener(this);
        llManagerCalories.setOnClickListener(this);
        imgSlidingDrower.setOnClickListener(this);
        llShare.setOnClickListener(this);
        if (MainActivity.mainActivity.getString(0x7f0c0000).equals("Pwatch"))
        {
            llShare.setVisibility(8);
        }
        mPullRefreshScrollView = (PullToRefreshScrollView)layoutinflater.findViewById(0x7f0600d8);
        mPullRefreshScrollView.setOnRefreshListener(new com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener() {

            final WalkFragment this$0;

            public void onRefresh(PullToRefreshBase pulltorefreshbase)
            {
                if (Keeper.getBindDeviceMacAddress(application).equals(""))
                {
                    mPullRefreshScrollView.onRefreshComplete();
                    sendIntent(com/veclink/movnow_q2/activity/BindbandActivity);
                    return;
                } else
                {
                    syncStepData();
                    return;
                }
            }

            
            {
                this$0 = WalkFragment.this;
                super();
            }
        });
        return layoutinflater;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (syncTask != null)
        {
            syncTask.stopSyncTask();
            syncTask = null;
        }
        times.clear();
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        isDestroy = true;
        getActivity().unregisterReceiver(shortSportDataReceiver);
    }

    public void onDetach()
    {
        isDestroy = true;
        super.onDetach();
    }

    public void onResume()
    {
        super.onResume();
        Object obj;
        if (TextUtils.isEmpty(Keeper.getBindDeviceMacAddress(application)))
        {
            bind_remind_view.setVisibility(0);
            bind_remind_tip.setText(0x7f0c0178);
            llTouchUPAndDown.setVisibility(8);
        } else
        {
            bind_remind_view.setVisibility(8);
            llTouchUPAndDown.setVisibility(0);
        }
        obj = application;
        if (!MovnowTwoApplication.isConnected)
        {
            obj = new Message();
            obj.what = 4;
            handler.sendMessage(((Message) (obj)));
        }
        refreshRoundView();
        tvTime.setText(StringUtil.fromatCurrDateByLanguage());
        obj = (String)SharedPreferencesUtils.getSharedPreferences(application, "pre_MyTarget", "7000");
        tvTargetSteps.setText(getString(0x7f0c00a2, new Object[] {
            obj
        }));
        if (!TextUtils.isEmpty(Keeper.getBindDeviceMacAddress(application)) && !application.isHasSyncStepData())
        {
            syncStepData();
        }
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 34
    //                   1 50
    //                   2 32;
           goto _L1 _L2 _L3 _L1
_L1:
        return true;
_L2:
        motionevent.getRawX();
        y1 = motionevent.getRawY();
          goto _L1
_L3:
        float f = motionevent.getRawX();
        y2 = motionevent.getRawY();
        if (Math.sqrt(Math.abs(0.0F - f) * Math.abs(0.0F - f) + Math.abs(y1 - y2) * Math.abs(y1 - y2)) < 60D)
        {
            return false;
        }
        boolean flag;
        if (isHide && y1 - y2 > 0.0F)
        {
            mPullRefreshScrollView.setVisibility(8);
            llButtomHide.setVisibility(0);
            view = AnimationUtils.loadAnimation(getActivity(), 0x7f04000f);
            llButtomHide.startAnimation(view);
        } else
        if (!isHide && y1 - y2 < 0.0F)
        {
            mPullRefreshScrollView.setVisibility(0);
            llButtomHide.setVisibility(8);
            view = AnimationUtils.loadAnimation(getActivity(), 0x7f04000e);
            mPullRefreshScrollView.startAnimation(view);
        }
        if (!isHide)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isHide = flag;
        return true;
    }





/*
    static int access$102(WalkFragment walkfragment, int i)
    {
        walkfragment.shortStepCount = i;
        return i;
    }

*/













}
