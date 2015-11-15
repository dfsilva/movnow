// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.dao.DaoSession;
import com.veclink.healthy.database.dao.SleepDataDao;
import com.veclink.healthy.database.entity.SleepData;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.SleepStatus;
import com.veclink.movnow_q2.util.StringUtil;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.query.QueryBuilder;
import de.greenrobot.dao.query.WhereCondition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBManager

public class HealthyDBOprateSleepData
{

    public HealthyDBOprateSleepData()
    {
    }

    public static List querySleepDataByOneWeek(Context context, Date date, int i)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar1 = Calendar.getInstance();
        Date date1 = new Date(date.getTime() - 0x5265c00L);
        calendar1.setTime(date1);
        for (int l1 = 0; l1 <= 6; l1++)
        {
            SleepData sleepdata1 = new SleepData();
            SleepData sleepdata2 = new SleepData();
            SleepData sleepdata3 = new SleepData();
            int k = 0;
            int k1 = 0;
            int j = 0;
            int j1 = 0;
            int l = 0;
            int i1 = 0;
            Object obj;
            Object obj1;
            if (l1 == 0)
            {
                obj1 = StringUtil.formatCurrDate(date);
                obj = StringUtil.formatCurrDate(date1);
            } else
            {
                calendar.add(5, 1);
                calendar1.add(5, 1);
                obj1 = StringUtil.formatCurrDate(calendar.getTime());
                obj = StringUtil.formatCurrDate(calendar1.getTime());
            }
            obj1 = selectSleepDataByDay(context, ((String) (obj1)));
            obj = selectPreDaySleepData(context, ((String) (obj)));
            if (obj1 != null)
            {
                obj1 = ((List) (obj1)).iterator();
                do
                {
                    j = j1;
                    k = k1;
                    l = i1;
                    if (!((Iterator) (obj1)).hasNext())
                    {
                        break;
                    }
                    SleepData sleepdata4 = (SleepData)((Iterator) (obj1)).next();
                    k1 += sleepdata4.getSleepDuration();
                    if (sleepdata4.getSleepState().equals("0"))
                    {
                        j1 += sleepdata4.getSleepDuration();
                    } else
                    {
                        i1 += sleepdata4.getSleepDuration();
                    }
                } while (true);
            }
            i1 = j;
            j1 = k;
            k1 = l;
            if (obj != null)
            {
                obj = ((List) (obj)).iterator();
                do
                {
                    i1 = j;
                    j1 = k;
                    k1 = l;
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    SleepData sleepdata = (SleepData)((Iterator) (obj)).next();
                    k += sleepdata.getSleepDuration();
                    if (sleepdata.getSleepState().equals("0"))
                    {
                        j += sleepdata.getSleepDuration();
                    } else
                    {
                        l += sleepdata.getSleepDuration();
                    }
                } while (true);
            }
            sleepdata1.setSleepDuration(j1);
            arraylist.add(sleepdata1);
            sleepdata2.setSleepDuration(i1);
            arraylist1.add(sleepdata2);
            sleepdata3.setSleepDuration(k1);
            arraylist2.add(sleepdata3);
        }

        if (i == 1)
        {
            return arraylist1;
        }
        if (i == 2)
        {
            return arraylist2;
        } else
        {
            return arraylist;
        }
    }

    public static List querySleepDataByOneWeekAtNight(Context context, Date date)
    {
        ArrayList arraylist = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar1 = Calendar.getInstance();
        Date date1 = new Date(date.getTime() - 0x5265c00L);
        calendar1.setTime(date1);
        for (int i = 0; i <= 6; i++)
        {
            ArrayList arraylist1 = new ArrayList();
            Object obj;
            Object obj1;
            if (i == 0)
            {
                obj1 = StringUtil.formatCurrDate(date);
                obj = StringUtil.formatCurrDate(date1);
            } else
            {
                calendar.add(5, 1);
                calendar1.add(5, 1);
                obj1 = StringUtil.formatCurrDate(calendar.getTime());
                obj = StringUtil.formatCurrDate(calendar1.getTime());
            }
            obj1 = selectSleepDataByDay(context, ((String) (obj1)));
            obj = selectPreDaySleepData(context, ((String) (obj)));
            if (obj != null)
            {
                for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist1.add((SleepData)((Iterator) (obj)).next())) { }
            }
            if (obj1 != null)
            {
                Iterator iterator = ((List) (obj1)).iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    SleepData sleepdata = (SleepData)iterator.next();
                    if (sleepdata.getStartTime() < 540)
                    {
                        arraylist1.add(sleepdata);
                    }
                } while (true);
            }
            arraylist.add(arraylist1);
        }

        return arraylist;
    }

    public static SleepStatus querySleepTotalTimeFromZeroToTwentyFour(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.eq(s), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SleepDataDao.Properties.StartTime.ge(Integer.valueOf(0)), com.veclink.healthy.database.dao.SleepDataDao.Properties.StartTime.le(Integer.valueOf(1440)), new WhereCondition[0]), new WhereCondition[0]);
        int j1 = 0;
        int k = 0;
        int l = 0;
        int j = 0;
        int i1 = 0;
        int i = 0;
        new HashMap();
        if (querybuilder.list().size() > 0)
        {
            context = querybuilder.list().iterator();
            do
            {
                l = j;
                i1 = i;
                j1 = k;
                if (!context.hasNext())
                {
                    break;
                }
                s = (SleepData)context.next();
                k += s.getSleepDuration();
                if ("0".equals(s.getSleepState()))
                {
                    j += s.getSleepDuration();
                } else
                {
                    i += s.getSleepDuration();
                }
            } while (true);
        }
        context = new SleepStatus();
        context.setTotalTimes(j1);
        context.setDeepTimes(l);
        context.setLightTimes(i1);
        return context;
    }

    public static List selectPreDaySleepData(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.eq(s), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SleepDataDao.Properties.StartTime.ge(Integer.valueOf(1260)), com.veclink.healthy.database.dao.SleepDataDao.Properties.StartTime.le(Integer.valueOf(1440)), new WhereCondition[0]), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List selectSleepDataByDay(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSleepDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SleepDataDao.Properties.DateTime.eq(s), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SleepDataDao.Properties.StartTime.ge(Integer.valueOf(0)), com.veclink.healthy.database.dao.SleepDataDao.Properties.StartTime.le(Integer.valueOf(1259)), new WhereCondition[0]), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }
}
