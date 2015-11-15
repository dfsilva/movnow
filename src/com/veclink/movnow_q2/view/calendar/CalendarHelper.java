// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.view.calendar;

import hirondelle.date4j.DateTime;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

public class CalendarHelper
{

    public static SimpleDateFormat MMMFormat = new SimpleDateFormat("MMM", Locale.getDefault());
    public static SimpleDateFormat yyyyMMddFormat;

    public CalendarHelper()
    {
    }

    public static Date convertDateTimeToDate(DateTime datetime)
    {
        int i = datetime.getYear().intValue();
        int j = datetime.getMonth().intValue();
        int k = datetime.getDay().intValue();
        datetime = Calendar.getInstance();
        datetime.clear();
        datetime.set(i, j - 1, k);
        return datetime.getTime();
    }

    public static DateTime convertDateToDateTime(Date date)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.setTime(date);
        return new DateTime(Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
    }

    public static ArrayList convertToStringList(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        for (arraylist = arraylist.iterator(); arraylist.hasNext(); arraylist1.add(((DateTime)arraylist.next()).format("YYYY-MM-DD"))) { }
        return arraylist1;
    }

    public static Date getDateFromString(String s, String s1)
        throws ParseException
    {
        if (s1 == null)
        {
            s1 = yyyyMMddFormat;
        } else
        {
            s1 = new SimpleDateFormat(s1, Locale.ENGLISH);
        }
        return s1.parse(s);
    }

    public static DateTime getDateTimeFromString(String s, String s1)
    {
        try
        {
            s = convertDateToDateTime(getDateFromString(s, s1));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static ArrayList getFullWeeks(int i, int j, int k, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        DateTime datetime2 = new DateTime(Integer.valueOf(j), Integer.valueOf(i), Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
        DateTime datetime = datetime2.plusDays(Integer.valueOf(datetime2.getNumDaysInMonth() - 1));
        j = datetime2.getWeekDay().intValue();
        i = j;
        if (j < k)
        {
            i = j + 7;
        }
label0:
        do
        {
            DateTime datetime4;
label1:
            {
                if (i > 0)
                {
                    datetime4 = datetime2.minusDays(Integer.valueOf(i - k));
                    if (datetime4.lt(datetime2))
                    {
                        break label1;
                    }
                }
                for (i = 0; i < datetime.getDay().intValue(); i++)
                {
                    arraylist.add(datetime2.plusDays(Integer.valueOf(i)));
                }

                break label0;
            }
            arraylist.add(datetime4);
            i--;
        } while (true);
        j = k - 1;
        i = j;
        if (j == 0)
        {
            i = 7;
        }
        if (datetime.getWeekDay().intValue() != i)
        {
            j = 1;
            DateTime datetime3;
            do
            {
                datetime3 = datetime.plusDays(Integer.valueOf(j));
                arraylist.add(datetime3);
                j++;
            } while (datetime3.getWeekDay().intValue() != i);
        }
        if (flag)
        {
            i = arraylist.size();
            j = i / 7;
            DateTime datetime1 = (DateTime)arraylist.get(i - 1);
            for (i = 1; i <= (6 - j) * 7; i++)
            {
                arraylist.add(datetime1.plusDays(Integer.valueOf(i)));
            }

        }
        return arraylist;
    }

    static 
    {
        yyyyMMddFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    }
}
