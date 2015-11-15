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
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.op.HealthyDBOprateWalkData;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.SharedPreferencesUtils;
import com.veclink.movnow_q2.util.StepDataConverterUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.HistotySportGraphView;
import com.veclink.movnow_q2.view.SportGraphHideView;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import com.veclink.movnow_q2.view.WeekWalkPagerItemView;
import com.veclink.movnow_q2.view.calendar.CalendarHelper;
import com.veclink.movnow_q2.view.calendar.WeekdayArrayAdapter;
import de.greenrobot.event.EventBus;
import hirondelle.date4j.DateTime;
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

public class WeekWalkFragment extends Fragment
    implements android.view.View.OnClickListener
{
    class MyOnPageChangeListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        final WeekWalkFragment this$0;

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
            c.add(5, -7);
            isAdd = 0;
            syncSportData(c);
_L4:
            currentDate = c.getTimeInMillis();
            return;
_L2:
            if (mCurrentViewID > oldCurrentViewID)
            {
                c.add(5, 7);
                isAdd = 1;
                syncSportData(c);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        MyOnPageChangeListener()
        {
            this$0 = WeekWalkFragment.this;
            super();
        }
    }

    class ViewPaperAdapter extends PagerAdapter
    {

        final WeekWalkFragment this$0;
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
            this$0 = WeekWalkFragment.this;
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
    private LinkedList linkedListOneWeekSportData;
    private LinkedList linkedListSport;
    private LinkedList linkedListSportDatas;
    private int mCurrentViewID;
    private Map mapUnit;
    private Map mapWeekOrDayDisplay;
    private int oldCurrentViewID;
    protected int startDayOfWeek;
    private List times;
    private ViewPager viewPager;
    private List viewPapers;
    private ViewPaperAdapter vpAdapter;
    private WaitDialogUtil waitDialogUtil;

    public WeekWalkFragment()
    {
        times = new ArrayList();
        startDayOfWeek = MONDAY;
        mCurrentViewID = 0;
        oldCurrentViewID = 0;
        changeListener = null;
        mapWeekOrDayDisplay = new HashMap();
        mapUnit = new HashMap();
        linkedListSport = new LinkedList();
        linkedListSportDatas = new LinkedList();
        linkedListOneWeekSportData = new LinkedList();
        isAdd = -1;
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

    private void setKmlStepAndKclaDta(int i, WeekWalkPagerItemView weekwalkpageritemview)
    {
        float f = ((Float)SharedPreferencesUtils.getSharedPreferences(getActivity(), "personal_weight", Float.valueOf(50F))).floatValue();
        float f1 = ((Float)SharedPreferencesUtils.getSharedPreferences(getActivity(), "personal_height", Float.valueOf(160F))).floatValue();
        double d = StepDataConverterUtil.getStepDistanceByHeight(f1, ((Integer)SharedPreferencesUtils.getSharedPreferences(getActivity(), "pre_DistanceType", Integer.valueOf(0))).intValue());
        double d1 = i;
        int j = StepDataConverterUtil.getCaloryByWeightAndDisStance(f, StepDataConverterUtil.getStepDistanceByHeight(f1, 0) * (double)i, 1);
        weekwalkpageritemview.getTvDistanceAccount().setText(String.valueOf(StepDataConverterUtil.getFormatDistance(d * d1)));
        weekwalkpageritemview.getTvStepAccount().setText(String.format(getString(0x7f0c0038), new Object[] {
            Integer.valueOf(i)
        }));
        weekwalkpageritemview.getTvKclaAccount().setText(String.format(getString(0x7f0c0039), new Object[] {
            Integer.valueOf(j)
        }));
    }

    private void setStepOrDistanceOrKcal(WeekWalkPagerItemView weekwalkpageritemview, int i, List list)
    {
        int k = 0;
        do
        {
            if (k < list.size())
            {
                int l = 0;
                int j = 0;
                if (list.get(k) != null)
                {
                    Iterator iterator = ((List)list.get(k)).iterator();
                    do
                    {
                        l = j;
                        if (!iterator.hasNext())
                        {
                            break;
                        }
                        j += Integer.parseInt(((SportData)iterator.next()).getSportStep());
                    } while (true);
                }
                String s = null;
                if (i == 0)
                {
                    s = String.valueOf(l);
                } else
                if (i == 1)
                {
                    s = String.valueOf(StepDataConverterUtil.getDistance(context, l));
                } else
                if (i == 2)
                {
                    s = String.valueOf(StepDataConverterUtil.getKcal(context, l));
                }
                if (k == 0)
                {
                    weekwalkpageritemview.getTvMon().setText(s);
                } else
                if (k == 1)
                {
                    weekwalkpageritemview.getTvTues().setText(s);
                } else
                if (k == 2)
                {
                    weekwalkpageritemview.getTvWen().setText(s);
                } else
                if (k == 3)
                {
                    weekwalkpageritemview.getTvThus().setText(s);
                } else
                if (k == 4)
                {
                    weekwalkpageritemview.getTvFri().setText(s);
                } else
                if (k == 5)
                {
                    weekwalkpageritemview.getTvSat().setText(s);
                } else
                if (k == 6)
                {
                    weekwalkpageritemview.getTvSun().setText(s);
                }
                k++;
                continue;
            }
            return;
        } while (true);
    }

    private void setWeekDayText(WeekWalkPagerItemView weekwalkpageritemview, String s)
    {
        weekwalkpageritemview.getTvMonUnit().setText(s);
        weekwalkpageritemview.getTvTuesUnit().setText(s);
        weekwalkpageritemview.getTvWenUnit().setText(s);
        weekwalkpageritemview.getTvThusUnit().setText(s);
        weekwalkpageritemview.getTvFriUnit().setText(s);
        weekwalkpageritemview.getTvSatUnit().setText(s);
        weekwalkpageritemview.getTvSunUnit().setText(s);
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
        String s = StringUtil.formatCurrDate(StringUtil.getFirstDayOfWeek(calendar.getTime()));
        calendar = StringUtil.formatCurrDate(StringUtil.getLastDayOfWeek(calendar.getTime()));
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
        long l = currentDate;
        int i = mCurrentViewID;
        Object obj = StringUtil.getFirstDayOfWeek(new Date(l));
        List list = HealthyDBOprateWalkData.querySportDataByOnWeek(context, ((Date) (obj)));
        List list1 = HealthyDBOprateWalkData.querySportData(context, ((Date) (obj)));
        obj = HealthyDBOprateWalkData.queryOneWeekSportData(context, ((Date) (obj)));
        initPagerData(i, l, list, list1);
        linkedListSport.add(list);
        linkedListSportDatas.add(list1);
        linkedListOneWeekSportData.add(obj);
    }

    public void initLeftPagerData(boolean flag)
    {
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).setTimeInMillis(currentDate);
        ((Calendar) (obj)).add(5, -7);
        long l = ((Calendar) (obj)).getTimeInMillis();
        int i = mCurrentViewID;
        Object obj1 = StringUtil.getFirstDayOfWeek(((Calendar) (obj)).getTime());
        obj = HealthyDBOprateWalkData.querySportDataByOnWeek(context, ((Date) (obj1)));
        List list = HealthyDBOprateWalkData.querySportData(context, ((Date) (obj1)));
        obj1 = HealthyDBOprateWalkData.queryOneWeekSportData(context, ((Date) (obj1)));
        initPagerData(i - 1, l, ((List) (obj)), list);
        if (!flag)
        {
            linkedListSport.removeLast();
            linkedListSportDatas.removeLast();
            linkedListOneWeekSportData.removeLast();
        }
        linkedListSport.addFirst(obj);
        linkedListSportDatas.addFirst(list);
        linkedListOneWeekSportData.addFirst(obj1);
    }

    public void initPagerData(int i, long l, List list, List list1)
    {
        WeekWalkPagerItemView weekwalkpageritemview = (WeekWalkPagerItemView)vpAdapter.getView(i);
        String s = (new StringBuilder()).append(StringUtil.formatCurrDay(StringUtil.getFirstDayOfWeek(new Date(l)))).append("-").append(StringUtil.formatCurrDay(StringUtil.getLastDayOfWeek(new Date(l)))).toString();
        weekwalkpageritemview.getTvTime().setText(s);
        weekwalkpageritemview.getHistotySportStepView().setDataInfo(list);
        weekwalkpageritemview.getHistotySportStepView().invalidate();
        weekwalkpageritemview.getHistotySportDistanceView().setDataInfo(list);
        weekwalkpageritemview.getHistotySportDistanceView().invalidate();
        weekwalkpageritemview.getHistotySportCaloriesView().setDataInfo(list);
        weekwalkpageritemview.getHistotySportCaloriesView().invalidate();
        setKmlStepAndKclaDta(HealthyDBOprateWalkData.totalStepsByWeek(list), weekwalkpageritemview);
        weekwalkpageritemview.getSportGraphHideView().setDataInfo((List)list1.get(0), times);
        weekwalkpageritemview.getSportGraphHideView().invalidate();
        setOneWeekCheck(weekwalkpageritemview, true, false, false, false, false, false, false);
        if (!mapUnit.containsKey(Integer.valueOf(i)))
        {
            mapUnit.put(Integer.valueOf(i), Integer.valueOf(0));
        }
        if (!mapWeekOrDayDisplay.containsKey(Integer.valueOf(i)))
        {
            mapWeekOrDayDisplay.put(Integer.valueOf(i), Boolean.valueOf(false));
        }
        if (((Boolean)mapWeekOrDayDisplay.get(Integer.valueOf(i))).booleanValue())
        {
            weekwalkpageritemview.getLlHistoryWeek().setVisibility(8);
            weekwalkpageritemview.getLlHistoryWeekDetail().setVisibility(0);
            setStepOrDistanceOrKcal(weekwalkpageritemview, ((Integer)mapUnit.get(Integer.valueOf(i))).intValue(), list1);
            return;
        } else
        {
            weekwalkpageritemview.getLlHistoryWeek().setVisibility(0);
            weekwalkpageritemview.getLlHistoryWeekDetail().setVisibility(8);
            return;
        }
    }

    public void initRightPagerData(boolean flag)
    {
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).setTimeInMillis(currentDate);
        ((Calendar) (obj)).add(5, 7);
        long l = ((Calendar) (obj)).getTimeInMillis();
        int i = mCurrentViewID;
        Object obj1 = StringUtil.getFirstDayOfWeek(((Calendar) (obj)).getTime());
        obj = HealthyDBOprateWalkData.querySportDataByOnWeek(context, ((Date) (obj1)));
        List list = HealthyDBOprateWalkData.querySportData(context, ((Date) (obj1)));
        obj1 = HealthyDBOprateWalkData.queryOneWeekSportData(context, ((Date) (obj1)));
        initPagerData(i + 1, l, ((List) (obj)), list);
        if (!flag)
        {
            linkedListSport.removeFirst();
            linkedListSportDatas.removeFirst();
            linkedListOneWeekSportData.removeFirst();
        }
        linkedListSport.addLast(obj);
        linkedListSportDatas.addLast(list);
        linkedListOneWeekSportData.addLast(obj1);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        EventBus.getDefault().register(this, java/lang/String, new Class[0]);
        viewPapers = new ArrayList();
        for (int i = 0; i < 3; i++)
        {
            bundle = new WeekWalkPagerItemView(context);
            bundle.getLlHistorySportSteps().setOnClickListener(this);
            bundle.getLlHistorySportDistance().setOnClickListener(this);
            bundle.getLlHistorySportCalories().setOnClickListener(this);
            bundle.getSportGraphHideView().setOnClickListener(this);
            bundle.getLlHistorySportMon().setOnClickListener(this);
            bundle.getLlHistorySportTues().setOnClickListener(this);
            bundle.getLlHistorySportWen().setOnClickListener(this);
            bundle.getLlHistorySportThus().setOnClickListener(this);
            bundle.getLlHistorySportFri().setOnClickListener(this);
            bundle.getLlHistorySportSat().setOnClickListener(this);
            bundle.getLlHistorySportSun().setOnClickListener(this);
            WeekdayArrayAdapter weekdayarrayadapter = new WeekdayArrayAdapter(getActivity(), 0x7f030040, getDaysOfWeek());
            bundle.getWeekdayGridView().setAdapter(weekdayarrayadapter);
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
        int i = mCurrentViewID;
        getString(0x7f0c00af);
        android.view.animation.Animation animation = AnimationUtils.loadAnimation(getActivity(), 0x7f04000f);
        WeekWalkPagerItemView weekwalkpageritemview = (WeekWalkPagerItemView)vpAdapter.getView(i);
        switch (view.getId())
        {
        default:
            return;

        case 2131099915: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            mapUnit.put(Integer.valueOf(mCurrentViewID), Integer.valueOf(0));
            weekwalkpageritemview.getLlHistoryWeek().setVisibility(8);
            weekwalkpageritemview.getLlHistoryWeekDetail().setVisibility(0);
            setWeekDayText(weekwalkpageritemview, getString(0x7f0c00af));
            weekwalkpageritemview.getLlHistoryWeekDetail().startAnimation(animation);
            setStepOrDistanceOrKcal(weekwalkpageritemview, 0, (List)linkedListOneWeekSportData.get(1));
            return;

        case 2131099918: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            mapUnit.put(Integer.valueOf(mCurrentViewID), Integer.valueOf(1));
            weekwalkpageritemview.getLlHistoryWeek().setVisibility(8);
            weekwalkpageritemview.getLlHistoryWeekDetail().setVisibility(0);
            if (((Integer)SharedPreferencesUtils.getSharedPreferences(context, "pre_DistanceType", Integer.valueOf(0))).intValue() == 0)
            {
                view = context.getString(0x7f0c00b0);
            } else
            {
                view = context.getString(0x7f0c00b1);
            }
            setWeekDayText(weekwalkpageritemview, view);
            weekwalkpageritemview.getLlHistoryWeekDetail().startAnimation(animation);
            setStepOrDistanceOrKcal(weekwalkpageritemview, 1, (List)linkedListOneWeekSportData.get(1));
            return;

        case 2131099920: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            mapUnit.put(Integer.valueOf(mCurrentViewID), Integer.valueOf(2));
            weekwalkpageritemview.getLlHistoryWeek().setVisibility(8);
            weekwalkpageritemview.getLlHistoryWeekDetail().setVisibility(0);
            setWeekDayText(weekwalkpageritemview, getString(0x7f0c00b2));
            weekwalkpageritemview.getLlHistoryWeekDetail().startAnimation(animation);
            setStepOrDistanceOrKcal(weekwalkpageritemview, 2, (List)linkedListOneWeekSportData.get(1));
            return;

        case 2131099924: 
            setDayData(weekwalkpageritemview, 0);
            setOneWeekCheck(weekwalkpageritemview, true, false, false, false, false, false, false);
            return;

        case 2131099927: 
            setDayData(weekwalkpageritemview, 1);
            setOneWeekCheck(weekwalkpageritemview, false, true, false, false, false, false, false);
            return;

        case 2131099930: 
            setDayData(weekwalkpageritemview, 2);
            setOneWeekCheck(weekwalkpageritemview, false, false, true, false, false, false, false);
            return;

        case 2131099933: 
            setDayData(weekwalkpageritemview, 3);
            setOneWeekCheck(weekwalkpageritemview, false, false, false, true, false, false, false);
            return;

        case 2131099936: 
            setDayData(weekwalkpageritemview, 4);
            setOneWeekCheck(weekwalkpageritemview, false, false, false, false, true, false, false);
            return;

        case 2131099939: 
            setDayData(weekwalkpageritemview, 5);
            setOneWeekCheck(weekwalkpageritemview, false, false, false, false, false, true, false);
            return;

        case 2131099942: 
            setDayData(weekwalkpageritemview, 6);
            setOneWeekCheck(weekwalkpageritemview, false, false, false, false, false, false, true);
            return;

        case 2131099923: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(false));
            weekwalkpageritemview.getLlHistoryWeek().setVisibility(0);
            weekwalkpageritemview.getLlHistoryWeekDetail().setVisibility(8);
            weekwalkpageritemview.getLlHistoryWeek().startAnimation(animation);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f03003b, viewgroup, false);
        viewPager = (ViewPager)layoutinflater.findViewById(0x7f0600ed);
        times.add("03:00");
        times.add("06:00");
        times.add("09:00");
        times.add("12:00");
        times.add("15:00");
        times.add("18:00");
        times.add("21:00");
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
        if (waitDialogUtil != null)
        {
            waitDialogUtil.dismissDialog();
        }
        if (isAdd == 0)
        {
            initLeftPagerData(false);
            return;
        } else
        {
            initRightPagerData(false);
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
    }

    public void setDayData(WeekWalkPagerItemView weekwalkpageritemview, int i)
    {
        weekwalkpageritemview.getSportGraphHideView().setDataInfo((List)((List)linkedListSportDatas.get(1)).get(i), times);
        weekwalkpageritemview.getSportGraphHideView().invalidate();
    }

    public void setOneWeekCheck(WeekWalkPagerItemView weekwalkpageritemview, boolean flag, boolean flag1, boolean flag2, boolean flag3, boolean flag4, boolean flag5, 
            boolean flag6)
    {
        weekwalkpageritemview.getLlHistorySportMon().setSelected(flag);
        weekwalkpageritemview.getLlHistorySportTues().setSelected(flag1);
        weekwalkpageritemview.getLlHistorySportWen().setSelected(flag2);
        weekwalkpageritemview.getLlHistorySportThus().setSelected(flag3);
        weekwalkpageritemview.getLlHistorySportFri().setSelected(flag4);
        weekwalkpageritemview.getLlHistorySportSat().setSelected(flag5);
        weekwalkpageritemview.getLlHistorySportSun().setSelected(flag6);
    }




/*
    static int access$002(WeekWalkFragment weekwalkfragment, int i)
    {
        weekwalkfragment.oldCurrentViewID = i;
        return i;
    }

*/



/*
    static int access$102(WeekWalkFragment weekwalkfragment, int i)
    {
        weekwalkfragment.mCurrentViewID = i;
        return i;
    }

*/



/*
    static long access$202(WeekWalkFragment weekwalkfragment, long l)
    {
        weekwalkfragment.currentDate = l;
        return l;
    }

*/


/*
    static int access$302(WeekWalkFragment weekwalkfragment, int i)
    {
        weekwalkfragment.isAdd = i;
        return i;
    }

*/

}
