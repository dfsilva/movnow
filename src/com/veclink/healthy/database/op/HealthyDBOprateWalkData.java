// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.veclink.healthy.database.op;

import android.content.Context;
import android.util.Log;
import com.veclink.healthy.account.HealthyAccountHolder;
import com.veclink.healthy.database.dao.DaoSession;
import com.veclink.healthy.database.dao.SportDataDao;
import com.veclink.healthy.database.entity.SportData;
import com.veclink.hw.bleservice.util.Keeper;
import com.veclink.movnow_q2.util.StringUtil;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.query.QueryBuilder;
import de.greenrobot.dao.query.WhereCondition;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.veclink.healthy.database.op:
//            HealthyDBManager, HealthyDBOperate

public class HealthyDBOprateWalkData
{

    public HealthyDBOprateWalkData()
    {
    }

    public static List getEveryDateTimeOfMonth(Context context, int i, int j)
    {
        new SimpleDateFormat("dd");
        SimpleDateFormat simpledateformat = new SimpleDateFormat("MM");
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        Object obj = new GregorianCalendar();
        gregoriancalendar.set(i, j - 1, 1);
        ((Calendar) (obj)).set(i, j - 1, 31);
        int k = 1;
        ((Calendar) (obj)).add(6, 1);
        ArrayList arraylist = new ArrayList();
        obj = new ArrayList();
        List list = querySportDataByOnWeekAndMonth(context, i, j);
        int i1 = gregoriancalendar.getActualMaximum(5);
        i = 0;
        for (context = ((Context) (obj)); i < i1; context = ((Context) (obj)))
        {
            if (Integer.parseInt(simpledateformat.format(new Date(gregoriancalendar.getTime().getTime()))) == j)
            {
                context.add(list.get(i));
            }
            int l = k;
            obj = context;
            if (gregoriancalendar.get(7) == 1)
            {
                arraylist.add(context);
                obj = new ArrayList();
                l = k + 1;
            }
            gregoriancalendar.add(6, 1);
            i++;
            k = l;
        }

        if (context.size() > 0)
        {
            arraylist.add(context);
        }
        return arraylist;
    }

    public static List getWeekOfMonthData(Context context, int i, int j)
    {
        context = getEveryDateTimeOfMonth(context, j, i);
        for (j = 0; j < context.size(); j++)
        {
            List list = (List)context.get(j);
            for (int k = 0; k < list.size(); k++) { }
        }

        Calendar calendar = Calendar.getInstance();
        calendar.set(2, i - 1);
        calendar.setFirstDayOfWeek(2);
        calendar.set(5, 1);
        int l = calendar.get(7) - 1;
        if (l != 1)
        {
            ArrayList arraylist = new ArrayList();
            for (j = 0; j < l; j++)
            {
                SportData sportdata = new SportData();
                sportdata.setSportStep("0");
                arraylist.add(sportdata);
            }

            for (j = 0; j < ((List)context.get(0)).size(); j++)
            {
                arraylist.add(((List)context.get(0)).get(j));
            }

            if (arraylist.size() > 7)
            {
                arraylist.remove(0);
            }
            context.set(0, arraylist);
        }
        Log.d("data", "----------------------------");
        Log.d("data", (new StringBuilder()).append("\u7B2C").append(i).append("\u6708").toString());
        for (i = 0; i < context.size(); i++)
        {
            List list1 = (List)context.get(i);
            for (j = 0; j < list1.size(); j++) { }
        }

        return context;
    }

