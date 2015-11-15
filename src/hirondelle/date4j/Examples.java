// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.io.PrintStream;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package hirondelle.date4j:
//            DateTime

public final class Examples
{

    public Examples()
    {
    }

    private void ageIfBornOnCertainDate()
    {
        DateTime datetime = DateTime.today(TimeZone.getDefault());
        DateTime datetime1 = DateTime.forDateOnly(Integer.valueOf(1995), Integer.valueOf(5), Integer.valueOf(16));
        int j = datetime.getYear().intValue() - datetime1.getYear().intValue();
        int i = j;
        if (datetime.getDayOfYear().intValue() < datetime1.getDayOfYear().intValue())
        {
            i = j - 1;
        }
        log((new StringBuilder()).append("Age of someone born May 16, 1995 is : ").append(i).toString());
    }

    private void currentDateTime()
    {
        String s = DateTime.now(TimeZone.getDefault()).format("YYYY-MM-DD hh:mm:ss");
        log((new StringBuilder()).append("Current date-time in default time zone : ").append(s).toString());
    }

    private void currentDateTimeInCairo()
    {
        String s = DateTime.now(TimeZone.getTimeZone("Africa/Cairo")).format("YYYY-MM-DD hh:mm:ss (WWWW)", Locale.getDefault());
        log((new StringBuilder()).append("Current date-time in Cairo : ").append(s).toString());
    }

    private void daysTillChristmas()
    {
        DateTime datetime;
        DateTime datetime1;
        int i;
        datetime = DateTime.today(TimeZone.getDefault());
        datetime1 = DateTime.forDateOnly(datetime.getYear(), Integer.valueOf(12), Integer.valueOf(25));
        i = 0;
        if (!datetime.isSameDayAs(datetime1)) goto _L2; else goto _L1
_L1:
        log((new StringBuilder()).append("Number of days till Christmas : ").append(i).toString());
        return;
_L2:
        if (datetime.lt(datetime1))
        {
            i = datetime.numDaysFrom(datetime1);
        } else
        if (datetime.gt(datetime1))
        {
            i = datetime.numDaysFrom(DateTime.forDateOnly(Integer.valueOf(datetime.getYear().intValue() + 1), Integer.valueOf(12), Integer.valueOf(25)));
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void firstDayOfThisWeek()
    {
        DateTime datetime1 = DateTime.today(TimeZone.getDefault());
        int i = datetime1.getWeekDay().intValue();
        DateTime datetime = datetime1;
        if (i > 1)
        {
            datetime = datetime1.minusDays(Integer.valueOf(i - 1));
        }
        log((new StringBuilder()).append("The first day of this week is : ").append(datetime).toString());
    }

    private void hoursDifferenceBetweenParisAndPerth()
    {
        DateTime datetime = DateTime.now(TimeZone.getTimeZone("Europe/Paris"));
        int j = DateTime.now(TimeZone.getTimeZone("Australia/Perth")).getHour().intValue() - datetime.getHour().intValue();
        int i = j;
        if (j < 0)
        {
            i = j + 24;
        }
        log((new StringBuilder()).append("Numbers of hours difference between Paris and Perth : ").append(i).toString());
    }

    private void imitateISOFormat()
    {
        DateTime datetime = DateTime.now(TimeZone.getDefault());
        log((new StringBuilder()).append("Output using an ISO format: ").append(datetime.format("YYYY-MM-DDThh:mm:ss")).toString());
    }

    private void jdkDatesSuctorial()
    {
        DateTime datetime = DateTime.today(TimeZone.getDefault());
        DateTime datetime1 = DateTime.forDateOnly(Integer.valueOf(1996), Integer.valueOf(1), Integer.valueOf(23));
        int i = datetime.getYear().intValue();
        int j = datetime1.getYear().intValue();
        log((new StringBuilder()).append("The number of years the JDK date-time API has been suctorial : ").append(i - j).toString());
    }

    private static void log(Object obj)
    {
        System.out.println(String.valueOf(obj));
    }

    public static transient void main(String args[])
    {
        args = new Examples();
        args.currentDateTime();
        args.currentDateTimeInCairo();
        args.ageIfBornOnCertainDate();
        args.optionsExpiry();
        args.daysTillChristmas();
        args.whenIs90DaysFromToday();
        args.whenIs3Months5DaysFromToday();
        args.hoursDifferenceBetweenParisAndPerth();
        args.weeksSinceStart();
        args.timeTillMidnight();
        args.imitateISOFormat();
        args.firstDayOfThisWeek();
        args.jdkDatesSuctorial();
    }

    private void optionsExpiry()
    {
        DateTime datetime = DateTime.today(TimeZone.getDefault()).getStartOfMonth();
        int i;
        if (datetime.getWeekDay().intValue() == 7)
        {
            i = 21;
        } else
        {
            i = 21 - datetime.getWeekDay().intValue();
        }
        datetime = DateTime.forDateOnly(datetime.getYear(), datetime.getMonth(), Integer.valueOf(i));
        log((new StringBuilder()).append("The 3rd Friday of this month is : ").append(datetime.format("YYYY-MM-DD")).toString());
    }

    private void timeTillMidnight()
    {
        DateTime datetime = DateTime.now(TimeZone.getDefault());
        long l = datetime.numSecondsFrom(datetime.plusDays(Integer.valueOf(1)).getStartOfDay());
        log((new StringBuilder()).append("This many seconds till midnight : ").append(l).toString());
    }

    private void weeksSinceStart()
    {
        DateTime datetime = DateTime.today(TimeZone.getDefault());
        DateTime datetime1 = DateTime.forDateOnly(Integer.valueOf(2010), Integer.valueOf(9), Integer.valueOf(6));
        int i = datetime.getWeekIndex().intValue();
        int j = datetime1.getWeekIndex().intValue();
        log((new StringBuilder()).append("The number of weeks since Sep 6, 2010 : ").append(i - j).toString());
    }

    private void whenIs3Months5DaysFromToday()
    {
        DateTime datetime = DateTime.today(TimeZone.getDefault()).plus(Integer.valueOf(0), Integer.valueOf(3), Integer.valueOf(5), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), DateTime.DayOverflow.FirstDay);
        log((new StringBuilder()).append("3 months and 5 days from today is : ").append(datetime.format("YYYY-MM-DD")).toString());
    }

    private void whenIs90DaysFromToday()
    {
        DateTime datetime = DateTime.today(TimeZone.getDefault());
        log((new StringBuilder()).append("90 days from today is : ").append(datetime.plusDays(Integer.valueOf(90)).format("YYYY-MM-DD")).toString());
    }
}
