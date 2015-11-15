// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.query;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;

// Referenced classes of package de.greenrobot.dao.query:
//            AbstractQuery

public class DeleteQuery extends AbstractQuery
{
    private static final class ThreadLocalQuery extends ThreadLocal
    {

        private final AbstractDao dao;
        private final String initialValues[];
        private final String sql;

        protected DeleteQuery initialValue()
        {
            return new DeleteQuery(this, dao, sql, (String[])initialValues.clone());
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


    private SQLiteStatement compiledStatement;
    private final ThreadLocalQuery threadLocalQuery;

    private DeleteQuery(ThreadLocalQuery threadlocalquery, AbstractDao abstractdao, String s, String as[])
    {
        super(abstractdao, s, as);
        threadLocalQuery = threadlocalquery;
    }


    static DeleteQuery create(AbstractDao abstractdao, String s, Object aobj[])
    {
        return (DeleteQuery)(new ThreadLocalQuery(abstractdao, s, toStringArray(aobj))).get();
    }

    private void executeDeleteWithoutDetachingEntitiesInsideTx()
    {
        this;
        JVM INSTR monitorenter ;
        if (compiledStatement == null) goto _L2; else goto _L1
_L1:
        compiledStatement.clearBindings();
          goto _L3
_L10:
        int i;
        if (i >= parameters.length) goto _L5; else goto _L4
_L4:
        String s = parameters[i];
        if (s == null) goto _L7; else goto _L6
_L6:
        compiledStatement.bindString(i + 1, s);
          goto _L8
_L2:
        compiledStatement = dao.getDatabase().compileStatement(sql);
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L7:
        compiledStatement.bindNull(i + 1);
          goto _L8
_L5:
        compiledStatement.execute();
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L8:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void executeDeleteWithoutDetachingEntities()
    {
        SQLiteDatabase sqlitedatabase;
        checkThread();
        sqlitedatabase = dao.getDatabase();
        if (sqlitedatabase.isDbLockedByCurrentThread())
        {
            executeDeleteWithoutDetachingEntitiesInsideTx();
            return;
        }
        sqlitedatabase.beginTransaction();
        executeDeleteWithoutDetachingEntitiesInsideTx();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        return;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        throw exception;
    }

    public DeleteQuery forCurrentThread()
    {
        DeleteQuery deletequery = (DeleteQuery)threadLocalQuery.get();
        String as[] = threadLocalQuery.initialValues;
        System.arraycopy(as, 0, deletequery.parameters, 0, as.length);
        return deletequery;
    }

    public volatile void setParameter(int i, Object obj)
    {
        super.setParameter(i, obj);
    }
}
