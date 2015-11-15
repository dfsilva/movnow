// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.veclink.healthy.database.entity.LogObject;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

// Referenced classes of package com.veclink.healthy.database.dao:
//            DaoSession

public class LogObjectDao extends AbstractDao
{
    public static class Properties
    {

        public static final Property DeviceId = new Property(4, java/lang/String, "deviceId", false, "DEVICE_ID");
        public static final Property DeviceType = new Property(5, java/lang/String, "deviceType", false, "DEVICE_TYPE");
        public static final Property FirmwareVer = new Property(7, java/lang/String, "firmwareVer", false, "FIRMWARE_VER");
        public static final Property LogType = new Property(1, java/lang/String, "logType", false, "LOG_TYPE");
        public static final Property NewFirmwareVer = new Property(8, java/lang/String, "newFirmwareVer", false, "NEW_FIRMWARE_VER");
        public static final Property OptTime = new Property(3, java/lang/String, "optTime", false, "OPT_TIME");
        public static final Property Result = new Property(2, java/lang/String, "result", false, "RESULT");
        public static final Property UserId = new Property(6, java/lang/String, "userId", false, "USER_ID");
        public static final Property _id = new Property(0, java/lang/String, "_id", true, "_ID");


        public Properties()
        {
        }
    }


    public static final String TABLENAME = "LOG_OBJECT";

    public LogObjectDao(DaoConfig daoconfig)
    {
        super(daoconfig);
    }

    public LogObjectDao(DaoConfig daoconfig, DaoSession daosession)
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
        sqlitedatabase.execSQL((new StringBuilder()).append("CREATE TABLE ").append(s).append("'LOG_OBJECT' (").append("'_ID' TEXT PRIMARY KEY NOT NULL ,").append("'LOG_TYPE' TEXT NOT NULL ,").append("'RESULT' TEXT NOT NULL ,").append("'OPT_TIME' TEXT NOT NULL ,").append("'DEVICE_ID' TEXT NOT NULL ,").append("'DEVICE_TYPE' TEXT,").append("'USER_ID' TEXT NOT NULL ,").append("'FIRMWARE_VER' TEXT NOT NULL ,").append("'NEW_FIRMWARE_VER' TEXT);").toString());
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
        sqlitedatabase.execSQL(stringbuilder.append(s).append("'LOG_OBJECT'").toString());
    }

    protected void bindValues(SQLiteStatement sqlitestatement, LogObject logobject)
    {
        sqlitestatement.clearBindings();
        String s = logobject.get_id();
        if (s != null)
        {
            sqlitestatement.bindString(1, s);
        }
        sqlitestatement.bindString(2, logobject.getLogType());
        sqlitestatement.bindString(3, logobject.getResult());
        sqlitestatement.bindString(4, logobject.getOptTime());
        sqlitestatement.bindString(5, logobject.getDeviceId());
        s = logobject.getDeviceType();
        if (s != null)
        {
            sqlitestatement.bindString(6, s);
        }
        sqlitestatement.bindString(7, logobject.getUserId());
        sqlitestatement.bindString(8, logobject.getFirmwareVer());
        logobject = logobject.getNewFirmwareVer();
        if (logobject != null)
        {
            sqlitestatement.bindString(9, logobject);
        }
    }

    protected volatile void bindValues(SQLiteStatement sqlitestatement, Object obj)
    {
        bindValues(sqlitestatement, (LogObject)obj);
    }

    public volatile Object getKey(Object obj)
    {
        return getKey((LogObject)obj);
    }

    public String getKey(LogObject logobject)
    {
        if (logobject != null)
        {
            return logobject.get_id();
        } else
        {
            return null;
        }
    }

    protected boolean isEntityUpdateable()
    {
        return true;
    }

    public LogObject readEntity(Cursor cursor, int i)
    {
        Object obj = null;
        String s;
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        s2 = cursor.getString(i + 1);
        s3 = cursor.getString(i + 2);
        s4 = cursor.getString(i + 3);
        s5 = cursor.getString(i + 4);
        if (cursor.isNull(i + 5))
        {
            s1 = null;
        } else
        {
            s1 = cursor.getString(i + 5);
        }
        s6 = cursor.getString(i + 6);
        s7 = cursor.getString(i + 7);
        if (cursor.isNull(i + 8))
        {
            cursor = obj;
        } else
        {
            cursor = cursor.getString(i + 8);
        }
        return new LogObject(s, s2, s3, s4, s5, s1, s6, s7, cursor);
    }

    public volatile Object readEntity(Cursor cursor, int i)
    {
        return readEntity(cursor, i);
    }

    public void readEntity(Cursor cursor, LogObject logobject, int i)
    {
        Object obj = null;
        String s;
        if (cursor.isNull(i + 0))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 0);
        }
        logobject.set_id(s);
        logobject.setLogType(cursor.getString(i + 1));
        logobject.setResult(cursor.getString(i + 2));
        logobject.setOptTime(cursor.getString(i + 3));
        logobject.setDeviceId(cursor.getString(i + 4));
        if (cursor.isNull(i + 5))
        {
            s = null;
        } else
        {
            s = cursor.getString(i + 5);
        }
        logobject.setDeviceType(s);
        logobject.setUserId(cursor.getString(i + 6));
        logobject.setFirmwareVer(cursor.getString(i + 7));
        if (cursor.isNull(i + 8))
        {
            cursor = obj;
        } else
        {
            cursor = cursor.getString(i + 8);
        }
        logobject.setNewFirmwareVer(cursor);
    }

    public volatile void readEntity(Cursor cursor, Object obj, int i)
    {
        readEntity(cursor, (LogObject)obj, i);
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
        return updateKeyAfterInsert((LogObject)obj, l);
    }

    protected String updateKeyAfterInsert(LogObject logobject, long l)
    {
        return logobject.get_id();
    }
}
