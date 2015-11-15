// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import de.greenrobot.dao.AbstractDaoMaster;
import de.greenrobot.dao.AbstractDaoSession;
import de.greenrobot.dao.identityscope.IdentityScopeType;

// Referenced classes of package com.veclink.healthy.database.dao:
//            UserInfoDao, SportDataDao, SleepDataDao, LogObjectDao, 
//            SyncRecordDao, ExerciseDataDao, ExerciseAmountDao, SleepQualityDao, 
//            UptakeCalorieDao, DaoSession

public class DaoMaster extends AbstractDaoMaster
{
    public static class DevOpenHelper extends OpenHelper
    {

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Log.i("greenDAO", (new StringBuilder()).append("Upgrading schema from version ").append(i).append(" to ").append(j).append(" by dropping all tables").toString());
            DaoMaster.dropAllTables(sqlitedatabase, true);
            onCreate(sqlitedatabase);
        }

        public DevOpenHelper(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory)
        {
            super(context, s, cursorfactory);
        }
    }

    public static abstract class OpenHelper extends SQLiteOpenHelper
    {

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            Log.i("greenDAO", "Creating tables for schema version 2");
            DaoMaster.createAllTables(sqlitedatabase, false);
        }

        public OpenHelper(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory)
        {
            super(context, s, cursorfactory, 2);
        }
    }


    public static final int SCHEMA_VERSION = 2;

    public DaoMaster(SQLiteDatabase sqlitedatabase)
    {
        super(sqlitedatabase, 2);
        registerDaoClass(com/veclink/healthy/database/dao/UserInfoDao);
        registerDaoClass(com/veclink/healthy/database/dao/SportDataDao);
        registerDaoClass(com/veclink/healthy/database/dao/SleepDataDao);
        registerDaoClass(com/veclink/healthy/database/dao/LogObjectDao);
        registerDaoClass(com/veclink/healthy/database/dao/SyncRecordDao);
        registerDaoClass(com/veclink/healthy/database/dao/ExerciseDataDao);
        registerDaoClass(com/veclink/healthy/database/dao/ExerciseAmountDao);
        registerDaoClass(com/veclink/healthy/database/dao/SleepQualityDao);
        registerDaoClass(com/veclink/healthy/database/dao/UptakeCalorieDao);
    }

    public static void createAllTables(SQLiteDatabase sqlitedatabase, boolean flag)
    {
        UserInfoDao.createTable(sqlitedatabase, flag);
        SportDataDao.createTable(sqlitedatabase, flag);
        SleepDataDao.createTable(sqlitedatabase, flag);
        LogObjectDao.createTable(sqlitedatabase, flag);
        SyncRecordDao.createTable(sqlitedatabase, flag);
        ExerciseDataDao.createTable(sqlitedatabase, flag);
        ExerciseAmountDao.createTable(sqlitedatabase, flag);
        SleepQualityDao.createTable(sqlitedatabase, flag);
        UptakeCalorieDao.createTable(sqlitedatabase, flag);
    }

    public static void dropAllTables(SQLiteDatabase sqlitedatabase, boolean flag)
    {
        UserInfoDao.dropTable(sqlitedatabase, flag);
        SportDataDao.dropTable(sqlitedatabase, flag);
        SleepDataDao.dropTable(sqlitedatabase, flag);
        LogObjectDao.dropTable(sqlitedatabase, flag);
        SyncRecordDao.dropTable(sqlitedatabase, flag);
        ExerciseDataDao.dropTable(sqlitedatabase, flag);
        ExerciseAmountDao.dropTable(sqlitedatabase, flag);
        SleepQualityDao.dropTable(sqlitedatabase, flag);
        UptakeCalorieDao.dropTable(sqlitedatabase, flag);
    }

    public DaoSession newSession()
    {
        return new DaoSession(db, IdentityScopeType.Session, daoConfigMap);
    }

    public DaoSession newSession(IdentityScopeType identityscopetype)
    {
        return new DaoSession(db, identityscopetype, daoConfigMap);
    }

    public volatile AbstractDaoSession newSession()
    {
        return newSession();
    }

    public volatile AbstractDaoSession newSession(IdentityScopeType identityscopetype)
    {
        return newSession(identityscopetype);
    }
}
