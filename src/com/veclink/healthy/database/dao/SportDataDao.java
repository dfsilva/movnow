// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.SportData;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class SportDataDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property DataFrequency = new Property(6, java/lang/String, "dataFrequency", false, "DATA_FREQUENCY");
        public static final Property DeviceId = new Property(2, java/lang/String, "deviceId", false, "DEVICE_ID");
        public static final Property DeviceType = new Property(7, java/lang/String, "deviceType", false, "DEVICE_TYPE");
        public static final Property Hadupload = new Property(8, java/lang/String, "hadupload", false, "HADUPLOAD");
        public static final Property SportStep = new Property(5, java/lang/String, "sportStep", false, "SPORT_STEP");
        public static final Property SportTime = new Property(3, java/lang/String, "sportTime", false, "SPORT_TIME");
        public static final Property SportType = new Property(4, java/lang/String, "sportType", false, "SPORT_TYPE");
        public static final Property UserId = new Property(1, java/lang/String, "userId", false, "USER_ID");
        public static final Property _id = new Property(0, java/lang/String, "_id", true, "_ID");


        public Properties()
        {
        }
    }


    public static final String TABLENAME = "SPORT_DATA";

    public SportDataDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public SportDataDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'SPORT_DATA' (").append("'_ID' TEXT PRIMARY KEY NOT NULL ,").append("'USER_ID' TEXT NOT NULL ,").append("'DEVICE_ID' TEXT NOT NULL ,").append("'SPORT_TIME' TEXT NOT NULL ,").append("'SPORT_TYPE' TEXT NOT NULL ,").append("'SPORT_STEP' TEXT NOT NULL ,").append("'DATA_FREQUENCY' TEXT NOT NULL ,").append("'DEVICE_TYPE' TEXT NOT NULL ,").append("'HADUPLOAD' TEXT NOT NULL );").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'SPORT_DATA'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, SportData sportdata)
    {
        sqlitestatement.clearBindings();
        String s = sportdata.get_id();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindString(2, sportdata.getUserId());
        sqlitestatement.bindString(3, sportdata.getDeviceId());
        sqlitestatement.bindString(4, sportdata.getSportTime());
        sqlitestatement.bindString(5, sportdata.getSportType());
        sqlitestatement.bindString(6, sportdata.getSportStep());
        sqlitestatement.bindString(7, sportdata.getDataFrequency());
        sqlitestatement.bindString(8, sportdata.getDeviceType());
        sqlitestatement.bindString(9, sportdata.getHadupload());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (SportData)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((SportData)obj);
    }

    public String getKey(SportData sportdata)
    {
        if (sportdata != null)
        {
            return sportdata.get_id();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public SportData readEntity(Cursor cursor, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        return new SportData(s, cursor.getString(i + 1), cursor.getString(i + 2), cursor.getString(i + 3), cursor.getString(i + 4), cursor.getString(i + 5), cursor.getString(i + 6), cursor.getString(i + 7), cursor.getString(i + 8));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, SportData sportdata, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        sportdata.set_id(s);
        sportdata.setUserId(cursor.getString(i + 1));
        sportdata.setDeviceId(cursor.getString(i + 2));
        sportdata.setSportTime(cursor.getString(i + 3));
        sportdata.setSportType(cursor.getString(i + 4));
        sportdata.setSportStep(cursor.getString(i + 5));
        sportdata.setDataFrequency(cursor.getString(i + 6));
        sportdata.setDeviceType(cursor.getString(i + 7));
        sportdata.setHadupload(cursor.getString(i + 8));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (SportData)obj, i);
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
        return updateKeyAfterInsert((SportData)obj, l);
    }

    protected String updateKeyAfterInsert(SportData sportdata, long l)
    {
        return sportdata.get_id();
    }
}
