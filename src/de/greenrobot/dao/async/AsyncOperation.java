// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.async;

import android.database.sqlite.SQLiteDatabase;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.DaoException;

// Referenced classes of package de.greenrobot.dao.async:
//            AsyncDaoException

public class AsyncOperation
{
    public static final class OperationType extends Enum
    {

        private static final OperationType $VALUES[];
        public static final OperationType Count;
        public static final OperationType Delete;
        public static final OperationType DeleteAll;
        public static final OperationType DeleteByKey;
        public static final OperationType DeleteInTxArray;
        public static final OperationType DeleteInTxIterable;
        public static final OperationType Insert;
        public static final OperationType InsertInTxArray;
        public static final OperationType InsertInTxIterable;
        public static final OperationType InsertOrReplace;
        public static final OperationType InsertOrReplaceInTxArray;
        public static final OperationType InsertOrReplaceInTxIterable;
        public static final OperationType Load;
        public static final OperationType LoadAll;
        public static final OperationType QueryList;
        public static final OperationType QueryUnique;
        public static final OperationType Refresh;
        public static final OperationType TransactionCallable;
        public static final OperationType TransactionRunnable;
        public static final OperationType Update;
        public static final OperationType UpdateInTxArray;
        public static final OperationType UpdateInTxIterable;

        public static OperationType valueOf(String s)
        {
            return (OperationType)Enum.valueOf(de/greenrobot/dao/async/AsyncOperation$OperationType, s);
        }

        public static OperationType[] values()
        {
            return (OperationType[])$VALUES.clone();
        }

        static 
        {
            Insert = new OperationType("Insert", 0);
            InsertInTxIterable = new OperationType("InsertInTxIterable", 1);
            InsertInTxArray = new OperationType("InsertInTxArray", 2);
            InsertOrReplace = new OperationType("InsertOrReplace", 3);
            InsertOrReplaceInTxIterable = new OperationType("InsertOrReplaceInTxIterable", 4);
            InsertOrReplaceInTxArray = new OperationType("InsertOrReplaceInTxArray", 5);
            Update = new OperationType("Update", 6);
            UpdateInTxIterable = new OperationType("UpdateInTxIterable", 7);
            UpdateInTxArray = new OperationType("UpdateInTxArray", 8);
            Delete = new OperationType("Delete", 9);
            DeleteInTxIterable = new OperationType("DeleteInTxIterable", 10);
            DeleteInTxArray = new OperationType("DeleteInTxArray", 11);
            DeleteByKey = new OperationType("DeleteByKey", 12);
            DeleteAll = new OperationType("DeleteAll", 13);
            TransactionRunnable = new OperationType("TransactionRunnable", 14);
            TransactionCallable = new OperationType("TransactionCallable", 15);
            QueryList = new OperationType("QueryList", 16);
            QueryUnique = new OperationType("QueryUnique", 17);
            Load = new OperationType("Load", 18);
            LoadAll = new OperationType("LoadAll", 19);
            Count = new OperationType("Count", 20);
            Refresh = new OperationType("Refresh", 21);
            $VALUES = (new OperationType[] {
                Insert, InsertInTxIterable, InsertInTxArray, InsertOrReplace, InsertOrReplaceInTxIterable, InsertOrReplaceInTxArray, Update, UpdateInTxIterable, UpdateInTxArray, Delete, 
                DeleteInTxIterable, DeleteInTxArray, DeleteByKey, DeleteAll, TransactionRunnable, TransactionCallable, QueryList, QueryUnique, Load, LoadAll, 
                Count, Refresh
            });
        }

        private OperationType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int FLAG_MERGE_TX = 1;
    public static final int FLAG_STOP_QUEUE_ON_EXCEPTION = 2;
    private volatile boolean completed;
    final AbstractDao dao;
    private final SQLiteDatabase database;
    final int flags;
    volatile int mergedOperationsCount;
    final Object parameter;
    volatile Object result;
    int sequenceNumber;
    volatile Throwable throwable;
    volatile long timeCompleted;
    volatile long timeStarted;
    final OperationType type;

    AsyncOperation(OperationType operationtype, SQLiteDatabase sqlitedatabase, Object obj, int i)
    {
        type = operationtype;
        database = sqlitedatabase;
        flags = i;
        dao = null;
        parameter = obj;
    }

    AsyncOperation(OperationType operationtype, AbstractDao abstractdao, Object obj, int i)
    {
        type = operationtype;
        flags = i;
        dao = abstractdao;
        database = null;
        parameter = obj;
    }

    SQLiteDatabase getDatabase()
    {
        if (database != null)
        {
            return database;
        } else
        {
            return dao.getDatabase();
        }
    }

    public long getDuration()
    {
        if (timeCompleted == 0L)
        {
            throw new DaoException("This operation did not yet complete");
        } else
        {
            return timeCompleted - timeStarted;
        }
    }

    public int getMergedOperationsCount()
    {
        return mergedOperationsCount;
    }

    public Object getParameter()
    {
        return parameter;
    }

    public Object getResult()
    {
        this;
        JVM INSTR monitorenter ;
        if (!completed)
        {
            waitForCompletion();
        }
        if (throwable != null)
        {
            throw new AsyncDaoException(this, throwable);
        }
        break MISSING_BLOCK_LABEL_39;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Object obj = result;
        this;
        JVM INSTR monitorexit ;
        return obj;
    }

    public int getSequenceNumber()
    {
        return sequenceNumber;
    }

    public Throwable getThrowable()
    {
        return throwable;
    }

    public long getTimeCompleted()
    {
        return timeCompleted;
    }

    public long getTimeStarted()
    {
        return timeStarted;
    }

    public OperationType getType()
    {
        return type;
    }

    public boolean isCompleted()
    {
        return completed;
    }

    public boolean isCompletedSucessfully()
    {
        return completed && throwable == null;
    }

    public boolean isFailed()
    {
        return throwable != null;
    }

    public boolean isMergeTx()
    {
        return (flags & 1) != 0;
    }

    boolean isMergeableWith(AsyncOperation asyncoperation)
    {
        return asyncoperation != null && isMergeTx() && asyncoperation.isMergeTx() && getDatabase() == asyncoperation.getDatabase();
    }

    void reset()
    {
        timeStarted = 0L;
        timeCompleted = 0L;
        completed = false;
        throwable = null;
        result = null;
        mergedOperationsCount = 0;
    }

    void setCompleted()
    {
        this;
        JVM INSTR monitorenter ;
        completed = true;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setThrowable(Throwable throwable1)
    {
        throwable = throwable1;
    }

    public Object waitForCompletion()
    {
        this;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = completed;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        wait();
          goto _L1
        Object obj;
        obj;
        throw new DaoException("Interrupted while waiting for operation to complete", ((Throwable) (obj)));
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        Object obj1 = result;
        this;
        JVM INSTR monitorexit ;
        return obj1;
    }

    public boolean waitForCompletion(int i)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = completed;
        long l;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        l = i;
        wait(l);
        flag = completed;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Object obj;
        obj;
        throw new DaoException("Interrupted while waiting for operation to complete", ((Throwable) (obj)));
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
    }
}
