// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package hirondelle.date4j:
//            DateTime

final class DateTimeParser
{
    private class Parts
    {

        String datePart;
        final DateTimeParser this$0;
        String timePart;

        boolean hasDateOnly()
        {
            return timePart == null;
        }

        boolean hasTimeOnly()
        {
            return datePart == null;
        }

        boolean hasTwoParts()
        {
            return datePart != null && timePart != null;
        }

        private Parts()
        {
            this$0 = DateTimeParser.this;
            super();
        }

    }

    static final class UnknownDateTimeFormat extends RuntimeException
    {

        private static final long serialVersionUID = 0x9c5d921fb6778be8L;

        UnknownDateTimeFormat(String s)
        {
            super(s);
        }

        UnknownDateTimeFormat(String s, Throwable throwable)
        {
            super(s, throwable);
        }
    }


    private static final String CL = "\\:";
    private static final String COLON = ":";
    private static final Pattern DATE = Pattern.compile("(\\d{1,4})-(\\d\\d)-(\\d\\d)|(\\d{1,4})-(\\d\\d)|(\\d{1,4})");
    private static final Integer NUM_DIGITS = Integer.valueOf("9");
    private static final String NUM_DIGITS_FOR_FRACTIONAL_SECONDS = "9";
    private static final int THIRD_POSITION = 2;
    private static final Pattern TIME = Pattern.compile("(\\d\\d)\\:(\\d\\d)\\:(\\d\\d)\\.(\\d{1,9})|(\\d\\d)\\:(\\d\\d)\\:(\\d\\d)|(\\d\\d)\\:(\\d\\d)|(\\d\\d)");
    private static final String TT = "(\\d\\d)";
    private Integer fDay;
    private Integer fHour;
    private Integer fMinute;
    private Integer fMonth;
    private Integer fNanosecond;
    private Integer fSecond;
    private Integer fYear;

    DateTimeParser()
    {
    }

    private String convertToNanoseconds(String s)
    {
        for (s = new StringBuilder(s); s.length() < NUM_DIGITS.intValue(); s.append("0")) { }
        return s.toString();
    }

    private transient String getGroup(Matcher matcher, int ai[])
    {
        int j = ai.length;
        String s = null;
        int i = 0;
        do
        {
label0:
            {
                if (i < j)
                {
                    s = matcher.group(ai[i]);
                    if (s == null)
                    {
                        break label0;
                    }
                }
                return s;
            }
            i++;
        } while (true);
    }

    private boolean hasColonInThirdPlace(String s)
    {
        boolean flag = false;
        if (s.length() >= 2)
        {
            flag = ":".equals(s.substring(2, 3));
        }
        return flag;
    }

    private void parseDate(String s)
    {
        Matcher matcher = DATE.matcher(s);
        if (matcher.matches())
        {
            s = getGroup(matcher, new int[] {
                1, 4, 6
            });
            if (s != null)
            {
                fYear = Integer.valueOf(s);
            }
            s = getGroup(matcher, new int[] {
                2, 5
            });
            if (s != null)
            {
                fMonth = Integer.valueOf(s);
            }
            s = getGroup(matcher, new int[] {
                3
            });
            if (s != null)
            {
                fDay = Integer.valueOf(s);
            }
            return;
        } else
        {
            throw new UnknownDateTimeFormat((new StringBuilder()).append("Unexpected format for date:").append(s).toString());
        }
    }

    private void parseTime(String s)
    {
        Matcher matcher = TIME.matcher(s);
        if (matcher.matches())
        {
            s = getGroup(matcher, new int[] {
                1, 5, 8, 10
            });
            if (s != null)
            {
                fHour = Integer.valueOf(s);
            }
            s = getGroup(matcher, new int[] {
                2, 6, 9
            });
            if (s != null)
            {
                fMinute = Integer.valueOf(s);
            }
            s = getGroup(matcher, new int[] {
                3, 7
            });
            if (s != null)
            {
                fSecond = Integer.valueOf(s);
            }
            s = getGroup(matcher, new int[] {
                4
            });
            if (s != null)
            {
                fNanosecond = Integer.valueOf(convertToNanoseconds(s));
            }
            return;
        } else
        {
            throw new UnknownDateTimeFormat((new StringBuilder()).append("Unexpected format for time:").append(s).toString());
        }
    }

    private Parts splitIntoDateAndTime(String s)
    {
        Parts parts = new Parts();
        int i = getDateTimeSeparator(s);
        boolean flag;
        if (i > 0 && i < s.length())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            parts.datePart = s.substring(0, i);
            parts.timePart = s.substring(i + 1);
            return parts;
        }
        if (hasColonInThirdPlace(s))
        {
            parts.timePart = s;
            return parts;
        } else
        {
            parts.datePart = s;
            return parts;
        }
    }

    int getDateTimeSeparator(String s)
    {
        int j = s.indexOf(" ");
        int i = j;
        if (j == -1)
        {
            i = s.indexOf("T");
        }
        return i;
    }

    DateTime parse(String s)
    {
        if (s == null)
        {
            throw new NullPointerException("DateTime string is null");
        }
        s = splitIntoDateAndTime(s.trim());
        if (!s.hasTwoParts()) goto _L2; else goto _L1
_L1:
        parseDate(((Parts) (s)).datePart);
        parseTime(((Parts) (s)).timePart);
_L4:
        return new DateTime(fYear, fMonth, fDay, fHour, fMinute, fSecond, fNanosecond);
_L2:
        if (s.hasDateOnly())
        {
            parseDate(((Parts) (s)).datePart);
        } else
        if (s.hasTimeOnly())
        {
            parseTime(((Parts) (s)).timePart);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

}
