// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.TextView;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.TitleBarRelativeLayout;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import de.greenrobot.event.EventBus;
import hirondelle.date4j.DateTime;
import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;

// Referenced classes of package com.veclink.movnow_q2.view.calendar:
//            CalendarHelper, CaldroidGridAdapter, InfiniteViewPager, MonthPagerAdapter, 
//            DateGridFragment, InfinitePagerAdapter, WeekdayArrayAdapter, CaldroidListener

public class CaldroidFragment extends DialogFragment
    implements android.view.View.OnClickListener
{
    public class DatePageChangeListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        private ArrayList caldroidGridAdapters;
        private DateTime currentDateTime;
        private int currentPage;
        final CaldroidFragment this$0;

        private int getNext(int i)
        {
            return (i + 1) % 4;
        }

        private int getPrevious(int i)
        {
            return (i + 3) % 4;
        }

        public ArrayList getCaldroidGridAdapters()
        {
            return caldroidGridAdapters;
        }

        public int getCurrent(int i)
        {
            return i % 4;
        }

        public DateTime getCurrentDateTime()
        {
            return currentDateTime;
        }

        public int getCurrentPage()
        {
            return currentPage;
        }

        public void onPageScrollStateChanged(int i)
        {
        }

        public void onPageScrolled(int i, float f, int j)
        {
        }

        public void onPageSelected(int i)
        {
            refreshAdapters(i);
            setCalendarDateTime(currentDateTime);
            CaldroidGridAdapter caldroidgridadapter = (CaldroidGridAdapter)caldroidGridAdapters.get(i % 4);
            dateInMonthsList.clear();
            dateInMonthsList.addAll(caldroidgridadapter.getDatetimeList());
        }

        public void refreshAdapters(int i)
        {
            CaldroidGridAdapter caldroidgridadapter = (CaldroidGridAdapter)caldroidGridAdapters.get(getCurrent(i));
            CaldroidGridAdapter caldroidgridadapter1 = (CaldroidGridAdapter)caldroidGridAdapters.get(getPrevious(i));
            CaldroidGridAdapter caldroidgridadapter2 = (CaldroidGridAdapter)caldroidGridAdapters.get(getNext(i));
            if (i == currentPage)
            {
                caldroidgridadapter.setAdapterDateTime(currentDateTime);
                caldroidgridadapter.notifyDataSetChanged();
                caldroidgridadapter1.setAdapterDateTime(currentDateTime.minus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay));
                caldroidgridadapter1.notifyDataSetChanged();
                caldroidgridadapter2.setAdapterDateTime(currentDateTime.plus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay));
                caldroidgridadapter2.notifyDataSetChanged();
            } else
            if (i > currentPage)
            {
                currentDateTime = currentDateTime.plus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
                caldroidgridadapter2.setAdapterDateTime(currentDateTime.plus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay));
                caldroidgridadapter2.notifyDataSetChanged();
            } else
            {
                currentDateTime = currentDateTime.minus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
                caldroidgridadapter1.setAdapterDateTime(currentDateTime.minus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay));
                caldroidgridadapter1.notifyDataSetChanged();
            }
            currentPage = i;
        }

        public void setCaldroidGridAdapters(ArrayList arraylist)
        {
            caldroidGridAdapters = arraylist;
        }

        public void setCurrentDateTime(DateTime datetime)
        {
            currentDateTime = datetime;
            setCalendarDateTime(currentDateTime);
        }

        public void setCurrentPage(int i)
        {
            currentPage = i;
        }

        public DatePageChangeListener()
        {
            this$0 = CaldroidFragment.this;
            super();
            currentPage = 1000;
        }
    }


    public static final String DAY = "day";
    public static final String DIALOG_TITLE = "dialogTitle";
    public static final String DISABLE_DATES = "disableDates";
    public static final String ENABLE_CLICK_ON_DISABLED_DATES = "enableClickOnDisabledDates";
    public static final String ENABLE_SWIPE = "enableSwipe";
    public static int FRIDAY = 0;
    public static final String ISSLEEPDATA = "issleepdata";
    public static final String MAX_DATE = "maxDate";
    public static final String MIN_DATE = "minDate";
    public static int MONDAY = 0;
    public static final String MONTH = "month";
    private static final int MONTH_YEAR_FLAG = 52;
    public static final int NUMBER_OF_PAGES = 4;
    public static int SATURDAY = 0;
    public static final String SELECTED_DATES = "selectedDates";
    public static final String SHOW_NAVIGATION_ARROWS = "showNavigationArrows";
    public static final String SIX_WEEKS_IN_CALENDAR = "sixWeeksInCalendar";
    public static final String START_DAY_OF_WEEK = "startDayOfWeek";
    public static int SUNDAY = 0;
    public static int THURSDAY = 0;
    public static int TUESDAY = 0;
    public static int WEDNESDAY = 0;
    public static final String YEAR = "year";
    public static final String _BACKGROUND_FOR_DATETIME_MAP = "_backgroundForDateTimeMap";
    public static final String _MAX_DATE_TIME = "_maxDateTime";
    public static final String _MIN_DATE_TIME = "_minDateTime";
    public static final String _TEXT_COLOR_FOR_DATETIME_MAP = "_textColorForDateTimeMap";
    public static int disabledBackgroundDrawable = -1;
    public static int disabledTextColor = 0xff888888;
    public static int selectedBackgroundDrawable = -1;
    public static int selectedTextColor = 0xff000000;
    public String TAG;
    protected HashMap backgroundForDateTimeMap;
    protected HashMap caldroidData;
    private CaldroidListener caldroidListener;
    protected ArrayList dateInMonthsList;
    private android.widget.AdapterView.OnItemClickListener dateItemClickListener;
    private android.widget.AdapterView.OnItemLongClickListener dateItemLongClickListener;
    protected ArrayList datePagerAdapters;
    private InfiniteViewPager dateViewPager;
    protected int day;
    protected String dialogTitle;
    protected ArrayList disableDates;
    private TextView distance_unit_view;
    protected boolean enableClickOnDisabledDates;
    protected boolean enableSwipe;
    protected HashMap extraData;
    private Time firstMonthTime;
    final SimpleDateFormat formatterMonth = new SimpleDateFormat("yyyyMMdd");
    private ArrayList fragments;
    protected boolean isSleepData;
    private TextView leftArrowButton;
    private TitleBarRelativeLayout mTitleBarRelativeLayout;
    protected DateTime maxDateTime;
    protected DateTime minDateTime;
    protected int month;
    private TextView monthTitleTextView;
    private Formatter monthYearFormatter;
    private final StringBuilder monthYearStringBuilder = new StringBuilder(50);
    private DatePageChangeListener pageChangeListener;
    private TextView rightArrowButton;
    protected ArrayList selectedDates;
    protected boolean showNavigationArrows;
    private boolean sixWeeksInCalendar;
    protected int startDayOfWeek;
    protected HashMap textColorForDateTimeMap;
    private TextView total_distance;
    private TextView total_kcal;
    private TextView total_step;
    private WaitDialogUtil waitDialogUtil;
    private GridView weekdayGridView;
    protected int year;

    public CaldroidFragment()
    {
        TAG = "CaldroidFragment";
        firstMonthTime = new Time();
        monthYearFormatter = new Formatter(monthYearStringBuilder, Locale.getDefault());
        month = -1;
        year = -1;
        day = -1;
        disableDates = new ArrayList();
        selectedDates = new ArrayList();
        caldroidData = new HashMap();
        extraData = new HashMap();
        backgroundForDateTimeMap = new HashMap();
        textColorForDateTimeMap = new HashMap();
        startDayOfWeek = MONDAY;
        sixWeeksInCalendar = true;
        datePagerAdapters = new ArrayList();
        enableSwipe = true;
        showNavigationArrows = true;
        enableClickOnDisabledDates = false;
        isSleepData = false;
    }

    private android.widget.AdapterView.OnItemClickListener getDateItemClickListener()
    {
        if (dateItemClickListener == null)
        {
            dateItemClickListener = new android.widget.AdapterView.OnItemClickListener() {

                final CaldroidFragment this$0;

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    adapterview = (DateTime)dateInMonthsList.get(i);
                    if (caldroidListener != null && (enableClickOnDisabledDates || (minDateTime == null || !adapterview.lt(minDateTime)) && (maxDateTime == null || !adapterview.gt(maxDateTime)) && (disableDates == null || disableDates.indexOf(adapterview) == -1)))
                    {
                        if (Integer.parseInt(formatterMonth.format(adapterview = CalendarHelper.convertDateTimeToDate(adapterview))) <= Integer.parseInt(StringUtil.formatCurrDate("yyyyMMdd")))
                        {
                            caldroidListener.onSelectDate(adapterview, view);
                            return;
                        }
                    }
                }

            
            {
                this$0 = CaldroidFragment.this;
                super();
            }
            };
        }
        return dateItemClickListener;
    }

    private android.widget.AdapterView.OnItemLongClickListener getDateItemLongClickListener()
    {
        if (dateItemLongClickListener == null)
        {
            dateItemLongClickListener = new android.widget.AdapterView.OnItemLongClickListener() {

                final CaldroidFragment this$0;

                public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
                {
                    adapterview = (DateTime)dateInMonthsList.get(i);
                    if (caldroidListener != null)
                    {
                        if (!enableClickOnDisabledDates && (minDateTime != null && adapterview.lt(minDateTime) || maxDateTime != null && adapterview.gt(maxDateTime) || disableDates != null && disableDates.indexOf(adapterview) != -1))
                        {
                            return false;
                        }
                        adapterview = CalendarHelper.convertDateTimeToDate(adapterview);
                        caldroidListener.onLongClickDate(adapterview, view);
                    }
                    return true;
                }

            
            {
                this$0 = CaldroidFragment.this;
                super();
            }
            };
        }
        return dateItemLongClickListener;
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

        Log.d(TAG, (new StringBuilder()).append("startDayOfWeek:").append(startDayOfWeek).toString());
        Log.d(TAG, (new StringBuilder()).append("list:").append(arraylist.toString()).toString());
        return arraylist;
    }

    public static CaldroidFragment newInstance(String s, int i, int j, int k)
    {
        CaldroidFragment caldroidfragment = new CaldroidFragment();
        Bundle bundle = new Bundle();
        bundle.putString("dialogTitle", s);
        bundle.putInt("month", i);
        bundle.putInt("year", j);
        bundle.putInt("day", k);
        caldroidfragment.setArguments(bundle);
        return caldroidfragment;
    }

    private void setupDateGridPages(View view)
    {
        Object obj = new DateTime(Integer.valueOf(year), Integer.valueOf(month), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
        pageChangeListener = new DatePageChangeListener();
        pageChangeListener.setCurrentDateTime(((DateTime) (obj)));
        CaldroidGridAdapter caldroidgridadapter = getNewDatesGridAdapter(((DateTime) (obj)).getMonth().intValue(), ((DateTime) (obj)).getYear().intValue());
        dateInMonthsList = caldroidgridadapter.getDatetimeList();
        Object obj1 = ((DateTime) (obj)).plus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
        CaldroidGridAdapter caldroidgridadapter1 = getNewDatesGridAdapter(((DateTime) (obj1)).getMonth().intValue(), ((DateTime) (obj1)).getYear().intValue());
        obj1 = ((DateTime) (obj1)).plus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
        obj1 = getNewDatesGridAdapter(((DateTime) (obj1)).getMonth().intValue(), ((DateTime) (obj1)).getYear().intValue());
        obj = ((DateTime) (obj)).minus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
        obj = getNewDatesGridAdapter(((DateTime) (obj)).getMonth().intValue(), ((DateTime) (obj)).getYear().intValue());
        datePagerAdapters.add(caldroidgridadapter);
        datePagerAdapters.add(caldroidgridadapter1);
        datePagerAdapters.add(obj1);
        datePagerAdapters.add(obj);
        pageChangeListener.setCaldroidGridAdapters(datePagerAdapters);
        dateViewPager = (InfiniteViewPager)view.findViewById(0x7f060089);
        dateViewPager.setEnabled(enableSwipe);
        dateViewPager.setSixWeeksInCalendar(sixWeeksInCalendar);
        dateViewPager.setDatesInMonth(dateInMonthsList);
        view = new MonthPagerAdapter(getChildFragmentManager());
        fragments = view.getFragments();
        for (int i = 0; i < 4; i++)
        {
            DateGridFragment dategridfragment = (DateGridFragment)fragments.get(i);
            dategridfragment.setGridAdapter((CaldroidGridAdapter)datePagerAdapters.get(i));
            dategridfragment.setOnItemClickListener(getDateItemClickListener());
            dategridfragment.setOnItemLongClickListener(getDateItemLongClickListener());
        }

        view = new InfinitePagerAdapter(view);
        dateViewPager.setAdapter(view);
        dateViewPager.setOnPageChangeListener(pageChangeListener);
    }

    private void syncSportOrSleepData(Calendar calendar)
    {
        String s = StringUtil.getMonthFirstDay(calendar.getTime());
        calendar = StringUtil.getMonthLastDay(calendar.getTime());
        android.support.v4.app.FragmentActivity fragmentactivity = getActivity();
        if (Keeper.getBindDeviceMacAddress(fragmentactivity).equals(""))
        {
            return;
        }
        if (waitDialogUtil == null)
        {
            waitDialogUtil = new WaitDialogUtil(fragmentactivity);
        }
        waitDialogUtil.setMessage(fragmentactivity.getString(0x7f0c01aa));
        waitDialogUtil.showDialog();
        if (isSleepData)
        {
            MovnowTwoApplication.application.syncSleepData(s, calendar);
            return;
        } else
        {
            MovnowTwoApplication.application.syncSportData(s, calendar);
            return;
        }
    }

    public void clearDisableDates()
    {
        disableDates.clear();
    }

    public void clearSelectedDates()
    {
        selectedDates.clear();
    }

    public HashMap getCaldroidData()
    {
        caldroidData.clear();
        caldroidData.put("disableDates", disableDates);
        caldroidData.put("selectedDates", selectedDates);
        caldroidData.put("_minDateTime", minDateTime);
        caldroidData.put("_maxDateTime", maxDateTime);
        caldroidData.put("startDayOfWeek", Integer.valueOf(startDayOfWeek));
        caldroidData.put("sixWeeksInCalendar", Boolean.valueOf(sixWeeksInCalendar));
        caldroidData.put("_backgroundForDateTimeMap", backgroundForDateTimeMap);
        caldroidData.put("_textColorForDateTimeMap", textColorForDateTimeMap);
        return caldroidData;
    }

    public CaldroidListener getCaldroidListener()
    {
        return caldroidListener;
    }

    public int getCurrentVirtualPosition()
    {
        int i = dateViewPager.getCurrentItem();
        return pageChangeListener.getCurrent(i);
    }

    public ArrayList getDatePagerAdapters()
    {
        return datePagerAdapters;
    }

    public HashMap getExtraData()
    {
        return extraData;
    }

    public ArrayList getFragments()
    {
        return fragments;
    }

    public TextView getLeftArrowButton()
    {
        return leftArrowButton;
    }

    public TextView getMonthTitleTextView()
    {
        return monthTitleTextView;
    }

    public CaldroidGridAdapter getNewDatesGridAdapter(int i, int j)
    {
        return new CaldroidGridAdapter(getActivity(), i, j, getCaldroidData(), extraData);
    }

    public TextView getRightArrowButton()
    {
        return rightArrowButton;
    }

    public Bundle getSavedStates()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("month", month);
        bundle.putInt("year", year);
        bundle.putInt("day", day);
        if (dialogTitle != null)
        {
            bundle.putString("dialogTitle", dialogTitle);
        }
        if (selectedDates != null && selectedDates.size() > 0)
        {
            bundle.putStringArrayList("selectedDates", CalendarHelper.convertToStringList(selectedDates));
        }
        if (disableDates != null && disableDates.size() > 0)
        {
            bundle.putStringArrayList("disableDates", CalendarHelper.convertToStringList(disableDates));
        }
        if (minDateTime != null)
        {
            bundle.putString("minDate", minDateTime.format("YYYY-MM-DD"));
        }
        if (maxDateTime != null)
        {
            bundle.putString("maxDate", maxDateTime.format("YYYY-MM-DD"));
        }
        bundle.putBoolean("showNavigationArrows", showNavigationArrows);
        bundle.putBoolean("issleepdata", isSleepData);
        bundle.putBoolean("enableSwipe", enableSwipe);
        bundle.putInt("startDayOfWeek", startDayOfWeek);
        bundle.putBoolean("sixWeeksInCalendar", sixWeeksInCalendar);
        return bundle;
    }

    public GridView getWeekdayGridView()
    {
        return weekdayGridView;
    }

    public boolean isEnableSwipe()
    {
        return enableSwipe;
    }

    public boolean isShowNavigationArrows()
    {
        return showNavigationArrows;
    }

    public boolean isSixWeeksInCalendar()
    {
        return sixWeeksInCalendar;
    }

    public void moveToDate(Date date)
    {
        moveToDateTime(CalendarHelper.convertDateToDateTime(date));
    }

    public void moveToDateTime(DateTime datetime)
    {
        DateTime datetime1 = new DateTime(Integer.valueOf(year), Integer.valueOf(month), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
        DateTime datetime2 = datetime1.getEndOfMonth();
        if (datetime.lt(datetime1))
        {
            datetime = datetime.plus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
            pageChangeListener.setCurrentDateTime(datetime);
            int i = dateViewPager.getCurrentItem();
            pageChangeListener.refreshAdapters(i);
            dateViewPager.setCurrentItem(i - 1);
        } else
        if (datetime.gt(datetime2))
        {
            datetime = datetime.minus(Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), hirondelle.date4j.DateTime.DayOverflow.LastDay);
            pageChangeListener.setCurrentDateTime(datetime);
            int j = dateViewPager.getCurrentItem();
            pageChangeListener.refreshAdapters(j);
            dateViewPager.setCurrentItem(j + 1);
            return;
        }
    }

    public void nextMonth()
    {
        dateViewPager.setCurrentItem(pageChangeListener.getCurrentPage() + 1);
    }

    public void onClick(View view)
    {
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        retrieveInitialArgs();
        EventBus.getDefault().register(this, java/lang/String, new Class[0]);
        if (getDialog() != null)
        {
            setRetainInstance(true);
        }
        layoutinflater = layoutinflater.inflate(0x7f030024, viewgroup, false);
        mTitleBarRelativeLayout = (TitleBarRelativeLayout)layoutinflater.findViewById(0x7f060023);
        mTitleBarRelativeLayout.setTitleText(getString(0x7f0c003e));
        monthTitleTextView = (TextView)layoutinflater.findViewById(0x7f060086);
        leftArrowButton = (TextView)layoutinflater.findViewById(0x7f060085);
        rightArrowButton = (TextView)layoutinflater.findViewById(0x7f060087);
        leftArrowButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CaldroidFragment this$0;

            public void onClick(View view)
            {
                prevMonth();
            }

            
            {
                this$0 = CaldroidFragment.this;
                super();
            }
        });
        rightArrowButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CaldroidFragment this$0;

            public void onClick(View view)
            {
                nextMonth();
            }

            
            {
                this$0 = CaldroidFragment.this;
                super();
            }
        });
        setShowNavigationArrows(showNavigationArrows);
        weekdayGridView = (GridView)layoutinflater.findViewById(0x7f060088);
        viewgroup = new WeekdayArrayAdapter(getActivity(), 0x7f030040, getDaysOfWeek());
        weekdayGridView.setAdapter(viewgroup);
        setupDateGridPages(layoutinflater);
        refreshView();
        if (caldroidListener != null)
        {
            caldroidListener.onCaldroidViewCreated();
        }
        return layoutinflater;
    }

    public void onDestroy()
    {
        super.onDestroy();
        EventBus.getDefault().unregister(this, new Class[] {
            java/lang/String
        });
    }

    public void onDestroyView()
    {
        if (getDialog() != null && getRetainInstance())
        {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public void onDetach()
    {
        super.onDetach();
        try
        {
            Field field = android/support/v4/app/Fragment.getDeclaredField("mChildFragmentManager");
            field.setAccessible(true);
            field.set(this, null);
            return;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            throw new RuntimeException(nosuchfieldexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
    }

    public void onEvent(String s)
    {
        if (waitDialogUtil != null)
        {
            waitDialogUtil.dismissDialog();
        }
    }

    public void prevMonth()
    {
        dateViewPager.setCurrentItem(pageChangeListener.getCurrentPage() - 1);
    }

    protected void refreshMonthTitleTextView()
    {
        firstMonthTime.year = year;
        firstMonthTime.month = month - 1;
        firstMonthTime.monthDay = 1;
        long l = firstMonthTime.toMillis(true);
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).setTimeInMillis(l);
        if (SimpleHttpSchedualer.isNetworkAvailable(getActivity()))
        {
            syncSportOrSleepData(((Calendar) (obj)));
        }
        monthYearStringBuilder.setLength(0);
        obj = DateUtils.formatDateRange(getActivity(), monthYearFormatter, l, l, 52).toString();
        monthTitleTextView.setText(((CharSequence) (obj)));
    }

    public void refreshView()
    {
        if (month != -1 && year != -1)
        {
            refreshMonthTitleTextView();
            Iterator iterator = datePagerAdapters.iterator();
            while (iterator.hasNext()) 
            {
                CaldroidGridAdapter caldroidgridadapter = (CaldroidGridAdapter)iterator.next();
                caldroidgridadapter.setCaldroidData(getCaldroidData());
                caldroidgridadapter.setExtraData(extraData);
                caldroidgridadapter.notifyDataSetChanged();
            }
        }
    }

    public void restoreDialogStatesFromKey(FragmentManager fragmentmanager, Bundle bundle, String s, String s1)
    {
        restoreStatesFromKey(bundle, s);
        bundle = (CaldroidFragment)fragmentmanager.findFragmentByTag(s1);
        if (bundle != null)
        {
            bundle.dismiss();
            show(fragmentmanager, s1);
        }
    }

    public void restoreStatesFromKey(Bundle bundle, String s)
    {
        if (bundle != null && bundle.containsKey(s))
        {
            setArguments(bundle.getBundle(s));
        }
    }

    protected void retrieveInitialArgs()
    {
        Object obj = getArguments();
        if (obj != null)
        {
            month = ((Bundle) (obj)).getInt("month", -1);
            year = ((Bundle) (obj)).getInt("year", -1);
            day = ((Bundle) (obj)).getInt("day", -1);
            dialogTitle = ((Bundle) (obj)).getString("dialogTitle");
            Object obj1 = getDialog();
            if (obj1 != null)
            {
                if (dialogTitle != null)
                {
                    ((Dialog) (obj1)).setTitle(dialogTitle);
                } else
                {
                    ((Dialog) (obj1)).requestWindowFeature(1);
                }
            }
            startDayOfWeek = ((Bundle) (obj)).getInt("startDayOfWeek", MONDAY);
            if (startDayOfWeek > 7)
            {
                startDayOfWeek = startDayOfWeek % 7;
            }
            showNavigationArrows = ((Bundle) (obj)).getBoolean("showNavigationArrows", true);
            isSleepData = ((Bundle) (obj)).getBoolean("issleepdata", false);
            enableSwipe = ((Bundle) (obj)).getBoolean("enableSwipe", true);
            sixWeeksInCalendar = ((Bundle) (obj)).getBoolean("sixWeeksInCalendar", true);
            enableClickOnDisabledDates = ((Bundle) (obj)).getBoolean("enableClickOnDisabledDates", false);
            obj1 = ((Bundle) (obj)).getStringArrayList("disableDates");
            if (obj1 != null && ((ArrayList) (obj1)).size() > 0)
            {
                disableDates.clear();
                DateTime datetime1;
                for (obj1 = ((ArrayList) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); disableDates.add(datetime1))
                {
                    datetime1 = CalendarHelper.getDateTimeFromString((String)((Iterator) (obj1)).next(), "yyyy-MM-dd");
                }

            }
            obj1 = ((Bundle) (obj)).getStringArrayList("selectedDates");
            if (obj1 != null && ((ArrayList) (obj1)).size() > 0)
            {
                selectedDates.clear();
                DateTime datetime2;
                for (obj1 = ((ArrayList) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); selectedDates.add(datetime2))
                {
                    datetime2 = CalendarHelper.getDateTimeFromString((String)((Iterator) (obj1)).next(), "yyyy-MM-dd");
                }

            }
            obj1 = ((Bundle) (obj)).getString("minDate");
            if (obj1 != null)
            {
                minDateTime = CalendarHelper.getDateTimeFromString(((String) (obj1)), null);
            }
            obj = ((Bundle) (obj)).getString("maxDate");
            if (obj != null)
            {
                maxDateTime = CalendarHelper.getDateTimeFromString(((String) (obj)), null);
            }
        }
        if (month == -1 || year == -1)
        {
            DateTime datetime = DateTime.today(TimeZone.getDefault());
            month = datetime.getMonth().intValue();
            year = datetime.getYear().intValue();
            day = datetime.getDay().intValue();
        }
    }

    public void saveStatesToKey(Bundle bundle, String s)
    {
        bundle.putBundle(s, getSavedStates());
    }

    public void setBackgroundResourceForDate(int i, Date date)
    {
        date = CalendarHelper.convertDateToDateTime(date);
        backgroundForDateTimeMap.put(date, Integer.valueOf(i));
    }

    public void setBackgroundResourceForDateTime(int i, DateTime datetime)
    {
        backgroundForDateTimeMap.put(datetime, Integer.valueOf(i));
    }

    public void setBackgroundResourceForDateTimes(HashMap hashmap)
    {
        backgroundForDateTimeMap.putAll(hashmap);
    }

    public void setBackgroundResourceForDates(HashMap hashmap)
    {
        backgroundForDateTimeMap.clear();
        if (hashmap != null && hashmap.size() != 0)
        {
            Iterator iterator = hashmap.keySet().iterator();
            while (iterator.hasNext()) 
            {
                Object obj = (Date)iterator.next();
                Integer integer = (Integer)hashmap.get(obj);
                obj = CalendarHelper.convertDateToDateTime(((Date) (obj)));
                backgroundForDateTimeMap.put(obj, integer);
            }
        }
    }

    public void setCaldroidListener(CaldroidListener caldroidlistener)
    {
        caldroidListener = caldroidlistener;
    }

    public void setCalendarDate(Date date)
    {
        setCalendarDateTime(CalendarHelper.convertDateToDateTime(date));
    }

    public void setCalendarDateTime(DateTime datetime)
    {
        month = datetime.getMonth().intValue();
        year = datetime.getYear().intValue();
        day = datetime.getDay().intValue();
        if (caldroidListener != null)
        {
            caldroidListener.onChangeMonth(month, year);
        }
        refreshView();
    }

    public void setDisableDates(ArrayList arraylist)
    {
        disableDates.clear();
        if (arraylist != null && arraylist.size() != 0)
        {
            arraylist = arraylist.iterator();
            while (arraylist.hasNext()) 
            {
                DateTime datetime = CalendarHelper.convertDateToDateTime((Date)arraylist.next());
                disableDates.add(datetime);
            }
        }
    }

    public void setDisableDatesFromString(ArrayList arraylist)
    {
        setDisableDatesFromString(arraylist, null);
    }

    public void setDisableDatesFromString(ArrayList arraylist, String s)
    {
        disableDates.clear();
        if (arraylist != null)
        {
            arraylist = arraylist.iterator();
            while (arraylist.hasNext()) 
            {
                DateTime datetime = CalendarHelper.getDateTimeFromString((String)arraylist.next(), s);
                disableDates.add(datetime);
            }
        }
    }

    public void setEnableSwipe(boolean flag)
    {
        enableSwipe = flag;
        dateViewPager.setEnabled(flag);
    }

    public void setExtraData(HashMap hashmap)
    {
        extraData = hashmap;
    }

    public void setMaxDate(Date date)
    {
        if (date == null)
        {
            maxDateTime = null;
            return;
        } else
        {
            maxDateTime = CalendarHelper.convertDateToDateTime(date);
            return;
        }
    }

    public void setMaxDateFromString(String s, String s1)
    {
        if (s == null)
        {
            setMaxDate(null);
            return;
        } else
        {
            maxDateTime = CalendarHelper.getDateTimeFromString(s, s1);
            return;
        }
    }

    public void setMinDate(Date date)
    {
        if (date == null)
        {
            minDateTime = null;
            return;
        } else
        {
            minDateTime = CalendarHelper.convertDateToDateTime(date);
            return;
        }
    }

    public void setMinDateFromString(String s, String s1)
    {
        if (s == null)
        {
            setMinDate(null);
            return;
        } else
        {
            minDateTime = CalendarHelper.getDateTimeFromString(s, s1);
            return;
        }
    }

    public void setMonthTitleTextView(TextView textview)
    {
        monthTitleTextView = textview;
    }

    public void setSelectedDateStrings(String s, String s1, String s2)
        throws ParseException
    {
        setSelectedDates(CalendarHelper.getDateFromString(s, s2), CalendarHelper.getDateFromString(s1, s2));
    }

    public void setSelectedDates(Date date, Date date1)
    {
        if (date == null || date1 == null || date.after(date1))
        {
            return;
        }
        selectedDates.clear();
        date = CalendarHelper.convertDateToDateTime(date);
        for (date1 = CalendarHelper.convertDateToDateTime(date1); date.lt(date1); date = date.plusDays(Integer.valueOf(1)))
        {
            selectedDates.add(date);
        }

        selectedDates.add(date1);
    }

    public void setShowNavigationArrows(boolean flag)
    {
        showNavigationArrows = flag;
        if (flag)
        {
            leftArrowButton.setVisibility(0);
            rightArrowButton.setVisibility(0);
            return;
        } else
        {
            leftArrowButton.setVisibility(4);
            rightArrowButton.setVisibility(4);
            return;
        }
    }

    public void setSixWeeksInCalendar(boolean flag)
    {
        sixWeeksInCalendar = flag;
        dateViewPager.setSixWeeksInCalendar(flag);
    }

    public void setTextColorForDate(int i, Date date)
    {
        date = CalendarHelper.convertDateToDateTime(date);
        textColorForDateTimeMap.put(date, Integer.valueOf(i));
    }

    public void setTextColorForDateTime(int i, DateTime datetime)
    {
        textColorForDateTimeMap.put(datetime, Integer.valueOf(i));
    }

    public void setTextColorForDateTimes(HashMap hashmap)
    {
        textColorForDateTimeMap.putAll(hashmap);
    }

    public void setTextColorForDates(HashMap hashmap)
    {
        textColorForDateTimeMap.clear();
        if (hashmap != null && hashmap.size() != 0)
        {
            Iterator iterator = hashmap.keySet().iterator();
            while (iterator.hasNext()) 
            {
                Object obj = (Date)iterator.next();
                Integer integer = (Integer)hashmap.get(obj);
                obj = CalendarHelper.convertDateToDateTime(((Date) (obj)));
                textColorForDateTimeMap.put(obj, integer);
            }
        }
    }

    static 
    {
        SUNDAY = 1;
        MONDAY = 2;
        TUESDAY = 3;
        WEDNESDAY = 4;
        THURSDAY = 5;
        FRIDAY = 6;
        SATURDAY = 7;
    }

}
