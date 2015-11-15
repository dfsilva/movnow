// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.movnow_q2.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.veclink.healthy.database.entity.SyncRecord;
import com.veclink.healthy.database.op.HealthyDBSyncRecordOperate;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

// Referenced classes of package com.veclink.movnow_q2.util:
//            LanguageUtil, DebugUtil

public class DateTimeUtil
{

    public DateTimeUtil()
    {
    }

    public static Date getCurrentDate(int i)
    {
        Calendar calendar = Calendar.getInstance();
        if (i < 0)
        {
            calendar.add(5, i);
        }
        return null;
    }

    public static String getDateString(int i)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyyMMdd");
        Calendar calendar = Calendar.getInstance();
        if (i < 0)
        {
            calendar.add(5, i);
        }
        return simpledateformat.format(calendar.getTime());
    }

    public static String getDateStringByCalendar(int i, Calendar calendar)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyyMMdd");
        if (i < 0)
        {
            calendar.add(5, i);
        }
        return simpledateformat.format(calendar.getTime());
    }

    public static String getDateStringByDate(Date date)
    {
        return (new SimpleDateFormat("yyyyMMdd")).format(date);
    }

    public static String getHistoryTitleDateString(Calendar calendar)
    {
        String s = "MM/dd/yyyy";
        if (LanguageUtil.isChina())
        {
            s = "yyyy/MM/dd";
        }
        return (new SimpleDateFormat(s)).format(calendar.getTime());
    }

    public static String getMonDateString(int i, Context context)
    {
        Object obj;
        Calendar calendar;
        if (context.getResources().getConfiguration().locale.getLanguage().contains("zh"))
        {
            obj = new SimpleDateFormat((new StringBuilder()).append("MM").append(context.getString(0x7f0c0082)).append("dd").append(context.getString(0x7f0c0083)).toString());
        } else
        {
            obj = new SimpleDateFormat("MMMM dd");
        }
        calendar = Calendar.getInstance();
        if (i < 0)
        {
            calendar.add(5, i);
        }
        obj = ((SimpleDateFormat) (obj)).format(calendar.getTime());
        return (new StringBuilder()).append(getWeek(calendar, context)).append(((String) (obj))).toString();
    }

    public static String getNowTime()
    {
        return (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date());
    }

    public static String getShareDateStringByDate(Date date, Context context)
    {
        if (context.getResources().getConfiguration().locale.getLanguage().contains("zh"))
        {
            context = new SimpleDateFormat("yyyy\u5E74MM\u6708dd\u65E5");
        } else
        {
            context = new SimpleDateFormat("dd MMMM yyyy");
        }
        return context.format(date);
    }

    public static int[] getStartSyncTime(Context context, int i)
    {
        int ai[] = new int[3];
        context = HealthyDBSyncRecordOperate.loadLastSyncRecordByDataType(context, i).getSyncTime();
        ai[0] = Integer.parseInt(context.substring(0, 4));
        ai[1] = Integer.parseInt(context.substring(4, 6));
        ai[2] = Integer.parseInt(context.substring(6, 8));
        DebugUtil.println((new StringBuilder()).append(ai[0]).append("year").append(ai[1]).append("month").append(ai[2]).append("day").toString());
        return ai;
    }

    private static String getWeek(Calendar calendar, Context context)
    {
        return context.getResources().getStringArray(0x7f050000)[calendar.get(7) - 1];
    }

    public static int getWhichOfMonthDateByDate(Date date)
    {
        return Integer.parseInt((new SimpleDateFormat("dd")).format(date));
    }

    public static String getYearMothString(int i, int j)
    {
        String s = String.valueOf(i);
        if (j < 10)
        {
            return (new StringBuilder()).append(s).append("0").append(j).toString();
        } else
        {
            return (new StringBuilder()).append(s).append(j).toString();
        }
    }

    public static String getYearMothString(String s, String s1)
    {
        if (s1.length() < 2)
        {
            return (new StringBuilder()).append(s).append("0").append(s1).toString();
        } else
        {
            return (new StringBuilder()).append(s).append(s1).toString();
        }
    }

    public static String secToTime(int i)
    {
        if (i <= 0)
        {
            return "00:00:00";
        }
        int k = i / 60;
        String s;
        if (k < 60)
        {
            s = (new StringBuilder()).append("00:").append(unitFormat(k)).append(":").append(unitFormat(i % 60)).toString();
        } else
        {
            int j = k / 60;
            if (j > 99)
            {
                return "99:59:59";
            }
            k %= 60;
            s = (new StringBuilder()).append(unitFormat(j)).append(":").append(unitFormat(k)).append(":").append(unitFormat(i - j * 3600 - k * 60)).toString();
        }
        return s;
    }

    public static String unitFormat(int i)
    {
        if (i >= 0 && i < 10)
        {
            return (new StringBuilder()).append("0").append(Integer.toString(i)).toString();
        } else
        {
            return (new StringBuilder()).append("").append(i).toString();
        }
    }
}
