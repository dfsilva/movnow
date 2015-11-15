// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import de.greenrobot.dao.Property;

// Referenced classes of package com.veclink.healthy.database.dao:
//            UptakeCalorieDao

public static class 
{

    public static final Property CalorieContent;
    public static final Property Counts;
    public static final Property DateTime = new Property(5, java/lang/String, "DateTime", false, "DATE_TIME");
    public static final Property FoodName = new Property(2, java/lang/String, "FoodName", false, "FOOD_NAME");
    public static final Property Id = new Property(0, java/lang/Long, "id", true, "_id");
    public static final Property ImgUrl = new Property(6, java/lang/String, "ImgUrl", false, "IMG_URL");
    public static final Property UserId = new Property(1, java/lang/String, "userId", false, "USER_ID");

    static 
    {
        CalorieContent = new Property(3, Integer.TYPE, "CalorieContent", false, "CALORIE_CONTENT");
        Counts = new Property(4, Float.TYPE, "Counts", false, "COUNTS");
    }

    public ()
    {
    }
}
