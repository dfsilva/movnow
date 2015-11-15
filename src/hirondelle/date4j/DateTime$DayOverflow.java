// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;


// Referenced classes of package hirondelle.date4j:
//            DateTime

public static final class  extends Enum
{

    private static final Abort $VALUES[];
    public static final Abort Abort;
    public static final Abort FirstDay;
    public static final Abort LastDay;
    public static final Abort Spillover;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(hirondelle/date4j/DateTime$DayOverflow, s);
    }

    public static final [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        LastDay = new <init>("LastDay", 0);
        FirstDay = new <init>("FirstDay", 1);
        Spillover = new <init>("Spillover", 2);
        Abort = new <init>("Abort", 3);
        $VALUES = (new .VALUES[] {
            LastDay, FirstDay, Spillover, Abort
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
