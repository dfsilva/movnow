// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.op.HealthyDBOprateSleepData;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.activity.MovnowTwoApplication;
import com.veclink.movnow_q2.network.base.SimpleHttpSchedualer;
import com.veclink.movnow_q2.util.DateTimeUtil;
import com.veclink.movnow_q2.util.StringUtil;
import com.veclink.movnow_q2.view.HistotySleepDataView;
import com.veclink.movnow_q2.view.MyViewPager;
import com.veclink.movnow_q2.view.SleepHideBarGraphView;
import com.veclink.movnow_q2.view.WaitDialogUtil;
import com.veclink.movnow_q2.view.WeekSleepPagerItemView;
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
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class WeekSleepFragment extends Fragment
    implements android.view.View.OnClickListener
{
    class MyOnPageChangeListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        final WeekSleepFragment this$0;

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
            syncSleepData(c);
_L4:
            currentDate = c.getTimeInMillis();
            checkViewPagePagingEnabled();
            return;
_L2:
            if (mCurrentViewID > oldCurrentViewID)
            {
                c.add(5, 7);
                isAdd = 1;
                syncSleepData(c);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        MyOnPageChangeListener()
        {
            this$0 = WeekSleepFragment.this;
            super();
        }
    }

    class ViewPaperAdapter extends PagerAdapter
    {

        final WeekSleepFragment this$0;
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
            this$0 = WeekSleepFragment.this;
            super();
            views = list;
        }
    }


    public static int FRIDAY = 0;
    public static final int GET_DEEPSLEEP_TIME = 1;
    public static final int GET_HIDEVIEW_SLEEP_DATA = 3;
    public static final int GET_LIGHTSLEEP_TIME = 2;
    public static final int GET_TOTAL_TIME = 0;
    public static int MONDAY = 0;
    public static int SATURDAY = 0;
    public static int SUNDAY = 0;
    public static final String TAG = "WeekSleepFragment";
    public static int THURSDAY = 5;
    public static int TUESDAY = 3;
    public static int WEDNESDAY = 4;
    private List atnight;
    Calendar c;
    private MyOnPageChangeListener changeListener;
    private Context context;
    private long currentDate;
    private Handler handler;
    private List hideViewSleepDataList;
    private int isAdd;
    private int mCurrentViewID;
    private Map mapWeekOrDayDisplay;
    private int oldCurrentViewID;
    private List sleepDeepList;
    private List sleepLightList;
    private List sleepTotalTimeList;
    protected int startDayOfWeek;
    private MyViewPager viewPager;
    private List viewPapers;
    private ViewPaperAdapter vpAdapter;
    private WaitDialogUtil waitDialogUtil;

    public WeekSleepFragment()
    {
        atnight = new ArrayList();
        startDayOfWeek = MONDAY;
        mCurrentViewID = 0;
        oldCurrentViewID = 0;
        changeListener = null;
        mapWeekOrDayDisplay = new HashMap();
        isAdd = -1;
        handler = new Handler() {

            final WeekSleepFragment this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 3: default 36
            //                           0 37
            //                           1 182
            //                           2 300
            //                           3 418;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return;
_L2:
                int i1 = 0;
                message = (List)message.obj;
                if (message != null && message.size() > 0)
                {
                    WeekSleepPagerItemView weeksleeppageritemview = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
                    weeksleeppageritemview.getHistotySleepTotal().setDataInfo(message);
                    weeksleeppageritemview.getHistotySleepTotal().invalidate();
                    for (int i = 0; i < message.size(); i++)
                    {
                        i1 += ((SleepData)message.get(i)).getSleepDuration();
                    }

                    weeksleeppageritemview.getTvSleepTotal().setText((new StringBuilder()).append(i1).append("").toString());
                    weeksleeppageritemview.getTvSleepTotal().setText(DateTimeUtil.secToTime(i1 * 60));
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L3:
                int j1 = 0;
                message = (List)message.obj;
                if (message != null && message.size() > 0)
                {
                    WeekSleepPagerItemView weeksleeppageritemview1 = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
                    weeksleeppageritemview1.getHistotyDeepSleep().setDataInfo(message);
                    weeksleeppageritemview1.getHistotyDeepSleep().invalidate();
                    for (int j = 0; j < message.size(); j++)
                    {
                        j1 += ((SleepData)message.get(j)).getSleepDuration();
                    }

                    weeksleeppageritemview1.getTvSleepDeep().setText(DateTimeUtil.secToTime(j1 * 60));
                    return;
                }
                if (true) goto _L1; else goto _L4
_L4:
                int k1 = 0;
                message = (List)message.obj;
                if (message != null && message.size() > 0)
                {
                    WeekSleepPagerItemView weeksleeppageritemview2 = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
                    weeksleeppageritemview2.getHistotyLightSleep().setDataInfo(message);
                    weeksleeppageritemview2.getHistotyLightSleep().invalidate();
                    for (int k = 0; k < message.size(); k++)
                    {
                        k1 += ((SleepData)message.get(k)).getSleepDuration();
                    }

                    weeksleeppageritemview2.getTvSleepLight().setText(DateTimeUtil.secToTime(k1 * 60));
                    return;
                }
                if (true)
                {
                    continue; /* Loop/switch isn't completed */
                }
_L5:
                int l1 = 0;
                int l = 0;
                Object obj = (List)message.obj;
                if (obj != null && ((List) (obj)).size() > 0)
                {
                    Log.d("WeekSleepFragment", (new StringBuilder()).append("\u6BCF\u4E2A\u661F\u671F\u7684size:").append(((List) (obj)).size()).toString());
                    message = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
                    message.getSleepGraphHideView().init((List)((List) (obj)).get(0), atnight, true);
                    message.getSleepGraphHideView().invalidate();
                    message.getLlHistorySportMon().setSelected(true);
                    message.getLlHistorySportTues().setSelected(false);
                    message.getLlHistorySportWen().setSelected(false);
                    message.getLlHistorySportThus().setSelected(false);
                    message.getLlHistorySportFri().setSelected(false);
                    message.getLlHistorySportSat().setSelected(false);
                    message.getLlHistorySportSun().setSelected(false);
                    if (((List) (obj)).get(0) != null)
                    {
                        Iterator iterator = ((List)((List) (obj)).get(0)).iterator();
                        do
                        {
                            l1 = l;
                            if (!iterator.hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)iterator.next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvMon().setText(DateTimeUtil.secToTime(l1 * 60));
                    l1 = 0;
                    l = 0;
                    if (((List) (obj)).get(1) != null)
                    {
                        Iterator iterator1 = ((List)((List) (obj)).get(1)).iterator();
                        do
                        {
                            l1 = l;
                            if (!iterator1.hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)iterator1.next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvTues().setText(DateTimeUtil.secToTime(l1 * 60));
                    l1 = 0;
                    l = 0;
                    if (((List) (obj)).get(2) != null)
                    {
                        Iterator iterator2 = ((List)((List) (obj)).get(2)).iterator();
                        do
                        {
                            l1 = l;
                            if (!iterator2.hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)iterator2.next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvWen().setText(DateTimeUtil.secToTime(l1 * 60));
                    l1 = 0;
                    l = 0;
                    if (((List) (obj)).get(3) != null)
                    {
                        Iterator iterator3 = ((List)((List) (obj)).get(3)).iterator();
                        do
                        {
                            l1 = l;
                            if (!iterator3.hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)iterator3.next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvThus().setText(DateTimeUtil.secToTime(l1 * 60));
                    l1 = 0;
                    l = 0;
                    if (((List) (obj)).get(4) != null)
                    {
                        Iterator iterator4 = ((List)((List) (obj)).get(4)).iterator();
                        do
                        {
                            l1 = l;
                            if (!iterator4.hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)iterator4.next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvFri().setText(DateTimeUtil.secToTime(l1 * 60));
                    l1 = 0;
                    l = 0;
                    if (((List) (obj)).get(5) != null)
                    {
                        Iterator iterator5 = ((List)((List) (obj)).get(5)).iterator();
                        do
                        {
                            l1 = l;
                            if (!iterator5.hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)iterator5.next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvSat().setText(DateTimeUtil.secToTime(l1 * 60));
                    l1 = 0;
                    l = 0;
                    if (((List) (obj)).get(6) != null)
                    {
                        obj = ((List)((List) (obj)).get(6)).iterator();
                        do
                        {
                            l1 = l;
                            if (!((Iterator) (obj)).hasNext())
                            {
                                break;
                            }
                            l += ((SleepData)((Iterator) (obj)).next()).getSleepDuration();
                        } while (true);
                    }
                    message.getTvSun().setText(DateTimeUtil.secToTime(l1 * 60));
                    return;
                }
                if (true) goto _L1; else goto _L6
_L6:
            }

            
            {
                this$0 = WeekSleepFragment.this;
                super();
            }
        };
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

    private void setWeekDayText(WeekSleepPagerItemView weeksleeppageritemview, String s)
    {
        weeksleeppageritemview.getTvMonUnit().setText(s);
        weeksleeppageritemview.getTvTuesUnit().setText(s);
        weeksleeppageritemview.getTvWenUnit().setText(s);
        weeksleeppageritemview.getTvThusUnit().setText(s);
        weeksleeppageritemview.getTvFriUnit().setText(s);
        weeksleeppageritemview.getTvSatUnit().setText(s);
        weeksleeppageritemview.getTvSunUnit().setText(s);
    }

    private void syncSleepData(Calendar calendar)
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

    public void checkViewPagePagingEnabled()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setFirstDayOfWeek(2);
        calendar.set(7, 2);
        calendar.setMinimalDaysInFirstWeek(1);
        calendar.setTime(new Date());
        if (calendar.get(3) == getWeekOfYear())
        {
            viewPager.setPagingEnabled(false);
            return;
        } else
        {
            viewPager.setPagingEnabled(true);
            return;
        }
    }

    public int getWeekOfYear()
    {
        int i;
        try
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setFirstDayOfWeek(2);
            calendar.set(7, 2);
            calendar.setMinimalDaysInFirstWeek(1);
            calendar.setTimeInMillis(currentDate);
            i = calendar.get(3);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return 0;
        }
        return i;
    }

    public void initCurrentPagerData()
    {
        Object obj = (new StringBuilder()).append(StringUtil.formatCurrDay(StringUtil.getFirstDayOfWeek(new Date(currentDate)))).append("-").append(StringUtil.formatCurrDay(StringUtil.getLastDayOfWeek(new Date(currentDate)))).toString();
        WeekSleepPagerItemView weeksleeppageritemview = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
        weeksleeppageritemview.getTvTime().setText(((CharSequence) (obj)));
        sleepTotalTimeList = HealthyDBOprateSleepData.querySleepDataByOneWeek(context, StringUtil.getFirstDayOfWeek(new Date(currentDate)), 0);
        sleepDeepList = HealthyDBOprateSleepData.querySleepDataByOneWeek(context, StringUtil.getFirstDayOfWeek(new Date(currentDate)), 1);
        sleepLightList = HealthyDBOprateSleepData.querySleepDataByOneWeek(context, StringUtil.getFirstDayOfWeek(new Date(currentDate)), 2);
        hideViewSleepDataList = HealthyDBOprateSleepData.querySleepDataByOneWeekAtNight(context, StringUtil.getFirstDayOfWeek(new Date(currentDate)));
        handler.obtainMessage(0, sleepTotalTimeList).sendToTarget();
        handler.obtainMessage(1, sleepDeepList).sendToTarget();
        handler.obtainMessage(2, sleepLightList).sendToTarget();
        handler.obtainMessage(3, hideViewSleepDataList).sendToTarget();
        if (!mapWeekOrDayDisplay.containsKey(Integer.valueOf(mCurrentViewID)))
        {
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(false));
        }
        int i;
        if (((Boolean)mapWeekOrDayDisplay.get(Integer.valueOf(mCurrentViewID))).booleanValue())
        {
            weeksleeppageritemview.getLlHistoryWeek().setVisibility(8);
            weeksleeppageritemview.getLlHistoryWeekDetail().setVisibility(0);
        } else
        {
            weeksleeppageritemview.getLlHistoryWeek().setVisibility(0);
            weeksleeppageritemview.getLlHistoryWeekDetail().setVisibility(8);
        }
        i = mCurrentViewID + 1;
        obj = (WeekSleepPagerItemView)vpAdapter.getView(i);
        if (!mapWeekOrDayDisplay.containsKey(Integer.valueOf(i)))
        {
            mapWeekOrDayDisplay.put(Integer.valueOf(i), Boolean.valueOf(false));
        }
        if (((Boolean)mapWeekOrDayDisplay.get(Integer.valueOf(i))).booleanValue())
        {
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeek().setVisibility(8);
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeekDetail().setVisibility(0);
        } else
        {
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeek().setVisibility(0);
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeekDetail().setVisibility(8);
        }
        i = mCurrentViewID - 1;
        obj = (WeekSleepPagerItemView)vpAdapter.getView(i);
        if (!mapWeekOrDayDisplay.containsKey(Integer.valueOf(i)))
        {
            mapWeekOrDayDisplay.put(Integer.valueOf(i), Boolean.valueOf(false));
        }
        if (((Boolean)mapWeekOrDayDisplay.get(Integer.valueOf(i))).booleanValue())
        {
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeek().setVisibility(8);
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeekDetail().setVisibility(0);
            return;
        } else
        {
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeek().setVisibility(0);
            ((WeekSleepPagerItemView) (obj)).getLlHistoryWeekDetail().setVisibility(8);
            return;
        }
    }

    public void initNextOrLastPagerData(int i, List list, List list1, List list2, List list3)
    {
        int j = 0;
        WeekSleepPagerItemView weeksleeppageritemview = (WeekSleepPagerItemView)vpAdapter.getView(i);
        if (list != null && list.size() > 0)
        {
            weeksleeppageritemview.getHistotySleepTotal().setDataInfo(list);
            weeksleeppageritemview.getHistotySleepTotal().invalidate();
            for (i = 0; i < list.size(); i++)
            {
                j += ((SleepData)list.get(i)).getSleepDuration();
            }

            weeksleeppageritemview.getTvSleepTotal().setText(DateTimeUtil.secToTime(j * 60));
        }
        j = 0;
        if (list1 != null && list1.size() > 0)
        {
            weeksleeppageritemview.getHistotyDeepSleep().setDataInfo(list1);
            weeksleeppageritemview.getHistotyDeepSleep().invalidate();
            for (i = 0; i < list1.size(); i++)
            {
                j += ((SleepData)list1.get(i)).getSleepDuration();
            }

            weeksleeppageritemview.getTvSleepDeep().setText(DateTimeUtil.secToTime(j * 60));
        }
        j = 0;
        if (list2 != null && list2.size() > 0)
        {
            weeksleeppageritemview.getHistotyLightSleep().setDataInfo(list2);
            weeksleeppageritemview.getHistotyLightSleep().invalidate();
            for (i = 0; i < list2.size(); i++)
            {
                j += ((SleepData)list2.get(i)).getSleepDuration();
            }

            weeksleeppageritemview.getTvSleepLight().setText(DateTimeUtil.secToTime(j * 60));
        }
        j = 0;
        i = 0;
        if (list3 != null && list3.size() > 0)
        {
            Log.d("WeekSleepFragment", (new StringBuilder()).append("\u6BCF\u4E2A\u661F\u671F\u7684size:").append(list3.size()).toString());
            weeksleeppageritemview.getSleepGraphHideView().init((List)list3.get(0), atnight, true);
            weeksleeppageritemview.getSleepGraphHideView().invalidate();
            weeksleeppageritemview.getLlHistorySportMon().setSelected(true);
            weeksleeppageritemview.getLlHistorySportTues().setSelected(false);
            weeksleeppageritemview.getLlHistorySportWen().setSelected(false);
            weeksleeppageritemview.getLlHistorySportThus().setSelected(false);
            weeksleeppageritemview.getLlHistorySportFri().setSelected(false);
            weeksleeppageritemview.getLlHistorySportSat().setSelected(false);
            weeksleeppageritemview.getLlHistorySportSun().setSelected(false);
            if (list3.get(0) != null)
            {
                list = ((List)list3.get(0)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvMon().setText(DateTimeUtil.secToTime(j * 60));
            j = 0;
            i = 0;
            if (list3.get(1) != null)
            {
                list = ((List)list3.get(1)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvTues().setText(DateTimeUtil.secToTime(j * 60));
            j = 0;
            i = 0;
            if (list3.get(2) != null)
            {
                list = ((List)list3.get(2)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvWen().setText(DateTimeUtil.secToTime(j * 60));
            j = 0;
            i = 0;
            if (list3.get(3) != null)
            {
                list = ((List)list3.get(3)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvThus().setText(DateTimeUtil.secToTime(j * 60));
            j = 0;
            i = 0;
            if (list3.get(4) != null)
            {
                list = ((List)list3.get(4)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvFri().setText(DateTimeUtil.secToTime(j * 60));
            j = 0;
            i = 0;
            if (list3.get(5) != null)
            {
                list = ((List)list3.get(5)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvSat().setText(DateTimeUtil.secToTime(j * 60));
            j = 0;
            i = 0;
            if (list3.get(6) != null)
            {
                list = ((List)list3.get(6)).iterator();
                do
                {
                    j = i;
                    if (!list.hasNext())
                    {
                        break;
                    }
                    i += ((SleepData)list.next()).getSleepDuration();
                } while (true);
            }
            weeksleeppageritemview.getTvSun().setText(DateTimeUtil.secToTime(j * 60));
        }
    }

    public void initNextOrLastPagerData(boolean flag)
    {
        Object obj = Calendar.getInstance();
        ((Calendar) (obj)).setTimeInMillis(currentDate);
        Object obj1;
        List list;
        List list1;
        WeekSleepPagerItemView weeksleeppageritemview;
        int i;
        long l;
        if (flag)
        {
            ((Calendar) (obj)).add(5, -7);
            i = mCurrentViewID - 1;
        } else
        {
            ((Calendar) (obj)).add(5, 7);
            i = mCurrentViewID + 1;
        }
        l = ((Calendar) (obj)).getTimeInMillis();
        obj = (WeekSleepPagerItemView)vpAdapter.getView(i);
        obj1 = (new StringBuilder()).append(StringUtil.formatCurrDay(StringUtil.getFirstDayOfWeek(new Date(l)))).append("-").append(StringUtil.formatCurrDay(StringUtil.getLastDayOfWeek(new Date(l)))).toString();
        ((WeekSleepPagerItemView) (obj)).getTvTime().setText(((CharSequence) (obj1)));
        obj = HealthyDBOprateSleepData.querySleepDataByOneWeek(context, StringUtil.getFirstDayOfWeek(new Date(l)), 0);
        obj1 = HealthyDBOprateSleepData.querySleepDataByOneWeek(context, StringUtil.getFirstDayOfWeek(new Date(l)), 1);
        list = HealthyDBOprateSleepData.querySleepDataByOneWeek(context, StringUtil.getFirstDayOfWeek(new Date(l)), 2);
        list1 = HealthyDBOprateSleepData.querySleepDataByOneWeekAtNight(context, StringUtil.getFirstDayOfWeek(new Date(l)));
        weeksleeppageritemview = (WeekSleepPagerItemView)vpAdapter.getView(i);
        if (!mapWeekOrDayDisplay.containsKey(Integer.valueOf(i)))
        {
            mapWeekOrDayDisplay.put(Integer.valueOf(i), Boolean.valueOf(false));
        }
        if (((Boolean)mapWeekOrDayDisplay.get(Integer.valueOf(i))).booleanValue())
        {
            weeksleeppageritemview.getLlHistoryWeek().setVisibility(8);
            weeksleeppageritemview.getLlHistoryWeekDetail().setVisibility(0);
        } else
        {
            weeksleeppageritemview.getLlHistoryWeek().setVisibility(0);
            weeksleeppageritemview.getLlHistoryWeekDetail().setVisibility(8);
        }
        initNextOrLastPagerData(i, ((List) (obj)), ((List) (obj1)), list, list1);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        EventBus.getDefault().register(this, java/lang/String, new Class[0]);
        viewPapers = new ArrayList();
        hideViewSleepDataList = new ArrayList();
        for (int i = 0; i < 3; i++)
        {
            bundle = new WeekSleepPagerItemView(context);
            bundle.getLlHistorySportSteps().setOnClickListener(this);
            bundle.getLlHistorySportDistance().setOnClickListener(this);
            bundle.getLlHistorySportCalories().setOnClickListener(this);
            bundle.getLlHistorySportMon().setOnClickListener(this);
            bundle.getLlHistorySportTues().setOnClickListener(this);
            bundle.getLlHistorySportWen().setOnClickListener(this);
            bundle.getLlHistorySportThus().setOnClickListener(this);
            bundle.getLlHistorySportFri().setOnClickListener(this);
            bundle.getLlHistorySportSat().setOnClickListener(this);
            bundle.getLlHistorySportSun().setOnClickListener(this);
            bundle.getSleepGraphHideView().setOnClickListener(this);
            WeekdayArrayAdapter weekdayarrayadapter = new WeekdayArrayAdapter(context, 0x7f030040, getDaysOfWeek());
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
        checkViewPagePagingEnabled();
        initCurrentPagerData();
        initNextOrLastPagerData(true);
        initNextOrLastPagerData(false);
    }

    public void onClick(View view)
    {
        getString(0x7f0c00af);
        android.view.animation.Animation animation = AnimationUtils.loadAnimation(getActivity(), 0x7f04000f);
        WeekSleepPagerItemView weeksleeppageritemview = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
        switch (view.getId())
        {
        default:
            return;

        case 2131099915: 
        case 2131099918: 
        case 2131099920: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(true));
            weeksleeppageritemview.getLlHistoryWeek().setVisibility(8);
            weeksleeppageritemview.getLlHistoryWeekDetail().setVisibility(0);
            weeksleeppageritemview.getLlHistoryWeekDetail().startAnimation(animation);
            setWeekDayText(weeksleeppageritemview, getString(0x7f0c00b3));
            return;

        case 2131099924: 
            setDayData(weeksleeppageritemview, 0);
            setOneWeekCheck(true, false, false, false, false, false, false);
            return;

        case 2131099927: 
            setDayData(weeksleeppageritemview, 1);
            setOneWeekCheck(false, true, false, false, false, false, false);
            return;

        case 2131099930: 
            setDayData(weeksleeppageritemview, 2);
            setOneWeekCheck(false, false, true, false, false, false, false);
            return;

        case 2131099933: 
            setDayData(weeksleeppageritemview, 3);
            setOneWeekCheck(false, false, false, true, false, false, false);
            return;

        case 2131099936: 
            setDayData(weeksleeppageritemview, 4);
            setOneWeekCheck(false, false, false, false, true, false, false);
            return;

        case 2131099939: 
            setDayData(weeksleeppageritemview, 5);
            setOneWeekCheck(false, false, false, false, false, true, false);
            return;

        case 2131099942: 
            setDayData(weeksleeppageritemview, 6);
            setOneWeekCheck(false, false, false, false, false, false, true);
            return;

        case 2131099923: 
            mapWeekOrDayDisplay.put(Integer.valueOf(mCurrentViewID), Boolean.valueOf(false));
            weeksleeppageritemview.getLlHistoryWeek().setVisibility(0);
            weeksleeppageritemview.getLlHistoryWeekDetail().setVisibility(8);
            view = AnimationUtils.loadAnimation(getActivity(), 0x7f04000e);
            weeksleeppageritemview.getLlHistoryWeek().startAnimation(view);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(0x7f03003b, viewgroup, false);
        viewPager = (MyViewPager)layoutinflater.findViewById(0x7f0600ed);
        atnight.clear();
        atnight.add("21:00");
        atnight.add("23:00");
        atnight.add("01:00");
        atnight.add("03:00");
        atnight.add("05:00");
        atnight.add("07:00");
        atnight.add("09:00");
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
                initNextOrLastPagerData(true);
            }
            return;
        }
        initNextOrLastPagerData(false);
    }

    public void onResume()
    {
        super.onResume();
    }

    public void setDayData(WeekSleepPagerItemView weeksleeppageritemview, int i)
    {
        weeksleeppageritemview.getSleepGraphHideView().init((List)hideViewSleepDataList.get(i), atnight, true);
        weeksleeppageritemview.getSleepGraphHideView().invalidate();
    }

    public void setOneWeekCheck(boolean flag, boolean flag1, boolean flag2, boolean flag3, boolean flag4, boolean flag5, boolean flag6)
    {
        WeekSleepPagerItemView weeksleeppageritemview = (WeekSleepPagerItemView)vpAdapter.getView(mCurrentViewID);
        weeksleeppageritemview.getLlHistorySportMon().setSelected(flag);
        weeksleeppageritemview.getLlHistorySportTues().setSelected(flag1);
        weeksleeppageritemview.getLlHistorySportWen().setSelected(flag2);
        weeksleeppageritemview.getLlHistorySportThus().setSelected(flag3);
        weeksleeppageritemview.getLlHistorySportFri().setSelected(flag4);
        weeksleeppageritemview.getLlHistorySportSat().setSelected(flag5);
        weeksleeppageritemview.getLlHistorySportSun().setSelected(flag6);
    }

    static 
    {
        SUNDAY = 1;
        MONDAY = 2;
        FRIDAY = 6;
        SATURDAY = 7;
    }



/*
    static int access$002(WeekSleepFragment weeksleepfragment, int i)
    {
        weeksleepfragment.mCurrentViewID = i;
        return i;
    }

*/





/*
    static int access$302(WeekSleepFragment weeksleepfragment, int i)
    {
        weeksleepfragment.oldCurrentViewID = i;
        return i;
    }

*/



/*
    static long access$402(WeekSleepFragment weeksleepfragment, long l)
    {
        weeksleepfragment.currentDate = l;
        return l;
    }

*/


/*
    static int access$502(WeekSleepFragment weeksleepfragment, int i)
    {
        weeksleepfragment.isAdd = i;
        return i;
    }

*/

}
