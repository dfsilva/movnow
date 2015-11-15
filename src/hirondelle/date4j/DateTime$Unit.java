// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;


// Referenced classes of package hirondelle.date4j:
//            DateTime

public static final class  extends Enum
{

    private static final NANOSECONDS $VALUES[];
    public static final NANOSECONDS DAY;
    public static final NANOSECONDS HOUR;
    public static final NANOSECONDS MINUTE;
    public static final NANOSECONDS MONTH;
    public static final NANOSECONDS NANOSECONDS;
    public static final NANOSECONDS SECOND;
    public static final NANOSECONDS YEAR;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(hirondelle/date4j/DateTime$Unit, s);
    }

    public static final [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        YEAR = new <init>("YEAR", 0);
        MONTH = new <init>("MONTH", 1);
        DAY = new <init>("DAY", 2);
        HOUR = new <init>("HOUR", 3);
        MINUTE = new <init>("MINUTE", 4);
        SECOND = new <init>("SECOND", 5);
        NANOSECONDS = new <init>("NANOSECONDS", 6);
        $VALUES = (new .VALUES[] {
            YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, NANOSECONDS
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
