// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import de.greenrobot.dao.Property;

// Referenced classes of package com.veclink.healthy.database.dao:
//            SleepQualityDao

public static class A
{

    public static final Property DateTime = new Property(4, java/lang/String, "DateTime", false, "DATE_TIME");
    public static final Property DeepSleep = new Property(2, java/lang/String, "DeepSleep", false, "DEEP_SLEEP");
    public static final Property Id = new Property(0, java/lang/Long, "id", true, "_id");
    public static final Property ShallowSleep = new Property(3, java/lang/String, "shallowSleep", false, "SHALLOW_SLEEP");
    public static final Property SleepAmount = new Property(1, java/lang/String, "SleepAmount", false, "SLEEP_AMOUNT");


    public A()
    {
    }
}
