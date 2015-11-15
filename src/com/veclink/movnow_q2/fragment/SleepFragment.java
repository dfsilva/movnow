// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshScrollView;
import com.veclink.bracelet.bean.DeviceSportAndSleepData;
import com.veclink.bracelet.bletask.BleCallBack;
import com.veclink.bracelet.bletask.BleSyncNewDeviceDataTask;
import com.veclink.bracelet.bletask.BleTask;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.entity.LogObject;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.op.HealthyDBLogOperate;
import com.veclink.healthy.database.op.HealthyDBOprateSleepData;
import com.veclink.healthy.database.op.HealthyDBSyncRecordOperate;
import com.veclink.healthy.task.SaveSyncDataRunnable;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.BindbandActivity;
import com.veclink.movnow_q2.activity.MainActivity;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.SleepStatus;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.RoundProgressBar;
import com.veclink.movnow_q2.view.SleepBarGraphView;
import com.veclink.movnow_q2.view.SleepHideBarGraphView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SleepFragment extends Fragment
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    public static final int GET_SLEEP_AT_NIGHT = 2;
    public static final int GET_SLEEP_DAY_TIME = 1;
    public static final int GET_SLEEP_TIME = 0;
    public static final String TAG = "SleepFragment";
    MovnowTwoApplication application;
    private List atnight;
    private SleepBarGraphView barGraphView;
    private List daySleepDatas;
    private List daytimes;
    private Handler handler;
    private SleepHideBarGraphView hideBarGraphView;
    private ImageView imgSlidingDrower;
    private boolean isDestroy;
    private boolean isHide;
    private LinearLayout llButtomHide;
    private LinearLayout llDeepSleepLarge;
    private LinearLayout llLightSleepLarge;
    private LinearLayout llOntouch;
    private LinearLayout llTouchUPAndDown;
    private Context mContext;
    private PullToRefreshScrollView mPullRefreshScrollView;
    private List nightSleepDatas;
    private RelativeLayout rlDeepSleepMiddle;
    private RelativeLayout rlDeepSleepSmall;
    private RelativeLayout rlLightSleepMiddle;
    private RelativeLayout rlLightSleepSmall;
    private RoundProgressBar roundProgressBar;
    private long startSyncTime;
    BleCallBack syncDataCallBack;
    Handler syncDataHandler;
    BleTask syncTask;
    private TextView tvAtnightDeepSleepTime;
    private TextView tvAtnightLightSleepTime;
    private TextView tvAtnightSleepTime;
    private TextView tvDaytimeDeepSleepTime;
    private TextView tvDaytimeLightSleepTime;
    private TextView tvDaytimeSleepTime;
    private TextView tvDeepSleepTime;
    private TextView tvLightSleepTime;
    private TextView tvSleepTotalTime;
    private TextView tvTime;
    float y1;
    float y2;

    public SleepFragment()
    {
        isHide = false;
        atnight = new ArrayList();
        daytimes = new ArrayList();
        isDestroy = false;
        syncDataHandler = new Handler() {

            final SleepFragment this$0;

            public void handleMessage(Message message)
            {
                if (syncTask != null && !isDestroy) goto _L2; else goto _L1
_L1:
                return;
_L2:
                LogObject logobject = new LogObject("", "1", "0", DateTimeUtil.getNowTime(), "", "", "", "1.0", "");
                logobject.setDeviceId(Keeper.getDeviceId(mContext));
                logobject.setUserId(HealthyAccountHolder.getUserId(mContext));
                logobject.set_id((new StringBuilder()).append(logobject.getUserId()).append(logobject.getDeviceId()).append(logobject.getOptTime()).toString());
                logobject.setDeviceType(Keeper.getDeviceType(mContext));
                logobject.setFirmwareVer(Keeper.getDeviceRomVersion(mContext));
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
                        HealthyDBLogOperate.addLogObject(mContext, logobject);
                        message = (DeviceSportAndSleepData)message.obj;
                        (new Thread(new SaveSyncDataRunnable(mContext, message, logobject, syncDataHandler))).start();
                        return;
                    }
                    break;

                case 1003: 
                    mPullRefreshScrollView.onRefreshComplete();
                    application.setHasSyncSleepData(true);
                    if (message.obj != null)
                    {
                        logobject.setResult("1");
                        HealthyDBLogOperate.addLogObject(mContext, logobject);
                        message = (DeviceSportAndSleepData)message.obj;
                        (new Thread(new SaveSyncDataRunnable(mContext, message, logobject, syncDataHandler))).start();
                    }
                    MainActivity.mainActivity.checkFirmwareUpdate();
                    return;

                case 1001: 
                    mPullRefreshScrollView.onRefreshComplete();
                    logobject.setResult("0");
                    HealthyDBLogOperate.addLogObject(mContext, logobject);
                    roundProgressBar.setMax(1440);
                    refreshView();
                    syncTask = null;
                    MainActivity.mainActivity.checkFirmwareUpdate();
                    return;

                case 1010: 
                    roundProgressBar.setMax(1440);
                    refreshView();
                    syncTask = null;
                    return;
                }
                if (true) goto _L1; else goto _L3
_L3:
            }

            
            {
                this$0 = SleepFragment.this;
                super();
            }
        };
        syncDataCallBack = new BleCallBack(syncDataHandler);
        syncTask = null;
        handler = new Handler() {

            final SleepFragment this$0;

            public void handleMessage(Message message)
            {
                int j;
                int l;
                int j1;
                switch (message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    message = (SleepStatus)message.obj;
                    roundProgressBar.setMax(1440);
                    roundProgressBar.setProgress(message.getTotalTimes());
                    tvSleepTotalTime.setText(DateTimeUtil.secToTime(message.getTotalTimes() * 60));
                    tvLightSleepTime.setText(DateTimeUtil.secToTime(message.getLightTimes() * 60));
                    tvDeepSleepTime.setText(DateTimeUtil.secToTime(message.getDeepTimes() * 60));
                    return;

                case 1: // '\001'
                    message = (ArrayList)message.obj;
                    int i1 = 0;
                    int k = 0;
                    int i = 0;
                    hideBarGraphView.init(message, daytimes, false);
                    hideBarGraphView.invalidate();
                    barGraphView.init(message, daytimes, false);
                    barGraphView.invalidate();
                    daySleepDatas = message;
                    for (message = message.iterator(); message.hasNext();)
                    {
                        SleepData sleepdata = (SleepData)message.next();
                        i1 += sleepdata.getSleepDuration();
                        if (sleepdata != null && sleepdata.getSleepState().equals("0"))
                        {
                            k += sleepdata.getSleepDuration();
                        } else
                        {
                            i += sleepdata.getSleepDuration();
                        }
                    }

                    Log.d("SleepFragment", (new StringBuilder()).append("daytime:").append(i1).toString());
                    Log.d("SleepFragment", (new StringBuilder()).append("daytimeDeepTime:").append(k).toString());
                    Log.d("SleepFragment", (new StringBuilder()).append("daytimeLightTime:").append(i).toString());
                    tvDaytimeSleepTime.setText(DateTimeUtil.secToTime(i1 * 60));
                    tvDaytimeDeepSleepTime.setText(DateTimeUtil.secToTime(k * 60));
                    tvDaytimeLightSleepTime.setText(DateTimeUtil.secToTime(i * 60));
                    return;

                case 2: // '\002'
                    message = (ArrayList)message.obj;
                    nightSleepDatas = message;
                    hideBarGraphView.init(message, atnight, true);
                    hideBarGraphView.postInvalidate();
                    barGraphView.init(message, atnight, true);
                    barGraphView.postInvalidate();
                    j1 = 0;
                    l = 0;
                    j = 0;
                    message = message.iterator();
                    break;
                }
                while (message.hasNext()) 
                {
                    SleepData sleepdata1 = (SleepData)message.next();
                    j1 += sleepdata1.getSleepDuration();
                    if (sleepdata1 != null && sleepdata1.getSleepState().equals("0"))
                    {
                        l += sleepdata1.getSleepDuration();
                    } else
                    {
                        j += sleepdata1.getSleepDuration();
                    }
                }
                Log.d("SleepFragment", (new StringBuilder()).append("atnightTotal:").append(j1).toString());
                Log.d("SleepFragment", (new StringBuilder()).append("atnightDeepTime:").append(l).toString());
                Log.d("SleepFragment", (new StringBuilder()).append("atnightLightTime:").append(j).toString());
                tvAtnightSleepTime.setText(DateTimeUtil.secToTime(j1 * 60));
                tvAtnightDeepSleepTime.setText(DateTimeUtil.secToTime(l * 60));
                tvAtnightLightSleepTime.setText(DateTimeUtil.secToTime(j * 60));
            }

            
            {
                this$0 = SleepFragment.this;
                super();
            }
        };
        y1 = 0.0F;
        y2 = 0.0F;
    }

    private void refreshView()
    {
        Calendar calendar = Calendar.getInstance();
        final String currentDay = StringUtil.formatCurrDate(calendar.getTime());
        calendar.add(5, -1);
        (new Thread() {

            final SleepFragment this$0;
            final String val$currentDay;
            final String val$preDay;

            public void run()
            {
                Object obj = MovnowTwoApplication.application;
                List list = HealthyDBOprateSleepData.selectSleepDataByDay(((Context) (obj)), currentDay);
                List list1 = HealthyDBOprateSleepData.selectPreDaySleepData(((Context) (obj)), preDay);
                ArrayList arraylist = new ArrayList();
                ArrayList arraylist1 = new ArrayList();
                boolean flag = false;
                int j1 = 0;
                int k = 0;
                int i1 = 0;
                int i = 0;
                if (list1 != null)
                {
                    int k1 = 0;
                    do
                    {
                        i1 = i;
                        j1 = k;
                        if (k1 >= list1.size())
                        {
                            break;
                        }
                        i1 = ((SleepData)list1.get(k1)).getStartTime();
                        Log.d("SleepFragment", (new StringBuilder()).append("\u524D\u4E00\u5929\u665A\u4E0A21:00-24:00-------------").append(DateTimeUtil.secToTime(i1 * 60)).toString());
                        arraylist1.add(list1.get(k1));
                        if ("0".equals(((SleepData)list1.get(k1)).getSleepState()))
                        {
                            i += ((SleepData)list1.get(k1)).getSleepDuration();
                        } else
                        {
                            k += ((SleepData)list1.get(k1)).getSleepDuration();
                        }
                        k1++;
                    } while (true);
                } else
                {
                    new ArrayList();
                }
                if (list != null)
                {
                    int j = 0;
                    int l = ((flag) ? 1 : 0);
                    while (j < list.size()) 
                    {
                        int l1 = ((SleepData)list.get(j)).getStartTime();
                        l += ((SleepData)list.get(j)).getSleepDuration();
                        if ("0".equals(((SleepData)list.get(j)).getSleepState()))
                        {
                            i1 += ((SleepData)list.get(j)).getSleepDuration();
                        } else
                        {
                            j1 += ((SleepData)list.get(j)).getSleepDuration();
                        }
                        if (l1 >= 540)
                        {
                            arraylist.add(list.get(j));
                        } else
                        {
                            arraylist1.add(list.get(j));
                        }
                        j++;
                    }
                }
                obj = HealthyDBOprateSleepData.querySleepTotalTimeFromZeroToTwentyFour(((Context) (obj)), currentDay);
                handler.obtainMessage(0, obj).sendToTarget();
                handler.obtainMessage(1, arraylist).sendToTarget();
                handler.obtainMessage(2, arraylist1).sendToTarget();
            }

            
            {
                this$0 = SleepFragment.this;
                currentDay = s;
                preDay = s1;
                super();
            }
        }).start();
    }

    private void sendIntent(Class class1)
    {
        class1 = new Intent(getActivity(), class1);
        getActivity().startActivity(class1);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        tvTime.setText(StringUtil.fromatCurrDateByLanguage());
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
    }

    public void onClick(View view)
    {
        android.view.animation.Animation animation;
        android.view.animation.Animation animation1;
        animation = AnimationUtils.loadAnimation(getActivity(), 0x7f040010);
        animation1 = AnimationUtils.loadAnimation(getActivity(), 0x7f040011);
        view.getId();
        JVM INSTR lookupswitch 5: default 76
    //                   2131099845: 387
    //                   2131099852: 77
    //                   2131099853: 181
    //                   2131099859: 232
    //                   2131099860: 336;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break MISSING_BLOCK_LABEL_387;
_L7:
        return;
_L3:
        llDeepSleepLarge.startAnimation(animation);
        llLightSleepLarge.startAnimation(animation1);
        llDeepSleepLarge.setVisibility(0);
        rlDeepSleepSmall.setVisibility(8);
        llLightSleepLarge.setVisibility(8);
        rlLightSleepSmall.setVisibility(0);
        if (nightSleepDatas != null)
        {
            hideBarGraphView.init(nightSleepDatas, atnight, true);
            hideBarGraphView.invalidate();
            barGraphView.init(nightSleepDatas, atnight, true);
            barGraphView.invalidate();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        llDeepSleepLarge.startAnimation(animation1);
        llLightSleepLarge.startAnimation(animation);
        llDeepSleepLarge.setVisibility(8);
        rlDeepSleepSmall.setVisibility(0);
        llLightSleepLarge.setVisibility(0);
        rlLightSleepSmall.setVisibility(8);
        return;
_L5:
        llDeepSleepLarge.startAnimation(animation1);
        rlLightSleepSmall.startAnimation(animation);
        llDeepSleepLarge.setVisibility(8);
        rlDeepSleepSmall.setVisibility(0);
        llLightSleepLarge.setVisibility(0);
        rlLightSleepSmall.setVisibility(8);
        if (daySleepDatas != null)
        {
            hideBarGraphView.init(daySleepDatas, daytimes, false);
            hideBarGraphView.invalidate();
            barGraphView.init(daySleepDatas, daytimes, false);
            barGraphView.invalidate();
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
        llDeepSleepLarge.startAnimation(animation);
        llLightSleepLarge.startAnimation(animation1);
        llDeepSleepLarge.setVisibility(0);
        rlDeepSleepSmall.setVisibility(8);
        llLightSleepLarge.setVisibility(8);
        rlLightSleepSmall.setVisibility(0);
        return;
        mPullRefreshScrollView.setVisibility(8);
        llButtomHide.setVisibility(0);
        view = AnimationUtils.loadAnimation(getActivity(), 0x7f04000f);
        llButtomHide.startAnimation(view);
        return;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f030038, viewgroup, false);
        mContext = getActivity();
        application = MovnowTwoApplication.application;
        llTouchUPAndDown = (LinearLayout)layoutinflater.findViewById(0x7f0600c2);
        tvTime = (TextView)layoutinflater.findViewById(0x7f0600b3);
        tvSleepTotalTime = (TextView)layoutinflater.findViewById(0x7f0600bb);
        tvLightSleepTime = (TextView)layoutinflater.findViewById(0x7f0600bd);
        tvDeepSleepTime = (TextView)layoutinflater.findViewById(0x7f0600bc);
        llButtomHide = (LinearLayout)layoutinflater.findViewById(0x7f0600c7);
        llOntouch = (LinearLayout)layoutinflater.findViewById(0x7f0600c8);
        roundProgressBar = (RoundProgressBar)layoutinflater.findViewById(0x7f0600b9);
        rlDeepSleepMiddle = (RelativeLayout)layoutinflater.findViewById(0x7f0600ca);
        rlDeepSleepSmall = (RelativeLayout)layoutinflater.findViewById(0x7f0600cc);
        llDeepSleepLarge = (LinearLayout)layoutinflater.findViewById(0x7f0600cd);
        imgSlidingDrower = (ImageView)layoutinflater.findViewById(0x7f0600c5);
        imgSlidingDrower.setOnClickListener(this);
        llDeepSleepLarge.setVisibility(0);
        rlDeepSleepSmall.setOnClickListener(this);
        llDeepSleepLarge.setOnClickListener(this);
        rlLightSleepMiddle = (RelativeLayout)layoutinflater.findViewById(0x7f0600d1);
        rlLightSleepSmall = (RelativeLayout)layoutinflater.findViewById(0x7f0600d3);
        llLightSleepLarge = (LinearLayout)layoutinflater.findViewById(0x7f0600d4);
        rlLightSleepSmall.setVisibility(0);
        rlLightSleepSmall.setOnClickListener(this);
        llLightSleepLarge.setOnClickListener(this);
        roundProgressBar.setMax(1440);
        hideBarGraphView = (SleepHideBarGraphView)layoutinflater.findViewById(0x7f0600c9);
        barGraphView = (SleepBarGraphView)layoutinflater.findViewById(0x7f0600c6);
        tvAtnightSleepTime = (TextView)layoutinflater.findViewById(0x7f0600ce);
        tvAtnightDeepSleepTime = (TextView)layoutinflater.findViewById(0x7f0600cf);
        tvAtnightLightSleepTime = (TextView)layoutinflater.findViewById(0x7f0600d0);
        tvDaytimeSleepTime = (TextView)layoutinflater.findViewById(0x7f0600d5);
        tvDaytimeDeepSleepTime = (TextView)layoutinflater.findViewById(0x7f0600d6);
        tvDaytimeLightSleepTime = (TextView)layoutinflater.findViewById(0x7f0600d7);
        llTouchUPAndDown.setOnTouchListener(this);
        llOntouch.setOnTouchListener(this);
        mPullRefreshScrollView = (PullToRefreshScrollView)layoutinflater.findViewById(0x7f0600b7);
        mPullRefreshScrollView.setOnRefreshListener(new com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener() {

            final SleepFragment this$0;

            public void onRefresh(PullToRefreshBase pulltorefreshbase)
            {
                if (Keeper.getBindDeviceMacAddress(application).equals(""))
                {
                    mPullRefreshScrollView.onRefreshComplete();
                    sendIntent(com/veclink/movnow_q2/activity/BindbandActivity);
                    return;
                } else
                {
                    syncSleepData();
                    return;
                }
            }

            
            {
                this$0 = SleepFragment.this;
                super();
            }
        });
        atnight.clear();
        atnight.add("21:00");
        atnight.add("23:00");
        atnight.add("01:00");
        atnight.add("03:00");
        atnight.add("05:00");
        atnight.add("07:00");
        atnight.add("09:00");
        daytimes.clear();
        daytimes.add("09:00");
        daytimes.add("11:00");
        daytimes.add("13:00");
        daytimes.add("15:00");
        daytimes.add("17:00");
        daytimes.add("19:00");
        daytimes.add("21:00");
        nightSleepDatas = new ArrayList();
        daySleepDatas = new ArrayList();
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
        atnight.clear();
        daytimes.clear();
    }

    public void onDestroyView()
    {
        super.onDestroyView();
        isDestroy = true;
    }

    public void onDetach()
    {
        isDestroy = true;
        super.onDetach();
    }

    public void onResume()
    {
        super.onResume();
        if (!application.isHasSyncSleepData() && !TextUtils.isEmpty(Keeper.getBindDeviceMacAddress(mContext)))
        {
            syncSleepData();
        }
        refreshView();
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

    public void syncSleepData()
    {
        com.veclink.healthy.database.entity.SyncRecord syncrecord = HealthyDBSyncRecordOperate.loadLastSyncRecordByDataType(mContext, 2);
        long l = (System.currentTimeMillis() - startSyncTime) / 1000L;
        if (syncTask != null && l < 30L)
        {
            mPullRefreshScrollView.onRefreshComplete();
            return;
        }
        if (Keeper.getChangeToOldProtocol(application))
        {
            roundProgressBar.setMax(1440);
            refreshView();
            syncDataHandler.sendEmptyMessage(1003);
            mPullRefreshScrollView.onRefreshComplete();
            return;
        }
        if (syncrecord != null)
        {
            int ai[] = DateTimeUtil.getStartSyncTime(mContext, 2);
            Calendar calendar = Calendar.getInstance();
            calendar.set(ai[0], ai[1] - 1, ai[2]);
            Date date = calendar.getTime();
            syncTask = new BleSyncNewDeviceDataTask(mContext, syncDataCallBack, 2, date, new Date());
        } else
        {
            syncTask = new BleSyncNewDeviceDataTask(mContext, syncDataCallBack, 2);
        }
        startSyncTime = System.currentTimeMillis();
        syncTask.work();
    }






/*
    static List access$1202(SleepFragment sleepfragment, List list)
    {
        sleepfragment.daySleepDatas = list;
        return list;
    }

*/





/*
    static List access$1602(SleepFragment sleepfragment, List list)
    {
        sleepfragment.nightSleepDatas = list;
        return list;
    }

*/













}
