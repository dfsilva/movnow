// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import de.greenrobot.dao.Property;

// Referenced classes of package com.veclink.healthy.database.dao:
//            SleepDataDao

public static class 
{

    public static final Property DateTime = new Property(3, java/lang/String, "dateTime", false, "DATE_TIME");
    public static final Property DeviceId = new Property(2, java/lang/String, "deviceId", false, "DEVICE_ID");
    public static final Property DeviceType = new Property(7, java/lang/String, "deviceType", false, "DEVICE_TYPE");
    public static final Property Hadupload = new Property(8, java/lang/String, "hadupload", false, "HADUPLOAD");
    public static final Property SleepDuration;
    public static final Property SleepState = new Property(6, java/lang/String, "sleepState", false, "SLEEP_STATE");
    public static final Property StartTime;
    public static final Property UserId = new Property(1, java/lang/String, "userId", false, "USER_ID");
    public static final Property _id = new Property(0, java/lang/String, "_id", true, "_ID");

    static 
    {
        StartTime = new Property(4, Integer.TYPE, "startTime", false, "START_TIME");
        SleepDuration = new Property(5, Integer.TYPE, "sleepDuration", false, "SLEEP_DURATION");
    }

    public ()
    {
    }
}
