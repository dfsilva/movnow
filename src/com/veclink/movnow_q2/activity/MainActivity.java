// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import cn.sharesdk.framework.ShareSDK;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.business.http.pojo.GetBraceletRomReponse;
import com.veclink.healthy.business.http.session.HealthyGetNewRomSession;
import com.veclink.healthy.view.ShareDialog;
import com.veclink.hw.bleservice.VLBleServiceManager;
import com.veclink.hw.bleservice.profile.BraceletGattAttributes;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.hw.devicetype.pojo.BaseDeviceProduct;
import com.veclink.movnow_q2.fragment.HeartRateFragment;
import com.veclink.movnow_q2.fragment.SleepFragment;
import com.veclink.movnow_q2.fragment.WalkFragment;
import com.veclink.movnow_q2.fragment.WaterFragment;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.DebugUtil;
import com.veclink.movnow_q2.util.MyActivityManager;
import com.veclink.movnow_q2.util.ScreenShot;
import com.veclink.movnow_q2.view.BaseRemindDialog;
import com.viewpagerindicator.IconPagerAdapter;
import com.viewpagerindicator.TabPageIndicator;
import de.greenrobot.event.EventBus;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealyBaseFragmentActivity, LoginActivity, SettingsActivity, WalkHistoryRecordActivity, 
//            SleepHistoryRecordActivity, HeartRateHistoryRecordActivity, MovnowTwoApplication, GuideIntroduceActivity, 
//            FirmwareUpdateActivity

