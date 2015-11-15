// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.op.HealthyDBOprateSleepData;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.SleepStatus;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.RoundProgressBar;
import com.veclink.movnow_q2.view.SleepBarGraphView;
import com.veclink.movnow_q2.view.SleepHideBarGraphView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealyBaseFragmentActivity

public class SleepDateHistoryRecordActivity extends HealyBaseFragmentActivity
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{
    class ViewPaperAdapter extends PagerAdapter
    {

        final SleepDateHistoryRecordActivity this$0;
        private List views;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)views.get(i));
        }

        public int getCount()
        {
            return views.size();
        }

        public CharSequence getPageTitle(int i)
        {
            return String.valueOf(i + 1);
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            viewgroup.addView((View)views.get(i), 0);
            return views.get(i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }

        public ViewPaperAdapter(List list)
        {
            this$0 = SleepDateHistoryRecordActivity.this;
            super();
            views = list;
        }
    }


    public static final int GET_SLEEP_AT_NIGHT = 2;
    public static final int GET_SLEEP_DAY_TIME = 1;
    public static final int GET_SLEEP_TIME = 0;
    public static final String TAG = "SleepDateHistoryRecordActivity";
    private List atnight;
    private List atnightDeepSleepTimeList;
    private List atnightLightSleepTimeList;
    private List atnightSleepTimeList;
    private List bottomHideList;
    private Calendar calendar;
    private Date currentDate;
    private Date date;
    private SparseArray daySleepDatas;
    private List daytimeDeepSleepTimeList;
    private List daytimeLightSleepTimeList;
    private List daytimeSleepTimeList;
    private List daytimes;
    private List deepSleepLargeList;
    private List deepSleepSmallList;
    private Handler handler;
    private ImageView imgSlidingDrower;
    private List imgUpList;
    private boolean isHide;
    private List lightSleepLargeList;
    private List lightSleepSmallList;
    private LinearLayout llBottomHide;
    private LinearLayout llDeepSleepLarge;
    private LinearLayout llLightSleepLarge;
    private LinearLayout llTopHide;
    private LinearLayout lltouchDown;
    private LinearLayout lltouchUp;
    private Context mContext;
    private int mMonth;
    private int mYear;
    private SparseArray nightSleepDatas;
    private List progressBarList;
    private RelativeLayout rlDeepSleepSmall;
    private RelativeLayout rlLightSleepSmall;
    private RoundProgressBar roundProgressBarStep;
    private int selectMonth;
    private SleepBarGraphView sleepBarGraphView;
    private List sleepBarGraphViewList;
    private List sleepDeepTimeList;
    private SleepHideBarGraphView sleepHideBarGraphView;
    private List sleepHideBarGraphViewList;
    private List sleepLightTimeList;
    private List sleepTotalTimeList;
    private int strDay;
    private PagerTabStrip tabStrip;
    private List times;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private List topHideList;
    private int totalMonthDay;
    private List touchDownList;
    private List touchUPList;
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
    private ViewPager viewPager;
    private List viewPapers;
    float y1;
    float y2;

    public SleepDateHistoryRecordActivity()
    {
        selectMonth = 0;
        isHide = false;
        atnight = new ArrayList();
        daytimes = new ArrayList();
        times = new ArrayList();
        handler = new Handler() {

            final SleepDateHistoryRecordActivity this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 2: default 32
            //                           0 33
            //                           1 201
            //                           2 640;
                   goto _L1 _L2 _L3 _L4
_L1:
                return;
_L2:
                if ((message = (SparseArray)message.obj) != null && message.size() > 0)
                {
                    int i = message.size();
                    while (i > 0) 
                    {
                        if (message.get(i) != null)
                        {
                            ((TextView)sleepTotalTimeList.get(i - 1)).setText(DateTimeUtil.secToTime(((SleepStatus)message.get(i)).getTotalTimes() * 60));
                            ((TextView)sleepLightTimeList.get(i - 1)).setText(DateTimeUtil.secToTime(((SleepStatus)message.get(i)).getLightTimes() * 60));
                            ((TextView)sleepDeepTimeList.get(i - 1)).setText(DateTimeUtil.secToTime(((SleepStatus)message.get(i)).getDeepTimes() * 60));
                        }
                        i--;
                    }
                }
                continue; /* Loop/switch isn't completed */
_L3:
                message = (SparseArray)message.obj;
                daySleepDatas = message;
                if (message != null && message.size() > 0)
                {
                    int j = message.size();
                    while (j > 0) 
                    {
                        int l1 = 0;
                        int j1 = 0;
                        int l = 0;
                        if (message.get(j) != null)
                        {
                            ((SleepBarGraphView)sleepBarGraphViewList.get(j - 1)).init((List)message.get(j), daytimes, false);
                            ((SleepBarGraphView)sleepBarGraphViewList.get(j - 1)).invalidate();
                            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(j - 1)).init((List)message.get(j), daytimes, false);
                            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(j - 1)).invalidate();
                            for (Iterator iterator = ((List)message.get(j)).iterator(); iterator.hasNext();)
                            {
                                SleepData sleepdata = (SleepData)iterator.next();
                                l1 += sleepdata.getSleepDuration();
                                if (sleepdata != null && sleepdata.getSleepState().equals("0"))
                                {
                                    j1 += sleepdata.getSleepDuration();
                                } else
                                {
                                    l += sleepdata.getSleepDuration();
                                }
                            }

                            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("daytimeTotal:").append(l1).toString());
                            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("daytimeDeepTime:").append(j1).toString());
                            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("daytimeLightTime:").append(l).toString());
                            ((TextView)daytimeSleepTimeList.get(j - 1)).setText(DateTimeUtil.secToTime(l1 * 60));
                            ((TextView)daytimeDeepSleepTimeList.get(j - 1)).setText(DateTimeUtil.secToTime(j1 * 60));
                            ((TextView)daytimeLightSleepTimeList.get(j - 1)).setText(DateTimeUtil.secToTime(l * 60));
                        }
                        j--;
                    }
                }
                continue; /* Loop/switch isn't completed */
