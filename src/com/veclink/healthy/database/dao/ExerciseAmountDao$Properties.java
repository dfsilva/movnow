// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import de.greenrobot.dao.Property;

// Referenced classes of package com.veclink.healthy.database.dao:
//            ExerciseAmountDao

public static class 
{

    public static final Property CalorieConsume;
    public static final Property DateTime = new Property(4, java/lang/String, "DateTime", false, "DATE_TIME");
    public static final Property Id = new Property(0, java/lang/Long, "id", true, "_id");
    public static final Property Mileage;
    public static final Property StepNumber;

    static 
    {
        StepNumber = new Property(1, Integer.TYPE, "StepNumber", false, "STEP_NUMBER");
        Mileage = new Property(2, Integer.TYPE, "Mileage", false, "MILEAGE");
        CalorieConsume = new Property(3, Integer.TYPE, "CalorieConsume", false, "CALORIE_CONSUME");
    }

    public ()
    {
    }
}
