// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package hirondelle.date4j;

import java.util.List;

// Referenced classes of package hirondelle.date4j:
//            DateTimeFormatter

private final class AmPmIndicators
{

    List AmPmIndicators;
    List Months;
    List Weekdays;
    final DateTimeFormatter this$0;

    (List list, List list1, List list2)
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