_L4:
                message = (SparseArray)message.obj;
                nightSleepDatas = message;
                if (message != null && message.size() > 0)
                {
                    int k = message.size();
                    while (k > 0) 
                    {
                        int i2 = 0;
                        int k1 = 0;
                        int i1 = 0;
                        if (message.get(k) != null)
                        {
                            ((SleepBarGraphView)sleepBarGraphViewList.get(k - 1)).init((List)message.get(k), atnight, true);
                            ((SleepBarGraphView)sleepBarGraphViewList.get(k - 1)).invalidate();
                            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(k - 1)).init((List)message.get(k), atnight, true);
                            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(k - 1)).invalidate();
                            for (Iterator iterator1 = ((List)message.get(k)).iterator(); iterator1.hasNext();)
                            {
                                SleepData sleepdata1 = (SleepData)iterator1.next();
                                i2 += sleepdata1.getSleepDuration();
                                if (sleepdata1 != null && sleepdata1.getSleepState().equals("0"))
                                {
                                    k1 += sleepdata1.getSleepDuration();
                                } else
                                {
                                    i1 += sleepdata1.getSleepDuration();
                                }
                            }

                            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("atnightTotal:").append(i2).toString());
                            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("atnightDeepTime:").append(k1).toString());
                            Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("atnightLightTime:").append(i1).toString());
                            ((TextView)atnightSleepTimeList.get(k - 1)).setText(DateTimeUtil.secToTime(i2 * 60));
                            ((TextView)atnightDeepSleepTimeList.get(k - 1)).setText(DateTimeUtil.secToTime(k1 * 60));
                            ((TextView)atnightLightSleepTimeList.get(k - 1)).setText(DateTimeUtil.secToTime(i1 * 60));
                        }
                        k--;
                    }
                }
                if (true) goto _L1; else goto _L5
