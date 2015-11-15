// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import de.greenrobot.dao.Property;

// Referenced classes of package com.veclink.healthy.database.dao:
//            ExerciseDataDao

public static class A
{

    public static final Property CalorieConsume;
    public static final Property DateTime = new Property(0, java/lang/String, "DateTime", true, "DATE_TIME");
    public static final Property Mileage;
    public static final Property StepNumber;

    static 
    {
        StepNumber = new Property(1, Integer.TYPE, "StepNumber", false, "STEP_NUMBER");
        Mileage = new Property(2, Integer.TYPE, "Mileage", false, "MILEAGE");
        CalorieConsume = new Property(3, Integer.TYPE, "CalorieConsume", false, "CALORIE_CONSUME");
    }

    public A()
    {
    }
}
