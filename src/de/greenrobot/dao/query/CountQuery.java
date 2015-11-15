// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.query;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.DaoException;

// Referenced classes of package de.greenrobot.dao.query:
//            AbstractQuery

public class CountQuery extends AbstractQuery
{
    private static final class ThreadLocalQuery extends ThreadLocal
    {

        private final AbstractDao dao;
        private final String initialValues[];
        private final String sql;

        protected CountQuery initialValue()
        {
            return new CountQuery(this, dao, sql, (String[])initialValues.clone());
        }

        protected volatile Object initialValue()
        {
            return initialValue();
        }


        private ThreadLocalQuery(AbstractDao abstractdao, String s, String as[])
        {
            dao = abstractdao;
            sql = s;
            initialValues = as;
        }

    }


    private final ThreadLocalQuery threadLocalQuery;

    private CountQuery(ThreadLocalQuery threadlocalquery, AbstractDao abstractdao, String s, String as[])
    {
        super(abstractdao, s, as);
        threadLocalQuery = threadlocalquery;
    }


    static CountQuery create(AbstractDao abstractdao, String s, Object aobj[])
    {
        return (CountQuery)(new ThreadLocalQuery(abstractdao, s, toStringArray(aobj))).get();
    }

    public long count()
    {
        Cursor cursor;
        checkThread();
        cursor = dao.getDatabase().rawQuery(sql, parameters);
        if (!cursor.moveToNext())
        {
            throw new DaoException("No result for count");
        }
        break MISSING_BLOCK_LABEL_51;
        Exception exception;
        exception;
        cursor.close();
        throw exception;
        long l;
        if (!cursor.isLast())
        {
            throw new DaoException((new StringBuilder()).append("Unexpected row count: ").append(cursor.getCount()).toString());
        }
        if (cursor.getColumnCount() != 1)
        {
            throw new DaoException((new StringBuilder()).append("Unexpected column count: ").append(cursor.getColumnCount()).toString());
        }
        l = cursor.getLong(0);
        cursor.close();
        return l;
    }

    public CountQuery forCurrentThread()
    {
        CountQuery countquery = (CountQuery)threadLocalQuery.get();
        String as[] = threadLocalQuery.initialValues;
        System.arraycopy(as, 0, countquery.parameters, 0, as.length);
        return countquery;
    }

    public volatile void setParameter(int i, Object obj)
    {
        super.setParameter(i, obj);
    }
}
