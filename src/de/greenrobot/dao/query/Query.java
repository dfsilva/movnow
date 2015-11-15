// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.query;

import android.database.sqlite.SQLiteDatabase;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.DaoException;
import de.greenrobot.dao.InternalQueryDaoAccess;
import java.util.List;

// Referenced classes of package de.greenrobot.dao.query:
//            AbstractQuery, LazyList, CloseableListIterator

public class Query extends AbstractQuery
{
    private static final class ThreadLocalQuery extends ThreadLocal
    {

        private final AbstractDao dao;
        private final String initialValues[];
        private final int limitPosition;
        private final int offsetPosition;
        private final String sql;

        protected Query initialValue()
        {
            return new Query(this, dao, sql, (String[])initialValues.clone(), limitPosition, offsetPosition);
        }

        protected volatile Object initialValue()
        {
            return initialValue();
        }


        private ThreadLocalQuery(AbstractDao abstractdao, String s, String as[], int i, int j)
        {
            dao = abstractdao;
            sql = s;
            initialValues = as;
            limitPosition = i;
            offsetPosition = j;
        }

    }


    private final int limitPosition;
    private final int offsetPosition;
    private final ThreadLocalQuery threadLocalQuery;

    private Query(ThreadLocalQuery threadlocalquery, AbstractDao abstractdao, String s, String as[], int i, int j)
    {
        super(abstractdao, s, as);
        threadLocalQuery = threadlocalquery;
        limitPosition = i;
        offsetPosition = j;
    }


    static Query create(AbstractDao abstractdao, String s, Object aobj[], int i, int j)
    {
        return (Query)(new ThreadLocalQuery(abstractdao, s, toStringArray(aobj), i, j)).get();
    }

    public static Query internalCreate(AbstractDao abstractdao, String s, Object aobj[])
    {
        return create(abstractdao, s, aobj, -1, -1);
    }

    public Query forCurrentThread()
    {
        Query query = (Query)threadLocalQuery.get();
        String as[] = threadLocalQuery.initialValues;
        System.arraycopy(as, 0, query.parameters, 0, as.length);
        return query;
    }

    public List list()
    {
        checkThread();
        android.database.Cursor cursor = dao.getDatabase().rawQuery(sql, parameters);
        return daoAccess.loadAllAndCloseCursor(cursor);
    }

    public CloseableListIterator listIterator()
    {
        return listLazyUncached().listIteratorAutoClose();
    }

    public LazyList listLazy()
    {
        checkThread();
        android.database.Cursor cursor = dao.getDatabase().rawQuery(sql, parameters);
        return new LazyList(daoAccess, cursor, true);
    }

    public LazyList listLazyUncached()
    {
        checkThread();
        android.database.Cursor cursor = dao.getDatabase().rawQuery(sql, parameters);
        return new LazyList(daoAccess, cursor, false);
    }

    public void setLimit(int i)
    {
        checkThread();
        if (limitPosition == -1)
        {
            throw new IllegalStateException("Limit must be set with QueryBuilder before it can be used here");
        } else
        {
            parameters[limitPosition] = Integer.toString(i);
            return;
        }
    }

    public void setOffset(int i)
    {
        checkThread();
        if (offsetPosition == -1)
        {
            throw new IllegalStateException("Offset must be set with QueryBuilder before it can be used here");
        } else
        {
            parameters[offsetPosition] = Integer.toString(i);
            return;
        }
    }

    public void setParameter(int i, Object obj)
    {
        if (i >= 0 && (i == limitPosition || i == offsetPosition))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal parameter index: ").append(i).toString());
        } else
        {
            super.setParameter(i, obj);
            return;
        }
    }

    public Object unique()
    {
        checkThread();
        android.database.Cursor cursor = dao.getDatabase().rawQuery(sql, parameters);
        return daoAccess.loadUniqueAndCloseCursor(cursor);
    }

    public Object uniqueOrThrow()
    {
        Object obj = unique();
        if (obj == null)
        {
            throw new DaoException("No entity found for query");
        } else
        {
            return obj;
        }
    }
}
