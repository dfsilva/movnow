// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.veclink.movnow_q2.util.StringUtil;
import hirondelle.date4j.DateTime;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.veclink.movnow_q2.view.calendar:
//            CalendarHelper, CaldroidFragment

public class CaldroidGridAdapter extends BaseAdapter
{

    protected HashMap caldroidData;
    protected Context context;
    protected ArrayList datetimeList;
    protected ArrayList disableDates;
    protected HashMap disableDatesMap;
    protected HashMap extraData;
    final SimpleDateFormat formatterMonth = new SimpleDateFormat("yyyyMMdd");
    protected DateTime maxDateTime;
    protected DateTime minDateTime;
    protected int month;
    protected Resources resources;
    protected ArrayList selectedDates;
    protected HashMap selectedDatesMap;
    protected boolean sixWeeksInCalendar;
    protected int startDayOfWeek;
    protected DateTime today;
    protected int year;

    public CaldroidGridAdapter(Context context1, int i, int j, HashMap hashmap, HashMap hashmap1)
    {
        disableDatesMap = new HashMap();
        selectedDatesMap = new HashMap();
        month = i;
        year = j;
        context = context1;
        caldroidData = hashmap;
        extraData = hashmap1;
        resources = context1.getResources();
        populateFromCaldroidData();
    }

    private void populateFromCaldroidData()
    {
        disableDates = (ArrayList)caldroidData.get("disableDates");
        if (disableDates != null)
        {
            disableDatesMap.clear();
            DateTime datetime;
            for (Iterator iterator = disableDates.iterator(); iterator.hasNext(); disableDatesMap.put(datetime, Integer.valueOf(1)))
            {
                datetime = (DateTime)iterator.next();
            }

        }
        selectedDates = (ArrayList)caldroidData.get("selectedDates");
        if (selectedDates != null)
        {
            selectedDatesMap.clear();
            DateTime datetime1;
            for (Iterator iterator1 = selectedDates.iterator(); iterator1.hasNext(); selectedDatesMap.put(datetime1, Integer.valueOf(1)))
            {
                datetime1 = (DateTime)iterator1.next();
            }

        }
        minDateTime = (DateTime)caldroidData.get("_minDateTime");
        maxDateTime = (DateTime)caldroidData.get("_maxDateTime");
        startDayOfWeek = ((Integer)caldroidData.get("startDayOfWeek")).intValue();
        Log.d("CaldroidFragment", (new StringBuilder()).append("START_DAY_OF_WEEK:").append(startDayOfWeek).toString());
        sixWeeksInCalendar = ((Boolean)caldroidData.get("sixWeeksInCalendar")).booleanValue();
        datetimeList = CalendarHelper.getFullWeeks(month, year, startDayOfWeek, sixWeeksInCalendar);
    }

    protected void customizeTextView(int i, TextView textview)
    {
        textview.setTextColor(resources.getColor(0x7f080011));
        DateTime datetime = (DateTime)datetimeList.get(i);
        Date date = CalendarHelper.convertDateTimeToDate(datetime);
        int j = Integer.parseInt(formatterMonth.format(date));
        int k = Integer.parseInt(StringUtil.formatCurrDate("yyyyMMdd"));
        if (datetime.getMonth().intValue() != month || j > k)
        {
            textview.setTextColor(resources.getColor(0x7f08000c));
        }
        boolean flag1 = false;
        boolean flag = false;
        if (minDateTime != null && datetime.lt(minDateTime) || maxDateTime != null && datetime.gt(maxDateTime) || disableDates != null && disableDatesMap.containsKey(datetime))
        {
            textview.setTextColor(CaldroidFragment.disabledTextColor);
            if (CaldroidFragment.disabledBackgroundDrawable == -1)
            {
                textview.setBackgroundResource(0x7f02005c);
            } else
            {
                textview.setBackgroundResource(CaldroidFragment.disabledBackgroundDrawable);
            }
            i = ((flag1) ? 1 : 0);
            if (datetime.equals(getToday()))
            {
                textview.setBackgroundResource(0x7f020110);
                i = ((flag1) ? 1 : 0);
            }
        } else
        {
            i = 1;
        }
        if (selectedDates != null && selectedDatesMap.containsKey(datetime))
        {
            if (CaldroidFragment.selectedBackgroundDrawable != -1)
            {
                textview.setBackgroundResource(CaldroidFragment.selectedBackgroundDrawable);
            } else
            {
                textview.setBackgroundColor(resources.getColor(0x7f080010));
            }
            textview.setTextColor(CaldroidFragment.selectedTextColor);
        } else
        {
            flag = true;
        }
        if (i != 0 && flag)
        {
            if (datetime.equals(getToday()))
            {
                textview.setBackgroundResource(0x7f02003f);
                textview.setTextColor(context.getResources().getColor(0x7f080007));
            } else
            if (j > k)
            {
                textview.setBackgroundResource(0x7f020033);
            } else
            {
                textview.setBackgroundResource(0x7f020032);
            }
        }
        textview.setText((new StringBuilder()).append("").append(datetime.getDay()).toString());
        setCustomResources(datetime, textview, textview);
    }

    public HashMap getCaldroidData()
    {
        return caldroidData;
    }

    public int getCount()
    {
        return datetimeList.size();
    }

    public ArrayList getDatetimeList()
    {
        return datetimeList;
    }

    public ArrayList getDisableDates()
    {
        return disableDates;
    }

    public HashMap getExtraData()
    {
        return extraData;
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public DateTime getMaxDateTime()
    {
        return maxDateTime;
    }

    public DateTime getMinDateTime()
    {
        return minDateTime;
    }

    public ArrayList getSelectedDates()
    {
        return selectedDates;
    }

    protected DateTime getToday()
    {
        if (today == null)
        {
            today = CalendarHelper.convertDateToDateTime(new Date());
        }
        return today;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        LayoutInflater layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
        viewgroup = (TextView)view;
        if (view == null)
        {
            viewgroup = (TextView)layoutinflater.inflate(0x7f03002d, null);
        }
        customizeTextView(i, viewgroup);
        return viewgroup;
    }

    public void setAdapterDateTime(DateTime datetime)
    {
        month = datetime.getMonth().intValue();
        year = datetime.getYear().intValue();
        datetimeList = CalendarHelper.getFullWeeks(month, year, startDayOfWeek, sixWeeksInCalendar);
    }

    public void setCaldroidData(HashMap hashmap)
    {
        caldroidData = hashmap;
        populateFromCaldroidData();
    }

    protected void setCustomResources(DateTime datetime, View view, TextView textview)
    {
        Object obj = (HashMap)caldroidData.get("_backgroundForDateTimeMap");
        if (obj != null)
        {
            obj = (Integer)((HashMap) (obj)).get(datetime);
            if (obj != null)
            {
                view.setBackgroundResource(((Integer) (obj)).intValue());
            }
        }
        view = (HashMap)caldroidData.get("_textColorForDateTimeMap");
        if (view != null)
        {
            datetime = (Integer)view.get(datetime);
            if (datetime != null)
            {
                textview.setTextColor(resources.getColor(datetime.intValue()));
            }
        }
    }

    public void setDisableDates(ArrayList arraylist)
    {
        disableDates = arraylist;
    }

    public void setExtraData(HashMap hashmap)
    {
        extraData = hashmap;
    }

    public void setMaxDateTime(DateTime datetime)
    {
        maxDateTime = datetime;
    }

    public void setMinDateTime(DateTime datetime)
    {
        minDateTime = datetime;
    }

    public void setSelectedDates(ArrayList arraylist)
    {
        selectedDates = arraylist;
    }
}
