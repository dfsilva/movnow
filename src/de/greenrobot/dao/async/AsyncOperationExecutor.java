// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.greenrobot.dao.async;

import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.DaoException;
import de.greenrobot.dao.DaoLog;
import de.greenrobot.dao.query.Query;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package de.greenrobot.dao.async:
//            AsyncOperation, AsyncOperationListener

class AsyncOperationExecutor
    implements Runnable, android.os.Handler.Callback
{

    private static ExecutorService executorService = Executors.newCachedThreadPool();
    private int countOperationsCompleted;
    private int countOperationsEnqueued;
    private volatile boolean executorRunning;
    private Handler handlerMainThread;
    private int lastSequenceNumber;
    private volatile AsyncOperationListener listener;
    private volatile AsyncOperationListener listenerMainThread;
    private volatile int maxOperationCountToMerge;
    private final BlockingQueue queue = new LinkedBlockingQueue();
    private volatile int waitForMergeMillis;

    AsyncOperationExecutor()
    {
        maxOperationCountToMerge = 50;
        waitForMergeMillis = 50;
    }

    private void executeOperation(AsyncOperation asyncoperation)
    {
        asyncoperation.timeStarted = System.currentTimeMillis();
        static class _cls1
        {

            static final int $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[];

            static 
            {
                $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType = new int[AsyncOperation.OperationType.values().length];
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.Delete.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror21) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.DeleteInTxIterable.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror20) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.DeleteInTxArray.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror19) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.Insert.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror18) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.InsertInTxIterable.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.InsertInTxArray.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.InsertOrReplace.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.InsertOrReplaceInTxIterable.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.InsertOrReplaceInTxArray.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.Update.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.UpdateInTxIterable.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.UpdateInTxArray.ordinal()] = 12;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.TransactionRunnable.ordinal()] = 13;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.TransactionCallable.ordinal()] = 14;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.QueryList.ordinal()] = 15;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.QueryUnique.ordinal()] = 16;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.DeleteByKey.ordinal()] = 17;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.DeleteAll.ordinal()] = 18;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.Load.ordinal()] = 19;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.LoadAll.ordinal()] = 20;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.Count.ordinal()] = 21;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$de$greenrobot$dao$async$AsyncOperation$OperationType[AsyncOperation.OperationType.Refresh.ordinal()] = 22;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.de.greenrobot.dao.async.AsyncOperation.OperationType[asyncoperation.type.ordinal()];
        JVM INSTR tableswitch 1 22: default 507
    //                   1 164
    //                   2 178
    //                   3 195
    //                   4 215
    //                   5 230
    //                   6 247
    //                   7 267
    //                   8 282
    //                   9 299
    //                   10 319
    //                   11 333
    //                   12 350
    //                   13 370
    //                   14 378
    //                   15 386
    //                   16 403
    //                   17 420
    //                   18 434
    //                   19 444
    //                   20 462
    //                   21 476
    //                   22 493;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23
_L23:
        break MISSING_BLOCK_LABEL_493;
_L1:
        Throwable throwable;
        throw new DaoException((new StringBuilder()).append("Unsupported operation: ").append(asyncoperation.type).toString());
_L24:
        asyncoperation.timeCompleted = System.currentTimeMillis();
        return;
_L2:
        try
        {
            asyncoperation.dao.delete(asyncoperation.parameter);
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            asyncoperation.throwable = throwable;
        }
          goto _L24
_L3:
        asyncoperation.dao.deleteInTx((Iterable)asyncoperation.parameter);
          goto _L24
_L4:
        asyncoperation.dao.deleteInTx((Object[])(Object[])asyncoperation.parameter);
          goto _L24
_L5:
        asyncoperation.dao.insert(asyncoperation.parameter);
          goto _L24
_L6:
        asyncoperation.dao.insertInTx((Iterable)asyncoperation.parameter);
          goto _L24
_L7:
        asyncoperation.dao.insertInTx((Object[])(Object[])asyncoperation.parameter);
          goto _L24
_L8:
        asyncoperation.dao.insertOrReplace(asyncoperation.parameter);
          goto _L24
_L9:
        asyncoperation.dao.insertOrReplaceInTx((Iterable)asyncoperation.parameter);
          goto _L24
_L10:
        asyncoperation.dao.insertOrReplaceInTx((Object[])(Object[])asyncoperation.parameter);
          goto _L24
_L11:
        asyncoperation.dao.update(asyncoperation.parameter);
          goto _L24
_L12:
        asyncoperation.dao.updateInTx((Iterable)asyncoperation.parameter);
          goto _L24
