// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;


// Referenced classes of package hirondelle.date4j:
//            DateTimeParser

private class <init>
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

    private ()
    {
        this$0 = DateTimeParser.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