_L5:
            }

            
            {
                this$0 = SleepDateHistoryRecordActivity.this;
                super();
            }
        };
        y1 = 0.0F;
        y2 = 0.0F;
    }

    private void initViews()
    {
        titleBarRelativeLayout = (TitleBarRelativeLayout)findViewById(0x7f060032);
        titleBarRelativeLayout.setRightVisisble(0);
        viewPager = (ViewPager)findViewById(0x7f06006c);
        tabStrip = (PagerTabStrip)findViewById(0x7f06006d);
        tabStrip.setTabIndicatorColorResource(0x7f080015);
        tabStrip.setDrawFullUnderline(false);
        tabStrip.setTextColor(getResources().getColor(0x7f080015));
    }

    public static void launchActivity(Activity activity, Date date1)
    {
        Intent intent = new Intent(activity, com/veclink/movnow_q2/activity/SleepDateHistoryRecordActivity);
        Bundle bundle = new Bundle();
        bundle.putSerializable("date", date1);
        intent.putExtras(bundle);
        activity.startActivity(intent);
    }

    public void onClick(View view)
    {
        android.view.animation.Animation animation;
        android.view.animation.Animation animation1;
        animation = AnimationUtils.loadAnimation(mContext, 0x7f040010);
        animation1 = AnimationUtils.loadAnimation(mContext, 0x7f040011);
        view.getId();
        JVM INSTR tableswitch 2131099845 2131099860: default 104
    //                   2131099845 1013
    //                   2131099846 104
    //                   2131099847 104
    //                   2131099848 104
    //                   2131099849 104
    //                   2131099850 104
    //                   2131099851 104
    //                   2131099852 105
    //                   2131099853 418
    //                   2131099854 104
    //                   2131099855 104
    //                   2131099856 104
    //                   2131099857 104
    //                   2131099858 104
    //                   2131099859 559
    //                   2131099860 872;
           goto _L1 _L2 _L1 _L1 _L1 _L1 _L1 _L1 _L3 _L4 _L1 _L1 _L1 _L1 _L1 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break MISSING_BLOCK_LABEL_1013;
_L7:
        return;
_L3:
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation);
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation1);
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(0);
        ((RelativeLayout)deepSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((RelativeLayout)lightSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(0);
        if (nightSleepDatas != null && nightSleepDatas.size() > 0 && nightSleepDatas.get(viewPager.getCurrentItem() + 1) != null)
        {
            ((SleepBarGraphView)sleepBarGraphViewList.get(viewPager.getCurrentItem())).init((List)nightSleepDatas.get(viewPager.getCurrentItem() + 1), atnight, true);
            ((SleepBarGraphView)sleepBarGraphViewList.get(viewPager.getCurrentItem())).invalidate();
            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(viewPager.getCurrentItem())).init((List)nightSleepDatas.get(viewPager.getCurrentItem() + 1), atnight, true);
            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(viewPager.getCurrentItem())).invalidate();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation);
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation1);
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((RelativeLayout)deepSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(0);
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(0);
        ((RelativeLayout)lightSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(8);
        return;
_L5:
        ((RelativeLayout)lightSleepSmallList.get(viewPager.getCurrentItem())).startAnimation(animation);
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation1);
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((RelativeLayout)deepSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(0);
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(0);
        ((RelativeLayout)lightSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(8);
        if (daySleepDatas != null && daySleepDatas.size() > 0 && daySleepDatas.get(viewPager.getCurrentItem() + 1) != null)
        {
            ((SleepBarGraphView)sleepBarGraphViewList.get(viewPager.getCurrentItem())).init((List)daySleepDatas.get(viewPager.getCurrentItem() + 1), daytimes, false);
            ((SleepBarGraphView)sleepBarGraphViewList.get(viewPager.getCurrentItem())).invalidate();
            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(viewPager.getCurrentItem())).init((List)daySleepDatas.get(viewPager.getCurrentItem() + 1), daytimes, false);
            ((SleepHideBarGraphView)sleepHideBarGraphViewList.get(viewPager.getCurrentItem())).invalidate();
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation);
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).startAnimation(animation1);
        ((LinearLayout)deepSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(0);
        ((RelativeLayout)deepSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((LinearLayout)lightSleepLargeList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((RelativeLayout)lightSleepSmallList.get(viewPager.getCurrentItem())).setVisibility(0);
        return;
        ((LinearLayout)topHideList.get(viewPager.getCurrentItem())).setVisibility(8);
        ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).setVisibility(0);
        view = AnimationUtils.loadAnimation(this, 0x7f04000f);
        ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).startAnimation(view);
        return;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030018);
        atnight.add("21:00");
        atnight.add("23:00");
        atnight.add("01:00");
        atnight.add("03:00");
        atnight.add("05:00");
        atnight.add("07:00");
        atnight.add("09:00");
        daytimes.add("09:00");
        daytimes.add("11:00");
        daytimes.add("13:00");
        daytimes.add("15:00");
        daytimes.add("17:00");
        daytimes.add("19:00");
        daytimes.add("21:00");
        mContext = this;
        topHideList = new ArrayList();
        bottomHideList = new ArrayList();
        touchUPList = new ArrayList();
        touchDownList = new ArrayList();
        imgUpList = new ArrayList();
        sleepTotalTimeList = new ArrayList();
        sleepLightTimeList = new ArrayList();
        sleepDeepTimeList = new ArrayList();
        deepSleepSmallList = new ArrayList();
        deepSleepLargeList = new ArrayList();
        lightSleepSmallList = new ArrayList();
        lightSleepLargeList = new ArrayList();
        atnightSleepTimeList = new ArrayList();
        atnightDeepSleepTimeList = new ArrayList();
        atnightLightSleepTimeList = new ArrayList();
        daytimeSleepTimeList = new ArrayList();
        daytimeDeepSleepTimeList = new ArrayList();
        daytimeLightSleepTimeList = new ArrayList();
        progressBarList = new ArrayList();
        sleepBarGraphViewList = new ArrayList();
        sleepHideBarGraphViewList = new ArrayList();
        date = (Date)getIntent().getExtras().getSerializable("date");
        bundle = Calendar.getInstance();
        bundle.setTime(date);
        int i = bundle.get(2);
        selectMonth = i;
        mMonth = i;
        strDay = bundle.get(5);
        mYear = bundle.get(1);
        currentDate = date;
        calendar = Calendar.getInstance();
        calendar.setTime(date);
        initViews();
        i = Calendar.getInstance().get(1);
        int i1 = calendar.get(1);
        int j1 = Calendar.getInstance().get(2);
        int k1 = Calendar.getInstance().get(5);
        LayoutInflater layoutinflater;
        if (j1 + 1 == selectMonth && i == i1)
        {
            totalMonthDay = k1;
        } else
        {
            totalMonthDay = calendar.getActualMaximum(5);
        }
        viewPapers = new ArrayList();
        layoutinflater = LayoutInflater.from(this);
        for (int j = 1; j <= totalMonthDay; j++)
        {
            View view = layoutinflater.inflate(0x7f030046, null);
            view.findViewById(0x7f0600b3).setVisibility(8);
            roundProgressBarStep = (RoundProgressBar)view.findViewById(0x7f0600b5);
            progressBarList.add(roundProgressBarStep);
            rlDeepSleepSmall = (RelativeLayout)view.findViewById(0x7f0600cc);
            llDeepSleepLarge = (LinearLayout)view.findViewById(0x7f0600cd);
            llDeepSleepLarge.setVisibility(0);
            imgSlidingDrower = (ImageView)view.findViewById(0x7f0600c5);
            rlDeepSleepSmall.setOnClickListener(this);
            llDeepSleepLarge.setOnClickListener(this);
            rlLightSleepSmall = (RelativeLayout)view.findViewById(0x7f0600d3);
            llLightSleepLarge = (LinearLayout)view.findViewById(0x7f0600d4);
            rlLightSleepSmall.setVisibility(0);
            rlLightSleepSmall.setOnClickListener(this);
            llLightSleepLarge.setOnClickListener(this);
            tvAtnightSleepTime = (TextView)view.findViewById(0x7f0600ce);
            tvAtnightDeepSleepTime = (TextView)view.findViewById(0x7f0600cf);
            tvAtnightLightSleepTime = (TextView)view.findViewById(0x7f0600d0);
            tvDaytimeSleepTime = (TextView)view.findViewById(0x7f0600d5);
            tvDaytimeDeepSleepTime = (TextView)view.findViewById(0x7f0600d6);
            tvDaytimeLightSleepTime = (TextView)view.findViewById(0x7f0600d7);
            tvTime = (TextView)view.findViewById(0x7f0600b3);
            lltouchUp = (LinearLayout)view.findViewById(0x7f0600c2);
            lltouchDown = (LinearLayout)view.findViewById(0x7f060108);
            llTopHide = (LinearLayout)view.findViewById(0x7f0600b8);
            llBottomHide = (LinearLayout)view.findViewById(0x7f0600c7);
            tvSleepTotalTime = (TextView)view.findViewById(0x7f0600bb);
            tvLightSleepTime = (TextView)view.findViewById(0x7f0600bd);
            tvDeepSleepTime = (TextView)view.findViewById(0x7f0600bc);
            sleepBarGraphView = (SleepBarGraphView)view.findViewById(0x7f060107);
            sleepHideBarGraphView = (SleepHideBarGraphView)view.findViewById(0x7f060109);
            sleepBarGraphViewList.add(sleepBarGraphView);
            sleepHideBarGraphViewList.add(sleepHideBarGraphView);
            imgUpList.add(imgSlidingDrower);
            viewPapers.add(view);
            touchUPList.add(lltouchUp);
            touchDownList.add(lltouchDown);
            sleepTotalTimeList.add(tvSleepTotalTime);
            sleepLightTimeList.add(tvLightSleepTime);
            sleepDeepTimeList.add(tvDeepSleepTime);
            topHideList.add(llTopHide);
            bottomHideList.add(llBottomHide);
            deepSleepSmallList.add(rlDeepSleepSmall);
            deepSleepLargeList.add(llDeepSleepLarge);
            lightSleepSmallList.add(rlLightSleepSmall);
            lightSleepLargeList.add(llLightSleepLarge);
            atnightSleepTimeList.add(tvAtnightSleepTime);
            atnightDeepSleepTimeList.add(tvAtnightDeepSleepTime);
            atnightLightSleepTimeList.add(tvAtnightLightSleepTime);
            daytimeSleepTimeList.add(tvDaytimeSleepTime);
            daytimeDeepSleepTimeList.add(tvDaytimeDeepSleepTime);
            daytimeLightSleepTimeList.add(tvDaytimeLightSleepTime);
        }

        for (int k = 0; k < touchUPList.size(); k++)
        {
            ((LinearLayout)touchUPList.get(k)).setOnTouchListener(this);
            ((LinearLayout)touchDownList.get(k)).setOnTouchListener(this);
        }

        for (int l = 0; l < deepSleepSmallList.size(); l++)
        {
            ((RelativeLayout)deepSleepSmallList.get(l)).setOnClickListener(this);
            ((LinearLayout)deepSleepLargeList.get(l)).setOnClickListener(this);
            ((RelativeLayout)lightSleepSmallList.get(l)).setOnClickListener(this);
            ((LinearLayout)lightSleepLargeList.get(l)).setOnClickListener(this);
            ((ImageView)imgUpList.get(l)).setOnClickListener(this);
        }

        viewPager.setAdapter(new ViewPaperAdapter(viewPapers));
        viewPager.setCurrentItem(strDay - 1);
        titleBarRelativeLayout.setTitleText(DateTimeUtil.getHistoryTitleDateString(bundle));
        viewPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final SleepDateHistoryRecordActivity this$0;

            public void onPageScrollStateChanged(int l1)
            {
            }

            public void onPageScrolled(int l1, float f, int i2)
            {
            }

            public void onPageSelected(int l1)
            {
                Calendar calendar1 = Calendar.getInstance();
                calendar1.set(mYear, mMonth, l1 + 1);
                titleBarRelativeLayout.setTitleText(DateTimeUtil.getHistoryTitleDateString(calendar1));
            }

            
            {
                this$0 = SleepDateHistoryRecordActivity.this;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
        (new Thread() {

            final SleepDateHistoryRecordActivity this$0;

            public void run()
            {
                Calendar calendar1 = Calendar.getInstance();
                calendar1.set(5, totalMonthDay);
                calendar1.set(2, selectMonth);
                calendar1.set(5, totalMonthDay);
                SparseArray sparsearray = new SparseArray();
                SparseArray sparsearray1 = new SparseArray();
                SparseArray sparsearray2 = new SparseArray();
                for (int l1 = totalMonthDay; l1 > 0; l1--)
                {
                    Object obj = StringUtil.formatCurrDate(calendar1.getTime());
                    calendar1.add(5, -1);
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("currentDay:").append(((String) (obj))).toString());
                    Object obj1 = StringUtil.formatCurrDate(calendar1.getTime());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("preDay:").append(((String) (obj1))).toString());
                    obj = HealthyDBOprateSleepData.selectSleepDataByDay(mContext, ((String) (obj)));
                    List list = HealthyDBOprateSleepData.selectPreDaySleepData(mContext, ((String) (obj1)));
                    obj1 = new ArrayList();
                    ArrayList arraylist = new ArrayList();
                    int k = 0;
                    int k1 = 0;
                    int j = 0;
                    int j1 = 0;
                    int i = 0;
                    int l = 0;
                    if (list != null)
                    {
                        int i2 = 0;
                        do
                        {
                            i = l;
                            j = j1;
                            k = k1;
                            if (i2 >= list.size())
                            {
                                break;
                            }
                            ((SleepData)list.get(i2)).getStartTime();
                            k1 += ((SleepData)list.get(i2)).getSleepDuration();
                            arraylist.add(list.get(i2));
                            if ("0".equals(((SleepData)list.get(i2)).getSleepState()))
                            {
                                l += ((SleepData)list.get(i2)).getSleepDuration();
                            } else
                            {
                                j1 += ((SleepData)list.get(i2)).getSleepDuration();
                            }
                            i2++;
                        } while (true);
                    } else
                    {
                        new ArrayList();
                    }
                    j1 = i;
                    k1 = j;
                    int j2 = k;
                    if (obj != null)
                    {
                        int i1 = 0;
                        do
                        {
                            j1 = i;
                            k1 = j;
                            j2 = k;
                            if (i1 >= ((List) (obj)).size())
                            {
                                break;
                            }
                            int k2 = ((SleepData)((List) (obj)).get(i1)).getStartTime();
                            j1 = i;
                            k1 = j;
                            j2 = k;
                            if (k2 < 540)
                            {
                                j2 = k + ((SleepData)((List) (obj)).get(i1)).getSleepDuration();
                                if ("0".equals(((SleepData)((List) (obj)).get(i1)).getSleepState()))
                                {
                                    j1 = i + ((SleepData)((List) (obj)).get(i1)).getSleepDuration();
                                    k1 = j;
                                } else
                                {
                                    k1 = j + ((SleepData)((List) (obj)).get(i1)).getSleepDuration();
                                    j1 = i;
                                }
                            }
                            if (k2 >= 540)
                            {
                                ((List) (obj1)).add(((List) (obj)).get(i1));
                            } else
                            {
                                arraylist.add(((List) (obj)).get(i1));
                            }
                            i1++;
                            i = j1;
                            j = k1;
                            k = j2;
                        } while (true);
                    }
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("totalDuration :").append(j2).toString());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("lightSleep:").append(k1).toString());
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("deepSleep:").append(j1).toString());
                    obj = new SleepStatus();
                    ((SleepStatus) (obj)).setTotalTimes(j2);
                    ((SleepStatus) (obj)).setDeepTimes(j1);
                    ((SleepStatus) (obj)).setLightTimes(k1);
                    sparsearray.put(l1, obj);
                    sparsearray1.put(l1, arraylist);
                    sparsearray2.put(l1, obj1);
                    Log.d("SleepDateHistoryRecordActivity", (new StringBuilder()).append("day:").append(l1).toString());
                }

                handler.obtainMessage(0, sparsearray).sendToTarget();
                handler.obtainMessage(1, sparsearray2).sendToTarget();
                handler.obtainMessage(2, sparsearray1).sendToTarget();
            }

            
            {
                this$0 = SleepDateHistoryRecordActivity.this;
                super();
            }
        }).start();
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
            ((LinearLayout)topHideList.get(viewPager.getCurrentItem())).setVisibility(8);
            ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).setVisibility(0);
            view = AnimationUtils.loadAnimation(this, 0x7f04000f);
            ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).startAnimation(view);
        } else
        if (!isHide && y1 - y2 < 0.0F)
        {
            ((LinearLayout)topHideList.get(viewPager.getCurrentItem())).setVisibility(0);
            ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).setVisibility(8);
            view = AnimationUtils.loadAnimation(this, 0x7f04000e);
            ((LinearLayout)topHideList.get(viewPager.getCurrentItem())).startAnimation(view);
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
    static SparseArray access$1002(SleepDateHistoryRecordActivity sleepdatehistoryrecordactivity, SparseArray sparsearray)
    {
        sleepdatehistoryrecordactivity.nightSleepDatas = sparsearray;
        return sparsearray;
    }

*/














/*
    static SparseArray access$302(SleepDateHistoryRecordActivity sleepdatehistoryrecordactivity, SparseArray sparsearray)
    {
        sleepdatehistoryrecordactivity.daySleepDatas = sparsearray;
        return sparsearray;
    }

*/






}
