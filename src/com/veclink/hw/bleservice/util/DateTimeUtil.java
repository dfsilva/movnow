// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.hw.bleservice.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeUtil
{

    public DateTimeUtil()
    {
    }

    public static String getTimeStringByDate(Date date)
    {
        return (new SimpleDateFormat("yyyyMMddHHmmss")).format(date);
    }

    public static int[] getYearMonthDayArrayByDate(Date date)
    {
        date = getTimeStringByDate(date);
        return (new int[] {
            Integer.parseInt(date.substring(0, 4)), Integer.parseInt(date.substring(4, 6)), Integer.parseInt(date.substring(6, 8))
        });
    }
}
