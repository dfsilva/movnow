// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.dao.DaoSession;
import com.veclink.healthy.database.dao.ExerciseAmountDao;
import com.veclink.healthy.database.dao.SleepDataDao;
import com.veclink.healthy.database.dao.SleepQualityDao;
import com.veclink.healthy.database.dao.SportDataDao;
import com.veclink.healthy.database.dao.UptakeCalorieDao;
import com.veclink.healthy.database.entity.ExerciseAmount;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.healthy.database.entity.SleepQuality;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.healthy.database.entity.UptakeCalorie;
import com.veclink.hw.bleservice.util.Keeper;
import de.greenrobot.dao.AbstractDaoSession;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.query.QueryBuilder;
import de.greenrobot.dao.query.WhereCondition;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBManager

public class HealthyDBOperate
{

    public HealthyDBOperate()
    {
    }

    public static long addExerciseAmount(Context context, ExerciseAmount exerciseamount)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.insertOrReplace(exerciseamount);
    }

    public static void addExerciseAmountList(Context context, List list)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getExerciseAmountDao();
        if (list == null || list.isEmpty())
        {
            return;
        } else
        {
            context.getSession().runInTx(new Runnable(list, context) {

                final ExerciseAmountDao val$dao;
                final List val$exerciseAmountList;

                public void run()
                {
                    for (int i = 0; i < exerciseAmountList.size(); i++)
                    {
                        ExerciseAmount exerciseamount = (ExerciseAmount)exerciseAmountList.get(i);
                        dao.insertOrReplace(exerciseamount);
                    }

                }

            
            {
                exerciseAmountList = list;
                dao = exerciseamountdao;
                super();
            }
            });
            return;
        }
    }

    public static void addOriginSleepdataList(Context context, List list)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao();
        if (list == null || list.isEmpty())
        {
            return;
        } else
        {
            context.getSession().runInTx(new Runnable(list, context) {

                final SleepDataDao val$dao;
                final List val$originDataList;

                public void run()
                {
                    for (int i = 0; i < originDataList.size(); i++)
                    {
                        SleepData sleepdata = (SleepData)originDataList.get(i);
                        dao.insertOrReplace(sleepdata);
                    }

                }

            
            {
                originDataList = list;
                dao = sleepdatadao;
                super();
            }
            });
            return;
        }
    }

    public static void addOriginSportDataList(Context context, List list)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao();
        if (list == null || list.isEmpty())
        {
            return;
        } else
        {
            context.getSession().runInTx(new Runnable(list, context) {

                final SportDataDao val$dao;
                final List val$originDataList;

                public void run()
                {
                    for (int i = 0; i < originDataList.size(); i++)
                    {
                        SportData sportdata = (SportData)originDataList.get(i);
                        dao.insertOrReplace(sportdata);
                    }

                }

            
            {
                originDataList = list;
                dao = sportdatadao;
                super();
            }
            });
            return;
        }
    }

    public static long addSleepQuality(Context context, SleepQuality sleepquality)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.insertOrReplace(sleepquality);
    }

    public static void addSleepQualityList(Context context, List list)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getSleepQualityDao();
        if (list == null || list.isEmpty())
        {
            return;
        } else
        {
            context.getSession().runInTx(new Runnable(list, context) {

                final SleepQualityDao val$dao;
                final List val$sleepQualityList;

                public void run()
                {
                    for (int i = 0; i < sleepQualityList.size(); i++)
                    {
                        SleepQuality sleepquality = (SleepQuality)sleepQualityList.get(i);
                        dao.insertOrReplace(sleepquality);
                    }

                }

            
            {
                sleepQualityList = list;
                dao = sleepqualitydao;
                super();
            }
            });
            return;
        }
    }

    public static long addUptakeCalorie(Context context, UptakeCalorie uptakecalorie)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.insertOrReplace(uptakecalorie);
    }

    public static void addUptakeCalorieList(Context context, List list)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getUptakeCalorieDao();
        if (list == null || list.isEmpty())
        {
            return;
        } else
        {
            context.getSession().runInTx(new Runnable(list, context) {

                final UptakeCalorieDao val$dao;
                final List val$uptakeCalorieList;

                public void run()
                {
                    for (int i = 0; i < uptakeCalorieList.size(); i++)
                    {
                        UptakeCalorie uptakecalorie = (UptakeCalorie)uptakeCalorieList.get(i);
                        dao.insertOrReplace(uptakecalorie);
                    }

                }

            
            {
                uptakeCalorieList = list;
                dao = uptakecaloriedao;
                super();
            }
            });
            return;
        }
    }

    public static void delAllSportAndSleepData(Context context)
    {
        HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().deleteAll();
        HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().deleteAll();
    }

    public static void delLastSyncData(Context context, String s, int i)
    {
        if (i == 1)
        {
            HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().deleteInTx(loadOriginSportAfterDate(context, s));
            return;
        }
        if (i == 2)
        {
            HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().deleteInTx(loadOriginSleepAfterDate(context, s));
            return;
        } else
        {
            HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao();
            loadOriginSportAfterDate(context, s);
            HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().deleteInTx(loadOriginSleepAfterDate(context, s));
            return;
        }
    }

    public static void delUptakeCalorie(Context context, long l)
    {
        HealthyDBManager.getInstance(context).mDaoSession.getUptakeCalorieDao().deleteByKey(Long.valueOf(l));
    }

    public static void delUptakeCalorie(Context context, UptakeCalorie uptakecalorie)
    {
        HealthyDBManager.getInstance(context).mDaoSession.getUptakeCalorieDao().delete(uptakecalorie);
    }

    public static boolean isExitSleepRecord(Context context, String s)
    {
        boolean flag = false;
        context = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        context.where(com.veclink.healthy.database.dao.SleepDataDao.Properties._id.eq(s), new WhereCondition[0]);
        if (context.list().size() > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean isExitSportRecord(Context context, String s)
    {
        boolean flag = false;
        context = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        context.where(com.veclink.healthy.database.dao.SleepDataDao.Properties._id.eq(s), new WhereCondition[0]);
        if (context.list().size() > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static List loadAllExerciseAmount(Context context)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.getExerciseAmountDao().loadAll();
    }

    public static List loadAllUptakeCalorie(Context context)
    {
        return HealthyDBManager.getInstance(context).mDaoSession.getUptakeCalorieDao().loadAll();
    }

    public static List loadExerciseAmountByDay(Context context, String s)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getExerciseAmountDao().queryBuilder();
        context.where(context.and(com.veclink.healthy.database.dao.ExerciseAmountDao.Properties.DateTime.ge((new StringBuilder()).append(s).append("000000").toString()), com.veclink.healthy.database.dao.ExerciseAmountDao.Properties.DateTime.le((new StringBuilder()).append(s).append("235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        context.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.ExerciseAmountDao.Properties.DateTime
        });
        if (context.list().size() > 0)
        {
            return context.list();
        } else
        {
            return null;
        }
    }

    public static List loadExerciseAmountByMonth(Context context, String s)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getExerciseAmountDao().queryBuilder();
        context.where(context.and(com.veclink.healthy.database.dao.ExerciseAmountDao.Properties.DateTime.ge((new StringBuilder()).append(s).append("01000000").toString()), com.veclink.healthy.database.dao.ExerciseAmountDao.Properties.DateTime.le((new StringBuilder()).append(s).append("31235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        context.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.ExerciseAmountDao.Properties.DateTime
        });
        if (context.list().size() > 0)
        {
            return context.list();
        } else
        {
            return null;
        }
    }

    public static List loadOriginDataOfSleepByDate(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.ge((new StringBuilder()).append(s).append("000000").toString()), com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.le((new StringBuilder()).append(s).append("235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List loadOriginSleepAfterDate(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.whereOr(com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.ge(s), com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.eq(s), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.SleepDuration.ge("0"), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List loadOriginSportAfterDate(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.SportType.eq("1"), new WhereCondition[0]);
        querybuilder.whereOr(com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.ge((new StringBuilder()).append(s).append("000000").toString()), com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.eq((new StringBuilder()).append(s).append("000000").toString()), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.SportStep.ge("0"), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List loadOriginSportDataByDate(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.SportType.eq("1"), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.ge((new StringBuilder()).append(s).append("000000").toString()), com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.le((new StringBuilder()).append(s).append("235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List loadSleepQualityByDay(Context context, String s)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getSleepQualityDao().queryBuilder();
        context.where(context.and(com.veclink.healthy.database.dao.SleepQualityDao.Properties.DateTime.ge((new StringBuilder()).append(s).append("000000").toString()), com.veclink.healthy.database.dao.SleepQualityDao.Properties.DateTime.le((new StringBuilder()).append(s).append("235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        context.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.SleepQualityDao.Properties.DateTime
        });
        if (context.list().size() > 0)
        {
            return context.list();
        } else
        {
            return null;
        }
    }

    public static List loadSleepQualityByMonth(Context context, String s)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getSleepQualityDao().queryBuilder();
        context.where(context.and(com.veclink.healthy.database.dao.SleepQualityDao.Properties.DateTime.ge((new StringBuilder()).append(s).append("01000000").toString()), com.veclink.healthy.database.dao.SleepQualityDao.Properties.DateTime.le((new StringBuilder()).append(s).append("31235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        context.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.SleepQualityDao.Properties.DateTime
        });
        if (context.list().size() > 0)
        {
            return context.list();
        } else
        {
            return null;
        }
    }

    public static List loadSportOriginDataAmountByMonth(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.ge((new StringBuilder()).append(s).append("01000000").toString()), com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.le((new StringBuilder()).append(s).append("31240000").toString()), new WhereCondition[] {
            com.veclink.healthy.database.dao.SportDataDao.Properties.SportType.eq("1")
        }), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List loadUptakeCalorieByDay(Context context, String s, String s1)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getUptakeCalorieDao().queryBuilder();
        context.where(com.veclink.healthy.database.dao.UptakeCalorieDao.Properties.DateTime.eq(s), new WhereCondition[0]);
        context.where(com.veclink.healthy.database.dao.UptakeCalorieDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        context.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.UptakeCalorieDao.Properties.DateTime
        });
        if (context.list().size() > 0)
        {
            return context.list();
        } else
        {
            return null;
        }
    }

    public static List loadUptakeCalorieByMonth(Context context, String s)
    {
        context = HealthyDBManager.getInstance(context).mDaoSession.getUptakeCalorieDao().queryBuilder();
        context.where(context.and(com.veclink.healthy.database.dao.UptakeCalorieDao.Properties.DateTime.ge((new StringBuilder()).append(s).append("01000000").toString()), com.veclink.healthy.database.dao.UptakeCalorieDao.Properties.DateTime.le((new StringBuilder()).append(s).append("31235959").toString()), new WhereCondition[0]), new WhereCondition[0]);
        context.orderDesc(new Property[] {
            com.veclink.healthy.database.dao.UptakeCalorieDao.Properties.DateTime
        });
        if (context.list().size() > 0)
        {
            return context.list();
        } else
        {
            return null;
        }
    }

    public static List queryAlWaitUploadSleepData(Context context)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(s), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.SleepDuration.ge("0"), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.Hadupload.ge("wait"), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List queryAlWaitUploadSportData(Context context)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(s), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.SportType.eq("1"), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.SportStep.ge("0"), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.Hadupload.ge("wait"), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static void updateDataUserIdIfUserIdIsEmty(Context context)
    {
        Object obj1 = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao();
        Object obj2 = ((SportDataDao) (obj1)).queryBuilder();
        String s = HealthyAccountHolder.getUserId(context);
        Object obj = Keeper.getDeviceId(context);
        ((QueryBuilder) (obj2)).where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(""), new WhereCondition[0]);
        ((QueryBuilder) (obj2)).where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(obj), new WhereCondition[0]);
        obj2 = ((QueryBuilder) (obj2)).list();
        if (obj2 != null && ((List) (obj2)).size() > 0)
        {
            SportData sportdata;
            for (Iterator iterator1 = ((List) (obj2)).iterator(); iterator1.hasNext(); sportdata.set_id((new StringBuilder()).append(s).append(sportdata.get_id()).toString()))
            {
                sportdata = (SportData)iterator1.next();
                sportdata.setUserId(s);
            }

            ((SportDataDao) (obj1)).updateInTx(((Iterable) (obj2)));
        }
        context = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao();
        obj1 = context.queryBuilder();
        ((QueryBuilder) (obj1)).where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(""), new WhereCondition[0]);
        ((QueryBuilder) (obj1)).where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(obj), new WhereCondition[0]);
        obj = ((QueryBuilder) (obj1)).list();
        if (obj != null && ((List) (obj)).size() > 0)
        {
            SleepData sleepdata;
            for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); sleepdata.set_id((new StringBuilder()).append(s).append(sleepdata.get_id()).toString()))
            {
                sleepdata = (SleepData)iterator.next();
                sleepdata.setUserId(s);
            }

            context.updateInTx(((Iterable) (obj)));
        }
    }

    public static void updateUptakeCalorie(Context context, UptakeCalorie uptakecalorie)
    {
        HealthyDBManager.getInstance(context).mDaoSession.update(uptakecalorie);
    }
}
