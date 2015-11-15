// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;


// Referenced classes of package hirondelle.date4j:
//            ModelUtil

static final class  extends Enum
{

    private static final LAST $VALUES[];
    public static final LAST FIRST;
    public static final LAST LAST;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(hirondelle/date4j/ModelUtil$NullsGo, s);
    }

    public static final [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        FIRST = new <init>("FIRST", 0);
        LAST = new <init>("LAST", 1);
        $VALUES = (new .VALUES[] {
            FIRST, LAST
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
