// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import com.veclink.healthy.database.dao.DaoSession;
import com.veclink.healthy.database.dao.UserInfoDao;
import com.veclink.healthy.database.entity.UserInfo;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.query.QueryBuilder;
import de.greenrobot.dao.query.WhereCondition;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBManager

public class HealthyUserInfoOperate
{

    public HealthyUserInfoOperate()
    {
    }

    public static long addUserInfo(Context context, UserInfo userinfo)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.insertOrReplace(userinfo);
    }

    public static void delUserInfoByUserId(Context context, String s)
    {
        HealthyDBManager.getInstance(context).mDaoSession.getUserInfoDao().deleteByKey(s);
    }

    public static UserInfo queryUserInfoByEmail(Context context, String s)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getUserInfoDao().queryBuilder();
        context.where(com.veclink.healthy.database.dao.UserInfoDao.Properties.Email.eq(s), new WhereCondition[0]);
        if (context.list().size() > 0)
        {
            return (UserInfo)context.list().get(0);
        } else
        {
            return null;
        }
    }
}
