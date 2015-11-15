// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import de.greenrobot.dao.Property;

// Referenced classes of package com.veclink.healthy.database.dao:
//            SyncRecordDao

public static class 
{

    public static final Property DeviceImei = new Property(2, java/lang/String, "deviceImei", false, "DEVICE_IMEI");
    public static final Property LastSyncTime = new Property(3, java/lang/String, "lastSyncTime", false, "LAST_SYNC_TIME");
    public static final Property SyncDataType;
    public static final Property SyncTime = new Property(4, java/lang/String, "syncTime", false, "SYNC_TIME");
    public static final Property UserId = new Property(1, java/lang/String, "userId", false, "USER_ID");
    public static final Property _id = new Property(0, java/lang/String, "_id", true, "_ID");

    static 
    {
        SyncDataType = new Property(5, Integer.TYPE, "syncDataType", false, "SYNC_DATA_TYPE");
    }

    public ()
    {
    }
}