public class MainActivity extends HealyBaseFragmentActivity
    implements android.view.View.OnClickListener
{
    class TabPageIndicatorAdapter extends FragmentStatePagerAdapter
        implements IconPagerAdapter
    {

        public List fragmentList;
        final MainActivity this$0;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
        }

        public int getCount()
        {
            return fragmentList.size();
        }

        public int getIconResId(int i)
        {
            return ((Integer)iconResList.get(i)).intValue();
        }

        public Fragment getItem(int i)
        {
            return (Fragment)fragmentList.get(i);
        }

        public int getItemPosition(Object obj)
        {
            return -2;
        }

        public TabPageIndicatorAdapter(FragmentManager fragmentmanager, List list)
        {
            this$0 = MainActivity.this;
            super(fragmentmanager);
            fragmentList = list;
        }
    }


    private static final String SHAREDPREFERENCES_NAME = "pre_introduce";
    public static MainActivity mainActivity;
    private int HEARTRATEPAGEINDEX;
    private final int SHOWGUIDEACTIVITY = 0;
    private final int SHOWUPDATEFIREREMINDDIALOG = 1;
    private final int SLEEPPAGEINDEX = 1;
    private final int WALKPAGEINDEX = 0;
    private int WATERPAGEINDEX;
    private TabPageIndicatorAdapter adapter;
    private MovnowTwoApplication application;
    private BaseDeviceProduct deviceProduct;
    long exitTime;
    private List fragmentList;
    private Handler handler;
    private HeartRateFragment heartRateFragment;
    private List iconResList;
    private TabPageIndicator indicator;
    boolean isFirstIn;
    boolean isFromBindBand;
    private int page;
    private SleepFragment sleepFragment;
    private TextView tvHistory;
    private TextView tvSettings;
    private ViewPager viewPager;
    private WalkFragment walkFragment;
    private WaterFragment waterFragment;

    public MainActivity()
    {
        page = 0;
        fragmentList = new ArrayList();
        iconResList = new ArrayList();
        WATERPAGEINDEX = 2;
        HEARTRATEPAGEINDEX = 3;
        isFirstIn = false;
        handler = new Handler() {

            final MainActivity this$0;

            public void handleMessage(Message message)
            {
                if (message.what == 0)
                {
                    message = new Intent();
                    message.setClass(MainActivity.this, com/veclink/movnow_q2/activity/GuideIntroduceActivity);
                    startActivity(message);
                    setGuided();
                } else
                if (message.what == 1)
                {
                    message = new BaseRemindDialog(MainActivity.mainActivity);
                    message.setOkBtnText(getString(0x7f0c0129));
                    message.setContent(getString(0x7f0c018b));
                    message.setOkListener(message. new android.view.View.OnClickListener() {

                        final _cls1 this$1;
                        final BaseRemindDialog val$dialog;

                        public void onClick(View view)
                        {
                            dialog.dismiss();
                            view = new Intent(MainActivity.mainActivity, com/veclink/movnow_q2/activity/FirmwareUpdateActivity);
                            startActivity(view);
                        }

            
            {
                this$1 = final__pcls1;
                dialog = BaseRemindDialog.this;
                super();
            }
                    });
                    message.show();
                    return;
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
    }

    private void clear()
    {
        walkFragment = null;
        sleepFragment = null;
        waterFragment = null;
    }

    private void initFragment()
    {
        if (walkFragment == null)
        {
            walkFragment = new WalkFragment();
        }
        if (sleepFragment == null)
        {
            sleepFragment = new SleepFragment();
        }
        if (waterFragment == null)
        {
            waterFragment = new WaterFragment();
        }
        if (heartRateFragment == null)
        {
            heartRateFragment = new HeartRateFragment();
        }
        if (fragmentList.size() == 0)
        {
            if (deviceProduct.canShowStepModule == 0)
            {
                fragmentList.add(walkFragment);
                iconResList.add(Integer.valueOf(0x7f0200fc));
            }
            if (deviceProduct.canShowSleepModule == 0)
            {
                fragmentList.add(sleepFragment);
                iconResList.add(Integer.valueOf(0x7f0200fb));
            }
            if (deviceProduct.canShowRemindModule == 0)
            {
                fragmentList.add(waterFragment);
                iconResList.add(Integer.valueOf(0x7f0200f9));
            }
            if (deviceProduct.canShowHeartReateModule == 0)
            {
                fragmentList.add(heartRateFragment);
                iconResList.add(Integer.valueOf(0x7f0200fa));
            }
        }
        adapter = new TabPageIndicatorAdapter(getSupportFragmentManager(), fragmentList);
        viewPager.setAdapter(adapter);
        viewPager.setOffscreenPageLimit(4);
        indicator = (TabPageIndicator)findViewById(0x7f060043);
        indicator.setViewPager(viewPager, 0);
        indicator.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final MainActivity this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                page = i;
                if (page == WATERPAGEINDEX)
                {
                    tvHistory.setVisibility(8);
                    return;
                } else
                {
                    tvHistory.setVisibility(0);
                    return;
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void initView()
    {
        viewPager = (ViewPager)findViewById(0x7f060045);
        tvSettings = (TextView)findViewById(0x7f060042);
        tvHistory = (TextView)findViewById(0x7f060044);
        tvSettings.setOnClickListener(this);
        tvHistory.setOnClickListener(this);
    }

    private void jumpToLogin()
    {
        startActivity(new Intent(this, com/veclink/movnow_q2/activity/LoginActivity));
    }

    private void setGuided()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("pre_introduce", 0).edit();
        editor.putBoolean("isFirstIn", false);
        editor.commit();
    }

    public void checkFirmwareUpdate()
    {
        while (!isFromBindBand || Keeper.getDeviceType(this).equals("")) 
        {
            return;
        }
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetBraceletRomReponse
        });
        EventBus.getDefault().register(this, com/veclink/healthy/business/http/pojo/GetBraceletRomReponse, new Class[0]);
        SimpleHttpSchedualer.ansycSchedual(this, new HealthyGetNewRomSession(mainActivity));
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131099714 2131099716: default 32
    //                   2131099714 33
    //                   2131099715 32
    //                   2131099716 56;
           goto _L1 _L2 _L1 _L3
_L1:
        return;
_L2:
        view = new Intent();
        view.setClass(this, com/veclink/movnow_q2/activity/SettingsActivity);
        startActivity(view);
        return;
_L3:
        if (page == 0)
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/WalkHistoryRecordActivity));
            return;
        }
        if (page == 1)
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/SleepHistoryRecordActivity));
            return;
        }
        if (page == HEARTRATEPAGEINDEX)
        {
            startActivity(new Intent(this, com/veclink/movnow_q2/activity/HeartRateHistoryRecordActivity));
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000a);
        application = (MovnowTwoApplication)getApplication();
        bundle = application;
        deviceProduct = MovnowTwoApplication.deviceProduct;
        ShareSDK.initSDK(this);
        initView();
        initFragment();
        mainActivity = this;
        isFirstIn = getSharedPreferences("pre_introduce", 0).getBoolean("isFirstIn", true);
        if (isFirstIn)
        {
            handler.sendEmptyMessageDelayed(0, 400L);
        }
        isFromBindBand = getIntent().getBooleanExtra("fromBindBand", false);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        ShareSDK.stopSDK(this);
    }

    public void onEvent(GetBraceletRomReponse getbraceletromreponse)
    {
        int i;
        int k;
        EventBus.getDefault().unregister(this, new Class[] {
            com/veclink/healthy/business/http/pojo/GetBraceletRomReponse
        });
        DebugUtil.logv("GetBraceletRomReponse", getbraceletromreponse.toString());
        i = 0;
        k = 0;
        if (!getbraceletromreponse.getError().equals("0")) goto _L2; else goto _L1
_L1:
        int j = Integer.parseInt(Keeper.getDeviceRomVersion(mainActivity));
        i = j;
        int l = Integer.parseInt(getbraceletromreponse.getVersion());
        i = l;
        k = j;
        j = i;
_L4:
        if (j > k && (HealthyAccountHolder.isNeedShowUpdateFirewareDialog(mainActivity) || isFromBindBand))
        {
            handler.sendEmptyMessage(1);
            HealthyAccountHolder.setUpdateFirewareRemidTime(mainActivity, System.currentTimeMillis());
        }
        isFromBindBand = false;
_L2:
        return;
        getbraceletromreponse;
        j = k;
        k = i;
        if (true) goto _L4; else goto _L3
_L3:
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
                clear();
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

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        isFromBindBand = getIntent().getBooleanExtra("fromBindBand", false);
    }

    protected void onResume()
    {
        super.onResume();
        if (HealthyAccountHolder.getSessionId(this).equals(""))
        {
            jumpToLogin();
        }
        if (!application.isServiceRunning(this, "com.veclink.hw.bleservice.VLBleService"))
        {
            if (!Keeper.getBindDeviceMacAddress(this).equals(""))
            {
                VLBleServiceManager.getInstance().unBindService(getApplication());
                VLBleServiceManager.getInstance().bindService(getApplication(), new BraceletGattAttributes());
                VLBleServiceManager.setAutoReConnect(true);
            }
            return;
        } else
        {
            Log.v(getPackageName(), "isRunning");
            return;
        }
    }

    protected void onResumeFragments()
    {
        super.onResumeFragments();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (!(new File(ShareDialog.getImageFilePath())).exists())
        {
            (new Thread() {

                final MainActivity this$0;

                public void run()
                {
                    ScreenShot.shoot(MainActivity.mainActivity, ShareDialog.getImageFilePath());
                }

            
            {
                this$0 = MainActivity.this;
                super();
            }
            }).start();
        }
    }

    public void showShareDialog()
    {
        (new ShareDialog(mainActivity, new Date())).show();
    }




/*
    static int access$102(MainActivity mainactivity, int i)
    {
        mainactivity.page = i;
        return i;
    }

*/



}
