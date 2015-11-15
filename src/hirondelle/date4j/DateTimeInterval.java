// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;


// Referenced classes of package hirondelle.date4j:
//            DateTime

final class DateTimeInterval
{

    private static final int MAX = 9999;
    private static final int MAX_NANOS = 0x3b9ac9ff;
    private static final int MIN = 0;
    private static final boolean MINUS = false;
    private static final int MIN_NANOS = 0;
    private static final boolean PLUS = true;
    private Integer fDay;
    private int fDayIncr;
    private DateTime.DayOverflow fDayOverflow;
    private final DateTime fFrom;
    private Integer fHour;
    private int fHourIncr;
    private boolean fIsPlus;
    private Integer fMinute;
    private int fMinuteIncr;
    private Integer fMonth;
    private int fMonthIncr;
    private Integer fNanosecond;
    private int fNanosecondIncr;
    private Integer fSecond;
    private int fSecondIncr;
    private Integer fYear;
    private int fYearIncr;

    DateTimeInterval(DateTime datetime, DateTime.DayOverflow dayoverflow)
    {
        boolean flag1 = true;
        boolean flag = false;
        super();
        fFrom = datetime;
        checkUnits();
        int i;
        if (fFrom.getYear() == null)
        {
            i = 1;
        } else
        {
            i = fFrom.getYear().intValue();
        }
        fYear = Integer.valueOf(i);
        if (fFrom.getMonth() == null)
        {
            i = 1;
        } else
        {
            i = fFrom.getMonth().intValue();
        }
        fMonth = Integer.valueOf(i);
        if (fFrom.getDay() == null)
        {
            i = ((flag1) ? 1 : 0);
        } else
        {
            i = fFrom.getDay().intValue();
        }
        fDay = Integer.valueOf(i);
        if (fFrom.getHour() == null)
        {
            i = 0;
        } else
        {
            i = fFrom.getHour().intValue();
        }
        fHour = Integer.valueOf(i);
        if (fFrom.getMinute() == null)
        {
            i = 0;
        } else
        {
            i = fFrom.getMinute().intValue();
        }
        fMinute = Integer.valueOf(i);
        if (fFrom.getSecond() == null)
        {
            i = 0;
        } else
        {
            i = fFrom.getSecond().intValue();
        }
        fSecond = Integer.valueOf(i);
        if (fFrom.getNanoseconds() == null)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = fFrom.getNanoseconds().intValue();
        }
        fNanosecond = Integer.valueOf(i);
        fDayOverflow = dayoverflow;
    }

    private void changeDay()
    {
        for (int i = 0; i < fDayIncr; i++)
        {
            stepDay();
        }

    }

    private void changeHour()
    {
        for (int i = 0; i < fHourIncr; i++)
        {
            stepHour();
        }

    }

    private void changeMinute()
    {
        for (int i = 0; i < fMinuteIncr; i++)
        {
            stepMinute();
        }

    }

    private void changeMonth()
    {
        for (int i = 0; i < fMonthIncr; i++)
        {
            stepMonth();
        }

    }

    private void changeNanosecond()
    {
        if (fIsPlus)
        {
            fNanosecond = Integer.valueOf(fNanosecond.intValue() + fNanosecondIncr);
        } else
        {
            fNanosecond = Integer.valueOf(fNanosecond.intValue() - fNanosecondIncr);
        }
        if (fNanosecond.intValue() > 0x3b9ac9ff)
        {
            stepSecond();
            fNanosecond = Integer.valueOf(fNanosecond.intValue() - 0x3b9ac9ff - 1);
        } else
        if (fNanosecond.intValue() < 0)
        {
            stepSecond();
            fNanosecond = Integer.valueOf(fNanosecond.intValue() + 0x3b9ac9ff + 1);
            return;
        }
    }

    private void changeSecond()
    {
        for (int i = 0; i < fSecondIncr; i++)
        {
            stepSecond();
        }

    }

    private void changeYear()
    {
        if (fIsPlus)
        {
            fYear = Integer.valueOf(fYear.intValue() + fYearIncr);
            return;
        } else
        {
            fYear = Integer.valueOf(fFrom.getYear().intValue() - fYearIncr);
            return;
        }
    }

    private void checkRange(Integer integer, String s)
    {
        if (integer.intValue() < 0 || integer.intValue() > 9999)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" is not in the range ").append(0).append("..").append(9999).toString());
        } else
        {
            return;
        }
    }

    private void checkRangeNanos(Integer integer)
    {
        if (integer.intValue() < 0 || integer.intValue() > 0x3b9ac9ff)
        {
            throw new IllegalArgumentException("Nanosecond interval is not in the range 0..999999999");
        } else
        {
            return;
        }
    }

    private void checkUnits()
    {
        boolean flag1 = true;
        if (!fFrom.unitsAllPresent(new DateTime.Unit[] {
            DateTime.Unit.YEAR, DateTime.Unit.MONTH, DateTime.Unit.DAY, DateTime.Unit.HOUR, DateTime.Unit.MINUTE, DateTime.Unit.SECOND
        })) goto _L2; else goto _L1
_L1:
        boolean flag = flag1;
_L5:
        if (!flag)
        {
            throw new IllegalArgumentException("For interval calculations, DateTime must have year-month-day, or hour-minute-second, or both.");
        } else
        {
            return;
        }
_L2:
        if (!fFrom.unitsAllPresent(new DateTime.Unit[] {
            DateTime.Unit.YEAR, DateTime.Unit.MONTH, DateTime.Unit.DAY
        })) goto _L4; else goto _L3
_L3:
        flag = flag1;
        if (fFrom.unitsAllAbsent(new DateTime.Unit[] {
            DateTime.Unit.HOUR, DateTime.Unit.MINUTE, DateTime.Unit.SECOND
        })) goto _L5; else goto _L4
_L4:
        if (!fFrom.unitsAllAbsent(new DateTime.Unit[] {
            DateTime.Unit.YEAR, DateTime.Unit.MONTH, DateTime.Unit.DAY
        })) goto _L7; else goto _L6
_L6:
        flag = flag1;
        if (fFrom.unitsAllPresent(new DateTime.Unit[] {
            DateTime.Unit.HOUR, DateTime.Unit.MINUTE, DateTime.Unit.SECOND
        })) goto _L5; else goto _L7
_L7:
        flag = false;
          goto _L5
    }

    private void handleMonthOverflow()
    {
        int i = numDaysInMonth();
        if (fDay.intValue() > i)
        {
            if (DateTime.DayOverflow.Abort == fDayOverflow)
            {
                throw new RuntimeException((new StringBuilder()).append("Day Overflow: Year:").append(fYear).append(" Month:").append(fMonth).append(" has ").append(i).append(" days, but day has value:").append(fDay).append(" To avoid these exceptions, please specify a different DayOverflow policy.").toString());
            }
            if (DateTime.DayOverflow.FirstDay == fDayOverflow)
            {
                fDay = Integer.valueOf(1);
                stepMonth();
            } else
            {
                if (DateTime.DayOverflow.LastDay == fDayOverflow)
                {
                    fDay = Integer.valueOf(i);
                    return;
                }
                if (DateTime.DayOverflow.Spillover == fDayOverflow)
                {
                    fDay = Integer.valueOf(fDay.intValue() - i);
                    stepMonth();
                    return;
                }
            }
        }
    }

    private int numDaysInMonth()
    {
        return DateTime.getNumDaysInMonth(fYear, fMonth).intValue();
    }

    private int numDaysInPreviousMonth()
    {
        if (fMonth.intValue() > 1)
        {
            return DateTime.getNumDaysInMonth(fYear, Integer.valueOf(fMonth.intValue() - 1)).intValue();
        } else
        {
            return DateTime.getNumDaysInMonth(Integer.valueOf(fYear.intValue() - 1), Integer.valueOf(12)).intValue();
        }
    }

    private DateTime plusOrMinus(boolean flag, Integer integer, Integer integer1, Integer integer2, Integer integer3, Integer integer4, Integer integer5, 
            Integer integer6)
    {
        fIsPlus = flag;
        fYearIncr = integer.intValue();
        fMonthIncr = integer1.intValue();
        fDayIncr = integer2.intValue();
        fHourIncr = integer3.intValue();
        fMinuteIncr = integer4.intValue();
        fSecondIncr = integer5.intValue();
        fNanosecondIncr = integer6.intValue();
        checkRange(Integer.valueOf(fYearIncr), "Year");
        checkRange(Integer.valueOf(fMonthIncr), "Month");
        checkRange(Integer.valueOf(fDayIncr), "Day");
        checkRange(Integer.valueOf(fHourIncr), "Hour");
        checkRange(Integer.valueOf(fMinuteIncr), "Minute");
        checkRange(Integer.valueOf(fSecondIncr), "Second");
        checkRangeNanos(Integer.valueOf(fNanosecondIncr));
        changeYear();
        changeMonth();
        handleMonthOverflow();
        changeDay();
        changeHour();
        changeMinute();
        changeSecond();
        changeNanosecond();
        return new DateTime(fYear, fMonth, fDay, fHour, fMinute, fSecond, fNanosecond);
    }

    private void stepDay()
    {
        if (fIsPlus)
        {
            fDay = Integer.valueOf(fDay.intValue() + 1);
        } else
        {
            fDay = Integer.valueOf(fDay.intValue() - 1);
        }
        if (fDay.intValue() > numDaysInMonth())
        {
            fDay = Integer.valueOf(1);
            stepMonth();
        } else
        if (fDay.intValue() < 1)
        {
            fDay = Integer.valueOf(numDaysInPreviousMonth());
            stepMonth();
            return;
        }
    }

    private void stepHour()
    {
        if (fIsPlus)
        {
            fHour = Integer.valueOf(fHour.intValue() + 1);
        } else
        {
            fHour = Integer.valueOf(fHour.intValue() - 1);
        }
        if (fHour.intValue() > 23)
        {
            fHour = Integer.valueOf(0);
            stepDay();
        } else
        if (fHour.intValue() < 0)
        {
            fHour = Integer.valueOf(23);
            stepDay();
            return;
        }
    }

    private void stepMinute()
    {
        if (fIsPlus)
        {
            fMinute = Integer.valueOf(fMinute.intValue() + 1);
        } else
        {
            fMinute = Integer.valueOf(fMinute.intValue() - 1);
        }
        if (fMinute.intValue() > 59)
        {
            fMinute = Integer.valueOf(0);
            stepHour();
        } else
        if (fMinute.intValue() < 0)
        {
            fMinute = Integer.valueOf(59);
            stepHour();
            return;
        }
    }

    private void stepMonth()
    {
        if (fIsPlus)
        {
            fMonth = Integer.valueOf(fMonth.intValue() + 1);
        } else
        {
            fMonth = Integer.valueOf(fMonth.intValue() - 1);
        }
        if (fMonth.intValue() > 12)
        {
            fMonth = Integer.valueOf(1);
            stepYear();
        } else
        if (fMonth.intValue() < 1)
        {
            fMonth = Integer.valueOf(12);
            stepYear();
            return;
        }
    }

    private void stepSecond()
    {
        if (fIsPlus)
        {
            fSecond = Integer.valueOf(fSecond.intValue() + 1);
        } else
        {
            fSecond = Integer.valueOf(fSecond.intValue() - 1);
        }
        if (fSecond.intValue() > 59)
        {
            fSecond = Integer.valueOf(0);
            stepMinute();
        } else
        if (fSecond.intValue() < 0)
        {
            fSecond = Integer.valueOf(59);
            stepMinute();
            return;
        }
    }

    private void stepYear()
    {
        if (fIsPlus)
        {
            fYear = Integer.valueOf(fYear.intValue() + 1);
            return;
        } else
        {
            fYear = Integer.valueOf(fYear.intValue() - 1);
            return;
        }
    }

    DateTime minus(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        return plusOrMinus(false, Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k), Integer.valueOf(l), Integer.valueOf(i1), Integer.valueOf(j1), Integer.valueOf(k1));
    }

    DateTime plus(int i, int j, int k, int l, int i1, int j1, int k1)
    {
        return plusOrMinus(true, Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k), Integer.valueOf(l), Integer.valueOf(i1), Integer.valueOf(j1), Integer.valueOf(k1));
    }
}