_L13:
        asyncoperation.dao.updateInTx((Object[])(Object[])asyncoperation.parameter);
          goto _L24
_L14:
        executeTransactionRunnable(asyncoperation);
          goto _L24
_L15:
        executeTransactionCallable(asyncoperation);
          goto _L24
_L16:
        asyncoperation.result = ((Query)asyncoperation.parameter).list();
          goto _L24
_L17:
        asyncoperation.result = ((Query)asyncoperation.parameter).unique();
          goto _L24
_L18:
        asyncoperation.dao.deleteByKey(asyncoperation.parameter);
          goto _L24
_L19:
        asyncoperation.dao.deleteAll();
          goto _L24
_L20:
        asyncoperation.result = asyncoperation.dao.load(asyncoperation.parameter);
          goto _L24
_L21:
        asyncoperation.result = asyncoperation.dao.loadAll();
          goto _L24
_L22:
        asyncoperation.result = Long.valueOf(asyncoperation.dao.count());
          goto _L24
        asyncoperation.dao.refresh(asyncoperation.parameter);
          goto _L24
    }

    private void executeOperationAndPostCompleted(AsyncOperation asyncoperation)
    {
        executeOperation(asyncoperation);
        handleOperationCompleted(asyncoperation);
    }

    private void executeTransactionCallable(AsyncOperation asyncoperation)
        throws Exception
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = asyncoperation.getDatabase();
        sqlitedatabase.beginTransaction();
        asyncoperation.result = ((Callable)asyncoperation.parameter).call();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        return;
        asyncoperation;
        sqlitedatabase.endTransaction();
        throw asyncoperation;
    }

    private void executeTransactionRunnable(AsyncOperation asyncoperation)
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = asyncoperation.getDatabase();
        sqlitedatabase.beginTransaction();
        ((Runnable)asyncoperation.parameter).run();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        return;
        asyncoperation;
        sqlitedatabase.endTransaction();
        throw asyncoperation;
    }

    private void handleOperationCompleted(AsyncOperation asyncoperation)
    {
        asyncoperation.setCompleted();
        AsyncOperationListener asyncoperationlistener = listener;
        if (asyncoperationlistener != null)
        {
            asyncoperationlistener.onAsyncOperationCompleted(asyncoperation);
        }
        if (listenerMainThread != null)
        {
            if (handlerMainThread == null)
            {
                handlerMainThread = new Handler(Looper.getMainLooper(), this);
            }
            asyncoperation = handlerMainThread.obtainMessage(1, asyncoperation);
            handlerMainThread.sendMessage(asyncoperation);
        }
        this;
        JVM INSTR monitorenter ;
        countOperationsCompleted = countOperationsCompleted + 1;
        if (countOperationsCompleted == countOperationsEnqueued)
        {
            notifyAll();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        asyncoperation;
        this;
        JVM INSTR monitorexit ;
        throw asyncoperation;
    }

    private void mergeTxAndExecute(AsyncOperation asyncoperation, AsyncOperation asyncoperation1)
    {
        ArrayList arraylist;
        int i;
        boolean flag1;
        arraylist = new ArrayList();
        arraylist.add(asyncoperation);
        arraylist.add(asyncoperation1);
        asyncoperation = asyncoperation.getDatabase();
        asyncoperation.beginTransaction();
        flag1 = false;
        i = 0;
_L2:
        boolean flag = flag1;
        AsyncOperation asyncoperation2;
        boolean flag2;
        if (i >= arraylist.size())
        {
            break MISSING_BLOCK_LABEL_80;
        }
        asyncoperation2 = (AsyncOperation)arraylist.get(i);
        executeOperation(asyncoperation2);
        flag2 = asyncoperation2.isFailed();
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        flag = true;
        asyncoperation.endTransaction();
        if (flag)
        {
            DaoLog.i("Revered merged transaction because one of the operations failed. Executing operations one by one instead...");
            for (asyncoperation = arraylist.iterator(); asyncoperation.hasNext(); executeOperationAndPostCompleted(asyncoperation1))
            {
                asyncoperation1 = (AsyncOperation)asyncoperation.next();
                asyncoperation1.reset();
            }

        } else
        {
            i = arraylist.size();
            for (asyncoperation = arraylist.iterator(); asyncoperation.hasNext(); handleOperationCompleted(asyncoperation1))
            {
                asyncoperation1 = (AsyncOperation)asyncoperation.next();
                asyncoperation1.mergedOperationsCount = i;
            }

        }
        break MISSING_BLOCK_LABEL_273;
        if (i != arraylist.size() - 1)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        asyncoperation1 = (AsyncOperation)queue.peek();
        if (i >= maxOperationCountToMerge || !asyncoperation2.isMergeableWith(asyncoperation1))
        {
            break MISSING_BLOCK_LABEL_222;
        }
        asyncoperation2 = (AsyncOperation)queue.remove();
        if (asyncoperation2 == asyncoperation1)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        throw new DaoException("Internal error: peeked op did not match removed op");
        asyncoperation1;
        asyncoperation.endTransaction();
        throw asyncoperation1;
        arraylist.add(asyncoperation2);
        break MISSING_BLOCK_LABEL_274;
        asyncoperation.setTransactionSuccessful();
        break MISSING_BLOCK_LABEL_274;
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void enqueue(AsyncOperation asyncoperation)
    {
        this;
        JVM INSTR monitorenter ;
        int i = lastSequenceNumber + 1;
        lastSequenceNumber = i;
        asyncoperation.sequenceNumber = i;
        queue.add(asyncoperation);
        countOperationsEnqueued = countOperationsEnqueued + 1;
        if (!executorRunning)
        {
            executorRunning = true;
            executorService.execute(this);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        asyncoperation;
        this;
        JVM INSTR monitorexit ;
        throw asyncoperation;
    }

    public AsyncOperationListener getListener()
    {
        return listener;
    }

    public AsyncOperationListener getListenerMainThread()
    {
        return listenerMainThread;
    }

    public int getMaxOperationCountToMerge()
    {
        return maxOperationCountToMerge;
    }

    public int getWaitForMergeMillis()
    {
        return waitForMergeMillis;
    }

    public boolean handleMessage(Message message)
    {
        AsyncOperationListener asyncoperationlistener = listenerMainThread;
        if (asyncoperationlistener != null)
        {
            asyncoperationlistener.onAsyncOperationCompleted((AsyncOperation)message.obj);
        }
        return false;
    }

    public boolean isCompleted()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = countOperationsEnqueued;
        j = countOperationsCompleted;
        boolean flag;
        if (i == j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void run()
    {
_L4:
        AsyncOperation asyncoperation = (AsyncOperation)queue.poll(1L, TimeUnit.SECONDS);
        Object obj = asyncoperation;
        if (asyncoperation != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        obj = (AsyncOperation)queue.poll();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        executorRunning = false;
        this;
        JVM INSTR monitorexit ;
        executorRunning = false;
        return;
        this;
        JVM INSTR monitorexit ;
_L2:
        if (obj == null) goto _L4; else goto _L3
_L3:
        if (!((AsyncOperation) (obj)).isMergeTx())
        {
            break MISSING_BLOCK_LABEL_173;
        }
        asyncoperation = (AsyncOperation)queue.poll(waitForMergeMillis, TimeUnit.MILLISECONDS);
        if (asyncoperation == null)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        if (!((AsyncOperation) (obj)).isMergeableWith(asyncoperation))
        {
            break MISSING_BLOCK_LABEL_160;
        }
        mergeTxAndExecute(((AsyncOperation) (obj)), asyncoperation);
          goto _L4
_L6:
        DaoLog.w((new StringBuilder()).append(Thread.currentThread().getName()).append(" was interruppted").toString(), ((Throwable) (obj)));
        executorRunning = false;
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            executorRunning = false;
        }
        if (true) goto _L6; else goto _L5
_L5:
        throw obj;
        executeOperationAndPostCompleted(((AsyncOperation) (obj)));
        executeOperationAndPostCompleted(asyncoperation);
          goto _L4
        executeOperationAndPostCompleted(((AsyncOperation) (obj)));
          goto _L4
    }

    public void setListener(AsyncOperationListener asyncoperationlistener)
    {
        listener = asyncoperationlistener;
    }

    public void setListenerMainThread(AsyncOperationListener asyncoperationlistener)
    {
        listenerMainThread = asyncoperationlistener;
    }

    public void setMaxOperationCountToMerge(int i)
    {
        maxOperationCountToMerge = i;
    }

    public void setWaitForMergeMillis(int i)
    {
        waitForMergeMillis = i;
    }

    public void waitForCompletion()
    {
        this;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = isCompleted();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        wait();
          goto _L1
        Object obj;
        obj;
        throw new DaoException("Interrupted while waiting for all operations to complete", ((Throwable) (obj)));
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        this;
        JVM INSTR monitorexit ;
    }

    public boolean waitForCompletion(int i)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = isCompleted();
        long l;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        l = i;
        wait(l);
        flag = isCompleted();
        this;
        JVM INSTR monitorexit ;
        return flag;
        Object obj;
        obj;
        throw new DaoException("Interrupted while waiting for all operations to complete", ((Throwable) (obj)));
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
    }

}
