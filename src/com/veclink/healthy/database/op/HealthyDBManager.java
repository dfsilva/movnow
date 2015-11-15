// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import com.veclink.healthy.database.dao.DaoMaster;
import com.veclink.healthy.database.dao.DaoSession;

public class HealthyDBManager
{

    public static final int DB_MODE_READ = 2;
    public static final int DB_MODE_WRITE = 1;
    private static String DB_PREFIX = "wkl_";
    private static final String HEALTHY_DATABASE_NAME = "vkl_healthy";
    private static HealthyDBManager mInstance = null;
    public DaoSession mDaoSession;

    public HealthyDBManager(Context context)
    {
        mDaoSession = null;
        if (mDaoSession == null)
        {
            mDaoSession = getDaoDataBase(context, "vkl_healthy", null, 1);
        }
    }

    public static DaoSession getDBDaoReadable(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory)
    {
        return getDaoDataBase(context, (new StringBuilder()).append(DB_PREFIX).append(s).toString(), cursorfactory, 2);
    }

    public static DaoSession getDBDaoWritable(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory)
    {
        return getDaoDataBase(context, (new StringBuilder()).append(DB_PREFIX).append(s).toString(), cursorfactory, 1);
    }

    public static DaoSession getDaoDataBase(Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i)
    {
        Object obj = null;
        context = new com.veclink.healthy.database.dao.DaoMaster.DevOpenHelper(context, s, cursorfactory);
        if (2 != i) goto _L2; else goto _L1
_L1:
        context = context.getReadableDatabase();
_L4:
        context = (new DaoMaster(context)).newSession();
        break MISSING_BLOCK_LABEL_58;
_L2:
        if (1 != i)
        {
            break; /* Loop/switch isn't completed */
        }
        context = context.getWritableDatabase();
        if (true) goto _L4; else goto _L3
_L3:
        return null;
        context;
        context = obj;
        return context;
    }

    public static HealthyDBManager getInstance(Context context)
    {
        if (mInstance == null)
        {
            mInstance = new HealthyDBManager(context);
        }
        return mInstance;
    }

}
