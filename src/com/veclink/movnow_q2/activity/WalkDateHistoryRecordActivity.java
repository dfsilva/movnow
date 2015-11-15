// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBOperate;
import com.veclink.healthy.database.op.HealthyDBOprateWalkData;
import com.veclink.healthy.view.ShareDialog;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.RoundProgressBar;
import com.veclink.movnow_q2.view.SportGraphHideView;
import com.veclink.movnow_q2.view.SportGraphView;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.movnow_q2.activity:
//            HealyBaseFragmentActivity, ManagerCaloriesActivity, MainActivity

public class WalkDateHistoryRecordActivity extends HealyBaseFragmentActivity
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{
    class ViewPaperAdapter extends PagerAdapter
    {

        final WalkDateHistoryRecordActivity this$0;
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
            this$0 = WalkDateHistoryRecordActivity.this;
            super();
            views = list;
        }
    }


    public static final String TAG = "WalkDateHistoryRecordActivity";
    private List bottomHideList;
    private Calendar calendar;
    private Context context;
    private Date currentDate;
    int currentPage;
    private Date date;
    private SportGraphHideView graphHideView;
    private ImageView imgSlidingDrower;
    private List imgUpList;
    private boolean isHide;
    private LinearLayout llBottomHide;
    private LinearLayout llManagerCalories;
    private LinearLayout llShare;
    private LinearLayout llTopHide;
    private LinearLayout lltouchDown;
    private LinearLayout lltouchUp;
    private Context mContext;
    private int mMonth;
    private int mYear;
    private List managerCloriesList;
    private ArrayList oneWeekOrMonthSportsDataList;
    private int progress;
    private ArrayList progressList;
    private List roundList;
    private RoundProgressBar roundProgressBarStep;
    private int selectMonth;
    private List shareList;
    private SportGraphView sportGraphView;
    private List sportList;
    private int strDay;
    private PagerTabStrip tabStrip;
    private List times;
    private TitleBarRelativeLayout titleBarRelativeLayout;
    private List topHideList;
    private int totalMonthDay;
    private List touchDownList;
    private List touchUPList;
    private TextView tvHideDistance;
    private TextView tvHideDistanceUint;
    private TextView tvHideKcla;
    private TextView tvHideStepAccount;
    private TextView tvHistoryDistance;
    private TextView tvHistoryDistanceUint;
    private TextView tvHistoryKal;
    private TextView tvHistoryPercent;
    private TextView tvHistorySetps;
    private TextView tvTime;
    private ViewPager viewPager;
    private List viewPapers;
    float y1;
    float y2;

    public WalkDateHistoryRecordActivity()
    {
        selectMonth = 0;
        roundList = new ArrayList();
        isHide = false;
        times = new ArrayList();
        oneWeekOrMonthSportsDataList = new ArrayList();
        progressList = new ArrayList();
        currentPage = 0;
        progress = 0;
        y1 = 0.0F;
        y2 = 0.0F;
    }

    private void initLineGraphAndBarGraphData()
    {
        oneWeekOrMonthSportsDataList.clear();
        progressList.clear();
        for (int i = 0; i < totalMonthDay; i++)
        {
            Object obj = new ArrayList();
            oneWeekOrMonthSportsDataList.add(obj);
            obj = new Integer(0);
            progressList.add(obj);
        }

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
        Intent intent = new Intent(activity, com/veclink/movnow_q2/activity/WalkDateHistoryRecordActivity);
        Bundle bundle = new Bundle();
        bundle.putSerializable("date", date1);
        intent.putExtras(bundle);
        activity.startActivity(intent);
    }

    private void refreshHistoryRoundView()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyyMM");
        for (int i = 0; i < totalMonthDay; i++)
        {
            progress = 0;
            Object obj;
            Object obj1;
            if (i + 1 < 10)
            {
                obj = (new StringBuilder()).append(simpledateformat.format(date)).append("0").append(i + 1).toString();
            } else
            {
                obj = (new StringBuilder()).append(simpledateformat.format(date)).append(i + 1).toString();
            }
            obj1 = HealthyDBOperate.loadOriginSportDataByDate(context, ((String) (obj)));
            if (obj1 != null)
            {
                for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext();)
                {
                    SportData sportdata = (SportData)((Iterator) (obj1)).next();
                    progress = progress + Integer.parseInt(sportdata.getSportStep());
                }

            }
            progressList.set(i, Integer.valueOf(progress));
            obj1 = HealthyDBOprateWalkData.loadSportDataByDate(context, ((String) (obj)));
            obj = obj1;
            if (obj1 == null)
            {
                obj = new ArrayList();
            }
            oneWeekOrMonthSportsDataList.set(i, obj);
        }

    }

    private void setKmlStepAndKclaDta(int i)
    {
        float f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_weight", Float.valueOf(50F))).floatValue();
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(mContext, "personal_height", Float.valueOf(160F))).floatValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_DistanceType", Integer.valueOf(0))).intValue();
        double d = StepDataConverterUtil.getStepDistanceByHeight(f, j) * (double)i;
        double d1 = StepDataConverterUtil.getStepDistanceByHeight(f, 0);
        double d2 = i;
        f = f1;
        if (((Integer)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_Weight_Type", Integer.valueOf(1))).intValue() != 1)
        {
            f = StepDataConverterUtil.getKgUnitWeight(f1);
        }
        int k = StepDataConverterUtil.getCaloryByWeightAndDisStance(f, d1 * d2, 1);
        if (j == 0)
        {
            tvHistoryDistance.setText(String.format(getString(0x7f0c0036), new Object[] {
                Double.valueOf(StepDataConverterUtil.getFormatDistance(d))
            }));
            tvHistoryDistanceUint.setText(getString(0x7f0c00b0));
            tvHideDistance.setText((new StringBuilder()).append(StepDataConverterUtil.getFormatDistance(d)).append("").toString());
            tvHideDistanceUint.setText(getString(0x7f0c003a));
        } else
        {
            tvHistoryDistance.setText(String.format(getString(0x7f0c0037), new Object[] {
                Double.valueOf(StepDataConverterUtil.getFormatDistance(d))
            }));
            tvHistoryDistanceUint.setText(getString(0x7f0c00b1));
            tvHideDistance.setText((new StringBuilder()).append(StepDataConverterUtil.getFormatDistance(d)).append("").toString());
            tvHideDistanceUint.setText(getString(0x7f0c003b));
        }
        tvHistorySetps.setText(String.format(getString(0x7f0c0038), new Object[] {
            Integer.valueOf(i)
        }));
        tvHistoryKal.setText(String.format(getString(0x7f0c0039), new Object[] {
            Integer.valueOf(k)
        }));
        tvHideStepAccount.setText(String.valueOf(i));
        tvHistoryKal.setText(String.format(getString(0x7f0c0039), new Object[] {
            Integer.valueOf(k)
        }));
        tvHideKcla.setText(String.valueOf(k));
        j = Integer.parseInt((String)SharedPreferencesUtils.getSharedPreferences(this, "pre_MyTarget", "7000"));
        tvHistoryPercent.setText(getString(0x7f0c009f, new Object[] {
            Integer.valueOf((i * 100) / j)
        }));
    }

    public void onClick(View view)
    {
        Intent intent;
        switch (view.getId())
        {
        default:
            return;

        case 2131099845: 
            ((LinearLayout)topHideList.get(viewPager.getCurrentItem())).setVisibility(8);
            ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).setVisibility(0);
            view = AnimationUtils.loadAnimation(this, 0x7f04000f);
            ((LinearLayout)bottomHideList.get(viewPager.getCurrentItem())).startAnimation(view);
            return;

        case 2131099840: 
            Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("currentDate:").append(StringUtil.formatCurrDate(currentDate)).toString());
            (new ShareDialog(this, currentDate)).show();
            return;

        case 2131099838: 
            intent = new Intent();
            intent.setClass(this, com/veclink/movnow_q2/activity/ManagerCaloriesActivity);
            view = (new SimpleDateFormat("yyyyMM")).format(calendar.getTime());
            Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("ret:").append(view).toString());
            break;
        }
        if (viewPager.getCurrentItem() < 9)
        {
            view = (new StringBuilder()).append(view).append("0").append(String.valueOf(viewPager.getCurrentItem() + 1)).toString();
        } else
        {
            view = (new StringBuilder()).append(view).append(String.valueOf(viewPager.getCurrentItem() + 1)).toString();
        }
        Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("ret:").append(view).toString());
        intent.putExtra("date", view);
        startActivity(intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030018);
        context = this;
        times.add("03:00");
        times.add("06:00");
        times.add("09:00");
        times.add("12:00");
        times.add("15:00");
        times.add("18:00");
        times.add("21:00");
        mContext = this;
        topHideList = new ArrayList();
        bottomHideList = new ArrayList();
        touchUPList = new ArrayList();
        touchDownList = new ArrayList();
        imgUpList = new ArrayList();
        managerCloriesList = new ArrayList();
        shareList = new ArrayList();
        date = (Date)getIntent().getExtras().getSerializable("date");
        bundle = Calendar.getInstance();
        bundle.setTime(date);
        mYear = bundle.get(1);
        mMonth = bundle.get(2);
        selectMonth = bundle.get(2);
        strDay = bundle.get(5);
        Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("date:").append(date).toString());
        Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("strDay:").append(strDay).toString());
        currentDate = date;
        calendar = Calendar.getInstance();
        calendar.setTime(date);
        initViews();
        int i = Calendar.getInstance().get(1);
        int l = calendar.get(1);
        int j1 = Calendar.getInstance().get(2);
        int k1 = Calendar.getInstance().get(5);
        LayoutInflater layoutinflater;
        if (j1 + 1 == selectMonth && i == l)
        {
            totalMonthDay = k1;
        } else
        {
            totalMonthDay = calendar.getActualMaximum(5);
        }
        initLineGraphAndBarGraphData();
        refreshHistoryRoundView();
        viewPapers = new ArrayList();
        layoutinflater = LayoutInflater.from(this);
        for (int j = 1; j <= totalMonthDay; j++)
        {
            View view = layoutinflater.inflate(0x7f030048, null);
            view.findViewById(0x7f0600b3).setVisibility(8);
            roundProgressBarStep = (RoundProgressBar)view.findViewById(0x7f0600b5);
            imgSlidingDrower = (ImageView)view.findViewById(0x7f0600c5);
            llManagerCalories = (LinearLayout)view.findViewById(0x7f0600be);
            llShare = (LinearLayout)view.findViewById(0x7f0600c0);
            tvTime = (TextView)view.findViewById(0x7f0600b3);
            tvHistorySetps = (TextView)view.findViewById(0x7f060129);
            tvHistoryPercent = (TextView)view.findViewById(0x7f06012a);
            tvHistoryDistance = (TextView)view.findViewById(0x7f06012b);
            tvHistoryDistanceUint = (TextView)view.findViewById(0x7f06012c);
            tvHistoryKal = (TextView)view.findViewById(0x7f06012d);
            tvHideDistance = (TextView)view.findViewById(0x7f0600e5);
            tvHideDistanceUint = (TextView)view.findViewById(0x7f0600e6);
            tvHideStepAccount = (TextView)view.findViewById(0x7f0600e7);
            tvHideKcla = (TextView)view.findViewById(0x7f0600e9);
            lltouchUp = (LinearLayout)view.findViewById(0x7f06012e);
            lltouchDown = (LinearLayout)view.findViewById(0x7f060108);
            llTopHide = (LinearLayout)view.findViewById(0x7f0600b8);
            llBottomHide = (LinearLayout)view.findViewById(0x7f0600c7);
            sportGraphView = (SportGraphView)view.findViewById(0x7f0600e1);
            graphHideView = (SportGraphHideView)view.findViewById(0x7f0600e3);
            imgUpList.add(imgSlidingDrower);
            viewPapers.add(view);
            touchUPList.add(lltouchUp);
            touchDownList.add(lltouchDown);
            managerCloriesList.add(llManagerCalories);
            if (MainActivity.mainActivity.getString(0x7f0c0000).equals("Pwatch"))
            {
                llShare.setVisibility(8);
            }
            shareList.add(llShare);
            graphHideView.setDataInfo((List)oneWeekOrMonthSportsDataList.get(j - 1), times);
            sportGraphView.setDataInfo((List)oneWeekOrMonthSportsDataList.get(j - 1));
            int i1 = Integer.parseInt((String)SharedPreferencesUtils.getSharedPreferences(mContext, "pre_MyTarget", "7000"));
            roundProgressBarStep.setMax(i1);
            roundProgressBarStep.setProgress(((Integer)progressList.get(j - 1)).intValue());
            setKmlStepAndKclaDta(((Integer)progressList.get(j - 1)).intValue());
            topHideList.add(llTopHide);
            bottomHideList.add(llBottomHide);
        }

        for (int k = 0; k < touchUPList.size(); k++)
        {
            ((LinearLayout)touchUPList.get(k)).setOnTouchListener(this);
            ((LinearLayout)touchDownList.get(k)).setOnTouchListener(this);
            ((LinearLayout)managerCloriesList.get(k)).setOnClickListener(this);
            ((LinearLayout)shareList.get(k)).setOnClickListener(this);
            ((ImageView)imgUpList.get(k)).setOnClickListener(this);
        }

        viewPager.setAdapter(new ViewPaperAdapter(viewPapers));
        viewPager.setCurrentItem(strDay - 1);
        currentPage = strDay - 1;
        titleBarRelativeLayout.setTitleText(DateTimeUtil.getHistoryTitleDateString(bundle));
        viewPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final WalkDateHistoryRecordActivity this$0;

            public void onPageScrollStateChanged(int l1)
            {
                currentPage = l1;
            }

            public void onPageScrolled(int l1, float f, int i2)
            {
            }

            public void onPageSelected(int l1)
            {
                Calendar calendar1 = Calendar.getInstance();
                calendar1.set(mYear, mMonth, l1 + 1);
                titleBarRelativeLayout.setTitleText(DateTimeUtil.getHistoryTitleDateString(calendar1));
                Log.d("WalkDateHistoryRecordActivity", (new StringBuilder()).append("onPageSelected:").append(l1).toString());
                calendar.set(5, totalMonthDay);
                calendar.add(5, l1 - (totalMonthDay - 1));
                currentDate = new Date(calendar.getTimeInMillis());
            }

            
            {
                this$0 = WalkDateHistoryRecordActivity.this;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
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
    static Date access$502(WalkDateHistoryRecordActivity walkdatehistoryrecordactivity, Date date1)
    {
        walkdatehistoryrecordactivity.currentDate = date1;
        return date1;
    }

*/
}
