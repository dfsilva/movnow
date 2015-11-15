// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package hirondelle.date4j:
//            Util, DateTime

final class DateTimeFormatter
{
    private final class CustomLocalization
    {

        List AmPmIndicators;
        List Months;
        List Weekdays;
        final DateTimeFormatter this$0;

        CustomLocalization(List list, List list1, List list2)
        {
            this$0 = DateTimeFormatter.this;
            super();
            if (list.size() != 12)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Your List of custom months must have size 12, but its size is ").append(list.size()).toString());
            }
            if (list1.size() != 7)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Your List of custom weekdays must have size 7, but its size is ").append(list1.size()).toString());
            }
            if (list2.size() != 2)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Your List of custom a.m./p.m. indicators must have size 2, but its size is ").append(list2.size()).toString());
            } else
            {
                Months = list;
                Weekdays = list1;
                AmPmIndicators = list2;
                return;
            }
        }
    }

    private static final class EscapedRange
    {

        int End;
        int Start;

        private EscapedRange()
        {
        }

    }

    private static final class InterpretedRange
    {

        int End;
        int Start;
        String Text;

        public String toString()
        {
            return (new StringBuilder()).append("Start:").append(Start).append(" End:").append(End).append(" '").append(Text).append("'").toString();
        }

        private InterpretedRange()
        {
        }

    }


    private static final int AM = 0;
    private static final String D = "D";
    private static final String DD = "DD";
    private static final String EMPTY_STRING = "";
    private static final Pattern ESCAPED_RANGE = Pattern.compile("\\|[^\\|]*\\|");
    private static final String ESCAPE_CHAR = "|";
    private static final Pattern FRACTIONALS = Pattern.compile("f{1,9}");
    private static final String M = "M";
    private static final String MM = "MM";
    private static final String MMM = "MMM";
    private static final String MMMM = "MMMM";
    private static final int PM = 1;
    private static final List TOKENS;
    private static final String WWW = "WWW";
    private static final String WWWW = "WWWW";
    private static final String YY = "YY";
    private static final String YYYY = "YYYY";
    private static final String a = "a";
    private static final String h = "h";
    private static final String h12 = "h12";
    private static final String hh = "hh";
    private static final String hh12 = "hh12";
    private static final String m = "m";
    private static final String mm = "mm";
    private static final String s = "s";
    private static final String ss = "ss";
    private final Map fAmPm;
    private final CustomLocalization fCustomLocalization;
    private Collection fEscapedRanges;
    private final String fFormat;
    private Collection fInterpretedRanges;
    private final Locale fLocale;
    private final Map fMonths;
    private final Map fWeekdays;

    DateTimeFormatter(String s1)
    {
        fMonths = new LinkedHashMap();
        fWeekdays = new LinkedHashMap();
        fAmPm = new LinkedHashMap();
        fFormat = s1;
        fLocale = null;
        fCustomLocalization = null;
        validateState();
    }

    DateTimeFormatter(String s1, List list, List list1, List list2)
    {
        fMonths = new LinkedHashMap();
        fWeekdays = new LinkedHashMap();
        fAmPm = new LinkedHashMap();
        fFormat = s1;
        fLocale = null;
        fCustomLocalization = new CustomLocalization(list, list1, list2);
        validateState();
    }

    DateTimeFormatter(String s1, Locale locale)
    {
        fMonths = new LinkedHashMap();
        fWeekdays = new LinkedHashMap();
        fAmPm = new LinkedHashMap();
        fFormat = s1;
        fLocale = locale;
        fCustomLocalization = null;
        validateState();
    }

    private String addLeadingZero(String s1)
    {
        String s2 = s1;
        if (Util.textHasContent(s1))
        {
            s2 = s1;
            if (s1.length() == 1)
            {
                s2 = (new StringBuilder()).append("0").append(s1).toString();
            }
        }
        return s2;
    }

    private String amPmIndicator(Integer integer)
    {
label0:
        {
            String s1 = "";
            if (integer != null)
            {
                if (fCustomLocalization == null)
                {
                    break label0;
                }
                s1 = lookupCustomAmPmFor(integer);
            }
            return s1;
        }
        if (fLocale != null)
        {
            return lookupAmPmFor(integer);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Your date pattern requires either a Locale, or your own custom localizations for text:").append(Util.quote(fFormat)).toString());
        }
    }

    private void findEscapedRanges()
    {
        EscapedRange escapedrange;
        for (Matcher matcher = ESCAPED_RANGE.matcher(fFormat); matcher.find(); fEscapedRanges.add(escapedrange))
        {
            escapedrange = new EscapedRange();
            escapedrange.Start = matcher.start();
            escapedrange.End = matcher.end() - 1;
        }

    }

    private String firstNChars(String s1, int i)
    {
        String s2 = s1;
        if (Util.textHasContent(s1))
        {
            s2 = s1;
            if (s1.length() >= i)
            {
                s2 = s1.substring(0, i);
            }
        }
        return s2;
    }

    private String firstThreeChars(String s1)
    {
        String s2 = s1;
        if (Util.textHasContent(s1))
        {
            s2 = s1;
            if (s1.length() >= 3)
            {
                s2 = s1.substring(0, 3);
            }
        }
        return s2;
    }

    private String fullMonth(Integer integer)
    {
label0:
        {
            String s1 = "";
            if (integer != null)
            {
                if (fCustomLocalization == null)
                {
                    break label0;
                }
                s1 = lookupCustomMonthFor(integer);
            }
            return s1;
        }
        if (fLocale != null)
        {
            return lookupMonthFor(integer);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Your date pattern requires either a Locale, or your own custom localizations for text:").append(Util.quote(fFormat)).toString());
        }
    }

    private String fullWeekday(Integer integer)
    {
label0:
        {
            String s1 = "";
            if (integer != null)
            {
                if (fCustomLocalization == null)
                {
                    break label0;
                }
                s1 = lookupCustomWeekdayFor(integer);
            }
            return s1;
        }
        if (fLocale != null)
        {
            return lookupWeekdayFor(integer);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Your date pattern requires either a Locale, or your own custom localizations for text:").append(Util.quote(fFormat)).toString());
        }
    }

    private String getAmPmTextFor(Integer integer)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("a", fLocale);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(1, 2000);
        gregoriancalendar.set(2, 6);
        gregoriancalendar.set(5, 15);
        gregoriancalendar.set(11, integer.intValue());
        return simpledateformat.format(gregoriancalendar.getTime());
    }

    private InterpretedRange getInterpretation(int i)
    {
        InterpretedRange interpretedrange = null;
        Iterator iterator = fInterpretedRanges.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            InterpretedRange interpretedrange1 = (InterpretedRange)iterator.next();
            if (interpretedrange1.Start == i)
            {
                interpretedrange = interpretedrange1;
            }
        } while (true);
        return interpretedrange;
    }

    private void interpretInput(DateTime datetime)
    {
        String s1 = fFormat;
        String s2;
label0:
        for (Iterator iterator = TOKENS.iterator(); iterator.hasNext(); s1 = s1.replace(s2, withCharDenotingAlreadyInterpreted(s2)))
        {
            s2 = (String)iterator.next();
            Matcher matcher = Pattern.compile(s2).matcher(s1);
            do
            {
                if (!matcher.find())
                {
                    continue label0;
                }
                InterpretedRange interpretedrange = new InterpretedRange();
                interpretedrange.Start = matcher.start();
                interpretedrange.End = matcher.end() - 1;
                if (!isInEscapedRange(interpretedrange))
                {
                    interpretedrange.Text = interpretThe(matcher.group(), datetime);
                    fInterpretedRanges.add(interpretedrange);
                }
            } while (true);
        }

    }

    private String interpretThe(String s1, DateTime datetime)
    {
        if ("YYYY".equals(s1))
        {
            return valueStr(datetime.getYear());
        }
        if ("YY".equals(s1))
        {
            return noCentury(valueStr(datetime.getYear()));
        }
        if ("MMMM".equals(s1))
        {
            return fullMonth(Integer.valueOf(datetime.getMonth().intValue()));
        }
        if ("MMM".equals(s1))
        {
            return firstThreeChars(fullMonth(Integer.valueOf(datetime.getMonth().intValue())));
        }
        if ("MM".equals(s1))
        {
            return addLeadingZero(valueStr(datetime.getMonth()));
        }
        if ("M".equals(s1))
        {
            return valueStr(datetime.getMonth());
        }
        if ("DD".equals(s1))
        {
            return addLeadingZero(valueStr(datetime.getDay()));
        }
        if ("D".equals(s1))
        {
            return valueStr(datetime.getDay());
        }
        if ("WWWW".equals(s1))
        {
            return fullWeekday(Integer.valueOf(datetime.getWeekDay().intValue()));
        }
        if ("WWW".equals(s1))
        {
            return firstThreeChars(fullWeekday(Integer.valueOf(datetime.getWeekDay().intValue())));
        }
        if ("hh".equals(s1))
        {
            return addLeadingZero(valueStr(datetime.getHour()));
        }
        if ("h".equals(s1))
        {
            return valueStr(datetime.getHour());
        }
        if ("h12".equals(s1))
        {
            return valueStr(twelveHourStyle(datetime.getHour()));
        }
        if ("hh12".equals(s1))
        {
            return addLeadingZero(valueStr(twelveHourStyle(datetime.getHour())));
        }
        if ("a".equals(s1))
        {
            return amPmIndicator(Integer.valueOf(datetime.getHour().intValue()));
        }
        if ("mm".equals(s1))
        {
            return addLeadingZero(valueStr(datetime.getMinute()));
        }
        if ("m".equals(s1))
        {
            return valueStr(datetime.getMinute());
        }
        if ("ss".equals(s1))
        {
            return addLeadingZero(valueStr(datetime.getSecond()));
        }
        if ("s".equals(s1))
        {
            return valueStr(datetime.getSecond());
        }
        if (s1.startsWith("f"))
        {
            if (FRACTIONALS.matcher(s1).matches())
            {
                return firstNChars(nanosWithLeadingZeroes(datetime.getNanoseconds()), s1.length());
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unknown token in date formatting pattern: ").append(s1).toString());
            }
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown token in date formatting pattern: ").append(s1).toString());
        }
    }

    private boolean isInEscapedRange(InterpretedRange interpretedrange)
    {
        for (Iterator iterator = fEscapedRanges.iterator(); iterator.hasNext();)
        {
            EscapedRange escapedrange = (EscapedRange)iterator.next();
            if (escapedrange.Start <= interpretedrange.Start && interpretedrange.Start <= escapedrange.End)
            {
                return true;
            }
        }

        return false;
    }

    private String lookupAmPmFor(Integer integer)
    {
        if (!fAmPm.containsKey(fLocale))
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(getAmPmTextFor(Integer.valueOf(6)));
            arraylist.add(getAmPmTextFor(Integer.valueOf(18)));
            fAmPm.put(fLocale, arraylist);
        }
        if (integer.intValue() < 12)
        {
            return (String)((List)fAmPm.get(fLocale)).get(0);
        } else
        {
            return (String)((List)fAmPm.get(fLocale)).get(1);
        }
    }

    private String lookupCustomAmPmFor(Integer integer)
    {
        if (integer.intValue() < 12)
        {
            return (String)fCustomLocalization.AmPmIndicators.get(0);
        } else
        {
            return (String)fCustomLocalization.AmPmIndicators.get(1);
        }
    }

    private String lookupCustomMonthFor(Integer integer)
    {
        return (String)fCustomLocalization.Months.get(integer.intValue() - 1);
    }

    private String lookupCustomWeekdayFor(Integer integer)
    {
        return (String)fCustomLocalization.Weekdays.get(integer.intValue() - 1);
    }

    private String lookupMonthFor(Integer integer)
    {
        if (!fMonths.containsKey(fLocale))
        {
            ArrayList arraylist = new ArrayList();
            SimpleDateFormat simpledateformat = new SimpleDateFormat("MMMM", fLocale);
            for (int i = 0; i <= 11; i++)
            {
                GregorianCalendar gregoriancalendar = new GregorianCalendar();
                gregoriancalendar.set(1, 2000);
                gregoriancalendar.set(2, i);
                gregoriancalendar.set(5, 15);
                arraylist.add(simpledateformat.format(gregoriancalendar.getTime()));
            }

            fMonths.put(fLocale, arraylist);
        }
        return (String)((List)fMonths.get(fLocale)).get(integer.intValue() - 1);
    }

    private String lookupWeekdayFor(Integer integer)
    {
        if (!fWeekdays.containsKey(fLocale))
        {
            ArrayList arraylist = new ArrayList();
            SimpleDateFormat simpledateformat = new SimpleDateFormat("EEEE", fLocale);
            for (int i = 8; i <= 14; i++)
            {
                GregorianCalendar gregoriancalendar = new GregorianCalendar();
                gregoriancalendar.set(1, 2009);
                gregoriancalendar.set(2, 1);
                gregoriancalendar.set(5, i);
                arraylist.add(simpledateformat.format(gregoriancalendar.getTime()));
            }

            fWeekdays.put(fLocale, arraylist);
        }
        return (String)((List)fWeekdays.get(fLocale)).get(integer.intValue() - 1);
    }

    private String nanosWithLeadingZeroes(Integer integer)
    {
        for (integer = valueStr(integer); integer.length() < 9; integer = (new StringBuilder()).append("0").append(integer).toString()) { }
        return integer;
    }

    private String nextLetter(int i)
    {
        return fFormat.substring(i, i + 1);
    }

    private String noCentury(String s1)
    {
        String s2 = "";
        if (Util.textHasContent(s1))
        {
            s2 = s1.substring(2);
        }
        return s2;
    }

    private String produceFinalOutput()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < fFormat.length()) 
        {
            String s1 = nextLetter(i);
            InterpretedRange interpretedrange = getInterpretation(i);
            int j;
            if (interpretedrange != null)
            {
                stringbuilder.append(interpretedrange.Text);
                j = interpretedrange.End;
            } else
            {
                j = i;
                if (!"|".equals(s1))
                {
                    stringbuilder.append(s1);
                    j = i;
                }
            }
            i = j + 1;
        }
        return stringbuilder.toString();
    }

    private Integer twelveHourStyle(Integer integer)
    {
        Integer integer1 = integer;
        if (integer != null)
        {
            if (integer.intValue() == 0)
            {
                integer1 = Integer.valueOf(12);
            } else
            {
                integer1 = integer;
                if (integer.intValue() > 12)
                {
                    return Integer.valueOf(integer.intValue() - 12);
                }
            }
        }
        return integer1;
    }

    private void validateState()
    {
        if (!Util.textHasContent(fFormat))
        {
            throw new IllegalArgumentException("DateTime format has no content.");
        } else
        {
            return;
        }
    }

    private String valueStr(Object obj)
    {
        String s1 = "";
        if (obj != null)
        {
            s1 = String.valueOf(obj);
        }
        return s1;
    }

    private String withCharDenotingAlreadyInterpreted(String s1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 1; i <= s1.length(); i++)
        {
            stringbuilder.append("@");
        }

        return stringbuilder.toString();
    }

    String format(DateTime datetime)
    {
        fEscapedRanges = new ArrayList();
        fInterpretedRanges = new ArrayList();
        findEscapedRanges();
        interpretInput(datetime);
        return produceFinalOutput();
    }

    static 
    {
        TOKENS = new ArrayList();
        TOKENS.add("YYYY");
        TOKENS.add("YY");
        TOKENS.add("MMMM");
        TOKENS.add("MMM");
        TOKENS.add("MM");
        TOKENS.add("M");
        TOKENS.add("DD");
        TOKENS.add("D");
        TOKENS.add("WWWW");
        TOKENS.add("WWW");
        TOKENS.add("hh12");
        TOKENS.add("h12");
        TOKENS.add("hh");
        TOKENS.add("h");
        TOKENS.add("mm");
        TOKENS.add("m");
        TOKENS.add("ss");
        TOKENS.add("s");
        TOKENS.add("a");
        TOKENS.add("fffffffff");
        TOKENS.add("ffffffff");
        TOKENS.add("fffffff");
        TOKENS.add("ffffff");
        TOKENS.add("fffff");
        TOKENS.add("ffff");
        TOKENS.add("fff");
        TOKENS.add("ff");
        TOKENS.add("f");
    }
}