    public static List loadSportDataByDate(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.SportType.eq("1"), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.ge((new StringBuilder()).append(s).append("030000").toString()), com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.le((new StringBuilder()).append(s).append("210000").toString()), new WhereCondition[0]), new WhereCondition[0]);
        if (querybuilder.list().size() > 0)
        {
            return querybuilder.list();
        } else
        {
            return null;
        }
    }

    public static List loadSportDataByOneDay(Context context, String s)
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

    public static List loadSportOriginDataByMonth(Context context, String s)
    {
        QueryBuilder querybuilder = HealthyDBManager.getInstance(context).mDaoSession.getSportDataDao().queryBuilder();
        String s1 = HealthyAccountHolder.getUserId(context);
        context = Keeper.getDeviceId(context);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.UserId.eq(s1), new WhereCondition[0]);
        querybuilder.where(com.veclink.healthy.database.dao.SportDataDao.Properties.DeviceId.eq(context), new WhereCondition[0]);
        querybuilder.where(querybuilder.and(com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.ge((new StringBuilder()).append(s).append("01000000").toString()), com.veclink.healthy.database.dao.SportDataDao.Properties.SportTime.le((new StringBuilder()).append(s).append("31235959").toString()), new WhereCondition[] {
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

    public static List queryOneWeekSportData(Context context, java.util.Date date)
    {
        ArrayList arraylist = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i = 0;
        while (i <= 6) 
        {
            new ArrayList();
            String s;
            if (i == 0)
            {
                s = StringUtil.formatCurrDate(date);
            } else
            {
                calendar.add(5, 1);
                s = StringUtil.formatCurrDate(calendar.getTime());
            }
            arraylist.add(loadSportDataByOneDay(context, s));
            i++;
        }
        return arraylist;
    }

    public static List querySportData(Context context, java.util.Date date)
    {
        ArrayList arraylist = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i = 0;
        while (i <= 6) 
        {
            new ArrayList();
            String s;
            if (i == 0)
            {
                s = StringUtil.formatCurrDate(date);
            } else
            {
                calendar.add(5, 1);
                s = StringUtil.formatCurrDate(calendar.getTime());
            }
            arraylist.add(loadSportDataByDate(context, s));
            i++;
        }
        return arraylist;
    }

    public static List querySportDataByOnMonth(Context context, int i, int j)
    {
        ArrayList arraylist = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i);
        calendar.set(2, j);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        int l = calendar.getActualMaximum(5);
        for (j = 0; j < l; j++)
        {
            SportData sportdata = new SportData();
            i = 0;
            Object obj;
            int k;
            if (j == 0)
            {
                obj = StringUtil.formatCurrDate(calendar.getTime());
            } else
            {
                calendar.add(5, 1);
                obj = StringUtil.formatCurrDate(calendar.getTime());
            }
            obj = HealthyDBOperate.loadOriginSportDataByDate(context, ((String) (obj)));
            if (obj != null)
            {
                obj = ((List) (obj)).iterator();
                do
                {
                    k = i;
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    i += Integer.parseInt(((SportData)((Iterator) (obj)).next()).getSportStep());
                } while (true);
            } else
            {
                k = 0;
            }
            sportdata.setSportStep(String.valueOf(k));
            arraylist.add(sportdata);
        }

        return arraylist;
    }

    public static List querySportDataByOnWeek(Context context, java.util.Date date)
    {
        ArrayList arraylist = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        for (int j = 0; j <= 6; j++)
        {
            SportData sportdata = new SportData();
            int k = 0;
            int i = 0;
            Object obj;
            if (j == 0)
            {
                obj = StringUtil.formatCurrDate(date);
            } else
            {
                calendar.add(5, 1);
                obj = StringUtil.formatCurrDate(calendar.getTime());
            }
            obj = HealthyDBOperate.loadOriginSportDataByDate(context, ((String) (obj)));
            if (obj != null)
            {
                obj = ((List) (obj)).iterator();
                do
                {
                    k = i;
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    i += Integer.parseInt(((SportData)((Iterator) (obj)).next()).getSportStep());
                } while (true);
            }
            sportdata.setSportStep(String.valueOf(k));
            arraylist.add(sportdata);
        }

        return arraylist;
    }

    public static List querySportDataByOnWeekAndMonth(Context context, int i, int j)
    {
        ArrayList arraylist = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i);
        calendar.set(2, j - 1);
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setFirstDayOfWeek(2);
        int l = calendar.getActualMaximum(5);
        calendar.get(7);
        calendar.get(4);
        for (j = 0; j < l; j++)
        {
            SportData sportdata = new SportData();
            int k = 0;
            i = 0;
            Object obj;
            if (j == 0)
            {
                obj = StringUtil.formatCurrDate(calendar.getTime());
            } else
            {
                calendar.add(5, 1);
                obj = StringUtil.formatCurrDate(calendar.getTime());
            }
            obj = HealthyDBOperate.loadOriginSportDataByDate(context, ((String) (obj)));
            if (obj != null)
            {
                obj = ((List) (obj)).iterator();
                do
                {
                    k = i;
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    i += Integer.parseInt(((SportData)((Iterator) (obj)).next()).getSportStep());
                } while (true);
            }
            sportdata.setSportStep(String.valueOf(k));
            Log.d("queryDays", (new StringBuilder()).append("oneDaysteps:").append(k).toString());
            arraylist.add(sportdata);
            if (calendar.get(7) != 1);
        }

        return arraylist;
    }

    public static int totalStepsByWeek(List list)
    {
        boolean flag = false;
        int i = 0;
        int j = ((flag) ? 1 : 0);
        if (list != null)
        {
            j = ((flag) ? 1 : 0);
            if (list.size() > 0)
            {
                int k = 0;
                do
                {
                    j = i;
                    if (k >= list.size())
                    {
                        break;
                    }
                    i += Integer.parseInt(((SportData)list.get(k)).getSportStep());
                    k++;
                } while (true);
            }
        }
        return j;
    }
}
