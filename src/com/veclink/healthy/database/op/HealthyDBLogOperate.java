// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.dao.DaoSession;
import com.veclink.healthy.database.dao.LogObjectDao;
import com.veclink.healthy.database.entity.LogObject;
import com.veclink.hw.bleservice.util.Keeper;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.query.DeleteQuery;
import de.greenrobot.dao.query.QueryBuilder;
import de.greenrobot.dao.query.WhereCondition;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBManager

public class HealthyDBLogOperate
{

    public HealthyDBLogOperate()
    {
    }

    public static long addLogObject(Context context, LogObject logobject)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.insertOrReplace(logobject);
    }

    public static void delAllLogObject(Context context)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getLogObjectDao().queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.LogObjectDao.Properties.DeviceId.eq(context), new WhereCondition[] {
            com.veclink.healthy.database.dao.LogObjectDao.Properties.UserId.eq(s)
        }).buildDelete().executeDeleteWithoutDetachingEntities();
    }

    public static List loadAllLogObject(Context context)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getLogObjectDao().queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.LogObjectDao.Properties.UserId.eq(s), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.LogObjectDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }
}
