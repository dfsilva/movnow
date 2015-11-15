// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package hirondelle.date4j:
//            DateTimeParser, ModelUtil, DateTimeFormatter, DateTimeInterval, 
//            Util

public final class DateTime
    implements Comparable, Serializable
{
    public static final class DayOverflow extends Enum
    {

        private static final DayOverflow $VALUES[];
        public static final DayOverflow Abort;
        public static final DayOverflow FirstDay;
        public static final DayOverflow LastDay;
        public static final DayOverflow Spillover;

        public static DayOverflow valueOf(String s)
        {
            return (DayOverflow)Enum.valueOf(hirondelle/date4j/DateTime$DayOverflow, s);
        }

        public static final DayOverflow[] values()
        {
            return (DayOverflow[])$VALUES.clone();
        }

        static 
        {
            LastDay = new DayOverflow("LastDay", 0);
            FirstDay = new DayOverflow("FirstDay", 1);
            Spillover = new DayOverflow("Spillover", 2);
            Abort = new DayOverflow("Abort", 3);
            $VALUES = (new DayOverflow[] {
                LastDay, FirstDay, Spillover, Abort
            });
        }

        private DayOverflow(String s, int i)
        {
            super(s, i);
        }
    }

    static final class ItemOutOfRange extends RuntimeException
    {

        private static final long serialVersionUID = 0x420f688e62e1dcdcL;

        ItemOutOfRange(String s)
        {
            super(s);
        }
    }

    static final class MissingItem extends RuntimeException
    {

        private static final long serialVersionUID = 0x99dc24b3369e88f5L;

        MissingItem(String s)
        {
            super(s);
        }
    }

    public static final class Unit extends Enum
    {

        private static final Unit $VALUES[];
        public static final Unit DAY;
        public static final Unit HOUR;
        public static final Unit MINUTE;
        public static final Unit MONTH;
        public static final Unit NANOSECONDS;
        public static final Unit SECOND;
        public static final Unit YEAR;

        public static Unit valueOf(String s)
        {
            return (Unit)Enum.valueOf(hirondelle/date4j/DateTime$Unit, s);
        }

        public static final Unit[] values()
        {
            return (Unit[])$VALUES.clone();
        }

        static 
        {
            YEAR = new Unit("YEAR", 0);
            MONTH = new Unit("MONTH", 1);
            DAY = new Unit("DAY", 2);
            HOUR = new Unit("HOUR", 3);
            MINUTE = new Unit("MINUTE", 4);
            SECOND = new Unit("SECOND", 5);
            NANOSECONDS = new Unit("NANOSECONDS", 6);
            $VALUES = (new Unit[] {
                YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, NANOSECONDS
            });
        }

        private Unit(String s, int i)
        {
            super(s, i);
        }
    }


    private static int EPOCH_MODIFIED_JD = 0;
    private static final int EQUAL = 0;
    private static final int MILLION = 0xf4240;
    private static final long serialVersionUID = 0xedf53ae6311f557dL;
    private String fDateTime;
    private Integer fDay;
    private int fHashCode;
    private Integer fHour;
    private boolean fIsAlreadyParsed;
    private Integer fMinute;
    private Integer fMonth;
    private Integer fNanosecond;
    private Integer fSecond;
    private Integer fYear;

    public DateTime(Integer integer, Integer integer1, Integer integer2, Integer integer3, Integer integer4, Integer integer5, Integer integer6)
    {
        fIsAlreadyParsed = true;
        fYear = integer;
        fMonth = integer1;
        fDay = integer2;
        fHour = integer3;
        fMinute = integer4;
        fSecond = integer5;
        fNanosecond = integer6;
        validateState();
    }

    public DateTime(String s)
    {
        fIsAlreadyParsed = false;
        if (s == null)
        {
            throw new IllegalArgumentException("String passed to DateTime constructor is null. You can use an empty string, but not a null reference.");
        } else
        {
            fDateTime = s;
            return;
        }
    }

    private void addToString(String s, Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append((new StringBuilder()).append(s).append(":").append(String.valueOf(obj)).append(" ").toString());
    }

    private String calcToStringFormat()
    {
        Object obj = null;
        String s;
        if (unitsAllPresent(new Unit[] {
    Unit.YEAR
}) && unitsAllAbsent(new Unit[] {
    Unit.MONTH, Unit.DAY, Unit.HOUR, Unit.MINUTE, Unit.SECOND, Unit.NANOSECONDS
}))
        {
            s = "YYYY";
        } else
        {
            if (unitsAllPresent(new Unit[] {
    Unit.YEAR, Unit.MONTH
}) && unitsAllAbsent(new Unit[] {
    Unit.DAY, Unit.HOUR, Unit.MINUTE, Unit.SECOND, Unit.NANOSECONDS
}))
            {
                return "YYYY-MM";
            }
            if (unitsAllPresent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY
}) && unitsAllAbsent(new Unit[] {
    Unit.HOUR, Unit.MINUTE, Unit.SECOND, Unit.NANOSECONDS
}))
            {
                return "YYYY-MM-DD";
            }
            if (unitsAllPresent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY, Unit.HOUR
}) && unitsAllAbsent(new Unit[] {
    Unit.MINUTE, Unit.SECOND, Unit.NANOSECONDS
}))
            {
                return "YYYY-MM-DD hh";
            }
            if (unitsAllPresent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY, Unit.HOUR, Unit.MINUTE
}) && unitsAllAbsent(new Unit[] {
    Unit.SECOND, Unit.NANOSECONDS
}))
            {
                return "YYYY-MM-DD hh:mm";
            }
            if (unitsAllPresent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY, Unit.HOUR, Unit.MINUTE, Unit.SECOND
}) && unitsAllAbsent(new Unit[] {
    Unit.NANOSECONDS
}))
            {
                return "YYYY-MM-DD hh:mm:ss";
            }
            if (unitsAllPresent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY, Unit.HOUR, Unit.MINUTE, Unit.SECOND, Unit.NANOSECONDS
}))
            {
                return "YYYY-MM-DD hh:mm:ss.fffffffff";
            }
            if (unitsAllAbsent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY
}) && unitsAllPresent(new Unit[] {
    Unit.HOUR, Unit.MINUTE, Unit.SECOND, Unit.NANOSECONDS
}))
            {
                return "hh:mm:ss.fffffffff";
            }
            if (unitsAllAbsent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY, Unit.NANOSECONDS
}) && unitsAllPresent(new Unit[] {
    Unit.HOUR, Unit.MINUTE, Unit.SECOND
}))
            {
                return "hh:mm:ss";
            }
            s = obj;
            if (unitsAllAbsent(new Unit[] {
    Unit.YEAR, Unit.MONTH, Unit.DAY, Unit.SECOND, Unit.NANOSECONDS
}))
            {
                s = obj;
                if (unitsAllPresent(new Unit[] {
    Unit.HOUR, Unit.MINUTE
}))
                {
                    return "hh:mm";
                }
            }
        }
        return s;
    }

    private int calculateJulianDayNumberAtNoon()
    {
        int i = fYear.intValue();
        int j = fMonth.intValue();
        int k = fDay.intValue();
        return (((((i + 4800 + (j - 14) / 12) * 1461) / 4 + ((j - 2 - ((j - 14) / 12) * 12) * 367) / 12) - (((i + 4900 + (j - 14) / 12) / 100) * 3) / 4) + k) - 32075;
    }

    private void checkNumDaysInMonth(Integer integer, Integer integer1, Integer integer2)
    {
        if (hasYearMonthDay(integer, integer1, integer2) && integer2.intValue() > getNumDaysInMonth(integer, integer1).intValue())
        {
            throw new ItemOutOfRange((new StringBuilder()).append("The day-of-the-month value '").append(integer2).append("' exceeds the number of days in the month: ").append(getNumDaysInMonth(integer, integer1)).toString());
        } else
        {
            return;
        }
    }

    private void checkRange(Integer integer, int i, int j, String s)
    {
        if (integer != null && (integer.intValue() < i || integer.intValue() > j))
        {
            throw new ItemOutOfRange((new StringBuilder()).append(s).append(" is not in the range ").append(i).append("..").append(j).append(". Value is:").append(integer).toString());
        } else
        {
            return;
        }
    }

    private void ensureHasYearMonthDay()
    {
        ensureParsed();
        if (!hasYearMonthDay())
        {
            throw new MissingItem("DateTime does not include year/month/day.");
        } else
        {
            return;
        }
    }

    public static DateTime forDateOnly(Integer integer, Integer integer1, Integer integer2)
    {
        return new DateTime(integer, integer1, integer2, null, null, null, null);
    }

    public static DateTime forInstant(long l, TimeZone timezone)
    {
        timezone = new GregorianCalendar(timezone);
        timezone.setTimeInMillis(l);
        return new DateTime(Integer.valueOf(timezone.get(1)), Integer.valueOf(timezone.get(2) + 1), Integer.valueOf(timezone.get(5)), Integer.valueOf(timezone.get(11)), Integer.valueOf(timezone.get(12)), Integer.valueOf(timezone.get(13)), Integer.valueOf(timezone.get(14) * 1000 * 1000));
    }

    public static DateTime forInstantNanos(long l, TimeZone timezone)
    {
        long l1 = l / 0xf4240L;
        long l2 = l % 0xf4240L;
        if (l < 0L)
        {
            l = l2 + 0xf4240L;
            l1--;
        } else
        {
            l = l2;
        }
        timezone = new GregorianCalendar(timezone);
        timezone.setTimeInMillis(l1);
        return (new DateTime(Integer.valueOf(timezone.get(1)), Integer.valueOf(timezone.get(2) + 1), Integer.valueOf(timezone.get(5)), Integer.valueOf(timezone.get(11)), Integer.valueOf(timezone.get(12)), Integer.valueOf(timezone.get(13)), Integer.valueOf(0xf4240 * timezone.get(14)))).plus(Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf((int)l), DayOverflow.Spillover);
    }

    public static DateTime forTimeOnly(Integer integer, Integer integer1, Integer integer2, Integer integer3)
    {
        return new DateTime(null, null, null, integer, integer1, integer2, integer3);
    }

    static DateTime fromJulianDayNumberAtNoon(int i)
    {
        int j = 0x10bd9 + i;
        i = (j * 4) / 0x23ab1;
        int k = j - (0x23ab1 * i + 3) / 4;
        j = ((k + 1) * 4000) / 0x164b09;
        k = (k - (j * 1461) / 4) + 31;
        int l = (k * 80) / 2447;
        int i1 = (l * 2447) / 80;
        int j1 = l / 11;
        return forDateOnly(Integer.valueOf((i - 49) * 100 + j + j1), Integer.valueOf((l + 2) - j1 * 12), Integer.valueOf(k - i1));
    }

    static Integer getNumDaysInMonth(Integer integer, Integer integer1)
    {
label0:
        {
            Object obj = null;
            Integer integer2 = obj;
            if (integer != null)
            {
                integer2 = obj;
                if (integer1 != null)
                {
                    if (integer1.intValue() != 1)
                    {
                        break label0;
                    }
                    integer2 = Integer.valueOf(31);
                }
            }
            return integer2;
        }
        if (integer1.intValue() == 2)
        {
            byte byte0;
            if (isLeapYear(integer))
            {
                byte0 = 29;
            } else
            {
                byte0 = 28;
            }
            return Integer.valueOf(byte0);
        }
        if (integer1.intValue() == 3)
        {
            return Integer.valueOf(31);
        }
        if (integer1.intValue() == 4)
        {
            return Integer.valueOf(30);
        }
        if (integer1.intValue() == 5)
        {
            return Integer.valueOf(31);
        }
        if (integer1.intValue() == 6)
        {
            return Integer.valueOf(30);
        }
        if (integer1.intValue() == 7)
        {
            return Integer.valueOf(31);
        }
        if (integer1.intValue() == 8)
        {
            return Integer.valueOf(31);
        }
        if (integer1.intValue() == 9)
        {
            return Integer.valueOf(30);
        }
        if (integer1.intValue() == 10)
        {
            return Integer.valueOf(31);
        }
        if (integer1.intValue() == 11)
        {
            return Integer.valueOf(30);
        }
        if (integer1.intValue() == 12)
        {
            return Integer.valueOf(31);
        } else
        {
            throw new AssertionError((new StringBuilder()).append("Month is out of range 1..12:").append(integer1).toString());
        }
    }

    private Object[] getSignificantFields()
    {
        return (new Object[] {
            fYear, fMonth, fDay, fHour, fMinute, fSecond, fNanosecond
        });
    }

    private DateTime getStartEndDateTime(Integer integer, Integer integer1, Integer integer2, Integer integer3, Integer integer4)
    {
        ensureHasYearMonthDay();
        return new DateTime(fYear, fMonth, integer, integer1, integer2, integer3, integer4);
    }

    private boolean hasYearMonthDay(Integer integer, Integer integer1, Integer integer2)
    {
        return isPresent(new Object[] {
            integer, integer1, integer2
        });
    }

    private static boolean isLeapYear(Integer integer)
    {
        return integer.intValue() % 100 != 0 ? integer.intValue() % 4 == 0 : integer.intValue() % 400 == 0;
    }

    public static boolean isParseable(String s)
    {
        try
        {
            (new DateTime(s)).ensureParsed();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    private transient boolean isPresent(Object aobj[])
    {
        int j = aobj.length;
        for (int i = 0; i < j; i++)
        {
            if (aobj[i] == null)
            {
                return false;
            }
        }

        return true;
    }

    public static DateTime now(TimeZone timezone)
    {
        return forInstant(System.currentTimeMillis(), timezone);
    }

    private int numSecondsInTimePortion()
    {
        int j = 0;
        if (fSecond != null)
        {
            j = 0 + fSecond.intValue();
        }
        int i = j;
        if (fMinute != null)
        {
            i = j + fMinute.intValue() * 60;
        }
        j = i;
        if (fHour != null)
        {
            j = i + fHour.intValue() * 3600;
        }
        return j;
    }

    private void parseDateTimeText()
    {
        DateTime datetime = (new DateTimeParser()).parse(fDateTime);
        fYear = datetime.fYear;
        fMonth = datetime.fMonth;
        fDay = datetime.fDay;
        fHour = datetime.fHour;
        fMinute = datetime.fMinute;
        fSecond = datetime.fSecond;
        fNanosecond = datetime.fNanosecond;
        validateState();
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws ClassNotFoundException, IOException
    {
        objectinputstream.defaultReadObject();
        validateState();
    }

    public static DateTime today(TimeZone timezone)
    {
        return now(timezone).truncate(Unit.DAY);
    }

    private void validateState()
    {
        checkRange(fYear, 1, 9999, "Year");
        checkRange(fMonth, 1, 12, "Month");
        checkRange(fDay, 1, 31, "Day");
        checkRange(fHour, 0, 23, "Hour");
        checkRange(fMinute, 0, 59, "Minute");
        checkRange(fSecond, 0, 59, "Second");
        checkRange(fNanosecond, 0, 0x3b9ac9ff, "Nanosecond");
        checkNumDaysInMonth(fYear, fMonth, fDay);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.defaultWriteObject();
    }

    public DateTime changeTimeZone(TimeZone timezone, TimeZone timezone1)
    {
        ensureHasYearMonthDay();
        if (unitsAllAbsent(new Unit[] {
    Unit.HOUR
}))
        {
            throw new IllegalArgumentException("DateTime does not include the hour. Cannot change the time zone if no hour is present.");
        }
        timezone = new GregorianCalendar(timezone);
        timezone.set(1, getYear().intValue());
        timezone.set(2, getMonth().intValue() - 1);
        timezone.set(5, getDay().intValue());
        timezone.set(11, getHour().intValue());
        if (getMinute() != null)
        {
            timezone.set(12, getMinute().intValue());
        } else
        {
            timezone.set(12, 0);
        }
        timezone.set(13, 0);
        timezone.set(14, 0);
        timezone1 = new GregorianCalendar(timezone1);
        timezone1.setTimeInMillis(timezone.getTimeInMillis());
        if (getMinute() != null)
        {
            timezone = Integer.valueOf(timezone1.get(12));
        } else
        {
            timezone = null;
        }
        return new DateTime(Integer.valueOf(timezone1.get(1)), Integer.valueOf(timezone1.get(2) + 1), Integer.valueOf(timezone1.get(5)), Integer.valueOf(timezone1.get(11)), timezone, getSecond(), getNanoseconds());
    }

    public int compareTo(DateTime datetime)
    {
        if (this != datetime)
        {
            ensureParsed();
            datetime.ensureParsed();
            ModelUtil.NullsGo nullsgo = ModelUtil.NullsGo.FIRST;
            int i = ModelUtil.comparePossiblyNull(fYear, datetime.fYear, nullsgo);
            if (i != 0)
            {
                return i;
            }
            i = ModelUtil.comparePossiblyNull(fMonth, datetime.fMonth, nullsgo);
            if (i != 0)
            {
                return i;
            }
            i = ModelUtil.comparePossiblyNull(fDay, datetime.fDay, nullsgo);
            if (i != 0)
            {
                return i;
            }
            i = ModelUtil.comparePossiblyNull(fHour, datetime.fHour, nullsgo);
            if (i != 0)
            {
                return i;
            }
            i = ModelUtil.comparePossiblyNull(fMinute, datetime.fMinute, nullsgo);
            if (i != 0)
            {
                return i;
            }
            i = ModelUtil.comparePossiblyNull(fSecond, datetime.fSecond, nullsgo);
            if (i != 0)
            {
                return i;
            }
            i = ModelUtil.comparePossiblyNull(fNanosecond, datetime.fNanosecond, nullsgo);
            if (i != 0)
            {
                return i;
            }
        }
        return 0;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((DateTime)obj);
    }

    void ensureParsed()
    {
        if (!fIsAlreadyParsed)
        {
            parseDateTimeText();
        }
    }

    public boolean equals(Object obj)
    {
        ensureParsed();
        Boolean boolean2 = ModelUtil.quickEquals(this, obj);
        Boolean boolean1 = boolean2;
        if (boolean2 == null)
        {
            obj = (DateTime)obj;
            ((DateTime) (obj)).ensureParsed();
            boolean1 = Boolean.valueOf(ModelUtil.equalsFor(getSignificantFields(), ((DateTime) (obj)).getSignificantFields()));
        }
        return boolean1.booleanValue();
    }

    public String format(String s)
    {
        return (new DateTimeFormatter(s)).format(this);
    }

    public String format(String s, List list, List list1, List list2)
    {
        return (new DateTimeFormatter(s, list, list1, list2)).format(this);
    }

    public String format(String s, Locale locale)
    {
        return (new DateTimeFormatter(s, locale)).format(this);
    }

    public Integer getDay()
    {
        ensureParsed();
        return fDay;
    }

    public Integer getDayOfYear()
    {
        ensureHasYearMonthDay();
        int i;
        if (isLeapYear().booleanValue())
        {
            i = 1;
        } else
        {
            i = 2;
        }
        return Integer.valueOf((((fMonth.intValue() * 275) / 9 - i * ((fMonth.intValue() + 9) / 12)) + fDay.intValue()) - 30);
    }

    public DateTime getEndOfDay()
    {
        ensureHasYearMonthDay();
        return getStartEndDateTime(fDay, Integer.valueOf(23), Integer.valueOf(59), Integer.valueOf(59), Integer.valueOf(0x3b9ac9ff));
    }

    public DateTime getEndOfMonth()
    {
        ensureHasYearMonthDay();
        return getStartEndDateTime(Integer.valueOf(getNumDaysInMonth()), Integer.valueOf(23), Integer.valueOf(59), Integer.valueOf(59), Integer.valueOf(0x3b9ac9ff));
    }

    public Integer getHour()
    {
        ensureParsed();
        return fHour;
    }

    public long getMilliseconds(TimeZone timezone)
    {
        int l = 0;
        Integer integer = getYear();
        Integer integer1 = getMonth();
        Integer integer2 = getDay();
        int i;
        int j;
        int k;
        if (getHour() == null)
        {
            i = 0;
        } else
        {
            i = getHour().intValue();
        }
        if (getMinute() == null)
        {
            j = 0;
        } else
        {
            j = getMinute().intValue();
        }
        if (getSecond() == null)
        {
            k = 0;
        } else
        {
            k = getSecond().intValue();
        }
        if (getNanoseconds() != null)
        {
            l = getNanoseconds().intValue();
        }
        timezone = new GregorianCalendar(timezone);
        timezone.set(1, integer.intValue());
        timezone.set(2, integer1.intValue() - 1);
        timezone.set(5, integer2.intValue());
        timezone.set(11, Integer.valueOf(i).intValue());
        timezone.set(12, Integer.valueOf(j).intValue());
        timezone.set(13, Integer.valueOf(k).intValue());
        timezone.set(14, Integer.valueOf(l).intValue() / 0xf4240);
        return timezone.getTimeInMillis();
    }

    public Integer getMinute()
    {
        ensureParsed();
        return fMinute;
    }

    public Integer getModifiedJulianDayNumber()
    {
        ensureHasYearMonthDay();
        return Integer.valueOf(calculateJulianDayNumberAtNoon() - 1 - EPOCH_MODIFIED_JD);
    }

    public Integer getMonth()
    {
        ensureParsed();
        return fMonth;
    }

    public Integer getNanoseconds()
    {
        ensureParsed();
        return fNanosecond;
    }

    public long getNanosecondsInstant(TimeZone timezone)
    {
        int l = 0;
        Integer integer = getYear();
        Integer integer1 = getMonth();
        Integer integer2 = getDay();
        Integer integer3;
        int i;
        int j;
        int k;
        int i1;
        long l1;
        if (getHour() == null)
        {
            i = 0;
        } else
        {
            i = getHour().intValue();
        }
        if (getMinute() == null)
        {
            j = 0;
        } else
        {
            j = getMinute().intValue();
        }
        if (getSecond() == null)
        {
            k = 0;
        } else
        {
            k = getSecond().intValue();
        }
        if (getNanoseconds() != null)
        {
            l = getNanoseconds().intValue();
        }
        integer3 = Integer.valueOf(l);
        l = integer3.intValue() / 0xf4240;
        i1 = integer3.intValue();
        timezone = new GregorianCalendar(timezone);
        timezone.set(1, integer.intValue());
        timezone.set(2, integer1.intValue() - 1);
        timezone.set(5, integer2.intValue());
        timezone.set(11, Integer.valueOf(i).intValue());
        timezone.set(12, Integer.valueOf(j).intValue());
        timezone.set(13, Integer.valueOf(k).intValue());
        timezone.set(14, l);
        l1 = timezone.getTimeInMillis();
        return (long)(i1 % 0xf4240) + l1 * 0xf4240L;
    }

    public int getNumDaysInMonth()
    {
        ensureHasYearMonthDay();
        return getNumDaysInMonth(fYear, fMonth).intValue();
    }

    public Unit getPrecision()
    {
        ensureParsed();
        Unit unit = null;
        if (isPresent(new Object[] {
    fNanosecond
}))
        {
            unit = Unit.NANOSECONDS;
        } else
        {
            if (isPresent(new Object[] {
    fSecond
}))
            {
                return Unit.SECOND;
            }
            if (isPresent(new Object[] {
    fMinute
}))
            {
                return Unit.MINUTE;
            }
            if (isPresent(new Object[] {
    fHour
}))
            {
                return Unit.HOUR;
            }
            if (isPresent(new Object[] {
    fDay
}))
            {
                return Unit.DAY;
            }
            if (isPresent(new Object[] {
    fMonth
}))
            {
                return Unit.MONTH;
            }
            if (isPresent(new Object[] {
    fYear
}))
            {
                return Unit.YEAR;
            }
        }
        return unit;
    }

    public String getRawDateString()
    {
        return fDateTime;
    }

    public Integer getSecond()
    {
        ensureParsed();
        return fSecond;
    }

    public DateTime getStartOfDay()
    {
        ensureHasYearMonthDay();
        return getStartEndDateTime(fDay, Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
    }

    public DateTime getStartOfMonth()
    {
        ensureHasYearMonthDay();
        return getStartEndDateTime(Integer.valueOf(1), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0));
    }

    public Integer getWeekDay()
    {
        ensureHasYearMonthDay();
        return Integer.valueOf((calculateJulianDayNumberAtNoon() + 1) % 7 + 1);
    }

    public Integer getWeekIndex()
    {
        return getWeekIndex(forDateOnly(Integer.valueOf(2000), Integer.valueOf(1), Integer.valueOf(2)));
    }

    public Integer getWeekIndex(DateTime datetime)
    {
        ensureHasYearMonthDay();
        datetime.ensureHasYearMonthDay();
        return Integer.valueOf((getModifiedJulianDayNumber().intValue() - datetime.getModifiedJulianDayNumber().intValue()) / 7 + 1);
    }

    public Integer getYear()
    {
        ensureParsed();
        return fYear;
    }

    public boolean gt(DateTime datetime)
    {
        return compareTo(datetime) > 0;
    }

    public boolean gteq(DateTime datetime)
    {
        return compareTo(datetime) > 0 || equals(datetime);
    }

    public boolean hasHourMinuteSecond()
    {
        return unitsAllPresent(new Unit[] {
            Unit.HOUR, Unit.MINUTE, Unit.SECOND
        });
    }

    public boolean hasYearMonthDay()
    {
        return unitsAllPresent(new Unit[] {
            Unit.YEAR, Unit.MONTH, Unit.DAY
        });
    }

    public int hashCode()
    {
        if (fHashCode == 0)
        {
            ensureParsed();
            fHashCode = ModelUtil.hashCodeFor(getSignificantFields());
        }
        return fHashCode;
    }

    public boolean isInTheFuture(TimeZone timezone)
    {
        return now(timezone).lt(this);
    }

    public boolean isInThePast(TimeZone timezone)
    {
        return now(timezone).gt(this);
    }

    public Boolean isLeapYear()
    {
        ensureParsed();
        if (isPresent(new Object[] {
    fYear
}))
        {
            return Boolean.valueOf(isLeapYear(fYear));
        } else
        {
            throw new MissingItem("Year is absent. Cannot determine if leap year.");
        }
    }

    public boolean isSameDayAs(DateTime datetime)
    {
        ensureHasYearMonthDay();
        datetime.ensureHasYearMonthDay();
        return fYear.equals(datetime.fYear) && fMonth.equals(datetime.fMonth) && fDay.equals(datetime.fDay);
    }

    public boolean lt(DateTime datetime)
    {
        return compareTo(datetime) < 0;
    }

    public boolean lteq(DateTime datetime)
    {
        return compareTo(datetime) < 0 || equals(datetime);
    }

    public DateTime minus(Integer integer, Integer integer1, Integer integer2, Integer integer3, Integer integer4, Integer integer5, Integer integer6, 
            DayOverflow dayoverflow)
    {
        return (new DateTimeInterval(this, dayoverflow)).minus(integer.intValue(), integer1.intValue(), integer2.intValue(), integer3.intValue(), integer4.intValue(), integer5.intValue(), integer6.intValue());
    }

    public DateTime minusDays(Integer integer)
    {
        return plusDays(Integer.valueOf(integer.intValue() * -1));
    }

    public int numDaysFrom(DateTime datetime)
    {
        return datetime.getModifiedJulianDayNumber().intValue() - getModifiedJulianDayNumber().intValue();
    }

    public long numSecondsFrom(DateTime datetime)
    {
        long l1 = 0L;
        long l = l1;
        if (hasYearMonthDay())
        {
            l = l1;
            if (datetime.hasYearMonthDay())
            {
                l = numDaysFrom(datetime) * 0x15180;
            }
        }
        return (l - (long)numSecondsInTimePortion()) + (long)datetime.numSecondsInTimePortion();
    }

    public DateTime plus(Integer integer, Integer integer1, Integer integer2, Integer integer3, Integer integer4, Integer integer5, Integer integer6, 
            DayOverflow dayoverflow)
    {
        return (new DateTimeInterval(this, dayoverflow)).plus(integer.intValue(), integer1.intValue(), integer2.intValue(), integer3.intValue(), integer4.intValue(), integer5.intValue(), integer6.intValue());
    }

    public DateTime plusDays(Integer integer)
    {
        ensureHasYearMonthDay();
        integer = fromJulianDayNumberAtNoon(getModifiedJulianDayNumber().intValue() + 1 + EPOCH_MODIFIED_JD + integer.intValue());
        return new DateTime(integer.getYear(), integer.getMonth(), integer.getDay(), fHour, fMinute, fSecond, fNanosecond);
    }

    public String toString()
    {
        if (Util.textHasContent(fDateTime))
        {
            return fDateTime;
        }
        if (calcToStringFormat() != null)
        {
            return format(calcToStringFormat());
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            addToString("Y", fYear, stringbuilder);
            addToString("M", fMonth, stringbuilder);
            addToString("D", fDay, stringbuilder);
            addToString("h", fHour, stringbuilder);
            addToString("m", fMinute, stringbuilder);
            addToString("s", fSecond, stringbuilder);
            addToString("f", fNanosecond, stringbuilder);
            return stringbuilder.toString().trim();
        }
    }

    public DateTime truncate(Unit unit)
    {
        ensureParsed();
        if (Unit.NANOSECONDS == unit)
        {
            throw new IllegalArgumentException("It makes no sense to truncate to nanosecond precision, since that's the highest precision available.");
        }
        if (Unit.SECOND == unit)
        {
            return new DateTime(fYear, fMonth, fDay, fHour, fMinute, fSecond, null);
        }
        if (Unit.MINUTE == unit)
        {
            return new DateTime(fYear, fMonth, fDay, fHour, fMinute, null, null);
        }
        if (Unit.HOUR == unit)
        {
            return new DateTime(fYear, fMonth, fDay, fHour, null, null, null);
        }
        if (Unit.DAY == unit)
        {
            return new DateTime(fYear, fMonth, fDay, null, null, null, null);
        }
        if (Unit.MONTH == unit)
        {
            return new DateTime(fYear, fMonth, null, null, null, null, null);
        }
        if (Unit.YEAR == unit)
        {
            return new DateTime(fYear, null, null, null, null, null, null);
        } else
        {
            return null;
        }
    }

    public transient boolean unitsAllAbsent(Unit aunit[])
    {
        ensureParsed();
        int j = aunit.length;
        int i = 0;
        boolean flag1 = true;
        while (i < j) 
        {
            Unit unit = aunit[i];
            boolean flag;
            if (Unit.NANOSECONDS == unit)
            {
                if (flag1 && fNanosecond == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.SECOND == unit)
            {
                if (flag1 && fSecond == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.MINUTE == unit)
            {
                if (flag1 && fMinute == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.HOUR == unit)
            {
                if (flag1 && fHour == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.DAY == unit)
            {
                if (flag1 && fDay == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.MONTH == unit)
            {
                if (flag1 && fMonth == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            {
                flag = flag1;
                if (Unit.YEAR == unit)
                {
                    if (flag1 && fYear == null)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                }
            }
            i++;
            flag1 = flag;
        }
        return flag1;
    }

    public transient boolean unitsAllPresent(Unit aunit[])
    {
        ensureParsed();
        int j = aunit.length;
        int i = 0;
        boolean flag1 = true;
        while (i < j) 
        {
            Unit unit = aunit[i];
            boolean flag;
            if (Unit.NANOSECONDS == unit)
            {
                if (flag1 && fNanosecond != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.SECOND == unit)
            {
                if (flag1 && fSecond != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.MINUTE == unit)
            {
                if (flag1 && fMinute != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.HOUR == unit)
            {
                if (flag1 && fHour != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.DAY == unit)
            {
                if (flag1 && fDay != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            if (Unit.MONTH == unit)
            {
                if (flag1 && fMonth != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            {
                flag = flag1;
                if (Unit.YEAR == unit)
                {
                    if (flag1 && fYear != null)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                }
            }
            i++;
            flag1 = flag;
        }
        return flag1;
    }

    static 
    {
        EPOCH_MODIFIED_JD = 0x249f00;
    }
}
