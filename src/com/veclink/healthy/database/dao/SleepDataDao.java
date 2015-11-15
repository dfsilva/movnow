// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.SleepData;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class SleepDataDao extends AbstractDao
{
    public static class Properties
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

        public Properties()
        {
        }
    }


    public static final String TABLENAME = "SLEEP_DATA";

    public SleepDataDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public SleepDataDao(DaoConfig daoconfig, DaoSession daosession)
    {
        super(daoconfig, daosession);
    }

    public static void createTable(SQLiteDatabase sqlitedatabase, boolean flag)
    {
        String s;
        if (flag)
        {
            s = "IF NOT EXISTS ";
        } else
        {
            s = "";
        }
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'SLEEP_DATA' (").append("'_ID' TEXT PRIMARY KEY NOT NULL ,").append("'USER_ID' TEXT NOT NULL ,").append("'DEVICE_ID' TEXT NOT NULL ,").append("'DATE_TIME' TEXT NOT NULL ,").append("'START_TIME' INTEGER NOT NULL ,").append("'SLEEP_DURATION' INTEGER NOT NULL ,").append("'SLEEP_STATE' TEXT NOT NULL ,").append("'DEVICE_TYPE' TEXT NOT NULL ,").append("'HADUPLOAD' TEXT NOT NULL );").toString());
    }

    public static void dropTable(SQLiteDatabase sqlitedatabase, boolean flag)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("DROP TABLE ");
        String s;
        if (flag)
        {
            s = "IF EXISTS ";
        } else
        {
            s = "";
        }
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'SLEEP_DATA'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, SleepData sleepdata)
    {
        sqlitestatement.clearBindings();
        String s = sleepdata.get_id();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindString(2, sleepdata.getUserId());
        sqlitestatement.bindString(3, sleepdata.getDeviceId());
        sqlitestatement.bindString(4, sleepdata.getDateTime());
        sqlitestatement.bindLong(5, sleepdata.getStartTime());
        sqlitestatement.bindLong(6, sleepdata.getSleepDuration());
        sqlitestatement.bindString(7, sleepdata.getSleepState());
        sqlitestatement.bindString(8, sleepdata.getDeviceType());
        sqlitestatement.bindString(9, sleepdata.getHadupload());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (SleepData)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((SleepData)obj);
    }

    public String getKey(SleepData sleepdata)
    {
        if (sleepdata != null)
        {
            return sleepdata.get_id();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public SleepData readEntity(Cursor cursor, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        return new SleepData(s, cursor.getString(i + 1), cursor.getString(i + 2), cursor.getString(i + 3), cursor.getInt(i + 4), cursor.getInt(i + 5), cursor.getString(i + 6), cursor.getString(i + 7), cursor.getString(i + 8));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, SleepData sleepdata, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        sleepdata.set_id(s);
        sleepdata.setUserId(cursor.getString(i + 1));
        sleepdata.setDeviceId(cursor.getString(i + 2));
        sleepdata.setDateTime(cursor.getString(i + 3));
        sleepdata.setStartTime(cursor.getInt(i + 4));
        sleepdata.setSleepDuration(cursor.getInt(i + 5));
        sleepdata.setSleepState(cursor.getString(i + 6));
        sleepdata.setDeviceType(cursor.getString(i + 7));
        sleepdata.setHadupload(cursor.getString(i + 8));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (SleepData)obj, i);
    }

    public volatile Object readKey(Cursor cursor, int i)
    {
        return readKey(cursor, i);
    }

    public String readKey(Cursor cursor, int i)
    {
        if (cursor.isNull(i + 0))
        {
            return null;
        } else
        {
            return cursor.getString(i + 0);
        }
    }

    protected volatile Object updateKeyAfterInsert(Object obj, long l)
    {
        return updateKeyAfterInsert((SleepData)obj, l);
    }

    protected String updateKeyAfterInsert(SleepData sleepdata, long l)
    {
        return sleepdata.get_id();
    }
}
