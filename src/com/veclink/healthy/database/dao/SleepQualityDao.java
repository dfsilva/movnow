// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.SleepQuality;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class SleepQualityDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property DateTime = new Property(4, java/lang/String, "DateTime", false, "DATE_TIME");
        public static final Property DeepSleep = new Property(2, java/lang/String, "DeepSleep", false, "DEEP_SLEEP");
        public static final Property Id = new Property(0, java/lang/Long, "id", true, "_id");
        public static final Property ShallowSleep = new Property(3, java/lang/String, "shallowSleep", false, "SHALLOW_SLEEP");
        public static final Property SleepAmount = new Property(1, java/lang/String, "SleepAmount", false, "SLEEP_AMOUNT");


        public Properties()
        {
        }
    }


    public static final String TABLENAME = "SLEEP_QUALITY";

    public SleepQualityDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public SleepQualityDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'SLEEP_QUALITY' (").append("'_id' INTEGER PRIMARY KEY ,").append("'SLEEP_AMOUNT' TEXT NOT NULL ,").append("'DEEP_SLEEP' TEXT NOT NULL ,").append("'SHALLOW_SLEEP' TEXT NOT NULL ,").append("'DATE_TIME' TEXT NOT NULL );").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'SLEEP_QUALITY'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, SleepQuality sleepquality)
    {
        sqlitestatement.clearBindings();
        Long long1 = sleepquality.getId();
        if (long1 != null)
        {
            sqlitestatement.bindLong(1, long1.longValue());
        }
        sqlitestatement.bindString(2, sleepquality.getSleepAmount());
        sqlitestatement.bindString(3, sleepquality.getDeepSleep());
        sqlitestatement.bindString(4, sleepquality.getShallowSleep());
        sqlitestatement.bindString(5, sleepquality.getDateTime());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (SleepQuality)obj);
    }

    public Long getKey(SleepQuality sleepquality)
    {
        if (sleepquality != null)
        {
            return sleepquality.getId();
        } else
        {
            return null;
        }
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((SleepQuality)obj);
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public SleepQuality readEntity(Cursor cursor, int i)
    {
        Long long1;
        if (cursor.isNull(i + 0))
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(cursor.getLong(i + 0));
        }
        return new SleepQuality(long1, cursor.getString(i + 1), cursor.getString(i + 2), cursor.getString(i + 3), cursor.getString(i + 4));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, SleepQuality sleepquality, int i)
    {
        Long long1;
        if (cursor.isNull(i + 0))
        {
            long1 = null;
        } else
        {
            long1 = Long.valueOf(cursor.getLong(i + 0));
        }
        sleepquality.setId(long1);
        sleepquality.setSleepAmount(cursor.getString(i + 1));
        sleepquality.setDeepSleep(cursor.getString(i + 2));
        sleepquality.setShallowSleep(cursor.getString(i + 3));
        sleepquality.setDateTime(cursor.getString(i + 4));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (SleepQuality)obj, i);
    }

    public Long readKey(Cursor cursor, int i)
    {
        if (cursor.isNull(i + 0))
        {
            return null;
        } else
        {
            return Long.valueOf(cursor.getLong(i + 0));
        }
    }

    public volatile Object readKey(Cursor cursor, int i)
    {
        return readKey(cursor, i);
    }

    protected Long updateKeyAfterInsert(SleepQuality sleepquality, long l)
    {
        sleepquality.setId(Long.valueOf(l));
        return Long.valueOf(l);
    }

    protected volatile Object updateKeyAfterInsert(Object obj, long l)
    {
        return updateKeyAfterInsert((SleepQuality)obj, l);
    }
}
