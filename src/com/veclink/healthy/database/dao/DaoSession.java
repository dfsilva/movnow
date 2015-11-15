// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.dao;

import android.database.sqlite.SQLiteDatabase;
import com.veclink.healthy.database.entity.ExerciseAmount;
import com.veclink.healthy.database.entity.ExerciseData;
import com.veclink.healthy.database.entity.LogObject;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.entity.SleepQuality;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.entity.SyncRecord;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.healthy.database.entity.UserInfo;
import de.greenrobot.dao.AbstractDaoSession;
import de.greenrobot.dao.identityscope.IdentityScope;
import de.greenrobot.dao.identityscope.IdentityScopeType;
import de.greenrobot.dao.internal.DaoConfig;
import java.util.Map;

// Referenced classes of package com.veclink.healthy.database.dao:
//            UserInfoDao, SportDataDao, SleepDataDao, LogObjectDao, 
//            SyncRecordDao, ExerciseDataDao, ExerciseAmountDao, SleepQualityDao, 
//            UptakeCalorieDao

public class DaoSession extends AbstractDaoSession
{

    private final ExerciseAmountDao exerciseAmountDao;
    private final DaoConfig exerciseAmountDaoConfig;
    private final ExerciseDataDao exerciseDataDao;
    private final DaoConfig exerciseDataDaoConfig;
    private final LogObjectDao logObjectDao;
    private final DaoConfig logObjectDaoConfig;
    private final SleepDataDao sleepDataDao;
    private final DaoConfig sleepDataDaoConfig;
    private final SleepQualityDao sleepQualityDao;
    private final DaoConfig sleepQualityDaoConfig;
    private final SportDataDao sportDataDao;
    private final DaoConfig sportDataDaoConfig;
    private final SyncRecordDao syncRecordDao;
    private final DaoConfig syncRecordDaoConfig;
    private final UptakeCalorieDao uptakeCalorieDao;
    private final DaoConfig uptakeCalorieDaoConfig;
    private final UserInfoDao userInfoDao;
    private final DaoConfig userInfoDaoConfig;

    public DaoSession(SQLiteDatabase sqlitedatabase, IdentityScopeType identityscopetype, Map map)
    {
        super(sqlitedatabase);
        userInfoDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/UserInfoDao)).clone();
        userInfoDaoConfig.initIdentityScope(identityscopetype);
        sportDataDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/SportDataDao)).clone();
        sportDataDaoConfig.initIdentityScope(identityscopetype);
        sleepDataDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/SleepDataDao)).clone();
        sleepDataDaoConfig.initIdentityScope(identityscopetype);
        logObjectDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/LogObjectDao)).clone();
        logObjectDaoConfig.initIdentityScope(identityscopetype);
        syncRecordDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/SyncRecordDao)).clone();
        syncRecordDaoConfig.initIdentityScope(identityscopetype);
        exerciseDataDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/ExerciseDataDao)).clone();
        exerciseDataDaoConfig.initIdentityScope(identityscopetype);
        exerciseAmountDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/ExerciseAmountDao)).clone();
        exerciseAmountDaoConfig.initIdentityScope(identityscopetype);
        sleepQualityDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/SleepQualityDao)).clone();
        sleepQualityDaoConfig.initIdentityScope(identityscopetype);
        uptakeCalorieDaoConfig = ((DaoConfig)map.get(com/veclink/healthy/database/dao/UptakeCalorieDao)).clone();
        uptakeCalorieDaoConfig.initIdentityScope(identityscopetype);
        userInfoDao = new UserInfoDao(userInfoDaoConfig, this);
        sportDataDao = new SportDataDao(sportDataDaoConfig, this);
        sleepDataDao = new SleepDataDao(sleepDataDaoConfig, this);
        logObjectDao = new LogObjectDao(logObjectDaoConfig, this);
        syncRecordDao = new SyncRecordDao(syncRecordDaoConfig, this);
        exerciseDataDao = new ExerciseDataDao(exerciseDataDaoConfig, this);
        exerciseAmountDao = new ExerciseAmountDao(exerciseAmountDaoConfig, this);
        sleepQualityDao = new SleepQualityDao(sleepQualityDaoConfig, this);
        uptakeCalorieDao = new UptakeCalorieDao(uptakeCalorieDaoConfig, this);
        registerDao(com/veclink/healthy/database/entity/UserInfo, userInfoDao);
        registerDao(com/veclink/healthy/database/entity/SportData, sportDataDao);
        registerDao(com/veclink/healthy/database/entity/SleepData, sleepDataDao);
        registerDao(com/veclink/healthy/database/entity/LogObject, logObjectDao);
        registerDao(com/veclink/healthy/database/entity/SyncRecord, syncRecordDao);
        registerDao(com/veclink/healthy/database/entity/ExerciseData, exerciseDataDao);
        registerDao(com/veclink/healthy/database/entity/ExerciseAmount, exerciseAmountDao);
        registerDao(com/veclink/healthy/database/entity/SleepQuality, sleepQualityDao);
        registerDao(com/veclink/healthy/database/entity/UptakeCalorie, uptakeCalorieDao);
    }

    public void clear()
    {
        userInfoDaoConfig.getIdentityScope().clear();
        sportDataDaoConfig.getIdentityScope().clear();
        sleepDataDaoConfig.getIdentityScope().clear();
        logObjectDaoConfig.getIdentityScope().clear();
        syncRecordDaoConfig.getIdentityScope().clear();
        exerciseDataDaoConfig.getIdentityScope().clear();
        exerciseAmountDaoConfig.getIdentityScope().clear();
        sleepQualityDaoConfig.getIdentityScope().clear();
        uptakeCalorieDaoConfig.getIdentityScope().clear();
    }

    public ExerciseAmountDao getExerciseAmountDao()
    {
        return exerciseAmountDao;
    }

    public ExerciseDataDao getExerciseDataDao()
    {
        return exerciseDataDao;
    }

    public LogObjectDao getLogObjectDao()
    {
        return logObjectDao;
    }

    public SleepDataDao getSleepDataDao()
    {
        return sleepDataDao;
    }

    public SleepQualityDao getSleepQualityDao()
    {
        return sleepQualityDao;
    }

    public SportDataDao getSportDataDao()
    {
        return sportDataDao;
    }

    public SyncRecordDao getSyncRecordDao()
    {
        return syncRecordDao;
    }

    public UptakeCalorieDao getUptakeCalorieDao()
    {
        return uptakeCalorieDao;
    }

    public UserInfoDao getUserInfoDao()
    {
        return userInfoDao;
    }
}
