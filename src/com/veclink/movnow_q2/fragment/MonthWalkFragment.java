// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBOprateWalkData;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.LanguageUtil;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.HistotyMonthSportGraphView;
import com.veclink.movnow_q2.view.SportGraphHideMonthView;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import com.veclink.movnow_q2.view.WeekWalkMonthPagerItemView;
import com.veclink.movnow_q2.view.calendar.CalendarHelper;
import de.greenrobot.event.EventBus;
import hirondelle.date4j.DateTime;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class MonthWalkFragment extends Fragment
    implements android.view.View.OnClickListener
{
    class MyOnPageChangeListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        final MonthWalkFragment this$0;

        public void onPageScrollStateChanged(int i)
        {
        }

        public void onPageScrolled(int i, float f, int j)
        {
        }

        public void onPageSelected(int i)
        {
            oldCurrentViewID = mCurrentViewID;
            mCurrentViewID = i;
            c.setTimeInMillis(currentDate);
            isAdd = -1;
            if (mCurrentViewID >= oldCurrentViewID) goto _L2; else goto _L1
_L1:
            c.add(2, -1);
            isAdd = 0;
            syncSportData(c);
_L4:
            currentDate = c.getTimeInMillis();
            return;
_L2:
            if (mCurrentViewID > oldCurrentViewID)
            {
                c.add(2, 1);
                isAdd = 1;
                syncSportData(c);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        MyOnPageChangeListener()
        {
            this$0 = MonthWalkFragment.this;
            super();
        }
    }

    class ViewPaperAdapter extends PagerAdapter
    {

        final MonthWalkFragment this$0;
        private List views;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
        }

        public int getCount()
        {
            return 0x7fffffff;
        }

        public View getView(int i)
        {
            return (View)views.get(i % views.size());
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            viewgroup.removeView((View)views.get(i % views.size()));
            viewgroup.addView((View)views.get(i % views.size()), 0);
            return views.get(i % views.size());
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }

        public ViewPaperAdapter(List list)
        {
            this$0 = MonthWalkFragment.this;
            super();
            views = list;
        }
    }


    public static int FRIDAY = 6;
    public static int MONDAY = 2;
    public static int SATURDAY = 7;
    public static int SUNDAY = 1;
    public static int THURSDAY = 5;
    public static int TUESDAY = 3;
    public static int WEDNESDAY = 4;
    Calendar c;
    private MyOnPageChangeListener changeListener;
    private Context context;
    private long currentDate;
    private int isAdd;
    private LinkedList linkedListSport;
    private LinkedList linkedListStepCount;
    private LinkedList linkedListValues;
    private int mCurrentViewID;
    private Map mapUnit;
    private Map mapWeekOrDayDisplay;
    private int oldCurrentViewID;
    protected int startDayOfWeek;
    private ViewPager viewPager;
    private List viewPapers;
    private ViewPaperAdapter vpAdapter;
    private WaitDialogUtil waitDialogUtil;

    public MonthWalkFragment()
    {
        startDayOfWeek = MONDAY;
        mCurrentViewID = 0;
        oldCurrentViewID = 0;
        changeListener = null;
        mapWeekOrDayDisplay = new HashMap();
        linkedListStepCount = new LinkedList();
        linkedListSport = new LinkedList();
        linkedListValues = new LinkedList();
        mapUnit = new HashMap();
        isAdd = -1;
    }

    public static int getCurrentMonthOfYear()
    {
        return Calendar.getInstance().get(2) + 1;
    }

    public static String getCurrentYear()
    {
        return String.valueOf(Calendar.getInstance().get(1));
    }

    private ArrayList getDaysOfWeek()
    {
        ArrayList arraylist = new ArrayList();
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE", Locale.getDefault());
        DateTime datetime = (new DateTime(Integer.valueOf(2013), Integer.valueOf(2), Integer.valueOf(17), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0))).plusDays(Integer.valueOf(startDayOfWeek - SUNDAY));
        for (int i = 0; i < 7; i++)
        {
            arraylist.add(simpledateformat.format(CalendarHelper.convertDateTimeToDate(datetime)).toUpperCase());
            datetime = datetime.plusDays(Integer.valueOf(1));
        }

        return arraylist;
    }

    private void setKmlStepAndKclaDta(int i, WeekWalkMonthPagerItemView weekwalkmonthpageritemview)
    {
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(context, "personal_weight", Float.valueOf(50F))).floatValue();
        float f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(context, "personal_height", Float.valueOf(160F))).floatValue();
        int j = ((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_DistanceType", Integer.valueOf(0))).intValue();
        double d = StepDataConverterUtil.getDistance(context, i);
        double d1 = StepDataConverterUtil.getCaloryByWeightAndDisStance(f, StepDataConverterUtil.getStepDistanceByHeight(f1, 0) * (double)i, 1);
        if (j == 0)
        {
            weekwalkmonthpageritemview.getTvDistanceAccount().setText(String.valueOf(StepDataConverterUtil.getFormatDistance(d)));
            weekwalkmonthpageritemview.getTvDistancesUint().setText(getString(0x7f0c00b0));
        } else
        {
            weekwalkmonthpageritemview.getTvDistancesUint().setText(getString(0x7f0c00b1));
            weekwalkmonthpageritemview.getTvDistanceAccount().setText(String.valueOf(StepDataConverterUtil.getFormatDistance(d)));
        }
        weekwalkmonthpageritemview.getTvStepAccount().setText(String.format(getString(0x7f0c0038), new Object[] {
            Integer.valueOf(i)
        }));
        weekwalkmonthpageritemview.getTvKclaAccount().setText(String.format(getString(0x7f0c0039), new Object[] {
            Double.valueOf(d1)
        }));
    }

    private void setMonthDayText(WeekWalkMonthPagerItemView weekwalkmonthpageritemview, String s)
    {
        weekwalkmonthpageritemview.getTvFirstUnit().setText(s);
        weekwalkmonthpageritemview.getTvTwoUnit().setText(s);
        weekwalkmonthpageritemview.getTvThreeUnit().setText(s);
        weekwalkmonthpageritemview.getTvFourUnit().setText(s);
        weekwalkmonthpageritemview.getTvFiveUnit().setText(s);
        weekwalkmonthpageritemview.getTvSixUnit().setText(s);
    }

    private void setStepOrDistanceOrKcal(WeekWalkMonthPagerItemView weekwalkmonthpageritemview, int i, List list)
    {
        int j = 0;
        do
        {
            if (j < list.size())
            {
                int k = 0;
                for (Iterator iterator = ((List)list.get(j)).iterator(); iterator.hasNext();)
                {
                    k += Integer.parseInt(((SportData)iterator.next()).getSportStep());
                }

                String s = null;
                if (i == 0)
                {
                    s = String.valueOf(k);
                } else
                if (i == 1)
                {
                    s = String.valueOf(StepDataConverterUtil.getDistance(context, k));
                } else
                if (i == 2)
                {
                    s = String.valueOf(StepDataConverterUtil.getKcal(context, k));
                }
                if (j == 0)
                {
                    weekwalkmonthpageritemview.getTvFirst().setText(s);
                } else
                if (j == 1)
                {
                    weekwalkmonthpageritemview.getTvTwo().setText(s);
                } else
                if (j == 2)
                {
                    weekwalkmonthpageritemview.getTvThree().setText(s);
                } else
                if (j == 3)
                {
                    weekwalkmonthpageritemview.getTvFour().setText(s);
                } else
                if (j == 4)
                {
                    weekwalkmonthpageritemview.getTvFive().setText(s);
                } else
                if (j == 5)
                {
                    weekwalkmonthpageritemview.getTvSix().setText(s);
                }
                j++;
                continue;
            }
            return;
        } while (true);
    }

    private void syncSportData(Calendar calendar)
    {
        if (Keeper.getBindDeviceMacAddress(context).equals(""))
        {
            return;
        }
        if (!SimpleHttpSchedualer.isNetworkAvailable(context))
        {
            onEvent("");
            return;
        }
        String s = StringUtil.getMonthFirstDay(calendar.getTime());
        calendar = StringUtil.getMonthLastDay(calendar.getTime());
        if (waitDialogUtil == null)
        {
            waitDialogUtil = new WaitDialogUtil(context);
        }
        waitDialogUtil.setMessage(context.getString(0x7f0c01aa));
        waitDialogUtil.showDialog();
        MovnowTwoApplication.application.syncSportData(s, calendar);
    }

    public void initCurrentPagerData()
    {
        int i = mCurrentViewID;
        int j = c.get(1);
        int k = c.get(2) + 1;
        Object obj;
        List list;
        int l;
        if (k < 10)
        {
            obj = (new StringBuilder()).append("0").append(k).toString();
        } else
        {
            obj = String.valueOf(k);
        }
        l = HealthyDBOprateWalkData.totalStepsByWeek(HealthyDBOprateWalkData.loadSportOriginDataByMonth(context, (new StringBuilder()).append(j).append(((String) (obj))).toString()));
        obj = HealthyDBOprateWalkData.querySportDataByOnMonth(context, j, k - 1);
        list = HealthyDBOprateWalkData.getWeekOfMonthData(context, k, j);
        initData(j, k, i, l, ((List) (obj)), list);
        linkedListStepCount.add(Integer.valueOf(l));
        linkedListSport.add(obj);
        linkedListValues.add(list);
    }

    public void initData(int i, int j, int k, int l, List list, List list1)
    {
        WeekWalkMonthPagerItemView weekwalkmonthpageritemview = (WeekWalkMonthPagerItemView)vpAdapter.getView(k);
        weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)list1.get(0), getDaysOfWeek());
        weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
        setSixData(weekwalkmonthpageritemview, true, false, false, false, false, false);
        if (isAdded())
        {
            setKmlStepAndKclaDta(l, weekwalkmonthpageritemview);
        }
        weekwalkmonthpageritemview.getHistotyMonthSportGraphViewSteps().setDataInfo(list);
        weekwalkmonthpageritemview.getHistotyMonthSportGraphViewSteps().invalidate();
        weekwalkmonthpageritemview.getHistotyMonthSportGraphViewDistances().setDataInfo(list);
        weekwalkmonthpageritemview.getHistotyMonthSportGraphViewDistances().invalidate();
        weekwalkmonthpageritemview.getHistotyMonthSportGraphViewCalories().setDataInfo(list);
        weekwalkmonthpageritemview.getHistotyMonthSportGraphViewCalories().invalidate();
        if (LanguageUtil.isChina())
        {
            weekwalkmonthpageritemview.getTvMonth().setText((new StringBuilder()).append(i).append("/").append(j).toString());
        } else
        {
            weekwalkmonthpageritemview.getTvMonth().setText((new StringBuilder()).append(j).append("/").append(i).toString());
        }
        if (!mapUnit.containsKey(Integer.valueOf(k)))
        {
            mapUnit.put(Integer.valueOf(k), Integer.valueOf(0));
        }
        if (!mapWeekOrDayDisplay.containsKey(Integer.valueOf(k)))
        {
            mapWeekOrDayDisplay.put(Integer.valueOf(k), Boolean.valueOf(false));
        }
        if (((Boolean)mapWeekOrDayDisplay.get(Integer.valueOf(k))).booleanValue())
        {
            weekwalkmonthpageritemview.getLlHistoryMonth().setVisibility(8);
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().setVisibility(0);
            setStepOrDistanceOrKcal(weekwalkmonthpageritemview, ((Integer)mapUnit.get(Integer.valueOf(k))).intValue(), list1);
            return;
        } else
        {
            weekwalkmonthpageritemview.getLlHistoryMonth().setVisibility(0);
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().setVisibility(8);
            return;
        }
    }

    public void initLeftPagerData(boolean flag)
    {
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).setTimeInMillis(currentDate);
        ((Calendar) (obj)).add(2, -1);
        int i = mCurrentViewID;
        int j = ((Calendar) (obj)).get(1);
        int k = ((Calendar) (obj)).get(2) + 1;
        List list;
        int l;
        if (k < 10)
        {
            obj = (new StringBuilder()).append("0").append(k).toString();
        } else
        {
            obj = String.valueOf(k);
        }
        l = HealthyDBOprateWalkData.totalStepsByWeek(HealthyDBOprateWalkData.loadSportOriginDataByMonth(context, (new StringBuilder()).append(j).append(((String) (obj))).toString()));
        obj = HealthyDBOprateWalkData.querySportDataByOnMonth(context, j, k - 1);
        list = HealthyDBOprateWalkData.getWeekOfMonthData(context, k, j);
        initData(j, k, i - 1, l, ((List) (obj)), list);
        if (!flag)
        {
            linkedListStepCount.removeLast();
            linkedListSport.removeLast();
            linkedListValues.removeLast();
        }
        linkedListStepCount.addFirst(Integer.valueOf(l));
        linkedListSport.addFirst(obj);
        linkedListValues.addFirst(list);
    }

    public void initRightPagerData(boolean flag)
    {
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).setTimeInMillis(currentDate);
        ((Calendar) (obj)).add(2, 1);
        int i = mCurrentViewID;
        int j = ((Calendar) (obj)).get(1);
        int k = ((Calendar) (obj)).get(2) + 1;
        List list;
        int l;
        if (k < 10)
        {
            obj = (new StringBuilder()).append("0").append(k).toString();
        } else
        {
            obj = String.valueOf(k);
        }
        l = HealthyDBOprateWalkData.totalStepsByWeek(HealthyDBOprateWalkData.loadSportOriginDataByMonth(context, (new StringBuilder()).append(j).append(((String) (obj))).toString()));
        obj = HealthyDBOprateWalkData.querySportDataByOnMonth(context, j, k - 1);
        list = HealthyDBOprateWalkData.getWeekOfMonthData(context, k, j);
        initData(j, k, i + 1, l, ((List) (obj)), list);
        if (!flag)
        {
            linkedListStepCount.removeFirst();
            linkedListSport.removeFirst();
            linkedListValues.removeFirst();
        }
        linkedListStepCount.addLast(Integer.valueOf(l));
        linkedListSport.addLast(obj);
        linkedListValues.addLast(list);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        EventBus.getDefault().register(this, java/lang/String, new Class[0]);
        viewPapers = new ArrayList();
        for (int i = 0; i < 3; i++)
        {
            bundle = new WeekWalkMonthPagerItemView(context);
            bundle.getLlHistorySportSteps().setOnClickListener(this);
            bundle.getLlHistorySportDistance().setOnClickListener(this);
            bundle.getLlHistorySportCalories().setOnClickListener(this);
            bundle.getSportGraphHideView().setOnClickListener(this);
            bundle.getLlFirstWeek().setOnClickListener(this);
            bundle.getLlTwoWeek().setOnClickListener(this);
            bundle.getLlThreeWeek().setOnClickListener(this);
            bundle.getLlFourWeek().setOnClickListener(this);
            bundle.getLlFiveWeek().setOnClickListener(this);
            bundle.getLlSixWeek().setOnClickListener(this);
            viewPapers.add(bundle);
        }

        vpAdapter = new ViewPaperAdapter(viewPapers);
        viewPager.setAdapter(vpAdapter);
        changeListener = new MyOnPageChangeListener();
        viewPager.setOnPageChangeListener(changeListener);
        c = Calendar.getInstance();
        c.setTime(new Date());
        currentDate = c.getTimeInMillis();
        mCurrentViewID = 10000;
        oldCurrentViewID = 10000;
        viewPager.setCurrentItem(mCurrentViewID);
        initLeftPagerData(true);
        initCurrentPagerData();
        initRightPagerData(true);
    }

    public void onClick(View view)
    {
        getString(0x7f0c00af);
        android.view.animation.Animation animation = AnimationUtils.loadAnimation(getActivity(), 0x7f04000f);
        WeekWalkMonthPagerItemView weekwalkmonthpageritemview = (WeekWalkMonthPagerItemView)vpAdapter.getView(mCurrentViewID);
        switch (view.getId())
        {
        default:
            return;

        case 2131099954: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            weekwalkmonthpageritemview.getLlHistoryMonth().setVisibility(8);
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().setVisibility(0);
            view = getString(0x7f0c00af);
            System.out.println((new StringBuilder()).append("ll_histoty_month_steps:unit:").append(view).toString());
            setMonthDayText(weekwalkmonthpageritemview, view);
            setStepOrDistanceOrKcal(weekwalkmonthpageritemview, 0, (List)linkedListValues.get(1));
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().startAnimation(animation);
            return;

        case 2131099956: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            weekwalkmonthpageritemview.getLlHistoryMonth().setVisibility(8);
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().setVisibility(0);
            getString(0x7f0c00b0);
            if (((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_DistanceType", Integer.valueOf(0))).intValue() == 0)
            {
                view = context.getString(0x7f0c00b0);
            } else
            {
                view = context.getString(0x7f0c00b1);
            }
            setMonthDayText(weekwalkmonthpageritemview, view);
            setStepOrDistanceOrKcal(weekwalkmonthpageritemview, 1, (List)linkedListValues.get(1));
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().startAnimation(animation);
            return;

        case 2131099959: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            weekwalkmonthpageritemview.getLlHistoryMonth().setVisibility(8);
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().setVisibility(0);
            setMonthDayText(weekwalkmonthpageritemview, getString(0x7f0c00b2));
            setStepOrDistanceOrKcal(weekwalkmonthpageritemview, 2, (List)linkedListValues.get(1));
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().startAnimation(animation);
            return;

        case 2131099963: 
            weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListValues.get(1)).get(0), getDaysOfWeek());
            weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
            setSixData(weekwalkmonthpageritemview, true, false, false, false, false, false);
            return;

        case 2131099966: 
            weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListValues.get(1)).get(1), getDaysOfWeek());
            weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
            setSixData(weekwalkmonthpageritemview, false, true, false, false, false, false);
            return;

        case 2131099969: 
            weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListValues.get(1)).get(2), getDaysOfWeek());
            weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
            setSixData(weekwalkmonthpageritemview, false, false, true, false, false, false);
            return;

        case 2131099972: 
            weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListValues.get(1)).get(3), getDaysOfWeek());
            weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
            setSixData(weekwalkmonthpageritemview, false, false, false, true, false, false);
            return;

        case 2131099975: 
            if (((List)linkedListValues.get(1)).size() > 4)
            {
                weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListValues.get(1)).get(4), getDaysOfWeek());
                weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
            }
            setSixData(weekwalkmonthpageritemview, false, false, false, false, true, false);
            return;

        case 2131099978: 
            if (((List)linkedListValues.get(1)).size() > 5)
            {
                weekwalkmonthpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListValues.get(1)).get(5), getDaysOfWeek());
                weekwalkmonthpageritemview.getSportGraphHideView().invalidate();
            }
            setSixData(weekwalkmonthpageritemview, false, false, false, false, false, true);
            return;

        case 2131099962: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(false));
            weekwalkmonthpageritemview.getLlHistoryMonth().setVisibility(0);
            weekwalkmonthpageritemview.getLlHistoryMonthDetail().setVisibility(8);
            view = AnimationUtils.loadAnimation(getActivity(), 0x7f04000e);
            weekwalkmonthpageritemview.getLlHistoryMonth().startAnimation(view);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f03003a, viewgroup, false);
        viewPager = (ViewPager)layoutinflater.findViewById(0x7f0600ec);
        context = getActivity();
        return layoutinflater;
    }

    public void onDestroy()
    {
        super.onDestroy();
        EventBus.getDefault().unregister(this, new Class[] {
            java/lang/String
        });
    }

    public void onEvent(String s)
    {
label0:
        {
            if (waitDialogUtil != null)
            {
                waitDialogUtil.dismissDialog();
            }
            if (isAdd != -1)
            {
                if (isAdd != 0)
                {
                    break label0;
                }
                initLeftPagerData(false);
            }
            return;
        }
        initRightPagerData(false);
    }

    public void onResume()
    {
        super.onResume();
    }

    public void setSixData(WeekWalkMonthPagerItemView weekwalkmonthpageritemview, boolean flag, boolean flag1, boolean flag2, boolean flag3, boolean flag4, boolean flag5)
    {
        weekwalkmonthpageritemview.getLlFirstWeek().setSelected(flag);
        weekwalkmonthpageritemview.getLlTwoWeek().setSelected(flag1);
        weekwalkmonthpageritemview.getLlThreeWeek().setSelected(flag2);
        weekwalkmonthpageritemview.getLlFourWeek().setSelected(flag3);
        weekwalkmonthpageritemview.getLlFiveWeek().setSelected(flag4);
        weekwalkmonthpageritemview.getLlSixWeek().setSelected(flag5);
    }




/*
    static int access$002(MonthWalkFragment monthwalkfragment, int i)
    {
        monthwalkfragment.oldCurrentViewID = i;
        return i;
    }

*/



/*
    static int access$102(MonthWalkFragment monthwalkfragment, int i)
    {
        monthwalkfragment.mCurrentViewID = i;
        return i;
    }

*/



/*
    static long access$202(MonthWalkFragment monthwalkfragment, long l)
    {
        monthwalkfragment.currentDate = l;
        return l;
    }

*/


/*
    static int access$302(MonthWalkFragment monthwalkfragment, int i)
    {
        monthwalkfragment.isAdd = i;
        return i;
    }

*/

}
