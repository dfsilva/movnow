// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.SyncRecord;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class SyncRecordDao extends AbstractDao
{
    public static class Properties
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

        public Properties()
        {
        }
    }


    public static final String TABLENAME = "SYNC_RECORD";

    public SyncRecordDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public SyncRecordDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'SYNC_RECORD' (").append("'_ID' TEXT PRIMARY KEY NOT NULL ,").append("'USER_ID' TEXT NOT NULL ,").append("'DEVICE_IMEI' TEXT NOT NULL ,").append("'LAST_SYNC_TIME' TEXT NOT NULL ,").append("'SYNC_TIME' TEXT NOT NULL ,").append("'SYNC_DATA_TYPE' INTEGER NOT NULL );").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'SYNC_RECORD'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, SyncRecord syncrecord)
    {
        sqlitestatement.clearBindings();
        String s = syncrecord.get_id();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindString(2, syncrecord.getUserId());
        sqlitestatement.bindString(3, syncrecord.getDeviceImei());
        sqlitestatement.bindString(4, syncrecord.getLastSyncTime());
        sqlitestatement.bindString(5, syncrecord.getSyncTime());
        sqlitestatement.bindLong(6, syncrecord.getSyncDataType());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (SyncRecord)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((SyncRecord)obj);
    }

    public String getKey(SyncRecord syncrecord)
    {
        if (syncrecord != null)
        {
            return syncrecord.get_id();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public SyncRecord readEntity(Cursor cursor, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        return new SyncRecord(s, cursor.getString(i + 1), cursor.getString(i + 2), cursor.getString(i + 3), cursor.getString(i + 4), cursor.getInt(i + 5));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, SyncRecord syncrecord, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        syncrecord.set_id(s);
        syncrecord.setUserId(cursor.getString(i + 1));
        syncrecord.setDeviceImei(cursor.getString(i + 2));
        syncrecord.setLastSyncTime(cursor.getString(i + 3));
        syncrecord.setSyncTime(cursor.getString(i + 4));
        syncrecord.setSyncDataType(cursor.getInt(i + 5));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (SyncRecord)obj, i);
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
        return updateKeyAfterInsert((SyncRecord)obj, l);
    }

    protected String updateKeyAfterInsert(SyncRecord syncrecord, long l)
    {
        return syncrecord.get_id();
    }
}
