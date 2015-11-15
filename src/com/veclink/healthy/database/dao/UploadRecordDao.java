// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.UploadRecord;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class UploadRecordDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property DeviceImei = new Property(2, java/lang/String, "deviceImei", false, "DEVICE_IMEI");
        public static final Property LastSyncTime = new Property(3, java/lang/String, "lastSyncTime", false, "LAST_SYNC_TIME");
        public static final Property UploadTime = new Property(4, java/lang/String, "uploadTime", false, "UPLOAD_TIME");
        public static final Property UserId = new Property(1, java/lang/String, "userId", false, "USER_ID");
        public static final Property _id = new Property(0, java/lang/String, "_id", true, "_ID");


        public Properties()
        {
        }
    }


    public static final String TABLENAME = "UPLOAD_RECORD";

    public UploadRecordDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public UploadRecordDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'UPLOAD_RECORD' (").append("'_ID' TEXT PRIMARY KEY NOT NULL ,").append("'USER_ID' TEXT NOT NULL ,").append("'DEVICE_IMEI' TEXT NOT NULL ,").append("'LAST_SYNC_TIME' TEXT NOT NULL ,").append("'UPLOAD_TIME' TEXT NOT NULL );").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'UPLOAD_RECORD'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, UploadRecord uploadrecord)
    {
        sqlitestatement.clearBindings();
        String s = uploadrecord.get_id();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindString(2, uploadrecord.getUserId());
        sqlitestatement.bindString(3, uploadrecord.getDeviceImei());
        sqlitestatement.bindString(4, uploadrecord.getLastSyncTime());
        sqlitestatement.bindString(5, uploadrecord.getUploadTime());
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (UploadRecord)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((UploadRecord)obj);
    }

    public String getKey(UploadRecord uploadrecord)
    {
        if (uploadrecord != null)
        {
            return uploadrecord.get_id();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public UploadRecord readEntity(Cursor cursor, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        return new UploadRecord(s, cursor.getString(i + 1), cursor.getString(i + 2), cursor.getString(i + 3), cursor.getString(i + 4));
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, UploadRecord uploadrecord, int i)
    {
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        uploadrecord.set_id(s);
        uploadrecord.setUserId(cursor.getString(i + 1));
        uploadrecord.setDeviceImei(cursor.getString(i + 2));
        uploadrecord.setLastSyncTime(cursor.getString(i + 3));
        uploadrecord.setUploadTime(cursor.getString(i + 4));
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (UploadRecord)obj, i);
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
        return updateKeyAfterInsert((UploadRecord)obj, l);
    }

    protected String updateKeyAfterInsert(UploadRecord uploadrecord, long l)
    {
        return uploadrecord.get_id();
    }
}
