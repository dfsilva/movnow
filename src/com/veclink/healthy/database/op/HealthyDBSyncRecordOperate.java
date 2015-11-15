// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.dao.DaoSession;
import com.veclink.healthy.database.dao.SyncRecordDao;
import com.veclink.healthy.database.entity.SyncRecord;
import com.veclink.hw.bleservice.util.Keeper;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.query.QueryBuilder;
import de.greenrobot.dao.query.WhereCondition;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBManager

public class HealthyDBSyncRecordOperate
{

    public HealthyDBSyncRecordOperate()
    {
    }

    public static long addSyncRecord(Context context, SyncRecord syncrecord)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.insertOrReplace(syncrecord);
    }

    public static void deleteSyncRecordByDeviceId(Context context)
    {
        SyncRecordDao syncrecorddao = HealthyDBManager.getInstance(context).mDaoSession.getSyncRecordDao();
        QueryBuilder querybuilder = syncrecorddao.queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SyncRecordDao.Properties.UserId.eq(s), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SyncRecordDao.Properties.DeviceImei.eq(context), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            syncrecorddao.deleteInTx(querybuilder.list());
        }
    }

    public static SyncRecord loadLastSyncRecord(Context context)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSyncRecordDao().queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.whereOr(com.veclink.healthy.database.dao.SyncRecordDao.Properties.UserId.eq(s), com.veclink.healthy.database.dao.SyncRecordDao.Properties.UserId.eq(""), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SyncRecordDao.Properties.DeviceImei.eq(context), new WhereCondition[0]);
        querybuilder.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.SyncRecordDao.Properties.SyncTime
        });
        if (querybuilder.list().size() > 0)
        {
            return (SyncRecord)querybuilder.list().get(0);
        } else
        {
            return null;
        }
    }

    public static SyncRecord loadLastSyncRecordByDataType(Context context, int i)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSyncRecordDao().queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SyncRecordDao.Properties.UserId.eq(s), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SyncRecordDao.Properties.DeviceImei.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SyncRecordDao.Properties.SyncDataType.eq(Integer.valueOf(i)), new WhereCondition[0]);
        querybuilder.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.SyncRecordDao.Properties.SyncTime
        });
        if (querybuilder.list().size() > 0)
        {
            return (SyncRecord)querybuilder.list().get(0);
        } else
        {
            return null;
        }
    }
}
